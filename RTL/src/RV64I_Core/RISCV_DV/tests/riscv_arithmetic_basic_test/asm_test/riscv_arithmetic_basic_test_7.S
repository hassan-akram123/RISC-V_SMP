.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x20, h0_start
jalr x0, x20, 0
h0_start:
                  li x13, 0x40000100
                  csrw 0x301, x13
kernel_sp:        
                  la x5, kernel_stack_end

trap_vec_init:    
                  la x13, mtvec_handler
                  ori x13, x13, 0
                  csrw 0x305, x13 # MTVEC

mepc_setup:       
                  la x13, init
                  csrw 0x341, x13

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x13, 0x1800
                  csrw 0x300, x13 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x80000000
                  li x2, 0x3
                  li x3, 0x6
                  li x4, 0x8
                  li x6, 0xb
                  li x7, 0xf2a89cdf
                  li x8, 0x0
                  li x9, 0x0
                  li x10, 0xc15bf686
                  li x11, 0x80000000
                  li x12, 0xc
                  li x13, 0xbdc3083b
                  li x14, 0x80000000
                  li x15, 0x1
                  li x16, 0xa
                  li x17, 0x80000000
                  li x18, 0x76f7d98c
                  li x19, 0x80000000
                  li x20, 0x80000000
                  li x21, 0xf3c5e3f1
                  li x22, 0xf02b3505
                  li x23, 0xa
                  li x24, 0xfc4702c4
                  li x25, 0x5
                  li x26, 0xc
                  li x27, 0xf61dfa5f
                  li x28, 0xfb3dae83
                  li x29, 0x8f2af4e5
                  li x31, 0x0
                  la x30, user_stack_end
