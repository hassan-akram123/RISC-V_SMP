.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x30, h0_start
jalr x0, x30, 0
h0_start:
                  li x18, 0x40000100
                  csrw 0x301, x18
kernel_sp:        
                  la x6, kernel_stack_end

trap_vec_init:    
                  la x18, mtvec_handler
                  ori x18, x18, 0
                  csrw 0x305, x18 # MTVEC

mepc_setup:       
                  la x18, init
                  csrw 0x341, x18

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x18, 0x1800
                  csrw 0x300, x18 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x7
                  li x2, 0x0
                  li x3, 0xf3d801f6
                  li x4, 0xfad7f5ff
                  li x5, 0x80000000
                  li x7, 0x0
                  li x8, 0x0
                  li x9, 0xf8455879
                  li x10, 0x79679edc
                  li x11, 0xf
                  li x12, 0x0
                  li x13, 0x80000000
                  li x14, 0xed295300
                  li x15, 0x3
                  li x16, 0xff9e81c0
                  li x17, 0x80000000
                  li x18, 0x2
                  li x19, 0x80000000
                  li x20, 0xfb24a3b0
                  li x21, 0x6d775a01
                  li x22, 0xf
                  li x23, 0x202352c7
                  li x24, 0xf2070bdd
                  li x25, 0x0
                  li x26, 0x0
                  li x27, 0xf
                  li x28, 0xf109bb99
                  li x30, 0x2f4db03a
                  li x31, 0xa931bb34
                  la x29, user_stack_end
