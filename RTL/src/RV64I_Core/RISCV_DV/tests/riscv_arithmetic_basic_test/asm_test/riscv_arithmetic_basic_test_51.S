.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x5, h0_start
jalr x0, x5, 0
h0_start:
                  li x12, 0x40000100
                  csrw 0x301, x12
kernel_sp:        
                  la x17, kernel_stack_end

trap_vec_init:    
                  la x12, mtvec_handler
                  ori x12, x12, 0
                  csrw 0x305, x12 # MTVEC

mepc_setup:       
                  la x12, init
                  csrw 0x341, x12

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x12, 0x1800
                  csrw 0x300, x12 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x485a0af0
                  li x3, 0x9619b581
                  li x4, 0x2
                  li x5, 0x511ef72c
                  li x6, 0x80000000
                  li x7, 0x80000000
                  li x8, 0x80000000
                  li x9, 0x4
                  li x10, 0x80000000
                  li x11, 0x718cae2c
                  li x12, 0x1
                  li x13, 0x0
                  li x14, 0xf4c0d2fc
                  li x15, 0x87d77300
                  li x16, 0x80000000
                  li x18, 0xa
                  li x19, 0x0
                  li x20, 0x82083b20
                  li x21, 0x0
                  li x22, 0xf3b37bc7
                  li x23, 0xbbbdf497
                  li x24, 0x32614d61
                  li x25, 0x3
                  li x26, 0xa446a783
                  li x27, 0x0
                  li x28, 0x80000000
                  li x29, 0x0
                  li x30, 0x80000000
                  li x31, 0x80000000
                  la x2, user_stack_end