main:             li           gp, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           s8, 0x0
                  li           sp, 0x80000000
                  li           a0, 0x0
                  li           s11, 0x0
                  li           a6, 0x80000000
                  li           t1, 0xb36930e0
                  li           tp, 0x80000000
                  li           a5, 0xe6150311
                  li           s6, 0xffffffff
                  sub          s11, s6, t1
                  sub          sp, a6, s11
                  lui          a0, 744223
                  auipc        tp, 440903
                  addi         t1, s6, 1859
                  auipc        sp, 789038
                  nop
                  sub          t1, sp, s8
                  lui          tp, 964470
                  addi         sp, a0, 2038
                  nop
                  add          s8, gp, a5
                  lui          a5, 1042699
                  addi         s6, t1, 360
                  sub          a0, a0, s6
                  nop
                  sub          tp, sp, s6
                  nop
                  lui          sp, 604124
                  addi         a0, a6, 2033
                  sub          gp, a6, tp
                  add          a5, a5, sp
                  lui          a0, 197395
                  lui          a6, 136593
                  nop #end riscv_int_numeric_corner_stream_14
                  li           s10, 0x1ed83fcc #start riscv_int_numeric_corner_stream_8
                  li           s0, 0x0
                  li           s6, 0xffffffff
                  li           s5, 0xa3416292
                  li           t3, 0xffffffff
                  li           sp, 0xffffffff
                  li           a7, 0x13e33468
                  li           a1, 0x80000000
                  li           t6, 0xdf873328
                  li           ra, 0x0
                  add          t6, sp, s0
                  auipc        t6, 813767
                  add          a7, a7, t6
                  lui          s6, 1029760
                  nop
                  sub          a1, t3, a1
                  nop
                  sub          t3, a1, ra
                  add          t3, t3, s10
                  lui          s10, 791134
                  addi         ra, s10, -1361
                  auipc        s5, 135072
                  sub          ra, s5, s0
                  addi         a7, s0, -1477
                  nop #end riscv_int_numeric_corner_stream_8
                  li           a6, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           s5, 0x8b5212ea
                  li           a1, 0x0
                  li           t3, 0x8e6e796
                  li           s11, 0x0
                  li           a5, 0xf8c61dab
                  li           a3, 0x80000000
                  li           s10, 0x0
                  li           t4, 0x0
                  li           a4, 0xffffffff
                  nop
                  sub          a4, t3, a1
                  nop
                  addi         a5, s10, 179
                  lui          a5, 722749
                  addi         s5, a6, 268
                  add          t4, a6, a4
                  addi         a6, a3, 988
                  lui          s10, 545848
                  nop
                  lui          a6, 173871
                  nop
                  lui          a5, 357062
                  lui          s11, 488375
                  sub          s5, a3, t3
                  auipc        s5, 220315
                  add          a3, s11, a5
                  auipc        s10, 973406 #end riscv_int_numeric_corner_stream_9
                  li           s5, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           a1, 0x80000000
                  li           a7, 0xd50d5e3
                  li           s10, 0x80000000
                  li           s0, 0x568b9a32
                  li           tp, 0x80000000
                  li           a4, 0x0
                  li           a5, 0x80000000
                  li           t1, 0xffffffff
                  li           s9, 0x0
                  addi         s10, t1, -1863
                  nop
                  lui          s9, 586344
                  nop
                  auipc        s5, 962286
                  addi         a4, a1, 1099
                  lui          a4, 548020
                  add          s10, tp, t1
                  addi         tp, s0, 1967
                  add          t1, s9, a4
                  addi         a7, tp, -659
                  addi         s10, t1, -1252
                  addi         a4, s10, -1200
                  add          s5, a1, s5
                  auipc        s5, 222931
                  nop
                  sub          s10, s5, s5
                  nop
                  lui          s0, 417266
                  add          s9, s5, tp
                  addi         s9, a1, -1509
                  addi         tp, s0, -901
                  auipc        s9, 977823
                  add          t1, t1, s10
                  nop
                  auipc        t1, 723520
                  sub          a5, tp, s10 #end riscv_int_numeric_corner_stream_1
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_7
                  li           s1, 0x0
                  li           a6, 0xffffffff
                  li           tp, 0x80000000
                  li           s3, 0xffffffff
                  li           s7, 0xa99ef858
                  li           s9, 0x0
                  li           a4, 0x0
                  li           a5, 0x5efcc180
                  li           s0, 0x21645ffd
                  sub          s3, a6, s1
                  nop
                  sub          s1, t2, t2
                  lui          a4, 265472
                  add          s0, tp, a5
                  nop
                  add          s7, s7, t2
                  addi         s1, tp, -1897
                  auipc        a4, 169122
                  nop
                  auipc        s9, 442156
                  sub          a6, a5, s9
                  auipc        s3, 319934
                  add          a4, s0, a4
                  auipc        s9, 776478
                  lui          s1, 365573
                  lui          s1, 243286
                  sub          a6, a5, tp
                  add          tp, a5, t2 #end riscv_int_numeric_corner_stream_7
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           s0, 0xecf81ed1
                  li           gp, 0x0
                  li           s8, 0x8c8c5bd3
                  li           a0, 0x0
                  li           a1, 0x80000000
                  li           a6, 0xb9dc8688
                  li           a4, 0x47aefdb7
                  li           s2, 0xda9c0f84
                  li           t4, 0xa30ee471
                  add          a6, t4, s8
                  nop
                  addi         a6, gp, 1222
                  add          a1, s8, a0
                  nop
                  lui          a6, 5248
                  nop
                  add          s8, a0, a1
                  sub          s8, a0, s2
                  lui          s8, 67790
                  addi         s2, a0, -482
                  auipc        sp, 990999
                  sub          t4, a6, s0
                  nop
                  auipc        a0, 885719
                  lui          a1, 309670 #end riscv_int_numeric_corner_stream_16
                  li           sp, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           s8, 0x0
                  li           s6, 0xd57c60ba
                  li           s0, 0x23d72fe4
                  li           ra, 0xffffffff
                  li           s5, 0xb67794b0
                  li           a4, 0xffffffff
                  li           s10, 0x0
                  li           a1, 0xffffffff
                  li           s9, 0x80000000
                  lui          s5, 97457
                  lui          s10, 64589
                  sub          s10, s6, a1
                  add          s8, s10, s8
                  sub          sp, s5, s8
                  lui          a4, 421245
                  addi         s5, a1, -1734
                  auipc        s9, 267593
                  lui          s6, 1008208
                  nop
                  nop
                  sub          s10, s10, s9
                  add          s5, s5, sp
                  lui          a4, 981172
                  auipc        a1, 761233
                  addi         s6, a1, 745
                  auipc        sp, 538616
                  nop
                  nop
                  auipc        s6, 559826
                  auipc        a4, 918648 #end riscv_int_numeric_corner_stream_5
                  slti         s7, t2, -1642
                  sltiu        s10, t2, 577
                  sra          a1, s3, t1
                  ori          a4, s0, 1453
                  sll          s11, s6, zero
                  xor          t3, gp, a7
                  and          s6, ra, s2
                  xor          s7, s8, a1
                  or           a6, a6, s8
                  sltu         s1, a7, t1
                  sll          a4, s8, s3
                  lui          s1, 904841
                  xori         sp, a6, -1256
                  or           a7, s3, a3
                  sra          a4, zero, ra
                  add          gp, s11, s0
                  slt          s8, s9, t2
                  addi         tp, a5, -432
                  add          gp, a4, s3
                  srli         a0, s9, 20
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_6
                  li           t1, 0x19028d99
                  li           s3, 0x80000000
                  li           a6, 0xffffffff
                  li           s1, 0x80000000
                  li           s11, 0x80000000
                  li           s9, 0x0
                  li           s8, 0x0
                  li           s5, 0x80000000
                  li           a4, 0xffffffff
                  lui          s1, 486882
                  nop
                  nop
                  sub          s9, a6, s1
                  add          s9, a4, a6
                  addi         s9, s8, -1175
                  add          s5, a6, t1
                  add          s1, s5, s9
                  addi         s11, s9, -201
                  lui          s8, 320179
                  auipc        s5, 150456
                  add          s2, a6, s9
                  auipc        s5, 395214
                  auipc        t1, 376653
                  nop
                  lui          s5, 578130
                  addi         s5, s11, 1241
                  nop
                  sub          s2, a6, s9
                  addi         s1, s8, 1180 #end riscv_int_numeric_corner_stream_6
                  srai         a0, t2, 13
                  lui          s5, 647179
                  sub          a2, a7, t4
                  addi         s10, s1, 877
                  or           s5, a0, a4
                  slt          a2, s9, t1
                  xor          a7, s11, a1
                  srai         s2, a5, 15
                  srai         a2, t1, 0
                  xori         t4, s7, -2015
                  sll          sp, a7, s10
                  sltu         a6, a6, s9
                  sltiu        ra, s3, -278
                  xor          sp, s2, s3
                  slt          s10, gp, s11
                  and          t4, s10, s0
                  slli         s2, t5, 1
                  srli         t4, s4, 12
                  srl          t4, a3, s3
                  sub          t6, tp, s8
                  sltu         a5, s0, a0
                  sltiu        s5, zero, -786
                  nop
                  sll          s10, a4, a4
                  slli         t6, t5, 15
                  nop
                  and          sp, a4, t3
                  ori          s2, a2, 454
                  sll          s11, a1, t1
                  sltu         a6, tp, s10
                  sub          zero, tp, s3
                  sltu         s9, s11, s0
                  nop
                  lui          s2, 273630
                  slt          s0, s4, t0
                  and          a4, s3, s11
                  addi         zero, s3, 1015
                  srl          a7, t1, t5
                  ori          s3, a6, -356
                  slt          gp, s5, s4
                  sltiu        s2, a4, 1491
                  slt          a6, a3, s9
                  srai         s1, a3, 27
                  lui          s5, 458456
                  sll          s9, a5, gp
                  add          t4, s0, t4
                  nop
                  auipc        s10, 585777
                  auipc        a4, 481291
                  add          s7, s1, s3
                  lui          s0, 618693
                  sra          s11, t5, s5
                  addi         a3, t2, 112
                  sll          a4, gp, s7
                  xori         s6, a1, -321
                  sra          ra, ra, t3
                  andi         a4, t5, 1012
                  sra          t6, a7, t2
                  slli         a0, s11, 6
                  slti         s5, s0, -1616
                  sub          s10, t6, t2
                  nop
                  nop
                  slti         tp, s5, -1510
                  slti         s0, t3, -2021
                  srli         zero, s7, 7
                  and          a4, ra, a7
                  srli         s1, t4, 10
                  sll          a7, s6, s3
                  sra          s2, a7, a7
                  andi         s8, s2, 58
                  sltu         s8, t2, sp
                  sll          s10, s10, tp
                  sll          s5, a2, a7
                  sltu         sp, a3, tp
                  slli         a1, s11, 10
                  auipc        tp, 783334
                  slti         sp, t0, 1891
                  or           s11, s0, s4
                  slt          a5, s1, tp
                  addi         a2, a2, -1284
                  addi         a7, s7, 1004
                  sltiu        s0, s9, 936
                  addi         s0, s10, -1515
                  sltu         a4, s1, s4
                  srai         a2, a6, 1
                  xor          a0, s2, s10
                  andi         ra, s11, -2040
                  sra          a2, s10, t2
                  add          gp, sp, a3
                  sra          t4, a6, sp
                  xor          a5, ra, t1
                  sltu         a5, sp, a1
                  srai         a1, s1, 5
                  and          a4, t4, a7
                  sll          a6, t5, zero
                  sra          a6, tp, s2
                  add          a6, s3, t2
                  add          a1, a1, tp
                  add          t4, a3, tp
                  or           a2, a0, t1
                  xori         s11, t0, 920
                  and          s2, s6, t0
                  nop
                  xor          a2, a4, a6
                  auipc        t6, 315387
                  ori          t6, zero, 1777
                  sra          gp, s3, gp
                  slli         a2, zero, 12
                  sltiu        ra, s8, -1305
                  slti         a6, a4, -607
                  auipc        a5, 983796
                  addi         t1, s11, -327
                  add          a0, s2, t3
                  addi         s9, t1, 2018
                  sub          s3, ra, s2
                  or           t1, a4, t0
                  sltiu        a3, a4, 1993
                  sra          tp, s5, s7
                  or           t3, t3, s6
                  sub          a0, s9, ra
                  sub          a2, s3, s1
                  auipc        t6, 94770
                  addi         t3, zero, -1557
                  auipc        s0, 778645
                  lui          s5, 23662
                  or           t6, s1, a7
                  slti         t4, t1, 427
                  sltu         t1, a3, s0
                  or           s9, a1, tp
                  srli         s7, sp, 21
                  lui          zero, 987641
                  sltu         tp, t2, a7
                  nop
                  sub          s8, s3, sp
                  sub          s7, s4, s0
                  addi         t6, t5, -1423
                  ori          s0, s3, 281
                  andi         t2, t2, 1256
                  sll          a7, gp, a7
                  xori         a7, t0, -1406
                  or           gp, s1, t5
                  xor          a6, sp, gp
                  and          a6, a2, s8
                  xor          s1, ra, t3
                  sll          zero, a7, s3
                  sub          ra, s9, s2
                  sll          t2, a3, a7
                  srli         ra, t6, 20
                  xor          s3, sp, s3
                  srl          t4, t0, s0
                  li           a1, 0xc56b800c #start riscv_int_numeric_corner_stream_0
                  li           t3, 0x80000000
                  li           s8, 0x80000000
                  li           t2, 0xffffffff
                  li           s6, 0xffffffff
                  li           ra, 0x8640536f
                  li           a5, 0xffffffff
                  li           s2, 0x80000000
                  li           a0, 0x80000000
                  li           s1, 0x80000000
                  sub          s6, a0, s1
                  sub          s6, a1, s6
                  addi         s2, s8, -1864
                  add          a0, a5, a1
                  add          a0, t2, t2
                  lui          s2, 24443
                  lui          s2, 420558
                  addi         s2, ra, -1771
                  auipc        a0, 313158
                  add          s1, s1, s2
                  sub          s2, s2, s1
                  add          s1, s6, a0
                  add          ra, a5, s8
                  addi         t2, s1, 617
                  auipc        s2, 786851
                  lui          s1, 759617
                  nop #end riscv_int_numeric_corner_stream_0
                  sltu         sp, a6, t6
                  srai         s7, t1, 5
                  nop
                  add          a1, t0, a1
                  sra          s2, s8, ra
                  sltu         a4, s6, s10
                  sll          s6, ra, s6
                  nop
                  sra          sp, a0, s10
                  sll          sp, ra, t4
                  ori          s8, a5, -1119
                  xori         a3, a3, -1888
                  xor          a6, t4, a5
                  sra          s0, t6, a6
                  sll          gp, a7, t6
                  sltu         a5, s7, a7
                  srli         s6, s4, 14
                  add          t4, a3, a1
                  slt          tp, a4, s8
                  srai         zero, a0, 21
                  slli         s3, a5, 21
                  sll          s10, a1, s5
                  sll          a0, gp, tp
                  andi         s5, s7, -225
                  slli         sp, s8, 23
                  sra          a1, s2, t0
                  lui          t3, 635267
                  slli         s6, ra, 19
                  sltiu        a3, a4, -1073
                  ori          s10, t2, 1744
                  add          s0, gp, s10
                  slti         a0, s5, 1826
                  sra          a4, t6, a4
                  lui          sp, 198463
                  srl          a3, a5, a0
                  sltiu        a5, a4, -1141
                  nop
                  srl          s8, s5, a3
                  slt          s9, t4, a3
                  xor          ra, t2, s5
                  addi         a5, s6, 912
                  nop
                  andi         s3, s7, -237
                  andi         t3, s9, -1675
                  and          s0, s0, s8
                  lui          s6, 165653
                  auipc        s11, 77353
                  nop
                  xor          a5, s2, ra
                  xor          t4, t3, a4
                  slti         s10, a5, 481
                  srai         t2, a6, 22
                  nop
                  srli         s6, t3, 23
                  slt          s8, s4, t6
                  srai         s9, a5, 24
                  sll          t2, s5, s7
                  and          tp, s6, ra
                  and          s2, s6, a5
                  ori          s0, s6, 1903
                  slt          a5, t5, t3
                  xor          tp, tp, a7
                  nop
                  sltiu        s1, a2, -1772
                  add          t6, t0, a5
                  sra          a5, a4, t0
                  lui          t3, 988147
                  addi         s7, t3, 1673
                  slli         gp, t4, 14
                  srli         a3, a7, 11
                  or           a6, s4, ra
                  sub          a2, t6, a0
                  slt          t1, t0, t0
                  sltiu        gp, a4, 301
                  srai         t3, s8, 12
                  addi         s5, a4, 879
                  srli         s8, s5, 3
                  srai         s3, t6, 19
                  sra          a1, s6, s5
                  and          a3, a5, s7
                  add          t3, ra, a6
                  srai         zero, t1, 22
                  ori          s9, sp, 1725
                  nop
                  add          a3, s3, a1
                  sltu         tp, a3, s7
                  sltiu        a5, t1, 327
                  slli         a4, zero, 3
                  xor          sp, t4, a2
                  sub          s10, sp, sp
                  sra          s3, a3, t3
                  srai         s6, s11, 24
                  slti         a0, a2, -1167
                  andi         a3, t4, 281
                  sltiu        s10, a1, -557
                  auipc        s2, 248930
                  andi         tp, t5, -73
                  srai         t6, s10, 27
                  andi         a6, t2, 1181
                  auipc        s2, 750344
                  and          t2, s3, s0
                  andi         a6, s8, -580
                  srl          s9, ra, a7
                  sub          s5, s4, t3
                  sltiu        s1, t1, 1910
                  slt          s1, s7, zero
                  slti         gp, t5, 1845
                  slt          a2, s7, gp
                  sltiu        t6, a7, -284
                  xor          sp, a6, a0
                  slti         gp, s4, -1879
                  addi         a0, s2, -300
                  and          gp, a3, zero
                  andi         ra, a3, -72
                  srai         ra, t3, 4
                  auipc        s1, 710535
                  ori          t3, a4, -953
                  slti         gp, a4, -410
                  sra          a7, a2, a5
                  srli         s5, a4, 17
                  add          sp, a1, s4
                  sll          s8, gp, s6
                  sra          s10, s9, a4
                  sub          t2, s10, s5
                  sll          s11, t5, s2
                  srl          s11, s5, a2
                  add          a3, t0, zero
                  auipc        t4, 363786
                  xori         s9, s3, -1355
                  srai         t1, t6, 8
                  auipc        s3, 970146
                  sltiu        s8, s4, -820
                  and          a2, a0, a5
                  srai         s1, s3, 21
                  slli         s11, a6, 21
                  auipc        a2, 836335
                  auipc        a1, 757091
                  sra          a2, s6, tp
                  sltu         s1, t4, a5
                  xori         a2, s8, 1953
                  srl          gp, t1, s9
                  nop
                  andi         a6, t6, -732
                  add          s8, t1, s1
                  or           s5, t6, t1
                  xori         s9, a5, 1665
                  srli         sp, s11, 9
                  slti         ra, a3, -451
                  auipc        a4, 385998
                  sra          a2, a5, t4
                  lui          t4, 129711
                  add          a4, t5, a4
                  sltiu        s2, s0, 1237
                  nop
                  sra          t2, s1, t5
                  srai         t1, s4, 10
                  nop
                  add          t6, ra, a2
                  srli         s8, t3, 16
                  slli         tp, s6, 18
                  add          ra, ra, s6
                  slt          zero, s11, s2
                  srl          t2, a7, zero
                  slli         s5, s11, 25
                  auipc        sp, 10115
                  ori          t3, zero, 864
                  add          s1, s10, s8
                  slti         s2, t0, -935
                  and          a0, t5, a3
                  srl          a7, a0, tp
                  srl          s5, t0, s2
                  andi         s1, s7, -450
                  xori         s9, a1, -89
                  srai         a1, s4, 1
                  lui          s9, 551015
                  xor          a1, t4, a2
                  and          a5, a7, a7
                  auipc        a2, 354531
                  srli         gp, a2, 22
                  sll          a6, a6, a4
                  slti         t6, a3, -1828
                  sltiu        ra, zero, -172
                  xor          a1, a2, t2
                  srl          s11, a1, a0
                  auipc        a3, 893335
                  sltiu        s0, s9, 1475
                  lui          s6, 673238
                  srli         sp, s1, 8
                  ori          s8, a5, 1120
                  xori         t3, s4, -1755
                  or           s6, t5, t2
                  or           s6, s1, s8
                  ori          s6, t1, 610
                  or           t1, s9, s1
                  ori          t1, s11, 679
                  slli         ra, t0, 19
                  slti         s6, sp, -424
                  sll          a2, s11, a7
                  sltiu        s6, s11, 1173
                  srai         t2, s4, 2
                  nop
                  sra          s8, s9, s1
                  add          s10, t6, a3
                  sll          a2, sp, a2
                  and          a4, zero, a1
                  sltu         t2, a5, s4
                  sll          t6, a3, t5
                  lui          s3, 704502
                  andi         s9, ra, 597
                  sll          a4, a1, a4
                  or           a4, s1, a1
                  srl          s11, t1, s10
                  sll          ra, s4, t5
                  xor          sp, s0, a4
                  sra          a6, t5, s7
                  and          a4, a7, s8
                  addi         t4, a0, 2010
                  ori          s8, t1, -976
                  sub          a2, a0, s6
                  or           s6, s3, s7
                  and          s0, s3, zero
                  ori          tp, tp, -2037
                  sll          s6, s6, s0
                  srl          zero, a2, s6
                  slt          zero, t0, gp
                  or           a2, t6, t4
                  or           s2, t5, sp
                  or           s7, zero, s6
                  slti         s7, gp, -821
                  srai         sp, a0, 0
                  sll          sp, s4, s4
                  sltu         t1, a7, tp
                  slt          ra, a6, t2
                  nop
                  sub          s1, s0, a2
                  sltiu        a3, a4, 1772
                  sub          s0, ra, s6
                  sra          a4, a1, s11
                  slti         a5, s11, 968
                  sltiu        s1, a1, -339
                  xor          a6, ra, s7
                  xor          a7, s9, s2
                  srai         t4, s11, 23
                  sll          s1, s2, s4
                  xori         a3, s2, 273
                  slt          ra, s0, a5
                  sltu         zero, s7, s3
                  addi         a2, s8, -1655
                  auipc        s7, 321713
                  nop
                  xor          sp, s2, ra
                  add          t3, a5, a3
                  addi         a6, s4, 1159
                  sll          s0, s2, s0
                  srli         s10, s7, 18
                  sub          s5, a0, tp
                  or           a5, s8, s10
                  sub          s7, a5, s5
                  srai         s11, s10, 27
                  xor          a3, s4, s5
                  or           a2, a4, a6
                  add          tp, s2, s10
                  slt          s8, gp, s3
                  or           s11, a3, a3
                  slli         s5, ra, 29
                  addi         a6, s11, -1809
                  andi         a3, a6, -1529
                  xor          gp, t5, sp
                  sll          a1, t6, a6
                  andi         a6, s10, -1514
                  add          s11, tp, s6
                  slt          s9, sp, s11
                  add          s6, t0, a4
                  lui          s10, 91294
                  auipc        s7, 273744
                  slti         tp, a5, -1535
                  xori         s0, a1, -1140
                  sra          s6, a1, a3
                  srli         tp, s8, 15
                  srl          t3, t2, t2
                  slt          s3, s10, gp
                  srai         s7, a7, 9
                  srli         t2, a1, 14
                  andi         t2, a3, -1466
                  addi         t2, t1, 1368
                  sltiu        sp, tp, 1698
                  add          s6, s3, t4
                  ori          a6, a7, -1210
                  add          tp, a7, s1
                  nop
                  addi         t3, a6, 35
                  slli         s8, s10, 21
                  and          ra, a1, a0
                  srl          s11, ra, s2
                  slli         zero, t4, 2
                  xor          t6, s8, t2
                  auipc        s2, 973559
                  sra          a3, s8, t0
                  sub          a6, s2, a0
                  add          a6, a2, ra
                  sra          gp, s1, a3
                  slt          t3, s4, t4
                  sltu         t2, t1, s7
                  slt          t4, ra, a6
                  sll          t2, s4, s6
                  slt          a0, a0, s9
                  srli         s10, a6, 17
                  slt          tp, a3, ra
                  slt          a1, t6, t2
                  xor          ra, t2, tp
                  sll          a6, sp, t5
                  srl          a2, a6, s2
                  srai         ra, t1, 14
                  ori          s11, s11, -1554
                  auipc        s11, 135549
                  add          gp, t2, a0
                  ori          a1, a3, -927
                  srli         s0, s4, 8
                  sltu         a6, a3, a0
                  slt          s2, sp, s9
                  slt          s9, t6, s7
                  sub          t4, tp, s3
                  slti         a2, s1, -1829
                  srai         a0, s0, 24
                  slti         tp, s5, 398
                  auipc        a0, 171305
                  xor          a1, s0, zero
                  lui          t3, 761432
                  and          a7, tp, t5
                  ori          zero, t0, -1292
                  and          a2, sp, s8
                  srli         s11, a1, 2
                  sra          tp, t3, t1
                  add          a1, s0, t2
                  lui          t1, 941205
                  srai         t2, t0, 13
                  sub          s10, sp, t4
                  srl          a0, s0, a7
                  add          a1, a7, a4
                  sra          s10, s1, s1
                  xor          s11, s4, t2
                  sll          s2, zero, sp
                  ori          s2, zero, 1419
                  sub          s0, s4, s8
                  nop
                  andi         a1, t4, 1084
                  srl          tp, s3, t0
                  sltiu        a5, t1, -799
                  ori          s3, s1, 1129
                  srl          tp, a0, gp
                  add          a1, zero, a1
                  slt          s9, s4, a7
                  sltiu        a1, t2, -1350
                  sltiu        zero, s4, -1297
                  srl          s2, a4, t1
                  srli         s1, s6, 11
                  srai         t3, s7, 2
                  auipc        ra, 2535
                  xor          s8, a0, t5
                  slt          a2, t4, s9
                  lui          t1, 229911
                  srl          s8, a7, t3
                  nop
                  xor          s5, s8, t0
                  auipc        a4, 1044176
                  srl          s6, s9, s7
                  ori          a1, s8, 1278
                  srai         s10, t6, 15
                  and          t1, s8, s4
                  slt          t6, s6, t4
                  srai         gp, s5, 3
                  or           t6, zero, a2
                  srl          tp, t4, s11
                  auipc        s0, 684374
                  sltu         s2, a4, s1
                  srai         s9, s7, 18
                  addi         t6, t5, 744
                  or           t6, s4, s10
                  sltu         sp, s7, a3
                  auipc        s0, 588171
                  lui          s7, 160237
                  xori         gp, t3, -116
                  auipc        s2, 1012755
                  addi         s11, t4, -431
                  sub          t1, t2, a5
                  xori         s6, a2, 1164
                  srli         a7, s4, 3
                  xor          t6, s0, zero
                  srai         tp, s0, 26
                  auipc        ra, 146458
                  nop
                  nop
                  sub          s9, s6, s0
                  slt          s6, s3, t0
                  xor          a4, s7, a0
                  slli         s10, a6, 6
                  srai         s6, t2, 27
                  sll          a5, a5, s4
                  or           a5, s10, t0
                  srl          t3, t5, s10
                  or           a6, s8, a1
                  ori          t2, t5, 986
                  sub          s0, gp, t6
                  nop
                  lui          tp, 189411
                  sra          s0, s1, t5
                  slli         s5, t2, 26
                  ori          ra, s4, -1884
                  auipc        a2, 616233
                  srai         s7, a3, 19
                  nop
                  slti         s7, zero, -707
                  sltu         s1, s10, t6
                  sltu         s11, s7, a7
                  sub          a2, a7, s2
                  sub          a4, a1, a0
                  auipc        a0, 515144
                  slli         a0, s11, 8
                  xori         ra, t0, 1423
                  slt          s11, a6, s8
                  srai         t6, gp, 21
                  sra          s0, s4, s5
                  slt          s1, t2, zero
                  ori          s1, gp, -1128
                  sra          sp, t1, s3
                  nop
                  xori         s5, ra, -1897
                  sltu         s8, s6, a4
                  nop
                  or           t6, gp, a3
                  andi         s0, zero, 539
                  lui          ra, 1001794
                  or           s7, s11, a4
                  srli         gp, t0, 6
                  xor          s11, s8, t5
                  or           t1, sp, a4
                  add          a4, a2, sp
                  srli         s9, a4, 12
                  sltu         a4, s0, t1
                  and          a1, t2, s7
                  or           a5, s8, a2
                  sltiu        zero, a2, 248
                  and          t6, a2, s10
                  slti         t4, a2, -1416
                  lui          a5, 1019703
                  addi         a6, s11, 488
                  xor          gp, s1, s9
                  xori         s1, s0, 1723
                  or           ra, ra, ra
                  sltiu        a5, s1, 693
                  andi         a5, s0, -622
                  sll          a6, t5, a7
                  srli         s3, zero, 26
                  xor          s5, a7, t5
                  srai         a3, sp, 15
                  auipc        t1, 31861
                  auipc        zero, 963033
                  and          a1, s2, sp
                  sra          t6, s4, s11
                  sltiu        a5, s0, -1429
                  addi         a3, s3, -1007
                  sub          t2, t1, s11
                  slti         t6, t1, -907
                  sub          t6, a0, a2
                  lui          zero, 742899
                  nop
                  slt          s0, s3, s2
                  srli         s5, a0, 4
                  add          t4, s2, t1
                  nop
                  slli         t4, ra, 23
                  sltiu        t4, s9, 1509
                  auipc        a1, 276598
                  addi         s3, a3, -499
                  sra          a5, t5, t1
                  sll          s10, s6, zero
                  nop
                  and          a4, s6, s2
                  xor          ra, s1, s0
                  nop
                  slti         s7, s5, -649
                  and          ra, a6, s8
                  srli         s3, a7, 26
                  slt          sp, ra, tp
                  sll          t1, s8, s10
                  xori         a6, a1, -901
                  andi         ra, s3, -963
                  and          a1, t3, a2
                  srai         sp, s11, 10
                  slli         ra, s7, 9
                  add          ra, a0, t2
                  or           a6, s3, s0
                  sltu         a0, gp, gp
                  lui          s10, 998128
                  addi         zero, tp, 382
                  or           s2, s1, a6
                  sltu         s3, s11, a6
                  slt          a0, s6, ra
                  auipc        tp, 454595
                  nop
                  slti         s9, t6, -1959
                  lui          a7, 325279
                  add          s3, zero, s5
                  auipc        t3, 854069
                  slti         a1, s10, -171
                  auipc        s10, 167409
                  auipc        s2, 704468
                  sub          tp, s10, a3
                  auipc        a1, 485070
                  addi         sp, a2, 1301
                  add          a3, a5, t4
                  xor          a0, s6, gp
                  sltu         t3, t1, a0
                  slt          a5, a6, a0
                  srli         s0, a6, 8
                  lui          a2, 571086
                  slt          gp, a7, tp
                  sub          t6, a5, tp
                  sra          gp, tp, ra
                  or           s8, zero, t4
                  sltu         s1, sp, a2
                  slt          a3, gp, t1
                  andi         a3, zero, -1170
                  or           s11, s10, s10
                  srl          a4, t3, sp
                  srai         s6, sp, 28
                  sub          s5, s11, s5
                  xori         zero, t3, -1806
                  sub          ra, s8, t2
                  ori          s9, t6, 121
                  auipc        t2, 423205
                  lui          s5, 725134
                  andi         sp, t2, 574
                  auipc        a7, 450533
                  slti         s10, a5, -175
                  addi         s8, s8, -650
                  slli         s0, s7, 16
                  sub          s1, tp, t4
                  slli         s7, ra, 29
                  slt          s8, t6, t0
                  slti         t6, s6, 1964
                  xor          a7, s5, a5
                  xor          s0, tp, s6
                  lui          a4, 967302
                  lui          a2, 73486
                  xori         s11, t4, 1886
                  sltu         gp, s3, a3
                  xori         a1, gp, 1053
                  srai         s8, s2, 10
                  sub          s3, s4, a3
                  add          s9, s1, t4
                  lui          t1, 853999
                  xor          s3, s7, ra
                  addi         a6, ra, -693
                  lui          a1, 368060
                  nop
                  andi         a1, s5, -559
                  xori         a7, s10, 1065
                  ori          s6, s8, 500
                  or           s7, s10, a4
                  slt          a3, s1, gp
                  srl          t2, t0, zero
                  slt          s3, s3, a0
                  add          s6, s5, s10
                  and          t3, s3, t1
                  slt          ra, zero, s4
                  sltu         s3, s11, t0
                  or           a6, s5, t3
                  xori         s10, s9, -718
                  nop
                  srl          gp, a3, a3
                  add          a0, s2, s8
                  add          a0, s7, t4
                  nop
                  sub          t1, s10, zero
                  slti         s5, s2, -699
                  xori         sp, gp, 1230
                  auipc        s1, 964015
                  srli         a1, ra, 24
                  addi         a5, t3, -319
                  slli         s1, sp, 9
                  slti         t2, s9, -1702
                  sra          t3, t6, t1
                  and          s3, t6, s0
                  add          t6, ra, s7
                  sltu         s2, a3, t1
                  and          s11, a6, s7
                  andi         s1, t0, 810
                  srli         t6, s8, 5
                  srai         s1, a3, 30
                  sltiu        a6, s1, 369
                  add          a3, t0, a6
                  or           a1, s1, a6
                  xor          sp, t2, s4
                  slti         s10, a1, 577
                  auipc        s9, 953844
                  sll          s0, a3, a0
                  addi         s10, t1, 1148
                  slt          sp, sp, tp
                  xori         s9, s11, 928
                  slt          s9, s6, t6
                  sltu         a6, s1, s6
                  add          s3, s9, s10
                  and          t1, a7, t5
                  srli         a5, t2, 18
                  srl          s8, s11, t2
                  or           s3, a5, s0
                  nop
                  sltiu        t2, t1, 887
                  xor          s10, a6, a1
                  lui          gp, 816510
                  ori          a7, zero, 171
                  srl          s9, s0, t5
                  nop
                  xor          s0, t0, s5
                  xori         s9, s7, 1429
                  slt          tp, t6, a2
                  sltiu        a2, zero, -107
                  srli         a5, t0, 7
                  srai         s8, t4, 13
                  ori          s7, s11, 1446
                  sra          t2, s6, t2
                  add          t2, t1, s2
                  slli         t4, s6, 21
                  slt          s7, t5, s1
                  nop
                  nop
                  xor          s10, t2, s1
                  sub          s2, a5, a4
                  sra          t3, a5, t2
                  sll          t1, t2, a7
                  xori         s6, s2, -2004
                  slt          ra, ra, s0
                  andi         s9, s3, 589
                  slt          a0, t6, a5
                  sltu         t4, t2, a7
                  sll          zero, a7, s5
                  slti         s8, a0, 263
                  lui          t4, 926918
                  auipc        a7, 941852
                  add          s1, t4, a2
                  sra          s0, zero, ra
                  slt          a3, s3, t5
                  lui          ra, 704354
                  addi         s3, sp, -800
                  lui          s2, 40128
                  addi         a2, s11, -1175
                  sll          a2, sp, t2
                  lui          a5, 466922
                  auipc        a4, 839784
                  auipc        s10, 744582
                  sra          a0, s4, s5
                  sltu         t3, ra, a7
                  auipc        t1, 142286
                  slti         s1, a1, 440
                  lui          a1, 888983
                  and          t4, t0, a3
                  or           s1, t5, t5
                  auipc        t4, 604682
                  nop
                  and          s7, a0, a3
                  slt          a5, t1, a2
                  add          s7, s8, gp
                  sltiu        s7, a5, 775
                  sltu         s2, s5, s1
                  lui          t4, 798952
                  xori         t2, s10, -1647
                  srai         s11, s5, 31
                  xor          t1, a7, a5
                  srli         sp, t5, 2
                  xori         s11, t5, 1352
                  sll          a5, a2, s4
                  sra          s0, s2, sp
                  sltiu        a7, a0, -549
                  andi         t6, a2, 1747
                  andi         a7, zero, 1042
                  xor          a6, a3, s11
                  addi         a1, s8, 799
                  sub          a2, s11, zero
                  sltiu        a5, t3, -579
                  and          t6, a1, ra
                  and          s11, a0, s5
                  slt          s11, a7, a5
                  addi         t6, zero, 665
                  nop
                  sra          a5, s5, sp
                  srl          gp, a2, t2
                  srl          s3, t6, a6
                  lui          s8, 468379
                  andi         a5, a5, 1683
                  slli         s6, t5, 1
                  sra          gp, s2, s9
                  sltiu        a6, a6, 1153
                  slti         gp, t4, -1803
                  slli         a5, s10, 2
                  sltu         zero, a5, s0
                  xor          sp, sp, s4
                  sra          t6, tp, t0
                  srli         tp, a1, 5
                  srli         s8, s2, 3
                  add          s9, s8, s10
                  sltu         s11, t2, zero
                  xor          t2, t4, a3
                  auipc        a1, 600894
                  srai         zero, s4, 8
                  xor          a2, a4, zero
                  slli         t1, t0, 15
                  xori         a6, a2, 435
                  xor          s11, a6, s2
                  xor          a1, a1, t4
                  xor          s1, a4, a0
                  andi         s0, a7, -872
                  and          a3, zero, sp
                  add          t1, t3, a7
                  nop
                  xori         a4, t0, -1007
                  sltiu        s6, t1, 192
                  xori         t1, t0, 108
                  add          s3, t1, a3
                  slli         t6, gp, 17
                  sltu         s7, a6, s7
                  xori         s5, s6, 1335
                  auipc        t4, 171054
                  slli         s2, a2, 25
                  auipc        a1, 470144
                  auipc        ra, 128360
                  auipc        s11, 638419
                  andi         a1, t6, 644
                  auipc        a0, 584783
                  slli         s6, t2, 16
                  srli         t1, t0, 11
                  or           a2, a7, s4
                  slli         s7, s4, 26
                  srl          s3, s7, tp
                  srl          a2, s6, s8
                  srl          tp, s7, a3
                  nop
                  sll          s7, t3, a1
                  slt          tp, a2, t4
                  and          tp, t5, sp
                  lui          ra, 1034300
                  andi         gp, s11, 845
                  sltu         s0, a7, zero
                  sra          tp, zero, s4
                  xor          s8, s1, t4
                  xori         a0, a7, -456
                  nop
                  and          ra, s7, s5
                  addi         a2, t5, 237
                  and          a4, t0, s9
                  srl          s0, a3, a4
                  add          s3, ra, t4
                  auipc        s10, 838025
                  sltiu        sp, s3, 498
                  nop
                  addi         sp, ra, -131
                  sll          zero, t4, t6
                  slt          ra, t6, s1
                  srli         gp, s7, 20
                  auipc        s8, 684836
                  and          zero, a2, s5
                  sltiu        s1, zero, -1888
                  or           a0, s4, s6
                  and          zero, s6, t6
                  xor          a6, a4, tp
                  auipc        s1, 825092
                  slti         sp, s4, 306
                  sltu         a3, s9, s2
                  slli         t1, s7, 12
                  sltiu        t2, t0, 2045
                  sra          s9, s6, a4
                  sltiu        s1, s3, 1212
                  srai         s2, s0, 19
                  auipc        s2, 268722
                  ori          a5, t5, -883
                  ori          s1, s0, -201
                  srl          tp, s0, s6
                  lui          s11, 460850
                  srai         ra, s2, 19
                  srl          s7, sp, t6
                  sra          s0, zero, a1
                  andi         s8, t4, -1077
                  xor          a6, t3, a5
                  add          a3, t5, a7
                  slti         s0, a7, -991
                  sub          s5, s4, s5
                  srl          s8, a6, a4
                  nop
                  xori         a0, a0, -1675
                  or           s2, s8, s6
                  sub          s9, t3, a0
                  slt          t3, s6, s10
                  srli         s9, s2, 8
                  add          s3, s3, t5
                  sra          s5, s1, t2
                  slt          s9, zero, a0
                  ori          a5, s10, -1076
                  addi         a6, a0, -1803
                  andi         s3, s10, 193
                  slli         t6, t6, 20
                  nop
                  and          a7, a7, s7
                  sub          t6, s3, sp
                  auipc        t2, 304877
                  and          s5, s2, a2
                  nop
                  or           a3, t0, a6
                  sub          t6, s1, a2
                  ori          tp, a5, 898
                  sltiu        t4, t2, 773
                  sltiu        a4, a2, 849
                  add          s5, s8, s9
                  sub          sp, s8, t3
                  srli         s6, gp, 11
                  srai         sp, s9, 30
                  or           a0, a4, s7
                  nop
                  sra          s2, s1, a4
                  srl          t6, gp, sp
                  slti         ra, s3, 322
                  sltiu        sp, a4, -75
                  slti         a3, t5, -545
                  xori         s1, s9, -811
                  srai         a7, t5, 24
                  slli         s8, zero, 20
                  sra          s8, s11, s10
                  sra          zero, a5, tp
                  nop
                  sltiu        a4, a5, 354
                  xor          a7, t0, s10
                  auipc        s5, 819103
                  and          t2, s7, s2
                  lui          t4, 156521
                  sltiu        s11, zero, 182
                  lui          t4, 565961
                  sll          sp, a2, gp
                  addi         s2, zero, -1768
                  auipc        a3, 317392
                  sra          s9, zero, s10
                  or           tp, gp, a4
                  ori          s8, gp, 1802
                  sltu         zero, a2, zero
                  sltiu        s5, s2, -1355
                  slt          s7, tp, a5
                  add          a6, ra, t1
                  auipc        s11, 122908
                  slt          t4, s1, t4
                  sll          s1, t3, gp
                  andi         s9, a5, 1909
                  and          s0, s8, gp
                  slt          a2, s5, s5
                  ori          a2, s7, 44
                  sltu         a2, ra, a6
                  or           s5, t2, a3
                  slli         a7, a0, 27
                  andi         s8, a3, -1479
                  srl          tp, a5, s7
                  sltu         s10, t3, t5
                  nop
                  sll          t3, s4, s8
                  sltiu        s3, s6, 134
                  auipc        s6, 921502
                  sll          a6, s1, s8
                  sltiu        zero, s0, 1288
                  srl          t2, sp, gp
                  slt          a1, s9, tp
                  srli         ra, ra, 0
                  addi         t1, s11, -1307
                  add          s11, sp, ra
                  auipc        a5, 815577
                  sll          s0, zero, a4
                  auipc        a5, 375814
                  xor          a7, s11, s9
                  srai         a7, t5, 20
                  sltu         a6, s0, gp
                  auipc        s2, 153978
                  slli         s10, s10, 0
                  xor          tp, s2, a5
                  and          a0, s7, s2
                  xor          sp, s3, t0
                  slli         s1, a4, 27
                  xor          s11, t6, s6
                  ori          s8, s11, 322
                  sltiu        tp, t3, 1474
                  nop
                  slli         a1, sp, 5
                  srli         s5, a2, 26
                  srl          t2, s7, t3
                  addi         a5, a2, -1685
                  andi         s9, t2, 52
                  xori         zero, s9, 48
                  add          a2, zero, t3
                  addi         a3, s11, 592
                  ori          t1, t2, 400
                  lui          s7, 577442
                  srl          ra, s8, s1
                  sub          t6, s9, s10
                  sra          a2, t4, s0
                  srli         t3, sp, 20
                  addi         a5, s6, -203
                  auipc        a6, 660754
                  srai         s9, s1, 29
                  and          s5, s4, s5
                  or           a0, a5, t3
                  sltiu        a7, sp, -240
                  ori          s5, ra, 1700
                  sll          zero, a7, a2
                  sll          s2, t6, s6
                  srli         s10, t5, 23
                  xor          a6, ra, gp
                  add          a2, t3, s5
                  xori         s11, s0, 1051
                  xori         s6, tp, 1877
                  ori          a6, s2, -103
                  auipc        t6, 946397
                  ori          zero, s0, 87
                  sub          s11, t4, t5
                  xor          t2, s1, a1
                  slli         s6, a1, 12
                  lui          t6, 166904
                  sra          s2, s9, zero
                  srai         s9, s11, 18
                  ori          a4, gp, 334
                  xori         ra, t6, 1631
                  slt          s1, s2, sp
                  xor          zero, s10, ra
                  xor          s2, s2, t4
                  nop
                  srai         s6, s4, 20
                  slt          s7, t6, ra
                  slt          ra, s7, s8
                  slti         t3, s7, -651
                  slt          s7, t3, s3
                  ori          s3, s5, 1834
                  add          s11, a2, t1
                  slti         s11, a6, -832
                  slt          t6, tp, s3
                  ori          s1, tp, 1915
                  sltiu        t3, s8, -187
                  slti         a7, t3, 1575
                  srl          a2, a6, s2
                  sltiu        s8, t4, -173
                  srli         a7, s5, 18
                  srl          a0, t1, a1
                  sub          a5, s10, s8
                  sltu         s5, a5, s0
                  slti         s1, a5, 510
                  srai         a4, tp, 2
                  sltu         a7, s9, t4
                  and          s2, s0, a4
                  sub          a6, a0, s0
                  sltiu        s8, a2, -1555
                  andi         s11, a1, 1531
                  lui          s1, 213714
                  ori          s8, zero, -1273
                  add          a2, a1, t1
                  lui          a0, 804620
                  sub          s8, a0, s10
                  slt          a3, s7, t0
                  add          zero, s0, s1
                  slti         s10, s3, -1672
                  srai         t1, t3, 28
                  slt          t1, t0, s10
                  and          s5, a4, s11
                  and          zero, t4, a4
                  sra          s5, a0, a1
                  slt          s8, ra, t2
                  sltiu        tp, s0, 220
                  slti         s1, a1, -1161
                  ori          s8, s4, 1923
                  sra          s9, s8, sp
                  ori          a3, gp, 1252
                  srl          s5, s2, a3
                  srl          t2, t3, s9
                  xor          s8, t4, s6
                  lui          a7, 91920
                  sra          gp, s7, t2
                  sltiu        tp, a0, 457
                  srl          s1, a2, t1
                  slli         s0, s3, 5
                  slti         s10, t5, 579
                  lui          a4, 409387
                  ori          tp, zero, -1847
                  sll          t4, t2, s5
                  sub          t3, t3, a0
                  sll          zero, a3, a0
                  andi         ra, t3, -386
                  slti         a6, t5, 1197
                  sub          s5, s9, a0
                  lui          a5, 455936
                  sltu         t1, zero, sp
                  nop
                  auipc        a7, 750901
                  addi         tp, tp, 1169
                  sll          ra, s8, a1
                  sll          s5, s7, t4
                  srai         a5, s9, 7
                  sra          a4, a0, t6
                  nop
                  slli         a2, s7, 6
                  srli         s8, s1, 26
                  sltu         s10, s10, a6
                  sub          t6, t5, s6
                  srl          s7, tp, a2
                  sra          t3, s10, s10
                  or           s11, s1, s9
                  slli         s3, a5, 31
                  addi         a7, t6, -1006
                  srl          s5, tp, a5
                  lui          zero, 986975
                  sltu         t3, t0, s1
                  slti         t3, tp, 1300
                  add          s5, a1, a2
                  lui          a2, 757087
                  slli         s2, t0, 8
                  lui          s3, 579346
                  slli         s3, s10, 12
                  sltu         s0, s11, a4
                  srai         t4, s8, 31
                  andi         s2, t1, 1273
                  srli         a5, a0, 24
                  sltiu        sp, a3, 1953
                  srl          a6, s10, a2
                  andi         t3, a5, 1540
                  srai         s8, s11, 18
                  addi         s2, t4, -1475
                  srai         a5, t2, 20
                  addi         s7, t2, 372
                  xori         s8, t4, -2036
                  or           zero, a5, s4
                  andi         tp, gp, -645
                  srl          tp, s10, a5
                  sub          a5, gp, s9
                  sra          a7, a4, a4
                  and          a2, s0, s3
                  sltiu        tp, t6, 1378
                  andi         ra, s0, 653
                  slli         a0, t0, 4
                  xor          t3, a5, a5
                  sltu         s5, a7, s1
                  ori          s8, s6, 26
                  slti         sp, s2, 1550
                  sltu         s1, s0, t6
                  andi         s10, s1, -217
                  sra          s5, a5, s8
                  slt          s9, s10, a0
                  xori         a3, tp, -928
                  or           a0, s1, t2
                  nop
                  slt          gp, t3, t3
                  sltu         s1, s2, s1
                  sll          gp, t4, s9
                  andi         ra, s2, -307
                  auipc        t1, 472583
                  or           t2, s5, a3
                  xori         tp, t3, 514
                  sll          s8, s3, a7
                  slt          s9, s0, t3
                  sltiu        a2, s6, -1450
                  and          s2, zero, a4
                  addi         s7, sp, 467
                  add          a1, s6, s5
                  srl          s0, t2, s3
                  xori         a3, a4, 523
                  srl          t6, a6, s6
                  nop
                  addi         s3, gp, 1215
                  addi         t3, sp, -1192
                  xori         ra, t4, -906
                  addi         t4, s1, 1966
                  addi         s9, t0, -180
                  addi         sp, s4, -350
                  nop
                  sub          zero, s0, t5
                  sll          s1, t2, t5
                  sltu         a5, gp, tp
                  auipc        t1, 380952
                  xori         s6, t4, 1061
                  and          tp, t1, a1
                  srli         s3, a7, 18
                  sll          a2, t1, s9
                  andi         a3, zero, 1375
                  xori         a6, s0, -1158
                  sltu         a5, s8, s3
                  auipc        s7, 768373
                  nop
                  sra          t6, a5, t0
                  srai         t3, a1, 16
                  xor          a3, s9, t3
                  auipc        s3, 935411
                  lui          t2, 981224
                  auipc        a7, 826673
                  slli         s2, s2, 30
                  sltu         s9, a7, s7
                  lui          a5, 760621
                  slli         a2, t1, 8
                  sub          s10, ra, a7
                  and          s11, t0, s2
                  or           s3, sp, s8
                  add          t6, a6, s5
                  auipc        s11, 67377
                  xori         s9, s3, -1251
                  ori          a1, t2, -769
                  xori         a1, s4, 276
                  srai         s5, t6, 2
                  slli         s10, a2, 16
                  xori         a2, s1, 1889
                  xor          s7, s3, a0
                  or           t6, s3, a6
                  slli         s9, ra, 2
                  nop
                  slti         t4, gp, -2020
                  auipc        t3, 628210
                  xori         a2, t6, 795
                  sltu         s11, s11, s4
                  addi         s6, zero, 1640
                  sltu         s7, t0, a5
                  xor          t6, a3, s10
                  xori         ra, s11, -1884
                  slti         sp, sp, 598
                  srli         t4, s11, 5
                  sltu         a3, s7, t5
                  auipc        tp, 427236
                  ori          a6, t3, -1644
                  add          sp, t5, a0
                  ori          zero, s5, 627
                  sub          s11, a6, t0
                  srai         tp, t3, 8
                  addi         a6, s10, -1558
                  ori          zero, t1, 962
                  sltu         s6, a2, a2
                  slt          t4, sp, s10
                  slti         tp, t6, 1108
                  andi         s0, s3, -1143
                  or           a3, a0, zero
                  ori          a6, s1, -834
                  sll          s0, s7, a6
                  slli         a1, t5, 3
                  lui          s0, 596535
                  sltiu        t2, s2, 1832
                  lui          sp, 1192
                  slti         zero, t4, -430
                  slti         a0, s11, -1226
                  add          ra, s5, s7
                  slti         gp, s4, 259
                  auipc        s5, 283944
                  or           t1, s8, t0
                  sra          s5, a6, a5
                  slt          a2, a1, a0
                  srl          t4, a1, s1
                  and          a6, s8, s6
                  sub          s0, a0, sp
                  sra          a5, gp, a4
                  add          ra, a3, a3
                  srai         a1, ra, 13
                  or           a5, s2, s6
                  andi         t1, s8, 763
                  srli         s1, a4, 1
                  srai         t2, t2, 12
                  sltu         s7, s3, s8
                  auipc        s0, 1047866
                  addi         zero, s11, -318
                  addi         s3, ra, -1818
                  ori          a3, a2, 1602
                  srli         s3, s1, 22
                  ori          s7, s4, 1742
                  srai         s0, s8, 19
                  auipc        s1, 182985
                  addi         tp, s9, -1727
                  nop
                  sltu         t2, a4, a5
                  xor          gp, ra, sp
                  sltiu        s0, s10, -1349
                  xor          tp, s2, t6
                  add          a7, ra, s1
                  slt          s9, a1, t6
                  ori          s11, s10, -1567
                  srl          t6, tp, s1
                  xor          s1, a3, s1
                  sltu         s9, s11, a2
                  add          s8, s1, s4
                  sra          gp, a6, t3
                  andi         s5, t6, 1293
                  and          s6, s11, t1
                  or           a2, s3, s2
                  srli         a2, a0, 2
                  sltu         t1, s0, a5
                  nop
                  or           a3, a3, s3
                  xori         a5, t0, -214
                  nop
                  lui          s3, 413228
                  add          s2, t1, s11
                  slli         s7, a4, 17
                  sll          a4, t3, s7
                  xor          a4, s6, s2
                  sltu         gp, a4, s0
                  slt          s11, sp, a4
                  slt          s3, s2, s8
                  xor          ra, a5, a6
                  xori         a2, a7, -358
                  addi         s11, t4, 134
                  andi         s3, s1, -400
                  sll          a3, a3, a4
                  srli         a3, t1, 2
                  xori         s6, a5, -1889
                  xor          a5, t2, s2
                  addi         s5, t0, -1369
                  add          a0, s1, s4
                  sub          a6, s10, s1
                  sll          a0, a7, s4
                  srl          s1, s1, a6
                  sll          s6, s1, a5
                  sltu         s0, s0, s2
                  srli         s5, t2, 12
                  slt          a5, s9, sp
                  addi         a4, t2, -403
                  add          a2, tp, s9
                  slli         a7, s10, 21
                  ori          t6, a3, 694
                  andi         a3, s6, 713
                  andi         s8, a4, 1645
                  nop
                  xori         s2, t4, 804
                  srli         s7, t5, 20
                  sltu         gp, s6, tp
                  sra          tp, a1, s2
                  and          t6, a7, a1
                  slt          zero, t3, t4
                  srli         a7, t3, 16
                  sra          a3, s7, s11
                  slt          ra, t1, t1
                  ori          s6, s0, -1113
                  ori          t1, t5, -1019
                  srai         s6, t4, 13
                  slt          ra, s2, s3
                  and          s3, s5, gp
                  and          ra, a7, t5
                  xor          s6, s1, t2
                  slti         t3, t2, -897
                  ori          s3, t2, 839
                  nop
                  addi         a4, s0, -1654
                  nop
                  srl          a6, t1, s0
                  sltu         s6, a3, a6
                  ori          s9, t3, 1077
                  slt          a0, sp, t5
                  sltu         tp, s5, a3
                  srli         sp, ra, 28
                  sltu         s0, s1, s3
                  lui          s10, 847028
                  sra          tp, s8, s10
                  xor          t2, s0, a2
                  srl          s11, t5, ra
                  and          t2, a6, a1
                  li           s0, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           s6, 0x0
                  li           a7, 0x80000000
                  li           a4, 0xffffffff
                  li           a5, 0xab65aa0
                  li           s9, 0xffffffff
                  li           s5, 0x0
                  li           s1, 0x0
                  li           ra, 0x80000000
                  li           s3, 0x0
                  addi         s1, s9, -448
                  auipc        s1, 355814
                  add          a5, ra, s0
                  auipc        s1, 246522
                  lui          a4, 227326
                  add          s6, a5, s5
                  addi         ra, a4, -1742
                  nop
                  add          s5, s6, s5
                  nop
                  lui          s0, 511030
                  addi         a7, s6, 2037
                  addi         s1, a5, -262
                  auipc        ra, 221623
                  lui          a7, 407795
                  addi         a7, a7, 298
                  auipc        s3, 618255
                  nop
                  addi         s3, s0, -1265
                  addi         s0, a7, -1609 #end riscv_int_numeric_corner_stream_11
                  add          t2, a3, a4
                  lui          s7, 766065
                  xori         sp, sp, 111
                  ori          tp, a5, 115
                  sltiu        a1, t2, 185
                  and          s0, a0, s4
                  srai         s5, s8, 6
                  and          a1, t2, s1
                  sll          t3, s7, t0
                  sra          s9, s9, s1
                  xori         t6, s3, -1620
                  srl          a1, s4, sp
                  sub          a4, s9, s9
                  xor          a7, gp, a5
                  slt          sp, s8, a4
                  sll          s6, s2, s10
                  slt          s0, gp, tp
                  addi         s9, s11, 1740
                  srli         s11, s6, 15
                  srai         t3, a3, 26
                  xori         s10, a4, 280
                  nop
                  sltu         tp, t1, sp
                  slti         s3, s11, 1264
                  srai         tp, t3, 4
                  xor          sp, s3, s3
                  srai         t6, a1, 28
                  srli         a4, t4, 8
                  lui          s11, 683948
                  sltiu        s5, t5, 35
                  sll          a0, a5, zero
                  sltiu        t4, s6, 1569
                  li           s9, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           s1, 0xffffffff
                  li           s11, 0x0
                  li           s6, 0x0
                  li           gp, 0xffffffff
                  li           s10, 0xffffffff
                  li           t1, 0xffffffff
                  li           a0, 0x0
                  li           t6, 0x80000000
                  li           a4, 0xeead299b
                  lui          t6, 100357
                  addi         t1, s1, -1349
                  lui          a4, 226066
                  lui          s6, 163183
                  add          s6, gp, s9
                  sub          t6, t1, s9
                  addi         t1, a0, 1730
                  addi         t1, s10, 1823
                  lui          a0, 280810
                  lui          a4, 263722
                  add          t6, s9, gp
                  sub          a0, s6, gp
                  sub          s9, s10, s1
                  add          a4, s1, s9
                  nop
                  sub          s11, s10, t1
                  add          a0, gp, s11
                  nop
                  addi         t1, gp, -315
                  auipc        t1, 364066
                  auipc        a4, 850592
                  auipc        s1, 221071
                  nop #end riscv_int_numeric_corner_stream_17
                  add          a2, zero, t5
                  add          s10, s8, s5
                  nop
                  xor          s3, a0, tp
                  sra          gp, a7, t5
                  or           s3, sp, sp
                  sltiu        s8, tp, 1993
                  lui          s1, 181566
                  add          a5, a3, a2
                  srai         s6, t5, 31
                  sub          zero, a1, tp
                  srli         a4, s5, 4
                  srai         s2, a2, 4
                  addi         s6, a4, -138
                  srai         s10, a5, 7
                  slt          a2, s10, s10
                  ori          sp, a6, 1660
                  ori          a3, s0, -1059
                  sub          s0, ra, t4
                  xor          t1, a0, s10
                  slti         t6, s4, -1656
                  sltiu        a7, t2, 2026
                  slti         zero, a6, 1163
                  auipc        ra, 651960
                  xori         t2, a0, -23
                  or           a1, tp, s0
                  lui          s2, 568139
                  sltiu        a1, s0, -334
                  srai         s10, a7, 11
                  slti         t4, zero, 1165
                  slt          t6, a1, tp
                  sltiu        t2, s1, 930
                  srai         a7, a0, 27
                  addi         a0, s4, -1836
                  lui          s8, 1046037
                  srli         s11, s7, 4
                  xori         s3, t1, -680
                  and          s1, s10, a0
                  xor          tp, t1, a0
                  addi         gp, t5, 2044
                  sll          ra, s3, s10
                  lui          s8, 408450
                  sltiu        tp, a1, 649
                  srl          t6, s0, tp
                  sltiu        t2, a7, -857
                  sll          ra, s9, a3
                  xori         s0, a4, 78
                  srai         ra, t0, 26
                  sra          s2, s5, s2
                  xor          t4, t2, t4
                  xori         a5, t2, 151
                  xori         s3, gp, 203
                  sll          sp, s5, s5
                  sub          a6, s8, s2
                  srai         a5, s9, 18
                  sra          s6, s2, a3
                  slli         s9, a6, 12
                  slli         a7, t2, 13
                  srl          s3, s10, t5
                  slti         s3, s6, 153
                  nop
                  or           s10, a4, t1
                  sll          sp, t4, s10
                  srli         s2, s5, 27
                  and          a5, s5, s3
                  sltiu        t2, a4, -1275
                  slli         a7, sp, 9
                  srli         t2, t3, 7
                  or           a7, s5, s11
                  or           sp, t5, ra
                  sll          t4, zero, a4
                  srai         a1, t1, 16
                  and          a7, gp, s8
                  xor          sp, a7, s1
                  sub          s6, t4, sp
                  xor          t4, s2, t2
                  sltiu        a5, a7, 1655
                  add          a1, s0, s0
                  sub          s11, tp, s3
                  or           sp, s0, a2
                  slli         t2, sp, 3
                  andi         a1, s9, -825
                  slti         s1, s8, -1549
                  slli         t3, tp, 12
                  and          sp, s10, s6
                  auipc        tp, 671888
                  ori          s10, a0, 60
                  sra          ra, t2, sp
                  xori         a3, gp, -403
                  srl          s1, a0, tp
                  xori         s5, s6, -1499
                  srli         s2, s9, 7
                  andi         s8, s7, -554
                  lui          s9, 594710
                  nop
                  nop
                  lui          t1, 802527
                  xor          s10, t5, tp
                  xori         sp, t4, 2043
                  srli         t4, sp, 2
                  andi         zero, ra, -1564
                  sll          tp, s4, gp
                  or           s11, t3, s11
                  and          s0, sp, a0
                  srai         s0, s0, 10
                  sll          s6, sp, s1
                  sra          t3, s9, a7
                  slli         t2, s5, 31
                  sra          a3, t0, a3
                  nop
                  sll          gp, sp, t5
                  slt          a3, a1, s6
                  add          a6, sp, tp
                  and          s1, a5, a1
                  sub          t1, s9, s2
                  sub          t3, s3, a7
                  sltiu        gp, a1, 1412
                  srai         s6, s10, 30
                  sltu         s1, a6, t0
                  slti         a6, t2, 2045
                  srai         t6, t6, 27
                  addi         t1, gp, 279
                  slti         zero, t1, -1924
                  slti         a1, s10, 2025
                  xor          gp, t5, a5
                  slt          s1, gp, a3
                  lui          zero, 219424
                  xori         a2, tp, 682
                  sltu         a3, t2, s7
                  or           t1, s7, a6
                  xori         s9, s4, 1289
                  sra          s5, s8, s10
                  slli         tp, s4, 3
                  or           a6, a3, a2
                  or           s0, s5, ra
                  sra          a2, t4, t3
                  sll          s0, sp, a1
                  auipc        s0, 278116
                  xori         s7, a6, 1993
                  lui          a1, 593788
                  and          a3, gp, s1
                  sub          s5, s1, a6
                  slt          s5, tp, a4
                  xor          t3, t5, s9
                  srl          a2, a3, s3
                  sub          s8, t6, zero
                  srai         s1, t1, 13
                  sltiu        ra, zero, -1448
                  sub          s8, a6, t1
                  slti         sp, a0, 1229
                  sra          a2, a4, t6
                  or           s11, a1, s4
                  sltiu        a7, s9, 541
                  srli         a7, sp, 31
                  ori          a2, s10, -36
                  srl          t3, s7, a6
                  andi         ra, s6, 850
                  ori          s0, t4, -510
                  addi         a3, a5, -1761
                  xor          ra, a1, gp
                  nop
                  sub          t4, s11, t3
                  srli         gp, a0, 26
                  xor          s7, t3, s8
                  sub          gp, t5, sp
                  srl          a6, a4, s6
                  sltiu        gp, sp, 869
                  sub          s0, sp, a4
                  srli         s8, s4, 30
                  slli         s6, s9, 27
                  addi         t2, s2, -1951
                  xor          a4, s9, t1
                  srai         ra, gp, 10
                  lui          t6, 90856
                  slti         a3, t3, 245
                  addi         zero, sp, 1912
                  andi         s9, s4, 670
                  slli         ra, s3, 14
                  auipc        s3, 681943
                  andi         sp, t0, -191
                  sub          t1, s7, a2
                  sltu         s8, t4, a5
                  sub          a7, a0, s4
                  nop
                  sltu         t6, ra, sp
                  nop
                  xor          s2, t3, a7
                  or           s10, s11, s6
                  srl          a2, s3, a5
                  sll          a3, t6, s3
                  slt          s6, s8, s4
                  ori          a1, s3, 1658
                  addi         s9, a7, -602
                  xori         zero, a2, -1974
                  sltiu        a1, a3, -1754
                  srl          a3, s9, t5
                  slti         s6, t0, -703
                  sub          sp, s4, t6
                  or           s7, s4, a5
                  slli         a5, t0, 20
                  and          s1, s6, t5
                  addi         tp, s1, -18
                  or           s1, t2, s2
                  xori         a0, s6, -476
                  addi         zero, t2, -823
                  slli         a0, t0, 0
                  sltu         a0, gp, ra
                  or           a1, a3, sp
                  nop
                  auipc        s7, 928247
                  xor          a6, s9, s3
                  srai         a3, a3, 19
                  xori         a0, s0, -959
                  xori         a1, s1, -853
                  slt          sp, t5, a4
                  sll          s1, tp, t2
                  andi         a1, t5, 1292
                  or           s3, ra, tp
                  srl          s3, s0, s8
                  addi         s1, s1, -485
                  lui          a7, 602666
                  sub          a7, t4, a5
                  and          t6, s6, a2
                  srai         s3, zero, 8
                  add          sp, s1, t4
                  srl          a4, s5, a3
                  xor          s0, a2, a1
                  sll          s11, ra, a6
                  sub          s6, t4, a5
                  slti         s9, s6, 1748
                  xor          a5, sp, s6
                  sra          a2, s9, a1
                  sra          ra, gp, s3
                  srl          s10, t2, ra
                  addi         zero, s9, 2026
                  and          s9, t6, a3
                  or           s7, t3, t3
                  srai         s8, s9, 7
                  srai         s10, s10, 2
                  and          ra, s6, s10
                  srai         s9, a1, 13
                  srl          t2, tp, a7
                  or           tp, s1, t0
                  sll          s0, a5, tp
                  andi         s2, a0, -768
                  sub          a1, s2, t6
                  or           t1, t1, t4
                  lui          s0, 355561
                  add          ra, s11, a3
                  srli         t6, s4, 7
                  and          s10, s0, s5
                  and          t4, s1, s11
                  nop
                  add          s2, sp, s5
                  srai         a3, zero, 16
                  slli         s3, s5, 4
                  auipc        t1, 472721
                  and          t6, s10, a7
                  srli         t4, s1, 13
                  slli         s3, s4, 4
                  andi         s10, a6, -1508
                  srli         t6, ra, 29
                  slt          s10, s3, a4
                  xor          s9, a6, s9
                  slti         t6, s10, -1291
                  sub          a3, s8, a3
                  srl          a2, t5, t6
                  slti         s9, a3, -114
                  xori         s11, a7, 2040
                  addi         a5, a6, -437
                  andi         a5, a3, 1311
                  andi         a3, s6, -1431
                  xor          s8, s1, ra
                  ori          t1, s10, 170
                  sltu         t3, t3, t2
                  sltu         s9, s3, s1
                  slti         t6, s4, 1837
                  or           t3, s1, t5
                  sltiu        s5, s10, 1807
                  sltu         tp, sp, ra
                  srai         s7, t4, 20
                  ori          a6, t4, -1045
                  andi         gp, s0, 481
                  or           s2, a3, s0
                  addi         s1, s10, -1909
                  slli         s7, gp, 7
                  sub          t4, sp, gp
                  nop
                  ori          s8, s10, 51
                  slti         a1, t5, 1579
                  sltu         t3, a3, a1
                  srli         s1, s4, 0
                  and          t2, t5, zero
                  srl          s1, s2, s0
                  sra          s0, a5, s0
                  andi         a2, s0, -396
                  lui          gp, 341392
                  addi         s7, a1, -457
                  srl          s8, s11, a6
                  slli         a0, s8, 28
                  ori          a3, a5, 1085
                  and          s7, s7, sp
                  lui          s7, 306795
                  ori          a1, a2, -2026
                  or           t3, s8, a7
                  srl          a1, s4, s3
                  xor          s8, a7, s9
                  xor          t4, s2, s7
                  srli         s1, tp, 14
                  lui          s3, 869362
                  addi         s10, a1, -406
                  addi         zero, s10, 1664
                  srai         a3, s10, 24
                  sll          a4, a2, s8
                  nop
                  sub          sp, a2, t0
                  or           zero, sp, a1
                  or           t3, ra, zero
                  sltu         a6, a0, t4
                  xor          s0, zero, s1
                  srli         a0, s11, 9
                  sltu         a2, t3, t4
                  srai         s3, a0, 1
                  slt          gp, s3, t4
                  sub          a0, t4, a0
                  xor          s7, t1, zero
                  addi         a3, a7, 1813
                  lui          a2, 183629
                  slti         s10, a5, -1667
                  add          s5, t4, gp
                  sltiu        s10, a3, 1506
                  slli         tp, a1, 24
                  sll          a7, a6, ra
                  srai         s8, s2, 16
                  xor          gp, s1, s0
                  andi         s9, a7, 1198
                  sltu         t1, s9, s3
                  nop
                  add          a2, t4, s10
                  sra          t2, t5, s2
                  or           s6, a4, a1
                  slli         zero, t3, 9
                  nop
                  ori          a5, a4, -1291
                  lui          gp, 950236
                  xor          a6, ra, a3
                  auipc        s11, 750569
                  slti         a1, ra, -110
                  or           s2, s7, a0
                  auipc        a7, 622190
                  sll          s7, s2, a1
                  srai         s3, s4, 3
                  andi         tp, a0, -654
                  add          s9, ra, s2
                  sll          s1, t5, t0
                  slt          a4, s3, a2
                  addi         a5, t5, 746
                  slli         s10, t3, 28
                  slli         s5, t2, 2
                  sll          s11, t1, t1
                  nop
                  srli         s1, a0, 1
                  sll          s3, s3, t0
                  srl          t4, t6, s8
                  andi         a3, s7, -1470
                  ori          t3, a1, -1528
                  srl          s10, t5, tp
                  andi         t1, t1, -1627
                  srai         a7, s2, 26
                  sltiu        ra, sp, -1676
                  srli         a5, t2, 29
                  sltu         s2, a4, s1
                  sll          a5, ra, s5
                  slti         s3, s10, -520
                  xori         a1, s2, 1838
                  add          a1, t5, zero
                  sll          s9, gp, s10
                  slt          tp, s10, a0
                  sltu         t1, s10, s10
                  sltiu        s1, t5, 1403
                  sub          a5, t4, s10
                  sll          a6, t5, s0
                  slli         t1, s6, 30
                  addi         t4, s1, -1744
                  or           t6, t2, s10
                  sltu         a6, a1, t5
                  sltu         gp, ra, a4
                  sltiu        s3, t1, 1117
                  addi         gp, a6, 723
                  slt          t2, s0, a6
                  addi         a0, a0, 689
                  slt          a6, t2, t6
                  slli         t6, s9, 17
                  addi         s5, t1, 1627
                  slti         a1, s2, -110
                  addi         t3, a5, 1648
                  slti         s7, gp, -1324
                  and          t2, s2, sp
                  slti         t4, t5, -562
                  nop
                  xor          a3, t0, a0
                  lui          tp, 189795
                  sub          s11, s7, tp
                  or           a0, a0, gp
                  sltiu        gp, a2, 6
                  sub          a5, ra, a2
                  addi         sp, ra, -978
                  li           a4, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           s6, 0x0
                  li           sp, 0x80000000
                  li           ra, 0x0
                  li           s9, 0xffffffff
                  li           t3, 0x0
                  li           s8, 0x0
                  li           a6, 0x80000000
                  li           s1, 0x0
                  li           a0, 0x0
                  sub          ra, ra, s9
                  add          s8, a4, s6
                  add          s9, sp, s1
                  nop
                  nop
                  addi         s1, a0, 1581
                  auipc        ra, 421769
                  nop
                  add          s8, s6, a0
                  addi         sp, ra, 1028
                  add          s1, s6, a4
                  auipc        sp, 156094
                  nop
                  auipc        a6, 638331
                  add          s6, t3, a6
                  add          s8, t3, ra
                  auipc        s9, 63573
                  lui          a0, 408241
                  add          s8, s6, s8
                  sub          sp, a4, s1
                  addi         sp, a4, 59 #end riscv_int_numeric_corner_stream_15
                  sltiu        t2, sp, -2028
                  and          t2, s3, t1
                  sltiu        t3, a7, 1791
                  add          s11, a5, t4
                  sub          t2, s2, s7
                  srai         s9, a7, 16
                  sltu         a6, a6, a2
                  sll          s5, t4, a4
                  sub          t3, t6, a0
                  sll          zero, s8, ra
                  slti         ra, t1, -1597
                  ori          ra, a4, 1913
                  lui          a3, 799691
                  addi         t1, a2, -1229
                  slti         s5, t0, -488
                  sltu         s3, s8, a3
                  xori         s1, s0, -1325
                  addi         a2, t4, 1008
                  nop
                  slli         tp, s11, 20
                  and          a4, gp, a2
                  srli         a1, a4, 31
                  nop
                  sltiu        t2, sp, -658
                  sll          t4, a0, t0
                  xor          s3, t6, gp
                  srli         tp, s8, 11
                  slti         s7, t6, 159
                  ori          s11, t6, 1739
                  and          tp, a3, a2
                  sltiu        a3, ra, 259
                  sra          s3, a1, s7
                  andi         t2, a6, 1740
                  andi         s11, ra, 289
                  slti         t2, a2, 1544
                  sltiu        s11, sp, 198
                  xor          s8, s6, s2
                  sltu         a3, t4, a1
                  xor          a6, a3, s0
                  srli         s10, ra, 18
                  add          s2, a4, s11
                  addi         a5, t0, 1185
                  lui          t4, 896270
                  slt          tp, t4, a0
                  or           zero, s5, s9
                  srl          t6, s4, t3
                  lui          s10, 336184
                  sll          a0, s6, t4
                  auipc        t4, 288128
                  and          a0, s0, s7
                  sltiu        s6, t1, -1740
                  sltiu        s11, s4, 1759
                  sll          t1, s4, sp
                  xor          s1, t4, s10
                  slti         s11, t1, 1085
                  sltiu        t4, s0, 487
                  sltiu        a1, s2, -635
                  slli         a2, s6, 6
                  xor          a4, s4, sp
                  and          t2, a0, gp
                  or           s9, s8, tp
                  slt          a3, s5, s8
                  nop
                  srl          s1, a2, s5
                  srli         a5, a6, 29
                  slli         s5, a0, 16
                  nop
                  add          a3, gp, a6
                  lui          s11, 760920
                  lui          gp, 793079
                  sll          s0, t3, gp
                  ori          sp, ra, 1295
                  nop
                  xori         a2, a5, -950
                  sll          s7, tp, s3
                  sltiu        a1, gp, 1589
                  or           a7, s10, a2
                  sltu         a7, t0, a6
                  add          s5, a5, gp
                  or           s10, tp, s5
                  slti         s10, s8, 1154
                  sll          s6, tp, t3
                  sltiu        a0, t1, 305
                  ori          t6, t3, -1092
                  auipc        s1, 789592
                  sub          gp, a6, sp
                  andi         a5, s2, 658
                  srai         s11, zero, 2
                  srli         s5, t1, 8
                  srl          s7, a7, s7
                  addi         zero, s2, 691
                  and          s9, s3, a2
                  auipc        s11, 816122
                  xori         t2, a3, -856
                  sltu         s3, t1, a3
                  nop
                  sra          s10, t2, ra
                  slt          gp, a1, s5
                  andi         t4, s8, 504
                  lui          a6, 542713
                  slti         tp, s6, 1197
                  sub          a0, s11, sp
                  slli         t2, zero, 19
                  add          s5, a6, s7
                  srl          sp, t6, zero
                  sltu         s11, a2, tp
                  ori          a0, s0, 1229
                  ori          a4, t6, 606
                  xor          s0, s4, a4
                  or           ra, s8, s4
                  and          zero, a7, s8
                  sub          t3, s7, t3
                  addi         s2, t6, 1537
                  sll          zero, ra, tp
                  xor          s9, t1, s9
                  sll          s7, s8, s8
                  sll          s5, ra, s6
                  sra          s9, sp, a5
                  sra          a3, s5, gp
                  auipc        tp, 603768
                  or           ra, s7, t2
                  srai         a0, a0, 23
                  sltu         a3, s5, a4
                  xor          gp, s1, s10
                  auipc        s7, 387098
                  srl          a2, a7, s6
                  srl          s1, a3, s7
                  slli         tp, t3, 25
                  srai         s3, ra, 12
                  srli         a4, a3, 0
                  srl          gp, t1, s3
                  lui          s7, 161090
                  sltu         s8, s7, a6
                  srl          a5, t0, ra
                  nop
                  or           s10, t1, a0
                  lui          s2, 920097
                  sra          gp, a4, t5
                  sub          s5, tp, s0
                  slti         a1, s4, 1390
                  auipc        a7, 895246
                  andi         gp, a2, -2048
                  addi         a6, t5, 1426
                  andi         s1, s4, 1088
                  slli         s1, zero, 4
                  andi         a7, ra, -1641
                  and          sp, s1, gp
                  srai         a6, s3, 31
                  xori         a3, t5, 1507
                  sltu         s3, s1, zero
                  sltiu        t4, t3, -584
                  srli         t3, tp, 12
                  xori         a6, t6, -953
                  add          a7, s9, ra
                  slt          a3, s10, a7
                  andi         t3, t0, -574
                  sll          sp, a1, s4
                  slt          a5, s6, gp
                  slt          s8, tp, t1
                  ori          s3, t0, -766
                  slt          a5, s6, a2
                  xor          t4, s3, a5
                  slt          s8, a5, s10
                  sltiu        a1, s2, -149
                  sub          a4, s4, t3
                  or           t1, a6, s4
                  add          ra, t1, s10
                  sub          s7, t0, s2
                  andi         t2, s10, -114
                  addi         sp, tp, 1285
                  xori         a1, s4, 1253
                  xori         t1, s5, 1192
                  slti         s0, t0, -1936
                  ori          sp, s7, 260
                  slt          t2, s5, a7
                  slt          a4, ra, s6
                  sub          s1, s7, a4
                  andi         a4, s7, -1544
                  sll          zero, t1, t3
                  and          a4, s2, s11
                  and          s8, s9, a7
                  addi         gp, s10, 912
                  sll          t4, a4, a1
                  sub          zero, a3, s1
                  srl          a2, t5, a1
                  sll          sp, s11, sp
                  auipc        tp, 266843
                  sra          s7, s1, a1
                  nop
                  sra          a4, s9, sp
                  srli         s1, s3, 24
                  auipc        zero, 767704
                  sub          t2, ra, s1
                  srl          a2, a4, s10
                  addi         s5, s7, -759
                  add          t1, t1, ra
                  lui          s7, 817427
                  sltiu        s2, s11, 670
                  slt          s1, a1, sp
                  and          a2, t2, a4
                  sll          s0, a2, t1
                  andi         s11, ra, -1060
                  and          ra, sp, s9
                  srai         a5, tp, 18
                  sltu         tp, s7, t5
                  sltu         a1, t6, s3
                  addi         t1, t2, 1502
                  lui          s5, 618934
                  xori         a2, a3, 281
                  andi         ra, s2, -1057
                  srli         a6, t3, 16
                  slti         s11, t6, -110
                  slti         s11, s11, 1387
                  auipc        tp, 336256
                  sll          s9, t1, s5
                  sltiu        s6, s8, -1727
                  sll          s9, sp, s11
                  xor          s3, a2, t6
                  auipc        s9, 642320
                  add          a3, s2, zero
                  andi         a7, t2, 738
                  andi         s8, s11, -1311
                  slli         a7, t5, 13
                  nop
                  srl          s5, s8, t4
                  sltu         t2, zero, s9
                  srai         ra, t5, 7
                  lui          s10, 250302
                  andi         s9, a2, -440
                  addi         a6, t2, -1072
                  slti         s3, sp, -1028
                  ori          s7, s5, 1432
                  add          tp, t0, s8
                  andi         a7, a1, 1161
                  ori          a7, a4, -446
                  srai         a0, ra, 31
                  srli         a0, s3, 31
                  lui          s8, 575804
                  xor          s11, t3, t4
                  sltu         t1, t0, a6
                  sub          tp, t0, a1
                  add          t1, a3, a1
                  and          t3, a3, s3
                  or           zero, s1, s1
                  sltiu        t2, s11, -1408
                  addi         a1, t0, -883
                  slt          a2, s2, s1
                  nop
                  sra          s2, t1, a0
                  sub          tp, s4, a4
                  and          t1, t5, a2
                  slt          a4, s1, tp
                  srli         a5, t1, 4
                  andi         t4, t2, 548
                  slt          ra, s11, s8
                  srl          a5, s9, sp
                  addi         t4, tp, -1094
                  sra          t1, s7, a3
                  sub          t4, t4, t6
                  sub          s3, s0, a3
                  sub          t6, a3, a3
                  addi         ra, a6, -502
                  addi         a4, a2, -1913
                  sltiu        s10, tp, -726
                  slti         t1, t3, -1755
                  sltiu        a6, a0, -1626
                  slli         t6, t1, 22
                  ori          s10, s6, -49
                  lui          a2, 841978
                  nop
                  sll          t2, a3, a3
                  srai         t4, t4, 1
                  srli         a7, zero, 26
                  xori         gp, t2, 659
                  srli         s7, t2, 15
                  andi         a7, s5, 680
                  srl          a7, a5, s0
                  srli         zero, s1, 1
                  addi         s11, t2, 99
                  sltu         s8, s11, s3
                  srai         a7, a5, 7
                  sll          ra, a7, a3
                  ori          s7, t1, 1937
                  nop
                  lui          gp, 781663
                  addi         s1, s7, -1968
                  xor          s0, s4, s0
                  auipc        s6, 578734
                  xori         t4, sp, -462
                  sra          s2, s9, s5
                  sltu         a5, s5, s9
                  srl          s0, t3, t6
                  ori          tp, s8, -1056
                  slli         s6, s5, 14
                  srli         tp, s11, 25
                  nop
                  or           a2, t1, t6
                  sltiu        s9, gp, -44
                  and          s2, a3, s7
                  add          s10, s4, t3
                  xori         a2, s4, 301
                  andi         t2, ra, 1910
                  andi         s5, t1, 1723
                  nop
                  and          s9, s2, t3
                  xori         s9, s6, 274
                  xor          s5, s9, zero
                  nop
                  srl          ra, a4, s8
                  or           s3, t5, s2
                  sra          a7, t5, s3
                  srli         s9, t3, 14
                  and          zero, s0, t1
                  or           s0, a0, t6
                  xori         tp, s10, 467
                  lui          a1, 571253
                  slli         t3, s10, 4
                  xori         a5, s4, 1150
                  srl          a4, s7, a0
                  sltiu        t1, a7, 633
                  sll          t1, s6, tp
                  nop
                  xori         s9, s5, 728
                  andi         s5, a7, 1557
                  sltiu        t3, tp, -731
                  nop
                  sltu         zero, s4, t4
                  and          s0, a4, t1
                  sra          a5, t4, a0
                  addi         zero, t2, -1372
                  lui          s8, 97829
                  sub          t1, a7, s4
                  and          s8, s6, a5
                  srli         s8, s4, 28
                  xori         s6, s8, 2043
                  slt          s9, a3, t2
                  slti         s5, a1, -1903
                  ori          zero, s3, 2007
                  addi         s9, a4, -800
                  slt          a6, s2, a0
                  srl          s7, t5, t3
                  sll          ra, s11, a4
                  srl          gp, t2, t2
                  sltu         sp, a2, a0
                  nop
                  nop
                  xor          a6, a2, s10
                  xori         s8, a6, -720
                  sltiu        ra, s10, -1811
                  nop
                  srai         a0, ra, 16
                  add          sp, s7, t1
                  nop
                  sra          t1, t6, s10
                  or           s0, s5, s10
                  ori          a2, s6, -717
                  srai         t1, s10, 23
                  add          s6, t2, a5
                  ori          s7, t3, 775
                  slli         a3, t6, 1
                  and          s3, sp, s10
                  auipc        t3, 947841
                  andi         t6, s5, 615
                  sll          gp, s11, s11
                  sll          a4, a6, s6
                  nop
                  auipc        a6, 369019
                  sltu         t6, t6, t5
                  xori         s2, t6, -270
                  sll          a1, s6, a7
                  slt          s11, s7, s0
                  slli         t3, ra, 26
                  srai         t2, t3, 12
                  xor          a3, a3, a4
                  lui          sp, 72985
                  nop
                  sll          gp, a6, a7
                  and          s2, zero, t5
                  srai         t3, zero, 13
                  addi         s9, t1, -117
                  slli         a0, t2, 30
                  addi         s7, s8, 564
                  sll          s7, a7, a5
                  sll          ra, t6, t0
                  sra          a5, s2, s0
                  addi         s2, a0, -1602
                  sub          s5, a0, s0
                  add          s6, t6, s4
                  srai         t3, tp, 4
                  auipc        s9, 730089
                  addi         sp, s10, 1520
                  andi         a0, a1, -1980
                  auipc        sp, 1035146
                  sltu         a0, s8, a0
                  srai         a6, t1, 15
                  addi         s1, a1, -379
                  srl          a3, s0, sp
                  nop
                  sltu         s3, a6, gp
                  sra          tp, zero, s0
                  auipc        ra, 348928
                  add          s0, a7, t0
                  ori          gp, a7, 1776
                  xor          t2, a3, t4
                  slli         a2, s11, 18
                  add          s0, s11, s2
                  sra          a6, ra, s7
                  and          s1, s5, t2
                  xor          a2, s3, t6
                  addi         s5, t5, 1999
                  srli         s2, s8, 22
                  slli         s6, t3, 20
                  add          t2, s3, zero
                  ori          s2, sp, -1885
                  andi         s10, a2, 1375
                  slt          s8, a7, a4
                  xor          t3, a7, s1
                  slti         s1, ra, -2018
                  auipc        a2, 860997
                  nop
                  addi         a5, a3, -1120
                  xori         a5, s3, -2019
                  add          t1, t5, s5
                  lui          s3, 640659
                  lui          a7, 769451
                  add          zero, t6, s10
                  sra          s6, a6, tp
                  nop
                  sltiu        tp, t2, -1394
                  and          a3, s4, s4
                  slli         t1, t0, 2
                  andi         sp, a0, 1923
                  sub          s8, gp, s6
                  andi         a7, a6, 1384
                  srai         ra, a3, 6
                  slt          s8, s3, s10
                  srai         s11, s0, 1
                  srli         t4, t0, 3
                  sltu         t4, s2, t0
                  srl          s2, sp, sp
                  srli         a3, s5, 0
                  srl          zero, t6, t0
                  nop
                  andi         a2, a4, 1353
                  sll          a3, s1, t1
                  lui          a7, 433458
                  and          t2, a1, s2
                  nop
                  sltu         sp, ra, gp
                  srli         s10, a3, 15
                  xori         a6, tp, 1667
                  nop
                  ori          s7, t2, -249
                  lui          a4, 253184
                  addi         ra, s6, 2020
                  sra          a2, s11, s11
                  and          sp, t5, s1
                  andi         ra, s7, 1725
                  ori          t2, t2, 868
                  sub          t4, t3, a3
                  addi         tp, sp, -1626
                  srl          zero, s9, t6
                  auipc        s10, 1018548
                  sltu         ra, s8, a7
                  sll          s10, s11, a1
                  auipc        gp, 896199
                  ori          a5, a0, -458
                  nop
                  lui          t4, 828877
                  sll          t3, zero, s11
                  sll          s6, a0, ra
                  sltu         s9, tp, gp
                  andi         s1, a7, -500
                  sltiu        a3, s8, 1237
                  slti         a7, s3, 311
                  ori          s5, t3, 295
                  slti         a5, a4, 1602
                  sltiu        t3, a0, -1805
                  nop
                  xori         s9, s0, 1914
                  sll          t2, ra, s4
                  nop
                  sll          ra, tp, a7
                  slt          a3, a4, s9
                  lui          a1, 1010691
                  or           t2, s5, zero
                  nop
                  srl          t4, t1, s8
                  xor          s5, s10, t4
                  sltiu        t6, s5, -1298
                  or           t6, t0, a1
                  srai         tp, t5, 8
                  auipc        a3, 46009
                  add          tp, s1, a5
                  ori          a7, a1, 2035
                  sra          a4, a3, a7
                  add          gp, zero, s9
                  srai         s1, s10, 12
                  andi         t1, a4, 1901
                  add          a5, gp, a0
                  sltiu        t1, s1, -999
                  nop
                  sll          s2, s7, s8
                  srli         s11, t5, 6
                  auipc        a6, 855313
                  xori         s0, s2, 336
                  sub          ra, s0, s6
                  sltiu        ra, s8, 547
                  lui          t3, 232927
                  addi         t4, t2, 446
                  xori         s7, s0, -2028
                  ori          s10, t4, 2045
                  lui          a5, 530238
                  auipc        s7, 454029
                  addi         zero, s9, 477
                  andi         zero, t2, -1935
                  sll          a4, t5, s6
                  srai         s7, s4, 8
                  sltu         a7, t6, s3
                  auipc        s7, 53866
                  add          s1, s3, s9
                  lui          a3, 27558
                  xori         tp, t0, 1225
                  and          gp, a6, sp
                  nop
                  slli         ra, a0, 10
                  sub          s0, ra, s4
                  srai         a3, a2, 3
                  nop
                  or           s7, t5, s6
                  addi         a0, s7, -264
                  ori          t4, s7, -256
                  xor          s11, s10, s2
                  or           s5, s5, a4
                  srli         gp, gp, 6
                  srli         s3, s8, 14
                  andi         s8, a3, 646
                  addi         ra, t0, 147
                  srli         s6, a7, 23
                  sltiu        ra, t3, 315
                  auipc        t2, 510182
                  srai         a1, s7, 4
                  sll          sp, s5, s1
                  sra          sp, s1, s6
                  xor          a3, s3, a0
                  sltu         s1, t2, a5
                  auipc        s11, 347240
                  nop
                  slti         gp, a3, 824
                  sltiu        s9, t3, -1308
                  sub          a6, sp, s2
                  sra          a5, s2, s7
                  nop
                  sltiu        s1, t0, 1580
                  sltu         a3, t3, t2
                  slli         s6, a1, 13
                  xor          t2, t6, s11
                  sub          a7, s5, t2
                  sll          tp, t5, a6
                  slli         a5, s5, 10
                  srl          a0, a7, a1
                  srai         t6, s7, 24
                  slti         s11, a3, -1274
                  or           a4, s9, s4
                  and          t2, s7, a5
                  auipc        t6, 329682
                  or           a4, t0, gp
                  nop
                  sltiu        a6, s9, -304
                  auipc        s1, 500292
                  sltiu        s5, a4, -38
                  add          zero, a4, s5
                  lui          s11, 263631
                  slti         s7, s7, 1015
                  xor          t4, s1, a3
                  sra          s10, s2, s4
                  nop
                  slt          a7, a2, t4
                  sll          zero, a7, s7
                  srai         s10, ra, 28
                  andi         a2, a1, 325
                  sltiu        t4, s9, 795
                  sub          ra, s1, s2
                  slt          s1, s9, a0
                  slti         s6, s4, -893
                  auipc        a5, 226007
                  slt          s9, a5, a7
                  and          s1, a4, tp
                  nop
                  srai         gp, s10, 22
                  srli         s11, ra, 0
                  nop
                  auipc        t1, 650629
                  andi         s3, a1, 231
                  sra          s5, t0, t1
                  addi         s7, s3, 1982
                  addi         a5, a5, 122
                  and          s0, gp, t5
                  sltiu        a3, a3, -1349
                  andi         s0, a6, -2029
                  addi         t4, a0, 1750
                  xori         s5, sp, -1739
                  auipc        t4, 559469
                  xor          s0, ra, a1
                  srl          s3, a1, a1
                  slti         s7, tp, -837
                  sll          s0, s3, s10
                  auipc        s3, 1022304
                  slti         s3, gp, 1068
                  and          s7, a0, s0
                  xori         a7, a2, -1307
                  sub          s9, t1, s8
                  andi         a7, a2, 2012
                  add          zero, a2, a4
                  auipc        ra, 86798
                  slt          s5, a7, a4
                  add          a1, a5, t1
                  lui          tp, 578842
                  srai         t1, s0, 17
                  addi         t4, t2, -385
                  sltiu        zero, s2, -1430
                  nop
                  or           a7, s8, s11
                  xori         t2, s9, -243
                  slli         tp, s3, 9
                  or           a7, t6, t3
                  slti         s3, tp, 144
                  srai         tp, a0, 6
                  xori         s3, s1, 1895
                  sra          t3, a7, zero
                  xori         a7, s8, 859
                  xori         s6, tp, -726
                  sub          s3, a5, t1
                  sltu         s11, t3, s1
                  addi         s1, gp, 577
                  lui          s2, 175840
                  sltu         s3, t0, s7
                  addi         t6, s2, 2021
                  and          a5, tp, gp
                  xori         s2, s9, -1067
                  slli         s0, s6, 1
                  nop
                  ori          t6, ra, -131
                  xor          t6, t3, s1
                  xori         s9, a5, 1567
                  lui          a5, 562132
                  slt          s0, t5, s4
                  sra          s6, s11, t3
                  or           t3, a2, t4
                  slti         a1, s8, -2010
                  xor          gp, s7, s10
                  slt          zero, t0, a7
                  srli         tp, t4, 20
                  sub          s6, s4, a2
                  sltiu        sp, s6, 1755
                  add          t1, t2, s10
                  auipc        s6, 283532
                  and          a1, s7, s10
                  xor          s6, t3, a7
                  addi         gp, s0, -510
                  ori          t3, gp, 1286
                  nop
                  auipc        s11, 1019709
                  sltiu        ra, t5, 546
                  slli         t3, s2, 13
                  addi         a5, t2, -1633
                  sltu         t2, s5, t6
                  sll          s3, s11, a2
                  addi         a1, s5, 1015
                  andi         a3, gp, 1387
                  and          a7, s0, s6
                  and          a1, gp, t5
                  add          tp, s6, a7
                  addi         t4, a6, -1293
                  srli         gp, s2, 31
                  xori         a4, a3, 709
                  srli         t4, s4, 9
                  andi         t6, s6, 123
                  sltu         a3, s3, t6
                  ori          s6, s9, -1367
                  add          s5, s4, t5
                  sltiu        s0, a3, -632
                  sub          t3, zero, s11
                  slt          sp, s7, s7
                  sub          s2, s10, t2
                  srai         a2, tp, 10
                  sll          t1, t3, a5
                  sll          t2, s8, s5
                  slli         a6, t4, 4
                  lui          a0, 856284
                  srli         t4, a0, 17
                  nop
                  sll          t1, s5, s4
                  ori          s6, a6, 520
                  srai         t3, t0, 24
                  addi         gp, t2, 32
                  sub          s6, t3, s7
                  or           s0, t5, a4
                  sll          a0, s11, a4
                  srl          t3, s11, t3
                  slli         t1, s11, 13
                  sra          s8, s7, a2
                  srai         a3, s10, 27
                  auipc        s10, 376904
                  auipc        ra, 55405
                  add          t4, a0, s11
                  sub          tp, t4, s9
                  sll          t6, a7, t4
                  nop
                  ori          s3, s9, 998
                  slti         t1, a1, 457
                  lui          s6, 396935
                  sltiu        a3, t0, 1220
                  srli         t6, a4, 9
                  and          t3, s10, s7
                  nop
                  sra          t4, s3, s4
                  srai         a7, t5, 8
                  auipc        t4, 1039534
                  xori         t3, s9, -1374
                  sll          gp, a3, a2
                  and          s0, t2, a5
                  sll          t1, a6, s1
                  add          s11, a0, a2
                  add          a4, s5, zero
                  sub          s11, a7, s7
                  sltu         a3, t1, s6
                  auipc        s10, 1036241
                  srai         s7, sp, 10
                  srli         a5, zero, 7
                  and          a0, a2, t3
                  sub          ra, a5, s1
                  andi         t3, t3, 578
                  sltu         s9, s2, t3
                  xori         s5, s9, -1221
                  auipc        a2, 220804
                  srli         s6, s1, 9
                  sltu         a7, s11, t5
                  sll          t4, s8, a2
                  srai         s11, s6, 25
                  slti         a4, t1, 1143
                  sub          a2, t3, tp
                  lui          t6, 836228
                  slt          t1, t1, t4
                  or           s9, s2, s0
                  xor          s7, ra, a1
                  srli         t1, a7, 22
                  sltiu        s3, s2, -1458
                  nop
                  or           zero, a0, a6
                  sll          t6, a6, s8
                  slli         s8, s6, 0
                  lui          tp, 56614
                  addi         tp, a7, 211
                  slli         tp, s3, 8
                  srai         s7, s10, 8
                  xori         a7, s11, -1776
                  xor          a1, t5, t5
                  auipc        t6, 668842
                  srl          a4, a6, s7
                  lui          s11, 139973
                  ori          s0, s2, 1714
                  sll          a1, s7, s5
                  add          s8, sp, t2
                  sltiu        t1, s1, 1961
                  nop
                  andi         zero, a2, 284
                  srai         s3, sp, 19
                  sltiu        a3, a6, -1814
                  lui          gp, 968752
                  add          sp, s8, s8
                  sll          t4, s10, gp
                  xor          a2, s7, tp
                  sub          t6, s0, a5
                  slli         a4, s5, 17
                  or           s11, s0, t5
                  slt          ra, t2, s11
                  auipc        sp, 795465
                  or           s1, t5, a5
                  xor          t1, ra, s6
                  srli         a6, a0, 15
                  sltiu        s7, ra, 190
                  srl          a2, s7, s2
                  xor          s9, s3, s10
                  ori          t6, s11, 377
                  auipc        s10, 964696
                  sll          s2, t5, a0
                  slli         zero, s10, 31
                  add          s2, s4, t1
                  nop
                  nop
                  or           a5, zero, s4
                  slli         ra, ra, 9
                  addi         tp, s7, -395
                  ori          a2, s2, 17
                  sub          s10, s2, s4
                  slti         s0, a0, 985
                  andi         s7, a5, -1654
                  add          s8, s9, t4
                  srl          zero, a1, s11
                  slli         a4, s3, 24
                  ori          zero, a1, -1067
                  xori         a5, a1, 84
                  add          a2, s6, s10
                  addi         s2, t1, -1501
                  sltiu        s3, a4, -1824
                  sra          a2, s5, ra
                  slt          s9, s4, s2
                  add          a0, gp, s8
                  nop
                  xori         ra, t3, 1104
                  ori          t2, t6, 1716
                  or           t6, a1, t3
                  lui          a1, 511730
                  slti         a1, s5, -1531
                  xor          sp, a7, s7
                  addi         s11, a6, 1327
                  auipc        s3, 613939
                  andi         a3, a0, -1428
                  srli         a7, tp, 28
                  addi         t4, t1, -1982
                  xori         s0, a4, -1812
                  xor          s0, ra, a3
                  sltiu        s0, s4, -603
                  xori         a1, a2, -548
                  lui          s6, 866644
                  srl          s9, s1, ra
                  sll          s2, s11, s5
                  add          t3, s5, t1
                  sra          a3, s6, t6
                  ori          s11, s8, -1862
                  slti         a3, s3, -873
                  and          s2, t0, a1
                  ori          s7, gp, 283
                  sra          a7, s11, t2
                  auipc        a5, 411123
                  or           t6, a6, s6
                  add          s3, a6, s9
                  lui          s8, 301647
                  auipc        s7, 574970
                  sltiu        s10, s3, 558
                  sltiu        a4, s7, -192
                  nop
                  andi         s7, s5, -1550
                  xori         t1, t0, 1068
                  or           a4, zero, a5
                  srai         s9, ra, 10
                  sltu         t6, s11, a2
                  nop
                  slt          a5, t5, t5
                  slti         s9, a5, 270
                  slti         sp, t6, -672
                  addi         t6, a5, 2045
                  or           a0, t6, sp
                  ori          s6, a6, -1291
                  sub          s1, a6, gp
                  sltu         tp, s7, tp
                  xori         a1, a1, 178
                  andi         tp, s11, -1554
                  addi         a7, s5, 1696
                  lui          a3, 571087
                  slli         s9, a7, 12
                  xor          s7, s2, t3
                  xor          s2, s1, t0
                  slt          s5, s5, zero
                  sra          s9, s2, s1
                  andi         s1, s1, 467
                  sub          a0, s3, t3
                  or           s2, s9, t3
                  sub          s3, s5, s3
                  xor          a5, t1, a1
                  add          s8, gp, a7
                  sltu         tp, t0, t4
                  auipc        t1, 729436
                  add          t4, gp, s2
                  sltu         a3, s6, s3
                  xori         s11, gp, -297
                  sra          s9, s7, gp
                  sra          a5, s8, t5
                  sub          a0, t5, s3
                  srl          a1, gp, t3
                  andi         a0, a3, -1844
                  sltiu        a2, tp, 1424
                  sll          gp, a0, t6
                  lui          t1, 449754
                  xori         a6, s5, 410
                  sltu         tp, t6, s6
                  add          a3, t3, sp
                  nop
                  and          a3, s2, s1
                  nop
                  nop
                  srli         s11, s5, 16
                  andi         s5, a5, -620
                  add          s7, t1, s3
                  andi         a4, s5, -1166
                  slli         s11, t6, 10
                  lui          t3, 885755
                  xor          a2, s10, t2
                  addi         s0, a3, 651
                  andi         a1, s10, 667
                  or           t2, s10, s4
                  sra          s2, s6, gp
                  auipc        s7, 837505
                  xor          t4, s2, a4
                  or           a3, a5, ra
                  add          a1, s9, gp
                  or           a1, t3, s5
                  slli         tp, a3, 3
                  nop
                  auipc        a3, 694974
                  auipc        s3, 766721
                  lui          a3, 147148
                  xor          s1, s8, t3
                  addi         t1, s3, -600
                  xor          t1, a4, s0
                  sll          s11, zero, ra
                  slt          s3, t3, a3
                  nop
                  slt          s5, gp, gp
                  srai         t1, gp, 19
                  xor          a0, s4, a5
                  lui          a4, 304842
                  sltu         s9, t5, s7
                  andi         a2, a0, 1757
                  sra          a0, a5, a3
                  xor          a2, s11, tp
                  lui          s3, 920813
                  ori          a3, t6, -1124
                  xor          gp, s8, tp
                  nop
                  srl          t2, s11, s1
                  xori         s11, t4, 1654
                  nop
                  slt          sp, a2, t6
                  and          t4, s1, s11
                  sltiu        a3, s6, 1709
                  sub          s9, a4, a5
                  xori         ra, a1, 1153
                  slt          a2, t5, s9
                  srl          s2, s4, zero
                  lui          a0, 5235
                  srl          gp, a7, a3
                  ori          s3, s10, -925
                  srl          a5, t6, a0
                  or           zero, sp, tp
                  srl          t1, t4, t2
                  sra          a2, a6, s5
                  sll          s10, t2, a6
                  slli         ra, a6, 18
                  nop
                  sltiu        a1, a2, 1588
                  auipc        s6, 309271
                  sra          zero, t3, a4
                  sltiu        a0, t4, -747
                  sll          a4, t5, t3
                  srli         s3, s11, 13
                  and          t3, a0, a7
                  slti         a3, s2, 307
                  sll          s6, sp, s3
                  auipc        t4, 295426
                  addi         zero, t5, 1678
                  sltu         a4, a2, s9
                  nop
                  or           a3, t3, s8
                  xori         s8, s2, 1878
                  slti         sp, s1, -790
                  li           s3, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           a3, 0x922f82a
                  li           a6, 0xffffffff
                  li           s2, 0xffffffff
                  li           s6, 0x80000000
                  li           t2, 0x80000000
                  li           gp, 0x80000000
                  li           a1, 0xffffffff
                  li           t6, 0xffffffff
                  li           s0, 0x80000000
                  lui          gp, 672886
                  addi         s6, t6, -1283
                  sub          s0, s6, a6
                  auipc        gp, 264989
                  add          t6, s2, s3
                  auipc        a3, 922804
                  lui          s2, 791086
                  addi         t6, s6, 1973
                  lui          a3, 950485
                  lui          a1, 558933
                  addi         t2, s0, 100
                  sub          s0, s2, s2
                  auipc        t6, 1011194
                  addi         s2, a6, -771
                  nop
                  addi         s0, t6, 1022
                  auipc        s0, 74641
                  lui          s0, 333029
                  auipc        a3, 775719
                  add          t2, gp, s6
                  auipc        s2, 33548
                  lui          t2, 510757
                  auipc        t6, 398662
                  nop
                  add          s2, a3, gp
                  lui          a6, 108865
                  addi         s6, s6, -1728
                  auipc        s0, 789774 #end riscv_int_numeric_corner_stream_18
                  srl          t1, zero, t1
                  andi         s9, a2, -1143
                  srli         a2, s5, 8
                  srai         s7, a0, 18
                  xor          ra, s6, a1
                  srli         s8, a3, 0
                  xor          s10, sp, s4
                  ori          a4, s3, -855
                  sltu         a6, t3, s9
                  auipc        s1, 531098
                  sub          gp, t1, t3
                  and          a2, a2, t0
                  slti         s9, a6, 1578
                  add          s10, s4, s9
                  andi         t2, zero, -448
                  xori         s9, a1, 648
                  srl          s7, s4, a1
                  or           gp, a0, s7
                  and          a5, s7, t1
                  slt          t2, sp, s11
                  sll          s1, a1, s3
                  xori         t3, sp, -548
                  xori         gp, t3, 389
                  auipc        a1, 430427
                  srai         a2, s3, 20
                  add          sp, s6, a6
                  slt          zero, s5, a3
                  andi         a5, s3, 1110
                  add          s6, s3, s2
                  slti         a3, s9, 203
                  sltiu        s5, t2, -459
                  sll          a7, t5, s8
                  auipc        s1, 468330
                  xori         s1, gp, 1761
                  srl          s10, a7, a3
                  add          a0, s0, s2
                  slti         s7, zero, 492
                  and          a6, t4, s6
                  sltu         s0, s2, a0
                  sltiu        t6, s4, 808
                  sltiu        s10, s8, -1876
                  slt          a2, s9, a1
                  add          t6, t0, a2
                  sltiu        s6, a1, 585
                  slli         s2, s1, 3
                  xori         s3, s10, 102
                  sub          sp, ra, t4
                  ori          a5, t2, -624
                  slt          ra, s10, a0
                  addi         a6, a5, 1094
                  and          s2, t4, a0
                  and          s5, s6, a6
                  slli         t6, a5, 21
                  xor          s6, t2, s9
                  andi         gp, t2, 978
                  and          a4, tp, s9
                  ori          a4, s6, 849
                  sll          s2, t6, a5
                  slli         s1, t0, 15
                  auipc        a0, 707939
                  srai         tp, a5, 7
                  sltiu        zero, s10, -797
                  slt          ra, s0, a0
                  sltu         gp, a3, a0
                  sll          s2, zero, s0
                  lui          s9, 292479
                  nop
                  add          tp, a6, a5
                  nop
                  nop
                  slti         a2, a1, -374
                  auipc        s11, 1034804
                  srai         t3, s11, 16
                  ori          s6, a7, -370
                  sra          a3, s0, s0
                  sub          s9, t6, a4
                  and          a2, s3, s0
                  andi         s8, a5, -1083
                  ori          a1, t1, -327
                  sltiu        a0, s5, 1474
                  xori         a3, s6, -71
                  lui          tp, 596239
                  sub          tp, s4, zero
                  sub          t1, a2, s10
                  ori          s5, gp, 1832
                  xori         s2, a3, -968
                  srai         a6, a6, 12
                  sub          tp, s3, gp
                  addi         t6, s6, 582
                  xori         s3, t6, -216
                  srli         s6, s10, 28
                  addi         a4, s4, -450
                  ori          a6, ra, 175
                  sll          s10, t1, a1
                  or           a5, s10, s3
                  slli         t2, t1, 12
                  nop
                  srai         zero, a5, 15
                  lui          t3, 429056
                  srli         a7, s9, 11
                  sub          s7, a2, s1
                  xor          s8, s6, a7
                  sll          s8, s11, a7
                  slti         t3, s7, -1636
                  sltiu        t2, s6, -1020
                  slli         s0, a7, 31
                  xor          t1, tp, a6
                  slti         a0, ra, -223
                  add          s11, t1, s8
                  slti         s10, s7, 1910
                  sub          a3, s9, s10
                  nop
                  add          zero, t4, tp
                  xori         s1, s0, 755
                  sltiu        s2, s8, -1173
                  and          s6, s5, t0
                  slti         ra, a5, -1603
                  sub          gp, s2, a2
                  slti         s9, gp, -1891
                  auipc        s7, 948186
                  sub          s2, t0, a7
                  srl          t4, a1, a0
                  sra          s11, a4, a0
                  or           ra, t2, a5
                  slti         zero, a2, 412
                  auipc        a2, 262247
                  xori         s2, s6, -1938
                  or           s0, s5, a4
                  addi         a5, t3, 892
                  sltu         a4, t3, t2
                  and          a4, t6, t1
                  srl          s10, a2, t3
                  nop
                  ori          s2, sp, 1336
                  srli         s9, t6, 1
                  sub          tp, s2, s5
                  sltu         tp, s11, t5
                  slli         gp, a6, 28
                  nop
                  srli         a3, t4, 19
                  andi         ra, t2, -1665
                  srl          s9, t4, t5
                  andi         s11, s10, -1831
                  sltiu        sp, s3, -173
                  sll          s6, s10, a6
                  xori         s11, ra, 657
                  sltu         s11, a1, sp
                  or           t6, ra, a1
                  xori         s3, zero, -1561
                  auipc        t6, 419558
                  slti         a2, s0, -1522
                  sltu         s5, s2, a1
                  slli         sp, s11, 29
                  slt          s11, s7, a7
                  sltiu        gp, t1, 1250
                  add          s2, gp, s1
                  and          a2, t2, a5
                  xor          t1, s11, a7
                  sub          s9, s7, ra
                  xori         s11, s9, 2024
                  or           s1, t2, t6
                  srl          s3, a7, s9
                  xor          a4, s2, t5
                  srli         a1, s9, 8
                  sll          s5, zero, gp
                  sra          tp, a2, t0
                  slt          gp, a0, s6
                  or           gp, gp, t4
                  slli         t3, ra, 11
                  ori          s0, s1, 244
                  add          sp, a7, a5
                  and          s1, t6, sp
                  srai         tp, a1, 26
                  lui          s9, 423840
                  or           s10, sp, s5
                  or           gp, s8, t0
                  srli         sp, s10, 24
                  nop
                  add          a6, s0, t6
                  slt          a3, a6, t2
                  srl          t3, s2, tp
                  xori         a1, t1, -1365
                  sra          zero, t3, t2
                  sltu         s2, a7, a7
                  xor          a0, t4, sp
                  sll          zero, s11, s10
                  and          a1, ra, s7
                  srli         t3, a5, 11
                  slli         s5, t4, 23
                  xori         a6, t1, -21
                  xor          gp, ra, t3
                  or           a7, s11, s8
                  nop
                  and          s9, a0, tp
                  sra          s3, t6, s3
                  ori          ra, a4, 43
                  nop
                  add          s8, s1, t6
                  and          a2, s8, s7
                  srl          a7, s3, s10
                  sra          s9, a3, a1
                  sub          s2, a0, s1
                  sub          s9, s2, s10
                  srai         s6, a2, 23
                  andi         a0, s3, -1711
                  slt          s7, s9, t1
                  sll          s6, s1, t2
                  sltu         s10, a7, a3
                  lui          t2, 499335
                  addi         s1, s6, -743
                  lui          s3, 479454
                  auipc        s8, 584402
                  nop
                  sltiu        s11, t6, 1176
                  slli         s9, s6, 11
                  srai         ra, a1, 7
                  add          s1, t1, a1
                  srai         tp, s3, 3
                  ori          a1, t5, 822
                  srai         a5, s1, 21
                  srli         t3, s11, 10
                  auipc        t1, 734914
                  sll          a5, t2, s7
                  srli         t6, a5, 0
                  srai         gp, s0, 11
                  sra          a3, a0, s0
                  auipc        s5, 677535
                  xor          s0, t3, sp
                  sltu         a4, zero, s2
                  ori          tp, a2, -1227
                  lui          s8, 573541
                  add          tp, s8, s7
                  addi         a3, a4, 1818
                  srl          t2, a0, sp
                  slli         a0, s3, 14
                  or           s11, s10, s4
                  srl          t2, s6, a4
                  nop
                  xor          tp, t0, t4
                  andi         t6, t2, -107
                  slti         a7, t0, -571
                  slti         a0, sp, 576
                  slli         s5, s8, 13
                  srl          s6, t0, s10
                  sltiu        s10, sp, -708
                  xori         tp, t6, 1274
                  and          t6, zero, gp
                  lui          s5, 637321
                  srli         s1, s11, 10
                  sll          s11, t4, a6
                  lui          sp, 219226
                  sra          s0, ra, s6
                  slt          s3, gp, t5
                  srli         sp, tp, 29
                  sll          a3, s9, a2
                  andi         s6, t6, 1935
                  sltiu        s10, s1, -52
                  sub          a3, a6, a5
                  sltu         s2, sp, t1
                  sub          t2, s3, s11
                  and          zero, s7, s0
                  slli         s3, a7, 26
                  srl          ra, t3, t4
                  ori          t6, a7, 758
                  sltu         s6, tp, s0
                  slti         a3, t6, 1175
                  andi         s6, tp, 17
                  srai         tp, t0, 21
                  addi         a2, zero, -219
                  srli         a5, t2, 9
                  lui          a6, 189440
                  srl          s3, s2, s1
                  andi         ra, zero, 1005
                  xor          s2, s4, t4
                  srai         ra, s2, 7
                  slti         t1, sp, -769
                  srl          tp, a4, ra
                  sra          t6, a1, t5
                  sltiu        t1, a4, 1202
                  lui          t6, 456538
                  add          s8, s7, t1
                  sltu         a5, s10, t6
                  addi         a6, s8, 1537
                  auipc        a1, 533952
                  sll          s7, s7, ra
                  xor          t3, a1, s1
                  ori          s8, s9, 1611
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           a7, 0x0
                  li           a0, 0xffffffff
                  li           gp, 0x0
                  li           s0, 0x80000000
                  li           t6, 0xad2e7773
                  li           t2, 0xffffffff
                  li           s2, 0x80000000
                  li           s5, 0x80000000
                  li           s3, 0x0
                  auipc        gp, 975702
                  auipc        t6, 676801
                  addi         t6, s0, 1856
                  lui          s5, 698028
                  nop
                  lui          s5, 585522
                  lui          a7, 770925
                  addi         s0, t6, 376
                  add          s0, t2, s10
                  sub          s0, s5, s5
                  nop
                  nop
                  addi         s0, s2, -555
                  lui          a7, 256508
                  auipc        s5, 398278
                  lui          s2, 863845
                  sub          s2, a0, s3
                  auipc        s10, 172215
                  add          s10, a7, s3
                  lui          a7, 591482
                  lui          s3, 661683
                  nop
                  auipc        s3, 401397 #end riscv_int_numeric_corner_stream_3
                  or           t4, a7, a6
                  addi         sp, s7, 235
                  or           t6, s5, a4
                  sltiu        t4, t0, -432
                  srl          a6, s11, tp
                  xor          s2, t6, a6
                  sltiu        s2, ra, 868
                  xor          t2, s7, s4
                  sll          s3, s4, t1
                  and          s3, s11, t3
                  auipc        a2, 1001060
                  sub          a7, s0, tp
                  sltu         ra, a2, a2
                  sub          sp, a5, a1
                  or           s9, a4, a4
                  addi         s11, a0, -1718
                  addi         a0, t1, -806
                  srl          a6, t0, s1
                  auipc        s3, 662526
                  addi         t3, s8, -2022
                  lui          tp, 162214
                  sra          t4, s3, ra
                  srai         s1, s1, 6
                  or           t6, t6, a7
                  sra          tp, s8, s6
                  srli         s0, sp, 28
                  andi         s5, s6, -1507
                  lui          a0, 793387
                  srl          s2, t0, sp
                  slti         a0, s3, -1837
                  srl          t4, s7, a2
                  slti         s5, a2, 1993
                  slli         a0, t4, 21
                  xor          s3, a7, s10
                  sltiu        s6, t1, -1176
                  sltiu        s2, t3, 1828
                  auipc        s7, 485795
                  xori         tp, s8, 32
                  auipc        ra, 431753
                  xor          ra, zero, s8
                  slt          ra, ra, s8
                  auipc        s5, 276134
                  ori          t2, tp, 1136
                  srli         a6, s2, 11
                  auipc        zero, 519433
                  sll          t3, s11, s6
                  srai         a3, s4, 14
                  sll          a0, s5, s10
                  sltiu        s10, t4, -1352
                  slti         a1, a1, 1531
                  slli         ra, t5, 14
                  srl          a1, tp, t1
                  sltiu        a7, a6, 1233
                  xor          t4, s5, a0
                  and          gp, t0, zero
                  srai         s9, s4, 18
                  nop
                  sltu         a0, s0, s4
                  srl          s2, t2, gp
                  or           ra, t3, s6
                  srli         t4, a0, 10
                  add          s6, zero, t3
                  andi         a6, a2, -1706
                  xori         a7, s6, -961
                  xor          sp, a5, t6
                  slt          zero, sp, tp
                  slt          zero, s11, a1
                  ori          a4, t0, -1984
                  add          s3, a3, t5
                  add          s10, s7, s2
                  slli         ra, a5, 30
                  lui          tp, 98124
                  sltiu        tp, a4, 460
                  slti         s10, s10, 92
                  nop
                  or           ra, s0, s2
                  ori          t4, t5, 1644
                  srai         s11, a2, 1
                  sltu         sp, a2, sp
                  auipc        s11, 866866
                  addi         s8, a1, -1130
                  srl          s6, s10, s1
                  or           s1, a2, s1
                  andi         s9, ra, 720
                  srai         s1, s1, 19
                  slt          t4, t2, s8
                  sra          zero, s10, t5
                  and          t6, a5, a7
                  and          a2, s8, s2
                  ori          zero, a1, -168
                  sltiu        a3, ra, -1950
                  srl          a0, tp, zero
                  addi         a0, s6, 723
                  sll          s3, t5, t5
                  srai         sp, t4, 16
                  slt          s10, t1, t4
                  lui          tp, 163768
                  nop
                  sltu         s1, s8, a5
                  auipc        a1, 927750
                  andi         a0, sp, 1203
                  nop
                  slti         a7, gp, 1495
                  add          s2, zero, a1
                  slti         s0, s11, 286
                  add          a3, s5, s4
                  sll          s5, a0, a5
                  or           s7, gp, sp
                  slli         gp, s4, 7
                  xori         sp, gp, -1613
                  slti         t3, t6, -783
                  slli         s3, s7, 20
                  slt          a4, t5, s8
                  andi         s2, t6, -682
                  slt          t6, a6, s5
                  sub          a0, s7, a6
                  ori          s0, a7, 565
                  and          s11, s11, t2
                  xor          a0, s1, s0
                  sra          a4, a0, ra
                  srli         t4, s7, 27
                  xori         s3, a0, 835
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           s6, 0xffffffff
                  li           s1, 0xffffffff
                  li           a1, 0xffffffff
                  li           gp, 0x80000000
                  li           s9, 0x80000000
                  li           s11, 0x80000000
                  li           a0, 0x0
                  li           a3, 0xffffffff
                  li           s2, 0x0
                  auipc        s9, 983431
                  addi         s1, gp, 1456
                  addi         s1, s9, -528
                  nop
                  sub          s6, s2, sp
                  addi         a3, gp, -75
                  add          a0, gp, a0
                  lui          s9, 282758
                  nop
                  nop
                  addi         sp, s11, 266
                  lui          a3, 272906
                  nop
                  nop
                  auipc        s6, 767752
                  add          sp, gp, s9
                  sub          gp, s2, sp
                  auipc        gp, 472040
                  auipc        s9, 878784 #end riscv_int_numeric_corner_stream_19
                  add          a1, s4, zero
                  sra          a4, a2, s2
                  nop
                  addi         s2, sp, -202
                  or           a1, gp, t0
                  or           a5, tp, t6
                  nop
                  addi         gp, s6, -1368
                  and          s9, tp, s3
                  slti         s11, a4, -476
                  nop
                  sra          zero, sp, t6
                  sub          a7, s2, zero
                  sll          s11, s10, t5
                  sub          t1, t5, ra
                  auipc        gp, 58120
                  sltu         t4, s0, zero
                  or           t3, s2, s8
                  sub          a2, tp, s11
                  andi         t1, s0, 1096
                  sub          gp, a5, s1
                  andi         s6, t4, -1898
                  xor          sp, gp, a5
                  slt          s6, t5, t6
                  slli         t1, t3, 14
                  xori         t3, a4, -332
                  lui          s3, 656660
                  slli         t6, a2, 13
                  add          s0, s0, t6
                  xor          sp, zero, sp
                  sltu         s3, t4, tp
                  srai         s1, s4, 8
                  slti         a2, s1, 754
                  slti         s7, s1, 1273
                  slt          gp, s5, t3
                  xori         s1, s1, 463
                  sll          a6, a5, t0
                  auipc        s0, 619277
                  and          t4, s2, sp
                  sub          a4, t3, s2
                  add          s3, a2, t5
                  sll          s3, a6, s2
                  slt          s2, gp, a3
                  nop
                  srli         s11, a0, 21
                  sll          gp, s10, s9
                  sltiu        a5, a6, -1699
                  sll          s10, s10, a5
                  sll          a1, t5, ra
                  nop
                  sub          t1, a2, t2
                  li           ra, 0xfe72ca40 #start riscv_int_numeric_corner_stream_4
                  li           s7, 0xffffffff
                  li           s6, 0xffffffff
                  li           t6, 0x80000000
                  li           a7, 0x55d4182e
                  li           tp, 0x80000000
                  li           s2, 0xffffffff
                  li           a0, 0x27b31c93
                  li           a2, 0x1624c27b
                  li           t1, 0xdc2a2e3c
                  lui          s7, 756175
                  sub          ra, a0, t1
                  nop
                  nop
                  nop
                  nop
                  nop
                  addi         a0, a7, 864
                  sub          a2, s6, t1
                  nop
                  nop
                  auipc        s7, 688098
                  lui          ra, 89087
                  addi         s7, ra, 937
                  addi         a0, s2, -1730
                  addi         ra, a0, -1968
                  lui          a0, 45880
                  addi         t6, tp, 1266
                  addi         s2, s2, -1929
                  auipc        tp, 497303
                  auipc        tp, 817992
                  auipc        tp, 820385
                  auipc        s2, 751672
                  auipc        a0, 7016
                  addi         s2, t6, -1751
                  auipc        a2, 870882
                  nop
                  add          t1, tp, s7 #end riscv_int_numeric_corner_stream_4
                  or           zero, t0, s6
                  sltu         t1, s3, a6
                  lui          a0, 10452
                  or           s7, t3, s1
                  sltiu        s6, t2, -919
                  and          s5, gp, t6
                  or           s11, s0, s1
                  and          s7, s3, a3
                  slt          t6, a7, a6
                  srai         s8, t0, 18
                  xor          ra, a6, s7
                  sltiu        s7, s6, 1345
                  or           s7, zero, s0
                  auipc        s2, 289082
                  add          a1, t1, s10
                  slli         s11, a6, 12
                  xor          s1, s4, a2
                  xori         a4, ra, -304
                  slt          s7, a7, a3
                  nop
                  sra          s5, t3, s6
                  srl          s6, tp, sp
                  srli         t2, t4, 24
                  sll          a6, s5, zero
                  slti         s7, s5, 259
                  ori          s3, t5, 479
                  nop
                  addi         a5, t6, -1573
                  or           a3, ra, gp
                  andi         a4, t0, 469
                  srli         ra, s5, 9
                  nop
                  slli         gp, a2, 30
                  sra          s9, ra, a7
                  and          t3, s11, a1
                  slli         a5, s5, 6
                  srai         gp, t5, 22
                  slli         t2, zero, 14
                  lui          t2, 807918
                  addi         s6, gp, -137
                  xor          a2, a1, s5
                  sltu         s0, gp, zero
                  nop
                  srai         s0, t4, 21
                  slti         s0, s2, 605
                  lui          a2, 852804
                  sra          s2, t6, s6
                  sltu         s2, zero, s9
                  add          s2, sp, t6
                  add          s3, s11, ra
                  add          a2, t1, ra
                  addi         s7, t3, -1996
                  addi         a6, t3, 918
                  nop
                  addi         a3, t6, -183
                  addi         a1, s9, 1584
                  addi         t2, gp, 176
                  slti         a7, s11, -1738
                  addi         s9, s0, -1502
                  sltu         a6, a6, t6
                  xor          t6, s9, t1
                  slti         t4, s4, 1095
                  and          ra, s9, s5
                  slt          tp, s6, s4
                  sra          t6, s4, s7
                  or           s9, s11, t5
                  srl          s3, s9, zero
                  sra          a6, s1, t6
                  or           s6, a7, s3
                  srl          a0, a4, s4
                  srl          s8, a4, a5
                  srl          s3, a3, zero
                  slli         s1, a3, 17
                  andi         a3, a4, -1631
                  srai         t3, s1, 28
                  slti         t2, a6, 165
                  slti         a2, a5, -68
                  auipc        s1, 76901
                  srli         s9, s10, 14
                  sra          sp, zero, a3
                  nop
                  xor          t1, s0, a4
                  slti         gp, t2, 869
                  slli         s2, s7, 7
                  and          zero, s1, s7
                  xori         a3, s5, -555
                  ori          a4, t5, 2028
                  andi         tp, a0, 658
                  sltu         gp, s1, ra
                  nop
                  slt          a7, gp, s4
                  nop
                  sub          s0, a7, a3
                  slli         sp, a0, 26
                  and          s8, t3, a0
                  slti         s5, t6, 96
                  sll          gp, s4, a4
                  or           s10, s0, t1
                  sub          a0, a4, a0
                  andi         a4, s9, -1563
                  sra          ra, s0, s11
                  and          t3, sp, s3
                  sub          a4, t5, a4
                  xor          a0, a6, s10
                  xor          t2, a4, t5
                  srai         tp, t4, 21
                  slli         a7, t6, 29
                  and          a0, ra, a3
                  addi         s5, a1, 460
                  xori         gp, tp, -516
                  sra          s11, t3, s5
                  srli         t4, tp, 25
                  andi         a1, a2, 573
                  add          s7, zero, s3
                  srl          s2, zero, s11
                  slt          ra, s7, a0
                  and          s3, t6, a0
                  srli         s9, a4, 3
                  xor          a4, s8, t6
                  sra          s0, ra, a6
                  sra          t6, tp, a3
                  add          s0, s6, a2
                  nop
                  srl          gp, a5, s3
                  sra          gp, s9, a5
                  srl          t1, a3, a7
                  nop
                  sra          gp, t6, s2
                  and          sp, s9, zero
                  slti         s1, a1, -357
                  add          gp, a0, s3
                  sltu         s1, t6, s2
                  sltiu        s1, s11, 934
                  srai         s0, s9, 8
                  add          s3, a2, a6
                  slti         a2, t4, 2017
                  sltu         gp, s8, t3
                  addi         s11, s11, -756
                  sub          a4, zero, s4
                  or           s1, s5, zero
                  sub          ra, s1, tp
                  nop
                  slli         a2, gp, 10
                  xor          t4, t6, ra
                  slli         t4, s0, 1
                  addi         a2, t1, -1450
                  srli         a4, t5, 16
                  slti         s1, s1, 1921
                  xori         s6, zero, 818
                  slt          zero, s1, t1
                  xor          a3, t2, t5
                  addi         a5, a3, 1094
                  auipc        s7, 602659
                  srai         a2, sp, 12
                  sll          a4, a1, a7
                  sltu         s7, tp, a6
                  and          tp, s0, s11
                  sra          s10, t0, a0
                  sltu         a0, s9, s2
                  sll          s8, a7, a4
                  srai         t3, sp, 8
                  sltiu        s10, t6, -1564
                  or           a2, s11, a5
                  or           ra, s3, a7
                  auipc        a1, 203889
                  add          t2, t5, t0
                  srai         a3, s3, 15
                  xor          t4, t1, sp
                  sltu         t4, a2, a3
                  xori         a7, a2, -1630
                  srl          a7, t4, a3
                  xori         s2, a5, -1809
                  addi         s3, zero, 653
                  srai         s1, t1, 0
                  sll          a7, t5, a0
                  add          a7, tp, ra
                  slli         a0, s3, 25
                  slti         a1, s11, -1943
                  sra          a1, s11, t2
                  auipc        sp, 259914
                  lui          s11, 870422
                  or           a4, a1, s2
                  slti         t3, a5, 1351
                  srli         s10, a7, 28
                  sltu         t1, t5, a1
                  sub          t3, a1, a4
                  nop
                  sra          s8, s8, s1
                  srai         gp, s1, 19
                  auipc        s1, 338932
                  slli         sp, a2, 22
                  slt          a0, t3, t3
                  and          a0, s1, t2
                  add          s8, t2, s1
                  nop
                  auipc        s1, 10673
                  add          s0, s2, s7
                  sra          s8, ra, s3
                  auipc        s8, 745290
                  srai         t1, s0, 31
                  slt          zero, tp, s6
                  slti         a1, s3, -1128
                  sltu         a1, s2, a3
                  andi         t4, ra, -373
                  sll          t3, gp, s4
                  auipc        ra, 847659
                  and          a0, a6, t1
                  nop
                  add          sp, a3, tp
                  and          ra, s4, s6
                  auipc        sp, 328537
                  slli         a7, gp, 11
                  sll          gp, a1, s6
                  slti         t3, t6, 230
                  sra          a4, s3, a2
                  andi         a6, a1, -642
                  sra          s7, s3, s8
                  sub          s8, s11, s8
                  srli         a5, s9, 18
                  or           a2, s10, t2
                  sll          t4, t1, tp
                  xor          a7, t3, s7
                  auipc        t1, 490594
                  andi         s8, s10, 413
                  srai         s5, t3, 22
                  sll          sp, tp, s0
                  lui          s1, 291581
                  sra          a1, sp, s2
                  or           s6, s3, sp
                  sub          s6, s9, s6
                  slt          t6, s6, s10
                  sll          t6, t5, t2
                  xori         ra, a0, -1173
                  andi         a1, s1, -702
                  sub          t6, a4, s3
                  sra          ra, t1, a2
                  auipc        s6, 944741
                  srl          t3, a6, s8
                  slti         s1, s9, -1253
                  ori          t6, s9, 1233
                  srai         ra, t5, 10
                  lui          tp, 355003
                  addi         t6, a1, -1028
                  addi         sp, s2, -84
                  xori         gp, t5, -284
                  add          t2, s6, s7
                  andi         zero, t1, 278
                  sub          s6, s3, a2
                  auipc        a6, 8317
                  srli         s2, s0, 21
                  li           a7, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           s2, 0x80000000
                  li           s1, 0x77758bd3
                  li           a4, 0x80000000
                  li           s11, 0x388e2c03
                  li           s0, 0x36b8f60d
                  li           t2, 0x841f831c
                  li           a6, 0x0
                  li           t1, 0x80000000
                  li           t3, 0xffffffff
                  nop
                  add          t3, s1, a6
                  add          s0, a7, t2
                  nop
                  nop
                  add          a7, s2, t1
                  auipc        s0, 344420
                  lui          s1, 703080
                  addi         s0, a4, -1875
                  add          s2, s2, t3
                  sub          t2, t2, t2
                  sub          s0, s11, t2
                  add          t3, a6, s2
                  nop
                  lui          a7, 639978
                  add          t3, s1, t2
                  add          a4, s11, a4
                  addi         a6, s1, -871
                  lui          t3, 64220
                  auipc        s2, 950033 #end riscv_int_numeric_corner_stream_2
                  slt          s6, t2, a6
                  slli         s7, a2, 10
                  add          s10, t6, a0
                  sub          s10, a2, a1
                  sra          t3, s1, sp
                  andi         t2, t5, 1447
                  slt          s3, a3, s5
                  or           a2, a0, s8
                  lui          tp, 116471
                  ori          s2, a1, -1023
                  lui          s7, 704879
                  lui          a7, 85607
                  srli         s7, a0, 19
                  sltiu        t4, a7, -1142
                  auipc        a3, 306218
                  xor          a6, s0, t4
                  or           a0, s5, s0
                  xor          t2, s0, s5
                  slti         a6, s5, -1722
                  sra          t1, s10, s4
                  srli         ra, a7, 4
                  srli         s10, t2, 26
                  andi         s2, t3, -486
                  addi         sp, s7, -1534
                  nop
                  nop
                  sub          s5, s8, gp
                  auipc        gp, 681364
                  nop
                  lui          t2, 892533
                  slt          t6, ra, s6
                  sra          sp, s5, a2
                  auipc        s10, 443369
                  and          s2, t3, s8
                  xor          t4, s8, a6
                  nop
                  sll          a2, sp, t3
                  sra          s2, s5, s3
                  sltu         gp, t6, a2
                  srl          t1, sp, tp
                  sra          s2, a5, s2
                  andi         s0, t1, -1693
                  nop
                  slli         t6, a6, 6
                  srai         ra, t5, 16
                  sltu         a6, a2, sp
                  sll          s7, s10, tp
                  nop
                  xor          s3, s7, t2
                  srai         s9, s3, 18
                  and          a1, t3, s0
                  addi         ra, s2, 206
                  or           s1, a2, a5
                  sub          t1, t3, ra
                  or           s9, a7, t4
                  slt          a6, sp, a5
                  sll          a6, s10, ra
                  andi         tp, t1, -723
                  slti         s7, t6, 1851
                  auipc        s3, 503164
                  addi         ra, s3, 323
                  slt          zero, t2, zero
                  sub          tp, ra, s8
                  lui          s9, 122693
                  xori         t3, t2, 1796
                  srl          a7, t0, s2
                  sltiu        a0, s6, 132
                  sll          a3, s5, a2
                  srai         s5, a3, 17
                  ori          s2, a3, 1218
                  andi         a0, t5, -927
                  slt          s5, s6, s6
                  srl          a7, a7, sp
                  add          a1, t1, s9
                  lui          gp, 28584
                  addi         s2, t1, -834
                  xori         t2, ra, 1798
                  srai         a2, sp, 15
                  sra          s7, a2, t5
                  addi         sp, s4, -1122
                  xor          s2, s9, t3
                  srl          a7, s9, t6
                  sltu         a6, s11, s1
                  li           s1, 0x80000000 #start riscv_int_numeric_corner_stream_13
                  li           t1, 0x455508bb
                  li           a5, 0x339ce41f
                  li           s2, 0x0
                  li           s3, 0x4a5cf7b9
                  li           a2, 0x80000000
                  li           s7, 0x80000000
                  li           a0, 0x80000000
                  li           s6, 0x0
                  li           a7, 0xffffffff
                  sub          a7, a2, s3
                  add          a5, a2, s2
                  lui          s3, 760543
                  nop
                  nop
                  add          t1, s2, a0
                  nop
                  sub          s6, s3, a0
                  add          a5, a2, a7
                  sub          a0, t1, s6
                  lui          s2, 193941
                  nop
                  lui          a5, 148432
                  sub          s3, s7, t1
                  auipc        a0, 168384
                  addi         a7, s7, 131
                  lui          a2, 529862
                  addi         s7, a5, -1485
                  addi         s3, a5, 73
                  auipc        s3, 578267
                  lui          a0, 524690
                  sub          s1, s3, a5
                  add          s2, a7, s1
                  nop #end riscv_int_numeric_corner_stream_13
                  and          t3, a2, a4
                  srli         s1, a7, 17
                  or           sp, t3, s6
                  add          s1, a4, a7
                  srli         s8, s6, 3
                  or           gp, t6, a3
                  srai         t1, s6, 28
                  sltiu        t4, t1, -1256
                  xor          sp, a4, a0
                  sll          s6, s0, t4
                  sll          a2, t1, s6
                  slli         s3, s10, 15
                  andi         s3, s3, -1774
                  sll          s1, t5, s7
                  or           t2, s3, s0
                  sltu         s7, s1, ra
                  addi         a0, t5, 1858
                  ori          tp, s8, -894
                  slt          s5, a3, s0
                  sra          s7, s7, s4
                  auipc        s3, 345412
                  srli         zero, s7, 15
                  li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           s5, 0x0
                  li           sp, 0xffffffff
                  li           s0, 0x3ef30d44
                  li           a0, 0x6937bdc4
                  li           s1, 0x80000000
                  li           a7, 0x0
                  li           t6, 0x80000000
                  li           gp, 0x6fd87a0c
                  li           s3, 0x0
                  add          gp, a0, s5
                  sub          ra, s5, s3
                  sub          a0, s0, s3
                  sub          t6, a0, s0
                  nop
                  add          s1, s1, s3
                  add          s5, ra, s0
                  add          sp, t6, a7
                  sub          gp, s5, s5
                  lui          a7, 998415
                  add          sp, t6, ra
                  nop
                  add          ra, gp, sp
                  auipc        sp, 239434
                  nop
                  lui          ra, 622304
                  auipc        a7, 594400
                  sub          sp, s1, ra
                  nop
                  nop
                  lui          s0, 1036546
                  sub          gp, s0, sp
                  sub          s3, t6, t6
                  add          a0, s0, a7
                  lui          gp, 360184
                  lui          a7, 196830
                  lui          s0, 1031790
                  lui          s1, 113806 #end riscv_int_numeric_corner_stream_10
                  srli         sp, t2, 25
                  slt          a0, s3, ra
                  sll          gp, sp, a7
                  sub          sp, s9, s7
                  andi         t2, s8, 2005
                  sra          a4, gp, a5
                  lui          t6, 575348
                  slti         s2, sp, -1259
                  srl          a1, t4, t2
                  sub          t3, a3, s5
                  sll          t4, gp, t2
                  sltiu        t3, sp, 997
                  sub          t3, t5, t3
                  nop
                  add          s11, s5, t4
                  or           zero, s0, s2
                  sll          a5, s1, s6
                  nop
                  sra          s2, sp, t0
                  auipc        s8, 966392
                  srai         t3, t4, 22
                  addi         a1, t2, 1152
                  auipc        s2, 753191
                  srli         sp, a2, 19
                  srli         t6, s0, 11
                  sub          ra, t2, a0
                  ori          a6, t0, 1198
                  slli         s8, sp, 13
                  srl          s7, s0, s1
                  srl          a2, s0, a3
                  addi         s8, t1, -938
                  lui          t1, 893491
                  auipc        s5, 317545
                  xor          a6, s4, a2
                  sub          ra, t0, a7
                  ori          tp, zero, -716
                  slti         t4, ra, -1541
                  sub          s1, a4, s2
                  sltu         a7, t1, s1
                  slli         a0, t6, 17
                  sltu         a5, t0, s6
                  sub          sp, s0, gp
                  and          s7, s0, gp
                  slt          a1, t1, tp
                  auipc        s1, 656997
                  lui          t1, 413201
                  lui          a0, 453469
                  xori         a6, s1, -587
                  sub          s1, t4, sp
                  srai         gp, a2, 17
                  slti         s1, t6, 1191
                  xori         s2, s7, -1849
                  ori          s6, a5, -1653
                  or           a4, s10, s3
                  add          s7, s0, a4
                  nop
                  auipc        t3, 461801
                  or           a2, s4, tp
                  and          s6, t0, a6
                  sll          s11, t2, s5
                  sltu         a3, t2, zero
                  or           a0, s4, t6
                  srai         a3, s4, 10
                  ori          s6, a6, -349
                  sltu         a3, s7, s5
                  sll          ra, s2, a7
                  addi         a3, s6, -1868
                  slt          s10, s2, s8
                  xori         t1, s8, 576
                  add          t6, t0, gp
                  sltiu        tp, s1, 1384
                  nop
                  srai         s7, s5, 23
                  auipc        s11, 564934
                  andi         s9, s8, 16
                  sub          a2, a7, s3
                  nop
                  sub          s6, t2, sp
                  slti         tp, a3, -983
                  sll          s3, s8, t1
                  or           s0, a4, a0
                  and          s8, a4, zero
                  slti         s3, a0, -1314
                  lui          a6, 169632
                  slti         sp, s9, -515
                  auipc        s5, 346692
                  slt          a6, s9, sp
                  lui          a3, 678679
                  sltu         t6, s4, t5
                  ori          a4, a3, -1057
                  sltiu        t1, a4, 1420
                  srai         a2, s5, 8
                  srai         t4, s8, 27
                  andi         a3, t2, 1609
                  slt          s1, s1, s9
                  sub          a0, s6, a4
                  srai         t1, t5, 17
                  or           tp, s3, s6
                  slti         a5, s0, -251
                  sra          a1, a7, ra
                  nop
                  srai         s7, a0, 24
                  sltu         a4, ra, t6
                  and          zero, a2, s0
                  sltu         s2, zero, s1
                  srl          s0, s7, gp
                  or           s1, t0, s7
                  srli         zero, a5, 7
                  ori          sp, a1, 404
                  slt          s11, t1, t4
                  xor          t1, a7, t4
                  andi         a5, s1, -447
                  ori          a0, s1, -110
                  sll          a2, a1, s3
                  srli         t3, t5, 13
                  slti         a6, s10, 1344
                  sltiu        s10, s5, 1338
                  srli         t1, s6, 0
                  or           t3, s6, t0
                  ori          t2, a7, -1435
                  add          s11, s0, t2
                  and          s9, s10, ra
                  srl          sp, gp, t0
                  srai         a3, t4, 6
                  srl          s3, s1, tp
                  auipc        t2, 356611
                  andi         a7, s5, 1575
                  xor          s5, t5, t2
                  slli         sp, a6, 21
                  lui          a3, 676847
                  andi         a5, t4, -886
                  sra          a1, a4, a2
                  add          a7, a7, ra
                  add          a2, sp, s5
                  sltu         t6, a0, s9
                  slti         s3, s10, 1367
                  sltiu        a7, s11, -1862
                  sub          t2, a1, ra
                  nop
                  ori          s0, zero, 1078
                  addi         gp, ra, -1443
                  sltiu        a3, t2, -625
                  xor          t6, s9, t5
                  xori         s9, s10, 530
                  xor          a5, s1, s4
                  slt          a5, s4, s9
                  and          s11, s6, s0
                  slt          a3, gp, s2
                  lui          sp, 943655
                  sub          t6, s7, a4
                  ori          s10, s8, 1629
                  addi         ra, s7, -415
                  sltu         zero, s2, t2
                  sll          a1, t5, s2
                  auipc        t4, 545758
                  lui          t4, 93651
                  auipc        ra, 831690
                  nop
                  sub          s5, a6, a7
                  sub          t1, a1, tp
                  nop
                  and          a2, s7, s6
                  sub          t6, tp, t0
                  sltiu        gp, gp, -1080
                  nop
                  xori         a0, a4, -1916
                  andi         a5, s9, 1100
                  slt          s5, gp, gp
                  srli         a7, a3, 10
                  lui          t1, 945290
                  xor          a3, gp, s9
                  and          a4, s5, a0
                  sltu         s6, t5, s5
                  lui          a0, 264010
                  nop
                  xori         a3, s10, 1537
                  sub          s7, t2, a2
                  sub          s10, sp, s3
                  addi         a0, a5, 714
                  andi         a0, t4, -1087
                  xori         s0, s3, -664
                  or           t2, tp, t6
                  slli         ra, a3, 31
                  sra          t1, s0, ra
                  srl          a6, s3, s6
                  and          a3, s6, t1
                  ori          s8, a1, -300
                  andi         a3, s6, -815
                  auipc        a0, 486286
                  sra          s11, s7, s3
                  and          s11, s11, s11
                  ori          s10, a0, 753
                  slti         s5, zero, -867
                  sra          tp, s7, t4
                  or           t4, tp, a6
                  and          s11, t2, sp
                  srl          a2, s8, a3
                  sra          gp, a1, sp
                  add          s1, t2, t6
                  add          a7, ra, sp
                  add          s3, s9, a7
                  sltiu        a3, s11, -1551
                  andi         s2, t3, -1588
                  xori         s2, s10, 1412
                  lui          t1, 917980
                  slti         a7, zero, -431
                  sltu         s7, a2, a6
                  sll          t3, t1, s8
                  ori          a7, s9, 860
                  sra          t3, t2, s6
                  nop
                  sltu         a3, s7, gp
                  nop
                  sltu         s9, s1, s2
                  or           a6, a7, s1
                  addi         ra, a5, -1048
                  sltiu        s2, t3, -1402
                  and          a7, a5, ra
                  or           s2, t3, gp
                  sll          s10, t1, t0
                  ori          tp, a4, -1389
                  sltu         tp, ra, t2
                  addi         a4, a2, -1438
                  slti         s2, ra, -532
                  auipc        a0, 860187
                  ori          s0, a2, 1306
                  slti         a7, a5, -694
                  slt          gp, tp, gp
                  sra          s10, a7, t2
                  srai         s0, a2, 26
                  srli         tp, t5, 29
                  li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           s0, 0xffffffff
                  li           tp, 0xffffffff
                  li           s2, 0xc4964bff
                  li           s11, 0x0
                  li           gp, 0xef7235d4
                  li           t4, 0x80000000
                  li           t2, 0x80000000
                  li           s1, 0x4b8d194c
                  li           t3, 0xffffffff
                  auipc        s1, 296994
                  sub          s0, tp, s11
                  add          s11, s0, s11
                  sub          t3, s1, t4
                  nop
                  lui          s2, 543621
                  sub          t3, t3, s1
                  add          s1, s2, tp
                  sub          ra, t3, s1
                  addi         t2, ra, -1993
                  sub          s11, s2, t4
                  auipc        tp, 65868
                  sub          tp, s0, s0
                  addi         t2, tp, 1919
                  lui          t2, 534806
                  lui          s2, 912789
                  addi         t3, tp, 1810
                  addi         s1, gp, -715
                  addi         s2, s1, -1472
                  auipc        s2, 258177
                  addi         t3, s0, 1098
                  addi         s0, tp, 622
                  lui          s1, 606156
                  nop
                  sub          t4, gp, s0
                  lui          s1, 602900 #end riscv_int_numeric_corner_stream_12
                  xori         s10, a3, 850
                  sra          t3, s8, a2
                  nop
                  ori          s1, t1, -901
                  srl          s3, gp, t3
                  xori         gp, s8, 1016
                  xor          s5, a1, a3
                  andi         gp, sp, -576
                  xori         s2, s11, 1516
                  srli         tp, s10, 23
                  sltiu        s0, s1, -1940
                  sll          zero, a3, sp
                  and          t4, s11, gp
                  ori          s1, s2, 714
                  andi         a7, s7, 105
                  xori         tp, s11, 532
                  slti         s0, s11, 601
                  sra          s11, gp, sp
                  ori          zero, ra, 649
                  and          s0, s9, t2
                  srai         s9, gp, 0
                  sltiu        a1, t6, 1581
                  nop
                  slt          t2, t1, s3
                  auipc        a3, 479157
                  lui          s2, 817321
                  srl          sp, s1, t0
                  lui          a0, 1016384
                  sra          gp, ra, a0
                  and          a0, t4, a2
                  and          s8, a3, s5
                  sltu         t4, s11, a2
                  add          t2, s1, t4
                  add          tp, t2, t3
                  auipc        s1, 494631
                  lui          sp, 962375
                  sltu         s3, s6, s6
                  sra          s5, zero, a2
                  or           a0, s7, s7
                  srli         gp, s8, 4
                  add          s1, t1, a1
                  sub          t1, a2, s1
                  slti         a7, a3, -752
                  slti         gp, ra, 511
                  sltiu        s11, a5, 1381
                  sltiu        a7, s10, -462
                  andi         s11, t3, -1307
                  slt          s7, sp, ra
                  auipc        s6, 598172
                  lui          s7, 293279
                  sra          s10, s0, a5
                  srl          gp, t3, t5
                  auipc        t1, 122241
                  and          zero, s1, s0
                  slli         a0, s9, 20
                  ori          s5, ra, 438
                  xor          a5, t2, gp
                  or           s8, gp, a7
                  sub          a4, t5, a5
                  sltu         a6, t4, a6
                  srli         s10, a1, 26
                  slt          s5, a4, a2
                  slt          a5, t3, t5
                  sub          sp, t2, zero
                  slt          tp, t2, tp
                  slli         a7, s11, 3
                  xori         s1, t3, -52
                  slli         s11, a0, 13
                  auipc        s9, 775961
                  sll          s8, t0, t3
                  and          t1, s0, t0
                  ori          t4, s7, -1723
                  nop
                  or           s11, t0, zero
                  auipc        s5, 435714
                  slt          s7, t6, s11
                  sll          t1, a4, s3
                  sra          a6, gp, s8
                  srli         s8, s3, 6
                  andi         tp, a4, 300
                  lui          a3, 719578
                  add          t6, s0, t1
                  srai         s6, a7, 23
                  xor          t6, a4, s1
                  add          zero, a4, s2
                  nop
                  xor          t2, t5, sp
                  addi         s3, s2, -1014
                  auipc        t6, 514279
                  slt          a0, a6, s1
                  and          s7, s10, t2
                  ori          tp, a0, -1464
                  srai         s8, t6, 12
                  and          s2, s10, a0
                  slti         s5, tp, 203
                  sltiu        s9, s0, -462
                  sra          a7, s6, s10
                  lui          s2, 745343
                  add          s11, t3, s4
                  srli         sp, a1, 31
                  andi         t2, s4, 22
                  xor          a3, a1, s9
                  nop
                  slti         gp, a1, 1406
                  addi         s10, s7, 1514
                  srai         gp, s5, 23
                  and          s7, a5, t5
                  sub          t6, s4, a5
                  srl          s0, s8, t6
                  sra          a1, a1, a4
                  srai         a2, s8, 9
                  xori         a2, s0, -569
                  andi         a4, t2, -1036
                  slli         s7, zero, 14
                  sra          ra, s7, s11
                  lui          a1, 419603
                  slli         a3, s8, 28
                  nop
                  ori          s9, s9, 1230
                  xor          s2, s10, s10
                  or           a2, s4, a1
                  sltiu        s2, a1, -1685
                  sub          a5, gp, a1
                  add          t4, s7, s6
                  slt          s0, sp, s1
                  xori         a6, gp, 1156
                  srl          a5, a0, s5
                  sll          t4, tp, s10
                  lui          a6, 735903
                  sub          s9, t5, s1
                  sub          a2, a7, s4
                  slli         a0, s9, 16
                  andi         t6, tp, -898
                  slt          s10, a6, gp
                  slt          s11, sp, s3
                  srai         a0, a0, 6
                  addi         s11, a5, -1160
                  andi         ra, ra, 49
                  slt          s1, t5, a0
                  sub          a5, a5, ra
                  sltu         a5, s11, t4
                  and          t1, s10, a1
                  xor          s11, s7, s2
                  ori          s11, s8, -735
                  xori         a3, s3, 665
                  xor          a3, t3, sp
                  add          s0, gp, s6
                  nop
                  lui          a0, 957799
                  lui          s8, 111109
                  sltu         s7, s7, t4
                  and          s5, t5, s9
                  sltiu        t4, t6, -400
                  or           t6, s0, s10
                  srai         zero, t6, 20
                  sub          a2, zero, s11
                  sub          a7, t0, s4
                  andi         ra, sp, 1815
                  srli         t2, ra, 19
                  nop
                  slli         a2, a7, 5
                  ori          t1, t5, 1586
                  srli         t2, t2, 14
                  and          a5, tp, gp
                  sll          a2, t5, s11
                  slli         a2, t2, 5
                  srl          s3, a4, t1
                  sltiu        a5, a2, 1006
                  xor          a2, s4, s2
                  xor          a5, t2, t2
                  sltu         a5, tp, tp
                  xori         a3, zero, 2028
                  nop
                  sll          s11, a5, s5
                  sll          s8, s8, s5
                  slli         a4, s0, 11
                  srai         s11, a3, 22
                  sll          t1, a3, t0
                  sll          a3, a2, sp
                  auipc        zero, 586144
                  auipc        s0, 130224
                  srl          s3, t1, s0
                  sltiu        t4, a5, -54
                  addi         t4, s1, 56
                  sra          a7, t0, s9
                  or           s9, s6, t2
                  srai         t2, s5, 16
                  slli         s8, sp, 29
                  sltu         zero, zero, gp
                  ori          t1, a2, -1821
                  sub          zero, s11, t1
                  and          a4, s7, s4
                  or           zero, a6, a7
                  xor          s6, t5, s11
                  sltu         s6, s8, s4
                  nop
                  sll          a3, tp, s8
                  lui          t3, 904817
                  addi         sp, s1, -1320
                  ori          s2, a1, 624
                  srli         s10, a3, 15
                  ori          t3, tp, 1895
                  add          t4, a0, a5
                  and          a3, s4, a2
                  srl          a3, a3, s6
                  sltiu        a0, s2, -4
                  slli         ra, a1, 3
                  srai         a3, s5, 1
                  or           a3, s9, s9
                  xor          s7, a5, t0
                  sub          t6, t4, a2
                  andi         a6, tp, 153
                  srli         a6, sp, 29
                  nop
                  lui          tp, 251525
                  nop
                  sra          s8, sp, s9
                  slt          a4, s2, a3
                  sll          s2, a1, t5
                  slli         a7, s7, 13
                  and          a5, ra, zero
                  and          t4, tp, t2
                  xor          s3, t3, s2
                  sub          a6, t4, gp
                  sltiu        s3, t6, 1931
                  andi         s5, s2, 445
                  andi         a0, a0, -939
                  srai         a3, a4, 28
                  add          s2, s7, t0
                  or           a0, s3, s2
                  and          a6, a5, s0
                  andi         tp, a4, -1139
                  lui          s10, 812175
                  sub          t3, a3, s9
                  xori         s7, s1, -1048
                  sll          t6, s11, sp
                  sra          s0, s10, s9
                  srai         a3, a5, 13
                  srai         t3, t6, 10
                  nop
                  srai         s5, s0, 0
                  slli         t6, t2, 7
                  srai         tp, a1, 13
                  xori         a5, t6, -690
                  xor          a0, a4, s2
                  sltu         a5, t4, t6
                  ori          a3, s9, -317
                  xor          zero, s3, t4
                  lui          a3, 119200
                  nop
                  auipc        a5, 500931
                  or           a4, s4, t2
                  slli         a0, s8, 14
                  addi         a1, gp, 1207
                  auipc        t2, 471772
                  addi         t4, a4, -99
                  add          s7, s3, gp
                  and          s11, a4, s4
                  add          gp, s6, s1
                  auipc        gp, 684909
                  slti         s11, t6, -1346
                  xor          a1, s2, a5
                  slli         ra, s2, 0
                  ori          tp, a4, -950
                  and          a6, zero, s3
                  sub          a5, zero, a0
                  lui          a2, 264684
                  and          s3, tp, t6
                  slt          sp, s4, t6
                  lui          t2, 78652
                  slt          s9, zero, t3
                  addi         ra, s4, -646
                  sltu         ra, s6, a4
                  srli         a1, t6, 12
                  andi         s5, tp, 550
                  sltiu        ra, s4, 599
                  xori         a7, s5, -438
                  nop
                  xor          t2, s4, s11
                  xori         a3, sp, -201
                  srai         s3, s1, 9
                  nop
                  sub          t1, t6, s10
                  nop
                  slli         s9, a7, 28
                  andi         ra, sp, -1722
                  slt          t6, a0, zero
                  sub          s2, a4, s9
                  srl          s6, a2, a7
                  add          a4, s8, s8
                  slli         s3, t2, 4
                  or           tp, s1, s9
                  sltu         s0, s4, s9
                  sltiu        a6, s10, 1097
                  slli         a2, a1, 7
                  ori          s5, s2, -1302
                  or           gp, s3, s1
                  srai         s11, s0, 4
                  slti         t6, s2, -595
                  lui          a7, 166301
                  ori          t3, s4, 1051
                  lui          s6, 128006
                  ori          ra, t0, -424
                  lui          t1, 867743
                  lui          s5, 838383
                  andi         s2, s7, -101
                  and          s0, s3, a7
                  srai         s11, s0, 0
                  auipc        zero, 942160
                  ori          s11, s3, -1423
                  andi         t2, a1, -1612
                  xor          s5, s0, s2
                  sltiu        gp, zero, -363
                  slt          a0, ra, t1
                  or           a4, sp, t0
                  srl          ra, s7, a3
                  slli         a0, t3, 9
                  sltu         s9, a0, a3
                  sltiu        a3, s4, 1132
                  xori         t3, a3, -569
                  lui          a5, 898846
                  or           a6, t1, zero
                  srli         s9, s6, 21
                  or           ra, t6, s3
                  auipc        gp, 700702
                  slti         a2, s10, -97
                  sub          a7, s7, s5
                  add          a7, s11, a2
                  sltiu        a1, s2, 1945
                  slti         s6, t1, -1475
                  ori          s6, s8, 1598
                  nop
                  andi         s1, s11, 1994
                  sll          t2, sp, a0
                  addi         a6, a5, 893
                  sub          s3, tp, t4
                  lui          a6, 30233
                  or           tp, s8, a7
                  srli         s3, t3, 4
                  lui          a2, 410949
                  slt          s11, sp, t5
                  andi         s10, a5, -399
                  and          s3, s7, s0
                  lui          tp, 462402
                  slti         zero, zero, 295
                  srai         ra, a3, 24
                  sra          s2, a2, a6
                  add          s8, t1, s11
                  or           t1, t1, t5
                  xor          a0, sp, a4
                  xor          s6, a0, t4
                  andi         t3, t0, 497
                  slli         t1, zero, 9
                  sub          s1, gp, a7
                  nop
                  nop
                  sll          a4, a3, s6
                  addi         t1, a6, -2032
                  slt          a5, a5, a4
                  srli         t6, s9, 2
                  sub          ra, a2, s8
                  lui          s5, 656518
                  slti         s11, t2, -1684
                  addi         t4, s6, -1619
                  or           a7, a0, a0
                  lui          a7, 746237
                  or           ra, s8, t1
                  nop
                  slli         t3, t6, 6
                  sll          sp, a3, s4
                  srl          t3, s1, s5
                  sll          sp, t3, s3
                  andi         s8, ra, -1952
                  sra          sp, s8, t0
                  andi         a5, s3, -1427
                  or           s7, a6, s10
                  ori          s9, zero, 346
                  sub          s1, ra, tp
                  slti         a1, ra, -600
                  ori          s5, s11, -1554
                  nop
                  or           s0, t0, a1
                  sub          s9, s8, t5
                  sra          s11, t2, s8
                  andi         a1, t2, 800
                  and          a4, s5, ra
                  addi         s7, s11, 781
                  slt          a6, t0, t2
                  srai         a1, t0, 6
                  add          a2, s5, t2
                  add          t3, s10, a2
                  ori          a2, t5, -1360
                  srli         s6, t2, 23
                  addi         s9, a5, -1431
                  slli         a6, s1, 22
                  slli         s1, gp, 28
                  srai         t4, a0, 10
                  sra          t6, sp, a3
                  auipc        t2, 132146
                  ori          a4, a5, 948
                  or           t2, a0, t2
                  and          s10, s4, s1
                  sub          s3, a7, a1
                  andi         gp, gp, 1369
                  sra          a4, gp, a3
                  and          a3, a0, s2
                  sltiu        s2, zero, -1505
                  sra          s0, s4, a0
                  add          a0, t5, a3
                  lui          s0, 140217
                  xor          t2, s5, a6
                  xor          s9, t6, s9
                  sra          a6, gp, s9
                  sra          a6, s3, s0
                  sltiu        a7, t0, 1086
                  srai         s10, s6, 9
                  slt          sp, s1, s8
                  slti         t3, a4, -943
                  slti         sp, sp, -1943
                  and          s0, t4, t1
                  slti         s9, s8, 583
                  xori         s5, s3, 1068
                  sra          t2, t6, s8
                  add          a2, a3, s1
                  addi         s11, zero, 362
                  sra          s1, a6, s4
                  and          zero, ra, a1
                  xori         a6, a0, -1696
                  addi         s9, s0, -748
                  sltiu        s3, s11, 959
                  ori          a4, t1, -1778
                  sll          s11, ra, t0
                  sll          sp, s10, t3
                  sltiu        s9, a2, 641
                  add          a5, t3, a2
                  slti         s5, a7, 1571
                  xori         s2, t6, -615
                  ori          gp, a7, -610
                  add          t6, gp, t0
                  sltiu        s9, s8, -54
                  and          a3, zero, s2
                  add          t3, gp, tp
                  ori          t6, s9, -594
                  nop
                  lui          t2, 57346
                  lui          s10, 502560
                  srl          sp, ra, a3
                  srli         s1, s5, 17
                  add          s8, a6, t2
                  auipc        s6, 460827
                  addi         t3, t4, 1408
                  sll          s0, a5, a5
                  sll          s2, a7, s6
                  srai         t2, a5, 20
                  slti         t6, s6, 1672
                  slt          t1, t2, a0
                  nop
                  addi         ra, s6, -2047
                  andi         a3, s1, 22
                  sltu         a1, s6, t0
                  sub          s10, t3, s2
                  slti         s10, a1, 1133
                  lui          s0, 519397
                  srl          a2, s3, a5
                  srai         s2, s2, 0
                  srl          a4, s6, s5
                  or           a7, a4, a7
                  slt          a5, s9, s6
                  xor          s3, t6, a5
                  sra          a4, s5, a6
                  or           zero, s4, s5
                  xori         s10, t1, 577
                  slt          s7, gp, s2
                  slt          t3, a3, s9
                  sra          a3, s6, t3
                  sra          tp, s1, a1
                  lui          s5, 850135
                  addi         s9, a5, -797
                  srai         s1, s6, 14
                  and          gp, s3, ra
                  addi         t3, t4, 1917
                  xori         s11, s11, -1821
                  srli         a4, s9, 14
                  sll          s2, s1, gp
                  xor          s2, s8, s0
                  sll          a6, t1, s10
                  srl          ra, s1, a1
                  slli         s2, a4, 19
                  sltu         a2, a5, a2
                  slli         s5, a1, 3
                  slti         t2, s9, 1928
                  sll          a0, a0, a4
                  xori         s10, s3, -1058
                  srli         t1, t0, 5
                  sltiu        s2, t3, 180
                  sub          t1, t5, s7
                  slt          s0, s2, s2
                  sltu         t2, gp, s1
                  nop
                  sltiu        t6, a5, 681
                  slli         s2, s10, 16
                  xori         a1, s3, 1827
                  or           s10, s6, t1
                  xori         t2, s10, 1032
                  addi         s5, s11, 1524
                  addi         a5, s0, 1028
                  auipc        a2, 602642
                  and          a6, a5, ra
                  andi         a4, t5, 1934
                  and          a0, s9, s2
                  sll          sp, a5, a6
                  srl          t1, sp, zero
                  or           a5, a7, a6
                  srli         s0, gp, 17
                  lui          t4, 915717
                  xor          a4, s7, s10
                  lui          s8, 606820
                  slli         s3, s7, 9
                  sub          t4, s8, s8
                  addi         a5, s0, -1343
                  sll          a2, a0, a1
                  nop
                  lui          s5, 552611
                  xor          s1, a7, s0
                  sub          a3, s8, gp
                  xori         s5, s1, 2030
                  lui          s11, 492077
                  xori         s10, s6, 437
                  sltu         s1, s10, a2
                  slli         tp, s0, 28
                  ori          s1, a0, 557
                  sll          a5, a7, s6
                  xori         t3, s9, 1371
                  srli         s10, a4, 8
                  xori         s11, t4, -1428
                  xori         tp, a2, -1032
                  or           a0, s11, zero
                  sub          ra, a6, s8
                  nop
                  xor          s2, t6, a6
                  lui          zero, 433286
                  xor          gp, gp, s7
                  sub          zero, s6, t6
                  ori          s5, a4, -1739
                  xor          s10, tp, t0
                  add          s3, s3, a5
                  andi         a2, t4, -1048
                  nop
                  sra          s2, ra, s11
                  lui          s1, 325388
                  andi         s1, s8, -1742
                  lui          gp, 180095
                  add          s10, zero, t0
                  sltiu        s3, s0, -1838
                  add          t4, s4, ra
                  add          ra, s7, a5
                  slli         s3, t2, 18
                  slti         a2, sp, -77
                  andi         s11, t4, 1871
                  auipc        s5, 563393
                  xor          s5, s10, s6
                  srli         s10, t3, 22
                  sll          s8, tp, s6
                  and          s1, t1, a0
                  slti         s6, s2, -507
                  xor          a7, s0, s2
                  andi         gp, t0, -1521
                  or           tp, s4, a7
                  add          tp, s6, a4
                  and          t3, s4, t6
                  xor          t4, a1, a6
                  and          s7, a2, s10
                  sra          s5, s10, s10
                  slt          t6, zero, t2
                  addi         t1, s3, -1920
                  srli         a4, s10, 25
                  sltu         zero, s11, s7
                  sltiu        t2, ra, -1479
                  nop
                  or           a4, t2, t4
                  srli         t1, gp, 27
                  slti         a4, a0, -645
                  addi         ra, gp, 1296
                  slti         t1, s4, -1207
                  add          t6, ra, ra
                  slli         s11, t5, 7
                  xor          s0, gp, s10
                  or           t3, s4, s10
                  srai         a3, s8, 22
                  xor          zero, a2, gp
                  ori          s7, s7, 1037
                  addi         s3, s4, -1274
                  slti         s7, a2, 1628
                  ori          t1, a4, 1565
                  ori          s3, s10, -1046
                  nop
                  srl          a7, a0, t2
                  addi         tp, a0, 385
                  auipc        t4, 494134
                  ori          a0, a3, 1188
                  sra          s9, t0, s10
                  andi         sp, a3, 1642
                  srli         s0, a3, 15
                  andi         s1, s0, 1954
                  ori          s8, a7, 1211
                  ori          s1, a2, -2026
                  sll          a6, t6, t3
                  andi         tp, s11, 643
                  and          tp, a6, a5
                  ori          a0, s5, 1830
                  srli         s1, s11, 14
                  addi         sp, s5, -953
                  xori         s2, a4, -1382
                  srai         gp, a7, 17
                  sll          zero, sp, s8
                  slt          s1, zero, s0
                  slti         s3, t1, -1422
                  xori         s0, t5, 1139
                  ori          t2, s11, -1671
                  ori          ra, t3, -1231
                  ori          s7, a7, -536
                  srli         s1, t1, 3
                  ori          s11, zero, -513
                  add          s0, gp, t3
                  lui          s2, 371400
                  slti         a1, a0, 419
                  nop
                  slti         tp, s11, -1221
                  sltiu        s1, s0, -1474
                  and          t1, s9, a4
                  lui          gp, 773784
                  add          a5, a3, s0
                  and          zero, t4, s9
                  xori         s11, a3, -1641
                  sltu         t1, s11, t6
                  slti         s9, s10, -686
                  auipc        s9, 128400
                  nop
                  xori         a6, s11, -1972
                  sra          sp, s1, s3
                  sra          a5, a2, gp
                  and          sp, s5, a1
                  andi         s5, tp, -1741
                  lui          tp, 616287
                  addi         s11, ra, -2006
                  slli         a5, s5, 25
                  srl          s10, s11, s8
                  andi         ra, t0, -1234
                  sltu         t4, a1, s9
                  addi         s10, s8, -1376
                  srl          s8, t4, sp
                  lui          s7, 564383
                  add          s9, zero, t5
                  sub          a4, s1, t1
                  lui          s9, 582929
                  sll          s6, s2, a2
                  xori         s11, s9, 1213
                  sll          t3, a3, zero
                  or           s1, t1, s11
                  srli         a6, s0, 24
                  ori          s6, s10, 645
                  srai         s9, a1, 24
                  lui          s11, 68165
                  nop
                  and          s10, sp, a4
                  sub          s3, t5, s8
                  nop
                  lui          t6, 923881
                  sltiu        s1, a0, -1170
                  srai         a2, s6, 6
                  sltiu        s1, t2, 1977
                  sra          s10, a1, s7
                  auipc        t4, 930417
                  sra          s8, s0, s6
                  nop
                  addi         s10, a1, -701
                  slli         a6, gp, 14
                  andi         t3, t2, 1424
                  xori         s8, s11, -593
                  srl          a0, t2, t0
                  and          a0, t5, t3
                  slt          a7, s6, s0
                  slt          t2, s11, a6
                  xor          a5, s9, s1
                  sra          s0, gp, s3
                  srl          a1, a1, s4
                  lui          s7, 1020638
                  sltiu        zero, ra, -812
                  srl          a6, s9, tp
                  srl          a6, a5, s8
                  add          a4, t2, a1
                  lui          s5, 238717
                  slt          t1, a0, s11
                  xor          a4, t0, s11
                  srl          s1, t6, gp
                  sub          a1, t4, t0
                  sub          s0, s11, s7
                  or           s2, s7, a1
                  addi         zero, a1, -996
                  srl          s1, s0, a5
                  ori          t1, s0, -1677
                  andi         t1, s9, 1250
                  xor          s7, s11, s2
                  add          s2, t4, s11
                  sll          a7, a2, s4
                  sltiu        t6, ra, 1928
                  sra          s11, s1, a7
                  addi         a3, s11, -1903
                  sltu         s9, s7, t1
                  sra          a1, t1, sp
                  nop
                  xori         s9, s0, -1824
                  lui          t6, 36884
                  or           s2, t0, a5
                  auipc        t1, 143527
                  srli         s7, s7, 2
                  xori         s6, s8, -1853
                  sll          sp, t3, a3
                  and          s3, s1, zero
                  or           t4, a3, a2
                  sll          s1, s1, t0
                  slti         s0, t3, 1532
                  lui          t1, 991908
                  xori         a7, s3, -1267
                  slt          tp, t2, t2
                  slli         t2, s0, 26
                  lui          zero, 55859
                  sub          s1, s11, s2
                  andi         t4, t5, -758
                  ori          s3, gp, 1513
                  sll          s1, s10, a5
                  slli         s5, s5, 0
                  lui          a7, 741519
                  auipc        s0, 806080
                  addi         gp, a3, 1244
                  srli         gp, sp, 10
                  sltu         a4, s0, a1
                  sub          s10, a1, a4
                  addi         s2, s4, 1646
                  add          t4, a3, zero
                  srai         a7, t5, 22
                  andi         zero, a0, 1123
                  sub          a3, ra, s11
                  ori          a5, a7, -176
                  and          gp, a5, t0
                  sll          a1, a0, a6
                  sub          a4, t1, s0
                  sub          a1, a0, s6
                  xor          a4, s5, s1
                  sra          s1, tp, s6
                  srl          a1, a5, t2
                  xori         t2, ra, -2032
                  and          gp, s0, t3
                  srli         sp, ra, 6
                  or           a1, s3, s7
                  lui          a6, 1044615
                  andi         s6, s4, 145
                  sltiu        t3, s5, 742
                  srai         s10, t6, 9
                  and          s8, s1, a5
                  slti         a6, a6, 1571
                  slti         a0, t2, 1937
                  slli         s11, a5, 21
                  sltiu        a3, s6, -1849
                  slti         s3, a3, -1352
                  add          s2, sp, a7
                  slli         t6, t0, 18
                  slti         s1, s3, 1217
                  ori          gp, t0, 1808
                  srl          t6, a3, t1
                  sub          t4, s4, a4
                  sltu         zero, a1, t6
                  slli         a2, a1, 4
                  sub          sp, a5, s6
                  xori         zero, a1, -132
                  xor          s5, s1, s5
                  srl          t3, a7, t0
                  srli         a7, s3, 29
                  xor          a4, s1, s10
                  nop
                  ori          tp, a5, -1921
                  addi         a4, s4, 1898
                  or           s1, a0, t3
                  srai         a0, a7, 19
                  addi         sp, a0, -394
                  slt          a7, a1, ra
                  and          s11, s9, t2
                  ori          a4, s5, -141
                  xori         s6, zero, 226
                  xori         t2, a3, 1753
                  sltu         t4, t4, a3
                  slti         zero, a0, -1736
                  srli         t1, a1, 11
                  and          a7, zero, t4
                  sub          t6, t5, s5
                  sll          a6, s7, a1
                  or           s3, s7, s0
                  xor          a6, s9, t4
                  andi         a5, a6, -1058
                  xor          t3, t6, s11
                  andi         s10, t5, -715
                  add          s5, gp, t4
                  and          gp, s5, a3
                  addi         s11, t3, -831
                  slt          s5, s2, s10
                  sltiu        s5, t6, -18
                  ori          ra, gp, 387
                  sra          t6, t0, s5
                  slt          a7, s0, t6
                  auipc        s11, 437375
                  andi         s1, tp, -1873
                  addi         s7, s0, -33
                  sll          a6, a1, t1
                  slli         s3, t3, 10
                  auipc        a3, 603342
                  andi         zero, s8, -1380
                  auipc        a2, 842301
                  sltiu        sp, a7, 1191
                  sll          s0, gp, s2
                  sra          zero, t3, zero
                  and          s6, t4, t0
                  ori          zero, zero, 1929
                  or           a5, s4, a0
                  srl          t1, s1, s8
                  sll          s11, t6, a1
                  add          s5, a3, t0
                  add          s0, gp, s1
                  ori          a2, sp, -76
                  lui          t4, 310303
                  or           s2, s7, s10
                  or           a6, ra, a3
                  srli         a3, a2, 20
                  slt          t6, s1, s8
                  sltiu        s2, a0, 500
                  or           a0, zero, t1
                  or           ra, s10, t1
                  or           s9, gp, s7
                  xori         t2, s8, -1239
                  addi         s5, s3, -88
                  slt          s10, a2, t6
                  sra          a4, s3, sp
                  auipc        s9, 489924
                  slli         gp, s4, 18
                  srli         t6, a3, 31
                  xori         a5, s7, -1512
                  xor          s5, t3, s11
                  auipc        a3, 917500
                  sltiu        s9, s3, -616
                  sub          s10, t5, s1
                  slti         s5, s5, 58
                  sra          s9, t5, a1
                  xori         a7, s3, -1728
                  addi         t4, s4, -612
                  srl          a7, gp, a4
                  sll          a3, t4, ra
                  or           a2, s9, a5
                  add          a2, a3, t5
                  nop
                  sltu         a4, a1, a7
                  slt          s9, s5, ra
                  xor          s6, t2, a0
                  ori          s9, s3, -1531
                  ori          s11, a7, 968
                  auipc        tp, 136103
                  sra          a0, s3, s2
                  lui          a2, 354991
                  xor          tp, s11, zero
                  slt          tp, t2, t6
                  auipc        a4, 516061
                  auipc        s2, 225447
                  add          s9, t0, s7
                  srai         t3, t0, 16
                  ori          tp, a6, 1792
                  xori         a4, t1, -85
                  sltiu        t6, s10, 1142
                  xor          t2, s2, ra
                  sltiu        a1, tp, -525
                  sub          s3, s10, a1
                  sltu         s2, t6, t5
                  sll          a4, sp, s5
                  or           s0, t3, zero
                  or           tp, t1, t2
                  sra          s11, tp, tp
                  lui          s7, 922812
                  slti         t1, s9, 114
                  slli         a6, gp, 18
                  nop
                  xori         s11, s3, 552
                  xor          t3, s10, s9
                  sltu         t4, s1, a4
                  andi         s2, a1, 1179
                  sll          t3, s8, t1
                  sltu         s6, s5, t0
                  slli         t6, s10, 7
                  sltu         s11, t0, s1
                  xor          a5, s3, t3
                  sra          s7, s8, a3
                  auipc        s1, 977093
                  srai         s0, t6, 29
                  addi         a7, s9, 260
                  sltiu        s6, ra, 432
                  andi         a2, a7, -1223
                  and          s9, t4, s7
                  lui          s9, 180075
                  sub          t2, s2, gp
                  xori         s7, t1, 1311
                  ori          s5, s7, -841
                  lui          a4, 80139
                  auipc        t4, 482999
                  sra          s0, s0, s0
                  auipc        sp, 458372
                  and          a6, s5, s8
                  sltu         s1, s11, tp
                  nop
                  sub          a6, s5, t6
                  srai         ra, t1, 6
                  nop
                  sltu         t3, tp, s3
                  slt          s0, gp, s2
                  and          a5, t3, s2
                  or           s9, s6, tp
                  srli         t1, t4, 12
                  xori         t3, sp, -568
                  addi         a3, a1, 1222
                  srl          s8, t2, s3
                  auipc        gp, 50647
                  srl          s0, s2, sp
                  xori         s10, t4, -1552
                  slt          a7, t6, s4
                  srl          s1, a5, s9
                  sltiu        tp, zero, -1100
                  slti         a1, s11, 1070
                  xor          a0, a4, a2
                  srli         s9, t3, 25
                  sll          t3, a6, t6
                  sll          a2, a6, t6
                  xori         s11, s9, 698
                  slti         t6, s11, -1547
                  lui          t6, 217896
                  or           s0, tp, a2
                  sltu         a4, gp, t3
                  srl          s0, a2, a3
                  srai         s6, t0, 13
                  srli         s2, a0, 27
                  lui          sp, 46893
                  lui          s5, 498411
                  addi         tp, a3, 820
                  sltu         a1, s11, s5
                  ori          a1, s11, -1207
                  slli         t2, a4, 19
                  slli         s6, t1, 4
                  or           s2, ra, a1
                  auipc        t4, 221778
                  slt          tp, t2, t3
                  sra          a6, s11, s9
                  slti         s7, tp, 1753
                  srl          gp, s1, a7
                  srai         tp, ra, 2
                  sub          s8, s1, t2
                  sltu         s6, a3, s3
                  nop
                  xor          s9, t0, a2
                  add          a5, s4, s8
                  nop
                  srl          s10, s4, t4
                  andi         a4, tp, -671
                  srai         s10, a7, 16
                  ori          ra, s0, -777
                  auipc        s11, 879065
                  xor          s7, a2, t4
                  add          a1, s4, s4
                  ori          t2, gp, 1328
                  slt          t1, s7, a3
                  srai         sp, t1, 31
                  sltiu        s2, tp, -413
                  slt          gp, ra, s2
                  add          a3, ra, ra
                  addi         ra, a5, -286
                  slti         s11, s2, -412
                  sll          gp, a5, s2
                  andi         s0, s8, -1803
                  andi         ra, tp, 101
                  or           s1, s9, tp
                  addi         s1, a5, -987
                  andi         t1, a2, -882
                  sltiu        s8, s7, 1350
                  srai         t3, s11, 6
                  nop
                  sltu         s0, a6, s11
                  slt          a3, s0, s10
                  addi         zero, t1, 1097
                  slli         a0, t5, 14
                  slti         s10, t1, -924
                  slt          t6, s7, t0
                  srai         t6, t5, 26
                  add          s6, s6, a4
                  srai         t4, a2, 31
                  srl          t3, s6, sp
                  sub          a0, s9, a1
                  xori         t2, s0, -370
                  sltu         sp, t4, tp
                  auipc        t1, 904699
                  addi         s11, sp, -971
                  sll          s2, t0, s10
                  srl          t6, s1, s7
                  addi         a1, s7, -576
                  slt          a5, t2, a5
                  sltiu        t1, s11, -1011
                  sll          s1, s1, s8
                  sra          a0, s6, s0
                  andi         s3, s2, -828
                  srl          s0, a6, a7
                  sub          s0, a1, a2
                  add          s2, t3, a7
                  sub          s3, s10, s5
                  slti         s10, tp, -904
                  ori          s10, t2, 1000
                  srai         t6, t4, 11
                  nop
                  slli         a7, a0, 9
                  ori          s7, t1, -1918
                  sltiu        t6, a5, -741
                  sltiu        s3, t6, -1213
                  sub          a3, t4, a6
                  srai         a2, s7, 22
                  nop
                  xori         tp, ra, -951
                  slti         s5, t0, 700
                  add          t3, a0, a1
                  add          s2, s10, s2
                  sub          s11, s6, s5
                  srl          t2, s1, s6
                  add          t4, a7, t0
                  sub          s8, s8, a3
                  add          s5, t3, zero
                  sltu         a2, s10, a5
                  slli         t2, t1, 18
                  srl          a3, s11, a7
                  addi         s7, t6, 1047
                  srl          s2, a4, a5
                  addi         gp, s9, 756
                  srli         s0, s5, 26
                  xor          s6, sp, a3
                  andi         s3, a5, 1898
                  sra          tp, ra, sp
                  srli         t3, gp, 22
                  sra          s0, a7, a6
                  sltu         ra, s0, s2
                  addi         s6, s2, -1752
                  lui          a1, 664763
                  and          tp, tp, a5
                  nop
                  xor          s10, ra, t2
                  sltu         s2, a2, a7
                  sll          t1, s1, s2
                  addi         a5, s2, -1180
                  or           s0, a2, s8
                  and          tp, s5, sp
                  lui          a6, 628457
                  sll          gp, s9, s3
                  auipc        a5, 319765
                  addi         zero, t0, 1224
                  srli         a2, t2, 25
                  sub          a0, ra, t0
                  srl          ra, zero, s7
                  ori          gp, a7, -1848
                  and          s10, a4, sp
                  xor          t3, ra, a0
                  auipc        a7, 896114
                  add          a2, s4, sp
                  srl          t2, s4, ra
                  lui          s9, 1017589
                  addi         s10, zero, -100
                  nop
                  slti         a5, t2, 127
                  srl          zero, s8, a7
                  sra          a4, a6, s4
                  slti         s1, gp, 1327
                  andi         gp, s7, -549
                  slt          t2, t5, sp
                  sra          s5, t1, sp
                  ori          a0, a3, 692
                  andi         a1, a4, 1192
                  lui          s1, 976872
                  slli         s11, a7, 16
                  xori         a1, a0, 878
                  srl          t1, s9, s4
                  sltiu        t2, s11, -1861
                  lui          t3, 184832
                  sltu         s9, s6, s1
                  addi         t6, s3, -1938
                  nop
                  lui          a4, 328123
                  auipc        s9, 917084
                  slt          a1, s3, a7
                  ori          a2, s0, 1944
                  andi         a2, s11, -1829
                  sll          s11, a0, s11
                  srl          t4, s2, t5
                  add          a0, s2, s10
                  xor          s2, zero, t0
                  slti         s10, a6, -156
                  sltiu        t6, gp, -113
                  slli         s11, t3, 0
                  sltiu        s5, s11, 1501
                  add          t4, a1, t4
                  ori          s11, s7, 561
                  slt          a5, s0, t4
                  sub          s3, t1, s10
                  slli         s6, t4, 16
                  andi         a3, t4, -1132
                  or           s3, t3, t2
                  addi         t2, s6, -1648
                  sltu         a5, s3, t2
                  slt          s0, s4, s3
                  srai         s9, t2, 6
                  slli         s1, tp, 25
                  sra          ra, s2, s5
                  slti         t2, s3, 1910
                  slli         s10, t4, 24
                  andi         a1, s9, 2016
                  la x20, test_done
                  jalr x0, x20, 0
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
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x5, x30, zero
                  csrr x13, 0x300 # MSTATUS
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 31
                  bne x13, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x13, 0x341 # MEPC
                  csrr x13, 0x342 # MCAUSE
                  li x28, 0x3 # BREAKPOINT
                  beq x13, x28, ebreak_handler
                  li x28, 0x8 # ECALL_UMODE
                  beq x13, x28, ecall_handler
                  li x28, 0x9 # ECALL_SMODE
                  beq x13, x28, ecall_handler
                  li x28, 0xb # ECALL_MMODE
                  beq x13, x28, ecall_handler
                  li x28, 0x1
                  beq x13, x28, instr_fault_handler
                  li x28, 0x5
                  beq x13, x28, load_fault_handler
                  li x28, 0x7
                  beq x13, x28, store_fault_handler
                  li x28, 0xc
                  beq x13, x28, pt_fault_handler
                  li x28, 0xd
                  beq x13, x28, pt_fault_handler
                  li x28, 0xf
                  beq x13, x28, pt_fault_handler
                  li x28, 0x2 # ILLEGAL_INSTRUCTION
                  beq x13, x28, illegal_instr_handler
                  csrr x28, 0x343 # MTVAL
                  1: la x20, test_done
                  jalr x1, x20, 0