main:             li           s2, 0x904d4d2 #start riscv_int_numeric_corner_stream_3
                  li           a3, 0x0
                  li           s8, 0xfc94a48a
                  li           gp, 0x80000000
                  li           a7, 0xbd7f42f3
                  li           s6, 0x0
                  li           t3, 0x80000000
                  li           s9, 0xffffffff
                  li           tp, 0xffffffff
                  li           s3, 0x0
                  addi         s2, s9, -1532
                  nop
                  lui          s9, 321925
                  lui          s9, 495663
                  add          gp, gp, s9
                  auipc        a3, 817848
                  nop
                  nop
                  nop
                  lui          s6, 43986
                  sub          s9, t3, s2
                  nop
                  auipc        s2, 365296
                  addi         a3, tp, -1306
                  addi         t3, a3, -1169
                  addi         a3, a3, 1939
                  sub          s2, s8, a3
                  add          s2, s9, s2
                  addi         a3, s3, 336
                  add          gp, s2, s2
                  addi         gp, gp, -601
                  lui          tp, 287793
                  nop
                  addi         s3, s9, -644
                  lui          s8, 881530
                  auipc        t3, 553418
                  nop
                  add          s8, gp, t3 #end riscv_int_numeric_corner_stream_3
                  li           tp, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           s4, 0x80000000
                  li           t3, 0xff484a52
                  li           a4, 0x0
                  li           s6, 0xffffffff
                  li           t2, 0xffffffff
                  li           a3, 0xffffffff
                  li           s7, 0xffffffff
                  li           s11, 0x4d88e4ff
                  li           s5, 0x0
                  add          tp, a4, a3
                  auipc        s6, 408243
                  auipc        tp, 764790
                  auipc        s6, 807462
                  nop
                  sub          s7, tp, t2
                  auipc        s11, 464127
                  lui          s7, 748585
                  addi         a4, t2, 1658
                  addi         t2, t3, 11
                  auipc        s11, 913338
                  sub          s6, tp, s11
                  add          a3, s11, s7
                  addi         t3, s5, -1522
                  sub          t3, t3, tp
                  lui          s7, 373777
                  addi         s11, t3, -1346
                  lui          s5, 590019 #end riscv_int_numeric_corner_stream_0
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           s1, 0x71cc69f3
                  li           t0, 0xffffffff
                  li           s5, 0x80000000
                  li           a6, 0x0
                  li           s8, 0x9d2fee5d
                  li           s3, 0x0
                  li           s11, 0x2502ba2
                  li           a0, 0xffffffff
                  li           a2, 0x0
                  addi         s5, a6, -788
                  lui          s8, 285500
                  auipc        s1, 197451
                  add          a0, s4, a2
                  nop
                  sub          s3, s1, a2
                  addi         s5, a2, -1656
                  auipc        s11, 688051
                  auipc        a2, 820380
                  nop
                  auipc        t0, 402070
                  addi         s4, a0, -330
                  lui          s3, 567802
                  lui          s5, 227577
                  sub          t0, s4, s5 #end riscv_int_numeric_corner_stream_11
                  li           t6, 0xffffffff #start riscv_int_numeric_corner_stream_7
                  li           tp, 0x80000000
                  li           a7, 0x0
                  li           ra, 0xffffffff
                  li           s5, 0xffffffff
                  li           t3, 0x0
                  li           s9, 0x80000000
                  li           s3, 0x0
                  li           sp, 0x80000000
                  li           s0, 0xb1f2712e
                  lui          s3, 11379
                  nop
                  lui          s5, 424113
                  sub          t3, tp, s0
                  nop
                  nop
                  auipc        s9, 439367
                  sub          s0, s9, t6
                  nop
                  nop
                  auipc        s0, 381034
                  sub          s3, ra, a7
                  auipc        ra, 617748
                  auipc        ra, 364451
                  auipc        s5, 939663
                  sub          s9, s3, s3
                  auipc        ra, 638451
                  lui          s5, 251886
                  auipc        tp, 664172
                  auipc        s3, 811325
                  add          sp, s9, s5
                  sub          s3, s5, t3 #end riscv_int_numeric_corner_stream_7
                  li           tp, 0x1969e422 #start riscv_int_numeric_corner_stream_9
                  li           a1, 0xffffffff
                  li           a5, 0x828e66da
                  li           s4, 0x884ca37b
                  li           a0, 0x17043c7e
                  li           t2, 0x80000000
                  li           a7, 0x0
                  li           a4, 0x0
                  li           gp, 0xffffffff
                  li           a6, 0xffffffff
                  nop
                  add          a4, a4, a7
                  sub          gp, a7, t2
                  addi         a5, a1, 1560
                  sub          a1, tp, a6
                  add          gp, a6, gp
                  lui          a1, 348148
                  addi         s4, a1, 515
                  add          a1, a6, a6
                  lui          a1, 393438
                  addi         t2, a1, 997
                  auipc        tp, 659482
                  lui          a1, 594904
                  add          s4, a6, a0
                  lui          a7, 786539
                  nop
                  nop
                  nop
                  add          a1, a7, a0
                  nop
                  nop
                  lui          a7, 465346 #end riscv_int_numeric_corner_stream_9
                  li           a7, 0x958df4fa #start riscv_int_numeric_corner_stream_6
                  li           t2, 0xffffffff
                  li           s4, 0xffffffff
                  li           s10, 0x0
                  li           gp, 0x80000000
                  li           s8, 0x0
                  li           s0, 0x0
                  li           t3, 0x750b2522
                  li           a2, 0xffffffff
                  li           a6, 0xffffffff
                  auipc        s8, 486679
                  nop
                  lui          gp, 727917
                  addi         t3, s0, -1082
                  addi         t2, s0, -2002
                  sub          a2, a7, s8
                  addi         gp, a2, 2036
                  add          gp, s4, t2
                  add          s4, s0, t2
                  addi         gp, t3, -1341
                  lui          s4, 602156
                  addi         s8, gp, -904
                  addi         a7, a6, -360
                  lui          t2, 932337
                  nop
                  auipc        s4, 940235
                  auipc        gp, 298835
                  nop
                  add          s4, s4, s10
                  lui          gp, 706950
                  addi         gp, s4, -163
                  addi         s4, gp, 456 #end riscv_int_numeric_corner_stream_6
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           a7, 0x80000000
                  li           s9, 0x174e8a16
                  li           s5, 0x0
                  li           s11, 0x9805a45e
                  li           a4, 0xffffffff
                  li           s7, 0x98b9ecf4
                  li           a5, 0x80000000
                  li           s1, 0x0
                  li           ra, 0xf0d0ee60
                  addi         ra, s5, 1946
                  add          s7, s9, s5
                  lui          a4, 969296
                  addi         s1, a4, 1345
                  addi         ra, s1, 410
                  add          ra, ra, a7
                  auipc        ra, 887881
                  sub          s8, s5, s8
                  auipc        s7, 686830
                  lui          ra, 686158
                  sub          a4, s7, s11
                  addi         s9, a4, 523
                  addi         a7, s9, 20
                  auipc        s9, 562754
                  lui          a4, 518555
                  nop
                  sub          a7, a7, s7
                  auipc        s5, 1048281
                  lui          s7, 565284 #end riscv_int_numeric_corner_stream_18
                  li           s11, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           a0, 0x76996169
                  li           s5, 0xdd6eda3b
                  li           ra, 0x0
                  li           a7, 0x80000000
                  li           s0, 0xffffffff
                  li           a6, 0x80000000
                  li           s7, 0xffffffff
                  li           tp, 0x4560285
                  li           a2, 0x80000000
                  addi         a0, a2, -803
                  auipc        a0, 99893
                  nop
                  nop
                  auipc        s5, 239152
                  add          s7, s11, a7
                  add          a2, ra, s11
                  lui          ra, 50177
                  addi         a7, a0, 1215
                  addi         s11, a7, -109
                  lui          tp, 179808
                  sub          s11, s7, s7
                  lui          s11, 67897
                  nop
                  add          ra, a7, a0
                  auipc        s11, 973699
                  addi         a7, s11, -172
                  sub          a6, a2, a6
                  auipc        a6, 445819
                  auipc        a7, 145498
                  add          a7, s0, ra
                  auipc        a2, 381025
                  auipc        a6, 261921
                  auipc        a7, 519851
                  nop
                  addi         a0, s0, -1438
                  nop #end riscv_int_numeric_corner_stream_8
                  li           a1, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           ra, 0xffffffff
                  li           s5, 0x80000000
                  li           sp, 0xffffffff
                  li           s6, 0x0
                  li           s11, 0x0
                  li           t6, 0x0
                  li           s0, 0xffffffff
                  li           s10, 0x80000000
                  li           s4, 0xffffffff
                  add          sp, s10, s4
                  sub          a1, sp, s10
                  sub          s6, s11, s4
                  lui          a1, 264167
                  lui          sp, 143452
                  auipc        s0, 953585
                  nop
                  auipc        s10, 30433
                  add          sp, sp, t6
                  sub          s5, s10, s10
                  add          s5, ra, s4
                  add          s0, a1, s5
                  nop
                  add          t6, s6, s5
                  auipc        s4, 230562
                  lui          t6, 445115 #end riscv_int_numeric_corner_stream_15
                  sltiu        a6, s7, -329
                  slti         s2, s6, -1407
                  ori          a5, a4, 1117
                  nop
                  slli         s1, zero, 29
                  srai         s11, s7, 13
                  auipc        a3, 454835
                  and          s0, s2, t1
                  andi         s8, t1, 125
                  andi         s2, t3, 574
                  addi         a5, s9, 1072
                  ori          s2, a0, 1101
                  xori         t2, s1, 621
                  sra          s0, a0, s4
                  andi         zero, s7, -1673
                  sra          t0, a3, t0
                  xori         t6, gp, -311
                  add          t3, a0, ra
                  srli         s10, s8, 4
                  slti         a2, a1, -2004
                  sra          s10, a1, a6
                  slt          s5, t6, s8
                  or           s9, s0, a5
                  srai         gp, gp, 12
                  srl          s2, tp, s2
                  andi         s1, s2, -2030
                  slli         s10, s10, 2
                  sltu         t3, s9, s2
                  and          sp, a4, s5
                  nop
                  auipc        gp, 500116
                  sub          a4, a4, a1
                  srai         a0, a7, 10
                  slti         s8, t6, 1038
                  sll          a7, s2, a4
                  slli         zero, sp, 6
                  sltu         a7, s10, zero
                  slli         s5, s4, 30
                  sltu         s1, a7, gp
                  nop
                  srl          a2, s6, s11
                  sltu         zero, s7, s4
                  sltu         a7, t3, s6
                  addi         zero, s10, -780
                  ori          a0, t0, -1139
                  slli         a6, ra, 17
                  andi         t3, ra, -292
                  srli         a7, s4, 6
                  or           t3, s1, a5
                  addi         s10, a6, 1440
                  sltu         s6, t0, s3
                  ori          a0, t1, 70
                  sub          a5, s0, t5
                  slti         s0, a5, 928
                  sub          s0, a5, a5
                  addi         s10, t2, -1692
                  srli         a3, a1, 19
                  sll          s9, a2, t4
                  or           t3, sp, t0
                  slti         ra, a0, 1526
                  and          a0, a4, s8
                  sltu         t3, ra, a7
                  ori          a0, t2, -1777
                  nop
                  lui          gp, 71418
                  sll          a0, zero, a1
                  xori         a5, a1, -436
                  and          a1, s8, s8
                  lui          ra, 889801
                  or           s10, t3, gp
                  sra          a7, s9, s3
                  srai         s1, a2, 24
                  srl          a1, a4, t2
                  lui          s5, 690728
                  srai         a5, s2, 13
                  sub          a6, s0, a1
                  sll          s2, s6, s9
                  andi         t3, a0, -1912
                  slti         s7, tp, -837
                  nop
                  ori          ra, a7, -1178
                  srai         s4, s9, 9
                  slti         ra, a5, 1397
                  sll          s0, s1, tp
                  slli         a4, t5, 14
                  srli         a5, s7, 9
                  srl          s4, a2, t3
                  sub          sp, s7, t6
                  nop
                  nop
                  xor          s7, a3, a5
                  xori         t6, s9, -1867
                  xori         a0, a2, 1789
                  sltu         s11, a0, s1
                  sltiu        s6, s5, 1404
                  slt          a7, t6, s7
                  srl          t2, t1, a3
                  sltu         s7, t4, s2
                  xor          s11, t3, s7
                  addi         a4, gp, -1917
                  sra          s9, t3, s2
                  xori         a4, s2, -235
                  sltu         s3, s6, gp
                  and          sp, a0, a2
                  or           s0, a7, a2
                  ori          t6, a5, 1290
                  sub          gp, t6, a4
                  ori          s1, t3, -1044
                  ori          t6, s1, 1263
                  sltu         s2, s2, sp
                  sra          s9, tp, sp
                  addi         a4, t6, 1325
                  sltu         a4, s0, a6
                  xor          zero, s2, a1
                  add          a7, s3, s7
                  auipc        tp, 387443
                  addi         s4, s7, 134
                  and          a7, t3, s11
                  auipc        a0, 290129
                  sll          ra, t0, s4
                  lui          s10, 170914
                  and          s4, ra, tp
                  ori          s7, s4, 1894
                  andi         a4, a3, 1247
                  ori          sp, sp, 1301
                  srli         tp, s7, 22
                  srl          s10, sp, t6
                  sltu         zero, s4, t1
                  slt          s7, s5, a7
                  slti         a2, s11, -315
                  and          s2, s1, zero
                  xor          s9, t4, t1
                  sub          s0, s10, t6
                  slli         a0, a4, 18
                  sltiu        s0, a4, 549
                  lui          s9, 516913
                  xor          s1, t6, tp
                  and          t0, t1, s9
                  auipc        sp, 424681
                  srli         gp, a5, 9
                  srai         sp, s2, 4
                  slt          s7, t5, s9
                  srli         gp, ra, 3
                  xori         a2, s5, 2015
                  or           a0, a1, a6
                  sra          t3, s7, s11
                  and          sp, s11, a1
                  auipc        a0, 611775
                  auipc        s11, 796241
                  slti         a0, a0, -2046
                  auipc        sp, 954422
                  auipc        s2, 108423
                  slt          s2, zero, ra
                  lui          t3, 904789
                  slt          a6, a7, t2
                  sll          t2, tp, s5
                  ori          a4, a6, 872
                  xor          t0, a1, zero
                  ori          a3, s8, -365
                  and          a5, zero, a1
                  slti         gp, ra, -4
                  srli         s8, s3, 23
                  auipc        s0, 625744
                  lui          s8, 753771
                  xori         a1, s7, 1880
                  add          t2, tp, s7
                  srai         s1, t6, 31
                  add          a2, ra, a6
                  add          zero, a6, t6
                  srli         s6, t1, 1
                  addi         a6, s7, -129
                  and          t3, s9, a3
                  andi         a5, a2, 518
                  add          s3, s6, s8
                  add          t6, s4, s11
                  add          s6, ra, t1
                  slti         t6, zero, -732
                  nop
                  srli         s2, s7, 2
                  and          s9, s10, a2
                  sub          s3, s2, s5
                  lui          a1, 1023104
                  sra          tp, a2, sp
                  sltiu        s2, s0, -1651
                  sltiu        a6, t1, 2026
                  slli         a1, sp, 19
                  slti         s6, s9, 212
                  slti         a5, s0, -534
                  and          s5, a5, a4
                  nop
                  ori          s2, a5, -65
                  add          t2, s8, tp
                  add          a1, t2, t2
                  and          s10, s11, a7
                  or           s11, s2, zero
                  slti         s11, s5, -204
                  or           s7, t0, s8
                  sltu         s0, t6, t2
                  xor          a6, s1, s3
                  sra          a1, t4, t6
                  addi         a0, t2, -333
                  nop
                  slli         t2, s10, 18
                  sra          s6, s6, s5
                  srai         t2, zero, 8
                  srai         t3, ra, 13
                  srli         s1, t0, 21
                  sra          t2, s8, a6
                  sll          s5, t1, s9
                  slli         a2, t6, 4
                  srai         s8, s2, 8
                  add          zero, a3, a4
                  srli         s4, a5, 0
                  sll          sp, s1, t2
                  xor          a4, t3, tp
                  ori          s8, s7, 166
                  andi         s8, s0, 138
                  sub          s4, s2, gp
                  add          tp, s4, zero
                  and          sp, s3, s4
                  srli         s7, gp, 13
                  ori          zero, s4, 61
                  slti         s4, s9, 644
                  sltiu        s2, s5, 677
                  add          s3, gp, s1
                  slli         s6, t0, 31
                  sltiu        s5, t6, 1969
                  srai         a0, a7, 10
                  addi         t3, a4, -566
                  sra          tp, a2, a4
                  xor          s10, s8, ra
                  sltu         s7, s8, t4
                  sll          a7, a2, s2
                  sll          t3, a6, s5
                  slli         s1, s6, 20
                  xor          gp, s4, t6
                  add          t6, a2, s10
                  slli         s0, a0, 25
                  slt          a1, s9, ra
                  and          t3, zero, t3
                  slti         s4, t1, 1075
                  lui          s5, 851806
                  addi         a3, t4, -494
                  slt          a4, a6, sp
                  xor          s8, ra, s9
                  srl          s5, s1, s3
                  xor          s4, a6, s7
                  srl          t3, a3, a3
                  ori          s4, t1, 1752
                  sub          s10, t5, s3
                  andi         a3, ra, -855
                  and          ra, s6, tp
                  srl          a6, s6, s7
                  sub          t6, a0, t2
                  xori         t0, s1, 954
                  addi         a4, a4, 51
                  xori         tp, a5, 530
                  andi         gp, a3, 428
                  andi         zero, t3, -819
                  and          s10, t5, a1
                  addi         s1, a5, 93
                  ori          s4, s11, -1543
                  sltu         t2, s1, a6
                  sra          t2, sp, s8
                  lui          a0, 557142
                  sub          sp, a7, gp
                  xori         s3, gp, -185
                  slti         s4, a4, -735
                  slti         s9, s7, -1723
                  slli         s0, a0, 22
                  auipc        a0, 1023743
                  and          ra, s10, zero
                  addi         gp, t1, 1275
                  slti         s11, gp, 1677
                  slti         s7, s2, 1440
                  slt          s8, s11, s3
                  addi         zero, a6, 1147
                  lui          s3, 90116
                  srl          a5, sp, t5
                  srai         gp, s0, 11
                  sll          s6, t1, sp
                  lui          a3, 676736
                  sltiu        s9, a7, 1803
                  auipc        t3, 112158
                  slli         tp, s6, 12
                  andi         s3, a4, -881
                  andi         s0, tp, -521
                  xor          s8, a4, a6
                  auipc        s6, 958265
                  sra          s2, gp, t4
                  auipc        s2, 882207
                  slti         s5, t3, -890
                  li           a5, 0x80000000 #start riscv_int_numeric_corner_stream_19
                  li           tp, 0xffffffff
                  li           s5, 0x80000000
                  li           t6, 0x80000000
                  li           s0, 0xd6429503
                  li           a7, 0xffffffff
                  li           s8, 0xffffffff
                  li           a3, 0x0
                  li           s9, 0x8efa8b72
                  li           s3, 0x64312deb
                  nop
                  sub          s5, s5, s0
                  add          t6, tp, s8
                  sub          tp, s0, a5
                  add          s0, s3, s3
                  sub          tp, a7, tp
                  lui          a5, 938831
                  lui          t6, 238570
                  addi         tp, s0, 982
                  sub          tp, t6, s9
                  addi         a5, s3, -973
                  nop
                  add          s0, t6, s8
                  nop
                  auipc        a7, 277089
                  nop
                  nop
                  addi         s9, a3, 207
                  addi         s9, s5, 997
                  auipc        tp, 361626
                  add          s8, a3, a3
                  add          s5, tp, t6
                  auipc        s0, 208065
                  auipc        s5, 623068
                  lui          s3, 283115
                  sub          s9, a7, tp
                  lui          s5, 870448
                  lui          a5, 1536 #end riscv_int_numeric_corner_stream_19
                  sltiu        ra, s3, 1376
                  xori         tp, s0, 268
                  srli         t2, s7, 22
                  lui          s7, 52619
                  lui          t3, 21518
                  sra          a3, gp, ra
                  xor          s4, t2, t6
                  sltiu        s8, a0, 525
                  slli         t2, s2, 28
                  or           s10, a6, t3
                  sltu         a0, s7, t4
                  slti         s0, t0, -979
                  srli         s10, s5, 7
                  auipc        zero, 167539
                  and          a2, a6, t5
                  addi         gp, s8, 887
                  slti         s11, t0, -1500
                  xor          s10, s2, t6
                  addi         a1, s2, -500
                  slti         a3, s7, -950
                  srl          s6, t6, t6
                  xori         s6, t2, -1295
                  sra          zero, s0, gp
                  srli         t0, a5, 31
                  slti         a7, ra, -852
                  sltiu        s2, tp, 1118
                  slt          s11, a3, s5
                  srli         a0, zero, 20
                  xor          s1, a0, ra
                  srl          a5, s10, s3
                  slt          a7, s4, tp
                  andi         s0, a6, 1890
                  nop
                  srl          s7, a2, t6
                  andi         a0, s2, 1729
                  slli         a7, s7, 17
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           s11, 0x80000000
                  li           sp, 0xffffffff
                  li           a6, 0x0
                  li           a1, 0xffffffff
                  li           t6, 0x0
                  li           s6, 0x0
                  li           s9, 0xf4f9f0b2
                  li           a0, 0x80000000
                  li           a5, 0x0
                  addi         a0, a0, -629
                  lui          ra, 419349
                  sub          s9, a6, sp
                  sub          s9, t6, t6
                  nop
                  sub          t6, s6, t6
                  nop
                  lui          a6, 175246
                  nop
                  nop
                  addi         a0, s9, 1812
                  add          s6, a5, sp
                  auipc        s11, 585999
                  addi         a1, a6, -1499
                  auipc        a6, 786875
                  nop
                  sub          s6, a0, t6
                  add          t6, a5, s11
                  auipc        s11, 56928
                  lui          s11, 416121
                  sub          t6, sp, t6
                  auipc        a0, 950065
                  sub          s6, s6, a5
                  auipc        ra, 55232 #end riscv_int_numeric_corner_stream_4
                  sltu         tp, t1, s6
                  sll          a4, s11, t4
                  lui          s4, 527043
                  and          t3, t0, s4
                  srai         s9, s1, 29
                  sll          a6, t2, t5
                  sll          s3, t6, tp
                  sltiu        a3, t6, -1492
                  xor          zero, tp, a7
                  slti         a2, a3, 1549
                  auipc        gp, 261774
                  or           a7, t5, gp
                  xor          s0, t2, s11
                  lui          s10, 149548
                  srli         s5, s7, 14
                  or           a2, a2, a6
                  and          s5, t3, s10
                  sll          a7, sp, s3
                  sub          a2, s1, a3
                  slt          a1, s0, a5
                  sll          s5, s7, s1
                  slli         a4, t5, 16
                  and          sp, s1, gp
                  and          a2, s0, a1
                  slti         s4, sp, 1388
                  andi         a5, gp, 14
                  lui          gp, 703464
                  xor          s8, a4, s4
                  sll          s2, t4, s10
                  lui          a2, 235879
                  slti         t0, a4, 61
                  add          sp, s9, a3
                  addi         a1, t6, 1460
                  ori          s4, a3, 504
                  and          s3, s10, s5
                  ori          s9, t4, 164
                  nop
                  lui          s8, 845345
                  sub          zero, a3, a7
                  slti         a0, s5, -554
                  slti         t6, gp, -868
                  ori          gp, s0, -3
                  slti         a2, t6, 1623
                  slt          t2, a0, a3
                  xori         a5, a3, 200
                  nop
                  slt          s9, t3, t3
                  ori          gp, a6, 18
                  slt          a2, s7, s4
                  addi         s0, a6, 41
                  add          gp, a4, a5
                  or           a7, a4, t2
                  sltiu        a0, t0, 1731
                  ori          s0, gp, 645
                  srai         s1, s4, 7
                  ori          a3, gp, 1390
                  sltiu        t3, tp, -1871
                  nop
                  sub          sp, s11, s2
                  addi         a4, s5, 1746
                  or           tp, s4, gp
                  lui          s8, 156573
                  sub          s2, t4, t0
                  xor          s6, s7, s4
                  nop
                  slt          tp, sp, t0
                  nop
                  xor          a3, t5, t3
                  slti         a2, s11, 1616
                  sll          s2, a7, tp
                  lui          s8, 709535
                  nop
                  and          zero, t6, t6
                  lui          s3, 112772
                  xor          s9, t0, s7
                  lui          tp, 54732
                  srli         a7, a4, 18
                  xor          s7, a6, t2
                  andi         t0, s4, 1083
                  slli         s10, t1, 20
                  nop
                  srli         zero, t5, 11
                  andi         a0, t2, 1732
                  sltiu        ra, a3, 1746
                  srli         sp, a4, 15
                  and          s11, a4, a3
                  xor          t0, tp, t5
                  ori          t3, s6, -780
                  slti         s9, a4, -1172
                  nop
                  andi         a5, ra, -1592
                  add          sp, a0, a2
                  addi         t2, s5, 1044
                  andi         s4, s2, 211
                  slli         sp, s8, 26
                  sltiu        s8, s7, 451
                  slt          s7, a3, s5
                  ori          s10, t4, -1500
                  lui          a0, 305427
                  slli         a6, s1, 2
                  auipc        t0, 1026521
                  ori          s6, s0, -2034
                  srli         zero, s0, 2
                  sra          sp, sp, t0
                  sll          s2, s1, a7
                  auipc        tp, 167873
                  and          a7, tp, t0
                  sltiu        gp, a2, -715
                  srli         s5, s2, 6
                  sll          s4, t1, s1
                  slli         a2, a3, 15
                  sub          s10, s8, a7
                  slt          a6, s6, zero
                  sub          a2, zero, s5
                  sltiu        tp, gp, 2003
                  addi         a5, a4, -334
                  lui          ra, 557911
                  lui          s10, 742611
                  srli         sp, s1, 24
                  srli         s8, zero, 17
                  sub          s2, s3, tp
                  srli         s3, ra, 13
                  addi         s1, s7, 979
                  srli         s0, s10, 2
                  sll          s7, a1, s11
                  slli         t6, t6, 23
                  slt          s11, t0, s11
                  slli         s11, a7, 20
                  sltiu        t0, gp, -163
                  slli         a3, s3, 11
                  or           a2, tp, a5
                  ori          tp, a3, -83
                  slti         s3, zero, -1451
                  xori         s6, zero, 1780
                  xor          a6, sp, s5
                  sltiu        s1, a3, -1743
                  add          s2, s0, t1
                  sltu         a7, t2, s10
                  sltu         tp, t5, a3
                  nop
                  srli         s0, a5, 9
                  srai         a1, t3, 8
                  xor          a1, t1, a1
                  slti         tp, s9, -1242
                  auipc        a2, 370196
                  srai         a0, s11, 31
                  srl          s9, s6, sp
                  xori         sp, s1, 1781
                  ori          s11, s4, 1584
                  nop
                  sra          s6, a6, a1
                  srli         s3, s0, 8
                  xor          a2, a2, t3
                  srli         a7, s1, 24
                  sll          t3, s4, tp
                  slli         s8, sp, 0
                  ori          a2, zero, -800
                  xori         t2, t6, -658
                  andi         s10, sp, 0
                  lui          s7, 521512
                  and          gp, s9, a1
                  srai         sp, t1, 7
                  srli         gp, ra, 15
                  ori          s11, s7, 1146
                  sll          tp, t1, s8
                  sll          t2, t2, a0
                  srai         a4, s9, 6
                  srl          s7, t6, sp
                  sltu         tp, s9, a1
                  srli         a2, a3, 30
                  slli         a7, s6, 20
                  xor          a5, a7, a3
                  slt          s2, a1, tp
                  srli         t3, a0, 25
                  slli         zero, tp, 11
                  sltu         s9, a2, t6
                  andi         t3, s11, -1466
                  sub          s0, s3, s9
                  srl          sp, zero, s4
                  or           a7, t0, a6
                  sub          s8, zero, a2
                  sub          s9, t2, s11
                  addi         gp, t0, 16
                  addi         zero, a3, 771
                  andi         sp, t5, -1152
                  sub          a5, t0, t5
                  sltu         t6, gp, t2
                  addi         s6, s4, -1122
                  slli         s6, s8, 6
                  xor          a1, s5, a1
                  nop
                  ori          s8, s0, 42
                  slt          s2, t1, a6
                  srai         s0, a0, 12
                  xor          s2, t1, a1
                  xori         a2, s10, -639
                  lui          s7, 733232
                  slt          ra, t3, s1
                  or           a1, s11, s3
                  ori          s11, ra, -147
                  addi         ra, s9, 769
                  srai         s1, s10, 21
                  srli         s7, s6, 11
                  add          s5, a4, a2
                  xor          s7, s1, t0
                  add          a2, s1, ra
                  slli         t3, s6, 21
                  xori         s6, gp, 213
                  xor          s10, t6, t1
                  srai         s10, t0, 15
                  slti         a5, s2, 454
                  srl          a3, a2, t5
                  srli         zero, zero, 15
                  slli         a5, a1, 14
                  ori          sp, t0, -1627
                  srl          tp, a5, s6
                  or           a3, t3, ra
                  ori          t0, s5, -1315
                  addi         t6, s2, 274
                  and          a2, s9, ra
                  slt          t2, s3, tp
                  add          s4, a6, s11
                  andi         s5, s0, -194
                  addi         s7, a1, 307
                  slt          a6, s10, a1
                  sra          s11, tp, a7
                  nop
                  and          a6, sp, a2
                  add          s10, sp, s9
                  lui          s3, 22401
                  sra          t2, a0, a1
                  xor          s6, s11, t5
                  sll          s1, s0, s7
                  sltu         s8, ra, t3
                  addi         s8, s4, -46
                  nop
                  or           ra, zero, a7
                  lui          s2, 1034507
                  srai         s2, a0, 11
                  slli         t3, t0, 25
                  ori          t3, s1, 372
                  andi         s5, s9, -1078
                  or           a0, s8, s2
                  ori          gp, t0, -456
                  sub          ra, t5, s3
                  andi         s1, s3, 157
                  slli         s9, a7, 14
                  xor          a5, a4, t1
                  sra          a7, a4, a1
                  sra          a2, a2, t6
                  srai         s1, s8, 13
                  srli         sp, ra, 16
                  srai         s4, t2, 26
                  sltiu        s7, zero, -1771
                  sra          t2, t0, t3
                  and          a3, s4, t0
                  lui          zero, 134876
                  or           s8, t6, s7
                  srai         a4, s4, 16
                  slti         s6, s5, -1838
                  sub          a6, t1, s4
                  ori          a6, s0, 172
                  sltiu        s4, s4, -535
                  xor          t2, s11, s7
                  sra          t0, a7, s7
                  sll          a6, s2, s10
                  or           s3, a0, t5
                  sra          sp, s11, a5
                  slt          a2, s0, s0
                  sra          s4, t6, s6
                  auipc        t3, 596816
                  xori         s8, a5, -1902
                  xor          a1, a4, a3
                  srl          a1, t5, ra
                  auipc        s7, 642322
                  lui          zero, 798927
                  xor          a5, a2, a1
                  nop
                  slli         s3, t2, 21
                  auipc        a2, 200712
                  slt          a0, s9, a5
                  slli         a6, a5, 21
                  auipc        a4, 94375
                  nop
                  add          gp, s6, s0
                  slli         s9, s3, 8
                  sltu         a5, zero, zero
                  auipc        s0, 911541
                  srli         gp, zero, 31
                  lui          a7, 25763
                  xori         a4, a5, -1176
                  slli         s8, gp, 29
                  addi         a2, a3, 311
                  srai         s8, t0, 15
                  lui          s2, 442309
                  sltiu        a2, a0, 582
                  sltiu        s6, t1, 1642
                  slt          a6, t5, a6
                  ori          a2, t0, 1050
                  xor          s2, s8, a0
                  sub          zero, a5, s9
                  sll          a5, a1, t3
                  srai         a7, a6, 30
                  slti         a3, s1, 554
                  srai         s4, a3, 1
                  auipc        s1, 977379
                  auipc        s2, 935258
                  sll          a0, t3, a3
                  sra          s10, a3, s10
                  add          tp, s10, s2
                  sub          a4, a0, s9
                  slt          ra, s10, zero
                  addi         s0, s0, -1216
                  nop
                  slt          a0, zero, a5
                  sll          t3, t0, a2
                  xor          s7, a0, t3
                  lui          t6, 388495
                  and          gp, s1, a1
                  sltiu        tp, a7, 849
                  xori         a4, tp, 1918
                  addi         s1, a6, -191
                  sll          a5, gp, gp
                  ori          sp, gp, 1543
                  xori         gp, s11, 1246
                  auipc        a0, 388556
                  sltiu        ra, s6, 2004
                  nop
                  sll          a0, zero, a3
                  sub          ra, s6, s1
                  xor          a5, zero, s1
                  nop
                  xor          t2, s6, t5
                  srl          t3, t2, t3
                  sub          s7, t2, s11
                  srai         tp, sp, 18
                  add          a2, s6, gp
                  srli         s6, s3, 1
                  slli         a6, tp, 5
                  ori          s7, t4, -1178
                  slti         a7, s2, 1899
                  srai         s11, s4, 2
                  srli         s8, tp, 21
                  auipc        gp, 1030183
                  srli         s11, s4, 28
                  xor          t0, zero, s4
                  sltu         t6, t5, t3
                  sltiu        a3, t2, 220
                  add          s6, a1, a6
                  add          s0, t2, s1
                  andi         t6, a7, 674
                  sra          s11, s1, t1
                  and          s6, t3, a3
                  sll          a4, t1, gp
                  ori          s7, s10, 1754
                  slli         s9, a7, 27
                  add          gp, a7, s6
                  xor          s4, s0, s10
                  or           a6, zero, a2
                  slli         s4, s4, 23
                  srai         s2, t3, 19
                  sltu         zero, a2, s6
                  add          t2, t5, t5
                  slti         s6, s5, -87
                  nop
                  srai         zero, a3, 21
                  addi         s4, a0, -886
                  srl          gp, s9, sp
                  addi         s9, t3, -1314
                  srl          s5, a6, t4
                  srai         ra, a0, 3
                  xor          s10, a3, a0
                  sltiu        s5, tp, 1575
                  xor          s5, s5, zero
                  nop
                  add          s6, a7, a5
                  nop
                  slt          t6, s7, a1
                  nop
                  or           s4, s11, s4
                  ori          s8, s11, -1329
                  sub          a1, s1, t2
                  add          s1, t3, t0
                  srl          s3, a6, zero
                  lui          s4, 505544
                  ori          s11, tp, -1866
                  ori          s8, t4, -1341
                  srli         s10, s1, 16
                  sub          s8, t2, a4
                  ori          tp, s10, 1647
                  xori         s10, a5, -1933
                  or           gp, s6, t5
                  xor          gp, t4, a0
                  xor          s10, a4, gp
                  slti         s9, s10, -545
                  nop
                  sub          a6, s11, a6
                  sra          ra, s7, zero
                  sra          s9, s11, t2
                  srli         tp, s0, 10
                  slli         a2, t1, 4
                  srli         s1, t3, 17
                  sra          gp, s4, s2
                  auipc        a3, 203590
                  srli         tp, s1, 11
                  srl          s4, s4, s2
                  add          a0, a1, zero
                  srai         ra, a4, 11
                  slti         s10, s5, 2001
                  slli         t0, a5, 30
                  slt          a0, t3, s8
                  slli         s3, a7, 11
                  slti         a3, a5, -460
                  slli         s3, a0, 8
                  addi         ra, s2, -1755
                  slt          a7, t4, a2
                  andi         t2, s3, -1234
                  slli         s1, t0, 30
                  srl          a6, tp, s8
                  slli         s3, t4, 29
                  slt          sp, gp, s0
                  sltu         t3, t2, a5
                  and          a1, t2, a7
                  slti         s0, s4, -711
                  sll          s10, s11, ra
                  srai         s2, a6, 15
                  lui          s9, 624710
                  ori          s10, s7, 1797
                  xor          a3, t3, gp
                  sra          t0, s0, s3
                  lui          zero, 402728
                  addi         s3, s8, -1391
                  and          a2, s6, t0
                  ori          t0, s9, 493
                  lui          s6, 627053
                  slti         s3, s3, -1999
                  srai         s1, t5, 5
                  auipc        s11, 600285
                  ori          a5, t6, 521
                  auipc        s6, 1036923
                  nop
                  slti         s5, t4, 1984
                  xor          a5, t0, a5
                  slli         t6, t2, 23
                  lui          t3, 928997
                  auipc        a7, 1009998
                  sra          a6, s9, s10
                  slt          a7, s5, s3
                  sra          a0, s10, s1
                  and          s4, t2, a7
                  sltiu        s4, a1, 491
                  sll          s1, ra, a2
                  srli         tp, t0, 10
                  slti         a3, s7, -40
                  sltu         s5, t3, t1
                  andi         s3, a3, -1469
                  ori          a0, s8, -198
                  addi         s10, s5, 1086
                  and          zero, s4, t5
                  lui          a5, 913961
                  sltiu        tp, s2, -699
                  xor          tp, a5, s3
                  addi         a3, s9, 645
                  xori         s8, t1, 1998
                  sub          s5, t4, s7
                  add          s7, sp, t0
                  slti         t3, t5, -730
                  add          s3, s5, t5
                  nop
                  addi         a7, gp, 1888
                  add          s1, ra, t5
                  sltiu        s11, s8, 461
                  slli         s5, t0, 19
                  xori         a2, a4, 1322
                  xori         a0, sp, -405
                  sub          gp, tp, tp
                  sll          s6, s1, s3
                  srl          zero, s8, a5
                  srl          s4, t4, a5
                  srai         ra, t1, 8
                  ori          a0, tp, -1912
                  srli         ra, t6, 19
                  sub          a1, t5, a4
                  addi         a5, t2, 144
                  srl          s4, t4, s3
                  xori         sp, s9, -1557
                  sra          s0, s1, s4
                  sub          s5, t5, s9
                  nop
                  addi         s11, s9, -1329
                  xori         a2, tp, 881
                  slli         s9, a3, 15
                  srli         ra, t1, 25
                  addi         t2, s11, -2022
                  srli         s2, a5, 8
                  sub          a7, a6, s1
                  and          t6, a1, a1
                  xor          s10, a4, s5
                  addi         zero, t2, 489
                  srli         s2, t3, 28
                  and          s4, ra, a5
                  auipc        gp, 684663
                  auipc        s3, 1047044
                  slt          a2, s1, a7
                  ori          s5, a2, 878
                  and          sp, s7, s3
                  sll          a5, t4, a4
                  slti         tp, a5, -478
                  andi         a5, ra, -984
                  auipc        a3, 917513
                  slti         s2, a0, -882
                  and          s5, s3, a0
                  slt          a3, t4, s5
                  sra          s9, sp, gp
                  add          a1, s0, zero
                  sll          s3, t1, s2
                  srli         t2, a7, 22
                  sub          t6, zero, s0
                  ori          sp, s5, -1528
                  or           t6, t0, s3
                  andi         ra, zero, -1916
                  slt          s2, tp, sp
                  srli         gp, s3, 13
                  sltu         t0, ra, t0
                  srli         tp, t0, 23
                  or           s2, gp, s11
                  and          t6, tp, a2
                  srli         ra, t5, 2
                  slt          a3, s4, s4
                  srl          t3, sp, a7
                  srl          t2, gp, sp
                  xor          a0, s2, zero
                  auipc        s0, 958657
                  srl          t0, s7, s11
                  srl          a5, ra, s8
                  auipc        t6, 197237
                  ori          t2, s8, -2015
                  slli         ra, s11, 15
                  lui          a0, 464800
                  lui          sp, 39430
                  srli         tp, t4, 30
                  srl          a2, a7, tp
                  xor          a6, a0, zero
                  addi         ra, s1, 1790
                  sra          s11, a5, zero
                  slt          a0, s7, s1
                  sltiu        a6, t6, -860
                  ori          t2, a7, -1670
                  sub          t6, s11, s6
                  addi         a4, s11, -566
                  add          s11, a0, a2
                  srli         a4, t5, 19
                  sltu         s10, s2, a1
                  or           a3, t5, t1
                  addi         t6, s6, -86
                  nop
                  addi         s4, t2, -1396
                  xori         a0, a3, -917
                  sltu         tp, gp, s8
                  slt          a1, a4, s4
                  slti         tp, a5, 512
                  addi         sp, a1, -1412
                  xor          s10, zero, s7
                  xori         a4, s11, -456
                  or           s10, s1, a2
                  sltu         a2, s6, a6
                  xor          s10, a5, t0
                  sltiu        s8, a7, 1205
                  nop
                  addi         a4, s8, 885
                  sra          t3, zero, t5
                  sra          s6, sp, s9
                  srai         s11, t4, 0
                  auipc        a0, 98292
                  and          s5, s0, s6
                  srli         ra, sp, 18
                  add          s9, a4, s2
                  auipc        t2, 680348
                  addi         a4, s9, 1977
                  addi         s10, sp, -680
                  sltu         a3, a3, t3
                  sltiu        t6, s0, 244
                  lui          a2, 105476
                  and          s2, sp, a6
                  srli         sp, s6, 15
                  andi         s8, zero, -103
                  srl          a5, s8, s4
                  slli         s6, s7, 18
                  srai         a0, tp, 4
                  addi         a6, s9, 653
                  slt          t3, a4, s11
                  nop
                  sub          a3, a6, t2
                  addi         a7, tp, -556
                  add          s11, a4, s1
                  andi         s1, t3, 1357
                  auipc        t3, 572048
                  nop
                  ori          a2, a5, -836
                  ori          a5, t0, -1242
                  andi         a7, tp, 252
                  xori         gp, t1, 568
                  srai         s8, s3, 23
                  slt          s7, a2, t1
                  lui          a7, 772005
                  xori         s10, t3, 833
                  addi         t6, t0, -949
                  sltu         t3, a3, s7
                  sll          zero, s4, t4
                  and          s3, ra, t0
                  addi         s0, t4, -916
                  slti         s8, s7, 1740
                  addi         s5, a5, -1761
                  auipc        a5, 177628
                  sltu         a7, sp, s4
                  srl          t2, ra, a6
                  and          s6, s8, a3
                  srl          a3, t1, s10
                  slt          sp, s10, s0
                  ori          s5, t6, -497
                  slti         s0, s1, -98
                  addi         tp, zero, -930
                  sra          s4, a2, a0
                  xor          s7, a0, t1
                  and          s11, s9, a4
                  add          t3, a5, s8
                  slti         s4, t6, 364
                  ori          zero, s9, 1699
                  sltiu        s1, s4, -992
                  or           s9, zero, s10
                  andi         s8, a4, -1985
                  srl          t0, ra, a4
                  sll          tp, s11, a5
                  sll          sp, t0, ra
                  slli         t0, t0, 7
                  auipc        tp, 1046243
                  addi         a2, a4, -1606
                  srl          zero, t6, zero
                  xori         s8, t3, 1860
                  nop
                  slt          s1, s10, gp
                  slt          a7, t6, t1
                  srli         a0, a3, 25
                  srli         a3, t5, 2
                  xor          s7, ra, a4
                  auipc        s2, 21079
                  add          zero, s4, a4
                  srl          a4, s3, t2
                  andi         gp, sp, -1893
                  srai         t6, t6, 4
                  slt          t0, zero, t4
                  sll          ra, s11, s9
                  slt          t6, t3, s4
                  or           s4, a2, a5
                  slti         t6, sp, 1644
                  add          sp, a2, zero
                  and          s1, t2, a3
                  auipc        s11, 907750
                  nop
                  or           gp, a1, s6
                  srai         t0, s9, 15
                  andi         s11, a6, 1407
                  addi         s1, t0, -1057
                  nop
                  xori         a3, a4, 1024
                  or           ra, gp, a5
                  ori          s6, a4, -961
                  sra          a2, a0, s10
                  slt          gp, s7, s11
                  sltu         s3, zero, s0
                  add          s6, tp, t4
                  add          a0, s0, s0
                  ori          a5, s1, -1543
                  lui          zero, 1004828
                  srai         a2, a2, 7
                  srai         s4, a0, 14
                  ori          tp, gp, 721
                  add          sp, ra, a7
                  sltiu        a6, a5, 17
                  sll          s2, s9, s9
                  slti         a2, t2, 1256
                  lui          a7, 798086
                  addi         t6, t0, 20
                  and          a5, s7, t4
                  slt          t2, sp, s0
                  slli         s4, s7, 13
                  nop
                  or           s6, tp, gp
                  slli         gp, s8, 16
                  srai         s8, s2, 12
                  auipc        a5, 709257
                  auipc        a0, 1017584
                  sltiu        s3, s1, 450
                  sll          s1, gp, s0
                  and          ra, sp, t2
                  xori         sp, t6, -409
                  ori          s4, t1, -1441
                  nop
                  addi         s7, s4, -1583
                  andi         a3, zero, 1215
                  and          s11, gp, a0
                  auipc        gp, 556586
                  and          s0, zero, s3
                  andi         s3, a5, -1391
                  xor          tp, gp, s11
                  slli         t0, t5, 28
                  srli         sp, t1, 6
                  add          a1, s9, s9
                  lui          s6, 809840
                  srai         ra, t4, 17
                  slt          tp, ra, s11
                  sltiu        t3, ra, 1577
                  slli         s5, t0, 26
                  sltu         sp, tp, s7
                  add          s5, s5, sp
                  slt          a2, s11, t3
                  andi         t2, s9, 1600
                  slti         t2, gp, -548
                  sltiu        s3, t2, -201
                  sltu         s4, tp, s7
                  ori          gp, zero, -1184
                  add          a6, s5, t1
                  srai         a2, s2, 6
                  srl          gp, a7, t1
                  ori          s10, zero, -1190
                  ori          a4, tp, -1123
                  add          s5, s10, a2
                  srai         s3, sp, 20
                  srli         a2, s2, 14
                  addi         s6, t6, -104
                  sra          ra, t4, t3
                  sub          s4, a1, s1
                  addi         s11, s2, 1027
                  srli         a6, t4, 15
                  xori         tp, a0, -1425
                  sltiu        a7, s9, -424
                  sra          a5, tp, s11
                  add          a6, s5, s1
                  xori         t3, s3, -13
                  sub          t0, t2, a3
                  srli         t6, s6, 2
                  nop
                  srli         sp, t4, 3
                  sub          a5, a4, s8
                  li           s2, 0x34d92c55 #start riscv_int_numeric_corner_stream_2
                  li           a1, 0x0
                  li           t3, 0xffffffff
                  li           s11, 0x78a7ed5e
                  li           s3, 0x55c056e4
                  li           gp, 0x49b6d36d
                  li           tp, 0x0
                  li           t2, 0xffffffff
                  li           s10, 0x0
                  li           a5, 0x80000000
                  nop
                  nop
                  nop
                  addi         s10, gp, -1189
                  add          a5, tp, t2
                  auipc        t3, 784325
                  auipc        a5, 716839
                  add          s3, s2, s10
                  sub          a5, a5, t2
                  nop
                  auipc        tp, 656495
                  auipc        s3, 359548
                  auipc        t3, 146595
                  add          s2, t2, t2
                  sub          tp, a1, s3
                  auipc        gp, 576352
                  sub          s2, t3, s11
                  auipc        gp, 32979
                  lui          s2, 469273
                  auipc        s2, 734825
                  auipc        t3, 561292
                  nop
                  sub          t3, tp, s10
                  add          s11, s11, a1
                  addi         s11, t3, -515
                  addi         t3, s2, -1289
                  nop
                  add          s3, s3, s11 #end riscv_int_numeric_corner_stream_2
                  or           s9, tp, s1
                  slti         s7, gp, 1816
                  srli         s11, s7, 22
                  add          s9, t2, s6
                  and          a1, s4, s9
                  andi         tp, a0, 75
                  add          a4, t1, s10
                  slt          a5, s9, s3
                  srl          a2, s4, s1
                  srai         s3, s2, 1
                  slt          s4, t1, tp
                  add          a1, tp, t1
                  sub          a6, sp, s3
                  slti         s9, a3, 1998
                  slt          a5, t0, t3
                  sub          a5, ra, t3
                  srl          zero, s4, s10
                  xori         s1, s10, -1337
                  sll          s0, s11, s11
                  slli         a0, s5, 0
                  addi         a6, t4, -530
                  srli         s2, s2, 28
                  sltu         s3, s6, s10
                  sub          zero, s2, t4
                  sra          s2, t6, t0
                  andi         s7, t4, -1243
                  srli         s10, a1, 11
                  srli         a3, t2, 23
                  srli         t3, s8, 6
                  slt          s4, s5, t2
                  sra          s3, s7, t6
                  sltiu        s4, s4, 942
                  andi         s2, sp, -207
                  add          a3, t5, s0
                  lui          s3, 846917
                  add          s1, a6, a2
                  slli         a5, a3, 31
                  addi         s11, zero, 444
                  add          s2, t1, s5
                  sra          s2, s4, t5
                  auipc        s2, 402407
                  srli         s2, s3, 4
                  sltiu        a7, ra, -1299
                  lui          s0, 74777
                  ori          s8, ra, 156
                  auipc        s1, 603677
                  or           a1, t0, t3
                  andi         a4, s1, -194
                  xor          s8, a7, sp
                  slti         a2, a5, 1877
                  addi         zero, t1, -417
                  ori          a0, t1, 1554
                  xori         s3, s4, -116
                  slli         s4, s7, 11
                  ori          sp, sp, 1837
                  xori         s10, a7, 1967
                  srl          sp, s9, s10
                  srai         a4, s11, 9
                  add          ra, t4, t3
                  xori         a7, s0, -536
                  srl          s9, a3, s1
                  sltiu        s4, t1, 1737
                  slli         a1, a1, 9
                  ori          a4, s8, 1471
                  srli         a0, s11, 19
                  srli         a3, s3, 1
                  lui          gp, 475408
                  xor          a7, tp, s3
                  and          s0, zero, a2
                  auipc        s11, 455964
                  and          s9, s1, a3
                  auipc        s2, 944624
                  xori         a5, sp, -1195
                  sub          s4, s10, s1
                  ori          a7, s6, 508
                  and          s1, s1, a5
                  srai         s10, a6, 1
                  sll          s4, tp, t4
                  ori          a5, s10, -119
                  srli         zero, s5, 26
                  xori         s7, s7, 1985
                  srl          s5, t1, s3
                  srai         t2, a4, 9
                  nop
                  and          zero, sp, a4
                  sra          a0, gp, t3
                  nop
                  slli         t0, a0, 17
                  nop
                  sub          a5, s7, t0
                  addi         a3, s6, 1319
                  sll          a1, s1, a1
                  slti         a7, zero, -750
                  nop
                  sra          t6, a1, zero
                  sra          t3, a4, s1
                  sub          t0, s3, tp
                  add          s5, s4, t3
                  srl          a6, a4, s6
                  xori         tp, a6, -225
                  or           a0, t4, s8
                  nop
                  sub          s9, sp, s11
                  srai         a1, zero, 27
                  xor          zero, a2, t0
                  nop
                  or           t0, sp, s10
                  slli         zero, zero, 3
                  sub          s9, s2, sp
                  sll          s5, s8, a6
                  or           s1, a0, t5
                  or           s5, s8, t0
                  sltu         zero, t4, t4
                  sll          ra, zero, s1
                  xori         a4, gp, -28
                  nop
                  slti         s0, a3, 1008
                  sltiu        t3, s11, -1006
                  slti         ra, s4, 1197
                  srl          t2, t2, t1
                  auipc        sp, 174749
                  sltiu        t0, s2, -532
                  slli         s6, s9, 0
                  xori         s5, s3, -713
                  add          t2, t0, zero
                  xori         a0, s5, -1561
                  sltu         s4, a4, a7
                  srli         a1, tp, 7
                  sltiu        a5, t6, -426
                  sub          s9, sp, s3
                  xor          s8, a4, gp
                  and          a4, t0, s4
                  slti         s0, t4, 1947
                  srl          s2, a3, zero
                  auipc        s4, 498100
                  addi         zero, s2, -99
                  andi         s10, t1, -480
                  nop
                  add          t3, s2, a6
                  and          s5, t6, t5
                  sra          a1, gp, s3
                  and          t2, a1, t1
                  or           s4, s2, ra
                  xori         s4, a0, 1844
                  xor          a1, t5, s1
                  srai         s11, s0, 7
                  and          s6, s6, a6
                  slt          s5, a2, s11
                  xor          s5, a1, t2
                  ori          s2, sp, -88
                  lui          s3, 475197
                  slti         s5, s9, -901
                  nop
                  addi         a2, zero, -551
                  sltu         a1, a5, a4
                  xor          s9, s11, s9
                  sra          a0, tp, sp
                  addi         a7, t4, -1353
                  srai         s6, s5, 5
                  sltiu        s9, t6, 1383
                  nop
                  srli         a0, t6, 3
                  xor          a1, s8, s7
                  slt          s10, gp, a7
                  addi         a7, s1, 1485
                  and          s3, a7, tp
                  nop
                  slli         zero, s10, 1
                  slt          a4, s9, a0
                  auipc        a2, 353407
                  sub          a3, t4, s5
                  addi         s4, ra, -1496
                  slti         s1, s0, 807
                  sra          s5, a3, s5
                  ori          t0, a2, -1517
                  xori         t6, a2, 615
                  or           s11, s1, s1
                  srl          s4, t2, t5
                  nop
                  srl          zero, s8, ra
                  srli         s10, t4, 19
                  sub          s10, s6, t6
                  nop
                  ori          sp, a4, 126
                  and          zero, s7, s6
                  auipc        s3, 330986
                  srli         zero, t1, 13
                  add          a2, s7, s8
                  auipc        s6, 171061
                  or           s4, t1, s8
                  and          s11, t0, a4
                  srli         s5, t5, 0
                  lui          gp, 513127
                  ori          s11, a0, 1400
                  xor          a6, ra, a6
                  slti         s5, a1, -786
                  sll          zero, zero, sp
                  and          s9, ra, a1
                  sll          s9, t4, a6
                  sra          t3, s1, s6
                  and          s9, s11, a2
                  srl          ra, ra, s3
                  sltiu        s6, a7, -1806
                  addi         s11, s6, 69
                  slti         a1, t6, 792
                  lui          s2, 323786
                  srl          s10, ra, s6
                  andi         t0, a1, 1143
                  sltiu        s5, s4, 1619
                  or           s8, a6, tp
                  addi         tp, t4, 1699
                  ori          t0, s9, 553
                  or           sp, a7, t2
                  ori          s4, t3, 1064
                  slti         s7, s1, 421
                  lui          s11, 647534
                  or           a0, s9, s9
                  srl          a4, s1, s9
                  slli         a3, s6, 11
                  and          s1, s11, s6
                  sll          s1, t1, ra
                  srli         s11, t2, 31
                  sll          s9, s10, t6
                  slt          s1, a5, a3
                  srl          t0, a6, s3
                  auipc        s0, 369901
                  lui          sp, 508297
                  addi         t0, tp, 270
                  slt          s5, a7, sp
                  sll          tp, a5, s9
                  slli         a4, zero, 7
                  ori          s1, t0, -598
                  slt          s4, zero, s3
                  andi         s10, t5, -1774
                  sub          a3, a6, t1
                  and          t2, s8, ra
                  slti         a1, s4, -1021
                  sub          s5, s6, s0
                  slt          s3, s2, t1
                  xori         t3, a7, -88
                  lui          a4, 336389
                  or           tp, t0, s6
                  sub          s3, t5, s4
                  sltiu        a1, s8, 172
                  or           s7, s9, s2
                  nop
                  and          zero, s0, s9
                  sll          s9, a0, s10
                  xori         s6, a4, 1883
                  nop
                  and          s10, s9, s0
                  sltiu        s8, t3, 222
                  srl          sp, zero, a3
                  srli         a5, a2, 14
                  lui          a5, 15149
                  sra          s7, t1, s9
                  sltiu        t2, a3, 875
                  auipc        s8, 592931
                  nop
                  srai         s6, s5, 14
                  srli         s3, a1, 15
                  addi         t0, zero, -254
                  sll          t3, gp, zero
                  addi         a7, t4, 1498
                  nop
                  add          s11, t6, s0
                  auipc        s0, 858477
                  add          s4, s1, t2
                  sll          s0, s8, s10
                  lui          gp, 513416
                  andi         s0, s6, 41
                  add          s5, a1, s1
                  and          a4, t1, sp
                  lui          gp, 913247
                  slli         s10, a4, 19
                  or           a0, t0, s4
                  andi         s11, t2, 9
                  sll          s0, a7, a6
                  ori          s2, s10, 588
                  srl          a2, s2, s2
                  sub          tp, s6, a7
                  sltu         s2, s2, a0
                  and          s3, t5, a0
                  slli         s2, t4, 24
                  ori          a2, a2, -1426
                  srl          gp, zero, s1
                  nop
                  ori          s9, s5, 1438
                  srai         s8, t0, 7
                  andi         tp, a1, 1900
                  sll          a1, a0, ra
                  and          s11, t2, t0
                  or           zero, s7, t3
                  andi         a1, zero, 1926
                  auipc        s5, 940268
                  andi         s2, s4, -1743
                  sra          s10, s0, s11
                  ori          a4, s4, 823
                  lui          s3, 679919
                  slt          s4, t4, t3
                  andi         t6, a7, -722
                  xor          a0, t1, t0
                  slli         s2, t4, 24
                  addi         gp, gp, -842
                  slt          a5, a1, s4
                  addi         a7, zero, -513
                  lui          t2, 994411
                  andi         a0, tp, -646
                  srl          s9, s4, gp
                  or           s3, a2, t1
                  nop
                  auipc        s5, 293642
                  slti         s5, s10, -157
                  slt          a4, t5, s4
                  ori          a2, s2, 357
                  addi         ra, a2, -782
                  xori         s4, a4, -903
                  slli         gp, t4, 29
                  slti         a7, s0, 1922
                  sll          s5, a3, t0
                  sltu         t2, t5, a3
                  slli         s3, s10, 1
                  auipc        ra, 169258
                  xori         s5, a3, -1532
                  and          t6, a5, a3
                  sltiu        a5, a4, 579
                  sra          s9, t0, a4
                  nop
                  nop
                  sltu         tp, t0, a7
                  slti         t3, s2, -1524
                  addi         a1, s11, -290
                  slli         s5, a2, 3
                  slt          s5, s7, t6
                  addi         s7, t1, -1080
                  srl          s3, t4, a3
                  andi         s8, t3, 855
                  xor          zero, ra, a2
                  sub          zero, s1, s0
                  nop
                  auipc        sp, 451665
                  sub          a4, t6, s9
                  addi         a2, a0, 348
                  sra          t0, t4, s5
                  add          a2, s8, s8
                  slt          a6, s0, a5
                  slti         a3, a5, -1499
                  addi         s5, zero, 731
                  sll          a2, ra, a2
                  add          a2, zero, s6
                  lui          t0, 308912
                  addi         a7, t6, 1910
                  srl          t6, s0, t6
                  li           s6, 0x9620d2c7 #start riscv_int_numeric_corner_stream_1
                  li           s5, 0xffffffff
                  li           s2, 0x0
                  li           a6, 0x0
                  li           s11, 0xffffffff
                  li           s7, 0xffffffff
                  li           sp, 0xffffffff
                  li           s9, 0x80000000
                  li           a3, 0x74f34ce3
                  li           s0, 0x0
                  add          s5, s11, s9
                  sub          s9, a6, s2
                  auipc        s2, 713911
                  nop
                  lui          s2, 609217
                  sub          a6, a3, sp
                  auipc        s7, 366769
                  addi         s5, s0, 757
                  add          a3, s0, s7
                  addi         s11, a6, 900
                  addi         s0, s11, 786
                  addi         s5, s6, 1429
                  auipc        a6, 407556
                  auipc        sp, 1044555
                  sub          a6, s9, a6
                  add          a6, s9, s9
                  lui          s7, 465334
                  auipc        s2, 224312
                  auipc        sp, 6340
                  auipc        s0, 460833 #end riscv_int_numeric_corner_stream_1
                  sra          ra, s10, t4
                  sltu         s8, s9, a4
                  addi         s10, t2, 1865
                  and          s8, tp, ra
                  slt          a2, t2, s4
                  lui          tp, 204775
                  srl          s0, a3, s7
                  ori          s2, s9, -1306
                  nop
                  slt          t0, s6, t4
                  sub          a2, t2, tp
                  add          tp, ra, t1
                  xor          s8, t1, s5
                  slli         s10, sp, 31
                  add          t6, s8, t1
                  sra          s1, gp, s3
                  sltu         a2, sp, s2
                  lui          s0, 63534
                  sltu         a0, t6, a7
                  sub          t6, s7, zero
                  slt          s2, s7, s9
                  andi         s9, a6, -1080
                  auipc        s4, 638769
                  slti         s9, s10, 1109
                  xori         s8, a0, -853
                  srai         a6, t3, 24
                  add          t3, t4, sp
                  and          s7, t2, zero
                  sll          gp, t2, t0
                  srai         a6, s11, 19
                  and          s4, s11, ra
                  and          s10, ra, s8
                  sub          a6, a3, gp
                  sra          a6, s10, ra
                  sll          a2, s6, t6
                  xori         s11, s11, -1338
                  sll          gp, s7, s5
                  ori          s6, t6, 1128
                  srli         s7, s9, 5
                  xor          ra, a1, t0
                  srli         s9, t2, 14
                  sltiu        a6, t4, 1008
                  srli         a3, s2, 4
                  add          a6, gp, zero
                  andi         a7, s0, 337
                  andi         s9, a5, -638
                  sltu         s7, s8, t2
                  slt          a0, s0, a1
                  srl          s11, s11, a6
                  or           gp, s8, zero
                  add          gp, zero, s0
                  xor          a6, t5, zero
                  sltiu        ra, tp, -266
                  sra          s9, t2, s3
                  srl          t6, a5, t5
                  sll          s10, a6, s3
                  andi         ra, a6, -570
                  add          t2, a0, t3
                  xor          s3, tp, s10
                  nop
                  srli         a6, s8, 14
                  srai         s10, s9, 16
                  and          s5, a0, s5
                  and          s9, t4, t4
                  sltiu        t2, t6, 1344
                  srl          sp, t5, a5
                  xor          s0, s11, s3
                  srli         a1, zero, 12
                  xor          s8, t0, s3
                  andi         s2, zero, -494
                  andi         a7, s9, 1827
                  xori         a5, t2, -367
                  sltu         a2, t4, t1
                  sltiu        s6, t6, -1947
                  slt          s10, s1, zero
                  nop
                  slli         a0, s3, 5
                  addi         s2, t0, -241
                  sll          a4, s5, a3
                  or           a4, a5, s11
                  xor          ra, s10, gp
                  sra          a1, t5, s2
                  slli         s11, a5, 20
                  auipc        t2, 292340
                  lui          t3, 118945
                  srai         s2, tp, 3
                  slt          s8, t0, t2
                  and          a7, t3, t3
                  ori          t3, sp, -2004
                  nop
                  auipc        a0, 637807
                  and          s3, gp, a0
                  andi         a4, t1, -563
                  sra          a6, a1, s5
                  addi         a3, s2, -893
                  slli         a6, t1, 4
                  sll          s0, s3, tp
                  add          s11, zero, t5
                  add          tp, a6, t3
                  lui          s4, 531020
                  xori         s2, gp, 1943
                  xor          s11, a1, t2
                  srai         a2, a5, 10
                  sll          a0, s11, s10
                  nop
                  ori          s11, tp, -1708
                  slt          s3, s11, t2
                  slti         gp, gp, -1561
                  slti         gp, a2, -1300
                  xor          s10, s3, tp
                  nop
                  sub          s9, s6, gp
                  slti         t6, a3, -1414
                  ori          s9, t2, 107
                  slli         t2, s3, 18
                  slli         a6, tp, 27
                  lui          s8, 82356
                  andi         gp, a4, 736
                  or           a1, a5, s10
                  and          t2, a1, gp
                  slt          t3, sp, t3
                  addi         t0, s1, 1199
                  slli         s8, s11, 21
                  srl          s6, a1, t4
                  lui          t3, 415417
                  lui          a1, 17425
                  add          t6, s8, s3
                  sltiu        s5, a3, -1912
                  xori         a1, s3, 129
                  srai         a1, t0, 9
                  srl          s9, a7, s11
                  sll          a7, s5, s4
                  sltu         s10, a1, sp
                  srl          s7, t6, s4
                  srai         s9, t4, 6
                  auipc        sp, 1002055
                  sltu         a5, s1, s5
                  srl          s0, a0, t3
                  sub          a7, s11, a7
                  and          s11, s5, a7
                  and          a1, sp, t2
                  andi         a7, sp, 1941
                  sll          s4, t2, s11
                  srli         s1, s2, 2
                  sra          a3, zero, s9
                  sll          s9, s8, t3
                  nop
                  sub          s9, s3, s9
                  nop
                  sub          s6, gp, t5
                  andi         s5, t0, 1693
                  xori         tp, s10, -380
                  slt          sp, s10, a0
                  sltu         t0, s11, gp
                  add          s2, ra, t2
                  srli         s9, t5, 30
                  andi         s10, sp, -1950
                  sub          s5, s0, t0
                  srl          s9, s8, t4
                  srai         zero, t1, 19
                  auipc        s3, 750555
                  andi         a5, t1, 119
                  andi         t2, s4, 242
                  nop
                  and          s0, s7, t6
                  or           ra, s5, a6
                  slt          zero, t3, s7
                  srl          a5, t4, a1
                  xor          a5, t2, a7
                  andi         s9, a6, -1773
                  addi         a0, s3, 404
                  ori          s1, a0, 246
                  srli         a6, a1, 27
                  slli         t2, s11, 24
                  sub          a3, s10, tp
                  srli         s2, a4, 15
                  xor          s4, a6, a0
                  sltiu        tp, s0, -32
                  srli         s0, s11, 2
                  and          s11, s5, a4
                  slt          a4, a4, sp
                  ori          tp, s3, -822
                  nop
                  sll          a4, a5, t6
                  slli         a2, tp, 0
                  auipc        a0, 609807
                  auipc        s7, 961655
                  add          s3, s9, s5
                  lui          a1, 188704
                  addi         s1, a0, 380
                  ori          s5, tp, 1640
                  addi         a7, a6, 1132
                  auipc        s1, 750976
                  slli         a6, t4, 6
                  or           sp, s6, a4
                  addi         s5, a3, -318
                  auipc        s8, 33445
                  slti         t0, t0, 306
                  ori          s0, ra, 652
                  nop
                  slti         s4, tp, 573
                  sub          s2, ra, s2
                  auipc        s7, 641172
                  ori          s10, s10, -1811
                  auipc        s2, 623886
                  sra          tp, gp, t2
                  slli         a0, s3, 13
                  sll          t2, a6, t0
                  addi         s0, sp, -1146
                  sra          a2, s6, a3
                  xor          a0, zero, ra
                  addi         tp, zero, -1756
                  sra          s1, t6, s6
                  or           tp, a1, s8
                  ori          a5, s6, -286
                  add          t0, s9, a6
                  slti         a1, sp, -1057
                  slli         a3, a0, 5
                  auipc        a5, 375222
                  srli         a0, s5, 0
                  sltiu        s2, gp, 923
                  nop
                  xori         t6, zero, 1376
                  xori         t6, t2, -91
                  srai         t0, s11, 17
                  or           s0, t5, gp
                  slti         a5, t5, 621
                  and          a2, a4, s0
                  sra          a3, tp, t1
                  or           a0, s11, gp
                  sltu         s4, a7, s10
                  srli         a2, t3, 2
                  lui          a4, 75955
                  nop
                  and          s8, s10, a3
                  sll          a2, t1, t5
                  srl          a6, s8, a5
                  auipc        s8, 821310
                  addi         tp, s0, -676
                  sltu         t3, t4, zero
                  xor          s4, zero, sp
                  andi         a5, a3, 1616
                  sub          s1, s4, s7
                  slti         t2, t6, -966
                  add          t6, a2, a3
                  andi         a6, a6, -1263
                  srl          s1, a1, a4
                  ori          a0, t6, 1827
                  auipc        t0, 180724
                  srli         a3, s8, 20
                  andi         a0, s3, -107
                  srai         a5, t4, 11
                  sltu         s9, t5, s7
                  slti         sp, s7, 1048
                  sra          s2, s7, s5
                  xor          gp, ra, s3
                  sltiu        s11, t4, -115
                  slt          t6, a5, a2
                  addi         s7, t6, 1594
                  sltu         s2, sp, t2
                  auipc        s7, 691755
                  sll          s11, a4, s4
                  auipc        a7, 951279
                  nop
                  slti         a0, a0, 1412
                  auipc        tp, 473046
                  sub          a6, t1, gp
                  srli         s3, a1, 6
                  sltu         a7, s7, a7
                  sll          t3, a4, t4
                  sltiu        a3, a2, 373
                  slti         s2, s2, -264
                  lui          a4, 492933
                  slli         zero, sp, 27
                  auipc        zero, 473096
                  nop
                  and          s11, t1, a0
                  srl          s4, s0, gp
                  slt          a0, s0, s4
                  or           s7, a7, a3
                  lui          a2, 369702
                  auipc        t2, 966045
                  sub          t2, s7, a6
                  nop
                  or           s5, zero, s8
                  nop
                  and          s2, a1, s2
                  addi         zero, t2, -1044
                  xor          s1, s4, s10
                  xori         zero, s11, -549
                  srli         t6, a0, 0
                  sltiu        a5, s11, 1954
                  lui          t6, 248507
                  auipc        s2, 398482
                  ori          s6, t1, -1824
                  sra          sp, s0, s3
                  ori          t3, sp, -1858
                  auipc        a3, 721981
                  ori          t0, s4, 1974
                  addi         a0, s0, 1405
                  ori          t3, tp, 522
                  srai         s11, a2, 29
                  add          s1, t6, s9
                  xor          a0, t6, s7
                  slti         a3, s4, 1294
                  srai         s1, t6, 6
                  srli         a5, a1, 16
                  sltu         ra, a3, s0
                  slt          s11, t5, a1
                  xori         s2, t0, 343
                  slli         s4, s9, 17
                  slti         sp, s6, -1041
                  or           a5, gp, s5
                  add          a4, s2, s5
                  xori         ra, s10, 396
                  slt          s8, a3, t0
                  or           a4, s3, t4
                  add          gp, s2, s0
                  srl          sp, zero, a7
                  slt          s6, s5, s9
                  nop
                  srai         a1, tp, 29
                  nop
                  auipc        s11, 437368
                  srli         a2, s4, 21
                  nop
                  slt          t2, a7, s11
                  and          a6, t0, s9
                  lui          t0, 397888
                  ori          s9, s0, 1312
                  xori         a6, t4, 725
                  srli         t0, a6, 27
                  xori         a3, s8, 1305
                  srli         s10, a2, 27
                  add          t2, t1, a5
                  ori          t6, t0, -545
                  slt          s10, a3, sp
                  slti         a7, s6, 1747
                  sll          s3, s2, a1
                  sltiu        tp, s10, -418
                  srl          a0, zero, t0
                  srli         s1, a3, 19
                  xor          s4, zero, a5
                  ori          a4, s3, 1471
                  srl          a1, s9, a7
                  li           s0, 0x326813c8 #start riscv_int_numeric_corner_stream_12
                  li           a3, 0xf3bb6c50
                  li           a0, 0x80000000
                  li           t3, 0x80000000
                  li           a4, 0x0
                  li           a1, 0x0
                  li           s4, 0x0
                  li           t2, 0x56627dd8
                  li           a2, 0x134514e6
                  li           t0, 0xfbd39f67
                  sub          s0, a1, a1
                  sub          s0, s4, a0
                  addi         a2, a0, -1501
                  lui          s0, 985168
                  lui          a1, 553187
                  sub          a0, a4, a3
                  nop
                  lui          t0, 528629
                  lui          a2, 76394
                  sub          a0, a1, a0
                  sub          a0, s0, a4
                  lui          a2, 863289
                  addi         t2, a1, -266
                  nop
                  sub          a0, a3, a3
                  nop
                  addi         s4, a4, 1230
                  add          a1, a3, t2
                  lui          a4, 710234
                  sub          t3, a1, s0
                  nop
                  nop
                  add          t2, s0, a3 #end riscv_int_numeric_corner_stream_12
                  sra          gp, t6, s7
                  srli         tp, s1, 24
                  ori          s3, a6, -242
                  lui          sp, 422485
                  xori         t6, a1, -880
                  lui          s0, 207414
                  xor          s3, a4, s4
                  srai         t6, t2, 2
                  addi         s8, s2, -594
                  xori         t0, s11, 1145
                  and          a7, t5, zero
                  or           a0, s6, s5
                  ori          t2, s7, 1423
                  slti         t0, t3, -675
                  or           s8, t5, s6
                  srl          s4, t2, t3
                  xor          s4, t6, a3
                  ori          t0, t6, -88
                  sll          s2, a4, t1
                  ori          s10, a7, 314
                  xor          sp, t6, a7
                  nop
                  ori          a6, tp, 1827
                  sltiu        s0, a4, 2002
                  slt          s3, a2, s4
                  sll          a7, s2, t5
                  nop
                  or           t0, t2, s1
                  or           ra, s7, a2
                  sll          t3, s2, s10
                  or           s6, tp, t5
                  slli         sp, s5, 27
                  andi         a6, s5, 1032
                  sll          ra, t5, s1
                  add          t0, a5, s4
                  slti         s2, sp, -1727
                  auipc        tp, 894061
                  xori         s9, a3, 507
                  ori          zero, s7, -1697
                  srai         s9, t6, 19
                  srai         s2, t4, 11
                  xori         a6, s5, 252
                  ori          s5, tp, 1614
                  sltiu        t3, a7, -440
                  xori         s3, a7, -697
                  slli         a6, a0, 12
                  and          a4, ra, t3
                  lui          sp, 102280
                  nop
                  addi         s3, tp, 1832
                  slti         tp, s0, -2005
                  sra          s9, a7, sp
                  sra          s9, s1, sp
                  add          gp, a0, s10
                  slt          s9, tp, a1
                  sll          s1, s5, s0
                  sltu         a0, a2, gp
                  lui          s5, 915725
                  slli         s1, t0, 8
                  srl          a1, a0, t6
                  and          a4, t5, a7
                  sra          a3, s5, s10
                  sltu         s0, gp, s6
                  slli         s4, s10, 25
                  addi         a0, s2, -1526
                  xori         t3, a4, -1139
                  addi         a0, s2, -1657
                  sll          a3, t3, s1
                  srl          s8, zero, t1
                  andi         s10, gp, 36
                  lui          s4, 445929
                  auipc        sp, 956034
                  sltu         s2, t0, a1
                  srli         a0, s2, 30
                  xori         s3, t0, 1123
                  auipc        ra, 21130
                  and          s0, a1, s0
                  slt          a7, s1, t3
                  srli         a7, s11, 0
                  srli         s4, gp, 4
                  addi         zero, t2, -199
                  slli         s10, t2, 0
                  slt          a7, zero, a4
                  auipc        a7, 870311
                  andi         a4, s5, -964
                  andi         zero, t6, -461
                  srl          sp, t5, s5
                  nop
                  sra          t0, t6, s5
                  andi         s11, s8, 1223
                  sltu         a7, tp, a5
                  sll          zero, t5, s11
                  andi         s6, gp, 1634
                  xor          s9, s1, t5
                  slti         ra, ra, 1734
                  sra          a5, sp, s4
                  nop
                  addi         s1, a5, 1921
                  sltu         s8, zero, s0
                  or           t6, t2, s5
                  add          a1, s7, t1
                  xori         a0, s6, -1157
                  ori          a7, tp, 95
                  sra          s2, s2, ra
                  sltu         ra, a5, tp
                  auipc        s8, 712505
                  slli         s7, s5, 12
                  srli         a5, a6, 9
                  lui          s11, 612586
                  slli         zero, a0, 3
                  nop
                  sll          a7, s3, s3
                  sltiu        s0, t5, 1518
                  sra          a1, a6, s8
                  sltiu        t0, s0, 993
                  xori         sp, s7, -1343
                  nop
                  slt          a7, tp, gp
                  sll          a5, s9, s11
                  sub          s1, s2, t2
                  sltiu        s11, t0, -1838
                  sub          s2, s4, s10
                  srl          s9, sp, gp
                  addi         s0, s4, 1282
                  srl          a2, a1, a6
                  add          s0, a0, t2
                  lui          s7, 418757
                  sltiu        s11, zero, 1706
                  slli         s2, gp, 22
                  auipc        s4, 589346
                  slli         tp, zero, 27
                  srai         s3, t0, 23
                  slli         a1, s3, 9
                  sll          a1, t1, s10
                  or           t3, a1, s9
                  sll          t0, s7, s6
                  sub          s2, sp, s3
                  add          sp, s1, s1
                  addi         s10, s7, 2001
                  add          s3, t1, s10
                  sra          s3, s9, t3
                  srai         ra, t2, 15
                  sltu         a5, s9, t6
                  or           s9, gp, a2
                  nop
                  sub          t2, s8, t1
                  srl          s3, s9, a3
                  nop
                  xor          a0, ra, s7
                  add          s10, a1, t3
                  and          tp, t3, zero
                  sltu         s2, zero, t2
                  slt          s9, t0, t2
                  auipc        t6, 436123
                  sll          s5, sp, s8
                  lui          a4, 336048
                  sltiu        s3, s0, -539
                  sll          s5, t4, t5
                  andi         t3, t2, 756
                  srai         s8, t1, 27
                  and          a3, s1, s10
                  sub          ra, s0, s1
                  addi         s0, t5, -193
                  add          t2, s5, s1
                  srai         ra, a4, 31
                  slti         s10, a3, 503
                  andi         a5, t0, -976
                  sra          sp, t3, s11
                  auipc        s6, 971768
                  xor          s10, t3, s7
                  xor          zero, s9, t4
                  slti         ra, a7, 1403
                  sll          a4, s6, t0
                  sltiu        s3, t5, 1565
                  slti         s6, a1, 1522
                  lui          s11, 740121
                  slti         ra, s7, 1819
                  and          s10, zero, s4
                  add          t0, s8, ra
                  nop
                  nop
                  and          s5, a0, a4
                  sra          s3, t6, a2
                  and          a2, sp, a1
                  xori         a3, s8, 1943
                  srl          a2, zero, tp
                  sll          s6, s11, a2
                  slli         s9, t0, 14
                  nop
                  srai         a7, a2, 20
                  and          zero, s0, a1
                  auipc        s6, 558871
                  and          a5, s0, tp
                  slt          s2, s0, ra
                  addi         a4, s3, 180
                  add          s7, a2, zero
                  srai         ra, zero, 21
                  srl          s5, a7, t3
                  slli         a5, s2, 23
                  addi         s11, a0, 412
                  slli         t0, t0, 8
                  sll          t0, s9, a3
                  sltu         s5, t5, t5
                  srl          s3, zero, s2
                  auipc        t0, 341359
                  sra          a4, t3, tp
                  xor          s7, s2, a0
                  xor          s5, a0, a1
                  sll          a3, s7, zero
                  ori          a3, a4, -216
                  or           t2, t1, t5
                  lui          zero, 982334
                  sltu         s1, a1, s1
                  andi         a5, t0, -1759
                  sltiu        gp, a0, 1704
                  slli         s10, zero, 17
                  slt          s9, a0, s0
                  srli         gp, tp, 12
                  slti         a1, ra, -1739
                  sra          a2, s0, s1
                  srl          t3, a6, s9
                  sra          t2, a1, t4
                  ori          ra, a5, -1121
                  xor          s11, s4, t0
                  slt          s4, a4, s9
                  or           s9, a0, s3
                  srli         a1, a7, 0
                  lui          s10, 735479
                  ori          a3, s4, -216
                  xori         s3, t1, -858
                  nop
                  srli         s3, s6, 0
                  or           zero, s10, t2
                  or           tp, sp, t3
                  sltiu        zero, sp, -481
                  sltu         t2, s8, s10
                  slti         s4, t2, 1598
                  sltu         s3, s0, a4
                  auipc        s9, 861689
                  or           a5, t5, gp
                  add          s0, s9, t6
                  slt          tp, a2, t1
                  sltu         tp, a6, a1
                  srai         s1, a1, 9
                  auipc        t2, 951705
                  auipc        a7, 376758
                  and          sp, t2, t1
                  sub          s1, a4, s4
                  sra          a1, s4, s9
                  sra          a5, t2, s7
                  or           a1, s10, a3
                  sub          a4, t1, s5
                  sub          s1, gp, a4
                  lui          a2, 851573
                  srl          s5, s1, a4
                  addi         t3, s3, -260
                  srl          s9, gp, a0
                  sub          a3, s7, s2
                  auipc        s7, 21686
                  sra          s4, t6, s3
                  srli         t2, t3, 14
                  sltiu        gp, zero, 1532
                  srli         t3, gp, 11
                  slli         s3, t4, 20
                  srl          gp, s6, t4
                  sub          a1, s10, t0
                  auipc        t0, 919410
                  srl          t0, t2, gp
                  or           a0, t4, sp
                  srai         s1, a7, 5
                  lui          gp, 711120
                  nop
                  slti         t3, t2, -36
                  xor          ra, t3, tp
                  srli         a0, a1, 31
                  srli         a5, s7, 27
                  xori         t6, s4, 844
                  slt          a5, t5, zero
                  slt          t3, t2, s0
                  slli         t2, s7, 21
                  nop
                  xori         a3, s8, 514
                  slli         a6, s0, 24
                  sra          t6, a0, s7
                  addi         a2, t6, 1593
                  addi         s6, a3, 2000
                  add          s10, s5, sp
                  sub          t3, a2, a4
                  sltiu        a3, s2, 1604
                  and          a3, t2, t6
                  srl          s2, a7, a6
                  xor          gp, s2, s4
                  add          a6, s1, s11
                  add          t2, a6, zero
                  sll          a6, s7, a6
                  srai         a2, s11, 1
                  addi         gp, t4, -697
                  srai         s0, gp, 23
                  xori         a7, a7, -482
                  auipc        zero, 543078
                  sltu         s10, a4, s10
                  srai         a6, ra, 28
                  slti         t0, a2, -823
                  slti         a4, tp, -1644
                  or           a2, tp, s9
                  auipc        t2, 241649
                  addi         ra, sp, -2034
                  sll          a7, t2, a3
                  lui          s8, 523073
                  and          a4, s1, tp
                  srli         s10, s1, 8
                  slti         s1, a1, -1061
                  sll          s10, zero, a1
                  add          s2, sp, s0
                  slti         s5, a4, 58
                  and          a1, s1, s3
                  ori          s1, s5, -772
                  srl          s2, t5, a2
                  srli         s10, a3, 22
                  or           s10, zero, ra
                  nop
                  sub          gp, a0, a7
                  srl          t6, s9, s3
                  andi         s1, ra, -822
                  sltu         s1, s4, s9
                  slt          s2, t5, a5
                  lui          t0, 713282
                  sra          t6, s2, t5
                  sltu         zero, s10, zero
                  auipc        t3, 388368
                  andi         t3, t2, -728
                  sll          sp, s11, s7
                  andi         sp, s10, 1956
                  slli         sp, t6, 16
                  slti         s10, a1, 1431
                  sub          a0, s4, s6
                  ori          a4, s1, -1451
                  xor          t3, sp, tp
                  slli         a6, sp, 25
                  sltu         a3, s11, s6
                  srai         a5, ra, 4
                  or           sp, t0, s1
                  srl          s8, a4, s1
                  auipc        s11, 605565
                  srl          a4, s11, a1
                  lui          s11, 721489
                  lui          t3, 891609
                  or           s2, gp, tp
                  srai         s0, t0, 13
                  slti         ra, t2, -1879
                  sub          a2, sp, a3
                  slt          s9, a4, a7
                  lui          a1, 124846
                  sltiu        s1, t2, -2005
                  andi         s2, tp, -1796
                  sltiu        a0, t5, 719
                  srl          t3, s2, a4
                  sub          t2, s3, s8
                  addi         s3, t6, 664
                  sltiu        gp, t3, -931
                  lui          t0, 426404
                  addi         s5, s10, 1410
                  xori         tp, s4, -114
                  slli         s5, t0, 18
                  auipc        t2, 387507
                  and          t3, s8, a3
                  slti         s0, s1, -992
                  xor          s3, s4, s1
                  sub          sp, s9, ra
                  slli         t3, t1, 1
                  sra          ra, t0, t6
                  lui          a5, 792453
                  sra          s4, a6, s7
                  lui          t0, 472119
                  nop
                  sra          a1, s3, s2
                  sltu         tp, zero, s3
                  sltu         gp, a6, ra
                  lui          s5, 542589
                  xori         s8, s7, -103
                  slli         s3, s10, 21
                  auipc        a5, 992094
                  sub          a6, t0, t5
                  slti         a2, s9, -1602
                  and          s6, a4, s1
                  xor          s10, s8, t5
                  lui          a3, 405313
                  or           a3, a7, a1
                  and          sp, a6, t6
                  add          s6, s1, t4
                  or           t2, a2, a0
                  srai         s9, s6, 3
                  auipc        zero, 648326
                  xori         a5, s10, 1997
                  andi         tp, s1, -764
                  add          s9, s4, sp
                  srai         s2, a7, 15
                  ori          s3, tp, 455
                  srai         t2, s1, 18
                  andi         t6, zero, -329
                  nop
                  addi         a1, s2, 1574
                  and          s6, t5, a3
                  nop
                  srli         s10, a1, 1
                  xor          t3, t4, s10
                  and          gp, t5, s1
                  srai         a3, s4, 23
                  sra          s7, s11, s6
                  srai         s8, tp, 23
                  sll          s1, s10, t4
                  xor          gp, a7, t5
                  addi         zero, a6, -1274
                  sll          sp, a3, t4
                  ori          tp, a5, -99
                  and          s7, s10, t3
                  xori         s9, zero, 1095
                  or           s6, s8, zero
                  add          s8, t1, gp
                  srl          t0, a5, s11
                  xori         s8, a1, 999
                  and          s6, s5, a0
                  xor          a6, t1, s1
                  lui          t6, 1006087
                  slt          s0, s2, t3
                  srl          s4, a4, s11
                  li           s6, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           sp, 0xffffffff
                  li           s4, 0xc2ace9d8
                  li           s10, 0xffffffff
                  li           a0, 0xf71c2340
                  li           s1, 0x80000000
                  li           s0, 0x80000000
                  li           gp, 0x0
                  li           a2, 0x0
                  li           a4, 0x80000000
                  add          a2, gp, s6
                  nop
                  nop
                  auipc        s10, 69777
                  add          s0, s6, gp
                  add          s0, s0, sp
                  sub          s6, a4, a2
                  sub          sp, a0, s10
                  addi         a2, s0, 631
                  addi         s4, s1, 1383
                  lui          s4, 939010
                  auipc        a2, 552351
                  nop
                  sub          s1, gp, s4
                  nop
                  auipc        s4, 599464
                  addi         s1, sp, 1172
                  sub          a0, s6, gp
                  add          s0, sp, s0
                  add          a4, a4, s4
                  nop
                  auipc        gp, 993038
                  sub          a2, s4, sp
                  lui          sp, 863159
                  auipc        a2, 877495
                  sub          s6, s0, s4 #end riscv_int_numeric_corner_stream_17
                  srai         s1, s6, 28
                  slt          t6, a0, a2
                  sltu         s6, ra, s6
                  auipc        a4, 721871
                  addi         s4, s8, 410
                  xori         s10, a2, 1858
                  sra          s0, t2, t0
                  nop
                  sltu         s3, zero, s8
                  nop
                  add          a5, zero, sp
                  lui          a2, 392395
                  sll          s1, s2, a2
                  andi         s4, s7, -1286
                  nop
                  srai         a7, t5, 0
                  ori          a0, a3, 1200
                  xori         s11, s11, 1634
                  addi         a3, zero, 708
                  addi         a6, t5, 1325
                  srli         t2, t5, 26
                  or           a7, a5, gp
                  or           s9, a6, t5
                  slt          s1, sp, t2
                  auipc        s7, 337291
                  sra          a7, t4, s7
                  nop
                  srl          s6, s6, a0
                  addi         a5, a4, -1758
                  and          t0, ra, a1
                  xori         sp, s6, -12
                  addi         a3, s0, 1250
                  sub          a2, ra, s4
                  andi         a5, t6, 1484
                  srai         gp, a5, 9
                  auipc        s5, 361521
                  sltu         a4, s9, t0
                  xori         tp, s3, -409
                  srai         gp, s8, 12
                  ori          a6, s5, 1691
                  sra          ra, a0, s4
                  lui          s8, 56196
                  sll          s1, ra, s1
                  addi         s6, zero, 1817
                  slti         s2, t6, 422
                  srl          s0, t1, s5
                  xor          s0, s5, t1
                  srl          gp, a4, a5
                  sra          s8, sp, s3
                  slti         zero, a5, -624
                  nop
                  sltu         tp, a6, s11
                  sltiu        s11, ra, 365
                  nop
                  srli         a3, s0, 9
                  sltiu        s3, t0, -754
                  sltu         a5, s5, a5
                  sub          s6, s0, a3
                  auipc        s3, 153686
                  sra          s1, t0, s2
                  ori          s10, a5, -69
                  srai         s7, s3, 11
                  addi         a7, tp, 1983
                  slti         s6, s5, 906
                  xori         a7, s3, -1976
                  sra          s2, s5, s10
                  sra          a5, s0, s9
                  add          tp, a7, ra
                  srai         s3, zero, 18
                  addi         t0, s8, 1474
                  srl          t3, a1, t0
                  slti         tp, gp, 833
                  xori         t2, a0, -949
                  sub          s4, a4, s8
                  sltiu        ra, gp, -1058
                  ori          s10, t4, 1454
                  slli         zero, a2, 30
                  nop
                  srai         zero, t0, 17
                  sll          s4, t2, a5
                  addi         zero, s4, 142
                  srai         t3, a2, 25
                  slti         s1, s6, -1418
                  slt          t6, s2, t2
                  sub          t0, gp, a7
                  slt          s4, a2, a3
                  addi         s5, a4, -1498
                  ori          a6, sp, -1879
                  lui          s6, 365701
                  slt          ra, s0, s0
                  nop
                  xor          s0, t1, t4
                  slti         zero, a3, 1873
                  add          s4, gp, a7
                  andi         sp, zero, -154
                  sra          t3, s6, s2
                  and          t3, tp, s2
                  and          a1, ra, s11
                  addi         s7, t6, -1947
                  slli         s8, gp, 17
                  lui          s4, 410518
                  add          gp, t1, t5
                  or           tp, s1, zero
                  srl          s10, s4, s9
                  xor          s10, s3, t6
                  sll          s2, s9, t1
                  sltu         ra, s5, sp
                  slt          a3, s7, s0
                  slli         t0, s11, 26
                  andi         s11, a1, -1423
                  sll          s8, ra, tp
                  ori          s2, s3, -93
                  nop
                  sltu         a5, s0, s0
                  and          t0, a4, ra
                  sll          s8, t5, s2
                  ori          zero, a5, -1004
                  srai         s6, a4, 1
                  sub          s10, s1, a1
                  ori          t2, s10, 914
                  andi         s10, tp, 1996
                  sltiu        t2, t4, -1034
                  sltu         s7, a4, t3
                  auipc        s10, 62314
                  srl          a4, t2, a6
                  xori         gp, a1, 405
                  and          a5, t5, a1
                  xori         s10, a5, -1674
                  and          s2, s4, a7
                  andi         tp, t2, 1486
                  xori         s2, s1, 294
                  addi         s4, t0, 72
                  auipc        s1, 394263
                  sra          a0, s5, t5
                  or           s1, s0, t0
                  ori          s11, s9, 1165
                  add          s4, zero, s0
                  sra          s5, t2, a5
                  sltu         t0, s10, a1
                  sra          s5, s1, s1
                  sra          sp, s2, s9
                  lui          s7, 367182
                  slti         a2, t3, 691
                  sll          s1, s5, t1
                  srai         s7, sp, 12
                  sltiu        t0, t1, 1867
                  lui          s1, 622921
                  sll          s11, s4, t1
                  and          s8, ra, a1
                  and          t0, t5, a2
                  sra          s9, ra, sp
                  or           t3, tp, a7
                  slli         s11, s2, 22
                  sra          a4, gp, s11
                  nop
                  srai         s6, s1, 16
                  slti         s3, s0, 122
                  andi         zero, t5, -860
                  srli         t0, t3, 29
                  slt          s0, zero, zero
                  slti         s8, gp, -203
                  xori         s4, t3, 223
                  xori         s6, sp, 178
                  and          a2, a2, s8
                  and          s6, t5, s0
                  nop
                  and          s6, a4, a6
                  nop
                  or           a5, zero, a6
                  srl          a1, gp, s9
                  srli         s11, s3, 8
                  or           s10, t2, a4
                  or           s7, t0, s1
                  slt          sp, a5, s4
                  andi         ra, a0, 233
                  nop
                  nop
                  sub          a7, s8, t5
                  sltu         s0, tp, s6
                  andi         ra, a7, 1662
                  sra          a6, a4, gp
                  lui          s10, 155375
                  nop
                  auipc        a4, 570205
                  sll          s0, s6, s9
                  add          s1, t3, zero
                  addi         s7, t3, 1063
                  or           a5, s7, t2
                  andi         zero, s3, -1673
                  addi         a1, s9, 27
                  srai         s7, t0, 4
                  nop
                  slti         s6, sp, 1425
                  and          s4, a3, a2
                  addi         a1, s0, 1958
                  and          ra, s5, s2
                  slti         sp, s2, 660
                  srl          zero, s4, s6
                  add          t2, t2, a0
                  addi         zero, a4, -923
                  ori          s7, sp, 1493
                  srai         ra, s6, 5
                  srli         s7, s9, 20
                  srai         s2, a1, 7
                  or           t6, s10, s2
                  xori         s0, a2, -737
                  ori          s8, s4, 1764
                  slt          s2, ra, a0
                  srli         t6, s1, 9
                  andi         s4, t0, 694
                  nop
                  sll          a1, s10, gp
                  addi         s7, s6, 706
                  auipc        s5, 199020
                  sltu         s2, t0, a3
                  and          t3, s10, sp
                  slt          a1, t2, sp
                  srli         a0, a5, 22
                  sra          a4, a1, s9
                  nop
                  ori          a1, s2, -1514
                  sll          gp, s1, a3
                  slti         a4, s9, -1015
                  sra          s11, s7, s8
                  andi         ra, s1, -1656
                  xori         s5, t3, -1143
                  srai         a4, gp, 25
                  sra          tp, t3, a2
                  nop
                  and          sp, a7, t6
                  srai         tp, s0, 23
                  add          s7, s7, a5
                  sra          a7, s2, a4
                  or           a4, gp, s5
                  and          s9, a1, s6
                  sltu         s9, s3, t6
                  andi         a2, t1, 1760
                  sltu         s5, zero, a3
                  andi         s11, a1, 338
                  sra          s7, s3, t2
                  srli         a2, s5, 14
                  lui          s3, 622187
                  lui          a0, 287009
                  srai         s9, gp, 30
                  sra          t3, s6, t4
                  lui          s7, 694899
                  nop
                  sltiu        s7, t3, 872
                  lui          a4, 259734
                  ori          a6, s11, -314
                  xori         t2, a6, 641
                  add          a1, s7, s3
                  slt          gp, a0, tp
                  nop
                  slt          s6, gp, t3
                  add          s2, s11, t4
                  slt          s3, s4, s8
                  sll          tp, t2, a5
                  sll          t3, s1, a0
                  auipc        s10, 588599
                  slti         a2, gp, 1265
                  andi         s4, a5, -343
                  sub          a4, s6, s10
                  xori         a0, sp, -1259
                  slli         s2, s3, 7
                  auipc        a7, 1003135
                  or           a4, t6, s1
                  slli         s6, s7, 23
                  sltiu        s2, t3, -156
                  ori          t0, sp, 1696
                  sra          s5, s5, s11
                  add          s7, a0, a5
                  xori         s6, a3, -1263
                  sltu         s3, a4, t3
                  srl          a1, t5, a7
                  addi         s5, s4, 798
                  srai         s1, s7, 13
                  nop
                  sll          s3, a7, tp
                  sltu         tp, s8, zero
                  addi         s3, zero, 1855
                  sub          s4, tp, t4
                  srl          a5, zero, a1
                  xor          a4, s0, t6
                  add          t0, s8, a7
                  lui          a2, 607018
                  lui          a4, 493769
                  ori          a0, tp, -432
                  lui          s11, 878771
                  andi         s1, a4, -525
                  and          s1, s10, s4
                  sltiu        s5, s8, 1536
                  sltu         s1, tp, a5
                  slt          s7, s7, zero
                  addi         s3, gp, -1391
                  sll          a1, s3, a2
                  sll          s3, a1, s4
                  slt          s10, s6, s0
                  sll          a7, t1, a6
                  lui          a0, 406660
                  sra          zero, a2, s3
                  add          a4, a7, sp
                  srli         s9, zero, 16
                  sra          s10, t3, t5
                  addi         a5, s0, 1605
                  or           zero, t4, a5
                  srli         sp, a4, 17
                  or           s6, sp, sp
                  auipc        a2, 206049
                  sltiu        a6, s7, 757
                  srl          a4, s4, a4
                  nop
                  lui          s3, 967710
                  slti         a7, t4, -573
                  srai         s1, s3, 12
                  sltu         t6, t6, t1
                  srai         gp, s11, 10
                  xor          a2, s2, s8
                  or           a6, t3, gp
                  nop
                  xori         t0, a4, -685
                  and          s0, sp, t0
                  srai         a1, s6, 30
                  sltu         t6, a7, t1
                  sltiu        s0, s0, -1130
                  auipc        s11, 65038
                  xori         zero, a1, -723
                  lui          zero, 128145
                  addi         a2, a5, -526
                  xor          a4, t6, s3
                  slt          s6, a4, t3
                  slti         a0, s9, 1092
                  or           ra, s4, t1
                  nop
                  slli         t0, a7, 27
                  sra          tp, t3, ra
                  sltiu        t0, t3, -1541
                  add          a7, tp, s8
                  addi         gp, t5, 1332
                  xori         a3, s8, 1298
                  slti         s4, t2, 1953
                  srai         a4, s4, 10
                  auipc        ra, 294368
                  nop
                  slt          a7, s2, s9
                  add          zero, s3, gp
                  slli         t6, a0, 20
                  nop
                  slti         s3, t0, -1830
                  nop
                  srl          s9, s4, tp
                  srli         a7, a4, 14
                  srai         s9, t1, 24
                  sltu         s1, t3, s0
                  addi         s10, a4, 1098
                  ori          s6, s6, 1203
                  li           s0, 0x80000000 #start riscv_int_numeric_corner_stream_13
                  li           s5, 0x80000000
                  li           ra, 0xffffffff
                  li           s7, 0x8bbee078
                  li           a2, 0x0
                  li           a5, 0xffffffff
                  li           s11, 0xffffffff
                  li           gp, 0x80000000
                  li           a0, 0x0
                  li           s8, 0x0
                  add          s0, gp, a0
                  lui          s8, 955134
                  auipc        s5, 174575
                  sub          a0, s5, a2
                  addi         gp, s0, 1448
                  lui          a0, 357159
                  lui          gp, 960692
                  add          gp, gp, a0
                  nop
                  auipc        s7, 251430
                  auipc        a0, 982458
                  sub          s8, a0, a0
                  nop
                  add          a2, s7, s5
                  addi         s11, a2, -48
                  addi         s8, s0, 349
                  addi         s0, a0, -1580
                  nop
                  auipc        s5, 772644
                  sub          s8, ra, a2
                  sub          s7, a0, s0
                  nop
                  addi         s0, s0, 1488
                  nop
                  addi         a0, gp, 1539
                  lui          s5, 765275 #end riscv_int_numeric_corner_stream_13
                  ori          t3, s0, -164
                  slt          s2, s9, a3
                  sub          sp, s6, t0
                  srl          s6, t6, s6
                  sltiu        s9, tp, -34
                  slti         gp, s4, -1991
                  or           s5, s0, a2
                  slt          s8, a4, t4
                  and          t3, a3, s4
                  sltiu        s2, tp, -928
                  sub          t0, a6, s11
                  sra          t2, s5, a6
                  ori          s0, a3, -1504
                  addi         s6, s5, -1094
                  slli         t0, tp, 26
                  sra          s2, a3, a2
                  slti         a1, a1, -79
                  slt          sp, a5, s2
                  slli         s3, s9, 23
                  or           s7, sp, gp
                  srl          s4, a4, a7
                  slt          s7, a2, s10
                  add          s3, s4, a1
                  slli         s0, a0, 10
                  xori         a5, sp, 498
                  lui          t3, 332454
                  andi         zero, t5, 49
                  slt          s2, s0, a0
                  nop
                  slti         s0, t6, -205
                  srl          t6, t0, ra
                  andi         a5, s0, 2028
                  lui          a3, 740776
                  slt          a5, s8, t1
                  auipc        s0, 316388
                  slt          s5, s4, t4
                  or           zero, s7, a7
                  srai         a2, t0, 2
                  xor          a7, s10, s3
                  addi         s6, zero, 209
                  xor          a4, a5, a7
                  srli         a5, a3, 8
                  addi         a7, t6, 1458
                  nop
                  add          t6, a4, s6
                  srl          s7, tp, t1
                  lui          s5, 113508
                  sltiu        s10, s11, 65
                  slli         s11, a1, 18
                  auipc        a0, 843548
                  or           t6, s6, t1
                  auipc        zero, 428413
                  srli         a6, sp, 29
                  xor          gp, s1, a3
                  slli         a6, t3, 11
                  slli         s9, s8, 13
                  sub          s2, s5, t3
                  xor          a6, t6, s11
                  auipc        a4, 108792
                  sub          t6, a3, ra
                  srl          tp, a5, a5
                  slli         s0, s10, 31
                  add          s3, s4, t2
                  xor          a5, gp, ra
                  and          s2, a0, tp
                  srai         s7, sp, 28
                  sub          s6, t3, s7
                  addi         t3, zero, 2028
                  andi         tp, a0, 367
                  slti         zero, s1, -2016
                  sltu         s7, s6, s10
                  slli         s3, s1, 22
                  srli         t6, s1, 31
                  srl          s5, tp, t0
                  slli         a7, zero, 26
                  addi         a1, s1, -1861
                  sub          a2, ra, t6
                  slli         a7, s9, 12
                  addi         s4, t2, -1296
                  or           tp, s2, a5
                  sltiu        zero, s0, 1593
                  srl          t6, a1, s10
                  srai         t3, t3, 3
                  slti         s2, s5, -97
                  sltiu        a2, a1, 1775
                  slti         a7, sp, 879
                  xor          s10, a0, a6
                  slt          a6, s3, gp
                  lui          gp, 465454
                  slt          a4, s0, t5
                  ori          s11, s0, 296
                  slt          s3, s4, zero
                  and          a6, t2, s7
                  addi         ra, a1, -230
                  or           a4, sp, a0
                  xori         s8, s10, 966
                  srai         s7, a4, 8
                  sra          s3, s3, a0
                  or           s8, t3, t3
                  sra          t0, s1, a2
                  xori         s10, s7, 1214
                  slt          sp, sp, s1
                  and          t3, a6, a2
                  slt          t6, t3, t6
                  lui          s11, 993852
                  slti         s1, s9, 131
                  xori         a6, t2, -2043
                  or           ra, gp, a2
                  xori         a6, a5, 1808
                  sll          s0, s4, t4
                  sll          t3, s6, s5
                  andi         s1, sp, -761
                  sll          a0, ra, t2
                  ori          a7, s10, -387
                  slt          s2, t4, t4
                  srl          zero, sp, s4
                  auipc        s5, 674600
                  sra          s1, t3, s6
                  sltu         a6, t5, s8
                  sll          a4, s11, t5
                  slt          s10, a5, s8
                  sub          a3, a1, s3
                  auipc        t2, 911620
                  slli         a7, s8, 23
                  xori         s11, t5, 692
                  lui          a5, 802108
                  sll          t2, s1, zero
                  sll          s5, s8, s3
                  andi         s2, s7, 1
                  sub          ra, s2, a6
                  or           gp, s3, s5
                  xori         tp, s2, -799
                  slti         s6, a6, 1819
                  srai         s3, s9, 12
                  sll          t6, t3, t1
                  slt          s0, a0, s6
                  sltiu        s10, t6, -695
                  srli         sp, s0, 26
                  andi         a5, a4, 1356
                  slli         a4, s3, 1
                  lui          a6, 527077
                  srl          a2, a2, sp
                  slli         zero, s5, 16
                  lui          ra, 868673
                  sub          tp, s9, t0
                  add          t0, gp, s4
                  andi         a1, s5, 1950
                  ori          s10, t0, -662
                  addi         a4, s2, -1911
                  andi         t6, a0, -38
                  slt          s5, s6, s4
                  nop
                  sltiu        t3, s9, 1372
                  lui          s4, 902141
                  sub          s11, t4, a1
                  srai         tp, ra, 0
                  and          t0, t1, t0
                  srai         a2, gp, 26
                  slt          s3, t3, s6
                  sub          s3, zero, s7
                  ori          a7, a1, 1164
                  auipc        a6, 738814
                  srl          s3, a3, gp
                  sub          gp, t2, a3
                  or           a1, t1, a5
                  srai         s9, t4, 17
                  srli         t2, a4, 4
                  slli         s9, t2, 8
                  andi         s4, s3, -194
                  ori          a1, s2, 1063
                  sltu         s2, ra, t1
                  ori          s6, s11, -575
                  xori         a7, t2, -1841
                  nop
                  srl          a0, a4, t6
                  addi         zero, s4, -932
                  slt          a1, a5, t1
                  xor          s6, a2, s10
                  and          s8, s4, s5
                  xor          a5, ra, s2
                  or           s9, t6, s6
                  sub          s2, sp, t3
                  or           s1, t2, s4
                  sub          s8, a5, zero
                  addi         s7, s0, -796
                  sltiu        s5, t0, 885
                  srli         ra, s10, 27
                  and          a5, s3, ra
                  addi         s0, a1, 661
                  andi         a2, s10, 734
                  lui          s4, 19800
                  add          s7, s6, a3
                  addi         s1, a0, 1518
                  slt          s9, s1, s2
                  xori         s7, s7, -35
                  srl          a6, zero, s1
                  srl          s9, s0, t5
                  slt          tp, t1, ra
                  or           sp, t6, t1
                  sub          zero, s1, t0
                  add          t0, s9, zero
                  nop
                  add          s6, s11, t4
                  slti         tp, s11, -1482
                  add          s11, zero, t4
                  xori         s2, t3, 1737
                  andi         s1, t4, -1090
                  add          a2, s5, s5
                  add          s9, a0, t2
                  addi         s9, s0, 1677
                  srl          t0, s7, s1
                  srai         a7, t6, 9
                  nop
                  srl          s11, t2, s7
                  slti         s9, s7, 908
                  and          s5, a3, t6
                  sll          a3, gp, sp
                  sra          s4, a1, a7
                  ori          s4, tp, -310
                  or           a0, a3, s9
                  xori         sp, s3, 334
                  or           s9, a3, ra
                  addi         a3, t4, -1855
                  add          t3, t0, s8
                  srl          s0, s0, gp
                  andi         s6, t2, -710
                  sltu         a6, s7, s6
                  sll          a0, sp, s8
                  sltu         a6, a0, s0
                  and          a4, sp, t2
                  nop
                  sll          zero, a0, s5
                  sub          t0, s0, t1
                  andi         a5, a7, 316
                  sll          s6, a5, ra
                  lui          s6, 1044237
                  sll          t3, t0, t4
                  xor          tp, t3, s5
                  srai         s7, s1, 10
                  and          s8, t2, a1
                  sub          s11, a2, a2
                  add          a4, s3, ra
                  nop
                  or           t2, t6, t2
                  xori         a6, tp, 1794
                  slli         tp, s4, 25
                  xor          gp, t0, a2
                  sll          a6, t6, t5
                  and          s8, s3, s0
                  slt          gp, a1, s6
                  and          s11, a5, a0
                  nop
                  sltu         s7, ra, s11
                  slti         zero, tp, 1754
                  slli         s0, a4, 21
                  andi         sp, s7, -736
                  srai         s2, s5, 11
                  slli         s10, a5, 15
                  and          gp, t6, a2
                  xori         a6, s1, 659
                  sub          s3, s2, zero
                  sltiu        a4, ra, 179
                  slti         a7, s3, 1588
                  add          s4, a6, a6
                  srli         s7, s6, 4
                  lui          zero, 275399
                  xori         a5, a0, 497
                  add          a7, a4, t3
                  sll          zero, s1, a1
                  srai         s3, a6, 6
                  andi         ra, s11, -1236
                  ori          s1, t2, 888
                  lui          s10, 94424
                  srl          a1, a0, s3
                  ori          tp, a1, -841
                  srli         a4, s6, 12
                  srl          s8, t4, a3
                  nop
                  srli         t6, ra, 4
                  auipc        s6, 487809
                  xor          s11, s6, tp
                  addi         s4, a5, -804
                  sub          a5, a3, s0
                  or           zero, s1, a5
                  srli         a7, s6, 15
                  auipc        zero, 991978
                  or           a7, t5, t3
                  xori         s4, s2, 398
                  xori         s1, sp, -214
                  slti         t3, gp, 864
                  slt          a5, gp, t0
                  auipc        a5, 154976
                  addi         tp, s10, 1562
                  sra          a1, a2, a4
                  sra          a6, s4, tp
                  sll          t0, s0, a5
                  slt          a6, a3, gp
                  sltu         s6, s2, s9
                  nop
                  and          zero, s7, tp
                  auipc        t3, 1000950
                  xori         s10, a2, -185
                  addi         s8, t4, 635
                  lui          t0, 132957
                  auipc        s8, 55554
                  addi         s6, a7, 666
                  or           s4, s11, s7
                  add          s8, s7, s3
                  sll          s0, a2, a3
                  lui          a2, 1021326
                  add          s1, t1, s9
                  slli         zero, s7, 23
                  ori          a6, t2, -1004
                  andi         a6, t6, -1114
                  auipc        s6, 845387
                  and          t0, t3, s11
                  andi         s7, t3, -938
                  sub          s10, s11, t1
                  sltu         s0, t3, s10
                  sltiu        sp, a3, -450
                  srli         a6, s2, 8
                  slti         gp, a0, 229
                  lui          a5, 815697
                  andi         a0, zero, 1020
                  sub          s3, s11, s6
                  or           s11, s4, a2
                  sltu         t2, s11, a0
                  sltu         s1, s3, s4
                  slt          a2, s2, s6
                  slti         t0, s8, -1914
                  sub          sp, t5, a0
                  andi         gp, s8, 1273
                  slt          a7, ra, sp
                  srli         zero, a2, 4
                  ori          s1, s11, -497
                  sltu         a5, t3, s1
                  slli         tp, s7, 16
                  slli         t3, sp, 15
                  add          s10, s5, t2
                  slli         a3, a4, 12
                  or           a3, t3, t5
                  add          s10, t5, t5
                  sltiu        s3, s11, -1447
                  sra          s0, s2, a0
                  sra          s9, zero, t5
                  srai         t2, s1, 11
                  slli         gp, s7, 11
                  andi         ra, t4, 430
                  sll          a5, t0, tp
                  sltu         s7, sp, gp
                  xori         s0, t6, 1381
                  xor          t0, s1, zero
                  slt          s9, a4, t5
                  add          s8, t4, sp
                  sltiu        a6, t5, 576
                  auipc        s8, 690781
                  srl          t6, s2, s9
                  sll          t0, s5, s0
                  ori          s8, sp, 775
                  srli         a7, s0, 15
                  srai         a7, s0, 29
                  srli         s1, a3, 10
                  xor          a5, t3, s2
                  sub          s1, a7, s3
                  andi         t0, t5, -1160
                  slt          t0, s0, t5
                  srai         t3, t0, 24
                  ori          t6, a0, -1384
                  auipc        zero, 836886
                  sra          ra, a7, s2
                  sltiu        s0, a3, -1512
                  ori          zero, s6, -1707
                  sub          s9, gp, t5
                  sltiu        zero, a2, -730
                  srai         a0, s6, 24
                  addi         s11, a6, -248
                  srli         s4, s9, 26
                  slt          a0, a5, t4
                  auipc        s4, 795873
                  srai         ra, s3, 0
                  sltiu        tp, s8, 1230
                  slt          s3, a6, a0
                  or           sp, t2, t4
                  nop
                  add          gp, sp, a2
                  slti         t0, ra, -1322
                  sll          a4, t4, t0
                  sltiu        s9, a3, -869
                  xor          a5, a7, a2
                  or           s0, t5, s0
                  sub          zero, a3, zero
                  sub          a4, t2, t1
                  lui          s10, 380269
                  lui          s9, 185606
                  slti         a7, a5, 1615
                  and          t6, tp, sp
                  xori         s2, s6, 948
                  xor          s7, t0, a6
                  slt          s11, a2, s9
                  sltu         t0, s5, s9
                  slti         a4, s0, 1129
                  lui          s7, 445972
                  srl          t6, s10, a7
                  slti         a2, a5, -111
                  slt          s9, a2, s6
                  slti         ra, t3, 586
                  lui          s8, 372980
                  ori          a4, s6, 1116
                  sll          a2, s1, zero
                  or           t0, s1, s0
                  xor          s3, t5, a7
                  sra          ra, tp, s11
                  sra          ra, t4, t4
                  auipc        s1, 878900
                  auipc        sp, 21912
                  slt          gp, t3, s0
                  srli         s5, s6, 20
                  nop
                  xor          s5, s9, t2
                  slt          a3, t1, s7
                  xor          s4, s7, a0
                  ori          a6, a7, 1113
                  nop
                  andi         t2, a7, -956
                  or           s5, s2, a3
                  sltiu        zero, s4, -1529
                  slti         s0, s0, 1977
                  andi         a7, sp, 1020
                  or           t6, a2, s7
                  add          t2, a6, t1
                  slli         a0, s5, 31
                  sll          s10, tp, s6
                  addi         s2, s1, -947
                  sra          a0, s11, ra
                  slti         s7, a1, 402
                  sub          t3, a4, a0
                  slti         t6, a4, -134
                  or           zero, gp, s4
                  sll          a3, t1, t1
                  slt          t0, t2, ra
                  sll          s2, t5, s11
                  andi         s7, t4, 1437
                  or           a1, a6, s2
                  ori          sp, s2, 2030
                  srl          s7, s0, s11
                  auipc        ra, 858311
                  sltu         s0, s4, sp
                  andi         ra, a7, 108
                  xori         s9, s10, -364
                  nop
                  slli         sp, t5, 20
                  slt          s8, s6, a4
                  sltu         s3, t3, s6
                  sub          t0, a7, a3
                  sltu         t3, s9, a0
                  andi         s8, t0, -474
                  andi         t6, a4, 703
                  or           t3, tp, a1
                  srai         a4, gp, 21
                  or           a4, s6, s0
                  ori          a7, ra, 1208
                  and          s9, s2, sp
                  add          a5, a2, s3
                  slli         t6, a5, 27
                  srai         a6, s6, 24
                  slt          s7, a3, t1
                  add          ra, zero, t4
                  srai         s4, a6, 6
                  xor          a6, a0, t2
                  sub          a4, t3, s5
                  and          t0, zero, s0
                  xori         gp, t6, -506
                  slti         sp, s4, -1194
                  xor          ra, zero, s4
                  srai         a4, a3, 19
                  sltu         zero, gp, t4
                  slt          s6, a5, a7
                  ori          s4, a7, 1063
                  andi         a5, a3, 5
                  and          s3, a6, s9
                  nop
                  xor          ra, a2, s7
                  srai         a4, s4, 4
                  srli         tp, a6, 26
                  slli         s6, a6, 18
                  slli         a1, s10, 13
                  xor          s4, tp, t3
                  srli         t6, a6, 31
                  srl          a7, s9, s5
                  auipc        tp, 521117
                  srli         a3, s11, 31
                  sra          s7, s1, t1
                  auipc        ra, 856921
                  addi         s11, a5, -525
                  lui          s10, 526744
                  sltiu        s3, a0, 1959
                  xor          gp, a1, a1
                  nop
                  srl          s0, s2, s2
                  xori         a3, a2, -1672
                  slt          a4, s7, a0
                  slli         a0, a3, 24
                  lui          a2, 831440
                  sltu         s11, a6, t6
                  ori          s5, s4, -1276
                  slti         t0, a0, 1992
                  srli         s2, t5, 16
                  auipc        s2, 470069
                  lui          s5, 539481
                  srl          s3, s1, a5
                  auipc        a2, 417249
                  or           a7, s10, a5
                  slt          s4, a7, sp
                  lui          t0, 121921
                  and          s1, s10, t0
                  sll          t2, t5, tp
                  and          a0, t4, sp
                  slti         a2, a5, -1123
                  sltiu        a7, s5, 947
                  nop
                  xori         tp, a2, 1358
                  addi         a0, t4, -1481
                  sub          s3, s3, s0
                  or           s6, zero, s1
                  slli         tp, s8, 19
                  nop
                  addi         a5, s5, 315
                  sltu         a5, a7, a4
                  sltiu        s0, s6, 319
                  lui          a7, 871339
                  slli         a4, t0, 24
                  addi         sp, t5, -925
                  auipc        a3, 106849
                  xori         ra, tp, 167
                  xor          s6, s9, a2
                  xori         gp, s0, 188
                  auipc        s0, 591312
                  sltiu        a7, s0, -2038
                  srai         tp, s0, 1
                  sll          gp, a3, sp
                  sltiu        t3, t3, 1245
                  sll          ra, s5, a0
                  sll          a5, s7, a5
                  sltiu        s6, t4, 733
                  srai         a2, s3, 13
                  addi         t6, s2, 1946
                  slt          s2, t5, s7
                  nop
                  lui          ra, 195037
                  auipc        s2, 327326
                  sltu         s8, a7, ra
                  or           s11, a4, t6
                  and          s4, s7, s7
                  add          s4, s7, s10
                  sll          t2, tp, a1
                  sra          t0, a1, a2
                  andi         s0, ra, 909
                  sll          s9, s5, s2
                  slt          s4, t4, s7
                  andi         s1, s9, 909
                  slti         a6, a1, -996
                  auipc        zero, 573776
                  lui          s11, 925571
                  addi         s8, zero, 1682
                  lui          s8, 150083
                  sub          sp, s7, sp
                  sub          zero, t0, gp
                  auipc        s11, 290090
                  lui          s0, 376785
                  slli         a3, s7, 17
                  slt          a5, s0, t4
                  addi         a1, t3, 476
                  add          s1, s11, s4
                  srai         s10, t2, 14
                  lui          gp, 474249
                  auipc        s10, 908024
                  add          a2, ra, s2
                  nop
                  lui          s8, 901449
                  srl          sp, a0, t0
                  add          a7, s0, t6
                  add          a6, a1, s7
                  xor          a0, s3, s4
                  add          s2, a6, a1
                  xori         a0, s6, -407
                  sltiu        s6, sp, -1395
                  andi         a5, t4, -1888
                  sll          a6, sp, s5
                  sltiu        ra, s7, 78
                  add          s4, t1, s5
                  lui          t2, 28262
                  addi         zero, a2, 1274
                  xor          s5, a0, a1
                  srai         t2, s10, 7
                  xori         a2, s0, -131
                  sltiu        tp, a4, -1369
                  slt          s6, s4, sp
                  auipc        ra, 702249
                  add          s6, tp, s1
                  slti         a0, a5, -502
                  ori          a1, tp, 2019
                  add          s8, t2, a4
                  srli         s5, t2, 18
                  sra          a6, t6, s7
                  sub          a1, a0, s6
                  sltiu        s4, sp, 1264
                  srl          s3, s2, t0
                  slt          a3, gp, t2
                  ori          t6, s11, 790
                  slt          a2, sp, s11
                  slti         a0, s3, -1856
                  andi         t3, s6, -1661
                  add          s0, a0, t2
                  xori         tp, s2, 1515
                  lui          a0, 248861
                  or           s10, a7, s3
                  add          gp, s8, s5
                  xori         a0, s4, -109
                  add          s0, s1, t1
                  nop
                  sra          ra, s4, a7
                  nop
                  addi         t2, gp, -381
                  slli         t6, tp, 7
                  addi         s7, t2, 1658
                  srai         a6, s5, 7
                  sll          s9, s4, s6
                  auipc        s8, 946256
                  add          s1, s1, s5
                  sltiu        a4, zero, -947
                  sll          zero, ra, s7
                  sltu         a0, s3, tp
                  xor          s3, t3, tp
                  sltiu        s8, s6, 1740
                  sll          s11, t2, t2
                  andi         s9, sp, 315
                  srli         t2, zero, 5
                  slli         s11, s5, 6
                  lui          a4, 387510
                  sra          a0, s0, t0
                  sub          ra, s7, ra
                  ori          t6, s9, -1709
                  addi         zero, t6, -422
                  slli         s9, sp, 21
                  and          tp, s7, a3
                  xor          a6, t3, ra
                  srai         s0, s8, 31
                  slti         a5, s0, -1721
                  add          t3, s0, a3
                  auipc        s4, 904827
                  slti         sp, t3, -1462
                  xor          s8, s1, s8
                  srli         t3, s7, 31
                  ori          a0, s11, -937
                  nop
                  ori          a5, t0, -1598
                  lui          a0, 947134
                  and          s4, s8, a5
                  srai         s7, t4, 4
                  nop
                  or           s0, t5, s1
                  sub          s7, a7, a6
                  li           s5, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           gp, 0xffffffff
                  li           a4, 0x0
                  li           sp, 0xffffffff
                  li           s11, 0xac766f56
                  li           tp, 0x80000000
                  li           s3, 0xffffffff
                  li           s4, 0x80000000
                  li           a6, 0x80000000
                  li           t6, 0x7c734968
                  auipc        s11, 775005
                  add          a4, s11, s4
                  lui          s4, 907074
                  nop
                  sub          s4, gp, s5
                  auipc        gp, 19597
                  addi         t6, s5, 1942
                  auipc        gp, 570908
                  auipc        sp, 742897
                  auipc        tp, 902659
                  sub          s3, s11, a6
                  lui          t6, 84694
                  auipc        gp, 485706
                  sub          t6, a6, gp
                  lui          a6, 350264
                  auipc        gp, 513884
                  auipc        s11, 664465
                  sub          t6, sp, a6
                  add          s3, tp, a6
                  addi         t6, sp, 775
                  addi         gp, sp, -362
                  auipc        sp, 632624
                  add          s5, gp, sp
                  lui          s4, 638185
                  nop
                  auipc        s11, 566857
                  add          a4, tp, t6 #end riscv_int_numeric_corner_stream_14
                  auipc        gp, 145825
                  ori          s9, a6, -1873
                  or           s1, a7, a1
                  slt          s8, t3, s8
                  sll          a3, a5, s1
                  slt          a5, ra, sp
                  addi         s7, a6, 1734
                  slti         a6, a1, -1433
                  sll          s7, s8, zero
                  auipc        a2, 376282
                  srl          s10, s10, a7
                  xori         s0, a0, 213
                  sll          s6, s4, a4
                  or           gp, s9, s1
                  ori          a2, s0, 83
                  ori          s9, a7, 490
                  addi         zero, s10, 1126
                  slti         s10, s3, -678
                  sltiu        s4, t5, 1065
                  sltu         s5, t6, a4
                  nop
                  sub          a0, s6, a4
                  slt          gp, sp, a6
                  slli         a4, s10, 6
                  slt          a3, s4, t3
                  slt          a1, t5, ra
                  ori          s6, s1, -879
                  slt          a7, s2, a2
                  auipc        a1, 817379
                  sll          a2, t4, a6
                  auipc        s8, 924347
                  sra          zero, t2, a2
                  addi         s8, s2, 1278
                  ori          s7, a5, -1315
                  nop
                  xori         ra, t3, 843
                  xori         s8, s6, -1238
                  slt          s2, t6, zero
                  add          s2, s2, s1
                  xor          s11, s4, a5
                  or           a4, zero, t1
                  nop
                  slli         zero, a5, 4
                  xor          s0, tp, t2
                  xor          s7, s0, t3
                  and          s10, t1, s6
                  andi         s2, a0, -1481
                  srli         s6, t3, 22
                  slt          s1, t6, s2
                  srl          a4, s6, a6
                  auipc        tp, 917459
                  slti         s3, a6, -1495
                  slli         a0, a1, 28
                  xor          sp, ra, a5
                  or           s9, a0, a2
                  sltu         s1, t0, s10
                  add          t2, s8, a4
                  srli         a0, s10, 20
                  and          s4, ra, s6
                  addi         a5, s0, -289
                  sra          a5, zero, s3
                  add          s9, s4, s5
                  sltu         s11, t4, tp
                  and          s11, a2, a3
                  auipc        s1, 789195
                  andi         s2, a6, -777
                  sltiu        s10, s3, -693
                  nop
                  srl          s8, s8, t1
                  ori          t0, s3, -1872
                  andi         s8, tp, -668
                  xori         t3, s7, -1225
                  auipc        a3, 729115
                  or           s0, t4, s1
                  sub          t6, s10, t5
                  add          s7, s4, t0
                  slli         s10, s0, 27
                  slli         a1, s5, 1
                  lui          t6, 289390
                  andi         s4, t1, 337
                  add          t2, s1, s7
                  sltiu        a6, t6, -1571
                  auipc        a6, 814444
                  slti         a1, tp, 1724
                  xor          t6, t4, t4
                  nop
                  srai         t6, s3, 3
                  add          ra, t3, s11
                  and          t3, s7, a6
                  xor          s3, t0, a3
                  andi         s9, s5, 1563
                  sub          a1, t2, s9
                  srl          s7, a0, s10
                  slt          t3, s3, t0
                  sra          s0, a1, s6
                  xor          t0, t5, s6
                  sra          a0, t6, tp
                  sll          s6, a1, a1
                  auipc        a2, 506165
                  xori         s0, zero, -1303
                  xor          t3, sp, s6
                  xor          a6, sp, a5
                  sra          a4, s11, s0
                  srai         ra, ra, 19
                  nop
                  srai         a7, a1, 27
                  sltu         s3, s6, s9
                  srai         s3, s10, 12
                  slli         s7, s10, 26
                  srli         t0, s0, 15
                  or           s4, gp, a4
                  slti         t3, s4, -519
                  add          a3, a0, s4
                  andi         t3, s9, -1612
                  xor          t0, t1, a7
                  auipc        a5, 468827
                  srai         t3, s6, 15
                  xori         s3, s11, -388
                  nop
                  ori          zero, t4, 1340
                  lui          tp, 963922
                  sll          s1, s3, s2
                  xori         a3, ra, -528
                  add          gp, a7, a3
                  slli         zero, t3, 28
                  ori          a3, a1, 579
                  and          t3, s6, s7
                  xor          s2, a1, a6
                  or           s10, zero, gp
                  srai         s5, t4, 8
                  add          s3, t5, t5
                  add          a4, s10, s10
                  slti         s5, t5, 1119
                  and          s11, s3, s4
                  auipc        gp, 259900
                  lui          t6, 214068
                  srli         t3, ra, 17
                  and          sp, t2, a1
                  sltu         s5, ra, s6
                  sra          t6, t4, t2
                  xor          a5, s3, a5
                  sll          s1, t0, s4
                  sra          s7, t0, s10
                  srli         s9, s2, 1
                  slli         s10, s0, 15
                  sltu         t6, a2, t5
                  slti         t0, t4, -232
                  sltiu        s2, a4, -276
                  add          s10, s10, s2
                  xor          s3, t4, s4
                  sub          s9, s11, s7
                  srai         a0, s8, 18
                  xor          gp, t1, t2
                  slt          s4, t4, s5
                  auipc        a3, 791380
                  srai         tp, a1, 27
                  and          s1, s3, t2
                  and          s8, ra, ra
                  slti         a5, s11, -1058
                  sll          s2, t4, t1
                  slt          s6, a5, s5
                  srai         tp, zero, 15
                  srl          gp, t5, ra
                  and          sp, gp, t4
                  sll          t0, s5, tp
                  auipc        ra, 1028476
                  slt          t2, s8, a3
                  slli         a1, t2, 2
                  xori         t3, a3, 270
                  slt          s5, gp, s5
                  ori          ra, t4, 986
                  sra          s8, a0, s6
                  slli         a4, a2, 19
                  slli         t3, a2, 28
                  xor          s8, a1, s1
                  sub          gp, s8, s3
                  slti         t2, a1, 111
                  srai         a5, s6, 9
                  sub          t2, s3, s0
                  srai         a7, t4, 13
                  slli         s5, gp, 9
                  slt          zero, t4, s8
                  xori         a7, s10, -2004
                  srai         s4, a1, 20
                  sltiu        s11, s11, 1000
                  sub          a7, a1, s6
                  srl          s2, t6, t1
                  sltu         a1, t0, s4
                  sltiu        a2, tp, -487
                  addi         t0, t5, 1153
                  xori         s9, s2, -885
                  slti         ra, a6, -624
                  sltiu        sp, s7, -1245
                  xori         a3, t3, 1506
                  slti         t3, t4, 362
                  sub          t3, t2, s8
                  sub          t0, a2, a4
                  sll          s4, zero, s3
                  ori          ra, tp, -609
                  addi         a6, a5, 650
                  slti         tp, t2, -1392
                  and          t6, a1, s5
                  srai         a1, a5, 13
                  srl          a6, sp, t2
                  slli         a5, s3, 15
                  xori         a6, a5, -750
                  lui          sp, 454981
                  auipc        tp, 296786
                  andi         a5, t5, 1889
                  xor          t0, zero, t6
                  add          a5, s3, a5
                  auipc        a4, 251769
                  sra          s0, a7, a3
                  addi         zero, s9, -1626
                  srai         a7, s4, 1
                  srli         s1, a6, 10
                  slti         s6, s7, -1386
                  sub          zero, s1, s10
                  sub          t6, s10, zero
                  slt          a3, gp, t4
                  slt          a7, a1, t3
                  slti         s9, s1, -537
                  slli         s1, a1, 26
                  add          ra, s3, s0
                  lui          s6, 546064
                  addi         s2, sp, -661
                  srli         s3, s2, 3
                  srli         s9, tp, 26
                  or           t6, sp, t2
                  srli         tp, s11, 12
                  slt          s9, t5, a0
                  ori          s2, s2, 137
                  addi         s0, a5, 2047
                  auipc        tp, 39650
                  sltu         s3, ra, a4
                  slti         s9, ra, -1942
                  nop
                  srli         s5, s6, 24
                  sltu         s11, s1, s6
                  nop
                  nop
                  sra          s2, s5, zero
                  slli         s2, s3, 20
                  nop
                  lui          a7, 325812
                  sltu         a4, t6, t5
                  sra          s0, a7, s11
                  slti         t3, s3, -497
                  auipc        a0, 316385
                  slli         a4, s3, 1
                  slti         s11, zero, -206
                  sra          a4, s8, t1
                  andi         ra, s4, -1080
                  srai         a7, t4, 11
                  add          a7, a6, a5
                  lui          t0, 257989
                  sltiu        ra, t5, -120
                  xori         a5, s6, -2011
                  slt          s3, t0, t2
                  nop
                  lui          s0, 343779
                  ori          a0, t6, 7
                  addi         a5, a4, -1534
                  slli         s10, zero, 10
                  slt          a6, t5, s9
                  slt          s0, a2, a0
                  auipc        ra, 145968
                  ori          gp, s3, -1895
                  sub          s5, s1, s10
                  and          a6, s7, s7
                  sltu         t0, s8, s7
                  srli         s1, t0, 15
                  sub          a1, t0, s5
                  sub          zero, t4, t1
                  or           s5, gp, sp
                  sub          zero, a7, a3
                  add          sp, a5, zero
                  xori         tp, t0, -541
                  and          s7, t2, ra
                  and          s1, s7, a7
                  srl          zero, s10, s9
                  slti         a4, t6, 625
                  andi         gp, gp, -1649
                  ori          t3, s6, 757
                  auipc        s8, 898949
                  xor          t0, a6, a1
                  sub          s0, s8, t0
                  slt          s1, s10, gp
                  nop
                  sub          t2, a0, s2
                  andi         s1, ra, 1407
                  lui          tp, 267703
                  xori         s8, s10, -351
                  sltu         a0, s6, a6
                  srl          gp, s1, t4
                  andi         a5, gp, 1540
                  addi         a3, s4, 957
                  slli         sp, gp, 31
                  add          a0, gp, t3
                  sltu         s0, s2, a4
                  add          a1, a0, a5
                  sltiu        a6, s10, 1273
                  srl          s6, ra, tp
                  slli         a0, a2, 23
                  or           s0, a0, a5
                  or           gp, ra, s8
                  xori         s4, s3, 2019
                  nop
                  sll          s3, zero, t1
                  ori          s11, s6, 727
                  srli         s6, tp, 23
                  and          s1, tp, t5
                  ori          a0, gp, 879
                  srli         a1, s10, 29
                  srai         sp, t6, 31
                  and          s6, t1, sp
                  addi         t6, a7, 1318
                  add          s10, t5, a7
                  sra          a0, zero, s3
                  auipc        t2, 482347
                  sub          s3, tp, t6
                  slt          s4, s1, s2
                  srai         a0, t0, 20
                  sub          t2, s3, t4
                  sra          a0, s10, a2
                  ori          a6, t4, -162
                  xori         a1, a1, -1470
                  sltiu        s2, t2, 1132
                  slli         s11, s9, 12
                  and          a1, t0, tp
                  xori         s4, a1, 1676
                  or           a4, t1, t2
                  ori          s9, t3, -458
                  sltiu        s3, s5, 1066
                  nop
                  sltu         s6, s5, s2
                  ori          tp, a3, -1574
                  xor          t0, s0, s1
                  and          s11, s11, s9
                  sltu         s5, a6, t1
                  xori         s4, s2, 1959
                  slli         s4, a0, 12
                  sltu         t2, s3, a3
                  andi         s9, a7, -2047
                  sub          s4, s8, s4
                  slt          s11, a0, ra
                  add          s8, sp, t1
                  xori         s9, s5, -544
                  sltiu        t0, t6, 1921
                  slli         s11, a6, 1
                  xori         s4, s1, 480
                  xori         s5, a1, 1400
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           a3, 0xffffffff
                  li           tp, 0xffffffff
                  li           a1, 0x47b90ac0
                  li           s1, 0x31eb16ca
                  li           a6, 0xffffffff
                  li           s7, 0xffffffff
                  li           a4, 0xffffffff
                  li           a7, 0xeddbf8df
                  li           s11, 0x80000000
                  nop
                  addi         s4, s1, 1356
                  nop
                  addi         a4, a4, -856
                  add          a7, a1, a6
                  auipc        a4, 932040
                  addi         a3, a3, 760
                  nop
                  addi         a4, a6, 1165
                  auipc        s1, 120047
                  nop
                  nop
                  auipc        a7, 58840
                  nop
                  auipc        s4, 724426
                  add          a1, s4, s1
                  auipc        a6, 493216
                  lui          a6, 995568
                  addi         a7, a6, -2038
                  nop
                  sub          s7, a7, s4
                  addi         a6, a3, 1425
                  addi         a1, a3, -93 #end riscv_int_numeric_corner_stream_10
                  slli         s5, zero, 26
                  slti         s4, s2, -1821
                  sub          t6, a7, tp
                  or           s0, ra, s1
                  add          t3, sp, s1
                  sltu         ra, zero, tp
                  lui          s8, 937698
                  andi         a1, s11, -449
                  slti         t6, s0, 856
                  andi         a4, gp, -1748
                  sub          a6, s2, s5
                  or           s3, t2, s3
                  auipc        sp, 573647
                  auipc        s8, 356721
                  ori          a3, s3, 973
                  nop
                  srai         s6, s7, 18
                  and          a0, s11, a0
                  auipc        gp, 897013
                  xor          s6, a2, s2
                  sltu         s5, s8, t6
                  sltiu        gp, s1, -1443
                  sltiu        s5, t2, -348
                  and          gp, a7, s9
                  or           zero, a2, s5
                  sltu         s4, s1, a6
                  sll          t3, t0, s0
                  sltu         s5, s2, a4
                  sub          sp, sp, s5
                  sltu         t3, a4, a6
                  srai         a7, s10, 24
                  add          a7, s7, t1
                  andi         tp, s0, 1325
                  xor          s10, a2, t0
                  slli         t0, t6, 10
                  slli         s9, t4, 14
                  slti         a7, zero, 299
                  or           s9, gp, s3
                  xor          a4, s9, s8
                  auipc        gp, 652430
                  sub          t3, s6, t3
                  sltiu        s9, tp, -1973
                  nop
                  andi         s7, s8, 486
                  sra          s10, s8, a7
                  andi         s2, s6, 759
                  sltiu        s7, a0, -1240
                  sltu         s9, a1, t4
                  andi         s2, s10, 954
                  srl          ra, s0, s5
                  sub          sp, t5, s11
                  auipc        ra, 323594
                  addi         ra, s11, -1018
                  srl          s3, a4, tp
                  srl          s10, t0, s5
                  srli         s11, s4, 14
                  srl          gp, a2, a7
                  xor          s4, tp, a5
                  slti         a1, a4, -532
                  srl          gp, s8, t4
                  auipc        zero, 955650
                  lui          s5, 159258
                  slti         s4, s7, 822
                  slt          s11, zero, a5
                  srli         s7, a5, 0
                  sll          s8, t1, s9
                  xor          s7, s6, t3
                  ori          a3, a2, 17
                  xori         t2, s3, 684
                  nop
                  srl          s11, s8, s7
                  srai         a6, t4, 2
                  srl          s8, a4, a4
                  sltiu        a5, a4, 593
                  sltiu        a1, t6, 1180
                  andi         tp, a2, 1800
                  xor          ra, a6, s2
                  addi         ra, a7, 980
                  sll          t3, s6, t2
                  and          t6, s3, ra
                  nop
                  ori          gp, s1, 1672
                  sll          s9, t5, s5
                  sltu         t6, s8, gp
                  xor          a1, s4, a1
                  ori          t6, s8, 878
                  sltu         s0, a7, tp
                  sll          a7, t5, t2
                  sltiu        s10, t4, 1997
                  slli         a3, a1, 8
                  sub          a7, zero, s6
                  sll          ra, s8, s7
                  add          a6, a5, a6
                  nop
                  slti         a5, s4, 1628
                  auipc        a7, 623918
                  srl          s9, s4, s5
                  srai         t6, s11, 29
                  xori         a3, a3, -305
                  add          s6, a5, s7
                  nop
                  xor          s0, t1, sp
                  ori          s4, zero, -847
                  srai         a2, s6, 20
                  lui          t2, 929313
                  auipc        s8, 1043595
                  srai         a1, a6, 21
                  sltu         s3, s6, t2
                  li           a7, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           a2, 0x0
                  li           t3, 0x62ed656c
                  li           a5, 0x401e1246
                  li           s1, 0xffffffff
                  li           s9, 0xffffffff
                  li           gp, 0x0
                  li           s2, 0xffffffff
                  li           a0, 0xffffffff
                  li           tp, 0x80000000
                  lui          a2, 920143
                  lui          gp, 579760
                  addi         s1, s2, -2010
                  add          s2, s1, s1
                  sub          a0, tp, a2
                  sub          s2, s2, gp
                  nop
                  addi         tp, gp, 107
                  sub          gp, s9, s2
                  nop
                  nop
                  nop
                  sub          a5, tp, a0
                  nop
                  lui          t3, 59995
                  auipc        s1, 37935
                  sub          a7, a5, s2
                  sub          gp, tp, a0
                  lui          gp, 918806
                  lui          a2, 354423
                  nop
                  sub          a0, a2, s1 #end riscv_int_numeric_corner_stream_16
                  sltu         s8, a3, s3
                  slt          s2, ra, gp
                  srai         s5, s2, 21
                  andi         s5, a0, 1794
                  auipc        s7, 684337
                  lui          a4, 753977
                  and          s7, s11, tp
                  slti         s7, s11, 268
                  ori          t3, ra, 1747
                  auipc        s2, 176487
                  sll          a2, t4, t1
                  xor          t6, t2, a6
                  or           t3, t0, s2
                  add          a3, t4, sp
                  and          s8, s10, ra
                  auipc        s1, 553897
                  slti         sp, a2, 219
                  sub          a6, s7, tp
                  sltiu        s3, t3, -1312
                  slti         t6, a3, -1168
                  lui          a3, 18529
                  lui          a1, 619962
                  or           s5, ra, s10
                  sltu         sp, a7, s5
                  slt          s5, t4, t2
                  xor          s4, a1, t0
                  sra          a7, t5, s10
                  srl          a6, s9, s8
                  auipc        a3, 445788
                  srai         s11, t2, 14
                  xor          t6, s7, gp
                  addi         s6, zero, -1828
                  sra          t3, s4, s0
                  auipc        s7, 537310
                  andi         a5, a5, 171
                  slt          t3, tp, s9
                  lui          sp, 221525
                  auipc        s10, 683309
                  slt          a7, s7, gp
                  sltu         s2, zero, s3
                  sll          tp, t6, s3
                  slti         a4, s8, -193
                  sra          sp, s9, s0
                  sltiu        s6, s2, 1788
                  sra          a0, a7, t2
                  srli         t2, s10, 19
                  lui          s2, 472789
                  slt          t6, t1, s11
                  or           a5, s11, tp
                  sll          gp, t3, a1
                  srl          s6, s10, t6
                  xori         t3, a3, -1748
                  ori          s5, zero, -844
                  xor          t6, t1, gp
                  slli         a4, s6, 26
                  slt          s4, t6, t0
                  xori         t0, s6, -1783
                  auipc        s9, 35437
                  sra          t0, a7, s1
                  or           a2, s3, s5
                  ori          a3, a3, -187
                  addi         s11, gp, -1388
                  andi         a1, s3, 943
                  or           a3, a4, s3
                  or           a0, s4, gp
                  andi         s9, t3, -129
                  slti         a7, gp, 174
                  srli         s9, a0, 21
                  ori          s10, t3, 379
                  xori         s9, a3, 625
                  auipc        a6, 269594
                  sra          s4, s5, s10
                  ori          t2, t1, 864
                  srli         s8, s0, 31
                  addi         gp, t2, 1385
                  srai         ra, a2, 28
                  sll          a4, s2, a3
                  slti         a1, s2, -865
                  sll          a5, a4, a1
                  sltu         s10, s6, t2
                  and          s5, t4, zero
                  add          sp, s8, a2
                  add          s11, a2, zero
                  sll          t6, ra, zero
                  add          t6, s8, s11
                  auipc        a6, 532167
                  xor          s5, s8, a5
                  andi         s2, s3, 770
                  addi         a4, t0, -1162
                  ori          s8, a0, -1960
                  srai         s11, gp, 4
                  sltu         s2, sp, ra
                  sub          s8, s4, s3
                  or           gp, s5, ra
                  srai         s0, s8, 22
                  andi         s10, t1, -1302
                  xor          s3, s9, s11
                  srl          t0, s8, a1
                  lui          s9, 915718
                  auipc        s5, 169558
                  srl          s4, t6, s5
                  xori         a2, a6, -659
                  srai         s9, t3, 0
                  srli         gp, zero, 5
                  add          s10, t4, s10
                  sltu         t0, t2, s5
                  nop
                  xor          a6, s1, s0
                  nop
                  srli         a5, ra, 4
                  sltiu        a2, s6, 2044
                  ori          s7, s0, 1070
                  and          s9, a4, t2
                  xori         ra, t5, -400
                  srli         a5, s5, 10
                  sll          a1, a6, a3
                  xor          a3, s6, gp
                  or           s7, s10, s3
                  sub          gp, s5, a3
                  srli         s3, a7, 0
                  or           a1, gp, s9
                  and          a7, sp, ra
                  or           a7, s8, s0
                  xori         ra, t4, -373
                  auipc        ra, 1009007
                  lui          s7, 799538
                  slt          a1, sp, t4
                  slt          s8, t3, tp
                  srl          a0, t0, a1
                  sra          ra, a2, s10
                  sra          s8, s0, s7
                  add          s1, a6, s7
                  and          a5, t1, s10
                  slli         a7, sp, 21
                  slt          t3, s4, t2
                  sub          a4, s7, s7
                  sltiu        a2, a6, 1493
                  srli         tp, zero, 26
                  xori         zero, t6, 93
                  ori          a1, ra, -334
                  sltiu        a3, s3, 445
                  nop
                  lui          s1, 908802
                  srai         s5, tp, 6
                  slt          ra, a4, t6
                  andi         a7, s10, -929
                  xori         s7, s4, -746
                  srl          t2, a4, s6
                  sra          a1, s2, s11
                  sra          t6, t2, t2
                  sltu         s10, a5, s5
                  add          t2, s4, t2
                  slt          s0, s8, ra
                  andi         s1, zero, -853
                  addi         a5, a3, 712
                  slt          sp, a2, s4
                  srai         s2, a1, 20
                  srl          a6, a2, s6
                  sll          a1, t0, ra
                  add          t6, s5, s8
                  sltu         s2, t1, s3
                  sub          t3, s10, a3
                  srli         s5, t3, 0
                  sra          ra, a0, a6
                  and          s1, s6, s0
                  and          t2, a3, a2
                  slli         s2, a7, 4
                  andi         s9, a5, 1121
                  srl          s11, s4, ra
                  sltiu        a6, s1, 1293
                  sll          s6, a3, t5
                  sll          t3, s8, t6
                  slli         a1, s6, 0
                  or           s0, t1, a1
                  and          s8, s3, a6
                  sub          a1, s9, s6
                  auipc        a2, 788049
                  ori          s11, s3, 1651
                  slt          s3, t0, s10
                  add          ra, t4, s0
                  sub          s4, t4, a3
                  or           gp, s5, s8
                  and          s8, ra, s8
                  add          s3, a5, a2
                  sltu         s10, t1, a5
                  xori         s0, t2, 251
                  xor          a5, ra, s6
                  ori          a1, zero, -1789
                  srli         a5, a4, 9
                  andi         zero, a2, 1297
                  addi         s10, a3, -357
                  andi         a4, a3, 788
                  xori         gp, s8, 66
                  slti         s1, a5, -1038
                  slli         a5, t5, 7
                  ori          a1, s10, 993
                  slti         s0, s11, 910
                  srli         s4, a4, 2
                  nop
                  lui          t0, 993082
                  srli         a0, t0, 22
                  sltiu        s7, a3, -1162
                  sub          s2, a1, a5
                  sll          s3, t1, t0
                  slti         s7, a7, -2032
                  addi         s2, a4, -1233
                  and          s8, s6, s4
                  or           a6, t5, s10
                  lui          t2, 687634
                  andi         s2, a0, -419
                  auipc        s6, 19472
                  sub          t2, tp, gp
                  lui          t0, 693345
                  auipc        a1, 75095
                  srli         a5, a0, 30
                  nop
                  sltu         a5, t4, t6
                  or           s5, a2, a7
                  lui          a2, 449555
                  lui          s8, 994079
                  sltu         s9, s0, s7
                  andi         s4, a0, 157
                  ori          tp, a2, 1180
                  srl          ra, t3, t3
                  or           ra, a0, t2
                  xor          s10, s4, a0
                  add          s1, s10, a1
                  sub          ra, s0, t0
                  xori         a0, zero, 1805
                  or           a5, t0, a0
                  slti         sp, ra, 133
                  andi         s0, sp, -390
                  srl          s5, s0, s0
                  addi         s0, a3, 1840
                  sltu         ra, s4, t4
                  slli         s7, s3, 5
                  srl          a7, t6, gp
                  nop
                  nop
                  andi         sp, t5, 1196
                  nop
                  xor          s9, s8, t1
                  srl          s6, s11, t6
                  or           s0, t1, ra
                  srai         tp, s2, 31
                  xori         s0, t6, -658
                  ori          s6, a2, -2029
                  sll          s8, t0, gp
                  nop
                  srl          s6, s11, s3
                  andi         sp, s0, 63
                  auipc        t3, 733746
                  add          t0, a0, a4
                  andi         gp, s7, -564
                  slti         t0, a2, -607
                  andi         t6, s8, 1200
                  slli         s8, s1, 26
                  sra          t3, s1, a4
                  slli         t3, t0, 26
                  andi         a4, s10, 1460
                  xor          s9, a5, t2
                  lui          t2, 454656
                  nop
                  or           s10, zero, tp
                  sll          t6, s3, t3
                  nop
                  and          s7, s3, s0
                  sltu         s0, a0, s2
                  sll          t6, t0, a0
                  or           s9, a2, s1
                  andi         a2, t5, 1778
                  srl          a5, ra, t1
                  auipc        a6, 684637
                  srl          s0, s10, a5
                  slli         a4, s4, 12
                  andi         sp, a2, 603
                  slli         t2, s2, 21
                  sub          t2, a2, s11
                  and          t3, a7, s11
                  add          s4, a7, a0
                  srli         t3, a1, 13
                  sub          s0, s4, t4
                  or           s2, tp, s8
                  add          s5, gp, t0
                  srli         a6, a4, 26
                  sra          s0, s11, s6
                  sll          gp, gp, s9
                  srai         s7, zero, 20
                  auipc        s8, 802939
                  srli         t2, s8, 6
                  slli         s10, t6, 28
                  sltu         tp, a6, s11
                  ori          sp, gp, 890
                  slti         a4, s1, 1258
                  sltiu        s7, s6, 1492
                  xori         s0, s11, 1285
                  addi         s2, s10, -992
                  sltu         ra, s10, t0
                  xor          sp, s3, a3
                  andi         t3, t4, 1639
                  slli         t2, zero, 31
                  andi         t3, s3, -1529
                  slti         a7, sp, -290
                  auipc        s11, 628332
                  srli         t6, t6, 16
                  or           a7, sp, a0
                  slli         a6, s5, 24
                  sub          a4, t2, s9
                  andi         a6, a1, 26
                  add          s7, s2, a2
                  sub          zero, a5, ra
                  ori          a0, s5, -750
                  lui          a0, 756365
                  lui          s0, 386741
                  sub          s2, s11, a6
                  srai         a1, s1, 5
                  sltu         a4, s10, s5
                  xor          s1, a5, t6
                  and          zero, s7, s5
                  add          a1, s6, s7
                  add          gp, zero, s5
                  slti         s1, tp, -741
                  srli         a3, s8, 4
                  ori          t2, s8, -1641
                  ori          a4, s11, 268
                  slli         a7, t1, 2
                  andi         s7, s10, 430
                  xor          s11, a7, a2
                  and          a4, t5, s1
                  ori          zero, s0, -34
                  lui          t2, 391075
                  or           s3, s7, t6
                  xori         a4, a2, -368
                  xor          s2, a6, a1
                  srl          s2, s2, a6
                  addi         s5, s4, 1111
                  auipc        s6, 36590
                  srli         sp, s1, 9
                  nop
                  or           a1, a0, t0
                  auipc        a3, 87284
                  add          t6, t0, s9
                  or           a7, a0, s1
                  xor          s2, a7, t1
                  lui          s2, 686821
                  sub          s4, a1, a6
                  srli         s0, a1, 2
                  andi         tp, gp, -680
                  srli         ra, t4, 9
                  addi         ra, s11, -266
                  auipc        s4, 480636
                  srl          tp, t4, tp
                  and          s5, s8, a4
                  andi         t3, s11, -1389
                  auipc        a1, 130901
                  ori          a4, t1, -194
                  xor          s2, sp, s9
                  addi         a0, t6, -1252
                  slt          a2, a1, t0
                  ori          tp, t0, 1557
                  xori         zero, s6, -1799
                  sltu         t6, a6, a3
                  lui          s9, 537160
                  slti         s5, a6, -752
                  auipc        a1, 541079
                  auipc        t0, 826139
                  sll          t3, t2, t5
                  addi         t6, t2, -1593
                  andi         s6, t4, -1774
                  xori         a5, t2, -518
                  and          s4, s0, s7
                  ori          s1, t0, -90
                  ori          tp, ra, 937
                  sll          s11, zero, a3
                  or           ra, tp, sp
                  addi         t0, a4, -160
                  nop
                  xori         s5, a6, 730
                  andi         a3, s8, 393
                  and          gp, s4, a5
                  sra          gp, t0, a7
                  xor          s6, zero, s3
                  sub          s1, a1, s0
                  nop
                  sub          t2, tp, a6
                  lui          s11, 244732
                  addi         ra, s10, -752
                  xor          s6, a3, s3
                  slli         s9, s0, 29
                  srai         s10, s7, 21
                  sll          s11, tp, gp
                  add          t3, t0, s10
                  li           s4, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           s9, 0x9d36d7b5
                  li           a4, 0x813deafd
                  li           s11, 0x80000000
                  li           s7, 0x80000000
                  li           s1, 0x80000000
                  li           a5, 0x0
                  li           a7, 0x80000000
                  li           ra, 0x0
                  li           s5, 0xffffffff
                  nop
                  lui          s5, 703264
                  add          ra, a7, s9
                  nop
                  add          s9, a4, s11
                  sub          s11, s5, a4
                  sub          s1, s7, s7
                  addi         s1, ra, -585
                  nop
                  sub          ra, a5, a7
                  add          s5, a7, a7
                  addi         a5, s9, 475
                  sub          s9, s5, s11
                  add          a5, s7, s1
                  auipc        a4, 134499
                  lui          s4, 772274
                  addi         s9, s4, 405
                  sub          s5, s1, s5
                  nop
                  sub          ra, a7, a4
                  add          s5, a7, s9
                  nop
                  add          s11, s7, ra
                  addi         s7, s9, -864
                  auipc        ra, 439816 #end riscv_int_numeric_corner_stream_5
                  sltu         a6, a7, sp
                  sra          t3, t2, s1
                  xori         a2, t5, 664
                  srai         s6, a1, 9
                  sra          a5, a4, s4
                  sub          tp, a7, s7
                  sltiu        s4, tp, 1625
                  lui          a4, 226658
                  or           s2, t1, s8
                  slt          s3, s3, t6
                  sll          a3, a3, a4
                  andi         a3, s2, 92
                  srai         s6, gp, 23
                  sltiu        a7, s10, 1463
                  slt          s5, s9, tp
                  slli         s9, ra, 25
                  xori         s7, a7, -224
                  srl          s5, a4, a5
                  addi         s3, zero, 1246
                  and          zero, s8, ra
                  slti         t2, a5, 1317
                  srai         s4, s5, 6
                  sub          s6, t3, a5
                  slti         s1, s11, 481
                  srl          tp, s7, s3
                  or           ra, s11, zero
                  srl          ra, t0, s6
                  xori         tp, sp, -1884
                  sra          s6, a2, s1
                  sll          t0, a4, t6
                  addi         a7, s2, 458
                  addi         s5, a1, -617
                  nop
                  addi         tp, a4, 1837
                  auipc        s4, 433611
                  or           s11, a2, t5
                  sub          sp, t1, t6
                  srli         s2, s0, 23
                  sll          tp, s7, s8
                  sltiu        a5, t3, 816
                  ori          a1, sp, 1491
                  srai         sp, tp, 10
                  and          s9, sp, s4
                  xori         t2, a3, 261
                  auipc        s1, 931223
                  srli         a7, s2, 6
                  sltiu        s1, s11, 361
                  sltiu        s4, zero, -1433
                  srai         s8, s0, 4
                  sltu         a3, s7, s4
                  sltu         a5, sp, a4
                  slt          gp, t2, s8
                  xori         a5, s0, 2016
                  srli         s10, sp, 3
                  slti         s0, t3, -1286
                  lui          a5, 358321
                  lui          t6, 1035475
                  slti         tp, gp, -360
                  sltu         a0, tp, s3
                  srl          a6, t2, s7
                  andi         s6, s9, 2038
                  lui          a1, 603864
                  srl          t6, t1, tp
                  xori         a1, s6, 342
                  sltiu        a3, t1, -3
                  add          a4, zero, s11
                  addi         s7, t2, 795
                  andi         a1, s3, 190
                  sub          s10, s2, t3
                  slli         zero, a7, 5
                  xor          s9, gp, t5
                  lui          a6, 380834
                  sra          s2, gp, t1
                  lui          s3, 953058
                  sll          a3, t4, s3
                  srai         a3, s4, 10
                  ori          s11, s9, 11
                  ori          ra, sp, -1951
                  srli         s3, s4, 13
                  nop
                  slti         t3, s8, 266
                  ori          t3, a4, -796
                  srli         s11, t1, 27
                  and          s7, s1, t1
                  sll          s0, t0, s10
                  nop
                  auipc        t0, 1026429
                  sra          s7, a3, s0
                  sltiu        a5, a4, 1159
                  xori         t6, a0, -219
                  nop
                  andi         ra, s9, -343
                  addi         s8, t0, 108
                  slti         a2, s3, -363
                  slli         a0, t0, 3
                  srl          s10, t3, s10
                  xori         a6, ra, 1361
                  sra          a7, a3, t3
                  andi         s7, t1, 1388
                  slli         s6, s7, 17
                  and          s11, a5, s11
                  sra          t2, s1, tp
                  slti         t0, s3, -1321
                  slti         a5, s8, 770
                  sub          a1, s4, t4
                  srai         s1, t5, 17
                  lui          s6, 190684
                  lui          s8, 44120
                  xor          t0, t0, s1
                  sltu         s1, t1, a6
                  add          a4, t3, s11
                  xori         s6, t0, -1500
                  add          s4, s9, t0
                  nop
                  lui          t3, 467660
                  add          a7, t4, zero
                  slti         a1, zero, -708
                  srai         s4, s6, 21
                  sll          s6, sp, zero
                  slt          gp, t6, a1
                  srli         gp, a2, 11
                  sltu         a4, a3, t0
                  sll          a3, a0, a3
                  xori         t3, a3, -1118
                  ori          s2, t2, 1019
                  xori         a1, s8, -1122
                  sra          s11, s7, tp
                  or           t6, a7, s2
                  xor          s7, t5, s2
                  sra          a6, t5, gp
                  add          s6, zero, t5
                  sub          s6, s1, t0
                  srai         a5, tp, 8
                  addi         s11, s7, -1431
                  slt          a2, s0, s5
                  sltiu        a0, sp, -963
                  xori         a0, s5, -401
                  srli         s8, s6, 30
                  srli         a3, s8, 5
                  srli         gp, t2, 11
                  slti         a7, t0, -732
                  sra          s1, s7, sp
                  slli         a1, tp, 10
                  sra          s1, a5, t3
                  ori          a2, t6, -43
                  and          s5, s4, s3
                  andi         s9, a3, 821
                  srai         s8, a7, 26
                  add          zero, s1, t4
                  slti         a3, t5, -88
                  slli         a7, a4, 7
                  add          s8, t3, a2
                  or           t6, a7, a2
                  sltu         zero, tp, t4
                  slli         a4, s6, 29
                  slt          a7, tp, sp
                  srai         a0, ra, 6
                  or           s7, a3, s1
                  addi         s1, s9, -25
                  srl          zero, sp, sp
                  sltu         s7, a4, s7
                  sltiu        a4, ra, 1304
                  srl          t0, s9, ra
                  or           t6, a3, gp
                  sltiu        a7, a5, 1213
                  slti         a0, s6, -52
                  slt          gp, s10, s2
                  slli         s11, sp, 17
                  andi         s7, a0, -1044
                  srl          sp, t6, t1
                  sub          a4, s3, zero
                  sub          a0, s2, a4
                  nop
                  srai         a2, s5, 21
                  srai         s11, t3, 8
                  xor          s11, s9, gp
                  xor          t6, a6, a3
                  xor          tp, a2, s11
                  add          s4, a7, t3
                  add          s4, s6, a2
                  slti         a7, s0, 1739
                  nop
                  and          a6, s5, zero
                  add          t2, t5, s7
                  nop
                  sll          s3, s3, t5
                  and          gp, s7, s10
                  srli         t0, a5, 21
                  or           t0, a5, t6
                  lui          tp, 581013
                  auipc        t2, 1030091
                  srli         a6, s11, 30
                  ori          s7, t3, 2000
                  slti         s4, s10, 980
                  xori         t6, zero, 76
                  sub          gp, s4, s5
                  and          s7, ra, gp
                  sltu         zero, s11, s1
                  srai         t0, s10, 7
                  srli         s3, s4, 6
                  xori         sp, ra, 9
                  and          zero, s9, gp
                  addi         a4, s7, 1802
                  addi         a6, t6, -460
                  sra          t0, a2, s6
                  xor          s7, t3, s11
                  srli         s10, tp, 15
                  slt          s1, zero, a5
                  and          zero, sp, a5
                  addi         s6, a4, -205
                  slti         a4, s5, 983
                  andi         gp, t4, 1602
                  or           gp, t2, s7
                  sltiu        t6, s5, 761
                  or           s0, gp, t1
                  srl          tp, s2, a0
                  sll          s11, a5, s2
                  sra          t3, t0, s10
                  sll          a0, s7, t3
                  xor          t0, ra, a6
                  srai         s11, t1, 25
                  auipc        a0, 840614
                  sltu         a1, s3, t2
                  slti         a2, t6, 1732
                  srai         s1, t0, 21
                  sltiu        s11, a3, 491
                  slti         s0, t3, 58
                  slli         a5, t0, 13
                  auipc        zero, 988131
                  xor          s8, a7, s9
                  sltiu        a6, s1, -927
                  addi         s6, tp, -1277
                  slt          a4, gp, s11
                  add          s3, a1, s9
                  sll          tp, s7, s5
                  xor          s8, s11, s6
                  slt          s9, t3, s8
                  srai         a1, t3, 16
                  addi         t2, s2, -784
                  add          a4, zero, s3
                  srai         a7, a7, 23
                  xor          s11, zero, a2
                  sltu         s5, s0, a2
                  xor          s8, s4, a1
                  sub          a2, ra, zero
                  xor          s10, s7, t4
                  srai         sp, t6, 2
                  slli         s1, a3, 28
                  ori          a3, s3, 1520
                  sltiu        tp, t2, -232
                  addi         a2, s11, 1827
                  addi         s5, s4, 484
                  sll          s7, tp, t1
                  lui          sp, 601962
                  sra          a1, sp, s3
                  sltiu        a7, s5, -1616
                  sra          t0, a7, a6
                  addi         a0, s10, 863
                  and          s11, t4, s5
                  sltiu        s6, s2, 1026
                  sltu         s1, a1, s11
                  auipc        s6, 127463
                  addi         a1, s9, -2013
                  xor          a6, s6, t1
                  auipc        a2, 116059
                  add          s1, a5, a3
                  sll          sp, a7, t5
                  or           gp, s9, ra
                  or           t0, a2, s2
                  add          gp, gp, a6
                  srai         a2, tp, 23
                  sra          s2, s9, t6
                  srli         s4, a7, 28
                  and          zero, s10, s2
                  sltu         t0, a3, t1
                  sra          a0, a1, sp
                  addi         ra, a0, -1634
                  slli         tp, s8, 22
                  auipc        t3, 824211
                  andi         s9, t0, -1150
                  slti         a4, s7, 1188
                  srl          t2, s2, a6
                  xor          a4, s6, s8
                  ori          a3, a0, 1485
                  add          t2, t5, s6
                  srli         s5, s8, 31
                  srli         s0, zero, 2
                  nop
                  slti         s10, t3, -575
                  sltu         a7, t0, s5
                  and          s11, a0, s5
                  auipc        s8, 424923
                  xor          a2, s8, a5
                  ori          a3, a0, -1139
                  slli         zero, s2, 17
                  ori          a6, sp, 213
                  auipc        gp, 865981
                  sra          tp, sp, s11
                  and          ra, s9, a7
                  srl          s0, t2, a4
                  andi         tp, t6, -1669
                  sltiu        s10, t5, -188
                  srli         t2, a6, 26
                  lui          s7, 242779
                  slt          sp, s11, gp
                  slti         s6, s6, 1428
                  and          a1, t5, s10
                  or           sp, a6, t1
                  slti         s10, a2, -97
                  sltu         s8, t4, s6
                  sltu         a4, a4, s2
                  slt          a6, a3, t3
                  sra          a0, a5, t3
                  sltu         a3, a7, s5
                  srai         s8, s11, 2
                  add          s6, t5, a7
                  xori         s10, tp, 1589
                  xor          s3, t1, t5
                  slti         s10, s1, 364
                  andi         a3, s5, 440
                  addi         s9, sp, 1391
                  srl          a7, a5, zero
                  sltiu        s1, s4, 624
                  ori          a2, t4, -337
                  slt          a5, s3, s0
                  auipc        s7, 160690
                  or           a6, t1, a5
                  and          s4, t4, t4
                  auipc        t6, 300242
                  sra          t6, t5, t5
                  sll          a3, s4, tp
                  slli         zero, t2, 1
                  srli         gp, s2, 20
                  slt          t0, t1, t3
                  addi         s3, s8, -1885
                  slt          s0, t5, t3
                  srl          tp, s0, t3
                  sll          s7, sp, s0
                  or           s10, t5, t5
                  slt          s4, s0, s11
                  xor          s10, a3, t4
                  slti         a7, t5, 1050
                  sra          a4, t1, sp
                  andi         t0, s10, 709
                  or           s10, s11, t2
                  sltiu        a6, s11, -1787
                  xor          t2, t1, a4
                  srli         t2, a0, 28
                  sltu         gp, t4, s1
                  and          s7, s3, t3
                  srl          zero, t5, s2
                  sll          a1, a5, s10
                  srli         t6, s7, 23
                  sll          s9, ra, s11
                  sll          t2, t0, s8
                  xor          ra, t3, s11
                  srai         t6, s3, 10
                  slti         s10, t6, 103
                  srli         s9, s5, 17
                  xori         ra, gp, 1742
                  srl          ra, a5, t0
                  ori          s11, a2, 2020
                  slti         t6, gp, 1191
                  slt          a2, s4, t4
                  sub          s1, a1, s2
                  nop
                  nop
                  nop
                  sltiu        gp, t1, 291
                  srai         s7, t0, 28
                  sub          s0, s3, t5
                  or           a0, a2, gp
                  slt          s3, s9, s8
                  slli         tp, a3, 1
                  auipc        t0, 671360
                  slti         s5, s11, 31
                  sra          s0, a0, s6
                  srli         s7, zero, 23
                  sll          s9, s1, t4
                  ori          s6, a6, -1119
                  addi         zero, s4, 879
                  xor          tp, t1, s11
                  sll          s7, s6, ra
                  ori          s1, a0, -13
                  nop
                  addi         t6, ra, -1539
                  ori          a6, t1, 675
                  sltiu        s3, zero, -1523
                  srli         a3, s3, 1
                  slt          ra, zero, s6
                  lui          s6, 13458
                  ori          t2, s11, -1079
                  srli         s11, s4, 30
                  and          t2, t5, s1
                  lui          t3, 679423
                  slli         a5, a0, 9
                  sltu         s8, s0, t3
                  andi         a4, a3, 1788
                  andi         ra, t3, 51
                  sra          s8, s1, t2
                  sltiu        t0, s6, 538
                  slli         ra, a5, 2
                  nop
                  sll          gp, a0, a7
                  or           s2, gp, s1
                  and          a3, s9, a7
                  lui          a2, 303837
                  srai         a2, s8, 6
                  and          ra, a6, t4
                  auipc        tp, 996862
                  and          s3, s11, a5
                  sll          a2, s6, s0
                  or           s1, zero, s10
                  sltiu        s4, s10, 649
                  sra          a1, a5, t3
                  lui          s6, 646634
                  lui          s9, 203309
                  srl          s5, t4, s2
                  slli         a6, a7, 30
                  xori         s11, a4, 1368
                  sll          s10, s10, s3
                  slti         s3, t1, 1866
                  add          a7, t6, gp
                  srai         t3, s9, 15
                  xori         s0, a1, -893
                  add          a3, s11, a7
                  lui          t6, 928439
                  xor          t6, s2, a5
                  slli         a7, t6, 9
                  srl          s11, t0, a3
                  srli         t6, a2, 18
                  sltiu        s8, s8, 948
                  sll          s1, t1, a0
                  xor          s7, sp, s5
                  auipc        s1, 677836
                  xor          s6, sp, a5
                  srai         s7, a7, 5
                  lui          s6, 342748
                  sltiu        s0, sp, 163
                  add          s11, s0, a5
                  slti         s0, s2, 1857
                  addi         s1, a3, 917
                  slt          gp, s4, s11
                  srai         s1, s1, 30
                  srli         s6, t4, 8
                  slli         s3, zero, 27
                  nop
                  and          ra, s6, a2
                  sltiu        s9, a0, -979
                  slti         tp, s7, 660
                  sub          t2, tp, a6
                  slt          sp, tp, s0
                  xor          a1, t1, s6
                  sub          s8, a2, s9
                  auipc        a5, 341945
                  slt          s9, sp, tp
                  srai         a1, a0, 13
                  xori         s9, s4, 950
                  nop
                  xor          t6, s5, s4
                  sub          a2, t3, zero
                  nop
                  ori          a2, a6, 909
                  slti         s0, s3, -1960
                  xori         a2, a2, 789
                  sll          a2, zero, s0
                  srl          t6, gp, a0
                  lui          s11, 418550
                  lui          a1, 870592
                  sub          s3, s6, t2
                  slti         s3, t1, -1552
                  sltiu        s1, s0, -869
                  srl          a2, ra, s5
                  sll          s0, t1, a5
                  add          a4, tp, t4
                  xori         s6, a1, -1235
                  srli         s1, t0, 20
                  nop
                  sub          s1, s11, s5
                  srl          s7, s3, a3
                  srl          a4, a6, a2
                  xori         zero, tp, 966
                  srai         s10, ra, 0
                  add          s11, t1, s10
                  srl          a3, s9, a5
                  sltiu        t2, a1, 499
                  and          s10, a2, s1
                  and          a1, s4, s7
                  sra          t6, a7, gp
                  andi         s1, s8, -1900
                  sltu         s1, s3, s6
                  sub          a4, a1, s8
                  srl          a6, s0, s7
                  sll          s10, a2, sp
                  slt          a5, s9, t6
                  slti         a0, s7, -1107
                  sltu         a1, a3, s7
                  sltu         sp, t5, s8
                  xori         a2, s2, -444
                  addi         s10, s5, 659
                  sub          tp, s5, a0
                  andi         s10, a0, -724
                  addi         s4, a7, 869
                  sll          s8, gp, s8
                  nop
                  addi         s0, t3, 238
                  srai         a7, t5, 31
                  slt          a6, tp, a6
                  srl          a7, gp, s6
                  auipc        t6, 457416
                  sltu         gp, a4, t6
                  xor          s7, a3, t2
                  andi         a2, s7, -1101
                  xor          a1, s0, a5
                  lui          s4, 733422
                  slli         sp, t2, 18
                  and          a3, s1, gp
                  srai         tp, s1, 5
                  ori          s4, s5, 1732
                  add          s11, ra, s9
                  slt          a1, t1, a2
                  sra          a1, t6, s0
                  sltu         a7, s5, a5
                  sub          s3, gp, a0
                  slti         t2, t6, 1296
                  addi         s6, a5, -347
                  addi         s4, s8, -1580
                  lui          s4, 826355
                  auipc        s8, 451392
                  srl          s5, t0, s7
                  sll          a6, t6, a6
                  and          s1, a7, s5
                  xori         a7, gp, -1510
                  sltu         t3, a0, t6
                  sra          t6, a0, s9
                  slli         ra, ra, 0
                  sltu         zero, a5, a7
                  and          a4, t2, s1
                  sltu         t6, s7, a1
                  nop
                  xori         a5, gp, 1527
                  srai         t2, s3, 11
                  sra          tp, a3, s0
                  auipc        s9, 882403
                  and          s0, s1, ra
                  xori         s6, s4, -356
                  srai         s11, t2, 0
                  slli         s4, a2, 18
                  slti         ra, a1, -717
                  sll          s3, s5, a2
                  ori          s0, a4, -983
                  or           s4, s9, s2
                  slli         s3, t0, 22
                  and          t6, a2, s7
                  and          ra, s6, gp
                  sll          s11, a1, s5
                  sltu         t6, t4, s6
                  and          a4, s6, t6
                  srl          zero, t4, t6
                  auipc        s3, 472064
                  xor          s2, zero, a4
                  xor          a3, s8, sp
                  srli         sp, s11, 15
                  sll          t0, a0, s8
                  auipc        s9, 268083
                  sub          t3, gp, s7
                  slti         s9, a4, 409
                  slt          a0, s7, tp
                  sltu         s0, gp, zero
                  lui          a5, 1023776
                  sltiu        s4, a2, -831
                  srl          s10, tp, t1
                  srli         s11, gp, 31
                  addi         tp, a3, -796
                  sltiu        s11, t4, -1037
                  xori         sp, a4, -786
                  and          s10, s7, s4
                  sltu         s8, t2, s5
                  slti         a2, tp, 102
                  lui          t0, 142024
                  srli         a4, a7, 31
                  srli         t3, s5, 28
                  slli         t2, s3, 21
                  slt          s10, s8, t3
                  or           s10, a4, s7
                  nop
                  and          s0, t3, t0
                  lui          sp, 189850
                  sub          t6, s3, t1
                  andi         gp, a7, -1322
                  sra          s7, t5, s9
                  slt          t0, a5, s5
                  srl          s9, s8, s3
                  lui          s8, 1015610
                  or           a4, a1, s8
                  xori         sp, s11, 1640
                  sltu         a6, gp, tp
                  sll          s3, s9, a3
                  slli         a5, s4, 24
                  srli         zero, t6, 5
                  lui          t0, 351316
                  xor          s8, t4, t3
                  srli         t6, a0, 3
                  xor          zero, ra, s10
                  sub          a6, s11, s11
                  slt          s4, zero, t2
                  auipc        zero, 69844
                  nop
                  slti         s8, t1, -147
                  sltiu        zero, a2, 644
                  srai         tp, a6, 22
                  nop
                  slli         s3, s7, 2
                  sltu         s0, s5, s0
                  auipc        zero, 418173
                  andi         s7, t6, -1657
                  sra          zero, a6, gp
                  andi         a3, a0, -1873
                  auipc        a7, 942858
                  slli         s7, t5, 4
                  slt          s9, t4, a2
                  add          a2, gp, t4
                  ori          s10, s4, -932
                  or           sp, a4, a6
                  ori          s1, t2, 43
                  sltu         a0, s8, s0
                  srl          a3, a4, t0
                  or           a4, t4, s0
                  sub          a0, a4, sp
                  slli         t3, s11, 4
                  sltu         s6, t5, t5
                  sll          t0, s8, tp
                  slt          a5, s3, t5
                  srli         t3, s1, 6
                  srli         s3, s7, 30
                  slt          s6, s8, s4
                  sub          s11, a6, s7
                  sll          a5, zero, tp
                  sll          a1, t1, t2
                  addi         s11, s10, -1459
                  nop
                  slli         s11, a7, 14
                  sra          a7, s10, t0
                  srli         s4, s5, 24
                  add          gp, a3, s10
                  add          s1, t3, s3
                  lui          s3, 877147
                  or           s4, t2, a7
                  srli         s8, s6, 20
                  add          a4, t3, a2
                  srai         s8, s0, 21
                  addi         s11, zero, -61
                  srai         s10, a1, 28
                  sub          s7, s2, a5
                  xori         s8, s5, -239
                  ori          s3, t0, -470
                  slli         s11, t4, 8
                  sltiu        s6, s3, -1390
                  slt          s2, a4, s8
                  ori          zero, gp, -1707
                  sltiu        a0, s4, -1105
                  srai         zero, s6, 20
                  sra          a7, s8, a3
                  slt          s8, t2, s5
                  auipc        s10, 874523
                  sra          t0, t1, zero
                  and          a7, t4, gp
                  ori          a1, t4, 875
                  nop
                  sub          a3, a2, s5
                  slt          a4, s0, t2
                  addi         a0, s4, 900
                  lui          sp, 943068
                  ori          s9, a7, -1330
                  xor          s2, s8, t4
                  auipc        s4, 956299
                  srli         s5, t1, 11
                  or           a4, a4, a5
                  srli         s11, s8, 23
                  lui          s5, 383156
                  sltu         a4, a5, a5
                  lui          a1, 445527
                  srai         s6, s7, 13
                  sra          a6, a3, gp
                  or           s9, sp, a1
                  sltu         a0, a4, a1
                  andi         s6, a0, 1144
                  auipc        zero, 765583
                  lui          s11, 480380
                  srl          a0, a6, t1
                  sltiu        t6, s9, 615
                  sltu         t6, a1, tp
                  ori          sp, s5, 2030
                  sltiu        a3, zero, 346
                  sltiu        tp, a1, 1432
                  srl          s2, t5, s11
                  xori         s7, gp, -1275
                  and          t0, t3, s4
                  addi         gp, s9, -200
                  auipc        s2, 442997
                  add          s11, a3, t0
                  andi         t2, tp, 1772
                  slt          s4, gp, a7
                  sll          a2, s4, t4
                  sra          s2, t1, tp
                  sub          t2, sp, a7
                  srli         s9, s3, 28
                  srli         sp, t4, 16
                  sltiu        gp, t3, 1711
                  srli         a0, s11, 15
                  lui          a1, 887376
                  ori          s11, a0, 1637
                  or           a7, s7, t1
                  auipc        s7, 826266
                  slli         s5, s7, 19
                  xor          a5, s4, ra
                  ori          s6, s9, -960
                  sra          s3, s6, sp
                  sra          t3, gp, s7
                  add          s5, a6, s1
                  nop
                  add          s8, t1, a5
                  or           s3, a0, t6
                  add          s9, t4, t0
                  auipc        a6, 722499
                  sub          a3, a5, t6
                  slli         s3, s5, 19
                  srl          s8, s11, t4
                  xori         s4, a5, -2037
                  auipc        s1, 267520
                  and          t3, a6, t5
                  sra          zero, t0, a0
                  slt          s4, s3, t3
                  srl          s0, a7, a7
                  slli         s9, t5, 26
                  xori         s8, s0, -62
                  srai         a6, s8, 5
                  ori          a5, t5, -1127
                  srli         s6, t6, 22
                  srai         s3, s3, 17
                  xor          s8, s0, a5
                  slt          a0, s1, tp
                  slt          t6, a7, zero
                  sub          a7, s3, a6
                  srli         s2, sp, 24
                  srai         s3, a7, 7
                  sll          s11, a7, a1
                  and          s7, a3, s9
                  addi         tp, s0, -354
                  and          s6, s11, s1
                  sll          ra, s11, s7
                  or           a2, s7, t4
                  ori          a2, a1, -349
                  srli         t6, zero, 15
                  slli         a2, sp, 7
                  srl          a1, gp, a1
                  auipc        a1, 29813
                  or           a7, s7, s6
                  srli         s6, gp, 13
                  sll          s9, s9, t5
                  sra          t0, a3, a4
                  sltiu        sp, ra, 1219
                  xor          t6, s2, t0
                  srl          a4, ra, t3
                  sll          sp, a3, a0
                  sll          s9, t4, s7
                  and          a4, s3, s2
                  nop
                  ori          s7, s10, 1031
                  addi         a6, a2, -917
                  nop
                  nop
                  srl          s2, s6, s3
                  sub          a7, a2, t1
                  lui          t6, 714303
                  srai         zero, s6, 24
                  addi         tp, s2, 818
                  and          a1, t2, a6
                  sub          s6, s7, t6
                  ori          tp, s6, -1324
                  xor          ra, s1, t4
                  or           s1, t2, ra
                  sll          t3, a5, t0
                  xori         t2, a7, -739
                  slti         a5, a1, 641
                  srli         s3, a4, 21
                  srli         s5, s7, 12
                  lui          a0, 20939
                  andi         s3, t3, -596
                  sltu         gp, tp, a7
                  srai         s7, t5, 19
                  or           s3, t4, a0
                  srli         s8, s6, 27
                  ori          a1, t6, 1647
                  add          a7, t6, a2
                  slti         s4, tp, 760
                  sub          a2, s3, a1
                  sltiu        s8, gp, -869
                  slli         s4, a3, 28
                  andi         s4, a6, 1217
                  and          ra, s11, t2
                  ori          s8, s2, 1310
                  xori         a7, a5, -1532
                  and          a2, s3, gp
                  auipc        t2, 729038
                  addi         s10, s4, -1188
                  auipc        s4, 314013
                  andi         s10, s5, -506
                  srai         a7, s2, 20
                  ori          s1, s10, 310
                  and          s1, s4, a4
                  slt          s5, t0, s5
                  srai         a4, a4, 14
                  or           s7, s6, a3
                  slt          t0, s0, zero
                  srli         a4, tp, 8
                  or           s11, s2, t3
                  slt          ra, a3, t0
                  lui          s4, 1027556
                  srli         a3, a1, 19
                  sltiu        a7, a3, 1929
                  sltu         a6, s0, a6
                  ori          s1, s0, -1632
                  xor          s0, a2, t3
                  slli         s0, ra, 27
                  slti         zero, s3, -1315
                  sltu         t3, s11, t4
                  xori         a7, a4, 1287
                  nop
                  nop
                  xori         gp, s11, 162
                  addi         a1, s9, -603
                  and          tp, a3, zero
                  sltu         a1, s7, t1
                  addi         gp, s7, -155
                  sll          s9, s10, s2
                  sll          t0, a4, t0
                  srai         s5, s9, 10
                  sub          s1, a7, s6
                  lui          s10, 286953
                  srli         tp, s7, 3
                  andi         sp, ra, 1888
                  andi         a0, a2, -1446
                  slli         a6, a5, 17
                  slt          t6, a6, t4
                  sra          t3, t3, t0
                  slti         a6, s8, -681
                  slli         s4, t5, 24
                  and          s6, s1, sp
                  add          a7, t6, ra
                  andi         s5, t2, 1658
                  slti         s6, a0, 1996
                  addi         s6, s9, -1165
                  srl          sp, ra, s2
                  sub          s6, t6, s8
                  nop
                  slli         sp, t3, 24
                  srl          s5, s11, t2
                  xor          t2, s8, t3
                  andi         s11, s4, -1286
                  lui          s7, 584818
                  sub          tp, s6, s2
                  and          a2, a3, s6
                  sra          a3, s0, sp
                  srl          ra, t4, s0
                  srai         a6, s4, 1
                  or           sp, a4, a3
                  sra          s2, a0, s4
                  andi         s5, t2, -1565
                  ori          tp, a0, -167
                  or           s1, gp, zero
                  auipc        t6, 262155
                  srl          sp, a1, t5
                  sltu         s1, a2, tp
                  srai         s4, t1, 8
                  add          t2, t6, t3
                  sltu         a7, tp, s11
                  and          a2, a0, t5
                  xori         s6, s5, 875
                  or           t2, t6, a4
                  slti         tp, ra, 1443
                  sra          a3, s11, ra
                  xor          s4, t2, a2
                  slti         s3, s2, 447
                  ori          tp, zero, -1680
                  sltu         s3, a1, a2
                  sra          zero, s2, t6
                  sltu         s0, s2, s7
                  sltiu        t2, tp, -1125
                  and          s10, t1, s8
                  sll          a3, t1, s4
                  slt          s3, s5, sp
                  srai         s6, a6, 11
                  sra          s6, a2, s1
                  sra          s2, ra, sp
                  srai         a6, s1, 13
                  or           s4, a6, s1
                  srai         s11, a2, 31
                  srai         t0, s6, 30
                  auipc        ra, 220770
                  addi         s4, s1, 986
                  xor          a7, s6, s1
                  xor          s10, s5, s2
                  add          a1, s3, a2
                  sub          s1, s1, t3
                  slli         a0, gp, 2
                  lui          a5, 385914
                  andi         tp, t3, -1648
                  auipc        a0, 247676
                  sub          s7, s6, s10
                  nop
                  add          a3, s0, sp
                  sltu         tp, t0, ra
                  srai         a3, s2, 7
                  addi         s1, zero, 1251
                  srai         tp, t5, 24
                  srai         t0, t1, 23
                  addi         s0, s4, 967
                  auipc        t0, 69694
                  or           s4, sp, s0
                  andi         s1, s5, 1624
                  sltiu        t6, s6, 1688
                  srl          a1, t6, s5
                  sra          t2, ra, t5
                  sltiu        s1, a3, 427
                  xori         s0, s11, 666
                  sub          s10, s10, a2
                  xori         s6, s2, -144
                  nop
                  slt          s0, zero, s3
                  srai         s8, a4, 19
                  and          s9, a5, s6
                  srli         zero, gp, 30
                  sltiu        zero, tp, -1346
                  la x30, test_done
                  jalr x0, x30, 0
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
                  add x6, x29, zero
                  csrr x18, 0x300 # MSTATUS
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 31
                  bne x18, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x18, 0x341 # MEPC
                  csrr x18, 0x342 # MCAUSE
                  li x5, 0x3 # BREAKPOINT
                  beq x18, x5, ebreak_handler
                  li x5, 0x8 # ECALL_UMODE
                  beq x18, x5, ecall_handler
                  li x5, 0x9 # ECALL_SMODE
                  beq x18, x5, ecall_handler
                  li x5, 0xb # ECALL_MMODE
                  beq x18, x5, ecall_handler
                  li x5, 0x1
                  beq x18, x5, instr_fault_handler
                  li x5, 0x5
                  beq x18, x5, load_fault_handler
                  li x5, 0x7
                  beq x18, x5, store_fault_handler
                  li x5, 0xc
                  beq x18, x5, pt_fault_handler
                  li x5, 0xd
                  beq x18, x5, pt_fault_handler
                  li x5, 0xf
                  beq x18, x5, pt_fault_handler
                  li x5, 0x2 # ILLEGAL_INSTRUCTION
                  beq x18, x5, illegal_instr_handler
                  csrr x5, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

