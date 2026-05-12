.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x25, h0_start
jalr x0, x25, 0
h0_start:
                  li x9, 0x40000100
                  csrw 0x301, x9
kernel_sp:        
                  la x28, kernel_stack_end

trap_vec_init:    
                  la x9, mtvec_handler
                  ori x9, x9, 0
                  csrw 0x305, x9 # MTVEC

mepc_setup:       
                  la x9, init
                  csrw 0x341, x9

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x9, 0x1800
                  csrw 0x300, x9 # MSTATUS
                  mret
init:             
                  li x0, 0xd4fbb0b9
                  li x1, 0x8
                  li x2, 0x80000000
                  li x3, 0xf329ab60
                  li x4, 0x9
                  li x6, 0x0
                  li x7, 0xe
                  li x8, 0x80000000
                  li x9, 0x80000000
                  li x10, 0x80000000
                  li x11, 0xfb173c4c
                  li x12, 0xf87ed679
                  li x13, 0xf4783807
                  li x14, 0xf70eaa8b
                  li x15, 0x6aa01c89
                  li x16, 0x0
                  li x17, 0x80000000
                  li x18, 0xd809f720
                  li x19, 0xfe64aaa7
                  li x20, 0x526870e3
                  li x21, 0x80000000
                  li x22, 0xf7ed6ab3
                  li x23, 0x80000000
                  li x24, 0x7
                  li x25, 0x74518886
                  li x26, 0xe
                  li x27, 0x0
                  li x29, 0x1
                  li x30, 0xf6f04cc0
                  li x31, 0x0
                  la x5, user_stack_end
