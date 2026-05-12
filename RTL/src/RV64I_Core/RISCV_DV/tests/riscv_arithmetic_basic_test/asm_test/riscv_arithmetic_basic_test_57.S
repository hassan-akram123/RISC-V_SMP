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
                  li x8, 0x40000100
                  csrw 0x301, x8
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x8, mtvec_handler
                  ori x8, x8, 0
                  csrw 0x305, x8 # MTVEC

mepc_setup:       
                  la x8, init
                  csrw 0x341, x8

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x8, 0x1800
                  csrw 0x300, x8 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x80000000
                  li x2, 0xf08997fb
                  li x3, 0x6
                  li x4, 0x5d7ca880
                  li x5, 0x80000000
                  li x6, 0x80000000
                  li x7, 0xfc299e56
                  li x8, 0x867fc25b
                  li x9, 0x80000000
                  li x10, 0x43530f42
                  li x11, 0x986a01db
                  li x12, 0x80000000
                  li x13, 0x322b25c3
                  li x14, 0xe56b7ad6
                  li x15, 0x0
                  li x16, 0x80000000
                  li x17, 0xf8897763
                  li x18, 0xf71bcfff
                  li x19, 0xa73d151c
                  li x20, 0x0
                  li x21, 0x80000000
                  li x22, 0xf39597b9
                  li x23, 0x0
                  li x24, 0xc
                  li x25, 0x0
                  li x26, 0xa
                  li x29, 0xfd6840f6
                  li x30, 0xf9659e94
                  li x31, 0x80000000
                  la x28, user_stack_end