main:             li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           t2, 0x701543fa
                  li           s8, 0xffffffff
                  li           s7, 0xa82de01f
                  li           t4, 0x80000000
                  li           t1, 0xe8672f78
                  li           a6, 0x80000000
                  li           a0, 0x80000000
                  li           tp, 0xcf1668c5
                  li           s2, 0xffffffff
                  add          s7, s8, t1
                  lui          t1, 160206
                  auipc        a6, 119652
                  nop
                  sub          s8, tp, s2
                  add          a0, a0, s7
                  addi         t2, t1, -1343
                  nop
                  auipc        a6, 525182
                  add          a0, s2, t1
                  sub          a6, a6, s2
                  auipc        s2, 382146
                  sub          t4, t4, s2
                  auipc        s2, 567134
                  auipc        t2, 456896
                  nop
                  addi         a0, s8, -262
                  lui          a6, 719732
                  addi         tp, a0, -218
                  add          t2, a0, t2
                  lui          s8, 954680
                  addi         s7, t4, -181
                  addi         tp, t1, 327 #end riscv_int_numeric_corner_stream_3
                  li           s1, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           s0, 0xffffffff
                  li           a5, 0xffffffff
                  li           t2, 0x80000000
                  li           s2, 0x7a590b67
                  li           s5, 0x0
                  li           t5, 0x80000000
                  li           a4, 0x200e35a4
                  li           a2, 0x0
                  li           s3, 0xffffffff
                  add          t5, a5, s2
                  nop
                  sub          a5, s1, s3
                  addi         s2, s0, -2040
                  add          s5, t5, t5
                  lui          s1, 367443
                  nop
                  lui          a2, 306098
                  auipc        a5, 504914
                  auipc        s1, 391560
                  nop
                  auipc        t5, 315131
                  sub          a4, s2, a4
                  addi         s3, a5, -467
                  add          a4, s3, s0
                  sub          a5, s5, s3
                  auipc        a2, 247459
                  lui          s1, 613406
                  sub          t2, t5, a2
                  lui          a5, 394548
                  nop
                  lui          s3, 464064
                  add          a2, t5, s1
                  add          a5, s2, s3
                  sub          s3, s2, s2 #end riscv_int_numeric_corner_stream_10
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           a6, 0x0
                  li           a4, 0x0
                  li           tp, 0xffffffff
                  li           s0, 0x0
                  li           s9, 0xffffffff
                  li           a1, 0xffffffff
                  li           t6, 0xffffffff
                  li           s10, 0x80000000
                  li           t2, 0x1737a9b4
                  nop
                  auipc        t2, 248301
                  addi         ra, s10, -1026
                  add          a1, s10, a1
                  addi         s0, s9, 505
                  lui          a1, 61226
                  add          a1, s0, s10
                  sub          a1, tp, s9
                  auipc        s10, 148795
                  sub          ra, s0, s10
                  addi         a1, t6, 239
                  add          a6, a1, ra
                  nop
                  add          a6, s9, s0
                  lui          ra, 339522
                  sub          s10, a1, a1
                  add          a6, t2, a4
                  sub          tp, s0, t6
                  auipc        ra, 91838
                  addi         s0, s0, -118
                  auipc        a1, 860044
                  addi         t2, a4, 880
                  auipc        s9, 764094
                  add          t2, t6, tp #end riscv_int_numeric_corner_stream_15
                  li           t6, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           a3, 0xffffffff
                  li           a1, 0x9692ecbe
                  li           s11, 0x80000000
                  li           s1, 0x80000000
                  li           t3, 0xd7b95bed
                  li           ra, 0xffffffff
                  li           a4, 0xffffffff
                  li           gp, 0x0
                  li           s7, 0x80000000
                  addi         s7, gp, -722
                  lui          a1, 201066
                  lui          s11, 291487
                  auipc        s11, 916280
                  auipc        a4, 927286
                  sub          t6, a1, a3
                  lui          gp, 346106
                  sub          s11, ra, t3
                  addi         gp, s11, -32
                  nop
                  addi         s11, a4, -1001
                  addi         s1, a4, 379
                  nop
                  auipc        a1, 992196
                  lui          gp, 289521
                  sub          a3, s11, ra
                  auipc        s11, 596434
                  add          ra, gp, gp
                  sub          a1, s11, s7
                  add          t6, t6, s1
                  add          s1, a1, a3
                  add          gp, ra, a3
                  addi         gp, a3, -442
                  addi         s7, t6, -2047
                  sub          s1, s7, ra #end riscv_int_numeric_corner_stream_1
                  li           t5, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           s5, 0xffffffff
                  li           a5, 0x80000000
                  li           s0, 0xffffffff
                  li           s3, 0x80000000
                  li           a3, 0x0
                  li           s7, 0xffffffff
                  li           s9, 0x0
                  li           t3, 0xec12946b
                  li           s8, 0x0
                  sub          s7, a5, s0
                  auipc        s9, 297358
                  sub          t5, s0, a3
                  auipc        s8, 302054
                  sub          s3, s8, s5
                  auipc        s5, 988191
                  lui          s9, 558287
                  lui          a3, 19401
                  lui          s5, 850628
                  auipc        a3, 876652
                  nop
                  auipc        a5, 330745
                  addi         a5, s8, 169
                  nop
                  lui          s0, 671814 #end riscv_int_numeric_corner_stream_8
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_2
                  li           s2, 0xcc89a927
                  li           s8, 0x80000000
                  li           gp, 0x80000000
                  li           ra, 0x80000000
                  li           s9, 0xffffffff
                  li           t1, 0xffffffff
                  li           a2, 0x19a93d16
                  li           t2, 0x67056dde
                  li           s0, 0xffffffff
                  lui          a2, 501388
                  add          ra, gp, a0
                  addi         s9, s2, -1177
                  lui          t1, 505521
                  add          s8, s9, gp
                  add          s0, gp, s2
                  lui          s0, 689586
                  nop
                  nop
                  add          ra, gp, t1
                  addi         t1, ra, 157
                  add          s9, a0, a0
                  auipc        ra, 867375
                  add          s8, a0, t2
                  addi         t1, a0, -345
                  addi         ra, s9, -1242
                  add          s9, gp, s0
                  add          t1, a2, s2
                  sub          s2, t1, a2
                  nop
                  nop #end riscv_int_numeric_corner_stream_2
                  xor          t3, a2, a1
                  srli         s10, t5, 2
                  auipc        a6, 465819
                  slli         zero, a4, 1
                  sub          a3, a3, a5
                  sll          a4, s4, a4
                  auipc        a6, 480456
                  sub          a3, zero, ra
                  sra          t3, a5, s1
                  lui          s9, 635008
                  srai         a6, s8, 19
                  sltu         s2, a7, t3
                  andi         s11, s8, 221
                  nop
                  sltiu        tp, a0, -675
                  sltiu        s7, s4, -21
                  xor          s0, s10, a2
                  lui          t2, 269426
                  nop
                  xori         s9, a3, 842
                  srl          a1, s6, a2
                  auipc        a0, 747021
                  ori          zero, s6, 198
                  ori          a6, a1, -1645
                  srai         s3, a2, 31
                  sra          s0, t4, s3
                  sltiu        a2, s8, -126
                  addi         s0, tp, 1936
                  srli         s11, s2, 1
                  addi         s11, t3, 598
                  sub          s4, ra, t3
                  and          s4, zero, s10
                  srai         s7, gp, 1
                  and          a2, tp, a5
                  andi         s4, a0, 287
                  srai         s5, s3, 29
                  srli         a6, a1, 14
                  sltiu        s3, s4, -615
                  sltu         s3, zero, a4
                  andi         t2, s7, -1821
                  auipc        t4, 730411
                  sltiu        s10, s4, 1422
                  andi         s1, t2, -631
                  srli         t4, zero, 9
                  andi         t5, s10, -1593
                  sub          s11, s9, t6
                  sltiu        t3, s1, -1746
                  slli         a1, ra, 18
                  nop
                  sltiu        t1, t3, -573
                  slli         s0, s11, 12
                  andi         s10, s3, 367
                  sub          s0, t6, s3
                  srl          a5, zero, s5
                  and          t2, a5, a1
                  slti         tp, t0, -1322
                  sltu         t4, tp, a6
                  ori          s2, s5, 411
                  srli         s2, s5, 5
                  slti         a5, a1, -1144
                  xor          s11, a6, t0
                  srli         s1, a5, 2
                  srai         t5, sp, 12
                  sll          s1, t1, a0
                  auipc        t4, 683744
                  srai         s5, a6, 18
                  sll          s0, s10, t3
                  nop
                  addi         t3, sp, -1191
                  and          a6, tp, s8
                  add          a6, a4, sp
                  ori          s0, s0, -63
                  andi         s0, tp, 562
                  andi         a2, s6, -764
                  srli         s0, zero, 22
                  srai         s4, s8, 20
                  and          ra, s7, t2
                  ori          s7, a4, 1181
                  slti         t5, a7, -936
                  xori         a1, a4, -1570
                  xor          s11, a1, a0
                  andi         s4, zero, 1313
                  andi         t3, s7, 1094
                  slti         a1, s9, -1752
                  sltiu        s0, t6, -1153
                  addi         a4, t6, 1950
                  srl          s5, s8, s8
                  ori          t1, t6, 1926
                  xori         zero, ra, -1304
                  add          s4, a6, s5
                  or           ra, s1, t0
                  andi         s9, t2, -541
                  andi         s10, s7, -444
                  addi         a5, a6, -1764
                  sll          s7, s4, a1
                  and          s0, t3, s9
                  xor          s5, s7, a5
                  add          ra, s9, a0
                  xor          t2, a6, sp
                  slli         t4, zero, 0
                  sltiu        s5, s6, -171
                  sltiu        s0, a6, 950
                  sltu         s5, t4, s8
                  srli         s6, t5, 13
                  auipc        s3, 175977
                  andi         s6, s10, -759
                  sltiu        s1, a2, -1583
                  sltu         t1, s6, t3
                  nop
                  sll          t1, ra, s0
                  or           gp, a0, s2
                  nop
                  xor          s5, s2, t2
                  sltu         a2, s9, s5
                  sltiu        s3, tp, 251
                  add          s0, ra, s1
                  nop
                  sltiu        s5, a5, 1052
                  ori          t5, s8, 493
                  sub          gp, ra, t2
                  or           s8, a6, s10
                  lui          s7, 438106
                  nop
                  sub          s4, t3, ra
                  slti         a4, gp, -321
                  slli         t3, t1, 29
                  ori          zero, t1, -98
                  ori          s0, a4, -1288
                  sub          zero, t0, s10
                  xori         a5, s11, -336
                  slt          gp, ra, a0
                  nop
                  srai         tp, zero, 12
                  add          a0, t6, s8
                  slt          a2, t3, sp
                  andi         s2, s2, -957
                  or           t5, s3, s7
                  sub          zero, s10, t1
                  slli         t2, gp, 27
                  xori         s1, ra, 133
                  add          s8, s0, a6
                  ori          ra, ra, -1640
                  ori          t2, a6, -1606
                  sll          a3, a4, s6
                  addi         s6, a1, 1856
                  slt          a1, a7, s3
                  xor          a6, s4, a7
                  sltu         s0, s10, t0
                  slti         ra, s10, 1995
                  addi         t3, s9, -201
                  nop
                  sub          a3, a2, t1
                  auipc        a3, 181233
                  sltiu        a1, a7, -102
                  andi         s0, s3, -839
                  sltu         s8, s0, t6
                  srl          s10, s4, a2
                  nop
                  add          a5, a4, t4
                  sub          t1, s11, s8
                  xori         a6, tp, 678
                  sltu         a3, tp, t6
                  srl          s4, s0, t4
                  slti         t1, zero, -829
                  srl          a1, a0, s6
                  srl          zero, a7, s9
                  ori          zero, s7, 449
                  xori         s0, s3, -1716
                  add          s2, ra, t0
                  sub          a5, t5, s10
                  sra          t6, t2, a5
                  srai         s3, s0, 22
                  srl          s4, tp, zero
                  and          s6, a0, s0
                  xor          t4, tp, s4
                  slli         s9, s3, 27
                  add          t2, t2, gp
                  ori          a0, t6, -1589
                  xori         t4, t4, 1117
                  or           a1, t6, s1
                  and          a1, s7, s6
                  andi         gp, s2, 1574
                  sub          a4, s1, a2
                  sra          s8, s4, s2
                  addi         s8, tp, 1063
                  sltiu        s0, s0, -648
                  srai         a3, a2, 12
                  srl          t3, tp, s2
                  lui          s4, 960629
                  lui          tp, 415092
                  xori         s1, a7, -813
                  lui          t6, 139835
                  slt          a5, a4, zero
                  sll          s10, s5, a6
                  ori          a4, a0, -1166
                  slti         s9, s6, 893
                  srli         a0, a6, 27
                  sltiu        s8, sp, -241
                  lui          ra, 962270
                  srli         s5, s6, 20
                  nop
                  add          a0, t1, a7
                  slli         t5, t2, 11
                  and          s10, t4, s0
                  xor          ra, s5, gp
                  add          t1, t6, gp
                  andi         t4, s8, -800
                  srli         s7, t3, 7
                  lui          t3, 702413
                  andi         s7, t3, 842
                  add          t1, s6, s1
                  srai         s5, t6, 13
                  and          s6, s9, tp
                  and          s5, sp, t2
                  and          s3, t1, t0
                  sll          a2, t5, s11
                  nop
                  slli         gp, a3, 0
                  srli         a3, a1, 5
                  sltu         s9, s6, tp
                  slt          s9, a6, s6
                  sltiu        a2, s1, 392
                  sub          t6, gp, s4
                  sra          s8, tp, a4
                  sra          s10, s1, s4
                  auipc        a2, 155403
                  xori         s5, s10, -1687
                  srai         a2, s8, 27
                  srl          s11, t1, s7
                  addi         a5, a0, 85
                  slt          t1, s11, s10
                  slli         s5, t5, 4
                  srli         a6, a4, 0
                  or           tp, t0, sp
                  addi         s5, t3, -339
                  auipc        a6, 790361
                  add          ra, s9, s5
                  or           a6, s6, s1
                  xor          s0, t3, s5
                  srli         a2, a4, 30
                  srli         s2, t2, 6
                  sra          s9, a5, t4
                  ori          s10, t6, 1393
                  sltu         s2, zero, a3
                  or           a2, s8, ra
                  srli         s10, gp, 4
                  srli         zero, a2, 1
                  addi         a4, s10, 911
                  srai         s0, s3, 27
                  nop
                  lui          s6, 575063
                  srli         t4, sp, 30
                  or           a6, t6, a0
                  lui          s11, 938261
                  srl          s7, a6, s11
                  add          a1, s1, s10
                  lui          t3, 898634
                  xori         s2, s6, -1753
                  andi         s8, s11, 541
                  or           zero, t2, a6
                  addi         s7, a2, -499
                  srl          a2, t5, s6
                  or           t2, t3, a0
                  srli         s4, a3, 22
                  ori          t3, a2, -1679
                  andi         a5, tp, -748
                  srli         t2, a7, 5
                  auipc        a3, 457810
                  auipc        s4, 588116
                  srai         t4, t0, 21
                  xor          s11, sp, s11
                  slt          s8, t4, a3
                  sltiu        s6, s11, 477
                  auipc        s11, 1044412
                  ori          t6, s11, 1024
                  sltiu        t4, t5, -1835
                  slt          a1, s8, s11
                  xor          gp, t6, a2
                  xor          s9, zero, a3
                  slt          a6, t0, s9
                  slt          t5, a2, s2
                  or           a5, t2, s0
                  xori         s3, zero, -1666
                  slti         s2, s11, 51
                  slli         t3, t1, 3
                  ori          t1, a3, -1962
                  nop
                  xor          ra, a5, s0
                  xor          s6, t0, s6
                  auipc        s4, 237942
                  andi         a1, tp, -1669
                  auipc        a0, 71474
                  sltu         ra, a3, a0
                  sltu         s5, a4, s3
                  addi         a0, t4, -1828
                  and          zero, s7, a5
                  nop
                  add          a5, zero, sp
                  sll          s2, gp, t5
                  nop
                  and          s1, t1, a1
                  andi         s7, t6, 1080
                  nop
                  slti         s4, t0, 1836
                  xori         a6, s5, 1982
                  slli         t3, t2, 4
                  addi         zero, t3, 692
                  ori          ra, tp, -1295
                  add          s9, tp, s3
                  sra          ra, s2, tp
                  srli         t3, t5, 30
                  xori         t5, t1, -1976
                  ori          s11, a1, -1248
                  xori         gp, s2, -409
                  addi         s9, tp, 2030
                  or           s6, a3, s8
                  add          s2, s10, tp
                  nop
                  sltu         s6, s2, t0
                  add          t6, a5, a3
                  nop
                  add          t4, a7, a4
                  srai         a6, a1, 29
                  sltu         t1, a1, t5
                  lui          a2, 665205
                  sra          gp, s8, t1
                  add          a2, zero, zero
                  slt          t4, s8, a7
                  xor          a5, a7, sp
                  xori         t4, s1, 386
                  slli         zero, t4, 1
                  addi         t2, s10, 210
                  and          a2, s4, sp
                  slli         t5, t5, 19
                  addi         zero, a5, -1514
                  xori         tp, t1, 384
                  xori         a6, a6, 1189
                  slli         a5, a6, 14
                  nop
                  xor          a5, t2, a6
                  nop
                  sltiu        a1, t6, 2012
                  sltiu        a0, s7, 677
                  auipc        s3, 338184
                  lui          s11, 440830
                  auipc        s6, 538185
                  addi         s7, a0, -7
                  sltu         s11, a2, s9
                  ori          tp, a1, 709
                  sll          s0, t6, s10
                  andi         s3, t6, -537
                  addi         s7, t1, 1541
                  sltu         tp, a3, s1
                  sll          t6, t5, t4
                  sltu         s0, ra, s4
                  sub          s6, s5, t2
                  slli         a1, s6, 18
                  sra          zero, s0, sp
                  xor          s5, a1, tp
                  and          s11, a6, a5
                  srl          t5, t3, a1
                  sltu         t1, s7, t0
                  addi         a0, a0, 1253
                  sra          zero, s8, s10
                  sra          t5, s2, a0
                  srai         t1, t0, 31
                  andi         a4, t0, -1237
                  sub          gp, gp, a1
                  or           s4, s1, t6
                  andi         t4, a7, 996
                  slti         t1, s8, -21
                  sltiu        t2, s6, -130
                  addi         s8, s10, -1456
                  srli         s8, a1, 3
                  srl          s3, t1, s6
                  nop
                  addi         s10, s4, 340
                  ori          t3, s10, -387
                  ori          s10, s10, 221
                  lui          a1, 576430
                  xori         s2, t3, 467
                  nop
                  slli         t1, s2, 29
                  srl          tp, t6, a4
                  sra          s4, s11, tp
                  add          a3, s0, s11
                  sltu         a4, s10, s7
                  andi         t5, s8, -1387
                  lui          a5, 1036778
                  slli         s1, a5, 15
                  slti         s5, t2, 516
                  slli         s0, s5, 25
                  sltu         tp, a6, a5
                  auipc        t4, 506083
                  auipc        s9, 575396
                  xor          a4, t6, t0
                  xori         a2, a1, 534
                  andi         s6, a6, -485
                  or           a0, a7, s4
                  add          t2, s10, tp
                  and          s2, sp, s9
                  add          a5, s2, a7
                  srli         t1, t3, 30
                  sltiu        s5, t1, -484
                  srai         t2, a1, 27
                  slli         a2, a7, 3
                  addi         t2, s1, -886
                  slt          a2, s6, a7
                  xor          zero, s11, s9
                  slti         a4, tp, -105
                  nop
                  andi         t2, t4, 1712
                  srl          s0, s2, a1
                  slt          t5, a1, t0
                  sltiu        t5, ra, 356
                  srl          s2, a0, t0
                  addi         s11, s4, -1675
                  srai         s9, a1, 27
                  xor          s3, s2, s9
                  lui          tp, 62107
                  sll          tp, s5, t2
                  xor          tp, a6, ra
                  sub          a5, s3, a4
                  xori         t4, s6, -193
                  sll          t2, a1, s0
                  xor          t2, s5, s3
                  srai         t3, s11, 7
                  sltiu        s9, t3, -863
                  or           zero, t6, s6
                  auipc        t1, 680823
                  and          t1, t3, a3
                  srai         s9, s6, 3
                  and          t4, t1, a2
                  slti         s6, s4, 1390
                  slti         a3, s11, 917
                  auipc        t6, 601599
                  add          s3, t4, s11
                  slti         s5, t3, 126
                  srai         s9, s9, 28
                  xor          gp, s3, t2
                  sltu         t5, s9, t5
                  add          s6, gp, s2
                  addi         s7, a7, 1282
                  srl          t4, s8, t0
                  slli         ra, sp, 31
                  slt          a5, a6, a2
                  sll          a5, gp, a6
                  andi         tp, s7, -1308
                  xori         s9, a1, -579
                  nop
                  sub          a2, a6, s6
                  srai         gp, a7, 4
                  and          ra, a0, s8
                  auipc        t4, 932553
                  xori         s11, a4, 963
                  addi         t1, a3, 404
                  add          a5, a5, a0
                  nop
                  slli         a1, s6, 7
                  and          a2, t4, t5
                  auipc        a2, 770522
                  and          s2, t3, t5
                  xor          s10, a3, s9
                  nop
                  sll          a1, s7, a2
                  slt          s5, a0, s1
                  sra          s8, zero, zero
                  srli         s7, s10, 29
                  andi         s9, zero, 25
                  nop
                  or           s2, s3, s2
                  sltu         ra, s11, s4
                  xori         tp, t2, 1293
                  andi         s10, tp, 756
                  ori          a0, t6, 831
                  xor          t2, a2, zero
                  slti         tp, t4, 105
                  ori          s8, zero, 1713
                  auipc        a5, 69815
                  lui          a5, 873543
                  slti         a5, s9, -1273
                  sltiu        ra, gp, -808
                  sll          s10, t6, t6
                  srai         t4, s1, 22
                  sll          s11, zero, s10
                  andi         t4, s10, -32
                  nop
                  sltiu        s2, sp, 1143
                  sltu         zero, a4, t5
                  and          s1, t0, s2
                  sltu         s8, t6, s0
                  auipc        s2, 960450
                  and          t2, s0, t1
                  srl          s8, tp, t3
                  slli         s11, a0, 27
                  sltiu        s2, a0, 676
                  andi         a5, s9, 289
                  slli         s0, t2, 22
                  add          a4, a4, a4
                  or           a1, t3, s2
                  sltiu        ra, t1, -5
                  slli         t1, t6, 1
                  slli         a1, s10, 5
                  xor          t5, s7, s5
                  lui          s6, 766268
                  sub          s0, gp, t0
                  srli         tp, t6, 30
                  sltiu        a5, s9, -1100
                  andi         t3, a5, 1957
                  or           a3, ra, t5
                  slt          s7, gp, a1
                  or           t6, a2, t3
                  sra          s10, t2, a5
                  sub          t3, a3, s4
                  srli         ra, s6, 4
                  nop
                  sll          a0, t5, s8
                  add          s4, a4, s6
                  srli         t4, a0, 24
                  sltu         t3, s10, a0
                  lui          s5, 396644
                  srl          t4, s9, s1
                  sll          t1, a6, a5
                  slli         a5, t0, 14
                  srai         t6, t2, 2
                  xori         a1, tp, 1820
                  add          s7, ra, t1
                  srl          s6, s2, s0
                  sub          t6, t6, zero
                  lui          t6, 232173
                  ori          gp, gp, -1493
                  nop
                  slt          s1, s0, s10
                  or           a0, zero, a0
                  sub          s5, ra, t5
                  andi         t1, t1, -409
                  addi         s9, a4, -171
                  srl          t3, a7, a2
                  slti         a0, a7, -920
                  sltu         a0, a7, t2
                  slli         s5, t0, 10
                  srli         t5, t0, 11
                  srl          a5, s1, s10
                  slt          tp, s2, t5
                  sra          s5, s6, s11
                  sll          s3, t5, a5
                  addi         a5, a6, 1501
                  and          t5, t5, s3
                  sltiu        s1, s10, -18
                  addi         s8, s9, -411
                  add          s8, t6, s2
                  lui          zero, 485387
                  li           s1, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           s5, 0xa5e0661a
                  li           s9, 0x6c761bee
                  li           s10, 0xc293634a
                  li           s8, 0x80000000
                  li           a6, 0xbff92c5c
                  li           s3, 0x8420e948
                  li           s4, 0x80000000
                  li           a5, 0x88f7197
                  li           t4, 0xffffffff
                  add          s4, s9, s10
                  sub          s1, s9, a6
                  add          a5, s10, s1
                  add          a5, s8, s5
                  auipc        a6, 341060
                  addi         s9, s3, -448
                  lui          s8, 499539
                  addi         s3, s4, -313
                  lui          s8, 330987
                  auipc        s9, 366850
                  nop
                  nop
                  auipc        t4, 375056
                  add          a5, s4, s10
                  auipc        s1, 634066
                  lui          t4, 377106
                  auipc        s3, 209863
                  auipc        s3, 743453
                  auipc        s1, 302943
                  lui          s8, 712519 #end riscv_int_numeric_corner_stream_14
                  sll          t1, s3, s0
                  sub          a0, t6, s4
                  xori         gp, s3, -1760
                  and          s10, sp, gp
                  srl          s6, s3, s7
                  xori         t2, s2, 1359
                  ori          a1, s2, 1967
                  xori         a6, t2, 1726
                  xori         a6, s1, 1853
                  srl          ra, s9, s6
                  andi         s4, s2, 1337
                  sltu         a2, s0, ra
                  add          a0, t6, ra
                  lui          ra, 940783
                  srl          t6, t0, tp
                  add          s11, t6, t5
                  sra          s1, a5, t4
                  xori         s8, a1, 1550
                  slli         tp, t3, 15
                  nop
                  addi         ra, s4, 284
                  lui          s2, 145543
                  slli         s10, sp, 26
                  sll          a0, t5, a2
                  srli         a4, t5, 3
                  and          t5, s10, a3
                  xor          s3, s4, s8
                  addi         s7, s10, 1200
                  slli         t2, t2, 6
                  and          s11, a5, s5
                  xori         zero, sp, -1360
                  srli         a1, a1, 17
                  add          gp, t4, a1
                  ori          s3, a3, -1013
                  or           t2, t5, t0
                  nop
                  srli         a5, tp, 12
                  xor          ra, t2, s2
                  and          a3, s9, s9
                  slli         s9, s3, 12
                  add          s9, a3, s0
                  auipc        s3, 384888
                  or           a2, s7, t3
                  auipc        tp, 259307
                  xor          a3, a5, a1
                  srli         a4, a2, 20
                  slt          a5, s7, a6
                  or           gp, s2, a7
                  sra          tp, sp, t4
                  sltu         a5, s9, a6
                  sltiu        s8, s10, -1741
                  lui          a3, 43740
                  ori          gp, s4, 185
                  sltu         s6, t6, t2
                  addi         a2, s11, 170
                  sra          t5, s10, a2
                  sltiu        s6, s10, -913
                  slli         t6, t1, 5
                  nop
                  sltu         t4, s6, s0
                  sll          t3, s9, s2
                  slli         t1, a1, 3
                  sltu         s8, t2, a6
                  and          a1, s3, gp
                  srl          ra, s5, t3
                  sra          a6, t3, a3
                  srli         s2, t6, 9
                  sub          s4, s5, a4
                  or           s4, t6, s2
                  lui          a5, 901167
                  nop
                  nop
                  xor          gp, zero, gp
                  xor          s7, zero, s1
                  lui          t1, 446440
                  addi         s9, t3, -1312
                  xori         a5, t0, -1882
                  andi         s4, a1, 276
                  ori          s11, zero, -799
                  sltiu        s6, ra, 38
                  slti         s1, s10, 921
                  auipc        s4, 923562
                  auipc        s11, 225607
                  add          s11, s9, a1
                  sltiu        zero, sp, -1060
                  xori         t5, s1, 811
                  add          tp, a5, a7
                  sltiu        t5, ra, 1854
                  slli         a3, s7, 1
                  srl          a0, sp, s10
                  sra          ra, t5, a6
                  lui          t3, 663468
                  nop
                  sra          zero, s8, s5
                  add          ra, a7, zero
                  xor          t1, t5, s2
                  xor          t1, a1, s8
                  sra          s7, t5, s10
                  add          a0, a3, a6
                  or           s10, tp, sp
                  xor          s6, s10, a4
                  nop
                  lui          t1, 176466
                  or           t3, s6, t0
                  sra          s9, s9, a7
                  or           gp, t4, a4
                  slli         a2, t5, 23
                  srli         s8, s6, 31
                  slli         a5, s2, 12
                  sub          a4, tp, s1
                  nop
                  lui          a6, 918104
                  auipc        s4, 475003
                  slli         t2, a4, 28
                  sra          t5, a0, s4
                  sltiu        zero, a4, -495
                  sra          gp, s8, a0
                  sltu         t1, a1, tp
                  and          gp, ra, a1
                  lui          s8, 999688
                  lui          t4, 287542
                  or           s9, a5, a6
                  andi         t3, a5, -1023
                  add          a6, a4, a6
                  add          s4, ra, s11
                  srl          s7, s7, t6
                  sltiu        ra, t0, -518
                  xori         s4, s2, -1190
                  add          a1, ra, s8
                  srli         a0, t1, 13
                  srli         s2, s9, 12
                  xor          a1, a0, a7
                  sll          t3, t4, t4
                  slt          t1, s11, ra
                  ori          a4, a0, 381
                  or           s4, a0, ra
                  xori         s10, s1, -1332
                  ori          t6, t1, -104
                  srli         t2, s6, 18
                  addi         zero, s8, -1037
                  sltiu        a1, t3, 67
                  slt          s5, s9, s9
                  sll          s11, sp, s10
                  add          t5, a6, s7
                  slli         s2, s11, 31
                  lui          ra, 591005
                  and          a3, a6, s7
                  addi         a0, sp, 413
                  sltu         t1, s6, s2
                  sltu         a5, t1, s3
                  andi         t6, s6, 248
                  ori          tp, s1, 698
                  xor          a1, a2, s1
                  srai         t6, s8, 9
                  auipc        a1, 437452
                  sltu         s0, t1, s1
                  xori         s9, s4, 2033
                  sll          s2, t4, t6
                  ori          s7, sp, 940
                  srai         a3, t3, 28
                  sra          s11, s4, t3
                  or           a6, sp, a5
                  xor          t5, a7, t2
                  or           t4, gp, t3
                  srli         t2, a7, 25
                  ori          t2, s1, 446
                  srli         s2, a0, 26
                  xori         s4, gp, 1248
                  xori         s6, t4, 1639
                  srl          s8, s7, t5
                  srai         gp, zero, 1
                  or           s11, tp, tp
                  xor          s11, ra, t4
                  sltu         t6, s1, a0
                  xor          s6, ra, t0
                  lui          t1, 433263
                  sltu         s8, s0, a7
                  and          s11, a2, s11
                  ori          a4, s11, -1575
                  and          t3, a1, t2
                  nop
                  slt          a5, t5, t6
                  slli         ra, gp, 23
                  ori          s4, gp, 909
                  xori         s1, s5, 192
                  sltu         s6, t5, a1
                  srl          a3, s7, a6
                  lui          s1, 906929
                  and          t1, s8, sp
                  auipc        a0, 291867
                  slt          gp, a6, s1
                  slli         t1, a1, 4
                  addi         s2, a6, -1734
                  slli         t4, gp, 20
                  slt          s6, t4, t2
                  andi         ra, t1, -637
                  slti         s8, s7, -151
                  sltu         s9, a6, s0
                  slli         ra, s1, 28
                  sltiu        t3, s3, 1519
                  nop
                  slti         s2, t3, 1623
                  sltu         s11, s5, t6
                  addi         s6, s4, 1397
                  nop
                  slt          a2, s7, s10
                  or           s10, a6, t1
                  addi         a2, ra, 84
                  srl          s0, s7, s10
                  ori          s6, s4, 276
                  srai         t2, s11, 15
                  sub          s9, s7, t1
                  slt          s6, t6, a3
                  sra          a1, s0, a4
                  srai         s8, t4, 31
                  auipc        gp, 889132
                  srl          a3, s5, s0
                  sll          t2, t0, tp
                  slli         s3, a1, 19
                  slt          s7, s2, s5
                  ori          a0, a3, 1766
                  sra          s5, s3, t5
                  addi         s3, a4, -1700
                  auipc        a4, 869935
                  slti         t6, s0, -508
                  srl          s1, a0, t4
                  slt          ra, s8, a7
                  lui          s11, 299674
                  or           s9, t3, zero
                  srli         tp, ra, 22
                  slt          t1, zero, a3
                  or           a4, t2, t0
                  or           s10, s5, t3
                  and          s6, tp, s8
                  sltu         t2, a6, a6
                  sub          ra, s2, s10
                  lui          s9, 80948
                  nop
                  or           s7, t6, zero
                  slli         s4, a5, 9
                  sll          a5, t5, sp
                  sub          a6, a2, t0
                  slti         s9, a6, 1551
                  slli         zero, s7, 8
                  and          a4, t0, t1
                  sll          tp, ra, s1
                  xori         t3, a6, 326
                  and          s8, s0, s10
                  srl          t1, t6, a0
                  xori         a0, s0, 1842
                  lui          s11, 293861
                  sra          t1, t2, t2
                  xori         s3, s9, 1107
                  andi         a4, s7, -1540
                  slli         s10, t1, 12
                  auipc        t3, 624450
                  xori         tp, s9, 1393
                  andi         s4, s10, -243
                  slli         t2, s5, 28
                  ori          s0, a2, 654
                  srli         s7, a5, 9
                  xor          t6, a5, a4
                  slli         t1, s11, 29
                  or           s5, t5, t2
                  sltu         zero, s9, s2
                  slti         s6, s7, -564
                  ori          t6, ra, 1241
                  sub          s11, a1, s3
                  or           s11, zero, s7
                  srai         a5, t0, 9
                  addi         a3, s1, -1372
                  xori         t2, s2, 651
                  xori         s6, t0, -353
                  and          a0, a3, s4
                  sub          a3, s6, s5
                  sub          s2, s1, t5
                  srai         a3, t5, 24
                  slti         a5, a4, -90
                  lui          t1, 971725
                  andi         t5, t5, 70
                  auipc        t5, 36493
                  srli         s2, a2, 6
                  ori          tp, s5, 742
                  sra          a3, s8, tp
                  slli         s9, t2, 14
                  srli         t5, a3, 4
                  xori         s2, s1, 731
                  nop
                  sltu         a1, ra, t2
                  ori          s11, a7, 1690
                  sra          a1, a5, sp
                  and          s8, a2, t2
                  sll          t5, a4, t3
                  sll          a6, zero, a0
                  auipc        s5, 888735
                  add          s6, zero, tp
                  xor          t3, tp, s10
                  lui          t5, 162219
                  srl          t1, a3, t4
                  nop
                  slli         a2, t2, 14
                  addi         s9, tp, 1551
                  nop
                  xor          a4, a0, gp
                  slti         s1, s1, 129
                  srl          a3, t1, s9
                  xor          s4, zero, t4
                  and          s0, s5, s1
                  add          t6, t2, s3
                  and          a5, a4, s9
                  lui          t5, 698865
                  sll          a2, t4, a5
                  and          zero, t3, s2
                  sltu         s6, s0, ra
                  xori         t3, t1, -640
                  and          s4, s0, t2
                  slti         t4, a2, 875
                  srl          t4, tp, a6
                  nop
                  srl          a0, s5, s11
                  srl          s6, t5, a0
                  addi         s9, a4, 1769
                  sltiu        s0, t6, 1109
                  nop
                  lui          a3, 736966
                  and          a4, s6, s10
                  srl          zero, s1, a5
                  srl          t6, a6, s2
                  slti         s0, s6, 1477
                  auipc        s10, 575687
                  andi         a5, t0, -1638
                  sub          t1, a4, a6
                  ori          gp, zero, -1909
                  srli         t4, t1, 19
                  and          s8, s2, s7
                  xor          t2, s2, s1
                  and          s5, a2, s4
                  srl          s3, s1, a6
                  slti         s4, a0, 1935
                  addi         zero, a0, -675
                  sub          t5, zero, s8
                  sll          a3, a3, s1
                  slt          a0, s7, a2
                  or           s8, t6, a1
                  sub          ra, s0, a7
                  sltu         ra, a7, t1
                  sub          s1, s9, t4
                  sltiu        s10, a0, -984
                  sll          a6, s6, a0
                  xor          a2, s10, ra
                  ori          t5, s10, 176
                  sra          s3, s3, s0
                  srai         t1, gp, 4
                  sub          t2, a4, a3
                  sltiu        zero, a2, 686
                  slt          t1, s5, tp
                  slli         s11, a2, 6
                  sltu         s1, t0, ra
                  xor          s4, s11, a6
                  srli         tp, a3, 24
                  slti         s11, s5, 1816
                  addi         a3, a0, -1143
                  sra          s11, a5, a1
                  srli         s4, t5, 29
                  or           zero, t6, s10
                  xor          a1, s10, s3
                  srai         t4, s11, 27
                  sltiu        s7, a5, 80
                  sltu         s9, s11, t6
                  slt          s7, s2, t0
                  sll          gp, s11, s4
                  sltu         s7, a7, zero
                  slti         a1, a4, -568
                  sltiu        s11, s5, -480
                  xor          a4, s6, t1
                  srli         gp, s9, 9
                  nop
                  sltiu        ra, a2, -1518
                  slli         tp, s7, 21
                  sra          s4, gp, s9
                  sub          a1, s0, t6
                  or           s2, a4, a4
                  sltu         s0, t5, t4
                  sltu         a5, a5, sp
                  slti         ra, tp, 646
                  sltiu        s3, s11, 1522
                  slli         s7, s4, 28
                  and          a0, a4, ra
                  andi         tp, s0, -694
                  xori         t4, tp, -1137
                  xor          s2, t4, a0
                  sra          zero, s0, t5
                  sll          tp, s6, s1
                  sltu         t2, s2, s1
                  add          a1, a1, t4
                  slti         s3, a5, -1831
                  slti         t3, a5, 1341
                  xor          t4, s10, a7
                  xor          s5, a6, t5
                  slt          s4, a5, zero
                  sll          a4, a4, s7
                  srai         s2, zero, 23
                  or           a6, s6, a0
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_19
                  li           s8, 0x0
                  li           s11, 0x11eebd6f
                  li           a0, 0x7cbe9357
                  li           ra, 0x80000000
                  li           s7, 0xffffffff
                  li           s0, 0x0
                  li           t4, 0xffffffff
                  li           a1, 0x0
                  li           s9, 0xffffffff
                  add          s8, s11, a6
                  add          t4, a6, s7
                  lui          t4, 693505
                  nop
                  nop
                  nop
                  auipc        a6, 277333
                  auipc        s8, 958444
                  add          a0, a1, t4
                  addi         ra, ra, -154
                  auipc        s0, 345748
                  auipc        s0, 134528
                  sub          t4, a1, s7
                  add          a0, s0, s7
                  auipc        s7, 542890
                  lui          s11, 143219
                  auipc        a0, 17911
                  addi         s11, s9, -619
                  auipc        ra, 457334
                  auipc        s9, 356097
                  nop #end riscv_int_numeric_corner_stream_19
                  addi         s3, s6, 428
                  andi         t4, t4, 1633
                  addi         s3, s1, -798
                  and          a4, t5, t4
                  xori         a5, s4, -965
                  srl          tp, s2, a0
                  slli         a4, s4, 7
                  andi         t5, t1, -1216
                  sltu         a4, t6, s10
                  srl          t4, tp, zero
                  slt          t2, tp, a1
                  add          a3, s1, zero
                  srai         s6, s3, 6
                  add          gp, s7, s9
                  nop
                  addi         a2, s7, 1312
                  and          t2, s11, a3
                  xor          t1, s8, s3
                  sltiu        a4, s10, 13
                  or           ra, s5, s10
                  sltiu        s5, a5, -1075
                  sub          t6, a5, a3
                  or           t1, a2, a1
                  srl          a2, t3, t1
                  auipc        a3, 966431
                  slti         tp, ra, -1008
                  lui          s3, 412952
                  slti         a0, a6, 1445
                  xor          s9, s8, s5
                  slti         t4, a3, 942
                  srai         gp, t5, 28
                  srl          s6, t6, zero
                  or           ra, a0, zero
                  lui          t6, 680826
                  slt          t6, s4, gp
                  and          s7, a7, gp
                  ori          a5, s2, 721
                  srli         a3, s1, 22
                  sra          s11, a3, s9
                  slt          ra, a0, s5
                  slt          ra, a5, s10
                  sltu         s0, t4, a1
                  srai         tp, gp, 20
                  srli         s2, t6, 19
                  add          t6, s10, t1
                  andi         a5, sp, 1489
                  srai         s9, ra, 28
                  slt          a3, a3, a3
                  or           t1, ra, s5
                  srl          s8, t3, s9
                  addi         a5, t5, -797
                  slli         a1, s5, 20
                  addi         t4, s0, 764
                  sltu         t4, t4, t3
                  lui          gp, 118807
                  sra          s5, a7, tp
                  addi         t5, t6, -1747
                  slli         s10, s3, 7
                  slt          a0, gp, s0
                  nop
                  sub          t1, a6, t3
                  or           s10, a3, s11
                  sra          gp, s10, s10
                  sltu         a3, s10, ra
                  andi         s11, t4, -489
                  srai         tp, t4, 21
                  lui          t5, 109478
                  srai         t1, s1, 31
                  slli         s5, t4, 8
                  or           ra, tp, s7
                  add          s4, s10, s4
                  xori         gp, s2, -610
                  xor          s9, ra, s6
                  andi         a3, s4, 1625
                  sll          s9, sp, a6
                  ori          a1, s0, -267
                  lui          zero, 446602
                  andi         s11, s9, 1663
                  lui          s3, 1011691
                  sub          s11, s0, a5
                  srl          t5, t6, a6
                  nop
                  srai         tp, t3, 26
                  lui          a0, 394374
                  srai         s0, a3, 30
                  auipc        t6, 828469
                  ori          tp, a3, -492
                  nop
                  sra          t3, sp, t3
                  xor          zero, t1, s4
                  sub          s11, a3, a1
                  and          gp, t2, t3
                  sltu         s10, s0, t0
                  srl          ra, gp, t3
                  ori          a5, t2, -1376
                  xor          s6, s9, a4
                  sltiu        a2, a4, -673
                  and          a6, a4, t5
                  sra          ra, ra, a6
                  add          s7, gp, t1
                  xor          a1, t4, s3
                  slli         a3, s7, 5
                  slli         s0, a7, 0
                  or           t5, s10, t1
                  xori         zero, tp, -1194
                  nop
                  slli         zero, s6, 15
                  srli         a6, s2, 29
                  sltu         t5, t3, s0
                  xori         t1, tp, -682
                  and          s4, a5, s11
                  sltiu        a0, ra, 1375
                  sltu         s10, t2, zero
                  and          s11, s3, s1
                  sub          a6, s2, t5
                  nop
                  sra          s10, a6, s11
                  sub          s1, t3, s2
                  and          s10, a0, s8
                  ori          s3, s5, -1194
                  slt          s1, a7, t5
                  sltu         a1, s0, t0
                  add          s2, s6, a2
                  srai         s9, a7, 12
                  srli         zero, s2, 25
                  ori          zero, s6, 1305
                  sltiu        s7, t6, -611
                  srli         a5, a3, 6
                  xori         s1, s1, -383
                  or           gp, s5, s4
                  xori         t4, a3, -98
                  add          s7, s9, a0
                  xor          t6, a2, a1
                  add          s4, tp, a3
                  sltu         s5, s4, t1
                  srli         t4, t0, 2
                  andi         t2, a7, 1546
                  add          a6, s4, zero
                  sll          t3, a0, t4
                  lui          s11, 146986
                  sra          t1, s7, t3
                  sra          t3, a4, ra
                  lui          t4, 13541
                  srai         s4, s8, 14
                  slli         s1, t6, 27
                  or           gp, a6, a6
                  sltu         s7, s5, t5
                  sltu         s8, s10, t5
                  ori          s8, s1, -1266
                  xori         s3, s11, -829
                  and          s10, t3, t0
                  or           gp, s0, t6
                  lui          a3, 1008961
                  sltiu        s5, s3, 859
                  nop
                  slt          s5, s8, t5
                  srl          s4, a5, s2
                  andi         s8, t4, 469
                  lui          s10, 872794
                  xori         t6, a7, 1189
                  auipc        tp, 527461
                  andi         a2, s0, 1917
                  srai         t6, s2, 3
                  srli         s3, s1, 8
                  xor          s7, s2, a6
                  slli         s9, s7, 20
                  auipc        s4, 462780
                  slt          s7, s4, s4
                  and          tp, gp, s2
                  slli         s4, t4, 10
                  xori         s7, a1, 518
                  nop
                  sltu         t2, s3, a3
                  slt          s9, s4, s7
                  srai         ra, s3, 5
                  auipc        a1, 680902
                  or           t5, zero, t4
                  sra          s0, s3, s3
                  xori         zero, t0, 275
                  addi         s8, a6, 721
                  and          s7, s10, s11
                  xor          a6, a5, sp
                  sub          s11, a1, t4
                  nop
                  sra          a1, t0, a3
                  auipc        t4, 704511
                  sltiu        s1, t0, 1075
                  add          gp, a5, a6
                  srl          s5, a6, s1
                  sra          s4, a5, a7
                  sub          s8, zero, s6
                  sub          s10, zero, ra
                  xor          a3, t3, s9
                  auipc        s0, 68089
                  lui          s10, 387011
                  srl          gp, a4, a7
                  xori         s8, a5, -1875
                  add          a3, s0, a0
                  ori          s8, a1, -1487
                  srli         a1, gp, 3
                  nop
                  srl          s4, s3, t3
                  slti         s0, a7, 1750
                  or           a6, s4, t0
                  slli         a3, s10, 28
                  andi         a6, t0, 1155
                  srai         t1, t0, 2
                  srl          s11, a0, s3
                  sltu         a0, a7, s1
                  srl          tp, s2, a0
                  sltiu        s1, s10, 1402
                  sra          t2, zero, a2
                  sra          s5, s4, ra
                  slti         zero, s10, 900
                  xor          t2, tp, s6
                  srl          s2, ra, gp
                  srl          a5, s2, s1
                  addi         t3, s3, -244
                  srli         s7, t5, 11
                  andi         t3, a7, -393
                  srai         s5, s5, 2
                  andi         t4, s2, -1446
                  srl          a6, s4, a3
                  srai         s3, s6, 5
                  sll          s5, t2, t6
                  nop
                  or           a2, ra, s11
                  sll          t4, s8, s2
                  sra          s4, s6, s3
                  or           s0, a4, tp
                  sltiu        s11, s5, -1926
                  xor          s2, gp, a2
                  xor          s6, a0, s10
                  and          t6, s6, t4
                  or           s2, t6, zero
                  xor          t5, ra, s4
                  addi         t5, s7, -1505
                  srai         s3, t4, 10
                  sub          s10, a1, t1
                  andi         s3, a1, -1511
                  ori          a0, a7, -1778
                  srai         s10, s9, 12
                  lui          ra, 342874
                  xor          t6, tp, s11
                  add          s2, s2, a2
                  sltu         s7, ra, a1
                  xori         s6, tp, 2036
                  srl          s2, gp, a3
                  sra          t5, sp, t3
                  andi         a3, a7, -1017
                  sll          s6, s3, s0
                  nop
                  sub          s1, gp, t6
                  slti         t6, tp, -1956
                  sub          a6, sp, s1
                  sltu         tp, s5, tp
                  slti         t1, t3, 566
                  andi         s2, s8, -899
                  sll          a0, a2, a0
                  lui          ra, 74477
                  slt          s2, s2, s1
                  srai         s0, t6, 30
                  sra          a0, s3, s1
                  sra          s5, a1, a3
                  add          a1, t4, s1
                  sltu         s7, s11, s2
                  srli         s8, t3, 30
                  li           s3, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           s10, 0x0
                  li           t6, 0x0
                  li           a4, 0x80000000
                  li           s9, 0x6b52c91e
                  li           s2, 0xc1c85355
                  li           t4, 0xd49aec13
                  li           a2, 0x80000000
                  li           s8, 0x4eb35261
                  li           s4, 0xffffffff
                  add          a2, s3, s9
                  auipc        s8, 814777
                  lui          s8, 582749
                  sub          s2, t6, s4
                  add          s8, s3, s4
                  addi         t4, s2, -1404
                  nop
                  lui          t6, 955916
                  addi         s4, a4, 1005
                  nop
                  add          t4, s3, a4
                  auipc        s8, 572497
                  lui          t6, 153526
                  nop
                  sub          t4, s4, s4
                  addi         s4, s8, -312
                  add          s9, a4, s2
                  nop
                  nop #end riscv_int_numeric_corner_stream_7
                  auipc        t4, 109996
                  srli         s6, t2, 0
                  sub          t3, s7, sp
                  sltiu        s4, a5, 867
                  and          t4, a5, a0
                  nop
                  or           t6, zero, s8
                  sub          t6, a6, a1
                  srl          s9, a3, tp
                  ori          s7, sp, 1025
                  andi         s2, s2, 1518
                  slti         a1, t1, 531
                  andi         s7, a1, -343
                  addi         s0, a4, 1359
                  add          s5, s2, t5
                  sra          s0, a5, t0
                  slti         s1, s5, 1652
                  ori          s6, sp, -106
                  lui          s1, 200693
                  sltiu        a0, a6, 1275
                  auipc        a1, 323288
                  sltiu        a2, s6, -1752
                  andi         a6, a5, -706
                  slt          s11, a7, s7
                  srli         t1, a4, 24
                  slti         a5, a6, -141
                  sra          t4, zero, gp
                  slt          s6, t6, s6
                  srai         s11, a2, 25
                  sub          a6, s11, s11
                  sub          a3, t4, a3
                  xor          gp, zero, t4
                  sltu         a0, t3, t1
                  xor          a4, a0, t3
                  srli         t2, s6, 31
                  slt          s7, t1, a3
                  sra          s11, sp, s10
                  sra          tp, a7, t6
                  nop
                  xor          a4, t3, a5
                  andi         a0, s8, -1731
                  srli         s5, a2, 24
                  slli         t2, s8, 15
                  srli         a2, t5, 23
                  slt          a0, ra, s4
                  sltu         s7, s11, a0
                  or           s7, tp, s0
                  sltu         s10, t6, s0
                  ori          s0, ra, 1099
                  nop
                  andi         ra, a5, 424
                  sltu         s8, a2, tp
                  xor          s11, s2, s0
                  xori         s1, tp, -376
                  and          s8, t6, s10
                  sltiu        s5, s1, 2008
                  ori          t4, t0, 1071
                  auipc        a0, 151883
                  andi         a4, a6, 1816
                  sll          a1, s10, ra
                  slti         s9, s6, 321
                  and          s4, a5, t0
                  sra          a0, s8, s2
                  srl          a5, s3, t5
                  slli         s7, gp, 9
                  addi         tp, t5, 1652
                  sub          a4, gp, t4
                  nop
                  slli         s7, t0, 7
                  nop
                  nop
                  sll          s0, t5, s4
                  addi         gp, a5, 703
                  sub          s10, s11, t6
                  srai         tp, a5, 29
                  or           tp, a6, s10
                  srl          tp, s5, s6
                  sub          s9, a2, t3
                  srli         s11, t2, 27
                  slli         s2, t1, 23
                  add          s11, gp, s7
                  xor          a1, s3, t5
                  sltiu        t4, a2, 494
                  slli         a2, s7, 9
                  slli         s3, s10, 0
                  add          a5, a7, zero
                  srli         a2, s7, 1
                  slti         a6, s6, -2028
                  slli         s4, t4, 27
                  xor          s8, s11, a0
                  addi         s6, t1, 1713
                  xori         s7, a5, -159
                  or           s3, s2, s11
                  nop
                  sra          gp, a2, tp
                  addi         a6, s11, -395
                  sra          t3, a3, a7
                  sltiu        s3, t4, -1004
                  nop
                  slti         gp, a0, 1435
                  or           a3, s8, s11
                  xori         gp, s1, 710
                  slli         ra, a7, 24
                  slti         ra, t2, 346
                  slti         s0, sp, -732
                  sltiu        a0, s1, -63
                  slli         a4, a3, 16
                  srai         tp, s4, 4
                  auipc        a1, 794508
                  xor          s6, tp, t5
                  auipc        a6, 643934
                  xori         gp, s1, -2028
                  srl          t1, a7, a2
                  srl          s0, s3, t1
                  slli         a6, s8, 6
                  slli         s1, a3, 8
                  slli         t4, a2, 27
                  slli         t3, s7, 30
                  xor          t3, s1, t5
                  add          s10, s2, s9
                  andi         a2, a2, 1099
                  add          a2, a3, s0
                  sra          a2, s4, t0
                  srai         s9, zero, 14
                  andi         s1, s3, -485
                  slli         t6, a2, 13
                  slti         s3, s1, -1032
                  slli         s1, s6, 23
                  or           s6, ra, ra
                  sll          tp, a2, s11
                  lui          gp, 882041
                  sub          s1, t1, a4
                  sll          t2, a1, t2
                  srli         t6, a2, 27
                  addi         s2, s5, 389
                  lui          tp, 950431
                  auipc        t4, 162619
                  slt          s0, s1, a5
                  lui          a5, 367869
                  and          s8, a4, s6
                  slti         gp, s0, -166
                  sub          s4, s1, sp
                  sll          s1, a7, t0
                  srli         a1, s4, 3
                  lui          s6, 954050
                  or           a5, zero, a6
                  xor          a4, a0, a1
                  nop
                  sub          gp, t0, s5
                  add          s10, t3, t4
                  auipc        s6, 305751
                  srli         gp, a4, 3
                  andi         s5, t0, 1767
                  addi         t5, s6, -1552
                  sltiu        t6, a7, 1404
                  sub          a3, a5, ra
                  xori         t1, s7, 517
                  xor          s7, s4, a4
                  slli         a6, s6, 24
                  addi         s6, s11, -1622
                  sltiu        zero, t3, 1841
                  sltu         s0, s7, a1
                  lui          s4, 760223
                  ori          s7, a1, -781
                  and          a0, a2, a3
                  sltu         s2, a5, t4
                  sltu         s10, s11, a7
                  andi         tp, sp, 1625
                  sra          ra, t0, s1
                  slti         t5, gp, -233
                  slli         t1, a5, 6
                  srai         a5, a0, 6
                  srai         t2, a3, 30
                  sltu         a2, s1, s10
                  add          s10, s9, a2
                  xor          a0, t0, a0
                  sll          a2, s1, s5
                  and          t6, a5, sp
                  xor          t3, s9, a4
                  add          s0, s8, s5
                  add          s4, zero, t6
                  srl          s0, t1, s2
                  and          s2, a2, tp
                  sltu         a3, t1, s5
                  andi         s11, a0, 491
                  sltiu        s7, a6, -845
                  nop
                  slli         a3, s7, 10
                  sltu         a6, s8, s1
                  auipc        s3, 416533
                  nop
                  slt          t4, ra, ra
                  sll          tp, tp, a0
                  sltu         t6, zero, s5
                  xori         s9, t4, 1143
                  sub          zero, s1, t0
                  sll          a6, a6, a0
                  slt          s2, a1, a6
                  srli         t6, t2, 28
                  xori         s0, a1, -1962
                  sltu         s9, s8, s1
                  sub          a2, a5, a7
                  sub          s11, s11, s10
                  and          t2, t6, zero
                  lui          s3, 838367
                  sltu         t5, s1, ra
                  srli         s2, s9, 19
                  srl          a2, s7, s9
                  slli         a3, s1, 17
                  lui          gp, 471773
                  srai         a4, t4, 7
                  slt          zero, a6, s11
                  addi         a1, t3, 58
                  srli         zero, t5, 18
                  sltiu        gp, s3, -12
                  srl          s10, a5, t4
                  sltu         s9, ra, gp
                  andi         s10, a2, -1765
                  sltu         s6, t2, ra
                  slti         s6, s7, -926
                  sra          t3, a5, a4
                  slti         zero, t0, -1725
                  sll          a3, a3, a5
                  srl          s2, a2, s11
                  ori          s4, a0, -1913
                  srl          s6, s1, t4
                  add          t2, s10, t3
                  srai         t2, a5, 18
                  slti         s4, a3, -1021
                  sra          a5, ra, s9
                  srli         tp, s6, 10
                  ori          s6, a5, 1154
                  andi         a6, a0, 1690
                  addi         t5, a3, 1843
                  sltiu        s5, t1, -1400
                  slti         a0, a7, -240
                  sub          s0, ra, zero
                  or           s5, t3, s3
                  lui          t6, 980103
                  xori         a4, s0, -588
                  srli         s10, s5, 26
                  addi         a6, s8, -1569
                  sll          t3, a6, s8
                  xori         t5, ra, 345
                  ori          gp, ra, 1528
                  ori          t2, a3, -1006
                  lui          s10, 192423
                  lui          t6, 605507
                  slti         s2, s5, 835
                  slti         s9, s9, 1166
                  andi         zero, s3, -1219
                  slli         t6, a1, 8
                  xori         gp, t2, 1943
                  srl          t4, t6, s6
                  xori         a0, a6, 1740
                  add          s8, s4, a4
                  nop
                  add          t5, a4, s7
                  sltu         t4, s7, s4
                  slti         s6, a7, -1667
                  srl          a4, a6, a0
                  and          a3, t5, a5
                  xor          s2, t5, ra
                  auipc        s0, 170984
                  srl          a6, a5, t6
                  add          s10, t6, s4
                  sra          t4, s5, s7
                  sll          a2, s8, t5
                  srai         s10, a5, 3
                  srli         t4, ra, 28
                  or           s5, a1, s3
                  sll          tp, a6, t4
                  slli         s8, s2, 17
                  srai         a4, t0, 24
                  srli         s10, a3, 31
                  ori          s3, a5, 1332
                  and          t4, a3, t4
                  auipc        s11, 638322
                  slli         a4, gp, 2
                  sra          t2, s2, gp
                  sub          s5, a1, t5
                  sltiu        s7, sp, 729
                  ori          s11, s3, -1620
                  srl          a1, t5, s7
                  xor          t6, s3, a4
                  or           s0, s8, a1
                  sra          s10, a5, t4
                  slt          t1, s2, s8
                  xori         t6, a7, 1907
                  xori         a1, t4, -502
                  or           a4, t6, a1
                  auipc        ra, 594050
                  addi         a1, t0, -1316
                  slli         s7, a3, 4
                  slli         s2, a5, 17
                  xor          a5, a0, s4
                  lui          a1, 572714
                  sltu         t3, s0, s8
                  slli         s11, gp, 7
                  andi         zero, s5, -43
                  andi         tp, s4, -1853
                  sub          s6, s6, a5
                  nop
                  ori          s4, t5, 397
                  xori         s4, s1, 330
                  or           tp, a7, t2
                  sltu         s3, a2, t3
                  and          s0, s7, tp
                  or           t4, t3, s11
                  sltiu        s1, s5, -1980
                  slt          tp, t5, t3
                  srl          a5, t5, s7
                  addi         s7, s1, -1633
                  add          s3, a2, t4
                  xori         s1, s8, -717
                  sub          a4, s2, s10
                  slti         a6, s5, -1398
                  slli         zero, s10, 24
                  sltiu        a6, s8, -1870
                  slt          t4, s9, t5
                  sub          t4, s0, sp
                  sra          a0, s11, s8
                  or           a2, a3, s0
                  nop
                  sll          a1, sp, s0
                  xori         t3, a5, 1390
                  xori         s9, tp, -1540
                  slt          a5, gp, s8
                  or           a5, sp, a2
                  sub          s11, t3, a2
                  add          t5, a1, s4
                  slti         s11, t3, 1424
                  sltu         s3, s5, s7
                  slti         a1, tp, -1600
                  sltu         zero, t4, s1
                  srai         s1, s3, 16
                  sll          t6, s7, s8
                  slti         s1, s4, 1116
                  xori         a1, s11, 1943
                  srl          zero, sp, zero
                  auipc        a1, 189032
                  sub          s6, s2, s0
                  slti         a6, ra, -2012
                  srai         t2, a5, 7
                  sltiu        s9, t2, -633
                  xor          gp, s7, s2
                  and          s1, a0, t2
                  srl          s2, s10, t3
                  sub          a3, zero, s3
                  lui          s6, 1020229
                  slti         t6, t2, 1187
                  or           t2, a3, t5
                  xor          s7, a2, s6
                  xori         t1, s1, -300
                  sltiu        t6, t4, -733
                  lui          s5, 942257
                  add          a3, t3, zero
                  slti         t3, s11, -1994
                  sltu         a6, s11, t3
                  nop
                  nop
                  srl          t4, a0, ra
                  or           s6, a5, t2
                  andi         s7, t2, -493
                  sll          a3, s0, t5
                  srl          s5, s3, s1
                  lui          ra, 8153
                  addi         a0, s3, 1372
                  xori         s10, a0, -1418
                  xor          s8, t0, a3
                  or           s1, a1, t1
                  andi         a5, a2, -468
                  srl          t4, a3, t1
                  slli         s9, ra, 8
                  sub          t6, s11, s11
                  xori         t4, s8, -1632
                  sra          s9, s8, s8
                  xori         a3, t2, -1961
                  srl          a4, a2, zero
                  lui          t6, 639835
                  srl          s9, a7, s0
                  slli         s7, a7, 18
                  xor          s11, s7, t4
                  srai         a6, s4, 29
                  xor          s3, a0, t1
                  slli         s6, t4, 11
                  andi         t3, s2, 11
                  sub          a2, a2, s4
                  ori          s2, a3, 1765
                  srl          s10, a7, s8
                  slt          a1, t0, t5
                  slli         a5, s3, 27
                  lui          s8, 293245
                  or           a4, ra, s10
                  sltu         a1, a4, a1
                  addi         s11, s1, -1547
                  sll          s5, a3, a3
                  srai         t6, gp, 21
                  sltiu        s1, s3, -1159
                  sll          s7, s9, t0
                  xor          s3, s4, t3
                  slli         s0, a3, 5
                  sltu         t2, a5, s9
                  nop
                  nop
                  sltiu        s9, t0, 402
                  xori         s4, a1, 175
                  and          s7, a7, t3
                  xor          tp, s2, s3
                  sltu         a2, a2, a6
                  slti         ra, t3, 790
                  andi         s10, a4, -786
                  xori         t5, t5, 83
                  slli         s1, a1, 10
                  srai         s10, a2, 29
                  xori         a4, s6, 1493
                  slt          t1, a1, a5
                  auipc        a6, 836168
                  xor          s7, t3, s9
                  nop
                  lui          a5, 938752
                  nop
                  sub          s2, t0, a4
                  and          a2, s0, t5
                  auipc        t6, 1013793
                  addi         tp, a3, -1688
                  ori          a6, gp, 255
                  sltu         a5, s0, s10
                  auipc        t6, 596622
                  slt          s9, s11, a3
                  srli         t4, tp, 11
                  slt          t6, ra, t2
                  lui          s7, 603721
                  sub          a4, s6, s6
                  srli         a2, a0, 12
                  ori          s3, sp, -1803
                  slt          a1, s6, a0
                  srli         s5, s10, 15
                  slt          s1, s9, a4
                  sltu         t2, gp, sp
                  addi         ra, t4, -1844
                  xor          gp, t5, s7
                  srai         a4, a7, 17
                  sltu         t5, a5, a2
                  sub          a1, s6, t6
                  add          a4, s6, t1
                  andi         s7, a6, 1793
                  nop
                  or           t5, t3, t6
                  auipc        s1, 107905
                  sub          a4, s8, a1
                  or           t1, s6, s10
                  sltu         s3, s3, a4
                  and          s7, ra, s6
                  nop
                  sltiu        t6, s10, -1581
                  srai         a6, s10, 10
                  xori         a2, s2, 1412
                  lui          a1, 390164
                  sltu         t3, sp, ra
                  slti         a3, s3, -1792
                  sltiu        s8, s10, 1930
                  srl          ra, t2, t2
                  addi         s6, a6, -1863
                  xori         s2, s2, 1466
                  sub          a5, gp, ra
                  srai         s5, a5, 17
                  sub          a5, a4, t4
                  slt          a6, a5, s7
                  xori         t1, ra, 241
                  sltu         s9, s0, tp
                  xor          a2, a4, s10
                  add          a1, t5, a5
                  andi         t2, a2, -226
                  slli         zero, s2, 28
                  sltiu        a6, t0, -2048
                  sltiu        tp, gp, 520
                  slti         a3, a2, 261
                  sub          a5, t4, ra
                  xori         s4, t2, 824
                  xor          t5, s9, zero
                  xor          a2, a6, s6
                  sub          s4, t0, t5
                  and          t5, a2, tp
                  add          zero, gp, s4
                  add          t6, tp, t2
                  slti         t3, t1, 348
                  nop
                  add          s4, t2, s0
                  slt          s3, t5, a0
                  slli         s9, a6, 0
                  slt          t1, tp, t5
                  lui          zero, 931620
                  sub          tp, s2, ra
                  srl          a4, a7, s7
                  srai         t4, a1, 26
                  srl          a0, s9, tp
                  slli         s8, sp, 25
                  nop
                  srai         t4, a4, 1
                  slti         s0, s10, 350
                  nop
                  add          t2, s8, t4
                  srai         s4, t4, 29
                  sub          t2, t5, a0
                  srl          a1, t6, s10
                  nop
                  srl          s9, s7, t0
                  sll          a3, s7, t6
                  sll          s11, a2, s1
                  auipc        a0, 422719
                  ori          t1, t3, -1078
                  sltiu        t6, s6, 1856
                  slti         a0, s6, 1679
                  sra          s4, s8, s10
                  srl          a6, t1, a4
                  srai         s8, sp, 13
                  addi         t5, s8, -1152
                  sub          s5, s0, a6
                  auipc        s0, 391315
                  andi         s2, t3, 423
                  slt          s10, gp, s4
                  sltiu        t2, s7, -1861
                  lui          t5, 20474
                  srai         gp, s1, 7
                  sra          t3, a7, t2
                  srai         ra, a0, 20
                  and          s8, ra, a3
                  add          tp, a1, sp
                  slt          s7, s1, a7
                  andi         s0, a1, -1978
                  lui          t6, 76965
                  auipc        s4, 547813
                  xori         t6, s6, -43
                  or           a0, sp, gp
                  slli         a6, a3, 21
                  add          t2, s8, a5
                  sltu         a5, t0, s4
                  sra          zero, t2, zero
                  slli         s10, s8, 25
                  sll          s11, t0, t3
                  srai         s0, t2, 20
                  ori          t4, s2, -1520
                  srl          t5, t4, zero
                  slt          s7, t0, s6
                  addi         s2, s5, 12
                  xor          s6, s0, gp
                  auipc        a3, 147134
                  and          a0, t0, t3
                  addi         s7, gp, -296
                  sub          zero, s1, s3
                  add          t6, a3, s10
                  andi         s10, s3, 638
                  and          s7, t1, t2
                  sltu         t6, s11, t4
                  slli         s7, ra, 18
                  sub          s1, t0, sp
                  lui          t5, 870497
                  sltiu        s6, t3, 1180
                  sll          a2, a0, t6
                  or           s0, gp, s0
                  lui          tp, 630948
                  srl          a0, sp, t0
                  srai         a3, s5, 6
                  ori          s3, t6, -1300
                  srl          gp, t3, a3
                  sra          a4, s9, s9
                  sll          s0, t1, a2
                  srl          s1, zero, s0
                  sltu         a4, s3, s10
                  add          a0, t1, s8
                  sltu         s7, s11, sp
                  add          a3, a7, s5
                  ori          s2, s6, 911
                  sll          s5, s0, a7
                  xor          t6, t0, a2
                  or           gp, t1, a5
                  or           s9, a5, tp
                  srai         s11, zero, 7
                  srl          s11, a7, a6
                  sll          a4, t2, t1
                  or           s0, tp, sp
                  or           s7, a1, s0
                  auipc        s8, 674263
                  ori          a2, tp, -1314
                  addi         t3, a7, -864
                  and          t1, ra, t4
                  sltu         s10, s8, a2
                  srai         s7, t5, 3
                  andi         s7, a0, -1346
                  slt          zero, s1, t6
                  add          s11, s0, gp
                  slt          s3, zero, a5
                  add          t5, a4, s10
                  sll          t1, a1, s8
                  srli         s5, zero, 18
                  xor          a3, a0, a4
                  sltiu        s1, s5, -277
                  slt          s10, t0, a6
                  add          s6, a1, sp
                  sub          s0, a3, a6
                  add          gp, t3, s1
                  nop
                  srli         ra, t4, 6
                  slti         a5, sp, 1422
                  nop
                  srli         t6, s10, 27
                  auipc        tp, 755451
                  xor          t4, s2, a2
                  lui          t5, 883953
                  andi         s2, t0, -205
                  srai         zero, s3, 27
                  nop
                  slli         a0, a3, 4
                  slti         s1, s6, -1857
                  srai         gp, t5, 16
                  lui          zero, 937554
                  slli         t3, ra, 11
                  andi         s6, s3, -2041
                  slti         a0, a5, -220
                  sra          s9, a6, t1
                  srli         s6, t4, 14
                  xor          a5, s11, a0
                  slt          a6, s8, s7
                  auipc        s9, 929403
                  xori         s5, a6, 87
                  ori          s11, a3, 1780
                  slli         a4, gp, 4
                  andi         s0, s9, -1468
                  or           t4, gp, t2
                  add          t4, s10, s5
                  addi         gp, t6, 672
                  or           a5, s3, tp
                  sra          a6, s8, s5
                  ori          a1, t1, -1479
                  slli         t5, t4, 20
                  xor          t3, s6, s7
                  sltu         s10, s11, a5
                  or           t2, s7, gp
                  sra          ra, a6, a3
                  auipc        a3, 1017510
                  or           gp, t1, t1
                  sra          s11, t5, s1
                  slt          s0, a3, s5
                  sra          t1, a2, s10
                  auipc        a5, 323152
                  srl          s4, t0, a4
                  sub          s4, s6, s4
                  and          a5, s3, a5
                  slti         s5, tp, 443
                  sltu         a4, gp, a0
                  and          t5, sp, s6
                  sll          a6, a1, a2
                  nop
                  srli         tp, s11, 1
                  xor          s1, s6, s2
                  slt          a6, s10, a1
                  lui          t6, 546038
                  srli         ra, s8, 14
                  srai         s11, s2, 31
                  slti         t5, s11, 250
                  sltiu        a5, a3, 784
                  xor          ra, s2, s9
                  slti         a6, a7, 593
                  slt          s1, t4, t0
                  sltu         ra, s4, a2
                  sll          t4, t3, t6
                  andi         s6, s3, 1656
                  srl          t6, s11, t1
                  sltiu        gp, s4, -1854
                  xor          s2, zero, s8
                  srai         t4, s4, 20
                  andi         a3, gp, 1397
                  sltu         tp, s7, t0
                  sll          s1, s1, t6
                  add          t4, s10, s7
                  auipc        s5, 863743
                  sll          s11, a1, a3
                  xori         zero, a5, 78
                  sltiu        s9, a2, 827
                  sra          t1, a5, s11
                  and          s11, sp, gp
                  slli         s4, a2, 14
                  lui          t3, 79763
                  srai         ra, ra, 21
                  slt          s7, s9, t6
                  andi         a1, s9, 347
                  sltu         s7, gp, sp
                  lui          a3, 271279
                  sub          s9, a7, t3
                  auipc        t2, 559759
                  nop
                  add          a0, s4, gp
                  sub          a0, ra, s2
                  add          s8, s3, a4
                  and          s7, a4, s8
                  andi         t2, s4, 250
                  auipc        t3, 211284
                  auipc        t3, 20865
                  or           tp, s4, a6
                  sra          s5, tp, s5
                  sltu         s7, s0, t6
                  slti         s7, s4, -1635
                  srl          s4, s4, a5
                  slli         tp, t1, 15
                  addi         s8, s7, -442
                  sub          zero, s2, s1
                  lui          ra, 255927
                  srl          t5, t6, t6
                  ori          t2, s7, 1868
                  slti         s4, sp, 1827
                  xor          t3, s11, gp
                  sll          s2, s1, s10
                  sltu         zero, s11, gp
                  add          a1, a2, a7
                  srl          gp, s3, s5
                  sub          a2, a2, s2
                  auipc        gp, 111798
                  sub          t4, t4, t2
                  addi         ra, s10, 188
                  sll          a4, t0, tp
                  slti         a4, t3, -410
                  srl          t4, t0, sp
                  addi         t2, s2, -731
                  auipc        t6, 256794
                  ori          a3, t0, 806
                  srli         a4, a2, 1
                  slti         a4, s0, -1276
                  lui          a0, 651586
                  add          a6, s2, s6
                  nop
                  sltiu        t5, tp, -910
                  srai         s11, t2, 14
                  sra          s2, a3, a2
                  xor          a4, tp, s8
                  srai         s6, s7, 7
                  sub          s6, t4, ra
                  sra          s0, zero, s0
                  auipc        s3, 252489
                  add          s1, tp, a3
                  auipc        a3, 448639
                  sltu         a6, a2, tp
                  srl          a0, sp, s2
                  xori         s3, a3, -461
                  xori         s0, t0, -218
                  sltiu        s9, sp, -202
                  sub          t5, gp, t5
                  addi         zero, a5, 863
                  slli         t4, a3, 27
                  auipc        t1, 452864
                  or           s7, s2, sp
                  nop
                  srli         a0, s3, 4
                  slt          t4, s4, sp
                  xori         s9, t0, -1621
                  slti         s1, s0, -519
                  slli         a4, s9, 15
                  sll          t3, s2, s5
                  andi         t4, s11, 1004
                  srai         s8, a1, 23
                  sub          t3, a3, a6
                  sra          s1, zero, a2
                  sll          t2, s10, zero
                  andi         a6, a4, -145
                  sll          a0, a7, t2
                  andi         s3, t2, -300
                  or           s0, a7, s1
                  add          t3, a0, a2
                  sltiu        a1, s3, -767
                  sltiu        s7, s2, -1660
                  addi         s9, tp, 1622
                  sltiu        gp, s3, -163
                  ori          a6, a1, -1968
                  srli         zero, s9, 2
                  srai         s6, a0, 9
                  sra          s5, t1, t3
                  slti         s6, s9, -1321
                  nop
                  srai         s8, gp, 30
                  and          a2, a7, s6
                  sub          ra, t6, a0
                  srl          s0, s8, s4
                  andi         gp, zero, -106
                  sll          s10, s6, a0
                  add          t1, t3, s6
                  sltu         a3, a2, s3
                  sltiu        s8, t6, 1968
                  andi         a2, t1, 925
                  auipc        a6, 29904
                  addi         s10, zero, -382
                  srli         s3, s7, 12
                  sltiu        gp, a5, -593
                  lui          s11, 808714
                  slt          s1, s7, a1
                  slti         zero, t3, 1496
                  sll          t4, s4, tp
                  slt          ra, s2, a2
                  sltu         s7, s9, s1
                  sll          a4, a2, s1
                  sltu         s1, gp, s5
                  ori          a1, s6, 14
                  sub          a1, t6, s5
                  sltiu        s7, s5, 464
                  sltiu        s3, a7, 463
                  srli         a1, s7, 23
                  xor          a2, a7, s7
                  sll          zero, s11, s9
                  or           s3, s10, a2
                  auipc        s3, 419572
                  or           t2, s2, a4
                  srl          gp, a7, s0
                  slli         a1, t5, 3
                  sltu         a3, t1, s4
                  sll          a4, s8, t1
                  lui          s6, 722597
                  slt          t6, a7, t4
                  add          t1, a3, a6
                  sll          t1, a6, t2
                  lui          t5, 29828
                  sra          s5, t4, t1
                  addi         a2, t4, 826
                  auipc        a1, 721040
                  andi         s8, t3, -1533
                  andi         s11, zero, 1803
                  srai         s9, s10, 31
                  lui          s5, 780820
                  lui          t4, 751941
                  xori         tp, a4, -480
                  andi         a2, tp, -1211
                  xori         a1, a5, 2026
                  sra          t6, s5, s3
                  srai         a4, t0, 25
                  slti         t5, t1, 653
                  add          a5, a2, a2
                  slli         a6, t1, 14
                  sll          s10, t5, t2
                  add          s9, ra, gp
                  lui          s11, 999141
                  and          a0, s7, tp
                  and          a4, s7, s4
                  srl          t1, t2, ra
                  srl          a5, a3, ra
                  sra          s9, s7, s2
                  xori         s6, a6, 1414
                  lui          s1, 291214
                  sltiu        a0, s4, 982
                  sltu         a4, t2, t0
                  sub          a1, s2, a4
                  andi         s10, s5, 287
                  xor          tp, a2, s0
                  auipc        zero, 488521
                  sltiu        a6, s8, 96
                  addi         t1, t3, 1026
                  xori         t3, a1, 1071
                  ori          t1, s3, 560
                  slt          a1, tp, s1
                  sra          a5, zero, t1
                  ori          s5, s4, 883
                  lui          s1, 775034
                  sra          s5, t3, sp
                  andi         a4, a6, 536
                  andi         t5, a3, -1712
                  sll          t3, t6, zero
                  or           t1, s4, a0
                  slli         a4, a6, 16
                  srl          ra, a1, s1
                  andi         s8, t4, 1974
                  slti         t3, s7, -1957
                  auipc        s0, 1045303
                  sra          a2, a4, a7
                  slt          tp, a7, ra
                  slt          s4, zero, a5
                  add          s8, s6, s10
                  auipc        s0, 68158
                  sub          t3, s6, ra
                  srli         gp, t1, 19
                  and          a2, s4, t3
                  slli         a0, a4, 10
                  andi         s11, t0, -1727
                  srai         a0, s1, 2
                  slli         t3, t3, 7
                  sltiu        s7, a3, 1779
                  sltu         s7, a2, t3
                  slt          t5, s0, sp
                  andi         s6, a1, -721
                  nop
                  sra          s1, t0, s1
                  slt          s5, a2, s1
                  sltiu        s7, tp, 1277
                  slli         s11, a4, 20
                  andi         t3, t6, 811
                  andi         gp, a3, 1720
                  slt          s6, a7, ra
                  ori          t3, a6, -1322
                  xori         t3, s11, -1986
                  sll          s7, zero, s5
                  sltu         a6, sp, a4
                  slti         ra, sp, -1735
                  or           zero, tp, s3
                  add          a3, s6, a4
                  xori         s9, t1, 690
                  slt          a6, gp, t1
                  slti         a3, t6, -633
                  srl          s8, gp, s10
                  slt          zero, ra, a3
                  slt          a1, s9, s5
                  srli         ra, a6, 7
                  nop
                  sub          a6, s9, zero
                  srai         t3, a4, 25
                  andi         s1, a6, 1903
                  slti         zero, a0, -592
                  sra          a5, s10, s1
                  sltiu        s7, gp, 1513
                  slt          t3, s6, s3
                  lui          s11, 995463
                  sub          t5, a6, zero
                  xori         ra, a0, -550
                  add          a0, s9, s9
                  lui          s7, 733555
                  nop
                  addi         gp, s4, 11
                  add          a1, t1, t0
                  xor          a1, a1, zero
                  auipc        s4, 116556
                  auipc        tp, 836403
                  addi         s3, s1, -150
                  nop
                  addi         s10, s3, -852
                  sltiu        a0, s1, 566
                  slti         t1, t0, 386
                  lui          s7, 791414
                  sll          s8, t0, t0
                  sltu         s4, ra, a4
                  lui          zero, 921554
                  sll          s6, t1, t3
                  lui          s9, 1004536
                  sub          a1, s5, t0
                  srl          s1, t5, s0
                  srl          s1, s5, s9
                  lui          s7, 58165
                  srl          gp, a4, s1
                  add          s10, a5, a6
                  sll          s11, s3, s3
                  ori          gp, gp, -473
                  sltiu        a4, s0, -1799
                  sub          s4, s11, t2
                  slti         gp, a4, 1766
                  lui          s9, 42680
                  slt          t3, t4, s2
                  slt          s4, a1, s7
                  addi         a0, ra, 869
                  sll          a5, a4, a2
                  andi         s2, a4, 706
                  add          s5, a0, t5
                  xori         s7, s9, -1834
                  add          s3, s8, a5
                  slt          s8, t3, t0
                  sltu         s1, s2, s7
                  addi         s8, a0, -1185
                  sra          t2, s1, a2
                  or           s3, a6, a7
                  srl          s0, gp, t5
                  lui          s11, 153042
                  sub          a4, zero, a4
                  slti         t1, s5, -1359
                  srli         t1, ra, 13
                  addi         a4, s0, -1210
                  slti         a4, a0, 1641
                  ori          tp, a4, 942
                  sll          a5, s0, s3
                  andi         ra, t1, 1723
                  slli         tp, a4, 25
                  ori          s6, s9, 1051
                  sra          s9, s2, a3
                  sra          t3, a2, tp
                  srli         s4, sp, 11
                  srli         a5, s3, 25
                  srli         t3, s11, 15
                  lui          a3, 881202
                  srli         ra, gp, 5
                  or           s3, a5, ra
                  lui          ra, 297527
                  ori          s10, a5, -1068
                  srai         t6, s2, 23
                  slli         ra, t2, 30
                  andi         zero, s5, 2011
                  sra          s5, a5, a5
                  addi         a4, a6, -34
                  sra          ra, t4, s3
                  sltu         t3, a3, a4
                  ori          s3, t1, -615
                  slli         t6, sp, 25
                  slti         s3, s1, 842
                  auipc        ra, 840513
                  sra          s9, s10, t6
                  lui          gp, 537170
                  sra          s7, t4, s11
                  addi         s5, t4, -440
                  srl          s0, s0, t5
                  srai         s2, s10, 18
                  slti         t1, ra, -41
                  xori         t4, t0, 1397
                  lui          s10, 151931
                  nop
                  auipc        t5, 779083
                  slti         t1, s11, -857
                  xori         ra, a6, 869
                  nop
                  slti         a5, ra, -679
                  xor          a3, s7, s10
                  srli         s7, sp, 16
                  ori          a5, s1, 1264
                  xor          a4, t5, t0
                  slti         t6, t4, -1896
                  slti         s7, s9, -1123
                  sub          t4, a3, s0
                  or           gp, s1, s9
                  lui          s4, 365652
                  or           t6, a5, s11
                  slt          a0, s1, s2
                  sltiu        s4, a3, 560
                  nop
                  nop
                  and          s1, zero, t4
                  sub          t5, t2, t6
                  slt          tp, a4, a5
                  or           t3, a2, s7
                  slti         a3, zero, 1703
                  srli         a0, s8, 12
                  slli         a4, t1, 13
                  lui          a5, 448197
                  lui          s2, 518338
                  srai         s8, a3, 4
                  xor          s1, t0, t0
                  sltiu        s3, sp, -720
                  xori         t6, a1, 1381
                  sra          s5, a5, sp
                  and          a1, a5, sp
                  slt          a6, t5, gp
                  auipc        t6, 382801
                  xori         s5, t0, 139
                  sra          s3, s4, t3
                  sra          a1, s2, a2
                  slt          a4, a6, a7
                  srli         s2, s2, 8
                  xor          a4, t5, s6
                  srli         t6, t4, 13
                  slli         s10, t3, 26
                  andi         a0, s2, 1731
                  sltiu        s1, s5, 970
                  ori          s3, t2, 1794
                  sltiu        a3, tp, 63
                  sltu         t1, s6, s10
                  lui          s6, 952939
                  nop
                  xori         s1, a1, -969
                  slti         s8, zero, 755
                  sltu         s7, t2, t1
                  srli         s2, a0, 3
                  sub          s7, t3, gp
                  srl          s5, s3, a1
                  srli         s5, a6, 26
                  sub          s7, a2, s6
                  srl          s2, t4, t6
                  add          s11, t3, s9
                  lui          t4, 908146
                  auipc        s3, 171035
                  auipc        s9, 714345
                  slli         ra, t1, 11
                  sub          t5, s7, sp
                  sltiu        s4, t3, -235
                  or           zero, s6, t2
                  srl          s0, s9, s0
                  andi         s9, s6, 28
                  srli         a6, gp, 11
                  srai         s3, s0, 4
                  slt          s4, t4, s11
                  ori          s6, s1, -841
                  srai         t4, t4, 28
                  nop
                  slli         a5, s11, 20
                  or           t5, t3, s11
                  add          a6, s8, gp
                  andi         t1, t1, -1388
                  sub          a4, ra, s1
                  auipc        t6, 27255
                  or           t6, s3, a1
                  addi         tp, t0, 2020
                  or           s5, s6, t5
                  slli         zero, t5, 8
                  sltiu        s10, t4, -1903
                  sll          a4, s4, s0
                  nop
                  xori         t4, ra, 442
                  sll          s0, sp, a6
                  sll          s6, a5, t4
                  slli         t5, s2, 2
                  ori          gp, t1, 1294
                  srai         s2, a1, 26
                  sltu         s5, t1, t2
                  or           a2, t3, t6
                  lui          t1, 577758
                  srai         a1, a4, 29
                  nop
                  sll          t2, a5, t1
                  srai         gp, s8, 20
                  sra          s2, a7, s1
                  add          s7, t6, t6
                  sub          s7, t2, t3
                  and          t4, a4, t0
                  andi         a4, tp, -566
                  srl          a1, s3, tp
                  addi         a0, a3, 792
                  or           gp, s8, s7
                  srl          t4, a0, t5
                  andi         a2, t4, 1063
                  sltiu        t6, zero, 47
                  nop
                  lui          tp, 315567
                  lui          gp, 981883
                  andi         gp, ra, 773
                  andi         s0, a1, 1193
                  auipc        a5, 513446
                  andi         t1, ra, -379
                  sra          t3, s5, zero
                  slti         zero, s7, -1588
                  sra          gp, a4, tp
                  sll          a5, s11, sp
                  sltu         a6, t4, s4
                  ori          s8, a6, 655
                  addi         s4, t6, 1099
                  slli         s7, s9, 16
                  sltu         t1, t1, s0
                  add          a6, s10, sp
                  and          s3, gp, a7
                  sra          s7, s6, a0
                  slli         t6, zero, 26
                  srli         a5, s0, 8
                  srl          zero, s10, a1
                  sll          s0, t6, gp
                  srai         a4, t2, 17
                  nop
                  ori          s5, sp, -250
                  andi         a6, a1, -423
                  sra          t5, t0, a4
                  slt          s11, s0, t2
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           s0, 0xffffffff
                  li           s4, 0x0
                  li           a4, 0x9647d5dc
                  li           t5, 0xffffffff
                  li           a2, 0x80000000
                  li           a1, 0x80000000
                  li           a0, 0x80000000
                  li           a5, 0x7ccb4d17
                  li           gp, 0x93e59c04
                  sub          a4, t5, s4
                  add          a4, a4, s0
                  addi         s4, s0, 830
                  lui          a4, 157019
                  add          s6, s4, s4
                  add          s0, s6, t5
                  auipc        s6, 169976
                  sub          a1, s0, t5
                  lui          s4, 402224
                  auipc        s4, 348264
                  auipc        a5, 33138
                  sub          a5, s0, a1
                  sub          a0, s4, t5
                  lui          s0, 348323
                  addi         gp, a0, -459
                  addi         s6, s6, -189
                  sub          t5, a2, s0
                  add          a2, a4, a4
                  nop
                  nop
                  lui          gp, 603516 #end riscv_int_numeric_corner_stream_11
                  sltu         s1, t0, t1
                  srl          t6, t4, s10
                  slli         s11, a4, 15
                  xor          ra, s0, s5
                  srai         s1, a2, 9
                  auipc        ra, 394022
                  auipc        s2, 682310
                  slli         t5, sp, 26
                  and          t3, zero, zero
                  slt          s9, s3, s9
                  slt          s6, ra, a5
                  srai         s8, a5, 1
                  srli         t1, s11, 1
                  srl          s9, a3, s5
                  nop
                  lui          a5, 962192
                  srl          t6, a3, s10
                  sll          a2, t3, s7
                  slli         s6, s4, 16
                  slti         a5, s0, -471
                  auipc        s1, 995208
                  srai         t6, t5, 19
                  xor          a5, zero, gp
                  ori          s5, a7, -662
                  add          s4, s11, t2
                  slti         a3, a7, -703
                  and          t3, a2, ra
                  andi         a4, a2, 1711
                  slli         s2, t3, 3
                  slt          s1, s6, gp
                  slti         s4, a0, 886
                  srl          ra, tp, ra
                  xori         s0, zero, 853
                  xor          t1, s10, a3
                  slt          s0, a1, s0
                  lui          s2, 442164
                  ori          s10, s4, 110
                  ori          tp, s1, -197
                  slt          s0, ra, t2
                  xor          t3, a1, t0
                  sra          a5, s8, t0
                  or           t6, sp, a5
                  slt          gp, t5, s1
                  lui          s1, 370123
                  sltiu        s8, t3, 1735
                  lui          s3, 518878
                  sltiu        a6, t1, -303
                  sra          t3, a4, t4
                  xor          s0, s0, s1
                  slt          a2, s4, a0
                  slli         a4, s8, 27
                  xor          t1, t2, a3
                  lui          t3, 906850
                  sub          zero, t2, zero
                  addi         t6, a5, 436
                  srl          tp, t4, s11
                  add          a5, t0, s5
                  add          s11, s1, t0
                  slti         a4, a2, -1939
                  nop
                  sra          s5, s6, gp
                  xori         a5, gp, 1794
                  sub          tp, a5, t2
                  xori         s2, s10, 449
                  sltiu        s0, sp, -1872
                  sll          s8, s10, s1
                  ori          tp, s7, 1135
                  sltiu        s1, s6, 976
                  sll          a5, t1, s10
                  srai         s11, t3, 9
                  slli         s8, s1, 3
                  sltiu        a6, a2, 1039
                  lui          t1, 366164
                  lui          t6, 43749
                  addi         t1, a4, 1264
                  slli         tp, a0, 4
                  sra          t5, s5, sp
                  sub          t2, s10, a6
                  auipc        a3, 705840
                  ori          s11, s10, 1418
                  srai         t2, s5, 31
                  add          t1, tp, t3
                  sltiu        s10, s4, -926
                  xori         a1, s9, 1576
                  srl          tp, gp, tp
                  srl          a2, s0, s9
                  ori          a5, s2, -1585
                  add          s2, t1, a0
                  slti         s6, a6, -1497
                  ori          a2, ra, 159
                  slt          s10, gp, s8
                  slti         t6, s9, -1383
                  or           a2, s11, sp
                  slt          t1, t6, s10
                  sltu         s7, a4, s2
                  addi         zero, gp, 342
                  sltu         s0, s11, a0
                  slt          s7, s11, s7
                  sltiu        a4, s0, 940
                  add          a2, s10, a3
                  xor          a3, sp, sp
                  sltu         s0, a0, a5
                  andi         s7, s2, 424
                  sra          s10, zero, a3
                  and          s5, a3, a4
                  slli         a1, gp, 28
                  sll          s4, t4, t2
                  slt          a6, tp, a7
                  add          tp, s1, s11
                  xori         s11, a4, -1436
                  nop
                  sll          ra, s1, zero
                  addi         t3, s5, 1971
                  ori          a3, t3, -1988
                  addi         a0, s3, -1587
                  addi         s7, t0, -362
                  slt          s1, t5, a2
                  srl          s1, a5, a5
                  xori         s7, sp, 691
                  andi         gp, a0, 680
                  sra          s6, t1, s7
                  slti         t4, s7, -1178
                  slli         t5, t2, 12
                  add          tp, s5, a6
                  andi         zero, t4, -665
                  ori          s4, sp, 1826
                  and          s2, s4, t3
                  slti         t5, a2, -1734
                  sra          a6, t3, t6
                  sll          s5, s1, s1
                  and          tp, s8, s8
                  sltiu        s10, t4, -314
                  srl          a6, a2, a4
                  xori         t6, zero, 215
                  auipc        a2, 110468
                  sll          t2, t1, s8
                  auipc        t3, 910614
                  xori         a3, s9, -951
                  sltu         a1, ra, tp
                  ori          s7, a6, 1879
                  sra          a1, a1, tp
                  slt          ra, ra, t6
                  srl          s0, a7, s3
                  or           a6, t0, t2
                  slti         ra, s9, 1563
                  sra          s3, a4, s9
                  sub          zero, a5, sp
                  sltiu        t3, a5, -1142
                  addi         s7, s7, -1449
                  lui          tp, 862042
                  sltu         a1, t1, s10
                  lui          s11, 599816
                  andi         t3, a0, 857
                  nop
                  xori         s10, a0, -568
                  ori          t4, s8, 1508
                  sll          s6, s4, s2
                  sltu         a5, a0, t2
                  auipc        a0, 247190
                  slt          t6, s7, a1
                  sub          s11, a1, t4
                  srai         gp, s1, 26
                  or           s10, s10, s6
                  xori         a0, s9, -1183
                  or           a2, a1, s7
                  sub          s8, t6, s3
                  add          s1, s3, t5
                  addi         a1, a7, 1395
                  srli         s5, t4, 1
                  srl          t2, a1, s7
                  sll          a5, a0, t2
                  slli         t1, s7, 21
                  sll          s2, s8, a6
                  sltu         s1, s10, s0
                  sltiu        s6, s5, 670
                  srai         t2, a5, 11
                  sub          s5, a2, t6
                  sub          t4, a4, a2
                  add          a1, a3, s6
                  slti         t3, tp, -457
                  and          s2, s3, a2
                  srli         s6, sp, 26
                  srai         a3, s3, 23
                  xori         zero, s11, 634
                  srl          t4, a5, t0
                  sll          s6, t1, a3
                  slli         ra, a3, 23
                  andi         a2, s6, -1477
                  sltu         s4, gp, t5
                  sltiu        s8, s11, 171
                  xor          s10, s11, t0
                  add          a5, a6, a5
                  auipc        t2, 537618
                  nop
                  auipc        s9, 48885
                  sltu         a1, s7, a2
                  lui          s4, 546788
                  addi         s11, s11, -331
                  or           gp, s6, s0
                  xori         a4, t3, -1717
                  slti         t2, a2, 666
                  lui          a4, 532428
                  addi         a1, t3, -343
                  srai         s2, a5, 4
                  andi         a5, a1, -834
                  andi         s7, t3, -215
                  srai         s6, s0, 15
                  sll          t4, s7, a6
                  sltiu        tp, a1, 1709
                  xor          a6, s10, gp
                  add          s0, s5, a0
                  sltiu        s4, t5, 1842
                  srl          a2, a5, a3
                  add          a3, a2, a3
                  sub          s11, a4, a4
                  sltu         s8, a4, t4
                  add          s1, zero, s2
                  add          s11, s8, a2
                  xori         s6, tp, -1875
                  slt          a6, ra, s11
                  sub          s8, a1, a0
                  auipc        s8, 866660
                  auipc        t3, 916995
                  or           s8, s6, s4
                  sltiu        s3, ra, 299
                  or           s6, a4, s0
                  add          s11, tp, t4
                  or           s0, s11, s0
                  auipc        a4, 412439
                  sra          tp, gp, t1
                  slli         s5, a4, 10
                  sltiu        a0, a3, 450
                  nop
                  srl          s6, a2, a2
                  sll          a4, s0, a4
                  slti         t4, a4, -1257
                  ori          t3, s5, -1281
                  xori         t1, s5, -1500
                  sltiu        s2, t0, -978
                  sll          s2, a6, a5
                  lui          s10, 905617
                  slti         t2, t6, -171
                  sll          t3, t2, t5
                  auipc        s1, 94467
                  sll          t3, t5, a3
                  sltu         t4, s0, s0
                  sltiu        s2, gp, -1421
                  srli         gp, t5, 15
                  or           t3, a5, t0
                  ori          s7, s10, -1210
                  slt          a0, gp, s10
                  or           t1, a0, s7
                  sub          t1, a6, s4
                  ori          a2, t0, -788
                  sltiu        s10, a2, -919
                  sltiu        s4, a3, -1877
                  andi         s6, s3, -1585
                  xor          ra, t4, s5
                  slti         t6, ra, 1762
                  slli         s8, s2, 12
                  sltiu        a1, s6, -395
                  auipc        t1, 756318
                  srl          t4, ra, t4
                  sll          s4, t2, a5
                  xor          a1, tp, s7
                  srai         t5, gp, 25
                  slti         t5, zero, -1619
                  sll          s2, s7, s3
                  sltiu        a3, t1, 1164
                  ori          s5, a2, 995
                  and          t2, s4, s0
                  slti         a0, s11, 396
                  srl          zero, s7, a7
                  xori         s11, t4, -1746
                  andi         t3, s7, -705
                  xor          a6, a5, zero
                  or           s9, t4, s5
                  slli         s5, s3, 1
                  sltu         a1, a7, t5
                  sll          a5, s5, s4
                  and          t5, s9, a3
                  ori          t5, t4, -328
                  andi         s1, s2, 161
                  srli         a2, s8, 20
                  sltu         s3, s2, s2
                  sll          t4, s2, tp
                  and          s7, a6, a0
                  or           a6, tp, t5
                  sltu         zero, a5, a1
                  sltu         t2, s4, s8
                  and          a1, s0, s2
                  xori         a4, s7, -874
                  auipc        a6, 644004
                  sub          a1, tp, zero
                  srai         a2, a0, 25
                  add          a3, a2, a0
                  andi         s7, a3, 418
                  sub          s1, s1, t6
                  addi         ra, a5, 785
                  slti         tp, sp, 1596
                  sra          t5, t5, s5
                  andi         s6, t6, -1954
                  slt          s4, s1, a0
                  nop
                  srli         a6, a2, 17
                  ori          s1, a5, -1327
                  lui          a3, 647077
                  or           a2, s8, a2
                  slt          s0, s3, a6
                  and          a6, s5, t6
                  sub          t6, tp, a3
                  and          a5, s5, s3
                  addi         s8, s9, -1366
                  add          a4, t5, a6
                  slti         a6, a2, -1089
                  slt          a3, s4, s1
                  addi         ra, a4, -1910
                  sll          a5, t2, s2
                  lui          t2, 732586
                  xor          s3, s0, a3
                  addi         t5, t4, -1446
                  sltu         a5, t4, t3
                  and          t6, a5, s7
                  auipc        zero, 166335
                  andi         a0, s5, 1295
                  xori         a3, s6, 370
                  srli         zero, sp, 3
                  srl          zero, a1, t5
                  slli         t1, t2, 16
                  xori         s4, tp, -244
                  slti         s2, gp, 1318
                  or           a4, a2, s5
                  and          s9, a0, s10
                  srli         ra, s2, 17
                  ori          t1, s2, 1555
                  srli         t6, a4, 15
                  and          s2, s1, t2
                  slt          zero, t2, a0
                  xori         a4, a3, 1131
                  sub          s4, t3, a5
                  auipc        gp, 489635
                  xori         a0, a4, -1941
                  ori          s4, t1, 1032
                  sub          a5, a6, s0
                  sltu         a5, a4, t4
                  sub          t2, a7, gp
                  and          s11, s5, s10
                  srl          a6, a6, tp
                  sra          a5, t5, zero
                  add          s4, gp, a5
                  andi         gp, t2, -1483
                  xori         gp, zero, 560
                  ori          t3, s5, -1589
                  srl          a6, a6, t5
                  sltiu        a5, t0, 1501
                  ori          s0, a7, 51
                  or           s7, t5, a3
                  sll          gp, s2, sp
                  sub          s0, zero, t5
                  auipc        s5, 852890
                  auipc        a0, 1048541
                  nop
                  xor          t3, s9, a5
                  addi         t3, s11, 1907
                  sra          zero, a3, t3
                  nop
                  sub          s8, a6, t1
                  li           t4, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           s2, 0xffffffff
                  li           t6, 0x0
                  li           s8, 0xcf8a413b
                  li           s4, 0xf0fc0cb8
                  li           t3, 0x0
                  li           a1, 0x0
                  li           a5, 0x80000000
                  li           a6, 0x80000000
                  li           s3, 0x80000000
                  auipc        s3, 331621
                  nop
                  lui          s3, 1041519
                  nop
                  nop
                  addi         t3, t4, -1749
                  addi         s2, a1, -1184
                  lui          s4, 555855
                  lui          a6, 441412
                  nop
                  sub          s8, s2, s4
                  nop
                  nop
                  add          a6, t4, a6
                  sub          a5, s4, a6
                  add          s3, a1, s2
                  nop
                  addi         s8, a1, -1517
                  lui          a1, 816728
                  addi         s4, a6, -224
                  lui          s3, 986816
                  nop
                  sub          a6, t4, s3
                  add          t3, a5, s3
                  addi         s4, s8, 941 #end riscv_int_numeric_corner_stream_4
                  sra          s6, t0, s4
                  and          t6, s3, t6
                  or           s4, s1, s0
                  sra          s1, a2, s5
                  ori          a4, a4, 1755
                  and          s6, t2, gp
                  srl          gp, s5, s1
                  srli         s5, a7, 10
                  sub          s10, t6, s6
                  sll          s7, t0, s1
                  auipc        t3, 448043
                  add          t4, s1, s8
                  sltiu        s6, s6, 214
                  addi         t3, a6, 1667
                  nop
                  xor          s7, tp, zero
                  ori          s10, a3, 1312
                  andi         a0, gp, -16
                  sltiu        s7, a1, -1368
                  srl          a0, s4, s0
                  add          a1, t0, a3
                  xor          t4, a0, a0
                  and          s2, zero, t6
                  srli         a0, s9, 25
                  andi         t6, a6, 1018
                  ori          a4, s2, 1729
                  slli         a0, t1, 4
                  sltiu        zero, a7, -1600
                  or           s8, zero, a5
                  andi         a2, a3, -1502
                  ori          s4, sp, 325
                  srl          zero, ra, a1
                  sltu         s9, s7, s2
                  xor          a6, a0, a4
                  nop
                  auipc        t1, 553511
                  sll          t4, s8, t6
                  and          t5, s7, s3
                  sub          s3, s8, s1
                  slt          s10, s7, a2
                  slt          a4, t4, s2
                  sll          s11, a4, a2
                  srl          a6, zero, s11
                  slt          s6, zero, s5
                  sra          zero, a5, a7
                  and          a1, s0, t6
                  or           tp, s1, gp
                  sll          a2, t1, a7
                  ori          tp, s7, 646
                  lui          t5, 205168
                  slli         s0, s10, 9
                  sll          ra, a0, t3
                  sll          s11, s11, sp
                  slli         s8, s1, 23
                  slli         gp, s1, 26
                  srli         a4, t1, 15
                  auipc        s10, 311318
                  and          s6, s3, tp
                  sll          t3, a1, t3
                  add          a1, gp, t6
                  lui          t2, 370898
                  sll          a6, s0, a4
                  add          s4, a1, t3
                  slt          s7, t4, s6
                  xori         s4, t4, -1021
                  srai         s10, s2, 18
                  lui          zero, 437476
                  addi         tp, tp, 418
                  sub          zero, s7, s2
                  slli         a2, s7, 2
                  xori         s10, s5, -1924
                  slli         t5, a4, 3
                  lui          t6, 1046248
                  srli         s0, a3, 2
                  slti         t5, s6, -109
                  srai         t6, s5, 19
                  and          t6, s1, t2
                  or           a3, a7, tp
                  andi         s2, a4, 886
                  nop
                  add          gp, t3, s1
                  or           s10, a7, s6
                  xor          zero, s0, t2
                  ori          s2, t4, -342
                  addi         t6, a0, 1978
                  add          t5, t4, t5
                  srl          s2, t6, a2
                  slli         s1, a4, 28
                  sll          t4, t0, t1
                  sltiu        s3, a2, -476
                  slt          a6, s5, t3
                  add          s3, sp, sp
                  slti         a0, a7, 1133
                  or           a6, s9, s5
                  andi         gp, s6, -467
                  xori         s11, s1, -368
                  or           a0, s6, tp
                  lui          s3, 572507
                  or           s9, t3, t5
                  or           s10, a5, s6
                  lui          s0, 665879
                  add          a3, s1, s3
                  sltiu        s9, sp, 854
                  addi         s10, a6, 1181
                  slti         t5, a5, -1784
                  ori          s5, t4, 1666
                  srli         a3, a4, 24
                  ori          s7, s7, 451
                  srl          t2, s9, a6
                  lui          a6, 682063
                  andi         s6, a3, -1301
                  slti         zero, s2, 1230
                  sltu         s10, tp, s10
                  slli         gp, s6, 0
                  slti         gp, t0, -1757
                  sll          a6, s7, a0
                  slt          t5, t4, s11
                  nop
                  srai         t6, t6, 11
                  xor          s4, s7, a3
                  ori          t2, s5, -1468
                  auipc        s5, 937210
                  sra          s9, a3, s1
                  xori         a5, t4, 1759
                  sltu         t1, s5, a5
                  xori         zero, a3, 281
                  nop
                  slli         s3, a3, 6
                  ori          s2, s7, 744
                  add          a3, s9, a5
                  lui          s8, 243530
                  or           s6, zero, a1
                  srai         tp, s11, 5
                  slti         t6, s8, 46
                  addi         s11, tp, -1807
                  srli         s3, t4, 22
                  andi         s9, t4, -1087
                  srai         s1, s2, 31
                  srli         t3, s1, 24
                  sltu         a1, s2, s9
                  slli         s6, s2, 22
                  sltiu        s9, t2, -1120
                  sltiu        s7, s2, 1246
                  add          t3, a1, t2
                  xori         s0, s11, 859
                  add          a3, sp, zero
                  slli         s10, a0, 2
                  addi         a1, gp, -1629
                  auipc        s5, 557496
                  ori          a4, tp, -1483
                  srai         s5, sp, 17
                  or           a0, a6, a1
                  and          s11, a1, t4
                  sltiu        gp, t4, 376
                  and          s2, ra, s5
                  slti         t2, t6, -1881
                  slti         a2, s4, -1821
                  srl          s2, t4, s5
                  srli         s9, s6, 5
                  or           t5, t2, a2
                  add          tp, s10, a6
                  and          t1, a0, s6
                  sub          a0, a5, a2
                  lui          t5, 472112
                  ori          s1, a2, -705
                  slt          a2, s9, s2
                  xori         s9, s1, -1828
                  srai         t1, s4, 20
                  srl          s3, t2, s6
                  sub          s4, zero, t2
                  nop
                  nop
                  slli         t5, gp, 6
                  addi         t2, t5, 1482
                  slt          a0, s4, s10
                  add          t3, a5, gp
                  srli         s10, s1, 26
                  srl          a4, s6, s11
                  andi         s11, s6, 942
                  lui          a4, 632777
                  ori          s5, ra, -1413
                  sub          t5, a6, t4
                  sll          a3, t3, s0
                  lui          a3, 699050
                  slli         s9, t1, 24
                  addi         s0, t5, 343
                  andi         t3, a6, 365
                  xori         t1, t0, 57
                  ori          t1, t4, 246
                  ori          s3, t3, 1068
                  slt          s3, a3, ra
                  srl          a3, zero, t2
                  lui          s5, 975275
                  andi         s3, s4, 1442
                  slti         t4, tp, -481
                  xori         zero, s6, -1024
                  slti         a2, a3, -1098
                  xori         s11, s11, 985
                  xori         s5, s10, -1643
                  and          s4, s6, a6
                  sra          ra, t4, s10
                  sltu         a0, ra, zero
                  sll          tp, s5, t2
                  srai         a3, t0, 15
                  slti         ra, a0, 1243
                  nop
                  srai         ra, s6, 22
                  srli         a2, gp, 9
                  auipc        s4, 20367
                  auipc        s6, 494269
                  andi         s2, s10, 617
                  addi         ra, s2, 1040
                  xor          s4, sp, t2
                  srli         s4, a0, 17
                  srli         s7, zero, 5
                  ori          s9, s3, -732
                  xori         zero, s10, 1250
                  ori          s4, s6, -1206
                  srl          a5, t1, a1
                  addi         a5, t5, 1251
                  or           s10, t1, tp
                  sltu         s6, a4, a3
                  srl          zero, a6, s3
                  srai         tp, a2, 27
                  slli         a3, t1, 9
                  lui          gp, 317974
                  sll          tp, s1, sp
                  srai         s1, a5, 22
                  sltiu        a4, s6, 348
                  addi         a0, t3, -572
                  nop
                  xori         s0, a6, -58
                  sltiu        t3, a3, -732
                  slt          ra, s0, t0
                  slti         a1, s3, 1535
                  sltiu        s2, a4, -1295
                  auipc        s1, 324790
                  sub          a3, s1, s8
                  xori         s7, a7, 1215
                  slti         s9, t5, -1247
                  auipc        t2, 196537
                  sll          a0, zero, s2
                  sll          t6, ra, a6
                  slli         s4, s7, 15
                  sll          t6, s3, t0
                  xori         s4, s2, -1711
                  sll          a2, a5, s0
                  nop
                  sltu         s11, s6, a3
                  auipc        t5, 749999
                  sltu         a2, t5, s1
                  nop
                  sra          s7, s3, a3
                  sll          s6, s8, t4
                  ori          s11, zero, 1037
                  sub          s6, s2, s5
                  sltu         a5, a4, s5
                  lui          a5, 344187
                  srl          t3, t5, s4
                  xori         s7, s8, 1954
                  srl          s6, t2, s0
                  slli         a6, s4, 20
                  addi         zero, zero, -719
                  addi         a6, ra, -357
                  add          t3, a4, t3
                  xor          s4, t0, a1
                  sltiu        s10, a7, 802
                  andi         a6, tp, -659
                  slt          s10, s4, t1
                  slt          a2, a3, s8
                  sltu         s0, t6, a0
                  andi         a2, s5, 473
                  auipc        a0, 1908
                  addi         a6, s0, 1786
                  srai         s4, t5, 28
                  auipc        t4, 404981
                  addi         s8, s0, -1682
                  sltiu        t1, t6, 1055
                  addi         s5, s5, -570
                  xori         tp, s2, -1858
                  and          t5, a0, t2
                  sra          a3, t2, s6
                  xor          t5, s5, a5
                  lui          s5, 618660
                  sll          a0, t0, tp
                  or           a4, zero, s6
                  sra          t2, t4, s2
                  xor          s11, t4, t0
                  sltu         tp, a0, a3
                  nop
                  sra          s10, s8, t3
                  or           s3, s11, s1
                  lui          s4, 360671
                  slti         a2, t6, -918
                  auipc        s4, 527111
                  and          a6, tp, zero
                  nop
                  sll          tp, a3, ra
                  nop
                  slli         a2, a7, 10
                  and          a5, t2, t3
                  sltu         t6, gp, a7
                  sltu         s11, s11, t4
                  slti         t6, s4, -467
                  auipc        s1, 798633
                  sll          zero, ra, s5
                  slt          s7, s6, a7
                  xori         zero, gp, 1427
                  slt          s9, s4, a5
                  sltiu        a2, tp, 650
                  and          a0, s6, a2
                  sub          s3, t3, t4
                  addi         t6, t5, 1164
                  sll          s5, t3, s1
                  srai         s3, a2, 16
                  srl          s9, s10, a2
                  andi         ra, s5, -1564
                  and          s8, s10, t5
                  xori         s5, t6, -2009
                  slt          t5, a1, s2
                  and          a1, s5, s4
                  xor          t6, sp, ra
                  auipc        t4, 929803
                  andi         s10, s5, -1023
                  auipc        tp, 920530
                  sll          s11, ra, ra
                  xori         t1, a4, -1348
                  nop
                  sltiu        s4, s1, 1939
                  sltiu        ra, sp, -2048
                  srai         a1, a6, 30
                  srai         a2, gp, 16
                  slti         t5, a4, -83
                  xori         ra, sp, -1967
                  srai         zero, t2, 18
                  sra          a5, a4, ra
                  slt          a4, sp, t6
                  srli         s7, a6, 19
                  andi         a3, s1, 1825
                  sltu         ra, t3, s1
                  slti         a5, s2, 996
                  srai         tp, s9, 18
                  srl          s7, zero, a0
                  sra          a1, s8, t0
                  auipc        t4, 340557
                  or           s8, a7, s6
                  ori          a2, t3, -849
                  sub          t1, s10, zero
                  srl          t4, a1, s1
                  or           tp, s3, a2
                  and          a0, a1, a5
                  sltu         s6, s7, a1
                  srli         t4, s8, 12
                  ori          a3, s0, -895
                  sub          a0, t1, t1
                  add          s3, t2, t1
                  sltu         s7, s0, a5
                  sltu         t3, s5, s9
                  or           s3, s9, tp
                  lui          s8, 234293
                  srai         s9, a3, 3
                  add          zero, t1, s1
                  add          zero, t2, a1
                  auipc        s6, 452759
                  sll          s6, a4, s4
                  sra          a1, t3, a4
                  auipc        t4, 166637
                  srli         t4, s2, 30
                  xori         ra, t5, 722
                  sll          tp, s9, a3
                  srai         s6, s5, 22
                  srl          a6, t3, s4
                  nop
                  or           a0, t6, t4
                  ori          t5, s0, 1697
                  or           t6, a7, ra
                  addi         s2, sp, 268
                  slti         a3, a4, -1045
                  srai         t2, gp, 0
                  slli         s10, s0, 13
                  lui          s6, 109052
                  and          s4, tp, s3
                  andi         s0, a7, -1613
                  sltiu        s0, s10, 315
                  addi         a6, a0, 89
                  slt          t6, s9, t0
                  lui          s1, 778974
                  srl          s9, t5, a3
                  slti         tp, ra, -191
                  auipc        a0, 737560
                  sltiu        s7, t5, 1941
                  sub          a0, a3, s2
                  srli         s0, t6, 28
                  srai         s0, s2, 20
                  add          s8, s0, s3
                  lui          s10, 475213
                  addi         a5, a5, -1417
                  srl          zero, sp, t4
                  lui          s5, 960854
                  or           t3, s5, s4
                  add          s10, t0, t3
                  ori          s4, t3, 1435
                  slt          s1, a1, a1
                  sll          a0, tp, a4
                  srai         gp, s5, 31
                  nop
                  slt          tp, s2, s5
                  auipc        a2, 864445
                  lui          t2, 642620
                  ori          a3, s2, -64
                  xori         a0, a2, -1375
                  andi         a4, a7, 1336
                  or           a0, s5, a4
                  ori          a4, a1, -223
                  srl          s10, s2, s3
                  xor          t4, s1, a5
                  or           a6, a6, t3
                  slt          s10, s9, a5
                  srl          a2, gp, s7
                  andi         zero, gp, 1120
                  srl          s6, t5, s4
                  sub          t4, a0, t1
                  ori          t5, sp, -39
                  sra          s5, s8, a7
                  srai         s11, s1, 17
                  and          gp, s8, s3
                  srli         a1, tp, 26
                  andi         s7, t2, 1174
                  or           a0, gp, s8
                  sll          a0, gp, a4
                  sra          s11, t1, a6
                  slti         gp, zero, 344
                  srl          s5, t4, a2
                  or           a2, s0, a7
                  srli         s11, s10, 18
                  ori          tp, gp, 1845
                  slti         a5, t0, -1902
                  auipc        tp, 934748
                  sll          t2, s2, s9
                  andi         s1, s9, 1098
                  slti         a2, t2, 304
                  xori         ra, t3, -1146
                  sltiu        a5, s11, -974
                  slli         s6, a3, 16
                  sll          s2, s5, s8
                  sub          s1, t3, tp
                  lui          s3, 854654
                  or           t5, t0, t4
                  sltu         a1, t5, s4
                  sub          a3, t1, t4
                  or           s11, a6, sp
                  slt          s10, zero, a7
                  sltu         a4, a7, tp
                  sll          ra, s8, t5
                  nop
                  srai         s9, t6, 14
                  slti         a2, s2, -1357
                  or           s1, s0, s0
                  li           gp, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           s10, 0x6f5b2c2
                  li           ra, 0xffffffff
                  li           a2, 0xffffffff
                  li           a6, 0x973e66b9
                  li           a5, 0xffffffff
                  li           s8, 0xffffffff
                  li           s11, 0x94f6cb0f
                  li           s7, 0x2dacd53e
                  li           a3, 0x0
                  lui          gp, 572486
                  sub          a3, gp, gp
                  nop
                  nop
                  add          ra, s10, gp
                  add          a5, s11, ra
                  add          a3, s7, a2
                  lui          a5, 277483
                  addi         a3, gp, 1037
                  sub          s11, a6, s7
                  nop
                  sub          s10, a2, a2
                  auipc        s10, 942094
                  addi         a3, a6, -1093
                  sub          s10, a6, s7
                  lui          s7, 146821
                  addi         a3, s7, -1779
                  addi         s8, s10, -745 #end riscv_int_numeric_corner_stream_9
                  and          tp, s6, s10
                  andi         s5, s11, 305
                  lui          t6, 119658
                  andi         s3, t4, 422
                  sub          s7, s7, a4
                  or           ra, s2, s10
                  sltiu        t3, s3, -1757
                  nop
                  xori         s1, zero, -1045
                  ori          s10, s10, 1634
                  xor          s0, s7, tp
                  lui          t6, 355519
                  slti         s6, t1, 2039
                  xor          s7, a6, zero
                  slli         a1, t1, 26
                  and          t5, a5, s10
                  sub          a4, a7, s9
                  sll          ra, s0, t3
                  sltiu        s6, s4, -1213
                  sltiu        a3, s10, 1805
                  srl          s5, s6, s3
                  sltu         a2, s0, s8
                  srli         t6, s5, 28
                  add          a5, t4, a7
                  slt          s4, s1, t2
                  sll          s7, s6, s9
                  lui          a4, 934267
                  add          s9, a4, s11
                  ori          gp, a1, -1222
                  andi         s2, s10, 1273
                  sub          t5, s8, a1
                  slt          a1, a0, t3
                  nop
                  srl          t5, tp, a7
                  andi         s3, t6, -429
                  sll          s6, a1, s9
                  and          t3, s10, s3
                  and          s0, a4, s3
                  slli         t2, t5, 31
                  slli         s7, a6, 5
                  or           a4, gp, s2
                  srl          a5, t5, zero
                  xor          a4, s1, a6
                  nop
                  slt          s7, s3, a4
                  or           ra, t0, ra
                  or           gp, s9, s4
                  or           s6, s7, sp
                  xor          s3, s8, a7
                  andi         s6, s7, 1321
                  or           s4, tp, s2
                  srli         s3, s5, 0
                  sltiu        s3, s8, 281
                  ori          s4, s4, 651
                  srli         a0, s9, 30
                  sub          ra, s3, s4
                  sub          s7, s0, ra
                  lui          a5, 549789
                  auipc        a1, 195422
                  srli         s3, a3, 30
                  add          s1, t3, a4
                  slt          tp, a2, a6
                  slti         s6, s7, 676
                  srai         s1, a2, 3
                  lui          ra, 481394
                  add          gp, t0, a7
                  slli         s1, a4, 31
                  slt          t5, a5, s8
                  srli         s3, a4, 14
                  ori          a1, s9, -1207
                  sltiu        a6, s5, 1352
                  sltiu        t2, t5, 539
                  sub          t3, s3, s10
                  ori          s5, s11, -971
                  andi         s4, zero, 197
                  srl          s1, s4, s0
                  sll          s9, a0, s9
                  sra          t3, zero, s6
                  and          s0, s11, gp
                  sltu         a0, t4, s6
                  slti         s9, a1, -1851
                  addi         ra, s9, 1918
                  slt          a5, ra, s6
                  add          zero, t1, s6
                  sltu         s3, t3, s0
                  srai         t1, a3, 18
                  addi         a0, s9, 895
                  sra          s7, s1, t6
                  sltiu        a5, t5, -1982
                  srai         a0, t1, 15
                  slt          s1, s9, tp
                  auipc        s6, 93448
                  or           t3, t3, s8
                  sltu         s3, ra, a7
                  srl          ra, a1, s2
                  and          s7, ra, s4
                  add          s2, s11, s8
                  sra          s2, a1, s7
                  sub          ra, s10, s7
                  andi         a3, a6, -551
                  add          a3, s11, s2
                  slli         a1, s1, 0
                  slli         tp, a6, 29
                  xor          t1, a2, s8
                  xor          zero, t2, a0
                  sra          t2, t2, a0
                  srai         s0, sp, 8
                  slti         s6, s8, 232
                  ori          t5, t4, -160
                  slt          s5, a7, t1
                  slt          s8, s8, tp
                  sltiu        s7, s8, -838
                  or           zero, zero, s6
                  sub          s6, a3, s3
                  ori          zero, s4, 1488
                  add          a6, s3, tp
                  slt          t4, t4, s9
                  sub          s8, zero, s7
                  sra          t2, s4, t4
                  sub          s3, a4, a5
                  slli         t5, a1, 8
                  add          s1, s4, a1
                  slti         t2, t3, 1628
                  sra          a3, t1, s7
                  ori          a4, s3, -1816
                  ori          s3, s6, 1490
                  andi         s6, s0, 56
                  slti         s11, gp, 1898
                  srai         a5, sp, 23
                  addi         s5, s0, 1199
                  and          s8, s10, s10
                  slti         ra, s4, 1498
                  xori         ra, s2, -141
                  addi         a0, a3, 435
                  sltiu        s2, t3, 870
                  addi         t5, t1, -970
                  srli         s3, s7, 3
                  lui          t1, 729428
                  andi         s8, gp, -1244
                  and          a5, a0, t3
                  sub          s4, a0, t5
                  nop
                  sra          a3, zero, sp
                  andi         s11, a6, 134
                  sub          s2, a6, t0
                  sltu         tp, s8, zero
                  ori          a6, a5, -317
                  sra          s2, t4, a0
                  auipc        a1, 853885
                  nop
                  sltiu        s1, sp, -449
                  or           t2, s2, a7
                  slti         s11, a5, 1335
                  andi         s4, s11, 679
                  srai         a4, ra, 13
                  sra          tp, a0, s4
                  ori          a4, a3, -1451
                  addi         ra, s6, -1834
                  and          a5, a5, a5
                  ori          t6, a2, 1539
                  add          ra, s9, sp
                  sra          a1, s11, t5
                  or           s8, t4, a4
                  lui          s10, 269483
                  sub          s8, s0, s3
                  andi         a3, a1, 1329
                  slli         s5, t4, 21
                  srl          t5, t5, a3
                  sltiu        t6, a0, 1898
                  and          a0, t2, s0
                  andi         a4, s2, 660
                  slli         zero, gp, 14
                  nop
                  sltiu        t1, a2, 1992
                  sub          tp, zero, tp
                  slti         t2, s5, 1271
                  or           s1, a1, a4
                  and          s1, s11, s10
                  slt          t1, s4, s4
                  xori         a6, s1, -111
                  xori         a2, a7, 1713
                  slti         t4, a5, -92
                  or           s10, s4, s0
                  add          t6, s11, tp
                  lui          ra, 853136
                  sltiu        s8, a6, -1341
                  slli         t5, a5, 24
                  or           s5, s9, t4
                  sltu         s1, ra, a0
                  srli         zero, sp, 2
                  auipc        a1, 529677
                  auipc        s11, 1046426
                  srl          s8, a3, t5
                  sltu         s4, t0, s8
                  andi         s7, a2, 1542
                  addi         a5, s6, 325
                  sll          s0, t4, zero
                  add          t5, a6, s5
                  andi         t1, t4, -813
                  xori         a6, s11, 1398
                  srli         zero, s1, 3
                  or           a0, t0, a0
                  sra          a6, s4, a6
                  addi         a5, s11, 1852
                  sll          s0, ra, a3
                  xor          t2, a6, t2
                  andi         a1, s10, -1072
                  sltiu        tp, s11, -2032
                  ori          s10, gp, -1223
                  xori         s2, tp, 1024
                  sll          a4, a2, a4
                  sra          s1, s6, a2
                  sll          a2, s0, a7
                  sltu         a5, t6, s2
                  xor          s10, t6, s7
                  xori         a0, a6, 293
                  sltiu        s11, ra, 193
                  sll          a0, a2, gp
                  and          t4, s11, t3
                  sltu         t1, t2, sp
                  srl          a1, s8, t1
                  ori          t5, tp, 830
                  and          s4, s1, t6
                  addi         t1, s4, -1904
                  slti         s5, s11, -1601
                  lui          t6, 597355
                  slli         t5, a4, 22
                  add          a0, t0, a7
                  slti         a0, s11, 2001
                  srl          s5, zero, t5
                  slt          a2, t3, s4
                  slti         s2, a7, -1078
                  srli         s1, a1, 28
                  sll          t2, a0, tp
                  and          zero, t3, gp
                  xor          a0, zero, s7
                  srai         s7, t3, 19
                  sltu         s4, t6, a0
                  ori          s0, t0, 285
                  xori         s2, t2, -1871
                  sra          s2, s5, t6
                  xori         a5, s2, 612
                  lui          s10, 966955
                  srl          t4, s2, ra
                  addi         t6, s5, -1179
                  and          s4, s1, s10
                  lui          a4, 874734
                  sll          s9, s4, t6
                  sll          gp, t5, gp
                  or           a0, t4, t6
                  nop
                  nop
                  ori          a0, s6, 2017
                  slli         t6, s1, 2
                  add          t1, a0, s1
                  addi         s2, s4, 160
                  srl          a5, s0, zero
                  sub          s6, a3, t5
                  sub          tp, t5, s9
                  srai         s8, s5, 23
                  slt          a1, s7, t3
                  ori          t1, a0, 488
                  xor          t4, s10, s3
                  srli         ra, s10, 21
                  add          a4, t3, s1
                  auipc        t4, 867280
                  slli         a4, s11, 22
                  or           s2, s9, s6
                  sra          s5, s7, a2
                  sll          t5, s5, t4
                  srli         t3, s2, 17
                  srli         s11, s5, 22
                  li           a1, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           a4, 0x80000000
                  li           s9, 0x80000000
                  li           a3, 0xffffffff
                  li           s0, 0x0
                  li           t3, 0xffffffff
                  li           s1, 0x80000000
                  li           s8, 0x0
                  li           t1, 0x0
                  li           gp, 0x52d0fb27
                  lui          s9, 770991
                  add          s8, t3, s8
                  lui          s8, 1035094
                  add          a1, gp, t3
                  nop
                  sub          a3, gp, a1
                  addi         t3, t1, -1930
                  addi         a1, s0, 962
                  auipc        t3, 943917
                  add          s8, t3, a4
                  nop
                  sub          gp, t3, s9
                  auipc        s8, 921645
                  addi         s1, t1, 264
                  addi         a3, gp, -435
                  addi         a3, t1, 1033
                  sub          s0, gp, s9
                  addi         t3, a4, -1014
                  nop
                  nop #end riscv_int_numeric_corner_stream_17
                  sra          a1, zero, s7
                  sltiu        s6, s1, -1370
                  auipc        t6, 56455
                  xor          s3, s1, s0
                  or           t2, a6, s5
                  sub          s2, a1, s0
                  xori         a0, s10, -1581
                  sltiu        ra, s3, -980
                  add          a4, t0, a2
                  sll          a1, t2, s10
                  srli         s6, t0, 2
                  srl          a1, s6, t6
                  lui          a2, 1006097
                  and          t1, s11, s1
                  auipc        t4, 292441
                  srli         t6, s10, 18
                  slt          t1, a5, s0
                  xor          ra, t5, a5
                  ori          s8, s11, -1379
                  auipc        s8, 417750
                  add          a4, t5, ra
                  xori         s3, zero, -684
                  slli         t6, s4, 0
                  auipc        t4, 84685
                  or           ra, s6, s9
                  sra          s4, a5, sp
                  sra          s3, a7, t1
                  or           t1, t2, t0
                  lui          s2, 222697
                  sra          t5, t3, s10
                  nop
                  sltiu        s9, s7, 1336
                  sltiu        t4, s1, -83
                  srli         a6, s0, 8
                  slti         ra, s2, -128
                  slti         s1, s1, -1324
                  andi         t3, a3, 1938
                  slli         t3, s0, 6
                  sub          s6, a2, zero
                  auipc        tp, 827737
                  sll          a5, sp, a6
                  sll          s4, s6, a1
                  add          s10, a6, s6
                  nop
                  sltiu        s4, s9, 1231
                  auipc        t4, 171724
                  ori          t3, zero, -480
                  or           t6, ra, t0
                  slti         s11, t3, -185
                  sltu         s5, s9, s1
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           s6, 0x3194beea
                  li           s11, 0xffffffff
                  li           s4, 0x0
                  li           s8, 0xfc473fb7
                  li           t5, 0x0
                  li           s9, 0xfe2595bf
                  li           a1, 0x59effce5
                  li           s7, 0x0
                  li           a5, 0x80000000
                  auipc        a1, 893208
                  addi         s2, s4, -526
                  auipc        s8, 891870
                  lui          s8, 58412
                  auipc        s9, 770215
                  sub          t5, s2, s9
                  sub          s2, s7, s8
                  nop
                  sub          s11, a5, a5
                  lui          s2, 800636
                  nop
                  lui          s7, 413113
                  nop
                  addi         s11, s4, -1701
                  add          s11, a1, s11
                  auipc        s11, 910818
                  nop
                  auipc        s6, 355327
                  lui          s11, 77333
                  add          s9, s2, s8
                  add          t5, a1, t5
                  lui          s4, 1014666
                  add          s6, s7, s2
                  addi         t5, s8, -605
                  lui          s7, 966619
                  nop
                  sub          s2, a5, s6
                  auipc        s2, 448937 #end riscv_int_numeric_corner_stream_18
                  sltiu        tp, t0, 1420
                  sub          t6, s7, a0
                  srli         ra, s3, 7
                  ori          s8, s3, 40
                  and          s3, s7, t0
                  li           a0, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           t1, 0xffffffff
                  li           s1, 0xffffffff
                  li           s3, 0x8b2e65c5
                  li           a1, 0x0
                  li           s0, 0x7a8b68cf
                  li           t3, 0xfc7243f4
                  li           t2, 0x57c3fa50
                  li           s11, 0x80000000
                  li           s4, 0xf00c9780
                  addi         t2, s1, 1429
                  sub          s4, s11, a0
                  add          s11, s4, t2
                  sub          t3, s11, s3
                  nop
                  auipc        t3, 303564
                  auipc        a1, 126858
                  lui          t3, 23039
                  sub          a1, a1, a0
                  addi         t3, a0, -1996
                  nop
                  add          t2, s1, t2
                  lui          t1, 41568
                  nop
                  add          t1, s3, t3
                  auipc        s3, 346494
                  lui          s11, 369934
                  sub          t1, a0, s0
                  auipc        s3, 879070
                  addi         s4, t3, -1202
                  addi         t1, s11, -137
                  lui          s0, 698361 #end riscv_int_numeric_corner_stream_0
                  andi         t2, s4, -866
                  srl          t4, s7, ra
                  srli         a4, s9, 26
                  srl          s8, s1, t6
                  sltu         t2, a0, a2
                  xori         t1, ra, 1314
                  addi         a2, gp, -1037
                  slli         t2, sp, 9
                  sltu         tp, a7, s11
                  sub          t1, tp, s4
                  xor          s10, a0, s3
                  slt          s4, s6, s1
                  slli         a6, a2, 16
                  sll          s5, a2, s10
                  xor          ra, s2, t2
                  srli         t3, zero, 13
                  srli         a1, s3, 21
                  ori          s9, a4, -659
                  and          s5, s4, tp
                  srli         s0, s2, 29
                  srli         t2, tp, 13
                  slli         s9, t1, 4
                  sltiu        a4, s11, 1585
                  srai         ra, s8, 5
                  xori         s0, a5, 1814
                  nop
                  addi         a6, sp, -773
                  xor          tp, t0, t1
                  nop
                  sub          t3, a5, t4
                  andi         a4, s3, 1702
                  slli         a2, a7, 31
                  sltu         s11, a0, a2
                  xori         a1, s4, 1516
                  srai         s1, t5, 21
                  and          t3, sp, s11
                  slli         t4, a2, 16
                  ori          s4, t5, 707
                  slli         t3, zero, 23
                  slli         gp, t0, 3
                  add          t5, t2, t2
                  slli         t3, s1, 6
                  sll          t4, s10, a6
                  andi         s1, s7, 1787
                  addi         s7, a3, 1117
                  srai         t6, s6, 13
                  add          s7, a3, s7
                  xor          t6, t5, s0
                  sltu         a1, a2, s9
                  nop
                  sra          ra, s3, t6
                  add          a0, s1, s10
                  xori         ra, sp, 139
                  add          a6, s5, s5
                  sltiu        s2, a1, 1102
                  srai         t5, s2, 9
                  sub          t1, a1, t3
                  and          s4, a3, s11
                  slt          gp, a7, s1
                  srai         t2, gp, 2
                  lui          tp, 920398
                  sll          s6, a7, a3
                  srai         s6, a5, 23
                  lui          t3, 667861
                  srai         s8, s0, 19
                  or           a4, a3, s0
                  nop
                  xor          a3, ra, s8
                  add          gp, s5, s11
                  sub          s6, t6, t0
                  auipc        s5, 427043
                  add          ra, s1, s3
                  sub          s8, s8, ra
                  auipc        a4, 371783
                  sll          t6, t0, t6
                  srl          s1, t6, sp
                  sra          a3, s9, s9
                  srli         s11, tp, 21
                  and          tp, tp, a4
                  addi         t3, t0, 1511
                  or           s5, a6, s9
                  srl          gp, a2, t0
                  srai         a5, a6, 5
                  auipc        s7, 306418
                  sll          gp, a2, s10
                  srai         a4, s10, 30
                  lui          a1, 384774
                  nop
                  andi         t1, s10, 1495
                  and          s5, a6, t6
                  auipc        ra, 816024
                  andi         ra, t5, 73
                  or           s11, s9, s9
                  nop
                  ori          a1, t2, 1895
                  slli         gp, t0, 27
                  xor          a2, t6, t3
                  sub          t5, a5, s6
                  srai         t4, a6, 5
                  nop
                  and          ra, ra, tp
                  xor          s4, zero, a4
                  sltu         a2, s8, t1
                  lui          a0, 159034
                  slli         s3, t1, 0
                  slli         s6, sp, 5
                  srli         a0, a1, 4
                  slt          s7, s5, s5
                  add          a5, t6, s2
                  sll          s4, s8, a5
                  ori          t3, a2, -2005
                  ori          t6, s0, -1642
                  sll          s11, t4, s0
                  slt          t4, t4, t1
                  sltiu        a1, ra, 138
                  slt          s8, zero, a3
                  auipc        t5, 132352
                  xori         zero, a2, -1276
                  andi         s8, a1, -1707
                  srli         a3, s1, 29
                  slt          a5, ra, sp
                  xor          a2, a0, t0
                  and          s5, gp, t0
                  lui          t1, 1033353
                  srli         s5, a3, 29
                  nop
                  slt          t1, t5, a5
                  nop
                  auipc        t4, 884893
                  addi         t4, s8, 452
                  and          t1, a5, s3
                  lui          s10, 576595
                  xor          gp, s7, s11
                  ori          ra, s4, 1798
                  or           a0, t2, s4
                  slti         t4, s5, 1386
                  sll          a0, t6, s11
                  andi         a5, s0, -220
                  lui          s7, 984038
                  addi         t2, t4, -101
                  sltiu        t4, t0, -1851
                  srli         a6, s9, 20
                  sltu         s0, t5, s6
                  slt          s4, t6, s8
                  andi         a3, t5, -230
                  and          s7, s1, t5
                  auipc        t3, 572808
                  sra          t2, s4, a2
                  slli         t5, a6, 21
                  sll          t1, sp, s7
                  addi         t5, a5, 1190
                  andi         s10, s11, -1214
                  slti         s11, s3, 1342
                  add          ra, a2, s5
                  sltu         a4, s6, t5
                  slti         a4, zero, -1561
                  and          t2, s7, t3
                  auipc        s7, 775192
                  add          t6, t6, s0
                  srai         a1, s8, 15
                  andi         a4, s0, -1751
                  addi         s6, a4, 1179
                  srl          t5, s11, s0
                  sra          s0, gp, a6
                  and          s0, t4, t1
                  srl          s4, t1, s11
                  srl          s6, s11, t1
                  slli         t3, t1, 17
                  xor          s0, t0, a2
                  srl          t6, tp, s9
                  nop
                  slli         a3, t6, 21
                  and          zero, s6, t5
                  sra          s10, s4, a1
                  sltu         zero, s5, a5
                  sltu         a5, ra, s5
                  xori         s5, a1, 818
                  and          t3, s6, s5
                  sltiu        s6, s0, 612
                  sra          a5, s6, s4
                  sltu         t4, t6, s8
                  ori          zero, t3, -217
                  xori         s4, gp, 1153
                  lui          s11, 43955
                  xori         t1, a1, 1871
                  sltiu        s10, s7, 1643
                  sltu         s0, a0, s9
                  ori          a4, a4, 282
                  slt          tp, s11, t2
                  slti         s9, s1, 1211
                  sll          a0, s11, sp
                  sll          s4, a3, a2
                  sltu         s9, t0, t5
                  slli         s1, t3, 28
                  srli         a4, s3, 23
                  slt          s11, t6, s10
                  sltiu        t1, t4, 767
                  srl          s6, s1, t4
                  slt          t3, tp, s7
                  nop
                  srl          s3, t4, s9
                  srai         s7, t2, 8
                  and          s7, tp, t0
                  xor          t2, ra, s5
                  nop
                  sltu         t5, s7, a1
                  auipc        s2, 314181
                  sra          s2, s7, s4
                  srl          a3, s6, zero
                  ori          s4, a1, 585
                  sra          t3, s11, s3
                  sub          a4, s9, s4
                  lui          a5, 981482
                  slti         tp, sp, 542
                  sll          t6, t3, ra
                  slti         t5, t5, -1133
                  sll          s0, s7, s5
                  srl          s11, a0, a5
                  or           a1, a5, t3
                  or           s3, zero, s8
                  addi         s10, s2, 12
                  andi         a0, a3, -1000
                  nop
                  slti         a2, a4, 1185
                  slt          s2, s2, a7
                  slli         s5, a0, 20
                  or           zero, t6, s3
                  or           a2, ra, s0
                  xori         t5, s9, -302
                  andi         s10, ra, 1861
                  xor          s0, a0, tp
                  sltu         t4, s9, a6
                  xor          tp, t1, a6
                  addi         ra, s7, -1587
                  slt          tp, a3, a5
                  slli         s3, tp, 30
                  sub          a6, t0, t1
                  sra          a6, a4, a7
                  and          s2, s11, tp
                  xor          s11, s0, s6
                  or           t5, a5, s4
                  add          a6, zero, s3
                  sll          t2, t4, s7
                  slli         a3, tp, 19
                  srai         a1, t5, 23
                  slli         s11, s2, 26
                  sltu         s2, t3, a5
                  and          t4, t4, s10
                  srai         s1, gp, 21
                  addi         t1, t6, -124
                  sltu         s10, s6, a1
                  sll          a3, t6, s10
                  sll          t1, a3, tp
                  nop
                  or           s11, a6, a4
                  sll          s11, a5, a1
                  slti         s8, s9, -1892
                  add          t4, a5, a3
                  slt          s10, s2, a6
                  slli         s9, s5, 6
                  or           t3, s11, s11
                  slli         t6, gp, 2
                  and          a5, t3, tp
                  sll          a6, a7, t3
                  sll          t6, t6, t3
                  or           zero, s3, a1
                  sll          zero, t1, s11
                  sll          t2, s3, a7
                  and          t2, a6, s9
                  srli         s6, s2, 19
                  slt          t1, t2, a3
                  or           s0, t0, s8
                  xori         s2, s10, -1602
                  slli         t6, t6, 12
                  srl          s1, s5, sp
                  andi         s4, a0, 489
                  nop
                  sub          a0, a0, zero
                  xor          tp, ra, a1
                  addi         s3, zero, 494
                  auipc        a3, 483953
                  sub          gp, a2, a7
                  addi         t5, a4, -1612
                  xori         s10, t1, 1904
                  srli         gp, t5, 8
                  and          s11, gp, t1
                  sub          t3, s10, t6
                  slli         s11, s9, 3
                  srl          s9, a2, t2
                  sub          s6, s6, a4
                  ori          s9, a6, -943
                  add          ra, t1, s2
                  ori          a1, t4, -1909
                  slt          t2, t6, t0
                  ori          a1, t2, 93
                  slli         t1, s10, 26
                  sltu         s9, a2, t6
                  or           s0, sp, s8
                  auipc        a5, 89977
                  slti         gp, ra, 464
                  srl          s4, a2, zero
                  ori          t4, a7, -1850
                  slt          a5, a3, s4
                  sub          s11, t0, zero
                  and          s4, s8, s6
                  ori          a1, a0, 1809
                  auipc        s0, 410117
                  and          ra, zero, s7
                  slli         ra, s11, 20
                  add          s1, a2, ra
                  nop
                  slti         tp, t0, 1736
                  slti         gp, a3, -1508
                  slt          s9, t0, s7
                  nop
                  sll          s1, s2, a5
                  or           tp, a2, s6
                  and          ra, a0, s6
                  sub          s10, s4, t1
                  sra          gp, t5, a0
                  auipc        t4, 858203
                  add          t6, t4, tp
                  slli         a0, s7, 29
                  sltiu        zero, tp, -1998
                  andi         a3, s9, -1473
                  sub          t1, gp, s1
                  auipc        s8, 975400
                  lui          gp, 967162
                  sltu         t2, s8, s5
                  nop
                  sra          s6, t1, s5
                  andi         a2, t2, -1858
                  sra          a4, s11, s1
                  addi         s8, a3, -1838
                  auipc        tp, 227590
                  slli         t6, gp, 21
                  sra          t5, s1, s3
                  srli         a4, t0, 31
                  slt          a2, zero, t2
                  addi         t1, a2, -307
                  addi         t5, a1, 1763
                  lui          t2, 870741
                  and          s3, s9, s0
                  slt          a5, a5, s0
                  add          s5, t1, tp
                  addi         s10, a6, -176
                  nop
                  sra          s4, s1, a7
                  srli         a5, a7, 27
                  sra          a3, a3, tp
                  slti         t6, s0, -1308
                  slli         t4, t1, 30
                  sltiu        a5, t5, -149
                  slti         t2, sp, -6
                  slli         gp, t0, 4
                  sra          s0, s9, s8
                  slti         a1, a3, -1697
                  xor          a4, t3, s11
                  srai         s3, s4, 25
                  add          t1, s1, s9
                  slli         s10, a5, 10
                  addi         s8, t0, -778
                  xor          tp, gp, t1
                  sub          t1, a4, t3
                  add          ra, t6, t3
                  or           s11, s4, s9
                  auipc        s10, 368431
                  and          tp, s9, zero
                  slti         s10, s1, 1028
                  sra          t1, s10, t2
                  add          s6, a3, t4
                  or           s4, s11, s1
                  xori         a5, s11, -1718
                  add          a0, a4, t3
                  addi         t5, zero, -283
                  ori          ra, s3, -1028
                  xor          t4, s0, a4
                  slt          t2, t3, s1
                  lui          a1, 880603
                  auipc        s10, 491103
                  slt          t4, s10, tp
                  lui          a4, 121903
                  xor          gp, s3, ra
                  sltu         t1, s5, s11
                  nop
                  lui          ra, 818112
                  slti         s8, a4, 723
                  auipc        s3, 964318
                  addi         s11, s10, -1209
                  srli         s9, t0, 18
                  xori         s3, t4, -594
                  auipc        s11, 475961
                  sltu         a6, ra, gp
                  slt          s8, s5, a1
                  srl          t3, tp, a4
                  sub          t2, s2, tp
                  add          s6, a0, s9
                  sltiu        gp, ra, -579
                  ori          gp, t4, -1668
                  sltu         s6, a3, s8
                  sll          a0, s10, a0
                  xori         s7, a4, 250
                  slt          t5, s2, gp
                  auipc        a4, 1002378
                  add          ra, s8, s0
                  srl          a6, a3, s5
                  lui          s9, 183742
                  sll          t6, s5, s7
                  srli         t5, s11, 29
                  ori          s5, a5, 1669
                  xori         t5, s10, 1137
                  sll          a1, t3, s4
                  sltu         s10, sp, s6
                  sub          s6, t1, gp
                  sra          s2, s7, t2
                  xor          gp, s6, a4
                  slli         t4, zero, 7
                  srli         zero, s6, 1
                  or           s10, a2, a3
                  sltiu        s2, gp, 995
                  sub          gp, s0, s5
                  xor          s9, s9, s8
                  xor          s11, t6, s9
                  slli         s9, s7, 15
                  slli         s6, t3, 19
                  and          t2, t3, a6
                  slli         s2, t4, 29
                  sltu         s8, ra, sp
                  nop
                  srai         s5, t3, 15
                  srl          a5, a7, s9
                  nop
                  sub          a1, t5, a6
                  sltu         s0, ra, s9
                  nop
                  xor          a6, s1, tp
                  andi         s6, s5, 155
                  sll          s8, t2, a6
                  and          zero, a4, ra
                  srai         s3, t2, 22
                  xor          t6, s4, s9
                  nop
                  and          t5, s9, s9
                  slti         a5, a0, 1947
                  add          s2, s1, a5
                  addi         gp, t5, -2036
                  xori         s11, s9, -1296
                  ori          s9, t5, -1328
                  slt          a0, t5, s2
                  lui          tp, 719083
                  nop
                  auipc        s5, 585446
                  li           t3, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           t5, 0xdc458193
                  li           a2, 0xffffffff
                  li           s11, 0x82fe7744
                  li           a3, 0x80000000
                  li           tp, 0x48931b9
                  li           ra, 0x8cebe243
                  li           a4, 0xffffffff
                  li           s7, 0x80000000
                  li           t2, 0x1a5098c5
                  add          a2, t3, tp
                  lui          a3, 624893
                  nop
                  addi         t3, tp, -125
                  add          a4, t5, a4
                  sub          t3, tp, t2
                  lui          ra, 979191
                  lui          t5, 587348
                  auipc        t2, 167291
                  auipc        t2, 237449
                  lui          a4, 10284
                  auipc        t5, 44381
                  sub          t3, t3, t5
                  nop
                  auipc        t5, 805752
                  addi         s11, t5, 1328
                  addi         s11, t2, 884 #end riscv_int_numeric_corner_stream_12
                  sll          ra, s7, gp
                  addi         t6, s10, 918
                  srai         ra, s10, 14
                  and          a6, s1, a2
                  xori         t4, s8, 522
                  srli         t4, a0, 21
                  andi         s8, zero, -525
                  nop
                  li           ra, 0x370331ae #start riscv_int_numeric_corner_stream_16
                  li           a2, 0xffffffff
                  li           t5, 0x20dad0eb
                  li           s3, 0x80000000
                  li           s0, 0xee92bfb4
                  li           a5, 0x0
                  li           s7, 0xffffffff
                  li           s1, 0xf6635da2
                  li           s10, 0x0
                  li           s9, 0x0
                  sub          s3, s9, ra
                  addi         a5, t5, 202
                  nop
                  add          ra, s10, s3
                  auipc        s7, 269483
                  sub          s7, s7, s7
                  auipc        a2, 992012
                  auipc        s10, 383993
                  add          s7, s0, ra
                  lui          t5, 131091
                  add          s9, s7, s0
                  add          t5, s10, s10
                  addi         ra, s3, 1212
                  sub          ra, a5, s9
                  addi         s7, s7, -1589
                  addi         s9, s0, 667
                  lui          ra, 9900
                  lui          a5, 402389
                  add          s3, s3, s7
                  lui          s0, 82358
                  lui          s0, 581299
                  sub          s0, s3, s7
                  sub          ra, s1, s9
                  lui          s0, 32592
                  sub          s3, a5, a5 #end riscv_int_numeric_corner_stream_16
                  xor          t1, a3, s2
                  slli         s11, s9, 24
                  lui          s8, 361186
                  add          ra, a7, t4
                  addi         a3, s7, -407
                  srai         s5, gp, 12
                  nop
                  srl          s3, t2, t0
                  add          s6, s9, a6
                  sll          s11, s1, s7
                  lui          t5, 254518
                  sltu         s0, t1, t2
                  srl          s6, ra, a3
                  srai         s3, t5, 17
                  sltiu        t5, t5, 1368
                  nop
                  addi         a4, t1, 1377
                  srli         t6, s6, 4
                  slli         s4, a2, 3
                  xor          gp, t3, a5
                  srli         a4, s11, 2
                  srli         a6, s0, 27
                  srl          s10, t5, s4
                  srai         gp, tp, 10
                  slti         t2, zero, -1741
                  nop
                  add          s6, tp, s6
                  slli         s8, s4, 30
                  addi         t4, gp, 752
                  srli         s0, sp, 8
                  sltu         s4, t1, t4
                  slli         a1, s7, 21
                  lui          s5, 711573
                  sltu         a0, a7, a1
                  sltiu        tp, gp, 1022
                  srl          s6, sp, ra
                  auipc        t2, 96614
                  sll          s2, t6, tp
                  andi         a4, zero, 1491
                  auipc        s1, 889191
                  srai         s2, t2, 20
                  addi         a4, a4, -686
                  add          t3, sp, s10
                  sll          s0, tp, s6
                  and          a4, t3, a7
                  srli         t3, t4, 11
                  sll          a2, s1, s1
                  xori         t2, s2, -260
                  sltiu        gp, s11, -1912
                  nop
                  andi         tp, a3, 517
                  nop
                  sltu         t6, t1, ra
                  sltiu        s6, a0, 1554
                  srai         t5, tp, 28
                  sub          s2, t2, a0
                  srli         t5, t3, 3
                  addi         s4, t2, -1467
                  sltu         t4, t3, a1
                  and          a0, sp, t1
                  and          s0, a3, a6
                  sll          t6, t1, a6
                  or           a6, s1, t1
                  srl          s8, t2, t4
                  and          a3, gp, a3
                  lui          s2, 241491
                  add          gp, s5, a5
                  sll          s5, a3, s5
                  slt          s3, s11, s3
                  nop
                  xori         a3, tp, -1964
                  sll          s9, gp, a2
                  auipc        a3, 446868
                  sll          s10, ra, t1
                  srl          s10, t5, s2
                  srli         s10, t5, 29
                  srl          s3, s4, zero
                  and          s7, a1, s4
                  add          t5, s7, s5
                  srai         s0, t3, 5
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           s10, 0x5dbbe76b
                  li           s11, 0xffffffff
                  li           t5, 0x6e0246
                  li           a5, 0x80000000
                  li           t2, 0xffffffff
                  li           a2, 0x80000000
                  li           gp, 0xffffffff
                  li           s5, 0x0
                  li           t1, 0x2b611348
                  addi         ra, a2, -1522
                  addi         ra, ra, -944
                  auipc        s11, 473723
                  addi         a2, t5, -800
                  sub          gp, a2, ra
                  nop
                  add          a2, ra, s11
                  nop
                  auipc        ra, 948293
                  lui          t5, 87193
                  nop
                  add          ra, s5, a5
                  sub          t5, gp, a5
                  addi         t1, ra, -23
                  nop #end riscv_int_numeric_corner_stream_5
                  sra          s0, zero, zero
                  add          a4, sp, s3
                  sra          t5, t2, a0
                  and          ra, s11, a3
                  sltu         s7, s5, s9
                  ori          s8, s4, 543
                  addi         a1, a4, 127
                  srli         s4, s5, 8
                  xor          s7, a1, sp
                  andi         s2, s7, -80
                  slli         s3, a1, 23
                  srai         t2, s9, 30
                  sub          a0, t0, a7
                  add          t2, s6, a7
                  slti         s5, s3, 2001
                  srl          s4, t4, a0
                  srai         s1, t5, 11
                  addi         t1, t1, 1112
                  sltiu        t2, a2, -951
                  lui          s6, 632746
                  addi         a5, a1, 396
                  nop
                  auipc        gp, 1019255
                  xor          t3, a4, s1
                  sra          t3, s6, a6
                  sltiu        t5, a2, 1649
                  add          a1, s10, a0
                  sltu         a1, tp, t4
                  sub          t4, t3, s6
                  sltiu        s5, s11, -772
                  addi         s10, s9, 150
                  slti         a1, a0, -1465
                  xori         t4, s7, -643
                  srli         a1, s11, 7
                  lui          s6, 939431
                  xori         zero, s0, -1281
                  auipc        tp, 535005
                  or           tp, s10, a4
                  sltiu        a6, s0, -18
                  xor          a2, t1, a2
                  addi         s2, s9, 2045
                  add          s7, t3, s5
                  sltiu        a0, a7, 1366
                  nop
                  sltu         s9, s8, s10
                  and          t2, a2, s9
                  lui          s6, 825118
                  nop
                  sub          s7, t5, t5
                  andi         s4, zero, -458
                  sll          t2, s5, t3
                  sltu         tp, gp, gp
                  ori          t4, t3, -338
                  add          s6, a2, a3
                  add          t4, s8, a5
                  auipc        a3, 645780
                  or           s5, s7, a2
                  srai         t3, t3, 6
                  sltu         t5, s11, a3
                  slti         a2, t3, 1003
                  ori          a4, a7, -935
                  add          s3, s4, gp
                  addi         a6, a2, -368
                  add          s9, a2, gp
                  ori          s0, s2, 1904
                  slti         s0, tp, 1688
                  add          zero, sp, a1
                  lui          a0, 846751
                  nop
                  srl          s1, s7, t6
                  auipc        s6, 197930
                  sltu         t2, s0, a1
                  sra          t2, tp, s6
                  sltu         s7, s0, s3
                  ori          zero, s10, -345
                  and          a2, s2, a5
                  slt          a4, s10, s3
                  sltiu        t6, sp, -964
                  andi         t3, s0, 1657
                  sltiu        a4, s9, 214
                  sltu         a3, s8, t4
                  sltiu        tp, s9, 155
                  slti         t4, t0, 743
                  xor          a5, s6, t3
                  andi         s1, zero, -1025
                  auipc        a6, 386000
                  srl          s6, s0, a1
                  xori         zero, t4, -1248
                  xor          zero, s0, t1
                  xor          tp, a1, a5
                  and          tp, s8, s10
                  or           tp, a0, a0
                  sltiu        gp, a0, 515
                  srai         s9, a6, 6
                  and          a4, t0, t6
                  srli         s4, s2, 28
                  or           a3, a2, s2
                  addi         s8, s10, 1252
                  lui          s7, 658697
                  sra          a5, a2, t5
                  slt          s10, t6, t3
                  slt          s3, ra, s6
                  sra          s3, a4, s5
                  slli         a1, s6, 3
                  andi         s11, t1, -246
                  xori         s0, s3, -1051
                  sltiu        s11, a0, -401
                  addi         a5, s8, 387
                  nop
                  lui          s10, 537553
                  addi         a5, s7, -1913
                  xori         a1, a1, 619
                  add          t6, a4, sp
                  andi         s5, s4, 1470
                  srl          a2, t2, a2
                  add          t4, s10, s6
                  slt          t3, s2, ra
                  lui          a0, 1014842
                  slti         s11, s10, -1328
                  sra          a3, s6, s10
                  nop
                  sub          a3, zero, a7
                  srl          s9, s9, s9
                  xori         a4, zero, -678
                  nop
                  add          s3, t4, s0
                  lui          a1, 152341
                  sll          t6, t3, zero
                  sub          s4, a6, ra
                  auipc        a2, 412606
                  add          ra, a0, t3
                  sub          a3, sp, s1
                  sra          a2, s1, t2
                  srl          s9, t2, s0
                  slt          a0, a7, s5
                  xor          s9, a4, s8
                  nop
                  li           s9, 0xe4a0c1b5 #start riscv_int_numeric_corner_stream_6
                  li           a6, 0xffffffff
                  li           t4, 0x80000000
                  li           s11, 0x0
                  li           t1, 0xffffffff
                  li           a1, 0x0
                  li           gp, 0x80000000
                  li           ra, 0x74882e69
                  li           t6, 0x0
                  li           s10, 0x0
                  auipc        a6, 271113
                  nop
                  auipc        t4, 776434
                  sub          a6, a6, ra
                  nop
                  add          gp, ra, t1
                  lui          a1, 582541
                  addi         t4, t1, 226
                  sub          t6, s10, s9
                  sub          s9, t6, s9
                  nop
                  add          a6, gp, t1
                  sub          a6, s11, a6
                  sub          t4, ra, t4
                  sub          a1, s10, t6
                  nop
                  sub          gp, t6, s11
                  auipc        a6, 296350
                  addi         ra, s11, 1014
                  addi         ra, t1, -1115
                  addi         a1, s9, 1733
                  addi         t4, a6, 1125
                  addi         a6, s9, 1042
                  sub          t1, gp, t1
                  addi         t1, ra, -1593
                  sub          s9, gp, a1
                  auipc        t4, 650887
                  nop #end riscv_int_numeric_corner_stream_6
                  slt          t3, s6, s9
                  slt          a4, s11, a5
                  add          s8, s5, a2
                  xori         t5, s6, -445
                  nop
                  srl          s7, t2, gp
                  srai         s3, a3, 1
                  andi         a6, s2, -1649
                  sltiu        s11, t5, -572
                  addi         s1, s3, -1298
                  srai         a6, s8, 12
                  xori         s2, a1, 557
                  sltu         s3, t3, zero
                  nop
                  slt          s8, s6, s7
                  sltiu        s9, t6, 1139
                  add          s9, a7, s6
                  addi         s7, s3, 736
                  lui          s8, 1026546
                  xor          t1, s8, a7
                  sll          s1, s7, a4
                  or           a0, sp, a6
                  slt          s7, a6, a0
                  srai         s9, s6, 20
                  sra          t4, a0, a4
                  xori         s10, a3, 1772
                  srl          a5, a5, s7
                  auipc        t1, 291813
                  li           a6, 0xa0683231 #start riscv_int_numeric_corner_stream_13
                  li           t5, 0x0
                  li           s2, 0xac4b4dc0
                  li           s7, 0x80000000
                  li           s5, 0xffffffff
                  li           a5, 0xffffffff
                  li           t3, 0x80000000
                  li           s9, 0xffffffff
                  li           s11, 0xffffffff
                  li           t2, 0x0
                  nop
                  sub          s11, t5, t2
                  nop
                  lui          t5, 316351
                  sub          t5, s5, a6
                  sub          t3, s9, s7
                  nop
                  auipc        t5, 764626
                  addi         a6, s11, 1134
                  add          t3, s11, s9
                  sub          s5, a5, t3
                  sub          t2, t5, a6
                  add          t2, s2, t5
                  auipc        t2, 452091
                  add          s5, s11, t3
                  sub          t5, s11, t3
                  sub          a6, s11, t2
                  sub          s11, a5, s2
                  addi         s5, t5, 991
                  nop
                  lui          s9, 243698
                  sub          s9, s2, s5
                  lui          s5, 265315
                  sub          s7, a5, t5
                  sub          t5, s11, t3 #end riscv_int_numeric_corner_stream_13
                  lui          gp, 694007
                  sltiu        s3, a1, 756
                  slli         s5, t6, 4
                  sub          s5, s7, t1
                  addi         t3, a6, -1346
                  add          s3, t0, a7
                  srai         s7, a3, 21
                  ori          t1, t4, -519
                  auipc        s11, 579989
                  and          t2, s3, s2
                  sltu         s5, a3, s3
                  auipc        s2, 783131
                  sll          s5, t2, t5
                  srai         s11, tp, 4
                  and          s11, tp, t0
                  andi         s4, a3, -41
                  srai         s4, s6, 24
                  sra          a2, ra, s5
                  sll          s9, a4, s4
                  slli         s2, s5, 27
                  lui          s6, 590252
                  sub          s5, s10, t6
                  sub          s9, a4, t5
                  addi         tp, s3, -724
                  srli         t6, gp, 17
                  slt          s1, a7, s3
                  or           a6, s5, t4
                  ori          a1, a3, -1405
                  xori         zero, t4, -668
                  srli         a0, s0, 15
                  sub          a2, a7, a1
                  slt          t4, t0, s9
                  sltiu        a0, sp, 1214
                  nop
                  ori          s7, s10, -1489
                  addi         s8, a3, -1972
                  addi         zero, s6, 262
                  sra          a2, s2, a1
                  add          s10, a4, s10
                  slti         zero, ra, -1651
                  sltiu        s3, gp, -419
                  sltu         s9, s10, sp
                  slt          zero, a1, s2
                  ori          a3, a2, 1047
                  sltu         s6, s9, s5
                  sra          a0, a7, tp
                  nop
                  srai         tp, zero, 2
                  xori         a1, a4, -1525
                  sub          a1, s7, ra
                  sub          a6, a1, t0
                  slli         tp, a1, 12
                  sra          ra, a7, s9
                  srai         s10, s8, 11
                  nop
                  auipc        s7, 921189
                  xor          s8, s8, s7
                  sltiu        s8, s11, -157
                  andi         s3, ra, 266
                  ori          a2, t2, -1511
                  and          s8, ra, t3
                  sub          s5, s7, a3
                  xori         t2, s6, 292
                  slt          s5, a4, s1
                  andi         a6, t5, -1226
                  sra          gp, ra, s6
                  xor          s1, a1, s1
                  srli         ra, s9, 23
                  auipc        t4, 998163
                  and          t6, a7, s5
                  nop
                  add          t6, s9, a1
                  andi         tp, t4, 47
                  andi         s3, t4, 1883
                  srl          s3, t4, t4
                  and          s3, zero, sp
                  srai         s0, a6, 22
                  addi         t3, s6, -1261
                  auipc        s2, 658331
                  auipc        s0, 282972
                  xor          s7, s3, a6
                  add          a6, sp, sp
                  slti         t5, t0, 1413
                  sltiu        s2, a2, 1252
                  slli         s5, t0, 14
                  add          gp, s9, gp
                  sub          ra, t5, s8
                  add          a3, s4, s7
                  addi         t6, s8, -1549
                  sltu         t6, a6, t4
                  and          a2, sp, t6
                  lui          s5, 830643
                  sltu         s4, s7, s3
                  add          zero, t5, s8
                  andi         t6, t0, -104
                  srli         s2, t1, 25
                  lui          a2, 979028
                  sll          a6, a6, s8
                  addi         t2, t5, 553
                  slli         a6, a3, 1
                  addi         a5, t0, 295
                  lui          s9, 60964
                  or           a1, s9, s1
                  andi         t6, a1, 107
                  srli         s2, gp, 14
                  sub          a4, s8, a6
                  slli         s7, ra, 27
                  xori         s0, t2, 1654
                  xori         t1, s4, 1326
                  or           s7, sp, s5
                  sltiu        t5, t3, 1424
                  sltu         a4, zero, t0
                  addi         a1, a7, -1797
                  or           s4, s3, s5
                  and          s7, s8, zero
                  xori         s6, ra, 632
                  slti         s11, a1, 1646
                  andi         ra, s7, -1232
                  xor          a5, a0, s5
                  lui          ra, 457749
                  sltu         a0, s6, a7
                  auipc        a0, 483808
                  slt          s8, zero, s8
                  lui          s6, 791388
                  auipc        gp, 804973
                  sra          s10, s3, s2
                  slli         zero, s0, 30
                  sll          a5, a6, t6
                  srli         s2, a2, 6
                  andi         s3, t6, -671
                  sra          s4, sp, a6
                  sltu         t3, a7, t1
                  srli         t5, s2, 19
                  nop
                  andi         a6, t4, 353
                  sra          a4, s9, sp
                  srl          gp, s9, s10
                  slt          t4, t1, s9
                  xori         s3, s2, -1240
                  sub          s7, s10, zero
                  sra          t2, sp, a1
                  addi         a5, t4, 236
                  ori          s7, t2, 1142
                  lui          s3, 93679
                  andi         s9, a0, 1411
                  or           s0, s9, t5
                  sltiu        s7, a3, -559
                  slt          s4, s4, t2
                  slli         t5, s9, 24
                  add          ra, s3, s5
                  sltiu        a1, a0, -1738
                  addi         s3, t5, 582
                  sub          a6, a5, s4
                  lui          t1, 769689
                  or           t5, s2, s4
                  add          s3, s3, s2
                  sra          t3, t1, a2
                  or           s4, s4, t0
                  srai         s6, s2, 24
                  xori         a0, a4, 1246
                  or           a6, a6, t3
                  or           t4, s10, a3
                  srai         s3, ra, 24
                  sltiu        s2, s8, -124
                  xori         s6, s6, -183
                  srl          t2, ra, sp
                  sltiu        a4, a6, -1666
                  slt          a5, gp, s8
                  andi         a4, a6, 116
                  srl          a2, a2, a3
                  slli         a4, a5, 7
                  lui          t3, 566651
                  lui          a0, 469960
                  sra          s6, gp, t2
                  srl          a6, a2, t2
                  auipc        s3, 410309
                  sll          s7, ra, s6
                  srai         a5, s3, 3
                  sltu         s11, gp, t5
                  xor          t5, a2, a6
                  slli         t2, s5, 27
                  lui          s10, 410502
                  srai         ra, s5, 12
                  xori         a3, t5, -677
                  sra          s6, a5, sp
                  andi         t6, sp, 390
                  lui          s2, 996080
                  srai         a4, s10, 7
                  ori          s9, t4, 375
                  slt          s7, ra, t2
                  and          s4, s5, t5
                  xor          s5, gp, s0
                  srl          s3, s5, a1
                  sltu         gp, zero, a4
                  add          a0, gp, a0
                  slti         a4, s8, -709
                  auipc        t2, 391044
                  xori         t4, a6, -1388
                  sll          t2, tp, s5
                  sltu         s6, s9, s1
                  slli         t2, a7, 14
                  nop
                  and          t5, a3, s0
                  slti         gp, s7, -1344
                  sra          tp, t5, s7
                  addi         a2, a1, -1149
                  sltiu        a6, a6, 1866
                  add          a4, s8, t4
                  auipc        ra, 674704
                  add          a6, s9, t1
                  ori          a0, a5, 1522
                  sub          s8, a6, zero
                  slti         a4, a3, 341
                  sltiu        t4, a1, 1181
                  srai         s11, t1, 9
                  sltu         a4, a2, a2
                  auipc        ra, 116333
                  add          t3, t0, ra
                  addi         s2, s10, 1174
                  srai         ra, a3, 13
                  slli         t6, s8, 6
                  lui          s9, 325222
                  add          gp, s9, ra
                  slti         s11, t3, -562
                  andi         tp, s2, 1659
                  add          t3, a1, s10
                  sltiu        s4, a7, 1992
                  auipc        ra, 210672
                  nop
                  sub          s8, a7, t5
                  xori         a0, s8, 1780
                  xori         t3, ra, 181
                  xori         a2, s5, -471
                  sll          s11, t2, s0
                  xori         s0, s1, -1547
                  slt          t3, a1, t3
                  slli         a2, t4, 20
                  sub          s1, a1, a2
                  and          t5, t1, a4
                  auipc        gp, 1032918
                  or           a1, s5, tp
                  add          s6, s9, a6
                  sltiu        s5, t1, 1667
                  sltiu        s8, s6, 1133
                  xor          s9, a7, a0
                  slti         s11, s8, -709
                  srli         s1, s2, 18
                  andi         s4, ra, 1846
                  slti         s9, s0, -531
                  srl          s3, s6, a5
                  sll          t4, a6, s3
                  srli         s9, s8, 8
                  sra          t5, t2, a4
                  nop
                  srl          s6, s5, s11
                  sub          s8, s6, t1
                  sra          s1, a3, s3
                  sltu         t3, s5, t0
                  sra          s6, s4, t4
                  addi         s9, s3, 2017
                  or           s10, s10, a0
                  slti         s5, t3, -625
                  or           s7, t0, a1
                  slti         ra, a1, 1703
                  sll          s5, s3, a3
                  add          s4, t6, s11
                  and          s9, ra, a4
                  srai         t3, t6, 22
                  sll          s3, gp, sp
                  slt          a1, t1, a4
                  lui          s6, 902307
                  slti         a4, t0, 947
                  ori          s1, t0, 988
                  slt          a1, a3, s0
                  or           a0, t5, s11
                  lui          s8, 845861
                  or           s3, a3, t1
                  or           t3, s10, s11
                  sltu         a3, t5, a2
                  addi         a0, a2, -770
                  sltu         s9, t0, s7
                  srl          s9, s0, a0
                  or           a6, a6, s1
                  auipc        a4, 270601
                  sub          a3, t6, s0
                  xori         zero, a1, -1682
                  sub          a0, s9, a3
                  slli         s6, s10, 0
                  add          a1, t5, t6
                  sltiu        s11, zero, 1350
                  slli         a2, a5, 6
                  slti         s6, a1, 1819
                  srli         s4, s11, 23
                  or           a1, s4, s5
                  slt          s6, t4, a2
                  xori         zero, t0, -356
                  ori          a0, s1, 2029
                  nop
                  sll          tp, s0, s1
                  srl          s11, gp, a2
                  xori         t6, t4, -1583
                  sub          a1, t6, s2
                  sub          gp, s6, s8
                  sltiu        tp, sp, 1168
                  slti         a3, s11, -1281
                  or           s8, s5, gp
                  sub          t6, s9, s1
                  sll          s5, t5, a0
                  or           a1, s1, a1
                  sra          t4, a5, t6
                  and          t4, zero, s6
                  xor          s4, t1, s11
                  auipc        a2, 176222
                  andi         ra, s5, 1878
                  sll          a2, s4, a1
                  add          a4, t2, a2
                  addi         a1, s10, -66
                  lui          t4, 311544
                  sll          a1, s2, tp
                  ori          t4, t0, -632
                  addi         t2, t2, 703
                  addi         s10, s6, -211
                  srl          s4, s11, a1
                  slti         s6, s2, -1559
                  sltiu        t5, tp, -992
                  and          a2, tp, s2
                  add          t4, zero, s11
                  addi         gp, a4, -1961
                  auipc        s5, 402590
                  and          s1, a2, s10
                  sra          s6, a3, s11
                  nop
                  sra          s1, t5, a0
                  srai         s6, s8, 18
                  add          s7, s10, s6
                  sltiu        s5, t5, 809
                  sra          s8, s8, s3
                  and          t1, t3, s10
                  slti         s6, a0, 1699
                  nop
                  auipc        a5, 368059
                  addi         s2, s11, 465
                  ori          s6, s6, 1266
                  xori         t3, s6, -521
                  sub          t1, s1, t0
                  xor          s5, zero, a5
                  sltu         s2, t6, s8
                  sltiu        s6, t5, 1915
                  lui          a3, 891238
                  add          t4, a3, a4
                  srai         a5, t1, 15
                  sub          t3, s8, s10
                  auipc        s4, 630577
                  ori          s10, s2, 18
                  sra          s9, s9, s10
                  srli         t4, s8, 28
                  or           s5, t3, t2
                  slt          a6, t3, zero
                  addi         s8, t6, 1842
                  addi         t5, t3, 1780
                  srai         a0, a7, 10
                  srl          t2, a0, tp
                  sub          t5, a2, t6
                  slti         s1, s7, -260
                  xori         t5, t4, 1051
                  and          a5, s11, s4
                  nop
                  sub          s1, t3, a3
                  ori          s6, s5, -1233
                  xor          s10, s11, t0
                  lui          t1, 48803
                  xori         t5, s6, -765
                  slli         a2, a6, 17
                  or           t4, s7, a4
                  xori         a3, t0, -929
                  srli         gp, a2, 15
                  sra          s5, a5, t4
                  sll          t4, t1, t1
                  sll          a4, s11, s10
                  ori          a3, s7, 1037
                  srai         gp, s4, 9
                  xor          tp, s8, gp
                  slti         s11, t0, 202
                  add          s0, a1, a5
                  addi         a0, s6, -534
                  lui          s4, 445696
                  add          s4, s11, a7
                  lui          a3, 21192
                  sub          s2, a4, gp
                  add          a1, s11, t4
                  sub          s6, a4, t1
                  slti         t4, t2, -1624
                  sltu         s11, t3, t1
                  or           s6, s8, t3
                  slli         s3, s3, 22
                  addi         tp, sp, -582
                  slli         t2, gp, 10
                  xori         s0, s3, 675
                  sll          t6, s6, sp
                  nop
                  slti         a3, a3, -1422
                  xori         s8, s8, -324
                  slti         t2, a6, -1003
                  or           s9, a2, a4
                  sll          s10, t2, a2
                  or           s6, s6, gp
                  add          gp, s2, sp
                  xor          s3, t2, a5
                  sll          s0, t5, a1
                  slli         s8, sp, 1
                  srai         a1, a6, 22
                  srli         s7, a7, 7
                  ori          a6, s3, 1924
                  ori          a3, gp, -69
                  sltu         t5, s2, gp
                  srl          a0, s9, a5
                  sra          s3, s2, a7
                  srli         s6, s11, 15
                  addi         a5, sp, -490
                  ori          t4, s9, -1474
                  addi         ra, t0, -1389
                  and          t6, zero, a3
                  add          gp, a1, s0
                  slli         t3, a7, 20
                  srl          s4, t6, t2
                  srli         a4, gp, 28
                  sltiu        zero, a1, 1274
                  sub          t4, s6, ra
                  srai         zero, s3, 4
                  sltiu        zero, t5, 1106
                  ori          gp, t3, -814
                  slt          gp, tp, t5
                  or           t4, t2, ra
                  xori         s2, t4, 1022
                  sra          s0, t4, s9
                  auipc        s2, 517508
                  srli         s0, a3, 7
                  xori         a5, a5, -1567
                  sll          s0, t2, s0
                  slli         s0, s7, 8
                  sub          s9, s11, s2
                  slti         s6, s6, 1127
                  add          tp, t4, t3
                  add          t2, a2, s8
                  sub          t2, s9, s4
                  srli         s7, s2, 27
                  or           t3, zero, t3
                  sltiu        s9, a2, 138
                  ori          a2, s8, -815
                  srl          t3, a7, a3
                  and          a1, t6, zero
                  slt          s8, ra, t4
                  xori         t2, a0, 1885
                  sltiu        s8, s3, 1314
                  or           s1, a5, a7
                  slti         s11, s0, -1318
                  srli         a5, zero, 7
                  sltiu        s1, ra, -932
                  xori         t6, gp, -177
                  slli         s2, t2, 0
                  ori          s10, s0, -351
                  slti         a5, tp, 125
                  sub          s3, t6, gp
                  srli         s4, t2, 17
                  nop
                  srai         t1, t0, 31
                  srl          t5, s11, a0
                  slt          zero, t4, t5
                  sra          t1, a7, s2
                  add          s1, t2, s11
                  sra          s10, a7, a0
                  add          a0, a0, s0
                  slt          s6, s9, t0
                  or           s6, t1, a3
                  or           tp, a7, gp
                  andi         a2, s3, 1861
                  xor          s4, s2, s4
                  sra          t4, s4, s1
                  sltiu        s6, s0, -1844
                  addi         s10, s10, 1330
                  sltiu        a4, gp, -532
                  ori          a2, s2, 657
                  sll          t1, t6, s8
                  srai         a3, s3, 18
                  and          zero, s11, t4
                  sub          s7, t0, a4
                  srai         a4, s0, 0
                  xor          ra, a3, s3
                  lui          a0, 711478
                  nop
                  slti         a4, a4, 1234
                  auipc        a1, 723509
                  nop
                  srli         t3, s5, 24
                  slli         t4, s7, 11
                  xor          s3, t6, s10
                  sltu         s7, s4, a0
                  auipc        ra, 167841
                  addi         t3, zero, -1524
                  srl          a6, sp, a0
                  sub          t3, zero, zero
                  slli         a2, t2, 5
                  slt          a4, a3, a1
                  and          t3, s5, a7
                  srl          zero, s5, gp
                  or           ra, a3, s6
                  and          a6, t6, s0
                  addi         a6, s10, -296
                  or           ra, t1, ra
                  lui          s6, 679353
                  andi         a0, gp, 781
                  xor          s3, sp, s11
                  slli         a3, s7, 0
                  sll          t5, t5, gp
                  nop
                  sub          t3, a0, s11
                  slti         s5, s3, 755
                  xori         gp, sp, 1174
                  slli         t6, t4, 3
                  srai         a3, s2, 0
                  slli         s9, s1, 3
                  slt          tp, s4, a7
                  slt          t2, s4, s2
                  andi         s5, zero, -1601
                  addi         s3, a4, -621
                  addi         a4, a2, 1406
                  nop
                  srai         a3, a6, 11
                  srai         t4, s6, 17
                  slti         t1, a1, -899
                  sll          s6, s10, t4
                  slt          t5, a3, t5
                  ori          tp, gp, 506
                  addi         s11, t6, 619
                  or           t2, ra, s6
                  sra          s2, t4, s5
                  xor          s0, t2, zero
                  sra          s0, s4, a6
                  auipc        a0, 243983
                  xor          gp, s7, s1
                  xor          s10, t3, t1
                  xor          s3, t1, ra
                  sltu         s11, t5, t4
                  ori          s1, t1, -1008
                  sra          gp, s1, t0
                  or           t1, a0, sp
                  add          gp, t5, tp
                  addi         s2, a7, 671
                  sub          s5, gp, t3
                  slli         s2, s6, 8
                  and          gp, t0, s2
                  sra          t4, s2, s0
                  sra          a3, t6, s5
                  or           s5, a1, a6
                  and          a4, zero, t4
                  srl          t3, s10, sp
                  slt          s11, s7, sp
                  addi         s2, a3, -748
                  slli         t1, a4, 31
                  nop
                  addi         s1, s10, -242
                  xori         gp, a1, -108
                  xori         a0, t6, 2016
                  xor          s9, s4, t1
                  ori          s7, s6, -1555
                  auipc        t4, 749854
                  sltu         a2, tp, s7
                  srl          a0, s4, a6
                  and          s2, t0, ra
                  auipc        s9, 832756
                  slti         ra, t4, 1592
                  sub          s11, s6, s4
                  addi         a5, t1, 1263
                  andi         tp, t1, 1990
                  srai         t1, s11, 9
                  sltu         t2, a0, t2
                  sra          ra, a6, t4
                  and          s9, s9, s3
                  srai         t2, s1, 20
                  slti         s5, s1, 1070
                  slti         a5, ra, 116
                  addi         s3, s4, 1670
                  srai         s1, s3, 6
                  slti         a0, zero, -1679
                  slli         s4, t0, 10
                  sra          a3, sp, sp
                  auipc        t5, 566914
                  sltu         t5, a1, sp
                  sltiu        s8, s4, -451
                  slt          s9, tp, a7
                  slt          zero, s7, s6
                  srli         s4, a6, 2
                  lui          a3, 35743
                  addi         a5, s3, 674
                  and          tp, t3, s4
                  ori          gp, t0, 129
                  ori          t1, t6, -1939
                  nop
                  srl          a3, zero, s9
                  srl          a2, s5, s8
                  sll          tp, s2, s9
                  slt          t4, s11, s11
                  or           s8, s4, a7
                  sltu         t1, t6, t1
                  or           s1, tp, ra
                  or           ra, s1, s0
                  sra          gp, gp, s8
                  xori         a3, a0, 1923
                  add          a6, a5, sp
                  andi         t3, t6, -1136
                  slt          zero, s1, a4
                  nop
                  sltu         a1, s10, t0
                  nop
                  andi         t2, t0, -1478
                  ori          s1, s1, -1581
                  slt          gp, a7, s0
                  add          a4, s8, s1
                  slti         a0, s3, -1474
                  lui          s4, 767025
                  auipc        a4, 781506
                  slt          a5, s8, a4
                  ori          a6, t3, 1726
                  or           zero, t3, s2
                  slti         s6, a7, -1164
                  sltiu        a6, t5, -1572
                  sltiu        tp, tp, -684
                  slt          s9, t6, sp
                  srl          s1, s1, s2
                  sra          s6, ra, s4
                  and          s4, t5, t1
                  xor          s4, t2, s11
                  addi         a6, s5, 1377
                  andi         t6, t3, 41
                  slti         gp, s8, -461
                  addi         s6, zero, -423
                  andi         s1, tp, -897
                  sltu         a2, s4, a0
                  sltu         ra, s7, t3
                  sra          s10, s9, a4
                  lui          s3, 106389
                  slti         ra, tp, 1695
                  srai         s7, s11, 5
                  auipc        s5, 611979
                  ori          s6, s8, -1919
                  and          s0, s3, s2
                  sub          t1, sp, t0
                  sltiu        ra, s0, 763
                  srai         a0, t3, 12
                  lui          t1, 884495
                  xori         a1, s2, 1815
                  sra          a0, ra, a3
                  sltiu        t5, s6, -852
                  xor          t3, s5, t0
                  andi         t6, s4, -1205
                  andi         a4, t6, 1231
                  slti         gp, sp, -161
                  xor          t2, s8, s9
                  xori         a1, a1, -570
                  ori          tp, s8, 151
                  srl          a1, a7, zero
                  xori         a0, s9, 1659
                  add          s8, s11, zero
                  srli         s7, s8, 5
                  addi         s10, t1, 311
                  or           ra, tp, s1
                  auipc        s5, 31625
                  and          t4, s11, s6
                  lui          s4, 969000
                  xor          s4, s5, s3
                  or           gp, a1, a5
                  sub          t6, t0, s8
                  slt          t2, a0, a4
                  addi         ra, s8, 1385
                  andi         s9, a7, 1229
                  addi         s10, s1, -893
                  sltu         a0, s5, t3
                  sub          ra, a0, s5
                  nop
                  slt          zero, a1, tp
                  slt          tp, ra, a4
                  ori          s7, a4, 1098
                  slt          tp, s8, s4
                  slt          s10, s7, a5
                  slli         a1, s8, 9
                  xori         a4, t5, 752
                  sub          s10, s3, ra
                  andi         zero, ra, -1231
                  nop
                  lui          s3, 172932
                  add          a4, s1, t6
                  sll          s5, a2, s1
                  slli         gp, t2, 23
                  nop
                  and          s6, s5, t5
                  and          t2, a2, a4
                  lui          s10, 562013
                  slti         zero, s6, -1392
                  slt          s3, tp, zero
                  slt          a4, a6, s10
                  srai         s6, a6, 27
                  auipc        t4, 58728
                  or           a4, s4, s10
                  sub          gp, a4, tp
                  srli         gp, ra, 16
                  slt          a3, s8, t2
                  sll          s6, a5, tp
                  lui          a3, 645840
                  andi         s0, a0, 1763
                  addi         s1, s6, -1191
                  srl          s3, a5, gp
                  add          tp, gp, tp
                  ori          s2, t4, -497
                  xori         a4, sp, -1565
                  addi         s11, t4, -510
                  ori          tp, a7, -1845
                  srli         s6, tp, 27
                  xori         s2, tp, -1667
                  slt          a1, sp, s8
                  sltiu        ra, s8, -242
                  auipc        s7, 90180
                  xori         a3, t4, -1055
                  lui          s6, 816775
                  andi         tp, t1, -454
                  add          gp, a2, s4
                  sltu         t3, a4, s10
                  xori         a2, t3, -1781
                  add          a3, s3, s4
                  nop
                  srli         s6, a5, 23
                  ori          s10, zero, 1173
                  srai         s5, sp, 15
                  xori         s0, a4, 253
                  slti         s2, s9, -1712
                  auipc        a6, 740232
                  srl          t5, t4, s1
                  sra          s2, s0, s3
                  srl          a5, t2, s6
                  and          a5, t6, s1
                  srli         a3, s0, 11
                  srli         t1, a7, 0
                  lui          s5, 48411
                  andi         t2, a0, -1102
                  sltiu        s8, a1, -780
                  sra          ra, s10, t1
                  sub          s4, a7, a0
                  addi         s9, ra, -495
                  sltu         a0, s2, a3
                  srai         t1, t5, 29
                  nop
                  sra          a4, a7, s2
                  slt          s8, t0, s0
                  srai         tp, s3, 0
                  sltu         s5, s9, a7
                  xor          a5, a7, s7
                  nop
                  slli         a3, a4, 1
                  slli         tp, s3, 17
                  sra          t3, a5, sp
                  slti         t2, a4, 187
                  lui          s10, 353453
                  ori          s3, s3, 1706
                  and          t4, tp, s8
                  srli         s2, s6, 16
                  auipc        t1, 803149
                  slli         gp, s5, 15
                  andi         a4, zero, -901
                  sra          a4, a4, s11
                  andi         zero, s4, -1102
                  auipc        s4, 723420
                  sltu         a6, s4, t4
                  sll          s1, tp, s5
                  add          a6, s7, s6
                  slt          s2, s10, s4
                  la x5, test_done
                  jalr x0, x5, 0
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
                  add x17, x2, zero
                  csrr x12, 0x300 # MSTATUS
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 31
                  bne x12, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x12, 0x341 # MEPC
                  csrr x12, 0x342 # MCAUSE
                  li x28, 0x3 # BREAKPOINT
                  beq x12, x28, ebreak_handler
                  li x28, 0x8 # ECALL_UMODE
                  beq x12, x28, ecall_handler
                  li x28, 0x9 # ECALL_SMODE
                  beq x12, x28, ecall_handler
                  li x28, 0xb # ECALL_MMODE
                  beq x12, x28, ecall_handler
                  li x28, 0x1
                  beq x12, x28, instr_fault_handler
                  li x28, 0x5
                  beq x12, x28, load_fault_handler
                  li x28, 0x7
                  beq x12, x28, store_fault_handler
                  li x28, 0xc
                  beq x12, x28, pt_fault_handler
                  li x28, 0xd
                  beq x12, x28, pt_fault_handler
                  li x28, 0xf
                  beq x12, x28, pt_fault_handler
                  li x28, 0x2 # ILLEGAL_INSTRUCTION
                  beq x12, x28, illegal_instr_handler
                  csrr x28, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