main:             li           s7, 0xbe0c4271 #start riscv_int_numeric_corner_stream_9
                  li           s10, 0x80000000
                  li           a2, 0xffffffff
                  li           s3, 0x80000000
                  li           a0, 0xe6a6ab73
                  li           a6, 0x80000000
                  li           t5, 0x80000000
                  li           sp, 0x0
                  li           a3, 0xd975a097
                  li           a1, 0x7dce7d43
                  sub          a2, a3, a1
                  nop
                  lui          s3, 314271
                  lui          a2, 360637
                  auipc        a6, 1047025
                  lui          s7, 533414
                  lui          a6, 33130
                  add          a2, a6, a0
                  add          a3, a0, sp
                  sub          a6, s3, a6
                  add          a6, s7, t5
                  lui          s3, 357203
                  sub          a6, a1, a1
                  auipc        a3, 58038
                  add          a0, a3, a1
                  lui          sp, 47058
                  addi         t5, a6, -1217
                  lui          a6, 30446
                  auipc        sp, 555274
                  addi         a3, a3, 310
                  nop
                  sub          a1, a0, s3
                  add          s10, a2, a3
                  sub          a1, a1, a2
                  sub          s3, a2, s10
                  add          a2, a2, a1 #end riscv_int_numeric_corner_stream_9
                  li           s4, 0x9cbc5d88 #start riscv_int_numeric_corner_stream_8
                  li           s5, 0xffffffff
                  li           s8, 0x80000000
                  li           a1, 0x872886c
                  li           s0, 0x0
                  li           a3, 0xa9e08c42
                  li           a4, 0x9200a48
                  li           tp, 0x80000000
                  li           s11, 0x3e8c0b5b
                  li           t6, 0xffffffff
                  nop
                  auipc        t6, 795824
                  add          a3, s0, a1
                  lui          tp, 825222
                  add          a4, tp, t6
                  auipc        s5, 583395
                  add          s5, t6, a3
                  add          s0, tp, s0
                  lui          a4, 399048
                  auipc        a3, 777400
                  nop
                  auipc        s0, 1007884
                  lui          s5, 712793
                  lui          a3, 284828
                  sub          t6, a3, s4
                  addi         s0, s8, -1292
                  add          a4, s4, s5
                  addi         s5, a1, 1318
                  sub          a4, s8, s8
                  add          s11, s0, a4
                  nop
                  auipc        s0, 247570
                  add          s11, a4, a1
                  auipc        s11, 589394
                  add          t6, t6, s0 #end riscv_int_numeric_corner_stream_8
                  li           sp, 0x64c503ed #start riscv_int_numeric_corner_stream_1
                  li           a1, 0x0
                  li           gp, 0x80000000
                  li           s4, 0xca267a0b
                  li           a3, 0x80000000
                  li           a7, 0x0
                  li           s11, 0x0
                  li           s7, 0x57d622f1
                  li           s0, 0x91612526
                  li           a2, 0x80000000
                  add          s0, a2, s11
                  auipc        a2, 1027440
                  add          s4, a1, a7
                  addi         a7, s7, -1555
                  auipc        s7, 621635
                  auipc        a3, 29705
                  add          a3, s0, a3
                  addi         s0, a3, 889
                  sub          sp, s7, a1
                  auipc        a3, 176524
                  auipc        a2, 226186
                  nop
                  addi         a1, a1, 897
                  add          a7, a3, a7
                  lui          a1, 915239
                  lui          s11, 312582
                  lui          s11, 783424
                  add          s0, gp, sp
                  sub          sp, sp, sp
                  sub          gp, s11, a7
                  auipc        s7, 154229
                  nop
                  lui          a2, 332016 #end riscv_int_numeric_corner_stream_1
                  li           a7, 0x0 #start riscv_int_numeric_corner_stream_2
                  li           s2, 0x80000000
                  li           a3, 0xffffffff
                  li           t4, 0x0
                  li           a4, 0x52cc7ef8
                  li           t1, 0xffffffff
                  li           s8, 0xffffffff
                  li           a2, 0xffffffff
                  li           t6, 0x965764b8
                  li           a1, 0x80000000
                  nop
                  sub          a7, a7, a2
                  auipc        t1, 688892
                  nop
                  sub          a4, a3, t6
                  addi         a2, s8, -538
                  add          t6, a1, a4
                  addi         s2, t1, 1721
                  addi         t6, a1, -1028
                  lui          s2, 447892
                  nop
                  sub          s2, a4, a2
                  add          t4, t4, s8
                  lui          t1, 375673
                  lui          t6, 403793
                  sub          a4, t6, a1
                  add          t6, a4, t6
                  auipc        t1, 670124
                  auipc        a1, 311407
                  sub          t6, t6, a7
                  add          t6, t4, s8
                  sub          a4, a3, a4
                  addi         a1, a7, -749 #end riscv_int_numeric_corner_stream_2
                  li           s10, 0x668622c6 #start riscv_int_numeric_corner_stream_14
                  li           t4, 0x80000000
                  li           tp, 0x80000000
                  li           s11, 0x80000000
                  li           sp, 0x0
                  li           s1, 0x80000000
                  li           s2, 0x0
                  li           s7, 0x80000000
                  li           gp, 0x55a5528e
                  li           a0, 0xffffffff
                  lui          s10, 872022
                  lui          s2, 816233
                  addi         t4, tp, 781
                  sub          tp, gp, tp
                  lui          s1, 129548
                  auipc        s1, 1042834
                  lui          gp, 258562
                  sub          s2, s2, tp
                  sub          s10, t4, s10
                  lui          sp, 179356
                  sub          s11, s7, s7
                  lui          sp, 435158
                  lui          a0, 746426
                  addi         a0, s11, 230
                  auipc        s10, 1027535
                  add          gp, gp, sp
                  sub          s1, sp, t4
                  auipc        s10, 56678
                  lui          a0, 775934
                  addi         sp, t4, 977
                  nop
                  addi         gp, s2, 906
                  add          a0, a0, sp
                  lui          t4, 268806
                  nop
                  add          tp, tp, a0 #end riscv_int_numeric_corner_stream_14
                  li           s8, 0xeab5ffe4 #start riscv_int_numeric_corner_stream_7
                  li           gp, 0x80000000
                  li           a0, 0x0
                  li           s6, 0x80000000
                  li           a7, 0x80000000
                  li           t1, 0x5f155354
                  li           a1, 0x0
                  li           s1, 0xffffffff
                  li           ra, 0x0
                  li           s5, 0x80000000
                  nop
                  add          a1, s5, s6
                  sub          t1, t1, s1
                  auipc        s8, 150161
                  addi         ra, ra, -1538
                  add          s1, s8, s1
                  lui          t1, 158474
                  sub          a7, gp, a1
                  nop
                  auipc        a1, 556112
                  nop
                  nop
                  auipc        gp, 388966
                  addi         a7, a1, -81
                  sub          s1, s1, s6
                  addi         a7, a0, -965
                  addi         t1, s6, 1419
                  sub          t1, s8, a0
                  auipc        ra, 206226
                  sub          a0, gp, s1
                  nop
                  add          s5, t1, a0
                  nop
                  add          gp, gp, gp
                  addi         gp, a1, 2037
                  nop
                  lui          a0, 771736 #end riscv_int_numeric_corner_stream_7
                  li           s7, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           a3, 0xffffffff
                  li           s4, 0x80000000
                  li           a6, 0x0
                  li           gp, 0x0
                  li           s0, 0xffffffff
                  li           s1, 0x80000000
                  li           s3, 0xffffffff
                  li           t6, 0xffffffff
                  li           t4, 0xffffffff
                  addi         s0, gp, -126
                  lui          s1, 578240
                  lui          gp, 519133
                  add          gp, s7, a6
                  sub          a3, a6, t4
                  add          a3, s1, s1
                  auipc        s0, 281519
                  addi         s0, a3, 746
                  lui          s4, 457940
                  lui          t4, 291886
                  sub          gp, t6, t4
                  sub          a6, a6, s1
                  add          t4, gp, s7
                  auipc        a3, 286566
                  addi         a3, s4, -1200
                  addi         t6, t4, 629
                  add          a6, gp, gp
                  addi         gp, s7, -1281
                  nop
                  lui          gp, 877124
                  lui          s7, 431693
                  auipc        s7, 324715
                  nop
                  sub          a3, a3, s0
                  add          s0, s0, s1
                  add          t4, s3, t4
                  auipc        t6, 575421
                  addi         s0, s7, 1935 #end riscv_int_numeric_corner_stream_0
                  li           a5, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           a4, 0x872815be
                  li           s1, 0x47efbbbf
                  li           a7, 0x0
                  li           t6, 0xffffffff
                  li           t1, 0x80000000
                  li           s0, 0x6f9eed03
                  li           s10, 0x80000000
                  li           ra, 0x3128469a
                  li           t2, 0xffffffff
                  auipc        a4, 675862
                  sub          t6, t6, a4
                  nop
                  sub          s10, s1, ra
                  auipc        t6, 800091
                  nop
                  sub          s0, s0, s1
                  auipc        s0, 70908
                  auipc        a5, 642045
                  sub          t2, s10, t2
                  sub          a5, a7, s0
                  nop
                  sub          s0, s10, a7
                  sub          s0, a4, s0
                  addi         s0, s10, -548
                  sub          a4, t2, s1
                  add          s10, a5, s0
                  sub          s1, s10, s1
                  add          a7, s1, s10
                  add          s1, s0, t2
                  nop
                  addi         t2, t1, -1996
                  nop
                  addi         t2, a7, 1352
                  auipc        s10, 846289
                  sub          ra, t6, s10 #end riscv_int_numeric_corner_stream_19
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           a1, 0xffffffff
                  li           s0, 0xffffffff
                  li           s2, 0x80000000
                  li           a5, 0x0
                  li           a2, 0x80000000
                  li           sp, 0xdf3627bd
                  li           gp, 0x80000000
                  li           a7, 0x80000000
                  li           s3, 0x0
                  nop
                  lui          a5, 1029856
                  nop
                  add          s10, s10, sp
                  nop
                  nop
                  auipc        a7, 1033850
                  lui          a7, 238911
                  lui          a2, 841573
                  nop
                  lui          a1, 110322
                  nop
                  addi         s2, sp, -1222
                  sub          s2, s0, gp
                  sub          a7, a7, gp
                  nop
                  auipc        a2, 951511
                  lui          s10, 143241
                  nop
                  nop
                  nop
                  lui          s10, 1000037
                  lui          s2, 880395 #end riscv_int_numeric_corner_stream_13
                  li           s6, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           a6, 0xca8a2cc2
                  li           s3, 0x0
                  li           s2, 0x0
                  li           s1, 0x0
                  li           s5, 0xffffffff
                  li           a0, 0x0
                  li           t1, 0x26e9b3b5
                  li           s4, 0x0
                  li           a7, 0x80000000
                  auipc        a6, 137953
                  add          s1, t1, a0
                  auipc        s4, 21655
                  nop
                  sub          a0, a0, s4
                  auipc        a0, 935569
                  auipc        s1, 148008
                  add          s1, s5, a0
                  sub          s6, s3, s1
                  nop
                  sub          s5, t1, a6
                  addi         s1, s5, -1595
                  sub          s4, s2, s1
                  nop
                  auipc        a6, 119519
                  lui          s3, 853912
                  add          a6, s3, s5 #end riscv_int_numeric_corner_stream_4
                  li           s2, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           t1, 0xffffffff
                  li           a5, 0xffffffff
                  li           ra, 0x80000000
                  li           tp, 0x3f04d457
                  li           t2, 0xffffffff
                  li           s7, 0x0
                  li           a6, 0x80000000
                  li           a4, 0x80000000
                  li           a0, 0x0
                  sub          a0, t2, a0
                  add          a0, s7, s2
                  add          t2, s7, t2
                  addi         a5, a0, 1619
                  auipc        a4, 177841
                  addi         tp, t2, -1576
                  auipc        s7, 127557
                  lui          tp, 849927
                  add          t1, t1, t2
                  add          t2, s2, s7
                  add          a5, a0, s7
                  add          s7, a6, t1
                  add          ra, tp, tp
                  auipc        s2, 196528
                  addi         a6, t1, 1636
                  addi         s2, a0, -507
                  add          s7, a0, a6
                  nop
                  lui          ra, 6745
                  sub          s7, a4, tp
                  nop
                  auipc        t2, 738919
                  sub          s7, tp, tp
                  auipc        a4, 959754
                  auipc        tp, 152442 #end riscv_int_numeric_corner_stream_11
                  li           gp, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           ra, 0xffffffff
                  li           t2, 0x89a36d2c
                  li           s8, 0x0
                  li           a6, 0x0
                  li           t5, 0xd5535994
                  li           a5, 0xf0cd4d33
                  li           s3, 0xffffffff
                  li           t1, 0x80000000
                  li           t4, 0x80000000
                  addi         gp, s8, 1629
                  lui          a6, 995846
                  lui          t2, 220542
                  sub          s8, gp, a6
                  add          a5, t5, ra
                  lui          gp, 860354
                  lui          t1, 830576
                  nop
                  sub          t5, ra, t1
                  add          a5, gp, t5
                  lui          a6, 1019015
                  nop
                  add          t1, t4, ra
                  add          gp, a6, s3
                  sub          t1, a6, a6
                  lui          s8, 764324
                  addi         t2, a5, -680
                  auipc        gp, 965633
                  nop
                  lui          gp, 523695
                  addi         ra, a5, -184
                  auipc        t1, 319998
                  lui          t2, 877153
                  add          t4, t1, s8
                  addi         a6, gp, -1834
                  addi         s8, gp, -1019
                  lui          a5, 91106
                  nop
                  auipc        ra, 1016172 #end riscv_int_numeric_corner_stream_17
                  and          s7, s11, a3
                  addi         s5, s9, 157
                  xor          a5, s10, a6
                  and          s7, s10, a3
                  nop
                  srli         s10, s5, 25
                  ori          s7, s4, 132
                  ori          s2, tp, -1367
                  andi         a5, tp, -1647
                  slti         s8, t2, -113
                  addi         gp, s0, 1823
                  slti         s3, a2, -561
                  lui          t4, 1017197
                  or           sp, s5, gp
                  addi         t5, s2, 1950
                  auipc        s1, 727036
                  srai         s4, a0, 17
                  sltu         sp, a4, s7
                  auipc        s4, 88105
                  auipc        a6, 1043889
                  andi         s3, a7, 1490
                  and          a2, a6, s11
                  add          t4, a4, a4
                  auipc        s7, 292210
                  sub          t1, t4, s4
                  auipc        a2, 934325
                  srli         a0, a7, 24
                  or           t1, t1, a3
                  sra          t5, s5, s5
                  sltiu        s3, s3, -1991
                  sltu         s1, sp, a4
                  ori          s8, s3, 862
                  xori         a7, a7, -819
                  ori          sp, a2, -1007
                  srl          s10, zero, t3
                  add          s3, a4, s6
                  xor          a5, t6, s5
                  sra          s1, s10, sp
                  sltu         s7, t6, t1
                  sltiu        t5, t1, -762
                  sll          s8, t2, s8
                  slti         a6, a1, -571
                  srli         s0, a6, 7
                  srai         tp, tp, 5
                  nop
                  srai         sp, a4, 10
                  srl          s0, t6, s11
                  andi         a6, a1, 1347
                  lui          gp, 497401
                  or           t1, t6, ra
                  sltu         a5, s11, s3
                  sltiu        s10, t3, -248
                  slt          a5, s0, a0
                  add          a3, a1, zero
                  sub          zero, t4, gp
                  xor          sp, a1, t4
                  sltiu        gp, ra, -1449
                  ori          s4, tp, 1260
                  sltu         a4, a7, s7
                  auipc        s0, 402718
                  and          t5, ra, s3
                  sltiu        s2, s4, 1480
                  slti         a5, a2, 350
                  add          t6, t6, a7
                  auipc        s7, 247639
                  xor          sp, t4, s8
                  auipc        sp, 333961
                  srli         a7, s11, 2
                  ori          s3, s0, 37
                  sll          s6, a5, t6
                  ori          sp, s11, 535
                  nop
                  srl          s6, s6, s8
                  nop
                  xor          a3, s5, a0
                  addi         s3, s1, 665
                  ori          s4, s6, -1310
                  addi         a2, s10, -812
                  sltiu        a0, a2, -1452
                  xori         tp, s3, 1260
                  nop
                  xor          zero, s6, a1
                  nop
                  sra          s5, s11, t5
                  xori         t2, a7, -626
                  sltu         a0, t3, a2
                  sra          a3, t6, a5
                  lui          a4, 75067
                  slt          t1, a3, s8
                  srai         s10, s10, 8
                  sub          t4, a1, zero
                  auipc        s3, 1042522
                  slt          s6, a2, ra
                  sltu         s11, t0, s6
                  srai         sp, gp, 22
                  ori          a6, s4, 127
                  srli         s1, a2, 6
                  and          s7, a1, a5
                  auipc        s6, 887169
                  slti         s4, tp, -543
                  srli         a2, s6, 24
                  and          s11, t1, a2
                  sll          t5, s1, ra
                  sub          t1, s8, s10
                  andi         tp, s6, 742
                  sltiu        s1, a5, -342
                  sltiu        sp, a7, -127
                  add          a3, zero, a2
                  slli         tp, a4, 28
                  sub          s6, s2, a4
                  sltu         zero, s7, s8
                  xor          sp, t4, a1
                  lui          a5, 205007
                  slti         s5, s0, 1113
                  sub          ra, sp, s5
                  or           s3, t1, t1
                  slti         s11, s7, 1901
                  lui          a4, 486403
                  ori          t5, s7, -650
                  or           s8, t6, ra
                  addi         s2, a3, 1255
                  and          a5, t1, a5
                  nop
                  andi         t1, a1, -423
                  auipc        gp, 352140
                  sltiu        a7, s7, -143
                  andi         a1, zero, 40
                  andi         a1, zero, -1492
                  auipc        a7, 306847
                  nop
                  andi         s0, t0, 1996
                  addi         ra, t3, -264
                  sltu         s3, s11, t3
                  slli         tp, s5, 6
                  srai         a3, s6, 25
                  sra          t4, t5, s5
                  sltu         a7, s11, t6
                  slti         a3, a1, -779
                  xori         s2, s10, 321
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           s10, 0x80000000
                  li           a1, 0xffffffff
                  li           ra, 0xffffffff
                  li           tp, 0xf6896ca
                  li           a4, 0x0
                  li           sp, 0xa97c3e77
                  li           a2, 0x0
                  li           t4, 0x0
                  li           s3, 0xffffffff
                  addi         a1, s8, -190
                  add          s8, t4, sp
                  add          s8, s8, ra
                  sub          s10, s10, a1
                  add          a1, sp, ra
                  addi         a4, ra, 249
                  addi         ra, sp, -862
                  nop
                  add          a2, sp, s8
                  lui          t4, 482514
                  lui          s8, 343293
                  add          s8, a4, a1
                  sub          s3, a2, tp
                  addi         s10, t4, -1514
                  addi         a4, t4, -647
                  addi         a2, tp, 1670
                  nop
                  nop
                  auipc        t4, 95145
                  addi         s8, a1, -1200
                  lui          t4, 985555
                  addi         t4, t4, 390
                  auipc        t4, 470120
                  addi         a4, sp, 1747
                  lui          s3, 511362
                  lui          t4, 846376 #end riscv_int_numeric_corner_stream_16
                  xori         s7, s11, 1091
                  addi         s5, a1, 1268
                  andi         a4, a7, 1203
                  and          s5, t3, s10
                  sra          t4, s6, sp
                  srli         zero, s6, 20
                  sll          t2, t1, t6
                  srai         s11, s2, 9
                  srli         s3, a5, 9
                  xor          ra, s6, a5
                  xori         s5, t5, -903
                  sltiu        t5, a2, -1934
                  auipc        s11, 116644
                  xori         a4, s0, 568
                  sub          t5, s4, a1
                  slti         s6, a1, -822
                  slt          s4, t3, s8
                  slli         a6, s1, 12
                  srli         sp, t0, 6
                  addi         a4, s4, -883
                  sra          s2, sp, s7
                  slli         s1, a1, 31
                  slt          tp, a5, s4
                  and          s8, a3, ra
                  xor          s4, t1, a7
                  srli         s5, t5, 17
                  xor          tp, s8, ra
                  ori          s8, tp, -277
                  xori         s0, s5, -1968
                  addi         s5, a5, -116
                  andi         ra, t1, 64
                  slli         s2, sp, 11
                  lui          s0, 719121
                  add          a5, a7, s10
                  sltu         ra, zero, a7
                  andi         a4, a5, 1121
                  xor          a2, s2, s11
                  nop
                  srli         a5, t5, 5
                  lui          zero, 559439
                  slti         sp, s1, 933
                  sra          t5, t6, s7
                  srli         a5, zero, 1
                  sub          s0, s5, s5
                  lui          s0, 365812
                  and          t5, a3, s9
                  slli         a7, tp, 9
                  ori          t6, ra, 1108
                  sra          sp, s5, t5
                  addi         s10, a1, -1307
                  srli         s10, t2, 29
                  srl          t1, a7, s7
                  and          sp, a3, s7
                  srl          a6, s7, sp
                  sll          a2, a3, a2
                  srl          gp, s1, a2
                  srl          s2, s5, t1
                  srli         a0, t5, 5
                  nop
                  srl          a0, tp, s9
                  sltu         s1, s2, s5
                  xori         a7, s1, 1725
                  ori          a2, s8, -687
                  sltu         a3, s8, s8
                  and          s2, gp, s9
                  sltu         gp, t4, t4
                  addi         s0, a7, 374
                  nop
                  srl          s2, s11, a6
                  or           a3, tp, t2
                  lui          zero, 1037125
                  addi         s1, a2, -580
                  slti         s8, ra, 598
                  sub          a3, s5, s4
                  sltu         t2, s2, a3
                  sra          gp, s1, s6
                  srli         a5, s8, 14
                  addi         a2, s2, -149
                  slt          a0, a2, s0
                  srl          a6, ra, s3
                  sltu         t1, zero, s11
                  sltiu        s2, t1, -966
                  sltu         s6, sp, s6
                  add          a6, s0, s10
                  slli         zero, s9, 6
                  nop
                  srli         zero, s5, 10
                  sltiu        a5, s7, 1692
                  sltu         tp, s3, t3
                  add          s3, ra, t1
                  sub          t2, gp, s10
                  addi         s4, s3, 868
                  auipc        s5, 390417
                  slti         s7, a7, 1007
                  sltiu        t2, a7, -1034
                  addi         s0, s0, -1550
                  sltu         s3, s10, s8
                  slli         a1, s7, 1
                  sub          t4, t1, t2
                  sltiu        s4, t1, 1508
                  lui          t4, 501273
                  ori          gp, t5, 1432
                  srl          gp, s10, t3
                  xori         a6, s7, 1998
                  andi         a6, s11, -656
                  sltiu        s2, tp, 528
                  slli         t5, s7, 4
                  auipc        gp, 544320
                  xor          t6, zero, a2
                  srai         ra, t6, 22
                  sltu         a5, a4, s7
                  andi         a4, tp, 2027
                  lui          s10, 626899
                  srai         s11, t5, 23
                  andi         s1, t1, 182
                  ori          s4, s8, 1220
                  and          a3, gp, gp
                  lui          zero, 57943
                  srai         zero, sp, 16
                  slti         s8, a6, -592
                  lui          a3, 855607
                  slli         sp, t3, 13
                  add          s3, t6, s0
                  and          s5, s1, s7
                  or           t2, s6, s2
                  slti         a4, s7, 1327
                  srl          tp, a3, gp
                  srl          a4, t0, s9
                  xor          ra, s9, s7
                  slli         s4, t3, 13
                  xor          a6, s0, t3
                  sub          a4, t5, t3
                  slti         s4, ra, -569
                  sra          tp, s4, a1
                  slt          sp, s1, a2
                  srl          a6, a7, t4
                  and          s7, s8, a0
                  sub          a5, s5, s2
                  slli         s7, s11, 22
                  srli         a6, s11, 29
                  andi         s3, s9, -1483
                  sltu         a7, s8, t5
                  xori         sp, s3, -141
                  slli         s6, s0, 6
                  and          s3, a0, t0
                  and          tp, sp, a2
                  sltu         s2, s6, a5
                  and          a2, a6, s7
                  or           s7, s0, zero
                  xori         s7, gp, -606
                  lui          s10, 764233
                  xor          t6, s11, s2
                  slti         s4, zero, 1069
                  srli         a5, s7, 0
                  srl          s10, t0, t5
                  andi         s5, s3, 362
                  sra          t5, gp, ra
                  addi         a5, s8, 752
                  andi         a2, t6, 827
                  slli         s3, s2, 11
                  and          s11, a6, s10
                  li           gp, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           ra, 0xffffffff
                  li           a3, 0xffffffff
                  li           sp, 0x7e91f4f6
                  li           s0, 0xffffffff
                  li           a4, 0xffffffff
                  li           s10, 0x80000000
                  li           s2, 0x80000000
                  li           t5, 0x0
                  li           s5, 0x0
                  nop
                  add          sp, sp, s10
                  sub          sp, a3, s2
                  addi         a4, s10, 369
                  auipc        s2, 290157
                  add          ra, s0, s0
                  sub          ra, t5, gp
                  lui          sp, 143806
                  auipc        sp, 460431
                  addi         gp, s0, -1881
                  add          a3, s10, a3
                  auipc        ra, 904370
                  add          t5, gp, sp
                  add          t5, s0, s0
                  lui          sp, 901034
                  sub          a4, s2, a4
                  addi         s5, s0, 1567
                  auipc        t5, 23150
                  add          s0, sp, gp
                  add          ra, s2, t5
                  add          s5, sp, sp
                  addi         s5, s0, 1727 #end riscv_int_numeric_corner_stream_10
                  sltu         zero, s10, t4
                  ori          s7, s6, 1873
                  sub          s3, t3, a4
                  sltiu        a1, t2, -1606
                  lui          ra, 424028
                  addi         a2, a5, -1512
                  srli         s5, s7, 4
                  sltu         s7, t5, tp
                  and          s0, s7, s3
                  nop
                  xor          tp, a7, s10
                  sltiu        a0, t6, 1527
                  addi         a0, a7, -1305
                  slt          s8, a6, s5
                  sll          a7, t0, a3
                  slti         tp, t2, 894
                  slli         s1, zero, 2
                  nop
                  slt          s4, ra, s9
                  or           t5, sp, a5
                  sub          t2, s0, tp
                  sll          tp, t3, s10
                  or           s8, s1, t1
                  srli         gp, t4, 27
                  addi         ra, a1, -1518
                  sra          a4, a2, a5
                  sll          s6, t4, s10
                  slli         t2, s9, 25
                  sub          t4, s5, s9
                  xori         t6, t2, 301
                  add          ra, s4, a3
                  ori          s11, a7, -1905
                  lui          t4, 415742
                  add          s5, a3, s3
                  srai         t2, tp, 23
                  sra          a2, sp, t3
                  xori         s7, s10, -539
                  sub          s3, ra, t4
                  andi         s8, a0, 1203
                  nop
                  xori         s4, a1, 773
                  xor          zero, a4, t4
                  auipc        a2, 369285
                  lui          s7, 868081
                  sub          s5, s2, s10
                  slli         s7, a2, 31
                  sub          s7, zero, s10
                  auipc        zero, 874463
                  add          s8, s6, a7
                  addi         gp, s7, -736
                  srai         s1, s8, 24
                  srl          s3, s3, a3
                  srai         a0, s7, 17
                  srli         s8, ra, 19
                  xori         a3, t2, -839
                  nop
                  slti         s1, s0, -829
                  xori         a5, t2, -80
                  srai         s8, gp, 19
                  and          s8, a1, t1
                  nop
                  addi         a3, ra, 647
                  and          sp, a7, s5
                  sltiu        s8, tp, -1900
                  addi         t4, a7, -799
                  slt          t5, gp, t2
                  lui          t2, 862020
                  srai         s3, s7, 15
                  or           a2, a0, t4
                  addi         s2, a6, -885
                  xori         a2, tp, -54
                  slli         s8, s3, 13
                  srli         ra, tp, 7
                  ori          a5, s9, 1707
                  sltiu        s7, s6, -786
                  lui          s1, 522121
                  srl          s2, s7, t4
                  add          a7, s3, s3
                  and          s4, t1, s5
                  addi         s0, sp, -75
                  slt          t6, s4, t0
                  slli         a3, a4, 8
                  sra          s2, sp, a5
                  xor          s6, a1, s8
                  sra          s5, s5, a3
                  auipc        t1, 736692
                  nop
                  sltiu        s1, s8, 2000
                  andi         a5, s8, 932
                  sub          tp, s3, t3
                  srl          sp, t3, zero
                  sltiu        t6, s4, -516
                  slti         s6, a0, -595
                  sltu         t1, s6, t6
                  addi         s5, sp, 1576
                  xori         a3, s8, 845
                  andi         t1, s9, -1917
                  lui          a6, 560665
                  ori          s2, s6, 1260
                  xori         s5, a1, 1776
                  andi         t2, s3, -2044
                  sub          s1, a2, sp
                  ori          a1, a3, 1663
                  andi         s5, t5, 199
                  add          s11, tp, sp
                  or           s3, a0, s6
                  xor          t1, s9, ra
                  nop
                  auipc        t6, 674477
                  auipc        s7, 703124
                  sub          gp, a6, t0
                  sltu         s1, s9, s10
                  sltiu        t1, t3, -686
                  sra          tp, s3, s0
                  auipc        t4, 541834
                  sra          t6, s5, a2
                  sltu         s4, t3, a0
                  xor          t2, a1, a7
                  sra          s7, t1, s11
                  srai         a0, s1, 13
                  sltiu        t2, s4, 535
                  add          t1, sp, a1
                  slt          gp, zero, zero
                  slt          s1, t4, s0
                  slt          s8, s7, zero
                  lui          s10, 273706
                  xori         s6, s7, 829
                  auipc        a5, 113779
                  slt          s5, a1, t4
                  andi         ra, s1, -184
                  and          s8, s1, tp
                  sll          s0, s3, s9
                  srl          gp, a6, a2
                  andi         s0, s10, -1702
                  lui          a2, 168345
                  srli         s3, a1, 7
                  or           t4, gp, gp
                  lui          s8, 908513
                  sltu         zero, a1, s7
                  addi         ra, s10, 239
                  sll          a1, a7, s3
                  lui          s1, 730075
                  sub          t5, a4, t5
                  srl          s0, a5, a3
                  andi         a2, t4, -698
                  xor          s3, s9, gp
                  srai         a3, a2, 24
                  slti         s0, sp, 1501
                  nop
                  slti         gp, s9, 144
                  sll          s6, t2, s6
                  or           t4, t4, s8
                  slli         a0, s7, 3
                  xor          t6, a7, s2
                  slti         s6, a6, -806
                  xor          s8, a0, a3
                  slli         t2, s4, 25
                  or           a5, s9, a7
                  slti         ra, t4, -2044
                  xori         t2, s11, -1884
                  sra          zero, s1, t2
                  sltiu        tp, tp, -343
                  sltiu        s8, a4, -1162
                  slli         a7, gp, 29
                  xori         a1, sp, 796
                  and          gp, a6, t2
                  srli         s3, t2, 5
                  sub          s11, s2, gp
                  and          t4, t0, s1
                  sra          t2, t3, s6
                  xor          t2, t5, s9
                  slti         s10, s2, -1385
                  sub          t1, t3, a1
                  or           s10, a0, s8
                  sltiu        a2, a4, -92
                  sub          a2, s5, tp
                  srl          ra, a7, tp
                  xori         s0, t4, 239
                  sll          s3, s6, zero
                  andi         s2, s3, 1567
                  srai         s10, tp, 4
                  xori         s6, s8, -605
                  srli         t1, a1, 26
                  and          s8, s2, a5
                  sll          s1, s5, t3
                  sll          s7, t6, s11
                  slti         zero, a1, -1483
                  srli         t1, a2, 5
                  nop
                  add          a2, t2, s4
                  sll          t4, a7, t0
                  slli         s2, a4, 0
                  srl          s4, a6, s0
                  slli         s8, s6, 17
                  xori         s2, ra, 1674
                  addi         s10, t4, -1324
                  ori          a5, a0, 2043
                  addi         a2, s0, -27
                  add          s5, a0, a1
                  addi         tp, a5, 769
                  ori          t1, s6, -423
                  lui          s6, 887910
                  nop
                  sltu         sp, s3, t0
                  andi         s5, t1, 122
                  sll          s1, s10, t4
                  srl          s6, t0, a5
                  addi         tp, a4, -1479
                  sub          s3, a1, s1
                  slt          t4, s10, t4
                  andi         a2, s11, 1088
                  auipc        s7, 1034850
                  slt          a7, a7, a4
                  srli         a6, s9, 28
                  or           gp, s2, s0
                  sltu         sp, a7, s8
                  and          a5, gp, s7
                  xori         a3, a3, -250
                  sub          s11, s4, s11
                  sltu         s7, s3, t4
                  add          t6, t5, s4
                  ori          ra, a3, -381
                  lui          a7, 675278
                  sltiu        tp, s5, 1326
                  slt          s3, t4, a2
                  add          s11, s7, s5
                  srai         t5, a3, 0
                  slt          zero, t2, s6
                  srai         s5, a1, 17
                  srai         a6, s5, 28
                  slti         tp, t1, -1665
                  sltu         s5, a1, t5
                  xori         sp, a5, -640
                  sltiu        t4, t6, 1728
                  add          s4, s2, tp
                  or           s4, s1, t4
                  nop
                  lui          s2, 446068
                  sltiu        sp, ra, -147
                  sll          a1, s0, a5
                  slli         t5, t6, 27
                  and          a4, ra, s1
                  auipc        s1, 208025
                  xori         s8, t5, -882
                  sltiu        s6, t0, 651
                  addi         t5, s3, -850
                  srai         tp, s9, 6
                  xori         s11, t4, -310
                  ori          s5, a0, -878
                  sltiu        a5, s2, 176
                  sub          t6, a1, s6
                  ori          a5, s3, 926
                  lui          a2, 362537
                  lui          s6, 235610
                  andi         a2, s8, 587
                  lui          a1, 590835
                  and          s11, a7, zero
                  andi         tp, t5, 576
                  slt          s3, a6, a4
                  srai         t6, a5, 30
                  sub          a6, a4, a3
                  slt          s11, s10, t1
                  auipc        s3, 387357
                  srl          t5, t4, s1
                  xori         s11, tp, -1359
                  ori          a7, a0, 1136
                  slti         t6, s8, 1232
                  xor          t4, s0, tp
                  sra          s6, t1, a2
                  sra          a5, a3, s3
                  slt          a6, s10, s11
                  auipc        s6, 785295
                  or           zero, t6, s8
                  lui          s1, 472506
                  ori          s6, zero, -358
                  sub          s0, a5, s11
                  ori          s8, s7, -608
                  srai         s11, s4, 18
                  srai         s1, t4, 4
                  slli         a7, s8, 9
                  andi         zero, a0, -463
                  slti         s2, t1, -329
                  auipc        s5, 71545
                  and          t2, t5, t3
                  add          t4, t4, gp
                  ori          ra, s10, -1530
                  srai         t4, s4, 11
                  addi         s6, s10, 1684
                  addi         s3, t4, 383
                  or           s7, s10, t0
                  slt          a4, s0, s5
                  sra          a7, t2, t3
                  or           s8, s11, a3
                  addi         s1, s10, 1660
                  ori          t2, tp, 475
                  xori         zero, s7, 1741
                  or           ra, s3, s8
                  sll          s1, s10, s0
                  srli         zero, a5, 1
                  sll          a5, s9, a4
                  auipc        a6, 2600
                  or           a4, s0, a4
                  or           gp, a1, tp
                  xor          a1, ra, s8
                  slli         zero, s1, 26
                  slti         a0, a2, 1006
                  sll          gp, s3, t3
                  nop
                  srai         sp, tp, 4
                  sub          zero, a7, a6
                  srli         s7, t0, 21
                  auipc        ra, 884679
                  xor          s11, s7, a1
                  lui          tp, 204625
                  slli         a2, a1, 30
                  andi         ra, t0, -611
                  slli         s0, a4, 29
                  lui          s1, 887099
                  slt          ra, zero, t1
                  andi         s10, s6, -829
                  xor          t5, s10, s3
                  or           s6, a2, a2
                  add          t2, a5, sp
                  slli         s2, a4, 3
                  or           t1, s0, a1
                  sra          s11, a5, t2
                  srai         a0, t3, 2
                  srai         t2, s7, 12
                  auipc        s7, 527185
                  lui          s1, 316400
                  lui          t6, 831701
                  sll          gp, s9, t6
                  srl          a4, a1, a4
                  slti         s5, tp, 422
                  add          s1, gp, t0
                  slli         a5, tp, 1
                  and          s1, s0, a0
                  srli         s6, a2, 9
                  xor          s0, s5, ra
                  or           a0, s9, s2
                  slt          a4, s3, s7
                  auipc        s7, 981337
                  srl          s6, a6, ra
                  auipc        s5, 656508
                  add          a4, a0, zero
                  and          t6, s6, a0
                  srli         s2, a4, 13
                  xor          s4, a5, s3
                  srai         s8, t4, 20
                  auipc        s7, 389042
                  nop
                  srai         a7, a4, 12
                  xor          a3, s5, s0
                  addi         a4, s6, -871
                  and          a5, s6, s4
                  sltiu        s0, s2, -1583
                  sub          zero, gp, sp
                  sll          a4, a5, s9
                  sltiu        a3, s4, 511
                  add          gp, a4, tp
                  lui          s7, 99789
                  sll          s2, s2, s2
                  srai         a0, s3, 5
                  ori          a6, zero, -939
                  srl          t2, sp, s3
                  xor          a0, s10, t2
                  andi         tp, a7, 604
                  or           s2, s0, t2
                  lui          t2, 674599
                  srl          t4, t2, a1
                  xori         s6, s0, 1709
                  sra          a4, s6, a0
                  sll          tp, s8, a3
                  sra          s5, sp, s10
                  xor          s6, s0, s0
                  srli         t4, s11, 13
                  srl          a6, gp, t3
                  andi         a7, s11, -487
                  andi         a3, tp, 995
                  sltu         a4, a4, a3
                  xori         s4, s3, -1754
                  srai         ra, t3, 25
                  srl          s6, t2, t2
                  or           s8, t4, s10
                  xor          a2, s4, a1
                  nop
                  andi         s4, gp, -490
                  sltiu        t6, zero, -892
                  sltu         s4, a6, s1
                  xori         s1, s3, -1077
                  sub          a7, s10, t0
                  andi         t1, t4, 2019
                  nop
                  auipc        a3, 509962
                  srl          s5, s7, s8
                  sltiu        a7, s3, -110
                  srl          s5, a0, s8
                  sltiu        t4, a0, -409
                  nop
                  nop
                  xor          t2, a5, a3
                  slti         s10, a1, 691
                  and          sp, a2, t4
                  or           s1, s4, s5
                  sra          s8, t0, gp
                  sub          s1, sp, s11
                  ori          s8, t2, 913
                  xor          s10, t3, a7
                  xor          a6, a5, t4
                  slti         a2, s11, 1409
                  sltiu        t5, s7, 603
                  and          gp, s1, s9
                  srl          s0, t2, s11
                  srl          s4, t5, s9
                  slli         s1, a7, 13
                  ori          ra, a5, -604
                  xori         s6, t5, -1541
                  auipc        a6, 297366
                  add          s7, s10, a1
                  add          s0, s10, a7
                  sub          s3, s5, sp
                  sltiu        t4, t3, -1998
                  xori         a3, t1, 2005
                  sub          t6, t6, sp
                  sltiu        s7, a0, -1505
                  sltiu        sp, s6, 937
                  sltu         zero, s5, t6
                  addi         a3, a0, 1130
                  add          t4, a4, t6
                  sra          a1, s1, t6
                  srl          s0, t2, zero
                  xori         a3, a1, -212
                  ori          t1, t6, -775
                  ori          a6, t2, 36
                  sra          s2, a0, s8
                  or           s4, s4, s3
                  addi         s7, a0, 1198
                  ori          tp, s0, 605
                  add          s7, s5, t1
                  sltu         s1, a0, a0
                  add          s5, a4, s11
                  xori         s6, t6, -1404
                  slli         ra, t2, 7
                  li           a4, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           a2, 0x0
                  li           s1, 0x80000000
                  li           a0, 0x80000000
                  li           s6, 0xffffffff
                  li           sp, 0xffffffff
                  li           t2, 0x80000000
                  li           gp, 0x0
                  li           s3, 0x80000000
                  li           s8, 0xffffffff
                  nop
                  addi         gp, a0, 174
                  nop
                  lui          sp, 508948
                  nop
                  nop
                  nop
                  addi         a4, s6, 857
                  lui          a0, 469098
                  add          a4, s6, sp
                  lui          a2, 11319
                  lui          s1, 513015
                  add          a0, s6, s1
                  addi         s1, s1, -989
                  lui          gp, 938376
                  nop
                  addi         s1, a2, 657
                  auipc        a2, 627839
                  add          t2, sp, sp
                  add          s1, gp, s8
                  auipc        sp, 265798
                  nop
                  addi         t2, a2, -537
                  addi         s3, a2, -1697 #end riscv_int_numeric_corner_stream_12
                  xori         a2, a4, -141
                  and          a2, s8, t0
                  xori         a2, a2, 1139
                  ori          s8, s0, 930
                  slt          t6, a6, s2
                  srai         a2, a3, 27
                  ori          t6, s9, 884
                  addi         s5, a5, 32
                  srli         a2, s10, 20
                  sra          a6, s5, gp
                  ori          a5, a5, -109
                  xori         t1, t3, -483
                  andi         s6, s7, -748
                  slt          s2, s6, s11
                  srai         a1, t4, 4
                  sll          s6, a0, a0
                  slli         a3, s1, 5
                  slt          t6, t5, t1
                  slli         a7, s11, 13
                  srl          s3, sp, t4
                  srli         a6, s5, 29
                  add          t1, a5, s3
                  andi         tp, t6, -1132
                  andi         s11, a6, 533
                  lui          a1, 114510
                  sltiu        s10, t4, 141
                  slli         s1, gp, 26
                  nop
                  ori          a2, t3, 543
                  sra          a6, a1, s10
                  srai         a1, t2, 4
                  xori         zero, s5, -1152
                  slli         t2, s3, 11
                  lui          s0, 595054
                  sub          s10, s10, a2
                  sub          a7, t4, zero
                  andi         s2, a5, 1361
                  srli         sp, s8, 14
                  srai         t2, t4, 28
                  slli         sp, s11, 9
                  and          t4, a2, t1
                  sll          t2, s9, s9
                  slli         s4, t6, 18
                  nop
                  nop
                  addi         a1, t4, 628
                  sltiu        s3, ra, 862
                  sltu         t2, s7, t4
                  add          s4, s5, t4
                  add          t4, s4, zero
                  slli         s1, t1, 4
                  ori          a6, s1, -702
                  sub          t5, s2, t2
                  or           a5, s7, s11
                  lui          t5, 401166
                  sltiu        s2, a7, 9
                  slli         s7, s10, 9
                  sub          s5, s3, s1
                  xor          s0, t1, t5
                  slt          s11, a3, s4
                  nop
                  srli         a4, gp, 17
                  auipc        s1, 648455
                  add          a2, s8, gp
                  slli         s11, s8, 26
                  sub          s7, a7, s8
                  slli         t1, s4, 25
                  addi         s6, s10, -1146
                  srl          s6, t2, s3
                  add          a5, s10, s8
                  and          t4, s6, a4
                  sra          t1, zero, zero
                  or           t4, t6, s5
                  srli         a6, sp, 30
                  slti         a6, t0, 1473
                  srli         ra, t1, 13
                  add          ra, a3, s6
                  srli         s7, tp, 5
                  addi         a3, a0, -1907
                  or           s3, t2, s3
                  sltu         s5, gp, a4
                  slti         t1, s5, -1168
                  and          a4, s3, zero
                  sltu         t4, tp, a4
                  slli         a4, s6, 13
                  xor          tp, ra, t0
                  auipc        a2, 923163
                  addi         zero, a0, -510
                  addi         a3, a4, -1947
                  slti         s2, s6, 2035
                  sra          a3, gp, ra
                  sltu         tp, sp, a0
                  srli         s1, t4, 5
                  add          t6, a4, gp
                  add          s10, sp, s4
                  srl          s3, zero, a2
                  srai         a7, a4, 30
                  sll          s4, s11, t4
                  addi         t2, a5, -1436
                  slt          a0, s10, s0
                  slli         s1, t2, 10
                  xor          a3, s2, s9
                  add          t4, s10, s0
                  or           a5, s5, a5
                  and          a2, t0, s5
                  lui          t5, 854823
                  slti         a4, t6, 1058
                  xor          s5, s4, t4
                  slli         s10, zero, 2
                  sll          tp, s10, a6
                  xor          s4, s11, s4
                  ori          s8, a6, -362
                  slli         t4, a7, 7
                  xori         s6, t5, -1527
                  srli         a3, s6, 4
                  or           sp, a1, t2
                  or           a0, s7, zero
                  nop
                  srl          a5, a4, gp
                  addi         s2, a2, -686
                  sll          s3, t2, a0
                  auipc        t1, 267330
                  lui          a1, 634053
                  andi         t1, s1, 1972
                  and          s2, s5, a5
                  andi         t5, s11, 1388
                  slli         t5, a1, 15
                  andi         s4, gp, -393
                  sra          s4, a7, a7
                  slti         t5, gp, -2009
                  or           t4, t1, gp
                  nop
                  andi         s6, t6, 59
                  ori          a0, t2, -1087
                  slli         a1, a7, 13
                  slt          s11, zero, t6
                  and          a2, s1, a7
                  sra          a6, t0, t5
                  sub          a7, s7, a1
                  slti         a2, s9, -1848
                  add          gp, s4, t6
                  xori         a2, s6, -1561
                  and          s8, t1, s1
                  sltu         a6, s0, gp
                  ori          t4, t0, -619
                  xor          gp, s1, s5
                  srai         s3, a4, 31
                  slti         s4, a6, -1919
                  xori         t1, s5, -2001
                  sub          s4, t5, a0
                  srli         s11, gp, 28
                  add          s1, a7, s0
                  lui          sp, 190232
                  sub          s2, a1, s1
                  slt          s6, s9, s9
                  slt          s4, tp, a3
                  auipc        a5, 75346
                  srli         s0, s3, 16
                  slli         gp, t5, 28
                  auipc        s10, 713149
                  or           s2, a4, t2
                  sltu         gp, gp, a7
                  sra          a6, a5, t0
                  sltiu        s6, a2, 1530
                  lui          sp, 204647
                  slti         t6, t3, -1868
                  sltiu        a4, s1, -971
                  add          zero, ra, s6
                  srl          s1, s4, a1
                  or           tp, s10, s10
                  srli         s4, a6, 18
                  add          tp, sp, zero
                  sub          t2, s2, a1
                  addi         s8, t6, 1157
                  sub          a4, s5, s8
                  sltiu        s5, a3, -1905
                  or           s8, s4, a4
                  and          s3, s4, s5
                  lui          a4, 69327
                  ori          s11, a5, 12
                  or           a7, zero, a5
                  addi         a1, t4, -114
                  xor          s7, ra, s1
                  sltiu        s8, s3, 633
                  slli         t2, t0, 19
                  xor          a4, t6, s5
                  auipc        s10, 1042070
                  xori         t6, a7, -536
                  ori          s4, a6, 1766
                  sltiu        s1, s2, 1763
                  and          t5, t3, t0
                  sub          a2, a6, a5
                  or           t1, ra, s4
                  auipc        a7, 949307
                  xor          s8, s6, a2
                  slli         t5, ra, 21
                  xori         ra, t6, -1260
                  srl          s2, zero, s10
                  sll          ra, s5, t1
                  slt          a1, t1, t0
                  auipc        tp, 663362
                  ori          a2, s10, 1721
                  sltu         t1, s3, s5
                  slti         s7, t1, 1740
                  srai         s6, a0, 29
                  sub          t4, s8, ra
                  srai         ra, sp, 24
                  and          a2, t6, a3
                  add          a7, a0, zero
                  xori         ra, a7, 1075
                  sub          a4, s10, zero
                  lui          s0, 207110
                  or           a0, a0, s9
                  xor          t5, t0, a6
                  andi         a4, a0, 1821
                  sltiu        a1, s0, 339
                  addi         a6, a7, 1374
                  xori         sp, t0, -1253
                  auipc        t1, 516818
                  sltiu        a4, t5, -1081
                  or           t5, a0, a7
                  sll          s4, s5, a3
                  ori          s3, s2, 387
                  andi         a6, ra, -1164
                  slli         a5, t5, 14
                  lui          t5, 814640
                  slli         s8, t4, 7
                  lui          t1, 841077
                  srai         s6, s11, 13
                  xor          a4, a6, t1
                  slli         zero, s5, 21
                  xor          s2, s5, s2
                  srai         s11, t6, 4
                  slti         s4, s4, 930
                  sltiu        t5, a3, 852
                  auipc        a0, 684575
                  srli         a7, s10, 11
                  sra          zero, sp, sp
                  xori         a3, a0, -1344
                  lui          s8, 457967
                  xor          a3, ra, s10
                  addi         tp, t2, -328
                  slt          t1, a7, a6
                  sub          a2, s4, a4
                  xori         tp, t2, 541
                  slti         a2, tp, -348
                  addi         sp, ra, 922
                  andi         s4, s4, 830
                  add          tp, s3, tp
                  sub          t4, s1, s2
                  or           t5, tp, s6
                  sltiu        gp, a3, -1588
                  srli         gp, s3, 24
                  xori         s3, t5, -948
                  or           a1, a1, s4
                  xor          a6, s0, t2
                  add          sp, a4, t5
                  slt          a4, a6, t2
                  auipc        a6, 368373
                  and          a4, a2, s2
                  lui          a0, 835362
                  sll          a5, s3, a4
                  srai         zero, s7, 2
                  sltiu        s4, t0, -1235
                  sub          a0, s0, a3
                  and          a1, t0, t4
                  srli         t5, a6, 22
                  sltiu        tp, a1, -619
                  xori         sp, s10, -1853
                  ori          s0, s9, 899
                  lui          a2, 981790
                  addi         a2, t2, -1637
                  lui          ra, 407175
                  srli         s0, s1, 0
                  nop
                  auipc        a2, 560228
                  xor          s7, a2, a6
                  xori         s7, s3, 1675
                  sra          s5, s5, s9
                  srai         a4, s1, 6
                  slt          gp, gp, a2
                  and          a5, s1, a6
                  xori         a0, tp, -561
                  auipc        s2, 142510
                  srai         a7, a2, 1
                  sra          sp, t3, ra
                  xor          a6, s7, t1
                  or           a3, s0, a2
                  or           s8, t0, zero
                  slt          a2, tp, s10
                  sltiu        ra, a0, 1419
                  add          t5, a4, s8
                  or           a2, a5, t1
                  sltu         s5, t1, a0
                  sltiu        s1, s2, 1218
                  xori         s6, s10, -130
                  xor          s10, s6, s8
                  xor          a3, zero, s1
                  xori         gp, a6, 240
                  sltu         a5, s8, s11
                  slli         s7, a4, 14
                  sltiu        s5, zero, -367
                  xor          a6, s2, s2
                  slt          a5, t6, s8
                  nop
                  xor          s8, t5, a7
                  and          tp, a7, sp
                  lui          sp, 859876
                  sra          t2, t1, a6
                  auipc        s4, 95247
                  and          t1, a2, a0
                  slli         sp, s8, 31
                  sltu         sp, s3, s11
                  lui          s3, 116012
                  srli         s4, a5, 6
                  nop
                  auipc        a3, 95998
                  xor          s0, a7, s7
                  sub          a3, s0, s8
                  nop
                  srai         s10, t1, 29
                  slti         a6, ra, 1712
                  srai         a1, a1, 0
                  add          s6, s3, s10
                  addi         s0, t1, 1842
                  nop
                  or           a5, ra, t1
                  or           tp, a0, a3
                  add          a3, s7, s0
                  add          a5, s11, s4
                  xori         s7, gp, -2033
                  nop
                  and          gp, zero, s1
                  srai         sp, t0, 21
                  srai         s8, s7, 31
                  add          s1, a1, a1
                  slt          s3, t5, s5
                  add          s4, sp, s0
                  slt          s3, a4, gp
                  or           s4, s5, t5
                  srai         a1, s0, 2
                  sub          a4, t0, t6
                  andi         a6, s5, -586
                  sub          t5, s2, a4
                  sll          s8, s4, ra
                  sub          zero, a5, s7
                  srli         s1, a1, 12
                  xor          a5, s10, t6
                  nop
                  add          t5, t4, a6
                  srai         s8, t5, 20
                  add          a0, s5, s8
                  sra          s6, s5, zero
                  xori         sp, t5, -571
                  slt          a3, s3, a2
                  and          ra, s0, sp
                  andi         t6, t3, -773
                  slli         a3, t5, 3
                  srl          s8, a6, t0
                  ori          zero, s2, -1421
                  xori         s8, a1, 1846
                  slti         a3, a2, -1793
                  auipc        s7, 403447
                  add          a3, a1, sp
                  sll          t6, s9, s6
                  slt          s10, s0, t2
                  srai         a4, t2, 1
                  slli         a7, s5, 5
                  slti         s1, gp, -469
                  xor          a6, tp, zero
                  ori          s8, zero, 1150
                  sub          tp, zero, tp
                  or           s0, s6, s3
                  srl          ra, zero, s4
                  sltiu        t2, a1, -1062
                  auipc        s6, 142077
                  srl          s5, a0, a5
                  slti         a3, t1, 591
                  addi         zero, zero, -532
                  xor          gp, s2, s11
                  lui          a3, 60508
                  xori         s2, a2, -98
                  and          s11, t6, s1
                  and          s11, t1, a3
                  addi         a4, s9, 1612
                  sll          s6, a3, t4
                  lui          s8, 295225
                  add          a7, s3, sp
                  lui          gp, 628198
                  slti         a6, s5, -475
                  srai         a7, a7, 29
                  auipc        zero, 961104
                  srai         s2, s9, 22
                  xor          s11, a7, s7
                  sra          t5, s4, a3
                  nop
                  and          t5, s7, t0
                  slt          a3, tp, t2
                  addi         a3, tp, -1726
                  or           s6, zero, t1
                  addi         s10, s11, -1197
                  sltiu        t5, t2, 1067
                  sltu         s3, sp, s11
                  sra          sp, a0, s1
                  sll          sp, t4, s11
                  slt          s6, t5, s8
                  sra          a3, sp, a5
                  andi         a1, t6, 1994
                  or           s7, a1, a7
                  sltu         ra, a5, a1
                  or           t2, s0, s11
                  slli         a1, a5, 20
                  sub          a1, t1, t3
                  srl          s3, tp, ra
                  or           s8, ra, tp
                  sltiu        s3, a2, -697
                  xori         t1, s8, 1132
                  srli         t1, t5, 29
                  slti         s3, t0, -1876
                  and          a7, a7, s5
                  slt          a2, t6, a3
                  auipc        a5, 746487
                  lui          s8, 716061
                  sll          s4, a1, s6
                  srai         sp, ra, 29
                  srl          a4, a6, a7
                  and          a2, tp, a2
                  ori          s10, s9, 722
                  slli         s8, t1, 0
                  srai         a4, s1, 8
                  slti         a1, t5, 680
                  lui          s7, 17040
                  auipc        s5, 514028
                  srl          sp, a4, s4
                  add          a6, a1, a2
                  slt          zero, tp, s11
                  auipc        s2, 489144
                  sltiu        t2, t2, 1675
                  andi         s4, ra, -255
                  srl          s3, s6, a3
                  add          t1, t5, s11
                  slti         t2, t1, 805
                  srai         tp, a3, 0
                  nop
                  addi         a1, gp, -353
                  nop
                  and          a3, t2, a0
                  xor          s8, s4, a6
                  slt          a1, t4, a6
                  andi         s5, s6, -1565
                  xori         gp, s7, 462
                  slti         t4, s6, -329
                  srai         a7, t4, 5
                  slt          s5, t6, s6
                  sltu         zero, a5, s11
                  nop
                  addi         t4, s8, 982
                  srli         a3, s11, 4
                  slti         a4, t1, -1518
                  sltiu        a4, a3, 1979
                  sltiu        a4, a3, -1263
                  andi         t1, t0, -698
                  xor          tp, s9, s2
                  sltu         s10, zero, tp
                  slt          a3, a6, s3
                  addi         a0, t3, -1503
                  auipc        s0, 799285
                  slt          a1, s11, s0
                  slli         s3, t4, 13
                  slt          zero, a3, s2
                  srli         tp, a4, 24
                  srai         s3, t2, 20
                  sltiu        ra, a6, -696
                  add          s5, s11, a5
                  srl          gp, t6, s5
                  addi         a7, s11, 79
                  slti         s5, a6, -1338
                  andi         a2, gp, 1330
                  add          t5, s11, t4
                  slli         s3, s0, 23
                  lui          s2, 825921
                  slli         t2, t3, 14
                  slli         a0, s0, 13
                  add          s6, a1, s3
                  sub          a7, t0, s6
                  addi         a1, gp, -1819
                  slt          t4, t0, t6
                  nop
                  sltiu        t1, a4, -614
                  add          a0, a0, s2
                  srai         a4, a4, 25
                  nop
                  sltu         a0, s4, t4
                  srai         t2, s6, 13
                  lui          a6, 814958
                  lui          zero, 381014
                  xor          a0, gp, s10
                  srli         t2, s2, 15
                  auipc        s1, 252542
                  lui          s0, 335239
                  nop
                  sll          s7, s6, tp
                  add          t6, ra, s4
                  addi         t5, s11, 369
                  or           s1, a3, t6
                  xor          s3, t0, t6
                  srli         gp, sp, 3
                  auipc        sp, 228034
                  slti         s11, a5, -791
                  sll          s2, s0, t0
                  slli         a0, s4, 25
                  nop
                  auipc        t1, 824889
                  auipc        t6, 638118
                  lui          a2, 370140
                  add          a0, s5, a6
                  sll          s6, s0, s1
                  or           a7, s0, s11
                  xori         s6, s3, -114
                  srai         t4, t5, 27
                  lui          s3, 312502
                  ori          s0, s5, -1389
                  nop
                  add          a7, a1, s11
                  ori          a1, s7, -1406
                  srli         s8, t5, 17
                  srli         s2, zero, 22
                  and          s2, s8, s1
                  srl          s1, gp, a0
                  sll          zero, s4, s10
                  sra          zero, s4, s3
                  srai         t1, sp, 12
                  sll          s11, tp, tp
                  sltiu        a7, s2, 908
                  auipc        ra, 316763
                  and          a6, t3, s9
                  add          a5, s4, s10
                  slt          tp, tp, s2
                  sub          ra, a6, s6
                  slti         t5, s2, 300
                  xori         a3, a6, -1319
                  lui          s10, 409442
                  sll          s2, s10, t2
                  srl          s10, a2, s7
                  add          zero, s5, t5
                  ori          s3, t2, 1028
                  xor          t5, a6, sp
                  auipc        sp, 962148
                  add          t4, a1, s4
                  or           a3, a2, s11
                  xori         a6, s7, -1766
                  xor          a7, s9, sp
                  lui          s1, 691887
                  sltiu        t5, tp, -1546
                  ori          s0, gp, -1909
                  slti         a3, a3, 734
                  xori         t4, s0, 1037
                  sub          gp, s5, zero
                  srli         gp, gp, 14
                  xor          t1, t0, ra
                  or           s7, sp, t6
                  srai         t5, a3, 9
                  sra          gp, a6, t6
                  srli         s10, s6, 5
                  slt          s0, s3, s3
                  srai         sp, sp, 11
                  or           a2, t6, s4
                  sltu         a3, s9, s4
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           s8, 0x80000000
                  li           t1, 0x762e024c
                  li           a1, 0x9a5c0ef2
                  li           a3, 0x6c876f28
                  li           tp, 0x80000000
                  li           t5, 0xffffffff
                  li           a5, 0x0
                  li           s7, 0xffffffff
                  li           s2, 0x80000000
                  auipc        a1, 104760
                  sub          tp, s2, a6
                  nop
                  nop
                  add          s7, a3, a6
                  auipc        a3, 843432
                  auipc        t5, 934583
                  lui          a6, 724831
                  add          t5, a6, a5
                  nop
                  add          s8, a3, a3
                  nop
                  add          a1, a5, s2
                  auipc        t5, 907865
                  sub          s2, a3, a5
                  sub          a5, a3, t5
                  lui          tp, 781189
                  add          t1, a5, a3 #end riscv_int_numeric_corner_stream_18
                  srai         a6, s4, 6
                  and          s7, t4, s9
                  and          s3, s3, t0
                  sltiu        gp, a1, -793
                  nop
                  add          a1, t2, s4
                  ori          a2, a2, 239
                  ori          tp, a7, -1986
                  srli         s10, s3, 21
                  lui          s8, 331771
                  sltiu        a1, s2, 720
                  slti         a0, a5, -2026
                  slli         s7, s5, 15
                  lui          s5, 247391
                  addi         a2, a5, 1483
                  sll          s10, a7, a4
                  xori         t1, a5, 1302
                  sltiu        t2, zero, -277
                  and          tp, t0, sp
                  slt          sp, s9, t5
                  slli         s6, t3, 2
                  xori         t1, a7, -2017
                  sra          a1, s10, t1
                  xor          a3, s2, a7
                  lui          a1, 520310
                  sll          s5, ra, a4
                  slt          s11, ra, t5
                  sltiu        tp, sp, 301
                  sra          a5, a1, t5
                  ori          t6, s10, -1265
                  andi         a0, t4, -2023
                  sll          a5, s11, s3
                  slti         s6, t2, -433
                  lui          a5, 1036535
                  lui          t6, 92630
                  and          t2, a3, tp
                  addi         s0, s1, -226
                  xori         a1, a4, -562
                  srli         t1, s6, 22
                  sub          a6, t4, a3
                  sltiu        s11, s9, 276
                  andi         s4, a7, -1990
                  slt          gp, a4, a0
                  add          a6, t3, s2
                  srl          ra, s5, a7
                  addi         s6, zero, -787
                  sub          s10, s8, s1
                  sll          ra, s6, gp
                  and          a1, s4, s5
                  sub          s2, t5, ra
                  or           s2, gp, s2
                  or           t2, a5, s8
                  andi         s11, s2, -596
                  srai         a5, s2, 27
                  auipc        s8, 688245
                  lui          a6, 693886
                  auipc        s11, 428773
                  srli         s6, s0, 15
                  nop
                  slli         a3, t3, 0
                  ori          s5, t5, 630
                  srli         s6, s5, 22
                  nop
                  slt          s0, t2, sp
                  or           s3, t5, s1
                  srl          a3, s8, sp
                  or           a1, t5, s10
                  lui          t6, 617091
                  slli         a6, ra, 14
                  srl          t5, a4, t6
                  xor          s4, a6, ra
                  slt          a5, a7, s0
                  xor          zero, t0, s7
                  srai         t6, s5, 11
                  andi         a4, t3, -1747
                  sltiu        t2, a5, 893
                  sra          a4, s11, zero
                  srai         s8, a0, 17
                  xori         a2, ra, 146
                  xor          t5, s3, s1
                  ori          gp, a4, -1364
                  add          s5, a7, s7
                  lui          t5, 117755
                  slti         a1, s7, -934
                  slt          t4, a0, s3
                  ori          t4, t1, -231
                  sll          a1, s1, a6
                  sub          t6, s8, t5
                  srl          sp, a3, s4
                  ori          s5, ra, 500
                  andi         tp, s0, 435
                  or           a1, s8, s0
                  srai         a6, t5, 17
                  xori         s4, s5, 1473
                  xori         tp, s0, 823
                  auipc        s8, 531439
                  slt          a7, zero, s6
                  sltu         ra, t1, a3
                  srai         s2, s11, 11
                  add          tp, t4, t1
                  xor          tp, a2, a3
                  add          sp, t1, s11
                  slt          a5, ra, s5
                  slli         a3, t0, 24
                  ori          s5, a5, 1133
                  srli         t5, a4, 3
                  xor          a6, t5, t5
                  auipc        t5, 505254
                  and          a1, a4, s1
                  srl          a0, a7, s7
                  slli         a4, s4, 25
                  andi         zero, a1, -723
                  srli         s10, t4, 21
                  add          s0, t3, t5
                  add          s8, s7, zero
                  sll          a0, s1, sp
                  slt          ra, s10, t4
                  ori          s2, s3, -748
                  srai         tp, s5, 30
                  srl          a1, s1, s6
                  srai         a1, a5, 19
                  sltiu        a0, a5, 1901
                  xori         a3, s7, 1130
                  slli         s1, a6, 17
                  auipc        s2, 457242
                  slli         a1, a6, 4
                  xori         t4, s1, 549
                  sll          a5, a0, a4
                  xori         s11, t0, -1838
                  ori          s4, s0, 242
                  sltu         sp, t5, s10
                  andi         a4, s9, 31
                  sltu         sp, s7, t3
                  slli         a6, a4, 30
                  sra          a3, sp, s9
                  sltu         s5, a1, t1
                  srai         gp, s3, 25
                  nop
                  and          t5, s1, a6
                  srai         s5, t0, 5
                  sltu         s8, s5, t6
                  srli         a6, s0, 13
                  srli         a7, a5, 15
                  lui          zero, 88462
                  sltu         s10, ra, s10
                  sltiu        s6, a1, 1134
                  sra          s7, t6, a1
                  sltiu        s1, s2, -1078
                  xor          t4, a0, s6
                  sra          tp, tp, a3
                  ori          a3, t5, 1837
                  slli         s3, zero, 24
                  srli         t5, a0, 14
                  slli         s5, s6, 14
                  srli         t1, a6, 15
                  or           s11, s3, a0
                  srli         s3, t1, 2
                  srai         s2, s0, 13
                  xor          s1, s6, t1
                  auipc        t6, 932350
                  sub          s6, s0, s2
                  slli         a3, ra, 6
                  srli         a5, t6, 18
                  lui          ra, 1000573
                  auipc        s5, 752306
                  srai         a0, t6, 23
                  lui          ra, 529136
                  ori          s4, t6, -1905
                  andi         t1, s7, 1874
                  sltu         a5, sp, a0
                  sltu         t5, a7, a7
                  addi         s8, a4, 1718
                  slti         a3, s0, -372
                  add          s2, a2, t5
                  srl          a0, s11, s10
                  or           tp, s6, t2
                  and          s0, a7, a5
                  sltiu        s3, s6, 1274
                  nop
                  sra          s10, a2, zero
                  sra          a6, t6, s5
                  auipc        a5, 245071
                  xori         gp, t3, -952
                  sll          a5, t0, t2
                  addi         a2, s8, -756
                  or           s3, s6, a1
                  sltu         s11, s0, s3
                  srai         a7, s5, 13
                  slli         a2, t1, 26
                  slt          s2, tp, t2
                  slti         s4, s3, 899
                  slt          t2, a2, t5
                  srai         s8, ra, 18
                  ori          s4, a3, -981
                  srli         sp, a6, 1
                  sltiu        s5, gp, -771
                  slti         s6, ra, -232
                  xor          t5, s2, s5
                  sub          s3, tp, t4
                  slt          a2, ra, s4
                  srl          t5, s5, t1
                  sub          t6, t3, s10
                  nop
                  srai         a6, s11, 29
                  slli         a0, s0, 8
                  lui          t6, 355985
                  addi         s0, t5, 1180
                  sll          a2, tp, a0
                  andi         a2, a6, -1585
                  auipc        t5, 177288
                  sra          a7, s2, a3
                  xori         s7, t6, -1008
                  srl          a1, ra, a1
                  sub          s4, a6, s1
                  slti         a4, s3, -1384
                  xori         s3, t2, -1464
                  slli         s7, t3, 3
                  addi         s6, t2, -983
                  sra          t1, s2, gp
                  slt          a3, t1, t3
                  sra          t4, s9, a2
                  nop
                  srl          s5, s0, a1
                  slli         zero, a6, 26
                  sra          a0, gp, t5
                  addi         s11, sp, -1702
                  sltiu        a4, a4, -995
                  add          s5, s1, s0
                  srai         gp, t0, 27
                  sll          a4, t3, a0
                  add          s6, s4, s1
                  slti         s6, a5, -355
                  addi         s1, zero, -1221
                  sll          t1, a5, t4
                  sll          a7, s4, zero
                  srli         t1, s11, 29
                  andi         ra, s5, -639
                  andi         s7, s10, -1516
                  srl          a5, a7, a6
                  and          a4, s7, t0
                  sra          t5, a7, t5
                  xor          t6, a5, s6
                  srli         a2, a1, 10
                  srl          s2, t4, s7
                  slt          s7, s1, s6
                  add          s3, tp, t4
                  srli         sp, tp, 31
                  sltiu        s1, t2, 326
                  addi         s0, s1, 2009
                  sltiu        s6, s11, 381
                  lui          s10, 828323
                  sll          t4, zero, zero
                  auipc        s10, 251604
                  addi         sp, a3, 2047
                  or           a7, a2, s2
                  sltu         tp, t1, s10
                  srai         a1, s2, 9
                  sll          s8, a4, ra
                  sltu         a6, s2, t2
                  srl          tp, s9, sp
                  andi         tp, t4, -1219
                  slti         t2, t1, -1623
                  srai         a0, t2, 21
                  auipc        s11, 163202
                  and          a3, s6, a0
                  slli         a2, s8, 1
                  srai         s6, a6, 1
                  xori         gp, s9, -755
                  sra          s6, t4, a1
                  xori         tp, t0, 989
                  slli         s5, sp, 26
                  and          gp, t6, s8
                  addi         a3, a3, -601
                  lui          s10, 689575
                  ori          t5, t3, 1878
                  andi         a4, s10, 1771
                  sltiu        gp, t5, 238
                  and          s8, gp, s3
                  sltu         t2, a3, s6
                  sll          s4, a2, s6
                  xor          a2, s1, s0
                  and          s10, s8, ra
                  xor          a2, a2, s2
                  ori          s10, s8, -1931
                  srl          t6, t1, s10
                  andi         s8, t4, -1505
                  ori          s1, s1, -915
                  nop
                  sll          ra, s7, s5
                  srl          s1, s3, t3
                  slt          s2, s8, s0
                  sltu         s10, s2, a7
                  sub          s4, s8, s2
                  srli         s3, a1, 6
                  srli         ra, a4, 22
                  srl          s0, s0, s8
                  xori         t1, a4, -765
                  sub          t6, s1, t5
                  add          ra, a7, t6
                  add          s1, zero, zero
                  srai         t5, s8, 15
                  srl          zero, sp, zero
                  add          s10, a2, t0
                  xori         a6, s5, -1007
                  auipc        s7, 780467
                  auipc        ra, 164855
                  andi         gp, a3, -1874
                  sub          s2, s11, s1
                  andi         zero, s3, -1554
                  sltiu        t4, zero, -166
                  and          a4, s4, t1
                  srl          t5, s8, a4
                  xor          s1, tp, gp
                  xori         ra, a3, 444
                  and          sp, a4, s1
                  nop
                  xor          t2, t4, a0
                  srai         a6, zero, 20
                  addi         t4, ra, 123
                  slt          tp, zero, s10
                  xor          a0, s7, a1
                  sub          s11, a5, t5
                  or           t5, zero, s3
                  or           s10, a7, a2
                  slti         s4, gp, -1506
                  srli         ra, a3, 20
                  auipc        t4, 11063
                  sub          s7, t2, a0
                  or           t6, zero, gp
                  xor          t4, s3, t5
                  add          s8, t0, a4
                  slt          sp, a5, s10
                  sub          s4, a7, a2
                  ori          t4, a3, -1973
                  addi         s11, t4, -1891
                  slti         s2, t5, 343
                  sltiu        a5, s6, -175
                  slti         s0, t6, -13
                  sltiu        a1, a6, -1283
                  nop
                  slt          s3, a3, s11
                  slti         a1, t3, -1998
                  auipc        s1, 165769
                  ori          a5, a3, 478
                  sub          s11, gp, ra
                  srai         a3, t5, 11
                  sra          s4, a3, s3
                  nop
                  or           a5, s1, gp
                  auipc        a0, 637345
                  slti         s0, sp, 1410
                  add          s3, zero, a5
                  addi         a1, s7, -1286
                  srli         tp, s7, 13
                  slti         t5, zero, 1775
                  nop
                  ori          t4, t1, 1617
                  lui          s8, 738205
                  sll          s3, ra, s5
                  srl          t1, a3, tp
                  ori          s2, gp, -683
                  slli         a1, a6, 13
                  slti         s10, s2, 1578
                  auipc        s3, 168398
                  sltu         a3, t4, gp
                  srli         sp, sp, 26
                  addi         gp, a4, -1872
                  lui          a0, 185837
                  sltiu        a5, s5, -133
                  auipc        a6, 958002
                  addi         t4, t5, 1116
                  andi         s1, sp, -1615
                  slli         a4, a5, 23
                  nop
                  lui          s1, 837333
                  addi         a5, a6, -798
                  lui          a2, 995675
                  srl          zero, s7, s7
                  sltiu        s2, s6, 2016
                  sub          a5, a0, t6
                  xor          s1, ra, s0
                  srai         ra, t0, 17
                  srl          zero, a5, t3
                  srl          gp, s1, s10
                  ori          s0, t0, 19
                  sltiu        t2, a0, 1651
                  nop
                  nop
                  sra          t5, a4, t1
                  add          sp, t6, tp
                  ori          sp, a5, -1099
                  srli         s11, a4, 31
                  or           a0, a3, a0
                  nop
                  sub          a4, ra, zero
                  srai         t6, a0, 18
                  sra          a3, s3, a2
                  srai         a5, a6, 8
                  sll          a6, s11, s2
                  srl          s3, t5, s2
                  add          s4, s11, s6
                  andi         s6, a7, -382
                  addi         t4, t2, 386
                  auipc        s0, 835807
                  srli         t5, t5, 29
                  xori         zero, s0, -1485
                  sltu         s7, tp, a6
                  srl          s5, s8, gp
                  andi         a3, zero, -1272
                  slt          t1, t3, a4
                  sll          a6, s9, s4
                  sltu         t6, a0, t0
                  slt          s4, s11, s7
                  sll          s4, s7, t0
                  srli         a5, s2, 17
                  sub          a2, s0, s6
                  xor          s0, gp, a6
                  sra          s7, a5, s3
                  sub          s0, s2, t2
                  or           a0, s1, s8
                  slt          zero, a2, a6
                  sra          s3, a6, s3
                  auipc        s2, 56276
                  or           s0, t1, s5
                  sra          s5, sp, s5
                  slti         a4, tp, 1371
                  xor          s5, a5, gp
                  sltiu        s2, s7, 244
                  slti         a7, a6, 2001
                  srai         a6, s3, 2
                  auipc        t4, 446861
                  xori         t4, a1, -999
                  srai         zero, s6, 14
                  auipc        a7, 220543
                  sltu         s4, s5, s9
                  or           a1, s11, a6
                  andi         a4, s3, -1342
                  addi         a7, t2, -993
                  sra          a5, s8, t3
                  ori          sp, sp, -1652
                  addi         s6, a4, -1953
                  sub          a3, s3, gp
                  sltu         s5, s9, t5
                  andi         s11, a2, 525
                  addi         s6, s8, 153
                  slti         s8, s0, -966
                  add          s5, s2, t5
                  srl          s8, t2, s1
                  xor          a5, t4, ra
                  or           ra, t2, a1
                  sra          s2, a0, a5
                  srli         s7, t5, 29
                  xor          a2, a1, a6
                  xori         zero, sp, -1707
                  andi         s2, s4, -444
                  slt          a3, t6, a6
                  xori         a7, t2, -813
                  ori          s0, s3, -896
                  srai         s0, t1, 15
                  slt          s0, t0, s4
                  sll          sp, a6, t5
                  sltu         tp, s5, t1
                  add          t2, tp, t3
                  andi         a0, s5, -188
                  slti         s11, s10, -792
                  addi         t5, s10, 1199
                  slt          s5, s3, s4
                  auipc        s1, 777778
                  andi         s0, s7, 1110
                  lui          s8, 443038
                  ori          a4, s8, 1804
                  and          s2, s5, a2
                  and          s1, a6, gp
                  add          s3, s2, s6
                  ori          a7, a3, 209
                  lui          t4, 1046830
                  lui          s10, 881584
                  nop
                  auipc        a3, 968492
                  slli         ra, s5, 31
                  sll          s7, a1, a1
                  andi         a0, s11, -949
                  nop
                  or           tp, s10, a5
                  srli         t5, t4, 11
                  nop
                  srai         s4, a1, 17
                  lui          ra, 332826
                  ori          a6, s5, -150
                  slli         s5, s10, 4
                  xori         s11, a3, 144
                  srai         a2, t3, 8
                  lui          zero, 1041037
                  sltiu        a0, sp, -1430
                  sub          a4, a2, s11
                  auipc        a3, 335582
                  or           s4, s0, s5
                  or           a5, tp, a1
                  auipc        t1, 898577
                  ori          s5, a0, 1266
                  sra          t4, a5, t0
                  srai         s0, gp, 31
                  srai         s4, s3, 24
                  addi         s8, t5, 57
                  slli         a0, a6, 18
                  slt          a1, t2, s6
                  xori         s8, tp, 865
                  add          a7, t0, s6
                  srli         a1, a1, 28
                  nop
                  srli         s5, a3, 25
                  srai         sp, a0, 22
                  srli         t5, t6, 6
                  add          ra, s11, tp
                  slti         a6, s6, 261
                  sll          ra, s7, a7
                  or           a2, t5, a6
                  srai         s11, s11, 26
                  ori          t2, t0, 1106
                  and          s7, a7, t0
                  slt          s4, s9, s8
                  srai         zero, a6, 31
                  sltiu        sp, s2, -215
                  slti         s3, a4, 1171
                  slt          a3, s1, s11
                  add          sp, a0, t4
                  ori          a6, s10, 1476
                  andi         s8, zero, 1112
                  andi         s5, s9, 1331
                  sltiu        sp, t3, -590
                  srli         t1, s10, 8
                  srl          tp, a7, a3
                  xori         s3, tp, -1990
                  auipc        t2, 256690
                  and          gp, t3, a7
                  srl          t6, s6, s8
                  sra          s1, s8, a3
                  addi         s7, a3, -482
                  add          t1, s3, a4
                  nop
                  sub          s3, s1, s11
                  srl          a5, t5, a0
                  srli         s6, s4, 29
                  lui          a1, 543431
                  sll          s6, a2, s5
                  slti         s5, t3, 1100
                  and          s11, a3, s7
                  xori         s6, s0, -474
                  srli         t1, s4, 27
                  srai         s7, s10, 17
                  addi         t2, tp, -1578
                  sll          t4, s8, s9
                  sll          s10, s3, a1
                  nop
                  xori         gp, t6, 618
                  sub          a3, a3, s5
                  srli         a6, gp, 9
                  sub          a1, s6, t0
                  or           s4, s4, t2
                  auipc        s5, 752513
                  srai         s7, gp, 12
                  sll          s8, s0, a6
                  add          s2, sp, t2
                  sll          tp, a3, s6
                  sltu         s7, s10, s4
                  sltu         a7, t1, a3
                  sra          a7, a4, zero
                  auipc        a3, 357346
                  and          s7, a6, gp
                  slt          a5, s3, a0
                  sltu         s11, t3, s0
                  sltiu        t4, a7, -657
                  and          ra, zero, s2
                  srai         zero, s11, 10
                  sltu         t6, a1, s10
                  slli         a3, tp, 23
                  slti         t4, zero, 186
                  xori         s8, a5, 1463
                  sltiu        t1, s9, 1390
                  sra          a3, t6, s7
                  srl          s4, tp, t3
                  srai         zero, sp, 23
                  add          t1, s6, s0
                  srai         a2, t4, 17
                  sll          a6, zero, a2
                  slti         t1, sp, -1915
                  addi         zero, s5, -921
                  auipc        s7, 510110
                  and          sp, t3, tp
                  nop
                  auipc        ra, 301939
                  sub          a1, tp, a2
                  nop
                  sra          t6, a4, s7
                  ori          a3, s9, -1943
                  xor          a6, a7, s9
                  slt          s0, a3, s4
                  srl          a2, a0, a1
                  addi         s5, a1, 708
                  or           a2, s10, a3
                  lui          a6, 962246
                  nop
                  xor          zero, s6, s2
                  srl          s7, s3, ra
                  andi         t1, s4, 354
                  lui          gp, 582774
                  and          tp, s2, sp
                  andi         s3, s9, -2007
                  ori          t4, a3, 1621
                  xor          s7, t2, a5
                  or           s4, a2, t5
                  slt          s1, t3, sp
                  sra          t6, s1, s2
                  srai         t5, s2, 1
                  sub          a3, s6, ra
                  xori         ra, s1, -893
                  or           s6, t3, a7
                  slt          a7, s4, a0
                  sltu         a7, s4, s3
                  srai         t1, sp, 24
                  sltiu        s11, t3, 372
                  srl          t1, zero, s4
                  or           s8, s1, gp
                  and          a5, a6, s3
                  addi         a1, a4, 645
                  ori          t4, t4, 952
                  add          s0, zero, s11
                  slli         t6, a3, 31
                  nop
                  xori         t6, s5, 168
                  lui          a3, 586111
                  sub          s4, s4, s10
                  ori          a1, t3, -382
                  srl          a2, t0, s11
                  slt          t1, s9, a7
                  sra          s11, t4, s5
                  add          s10, s10, gp
                  add          s4, a6, s4
                  xori         t1, t1, 21
                  xor          a6, s8, t3
                  lui          a5, 776522
                  sra          s4, a1, s1
                  slti         s4, ra, 56
                  srl          s11, s10, s11
                  add          a1, s6, s11
                  sltiu        tp, s4, 1925
                  sra          s11, t4, s2
                  and          a2, s11, s4
                  xori         a4, t3, 2010
                  sltu         ra, s3, t0
                  sub          a0, s11, gp
                  auipc        s3, 293552
                  and          t5, t5, zero
                  srai         a5, s6, 17
                  slti         zero, s1, -1889
                  sub          s1, s8, t5
                  andi         a0, s1, 1600
                  slt          gp, gp, t1
                  ori          t4, t1, 1293
                  or           ra, a2, sp
                  add          a7, a6, gp
                  nop
                  nop
                  nop
                  slt          a3, t2, t6
                  xori         a3, s6, 1241
                  lui          a1, 528248
                  slt          t5, t6, s0
                  srli         s6, s8, 4
                  slti         s3, t6, 1377
                  slti         s7, t2, -1208
                  or           s8, a5, ra
                  sll          a7, a1, a7
                  auipc        sp, 732010
                  srli         gp, t1, 2
                  xor          s1, t3, a6
                  or           gp, t5, s11
                  slli         s2, s5, 29
                  sltiu        a5, s3, 1894
                  andi         s1, ra, -1051
                  lui          tp, 724943
                  srli         gp, s5, 0
                  ori          t5, zero, 560
                  or           s7, s10, s4
                  nop
                  lui          a5, 274357
                  and          a5, tp, a4
                  and          sp, sp, s3
                  sra          tp, a2, s5
                  slli         a7, s1, 6
                  xor          s10, a7, a1
                  srai         t4, s10, 1
                  srl          zero, s9, t0
                  srl          t6, a3, s2
                  xor          zero, t1, a2
                  srl          t1, t1, s11
                  andi         t2, gp, 185
                  sra          zero, s9, s8
                  add          s6, a3, t4
                  srl          s11, t1, s1
                  sltiu        a6, s10, 1247
                  sltiu        a3, s3, 475
                  sra          s2, t2, t1
                  sltu         a1, t4, s8
                  lui          s0, 40122
                  sltu         gp, tp, s7
                  nop
                  nop
                  srli         t6, s8, 14
                  sub          a2, s11, a7
                  sra          a6, s9, a2
                  sub          s2, t1, s11
                  slti         s11, s9, 319
                  xori         t4, s3, 1366
                  sltiu        t1, s9, 446
                  slti         s8, t5, 1403
                  sltiu        tp, s0, 732
                  xori         t1, s0, -1782
                  ori          a4, a6, -477
                  slti         s3, s8, -323
                  add          t1, a5, s5
                  slli         sp, s2, 30
                  slli         a0, a6, 7
                  sra          ra, t6, s10
                  srli         s8, t5, 24
                  auipc        a5, 796970
                  lui          t5, 896151
                  and          t2, zero, sp
                  srli         s11, a3, 4
                  add          gp, a2, ra
                  sltu         a3, a7, t2
                  lui          s0, 449268
                  sltiu        t4, s6, 1216
                  and          t6, a5, a4
                  sub          a4, a1, a0
                  srli         a7, a7, 18
                  add          t4, a3, s7
                  sra          a0, a6, s4
                  slti         t2, s10, -1012
                  addi         t5, s5, 1267
                  slt          ra, s3, t5
                  sll          s5, a7, tp
                  slt          a4, s0, t2
                  auipc        s4, 562811
                  ori          s3, t3, -210
                  or           a3, a4, a5
                  slti         a7, t4, 18
                  addi         ra, s7, -302
                  sub          s5, a0, a6
                  lui          s7, 786446
                  ori          t5, zero, 283
                  and          s0, t3, s9
                  xori         a2, s4, -931
                  add          s8, s8, a6
                  addi         sp, s2, 1898
                  xor          t4, s5, s10
                  slti         s0, a3, 111
                  slt          t5, s4, s5
                  slti         a0, a0, -1936
                  auipc        s3, 873440
                  lui          s7, 773822
                  sltiu        a0, t2, -1302
                  slti         t2, s1, 572
                  lui          zero, 52620
                  lui          t4, 627008
                  sltu         t5, s9, gp
                  and          t2, sp, t6
                  sltu         t2, s0, s6
                  slli         a0, t3, 6
                  srl          s1, s3, t0
                  andi         s4, a4, 779
                  auipc        s11, 1031413
                  slli         t6, a4, 16
                  sltu         s6, a5, tp
                  sub          s8, s10, ra
                  srai         zero, s9, 14
                  or           t2, zero, t5
                  ori          s1, gp, 1625
                  sra          a7, a2, a6
                  lui          t4, 658466
                  addi         s4, t6, 1440
                  xor          tp, s5, s1
                  nop
                  sll          a7, t2, ra
                  sub          s7, a3, t0
                  sub          s7, ra, a2
                  slli         s6, a0, 13
                  lui          t6, 329186
                  lui          ra, 915722
                  srai         s7, a2, 22
                  srli         t4, a5, 14
                  slt          a0, a0, s11
                  slt          a7, a3, s2
                  ori          s8, s8, 379
                  add          s0, t1, s7
                  lui          s3, 184002
                  ori          gp, s2, -672
                  andi         a0, s1, -6
                  ori          s6, s3, -798
                  xor          s2, s3, a0
                  lui          gp, 50855
                  nop
                  sltiu        s11, a1, 1483
                  slt          s3, s4, s2
                  slti         s3, a1, -1019
                  sltiu        a1, zero, -1745
                  auipc        t5, 123990
                  and          s2, a1, t1
                  slti         a3, a5, 97
                  add          a5, s5, s11
                  andi         sp, s0, 861
                  or           a1, a2, t0
                  and          t2, t1, s10
                  auipc        s7, 380719
                  sll          zero, s9, tp
                  srl          a2, t4, t1
                  xor          t4, s1, s5
                  andi         tp, s7, 962
                  slt          a3, t5, a7
                  andi         a3, s3, 1131
                  lui          a7, 791056
                  sltiu        ra, s9, -245
                  ori          s5, a1, -1711
                  xor          a6, t6, t0
                  sub          s2, t6, a7
                  sltu         a6, s1, a3
                  slt          a7, a4, a1
                  srai         t1, sp, 9
                  add          gp, t2, t1
                  slti         a5, a7, -1815
                  auipc        s0, 587115
                  slli         s2, s5, 8
                  xori         s4, t0, -253
                  slti         a3, t2, 792
                  or           a7, sp, s2
                  sra          s1, t0, s7
                  srai         s2, s2, 23
                  sub          s7, zero, t3
                  sra          a3, a0, t3
                  and          ra, tp, s11
                  and          s2, a5, t6
                  slt          s11, s5, gp
                  addi         gp, t2, -83
                  auipc        sp, 684615
                  xor          a4, s3, s3
                  slli         t6, a6, 28
                  add          a2, t0, s11
                  andi         s4, a2, -696
                  slt          s5, t0, s9
                  sub          s0, s8, gp
                  slti         gp, a2, 779
                  xor          ra, s3, a5
                  andi         s3, t1, 2026
                  slti         a0, s4, -410
                  and          a2, t3, ra
                  xori         s4, a5, -142
                  and          gp, gp, t0
                  sltiu        a7, t6, -5
                  srai         t2, s4, 7
                  nop
                  sll          a7, s8, a4
                  andi         s4, t0, 1422
                  slt          s2, t5, s11
                  slti         s5, t6, 1720
                  add          s5, s6, s5
                  slti         a4, a4, 49
                  sub          s7, a6, t5
                  xori         s4, t3, -1363
                  sltiu        s2, s8, 1261
                  sll          s5, t0, s4
                  slli         s11, ra, 6
                  lui          a5, 735540
                  slt          a7, a4, t1
                  xor          a3, t0, s1
                  xori         s10, a6, 984
                  sltu         t6, gp, t0
                  srl          a2, s3, s5
                  nop
                  ori          a0, t4, 291
                  addi         s7, s4, 1551
                  xor          tp, s9, t3
                  sra          tp, s1, s1
                  srl          s0, sp, t3
                  slli         a5, s4, 25
                  ori          a3, s8, 1793
                  add          s5, a3, a0
                  sltiu        a4, a2, 250
                  addi         s0, ra, -1859
                  sub          zero, s4, t4
                  xori         t2, ra, -451
                  srli         s10, s6, 28
                  srai         s11, t3, 4
                  xor          s10, t0, t1
                  xor          a5, t5, t1
                  or           s3, s6, s3
                  sll          a0, a6, t2
                  slti         ra, s7, 1036
                  addi         tp, a1, 1886
                  slt          zero, s1, s5
                  lui          s11, 312515
                  lui          s5, 438586
                  sra          s7, t5, t3
                  slti         s4, s6, 255
                  slli         a4, a0, 31
                  srli         gp, t5, 7
                  auipc        ra, 578346
                  sub          s7, s9, t1
                  lui          t1, 39787
                  slli         a2, a2, 26
                  ori          s7, a1, 1406
                  xori         a5, s1, -80
                  xori         t2, s0, -1309
                  xor          ra, s2, ra
                  lui          t4, 645756
                  sltu         sp, s4, tp
                  xor          t4, a4, s7
                  nop
                  lui          s0, 749730
                  sltiu        s7, a7, 1577
                  sra          s7, a6, a3
                  nop
                  xor          s4, s3, s11
                  slti         ra, sp, 329
                  sltiu        a0, a3, 1216
                  nop
                  lui          a0, 865541
                  sra          a2, gp, s9
                  ori          a5, sp, -804
                  andi         s6, s7, 745
                  andi         zero, a4, 302
                  addi         a6, s7, -255
                  sltiu        a1, t6, -2036
                  xor          s11, a2, s0
                  add          a4, s9, a1
                  andi         s3, s4, -1858
                  sltu         s0, a7, tp
                  add          gp, t3, t5
                  xor          gp, s0, s11
                  slli         a3, t5, 17
                  sltiu        a1, s9, 890
                  nop
                  or           t6, t0, s0
                  ori          s2, s0, 1019
                  srl          a3, t1, t3
                  srli         ra, a6, 3
                  andi         t1, ra, 1630
                  sll          t4, t2, s3
                  or           a5, s10, s4
                  sll          a2, s3, s9
                  and          zero, a5, a2
                  srli         a3, s10, 8
                  srl          s1, s9, s1
                  andi         s10, t2, 1180
                  and          a4, s11, gp
                  slt          a5, s5, s4
                  add          t2, s10, a5
                  slti         s8, t3, 1286
                  slli         t6, s10, 26
                  srli         sp, s2, 26
                  lui          t6, 287602
                  addi         s3, a3, 782
                  srli         tp, a0, 16
                  andi         s0, ra, -1775
                  slli         s7, s1, 23
                  srl          s5, t4, s7
                  or           sp, t6, t1
                  sll          a6, a2, s10
                  lui          zero, 611273
                  andi         s7, t5, -1546
                  srl          s11, s11, t5
                  slti         gp, s11, -189
                  or           s10, zero, a4
                  sltiu        a4, zero, -1142
                  sub          a1, t5, a7
                  nop
                  xor          t5, s1, t6
                  and          s3, ra, t6
                  add          gp, sp, s6
                  addi         zero, sp, -992
                  nop
                  auipc        s3, 366555
                  addi         t4, a3, -1053
                  or           s4, t1, ra
                  sra          s11, a5, s8
                  sll          t5, a0, s6
                  sltu         t1, s0, s6
                  sltu         zero, gp, a2
                  sub          s0, t6, s11
                  srli         s10, s2, 0
                  slti         s3, t4, -300
                  slli         ra, t0, 19
                  slti         s11, a0, 1788
                  ori          s2, a4, 974
                  sra          t4, s2, t5
                  xori         a4, a7, -155
                  slti         s5, s1, -545
                  sltu         a1, s3, s1
                  slt          s7, a5, gp
                  sltiu        sp, t6, 303
                  slt          sp, a1, s9
                  sltiu        s1, s4, -927
                  xori         s6, a0, -716
                  sra          s7, t1, s4
                  lui          zero, 313345
                  sltiu        gp, s8, -1908
                  xori         a7, a1, -130
                  sub          a6, t4, zero
                  ori          ra, a0, -859
                  and          ra, tp, a7
                  sra          s1, s4, s10
                  srai         t5, s5, 13
                  sltu         s1, sp, t1
                  lui          zero, 360301
                  srl          t1, a2, s10
                  srai         t4, a1, 16
                  sub          s4, s5, t2
                  slt          a2, s11, s8
                  slli         t5, s6, 0
                  addi         zero, s2, -1790
                  slli         s6, a4, 10
                  add          s4, s8, s2
                  srli         s6, s3, 7
                  sub          a7, a6, a1
                  slli         a2, s3, 0
                  xori         s5, a2, -1845
                  sltu         s1, t3, a7
                  add          tp, zero, s0
                  xor          s7, a3, s6
                  sltu         t4, t0, s10
                  auipc        s5, 238680
                  sra          gp, t4, s8
                  addi         a2, s1, -374
                  slt          s4, s7, a1
                  or           sp, a7, t0
                  srai         t1, t6, 9
                  or           a1, t5, s0
                  or           t5, t5, s0
                  slli         t5, s8, 24
                  sll          s3, s1, gp
                  sltiu        t5, s5, 1518
                  sub          s6, a7, a0
                  andi         s8, s6, 695
                  add          a2, zero, tp
                  addi         sp, t1, 1461
                  lui          tp, 853345
                  auipc        a4, 310955
                  andi         a5, s2, -987
                  and          a1, a2, s9
                  sub          a1, tp, s3
                  slt          s6, s2, s1
                  ori          gp, s2, -1998
                  lui          t6, 81810
                  slt          s3, a3, t5
                  or           ra, s0, s10
                  addi         a1, t4, -752
                  lui          s6, 638520
                  srl          a5, a5, tp
                  and          s8, t6, tp
                  srli         s0, s11, 1
                  sltiu        t4, s9, 1450
                  slli         a4, t6, 17
                  sltu         s0, s11, s2
                  slti         tp, s3, 1968
                  add          t6, a0, a4
                  srai         s5, s2, 7
                  auipc        s1, 614729
                  slli         zero, a5, 11
                  add          t5, a2, a7
                  sltiu        t1, s10, 1613
                  sra          s4, s11, t2
                  and          a2, ra, s8
                  xori         s7, t6, 291
                  addi         t5, a1, 1676
                  sltiu        s3, a1, -1740
                  andi         gp, s0, -1718
                  xori         s1, tp, -279
                  auipc        s3, 711867
                  slti         t2, tp, -381
                  slti         t4, s1, -748
                  srli         t2, t4, 12
                  andi         sp, a7, 1265
                  xor          a4, s11, a3
                  sub          a7, t3, tp
                  srai         a6, s7, 20
                  slti         s8, t4, 273
                  lui          a4, 784593
                  nop
                  or           s6, a3, s5
                  xor          s10, t0, t5
                  slti         s4, t5, -1221
                  or           s4, a2, a3
                  srai         s2, s1, 13
                  slt          a1, s7, a7
                  srai         a5, a1, 5
                  andi         s8, s5, -1053
                  ori          s1, a5, -661
                  sll          ra, t1, tp
                  add          a3, t6, a7
                  ori          t2, s11, 292
                  auipc        tp, 640496
                  sll          s1, t4, a1
                  nop
                  srli         s2, zero, 13
                  andi         zero, a0, 334
                  srai         s8, a1, 14
                  nop
                  lui          s7, 243248
                  sub          ra, s1, s3
                  srl          zero, t0, t4
                  add          s4, s6, gp
                  slti         a4, gp, -1855
                  auipc        s5, 220318
                  srli         t4, s11, 29
                  addi         s2, s1, -506
                  srl          a6, s6, a2
                  andi         a4, a1, -92
                  srl          t6, a7, t6
                  srai         t2, zero, 11
                  srli         a2, s4, 21
                  add          s10, a0, a3
                  xori         s5, s3, -233
                  ori          tp, t5, 2046
                  srl          t2, s0, s1
                  xori         a7, t5, -1056
                  lui          t5, 449561
                  sltu         s7, s1, t5
                  sra          a6, a6, a6
                  sll          t6, t1, t1
                  add          a4, s7, s11
                  sltiu        s2, s5, 1683
                  or           s5, s0, t1
                  slli         a3, s2, 3
                  lui          a0, 1029875
                  slli         sp, s10, 17
                  ori          s7, s10, 443
                  xor          sp, a5, s10
                  andi         t5, a6, 1488
                  sra          s5, s8, t5
                  sll          s11, s2, t3
                  sll          a6, sp, t6
                  addi         a7, tp, -1726
                  or           ra, tp, a2
                  andi         a2, t1, -1280
                  srl          tp, s2, s8
                  xor          ra, s4, t3
                  auipc        s11, 899104
                  li           a3, 0x80000000 #start riscv_int_numeric_corner_stream_6
                  li           a1, 0x0
                  li           s3, 0x3e51f6e3
                  li           a4, 0x80000000
                  li           s7, 0xffffffff
                  li           a0, 0x451ff904
                  li           s8, 0x939d38f6
                  li           s10, 0x80000000
                  li           s0, 0x0
                  li           s11, 0x80000000
                  add          s8, s7, a3
                  sub          s10, s10, s10
                  sub          s8, s10, s8
                  sub          a1, s3, s10
                  lui          s10, 446242
                  add          s10, s0, a4
                  lui          s0, 171566
                  auipc        s8, 1025064
                  add          s7, a1, s8
                  sub          s3, s3, a1
                  auipc        s8, 163321
                  auipc        s0, 1023857
                  nop
                  lui          s10, 394116
                  nop
                  nop
                  add          s8, a3, a0
                  sub          a4, a3, a4
                  add          s10, a1, s8
                  auipc        s0, 158630
                  addi         a0, s10, 1936
                  auipc        a3, 627454
                  lui          s8, 41947
                  lui          s11, 1037988
                  auipc        s8, 554442
                  sub          a3, s3, s10 #end riscv_int_numeric_corner_stream_6
                  slt          a3, gp, t2
                  ori          a3, t0, -1005
                  add          a2, s2, t4
                  srl          gp, s1, sp
                  xori         s0, t2, 772
                  sll          s6, t2, t2
                  ori          s11, a5, -702
                  sll          a2, s4, s5
                  or           a2, s3, a4
                  andi         ra, t5, -391
                  add          a2, s11, a5
                  slt          ra, ra, t3
                  slti         t2, s2, -1209
                  xor          a4, s7, s2
                  nop
                  sltu         s1, s11, t3
                  srl          s8, zero, s7
                  xor          a2, s11, s11
                  sltiu        s5, a6, -1036
                  nop
                  ori          s2, a4, 498
                  addi         a1, s7, -1852
                  add          tp, s5, t5
                  sll          a7, s3, gp
                  sltu         t6, gp, ra
                  auipc        s6, 183632
                  slt          a2, zero, s7
                  auipc        a5, 1006106
                  and          a0, t2, s6
                  auipc        s1, 531361
                  sll          s3, s11, t5
                  sll          s2, gp, t1
                  xori         a1, sp, 752
                  add          s5, a7, t0
                  addi         sp, s2, -1859
                  nop
                  slti         a7, gp, 1572
                  xor          a3, s5, a1
                  or           a0, a6, t1
                  srai         t1, t0, 5
                  nop
                  add          t6, t6, a0
                  slli         a1, s6, 24
                  addi         t6, a7, -357
                  sub          s4, s4, a5
                  andi         t6, t5, -1670
                  srl          a2, s9, t5
                  sub          t2, s3, t2
                  sltu         t1, s6, a4
                  srl          a6, s4, t3
                  sub          t2, s0, s11
                  srli         s1, a4, 6
                  slt          s8, a2, a3
                  srai         a0, zero, 2
                  sll          s10, t6, t2
                  auipc        a5, 330173
                  xori         s4, a6, 294
                  slti         s4, s0, -786
                  lui          a1, 553731
                  xor          t5, s1, t2
                  srl          a4, a2, t3
                  sltiu        s10, t0, 1616
                  slli         a0, s9, 9
                  xor          a5, a1, t4
                  slt          t1, ra, a4
                  lui          a0, 193080
                  and          a3, a3, sp
                  auipc        s4, 391932
                  xor          t4, t5, s9
                  sltu         a7, s2, t3
                  sltu         t1, a1, t5
                  slti         t2, ra, -1723
                  and          a1, s3, s8
                  addi         t1, a5, 803
                  andi         s1, a5, -1241
                  lui          t5, 499685
                  slti         a0, t1, 308
                  srai         a5, a4, 30
                  and          s7, zero, t1
                  or           zero, tp, t3
                  sltiu        a3, t5, 1109
                  srl          t6, t4, t0
                  sll          s2, t2, a6
                  auipc        s10, 155454
                  slli         s7, t2, 18
                  slli         ra, tp, 31
                  add          a5, s0, gp
                  and          a4, s7, sp
                  xori         sp, s9, 210
                  lui          s2, 463992
                  xor          s7, t5, a2
                  ori          t4, zero, 106
                  sltu         tp, a6, a4
                  srli         sp, s7, 4
                  and          t6, a6, t1
                  srl          zero, s10, t2
                  andi         s2, t6, -1157
                  xori         a1, zero, 434
                  sll          a5, a6, sp
                  sra          zero, tp, a4
                  srai         s7, t0, 28
                  sll          s5, s6, gp
                  sll          tp, a3, a1
                  addi         a1, s10, 326
                  sll          s4, a7, t3
                  sll          a6, t6, s9
                  xori         s5, s1, 265
                  nop
                  nop
                  sltu         gp, t2, ra
                  addi         t2, s9, 602
                  add          t1, a6, s4
                  auipc        s6, 606744
                  xori         t4, a3, -571
                  xor          t1, s10, s10
                  sra          t4, s3, t0
                  sll          tp, gp, t1
                  auipc        s2, 310818
                  slli         s1, s1, 1
                  and          a3, s2, a7
                  slti         s4, s7, -776
                  srl          s7, a6, t1
                  xori         zero, gp, 1611
                  sub          s11, s0, s4
                  and          t6, tp, tp
                  addi         s0, s10, -415
                  lui          a3, 222212
                  lui          s1, 651399
                  slt          s1, s3, s9
                  sll          zero, t6, s4
                  nop
                  sub          a6, t1, gp
                  and          s1, s8, a7
                  sll          s4, s10, s7
                  lui          s1, 497150
                  add          t1, s2, a0
                  slt          s10, a5, t6
                  slt          t4, a7, a5
                  slli         s0, t6, 22
                  slti         tp, a4, 707
                  sub          a0, t5, gp
                  sub          s5, s2, t1
                  srli         a6, t4, 2
                  addi         s0, s8, -1528
                  lui          a1, 788332
                  slli         s4, tp, 23
                  slli         sp, s0, 15
                  ori          s4, gp, -34
                  xor          s8, gp, t0
                  sltiu        sp, t5, 1228
                  slt          zero, ra, gp
                  nop
                  slli         tp, t2, 15
                  or           s4, a3, s1
                  slt          a2, a5, s10
                  xori         sp, a2, -513
                  sltiu        t5, ra, 1580
                  sll          a6, t4, gp
                  auipc        sp, 925208
                  nop
                  xori         a6, s9, 554
                  sltiu        tp, ra, 1340
                  sra          t4, a4, a7
                  slt          s11, t1, s3
                  addi         s5, s2, -1741
                  or           s10, ra, s11
                  ori          a0, s0, 136
                  and          a4, s11, t2
                  sra          a0, a4, t3
                  or           t2, s0, t1
                  srl          t6, s9, a6
                  srai         a0, t1, 15
                  xor          a3, t1, s8
                  sltiu        s0, t6, 1483
                  sub          a0, t3, s11
                  auipc        tp, 576337
                  slli         s3, a2, 22
                  xor          zero, t3, s9
                  sltu         zero, tp, sp
                  sll          tp, s9, a1
                  srai         gp, s3, 16
                  addi         a0, t4, 66
                  sltiu        s3, s1, 1956
                  srl          a3, t6, s8
                  sll          s8, a5, sp
                  srli         s6, ra, 31
                  srl          s0, s10, t0
                  srli         s1, a5, 2
                  slt          s10, s8, t4
                  srai         t4, t3, 24
                  sltu         sp, s2, zero
                  srl          gp, t0, t6
                  slti         s4, a6, -1523
                  slli         tp, a4, 2
                  or           t4, t1, t4
                  and          a1, a4, t2
                  lui          s4, 999317
                  xor          t6, s7, s0
                  srl          s5, gp, t0
                  srl          s1, s4, s1
                  sltu         t2, s3, t0
                  srl          s7, a6, t5
                  xori         a4, s0, -738
                  nop
                  sll          a4, s2, t6
                  sltiu        s6, s1, 810
                  add          s10, zero, s4
                  srli         zero, tp, 26
                  andi         tp, t5, 779
                  addi         s8, t0, 1154
                  lui          s2, 850192
                  andi         s0, s5, 1532
                  auipc        gp, 507835
                  slti         s0, s6, -1251
                  sltu         s5, t2, t4
                  sll          ra, a2, s2
                  slt          a7, t2, gp
                  add          tp, a7, s4
                  sltiu        t6, s7, -1978
                  lui          s5, 559379
                  sltu         zero, a7, t3
                  xori         sp, t4, 1741
                  slti         s7, a5, -1179
                  add          t6, s2, s4
                  lui          t6, 339950
                  and          s8, s1, s0
                  andi         t5, s11, 1527
                  sltu         a6, s9, s2
                  or           s3, s7, a1
                  sra          a3, t6, t0
                  sll          a2, s8, s6
                  and          tp, a6, a6
                  slt          t5, s10, zero
                  lui          a2, 1021897
                  slt          t2, s1, t6
                  xor          a2, s9, a6
                  add          s7, t6, s1
                  slt          t4, s5, t6
                  auipc        s8, 5504
                  slt          s7, a4, a4
                  slli         a4, t3, 29
                  sltiu        gp, s4, -386
                  srli         s8, s11, 22
                  lui          a0, 402490
                  slli         s1, a1, 17
                  ori          s10, a2, -2027
                  sub          a5, s10, s1
                  or           s10, s6, gp
                  sltiu        t1, a6, 953
                  slti         a1, a6, -233
                  sll          zero, a4, t3
                  ori          sp, a6, -1422
                  sltu         s7, a2, tp
                  ori          s3, t5, -303
                  sltiu        s3, a2, 1846
                  add          a4, t0, s11
                  nop
                  slli         s3, t6, 16
                  xor          a6, a3, s2
                  slt          gp, s0, t2
                  nop
                  slti         a5, s5, 1826
                  sra          s8, a6, t1
                  slti         s7, s7, -1793
                  srli         s5, s3, 22
                  nop
                  sra          ra, a5, gp
                  sltiu        t2, t4, -961
                  addi         a6, s8, 582
                  xor          t1, tp, a0
                  addi         s5, a3, -1023
                  sub          s11, t3, s8
                  sltiu        s5, gp, 1273
                  addi         a2, s11, 933
                  sub          a7, a3, a0
                  sub          s8, a0, a7
                  slli         s7, t1, 10
                  slli         s4, t2, 28
                  srli         gp, s3, 9
                  srl          ra, ra, t3
                  xor          t6, tp, gp
                  or           s3, t5, a6
                  srai         a0, a3, 23
                  sub          a4, s10, ra
                  andi         sp, s7, -160
                  sub          a6, s9, a7
                  and          t5, s5, t0
                  sltiu        s3, s7, 943
                  sltu         a5, t2, s9
                  andi         a0, s0, 440
                  sra          sp, a2, t4
                  ori          t4, t6, -513
                  srai         s5, a4, 0
                  sra          a5, t3, t6
                  xori         ra, s9, 880
                  andi         sp, s9, -1378
                  nop
                  or           sp, t3, s11
                  andi         t6, s4, 588
                  addi         s1, a2, 199
                  slt          s1, t3, t2
                  nop
                  sra          s2, a0, s10
                  sra          t1, s9, a1
                  srli         s3, a2, 18
                  addi         a2, a0, 1122
                  add          ra, a7, a5
                  sltu         zero, s5, zero
                  xor          gp, t0, a4
                  or           a6, a3, s4
                  slli         s3, s5, 31
                  or           s6, s7, t3
                  nop
                  andi         s2, a4, 1852
                  sltu         t1, gp, t6
                  slti         sp, s0, -1164
                  sll          a7, a2, a4
                  or           ra, sp, s11
                  nop
                  xori         a6, a3, -267
                  srli         s7, t5, 4
                  srai         a4, zero, 10
                  andi         a5, s8, -1858
                  sll          s5, a7, t6
                  sra          t4, a5, sp
                  sub          s11, s6, t4
                  srli         s7, s11, 22
                  ori          a5, s9, 549
                  lui          gp, 176959
                  srl          t5, t3, a5
                  ori          s3, t4, -77
                  andi         sp, a0, -1611
                  sra          a2, a2, s10
                  andi         s8, t3, 1918
                  ori          t2, s0, 120
                  sltiu        s4, a7, -1659
                  srl          s7, t6, t3
                  slli         t5, s8, 2
                  sltiu        s2, t1, 1696
                  sltiu        a7, a4, 670
                  sll          a3, s6, tp
                  xori         sp, s1, -1473
                  nop
                  xori         a4, t4, 328
                  nop
                  auipc        a6, 847526
                  slli         a4, s7, 13
                  sltiu        t6, t1, -1069
                  srai         s5, t1, 8
                  add          s3, t4, s0
                  srli         t4, s9, 9
                  nop
                  add          s2, a1, a3
                  slt          s3, s11, s8
                  slli         a0, t4, 14
                  slt          s6, gp, t6
                  sub          t4, t6, t1
                  slli         s6, t1, 4
                  sub          s3, ra, t2
                  slti         ra, a2, -849
                  add          s8, s10, s10
                  nop
                  slli         t2, s2, 3
                  sll          s2, s6, s6
                  xor          t1, gp, a6
                  or           tp, a0, ra
                  sub          zero, s10, t6
                  srli         s7, a1, 18
                  slt          gp, t6, s6
                  addi         s2, gp, 1764
                  xori         sp, s2, -1888
                  xori         t6, a4, -33
                  or           t6, a5, s10
                  sltu         t2, s4, a1
                  srli         s7, t3, 6
                  or           t1, a1, t5
                  sub          s7, sp, t4
                  srli         s4, a1, 16
                  sltu         s7, t0, t6
                  srai         s11, s1, 9
                  slt          a0, t4, t5
                  xor          s3, a0, ra
                  sub          s5, a4, a5
                  lui          a0, 165291
                  lui          s4, 194532
                  sub          gp, s6, a3
                  addi         s8, s11, 1222
                  lui          a7, 286942
                  andi         a5, a7, 788
                  srl          a2, t6, tp
                  addi         a6, s10, 1856
                  and          zero, a4, a4
                  auipc        t6, 6418
                  slt          s2, zero, a3
                  srai         s1, s9, 0
                  sltu         t6, s1, s8
                  ori          ra, t3, 1920
                  andi         s7, a6, -1619
                  lui          s7, 143533
                  or           a1, s7, a3
                  andi         s11, s4, -1453
                  xori         t2, a3, -803
                  sltiu        s8, t4, 1905
                  sll          a7, a0, t6
                  xor          a6, a1, s2
                  srli         s0, s4, 7
                  slt          a4, s4, s5
                  sll          t5, a2, a7
                  addi         s6, a0, 1459
                  sra          ra, a4, s7
                  slli         tp, s6, 21
                  srai         s1, s2, 20
                  add          s8, s10, a7
                  sub          t5, t3, t3
                  or           t1, s8, a6
                  slli         s8, s7, 13
                  sra          t5, a5, a4
                  sltu         t6, tp, a2
                  srai         t4, s8, 19
                  auipc        zero, 1014234
                  and          t4, t5, a1
                  sltiu        a2, s3, -548
                  ori          sp, gp, 565
                  sltu         gp, t6, s11
                  sltu         s4, s5, a4
                  slli         t5, a4, 6
                  sltu         s0, a5, t1
                  lui          s3, 766717
                  add          ra, t5, s3
                  srl          s11, t0, t3
                  xor          tp, s4, s10
                  ori          t5, s11, 606
                  and          a5, sp, zero
                  sltiu        s8, s4, -444
                  add          a7, s5, s10
                  slt          zero, ra, ra
                  sll          s0, s0, a6
                  slti         s3, s9, 1749
                  nop
                  nop
                  slli         a5, s10, 15
                  ori          s2, a1, 607
                  srai         a1, a7, 18
                  addi         s6, sp, -313
                  addi         ra, zero, -904
                  slti         s4, a4, 1468
                  srl          s7, s0, t5
                  nop
                  addi         s5, t0, -1857
                  or           s10, s8, s1
                  srl          ra, s5, s9
                  sltu         t1, a7, a4
                  andi         sp, sp, 602
                  or           t6, s9, a5
                  sll          zero, sp, sp
                  auipc        gp, 712459
                  srai         t2, a6, 6
                  add          a1, s6, tp
                  srai         s7, a5, 16
                  srai         s11, s1, 10
                  slti         s8, s10, -502
                  srli         s5, zero, 18
                  slli         ra, a3, 0
                  slti         a5, t4, -1755
                  slti         sp, s7, -1008
                  slti         zero, gp, 910
                  slli         a1, s1, 5
                  or           s7, a1, t2
                  andi         gp, s8, 2014
                  ori          s10, s8, 1768
                  srai         s7, tp, 31
                  sra          a1, s0, s5
                  auipc        t6, 839640
                  nop
                  sub          s6, s11, s7
                  auipc        gp, 477441
                  and          a1, s6, zero
                  andi         a0, s0, 1039
                  sltu         gp, s1, t0
                  srl          a1, s1, a2
                  lui          a6, 600954
                  ori          a2, t1, 1393
                  ori          sp, s10, 161
                  srl          a4, a7, t4
                  xor          zero, t5, gp
                  nop
                  sra          s10, s4, t1
                  sltiu        a0, ra, -525
                  xor          a4, s7, s2
                  sltu         a0, tp, t1
                  xor          t6, t5, s7
                  srli         s5, t5, 23
                  xor          s5, tp, t1
                  xori         a4, a3, 1940
                  srli         s1, a5, 5
                  ori          s5, a3, -472
                  slli         s10, ra, 6
                  sltiu        t2, s7, -1813
                  slti         a7, s1, -1966
                  slli         s1, s4, 28
                  lui          s5, 365177
                  slli         s5, t6, 14
                  srai         a3, t5, 2
                  add          s3, a1, a0
                  add          s10, t2, s5
                  srli         s7, a5, 28
                  slti         zero, s10, 1260
                  srli         a0, ra, 5
                  slli         sp, a6, 27
                  andi         s2, s9, 1430
                  slt          a0, t5, s0
                  slt          a0, s9, s11
                  srli         a4, a3, 29
                  addi         s0, a5, 1687
                  sra          tp, a7, s6
                  or           a7, a3, gp
                  or           a3, ra, tp
                  andi         a5, a4, -1215
                  andi         ra, a5, 95
                  xor          a3, t5, s10
                  auipc        t5, 41217
                  srai         s2, s9, 14
                  slt          a5, t4, s1
                  sltu         a5, s2, t4
                  or           t5, a5, a5
                  slt          s7, t1, t5
                  add          gp, t0, t1
                  lui          a3, 80779
                  and          s6, s7, s0
                  auipc        a3, 569951
                  ori          zero, s3, 1571
                  or           a3, sp, a4
                  srai         s6, tp, 1
                  xori         a5, s4, -524
                  add          t2, sp, s5
                  sltiu        tp, a2, -481
                  slt          s1, s7, s9
                  add          a6, s11, s8
                  sltiu        a3, s3, 1295
                  srli         s0, ra, 25
                  sra          a2, t3, s10
                  and          tp, a3, t3
                  srai         t4, t4, 0
                  sub          s3, a7, s3
                  ori          a0, s9, -149
                  or           a5, t1, a4
                  auipc        a2, 935459
                  srli         s7, s2, 9
                  sltu         ra, t3, a1
                  nop
                  lui          s7, 350549
                  xor          a3, a1, a1
                  sra          t4, a3, s0
                  slli         a4, gp, 1
                  srl          gp, s8, a5
                  slt          a0, t3, s10
                  sltu         s8, s5, sp
                  lui          s11, 462307
                  xor          a5, zero, tp
                  ori          t5, gp, 255
                  slti         a0, s5, 63
                  nop
                  srai         s8, t4, 27
                  ori          s4, t4, -18
                  xori         s4, t4, 1641
                  add          s4, a5, a6
                  sll          gp, s6, t0
                  slt          zero, s6, s6
                  nop
                  sub          s2, s3, a3
                  srai         s10, s11, 13
                  or           a2, t3, s6
                  slli         t4, s3, 16
                  xori         s6, s2, -209
                  lui          t1, 459088
                  addi         a4, s8, 461
                  or           t5, zero, s6
                  add          ra, a1, t1
                  srli         s0, zero, 18
                  ori          s1, a3, 1295
                  srli         t6, a2, 3
                  xor          s4, gp, a2
                  sltiu        a6, s2, 345
                  slti         t1, sp, 997
                  sltu         tp, t3, sp
                  srl          zero, s10, s1
                  srai         a7, a4, 5
                  slt          s5, t5, t5
                  or           sp, s8, zero
                  xor          a1, a5, t2
                  srl          t6, s8, a1
                  slt          s0, s5, s3
                  and          t2, t1, s4
                  ori          t4, s3, -538
                  slti         zero, a2, -1366
                  srl          t5, a7, zero
                  sub          t6, s1, s7
                  add          a3, s7, a1
                  slt          s6, sp, gp
                  nop
                  auipc        sp, 1016373
                  sra          t5, a0, s4
                  xori         a6, s3, 119
                  slti         s3, s6, 1587
                  srai         t2, tp, 28
                  sltiu        t1, s4, 1565
                  slti         ra, s4, 1063
                  sub          a1, t5, t5
                  sltu         a6, s0, t5
                  sra          s0, s5, a7
                  srli         t6, s5, 31
                  add          t4, ra, a6
                  lui          s7, 938300
                  sub          t1, t1, s0
                  srl          s10, sp, s11
                  srli         a0, a5, 3
                  nop
                  or           zero, a4, t6
                  sll          a7, tp, t6
                  xor          s10, a6, a1
                  srai         t5, s1, 30
                  and          a5, s8, a0
                  add          a1, t4, s0
                  lui          s0, 88447
                  slli         a6, t4, 26
                  sltu         s0, s0, s10
                  nop
                  andi         a4, a5, 194
                  srai         a3, t6, 26
                  sra          s4, a5, s7
                  and          t5, s6, a5
                  and          a5, s7, s5
                  and          gp, a1, a6
                  lui          s2, 158584
                  srl          t4, s2, t2
                  nop
                  xor          t4, s7, ra
                  and          a4, t3, s9
                  andi         s5, t3, -2010
                  srai         t2, gp, 0
                  srli         s7, s8, 7
                  or           s5, t5, t2
                  xori         a6, s9, 1366
                  and          ra, a5, a6
                  ori          a1, a1, 761
                  sub          s3, s4, t1
                  auipc        s3, 908512
                  srai         s2, s9, 8
                  xor          s7, ra, s3
                  srl          zero, s0, t2
                  sltu         s4, t3, t6
                  auipc        s7, 609435
                  slli         s3, s9, 25
                  slli         s2, a3, 12
                  slli         a6, a0, 18
                  andi         s5, a4, -918
                  add          s10, t6, t2
                  srli         s4, ra, 14
                  srl          sp, a3, a2
                  xori         sp, t2, -894
                  slt          s2, s2, t4
                  sltu         s4, t5, a6
                  or           a4, a0, ra
                  slli         s3, tp, 24
                  srai         zero, sp, 7
                  addi         gp, s10, -262
                  srl          s8, s0, a1
                  addi         ra, a1, -1673
                  or           gp, a5, gp
                  sltu         tp, s6, t5
                  srl          a0, ra, t4
                  sll          t5, s2, t5
                  auipc        t4, 682165
                  sra          sp, a0, s6
                  addi         a5, a2, -1313
                  xori         s5, sp, -1187
                  andi         s3, s7, -1477
                  sll          s1, t4, gp
                  sll          a5, s2, a6
                  or           a0, zero, a3
                  slti         s3, a6, -427
                  sltu         ra, a7, t3
                  sra          sp, t3, s5
                  sltu         a5, gp, a4
                  ori          a1, s7, -1439
                  lui          s2, 201876
                  sltiu        s5, a5, 625
                  nop
                  lui          t4, 737168
                  sll          a6, s6, sp
                  and          a7, a6, s2
                  slli         s5, t2, 27
                  slti         s0, s6, -665
                  slli         s2, t0, 9
                  sub          a7, t4, s9
                  and          sp, s3, s1
                  sra          sp, t1, s1
                  xor          sp, zero, t2
                  sltiu        a4, t0, 128
                  sltiu        zero, s1, 1101
                  xori         s4, a1, -1565
                  sltu         s5, a4, a2
                  auipc        s7, 156057
                  sll          s3, s5, t1
                  sra          s5, t4, zero
                  add          a1, s2, a6
                  ori          s8, s0, 477
                  nop
                  srli         a2, gp, 14
                  srl          s5, s2, ra
                  slti         s2, s1, 1736
                  add          a0, a4, s0
                  sra          s1, sp, a0
                  and          t4, t6, a0
                  sltiu        s11, t2, -826
                  slli         s2, t1, 7
                  add          a6, s0, s4
                  addi         s5, t6, -1156
                  sra          t6, a2, t5
                  slt          zero, t1, t1
                  slti         a3, s8, -1400
                  xor          t5, s4, s0
                  addi         a5, s8, -922
                  slli         s7, s1, 8
                  slli         tp, t1, 12
                  and          t4, s4, tp
                  ori          s5, sp, -1239
                  add          s2, s11, ra
                  srai         a2, a2, 23
                  srai         tp, a6, 9
                  andi         s7, a0, -1273
                  slt          t2, sp, a5
                  srl          a0, a2, t6
                  auipc        a1, 1045139
                  slli         s0, s9, 21
                  auipc        a4, 486304
                  slli         tp, a4, 14
                  ori          s7, t6, -453
                  srli         a3, s3, 30
                  srli         a3, a5, 29
                  add          t1, s6, a5
                  auipc        s0, 1043960
                  addi         t6, s7, -1827
                  sll          t2, sp, t4
                  sra          a2, t2, a6
                  sub          t6, a3, zero
                  slt          a6, t4, s10
                  nop
                  slt          tp, s3, s3
                  sltiu        a0, s0, -706
                  slli         a4, s7, 15
                  sub          s2, s2, zero
                  add          ra, ra, s10
                  sll          ra, a4, t0
                  sltu         tp, t0, s8
                  sub          sp, s11, a4
                  xor          t1, a1, s10
                  auipc        ra, 359998
                  slti         a4, a0, 1193
                  nop
                  andi         s11, s1, -1533
                  xori         a4, t6, -587
                  or           zero, a6, gp
                  auipc        s2, 845485
                  srli         s1, a5, 8
                  xor          s1, tp, s8
                  xor          s11, t5, s9
                  slli         sp, a5, 3
                  xor          s7, tp, tp
                  slli         s2, t1, 8
                  srli         s0, s10, 28
                  sltu         a6, s3, s5
                  and          t6, s8, a4
                  nop
                  andi         s5, s5, 542
                  sltiu        s0, zero, 1014
                  xori         s6, gp, -1506
                  or           s7, tp, a7
                  xori         a7, a4, -1946
                  sltiu        t4, t6, -1043
                  sll          s3, t6, t5
                  srli         ra, s9, 19
                  xor          ra, tp, t1
                  sltu         t1, t0, s10
                  xor          t4, zero, a6
                  ori          s3, a5, -1529
                  xori         zero, s8, -875
                  lui          s8, 587014
                  or           a5, a2, a6
                  xor          t1, t1, t3
                  xor          a4, t2, a5
                  add          s2, tp, ra
                  auipc        t5, 176660
                  or           a2, s5, s7
                  srai         zero, s2, 23
                  xor          a5, s4, t3
                  lui          s7, 64084
                  or           t6, t5, a2
                  auipc        tp, 240186
                  auipc        t6, 284685
                  srai         s4, s3, 27
                  sll          t1, gp, s3
                  slli         s1, t5, 16
                  xori         t4, s8, -1811
                  srai         a2, tp, 31
                  auipc        s1, 527729
                  xor          t2, s4, zero
                  auipc        a6, 419589
                  xor          a4, s11, t2
                  xori         ra, s4, -1843
                  slti         s8, t3, -53
                  nop
                  andi         a4, s5, 1855
                  nop
                  nop
                  sltiu        a1, s9, 1887
                  auipc        a5, 613616
                  sub          s5, s10, gp
                  sub          s4, s7, a6
                  srai         a2, s6, 26
                  sltu         t4, a5, a4
                  nop
                  ori          s10, s6, 1021
                  sra          s4, t1, t3
                  sub          a5, sp, a0
                  srl          a3, t3, s3
                  slti         gp, s2, 842
                  slti         tp, s1, -1503
                  slli         a5, a5, 31
                  sra          a2, s1, s9
                  ori          a1, s1, 608
                  sub          ra, s0, s6
                  slli         sp, gp, 7
                  add          s5, gp, a2
                  or           s4, gp, a3
                  sra          a1, t3, s10
                  slti         a3, s9, 1215
                  slli         a7, s4, 5
                  nop
                  slt          a6, a7, a0
                  sll          a2, s8, t5
                  auipc        t6, 760233
                  slt          a2, a3, t0
                  sub          zero, s5, s6
                  add          s10, t4, sp
                  and          s5, sp, t2
                  nop
                  nop
                  sltu         s0, s6, zero
                  sll          sp, t5, t2
                  lui          a0, 1018600
                  xor          a4, a4, s2
                  slt          t5, s10, zero
                  sll          s0, t4, a1
                  andi         s6, ra, 849
                  nop
                  addi         s11, s2, -1922
                  sra          t6, s0, t4
                  or           s0, s2, s7
                  srai         a5, s8, 13
                  srai         s2, s2, 7
                  srai         a5, s11, 15
                  xor          a5, s2, s11
                  andi         gp, s11, -1661
                  srli         s8, t4, 24
                  auipc        zero, 1004257
                  sltiu        t6, zero, -1253
                  auipc        s6, 846047
                  sll          s11, s6, sp
                  nop
                  sra          s1, gp, s5
                  add          t6, a7, s5
                  xori         s7, zero, -329
                  srai         s3, ra, 26
                  sltu         a5, a6, a3
                  srai         s6, ra, 8
                  slli         t1, t3, 11
                  auipc        s2, 524743
                  xor          s7, a0, a4
                  or           a2, a4, s5
                  srai         a7, s5, 26
                  xor          t4, s7, s4
                  sltiu        s7, t2, 392
                  xor          gp, zero, s2
                  auipc        s7, 91321
                  srai         a2, t3, 13
                  slt          t1, a4, ra
                  srl          t1, a2, a3
                  lui          a5, 566529
                  slt          a3, zero, s9
                  sll          t2, s6, s8
                  sll          tp, s4, a4
                  addi         a2, t6, 178
                  sltiu        sp, tp, 865
                  sra          s1, t0, t3
                  xor          t5, s11, s0
                  add          s7, a3, zero
                  srl          tp, s10, a5
                  xori         t6, s9, 162
                  and          ra, t2, a6
                  sltu         a7, t4, s11
                  and          t2, s5, s8
                  add          s4, t1, s6
                  sra          s8, a3, s9
                  add          a0, tp, gp
                  slli         a4, t3, 15
                  srai         zero, a5, 10
                  sll          s11, sp, a7
                  sltu         sp, s7, t6
                  xori         t1, zero, 338
                  sra          t1, tp, a4
                  srli         s2, t1, 7
                  slti         s2, s7, 497
                  addi         s8, s3, -1178
                  add          a3, tp, ra
                  sltu         s10, a7, t4
                  sltiu        a6, t0, 1191
                  srai         ra, sp, 22
                  or           s2, s6, s10
                  sll          t5, s5, sp
                  lui          t5, 460686
                  sra          zero, s11, a0
                  li           s2, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           s7, 0x80000000
                  li           a6, 0x80000000
                  li           s11, 0x80000000
                  li           ra, 0xffffffff
                  li           a0, 0x0
                  li           t6, 0xffffffff
                  li           a3, 0x5727e296
                  li           a7, 0x1d5a7dc3
                  li           gp, 0x80000000
                  auipc        s7, 675249
                  add          a7, a0, ra
                  add          a7, s11, s11
                  add          a3, s11, t6
                  nop
                  lui          s2, 803328
                  lui          ra, 781114
                  nop
                  sub          s7, a3, s7
                  sub          t6, s2, a7
                  lui          s2, 193361
                  lui          a3, 597784
                  auipc        a7, 48030
                  nop
                  nop
                  add          s7, a3, a6
                  add          a7, s2, gp
                  add          s7, a3, ra
                  addi         gp, t6, 274
                  auipc        a0, 504439
                  addi         a3, t6, 123
                  auipc        t6, 152586
                  addi         a3, a3, -1498
                  auipc        s2, 11672
                  nop
                  addi         a6, a7, -816
                  add          s2, s7, a0
                  addi         gp, t6, 1532 #end riscv_int_numeric_corner_stream_3
                  or           s7, ra, t2
                  xori         t5, a6, 824
                  xor          s10, t4, t5
                  srli         sp, s11, 7
                  srai         t4, s7, 3
                  xori         a4, s8, -493
                  andi         s1, s10, -762
                  slti         ra, a3, 1010
                  srl          a1, gp, zero
                  sra          s5, a3, a0
                  auipc        a5, 325027
                  addi         a1, s6, 43
                  nop
                  andi         s5, s2, 1955
                  slti         s10, s7, -1974
                  nop
                  xori         a0, t6, -1370
                  ori          a5, a0, -1738
                  nop
                  slt          s3, a7, a1
                  srai         t1, gp, 10
                  and          t6, a7, a7
                  xori         s0, t2, -78
                  addi         s3, a4, -1508
                  addi         sp, a5, 1671
                  slli         zero, t2, 0
                  xor          a6, s6, a4
                  add          s4, a6, a1
                  or           a0, t3, s7
                  srai         a5, s7, 17
                  and          s11, s10, s5
                  add          s8, s1, t1
                  ori          s1, gp, 1967
                  nop
                  srli         s7, t3, 31
                  auipc        t1, 505417
                  add          t5, a5, s5
                  andi         s1, s2, 711
                  srai         s6, s3, 12
                  srai         tp, zero, 17
                  sub          s4, a0, s9
                  sltiu        s7, s3, 1939
                  sub          a2, s9, s4
                  sub          ra, t4, s3
                  sra          a2, s0, a0
                  srai         a1, t0, 3
                  ori          s11, t0, -1816
                  slt          a6, tp, tp
                  nop
                  auipc        a4, 696536
                  ori          tp, gp, -1405
                  sltiu        s1, s10, 524
                  srli         a5, s7, 18
                  sub          a3, s6, t1
                  addi         a3, a1, -1005
                  and          a7, s4, t4
                  sra          a5, s8, s8
                  srli         a5, t2, 20
                  add          a3, a4, t5
                  xor          zero, s1, s0
                  sub          sp, s5, a2
                  slli         a7, a7, 4
                  xor          t5, a2, a3
                  sll          t2, ra, t0
                  andi         t1, s5, 945
                  nop
                  sltiu        t5, gp, -1180
                  sll          s3, s7, a2
                  and          a4, s2, tp
                  xori         a6, s0, 334
                  andi         a1, s1, -1657
                  slt          s7, t5, t4
                  xor          s10, s8, ra
                  xori         s3, s5, -1660
                  slti         s5, s5, 238
                  srl          a4, s4, sp
                  slt          tp, t3, s1
                  xori         t4, s11, -306
                  sra          a3, t5, s2
                  slli         tp, s3, 4
                  srai         a0, zero, 25
                  slt          a0, s11, a5
                  ori          t4, a2, -917
                  xor          s10, gp, a2
                  lui          sp, 214759
                  sltiu        a5, t3, 1671
                  slt          a6, t1, a2
                  add          ra, s9, a5
                  sub          s7, s6, a5
                  ori          s0, t0, 1173
                  srli         s3, a4, 18
                  slti         a0, s0, 206
                  srai         sp, s5, 16
                  sll          a5, a1, s6
                  sra          t2, t0, a4
                  lui          a6, 156156
                  xor          s6, s0, s6
                  srai         s3, t4, 30
                  andi         sp, s8, -1587
                  sltiu        t4, a3, 179
                  slt          a2, a2, s0
                  sub          s4, t5, t4
                  xori         t5, s6, 727
                  add          t1, a5, t2
                  add          s1, ra, zero
                  or           tp, t1, s6
                  sra          t6, s10, ra
                  add          sp, tp, s6
                  sll          s11, s3, t6
                  nop
                  or           t5, t5, t4
                  sltiu        ra, t3, -452
                  slti         s7, t3, -1875
                  srli         zero, a3, 2
                  slli         t4, ra, 5
                  andi         tp, t1, -29
                  sltiu        s2, zero, 1950
                  ori          s8, t0, 1768
                  lui          t5, 900266
                  srai         a0, s6, 16
                  auipc        s5, 133442
                  or           ra, zero, zero
                  ori          tp, a1, 752
                  auipc        gp, 925592
                  addi         s5, s9, 154
                  slti         a7, ra, 1305
                  and          t6, tp, tp
                  sra          t2, a0, s8
                  lui          zero, 684769
                  slt          t5, t1, tp
                  or           s10, s7, s6
                  addi         a5, t4, -362
                  add          ra, t2, t6
                  auipc        a2, 70273
                  xor          ra, t6, s1
                  xori         a0, s0, 1204
                  add          ra, t3, s11
                  srli         t4, t5, 24
                  sra          s10, t0, gp
                  ori          s2, t1, 60
                  srl          a6, s3, s11
                  auipc        s7, 705103
                  or           s5, a4, a2
                  xori         tp, t6, -1501
                  sltu         a7, t6, s9
                  or           t4, s0, s1
                  srai         a5, a5, 26
                  or           s3, gp, t3
                  sub          a4, sp, s5
                  sll          s3, s9, t2
                  or           sp, a6, a4
                  or           a5, a7, a4
                  xori         a1, t5, 367
                  xor          a2, tp, s0
                  and          s6, s6, sp
                  sub          a3, t4, a6
                  lui          s10, 137261
                  srli         t5, tp, 23
                  and          a0, s0, t1
                  and          gp, a1, a1
                  auipc        s6, 81729
                  slt          a4, sp, gp
                  srai         a7, s7, 29
                  srl          t5, s4, sp
                  sra          s1, ra, t2
                  sltu         gp, a5, t1
                  sll          a5, s8, s9
                  slti         a7, s5, 189
                  add          s2, gp, t4
                  sll          s8, a0, s0
                  xori         s2, a1, -616
                  slt          a5, t4, s5
                  xor          a4, s3, t6
                  sub          a5, tp, a4
                  nop
                  sltu         a6, t4, a6
                  slt          a4, tp, ra
                  and          zero, t1, tp
                  sltu         s7, t0, s1
                  slt          s0, s3, a2
                  slli         t4, gp, 29
                  andi         s2, t4, 751
                  addi         s8, zero, -700
                  srai         a7, s0, 13
                  lui          a7, 130157
                  lui          s10, 938227
                  andi         tp, gp, 1928
                  add          t2, a7, t3
                  sll          a7, s2, tp
                  slli         gp, a7, 17
                  and          gp, gp, a4
                  sra          a4, tp, a0
                  slt          a0, t2, a5
                  srli         s11, a5, 22
                  xor          s6, s5, s8
                  xori         a4, tp, -476
                  sra          s0, t6, gp
                  slti         s10, tp, 12
                  nop
                  ori          a1, a2, 1795
                  slt          s2, s1, a3
                  ori          s11, s7, -346
                  sltu         t2, s5, tp
                  sra          a0, zero, s2
                  and          t5, s0, t4
                  add          t1, s9, gp
                  andi         a0, tp, -349
                  srai         s8, s9, 23
                  ori          s3, a3, 750
                  lui          gp, 191807
                  slt          sp, s7, t6
                  andi         s10, sp, -1308
                  sub          s8, a1, s8
                  sub          a7, s4, a1
                  xori         sp, s5, 1578
                  slli         t1, t2, 10
                  sltiu        s2, s3, -1756
                  sra          gp, s2, t6
                  srli         tp, t1, 14
                  addi         s5, s3, 1784
                  slt          zero, s3, s2
                  addi         s2, s4, 1232
                  add          s6, t6, s9
                  nop
                  and          a5, a4, a4
                  auipc        t4, 926377
                  srli         a5, a7, 23
                  and          tp, s8, a5
                  lui          s11, 320349
                  slli         s4, s11, 20
                  or           s2, s6, s9
                  or           a5, t3, t1
                  xor          a0, a4, s5
                  and          t5, s7, s0
                  andi         a4, t5, 329
                  xori         s7, s0, 1705
                  xor          t1, t1, t4
                  sll          a5, a5, s5
                  lui          sp, 85700
                  or           s10, sp, a0
                  sltiu        s8, s10, -1631
                  srai         t1, sp, 20
                  and          s11, ra, s2
                  nop
                  nop
                  nop
                  andi         a0, s3, 234
                  sll          t2, t5, t0
                  ori          t4, t5, 1389
                  slli         s0, a7, 29
                  srai         s10, t3, 24
                  ori          a0, ra, -1337
                  auipc        t5, 487131
                  andi         s4, a4, -618
                  auipc        a0, 1021797
                  srl          a5, s0, s5
                  sra          s2, a1, s10
                  srai         s4, t6, 15
                  lui          s5, 569315
                  xor          t6, a0, tp
                  slti         s8, sp, -134
                  sltu         s8, zero, sp
                  and          t4, s3, s8
                  xori         s2, s5, 919
                  andi         s11, tp, 1671
                  addi         t5, s2, -1917
                  srli         t1, a3, 22
                  sltiu        t4, ra, -1964
                  xor          s11, a1, t3
                  srli         sp, s11, 4
                  or           s7, t5, s10
                  lui          a7, 133275
                  add          s3, a7, t0
                  auipc        s0, 983915
                  xor          a5, t4, s0
                  srl          s11, ra, s3
                  addi         s8, s3, 155
                  auipc        a1, 367268
                  sra          zero, a5, s4
                  xor          a6, a5, tp
                  xor          s2, s10, a6
                  srai         s10, s2, 7
                  lui          sp, 2814
                  slti         s10, s11, -1721
                  sub          zero, s8, s1
                  xor          sp, s1, s5
                  srl          a4, s0, s5
                  srl          a4, a1, sp
                  sll          s10, t4, s10
                  slti         s2, a2, 1067
                  andi         a1, t3, -1808
                  xori         s7, zero, -1612
                  slli         a4, t0, 4
                  slti         t2, a2, 1899
                  sra          t2, s10, s9
                  slli         s0, a1, 21
                  slti         ra, a0, 1550
                  addi         sp, sp, 1145
                  sltu         a0, s1, s3
                  addi         a3, s2, -759
                  addi         t2, a7, -805
                  sll          s2, s9, a7
                  sltiu        a7, s1, 1637
                  add          s1, s3, s2
                  srli         s6, ra, 3
                  srli         a6, a3, 22
                  slli         a2, sp, 8
                  slli         sp, s0, 22
                  addi         a1, s2, -256
                  srl          s6, a5, s10
                  sltiu        s6, t3, -1264
                  sll          s8, t5, t5
                  ori          a6, a1, -1022
                  srai         a6, s11, 30
                  sltiu        s6, s11, 101
                  add          t2, s5, s4
                  xor          s4, tp, t6
                  slli         s1, ra, 21
                  ori          s10, t2, -2003
                  srai         s8, tp, 16
                  srai         s1, t1, 23
                  srli         t4, sp, 22
                  ori          s4, s3, -1158
                  srli         s11, zero, 31
                  lui          s4, 310918
                  add          t1, t0, zero
                  xori         tp, a2, -1300
                  lui          s6, 450962
                  slli         zero, t4, 23
                  srl          a7, sp, t5
                  srl          t2, t3, t6
                  slt          a2, t4, a7
                  srai         s3, s4, 29
                  add          a2, s6, s8
                  nop
                  sltu         a7, s10, s6
                  andi         t1, s6, 862
                  lui          s3, 47477
                  and          s2, s2, s3
                  ori          gp, t1, -825
                  slli         s0, a7, 22
                  srl          t2, a1, t6
                  addi         s5, s2, 1057
                  ori          t5, s4, -979
                  sll          s0, s1, gp
                  sll          s8, s10, s8
                  slti         a3, s3, -1200
                  xor          a0, s8, s3
                  xor          s5, s1, s9
                  lui          s1, 416290
                  auipc        s5, 198103
                  slti         zero, a5, -1961
                  xor          a0, s9, sp
                  srli         s11, t5, 0
                  ori          sp, s10, -165
                  slti         a0, s8, -502
                  slti         ra, s4, 724
                  srai         t6, s4, 31
                  sub          s5, s6, t2
                  xori         s0, tp, 559
                  xori         zero, t4, 1091
                  slti         s6, gp, -255
                  srl          zero, a0, s10
                  ori          s0, a7, -662
                  sltiu        gp, sp, -371
                  srli         a2, sp, 20
                  ori          a1, s1, -1954
                  xor          gp, s1, a6
                  addi         t5, s9, 1244
                  add          a0, a3, gp
                  or           a1, tp, tp
                  slli         s4, s9, 26
                  xor          s6, t3, zero
                  sub          s11, sp, t6
                  auipc        s10, 1022382
                  or           a7, s8, a3
                  slli         a7, s11, 23
                  sltiu        s11, s10, 1118
                  ori          a3, s9, -645
                  auipc        t6, 711647
                  ori          a5, s0, 2014
                  lui          gp, 156222
                  ori          a6, ra, -500
                  and          s7, sp, s1
                  srai         a4, s3, 11
                  sub          sp, t4, s9
                  slt          t1, s0, s3
                  lui          t5, 771426
                  xori         t6, s11, 190
                  srai         a4, s3, 0
                  sltu         t4, zero, t2
                  ori          a1, zero, 1728
                  or           a7, t0, t4
                  and          s5, a5, s1
                  xor          zero, a4, a2
                  srl          s7, a4, a0
                  sll          a0, t2, a1
                  or           s7, t6, t6
                  xor          s8, t4, tp
                  ori          s0, a2, 1804
                  or           a6, gp, zero
                  andi         a2, s10, 1383
                  sltu         s1, t1, a0
                  slli         t5, a7, 26
                  xor          t2, s9, a3
                  lui          s6, 245987
                  sltu         s10, t5, s2
                  sltu         a4, s0, gp
                  or           s4, t1, t0
                  or           a7, a7, s7
                  nop
                  sra          zero, s4, s5
                  addi         a4, sp, 256
                  sll          s1, s11, a3
                  or           gp, tp, s5
                  add          ra, s8, s8
                  and          t1, s3, a0
                  sra          s10, s6, s3
                  sltiu        t2, s2, 678
                  sll          s0, s8, s8
                  srl          a3, t2, a3
                  sltiu        a7, s4, -245
                  ori          s10, a0, -628
                  slli         s1, t3, 25
                  srai         t4, s2, 30
                  addi         a7, s4, -1254
                  slli         a0, tp, 9
                  nop
                  sub          s6, a7, a3
                  sub          t5, t1, a1
                  srai         t2, s4, 23
                  sltiu        t4, t2, 1151
                  xor          zero, a4, s1
                  lui          s0, 442619
                  sll          s2, s0, s10
                  sra          s6, s8, a3
                  srl          s8, gp, tp
                  addi         s2, a1, 799
                  lui          t5, 578539
                  ori          s8, t2, 543
                  sll          t2, sp, s2
                  and          a1, a5, zero
                  slti         a6, a5, -1735
                  or           s5, a6, s6
                  srai         t5, s1, 23
                  sra          s6, ra, s0
                  lui          s11, 866564
                  addi         s2, t2, 1873
                  srl          s3, t0, s3
                  andi         a6, s7, 386
                  or           s4, tp, gp
                  auipc        s7, 825969
                  addi         sp, t2, 1247
                  xor          t4, tp, s8
                  sra          s2, a1, t6
                  andi         a7, zero, -380
                  srai         s1, t1, 23
                  add          a6, s1, a5
                  or           t6, s9, s2
                  slti         t1, t2, 1710
                  lui          t2, 460542
                  sra          s11, s3, gp
                  srai         a5, t2, 28
                  slli         a6, s3, 11
                  andi         a0, ra, 1528
                  or           a1, s11, t2
                  or           t6, s2, a5
                  nop
                  xori         t6, tp, -1389
                  slti         s10, s10, -692
                  slli         s7, s4, 13
                  or           s11, zero, s3
                  nop
                  srli         a7, gp, 26
                  addi         s10, ra, -1958
                  slli         s3, a0, 11
                  slt          s7, t0, t3
                  sltiu        s11, s9, 901
                  sub          a2, s8, zero
                  srai         s10, t5, 16
                  srai         a2, t6, 4
                  xori         s0, s4, -581
                  sll          s4, s2, s3
                  slt          s5, a6, s0
                  xori         t5, t6, -72
                  sltu         s2, t1, a5
                  slt          a4, s5, s5
                  slli         t4, t6, 2
                  sll          a0, s3, t2
                  srli         a6, zero, 5
                  andi         s6, t5, -1062
                  xor          a0, s5, s10
                  sra          sp, a1, s7
                  sra          t6, t2, s3
                  ori          zero, s11, -193
                  xori         ra, a5, 1639
                  add          s5, s10, s1
                  sub          s1, s8, t3
                  sub          gp, t3, s2
                  slt          zero, s1, a0
                  sra          s10, s8, a3
                  sltiu        a7, t4, -700
                  sltiu        t6, tp, 1768
                  slti         s10, s8, -1051
                  srli         tp, t0, 30
                  ori          s1, s4, 1455
                  or           ra, s7, tp
                  auipc        t5, 227191
                  nop
                  slli         s0, a4, 11
                  lui          t6, 436
                  slt          s2, t3, a3
                  ori          s7, s4, -1877
                  slti         s6, a2, 1302
                  add          s8, s3, t1
                  lui          t5, 180982
                  ori          s7, s6, 926
                  sll          s10, t5, s0
                  nop
                  sltiu        sp, s6, 2032
                  addi         s6, s6, -1483
                  sub          s7, a1, t1
                  sll          t4, s11, s4
                  slli         s2, s8, 5
                  slt          zero, tp, a2
                  andi         s7, s7, -1888
                  sra          s1, a2, a2
                  xor          gp, s3, tp
                  slli         a6, t0, 25
                  sub          a3, t4, a2
                  sll          s7, s2, sp
                  auipc        a6, 716143
                  slt          t4, a6, ra
                  srai         t5, s11, 17
                  ori          ra, s10, -1556
                  or           s4, t0, a2
                  lui          sp, 813554
                  ori          s2, s8, -1119
                  xor          s3, a4, sp
                  sub          s10, sp, a3
                  slti         gp, s9, -69
                  and          zero, tp, s4
                  ori          s5, tp, 557
                  sub          s1, s7, s9
                  srai         a7, s6, 15
                  ori          t6, a7, 981
                  sub          s11, t5, gp
                  sub          tp, s2, s6
                  srl          t6, s0, s0
                  slli         s3, a0, 17
                  lui          t2, 340007
                  slti         a5, s9, 670
                  add          a7, a4, t4
                  srai         t1, ra, 4
                  srai         zero, t5, 9
                  slti         gp, tp, 395
                  xor          t2, t1, tp
                  andi         a1, gp, 1592
                  sll          a7, gp, a0
                  xor          s3, gp, s3
                  slt          s10, a4, zero
                  slt          a7, t3, t3
                  lui          t2, 170315
                  sltu         t5, a0, a3
                  add          a2, a4, a0
                  srli         s0, s9, 15
                  srai         s4, s1, 24
                  sra          a7, zero, s8
                  or           s3, a0, ra
                  nop
                  slli         a2, zero, 8
                  xori         a5, zero, -1504
                  add          s11, s8, a4
                  xori         a1, zero, 1232
                  addi         a4, s9, -1703
                  ori          s7, a2, -899
                  srl          s4, t0, s8
                  slti         a7, s11, 33
                  xor          s2, a3, s7
                  srai         s4, a2, 5
                  srli         t6, zero, 10
                  and          a2, s8, a5
                  slli         t1, t5, 19
                  or           tp, a5, a4
                  slt          s0, a0, s8
                  xor          s11, a4, t0
                  add          zero, s8, a5
                  sra          t5, ra, a7
                  or           s4, s10, a1
                  sra          t4, s6, a3
                  auipc        s6, 1036465
                  srl          tp, a4, t6
                  andi         gp, a0, -1105
                  addi         s4, tp, 394
                  add          a0, t4, s11
                  auipc        gp, 551963
                  or           s6, s4, s3
                  xor          a2, ra, a2
                  sra          a4, a6, s3
                  or           sp, s1, s4
                  xor          s3, s5, s8
                  srl          t6, t6, s7
                  sra          s4, t3, a3
                  add          a0, s3, a6
                  srli         s2, a0, 27
                  srl          s10, a2, s0
                  and          a4, s8, s1
                  nop
                  srl          gp, s1, t3
                  slt          s7, a4, s11
                  sll          t2, a3, t0
                  lui          t2, 1016453
                  add          a4, s6, t2
                  xori         zero, sp, -683
                  add          sp, t2, a0
                  srai         a1, ra, 17
                  slt          tp, s0, t2
                  srli         t4, t6, 7
                  or           sp, a2, a4
                  slt          s11, a2, s8
                  andi         s5, a5, 1478
                  andi         t6, s4, -470
                  or           t1, s6, s0
                  nop
                  slt          s8, a5, tp
                  xor          s8, t3, s2
                  srai         s2, s9, 27
                  srl          t5, gp, a6
                  and          s0, a5, s7
                  addi         gp, t5, 1604
                  nop
                  sll          a5, s11, a1
                  sll          t5, t2, s11
                  ori          t2, a0, 609
                  addi         t5, a2, 83
                  addi         ra, a2, -85
                  auipc        ra, 880542
                  auipc        t6, 303951
                  sll          s1, ra, a3
                  sltiu        s10, t5, 1109
                  andi         gp, s1, 1378
                  srl          t6, t6, t1
                  auipc        zero, 891654
                  andi         a7, t3, -549
                  nop
                  sub          a5, s4, t2
                  ori          s6, ra, 398
                  add          s11, a3, s1
                  sll          ra, t3, t2
                  and          a7, s11, a0
                  srl          tp, s2, t4
                  srai         a1, t4, 17
                  sltiu        t6, s10, -582
                  addi         t2, t2, 1175
                  sll          s1, t4, a1
                  sra          a4, s2, t2
                  sra          a0, gp, sp
                  slli         a3, a7, 16
                  sll          s1, a5, t0
                  sra          gp, zero, a7
                  lui          zero, 205921
                  sltiu        a4, ra, 260
                  and          ra, t2, t6
                  andi         t5, t2, -814
                  sra          a5, a2, a5
                  sub          sp, a3, s10
                  lui          a6, 954269
                  sll          a2, s4, gp
                  sltu         s0, s7, a0
                  nop
                  sltu         t1, gp, s11
                  srl          s10, a6, a1
                  sltiu        s6, t3, 1733
                  xor          s0, s3, s8
                  slti         t4, s4, 1918
                  addi         a2, a0, -958
                  srai         s0, t4, 9
                  slti         a5, a7, 1323
                  auipc        s6, 30353
                  and          t2, s11, sp
                  xor          s0, t0, s3
                  or           a6, a4, s8
                  andi         a7, t0, -192
                  srli         a6, t0, 28
                  srai         ra, a4, 31
                  sltiu        a5, s9, 749
                  auipc        t5, 319969
                  sltiu        s8, s11, 300
                  slti         s2, s0, 522
                  or           s8, t5, s5
                  srli         a7, s5, 0
                  sll          s1, s7, s1
                  or           a3, t5, t2
                  andi         s7, s11, 1427
                  lui          a2, 921358
                  sub          a6, a1, a4
                  sub          t4, t6, a1
                  add          t2, s10, s6
                  slti         s5, s6, 954
                  slti         s0, s0, -1654
                  sltu         t1, s0, a0
                  nop
                  srl          a6, t1, a4
                  nop
                  srli         a3, t4, 8
                  xori         s0, zero, -360
                  sll          zero, s6, s8
                  auipc        s4, 53211
                  slli         ra, gp, 17
                  andi         t4, s0, -2022
                  sltiu        ra, s1, -37
                  andi         gp, tp, 1032
                  slt          t5, s0, s2
                  sltu         t1, sp, s3
                  sra          a4, a7, t0
                  slli         a1, a7, 6
                  sub          t4, t3, a5
                  srai         s2, s3, 25
                  or           s8, s5, s8
                  srai         s8, s0, 7
                  xori         ra, t2, -958
                  sltu         t5, a2, s0
                  nop
                  sll          t2, a1, a0
                  auipc        s1, 661236
                  srai         s11, t1, 12
                  sltu         s2, t2, gp
                  and          a6, t3, sp
                  and          t4, a4, s7
                  slli         t1, t1, 4
                  ori          zero, s1, 743
                  lui          t6, 588254
                  add          s5, s11, t4
                  ori          a3, a6, -1180
                  sra          sp, s3, s4
                  nop
                  lui          s5, 151362
                  nop
                  sltiu        s8, a3, 1221
                  sll          a4, s8, s10
                  xor          t6, s6, sp
                  and          t5, s10, s2
                  andi         t1, a1, 695
                  andi         a7, a3, 1320
                  slt          tp, s3, t1
                  slt          a1, sp, a4
                  srl          gp, t6, gp
                  xor          tp, a1, a3
                  slli         a4, a5, 10
                  nop
                  sra          t5, t5, s7
                  slti         a6, a6, 1285
                  xor          s3, a0, a2
                  and          s11, t0, a1
                  lui          s4, 228338
                  sll          s4, a1, s9
                  nop
                  slti         a0, a7, -1039
                  srl          s2, a4, a4
                  xori         t6, s9, -319
                  addi         ra, s2, 1072
                  ori          a0, t0, -853
                  sub          sp, s9, s1
                  add          a6, a5, ra
                  slt          t2, sp, s8
                  srli         a5, t2, 3
                  nop
                  sltiu        a0, s10, 1201
                  lui          t2, 337351
                  srli         a3, s8, 14
                  ori          s10, ra, -1005
                  add          s5, t3, a0
                  srl          tp, sp, s8
                  slt          s5, t1, a0
                  slti         a5, t0, -645
                  nop
                  add          gp, s0, t6
                  lui          t6, 133092
                  xor          s0, s2, s6
                  lui          a5, 892736
                  nop
                  slli         s7, a4, 4
                  sll          tp, tp, t2
                  srl          s0, s11, s10
                  lui          a7, 242644
                  slli         zero, a3, 6
                  sub          t1, s7, t1
                  nop
                  sub          t5, a2, s10
                  srli         zero, a5, 29
                  srl          s1, t0, t1
                  add          a5, t6, a3
                  or           a0, t0, t1
                  slt          s2, t2, t6
                  lui          t2, 422617
                  slli         sp, s5, 23
                  slti         s5, t6, 872
                  or           tp, s9, s5
                  srl          t6, s2, s9
                  and          zero, a5, s8
                  srl          t6, s7, s4
                  srli         s3, t1, 16
                  srli         s6, t1, 30
                  slt          t2, s10, a3
                  nop
                  auipc        s4, 814335
                  srl          t4, s8, t1
                  lui          s3, 100344
                  sltu         s5, s10, s3
                  sll          a7, s2, a4
                  slli         s2, a7, 10
                  add          t1, a4, t3
                  and          s7, s10, t4
                  sub          a6, t2, s10
                  nop
                  and          gp, a6, s11
                  or           s2, a3, sp
                  srai         s7, t6, 30
                  slli         s7, a3, 23
                  sll          s11, zero, a7
                  auipc        a5, 180591
                  slli         a5, s1, 20
                  sltu         a5, s0, sp
                  sra          a3, a4, s9
                  xori         a4, t3, 1137
                  sra          s3, t1, a3
                  slli         s6, s11, 21
                  xor          gp, s6, s1
                  auipc        s11, 341820
                  xori         zero, a5, -1015
                  srl          a4, s2, t2
                  sub          s7, a5, s5
                  srl          t5, a6, s5
                  lui          a7, 817676
                  or           s7, ra, s2
                  slti         a6, a5, 1140
                  sra          a4, s11, ra
                  slt          a7, ra, t2
                  slt          ra, tp, a6
                  and          s11, ra, t0
                  srl          gp, s2, zero
                  add          s6, s3, ra
                  slt          t1, t1, gp
                  ori          s3, s11, -1854
                  or           s11, a3, s9
                  lui          s4, 1013439
                  auipc        s2, 474399
                  or           s7, a2, a4
                  auipc        s3, 932973
                  nop
                  slli         s10, s11, 22
                  xor          s4, s0, s9
                  slt          t4, t0, t4
                  slli         s1, t6, 4
                  srl          sp, a1, s9
                  sltiu        s7, gp, 200
                  ori          a1, s6, 613
                  auipc        t4, 617952
                  sltu         t1, zero, s0
                  lui          s2, 71848
                  sra          s1, t3, tp
                  addi         s1, a0, -1592
                  xori         tp, s5, -1924
                  lui          zero, 767046
                  slli         s0, ra, 10
                  slti         t1, s1, 49
                  slt          s10, s9, s9
                  addi         a7, s5, 51
                  slti         t4, a3, 70
                  sltu         sp, a3, s8
                  xori         a7, s10, -1763
                  srli         sp, a2, 24
                  slt          s7, t2, s0
                  slli         s11, a5, 27
                  or           s7, s0, s10
                  ori          t4, s7, -1502
                  srai         t1, a4, 8
                  srai         s4, a2, 10
                  li           s10, 0x6100d141 #start riscv_int_numeric_corner_stream_5
                  li           s0, 0xffffffff
                  li           a7, 0x57317198
                  li           s5, 0x7c9d9bd4
                  li           a1, 0xffffffff
                  li           t6, 0x1b54fb08
                  li           s1, 0x80000000
                  li           a4, 0xffffffff
                  li           s8, 0x80000000
                  li           s2, 0x80000000
                  lui          a1, 48395
                  sub          a7, s2, a4
                  lui          s1, 983887
                  auipc        a4, 413034
                  add          a4, s5, a4
                  nop
                  nop
                  nop
                  add          s5, a7, t6
                  lui          s8, 217021
                  nop
                  nop
                  lui          a4, 787998
                  lui          t6, 1037287
                  lui          t6, 629980
                  sub          s1, s10, a4
                  add          t6, s1, a4
                  addi         a1, s10, -1025
                  addi         a7, s1, 1116
                  add          s8, a7, s10
                  add          a4, a7, a1
                  auipc        a1, 152862
                  nop
                  nop
                  lui          s10, 577256
                  auipc        s2, 588026
                  auipc        s10, 632324
                  add          s10, s10, s10
                  add          s10, a1, a7 #end riscv_int_numeric_corner_stream_5
                  lui          zero, 807006
                  sra          t1, zero, a0
                  sltu         a7, ra, s7
                  xor          s6, a3, a6
                  sub          tp, t3, a0
                  srl          s0, a1, a1
                  and          a2, t6, a5
                  slti         a1, s10, -1003
                  srai         t6, a1, 8
                  and          s7, t5, a5
                  addi         s5, s11, -1798
                  lui          sp, 611913
                  and          t6, t4, s0
                  slli         t2, a3, 23
                  add          t4, sp, t5
                  srai         zero, s11, 21
                  sra          s8, a1, s5
                  slti         tp, s8, -1160
                  addi         s5, sp, 319
                  sra          s5, s7, gp
                  sltu         tp, a6, t0
                  auipc        s10, 626229
                  addi         a4, s11, 56
                  and          a0, a5, s1
                  sll          s8, gp, a4
                  sltu         s11, t3, s9
                  add          ra, a3, a4
                  or           gp, a7, s4
                  srai         a7, s9, 20
                  add          ra, t4, s8
                  ori          s8, s8, -22
                  add          s5, ra, t5
                  andi         a3, t1, 1631
                  or           s4, a3, t3
                  xori         tp, t6, 126
                  add          zero, s5, zero
                  xori         s10, s10, -872
                  nop
                  slli         s7, s2, 0
                  slli         tp, a1, 5
                  xori         s4, t2, -263
                  and          s5, t5, a5
                  slti         a5, sp, -1756
                  sltu         a5, t6, t3
                  auipc        tp, 540858
                  slli         t4, t4, 15
                  andi         s7, a1, 2029
                  xori         s4, s11, 2034
                  sub          t1, gp, zero
                  xori         s7, t5, 1021
                  add          a1, a4, t6
                  sll          a3, s7, a3
                  slt          t6, zero, t4
                  sll          s3, s3, a4
                  addi         a3, t1, 1701
                  xor          a4, s0, s3
                  sltiu        s8, s5, -211
                  add          a2, s1, t0
                  add          tp, s0, t0
                  lui          s5, 1007579
                  xor          a3, a3, sp
                  slli         s8, s9, 17
                  sll          a5, s1, s8
                  add          s3, t6, s2
                  srl          s1, t3, zero
                  or           t1, s5, a7
                  srai         a0, a0, 24
                  xori         s1, s0, -844
                  xori         a0, s7, 736
                  xor          s7, t4, t3
                  slt          a2, a4, a5
                  slti         a5, s10, -1485
                  sll          t5, s2, s11
                  sltu         s10, s4, a1
                  auipc        a7, 594066
                  slti         gp, a6, -740
                  srai         s7, t2, 22
                  or           a4, zero, s8
                  sll          a5, a6, s0
                  xori         a7, t1, -1128
                  auipc        s10, 824656
                  sub          s7, t5, a3
                  add          a1, s3, gp
                  sub          a4, a7, sp
                  auipc        a0, 456952
                  auipc        tp, 186797
                  add          s5, s4, s6
                  srl          a6, s0, s1
                  sltiu        s7, gp, -1804
                  lui          s4, 352224
                  sltu         t6, s7, t4
                  srli         a0, a2, 6
                  lui          a5, 75307
                  srl          t6, a3, t5
                  srli         t6, t3, 28
                  addi         a7, t6, -1271
                  or           a4, a2, t3
                  slt          s0, t0, s7
                  addi         s11, s9, -319
                  addi         ra, t1, 1949
                  lui          s7, 608813
                  add          t2, a7, a5
                  addi         a4, t5, -1337
                  srl          a0, t4, s0
                  and          ra, s8, s11
                  xor          a4, a3, sp
                  xori         s6, a2, 160
                  addi         a6, sp, -1720
                  sll          a0, s0, s7
                  and          s4, t1, a1
                  sltu         s8, a5, a1
                  srli         a0, s6, 21
                  srl          tp, s2, s10
                  sub          sp, sp, a4
                  sltiu        s11, s2, 190
                  sra          a5, s1, tp
                  andi         a6, s7, 433
                  sra          gp, s0, t2
                  slli         s5, t4, 30
                  slt          a5, t5, a4
                  xor          s8, a1, a0
                  andi         s5, t6, -940
                  andi         s0, a6, 1593
                  andi         t6, a2, 1848
                  sra          s4, a3, t2
                  srai         s4, s8, 3
                  sltiu        s1, t2, 104
                  nop
                  sltu         ra, s9, s5
                  slt          a4, t0, t2
                  auipc        t5, 1338
                  srli         s5, s4, 18
                  xori         t6, s6, 1633
                  sub          s6, s10, s0
                  srl          s10, s8, s10
                  srai         t2, a3, 29
                  sll          gp, s3, t6
                  lui          t4, 184888
                  sra          s7, s2, t4
                  lui          t4, 921004
                  slli         s11, s1, 0
                  add          s2, sp, a2
                  sub          t6, a5, s8
                  sltiu        a1, a4, -239
                  slti         zero, a0, -1363
                  sltu         s4, t1, a3
                  auipc        a5, 550272
                  andi         a3, s4, 1945
                  srl          gp, s3, gp
                  lui          a4, 888485
                  sltu         s10, s3, t6
                  or           ra, gp, t5
                  sub          t6, s5, t5
                  srli         t2, t1, 13
                  sll          t5, s6, s4
                  addi         gp, ra, -1023
                  srai         a6, s0, 7
                  xori         s5, s8, -156
                  andi         t5, s8, -141
                  add          s5, s8, t5
                  srli         t4, s5, 27
                  sltu         s6, s4, a6
                  slti         gp, s6, -183
                  slti         tp, s6, -2007
                  sltu         s3, t0, a4
                  auipc        a4, 522776
                  lui          s0, 740501
                  srai         a3, tp, 26
                  sll          s7, s5, s7
                  add          s2, s8, s5
                  or           a5, t4, sp
                  or           sp, s3, a1
                  lui          sp, 29245
                  srai         sp, t4, 9
                  srli         t5, gp, 22
                  slti         s2, s9, 298
                  srli         a7, s3, 3
                  sra          zero, a6, s8
                  slli         tp, s4, 18
                  add          a6, tp, t5
                  srai         t1, s3, 3
                  andi         gp, s11, 1539
                  slti         s2, tp, -1626
                  nop
                  srl          sp, s4, ra
                  nop
                  ori          s2, t0, -1682
                  sll          s4, s8, s7
                  andi         s10, a0, 167
                  slt          s5, a7, s0
                  srli         a2, a3, 21
                  srli         a0, t5, 3
                  nop
                  srli         s6, t5, 6
                  srl          s5, a0, zero
                  or           t5, s8, t4
                  lui          tp, 239794
                  and          t2, s8, t5
                  auipc        a2, 869461
                  lui          a5, 651893
                  srl          s5, t1, s8
                  sub          a3, s4, s7
                  sub          s10, s11, s11
                  slt          zero, a2, t2
                  or           ra, t1, sp
                  or           s5, s1, a6
                  srli         t6, a1, 14
                  sra          a7, s4, a1
                  ori          a3, a6, -427
                  srai         a1, s7, 17
                  sll          s1, s8, t5
                  sltiu        s11, t6, 778
                  andi         s10, s4, -1311
                  sra          t6, s7, t2
                  sra          a5, gp, a1
                  andi         s1, t4, -1929
                  srl          s11, s9, t1
                  auipc        s4, 837927
                  sltu         t2, s2, s7
                  sltiu        a1, s4, -1657
                  lui          s3, 1012317
                  srl          s10, sp, s8
                  andi         s6, s10, 1258
                  srl          s4, t0, t6
                  sltu         s0, ra, s0
                  auipc        s10, 569447
                  ori          s3, s5, -756
                  or           gp, s5, sp
                  nop
                  ori          a4, a5, -1310
                  xor          a0, a2, gp
                  sub          sp, t6, s9
                  slti         a1, t2, -407
                  sltu         s0, t4, s6
                  sltiu        a5, a7, -2004
                  addi         zero, t6, 1384
                  sub          s5, s7, a2
                  lui          zero, 781192
                  srl          sp, s0, a3
                  slti         a3, ra, -2007
                  add          t5, s2, a6
                  srli         t5, s2, 20
                  addi         a4, s2, 759
                  slt          s5, s10, t6
                  andi         s3, t2, 1564
                  add          s5, a2, t0
                  ori          t2, t1, 441
                  addi         s11, t1, 782
                  xor          s6, s9, t5
                  srli         a7, a1, 12
                  sltu         s11, a1, s10
                  sltu         s5, a1, s8
                  or           a6, s9, s5
                  srl          s4, a3, t2
                  andi         a3, t6, -945
                  slti         s8, t2, -239
                  ori          s3, s9, 831
                  srl          ra, a5, s6
                  xor          s6, t0, s5
                  slt          a3, tp, t5
                  and          tp, t2, a3
                  sra          t5, a0, s11
                  xor          a3, sp, s1
                  xori         a6, t5, -13
                  srli         t6, a6, 5
                  sub          s6, t5, ra
                  auipc        s3, 826995
                  addi         s1, s5, 1043
                  slt          s2, s10, a1
                  sltiu        ra, a7, 1718
                  auipc        ra, 765196
                  auipc        t2, 560560
                  srai         s7, zero, 21
                  add          t6, tp, gp
                  auipc        a0, 98940
                  sll          s3, s10, a0
                  nop
                  lui          s0, 340813
                  lui          s5, 396676
                  nop
                  xori         tp, t3, -294
                  slli         a2, a0, 12
                  sltiu        a5, t6, -1853
                  ori          zero, s4, 1653
                  slli         s5, s2, 18
                  nop
                  srli         s7, s2, 25
                  sra          t4, s7, a5
                  or           s5, s1, a5
                  auipc        a6, 586292
                  srai         a5, gp, 17
                  srl          s6, a3, s11
                  sra          s6, s3, s2
                  sub          s0, gp, s11
                  sltiu        t5, a4, -1404
                  and          a7, s1, t3
                  lui          tp, 1008296
                  srai         a1, s1, 17
                  sltiu        s0, a2, -933
                  slt          zero, ra, a5
                  sra          a7, a1, a7
                  sltu         a1, t6, s10
                  and          a4, t2, t0
                  slli         s5, a3, 4
                  srli         a0, s8, 17
                  sltiu        s2, a5, 54
                  sll          s1, a4, s4
                  sra          s1, tp, t1
                  ori          s11, t4, -409
                  add          a0, s11, gp
                  srl          a2, a0, t5
                  srai         tp, a0, 12
                  sltu         gp, t4, s9
                  srai         t4, ra, 5
                  lui          s8, 848041
                  sll          s2, sp, s10
                  sra          a1, s3, s7
                  xori         a3, a0, -390
                  sra          t1, s9, s11
                  nop
                  sub          t4, t6, s8
                  srai         s4, t4, 16
                  addi         t1, s5, 650
                  xori         ra, a2, -1671
                  sll          tp, sp, tp
                  lui          s5, 171487
                  sll          t4, ra, s11
                  add          s5, a0, t2
                  or           sp, t3, a5
                  xori         gp, a5, 279
                  sltiu        s1, s8, -1587
                  addi         t6, t0, 783
                  sra          t4, ra, tp
                  sltu         s2, a0, t6
                  xori         a0, t3, -444
                  andi         sp, a5, -1035
                  sltu         sp, a3, s8
                  slli         ra, a3, 22
                  sll          t5, t0, s7
                  auipc        a0, 5387
                  lui          t4, 659974
                  ori          a1, t1, -472
                  srl          s0, s7, s5
                  slt          ra, s3, sp
                  sub          s2, s9, a4
                  lui          s5, 687523
                  or           s0, s7, t3
                  sub          s2, gp, a3
                  sltu         s8, a0, s7
                  and          a1, s10, t2
                  sltu         a7, tp, s10
                  srli         s6, a6, 10
                  addi         s3, s1, 1722
                  sltu         sp, gp, a7
                  auipc        a0, 148058
                  xori         s7, a3, -832
                  add          s5, a3, gp
                  srli         a2, s7, 20
                  sub          s10, a1, zero
                  slti         s8, a1, -1382
                  andi         sp, s1, 679
                  slti         s3, s5, -1809
                  srli         s1, t6, 29
                  srl          s11, a5, s8
                  sub          a0, gp, a0
                  sltu         s11, t6, sp
                  auipc        s6, 770952
                  auipc        t2, 502326
                  sra          s8, ra, a0
                  slt          s2, zero, a4
                  slli         s0, a2, 4
                  sub          a5, s6, ra
                  sltu         s6, t4, s6
                  andi         t1, s7, 1970
                  sll          gp, s6, gp
                  ori          t6, s9, 283
                  andi         s7, a5, -1551
                  slti         s4, t4, 1125
                  srl          a6, s6, s7
                  xor          s10, t0, s7
                  addi         zero, t5, 1325
                  ori          a7, t2, 578
                  or           a0, zero, s10
                  auipc        t2, 524718
                  and          a3, a5, t2
                  sltiu        s6, gp, 651
                  slli         s5, a2, 24
                  srli         s7, t4, 16
                  srli         a7, t5, 13
                  add          a0, a4, s2
                  srl          t4, s2, a5
                  slli         t1, s0, 19
                  srl          s10, t0, s9
                  srai         s0, a4, 26
                  nop
                  srli         s6, a2, 28
                  nop
                  xori         a0, s4, 1957
                  add          s5, ra, a2
                  and          s8, t0, s8
                  xori         t5, s10, -1162
                  addi         s8, tp, 1978
                  or           t4, a2, a4
                  srli         s7, a0, 25
                  xor          tp, a4, t3
                  sub          s5, t4, tp
                  sra          a0, a7, s5
                  slli         s11, s1, 14
                  auipc        a3, 28637
                  andi         gp, s3, -400
                  sltu         ra, a5, gp
                  slli         s6, s0, 17
                  add          a4, t2, t3
                  auipc        a7, 617698
                  slli         s5, gp, 27
                  sltu         s0, sp, s9
                  add          a2, s5, s7
                  andi         s1, s11, -202
                  sltu         a3, s6, ra
                  srai         a5, t1, 14
                  xor          a5, s0, a0
                  nop
                  or           t2, a2, s11
                  srai         a7, a6, 9
                  srai         s8, s9, 4
                  andi         a0, gp, 1531
                  xori         sp, tp, 867
                  xor          tp, t3, sp
                  slti         sp, t6, 1030
                  or           a3, t0, s4
                  addi         a3, a3, -709
                  sub          t1, s2, s1
                  srai         a1, a7, 15
                  srli         a6, ra, 21
                  srl          s6, s7, a6
                  slti         a6, s10, 823
                  slli         a6, s0, 6
                  and          s3, a6, ra
                  srai         a7, gp, 5
                  slti         t1, t4, 862
                  auipc        s0, 586526
                  xor          gp, s7, s10
                  or           a5, s4, a3
                  srai         a2, a4, 6
                  auipc        s6, 750391
                  and          a3, sp, s2
                  srli         s6, tp, 20
                  lui          s3, 553274
                  and          a6, t0, t3
                  srl          s8, s0, s10
                  sltiu        s1, s3, -1847
                  or           s6, s9, s4
                  sll          s7, s10, t5
                  slti         gp, t3, 755
                  add          t2, s4, sp
                  xor          a4, s1, ra
                  nop
                  lui          s5, 961205
                  add          s2, a5, sp
                  srli         s3, a7, 1
                  lui          ra, 818273
                  lui          ra, 92410
                  srli         s1, a1, 1
                  slt          s2, s2, a4
                  slti         s10, a5, 1153
                  srai         t2, a2, 3
                  andi         s2, zero, -1011
                  addi         a7, s11, -1323
                  sra          a7, a2, t6
                  srai         sp, t2, 18
                  sltiu        gp, s7, 202
                  lui          a5, 29572
                  add          s5, s2, s0
                  slti         a1, t6, -1507
                  sll          a6, s1, t0
                  addi         gp, t0, -1925
                  or           t2, t3, t1
                  xor          a5, s1, s8
                  addi         a0, t2, 781
                  auipc        a6, 922753
                  slt          t1, a2, a1
                  sltiu        tp, a7, -1186
                  and          a0, tp, gp
                  andi         s11, s11, 1395
                  sltiu        s5, a0, -891
                  lui          s5, 759139
                  ori          s4, zero, 1112
                  andi         s11, t2, -287
                  and          t1, a6, gp
                  slti         tp, s9, 323
                  nop
                  nop
                  srli         a3, t2, 28
                  sll          a7, a6, a2
                  addi         s5, t6, 962
                  srai         s10, s11, 3
                  srl          s6, t2, sp
                  andi         a5, t3, -1688
                  andi         s7, a0, 626
                  sra          s3, s4, s4
                  add          t1, s3, a4
                  srai         t6, a0, 25
                  and          t4, sp, ra
                  sra          t5, t0, a7
                  lui          s3, 1027545
                  srl          a0, s2, tp
                  slt          t5, t4, tp
                  lui          s6, 8162
                  xor          gp, s10, a0
                  and          a1, s0, tp
                  srli         s0, t2, 25
                  xori         a6, s6, -1879
                  auipc        tp, 744831
                  sltiu        t5, s0, -1033
                  or           a0, gp, zero
                  or           t1, s3, t3
                  addi         a2, a0, 1452
                  sll          t5, t5, s7
                  srai         gp, t5, 6
                  addi         a4, tp, -263
                  ori          s2, s11, 1702
                  lui          gp, 465002
                  and          tp, s6, t4
                  sltiu        s4, t4, -917
                  slt          ra, a2, ra
                  ori          t5, a0, -710
                  slli         s11, t6, 14
                  nop
                  nop
                  auipc        gp, 307967
                  sub          t4, a1, sp
                  srli         s6, a0, 12
                  sra          a1, t4, a5
                  sra          s2, s7, s3
                  addi         a3, t1, -353
                  slti         t4, s7, 1518
                  srai         a4, t5, 2
                  or           a3, t3, s11
                  slt          s4, a2, t5
                  xor          tp, zero, s6
                  slti         s7, t5, 2034
                  sra          a5, s5, s6
                  slti         s1, a2, -1935
                  slt          t4, s7, a3
                  slt          s7, s8, a6
                  xori         t6, t2, -1635
                  srl          s0, s7, s5
                  lui          a0, 75896
                  addi         t1, zero, -1774
                  slt          s0, t0, a2
                  sltiu        t5, s6, 231
                  slli         s1, t5, 27
                  or           a4, s11, zero
                  sltiu        a1, s1, -1658
                  slti         a1, t0, -451
                  srl          s11, s10, s8
                  slt          s1, a1, sp
                  and          s10, s0, t3
                  and          s8, t3, zero
                  auipc        sp, 213745
                  auipc        zero, 791645
                  nop
                  sll          s6, t0, a5
                  sltiu        s11, a3, 1479
                  srl          s0, t2, s5
                  lui          t2, 120979
                  ori          s5, t6, -1702
                  srl          t4, s11, t3
                  slt          a6, a1, s8
                  andi         s3, s5, -1850
                  slt          gp, s4, t2
                  sra          t4, s6, s11
                  sltu         a0, t3, t3
                  nop
                  xor          t6, a6, s3
                  slti         s7, t0, 1814
                  srai         s7, t3, 11
                  xor          a5, gp, a6
                  srai         tp, tp, 27
                  xori         t6, s11, 1230
                  sll          t2, s0, s5
                  sltu         a5, s6, t4
                  xor          s5, s8, tp
                  andi         a0, s8, 2010
                  slti         s5, a1, -1903
                  or           a2, s1, s7
                  slt          t5, a5, s2
                  nop
                  lui          s0, 625445
                  xori         s1, a1, -1116
                  or           t4, t0, s0
                  add          a2, s0, s1
                  srai         a5, s5, 27
                  slt          s11, s7, s8
                  srl          s3, gp, a6
                  ori          s7, a5, -395
                  xor          a1, s5, t0
                  slti         a4, t5, 213
                  sub          s7, a5, s2
                  lui          zero, 1015400
                  lui          gp, 458778
                  addi         t5, sp, -1726
                  andi         t4, zero, 745
                  addi         s7, a5, -844
                  slti         s5, t5, -1247
                  nop
                  or           t5, t5, s6
                  sll          t2, t4, zero
                  add          s0, t6, t3
                  add          a2, t3, s0
                  nop
                  sltiu        s10, a2, 1696
                  xori         tp, s9, -1441
                  andi         t5, s1, 2
                  ori          s2, a1, -1306
                  srli         t2, a4, 10
                  andi         s6, sp, -70
                  and          sp, s9, s5
                  sra          s11, a3, tp
                  srl          a5, s2, ra
                  addi         t5, s0, 607
                  and          t4, s9, t6
                  nop
                  srl          ra, a7, t6
                  sltu         a7, t1, t2
                  or           sp, a0, t6
                  nop
                  or           a3, sp, t4
                  srl          a2, s2, s9
                  slti         s8, s1, 239
                  xor          s11, a6, gp
                  slli         s4, a2, 24
                  andi         a0, t3, 1284
                  sll          a6, s5, a1
                  andi         a3, s0, 2039
                  xor          tp, s2, t6
                  slt          t4, a0, a3
                  slt          t4, s6, s0
                  sll          s6, s0, a4
                  addi         s8, a4, 195
                  srai         s0, sp, 10
                  slti         s5, s6, -1845
                  ori          s5, gp, 371
                  sltu         ra, a7, t0
                  auipc        a4, 81386
                  auipc        s8, 290133
                  ori          s3, a4, -1388
                  sll          a0, s7, a4
                  sltu         zero, t6, s6
                  srai         sp, zero, 22
                  andi         s3, s2, 1675
                  slti         a6, t1, 1695
                  slti         a0, tp, -515
                  or           s0, a7, a5
                  add          a2, sp, sp
                  lui          s5, 215250
                  and          s11, t0, a1
                  srai         s6, a2, 4
                  add          a4, s2, t3
                  sltu         s2, s0, a4
                  and          s0, a1, zero
                  andi         t5, sp, -858
                  xori         t1, a3, -1421
                  nop
                  srli         s10, sp, 26
                  slli         s8, s6, 26
                  sll          a5, s1, s9
                  auipc        s10, 930267
                  sub          a2, s11, s1
                  lui          t4, 139072
                  sll          s7, s3, s3
                  auipc        s6, 573199
                  slti         sp, a1, 1722
                  srl          a7, gp, s10
                  slli         tp, t3, 11
                  srl          s7, a3, t2
                  add          s2, a5, a7
                  srai         t4, s6, 26
                  xor          t6, a2, s5
                  slti         t6, s6, -1853
                  sra          a5, t6, a0
                  sltu         a4, s10, s3
                  auipc        s11, 478068
                  slti         s3, a6, -483
                  auipc        t1, 554055
                  lui          tp, 352087
                  srli         s7, s0, 4
                  slt          s6, ra, t2
                  srli         a0, a4, 5
                  srl          a6, ra, s4
                  slt          s10, a6, s10
                  and          s2, s1, t2
                  sltu         a1, s3, s5
                  srl          t1, sp, s8
                  lui          tp, 493030
                  add          t4, s2, s7
                  sltu         a0, a2, a4
                  srli         sp, sp, 28
                  or           s6, a6, t3
                  sra          s0, a1, a2
                  sra          s10, s7, a6
                  lui          t5, 247207
                  xor          s10, t1, a0
                  xor          s4, t1, ra
                  nop
                  addi         s5, a6, 448
                  xori         ra, s6, 267
                  add          s1, s0, a4
                  or           t5, s10, a7
                  and          a2, t3, a2
                  auipc        a0, 606080
                  xori         s6, a5, 363
                  auipc        s2, 495083
                  slli         s11, s8, 26
                  srl          s10, t2, s4
                  sll          sp, t2, s4
                  or           a7, s10, t6
                  add          s4, t2, s1
                  auipc        s3, 995884
                  sub          s6, t1, a4
                  li           s3, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           a4, 0x6df18f50
                  li           s5, 0x0
                  li           a3, 0x0
                  li           s8, 0x0
                  li           s6, 0xffffffff
                  li           s4, 0xffffffff
                  li           tp, 0x80000000
                  li           gp, 0x7cc7e357
                  li           s1, 0x80000000
                  add          s5, s1, s5
                  add          gp, s3, tp
                  auipc        a3, 208043
                  sub          a4, gp, s5
                  addi         a3, tp, 1770
                  nop
                  addi         a3, s8, 387
                  auipc        a3, 685835
                  nop
                  lui          s6, 507637
                  addi         a3, a4, 1419
                  addi         s3, s5, -924
                  lui          s5, 130904
                  sub          s3, a3, s5
                  addi         s5, s8, 640
                  add          a4, s4, s4
                  sub          s8, s8, s8
                  addi         s1, tp, -1908
                  auipc        s8, 263164
                  sub          gp, gp, gp
                  lui          s8, 121164
                  nop
                  sub          s6, gp, gp
                  addi         s8, tp, -1966
                  nop
                  add          s6, s4, gp
                  add          s3, s6, s6
                  nop #end riscv_int_numeric_corner_stream_15
                  srli         a7, sp, 9
                  slt          gp, t3, s5
                  slti         t6, a5, 37
                  sltiu        t2, ra, -554
                  xori         s8, s8, 1063
                  xori         a2, s7, 1754
                  slti         s11, t3, -315
                  slt          gp, s7, t6
                  add          s4, a2, a1
                  ori          a3, a2, -165
                  slt          sp, ra, gp
                  sra          s6, zero, t4
                  sub          t5, s8, t6
                  sll          a7, a6, t6
                  srli         a5, s6, 21
                  lui          t4, 107046
                  sltu         s0, s9, t1
                  sll          s3, t6, t0
                  slt          s0, t1, s8
                  slli         tp, s9, 27
                  sra          s11, ra, t4
                  sra          a5, a2, a6
                  slli         gp, t1, 24
                  la x25, test_done
                  jalr x0, x25, 0
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
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x28, x5, zero
                  csrr x9, 0x300 # MSTATUS
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 31
                  bne x9, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x9, 0x341 # MEPC
                  csrr x9, 0x342 # MCAUSE
                  li x16, 0x3 # BREAKPOINT
                  beq x9, x16, ebreak_handler
                  li x16, 0x8 # ECALL_UMODE
                  beq x9, x16, ecall_handler
                  li x16, 0x9 # ECALL_SMODE
                  beq x9, x16, ecall_handler
                  li x16, 0xb # ECALL_MMODE
                  beq x9, x16, ecall_handler
                  li x16, 0x1
                  beq x9, x16, instr_fault_handler
                  li x16, 0x5
                  beq x9, x16, load_fault_handler
                  li x16, 0x7
                  beq x9, x16, store_fault_handler
                  li x16, 0xc
                  beq x9, x16, pt_fault_handler
                  li x16, 0xd
                  beq x9, x16, pt_fault_handler
                  li x16, 0xf
                  beq x9, x16, pt_fault_handler
                  li x16, 0x2 # ILLEGAL_INSTRUCTION
                  beq x9, x16, illegal_instr_handler
                  csrr x16, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