main:             li           a2, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           s3, 0x80000000
                  li           a1, 0xffffffff
                  li           t0, 0xb9c7ea54
                  li           t2, 0xdf0d2dfc
                  li           s5, 0x898b1199
                  li           t4, 0xffffffff
                  li           a5, 0x3b9a24f0
                  li           t5, 0x80000000
                  li           s4, 0x0
                  nop
                  sub          a2, t4, t5
                  add          s3, s3, t2
                  lui          s4, 344128
                  sub          a1, s4, t0
                  add          s4, a5, a5
                  addi         t0, t4, 1054
                  add          t0, a5, s5
                  auipc        s5, 675335
                  add          a1, a1, s5
                  auipc        t4, 487086
                  addi         s3, s3, 1153
                  sub          t0, t0, s5
                  nop
                  auipc        s3, 355951
                  lui          a1, 33313
                  lui          t5, 756086 #end riscv_int_numeric_corner_stream_5
                  li           t5, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           a6, 0x80000000
                  li           s8, 0x0
                  li           s2, 0x80000000
                  li           s6, 0x0
                  li           s9, 0xffffffff
                  li           a2, 0xffffffff
                  li           s5, 0xf1dc1b11
                  li           ra, 0x96a86024
                  li           t0, 0x80000000
                  sub          s6, s6, a2
                  lui          t0, 74813
                  addi         t5, s9, -495
                  addi         a2, a6, -770
                  auipc        t0, 673480
                  auipc        s8, 332493
                  auipc        s5, 551508
                  nop
                  auipc        s2, 805456
                  add          t5, ra, a2
                  sub          a6, s9, t0
                  addi         s2, ra, -1954
                  add          s5, s8, t5
                  addi         s6, s5, -198
                  lui          t0, 186596
                  auipc        s9, 307950 #end riscv_int_numeric_corner_stream_10
                  li           a7, 0x80000000 #start riscv_int_numeric_corner_stream_16
                  li           a0, 0xffffffff
                  li           s9, 0x80000000
                  li           a1, 0x80000000
                  li           s1, 0xffffffff
                  li           t1, 0xffffffff
                  li           a2, 0xf6a83d92
                  li           a4, 0x80000000
                  li           a5, 0x4c02802c
                  li           t0, 0xba27c1ee
                  add          t0, a2, s1
                  addi         s1, t0, -1595
                  auipc        s1, 151241
                  add          t1, a1, a0
                  lui          t1, 426981
                  lui          s1, 460708
                  addi         a7, s9, 1056
                  add          s9, a4, a7
                  add          t1, a7, a5
                  auipc        a2, 334142
                  nop
                  add          a0, t1, a7
                  addi         a4, t0, 1503
                  auipc        a0, 905359
                  addi         a2, t0, 993
                  addi         a7, s9, 919
                  lui          t1, 155961
                  nop
                  lui          s1, 21672
                  auipc        s9, 265568 #end riscv_int_numeric_corner_stream_16
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           s7, 0x0
                  li           t6, 0x0
                  li           s8, 0x9a6caaca
                  li           s10, 0x80000000
                  li           t1, 0x80000000
                  li           s1, 0xffffffff
                  li           a1, 0x80000000
                  li           a6, 0xffffffff
                  li           s2, 0xab96f628
                  sub          a4, s1, t6
                  sub          s7, a1, s10
                  auipc        t6, 585284
                  nop
                  lui          t1, 815349
                  add          s2, s10, s2
                  auipc        a1, 72221
                  auipc        t6, 1036597
                  nop
                  add          t6, s10, t1
                  auipc        s10, 112817
                  add          t6, s7, s10
                  add          s7, s7, s7
                  sub          a4, s2, s2
                  addi         s1, t6, 1668
                  lui          a1, 423127
                  sub          a4, s10, t6 #end riscv_int_numeric_corner_stream_9
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           a2, 0x0
                  li           s2, 0xffffffff
                  li           a1, 0xffffffff
                  li           s3, 0x0
                  li           s9, 0x80000000
                  li           t1, 0xffffffff
                  li           s6, 0x80000000
                  li           s4, 0x0
                  li           a0, 0x80000000
                  lui          t1, 208575
                  lui          s6, 547238
                  nop
                  lui          a0, 480549
                  addi         a0, tp, -1761
                  lui          a2, 868968
                  sub          a0, s4, s9
                  auipc        s4, 84494
                  lui          s6, 50583
                  nop
                  lui          tp, 280953
                  add          s2, s9, t1
                  sub          s9, s2, a1
                  auipc        tp, 796791
                  lui          s4, 572883
                  addi         s3, s3, -1475
                  sub          s6, a2, t1
                  add          tp, a0, tp
                  addi         s4, a1, 968
                  sub          s6, s4, a1
                  add          a1, tp, a0
                  addi         a0, s4, -773
                  auipc        s4, 431331
                  add          tp, s2, a2
                  add          a2, s4, s2
                  auipc        s4, 236209
                  sub          a1, s9, s6 #end riscv_int_numeric_corner_stream_2
                  li           t6, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           ra, 0x80000000
                  li           a5, 0x23fdbed3
                  li           s10, 0xffffffff
                  li           s9, 0x0
                  li           a7, 0x80000000
                  li           s6, 0x80000000
                  li           s4, 0x80000000
                  li           a4, 0x80000000
                  li           a0, 0x0
                  sub          a0, s6, t6
                  addi         a5, s6, 1939
                  addi         s10, a7, 1093
                  nop
                  sub          ra, s9, a5
                  lui          a5, 297073
                  auipc        ra, 51779
                  sub          s4, s9, s4
                  sub          a7, a0, t6
                  lui          s10, 770016
                  auipc        a5, 512933
                  add          a0, a7, ra
                  nop
                  add          ra, s9, s9
                  lui          a4, 871443
                  add          s4, ra, a4
                  sub          s4, t6, t6
                  addi         a7, s9, -581
                  nop
                  addi         a7, ra, -1698
                  nop
                  add          s4, ra, a5
                  nop
                  nop
                  nop
                  lui          a4, 65809 #end riscv_int_numeric_corner_stream_1
                  li           t2, 0x8a7988ed #start riscv_int_numeric_corner_stream_13
                  li           a4, 0x80000000
                  li           gp, 0x0
                  li           t6, 0x9f43f118
                  li           t0, 0xffffffff
                  li           s4, 0xa2cf1080
                  li           a0, 0x80000000
                  li           a6, 0xfb435f12
                  li           s9, 0x17cab32f
                  li           t5, 0x80000000
                  add          s9, t6, s4
                  nop
                  add          t2, s9, t6
                  addi         t6, t2, -1654
                  add          t2, s9, s9
                  lui          a6, 68381
                  nop
                  addi         t6, t2, 592
                  lui          t0, 695319
                  lui          a6, 296287
                  addi         a4, a0, 886
                  auipc        a0, 854529
                  lui          t0, 1034999
                  nop
                  addi         t5, t6, 127
                  nop
                  addi         gp, gp, -782
                  addi         t6, t2, -537
                  sub          s4, s9, a4
                  add          a6, a0, s9
                  sub          a4, s9, t5
                  add          t6, gp, gp
                  auipc        a4, 272253
                  nop
                  add          t0, s9, t6
                  lui          a4, 531994
                  addi         t2, t5, 743
                  auipc        s9, 128087
                  nop
                  sub          a6, t5, s4 #end riscv_int_numeric_corner_stream_13
                  li           s7, 0xb58429c8 #start riscv_int_numeric_corner_stream_4
                  li           a6, 0x8e9c0bc6
                  li           a0, 0xffffffff
                  li           a5, 0x80000000
                  li           a1, 0x464cc367
                  li           s6, 0x80000000
                  li           s4, 0x70a94f46
                  li           s3, 0x0
                  li           ra, 0xbb10ba87
                  li           s9, 0x4dce561b
                  addi         s3, s7, -1532
                  nop
                  auipc        s4, 740205
                  auipc        a5, 89001
                  sub          s3, a1, a0
                  nop
                  auipc        ra, 742720
                  lui          s6, 792226
                  sub          s7, a0, s9
                  nop
                  sub          a1, a6, s7
                  addi         s7, s3, 226
                  lui          a6, 138520
                  add          a5, s3, ra
                  lui          s7, 55237
                  addi         s4, s4, 933
                  sub          a5, s6, ra
                  sub          a6, s9, s6
                  nop
                  nop
                  lui          a6, 301923
                  add          s7, s3, a0
                  lui          a6, 202108
                  lui          a1, 136527
                  add          s7, s9, a0
                  sub          s9, a1, ra
                  auipc        s3, 324255
                  lui          s9, 436417 #end riscv_int_numeric_corner_stream_4
                  li           s6, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           t2, 0x80000000
                  li           s0, 0xffffffff
                  li           a7, 0x80000000
                  li           s8, 0x866a5f34
                  li           a1, 0xffffffff
                  li           s3, 0xffffffff
                  li           a0, 0xffffffff
                  li           ra, 0xffffffff
                  li           sp, 0x80000000
                  auipc        t2, 207298
                  add          sp, s0, ra
                  lui          a7, 216065
                  auipc        s8, 294085
                  sub          a1, ra, ra
                  add          s3, a0, s8
                  add          ra, a0, s0
                  auipc        a0, 340708
                  nop
                  nop
                  addi         s6, sp, 1247
                  addi         s6, t2, 1767
                  nop
                  add          s0, a0, t2
                  nop
                  sub          s6, ra, a0
                  nop
                  add          s0, s8, a7
                  sub          sp, s3, s8
                  add          sp, ra, s3
                  lui          ra, 932914
                  add          a1, s0, a1
                  nop
                  sub          ra, ra, a0 #end riscv_int_numeric_corner_stream_0
                  xori         t6, sp, 1716
                  sra          a4, t3, s9
                  xori         s1, s7, -1262
                  and          s0, a3, s6
                  srli         t1, sp, 25
                  addi         a5, t5, 923
                  sltu         tp, s0, gp
                  sub          tp, t5, t1
                  andi         s8, s2, -463
                  andi         s2, t2, 531
                  slli         t4, t1, 14
                  sll          sp, t3, a3
                  srai         s9, a7, 4
                  add          a5, a6, s7
                  or           a1, a3, a7
                  add          ra, sp, t5
                  nop
                  andi         a6, ra, -863
                  ori          a5, a2, 875
                  sltiu        a0, zero, -1701
                  or           s7, s6, s7
                  slt          s2, gp, s0
                  xori         s10, a1, -1244
                  slti         ra, s4, -246
                  nop
                  srai         s5, a3, 18
                  xori         t0, t3, 519
                  slli         s10, sp, 24
                  srai         t1, a3, 11
                  nop
                  lui          s1, 694443
                  sub          a2, a3, s11
                  andi         s1, t4, -256
                  and          a5, ra, a4
                  srl          s10, t4, s0
                  auipc        s0, 623037
                  slti         sp, t5, 1361
                  srli         sp, t3, 27
                  sll          s4, t2, a7
                  srai         s7, a7, 31
                  sll          ra, a6, t1
                  sltu         zero, gp, s6
                  srli         s6, t6, 6
                  slli         s1, a5, 12
                  and          a7, t1, t5
                  addi         sp, s1, -1723
                  andi         sp, s8, -1020
                  xori         s7, a2, -1225
                  addi         s5, t0, -342
                  sll          s2, s7, s9
                  srli         s3, a6, 30
                  srai         a1, s7, 7
                  srai         s2, t6, 6
                  add          t6, sp, a6
                  slli         s5, s3, 11
                  xori         a4, s4, -592
                  addi         s7, a2, 1544
                  sltiu        a4, s2, 1414
                  slt          ra, sp, gp
                  or           ra, s1, s5
                  sll          s9, ra, a6
                  addi         t2, a2, 1616
                  nop
                  andi         t6, a4, 473
                  ori          s3, a5, -1463
                  xori         zero, t6, 1013
                  sll          s10, a4, t2
                  srai         s7, s9, 6
                  srai         a0, sp, 14
                  addi         t1, s1, -520
                  slti         sp, s9, -188
                  sltiu        s8, a6, -476
                  nop
                  xori         sp, s8, -1940
                  and          t0, t0, t4
                  and          a6, zero, s7
                  sra          t6, a0, a1
                  or           t1, a1, a7
                  srl          tp, t4, t6
                  slti         s2, t6, -330
                  or           t6, s0, s2
                  srli         t4, tp, 15
                  slt          a1, s9, s1
                  xor          tp, t0, s11
                  and          a4, t2, a5
                  ori          a7, t0, -631
                  slti         s0, s7, 1913
                  slti         a2, s5, 1123
                  lui          a1, 684705
                  andi         s6, a3, -943
                  sltu         t6, a2, t6
                  sra          t6, s5, sp
                  srli         s0, s11, 2
                  slt          t0, t2, a7
                  addi         a2, zero, 1805
                  srl          s2, sp, a3
                  xor          ra, a7, a3
                  or           a4, s10, s11
                  slt          s5, zero, gp
                  sll          zero, t6, a2
                  srl          s0, tp, s8
                  sra          sp, a1, a5
                  and          t2, a7, s3
                  andi         t0, s10, 280
                  srai         t1, s4, 3
                  srl          s6, a7, zero
                  and          tp, t6, a2
                  sub          a0, tp, s2
                  sub          a6, t3, s11
                  sltiu        zero, a4, 1440
                  slli         t0, gp, 6
                  and          s8, a2, a1
                  add          s3, s3, t6
                  addi         t2, a6, -1203
                  and          t2, a7, s3
                  slti         a1, a3, 496
                  slt          s6, t0, a0
                  slt          zero, t3, s5
                  xori         s2, ra, 954
                  nop
                  and          t2, t3, a0
                  and          s7, t0, zero
                  srl          a5, a4, a5
                  sra          s7, s10, a4
                  ori          a6, a6, 469
                  lui          gp, 241041
                  addi         t6, t3, -1130
                  sltu         t4, a4, s8
                  xori         s4, s2, -1544
                  slt          s3, t2, t2
                  nop
                  sra          gp, a6, s0
                  ori          a0, a5, 1829
                  srli         s10, s1, 7
                  ori          t2, s0, -647
                  auipc        ra, 888913
                  sltu         gp, s9, a0
                  auipc        gp, 380865
                  nop
                  sltu         t1, a3, a4
                  slt          ra, s11, s4
                  sra          s1, t5, s0
                  sll          a7, t2, s0
                  and          s1, sp, s1
                  or           s10, a0, a3
                  xor          a5, a3, sp
                  sltu         a5, t4, a4
                  nop
                  nop
                  sub          a1, s0, a2
                  srli         s7, a1, 4
                  sra          s9, a0, a7
                  slt          t4, s5, t6
                  lui          a2, 923192
                  sub          ra, a1, t0
                  srli         s6, sp, 8
                  lui          a2, 72214
                  nop
                  sub          s5, s11, s9
                  nop
                  srl          zero, a6, s7
                  srl          t5, a3, a7
                  ori          t5, ra, 204
                  slli         ra, s5, 0
                  auipc        t0, 633668
                  add          t6, s6, a5
                  sra          s3, t5, ra
                  sll          s2, t3, s5
                  sltiu        s9, s1, 1107
                  slti         s4, a5, 346
                  or           zero, tp, s8
                  lui          s0, 670814
                  and          t0, t0, t6
                  sra          t5, s9, zero
                  srai         s7, a6, 14
                  sll          s6, t1, zero
                  nop
                  slli         t2, s5, 18
                  slti         a7, t5, -458
                  sltiu        s7, a4, 1242
                  andi         t1, t3, -1116
                  or           t0, t5, ra
                  ori          t2, t1, -1253
                  auipc        s7, 82453
                  slti         t6, s11, 1740
                  slli         gp, s4, 28
                  addi         s7, s0, -805
                  li           a4, 0xa9336924 #start riscv_int_numeric_corner_stream_11
                  li           t4, 0x36479ca4
                  li           t1, 0x80000000
                  li           a6, 0xffffffff
                  li           a2, 0x80000000
                  li           t6, 0xffffffff
                  li           a5, 0x0
                  li           gp, 0x80000000
                  li           sp, 0xffffffff
                  li           a0, 0x9503df21
                  addi         t4, a2, 1813
                  add          t1, a0, a4
                  add          a5, a0, a0
                  auipc        t6, 883854
                  nop
                  addi         a6, t4, 1187
                  auipc        t4, 271179
                  nop
                  nop
                  sub          t6, a0, a4
                  lui          sp, 190534
                  sub          a0, a4, gp
                  sub          a2, gp, a6
                  nop
                  addi         a0, t6, 1417
                  sub          gp, a5, t1
                  sub          a0, gp, a0 #end riscv_int_numeric_corner_stream_11
                  srai         a0, t3, 5
                  slli         a7, a4, 22
                  slt          a1, s10, s9
                  and          tp, t1, t6
                  nop
                  andi         s4, s9, -1404
                  sltiu        zero, a6, 438
                  slt          s1, a1, ra
                  auipc        a7, 1046195
                  sltiu        s5, s4, -290
                  ori          sp, ra, -1778
                  srl          s9, s6, s7
                  srli         gp, t0, 19
                  sub          s1, t6, t4
                  srli         t0, a6, 5
                  and          tp, s1, s9
                  srl          s0, s7, t6
                  add          sp, s4, t0
                  sltiu        t1, a6, 1537
                  andi         s8, s8, 89
                  slti         t5, t0, 1246
                  xor          s8, t0, s2
                  auipc        t5, 306013
                  sub          t0, s7, s6
                  addi         a1, a7, 1449
                  srai         s1, a2, 29
                  slt          s4, s11, s3
                  xori         gp, s3, 897
                  auipc        a6, 371141
                  lui          a5, 898454
                  lui          s8, 709803
                  and          a2, t1, t6
                  sub          sp, a0, s3
                  lui          a1, 563322
                  sra          s4, sp, a3
                  ori          t6, t0, -846
                  nop
                  xor          s9, a6, t6
                  lui          s5, 866229
                  sll          t4, t6, t1
                  addi         t5, s7, -1625
                  sll          s10, s2, a4
                  sltiu        s10, t5, -965
                  sltiu        t1, gp, 1702
                  xor          a1, a5, t1
                  slli         t4, s7, 7
                  sltu         t2, a6, s9
                  andi         t1, a1, -1017
                  nop
                  xor          t4, t3, a5
                  sll          a6, t4, s5
                  lui          s2, 985077
                  srai         t1, t0, 4
                  srl          t5, zero, s4
                  and          t6, s2, gp
                  add          t5, t3, s2
                  xori         a5, a4, 1555
                  sltiu        t4, ra, -936
                  sll          a4, t2, t3
                  sltiu        s10, s2, -875
                  srli         zero, s10, 15
                  slli         s8, s3, 15
                  srai         zero, s5, 16
                  addi         s10, s11, 1419
                  xori         t1, a5, -1828
                  srl          sp, t4, t5
                  srai         a6, s2, 17
                  andi         s2, s6, -907
                  addi         sp, a3, -926
                  auipc        s3, 715775
                  or           sp, zero, tp
                  addi         s4, sp, -880
                  add          t6, s4, t4
                  addi         sp, s6, 614
                  srli         s8, t2, 26
                  xori         s6, s4, 1305
                  srl          sp, a1, a1
                  add          s5, gp, t6
                  sra          s9, s11, s8
                  or           t0, a1, s6
                  sub          s6, s1, t6
                  and          sp, t0, s7
                  sll          s2, s7, ra
                  sltu         t0, a2, s10
                  ori          ra, a6, -1630
                  add          t4, s3, t6
                  sltu         t6, s7, s10
                  nop
                  srli         a5, a7, 11
                  sltiu        t6, s10, 1805
                  ori          gp, gp, 1871
                  addi         a1, t0, 1741
                  auipc        t1, 93345
                  sltu         t2, a7, s11
                  sll          a1, a0, t1
                  slli         a0, t3, 23
                  sra          s8, s11, a3
                  slt          t6, s9, s10
                  xor          ra, t6, t3
                  sra          s2, t2, zero
                  lui          a7, 475362
                  xori         t1, a6, -160
                  and          gp, a5, s3
                  add          t1, s10, gp
                  ori          s9, t1, 1519
                  auipc        a0, 34543
                  sub          a1, s9, sp
                  slti         s6, s10, 1146
                  nop
                  addi         ra, a2, -278
                  and          s7, a2, s11
                  sra          gp, a4, s5
                  ori          s7, t4, -179
                  sra          t0, t3, s2
                  auipc        t1, 861167
                  slli         t2, ra, 30
                  auipc        t2, 905858
                  li           s2, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           t4, 0x80000000
                  li           a5, 0x80000000
                  li           gp, 0x0
                  li           s9, 0x80000000
                  li           s5, 0x39b490ea
                  li           a6, 0x0
                  li           t0, 0x1856a786
                  li           s8, 0x0
                  li           tp, 0xd99667ab
                  nop
                  nop
                  auipc        t0, 745624
                  auipc        s2, 939741
                  nop
                  lui          s2, 655310
                  nop
                  addi         t4, s5, -276
                  nop
                  auipc        s8, 220758
                  lui          s5, 652030
                  lui          s8, 265196
                  add          s5, a6, t4
                  lui          a5, 352301
                  nop
                  nop
                  lui          t4, 422581
                  nop
                  add          s9, t0, t0
                  nop
                  auipc        s2, 380947
                  sub          s5, s5, a6
                  sub          s8, s8, t0
                  addi         gp, s8, 366
                  lui          s9, 641540
                  sub          t4, gp, s5
                  addi         a6, a5, -1138 #end riscv_int_numeric_corner_stream_12
                  andi         a7, a3, -635
                  or           a1, a5, s5
                  auipc        ra, 77088
                  xori         gp, t2, 1241
                  lui          a1, 167030
                  nop
                  xor          tp, t0, a1
                  srl          sp, t2, t3
                  sltu         zero, gp, gp
                  sll          s1, a7, ra
                  sltiu        ra, a6, -83
                  xor          s0, s9, a1
                  srl          t5, t3, zero
                  andi         a2, gp, -580
                  slt          t2, s11, s7
                  auipc        ra, 492484
                  sltiu        s8, s2, -1279
                  nop
                  srli         tp, zero, 3
                  nop
                  or           tp, s1, t5
                  sub          t5, s4, s5
                  nop
                  sra          s1, t4, s11
                  and          t1, t3, a2
                  srl          a7, sp, a0
                  addi         sp, a2, 427
                  sub          t0, t5, s6
                  srl          s7, s0, zero
                  srli         a1, tp, 11
                  sub          s1, t3, s11
                  nop
                  addi         a7, t2, 400
                  srl          a1, a4, t0
                  andi         s4, a2, 1914
                  srli         t4, s9, 30
                  srl          s9, t3, a6
                  add          t5, s2, s8
                  andi         tp, zero, 1810
                  sltiu        s10, t1, 554
                  nop
                  sub          a0, a5, a0
                  xor          gp, t2, t1
                  nop
                  andi         t6, s11, 521
                  and          a5, t0, a6
                  sra          t2, a2, s7
                  slti         a4, t2, -247
                  slt          t0, t3, a4
                  lui          t4, 664026
                  xori         gp, a0, -683
                  sra          t4, s1, a6
                  xori         zero, s3, -1392
                  sub          a6, a5, s11
                  slli         s8, s0, 18
                  slli         a7, t5, 6
                  sub          s3, t6, s9
                  sltiu        gp, s3, 548
                  lui          a6, 208613
                  xor          t1, t2, a0
                  sub          sp, a6, s6
                  andi         a2, s8, 1491
                  sra          s1, a2, tp
                  and          t6, a6, t3
                  add          s0, s10, t2
                  ori          ra, ra, 1948
                  auipc        s6, 856289
                  lui          t5, 124808
                  sltiu        s5, s11, -1600
                  srl          s4, s0, tp
                  sltu         s6, t1, s7
                  and          s1, a6, zero
                  srl          s8, a1, s6
                  addi         s8, s6, -157
                  slli         s7, t5, 12
                  xor          t2, t1, a7
                  srai         s2, a1, 2
                  srl          t0, s9, s5
                  nop
                  andi         a7, t1, 215
                  or           a7, t6, t3
                  sub          s10, t6, ra
                  xor          sp, ra, zero
                  slti         s1, s1, -93
                  sra          t4, s1, s3
                  sll          t6, gp, a2
                  sll          s0, ra, a1
                  add          s10, t6, s11
                  srl          s7, s5, sp
                  sra          a4, t3, s8
                  srai         t5, a3, 29
                  add          s2, s10, t5
                  ori          sp, s2, -1327
                  sra          t1, s9, s4
                  sll          t4, s3, s0
                  slt          s9, ra, s4
                  slli         a0, a3, 20
                  andi         t6, t0, 1599
                  sltiu        sp, s0, 34
                  auipc        s7, 751705
                  and          s6, ra, a0
                  srl          t4, s5, t6
                  slt          tp, sp, a3
                  xori         sp, s2, -1105
                  sra          a6, t5, a0
                  slli         s3, tp, 9
                  srl          s1, a0, s6
                  nop
                  and          tp, a6, a1
                  slti         s6, t4, -491
                  auipc        t0, 413040
                  sltiu        s2, s8, -1581
                  xor          s6, t4, ra
                  and          t1, s0, a3
                  slt          s10, s0, s7
                  xor          t1, t3, sp
                  srai         t1, s10, 3
                  sll          t4, a4, t4
                  and          s9, a1, s3
                  ori          a5, sp, 577
                  andi         s8, sp, -1457
                  or           s8, s11, t6
                  slt          a6, s11, t4
                  ori          s6, a0, 1254
                  or           s4, sp, t1
                  sra          s7, a3, s7
                  auipc        s1, 108830
                  sltu         s3, a3, s6
                  xor          s5, s4, s10
                  srl          s9, sp, a4
                  sltiu        t2, s11, -223
                  srai         s3, a3, 21
                  or           zero, t1, a1
                  slt          s3, s9, s9
                  sra          s2, a0, t2
                  sltiu        a5, a7, -1097
                  slli         tp, tp, 16
                  xor          s8, a6, t2
                  and          a1, s8, s11
                  or           zero, sp, s4
                  sltiu        s0, a6, -1654
                  slt          t5, sp, t6
                  sltu         sp, s10, t2
                  xor          a7, t2, s8
                  or           t6, s11, tp
                  lui          a6, 417253
                  xori         t4, t1, 1937
                  sll          a2, t6, t3
                  slti         s5, s7, 1620
                  sra          a2, t2, s4
                  sra          s8, a2, s4
                  sra          s2, zero, a2
                  addi         t0, zero, -1970
                  andi         s4, gp, -106
                  xori         s7, gp, 1738
                  sll          a6, a1, tp
                  slt          s5, zero, a3
                  nop
                  slti         t2, a1, -961
                  or           a4, sp, sp
                  or           t2, tp, s8
                  xori         s7, tp, -322
                  sltiu        t6, gp, -599
                  srai         s3, s2, 0
                  srli         s2, s2, 25
                  xor          tp, t3, sp
                  xori         s3, a6, 1082
                  slt          s7, t0, a6
                  xor          a4, s5, a7
                  sra          s1, s6, ra
                  sltiu        gp, s5, -1572
                  addi         t5, gp, 225
                  srl          t5, t6, a5
                  sltiu        a0, t2, 431
                  xori         a0, gp, -1370
                  xori         t5, s7, -825
                  sltiu        a2, a4, -1161
                  slli         a2, s3, 16
                  sub          gp, tp, s8
                  sra          s10, s11, t2
                  slli         ra, sp, 27
                  andi         s7, a7, -99
                  addi         zero, t1, -1212
                  srl          s10, s0, s5
                  slti         s9, t2, 1834
                  sub          s5, gp, gp
                  or           t0, s5, gp
                  and          a5, t2, sp
                  srl          sp, a0, s3
                  auipc        s10, 790122
                  xori         t4, a1, 1444
                  auipc        s5, 858958
                  sltiu        a0, sp, -626
                  and          ra, t3, s5
                  slli         a5, gp, 1
                  sltu         zero, s11, t3
                  xor          a1, t4, zero
                  xori         ra, s1, -232
                  slli         s9, a1, 25
                  andi         t0, ra, -898
                  srli         s8, s2, 9
                  andi         s10, s6, -1102
                  andi         s7, t2, 2020
                  andi         a6, s3, 1322
                  sll          a6, s3, s4
                  srli         t0, t5, 21
                  sltiu        a6, t1, 1922
                  srai         t6, s6, 29
                  srli         s8, s7, 15
                  andi         zero, s0, 1055
                  andi         zero, tp, -328
                  srli         s3, a6, 4
                  addi         t6, s5, -708
                  nop
                  sub          t1, s1, s2
                  slli         s7, s1, 22
                  srli         zero, s0, 28
                  sltiu        a1, t6, -1776
                  sltiu        ra, zero, 1244
                  slti         ra, s1, 371
                  nop
                  srai         ra, s11, 9
                  auipc        a1, 818911
                  srl          s7, sp, a7
                  nop
                  sub          t6, t2, s2
                  nop
                  sltiu        s4, zero, -473
                  or           a5, s0, t1
                  slt          a5, gp, a7
                  sub          a7, a3, s9
                  or           a2, s7, s3
                  auipc        a0, 187665
                  lui          a0, 158483
                  slti         t0, s6, 1484
                  add          tp, a4, a7
                  lui          s9, 875370
                  and          t5, a5, gp
                  andi         s2, gp, -1833
                  xor          a6, t2, t1
                  slt          gp, ra, a7
                  ori          a5, gp, -1753
                  slli         a4, t3, 21
                  xor          a5, s6, s2
                  nop
                  xor          s3, s1, t4
                  or           s5, a0, t0
                  xor          tp, s2, s11
                  and          sp, sp, s0
                  and          t6, ra, s2
                  auipc        a4, 995913
                  sll          a1, t6, sp
                  lui          a1, 835302
                  add          sp, t3, s8
                  ori          s8, s8, 752
                  lui          s2, 813226
                  sltiu        t2, t6, -1187
                  srli         sp, s8, 6
                  srl          t1, s7, t1
                  auipc        a0, 742101
                  slti         s10, s8, -242
                  lui          s1, 177952
                  srl          s7, t5, s3
                  lui          a0, 51786
                  srl          t0, a5, a1
                  addi         t0, s0, -492
                  nop
                  srai         t6, s7, 1
                  nop
                  lui          a2, 1612
                  srl          t4, a2, t3
                  or           s5, s9, t5
                  sltiu        zero, gp, 554
                  srl          s3, t2, s10
                  sra          a7, t4, s7
                  lui          a4, 333114
                  slti         t6, s10, 1794
                  slli         t6, t0, 31
                  sra          s5, s10, gp
                  sltiu        a2, s4, -850
                  slli         s9, s0, 14
                  xori         a5, s0, 1111
                  lui          a2, 775586
                  addi         a7, s7, -947
                  slti         s6, a0, -1334
                  lui          a6, 805093
                  slti         t5, s1, 1021
                  ori          s1, a2, -1782
                  add          t6, s8, t1
                  slt          a5, s7, s7
                  srai         a7, t4, 31
                  slli         t2, s11, 8
                  slti         s8, s2, 1343
                  sltu         tp, t6, s7
                  sub          s10, t4, t6
                  sll          s0, s6, s5
                  auipc        s4, 642496
                  slt          s5, ra, t3
                  sll          s2, a5, a1
                  or           t6, t4, t2
                  ori          s9, sp, 444
                  sll          ra, sp, s5
                  sra          s0, a3, s5
                  add          s9, t2, t0
                  lui          s4, 700083
                  ori          a2, s11, 752
                  add          t0, s11, s11
                  sll          s0, s3, a0
                  addi         a5, zero, -505
                  slt          s7, zero, s4
                  add          a6, s5, t0
                  xor          t2, s11, a3
                  xori         s8, s4, 25
                  auipc        a1, 582723
                  and          a0, s7, t2
                  sltu         tp, a1, tp
                  sltiu        a6, s5, -198
                  slt          s8, s6, s11
                  sltu         s5, s1, t0
                  add          ra, a3, zero
                  slti         a6, t1, 1760
                  srl          t5, t6, s3
                  sub          sp, s8, t4
                  srl          t4, a6, a5
                  srai         t4, tp, 20
                  xori         s9, t5, 1205
                  xori         t1, s10, -1979
                  srli         t1, t4, 12
                  slli         t5, a7, 6
                  slti         t6, sp, -297
                  xor          sp, sp, t6
                  srli         s10, t1, 10
                  sltu         t1, a7, a1
                  and          s6, s6, t3
                  addi         t6, t2, -203
                  lui          s8, 415022
                  xori         t6, t2, -592
                  sltiu        t4, s2, 1413
                  and          a4, t0, zero
                  auipc        a5, 844896
                  ori          s5, a2, -139
                  srli         t5, t1, 30
                  auipc        s8, 925743
                  addi         gp, s1, 422
                  srl          a5, s3, a6
                  sll          a6, s5, s5
                  sub          s2, s3, s1
                  sltu         s0, s8, s3
                  and          sp, s10, t3
                  sltu         t2, s2, s2
                  srai         s8, zero, 15
                  nop
                  xor          tp, t5, a2
                  slti         s1, s7, 761
                  sub          s2, s5, a7
                  lui          t1, 833323
                  andi         s8, s8, -1092
                  srl          tp, t4, gp
                  and          s0, s3, ra
                  srli         sp, t4, 19
                  xori         a6, t5, 389
                  slli         a1, s9, 27
                  or           t5, gp, a1
                  add          a7, t2, a2
                  nop
                  sra          s6, ra, s1
                  or           a2, t3, s6
                  sltu         t5, s6, a6
                  slli         t0, t4, 19
                  and          s9, ra, a7
                  sra          gp, sp, a6
                  srai         s10, s1, 23
                  slt          s0, s7, a1
                  sub          s7, a3, s9
                  add          a7, tp, gp
                  srl          s7, s9, t2
                  add          a6, gp, a7
                  andi         a6, s7, -745
                  srli         s7, s7, 6
                  addi         t5, s1, 1696
                  sltiu        a4, t4, 195
                  srli         t2, a3, 28
                  sltiu        t2, t2, 1610
                  slli         s10, t0, 2
                  sub          t5, a5, tp
                  add          t1, s6, gp
                  and          s5, s7, t6
                  slli         s10, s2, 3
                  sra          s3, s10, a5
                  andi         s8, s3, 644
                  sub          sp, sp, gp
                  auipc        t4, 588582
                  and          a6, a7, s10
                  xor          s5, tp, t3
                  srai         tp, t3, 23
                  ori          s3, t3, 1472
                  auipc        a5, 900987
                  srli         sp, s8, 8
                  sltiu        s5, ra, 486
                  andi         s7, s3, 1321
                  slt          t6, a5, a4
                  srl          tp, a0, a4
                  sll          a6, a3, a3
                  or           a1, a1, a2
                  xori         t0, s5, -1333
                  ori          s2, t0, 1646
                  addi         t2, a6, -270
                  sll          sp, ra, t1
                  addi         tp, a2, 923
                  auipc        gp, 402837
                  slli         ra, s11, 28
                  sltiu        a0, a2, -974
                  addi         t4, s10, -461
                  ori          tp, t2, 1360
                  srli         t2, a7, 7
                  add          s4, a4, s11
                  and          a7, s3, s3
                  andi         s7, a4, -1966
                  srai         t6, gp, 20
                  srai         t6, a7, 10
                  sub          a1, tp, a4
                  srai         a4, a7, 28
                  slt          s2, s6, a3
                  lui          sp, 430951
                  sub          s3, a7, a1
                  slt          t0, a3, s3
                  sub          a4, s2, s4
                  sltu         t2, s0, s2
                  ori          t4, s1, -1938
                  slti         a7, t0, 1987
                  srai         zero, t5, 28
                  sltiu        s10, sp, -590
                  addi         a1, t0, 1497
                  or           a6, s7, t6
                  and          s7, t5, tp
                  addi         a4, t3, -617
                  slli         s0, ra, 2
                  sll          s4, gp, t6
                  xori         s0, t5, -1168
                  ori          t0, s7, 621
                  xori         s5, a4, -546
                  slli         s1, t6, 2
                  srli         s5, s4, 16
                  sltu         s3, t0, a1
                  sra          a6, a3, t0
                  srl          s4, s4, s3
                  auipc        a2, 22731
                  nop
                  andi         a2, ra, 365
                  srai         s7, a0, 19
                  nop
                  sub          zero, sp, s8
                  slli         t6, ra, 3
                  add          s5, t3, s9
                  lui          a1, 991789
                  auipc        tp, 800766
                  sub          a2, t6, s9
                  xor          s7, ra, t2
                  sltu         a2, s7, s8
                  or           t5, gp, s6
                  or           a6, s3, s7
                  srai         tp, t1, 14
                  srai         a7, a3, 3
                  addi         s5, t1, 381
                  srai         s1, s3, 24
                  lui          tp, 826879
                  lui          s10, 147260
                  srai         s6, zero, 20
                  sll          sp, sp, t2
                  slt          tp, s7, s9
                  lui          a5, 353010
                  sra          t6, s11, s8
                  sll          s5, s1, t3
                  or           tp, s7, s8
                  add          gp, a1, s2
                  sltu         t2, sp, a6
                  xori         t2, t6, -1349
                  or           sp, zero, s2
                  srli         tp, ra, 30
                  sltu         gp, s5, t5
                  xor          a4, s6, t1
                  addi         t2, a1, 1777
                  xor          s6, t3, a0
                  sltiu        s10, zero, -736
                  sll          zero, s10, t3
                  srl          tp, t3, t1
                  slt          s9, s6, a5
                  xor          t6, ra, a7
                  add          tp, t3, t6
                  slt          a4, t0, s5
                  lui          a0, 807062
                  sra          s4, s3, t0
                  srli         s1, s8, 16
                  slti         s0, s8, -853
                  xori         s10, t2, -1100
                  sra          t0, a6, gp
                  srl          s6, ra, a5
                  srli         zero, s10, 17
                  addi         s10, s5, 1888
                  andi         a4, t3, 1913
                  lui          a5, 571415
                  auipc        a2, 150370
                  and          t1, s11, a6
                  sll          s10, zero, zero
                  auipc        t2, 1047590
                  addi         s5, s10, -1385
                  srli         a2, s0, 4
                  xori         a2, t5, -1104
                  addi         zero, s2, -1772
                  auipc        s7, 838828
                  sll          s5, ra, t4
                  xori         t0, t2, -1505
                  sub          s9, sp, a3
                  lui          zero, 20424
                  ori          a6, a7, -641
                  ori          s0, t4, -1668
                  ori          tp, zero, 226
                  sub          a2, a1, s0
                  sltu         a6, s10, s6
                  srl          t1, a1, sp
                  slt          s9, a0, s1
                  slti         a1, a4, -667
                  nop
                  sub          t5, s11, zero
                  slti         a1, s10, -1865
                  sll          a6, t4, a2
                  xor          s2, s5, zero
                  sltu         t4, zero, s11
                  and          t6, tp, t3
                  sltiu        t6, a2, 719
                  and          s8, s8, s2
                  sltiu        a0, tp, 235
                  srli         tp, s0, 22
                  addi         gp, s9, 995
                  sra          t5, t1, s7
                  or           sp, s1, a7
                  addi         tp, zero, -216
                  srl          a6, s7, t1
                  sra          a1, s1, t0
                  srl          s6, s5, zero
                  srli         a2, s4, 14
                  sltu         t5, s5, s1
                  srli         s2, gp, 27
                  add          s4, a2, tp
                  slt          t1, sp, t2
                  addi         a0, s9, -1520
                  sll          t1, t2, gp
                  srli         s6, s7, 14
                  srl          a7, a5, a5
                  auipc        a6, 918676
                  xori         s5, s8, -515
                  auipc        a6, 556971
                  add          s4, t5, a7
                  slt          s5, a3, t5
                  slt          t0, t0, s2
                  srli         a7, s11, 29
                  slli         a5, a1, 19
                  or           t5, t0, t4
                  addi         s10, s8, 1420
                  slti         t5, s8, -522
                  nop
                  slli         t5, t1, 24
                  addi         a2, zero, 526
                  andi         a1, s8, 134
                  sll          s9, s8, s9
                  sll          a5, gp, t0
                  sra          s6, a1, s7
                  addi         a4, s2, -606
                  srl          a7, t1, ra
                  ori          t1, a7, 1903
                  slt          tp, tp, a5
                  xor          a1, s10, s11
                  lui          zero, 1047306
                  and          zero, t6, t3
                  slti         s7, s3, 1759
                  add          t0, s7, a0
                  ori          a4, a0, 1548
                  or           a1, zero, a1
                  or           t0, t1, a5
                  srl          zero, s9, s1
                  xori         s5, s11, 296
                  lui          a2, 996445
                  slt          s8, s7, a0
                  srli         zero, s6, 3
                  slti         s4, s10, 916
                  and          sp, a6, ra
                  auipc        s9, 145303
                  addi         s10, a3, -1485
                  slt          t4, t6, s6
                  add          t4, s7, s3
                  xor          t4, a7, t3
                  sra          s2, t4, sp
                  andi         a5, a5, 1311
                  xor          t4, a4, s5
                  slti         s8, s9, -1198
                  auipc        s6, 340299
                  slli         s10, zero, 10
                  slt          sp, t0, s4
                  auipc        t1, 218355
                  slti         t2, s3, -531
                  addi         s2, a2, 81
                  or           t6, t0, s0
                  srai         tp, a0, 2
                  xor          t2, t0, s2
                  slli         s4, a2, 14
                  andi         s9, s2, -1393
                  xor          s7, t0, a5
                  slti         s2, zero, -1966
                  slli         s6, s9, 4
                  sll          t6, s11, a7
                  srl          a5, s5, t0
                  and          s10, a0, a2
                  srli         a6, s9, 23
                  xor          s4, a6, a5
                  and          s1, s2, t5
                  and          sp, ra, t5
                  sra          s8, a3, a7
                  nop
                  auipc        gp, 345092
                  srli         tp, s10, 27
                  xor          s0, s2, s1
                  sltiu        s10, t6, 1631
                  and          s5, a5, t6
                  srl          tp, s9, a3
                  slti         gp, zero, 923
                  ori          s0, sp, 1590
                  auipc        s2, 671098
                  sll          s0, s8, gp
                  slli         s7, a2, 12
                  sltu         s1, a4, s7
                  sll          s3, s8, s2
                  andi         sp, t2, 395
                  sltu         s0, a5, sp
                  xori         s4, s7, -1703
                  nop
                  slt          zero, a0, t0
                  srai         t0, t2, 13
                  add          s0, ra, a2
                  srl          a5, t0, s10
                  sll          t2, a1, t6
                  andi         zero, a7, -476
                  addi         s3, s0, -1911
                  sra          s10, ra, sp
                  andi         s4, a6, -1687
                  xor          s5, s8, tp
                  and          s0, s2, zero
                  and          s3, ra, s5
                  slt          s6, a3, s5
                  sll          s9, a5, a7
                  auipc        s1, 332738
                  slti         t0, gp, -445
                  slli         t4, t4, 16
                  lui          a6, 168860
                  sltiu        a4, s6, -981
                  auipc        s1, 920778
                  srli         s0, s3, 26
                  add          a0, s8, t2
                  sltiu        t1, sp, 962
                  slli         s5, s1, 2
                  andi         s0, s8, 1713
                  srai         sp, sp, 2
                  xor          t6, t1, a4
                  sra          s2, s2, a1
                  add          s8, s4, s3
                  srl          t2, a7, a7
                  nop
                  sub          s3, s7, s0
                  sra          a6, s11, a1
                  srl          a1, s8, s7
                  srli         a2, t1, 7
                  sltu         a5, s0, s7
                  sltu         a2, s1, a6
                  andi         s3, t1, 2034
                  andi         gp, s8, -1688
                  sltiu        gp, s10, -1020
                  ori          s3, a0, -273
                  xor          t4, s5, tp
                  sll          a0, t6, a3
                  xori         s1, gp, 121
                  sub          s10, a6, sp
                  sra          t1, t2, s2
                  sub          a7, a5, t5
                  sub          s8, s5, a4
                  sltiu        tp, s5, -139
                  addi         s9, t2, 651
                  sltu         t1, a4, gp
                  and          t6, t5, a2
                  add          a2, s5, ra
                  xor          a0, t1, s9
                  slli         s8, s0, 0
                  auipc        s2, 764498
                  lui          s2, 431886
                  andi         t6, s2, 715
                  auipc        s5, 1006630
                  slli         zero, s10, 11
                  slt          tp, t4, a0
                  sra          a2, s9, a1
                  addi         t2, t2, 1667
                  srli         s3, sp, 19
                  slti         t4, t1, 557
                  slt          a4, s10, s7
                  add          t1, t4, s5
                  auipc        a1, 987044
                  srli         gp, a3, 21
                  ori          zero, s2, -738
                  slli         s0, t3, 22
                  srai         a4, s3, 3
                  sra          s9, zero, tp
                  andi         tp, t3, -1405
                  or           a4, s4, s2
                  xori         s4, a4, 2030
                  sll          a1, tp, s4
                  ori          t6, s9, -1147
                  sub          t0, sp, t1
                  addi         a1, a2, 1810
                  sll          t1, s3, t2
                  slli         gp, s5, 1
                  srl          a5, a7, s4
                  andi         s1, t1, 80
                  sll          t5, s4, a7
                  sll          t2, t1, gp
                  srl          s10, a0, zero
                  xori         tp, s8, -1096
                  addi         s3, a3, 1824
                  ori          s0, sp, -1354
                  slt          s5, a4, t2
                  srl          t0, zero, a0
                  lui          t4, 306884
                  auipc        sp, 458197
                  sra          gp, t4, a1
                  srl          s8, t0, s9
                  auipc        ra, 579876
                  or           t4, s1, s5
                  or           s4, t4, t1
                  lui          s5, 199703
                  andi         a2, a4, 1390
                  xori         s4, a7, -615
                  or           a5, sp, t0
                  nop
                  sub          s4, a0, a2
                  nop
                  or           t0, t4, sp
                  sltiu        s8, s4, 733
                  srl          s1, a1, s2
                  sll          a6, s4, t6
                  add          s4, s6, s5
                  ori          a1, s6, -765
                  sltiu        s8, s0, 1059
                  sltu         a7, s2, s8
                  sltu         a6, tp, gp
                  lui          a2, 953970
                  and          s1, s1, s5
                  xori         s2, s2, 1901
                  and          a0, a5, t3
                  slti         s4, a2, -391
                  addi         sp, a7, -1358
                  or           sp, a3, t2
                  slti         t0, t1, 1576
                  add          t4, ra, s1
                  lui          sp, 498263
                  srl          zero, s8, s3
                  add          zero, s11, a0
                  sub          a7, t0, s3
                  srli         a7, t4, 13
                  add          t1, s0, s1
                  srl          t1, a2, a7
                  sub          t6, a5, t2
                  or           a2, t4, sp
                  srai         s4, a7, 23
                  srl          s5, s4, t6
                  srl          s0, a7, s8
                  sra          a1, gp, sp
                  sra          a7, t6, a3
                  lui          s2, 327378
                  sll          a4, ra, t0
                  sra          s2, s8, a6
                  add          a1, t5, t3
                  sub          a6, s1, t6
                  slti         gp, a6, 1469
                  addi         a2, a5, 1993
                  auipc        s8, 13454
                  srl          sp, s5, s5
                  sltiu        t4, s8, -1229
                  sltu         a4, t4, a0
                  or           s6, t1, s11
                  auipc        t6, 188747
                  andi         ra, t2, -1582
                  sra          sp, a4, a0
                  and          t2, s4, s6
                  sltu         t6, s10, s6
                  lui          gp, 130358
                  srai         t1, s10, 19
                  sltiu        s10, s7, -1709
                  add          a1, a4, gp
                  addi         t2, t6, -1892
                  srl          s1, s9, tp
                  or           s9, s2, s8
                  slt          a7, a6, s7
                  addi         t6, s1, 1503
                  sltiu        s4, s3, 601
                  andi         t4, ra, 1497
                  nop
                  and          s7, s0, ra
                  sltiu        t5, a1, -625
                  slt          gp, a6, s10
                  srai         s6, a5, 9
                  sltu         a0, s8, s3
                  srli         s7, a5, 27
                  add          s10, s7, a3
                  sub          a4, a7, a4
                  srai         a2, s11, 31
                  slti         a4, gp, 455
                  lui          sp, 538169
                  sra          s8, a0, t2
                  sltiu        s2, zero, 767
                  add          s8, zero, zero
                  sub          t5, t1, t3
                  or           t0, a2, gp
                  srl          s6, s7, t3
                  srai         s5, a2, 25
                  slti         s4, s8, 232
                  sra          ra, s7, gp
                  slti         tp, t0, -823
                  nop
                  sltu         a5, tp, ra
                  sll          s2, a7, s3
                  slt          s7, t6, s5
                  auipc        sp, 994366
                  sltu         s2, t0, a3
                  andi         s2, a0, 894
                  slti         s7, s11, 1223
                  sltiu        a0, gp, 1602
                  nop
                  srai         t6, a4, 31
                  addi         t6, t3, -728
                  xori         sp, s2, -77
                  or           a0, a7, a1
                  sra          t2, s2, s2
                  sltiu        t0, a5, -409
                  andi         gp, a0, -1665
                  add          zero, s0, a2
                  addi         a2, t0, 1856
                  andi         s2, a4, -21
                  nop
                  srli         s10, t6, 30
                  andi         a7, gp, 1510
                  nop
                  auipc        s10, 370485
                  ori          s2, a1, -1540
                  slt          t6, s10, a2
                  sra          a7, a7, a6
                  slt          s0, t3, ra
                  andi         t5, a6, 1078
                  andi         s3, s11, 1812
                  or           a5, t4, s4
                  lui          a6, 176242
                  nop
                  sltiu        tp, t3, -284
                  and          a7, t3, s11
                  xori         a1, s4, 343
                  sll          s9, t6, s11
                  sra          a0, s0, s2
                  srl          t2, sp, t4
                  ori          a0, tp, -1266
                  addi         s0, a5, 466
                  sltiu        s9, s10, -580
                  srl          a7, a5, t2
                  xor          tp, t1, s0
                  auipc        a7, 474142
                  sub          t4, a5, s11
                  add          t0, t1, a6
                  add          s2, a0, s6
                  auipc        a4, 294590
                  slli         a2, t3, 18
                  or           sp, a3, a5
                  slli         s9, t4, 13
                  srli         s7, t0, 15
                  nop
                  srai         s4, t2, 24
                  slt          zero, s2, t4
                  srai         a7, a1, 23
                  lui          s2, 80987
                  sltu         s7, zero, t6
                  andi         a4, a5, 1553
                  sltu         s5, s5, gp
                  addi         t4, t5, -1886
                  sub          s2, s8, t1
                  and          a5, s6, tp
                  auipc        t6, 652849
                  sltiu        s10, a2, 390
                  add          t0, zero, s10
                  sltu         a1, s11, a0
                  sll          t1, s6, s0
                  srli         s0, s10, 18
                  sll          s0, s0, s2
                  slt          t1, a2, s5
                  auipc        a1, 548325
                  sub          tp, zero, t5
                  slli         t0, tp, 1
                  slti         t0, a0, 1384
                  auipc        a6, 738187
                  srai         a4, s8, 25
                  sra          s6, s3, s0
                  xori         a7, a2, 1388
                  slli         s7, zero, 26
                  slt          a7, s7, s9
                  add          a7, a1, s5
                  addi         a2, t4, -422
                  srl          s8, gp, t2
                  sub          a6, t2, s8
                  slli         sp, s1, 10
                  sll          a0, s4, s1
                  slli         s10, a5, 20
                  slt          s2, s10, t2
                  xor          s1, s10, a4
                  add          a5, s6, t4
                  lui          t5, 469739
                  sltu         t2, s6, a5
                  xor          t1, s3, tp
                  ori          s3, t1, 1950
                  sltiu        tp, sp, 1729
                  and          t6, s7, s1
                  sll          t5, a1, s9
                  add          s8, t1, a1
                  lui          a1, 496270
                  sub          sp, s4, a3
                  auipc        s4, 543058
                  xori         a6, a4, 1327
                  sll          t0, t2, ra
                  slt          t6, s3, a2
                  or           a5, ra, s1
                  sub          zero, t4, s3
                  slli         t0, a0, 12
                  lui          s2, 478741
                  sra          s7, s8, a5
                  addi         sp, a7, -1625
                  or           s8, s8, a0
                  srli         s7, s9, 17
                  srli         s5, sp, 25
                  sltiu        t1, s11, -498
                  sub          s5, ra, s6
                  xori         a0, a1, -183
                  srai         a7, t3, 12
                  xor          s1, s6, t2
                  sub          s6, s0, t6
                  sltiu        a0, tp, 339
                  srl          s10, t3, s9
                  or           a0, a4, a3
                  ori          t6, a4, 340
                  srli         a6, t5, 8
                  addi         s8, t1, -694
                  or           s2, a7, a3
                  srl          a4, gp, ra
                  sltiu        a4, a1, 294
                  and          s6, t1, a6
                  sltiu        a7, a0, 930
                  xori         a1, s6, -1824
                  sra          a5, a4, s11
                  lui          a0, 460659
                  ori          s10, s0, -595
                  auipc        t2, 740893
                  lui          s5, 845516
                  slti         s0, a3, -469
                  sltiu        sp, s5, -167
                  sll          t6, ra, t4
                  sltiu        a1, zero, -113
                  srl          t0, s3, s4
                  addi         s7, t5, 1482
                  lui          s0, 733059
                  nop
                  srai         gp, a2, 31
                  nop
                  xori         s0, s4, -223
                  srai         s6, s10, 1
                  nop
                  sltiu        tp, a2, -1266
                  andi         s7, s1, -1612
                  nop
                  srai         a2, s6, 25
                  xori         s7, s11, -1429
                  sll          a0, a4, t3
                  lui          t0, 490074
                  slt          t1, a4, t4
                  srl          a2, gp, sp
                  and          t0, a3, t5
                  add          a5, a0, s10
                  srli         t6, a1, 19
                  sltu         t2, a0, a0
                  sub          a1, s10, t3
                  srl          s4, ra, ra
                  sltu         s5, a2, s4
                  nop
                  lui          a7, 388891
                  auipc        a0, 77276
                  slli         s2, s1, 10
                  sll          gp, a1, a6
                  srl          t6, a5, t3
                  srli         a7, t3, 5
                  slli         t6, ra, 0
                  sltiu        s6, t5, -308
                  ori          gp, t4, 1395
                  xori         s2, t4, 1190
                  sll          sp, s11, t0
                  and          s5, t4, a4
                  srl          a2, t6, s3
                  sltiu        s2, s9, -706
                  andi         a6, s5, 1015
                  sll          a1, t3, a7
                  add          a4, s3, s5
                  xori         gp, s2, -1241
                  auipc        s10, 435935
                  sub          s5, ra, a6
                  auipc        s8, 156112
                  xori         a7, sp, -178
                  slli         a6, t3, 5
                  slli         a5, s6, 0
                  or           s2, a3, s4
                  addi         a6, a1, 226
                  add          gp, ra, a2
                  xori         a7, a3, 1925
                  add          a4, s5, s4
                  sub          ra, zero, s2
                  srl          s6, s3, gp
                  sub          a5, s1, t3
                  lui          s6, 438676
                  sra          t0, sp, a6
                  srli         ra, gp, 11
                  sra          s2, t1, s7
                  sub          t0, a0, s7
                  slt          s2, s3, t2
                  auipc        s3, 714558
                  xor          sp, a3, sp
                  add          s8, gp, t0
                  slli         t4, s3, 14
                  slti         t1, t0, 738
                  srai         s2, t6, 18
                  and          s6, s0, t1
                  lui          s1, 619137
                  sltu         a5, s6, a7
                  ori          s5, a0, 1695
                  xori         sp, s4, 753
                  srli         t1, s7, 18
                  nop
                  nop
                  xor          s10, s7, s9
                  xori         gp, a6, -911
                  sltu         a5, t0, t6
                  srli         t2, t5, 3
                  lui          t0, 619718
                  sub          a7, s8, t5
                  sltiu        s2, s6, 1341
                  srl          ra, s0, t0
                  sra          tp, s8, a3
                  sll          t0, t6, a2
                  lui          s3, 776505
                  andi         s10, s6, -984
                  sll          a6, t0, s4
                  add          s2, a2, s7
                  lui          a6, 153140
                  xori         s10, s3, -881
                  sub          s9, s5, a1
                  slt          t6, a6, a6
                  srli         t4, t2, 25
                  srli         t6, ra, 14
                  or           t4, a3, t1
                  add          tp, s2, a0
                  add          a6, t6, s0
                  xor          gp, t1, zero
                  srai         a1, a7, 6
                  lui          a7, 388441
                  slli         t0, s6, 21
                  sra          s6, t2, t5
                  srl          t4, t4, s11
                  xor          a5, s2, s9
                  nop
                  auipc        s3, 87316
                  ori          s5, t2, 1629
                  sra          a1, sp, a0
                  slti         t1, a1, -1232
                  auipc        s5, 769947
                  slti         ra, s10, 1299
                  slti         t1, s3, -1026
                  auipc        t2, 334328
                  sll          s2, a0, ra
                  and          s4, a7, a4
                  add          t5, s10, t3
                  slli         s6, s9, 27
                  sub          tp, t2, t3
                  srli         gp, t2, 8
                  srl          s1, t5, t2
                  lui          s4, 115456
                  andi         s3, s3, -321
                  slti         s2, t0, -468
                  srai         a1, sp, 1
                  or           t1, a7, s10
                  addi         s1, s6, 716
                  slt          a5, t5, a3
                  slli         s8, s8, 28
                  and          s2, t2, t4
                  slli         s9, ra, 8
                  sub          gp, s7, s1
                  lui          a1, 850421
                  sub          sp, t3, t3
                  auipc        zero, 58723
                  xori         s6, a7, -1613
                  srl          s10, a3, sp
                  sra          t4, a0, a7
                  slli         a7, gp, 4
                  xor          t6, s3, s8
                  andi         s5, a4, 1690
                  srl          s7, a6, s7
                  auipc        s3, 304196
                  srli         t6, gp, 3
                  nop
                  xor          t2, s5, t4
                  lui          s9, 998684
                  add          a0, tp, a6
                  srai         tp, s10, 18
                  nop
                  sltiu        a7, s7, 434
                  lui          s2, 842562
                  srai         gp, t1, 18
                  sub          s6, t4, a0
                  addi         s4, s6, -116
                  ori          s10, a0, 1618
                  lui          a1, 17391
                  xor          s7, t0, a2
                  srli         a4, t0, 21
                  slti         a6, a1, -52
                  add          a0, s9, a0
                  sll          s8, s11, s4
                  srli         s5, zero, 0
                  sltiu        s3, s1, -931
                  sltu         s5, a3, zero
                  and          tp, t0, a0
                  slt          gp, t2, sp
                  sltu         s6, ra, a6
                  sub          s9, s0, a1
                  slti         a6, t5, 1403
                  auipc        s10, 512485
                  lui          a6, 842080
                  lui          s5, 527858
                  slti         s4, a5, 364
                  srai         ra, s8, 31
                  auipc        s5, 411775
                  sltiu        s7, a7, -448
                  andi         s10, s8, -2033
                  and          s5, a4, ra
                  sll          s5, a2, s10
                  add          a4, s10, gp
                  lui          s9, 765569
                  sltu         a6, a0, t5
                  srl          gp, s7, s7
                  add          t4, gp, s0
                  nop
                  sltu         t0, t0, t5
                  add          t6, t3, s1
                  lui          s3, 349431
                  slt          s10, t4, t2
                  addi         s10, s11, -150
                  slt          s9, t6, s0
                  srl          s10, s0, s9
                  xor          a6, t0, a6
                  add          s8, a7, s7
                  and          s10, t3, t4
                  lui          t4, 782353
                  sub          gp, s6, tp
                  slt          s6, sp, t3
                  srl          s9, t1, t4
                  lui          a6, 830442
                  xor          a4, s2, sp
                  sub          s5, a7, a2
                  lui          t0, 448390
                  sltu         gp, a1, s8
                  sltu         t6, s10, s5
                  nop
                  sra          s1, a5, s0
                  sll          a4, a5, a6
                  srl          s8, s0, s1
                  slti         s0, t2, 1129
                  addi         a7, tp, -611
                  sltiu        s9, t4, -243
                  xor          s6, s8, t6
                  slti         a0, a6, 1517
                  sltiu        s0, s1, 56
                  srli         s10, t2, 2
                  sub          a4, t3, s10
                  nop
                  sra          t2, a4, s5
                  slti         gp, a3, 2007
                  add          a5, t1, t4
                  slt          a7, t4, a2
                  auipc        t5, 888800
                  xori         s1, s3, 1590
                  lui          sp, 360628
                  andi         zero, t1, 1690
                  slt          a1, t3, t3
                  sltu         s5, s2, a3
                  slt          s3, t4, s4
                  nop
                  srli         a1, zero, 11
                  andi         zero, a1, -401
                  add          s4, a6, zero
                  andi         s10, a6, -929
                  xori         sp, s10, -843
                  xori         s9, s4, 323
                  add          a5, sp, s11
                  nop
                  andi         t2, t6, 1622
                  or           gp, s8, t2
                  sltiu        t4, s2, -167
                  or           zero, s8, a5
                  srl          a7, s6, a2
                  sltu         t6, a1, t0
                  add          s7, s11, s1
                  sll          s3, a7, s0
                  slti         t2, gp, 1186
                  or           s9, a6, a6
                  slli         s3, s8, 5
                  slli         t5, s0, 10
                  or           gp, t5, s9
                  srl          s0, s1, a4
                  and          s8, s4, t1
                  sltiu        s6, s8, 1478
                  andi         tp, zero, 1669
                  sll          s1, s8, t2
                  lui          t1, 592766
                  slli         a1, s2, 5
                  lui          tp, 546824
                  xori         t2, a4, -1344
                  xor          a5, s11, s6
                  srl          zero, a1, t1
                  auipc        s6, 88700
                  andi         a6, tp, -1041
                  srl          s6, s6, s10
                  slli         a0, s10, 18
                  slti         s9, t4, -328
                  xor          a5, t0, s6
                  xor          t6, a2, gp
                  srai         tp, a0, 12
                  addi         t2, t1, -26
                  slli         sp, ra, 8
                  lui          t0, 928457
                  srai         s3, a5, 8
                  sra          t6, s7, a5
                  xori         s4, sp, -967
                  xor          a5, t0, t3
                  slli         zero, t5, 17
                  sub          sp, s6, a1
                  sltiu        ra, a7, -1024
                  srai         s5, t2, 12
                  auipc        s7, 825362
                  xor          gp, s5, t1
                  sra          s6, t4, s3
                  ori          t0, s10, -769
                  xori         s6, a3, 1858
                  sltiu        zero, s11, 1522
                  xor          s2, t1, s4
                  slt          t5, tp, s4
                  sll          t6, t3, s6
                  xori         s4, s11, -598
                  addi         a0, s4, -748
                  andi         a6, ra, -200
                  auipc        sp, 720739
                  xor          t1, s7, a2
                  slti         a4, t2, -132
                  addi         a5, s10, 1127
                  addi         a5, t3, -1135
                  xori         s5, a1, 1171
                  srai         s9, s0, 19
                  slti         t2, s7, -33
                  slt          a1, a0, a1
                  sltiu        s2, ra, -2025
                  nop
                  slti         s8, s1, 1103
                  ori          t4, a0, 1291
                  ori          s3, a2, 813
                  or           a1, a6, t2
                  and          t1, s11, s5
                  or           s3, sp, s8
                  addi         s3, t1, -648
                  srli         t6, t0, 4
                  sltiu        zero, gp, 1620
                  addi         zero, s2, 2007
                  sltiu        s0, a2, -257
                  sltiu        t1, t2, 1670
                  sub          s3, s10, sp
                  ori          s7, a0, 1969
                  add          t5, s7, s10
                  slt          a0, t1, zero
                  andi         s0, tp, -1625
                  add          s2, t3, ra
                  slt          t2, a4, a2
                  or           s3, sp, s9
                  sltu         zero, a5, s8
                  addi         s1, s2, -1018
                  slli         s10, gp, 8
                  sra          a2, s11, a2
                  srli         t6, a0, 25
                  sltiu        gp, t3, 1283
                  add          s7, s10, t0
                  srl          ra, tp, a4
                  lui          a1, 971915
                  auipc        ra, 828118
                  andi         t2, t6, -1875
                  ori          sp, zero, 1627
                  srli         a7, ra, 21
                  sltiu        t2, sp, 919
                  auipc        s10, 336333
                  and          sp, tp, s11
                  and          a1, sp, a3
                  sub          a2, s0, s1
                  ori          s10, s3, 925
                  sltiu        a4, s9, -93
                  slt          s6, s3, s2
                  srl          s9, a3, zero
                  slti         a4, s2, 1998
                  sra          s0, tp, a7
                  slli         s0, s5, 13
                  sll          t4, t0, s0
                  add          ra, t2, a0
                  slli         a5, s3, 21
                  or           ra, s0, gp
                  slt          t1, t3, a4
                  sub          s10, t2, a3
                  xor          tp, t2, t4
                  addi         a0, a3, 277
                  xor          a6, s3, a0
                  xor          a5, s2, a7
                  auipc        s8, 708268
                  srai         s9, s10, 13
                  slti         sp, a2, 1588
                  sub          t1, a7, t2
                  sltu         zero, t4, tp
                  addi         a4, gp, -1697
                  add          t4, sp, gp
                  xori         s6, t5, -1100
                  add          s6, s1, a3
                  auipc        sp, 871963
                  srai         a0, s6, 31
                  add          s2, a3, a2
                  addi         gp, ra, -928
                  sltu         t6, s11, t0
                  and          a4, s2, a2
                  sub          s4, s7, t6
                  addi         s2, a4, -670
                  srai         s8, s1, 4
                  or           s3, s8, s2
                  or           ra, a5, gp
                  srl          s9, a4, gp
                  and          s1, ra, gp
                  addi         a5, t2, 1739
                  slti         a0, a1, 916
                  and          s2, a5, s4
                  sll          t4, sp, a7
                  sra          a5, gp, s6
                  slti         ra, tp, -889
                  srl          s2, s5, s11
                  and          s0, zero, s11
                  srai         a1, t5, 18
                  xori         s10, s1, 1448
                  srai         s0, sp, 26
                  sra          a1, a0, tp
                  sra          gp, a0, sp
                  srai         s6, s6, 26
                  ori          t4, s3, 1870
                  addi         s1, sp, -1515
                  addi         t1, s0, -211
                  srli         t1, a3, 8
                  ori          t5, s0, 623
                  sll          a1, s0, s4
                  srai         s5, a5, 26
                  sll          t1, s4, zero
                  srai         s7, s11, 8
                  sltiu        a7, zero, 1957
                  ori          s9, a6, -215
                  sltu         t4, s5, a0
                  sll          t5, s6, t5
                  sll          s1, s6, a2
                  sll          gp, sp, zero
                  sra          s9, s9, zero
                  sra          t0, a7, s10
                  slt          a4, a5, s1
                  andi         s4, t3, 1958
                  slli         t2, s9, 24
                  sll          a2, sp, a6
                  srli         s8, t2, 23
                  xori         s1, zero, 187
                  ori          s9, s10, 1527
                  and          s9, t6, s2
                  sltu         t2, a6, t5
                  xor          a0, gp, s9
                  or           t5, ra, s3
                  slli         a1, t6, 13
                  sll          s9, t0, a1
                  slli         ra, t4, 5
                  sll          tp, s1, s11
                  xori         a6, a1, 1316
                  slli         t4, s4, 27
                  ori          a0, zero, -683
                  slt          s4, s10, s4
                  and          a0, t4, t0
                  nop
                  xori         s4, tp, 1046
                  srl          s3, tp, s6
                  srai         s4, s3, 18
                  srli         t1, ra, 12
                  sll          sp, t5, a4
                  sltiu        s1, t3, 490
                  xor          s7, s3, s7
                  lui          s8, 924168
                  and          t2, s8, t1
                  auipc        t4, 513420
                  xori         a1, tp, 973
                  sll          a1, s8, t2
                  xor          s6, sp, a5
                  auipc        s3, 836784
                  srli         t2, s9, 2
                  sll          sp, a6, a2
                  srai         tp, t2, 11
                  xori         s10, s8, 921
                  addi         t2, t0, -571
                  slti         t2, tp, -311
                  xori         zero, t2, -1448
                  sub          zero, gp, a4
                  nop
                  srai         s6, a5, 3
                  ori          s0, s4, 1895
                  sltiu        a2, a5, 562
                  andi         sp, t4, 1305
                  xor          s3, sp, t1
                  sub          s5, a1, t4
                  sra          t2, a7, a2
                  auipc        s5, 221255
                  and          t2, t4, s11
                  lui          t2, 881075
                  srli         s0, t3, 12
                  srli         a5, s11, 18
                  nop
                  srai         a5, ra, 23
                  srli         s1, s10, 23
                  ori          s1, s11, -982
                  and          a6, a2, a1
                  srai         t5, s6, 3
                  sltiu        t0, a2, -180
                  xor          s7, s8, a3
                  sub          s0, s3, sp
                  or           sp, s4, a0
                  srl          a4, zero, s0
                  slt          a7, a7, s7
                  slti         s7, s2, -1680
                  add          a7, a4, s7
                  sra          sp, s2, t3
                  add          ra, s9, a0
                  xori         t0, t6, -1723
                  xori         sp, t4, 536
                  ori          s9, s4, 1347
                  and          a2, tp, s1
                  slt          sp, a6, sp
                  sub          s2, s4, s1
                  ori          t5, s2, 178
                  and          a4, s3, sp
                  slt          s10, s4, a6
                  add          s7, t2, a6
                  lui          t6, 809748
                  add          s7, t2, s10
                  srai         s4, t2, 30
                  sub          t6, a0, a1
                  sltiu        s4, t0, -1471
                  sra          t4, a4, a0
                  slt          s5, s10, t6
                  andi         a5, ra, 1697
                  sub          a5, a0, s7
                  slti         s3, a1, -469
                  auipc        s8, 286072
                  sltu         s9, t6, s9
                  sltu         t6, t2, s4
                  sltu         sp, a4, tp
                  and          s7, a5, t6
                  auipc        t6, 327135
                  slti         s2, a3, 682
                  xori         s5, t4, -156
                  sub          tp, a5, s6
                  sll          zero, a3, t2
                  or           s2, t1, a4
                  slt          a7, t4, t4
                  xor          t1, a5, a6
                  xor          t5, a4, sp
                  or           s4, t0, s4
                  lui          s10, 949498
                  sll          s5, ra, ra
                  sub          gp, s5, t3
                  nop
                  and          s3, zero, t5
                  sra          t4, s11, t5
                  sra          s7, tp, s4
                  srli         s7, a2, 1
                  sub          sp, s10, t4
                  sll          tp, s11, s11
                  sub          gp, a3, s3
                  xor          s8, a6, s8
                  srli         a7, s0, 25
                  addi         gp, t1, -1020
                  sll          s9, a5, tp
                  lui          a2, 832778
                  add          s5, s2, a1
                  andi         s6, t3, -972
                  addi         a2, gp, -995
                  slti         s0, a2, 1253
                  sll          s2, t5, s6
                  and          t1, a4, t2
                  nop
                  or           s3, s3, t2
                  add          s3, s9, s3
                  slli         a0, a7, 5
                  sub          a4, t3, s2
                  slli         t4, a2, 28
                  sra          s5, s5, tp
                  addi         a6, s0, 832
                  sll          a4, s9, a7
                  xor          t5, s6, s2
                  addi         gp, t6, -518
                  sltu         a6, sp, a7
                  sltiu        a7, a7, 2025
                  sltu         sp, sp, tp
                  srai         s1, t4, 2
                  slli         a4, s1, 3
                  sltiu        ra, s9, -717
                  sltiu        gp, t0, -1265
                  sltiu        zero, s11, 836
                  or           s0, zero, tp
                  srl          s7, sp, ra
                  sub          s3, s1, t0
                  sub          a6, t4, gp
                  nop
                  srl          a7, s6, zero
                  sub          s1, ra, s10
                  srai         sp, a2, 14
                  lui          a2, 326890
                  sra          gp, t1, a6
                  slt          sp, t1, zero
                  sub          s8, s2, sp
                  sra          s0, t4, s7
                  srai         s7, gp, 30
                  slti         sp, t1, 851
                  slti         gp, s7, -775
                  andi         s7, sp, 1863
                  xor          ra, s7, t5
                  slli         s1, s1, 13
                  and          a2, ra, t1
                  srl          s9, t5, t1
                  addi         s10, a5, -2009
                  sra          a4, sp, s7
                  lui          ra, 647203
                  ori          zero, s6, 1688
                  srl          gp, s5, t6
                  add          s0, a4, s5
                  xor          t2, tp, s6
                  andi         a0, t0, -704
                  lui          a7, 198576
                  xori         a6, s1, 1483
                  slt          a2, a0, t4
                  sltu         a4, t1, a0
                  slti         s3, t3, 1462
                  sub          s7, a0, a5
                  sub          s4, t1, s9
                  xori         s0, a2, 1778
                  sra          a6, sp, a3
                  xor          s1, tp, t2
                  sltu         s10, t6, a3
                  andi         tp, t4, 1112
                  addi         s9, s8, -178
                  auipc        gp, 428730
                  nop
                  andi         s8, gp, -1846
                  xor          a7, s3, zero
                  slli         s2, a4, 4
                  or           a7, s0, tp
                  ori          gp, a7, 1352
                  xori         s5, s6, -1430
                  and          a2, a5, t1
                  andi         a6, t1, -857
                  ori          zero, a7, -1578
                  srai         sp, zero, 24
                  add          ra, tp, a3
                  slt          t4, a3, s1
                  sll          t6, zero, a4
                  sub          s7, t3, a4
                  auipc        t1, 937847
                  slt          t4, s2, s1
                  slli         a5, zero, 27
                  slt          s8, s1, a3
                  srai         a7, a0, 7
                  sltu         t1, s6, a0
                  sub          s6, s4, t3
                  ori          a0, t5, -294
                  ori          s3, s3, -86
                  slli         s3, s5, 18
                  srl          t4, a0, a0
                  and          a6, s10, a5
                  lui          tp, 803569
                  srl          gp, a5, tp
                  slt          s10, zero, ra
                  sltu         s8, t0, a5
                  nop
                  xori         a6, a0, -1938
                  and          a6, s0, t4
                  srl          t5, t6, t4
                  slti         a7, sp, 1188
                  slli         t0, a0, 30
                  auipc        tp, 913170
                  slli         s5, s3, 9
                  srl          a4, zero, s2
                  sltiu        s3, s1, 1700
                  sltiu        zero, s1, -1301
                  sltiu        t4, tp, -2048
                  xor          s4, t3, t0
                  slti         a4, a6, 503
                  slli         a4, s3, 9
                  slti         t5, s5, 1763
                  andi         t4, s7, 581
                  addi         a4, zero, 604
                  or           a7, s8, t0
                  sltu         s7, t2, a3
                  andi         s9, s8, 1602
                  sltiu        t0, s10, -830
                  auipc        t6, 534556
                  auipc        s4, 884580
                  sltu         a1, a6, s8
                  sltiu        s9, a3, 944
                  xori         sp, s0, -1800
                  sub          a7, t3, a4
                  sltiu        t2, a7, -1017
                  ori          ra, t5, -595
                  addi         s9, a3, -1066
                  xori         s8, a6, 1115
                  sltiu        a0, s0, -1231
                  sub          s9, t0, s10
                  ori          s3, s3, -207
                  lui          a0, 99608
                  nop
                  and          s10, s7, tp
                  lui          s9, 988875
                  andi         s0, t5, 458
                  slti         t1, s2, -618
                  sll          s7, a2, t0
                  srli         s0, s2, 16
                  andi         s8, s10, 481
                  or           gp, s9, s1
                  sll          sp, ra, s0
                  srl          s0, t0, s11
                  andi         zero, s7, 1336
                  sltiu        t2, sp, 304
                  slti         t1, t2, 583
                  srli         a6, a6, 17
                  nop
                  sub          s10, sp, gp
                  auipc        s5, 612910
                  srai         s1, t2, 28
                  slt          a5, s2, zero
                  sltiu        a6, s3, 1557
                  auipc        zero, 900732
                  srl          s7, s5, s5
                  srli         t5, gp, 17
                  nop
                  slti         a7, t4, 78
                  andi         gp, t6, -778
                  srl          a2, s5, s10
                  srli         s4, s1, 7
                  sltu         t6, t5, sp
                  xori         s0, s6, 1115
                  sltu         s2, t1, s10
                  slt          t0, a0, a6
                  or           s5, s10, sp
                  srai         s5, s9, 6
                  nop
                  srai         s0, s10, 19
                  sltu         t6, t5, a4
                  xori         t1, s9, -400
                  auipc        ra, 563916
                  slli         t5, s4, 0
                  lui          gp, 686557
                  and          s9, gp, s0
                  ori          t4, s4, -778
                  xori         s3, t1, 316
                  sub          s5, zero, t0
                  sltiu        sp, s3, 840
                  srli         t1, a5, 15
                  slt          a6, ra, a5
                  auipc        a1, 928327
                  xor          s2, a2, t1
                  auipc        sp, 518088
                  xori         s1, s1, -1965
                  sltu         gp, s8, s1
                  lui          t1, 649179
                  xori         a7, a5, 1470
                  ori          a4, s5, -219
                  sll          a4, s6, a4
                  srl          sp, zero, s9
                  and          t0, s6, s11
                  slt          s10, zero, t0
                  slti         a1, a2, 1175
                  or           a0, sp, sp
                  sra          a2, gp, ra
                  ori          sp, s11, -1566
                  and          s3, s10, t2
                  andi         t6, s3, -856
                  nop
                  nop
                  xori         sp, sp, 1591
                  srli         a1, s6, 2
                  xori         t1, s9, -693
                  andi         s0, sp, -606
                  lui          s10, 613029
                  xor          t6, s6, s5
                  add          s4, t3, a3
                  sub          s10, a5, ra
                  srl          s5, a4, s5
                  slli         a5, ra, 4
                  xor          t0, t5, a4
                  sra          a5, a2, s10
                  ori          t2, t2, 208
                  or           s1, a1, sp
                  xor          a4, s7, t5
                  ori          a6, tp, 23
                  auipc        t5, 163698
                  slti         a7, s1, 1247
                  slt          s10, t0, s4
                  lui          a4, 204190
                  slli         s10, ra, 21
                  slti         s0, t5, 1289
                  sub          zero, s0, ra
                  add          tp, t2, t0
                  srl          s7, zero, s11
                  xori         s5, s8, 308
                  srli         s5, s11, 25
                  andi         s6, s9, 398
                  auipc        s4, 334279
                  sll          a2, t2, a0
                  sll          ra, s6, s5
                  sltiu        s4, sp, -1198
                  ori          a7, a6, -1226
                  sll          a7, a3, gp
                  srl          s5, s4, zero
                  slli         t2, t2, 28
                  addi         a7, t2, -1647
                  sltu         s3, a2, t5
                  srai         s5, a3, 22
                  slti         t6, s7, -623
                  sltiu        s3, s10, 1990
                  sub          zero, s5, t5
                  add          s10, a1, t3
                  srli         s0, a4, 22
                  sltiu        s5, sp, -117
                  slt          a7, t1, a6
                  add          a4, s1, a5
                  nop
                  xori         s8, s3, -67
                  or           sp, s1, t5
                  srai         zero, ra, 31
                  sll          t4, a0, sp
                  sltiu        t2, s8, 517
                  auipc        t1, 985234
                  lui          a4, 178366
                  ori          t0, t1, 332
                  slli         zero, t0, 5
                  sub          s9, t3, a3
                  lui          s1, 847512
                  addi         sp, a4, -1294
                  nop
                  sra          a0, a1, t1
                  sltiu        s0, s6, -1247
                  sltiu        t1, t1, -224
                  addi         a1, a1, 1468
                  auipc        s8, 701437
                  xori         s2, s10, -560
                  slt          s4, a6, t0
                  ori          s3, a0, 1072
                  srli         a1, s7, 21
                  xor          s9, t6, a0
                  sltu         s8, t0, s9
                  srai         sp, s6, 19
                  nop
                  srli         a5, t6, 28
                  slt          s9, s9, a6
                  sltiu        s10, t3, 572
                  sra          t1, s8, zero
                  slli         s3, a6, 14
                  slti         a6, s4, -1659
                  auipc        s7, 196855
                  andi         s7, gp, 485
                  and          t4, s11, zero
                  sub          s1, s9, t5
                  sll          sp, s7, s8
                  addi         s1, gp, 1456
                  srai         s10, s1, 17
                  nop
                  addi         a1, s9, 1613
                  xori         s9, a2, 1954
                  sub          s0, s3, s8
                  addi         a1, s10, 1896
                  add          gp, t3, gp
                  sll          s4, sp, s1
                  srai         a6, a0, 14
                  sub          t6, t4, s8
                  sltu         s7, s0, a5
                  sub          t4, t1, t2
                  sra          t0, s8, zero
                  lui          tp, 722846
                  and          s10, s11, s11
                  slti         a0, s4, 1407
                  srli         s6, a6, 5
                  slti         t1, gp, -1700
                  sub          t0, a6, s5
                  auipc        t5, 423239
                  nop
                  sra          a2, s1, s9
                  andi         sp, s1, 918
                  srl          t5, s3, a5
                  srl          t0, a3, s11
                  srli         tp, a4, 13
                  sltu         a1, s10, tp
                  srai         s1, s10, 22
                  xori         a6, t1, -1636
                  ori          s8, t3, -1150
                  auipc        s7, 615212
                  lui          a5, 151277
                  slli         s4, a3, 6
                  sltiu        s6, a3, -331
                  slli         s7, s9, 29
                  add          a2, sp, s10
                  add          a6, s6, s0
                  or           ra, s9, t0
                  srl          a7, s5, t0
                  add          s7, s0, a4
                  andi         t4, a1, 1051
                  auipc        a0, 921897
                  or           a1, a7, t4
                  sra          s5, s1, t2
                  slli         t0, zero, 26
                  srai         a0, s5, 19
                  srl          s2, zero, a1
                  xor          s0, a0, sp
                  srl          s9, t3, t4
                  sll          ra, a5, s0
                  sltiu        s1, a3, 1888
                  xor          s0, s7, s2
                  slli         s2, s10, 6
                  add          s4, a2, s1
                  sltiu        gp, a0, 1513
                  slt          t6, s7, s1
                  sll          sp, a4, s5
                  lui          s2, 408613
                  sltiu        zero, s2, -559
                  sltu         s1, s2, t6
                  xor          s5, zero, t2
                  lui          s4, 744325
                  xor          gp, s0, s8
                  auipc        t2, 1018355
                  sra          ra, a5, s11
                  auipc        a4, 1045796
                  sltu         s1, a2, a6
                  and          gp, s1, t6
                  xor          a4, s3, s2
                  slti         s1, a3, 136
                  xori         s2, t3, -1015
                  nop
                  ori          s2, a2, 510
                  slti         t2, t2, -1547
                  sra          ra, s5, a2
                  sltu         t1, s0, s2
                  ori          t1, a5, -747
                  addi         s2, s2, 889
                  and          s9, s11, s7
                  lui          s10, 787406
                  sltu         t4, a1, a3
                  slt          a6, a2, sp
                  sltiu        a2, t2, 1777
                  nop
                  auipc        a5, 697719
                  ori          tp, a2, 334
                  slli         s6, sp, 26
                  addi         s6, a4, -506
                  sra          s4, s4, s3
                  srli         s7, a6, 26
                  addi         t1, s1, 126
                  srl          s7, s1, t6
                  sll          gp, s9, t1
                  sra          a7, a6, t1
                  srai         t0, s1, 27
                  addi         t5, t3, 485
                  nop
                  and          t5, sp, s8
                  sub          s8, a4, a5
                  addi         s8, ra, 703
                  slti         t5, t5, 8
                  xori         a4, gp, 1513
                  sltiu        a0, t6, -751
                  srli         s10, a3, 3
                  andi         t4, zero, -1864
                  sltiu        t1, s2, 1424
                  sra          t6, s7, t5
                  lui          s4, 313278
                  sra          t5, s6, a2
                  and          a7, s9, s5
                  auipc        t2, 332054
                  addi         zero, tp, -408
                  srli         a7, t6, 15
                  auipc        t2, 689402
                  or           s5, t4, t5
                  sra          s10, s4, a0
                  addi         s3, a2, 144
                  addi         s10, s1, 1321
                  or           sp, a7, zero
                  slti         s3, gp, 793
                  slli         s5, s2, 3
                  and          s3, a3, t5
                  sltu         s8, t0, a2
                  sub          s8, t1, s2
                  addi         t5, a7, 516
                  or           t0, s11, s11
                  srl          a2, a0, s2
                  add          s5, t0, s7
                  srai         a5, s0, 13
                  srl          a6, s7, zero
                  sub          a2, a7, t6
                  nop
                  auipc        s8, 232901
                  andi         a6, a5, -75
                  add          gp, s5, gp
                  srl          t0, t3, a5
                  sltiu        ra, s10, 192
                  sub          s3, t2, t0
                  addi         t0, t6, 1157
                  and          t6, gp, s6
                  and          a5, sp, s5
                  auipc        s4, 531269
                  sra          a4, s10, s6
                  sltiu        a0, a4, 1358
                  srl          t4, t3, t4
                  nop
                  srai         a5, a4, 5
                  srl          t5, s2, tp
                  slli         ra, ra, 30
                  auipc        s10, 552607
                  or           s6, s7, t6
                  ori          a7, s2, -466
                  sltu         s8, s10, t1
                  slt          t6, s6, sp
                  sll          s0, t0, t2
                  and          s4, s4, a2
                  xori         s4, s3, -847
                  sub          a1, t5, tp
                  or           gp, a5, sp
                  slli         s1, s3, 19
                  sra          s0, zero, tp
                  or           s7, t5, s4
                  sltu         a1, t2, s3
                  sltiu        a4, sp, -1263
                  xor          s9, s5, s5
                  xori         s2, t0, -1943
                  nop
                  and          s4, t5, gp
                  sub          s5, t6, ra
                  srl          s3, s8, s11
                  lui          a4, 620304
                  ori          s10, t0, 498
                  auipc        sp, 18028
                  auipc        t1, 719118
                  srl          s1, a4, s8
                  nop
                  and          s6, s0, t3
                  srli         s0, s2, 4
                  andi         s1, s10, -33
                  slti         gp, s8, 1985
                  lui          s5, 67597
                  add          t5, s5, s1
                  and          a0, s6, tp
                  and          s10, s5, t1
                  slli         s4, s3, 11
                  sll          zero, t1, sp
                  xori         s1, t0, -347
                  addi         s1, t4, -1705
                  slti         t2, a2, 896
                  lui          a0, 610951
                  xori         gp, s11, -1987
                  sltiu        t4, a5, 1592
                  sll          ra, s10, zero
                  sll          s3, s8, a0
                  slt          s3, s4, s4
                  slt          a0, t3, zero
                  or           s5, s2, ra
                  ori          gp, s11, -1064
                  nop
                  and          s4, s4, a4
                  ori          s9, t5, -1605
                  sltu         t5, a0, a4
                  sll          a5, s6, s7
                  ori          s2, s0, -1275
                  addi         t1, a3, -1692
                  addi         s7, a7, 386
                  srai         s3, a2, 1
                  sltiu        s8, s4, 862
                  ori          a5, a4, 18
                  add          t6, a2, t6
                  sll          t2, a5, tp
                  add          s10, s2, s2
                  sra          sp, a7, s4
                  srli         s4, s11, 7
                  xor          a5, t1, s10
                  or           s5, s8, a1
                  nop
                  xori         ra, s11, 519
                  srl          s0, t4, s2
                  auipc        s10, 975462
                  srai         t0, s10, 12
                  slti         t5, s0, 1369
                  and          a5, s8, a3
                  xor          a0, s4, s7
                  nop
                  nop
                  srai         a0, t0, 2
                  or           s7, s9, t3
                  xori         a0, a6, 1705
                  srli         s4, tp, 11
                  sra          s7, s5, s0
                  and          a1, t1, s9
                  xori         a0, t1, 1774
                  sll          t6, s3, s0
                  auipc        s10, 152566
                  sll          a6, s7, sp
                  srai         s3, t2, 21
                  add          a7, s0, a6
                  sll          s0, tp, t2
                  or           t1, s11, t0
                  xor          a0, a0, s3
                  andi         ra, s5, 1917
                  or           s0, a4, a3
                  lui          s1, 687124
                  lui          s0, 687451
                  auipc        s4, 179666
                  or           zero, s8, s9
                  sltu         s0, s6, s5
                  sltiu        t0, s10, -90
                  slt          s8, gp, t2
                  slti         s2, a6, 506
                  sub          s7, t6, s5
                  sll          a1, a4, t5
                  or           s7, s1, t1
                  xor          zero, s3, a0
                  add          zero, a3, s0
                  and          ra, s7, t0
                  sll          s4, s11, s4
                  xor          t1, t3, a0
                  add          a1, t3, s7
                  addi         s1, s11, -283
                  xor          tp, a4, t6
                  and          a6, t3, t5
                  slli         a1, ra, 31
                  slti         t2, s5, -424
                  sltu         s9, s11, s5
                  slti         a5, s2, -168
                  srli         s8, s6, 3
                  slti         s8, a6, 773
                  sll          s0, a1, gp
                  srli         a4, s9, 1
                  slli         gp, t5, 11
                  xori         a6, gp, 1221
                  add          t0, t2, s4
                  sll          zero, a2, a1
                  lui          a4, 502120
                  lui          a2, 71014
                  auipc        a1, 779168
                  sra          sp, t1, a0
                  slti         a7, zero, -1446
                  and          a5, s11, a0
                  addi         s1, s2, 1905
                  add          s10, tp, s4
                  addi         s2, s8, 1366
                  sll          ra, a1, a1
                  sll          a5, s11, s9
                  addi         zero, s9, -181
                  slti         zero, tp, -1566
                  xori         a0, a2, -1188
                  ori          ra, t4, -1672
                  lui          sp, 736952
                  ori          t1, a4, 1898
                  sll          s9, s3, t3
                  lui          s5, 134408
                  nop
                  auipc        s6, 830595
                  srai         ra, gp, 17
                  sltu         t0, a4, s5
                  slli         s1, a6, 6
                  sltu         s1, a2, s10
                  slt          s6, a5, t2
                  slt          s7, s4, s10
                  srli         t6, s9, 9
                  lui          sp, 831961
                  sll          t1, s2, a6
                  sub          t4, zero, ra
                  sll          s5, s10, a3
                  sll          a5, s8, a7
                  addi         s3, a4, 190
                  or           s6, a6, t4
                  or           s6, t2, s9
                  and          t1, s3, s5
                  ori          a7, ra, 1385
                  addi         s8, t1, -980
                  xor          s7, t3, t3
                  xori         s4, a4, 522
                  xori         s4, t6, 902
                  srl          s4, s5, t4
                  sltu         a5, a0, a2
                  sll          t1, s4, s6
                  sltu         a5, s9, s1
                  addi         t1, s6, 1595
                  lui          a4, 936206
                  xori         t4, s9, -1212
                  srai         s3, s7, 14
                  sltiu        s3, t5, -1493
                  srl          s6, s6, s9
                  sltiu        s8, gp, -1342
                  andi         t1, s1, -802
                  add          a2, s11, a6
                  slli         t5, s6, 16
                  srli         s1, t2, 10
                  or           s1, t6, a1
                  and          ra, a7, a1
                  ori          ra, a6, -1167
                  sub          gp, a7, a1
                  addi         a2, t6, -593
                  add          ra, ra, sp
                  sll          gp, a4, a6
                  nop
                  slt          gp, gp, a7
                  andi         gp, s2, 72
                  srli         s1, gp, 16
                  and          a2, s1, t1
                  srli         a7, s5, 6
                  slti         s5, a4, -149
                  sltu         t4, t3, s1
                  slli         s2, s11, 28
                  xor          t2, s3, a7
                  andi         tp, tp, -1771
                  srli         t6, a2, 28
                  lui          s1, 371296
                  xor          t0, a5, a6
                  slli         s7, t1, 25
                  slti         s10, s3, 1961
                  xor          s4, s3, a4
                  srl          t6, t5, s6
                  ori          a5, t5, -177
                  sltiu        a6, s11, 902
                  sub          t6, s10, a5
                  sub          a6, a4, t0
                  lui          s6, 814002
                  nop
                  slt          a7, t1, s6
                  add          t4, tp, a3
                  sra          a6, a5, a3
                  slt          a0, s7, s4
                  slli         t1, a2, 2
                  lui          s1, 949566
                  xor          s10, a2, zero
                  ori          a5, a3, 173
                  andi         s1, sp, -1510
                  xor          tp, s9, s5
                  addi         a7, t5, 1778
                  add          sp, s3, s7
                  xor          s2, a5, s0
                  or           t4, a6, t0
                  nop
                  slti         s3, s9, 553
                  ori          s8, t1, 1374
                  or           a2, t2, s1
                  sub          zero, a5, s3
                  and          a4, sp, s5
                  sltu         s0, a5, t1
                  srai         a0, s11, 7
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           s2, 0x0
                  li           t1, 0xf9fb10a9
                  li           t4, 0x0
                  li           s10, 0x0
                  li           t0, 0x0
                  li           s5, 0x6fb81765
                  li           a5, 0x80000000
                  li           s8, 0x80000000
                  li           s4, 0xffffffff
                  nop
                  addi         s8, s8, 870
                  add          t0, t1, t1
                  add          s4, s8, t4
                  addi         t0, t1, -1958
                  lui          t1, 226578
                  lui          t6, 759252
                  lui          t0, 694563
                  add          t0, s4, s8
                  nop
                  nop
                  sub          t6, s4, s10
                  nop
                  auipc        t0, 1009475
                  nop
                  lui          s5, 900075
                  auipc        t1, 211949
                  addi         s10, s5, -1074
                  lui          s4, 845935
                  sub          s10, s5, t1
                  addi         a5, t1, -716
                  auipc        s4, 268592
                  nop
                  auipc        t4, 353003
                  add          s10, s8, t1
                  sub          s10, s4, s2
                  sub          s10, t1, s8 #end riscv_int_numeric_corner_stream_18
                  ori          s10, a2, -2037
                  sra          a7, a6, a2
                  srai         t6, t2, 21
                  srai         t0, gp, 18
                  sltiu        s7, a0, 743
                  xori         zero, s6, 987
                  andi         s8, t4, -305
                  xor          s8, s1, t1
                  andi         s1, t4, 833
                  lui          a4, 608287
                  slti         a0, a7, -132
                  add          a4, a4, s7
                  slli         s9, s6, 12
                  xori         s3, sp, 558
                  srai         s0, t3, 11
                  slli         t6, a3, 6
                  srli         a7, a5, 27
                  sltiu        s2, t3, -1256
                  add          a6, s4, zero
                  lui          s8, 852165
                  ori          a6, s7, 683
                  xori         s0, tp, 527
                  auipc        s8, 648181
                  slt          t5, s1, a4
                  and          tp, s6, s4
                  slli         t5, a3, 1
                  slt          t1, t1, s9
                  li           s3, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           t0, 0x0
                  li           gp, 0xffffffff
                  li           t5, 0x0
                  li           s2, 0x80000000
                  li           s5, 0x2a88f06d
                  li           a2, 0xffffffff
                  li           s7, 0x0
                  li           a4, 0x0
                  li           tp, 0xa0580065
                  lui          t5, 117420
                  add          s5, tp, a2
                  nop
                  lui          t0, 294490
                  sub          a2, s5, s3
                  auipc        a4, 391484
                  addi         a4, s3, -1726
                  nop
                  nop
                  add          a4, s3, t5
                  add          s7, a4, gp
                  nop
                  add          s7, tp, tp
                  sub          s2, s7, s3
                  sub          t0, t0, s3 #end riscv_int_numeric_corner_stream_6
                  xor          a0, s11, t6
                  andi         t5, s4, -1396
                  sll          a1, t0, a2
                  sltiu        a6, s8, 1765
                  slt          s2, t2, s0
                  add          s5, t0, s10
                  sll          t4, s0, t2
                  slli         a2, s1, 21
                  auipc        s9, 25281
                  slti         s5, s5, -1431
                  srli         gp, s3, 27
                  slti         a1, t2, 1116
                  sltiu        a7, gp, 912
                  sll          s6, s3, s0
                  srli         t1, s6, 24
                  ori          a2, t5, -704
                  or           a1, a3, gp
                  auipc        zero, 950020
                  srl          s3, s5, s5
                  sltu         a4, t4, s8
                  or           t5, ra, a7
                  xori         ra, s0, -1435
                  add          s0, a2, t0
                  nop
                  or           t2, a6, a6
                  andi         s7, t5, -1687
                  andi         s3, gp, -1945
                  slti         t2, s11, 1633
                  slt          sp, s7, a4
                  or           t4, s10, t6
                  lui          t0, 898344
                  addi         zero, t1, 1565
                  sltiu        a1, a3, -1664
                  and          zero, s10, s7
                  slti         a6, t6, 1002
                  lui          s0, 251623
                  slti         s1, sp, 2010
                  sub          s8, s4, s4
                  sra          gp, s6, a1
                  nop
                  srli         t1, a4, 13
                  xori         s3, t6, 1052
                  srai         tp, a7, 5
                  andi         t0, a4, -457
                  srl          sp, s2, a3
                  srl          tp, s4, t0
                  xor          s3, t6, t3
                  srl          a5, t2, s5
                  srli         s4, s11, 27
                  sltu         t6, sp, sp
                  sra          a0, t5, s8
                  andi         a1, t6, -1147
                  nop
                  auipc        t5, 1001070
                  sltu         s10, sp, t6
                  sub          s10, t3, s4
                  ori          gp, t1, -610
                  slti         gp, t6, -1706
                  sub          a4, s7, a6
                  or           s9, gp, s11
                  sub          s2, s11, s1
                  andi         a5, t6, -202
                  nop
                  slli         zero, s7, 22
                  srl          a2, s5, t6
                  sltu         gp, t1, t3
                  slti         t6, t4, -853
                  sltu         s2, s5, a2
                  ori          a6, a7, 1743
                  andi         zero, t0, -2032
                  slti         s7, t2, 259
                  sra          a4, a7, t5
                  and          a7, s1, s1
                  sub          t5, s1, s10
                  addi         a1, t4, -451
                  and          t2, a5, t6
                  and          t6, s11, s2
                  and          s10, a4, s1
                  lui          a6, 909991
                  slt          s2, a3, zero
                  lui          s9, 623349
                  sll          s7, s3, s10
                  xor          tp, s1, a0
                  nop
                  auipc        t4, 577852
                  nop
                  sltu         a0, s5, tp
                  ori          tp, s1, -661
                  srli         sp, t1, 8
                  andi         a0, ra, -1744
                  and          t5, a3, s7
                  xor          sp, t2, s7
                  srl          s3, t4, a3
                  sltiu        t4, gp, 546
                  nop
                  sltiu        t0, s8, 1774
                  andi         a1, a7, 1688
                  add          t4, s9, t2
                  xori         t0, t0, -875
                  sll          s6, s5, s4
                  xori         ra, a2, 1921
                  lui          s2, 295196
                  sll          s7, ra, s6
                  nop
                  sltiu        zero, a5, -1023
                  nop
                  srli         s6, s2, 31
                  and          a0, a2, s10
                  xor          a6, a5, t3
                  srli         s9, a4, 11
                  addi         s3, s6, 350
                  sll          a7, zero, gp
                  and          s8, sp, t3
                  xor          zero, s7, s7
                  xor          ra, a2, s1
                  and          s0, a2, s7
                  srai         a4, zero, 1
                  or           sp, s0, tp
                  ori          s3, zero, -486
                  sltiu        t5, s7, -1090
                  sltiu        ra, ra, 45
                  andi         s7, s6, -1932
                  add          gp, s5, a3
                  sltiu        tp, s0, -441
                  lui          s9, 263641
                  sll          zero, a7, a1
                  nop
                  sltu         tp, t5, t5
                  sltu         a0, a5, ra
                  srli         gp, s9, 19
                  ori          t1, s11, 325
                  nop
                  sll          s7, s2, zero
                  srai         s3, t4, 22
                  or           s7, s1, zero
                  xor          a4, a2, s3
                  ori          t5, t0, 60
                  addi         s5, s8, 2015
                  or           t0, s7, s9
                  add          sp, ra, s0
                  slli         t2, s9, 21
                  srli         gp, tp, 27
                  addi         s7, sp, 1136
                  and          a0, t4, t6
                  srli         t0, ra, 1
                  addi         s6, s5, -702
                  sll          ra, tp, s5
                  srai         a1, s2, 29
                  add          a4, a6, ra
                  and          s4, a3, t3
                  sra          a0, s5, s3
                  addi         sp, t6, 1975
                  auipc        s9, 89812
                  srl          tp, s11, t2
                  sll          s8, t1, s3
                  sll          a0, s7, zero
                  lui          a1, 942499
                  sll          a1, s1, gp
                  sub          a7, s5, zero
                  sra          s3, sp, s0
                  slti         s3, s6, -1625
                  ori          a1, t4, -1849
                  slti         s3, s10, 744
                  or           s6, t1, s2
                  slti         t6, t0, -932
                  and          s5, t6, a5
                  srl          a7, s4, t0
                  slti         gp, a1, 706
                  xor          s7, a4, s9
                  nop
                  andi         s7, t4, 883
                  slti         t4, s1, 177
                  and          s10, s5, s11
                  srai         a4, a4, 19
                  xor          t6, s9, s9
                  addi         s4, s5, 1138
                  srai         t5, s9, 29
                  sltiu        a2, gp, -793
                  or           t6, a0, s2
                  slt          s0, t3, s6
                  sltu         a4, ra, s8
                  sra          t6, a1, a0
                  nop
                  slli         a5, t6, 21
                  srl          t4, a1, t4
                  slt          a4, s10, s0
                  slt          t1, a3, s8
                  srai         s3, t2, 19
                  sltiu        a5, t3, 1366
                  add          s0, s2, t2
                  srl          t5, t6, a1
                  slli         s2, gp, 6
                  slti         a5, s2, -37
                  ori          s9, t2, 1839
                  addi         sp, t3, -1051
                  slti         t1, sp, 170
                  lui          zero, 591860
                  xori         ra, t6, 1169
                  sra          s2, a6, a3
                  sll          a1, t0, gp
                  or           s0, s3, s10
                  ori          s5, s6, -1080
                  or           t1, s5, s10
                  add          a5, s9, t2
                  lui          s0, 363906
                  srl          s3, a3, s3
                  srai         s7, t5, 6
                  add          gp, t0, s3
                  and          gp, s3, t0
                  xor          t2, a6, a3
                  sll          t5, t3, tp
                  and          a0, s11, a6
                  sltu         s9, ra, t5
                  slti         s9, zero, -655
                  addi         gp, gp, 198
                  auipc        a1, 455257
                  xori         sp, s4, 1500
                  srli         tp, t0, 22
                  ori          s4, gp, -1232
                  srl          a7, sp, s3
                  or           a2, t5, s5
                  lui          a1, 71295
                  slli         s0, s1, 26
                  slli         t1, s3, 16
                  sltiu        s3, s5, -552
                  sltu         t4, t4, a5
                  ori          a0, t0, -1129
                  sub          s9, t6, tp
                  and          a2, a6, a3
                  srli         s8, s3, 14
                  sub          s8, s10, sp
                  andi         sp, tp, 2018
                  sra          s2, s5, s2
                  sltiu        s6, tp, 304
                  sltu         a0, zero, a5
                  nop
                  sltu         a4, a7, a0
                  xori         s10, t0, 51
                  addi         a1, a5, 1533
                  srl          ra, t5, zero
                  sra          s0, s7, s11
                  ori          s4, t1, -632
                  slt          s2, s11, a5
                  sltu         t4, s0, t2
                  sll          s9, s0, s8
                  slli         t5, t5, 17
                  nop
                  slti         t0, s5, -875
                  add          s2, s3, s10
                  srli         t6, tp, 30
                  sll          s8, s6, gp
                  slli         a1, a5, 19
                  addi         t4, s11, -765
                  srli         s2, s2, 5
                  sll          t1, s5, s6
                  srli         s10, t5, 14
                  xor          s0, t0, t2
                  nop
                  lui          t0, 664885
                  sra          a7, s1, t5
                  srai         a7, a4, 4
                  add          a1, a0, t2
                  add          s6, a1, gp
                  lui          s4, 481166
                  lui          s10, 464269
                  slli         s1, s2, 22
                  srl          a0, zero, t2
                  lui          s6, 639348
                  nop
                  srl          s5, a0, ra
                  xor          t5, s7, t0
                  slli         s2, sp, 24
                  sltiu        s10, a1, 1912
                  srai         s3, gp, 28
                  slti         a2, a6, -1926
                  and          t4, t5, s2
                  slti         t4, s11, 872
                  sub          t0, t2, s1
                  add          t2, t5, s7
                  slti         a2, gp, 79
                  add          s5, gp, t0
                  sll          gp, s5, gp
                  addi         t0, s7, 1127
                  andi         a6, s0, 178
                  slti         s4, t2, 179
                  nop
                  and          s4, t2, a6
                  or           tp, t3, s10
                  slti         s6, s0, -605
                  slti         a4, s11, 555
                  sra          a4, ra, s7
                  andi         s0, gp, 1011
                  ori          gp, gp, -1922
                  sltu         s5, zero, sp
                  ori          s4, tp, -575
                  sltiu        s6, tp, -1942
                  sll          a2, s10, s11
                  lui          t6, 921442
                  andi         s9, s9, -1314
                  sltu         s7, s2, a7
                  addi         s6, s4, 215
                  sltiu        s6, a1, 572
                  andi         gp, tp, 596
                  sub          s9, a7, s11
                  or           t2, a5, ra
                  ori          s8, a3, -1798
                  srli         s4, t6, 7
                  xor          s6, sp, zero
                  sub          a5, sp, a0
                  add          a1, s3, t2
                  srai         a1, a0, 25
                  ori          t4, t5, -155
                  add          s10, a4, s1
                  sltiu        a7, a3, 79
                  nop
                  slli         s10, gp, 24
                  sub          t2, s10, a4
                  slt          s6, s2, s10
                  sltiu        s3, sp, 178
                  and          ra, t2, t4
                  andi         gp, ra, 606
                  srl          t5, a7, zero
                  sll          s3, s10, s5
                  sltiu        tp, a1, -1574
                  slt          t2, s11, s3
                  add          a0, a0, a2
                  srl          s7, s3, a0
                  sll          s7, s10, s4
                  slt          a5, t5, s4
                  sltu         s1, a7, s11
                  srai         s6, s5, 11
                  sll          s4, a5, t0
                  xori         s5, s0, 163
                  addi         s5, a4, 1156
                  andi         a7, t6, -647
                  nop
                  srl          t2, t2, t1
                  nop
                  sra          s8, a1, s9
                  sra          s7, s3, a0
                  xori         a7, s1, 1573
                  lui          gp, 213641
                  xor          tp, t4, s7
                  or           s6, t4, t3
                  sub          s5, s11, s7
                  sltu         t2, t0, ra
                  xor          s1, t2, tp
                  sll          a5, a2, s10
                  sll          s0, s1, a5
                  slti         a7, t1, -458
                  sub          a7, t2, t0
                  slti         s5, s11, -946
                  addi         t6, t0, 1503
                  xori         s3, s7, 774
                  xori         sp, ra, -403
                  srai         gp, ra, 15
                  srl          s6, s1, t3
                  andi         s0, s5, 361
                  slti         s6, s5, -1703
                  auipc        zero, 280285
                  ori          t0, a6, -853
                  slt          t4, t2, a3
                  or           t1, t6, a3
                  nop
                  slti         s4, s10, 1877
                  srli         t4, s2, 27
                  auipc        s8, 314604
                  srl          tp, s7, sp
                  sra          s3, t2, a5
                  srli         s0, s10, 17
                  andi         a6, t5, 1010
                  sll          gp, t5, a5
                  sltiu        ra, s3, 753
                  and          a0, s0, s6
                  srli         t5, a7, 6
                  and          s3, ra, a3
                  xori         s4, s4, 1102
                  slli         s6, t2, 13
                  sll          t1, s5, s1
                  add          s8, t5, a5
                  slti         ra, a4, -12
                  andi         a0, s1, -1164
                  addi         a1, a1, -372
                  srl          s2, tp, a1
                  andi         a2, a2, 1867
                  lui          s3, 209973
                  srai         sp, s2, 0
                  add          s2, s3, s5
                  slli         s2, sp, 31
                  slt          t5, t3, s3
                  sltiu        ra, a2, 1164
                  ori          a2, t1, -1118
                  sltu         s6, s9, a1
                  sra          t0, a1, a3
                  sll          s2, a7, a5
                  addi         a4, s9, -1608
                  srli         a2, s4, 28
                  add          a1, s10, t0
                  or           a7, a3, t5
                  and          a1, s1, zero
                  slli         t2, a2, 12
                  sltiu        a0, a6, -651
                  srli         s0, a6, 0
                  sltu         s7, s4, a4
                  slt          s0, a1, t1
                  srai         zero, t0, 12
                  andi         t1, s6, 1539
                  srl          a4, s8, a2
                  slt          a5, s3, s6
                  sub          sp, a4, tp
                  auipc        t2, 1043303
                  ori          s4, a3, 896
                  sub          t2, a5, gp
                  slti         s6, sp, 506
                  andi         s8, s7, -373
                  auipc        t5, 82545
                  slt          zero, t4, gp
                  andi         s9, a1, 1831
                  sltu         s4, gp, t0
                  srli         a1, t5, 10
                  xori         a4, sp, 1223
                  sltu         sp, tp, s7
                  srl          s2, s0, t0
                  or           s4, a5, s11
                  ori          zero, a7, 1499
                  auipc        s0, 806276
                  auipc        a5, 724087
                  sub          a5, s3, tp
                  slt          t4, a1, s5
                  auipc        a7, 9501
                  andi         s8, s2, 832
                  lui          s4, 723045
                  srli         gp, s1, 20
                  xor          t1, s0, a6
                  srai         a6, a3, 25
                  sll          a1, s1, s6
                  slti         a2, a2, 740
                  add          tp, s1, t0
                  sltiu        s2, ra, 1323
                  add          zero, s2, s1
                  sltu         a0, t2, s7
                  lui          a0, 384063
                  auipc        a0, 862695
                  sub          a1, t6, s2
                  ori          s3, ra, -60
                  sltu         ra, s1, t5
                  sltu         s5, t2, t5
                  xor          t6, a4, s2
                  addi         ra, gp, -374
                  or           s0, s8, t1
                  andi         t0, s3, -1985
                  add          s10, gp, s4
                  addi         t4, a7, 1297
                  and          s5, t0, s4
                  addi         a2, t1, 190
                  nop
                  andi         a4, zero, 516
                  sra          a4, s3, t5
                  addi         zero, zero, 613
                  add          s4, s9, s0
                  and          t1, sp, t2
                  sub          gp, s3, s5
                  or           t5, tp, a4
                  srai         s8, a3, 7
                  sltiu        s7, a0, 2035
                  sltu         s9, a0, a4
                  slt          a7, s10, a6
                  sll          gp, t0, a2
                  addi         a2, s0, 1243
                  ori          s8, s9, -548
                  slt          a0, ra, t1
                  ori          ra, a5, 243
                  slli         s1, s4, 13
                  sub          a4, a2, s4
                  srl          t1, a4, a1
                  slli         s8, t1, 11
                  srl          s10, s11, s7
                  xor          a0, tp, t2
                  sll          a4, s8, t0
                  xori         s1, s11, -1343
                  ori          s10, s0, -1525
                  or           a1, ra, zero
                  xori         s9, s6, -1564
                  srl          t6, s4, a2
                  and          t1, t0, s7
                  lui          s4, 648361
                  lui          s2, 449539
                  xori         t4, s7, 1668
                  lui          s10, 778583
                  srai         gp, zero, 1
                  srai         s3, a1, 16
                  sub          s7, s10, sp
                  xori         gp, t4, 635
                  sltu         t5, s7, a1
                  andi         tp, s9, -1430
                  nop
                  sll          t1, zero, t2
                  slli         t2, a4, 15
                  and          tp, t3, sp
                  srl          s9, s1, a4
                  andi         t6, a1, 1590
                  auipc        t4, 474194
                  srai         t6, a3, 7
                  lui          s10, 678629
                  lui          s0, 107016
                  or           a1, zero, a0
                  ori          t0, t5, -1118
                  sra          s2, sp, s10
                  slli         s7, s7, 3
                  ori          s5, zero, -1578
                  andi         zero, t6, 230
                  slt          s0, t3, a0
                  sll          a5, s2, a3
                  auipc        sp, 808222
                  srl          a4, s5, s1
                  sra          a4, zero, a1
                  ori          s3, s2, 1299
                  or           a0, sp, s0
                  add          zero, a7, a7
                  sub          a6, t1, s1
                  sll          a2, sp, t2
                  srl          s1, s0, sp
                  and          s7, a6, s6
                  addi         s2, s0, 806
                  srli         s3, s11, 16
                  andi         tp, t6, -938
                  auipc        t6, 682831
                  slt          s9, ra, s11
                  lui          a7, 477560
                  sra          s0, t0, a3
                  auipc        a5, 779633
                  sll          sp, ra, a4
                  add          t4, a3, s11
                  slt          ra, s0, zero
                  and          a0, t2, s2
                  sub          t0, s3, a0
                  sll          a2, t3, t3
                  nop
                  sub          t5, t5, gp
                  sub          a6, s2, t2
                  sltiu        t2, t1, -595
                  srli         gp, t3, 4
                  or           t4, a6, sp
                  srl          s2, zero, a7
                  auipc        a5, 784535
                  sltu         zero, s0, s3
                  or           s6, a0, s5
                  or           a0, a0, a5
                  sltiu        t1, zero, -89
                  sra          a0, s0, t4
                  sltiu        s9, s9, 172
                  sra          a2, s5, gp
                  slli         a1, a3, 14
                  slti         s2, a3, 469
                  srli         t0, t4, 20
                  nop
                  slt          a7, s3, a6
                  slli         s10, t5, 11
                  srl          s0, zero, ra
                  sra          t2, s3, a5
                  slti         a6, s4, -1121
                  srl          tp, s5, t3
                  sltu         s1, a3, a4
                  or           gp, s1, t4
                  ori          t4, s11, 912
                  auipc        t4, 900726
                  sra          s9, s9, t1
                  sub          t1, t1, t4
                  lui          tp, 252770
                  sll          s4, s3, s7
                  sub          s10, t1, s5
                  sub          t5, t4, a4
                  lui          ra, 869613
                  ori          ra, a2, 1968
                  slli         t2, a1, 24
                  sltu         t1, a6, a3
                  sltu         t5, t1, ra
                  slli         t5, sp, 0
                  sltu         a5, s8, ra
                  srli         s4, a1, 30
                  and          a5, t3, gp
                  sub          a5, t5, s10
                  slti         s1, s9, 1774
                  srai         a4, t6, 31
                  sra          t5, a1, t2
                  slti         a1, sp, -1567
                  srl          s8, t6, a2
                  slti         t0, t0, 1378
                  sll          t0, s5, s5
                  slli         t1, s11, 16
                  nop
                  andi         s5, t4, 3
                  or           a0, a3, tp
                  sra          s8, t3, a5
                  sra          s6, a0, a0
                  andi         t0, a4, -108
                  xori         t0, a1, 1281
                  xor          s4, t2, s10
                  sra          t6, a0, s8
                  add          a0, s5, a7
                  sltiu        a7, ra, -441
                  srl          gp, t6, a5
                  sll          ra, s9, a3
                  sll          s8, s7, s9
                  and          sp, sp, s4
                  slti         s10, t0, 119
                  slt          gp, t1, s6
                  xor          ra, t2, a3
                  sub          a5, s3, t1
                  auipc        t0, 353489
                  sll          s5, zero, a1
                  slli         t1, a2, 14
                  sub          s1, a5, s4
                  slti         t5, s5, 382
                  slli         tp, s3, 16
                  slti         s2, s10, 78
                  and          s10, a0, a0
                  andi         s4, s0, -342
                  sra          t1, s5, t2
                  srl          s3, s7, a5
                  addi         t5, a7, -533
                  slli         tp, a4, 18
                  sub          s5, s2, s3
                  sltiu        t6, ra, -1998
                  xori         s4, a7, 1940
                  sra          t2, s5, t0
                  lui          a7, 890127
                  slli         sp, s8, 29
                  add          t4, a3, sp
                  xor          a2, a1, sp
                  xori         s8, tp, -529
                  auipc        tp, 880302
                  srai         t5, s4, 1
                  srai         a6, t4, 0
                  sub          t1, s9, a4
                  add          a1, t3, zero
                  lui          a5, 425917
                  sll          t0, s2, s2
                  sub          s1, s9, t1
                  addi         s3, s10, -1036
                  nop
                  li           s10, 0xe609ec56 #start riscv_int_numeric_corner_stream_3
                  li           s8, 0x0
                  li           s0, 0x0
                  li           t1, 0xffffffff
                  li           s2, 0xffffffff
                  li           s1, 0x80000000
                  li           t2, 0x8f90ac64
                  li           s6, 0x0
                  li           s5, 0xffffffff
                  li           tp, 0xffffffff
                  add          t1, t2, s1
                  sub          s8, t2, s8
                  auipc        tp, 388551
                  lui          t1, 367990
                  addi         s0, s0, 445
                  lui          s5, 1204
                  auipc        s6, 731416
                  sub          s8, s1, s8
                  addi         t2, s2, 1025
                  addi         s2, t2, 1472
                  add          s10, s0, s1
                  add          s5, t2, t2
                  addi         s2, s1, -1011
                  nop
                  auipc        t2, 792981
                  addi         s5, tp, 1641
                  sub          tp, s1, s2
                  sub          t2, s8, s10
                  nop
                  sub          s6, s5, s10
                  auipc        s10, 530039
                  add          t2, s6, s8
                  lui          t2, 956958
                  sub          s0, s5, s8
                  addi         s10, s6, 662
                  addi         s5, s6, -734
                  nop #end riscv_int_numeric_corner_stream_3
                  slli         tp, t1, 8
                  sltiu        gp, a3, -1000
                  addi         s3, a1, -1862
                  sltu         tp, t1, t4
                  sltiu        t1, t4, 201
                  sltu         tp, a4, gp
                  or           a0, s5, s10
                  sltiu        ra, a6, 92
                  xori         a1, s8, -734
                  sltu         gp, t0, sp
                  xor          a6, s5, t2
                  srl          s1, a3, s4
                  auipc        a0, 578806
                  nop
                  and          sp, s8, a7
                  sub          t2, s2, s1
                  xori         a6, s9, -831
                  srl          s1, t6, tp
                  sltiu        a7, s1, 1686
                  xor          t2, t4, s5
                  slt          t4, a2, a3
                  slli         a0, s10, 13
                  and          s4, s3, a4
                  slt          tp, s7, t0
                  sra          s8, t3, sp
                  srl          s1, a0, t0
                  and          t4, a4, s2
                  slt          a2, t1, t5
                  slt          a2, t0, s2
                  slti         a1, s11, 1442
                  sltu         s7, s7, a3
                  andi         a1, a1, 1486
                  srli         s0, zero, 22
                  xor          s6, t0, s0
                  auipc        s9, 773453
                  sra          s3, s11, s7
                  slti         zero, a1, -244
                  xor          tp, tp, sp
                  srai         s4, s4, 23
                  srai         s4, s4, 8
                  sltiu        s6, t4, 143
                  add          t6, s0, a4
                  addi         ra, s10, 569
                  lui          t4, 284349
                  srai         s0, t2, 26
                  xori         s8, a5, 1354
                  srli         s3, sp, 9
                  sra          t6, s3, a0
                  sll          a0, s3, t4
                  andi         a6, s1, 490
                  andi         s5, a4, 975
                  srl          t5, sp, s8
                  sub          t2, s4, s1
                  sltu         tp, a1, a2
                  slli         s6, s7, 7
                  sra          t2, s2, s1
                  slli         a7, t2, 25
                  slt          t2, sp, zero
                  slt          s2, s7, ra
                  sltu         a7, ra, a3
                  slti         a6, s11, -1667
                  add          tp, sp, s3
                  srli         zero, s7, 0
                  sltu         gp, s6, a6
                  sltiu        t4, t4, -582
                  xor          t5, s8, a0
                  addi         a4, a1, -898
                  srai         tp, s3, 5
                  and          a2, t6, t5
                  slli         a4, t4, 27
                  and          s8, t1, s4
                  srai         t0, tp, 20
                  and          t1, s4, s1
                  sra          a6, s10, t4
                  lui          s10, 295801
                  nop
                  and          a5, a7, zero
                  and          a2, t3, a3
                  sltiu        a6, s9, 1405
                  auipc        a7, 942832
                  ori          a5, ra, -1851
                  sra          s0, s1, s10
                  srai         s5, s9, 1
                  slt          a0, zero, sp
                  srl          s3, s1, s6
                  addi         t0, s1, -4
                  slt          s0, gp, tp
                  srl          t0, t6, a2
                  lui          s8, 21084
                  slti         a1, s5, -870
                  andi         a1, s0, 1019
                  sub          t6, a0, a6
                  add          a0, s0, a7
                  and          s9, a2, s9
                  slti         tp, t3, 1031
                  and          t0, t6, s5
                  ori          t6, s0, 1211
                  lui          gp, 298014
                  xori         a4, t1, 344
                  slt          s5, t6, s5
                  lui          t2, 207426
                  srli         s9, tp, 9
                  sltu         s9, s10, s5
                  and          a1, s7, a3
                  xor          s3, a3, sp
                  sub          gp, s3, a3
                  srl          a1, a1, t5
                  sra          sp, a6, s4
                  srl          s5, ra, t2
                  addi         sp, s1, -218
                  srli         a5, s9, 22
                  or           s7, t3, s0
                  ori          s9, t5, 595
                  slli         t1, sp, 8
                  auipc        a7, 826385
                  srl          t4, s7, s7
                  srl          s6, s4, s6
                  srli         a4, t2, 25
                  xor          ra, s9, s4
                  sra          s0, a7, tp
                  sltiu        zero, zero, 1858
                  andi         ra, a4, -1025
                  ori          sp, ra, -917
                  slt          s0, s6, t6
                  xori         tp, t0, 775
                  slli         t6, a5, 15
                  andi         s6, s1, -90
                  sub          s8, s11, s5
                  slti         a0, ra, 1161
                  srli         s9, tp, 19
                  ori          s5, a3, 1739
                  andi         s5, a2, 1594
                  andi         t5, s11, 1238
                  srai         t1, a6, 18
                  sll          t0, sp, s6
                  ori          s3, a5, -635
                  xori         a6, a7, -1450
                  sll          a6, a5, a0
                  xori         t4, zero, 1268
                  and          t5, s2, sp
                  andi         s0, zero, 1100
                  xori         s9, t0, 958
                  sub          s3, t6, s0
                  auipc        gp, 248759
                  sltu         t1, a6, t5
                  slti         sp, s0, 1522
                  srl          s7, a2, t4
                  sll          ra, s7, s9
                  add          t0, t4, a2
                  ori          s8, gp, -1713
                  auipc        t0, 721560
                  addi         a0, s8, 888
                  add          s9, a2, s5
                  or           s6, a0, sp
                  sltiu        s2, s8, 2012
                  slli         a2, a6, 20
                  srli         a6, a3, 1
                  srai         s1, a0, 20
                  or           t2, a1, a6
                  ori          a4, t2, -1066
                  or           gp, s11, s1
                  srl          t2, s7, t2
                  slti         s2, a2, 704
                  nop
                  srli         a4, tp, 1
                  xor          a1, t2, s7
                  or           s1, s6, s3
                  xori         t5, zero, 1061
                  slt          t5, a4, a4
                  addi         s5, a4, -866
                  and          a7, s4, s4
                  sltiu        s1, s7, 1633
                  srl          s2, t4, s1
                  or           s2, a7, ra
                  srai         s6, ra, 28
                  nop
                  andi         s8, zero, 1065
                  sub          s5, s4, a0
                  srai         a0, a3, 26
                  lui          sp, 562910
                  nop
                  sltiu        s4, s10, 319
                  sltu         s9, s5, t0
                  or           s7, s5, t1
                  sub          t4, sp, a5
                  auipc        t1, 872467
                  ori          t4, s4, -666
                  sltu         tp, t4, a6
                  lui          s7, 776432
                  srli         s0, t6, 6
                  sltiu        a5, s10, 877
                  add          s10, s6, zero
                  add          a5, t2, s8
                  sub          zero, a2, s0
                  sra          s0, s4, a5
                  sub          s1, a6, t5
                  srai         s9, a5, 6
                  add          a2, s7, a3
                  add          s6, s4, t6
                  xori         s10, zero, 1550
                  xori         s0, s6, 1287
                  or           a2, gp, s11
                  srai         s8, s6, 24
                  xori         s9, a0, -1236
                  or           a4, t2, a2
                  slli         tp, t1, 14
                  nop
                  and          s8, s4, zero
                  slti         s1, a0, 852
                  sltu         a1, t3, s7
                  sra          s1, t4, t4
                  ori          s1, t5, -1135
                  lui          s1, 898012
                  sll          zero, t4, s10
                  lui          t5, 209503
                  nop
                  sltiu        a7, a4, -723
                  sub          s9, s5, t0
                  slli         ra, ra, 13
                  sub          t4, a6, t1
                  sltiu        a1, a2, -345
                  nop
                  srl          s7, zero, s6
                  sub          s1, t0, s8
                  xori         s2, s1, 833
                  sll          s0, tp, s3
                  sltu         s4, s0, s6
                  lui          s1, 982675
                  sll          s3, s4, ra
                  andi         tp, zero, 273
                  srl          t0, s3, a2
                  ori          a5, s7, -1008
                  add          a4, a0, s8
                  srai         s2, a6, 12
                  add          s9, s10, a4
                  add          gp, s9, s5
                  or           s0, a3, sp
                  sra          t5, t3, a7
                  slti         s3, s7, -1355
                  nop
                  xori         a0, t0, 1964
                  sltu         a2, t4, a0
                  sub          s7, zero, s4
                  sub          s4, t6, s9
                  srli         t4, s11, 31
                  sltiu        s10, s3, 1040
                  nop
                  or           s1, t4, t3
                  sll          s0, s5, a0
                  sltu         s5, ra, s10
                  add          a6, sp, zero
                  auipc        t5, 1001827
                  xor          gp, a2, t0
                  nop
                  sub          s7, t4, s9
                  xori         s4, t2, 354
                  addi         a6, t4, 1522
                  xori         t4, t5, -976
                  auipc        a5, 142620
                  srai         sp, s4, 13
                  nop
                  srai         zero, s7, 25
                  xori         a2, s3, -1363
                  add          t6, a7, gp
                  sll          t0, a7, t5
                  srl          s9, zero, s1
                  or           a2, a1, s8
                  ori          a1, s9, 1402
                  addi         a5, ra, 226
                  andi         s4, t0, -561
                  slti         t0, a6, -1779
                  slli         gp, a5, 25
                  addi         t6, a2, 864
                  nop
                  or           s1, s8, t4
                  sltiu        t6, sp, 828
                  xor          s7, s1, a6
                  srai         t6, a2, 3
                  sll          t4, t2, sp
                  sltiu        s0, t1, 1598
                  ori          t4, s8, -219
                  li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           t1, 0x0
                  li           ra, 0xffffffff
                  li           s7, 0x80000000
                  li           a6, 0x3e70385c
                  li           a7, 0xac7c1789
                  li           s10, 0x57d508a4
                  li           s6, 0xc8ecb72a
                  li           s1, 0x80000000
                  li           s9, 0x80000000
                  sub          s7, a1, s1
                  nop
                  lui          s1, 58573
                  auipc        a7, 1037810
                  lui          t1, 768698
                  lui          s1, 941591
                  auipc        s6, 263759
                  auipc        a6, 379827
                  sub          t1, ra, a6
                  nop
                  addi         s1, t1, 539
                  addi         ra, s7, -1173
                  lui          s1, 421728
                  nop
                  addi         t1, t1, -1934
                  lui          s9, 78795 #end riscv_int_numeric_corner_stream_8
                  add          a2, a3, a2
                  sub          s5, gp, s10
                  addi         a0, t1, 110
                  sra          s8, t5, s5
                  srl          gp, s8, s9
                  auipc        s5, 806149
                  sub          a0, a4, s7
                  slti         s8, s7, 453
                  lui          s7, 99005
                  sll          t1, s3, t3
                  lui          s7, 1040808
                  xor          a1, t1, t2
                  add          a4, a6, s3
                  slti         gp, s0, 1272
                  addi         s8, s3, -588
                  sltiu        a7, t0, -1117
                  slti         s9, s5, -72
                  sltu         t6, t2, a3
                  sltiu        gp, t6, -1071
                  and          s7, a0, s7
                  srai         s3, s9, 21
                  sub          a6, t3, s1
                  ori          a6, gp, -1324
                  add          zero, t3, s3
                  slti         a7, t5, -1862
                  xor          s2, s1, t5
                  addi         t5, t4, -555
                  xor          t6, t4, a2
                  sra          a1, zero, a7
                  srli         a6, t6, 31
                  slti         zero, t0, -1855
                  sub          s4, s5, sp
                  and          s8, t1, s10
                  add          t4, s11, a7
                  add          s2, ra, a3
                  sra          t5, zero, ra
                  lui          a4, 379405
                  slti         sp, a6, -1784
                  srli         gp, t4, 2
                  sll          zero, a0, a0
                  nop
                  slli         a1, s8, 26
                  add          a7, ra, a7
                  srli         s1, s5, 10
                  sll          t1, s2, zero
                  lui          t4, 24722
                  li           t1, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           a0, 0x80000000
                  li           s10, 0x80000000
                  li           s2, 0x0
                  li           t5, 0x0
                  li           tp, 0x80000000
                  li           a7, 0xed0dd941
                  li           ra, 0xffffffff
                  li           s7, 0x25a030c
                  li           s4, 0x0
                  sub          ra, s7, tp
                  lui          ra, 489410
                  lui          ra, 234892
                  addi         t5, tp, 1482
                  auipc        s10, 323505
                  auipc        a7, 609581
                  addi         s4, s2, 626
                  addi         a7, t5, 1661
                  addi         s4, a0, 1871
                  addi         tp, s4, 925
                  addi         a0, t5, 1915
                  addi         t5, t5, 1996
                  auipc        t5, 489271
                  add          tp, s4, s2
                  sub          s10, t1, s2
                  nop
                  lui          t5, 471403
                  addi         t1, t5, -1459
                  nop
                  lui          ra, 1029481
                  sub          s4, tp, s2
                  nop
                  lui          s2, 122104
                  sub          tp, s4, t1
                  addi         t5, s7, -1597
                  add          t5, s2, a0
                  add          a7, t5, s7 #end riscv_int_numeric_corner_stream_17
                  xori         sp, a5, 2022
                  xor          s5, s6, s10
                  andi         a2, t5, 467
                  sub          t0, zero, sp
                  add          zero, a4, s0
                  auipc        s4, 175031
                  and          a0, s1, a0
                  sltu         t5, gp, s9
                  addi         s9, sp, -1641
                  xor          s7, t4, a4
                  sltu         t1, zero, t6
                  srli         t4, s4, 29
                  slt          ra, a3, a4
                  ori          s2, s11, 1147
                  sltu         s2, s1, tp
                  andi         gp, a5, 659
                  sltiu        s0, s3, -129
                  andi         tp, a1, -1331
                  lui          a2, 159596
                  or           a4, tp, t0
                  srai         a5, s11, 11
                  slti         a4, s8, -901
                  lui          gp, 566933
                  srli         a2, s10, 17
                  srai         t6, a4, 12
                  sra          s9, t3, t6
                  slli         sp, a0, 30
                  slt          gp, a5, s10
                  sub          a2, a1, a5
                  srli         t5, a7, 16
                  or           t0, gp, s10
                  nop
                  sltiu        a6, tp, -519
                  nop
                  auipc        t5, 116684
                  add          s10, s4, s2
                  sll          s3, zero, s1
                  srli         s4, a2, 5
                  ori          a6, tp, 1164
                  ori          zero, s9, -1024
                  or           s3, a6, s8
                  sra          a4, a4, t3
                  xor          sp, t4, s8
                  sra          s7, s6, s3
                  and          a4, a2, a1
                  xori         s5, sp, -199
                  sll          s8, tp, a3
                  sll          s7, tp, s6
                  slli         t5, t3, 4
                  auipc        a1, 265612
                  and          s7, a1, a0
                  auipc        a6, 88269
                  addi         s4, s7, 107
                  sra          a0, t1, s1
                  or           zero, a4, a0
                  or           t1, s9, a4
                  slli         sp, t1, 21
                  nop
                  slti         gp, a4, -167
                  srli         a1, s11, 27
                  ori          s4, a4, -2009
                  xori         a0, a0, 1247
                  addi         t1, s5, -1263
                  sra          t1, ra, s1
                  slti         a7, t5, -1672
                  srl          a4, t0, t6
                  or           gp, s7, s7
                  sub          s9, gp, sp
                  andi         s10, t2, 554
                  srai         s1, zero, 12
                  andi         s0, s6, -1642
                  auipc        s6, 32117
                  srai         s3, a0, 12
                  slt          sp, s10, a2
                  slli         zero, s10, 26
                  sra          tp, s6, s2
                  srl          t2, t6, a3
                  add          t6, t1, s7
                  sltu         t2, s11, a5
                  andi         t2, t3, 1703
                  slt          zero, a0, a5
                  auipc        t2, 342644
                  xori         s9, s11, 1455
                  lui          gp, 817175
                  xori         sp, s3, -475
                  auipc        tp, 621521
                  nop
                  slti         sp, gp, -255
                  slli         s4, a2, 3
                  sll          a4, t3, t0
                  sub          a6, a1, s4
                  xori         a6, t0, 1606
                  ori          t2, s9, 315
                  and          s5, a4, a3
                  sltiu        t6, sp, -1052
                  sra          tp, t6, zero
                  srai         gp, t6, 6
                  nop
                  ori          sp, s5, -1475
                  ori          a1, s7, 554
                  auipc        t0, 52362
                  sll          t2, sp, s4
                  sltiu        s2, a2, -1475
                  andi         t1, zero, 1405
                  add          t1, gp, s7
                  xor          a4, zero, a2
                  sub          t0, a1, tp
                  addi         tp, s1, -1707
                  auipc        tp, 192910
                  lui          a6, 628578
                  nop
                  srl          a1, a3, a5
                  add          a6, s6, s7
                  and          a5, a6, s10
                  xor          t5, s8, s9
                  addi         sp, zero, -800
                  xor          ra, t1, t2
                  and          a7, t3, zero
                  slli         s4, s3, 6
                  add          a0, a3, t4
                  srai         sp, s9, 19
                  or           sp, zero, s8
                  sltiu        s5, a2, 565
                  srli         s4, t4, 5
                  sltiu        gp, s2, 722
                  add          s8, s8, s10
                  sltiu        s8, t4, 366
                  xor          a6, s3, t6
                  lui          a0, 284664
                  and          t4, sp, s6
                  sltiu        gp, t1, -1600
                  or           s6, zero, s4
                  srai         s2, s5, 18
                  sll          s0, t2, s1
                  sub          s6, t1, t0
                  nop
                  xor          gp, t2, s8
                  auipc        s3, 1039813
                  andi         s1, a0, 1737
                  lui          a4, 570945
                  lui          s8, 670514
                  auipc        t0, 699388
                  sra          t0, s1, s11
                  sra          ra, s0, zero
                  sltiu        gp, s9, -898
                  sra          a4, zero, t0
                  xori         gp, s10, 1459
                  sub          t4, a3, gp
                  sltu         tp, t4, a7
                  nop
                  add          t2, a2, t2
                  srai         a5, s4, 23
                  sra          a5, a3, t6
                  slti         s4, zero, 1264
                  slli         s5, ra, 7
                  srai         s7, t6, 6
                  addi         gp, a4, 1062
                  and          s10, a6, t5
                  sltiu        s6, t2, -1193
                  sub          s5, a1, s8
                  sltiu        a1, gp, -193
                  add          t2, t5, tp
                  slt          t0, a0, a5
                  sltu         s0, a4, t1
                  sltiu        t5, t3, -197
                  sra          s2, a6, a7
                  auipc        tp, 807324
                  slli         s4, a6, 3
                  addi         t1, a5, -85
                  andi         t6, a7, -518
                  addi         s6, sp, -87
                  ori          t6, tp, 1713
                  slli         a6, ra, 16
                  sub          s10, t6, s3
                  srl          zero, s5, s4
                  sltu         a6, t4, a4
                  srai         t4, zero, 7
                  nop
                  or           s2, a3, t1
                  addi         s5, a4, 1595
                  andi         s6, s0, 420
                  sub          t1, s5, t2
                  xori         a1, gp, 125
                  addi         s0, a5, -1895
                  srl          s0, ra, s11
                  srai         t4, t6, 18
                  srai         s3, t4, 27
                  xori         a5, a5, 1170
                  andi         gp, s3, -88
                  andi         a4, t5, 902
                  sltu         t0, s8, s1
                  and          gp, t1, a7
                  srai         s1, s1, 23
                  andi         t6, a4, -1027
                  lui          zero, 752111
                  addi         t2, sp, 1807
                  xor          s2, s5, a0
                  sltu         s6, s6, s6
                  and          s8, a7, t3
                  addi         sp, t0, 807
                  nop
                  srl          s2, a5, t4
                  srli         s6, s6, 26
                  srli         s6, s7, 17
                  or           t4, tp, a1
                  sra          s3, t1, s8
                  xor          t2, a5, s1
                  slli         s7, s11, 21
                  lui          a6, 943596
                  slli         t2, t0, 13
                  nop
                  srai         s5, t0, 30
                  srai         a4, t5, 30
                  slt          t2, a4, a5
                  or           t2, t1, a6
                  sltu         s9, s9, s9
                  srl          s9, a3, a0
                  andi         t4, t6, 1031
                  srl          s1, s10, a4
                  slti         s3, a6, -795
                  slti         s8, t4, -1193
                  xor          s2, gp, t1
                  andi         s10, t3, -441
                  slt          a7, t2, s1
                  and          s7, a4, s9
                  addi         t6, s1, -1516
                  sub          s6, s6, t2
                  addi         a1, s4, 1739
                  andi         t4, s6, 1435
                  slt          s8, tp, ra
                  srai         a6, a4, 10
                  auipc        t0, 890509
                  slti         s8, s10, 793
                  srl          s7, t3, a4
                  auipc        zero, 287605
                  sll          t5, a1, s8
                  srai         a2, a6, 5
                  lui          a5, 400397
                  ori          s4, s2, 1955
                  andi         s6, t2, 275
                  xor          a7, t6, s10
                  srl          s1, s10, sp
                  xor          ra, t2, s0
                  sub          sp, gp, s7
                  xori         t4, a4, -462
                  sltiu        t6, a6, -795
                  auipc        s2, 74658
                  slli         s5, s2, 27
                  sltiu        a4, s2, -268
                  ori          s1, s3, 1358
                  sltiu        sp, gp, -524
                  sra          t4, s9, a7
                  and          t5, t0, sp
                  andi         s9, s0, -114
                  sll          a4, s9, a4
                  add          s4, s10, ra
                  auipc        s7, 554746
                  ori          s2, t4, -1260
                  nop
                  lui          s2, 902495
                  sub          s10, s4, s1
                  sltiu        a6, s3, 534
                  ori          a0, t5, 267
                  slti         s2, s6, -1762
                  sll          t4, t6, t2
                  srl          a5, s9, s4
                  srli         s7, t3, 22
                  andi         s2, s7, -1728
                  sra          tp, t2, s3
                  sra          s4, s4, s11
                  sltiu        t0, s8, -726
                  slli         tp, s10, 20
                  slli         t5, s1, 3
                  nop
                  or           s0, a5, a2
                  auipc        t6, 984474
                  xori         a1, a6, -1706
                  nop
                  andi         ra, a3, -1149
                  sltu         t0, a6, t4
                  srai         t5, a6, 6
                  andi         s4, s2, 25
                  srl          a0, a1, s4
                  and          s1, sp, a6
                  xor          a5, t3, s3
                  srl          t5, t3, ra
                  sltiu        t1, s0, -90
                  xor          s1, a6, a0
                  addi         a2, zero, -327
                  ori          t4, s2, -1768
                  sltiu        t2, s8, -1364
                  nop
                  add          t5, a0, ra
                  lui          s4, 273718
                  ori          s5, gp, -783
                  auipc        sp, 983445
                  sra          t0, sp, s10
                  xori         sp, a3, 934
                  li           s7, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           s10, 0x80000000
                  li           a7, 0x0
                  li           s8, 0x0
                  li           a1, 0xd5f210d0
                  li           a2, 0x0
                  li           tp, 0xffffffff
                  li           a4, 0x9a656797
                  li           a5, 0xffffffff
                  li           gp, 0xde7d5ee1
                  nop
                  add          s10, gp, s8
                  add          a5, a5, a2
                  lui          tp, 810044
                  lui          s10, 639231
                  auipc        a7, 1007130
                  add          tp, s8, a2
                  auipc        s7, 503440
                  nop
                  nop
                  lui          a2, 717772
                  nop
                  sub          a1, tp, a5
                  sub          a4, tp, tp
                  sub          a1, s10, s8
                  auipc        s7, 10383
                  add          a1, a4, s7
                  lui          a2, 773464 #end riscv_int_numeric_corner_stream_7
                  lui          t5, 173133
                  lui          a7, 465833
                  sub          a5, t3, gp
                  slti         s10, s4, -629
                  add          sp, t0, zero
                  nop
                  nop
                  sltu         s7, t0, t1
                  andi         t2, t2, 1128
                  xori         s2, a0, 1844
                  and          tp, s10, s1
                  xori         t0, a5, 1586
                  xori         s1, s5, -1645
                  slti         tp, s3, -1599
                  auipc        t2, 18801
                  sltiu        t6, ra, -1559
                  and          s6, t1, t0
                  and          ra, t0, a3
                  srli         t1, s9, 19
                  sll          a1, a1, s10
                  sltu         s1, a7, gp
                  slt          a6, s11, tp
                  nop
                  xor          gp, s4, a0
                  xori         t6, zero, 1479
                  auipc        t2, 161797
                  sll          tp, a6, a1
                  xori         tp, a4, -1979
                  and          t6, s3, sp
                  slli         s4, zero, 9
                  andi         t1, a0, 263
                  xori         s4, a0, 1570
                  auipc        a0, 949271
                  sub          t4, zero, a5
                  sltu         s0, tp, s0
                  xor          a5, t0, s9
                  ori          a2, a3, 30
                  xor          t4, s8, a4
                  and          s6, s6, sp
                  slli         s5, s3, 6
                  sra          a5, a5, a7
                  nop
                  sltu         zero, a4, s0
                  ori          a6, t0, -1783
                  slt          a7, tp, a3
                  ori          t0, ra, -353
                  auipc        t5, 272916
                  sltu         t2, s9, s6
                  sll          t2, a7, a0
                  slti         t2, a4, -260
                  slt          s1, s11, a7
                  or           s6, a2, s1
                  slli         a4, t2, 18
                  srli         a1, s2, 14
                  sltu         s0, t2, t4
                  add          ra, s3, t4
                  add          t0, sp, s8
                  andi         s6, t1, -1319
                  sub          sp, s5, t5
                  auipc        ra, 4549
                  slti         s0, s8, -1573
                  sra          sp, a0, s0
                  auipc        s0, 651633
                  sltiu        s9, sp, 459
                  sll          s9, s4, a7
                  and          t0, tp, s7
                  xori         s5, s6, 1668
                  slti         s7, a3, 1535
                  and          s0, a1, s0
                  xor          a0, s2, tp
                  srai         a2, s3, 19
                  add          a0, a1, s3
                  auipc        t1, 193266
                  nop
                  sltu         t6, s10, t6
                  lui          a5, 1028882
                  addi         s6, a7, -1161
                  ori          s10, t3, 869
                  and          s4, t6, s5
                  ori          gp, s11, 1830
                  srl          s7, s7, s5
                  srl          s1, s10, a0
                  sltiu        t5, s0, 1743
                  slt          t0, t5, s0
                  addi         t5, s8, 1004
                  addi         t6, a3, -147
                  ori          t4, a4, -468
                  ori          a7, s5, -173
                  xori         s7, s11, 1422
                  add          tp, s2, s4
                  xor          a5, a7, s1
                  ori          t1, s7, -1875
                  slt          s1, sp, s8
                  srli         s7, a3, 19
                  sub          gp, s10, s7
                  slt          sp, s2, s0
                  xor          t4, t2, a3
                  srli         sp, a3, 25
                  slli         gp, s3, 23
                  andi         a6, s10, 260
                  andi         s7, s5, -1213
                  lui          s9, 851284
                  lui          s4, 12095
                  andi         t1, a5, 1265
                  srl          t6, t3, a1
                  slt          s10, a5, a1
                  srai         s8, gp, 10
                  sub          s4, a3, t1
                  slli         s1, s6, 28
                  andi         s9, a6, 543
                  slli         a7, sp, 13
                  nop
                  srli         t6, a7, 24
                  sll          s5, s5, t2
                  nop
                  nop
                  sub          s9, s3, a2
                  sltu         s7, ra, t5
                  and          t5, gp, a5
                  slt          a6, a7, s7
                  add          s9, zero, s11
                  andi         t6, ra, 1934
                  sltu         t5, a2, a5
                  sra          s8, zero, a2
                  slt          s1, a3, t1
                  addi         tp, s6, 940
                  auipc        a0, 62198
                  and          a5, t0, a3
                  xori         s8, ra, -1555
                  or           a4, s7, s1
                  xor          zero, a1, a2
                  slti         tp, a5, 1713
                  slt          s10, s6, a5
                  lui          s8, 973476
                  slti         a2, s3, 1015
                  and          t0, t1, a0
                  addi         s7, a3, -1330
                  ori          s1, a0, 1457
                  lui          t4, 748745
                  srl          t1, a7, a3
                  slti         s5, a7, 1071
                  slti         s9, a2, 861
                  slt          s10, a3, s4
                  or           a2, s1, s5
                  srli         a6, a4, 6
                  sra          s0, a3, s11
                  lui          s3, 610664
                  sub          s6, s4, a6
                  add          t6, t0, t4
                  slti         s4, ra, -1114
                  and          a7, s3, sp
                  add          a7, a0, s3
                  slti         t5, a5, 600
                  sra          s7, t5, a7
                  sra          sp, s9, a6
                  xor          s6, s6, a0
                  andi         s7, s9, 1906
                  sra          s1, a7, s8
                  sub          t4, s2, a2
                  lui          s1, 857859
                  lui          t1, 308105
                  andi         t4, s2, -1301
                  andi         a4, gp, 704
                  ori          s3, s9, -663
                  nop
                  or           t0, a2, sp
                  and          t2, zero, a2
                  sll          a7, s2, s9
                  sll          s1, t3, t5
                  sub          s0, a2, a0
                  add          t2, a5, t2
                  slti         sp, s11, -981
                  xor          zero, t6, s9
                  sra          s3, ra, a2
                  and          s3, sp, s5
                  andi         s7, s5, -748
                  slti         a1, t3, -819
                  nop
                  or           s8, s3, gp
                  addi         s3, s2, -1540
                  ori          a7, s11, -1970
                  ori          s0, s3, 1987
                  add          s3, s7, a0
                  addi         s10, gp, 991
                  slt          t0, a5, a4
                  sltu         a6, s9, t3
                  srl          tp, t6, sp
                  andi         t1, a7, -257
                  sltu         t1, s4, a0
                  addi         s9, s6, 1307
                  sltu         t6, t4, s9
                  xor          zero, t0, s3
                  slt          s9, s8, zero
                  lui          s8, 299213
                  xor          s10, s3, a6
                  xori         a5, t4, -1885
                  andi         s5, s0, 407
                  xor          s0, a3, s11
                  andi         t1, a6, -857
                  addi         t5, t4, 1062
                  add          s3, a0, s6
                  auipc        t0, 62718
                  andi         t5, tp, 1856
                  slli         t6, zero, 5
                  slli         zero, t2, 5
                  xori         t2, s6, -1664
                  nop
                  sra          s6, a3, a6
                  slli         s9, s3, 19
                  srai         zero, t0, 20
                  sub          zero, s7, zero
                  sub          a0, a0, t3
                  sll          tp, a0, t2
                  ori          t6, a3, 1939
                  add          t1, a3, a1
                  add          s6, gp, s9
                  nop
                  ori          zero, s3, 1633
                  slli         t5, tp, 21
                  ori          zero, a5, 1358
                  srli         s8, s1, 17
                  xor          t6, t6, a3
                  xori         a2, s0, -1788
                  nop
                  add          t5, s1, t1
                  auipc        s4, 350196
                  srl          a1, s4, s7
                  sll          t2, a7, sp
                  sub          s9, s3, s11
                  addi         t4, s3, -337
                  sll          t1, a7, a2
                  xor          s5, s9, s9
                  ori          gp, t0, -928
                  sra          a6, zero, s6
                  srli         a1, a3, 11
                  slti         t0, s7, -689
                  sll          s10, t0, a3
                  sra          a0, a0, t0
                  sltu         s9, gp, a0
                  slt          s1, s9, ra
                  srli         s8, tp, 15
                  slti         tp, a5, -378
                  slti         s2, s4, -306
                  sltiu        s6, t2, -1828
                  sltu         t5, s8, t1
                  sll          s4, sp, s11
                  addi         t6, t3, 1441
                  sltiu        s0, s8, 1823
                  sltu         s9, t4, s4
                  add          gp, s7, t2
                  lui          ra, 353308
                  lui          s1, 882829
                  xor          a6, a7, s2
                  sra          t4, s11, a7
                  addi         s5, s2, -1260
                  addi         a1, s9, 48
                  slt          a6, s5, a2
                  sltu         t6, sp, s11
                  and          a6, s3, a7
                  xori         sp, s2, -1385
                  sltiu        a4, t5, -984
                  sltiu        s10, s3, -107
                  slti         s2, a1, 13
                  xor          s7, a4, s0
                  ori          t0, t0, -9
                  xor          a0, zero, s7
                  lui          t6, 228575
                  addi         sp, s10, 1632
                  sll          zero, t4, a4
                  xor          s8, s7, ra
                  sll          t0, s2, a7
                  and          ra, a5, t4
                  add          a5, s11, s2
                  or           s3, gp, s8
                  lui          t5, 963274
                  slt          s9, s2, t1
                  slt          s10, t5, tp
                  srli         ra, tp, 7
                  sltu         a7, s8, s9
                  sra          s4, s3, gp
                  sra          t1, a1, a5
                  ori          s9, ra, -1622
                  addi         s0, zero, 75
                  srl          a7, s4, tp
                  and          a6, t6, a7
                  slli         t1, s8, 7
                  and          s0, s5, a3
                  slli         t0, t6, 28
                  xor          s8, s7, a3
                  sub          tp, s11, a4
                  sub          ra, ra, a7
                  or           s2, t6, gp
                  slli         s6, a1, 0
                  sltiu        s10, s10, -414
                  ori          t6, s11, -1061
                  or           ra, t3, t0
                  slt          gp, gp, s4
                  andi         ra, a4, 196
                  srl          t0, a1, a4
                  slti         s3, sp, -842
                  or           s4, a1, s6
                  slli         tp, a4, 26
                  auipc        zero, 522112
                  sub          a1, a0, a1
                  sll          s8, s8, a7
                  andi         s10, s10, 827
                  auipc        t2, 644547
                  auipc        gp, 385092
                  srl          s10, s7, t6
                  xori         s7, s10, 77
                  srl          s5, t2, a3
                  sub          s0, t6, t1
                  nop
                  srai         a7, a4, 15
                  xor          a0, a7, t0
                  slti         s4, a2, -118
                  slt          t2, t0, a6
                  andi         s6, s6, 68
                  srai         a1, ra, 10
                  slli         s6, a1, 10
                  auipc        s7, 571905
                  xori         sp, sp, 743
                  sll          t0, t1, s7
                  addi         s9, a0, -1545
                  sltiu        a7, s6, -1830
                  xori         t5, t1, -277
                  andi         a0, s10, -1587
                  srl          sp, a2, s1
                  srai         s5, a6, 4
                  auipc        a6, 482098
                  addi         s2, t5, -1332
                  xori         s6, gp, -1354
                  lui          a2, 75951
                  sub          zero, s3, ra
                  andi         a4, zero, -1084
                  slti         s7, a1, 1205
                  srai         s6, a7, 26
                  nop
                  xor          t1, t2, s3
                  ori          s8, t6, 1544
                  nop
                  and          s1, a5, t1
                  sll          a1, s7, t5
                  slli         zero, s6, 7
                  slti         sp, s4, 145
                  slti         a4, s7, -995
                  ori          a6, t6, -1644
                  sra          a4, ra, a3
                  slt          a2, s0, tp
                  add          a4, tp, s9
                  srli         sp, zero, 10
                  ori          s6, t6, 529
                  sltiu        s0, t5, -1511
                  srl          ra, t2, a6
                  slt          ra, zero, a3
                  slti         s1, ra, 907
                  addi         s6, a1, 1482
                  andi         t1, t6, 746
                  xori         ra, tp, -1162
                  andi         a5, s8, 2018
                  add          a6, t5, sp
                  xori         t0, s1, 487
                  auipc        ra, 167237
                  and          a7, s1, s10
                  nop
                  auipc        zero, 425293
                  sltiu        s3, s2, 1679
                  srli         s7, a6, 19
                  lui          gp, 422256
                  sltiu        s1, t0, 184
                  andi         a6, ra, -1054
                  sltu         t2, s11, ra
                  lui          t0, 848394
                  srl          zero, gp, t1
                  ori          ra, t3, 858
                  ori          a2, sp, -180
                  srl          t0, t0, sp
                  sltiu        s6, t2, -1376
                  andi         s6, s8, -1501
                  srai         a1, a0, 17
                  auipc        s6, 925695
                  slti         t2, a7, 1683
                  sra          s1, t6, gp
                  srli         a4, s6, 21
                  xori         t6, s4, 507
                  slt          ra, s8, a3
                  auipc        s8, 799123
                  sub          gp, t4, a0
                  slt          s7, a2, a6
                  slli         s5, t3, 3
                  sltu         s2, s9, s1
                  xor          t5, s10, s7
                  xori         s7, t4, 1600
                  sra          a4, t2, s8
                  slli         a0, a7, 14
                  addi         sp, a5, 1888
                  slt          s5, a2, gp
                  slli         a2, s1, 28
                  sltu         a0, t6, a4
                  sll          zero, zero, t2
                  sra          a1, s11, s2
                  slti         a4, s2, 1895
                  xori         s4, gp, -408
                  slti         ra, s7, -1536
                  srai         a0, s5, 26
                  add          s2, s1, t4
                  sra          s1, t5, ra
                  nop
                  auipc        s1, 698448
                  srai         t0, s4, 4
                  slti         s10, s6, -485
                  sll          a2, sp, t4
                  xor          a2, s1, t2
                  sltu         s6, a1, t0
                  srli         s0, a7, 11
                  addi         a2, a2, 1935
                  srl          a2, t2, s2
                  sltu         t2, s8, a5
                  sltu         s6, t2, s9
                  sra          a6, ra, t2
                  and          s7, s11, gp
                  srli         gp, s11, 20
                  slti         s8, zero, 1990
                  nop
                  add          s9, a7, a0
                  sub          ra, s11, t1
                  add          s7, s11, s4
                  sub          a7, t0, a1
                  or           s7, s5, t5
                  sub          s10, s9, s7
                  slli         a7, a0, 28
                  slt          gp, t4, t3
                  ori          ra, t1, 1225
                  slt          t5, s11, zero
                  srai         s2, a3, 31
                  and          s0, ra, s2
                  lui          s3, 1012347
                  srai         s3, a3, 26
                  srai         a1, a5, 25
                  sll          s7, s3, s10
                  sra          a1, a5, ra
                  srl          s2, s0, s8
                  xori         s2, s4, -664
                  sltu         t0, t0, t6
                  sra          gp, s5, a2
                  sub          a6, t3, s6
                  sltiu        a4, t4, 1021
                  srli         s6, s3, 29
                  add          a0, s7, t4
                  lui          s5, 139497
                  slti         s7, t5, -1063
                  andi         s3, s11, 1865
                  andi         a5, s6, -1735
                  slti         s9, a3, 1704
                  and          gp, s3, s5
                  sra          s2, zero, a1
                  ori          s9, a1, -203
                  add          t2, s8, s0
                  srl          tp, a4, t4
                  sltu         s4, s9, s7
                  sltiu        tp, t0, 933
                  add          t2, gp, s11
                  nop
                  sltu         gp, a7, a4
                  sll          tp, s6, t0
                  srl          s0, s7, a0
                  sltiu        s0, gp, -1306
                  sll          sp, s7, t4
                  slti         ra, s0, -2005
                  slti         t0, s7, 657
                  lui          s4, 844548
                  sll          t4, ra, s8
                  slti         s4, s10, -802
                  srl          zero, a2, s10
                  auipc        s7, 39534
                  sll          gp, s0, a0
                  or           t1, t0, s5
                  nop
                  sll          zero, t3, a2
                  slti         zero, a5, -268
                  slti         a1, a6, -298
                  auipc        t4, 688205
                  slt          t1, a4, a7
                  ori          a6, a3, -1962
                  sltiu        t2, t0, 1651
                  sub          s9, t5, s11
                  slt          s5, a2, a7
                  nop
                  srai         tp, s11, 29
                  sra          tp, s7, t5
                  sltu         s2, s4, s10
                  and          a4, a7, ra
                  slli         t6, a5, 0
                  nop
                  ori          s6, t3, 153
                  srai         s2, a1, 26
                  sltu         zero, t4, t0
                  or           a0, a4, a5
                  slli         sp, a5, 6
                  auipc        ra, 89635
                  lui          tp, 166661
                  auipc        s8, 362759
                  srli         s5, s4, 19
                  addi         s10, a0, -549
                  sltu         a2, s7, t0
                  xor          t5, a6, sp
                  or           ra, zero, a4
                  srai         gp, s11, 1
                  add          t4, ra, a6
                  sltu         s8, a4, ra
                  addi         t4, a1, -501
                  sltu         a5, s2, a5
                  srai         a0, t2, 20
                  sltu         ra, t4, a4
                  sltiu        a6, ra, 1762
                  xori         s6, s8, -1064
                  auipc        a1, 913072
                  xor          s2, t3, t0
                  or           t4, t5, t4
                  xor          t4, a1, t6
                  srl          s1, a7, t2
                  srai         s0, s8, 30
                  auipc        s6, 156182
                  xor          ra, a3, s11
                  or           s7, t6, s4
                  andi         s8, gp, 196
                  slli         s8, a2, 14
                  sll          s7, tp, a7
                  sltiu        a6, a1, 409
                  addi         s2, a1, -1898
                  xori         s6, s4, 1512
                  srli         s7, t6, 29
                  and          s9, a7, s9
                  srai         t6, a0, 23
                  nop
                  add          s9, a6, zero
                  add          s10, s2, t3
                  sub          s10, tp, t3
                  andi         s9, t5, -862
                  nop
                  srl          a5, sp, sp
                  srl          s1, s10, s1
                  and          a2, a2, sp
                  srai         s5, a0, 12
                  srai         t2, ra, 1
                  and          zero, s6, t4
                  srl          zero, a5, t5
                  addi         a5, a3, -2036
                  sub          t5, ra, s8
                  sltu         t4, s2, s1
                  slti         zero, a0, -1113
                  lui          ra, 339613
                  auipc        a2, 43132
                  add          s4, s7, t1
                  sub          s3, s4, t4
                  addi         s2, sp, 215
                  srli         s5, s3, 7
                  and          a6, a7, s7
                  srai         a2, t4, 14
                  ori          s6, a1, 310
                  andi         s10, a6, -9
                  srai         t5, s3, 24
                  add          zero, a6, s9
                  slli         tp, ra, 6
                  ori          a0, s8, -1290
                  xori         s9, s5, -288
                  andi         s6, t0, 820
                  andi         t6, zero, 1
                  sltu         gp, t4, s5
                  or           s10, s1, a5
                  li           s0, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           a1, 0x3fc185b1
                  li           t0, 0x0
                  li           s6, 0x80000000
                  li           ra, 0x80000000
                  li           tp, 0x80000000
                  li           s4, 0x80000000
                  li           a6, 0x80000000
                  li           t6, 0x0
                  li           a7, 0x80000000
                  nop
                  sub          s0, ra, s0
                  addi         tp, t0, 1688
                  lui          t0, 539514
                  auipc        t0, 144452
                  lui          s0, 615929
                  sub          t6, t6, a7
                  add          a1, ra, a6
                  auipc        a7, 943603
                  nop
                  addi         tp, a7, 1452
                  sub          t0, a6, s4
                  lui          a7, 243802
                  add          s4, t6, tp
                  auipc        tp, 988739
                  nop
                  lui          tp, 1030379
                  sub          t6, s0, a7
                  add          s4, tp, a7
                  sub          ra, t6, t6
                  nop
                  sub          t6, a6, s0
                  nop
                  nop #end riscv_int_numeric_corner_stream_15
                  add          ra, s9, t3
                  xori         a4, t0, 976
                  lui          s3, 76080
                  xor          s2, t0, s4
                  sltiu        t4, a4, -1695
                  ori          s10, s10, 1427
                  srli         s9, sp, 4
                  sll          a2, s6, s9
                  xor          t1, s0, s2
                  sltiu        a2, s8, 668
                  andi         s4, a2, 944
                  sltu         s7, a6, s0
                  sltu         a1, s9, a1
                  xor          s10, s6, a1
                  xor          t0, a2, s0
                  slli         a4, a7, 11
                  andi         a5, s4, -1988
                  sra          t5, s5, a1
                  srli         a1, t3, 8
                  sll          s1, t3, a5
                  sltiu        s2, a3, -1292
                  or           t1, s9, sp
                  sltu         s0, s3, s11
                  slti         a0, s0, 643
                  slli         a6, gp, 19
                  srl          a2, a3, a2
                  lui          s3, 1020482
                  nop
                  srl          a7, t0, t6
                  sll          a4, a5, a0
                  or           s7, a5, s4
                  srai         t1, s7, 20
                  andi         a1, t2, -1926
                  or           s0, s8, a0
                  auipc        a1, 364031
                  srl          a1, sp, sp
                  auipc        ra, 549347
                  sub          t5, s5, sp
                  xor          gp, gp, gp
                  and          a5, gp, s2
                  xor          tp, gp, a6
                  slli         s7, t5, 12
                  sltu         a6, t1, t3
                  xor          s1, a3, a3
                  lui          s2, 698433
                  slli         s9, s4, 0
                  add          t0, tp, s7
                  sra          s9, t5, gp
                  ori          tp, s1, -1723
                  nop
                  or           s0, s11, s9
                  and          t0, t6, s11
                  ori          s6, s6, -597
                  and          t1, zero, t2
                  sltiu        t4, a6, -1724
                  and          a4, t2, s9
                  srai         t2, a5, 25
                  slti         t1, tp, -1409
                  slti         s6, s9, 335
                  nop
                  srai         a6, ra, 28
                  auipc        sp, 344519
                  andi         s2, t5, 836
                  ori          a4, s1, 1141
                  or           a2, s6, s2
                  xori         zero, t2, -1908
                  sll          t0, a1, t1
                  sltu         t4, a4, s8
                  auipc        t5, 930532
                  or           a4, a5, a4
                  sra          gp, s3, t4
                  or           t0, a2, ra
                  xori         sp, s2, -1074
                  sll          t6, zero, tp
                  ori          t4, s1, -1667
                  xor          s2, tp, a4
                  slt          gp, s7, gp
                  sll          s4, t1, s11
                  slli         s3, sp, 18
                  addi         zero, ra, -1019
                  xor          a2, tp, s11
                  xori         t0, s4, -613
                  sltu         s6, t5, t5
                  slti         t0, s4, -1266
                  srli         sp, s5, 6
                  and          s1, s4, gp
                  srli         s1, s2, 31
                  sltu         s8, s11, t0
                  sltiu        s1, s1, 1888
                  sra          t1, tp, s2
                  or           t2, t2, s6
                  ori          zero, s3, 147
                  lui          a4, 452368
                  slti         tp, t2, -973
                  xori         t2, sp, -589
                  lui          a6, 967481
                  slt          s8, t2, s7
                  add          s4, t4, a4
                  srli         t6, s10, 6
                  or           zero, gp, t5
                  lui          t5, 929146
                  sll          s9, t6, s9
                  and          a7, ra, a5
                  slli         ra, s11, 16
                  srli         s8, gp, 14
                  addi         a6, tp, -64
                  addi         a7, a6, 1941
                  nop
                  ori          t1, t1, 66
                  or           t1, t2, a3
                  ori          s2, zero, 1753
                  nop
                  sub          s5, a4, zero
                  sltiu        t1, s9, -1589
                  srli         t0, t6, 15
                  srl          s4, t3, s5
                  slti         a7, a2, -1059
                  lui          s8, 337456
                  srli         s5, a2, 3
                  xor          t5, s3, a1
                  or           s9, t3, s8
                  add          gp, t2, t6
                  srai         t5, t0, 27
                  srai         t2, s1, 6
                  srli         a4, s3, 9
                  lui          a0, 199124
                  sll          gp, tp, s2
                  sra          t6, t5, sp
                  xor          t5, s2, a6
                  sll          a7, t3, s0
                  slli         s1, t6, 8
                  nop
                  sltiu        a6, s0, -1915
                  sub          t0, t6, a4
                  andi         ra, s1, 1566
                  srli         a5, a1, 25
                  srai         s6, t4, 30
                  and          a0, t4, s11
                  slli         s2, a3, 28
                  and          ra, s3, a2
                  slli         t2, s3, 14
                  nop
                  xori         s5, s11, -122
                  slti         ra, a2, -1455
                  srli         s5, s1, 1
                  auipc        s9, 168197
                  addi         s0, ra, -23
                  slt          a7, sp, a2
                  andi         a2, a1, 505
                  sll          t1, s5, s7
                  slli         t4, t2, 23
                  add          s4, t5, t2
                  sltiu        a4, a5, 1385
                  srli         t1, a0, 10
                  nop
                  lui          s7, 717637
                  slt          s5, a7, a2
                  nop
                  lui          a7, 963368
                  slt          s0, a0, t0
                  srai         s7, s5, 22
                  auipc        t5, 149746
                  or           a1, t0, a2
                  xor          s0, s9, s8
                  add          s4, s3, zero
                  auipc        s10, 254726
                  srli         s10, a5, 13
                  and          a1, t4, s7
                  or           t1, s6, a4
                  sll          ra, s11, a1
                  sra          t4, a0, s4
                  slti         tp, a4, 156
                  sltiu        s1, sp, -1365
                  sltiu        tp, a2, -1585
                  slli         s2, t4, 30
                  srai         gp, s9, 5
                  sll          a6, tp, t6
                  or           s9, s4, s10
                  xor          s0, a5, s8
                  lui          a1, 813786
                  andi         a7, s6, -929
                  sub          s7, t2, tp
                  sltu         gp, sp, a5
                  srl          s10, s10, gp
                  slt          s1, a7, zero
                  andi         s2, a1, -326
                  sra          s5, zero, s3
                  auipc        s2, 148634
                  slli         a7, s11, 17
                  addi         s4, gp, -1583
                  slt          s5, a0, s6
                  srli         s6, t0, 17
                  slt          s3, a2, ra
                  or           a0, t5, s11
                  slti         t1, s5, 937
                  add          ra, s2, s2
                  add          a2, s6, s2
                  xor          s8, s1, s9
                  addi         t1, s4, 1554
                  srai         ra, s9, 17
                  slt          t2, t6, t5
                  nop
                  sra          zero, t1, sp
                  ori          a6, gp, 2004
                  li           s2, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           s7, 0x5a94223b
                  li           s10, 0x80000000
                  li           t4, 0x0
                  li           s5, 0x0
                  li           tp, 0x0
                  li           a5, 0x80000000
                  li           t1, 0x80000000
                  li           t2, 0x6076d5b3
                  li           s9, 0x2c47833a
                  auipc        s10, 865701
                  sub          a5, s5, a5
                  nop
                  add          s7, t4, t2
                  nop
                  auipc        tp, 1037847
                  nop
                  auipc        t2, 856076
                  nop
                  add          s2, tp, t1
                  add          tp, tp, t1
                  lui          s10, 420526
                  nop
                  add          s10, t2, s7
                  add          t1, tp, t2
                  sub          t1, t1, t2
                  lui          s2, 247220
                  sub          a5, a5, s5
                  nop
                  add          s10, s7, t1
                  sub          t1, s2, s10
                  add          s9, tp, s10
                  nop
                  auipc        s10, 1020739
                  sub          s10, t2, tp
                  auipc        t1, 319192
                  sub          t1, s5, s5 #end riscv_int_numeric_corner_stream_14
                  or           a2, sp, t2
                  or           s4, a7, s9
                  sltu         a6, t1, a4
                  srli         gp, a7, 26
                  slt          t1, sp, s7
                  sub          a0, tp, s7
                  sra          t0, t6, s1
                  slli         a1, a0, 0
                  xori         s8, t3, -316
                  srli         t0, s11, 15
                  srli         a4, s7, 23
                  srli         ra, s0, 4
                  ori          t4, a7, 776
                  sub          s0, t1, t3
                  auipc        a2, 205777
                  sra          a1, a1, gp
                  lui          a1, 667781
                  slt          t0, s11, a7
                  ori          a0, s11, -385
                  sub          s2, a2, zero
                  nop
                  srl          a0, sp, a4
                  ori          t5, s2, 2004
                  srl          s7, a1, s9
                  sltu         tp, ra, t3
                  sltiu        t2, a6, 1133
                  slt          a2, s10, s5
                  slli         s0, s11, 5
                  or           s7, s9, t4
                  ori          s4, gp, -1744
                  slt          gp, gp, s4
                  andi         a6, t3, 725
                  srl          s1, a4, a7
                  srai         a0, s11, 3
                  nop
                  srli         s3, a5, 19
                  sub          s7, t5, t1
                  sub          t1, t4, gp
                  addi         zero, a4, 1161
                  or           zero, s7, a6
                  or           t5, s5, s9
                  sra          a1, t6, s2
                  lui          s3, 33998
                  or           a6, t5, a0
                  nop
                  xori         s7, a6, -378
                  sltiu        a7, s9, -1205
                  srli         s8, a7, 16
                  sll          a4, s5, t0
                  auipc        s9, 667460
                  xor          a7, tp, t1
                  auipc        s10, 1028548
                  or           s3, t1, s2
                  auipc        t5, 1029820
                  sll          a5, tp, a6
                  andi         t6, s6, 631
                  srl          a1, s6, s10
                  sltu         s5, zero, a6
                  srli         a1, a6, 8
                  or           s9, gp, a5
                  or           s0, zero, a6
                  or           s6, s0, s8
                  slli         s9, ra, 31
                  xor          t0, a7, t5
                  srai         tp, tp, 8
                  or           s0, s6, s1
                  sra          s7, s0, a0
                  sub          s5, t1, s11
                  srli         a1, gp, 8
                  xori         s2, tp, 728
                  sltu         s6, a3, s11
                  sra          s4, s0, a5
                  xori         ra, s1, 501
                  sltu         s0, ra, s7
                  lui          a1, 1002861
                  srl          s5, s3, a6
                  srli         t4, t1, 15
                  srai         s10, sp, 15
                  sltiu        a2, s1, -1129
                  xori         a1, t3, 1758
                  addi         t5, tp, 1088
                  andi         s7, tp, -1368
                  slli         tp, sp, 28
                  xori         s9, a2, 499
                  srli         gp, s10, 2
                  sltu         zero, a6, t1
                  auipc        t5, 1018205
                  andi         a0, s2, 448
                  srli         a6, t4, 20
                  or           ra, s8, t4
                  ori          a1, s4, -693
                  sltiu        a0, s0, 579
                  slli         t2, t1, 15
                  slli         ra, s4, 19
                  or           sp, s9, s4
                  slt          a1, s2, gp
                  xori         s9, s11, -180
                  srl          t4, s2, a4
                  sra          ra, t5, zero
                  sra          s7, ra, t4
                  and          tp, s3, sp
                  sub          a6, s8, t1
                  addi         a6, s9, 1433
                  xori         t6, a6, -915
                  slli         a2, a5, 17
                  add          zero, s4, a0
                  and          s4, s11, gp
                  srl          a2, sp, s11
                  slli         t1, s1, 22
                  addi         s0, t5, -62
                  srai         t6, s9, 10
                  or           s8, a3, t2
                  sub          a6, zero, s8
                  srl          a1, s0, gp
                  or           s2, s10, tp
                  add          s5, t5, t4
                  xori         a2, t5, 2016
                  srai         s5, ra, 19
                  xori         a5, gp, 1488
                  auipc        tp, 451565
                  sll          s7, sp, sp
                  nop
                  sltiu        s9, s7, 1526
                  nop
                  slli         sp, s2, 17
                  or           s5, t1, s7
                  srai         t4, a2, 12
                  srl          a1, a1, t5
                  sltiu        t6, a7, 371
                  slti         s9, a5, 1013
                  auipc        s7, 199844
                  ori          s3, a6, -1734
                  lui          s0, 468069
                  sub          ra, s6, s1
                  ori          gp, a3, -1652
                  slt          t2, t1, tp
                  srli         sp, ra, 12
                  addi         zero, zero, 298
                  slti         a4, s10, 1262
                  xor          s8, t0, t0
                  add          sp, s6, s2
                  addi         t0, t6, -19
                  ori          gp, a0, -1698
                  nop
                  lui          t1, 143260
                  slli         s8, s1, 5
                  slt          gp, s3, t0
                  slt          s9, t5, tp
                  addi         zero, t2, 1822
                  addi         s4, gp, 469
                  nop
                  slti         s0, t3, 945
                  ori          t2, t0, 65
                  slti         a1, t5, 545
                  sltiu        s10, s3, 1927
                  or           s10, t5, t6
                  sll          s4, s6, t1
                  slti         a0, a1, -1933
                  or           t6, a2, a7
                  and          s8, s3, s9
                  slti         t6, s1, -886
                  lui          t1, 300536
                  xor          gp, s6, a6
                  xori         s10, zero, 283
                  and          s4, s8, s8
                  sltiu        t1, s8, 461
                  auipc        t0, 898423
                  ori          s10, t6, 1743
                  ori          a4, s8, 1783
                  xor          t5, zero, s5
                  slt          s10, s11, s10
                  sltiu        s1, t4, 988
                  and          t2, t4, s7
                  sra          sp, t5, t4
                  sltu         s4, t1, t3
                  auipc        t1, 768495
                  sltiu        a1, ra, -32
                  sub          t5, s11, a3
                  slli         a5, a6, 20
                  slli         t5, t5, 31
                  sub          s8, gp, a5
                  srl          s3, s0, s3
                  sltu         a7, t6, t0
                  srai         s7, gp, 0
                  ori          t6, s0, 224
                  sltu         s9, s2, gp
                  xori         s5, t5, -1689
                  addi         s10, t4, -1572
                  or           a7, s10, s5
                  and          gp, t3, s9
                  xor          a5, sp, a0
                  slli         a4, a1, 1
                  addi         a2, s10, -1486
                  and          a2, tp, sp
                  xor          s8, t3, a7
                  sll          a0, tp, t4
                  andi         a2, t3, -153
                  auipc        a4, 456976
                  srl          a0, gp, tp
                  andi         t1, a1, 1919
                  and          s3, s0, s5
                  nop
                  sub          a0, a4, zero
                  srai         a2, a1, 15
                  slt          s3, s4, s8
                  slti         s10, t1, -656
                  lui          s3, 31849
                  ori          tp, a0, -711
                  or           a7, t6, a3
                  xori         a1, s4, 1225
                  sltu         a1, a6, s9
                  ori          a6, s1, -781
                  xor          tp, zero, s2
                  addi         s1, s5, 1802
                  sll          t0, t1, s2
                  srl          sp, tp, s1
                  auipc        s8, 299113
                  lui          ra, 14914
                  and          t2, s2, a1
                  lui          s2, 330333
                  sltu         s7, s3, s0
                  slli         s8, s2, 0
                  srli         t0, a3, 6
                  andi         s1, s1, 1583
                  sub          s10, a6, s8
                  sra          sp, s7, s3
                  lui          t4, 357271
                  slt          a5, a5, s11
                  srli         s4, s11, 31
                  xori         a1, a0, -1799
                  sra          sp, t6, s5
                  slti         s4, s5, 1141
                  addi         s2, ra, -1471
                  slli         gp, t2, 23
                  srl          a6, zero, a6
                  slli         tp, s1, 14
                  srli         ra, a7, 21
                  slli         s7, t6, 12
                  sll          zero, a5, t1
                  slt          s1, t2, s10
                  xor          t2, sp, s7
                  srli         a0, s8, 1
                  add          s0, a4, t3
                  auipc        a2, 245497
                  nop
                  slli         s10, s6, 18
                  xor          s3, s4, ra
                  sltu         t1, s4, t1
                  sub          a1, a5, s7
                  sub          a7, s11, s1
                  lui          s6, 506382
                  xori         tp, a1, 475
                  slti         s7, s6, -1221
                  nop
                  sub          s10, zero, s4
                  sra          s4, a2, a4
                  or           a1, s3, s3
                  sltiu        s1, s7, -196
                  slti         a7, a7, -710
                  nop
                  nop
                  nop
                  xori         t4, s1, -272
                  andi         t2, s2, -1038
                  xori         s9, s3, 792
                  sub          s10, a1, s9
                  nop
                  slli         tp, a5, 8
                  xori         s2, ra, 1269
                  andi         s3, s10, 1581
                  and          t1, zero, s1
                  sll          s1, s11, t2
                  slli         gp, s11, 5
                  or           t4, a5, s1
                  add          a7, zero, a5
                  srl          a6, ra, s11
                  sub          t6, zero, a0
                  sltiu        s2, s4, -289
                  xor          a7, a3, s9
                  xor          s10, s7, s6
                  srli         a4, s1, 13
                  sltu         s5, t3, a3
                  slt          s0, a2, s10
                  sll          s3, a6, s0
                  srai         a1, s1, 3
                  sra          s0, a1, s1
                  sll          s1, zero, s6
                  lui          t0, 1046058
                  sra          s7, s9, a3
                  andi         t6, t3, -897
                  slt          t0, tp, s11
                  lui          s4, 94972
                  auipc        a4, 408774
                  or           a5, s4, s4
                  addi         t4, ra, 254
                  slt          sp, tp, s3
                  srli         a0, t6, 3
                  or           t4, a7, t6
                  auipc        t2, 974739
                  srl          s0, t5, s7
                  sll          t4, a3, s3
                  sra          t0, s9, s4
                  andi         s3, a4, 1390
                  auipc        a6, 637450
                  or           a1, s3, gp
                  slt          a1, t2, a0
                  add          sp, sp, s3
                  or           s0, gp, sp
                  sltiu        a6, a4, -1690
                  slti         t5, a5, -1964
                  sltu         gp, s5, s10
                  srai         a0, s11, 2
                  sra          s0, s7, a6
                  slti         s8, sp, -260
                  sll          a0, zero, a7
                  ori          t2, s0, 1496
                  or           s10, s0, tp
                  and          t2, s1, t5
                  sltiu        a5, s0, 1044
                  srl          s0, s10, a7
                  or           a2, t3, t6
                  andi         a1, t2, 678
                  slli         s5, s1, 28
                  sll          s1, tp, s10
                  andi         s8, s0, 1398
                  srli         s9, gp, 6
                  lui          s3, 500160
                  add          t5, a1, zero
                  lui          s10, 557808
                  srl          s3, a4, s11
                  xori         t1, a5, 623
                  andi         s0, t0, -1371
                  slt          s3, s5, t0
                  add          a6, s7, s5
                  addi         t0, t4, -1653
                  ori          s8, s0, 954
                  slli         t0, s3, 1
                  add          s4, a7, gp
                  srl          s0, t3, s7
                  lui          s6, 251090
                  slli         s9, gp, 22
                  and          tp, t4, zero
                  xor          gp, s10, s9
                  addi         t2, zero, -731
                  and          t2, s6, t0
                  add          ra, s9, a1
                  addi         s8, tp, 1463
                  and          t5, s0, a2
                  ori          t0, a4, -476
                  sub          s0, a7, a2
                  slli         s1, a2, 8
                  srl          s1, a7, t4
                  srl          t2, t4, s0
                  slt          a6, t1, zero
                  auipc        t1, 234292
                  slt          s7, s9, s1
                  li           a2, 0xb7e9b467 #start riscv_int_numeric_corner_stream_19
                  li           t6, 0x80000000
                  li           a0, 0x0
                  li           t4, 0x293015c4
                  li           s3, 0x80000000
                  li           a6, 0x80000000
                  li           t2, 0xcd4b1288
                  li           s6, 0x80000000
                  li           s9, 0x80000000
                  li           s10, 0x0
                  addi         s9, t4, -507
                  nop
                  addi         a6, s6, -121
                  sub          a6, t6, s9
                  sub          t2, t4, a0
                  add          a6, s6, s6
                  addi         s9, a2, 1102
                  nop
                  sub          s9, t4, t6
                  auipc        a2, 192437
                  addi         s6, s10, -1171
                  auipc        a2, 481125
                  add          t4, t4, t4
                  add          s3, a6, t4
                  add          t2, s3, a2
                  nop
                  nop
                  lui          a2, 661287
                  sub          s6, a6, a0
                  add          a2, t4, s10 #end riscv_int_numeric_corner_stream_19
                  add          s8, t2, s3
                  slt          ra, tp, a1
                  sub          a7, a6, t1
                  add          t4, s1, a2
                  slti         s10, sp, 1245
                  sll          a1, a4, a6
                  sra          s5, ra, s3
                  addi         s5, s7, 480
                  slli         t2, s2, 1
                  srai         t5, a3, 6
                  slt          a1, a0, s11
                  ori          a2, t5, -1170
                  or           tp, tp, s10
                  srl          gp, s0, t5
                  and          s4, s4, zero
                  auipc        a6, 979454
                  srl          t1, a7, s7
                  andi         t2, t4, -1194
                  sltu         s9, a5, s5
                  lui          s10, 47387
                  lui          t4, 391884
                  sub          a5, s10, s3
                  slt          s8, a6, t6
                  add          sp, t2, s8
                  nop
                  srl          t1, t4, a1
                  xor          s2, s0, s0
                  addi         a7, a3, -1788
                  andi         s9, a7, 1676
                  ori          s9, t5, -1118
                  sltiu        t6, s11, 1169
                  xor          a6, s0, s8
                  srli         a0, t1, 15
                  nop
                  xori         a5, s5, 1685
                  slli         t4, s8, 11
                  srl          s8, a7, t4
                  lui          t5, 444171
                  srl          s7, a3, t4
                  addi         ra, t2, -956
                  add          a5, a2, a3
                  srai         a6, s1, 6
                  slt          s10, t4, ra
                  slli         a0, s10, 9
                  andi         a6, s1, -1680
                  addi         s8, s6, 1288
                  sltiu        a7, s4, -1791
                  or           a5, ra, t3
                  auipc        a5, 66861
                  srl          ra, s0, t1
                  lui          tp, 701219
                  srai         s3, t1, 11
                  add          gp, s6, t5
                  slt          s9, a0, t4
                  xori         tp, ra, -1460
                  ori          t4, s2, -948
                  slti         s7, s11, -1655
                  xor          a7, s11, a6
                  auipc        gp, 163408
                  or           t0, s2, a6
                  xor          t5, s5, t1
                  add          s2, a2, t5
                  slli         s0, a6, 21
                  nop
                  xori         ra, t0, -1817
                  sltiu        t6, s6, -1143
                  andi         gp, a0, -1616
                  sltu         t4, a6, s5
                  srai         a4, s3, 14
                  or           s5, a6, a0
                  slli         s8, s8, 22
                  auipc        t6, 586435
                  sra          t4, s8, s5
                  srli         s10, a3, 5
                  or           t0, s7, sp
                  srli         s3, a7, 3
                  nop
                  and          s1, t1, gp
                  sra          sp, s7, s9
                  slli         s5, s9, 20
                  xori         a0, s9, -81
                  addi         a6, a4, 829
                  addi         t0, t3, -714
                  slt          a5, s11, a6
                  slti         zero, s9, 186
                  and          s2, s4, t2
                  or           ra, t1, s6
                  sra          s5, t2, s11
                  srai         a2, a4, 25
                  sub          t0, a0, s2
                  srl          t6, s10, ra
                  sltu         tp, s8, s10
                  sll          a4, s5, s5
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
.align           2
mtvec_handler:    
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x27, x28, zero
                  csrr x8, 0x300 # MSTATUS
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 31
                  bne x8, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x8, 0x341 # MEPC
                  csrr x8, 0x342 # MCAUSE
                  li x4, 0x3 # BREAKPOINT
                  beq x8, x4, ebreak_handler
                  li x4, 0x8 # ECALL_UMODE
                  beq x8, x4, ecall_handler
                  li x4, 0x9 # ECALL_SMODE
                  beq x8, x4, ecall_handler
                  li x4, 0xb # ECALL_MMODE
                  beq x8, x4, ecall_handler
                  li x4, 0x1
                  beq x8, x4, instr_fault_handler
                  li x4, 0x5
                  beq x8, x4, load_fault_handler
                  li x4, 0x7
                  beq x8, x4, store_fault_handler
                  li x4, 0xc
                  beq x8, x4, pt_fault_handler
                  li x4, 0xd
                  beq x8, x4, pt_fault_handler
                  li x4, 0xf
                  beq x8, x4, pt_fault_handler
                  li x4, 0x2 # ILLEGAL_INSTRUCTION
                  beq x8, x4, illegal_instr_handler
                  csrr x4, 0x343 # MTVAL
                  1: la x13, test_done
                  jalr x1, x13, 0