ecall_handler:    
                  la x12, _start
                  sw x0, 0(x12)
                  sw x1, 4(x12)
                  sw x2, 8(x12)
                  sw x3, 12(x12)
                  sw x4, 16(x12)
                  sw x5, 20(x12)
                  sw x6, 24(x12)
                  sw x7, 28(x12)
                  sw x8, 32(x12)
                  sw x9, 36(x12)
                  sw x10, 40(x12)
                  sw x11, 44(x12)
                  sw x12, 48(x12)
                  sw x13, 52(x12)
                  sw x14, 56(x12)
                  sw x15, 60(x12)
                  sw x16, 64(x12)
                  sw x17, 68(x12)
                  sw x18, 72(x12)
                  sw x19, 76(x12)
                  sw x20, 80(x12)
                  sw x21, 84(x12)
                  sw x22, 88(x12)
                  sw x23, 92(x12)
                  sw x24, 96(x12)
                  sw x25, 100(x12)
                  sw x26, 104(x12)
                  sw x27, 108(x12)
                  sw x28, 112(x12)
                  sw x29, 116(x12)
                  sw x30, 120(x12)
                  sw x31, 124(x12)
                  la x5, write_tohost
                  jalr x0, x5, 0

instr_fault_handler:
                  add x2, x17, zero
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
                  add x2, x17, zero
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
                  add x2, x17, zero
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
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x2, x17, zero
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
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x2, x17, zero
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
                  csrr  x12, 0x300 # MSTATUS;
                  csrr  x12, 0x304 # MIE;
                  csrr  x12, 0x344 # MIP;
                  csrrc x12, 0x344, x12 # MIP;
                  add x2, x17, zero
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