ecall_handler:    
                  la x9, _start
                  sw x0, 0(x9)
                  sw x1, 4(x9)
                  sw x2, 8(x9)
                  sw x3, 12(x9)
                  sw x4, 16(x9)
                  sw x5, 20(x9)
                  sw x6, 24(x9)
                  sw x7, 28(x9)
                  sw x8, 32(x9)
                  sw x9, 36(x9)
                  sw x10, 40(x9)
                  sw x11, 44(x9)
                  sw x12, 48(x9)
                  sw x13, 52(x9)
                  sw x14, 56(x9)
                  sw x15, 60(x9)
                  sw x16, 64(x9)
                  sw x17, 68(x9)
                  sw x18, 72(x9)
                  sw x19, 76(x9)
                  sw x20, 80(x9)
                  sw x21, 84(x9)
                  sw x22, 88(x9)
                  sw x23, 92(x9)
                  sw x24, 96(x9)
                  sw x25, 100(x9)
                  sw x26, 104(x9)
                  sw x27, 108(x9)
                  sw x28, 112(x9)
                  sw x29, 116(x9)
                  sw x30, 120(x9)
                  sw x31, 124(x9)
                  la x25, write_tohost
                  jalr x0, x25, 0

instr_fault_handler:
                  add x5, x28, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

load_fault_handler:
                  add x5, x28, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

store_fault_handler:
                  add x5, x28, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

ebreak_handler:   
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x5, x28, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

illegal_instr_handler:
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x5, x28, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x9, 0x300 # MSTATUS;
                  csrr  x9, 0x304 # MIE;
                  csrr  x9, 0x344 # MIP;
                  csrrc x9, 0x344, x9 # MIP;
                  add x5, x28, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
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