ecall_handler:    
                  la x8, _start
                  sw x0, 0(x8)
                  sw x1, 4(x8)
                  sw x2, 8(x8)
                  sw x3, 12(x8)
                  sw x4, 16(x8)
                  sw x5, 20(x8)
                  sw x6, 24(x8)
                  sw x7, 28(x8)
                  sw x8, 32(x8)
                  sw x9, 36(x8)
                  sw x10, 40(x8)
                  sw x11, 44(x8)
                  sw x12, 48(x8)
                  sw x13, 52(x8)
                  sw x14, 56(x8)
                  sw x15, 60(x8)
                  sw x16, 64(x8)
                  sw x17, 68(x8)
                  sw x18, 72(x8)
                  sw x19, 76(x8)
                  sw x20, 80(x8)
                  sw x21, 84(x8)
                  sw x22, 88(x8)
                  sw x23, 92(x8)
                  sw x24, 96(x8)
                  sw x25, 100(x8)
                  sw x26, 104(x8)
                  sw x27, 108(x8)
                  sw x28, 112(x8)
                  sw x29, 116(x8)
                  sw x30, 120(x8)
                  sw x31, 124(x8)
                  la x13, write_tohost
                  jalr x0, x13, 0

instr_fault_handler:
                  add x28, x27, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

load_fault_handler:
                  add x28, x27, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

store_fault_handler:
                  add x28, x27, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

ebreak_handler:   
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x28, x27, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

illegal_instr_handler:
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x28, x27, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x8, 0x300 # MSTATUS;
                  csrr  x8, 0x304 # MIE;
                  csrr  x8, 0x344 # MIP;
                  csrrc x8, 0x344, x8 # MIP;
                  add x28, x27, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
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