ecall_handler:    
                  la x18, _start
                  sw x0, 0(x18)
                  sw x1, 4(x18)
                  sw x2, 8(x18)
                  sw x3, 12(x18)
                  sw x4, 16(x18)
                  sw x5, 20(x18)
                  sw x6, 24(x18)
                  sw x7, 28(x18)
                  sw x8, 32(x18)
                  sw x9, 36(x18)
                  sw x10, 40(x18)
                  sw x11, 44(x18)
                  sw x12, 48(x18)
                  sw x13, 52(x18)
                  sw x14, 56(x18)
                  sw x15, 60(x18)
                  sw x16, 64(x18)
                  sw x17, 68(x18)
                  sw x18, 72(x18)
                  sw x19, 76(x18)
                  sw x20, 80(x18)
                  sw x21, 84(x18)
                  sw x22, 88(x18)
                  sw x23, 92(x18)
                  sw x24, 96(x18)
                  sw x25, 100(x18)
                  sw x26, 104(x18)
                  sw x27, 108(x18)
                  sw x28, 112(x18)
                  sw x29, 116(x18)
                  sw x30, 120(x18)
                  sw x31, 124(x18)
                  la x30, write_tohost
                  jalr x0, x30, 0

instr_fault_handler:
                  add x29, x6, zero
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
                  add x29, x6, zero
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
                  add x29, x6, zero
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
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x29, x6, zero
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
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x29, x6, zero
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
                  csrr  x18, 0x300 # MSTATUS;
                  csrr  x18, 0x304 # MIE;
                  csrr  x18, 0x344 # MIP;
                  csrrc x18, 0x344, x18 # MIP;
                  add x29, x6, zero
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