ecall_handler:    
                  la x13, _start
                  sw x0, 0(x13)
                  sw x1, 4(x13)
                  sw x2, 8(x13)
                  sw x3, 12(x13)
                  sw x4, 16(x13)
                  sw x5, 20(x13)
                  sw x6, 24(x13)
                  sw x7, 28(x13)
                  sw x8, 32(x13)
                  sw x9, 36(x13)
                  sw x10, 40(x13)
                  sw x11, 44(x13)
                  sw x12, 48(x13)
                  sw x13, 52(x13)
                  sw x14, 56(x13)
                  sw x15, 60(x13)
                  sw x16, 64(x13)
                  sw x17, 68(x13)
                  sw x18, 72(x13)
                  sw x19, 76(x13)
                  sw x20, 80(x13)
                  sw x21, 84(x13)
                  sw x22, 88(x13)
                  sw x23, 92(x13)
                  sw x24, 96(x13)
                  sw x25, 100(x13)
                  sw x26, 104(x13)
                  sw x27, 108(x13)
                  sw x28, 112(x13)
                  sw x29, 116(x13)
                  sw x30, 120(x13)
                  sw x31, 124(x13)
                  la x20, write_tohost
                  jalr x0, x20, 0

instr_fault_handler:
                  add x30, x5, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

load_fault_handler:
                  add x30, x5, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

store_fault_handler:
                  add x30, x5, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

ebreak_handler:   
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x30, x5, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

illegal_instr_handler:
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x30, x5, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x13, 0x300 # MSTATUS;
                  csrr  x13, 0x304 # MIE;
                  csrr  x13, 0x344 # MIP;
                  csrrc x13, 0x344, x13 # MIP;
                  add x30, x5, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
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
