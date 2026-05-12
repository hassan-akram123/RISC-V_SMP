.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x9, h0_start
jalr x0, x9, 0
h0_start:
                  li x18, 0x40000100
                  csrw 0x301, x18
kernel_sp:        
                  la x29, kernel_stack_end

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
                  li x0, 0x0
                  li x1, 0xc
                  li x2, 0x53e6242
                  li x3, 0xfd8e5d99
                  li x4, 0x0
                  li x5, 0xa
                  li x6, 0x0
                  li x7, 0xff4fb578
                  li x8, 0x80000000
                  li x9, 0xfb6dc6cf
                  li x10, 0x0
                  li x11, 0xafb2b054
                  li x12, 0x0
                  li x13, 0x8
                  li x14, 0xd
                  li x15, 0xf39b8600
                  li x16, 0xf46ef445
                  li x17, 0x0
                  li x18, 0x5521af0c
                  li x19, 0xf88630bd
                  li x20, 0x0
                  li x22, 0x6
                  li x23, 0xf
                  li x24, 0xf4fed72e
                  li x25, 0xf501c134
                  li x26, 0x0
                  li x27, 0x9
                  li x28, 0xd59eee4d
                  li x30, 0xf047ebb1
                  li x31, 0x80000000
                  la x21, user_stack_end
main:             li           t5, 0x1a3d1bf9 #start riscv_int_numeric_corner_stream_8
                  li           a5, 0x0
                  li           s7, 0xcbe84a0e
                  li           a4, 0xffffffff
                  li           t6, 0x80000000
                  li           s4, 0x0
                  li           tp, 0xafbd5892
                  li           t2, 0xffffffff
                  li           s9, 0x0
                  li           t3, 0x0
                  sub          s4, t3, t6
                  auipc        tp, 472657
                  nop
                  sub          t2, s4, t3
                  sub          s9, s4, s9
                  add          t3, s4, s4
                  lui          t3, 466638
                  add          s9, t3, s4
                  nop
                  auipc        s4, 655968
                  nop
                  addi         t5, t5, -1009
                  sub          t6, a4, s4
                  lui          tp, 1033865
                  sub          a4, t3, t2
                  addi         s9, t3, 845
                  sub          tp, t3, s9
                  auipc        a5, 53840
                  nop
                  addi         s9, t5, -1609
                  lui          t6, 117153
                  auipc        t5, 34098
                  nop
                  addi         t6, s7, 1845
                  sub          a4, s7, s4
                  add          s4, a4, a5
                  addi         a5, tp, -576
                  lui          a4, 4144
                  add          t6, s7, t2 #end riscv_int_numeric_corner_stream_8
                  li           s3, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           a2, 0x80000000
                  li           a5, 0x80000000
                  li           a0, 0x0
                  li           tp, 0xffffffff
                  li           a7, 0x80000000
                  li           gp, 0xe55454ae
                  li           t5, 0xffffffff
                  li           t2, 0x80000000
                  li           t0, 0x0
                  lui          s3, 970498
                  lui          a7, 506612
                  addi         a2, tp, -1157
                  addi         gp, a5, -1640
                  lui          a5, 471037
                  add          a0, a0, gp
                  nop
                  auipc        tp, 402756
                  auipc        s3, 512030
                  sub          t2, tp, a2
                  auipc        tp, 156265
                  sub          gp, a2, a0
                  addi         s3, a5, 516
                  nop
                  auipc        t5, 370807 #end riscv_int_numeric_corner_stream_17
                  li           t3, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           a3, 0x19357e9
                  li           a0, 0xffffffff
                  li           t0, 0xffffffff
                  li           ra, 0xffffffff
                  li           a2, 0x80000000
                  li           t5, 0xffffffff
                  li           s8, 0xffffffff
                  li           a6, 0xffffffff
                  li           t1, 0x9ed2beaa
                  lui          a0, 868687
                  auipc        s8, 422954
                  nop
                  sub          t3, a2, t5
                  add          t3, t1, a3
                  sub          a0, t3, a3
                  add          a0, s8, a0
                  nop
                  auipc        a3, 317059
                  auipc        ra, 35670
                  auipc        t1, 561460
                  lui          t1, 407260
                  nop
                  nop
                  addi         a0, t3, 1750
                  addi         t1, t0, 1665
                  add          t0, ra, a3
                  sub          t3, t1, a6
                  nop
                  lui          s8, 148467
                  nop
                  auipc        t5, 385239
                  lui          a2, 385396
                  nop
                  auipc        a2, 828193 #end riscv_int_numeric_corner_stream_19
                  li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           t6, 0x80000000
                  li           a1, 0xffffffff
                  li           a2, 0x6fae11b9
                  li           t1, 0x0
                  li           s4, 0x40c38500
                  li           t2, 0x86d7f08b
                  li           tp, 0xfebbf42d
                  li           s10, 0x349d1046
                  li           s8, 0x80000000
                  add          t6, a2, s8
                  lui          tp, 822566
                  nop
                  auipc        s10, 624017
                  auipc        t1, 449549
                  addi         a6, a2, 654
                  nop
                  add          tp, t2, a6
                  addi         s4, a2, -1935
                  addi         s10, t2, 1025
                  addi         a2, s4, -1141
                  lui          t2, 453012
                  addi         a1, s4, -345
                  sub          s10, a6, tp
                  sub          tp, a6, s10
                  addi         tp, a6, -316
                  add          tp, t2, a2
                  addi         s4, t1, -724
                  sub          s4, t1, a1
                  sub          a2, s4, tp
                  addi         t1, t6, 918
                  add          tp, tp, t6
                  auipc        s10, 484778
                  sub          s10, t2, s10
                  auipc        s10, 266304
                  add          s10, a6, a1 #end riscv_int_numeric_corner_stream_12
                  li           t1, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           sp, 0x0
                  li           s3, 0x80000000
                  li           s11, 0x0
                  li           s10, 0x80000000
                  li           t0, 0xf39d5a50
                  li           s9, 0x80000000
                  li           s4, 0xffffffff
                  li           a0, 0x0
                  li           ra, 0x80000000
                  add          s11, s9, t1
                  addi         t0, a0, 1286
                  lui          s11, 966822
                  lui          a0, 1131
                  add          s4, a0, s10
                  addi         t1, sp, -1911
                  sub          sp, sp, t1
                  addi         s10, s3, 247
                  auipc        s10, 150460
                  add          s10, a0, s3
                  nop
                  lui          s11, 562230
                  sub          s11, s4, s10
                  lui          sp, 304040
                  sub          sp, t0, t1
                  sub          ra, a0, t1
                  add          s9, ra, s4
                  addi         a0, ra, -661
                  nop
                  add          t0, s11, s9
                  auipc        s11, 521562
                  sub          s10, t0, s3
                  nop
                  add          s11, sp, s9 #end riscv_int_numeric_corner_stream_4
                  li           s2, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           a5, 0x80000000
                  li           ra, 0x0
                  li           a3, 0x0
                  li           a4, 0x80000000
                  li           a0, 0x235fa2c4
                  li           t6, 0x7314227f
                  li           a6, 0x80000000
                  li           s0, 0x80000000
                  li           s6, 0x0
                  lui          s2, 536601
                  auipc        t6, 715482
                  add          a4, s2, s6
                  sub          a6, ra, a4
                  auipc        s6, 705873
                  nop
                  lui          a4, 134575
                  lui          s0, 762271
                  sub          s2, s6, s6
                  auipc        a6, 576311
                  lui          a3, 426980
                  auipc        a0, 229894
                  nop
                  sub          ra, a3, ra
                  addi         a6, s2, -1117
                  add          a4, a6, a3
                  auipc        s0, 609825
                  nop
                  addi         s2, a0, -1373
                  add          s2, ra, s2
                  add          s0, a6, a5
                  addi         a5, ra, 1106 #end riscv_int_numeric_corner_stream_9
                  li           s11, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           s8, 0x21206243
                  li           s0, 0x0
                  li           s4, 0xa5ea9ae9
                  li           t2, 0xffffffff
                  li           t6, 0x96407081
                  li           a3, 0x80000000
                  li           s7, 0x0
                  li           a2, 0x55d49e41
                  li           a4, 0x0
                  nop
                  sub          a4, s0, a2
                  add          s7, s4, a3
                  nop
                  nop
                  nop
                  addi         s8, s4, -14
                  add          a3, t2, t2
                  sub          s4, s0, t6
                  sub          t6, s4, s0
                  auipc        a3, 734884
                  nop
                  lui          s0, 505523
                  lui          a3, 1042444
                  auipc        a4, 224999
                  sub          t6, t6, a2
                  auipc        s11, 608539
                  add          t2, s8, a4 #end riscv_int_numeric_corner_stream_1
                  li           t1, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           a1, 0xffffffff
                  li           t0, 0x80000000
                  li           t6, 0x80000000
                  li           a4, 0x731beef
                  li           a0, 0x80000000
                  li           s8, 0x80000000
                  li           t5, 0xb4cf7d5
                  li           sp, 0x0
                  li           t2, 0x80000000
                  auipc        t2, 474858
                  auipc        sp, 1019608
                  sub          t6, a1, a4
                  lui          t1, 515785
                  add          s8, t2, t5
                  add          t0, a0, s8
                  nop
                  add          t2, t2, a4
                  add          a1, a1, t0
                  nop
                  nop
                  lui          a1, 118362
                  lui          a0, 238927
                  add          sp, t0, s8
                  lui          t2, 127901
                  lui          a0, 888180
                  lui          t6, 759435
                  lui          t1, 120143
                  add          t2, a0, a4
                  lui          a4, 196735
                  nop
                  addi         a1, a1, -1839
                  addi         a4, a0, 662
                  auipc        s8, 799331
                  add          a0, a0, t6
                  sub          t5, t0, t2
                  add          s8, s8, t5 #end riscv_int_numeric_corner_stream_14
                  sltiu        zero, a4, 1725
                  sltiu        a7, zero, -711
                  or           t6, s11, s2
                  sltiu        s8, t6, 652
                  add          s0, ra, gp
                  sltu         a1, t4, t2
                  ori          s10, t6, 446
                  lui          ra, 432058
                  or           a7, sp, s5
                  and          t2, t4, s2
                  sltu         a7, t2, s7
                  sll          t5, t4, a3
                  nop
                  slti         a4, t5, -951
                  lui          s9, 906669
                  xor          s4, a1, t5
                  addi         zero, t1, 34
                  ori          t6, t0, 181
                  auipc        gp, 916373
                  and          a7, t5, tp
                  lui          a4, 946413
                  nop
                  and          s3, s8, s9
                  srai         s9, t4, 10
                  and          s6, s1, t3
                  andi         sp, s0, -1719
                  lui          ra, 454860
                  sltiu        t3, t1, 1800
                  sltu         zero, s6, t5
                  slli         t5, tp, 20
                  sltiu        ra, s7, -823
                  nop
                  and          ra, s1, a0
                  xori         t2, a0, -508
                  slli         s9, a5, 15
                  sra          a2, t6, a2
                  sltu         t5, t4, s1
                  nop
                  srl          t2, tp, a1
                  slti         a0, t2, -509
                  sll          s7, s11, a5
                  srli         tp, s9, 15
                  srl          s8, s3, s3
                  nop
                  and          a3, a3, s1
                  nop
                  add          zero, zero, t2
                  srli         s7, gp, 25
                  add          t2, s9, sp
                  sub          s2, sp, a1
                  nop
                  xor          t5, s2, t1
                  slli         s2, t0, 22
                  ori          a2, ra, -147
                  srl          s6, a2, s6
                  or           s9, t3, s3
                  sll          a3, tp, a4
                  srai         s2, s11, 31
                  addi         t3, s11, -1402
                  xor          t0, t4, tp
                  xori         s8, a0, -209
                  slli         t5, t4, 31
                  sltiu        t0, t2, 696
                  slt          ra, ra, s1
                  sltu         a2, a2, ra
                  and          s10, tp, a3
                  and          s8, t0, t3
                  auipc        gp, 371510
                  sltu         t1, s1, a1
                  ori          t3, s3, -718
                  sltiu        tp, s1, -1306
                  xor          s0, gp, a1
                  and          a7, s11, t5
                  slti         sp, a0, 1265
                  addi         s11, a3, -2044
                  xor          a7, a2, ra
                  ori          a5, a4, 77
                  slt          t5, zero, t2
                  addi         a7, a7, -504
                  sll          t0, gp, t4
                  and          a5, s7, gp
                  sub          a3, a4, t6
                  sll          gp, t2, s4
                  addi         sp, s7, 908
                  xori         a7, s11, -1767
                  andi         t0, a6, -776
                  sub          sp, zero, a5
                  nop
                  srl          s8, gp, t4
                  xori         t0, a7, -1825
                  slli         t0, t6, 7
                  srli         ra, zero, 8
                  sub          s3, t0, t2
                  slt          a6, a6, a2
                  or           s6, a7, s5
                  lui          zero, 169405
                  slt          a0, t3, s0
                  slt          tp, a0, zero
                  srl          zero, s3, s10
                  slli         gp, sp, 2
                  sll          t6, a1, a3
                  ori          t1, s5, -1121
                  add          zero, a0, s9
                  sra          a2, t4, a7
                  srli         a3, s8, 29
                  srl          t2, a4, a6
                  sltiu        a3, a3, 301
                  andi         a4, s4, 886
                  and          gp, s2, a0
                  ori          s4, s0, 536
                  lui          t1, 879774
                  or           t2, s9, s10
                  and          t2, a4, s9
                  lui          a5, 88298
                  ori          s10, sp, -588
                  sll          a4, a6, a5
                  slti         s3, gp, 3
                  nop
                  sra          a6, a3, s1
                  auipc        a3, 56608
                  srl          a0, ra, s0
                  slt          s11, tp, a5
                  and          a1, s0, s8
                  slt          s0, t0, t6
                  srai         s4, a0, 7
                  add          s0, a4, zero
                  sll          a6, s5, s2
                  sltu         tp, a6, a7
                  auipc        t3, 500025
                  ori          s3, t1, 1780
                  srli         s11, tp, 19
                  andi         a6, s5, -947
                  srl          t0, t0, s2
                  slti         s4, ra, 1719
                  and          t6, a0, s2
                  add          a1, a0, t1
                  sltu         s0, s4, sp
                  srai         t6, a3, 2
                  slt          zero, s2, a6
                  sub          t5, s1, s0
                  and          a1, s3, s1
                  and          gp, t5, s3
                  sra          s2, a1, s0
                  sll          t2, a6, t2
                  add          t3, t0, t5
                  nop
                  srli         a1, a0, 2
                  sltu         s9, t5, t2
                  sra          a1, s10, t3
                  slli         s4, a3, 26
                  srli         gp, ra, 4
                  sltiu        t6, sp, 765
                  xor          s11, t0, s5
                  andi         a7, t4, -976
                  nop
                  auipc        s10, 224415
                  srai         a4, a2, 14
                  sub          ra, a7, a2
                  andi         a7, t1, 1947
                  slti         t5, a5, -1407
                  lui          s4, 868298
                  xori         a0, a6, 75
                  sltu         ra, zero, s4
                  sltu         s4, t1, zero
                  or           t6, s0, s10
                  xor          t0, a3, s3
                  sra          a5, s10, t1
                  nop
                  sltiu        gp, s8, -989
                  auipc        t1, 1021668
                  xori         t3, s3, 15
                  srl          s7, t0, t0
                  slli         s8, gp, 17
                  auipc        a3, 142418
                  xori         s0, tp, 251
                  addi         s2, s5, -1358
                  or           a7, ra, s4
                  xor          t5, t0, ra
                  auipc        a5, 64773
                  sll          t5, s6, s3
                  srli         s10, a1, 7
                  li           s11, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           a1, 0x80000000
                  li           tp, 0xffffffff
                  li           t2, 0x80000000
                  li           s4, 0x0
                  li           s3, 0x0
                  li           sp, 0x0
                  li           t3, 0x0
                  li           s8, 0xaccd0b99
                  li           t5, 0xac99c46f
                  lui          t2, 896850
                  addi         t5, t5, 1701
                  auipc        s3, 211668
                  lui          t3, 218197
                  addi         t5, a1, 673
                  auipc        s4, 374551
                  lui          s8, 334929
                  nop
                  nop
                  addi         tp, t3, -44
                  nop
                  add          sp, sp, sp
                  auipc        tp, 115438
                  addi         s11, s4, -217
                  add          s8, sp, s3
                  auipc        t2, 994301
                  auipc        s4, 263109
                  sub          tp, t3, s8
                  sub          t2, t5, s3 #end riscv_int_numeric_corner_stream_15
                  add          s2, s7, a0
                  sub          a6, a6, s4
                  and          s6, s1, a5
                  add          sp, a1, s2
                  sltu         a5, s8, t5
                  lui          s4, 192830
                  sltiu        ra, t6, 1671
                  sltu         a0, s3, s0
                  sltiu        t0, a0, -1842
                  and          a6, a6, a3
                  sll          a3, ra, s1
                  add          ra, s2, a6
                  and          tp, a2, a7
                  xor          t6, zero, t2
                  ori          s7, s9, 1730
                  sll          a4, s7, a2
                  and          zero, s1, a2
                  addi         a1, ra, -1572
                  srai         t0, s9, 13
                  nop
                  srl          s10, sp, a4
                  lui          s6, 734197
                  addi         a1, t3, 844
                  srli         tp, a3, 26
                  sltu         t5, a0, a7
                  ori          s3, a2, -402
                  xori         s0, tp, -28
                  sub          s2, a6, s1
                  sltiu        t5, a0, -480
                  xor          t2, s10, s11
                  sltiu        s6, t0, 902
                  srli         s9, a7, 31
                  xori         a5, t0, 555
                  srl          s11, a6, t4
                  sub          a5, t5, t6
                  sll          sp, gp, a5
                  sll          s2, s0, t4
                  sub          a0, s10, s8
                  sub          a6, t1, a6
                  xor          a3, s0, a3
                  sra          zero, s3, t2
                  sll          s8, t0, s6
                  slli         t0, a2, 13
                  slt          a1, t0, tp
                  sltu         ra, s2, s0
                  sltu         a0, a6, s11
                  sra          t2, zero, t4
                  add          s10, s5, a3
                  xor          s3, s10, s3
                  sra          a1, s8, s10
                  addi         sp, a1, -600
                  andi         a5, t6, 1179
                  auipc        a0, 491448
                  slli         t0, a1, 24
                  nop
                  and          a0, t4, t5
                  andi         a5, s5, 162
                  addi         t5, t3, 112
                  srai         a0, t5, 26
                  xori         s9, t1, 196
                  slti         a1, s7, -2014
                  or           s11, s8, gp
                  srli         t3, s6, 19
                  xori         s7, t4, 1099
                  srli         ra, zero, 9
                  slli         a5, sp, 16
                  add          t1, s9, s11
                  slti         gp, s3, -2019
                  slli         tp, s4, 14
                  sltiu        sp, t3, 305
                  andi         s10, t6, -1688
                  nop
                  sll          t3, t2, s6
                  xori         s3, s7, 843
                  andi         a0, s5, 1590
                  auipc        s7, 853599
                  sltu         t5, s9, sp
                  add          sp, s11, zero
                  srl          s10, a5, t0
                  sra          s4, a1, a2
                  srli         t6, ra, 21
                  sltiu        a2, a4, 754
                  sub          s2, s1, s5
                  srl          s0, s10, s11
                  lui          s11, 802051
                  slli         zero, ra, 0
                  slt          s9, s10, t3
                  slti         a3, t2, -310
                  sltiu        a7, tp, 1616
                  sltu         a5, s1, a3
                  add          s10, s8, a4
                  sltiu        t1, a6, 1185
                  sra          a4, t5, a5
                  auipc        s4, 682291
                  or           s11, s5, tp
                  srli         a4, t0, 7
                  sltiu        s3, ra, -371
                  srai         t2, a3, 15
                  srai         a3, s10, 11
                  slli         gp, s8, 5
                  sltu         t2, t3, t3
                  lui          s6, 712824
                  sra          gp, a7, s0
                  addi         t5, s5, 935
                  lui          t6, 1040123
                  lui          t1, 152931
                  auipc        s10, 577537
                  sra          t0, s10, t3
                  srl          s8, a5, t1
                  or           s2, s1, s2
                  ori          s0, t4, -63
                  xori         t0, a4, -1966
                  add          ra, s7, ra
                  lui          t3, 490867
                  and          a7, s0, s7
                  srai         t2, a4, 20
                  and          s2, s4, s11
                  addi         a1, s5, -1285
                  or           t2, sp, sp
                  lui          s0, 5228
                  sltu         s11, s9, s7
                  nop
                  and          a7, gp, t2
                  addi         a6, t1, -739
                  add          sp, a4, a7
                  srai         s3, s9, 24
                  sub          t1, t5, a5
                  addi         t6, s0, 1272
                  xor          sp, s9, t2
                  auipc        t6, 320904
                  andi         t1, a4, -544
                  andi         s10, a1, 1449
                  sltu         zero, sp, s4
                  or           s11, t4, s8
                  sltu         s7, s7, s3
                  sll          ra, a3, s9
                  srli         s10, t5, 28
                  lui          a6, 601814
                  slti         s3, s8, -118
                  srl          a5, s2, s7
                  sltu         sp, a2, a1
                  and          t3, a7, s4
                  srl          sp, t5, tp
                  or           zero, a0, sp
                  srl          zero, ra, s8
                  slli         s0, ra, 27
                  and          s4, s2, a5
                  slt          a1, s3, s9
                  sub          s6, sp, s8
                  lui          a3, 385863
                  sll          s7, zero, t4
                  or           t0, a3, s11
                  slli         s7, t4, 6
                  sra          a4, s5, a6
                  srl          a3, s8, s1
                  ori          t0, t4, 1530
                  lui          a1, 220335
                  xori         s0, s3, 1071
                  add          s9, a5, ra
                  auipc        t6, 650169
                  add          sp, s1, s0
                  sub          t6, s6, t6
                  srl          t0, gp, sp
                  sra          a6, a7, s0
                  sltiu        tp, a7, 803
                  auipc        s3, 102753
                  add          gp, s1, s4
                  sltiu        a1, t2, -1741
                  and          t2, tp, s10
                  sll          gp, s3, t4
                  srl          s0, s5, t1
                  ori          s3, s6, -393
                  sltu         a1, t1, tp
                  ori          s2, a4, 548
                  srl          t0, s8, t3
                  srl          sp, t2, zero
                  add          ra, s3, s9
                  lui          s8, 209086
                  slli         a3, s10, 7
                  xor          t5, ra, a4
                  ori          s9, t5, -1280
                  xor          s6, a5, t4
                  ori          t5, a4, 1175
                  srai         tp, s2, 4
                  srl          a1, a1, s5
                  sub          a6, s3, s8
                  xori         a0, a3, -1984
                  ori          s8, s10, 419
                  srai         s11, s0, 1
                  srli         s0, t5, 4
                  nop
                  and          sp, s5, s4
                  sll          a0, a3, t6
                  sub          s6, a0, ra
                  ori          zero, t0, 243
                  slt          s6, s9, a0
                  lui          ra, 630875
                  sub          tp, a5, s8
                  slli         gp, a2, 14
                  srli         s6, sp, 7
                  sll          a2, t3, s11
                  srl          t5, t3, a2
                  sltiu        a3, t2, 1352
                  sll          zero, a3, s8
                  add          sp, s7, t3
                  sltu         t0, s7, a5
                  sra          a2, a7, t5
                  ori          a6, t6, 1218
                  or           t0, s4, zero
                  slt          a6, a2, gp
                  srl          s8, t2, t4
                  sltiu        a4, a0, 863
                  nop
                  slt          a2, a7, s8
                  sub          s0, t6, t5
                  sub          a5, t3, tp
                  sltu         a3, a3, tp
                  sltiu        t3, a0, 311
                  slt          s8, s1, s11
                  slli         t5, s2, 22
                  xor          t3, a1, t5
                  nop
                  addi         a7, a6, 841
                  sra          gp, s1, ra
                  lui          s8, 589882
                  slt          a4, a3, a5
                  srli         ra, a1, 30
                  srai         a2, s1, 1
                  xor          a4, zero, a4
                  xori         s8, t3, -1822
                  auipc        t2, 551805
                  nop
                  sra          t2, t2, t4
                  xor          s7, sp, a4
                  srai         t1, tp, 10
                  srl          s10, t6, t2
                  sltu         a4, gp, s1
                  xor          s4, a2, t3
                  nop
                  andi         tp, s10, 1070
                  sub          a5, t3, s1
                  xor          s7, tp, a2
                  sll          a1, t1, s8
                  add          s0, t5, t1
                  lui          t2, 424730
                  xori         s8, s6, 2021
                  slt          s9, a0, s4
                  sub          s6, s1, s2
                  ori          s6, s10, 1601
                  slt          a5, a2, a2
                  and          a7, a7, s4
                  srl          a7, t3, zero
                  srli         s8, tp, 28
                  srli         sp, a6, 0
                  addi         s11, a3, 1968
                  srli         gp, s2, 5
                  nop
                  sub          s8, sp, a3
                  nop
                  sra          t1, s10, a0
                  addi         s9, s6, 19
                  sub          s8, s5, s5
                  ori          s3, s3, 1986
                  addi         a4, ra, 1443
                  ori          tp, a6, -468
                  slti         ra, s3, 1132
                  andi         t5, s10, 1488
                  srai         zero, a6, 18
                  auipc        a6, 535988
                  addi         t2, t1, -2014
                  or           sp, a7, t3
                  sub          a3, s11, s6
                  ori          t1, a3, 1033
                  lui          t1, 797778
                  and          t6, gp, tp
                  sll          s10, s9, sp
                  and          s4, s2, a4
                  xori         s7, s11, 1813
                  slti         a0, a2, -723
                  auipc        a0, 467982
                  srai         t6, s11, 11
                  slt          ra, gp, a7
                  sltiu        a1, t2, 324
                  ori          a2, a1, 1507
                  andi         tp, tp, -326
                  and          gp, a4, s6
                  slli         a2, a6, 3
                  xor          s7, t4, a5
                  sltu         t5, zero, s3
                  slli         t6, t2, 29
                  srl          t3, t1, s10
                  slli         a7, sp, 25
                  sltu         a1, s10, a2
                  xori         t5, s0, 44
                  sltiu        s9, a6, -382
                  slt          s4, zero, t3
                  sra          s7, s9, s0
                  or           a3, s8, s8
                  sltiu        s0, t0, -275
                  xor          a1, s5, t1
                  srl          s10, s5, t0
                  slt          s7, t4, zero
                  xori         t3, s10, 695
                  srai         s2, a3, 28
                  ori          gp, a6, 1494
                  sltiu        a6, s3, -1359
                  auipc        ra, 517915
                  srai         sp, s8, 6
                  sll          s9, s3, a0
                  lui          t5, 556071
                  srl          s9, ra, t5
                  sra          t0, s4, s8
                  auipc        s11, 382023
                  srl          t2, s2, a0
                  sra          s4, t6, t2
                  ori          t3, s11, 928
                  xori         t0, a5, -750
                  ori          a2, a7, -875
                  srl          s9, s6, s6
                  slli         s10, s8, 5
                  srai         t3, s10, 3
                  srl          a6, zero, tp
                  xori         a6, a6, -1692
                  xori         tp, s8, 1360
                  nop
                  or           a3, s8, a1
                  slt          s2, gp, a1
                  auipc        t0, 153126
                  xor          a0, s10, tp
                  sll          t1, s4, zero
                  nop
                  nop
                  xori         t6, t2, -828
                  sll          ra, t2, s5
                  addi         a5, s2, 701
                  ori          a3, a4, -2022
                  sra          s4, s3, a3
                  lui          t3, 859543
                  ori          tp, a2, 1405
                  slt          s2, a3, s3
                  andi         t2, t2, -1180
                  ori          a2, a7, -1240
                  auipc        s6, 464095
                  nop
                  slti         t2, a6, 233
                  sltu         t0, a1, s2
                  xori         t3, s6, 67
                  sll          a7, a5, s2
                  andi         a2, t4, -1407
                  sra          s7, a1, t5
                  sltiu        s9, a0, 1612
                  or           t1, zero, s8
                  sub          a4, s8, t4
                  slt          a5, t4, s6
                  andi         sp, t3, -1593
                  add          s6, zero, a1
                  sll          zero, s5, t2
                  add          s9, t2, a0
                  nop
                  srli         s10, tp, 7
                  sltiu        ra, t5, 1745
                  ori          t3, s3, -1365
                  slli         s4, t3, 12
                  xor          a3, s2, zero
                  slti         a1, t0, 1678
                  slt          a0, s8, s4
                  sub          a3, gp, t3
                  lui          t2, 805307
                  and          s6, s3, gp
                  addi         s8, a2, 95
                  addi         a4, a1, -752
                  srai         gp, tp, 21
                  slt          a4, t1, a7
                  sra          s6, a2, a0
                  sll          s0, t0, s1
                  slti         tp, s5, -1332
                  srl          tp, t1, s0
                  or           s4, sp, zero
                  lui          t6, 293317
                  sra          t3, a5, s3
                  sra          t1, s0, s7
                  ori          s7, s1, 1785
                  addi         a2, a6, -1724
                  xori         t3, t2, -910
                  and          sp, tp, a2
                  srl          s8, s5, t4
                  slt          s6, s10, t4
                  auipc        t5, 843367
                  xor          s11, s6, s9
                  or           t0, tp, a4
                  or           t5, a1, a4
                  xor          s9, a4, t1
                  sra          t0, ra, s6
                  andi         a4, t6, -1243
                  slti         ra, s7, -1826
                  srli         s0, a2, 14
                  lui          s0, 521541
                  lui          s11, 230089
                  sltiu        s6, t3, -1551
                  sll          a5, t1, s10
                  nop
                  auipc        a5, 362252
                  sra          t0, s0, t3
                  slli         a7, a1, 19
                  sltiu        s11, s3, -2007
                  srl          ra, s8, s1
                  add          s8, a6, a7
                  srl          sp, t2, s5
                  add          a5, s1, s3
                  and          ra, t5, t2
                  add          sp, t0, a1
                  lui          gp, 10800
                  slti         a3, t5, 836
                  slli         a0, a4, 0
                  srai         a2, t6, 5
                  add          s7, a1, t0
                  slt          t5, zero, s6
                  add          gp, s5, a4
                  nop
                  xori         a0, t4, -983
                  sltu         t5, a0, a0
                  ori          gp, tp, 88
                  li           s9, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           gp, 0xe9bcba39
                  li           s4, 0xffffffff
                  li           t1, 0x8b975409
                  li           s6, 0x0
                  li           ra, 0x0
                  li           a6, 0x0
                  li           s0, 0xffffffff
                  li           t3, 0x0
                  li           s8, 0xe86637d3
                  nop
                  sub          s0, s0, s4
                  auipc        s4, 982856
                  add          t3, s0, s8
                  sub          s6, s4, s9
                  sub          t1, a6, s4
                  nop
                  sub          s4, t3, s4
                  addi         s8, t3, -1080
                  add          gp, s9, s8
                  auipc        t1, 57311
                  nop
                  addi         s8, a6, -239
                  sub          t1, s8, gp
                  addi         s8, s4, -2001
                  addi         s9, s0, -663
                  addi         s4, a6, 1424
                  nop
                  addi         t3, gp, -839
                  lui          gp, 496881
                  sub          ra, s0, s0
                  auipc        s9, 631089
                  add          t1, ra, t3
                  nop
                  auipc        t3, 14920
                  lui          s6, 953452
                  auipc        t3, 201871
                  add          s9, s9, ra
                  add          a6, ra, a6
                  auipc        ra, 922775 #end riscv_int_numeric_corner_stream_13
                  addi         s6, s2, 1374
                  nop
                  and          t0, t1, tp
                  sub          s10, t2, t6
                  srl          zero, s2, s3
                  sltiu        t0, s4, -323
                  nop
                  ori          s11, a2, -1380
                  andi         s0, s0, 1824
                  nop
                  addi         a4, a4, -1051
                  add          t6, a4, a0
                  sub          gp, t6, s9
                  sll          a2, s9, s0
                  srai         s9, a6, 3
                  sll          s8, s2, a4
                  sub          s3, s5, a5
                  sltu         s9, s6, s8
                  sltu         t1, s1, ra
                  xori         s4, gp, -1341
                  auipc        a1, 299772
                  lui          s3, 676046
                  srai         a0, s4, 8
                  or           s11, ra, s5
                  slti         t0, s6, -782
                  srli         s6, t0, 23
                  lui          t0, 39495
                  sra          a4, s3, s4
                  slti         s7, t0, -919
                  ori          s7, a7, -642
                  slti         s4, s11, 656
                  srai         a7, a2, 28
                  auipc        a4, 615942
                  slti         s7, t6, -453
                  andi         t1, s8, 332
                  add          a0, a4, zero
                  sra          s0, t0, t0
                  srai         s8, a5, 31
                  or           a2, t4, s5
                  andi         s0, t3, -160
                  sll          t5, s5, s0
                  sra          s10, t4, sp
                  xori         s6, a7, -1802
                  ori          a6, t2, -224
                  srli         a1, s10, 4
                  slti         a4, t6, -1728
                  andi         s8, s3, 146
                  xori         s2, a6, -460
                  sll          s11, s1, a1
                  ori          s3, zero, -1699
                  ori          a7, s2, -2023
                  sltiu        s7, a3, -490
                  sll          s4, s10, s8
                  srl          a2, s4, a2
                  xori         s3, a2, -1630
                  slli         s9, s6, 16
                  lui          a2, 991696
                  ori          s10, s8, -35
                  slti         t1, a3, -1455
                  and          a7, t2, gp
                  addi         s11, s4, -699
                  lui          t1, 162811
                  slli         ra, s1, 6
                  sltiu        t0, s4, -1423
                  srai         s0, t4, 5
                  and          a3, s7, s2
                  andi         gp, t4, 750
                  andi         a5, s6, 1003
                  srl          a2, s8, s7
                  nop
                  sra          s7, a0, t5
                  srli         a1, s5, 1
                  andi         tp, t1, 1515
                  auipc        a1, 1043121
                  sltu         t6, s3, t6
                  slt          t0, t5, a3
                  sll          s8, s7, s3
                  slli         s11, sp, 20
                  ori          a3, a7, -1794
                  sub          a2, a6, a2
                  slti         a1, t0, 1489
                  sll          sp, t4, s0
                  and          a1, t3, a6
                  sll          a4, t2, t6
                  auipc        s9, 639009
                  ori          a0, t2, -1687
                  nop
                  sltu         s11, s3, a2
                  sra          s8, s11, a1
                  or           a6, t6, t3
                  or           t1, t2, t6
                  ori          s11, t6, -2013
                  sll          t0, a7, t5
                  sltiu        a4, a3, 1505
                  srli         a0, s2, 1
                  ori          a6, t2, -56
                  nop
                  and          s0, t3, a1
                  nop
                  srai         a6, ra, 26
                  sub          t0, t3, s2
                  sub          t0, a3, s5
                  sra          s7, s9, gp
                  slti         s7, s0, 1362
                  add          s11, a4, a7
                  add          s2, zero, a6
                  nop
                  lui          tp, 1042082
                  add          a5, s4, t6
                  srl          a3, s1, s11
                  nop
                  andi         s0, gp, -210
                  srai         a0, tp, 22
                  lui          s11, 519117
                  add          a6, t6, a5
                  sll          zero, s3, sp
                  srl          a7, s11, s9
                  srli         s11, a6, 6
                  xor          t0, a5, gp
                  xor          a2, s1, a3
                  srl          s6, s2, a3
                  nop
                  ori          a0, s10, 61
                  slt          s4, a6, t5
                  sub          a2, t2, gp
                  slli         s6, a6, 20
                  sltu         a4, a1, s1
                  srai         t5, t0, 30
                  add          t2, t4, s9
                  or           t2, sp, s5
                  andi         t2, s4, -1769
                  xor          s8, s4, a4
                  srl          sp, s2, a2
                  srai         sp, t3, 24
                  auipc        s3, 106334
                  xori         s8, a4, -615
                  srli         tp, t0, 19
                  andi         ra, t5, -1931
                  sub          s0, a0, t0
                  sra          t0, zero, s11
                  addi         a1, a5, 199
                  srai         sp, a7, 17
                  xor          s8, s0, s9
                  sra          sp, a4, t5
                  nop
                  sll          s0, a1, t5
                  srai         s6, s4, 23
                  add          s0, t2, s11
                  sub          s10, a2, s4
                  andi         s10, s9, 1943
                  sltiu        a0, t2, 492
                  auipc        t3, 817896
                  add          t6, t4, s2
                  sll          s8, gp, t1
                  xori         t6, t5, -1673
                  slli         t3, t0, 9
                  addi         a2, s4, 1661
                  srai         sp, a6, 3
                  slt          s2, a2, a5
                  ori          a3, s8, 426
                  andi         s2, t4, 1017
                  sll          zero, s1, a0
                  slt          a2, a2, t0
                  lui          sp, 282087
                  sub          t1, a0, s4
                  auipc        s8, 635287
                  sra          s8, t2, s7
                  sra          s10, t5, t2
                  nop
                  add          s4, a4, s3
                  sub          s2, s6, a4
                  sra          s8, s8, s9
                  slli         a2, ra, 21
                  add          a0, ra, t2
                  addi         s7, t3, 516
                  sltu         ra, s8, t4
                  or           a5, t2, s9
                  lui          s4, 428482
                  lui          tp, 869554
                  andi         a4, s11, 240
                  srai         s6, tp, 5
                  sub          a6, gp, s4
                  andi         a7, s11, -1968
                  auipc        a3, 269098
                  sra          s9, a3, t2
                  ori          s11, s3, -1401
                  slli         s4, s2, 18
                  sll          s2, s11, t0
                  sll          ra, t6, t3
                  slti         s3, tp, 1289
                  sll          t3, a4, s9
                  sub          t1, s2, a1
                  lui          zero, 819591
                  srli         a4, t1, 4
                  or           s4, s10, s4
                  srli         s6, s9, 30
                  or           s8, a3, t2
                  sltu         tp, sp, s11
                  srl          s11, a0, s3
                  srli         s2, s11, 22
                  ori          gp, s5, 1357
                  nop
                  addi         t6, t5, -1015
                  ori          s3, t1, 1673
                  and          gp, t2, t6
                  srli         ra, s10, 11
                  slli         a2, t0, 30
                  ori          s11, sp, -420
                  slli         t3, t3, 21
                  and          s2, a7, s9
                  lui          s6, 100761
                  sra          t2, t4, s10
                  add          s2, a2, s1
                  and          s4, gp, s4
                  addi         a4, s3, 282
                  ori          zero, t2, 1783
                  slli         s9, s10, 17
                  xor          a7, s5, t0
                  slt          a0, a2, t0
                  ori          a1, s3, 555
                  xor          s2, gp, s5
                  auipc        a0, 769139
                  lui          s10, 459071
                  sra          sp, t5, t3
                  xor          s8, s6, t2
                  and          a2, t4, t2
                  sra          s8, a5, s7
                  nop
                  slti         a1, s0, -755
                  and          s6, s8, t6
                  slt          s8, gp, t1
                  xor          a6, s4, t6
                  or           t0, s7, s6
                  sll          sp, a1, a6
                  slti         t5, s5, -1776
                  nop
                  sltu         a3, t0, s7
                  xor          a0, s5, a5
                  slt          t1, s9, s4
                  sra          gp, sp, gp
                  ori          a0, t0, 2030
                  slti         s6, t3, 1025
                  sll          t3, a3, t3
                  xor          sp, s6, tp
                  xori         t1, s5, 422
                  slti         t1, a2, 447
                  nop
                  add          gp, t0, a4
                  slli         s9, s0, 19
                  add          t2, zero, tp
                  srli         s4, s8, 13
                  and          zero, s5, s10
                  and          s6, t2, zero
                  and          s3, a1, tp
                  sub          a2, sp, s1
                  or           t1, a5, s9
                  or           zero, gp, s6
                  auipc        t1, 832914
                  add          gp, t2, a2
                  srli         tp, a3, 3
                  sub          s0, s10, a5
                  or           s11, gp, a2
                  lui          a7, 921518
                  add          s10, gp, t2
                  sltiu        zero, s5, 81
                  addi         a6, t2, -918
                  slt          a1, a4, s5
                  srai         s4, a4, 20
                  lui          s8, 641758
                  addi         a3, s10, -1225
                  slti         zero, t4, 585
                  slli         t0, t2, 26
                  or           t5, s2, t6
                  srl          s10, ra, s4
                  srl          a1, t1, tp
                  sltu         s6, s10, s1
                  xor          s3, s8, gp
                  srai         t5, t3, 9
                  sltiu        a7, t2, 1852
                  slti         t3, s10, -317
                  nop
                  lui          a5, 4553
                  lui          s7, 639672
                  addi         a7, s3, 74
                  nop
                  slli         s4, a6, 22
                  lui          a5, 1000434
                  sll          zero, s7, zero
                  sra          s9, t3, s9
                  xor          s9, s0, s1
                  addi         a7, a6, 1578
                  slt          s6, a5, a6
                  lui          sp, 837014
                  auipc        s6, 163895
                  srl          a7, ra, s3
                  sll          s6, ra, t2
                  lui          a1, 730993
                  srai         s4, t5, 25
                  or           s6, s3, tp
                  add          s4, s6, a2
                  sll          s3, s6, a3
                  sltiu        ra, a0, -1894
                  auipc        s2, 465631
                  andi         a7, s6, 443
                  sltiu        t0, s6, 1531
                  sltu         s11, s11, a4
                  srai         s8, t6, 10
                  add          a0, s4, s5
                  slt          t0, s9, s2
                  nop
                  add          t3, a5, s10
                  auipc        s0, 825364
                  auipc        s9, 541363
                  sub          a3, zero, a4
                  slti         s2, t4, -961
                  add          zero, t4, a3
                  slti         a0, sp, 1407
                  add          s3, a4, s2
                  sltu         a4, s2, t3
                  lui          a0, 1006214
                  slli         s0, s1, 21
                  slli         t2, s3, 10
                  addi         t0, s1, 1772
                  lui          s4, 367555
                  srli         gp, s1, 24
                  addi         tp, s8, 354
                  sltiu        t0, s8, 457
                  xor          s7, a1, tp
                  srl          a6, s10, t6
                  sltu         t0, t0, s11
                  slt          t3, s4, t0
                  ori          s2, a5, 1343
                  xori         a5, a2, -846
                  add          s10, zero, t4
                  xori         zero, a1, 1657
                  or           a2, t5, t5
                  sub          a2, a4, a4
                  xori         a1, tp, 1729
                  xor          gp, a0, s9
                  addi         a7, sp, 385
                  andi         s9, a0, -176
                  xori         t3, a1, -740
                  auipc        s2, 897589
                  srai         a2, gp, 20
                  sltiu        s11, s3, 431
                  sltu         ra, a0, s8
                  slt          sp, a6, a0
                  slli         t3, s8, 5
                  add          a1, sp, s5
                  sll          gp, a3, s9
                  srl          a4, t2, ra
                  slti         sp, tp, 762
                  or           a6, s5, a4
                  auipc        s0, 207387
                  addi         t6, t1, 630
                  andi         sp, s1, -394
                  and          a2, t6, s5
                  srl          s3, t0, a7
                  sll          a0, a3, a2
                  nop
                  addi         s2, zero, 556
                  srl          sp, s4, s7
                  srai         a6, a7, 7
                  lui          a6, 798635
                  srli         s0, t1, 8
                  srl          s7, ra, s5
                  and          gp, s11, s7
                  auipc        t1, 707143
                  xor          tp, a5, t5
                  and          t6, a2, s2
                  srai         a6, s9, 9
                  srl          s3, t6, a4
                  sll          t3, s9, s10
                  nop
                  srli         s0, s2, 4
                  sra          s11, s3, a5
                  xor          a1, s6, s4
                  srl          s7, t6, a3
                  and          t6, s0, s2
                  xor          t5, zero, s3
                  addi         t6, s0, -1667
                  xori         a2, s9, -1863
                  andi         tp, s9, 150
                  xor          sp, t5, a5
                  and          a6, s4, s0
                  srai         a7, a2, 15
                  addi         zero, tp, -1921
                  slti         a3, a6, 61
                  srli         tp, s9, 2
                  or           s3, a7, s3
                  addi         t1, s10, -1308
                  auipc        t1, 747954
                  auipc        t2, 479679
                  sll          s7, s5, tp
                  sub          s11, a3, s3
                  srli         t2, s11, 28
                  and          s11, t2, t2
                  xor          a7, s9, s9
                  addi         s10, t2, 381
                  srli         s4, sp, 4
                  slti         t5, t6, 180
                  add          a1, tp, s2
                  or           s8, s11, t6
                  srai         a5, tp, 29
                  addi         s9, a2, 1280
                  slli         t5, t1, 31
                  sra          gp, t3, t0
                  sltu         t2, s2, tp
                  sub          a3, t4, s8
                  srai         s0, s2, 5
                  srl          a3, tp, s6
                  sltiu        zero, s1, 1410
                  nop
                  slli         s7, s0, 8
                  auipc        s0, 802813
                  add          a1, s2, gp
                  sra          a3, t2, s3
                  sltiu        a2, s0, -1867
                  sltu         s0, s6, ra
                  xor          a3, s3, tp
                  li           t1, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           t2, 0xffffffff
                  li           s8, 0xe295b0b1
                  li           a1, 0x80000000
                  li           t6, 0x0
                  li           t3, 0x80000000
                  li           ra, 0xffffffff
                  li           t5, 0x80000000
                  li           s10, 0x80000000
                  li           t0, 0x80000000
                  sub          t0, t6, s10
                  auipc        s10, 372958
                  lui          s10, 628258
                  auipc        t0, 538814
                  lui          t3, 1038254
                  add          t1, ra, t3
                  lui          s8, 222998
                  add          s10, t2, a1
                  add          t6, t3, s10
                  lui          s10, 366022
                  add          t1, ra, s10
                  lui          s8, 732128
                  sub          t2, t0, t6
                  nop
                  lui          t6, 1033802
                  add          t2, t1, s8
                  auipc        ra, 266712
                  lui          s10, 210871
                  auipc        a1, 861363
                  auipc        t3, 675479 #end riscv_int_numeric_corner_stream_3
                  slt          sp, s0, t4
                  sra          s0, t5, s10
                  ori          t1, a3, -1727
                  sra          s10, t1, a1
                  sub          s2, t0, s3
                  srai         s0, a4, 24
                  nop
                  sra          t1, s1, s1
                  ori          gp, s9, 1587
                  sll          ra, s4, s8
                  sra          ra, s10, s10
                  sll          a1, sp, s0
                  slt          s0, s6, s10
                  add          s3, t6, s1
                  nop
                  slt          ra, s2, s1
                  srl          t6, a7, a0
                  slt          s7, a3, s11
                  slti         a4, a0, -1883
                  sltu         sp, a1, gp
                  nop
                  lui          a0, 729881
                  slt          s11, t2, s7
                  sltu         s6, s8, t1
                  sltiu        s8, a2, -901
                  sll          t1, sp, s4
                  andi         s0, zero, -1005
                  ori          a6, a3, 1663
                  or           s2, t6, zero
                  xori         s4, s2, -1446
                  addi         s0, sp, -1994
                  ori          t5, t3, -1248
                  sll          tp, zero, s0
                  nop
                  andi         zero, gp, 154
                  slti         t1, s2, 1267
                  ori          s4, s5, 1984
                  add          s7, tp, a6
                  srli         s8, a7, 31
                  addi         s6, s7, 831
                  add          s10, a4, s6
                  nop
                  slli         s8, a1, 20
                  and          a2, s11, a5
                  slt          t5, sp, a5
                  addi         s2, s4, -77
                  slti         a1, zero, -954
                  and          s10, t0, t4
                  or           s4, tp, s3
                  add          zero, s4, t3
                  or           a7, a5, a7
                  srai         a6, s5, 14
                  sub          s2, s5, s8
                  slti         t6, t6, -1011
                  add          zero, s6, t6
                  addi         s9, a4, -210
                  sltu         t1, s2, s6
                  slli         s0, s4, 15
                  slti         s2, a4, -901
                  srl          gp, a7, t1
                  add          a0, t1, t4
                  auipc        t2, 223905
                  ori          a4, t4, 743
                  srl          s0, s9, s10
                  srli         gp, a5, 28
                  srli         a3, t3, 20
                  andi         a7, s9, -845
                  auipc        s7, 168370
                  sll          a0, ra, s11
                  andi         s4, t0, 1043
                  lui          a4, 485026
                  slti         a0, t5, 904
                  srl          s2, s8, s2
                  slt          t1, tp, a1
                  andi         ra, t2, -1626
                  and          tp, s8, a5
                  slti         a4, a5, 999
                  or           a4, t6, s3
                  and          a4, a7, t2
                  add          sp, s7, a1
                  nop
                  slt          zero, s10, s11
                  slli         tp, s4, 19
                  sra          t6, a1, a5
                  auipc        a5, 780044
                  and          a5, s10, s10
                  andi         s11, s3, 645
                  lui          a7, 494534
                  slti         a6, gp, 354
                  or           sp, s7, sp
                  srai         t2, a0, 12
                  slt          gp, a7, t6
                  srai         t0, a6, 29
                  or           a1, s6, s11
                  srli         a6, t0, 1
                  or           s7, s5, zero
                  xor          s3, t3, s6
                  srl          s4, s1, t4
                  sra          t2, a3, t4
                  sra          s11, s2, zero
                  sll          t5, a1, t4
                  sltiu        a4, t3, 459
                  lui          t2, 512809
                  sltiu        zero, sp, 104
                  nop
                  andi         a2, a0, 1376
                  ori          s11, a1, 306
                  sub          t2, s6, t6
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_7
                  li           t6, 0xfcb8ca55
                  li           a0, 0xffffffff
                  li           a6, 0x0
                  li           s9, 0xffffffff
                  li           t5, 0x80000000
                  li           s3, 0x80000000
                  li           a3, 0xffffffff
                  li           s0, 0x0
                  li           s10, 0xffffffff
                  add          s9, s3, t6
                  nop
                  auipc        s0, 671407
                  add          a0, s10, t5
                  sub          a3, a6, a3
                  auipc        a4, 450055
                  sub          s9, a4, a6
                  nop
                  add          s0, s0, s3
                  addi         s10, t5, -1756
                  sub          t5, a4, t5
                  nop
                  addi         a4, a6, 1587
                  auipc        s0, 626639
                  auipc        a4, 70167
                  add          a3, a6, t6
                  auipc        a4, 713156
                  auipc        s0, 208606 #end riscv_int_numeric_corner_stream_7
                  xor          sp, sp, ra
                  sra          t6, t2, gp
                  or           s7, s4, s4
                  nop
                  lui          s10, 976052
                  or           s7, a1, zero
                  nop
                  and          gp, t3, s8
                  slt          s11, t3, tp
                  nop
                  ori          t0, s1, -886
                  andi         a3, a2, -1497
                  srai         s11, s2, 11
                  add          a2, t1, s11
                  add          s4, t1, t1
                  srli         a7, gp, 11
                  srli         sp, s5, 31
                  xor          gp, s0, a5
                  add          ra, a0, zero
                  and          a3, a5, s9
                  add          s11, s4, s7
                  srai         a5, s7, 8
                  xor          t0, t1, s1
                  sra          a1, a2, a5
                  andi         s11, s5, -1990
                  slti         a4, s1, 1676
                  andi         s3, t4, -963
                  srli         t5, s8, 8
                  and          s2, t3, s4
                  lui          t2, 810160
                  add          a7, a7, a7
                  auipc        s3, 371723
                  xori         a6, s9, 1842
                  sltu         a3, t1, tp
                  slt          t5, a6, t5
                  andi         s3, a0, -1597
                  or           gp, s3, s10
                  sltiu        s11, a5, 1004
                  nop
                  sltiu        a1, tp, 1015
                  addi         s9, zero, -1563
                  addi         sp, s11, 539
                  srai         t0, a1, 25
                  or           a7, t5, ra
                  xor          s2, gp, s0
                  ori          t6, a6, 1022
                  nop
                  srl          t1, s5, tp
                  srl          s2, s9, a4
                  xori         a7, s5, 669
                  srai         t6, a6, 15
                  sltu         a5, t2, a7
                  srai         sp, t5, 13
                  nop
                  sll          t2, t4, t0
                  lui          s4, 624085
                  add          t6, s7, a0
                  srai         gp, ra, 12
                  sltiu        ra, tp, -552
                  ori          tp, tp, -1497
                  nop
                  ori          t3, zero, 1370
                  sll          a7, t0, a1
                  sltu         a5, gp, s1
                  auipc        ra, 992345
                  srl          t5, a2, t5
                  slti         a2, s2, 77
                  addi         gp, t0, -499
                  lui          a1, 438610
                  and          s7, s10, a6
                  addi         a0, t5, 320
                  sll          t0, t6, s5
                  or           s10, s9, a1
                  add          a5, s1, a1
                  andi         sp, t4, -569
                  slti         t1, t1, -28
                  andi         a5, a7, -1838
                  sltiu        s3, sp, 91
                  sra          s7, gp, zero
                  xor          s3, s5, s9
                  sltu         s9, a5, sp
                  srl          s8, a3, a0
                  sll          a4, gp, s4
                  slt          a3, s0, t6
                  and          sp, a1, t6
                  sll          t0, t6, s2
                  addi         a7, s9, -1229
                  sltiu        t2, a2, -1225
                  sra          s7, a0, zero
                  nop
                  addi         a6, s11, -1996
                  sub          s9, a4, a5
                  nop
                  sll          s4, a4, zero
                  ori          s11, s9, -264
                  srli         s0, t2, 26
                  srai         t6, s4, 30
                  slt          s9, t2, t6
                  add          s8, s10, ra
                  slt          a5, t6, s9
                  slt          s6, a7, zero
                  xori         a6, sp, -122
                  or           a0, t2, s0
                  and          s6, gp, zero
                  nop
                  sra          tp, s11, a4
                  sra          s9, a1, s10
                  srai         t0, s0, 30
                  auipc        t0, 1007061
                  srl          ra, t3, a7
                  sll          s4, s9, s0
                  slt          a3, t4, s7
                  auipc        gp, 589680
                  sra          t5, tp, ra
                  slli         t2, s0, 5
                  slti         t2, s1, 1227
                  slli         s7, a5, 0
                  slti         gp, ra, 779
                  and          a3, s4, s10
                  slt          ra, tp, t2
                  srai         t1, a5, 4
                  slt          a6, s10, s11
                  lui          a6, 903416
                  sll          a6, t6, a4
                  lui          s10, 98054
                  slt          sp, gp, s9
                  add          t1, zero, s3
                  sll          a5, s4, tp
                  or           tp, t6, t0
                  nop
                  lui          gp, 663047
                  srl          ra, zero, a1
                  ori          a6, s7, -1190
                  sltu         a4, s6, t5
                  xori         t1, a0, 1452
                  sll          gp, s3, a1
                  and          a2, t5, s0
                  slti         a2, s10, 899
                  sub          s9, s0, t2
                  sll          a3, s6, s10
                  sll          s4, s1, sp
                  xori         t0, s0, 622
                  sltu         sp, s10, s7
                  xor          s9, a4, s1
                  sub          a3, gp, t2
                  ori          s10, a5, -1103
                  lui          a5, 614314
                  sltu         s3, s8, s5
                  slti         a1, a0, -1625
                  ori          a4, sp, -382
                  sltiu        a4, a7, 1542
                  ori          a2, t4, 1356
                  sub          s9, t6, a4
                  sll          a1, s10, s10
                  slli         t2, sp, 14
                  auipc        ra, 1033321
                  srl          s9, s4, s1
                  addi         s8, s9, -1816
                  lui          t0, 376018
                  srli         ra, a6, 20
                  and          a4, a7, a7
                  sll          s10, a2, a7
                  slli         a6, a1, 30
                  srli         t6, a6, 21
                  xori         a6, a6, 155
                  srl          a0, sp, t2
                  slli         s8, t2, 19
                  andi         a7, s8, 1964
                  add          a7, t2, s2
                  slli         s11, s2, 15
                  andi         s0, ra, -767
                  xor          s2, s8, a0
                  slti         zero, a0, 1857
                  ori          s4, s11, -320
                  xor          sp, zero, s11
                  sltiu        s7, t0, -980
                  sll          t0, sp, s5
                  lui          a3, 563450
                  srai         a5, s2, 11
                  and          s4, ra, ra
                  and          a2, t5, s5
                  andi         s10, ra, -186
                  slti         ra, a0, -527
                  sub          a3, gp, a2
                  andi         a3, a4, 1836
                  xor          s4, a4, sp
                  add          a0, s10, t0
                  sll          a2, s3, a4
                  srai         t2, t4, 3
                  slti         t2, a0, -555
                  slti         s3, a7, -715
                  xori         s6, s9, -1427
                  sub          t0, t1, s0
                  sltu         s8, sp, s1
                  xori         s0, s3, -796
                  ori          a6, t1, -255
                  ori          s3, s11, 699
                  sra          a4, a2, s9
                  xor          s6, gp, t3
                  slti         zero, s9, 137
                  srli         s7, zero, 4
                  xor          s4, s0, a0
                  lui          a3, 419294
                  sra          a0, a3, a0
                  sra          a1, tp, s3
                  srli         gp, sp, 17
                  nop
                  addi         s2, t6, -12
                  slli         s11, a6, 10
                  slt          t5, s4, s7
                  and          t1, s0, t5
                  addi         zero, a4, 1199
                  or           t0, zero, a4
                  add          s2, s0, s4
                  add          s8, s2, t1
                  auipc        s11, 371851
                  auipc        s8, 445780
                  add          a2, tp, s11
                  xor          a7, a1, a7
                  xor          s2, zero, t5
                  ori          s10, a6, 456
                  srl          t6, t6, t2
                  sltu         s0, a3, t0
                  lui          s9, 143507
                  andi         sp, a5, -1981
                  slt          a2, t0, a4
                  add          s9, a5, a3
                  ori          t0, a7, 24
                  slti         a3, s3, -1138
                  addi         ra, ra, 1975
                  srl          gp, a3, s7
                  slt          t2, s4, a1
                  addi         t2, a4, 312
                  sub          zero, s7, s3
                  lui          s8, 710685
                  slt          s4, ra, a4
                  srl          s3, a2, a6
                  or           a7, gp, t4
                  srli         a0, a3, 4
                  xor          a4, s3, sp
                  ori          a3, s11, 1690
                  srai         tp, a2, 24
                  auipc        a6, 812443
                  nop
                  slli         t2, s7, 21
                  li           t6, 0x80000000 #start riscv_int_numeric_corner_stream_6
                  li           s11, 0xffffffff
                  li           a6, 0xffffffff
                  li           gp, 0xecd2a8a5
                  li           a2, 0x12571c12
                  li           a4, 0x0
                  li           t2, 0x83955d7f
                  li           s2, 0xffffffff
                  li           sp, 0x80000000
                  li           s7, 0x80000000
                  auipc        s11, 110726
                  lui          t2, 821437
                  lui          s2, 251428
                  sub          s2, s11, sp
                  add          gp, gp, s7
                  auipc        t2, 423940
                  nop
                  addi         t6, s11, 1663
                  auipc        sp, 851890
                  nop
                  lui          s7, 454644
                  sub          sp, t2, sp
                  nop
                  sub          t2, a6, gp
                  lui          a6, 200521
                  lui          a2, 107966
                  addi         sp, t6, -552
                  auipc        s7, 745719
                  add          t6, a2, a2
                  auipc        a4, 270538
                  add          gp, s2, t2
                  nop
                  nop
                  add          gp, sp, a6
                  add          s2, t6, s2
                  addi         gp, s2, -1257 #end riscv_int_numeric_corner_stream_6
                  xori         a7, s7, -1641
                  srai         sp, s2, 3
                  xor          s10, t4, s5
                  slli         t0, a7, 30
                  ori          a4, s3, 1311
                  sra          s0, s5, s3
                  and          a5, s3, ra
                  addi         s8, s2, -1036
                  or           tp, t4, a2
                  and          s0, a4, s7
                  sub          a7, s6, a6
                  add          s3, s0, s6
                  nop
                  nop
                  slli         ra, t2, 0
                  or           t6, a3, t6
                  sub          zero, t2, t5
                  add          t2, t3, a1
                  addi         a0, sp, -1888
                  xori         s6, a0, 1596
                  and          a5, a5, a4
                  slli         a3, zero, 10
                  sub          t5, s5, a7
                  sra          a1, a0, a5
                  xor          a1, t5, s7
                  slti         zero, s9, -138
                  xori         tp, s10, 259
                  slti         s4, s8, 1832
                  slt          s11, a4, a4
                  sra          tp, gp, s10
                  srli         a7, s1, 27
                  sltiu        t5, gp, -1021
                  and          t5, zero, a1
                  sll          s8, s0, a7
                  andi         a4, s9, -1789
                  ori          t1, s7, -1053
                  slli         s6, s8, 9
                  nop
                  srli         a2, t2, 18
                  sub          t3, s2, a5
                  slt          s3, a4, t0
                  sub          a1, t4, s8
                  srli         s8, s2, 2
                  andi         a4, a7, -313
                  sub          t3, a2, s11
                  sltu         gp, s6, sp
                  and          a0, a2, a0
                  srl          a1, a5, a0
                  slli         a0, t1, 16
                  sll          a1, a3, ra
                  auipc        t5, 954516
                  sra          t2, s0, a2
                  nop
                  add          a7, a7, t4
                  andi         a5, t4, -1158
                  and          s9, a7, ra
                  srl          zero, t1, s3
                  auipc        s10, 253255
                  or           s11, a5, t0
                  lui          s4, 478833
                  sra          s9, a1, s8
                  add          a5, t1, t2
                  addi         t0, s10, -1704
                  sltiu        s11, ra, 1665
                  addi         t1, s11, 1311
                  auipc        t1, 314627
                  slt          s11, a6, a1
                  sltu         a3, t2, a4
                  and          s8, t0, s5
                  slt          s0, s6, a7
                  srai         s10, s1, 2
                  sra          a2, t1, gp
                  srl          gp, s9, gp
                  slt          a2, t3, s2
                  sll          a3, s5, s10
                  auipc        tp, 501164
                  slli         s3, s8, 28
                  sltiu        s7, s7, -801
                  andi         tp, a6, 508
                  srai         a0, a5, 24
                  lui          s4, 25349
                  or           a2, t2, ra
                  xori         tp, t5, 1022
                  xori         s11, s4, -1255
                  and          gp, zero, a4
                  sltu         s0, s1, s9
                  lui          s6, 759245
                  slt          s2, tp, s1
                  xor          gp, t2, s10
                  ori          t1, s7, -1328
                  add          a5, s6, t0
                  slt          s2, s4, t1
                  sltiu        t5, s0, 1137
                  sltu         s11, s6, s0
                  srli         t3, a1, 23
                  or           s2, s5, a6
                  srli         a3, t5, 16
                  sltiu        s11, gp, -1619
                  nop
                  slti         a5, gp, 832
                  addi         s3, t4, -1973
                  addi         a2, s6, -554
                  sll          s7, s6, t1
                  srli         t5, t4, 18
                  xor          s9, a2, s0
                  sltu         s0, a6, t3
                  and          t3, s6, a1
                  ori          t6, s6, -1821
                  or           a5, a0, s4
                  xori         t1, a7, -775
                  and          s11, a3, s11
                  slli         a0, s3, 19
                  andi         t1, s5, 1717
                  srl          t2, t5, ra
                  sub          a2, a6, s5
                  slt          t3, t4, s0
                  ori          s0, t5, 571
                  addi         a1, t0, 1705
                  srl          sp, s1, a1
                  slti         s2, a3, 816
                  sltu         s3, s9, s7
                  sub          sp, sp, a1
                  srai         a3, t4, 17
                  nop
                  and          gp, t0, ra
                  slt          s8, a4, a2
                  andi         s2, a5, 1358
                  sltiu        s3, s5, -256
                  slli         t0, zero, 21
                  addi         s10, gp, -1411
                  sltiu        t6, s1, 809
                  srli         s9, a1, 11
                  sub          t6, a3, t4
                  auipc        a3, 450117
                  lui          s0, 1010369
                  sltiu        t1, s10, -1525
                  and          s8, t0, a4
                  or           s6, t3, t3
                  addi         a6, ra, -1358
                  srai         s7, t3, 2
                  addi         a4, a4, 1699
                  andi         t2, s6, 1123
                  srai         s0, t4, 23
                  slti         s2, s3, -1248
                  andi         s0, t1, -1646
                  lui          sp, 1027853
                  lui          t1, 795951
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           s4, 0x80000000
                  li           a4, 0x80000000
                  li           t3, 0x4cbf6b96
                  li           s7, 0xffffffff
                  li           t6, 0x0
                  li           s11, 0x0
                  li           s3, 0x80000000
                  li           ra, 0xffffffff
                  li           a3, 0x0
                  add          t6, a4, s3
                  addi         t3, t6, 11
                  auipc        ra, 698335
                  add          a3, a3, ra
                  nop
                  add          s4, ra, ra
                  auipc        ra, 807621
                  sub          ra, a4, s7
                  nop
                  auipc        a4, 907601
                  auipc        s3, 565910
                  sub          s7, a3, s7
                  auipc        s3, 817114
                  add          a4, s7, t3
                  addi         s3, t6, 21
                  sub          s8, s4, t3
                  add          s7, s4, s8
                  nop
                  add          a3, s8, s11
                  lui          s8, 288045
                  lui          s7, 1036431
                  addi         ra, s3, -1962
                  auipc        s3, 250326
                  add          s3, a4, ra
                  sub          s8, s4, s7
                  add          a4, s3, ra #end riscv_int_numeric_corner_stream_18
                  srli         a5, s9, 16
                  slti         s9, t4, 1865
                  and          a0, s3, s0
                  srai         a4, t4, 29
                  srli         a0, a3, 7
                  xori         t6, s8, 1045
                  andi         s8, t5, -840
                  sub          a4, s11, ra
                  slli         t6, a1, 11
                  xor          s7, t5, s5
                  and          a0, gp, a2
                  sltu         s8, a5, ra
                  sra          s8, t4, s10
                  xori         s0, s8, 192
                  andi         a0, t1, 977
                  add          a3, a6, s5
                  xori         a0, s5, 1918
                  lui          s6, 533325
                  addi         t6, a6, 1566
                  srai         a5, s11, 31
                  slti         a7, gp, 1511
                  xor          s4, s2, ra
                  addi         a5, a0, -285
                  slli         s8, t3, 5
                  srli         s7, s11, 27
                  addi         a0, t6, 1939
                  xori         a6, s2, -1877
                  lui          t2, 468132
                  add          s9, s11, s5
                  ori          s7, s10, -1619
                  and          t6, s5, s6
                  slti         s6, a7, -1832
                  sll          tp, sp, a4
                  and          s0, s4, s3
                  sltiu        a0, tp, -901
                  nop
                  srl          ra, s0, sp
                  slt          a5, s7, t4
                  lui          s7, 414689
                  slt          s7, a2, s2
                  xori         t5, t3, -1243
                  sub          gp, s5, s0
                  auipc        t3, 40484
                  srl          a1, s7, s9
                  or           t6, a7, s8
                  slt          a5, s0, gp
                  auipc        s6, 173115
                  sltiu        gp, s6, 1336
                  srl          s6, s7, a2
                  addi         a7, t0, 816
                  slt          s11, a1, t3
                  ori          t0, s0, -371
                  slli         s2, t6, 11
                  srl          s8, s5, a6
                  addi         s11, s8, -1863
                  andi         t5, s5, 1879
                  sll          a5, t2, zero
                  lui          s3, 109501
                  nop
                  andi         s6, a7, 80
                  sltu         gp, s5, s10
                  add          t3, t0, t2
                  lui          t2, 316787
                  addi         s0, t2, 422
                  or           a0, t6, s10
                  srl          a5, s4, gp
                  auipc        t1, 933503
                  and          s6, a0, tp
                  srai         s3, s1, 26
                  sub          t6, s5, t5
                  slli         t2, s6, 1
                  xor          gp, a2, tp
                  lui          a2, 864902
                  nop
                  slli         t2, a2, 27
                  auipc        a0, 677349
                  srli         a7, t0, 24
                  srli         a5, sp, 17
                  nop
                  addi         t0, t1, 958
                  addi         s0, s4, -597
                  srli         a5, s2, 6
                  or           s9, s4, s11
                  slt          s4, s9, a6
                  srl          zero, t2, tp
                  ori          a7, s7, 1026
                  and          s9, zero, a2
                  srl          ra, t0, a6
                  srli         t0, sp, 17
                  ori          s8, s9, 879
                  sltiu        tp, a5, 1349
                  xor          s2, a0, s9
                  addi         s3, t5, -1629
                  nop
                  srai         gp, tp, 20
                  sra          s4, s0, a1
                  ori          a4, a6, 224
                  sra          t0, sp, s2
                  sra          t6, s4, t0
                  sll          gp, a2, sp
                  auipc        t5, 179906
                  and          t6, s0, sp
                  sll          s10, s5, a5
                  sll          t3, ra, a6
                  andi         ra, ra, -1315
                  add          sp, tp, s1
                  srli         s9, a0, 25
                  add          a3, a6, a3
                  ori          s9, zero, -891
                  lui          a7, 231532
                  srai         t6, sp, 24
                  and          gp, s7, t0
                  xor          s10, s5, t1
                  slti         a4, s1, 958
                  add          s6, s6, t1
                  slt          a4, t2, s1
                  add          a0, t6, a2
                  sub          s3, s2, t3
                  add          a0, zero, s3
                  add          s8, gp, t3
                  add          a3, a0, s3
                  sra          a7, s5, ra
                  or           s4, t2, t5
                  addi         s10, sp, 1088
                  slli         t2, s9, 1
                  sub          t5, t2, sp
                  sra          a0, gp, s10
                  srli         t1, s9, 20
                  sll          a4, a5, t3
                  srli         s0, t0, 31
                  sltu         a4, a3, a4
                  sltiu        s11, s10, 1206
                  lui          s9, 331630
                  slt          sp, a0, a0
                  xori         a1, s6, -53
                  sll          s10, s1, t2
                  or           t0, s3, t5
                  auipc        s10, 909483
                  lui          a1, 763410
                  nop
                  and          t2, sp, sp
                  nop
                  auipc        t2, 817768
                  xor          t1, sp, s9
                  srl          a4, s6, s5
                  sltiu        zero, a3, -1170
                  slli         tp, s6, 20
                  ori          a1, t5, -438
                  xor          a2, t1, gp
                  or           a2, t2, ra
                  sltu         s3, s4, s3
                  nop
                  sub          s3, s9, s10
                  slt          gp, zero, s6
                  sll          gp, s7, s0
                  srli         t3, a3, 0
                  nop
                  addi         s10, t4, 1026
                  auipc        s11, 781064
                  slli         s11, t0, 8
                  xor          s11, zero, a4
                  lui          s7, 297823
                  lui          t1, 24122
                  nop
                  srai         s3, t6, 11
                  slti         ra, gp, 1283
                  srl          t1, s3, a2
                  nop
                  slti         s10, s5, 1930
                  slti         s0, t6, 1709
                  ori          s8, a7, 1075
                  srai         t0, sp, 23
                  sltiu        s11, s9, -1703
                  slli         s9, sp, 27
                  slt          s4, s2, t4
                  slli         s2, s6, 11
                  sltu         ra, ra, a7
                  sll          a0, gp, s4
                  slti         t2, gp, -910
                  sll          s0, s6, t6
                  sub          a1, s7, a0
                  addi         a2, s7, 1859
                  slli         a7, tp, 9
                  nop
                  sll          t5, s5, a2
                  and          s7, t6, a0
                  add          a4, ra, a4
                  ori          s6, t2, 796
                  sll          s7, t0, tp
                  lui          sp, 606652
                  slli         s8, t5, 23
                  nop
                  auipc        s9, 662108
                  slti         s11, s9, -2040
                  sra          a0, zero, gp
                  xori         a5, s4, 1086
                  lui          zero, 400302
                  ori          ra, s1, -172
                  lui          s10, 991520
                  auipc        tp, 156413
                  xori         s10, t2, -1517
                  addi         s11, gp, 0
                  slti         a4, s10, -1704
                  srl          a6, tp, gp
                  slt          a3, a6, a4
                  srl          a1, t4, s5
                  lui          a1, 325909
                  add          s8, ra, t4
                  addi         t0, s9, 1840
                  and          s6, a0, a7
                  sltiu        s7, s9, 1770
                  xor          a1, a4, ra
                  nop
                  sra          s2, a3, t2
                  srai         t6, s8, 31
                  xori         a7, s3, -231
                  srli         s3, a6, 30
                  sra          t5, t6, zero
                  srai         s6, a4, 1
                  sltu         s8, s9, a1
                  addi         t2, s7, -171
                  auipc        sp, 294322
                  sltu         a5, s2, a3
                  slti         a6, s8, 227
                  nop
                  ori          s3, s0, 366
                  add          a5, ra, s8
                  srl          s8, t6, a5
                  auipc        s2, 812226
                  srli         tp, s4, 3
                  slli         zero, s5, 30
                  sub          zero, s3, t5
                  or           s6, a7, t4
                  xori         t1, tp, 1005
                  sub          a7, a1, s9
                  xori         s7, sp, -280
                  xori         t3, a7, -279
                  and          s7, t3, gp
                  sll          gp, t5, s3
                  slti         t6, t2, -548
                  srli         s0, a3, 23
                  slt          t3, s10, s3
                  sltiu        s3, zero, -1272
                  ori          gp, s7, -724
                  nop
                  or           a2, s9, s2
                  slti         a5, s6, 1633
                  ori          zero, a5, -1506
                  srl          a0, a2, zero
                  ori          s0, s1, -1969
                  andi         s10, s7, -849
                  nop
                  sltu         sp, a5, s6
                  slli         s6, a7, 13
                  auipc        s3, 566000
                  auipc        zero, 245748
                  sra          a6, zero, s11
                  ori          s7, tp, -1058
                  or           gp, t4, s10
                  slt          t2, t3, s11
                  sltu         zero, a3, s2
                  slli         s8, zero, 13
                  sll          s9, s9, t5
                  slli         t0, t0, 20
                  sra          s6, s9, a1
                  srl          a6, a4, s9
                  and          t5, t2, gp
                  addi         ra, a3, 405
                  srai         a1, tp, 10
                  sll          ra, s9, t3
                  sltiu        s10, s0, 199
                  add          t2, a7, a5
                  sll          t6, s8, s4
                  sltu         zero, a5, tp
                  sll          a7, s9, a1
                  sltiu        s11, a5, -1900
                  addi         ra, s3, -1471
                  xori         tp, s5, 988
                  lui          s9, 290723
                  srai         s7, t0, 0
                  slt          a7, zero, s6
                  auipc        t5, 461371
                  and          t5, a2, tp
                  slt          t1, a4, s0
                  srl          t3, a0, a4
                  auipc        s8, 734622
                  srai         s4, s6, 5
                  sub          s0, a7, s3
                  and          s3, s5, s5
                  srai         t0, s5, 30
                  ori          tp, s5, 957
                  ori          zero, t1, 941
                  or           s0, t6, t5
                  srai         a0, tp, 14
                  slti         a5, zero, -625
                  sra          s3, a7, a7
                  sra          s6, a7, t2
                  addi         a4, a5, -586
                  nop
                  andi         s10, sp, 1888
                  sra          sp, s0, s3
                  sub          s11, s3, s9
                  slt          a6, a0, a4
                  addi         a1, s0, -142
                  sltu         s11, s10, t5
                  nop
                  sltiu        sp, s9, 405
                  ori          zero, a5, 960
                  slt          t6, s7, zero
                  srli         s11, s7, 26
                  nop
                  ori          t1, s10, -637
                  srai         sp, gp, 6
                  nop
                  add          a5, s6, t5
                  and          a3, t4, s5
                  or           a4, zero, a7
                  nop
                  and          s6, s10, s2
                  and          t3, a1, t4
                  xori         s7, t1, -651
                  sll          s10, s11, s10
                  slti         s0, a4, -1220
                  srai         s3, a7, 5
                  slt          s4, a4, s10
                  lui          a0, 147127
                  auipc        a0, 80779
                  addi         a4, a4, -154
                  slt          a3, t4, t0
                  sltu         t3, a3, t5
                  xor          t2, t4, tp
                  xor          a3, a6, a2
                  slli         a7, a3, 1
                  add          t1, zero, s0
                  andi         a3, zero, 1805
                  sub          a2, t5, s4
                  andi         zero, s10, -927
                  srai         s9, a4, 28
                  sll          sp, s3, a1
                  sltu         a5, a6, t5
                  slli         s2, s8, 29
                  slti         t3, s11, 1709
                  nop
                  nop
                  or           t2, s7, s10
                  xori         a6, a7, 1590
                  sltu         a6, a7, t0
                  addi         t5, t1, -1228
                  lui          t6, 860431
                  xori         t3, tp, 957
                  sltu         s9, s6, s1
                  add          sp, t4, t0
                  srai         s8, s0, 1
                  sltu         s8, tp, t5
                  auipc        a1, 47973
                  slli         s10, s10, 12
                  sra          a2, a6, zero
                  slt          a7, a2, a1
                  xor          s0, a5, t3
                  slt          sp, t6, t5
                  srai         s7, a1, 9
                  addi         a1, t4, -593
                  srl          s11, t0, a2
                  or           t0, a0, a5
                  xor          s4, s10, tp
                  or           s10, zero, zero
                  or           tp, gp, t5
                  lui          a1, 1012020
                  andi         a5, t1, -132
                  auipc        s6, 334586
                  xori         a1, t6, 1510
                  or           t3, s9, s11
                  sub          s6, t1, a2
                  sub          a4, s3, t4
                  and          a5, s8, tp
                  srai         t3, s10, 19
                  sltu         t1, t3, zero
                  slt          t1, s0, s1
                  and          s9, s10, a6
                  sltu         s11, tp, s0
                  xori         a5, s1, 1623
                  sll          t2, t6, t2
                  add          t2, s11, a3
                  and          ra, s4, s4
                  add          t2, s11, s10
                  addi         sp, a0, 1072
                  ori          tp, a3, -626
                  nop
                  sra          s9, t3, a5
                  slti         a0, t4, 1166
                  slli         s8, s6, 24
                  sltiu        s8, s1, -812
                  xori         s4, s7, -1206
                  addi         s9, t4, 1408
                  srai         s11, s10, 5
                  sll          s2, s6, gp
                  slt          zero, s10, s1
                  sub          s2, a1, a1
                  li           s11, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           a0, 0xffffffff
                  li           s0, 0x80000000
                  li           s9, 0x0
                  li           s3, 0xf4090731
                  li           s6, 0x80000000
                  li           sp, 0xcb9bfea6
                  li           t3, 0x80000000
                  li           gp, 0xffffffff
                  li           a3, 0x0
                  auipc        s3, 888985
                  nop
                  add          s9, s9, a0
                  addi         gp, a0, -546
                  add          a3, a0, gp
                  add          sp, s0, a0
                  addi         s6, gp, -784
                  sub          s11, a3, a0
                  auipc        s0, 234853
                  add          a0, a3, s11
                  addi         s0, t3, -598
                  auipc        a0, 700194
                  addi         gp, t3, -702
                  addi         t3, s11, -1125
                  auipc        s9, 144326
                  addi         s11, a0, -1342
                  addi         sp, a0, -1766
                  sub          s3, s6, s6
                  addi         a0, s6, 1213
                  add          a3, s9, t3
                  sub          sp, t3, s6
                  auipc        gp, 930073
                  nop #end riscv_int_numeric_corner_stream_10
                  xori         a7, a6, 1202
                  add          a4, a3, zero
                  sltiu        s2, s6, 1402
                  slt          a6, a0, s2
                  sub          a2, t3, t6
                  slti         t1, s4, -768
                  xor          sp, s10, s7
                  xor          a1, s4, t1
                  slt          s3, a5, t3
                  slt          zero, s8, a3
                  sub          a3, s0, a7
                  nop
                  lui          t6, 839380
                  nop
                  srai         t6, a3, 28
                  sll          s3, s8, t2
                  sll          a3, a7, s10
                  slti         s11, s2, -1148
                  sll          s0, s1, s3
                  auipc        s4, 582146
                  sra          t1, s6, t3
                  and          zero, s0, t2
                  sltu         a1, tp, t6
                  sra          t0, t6, gp
                  slli         t5, tp, 17
                  sra          t6, ra, a7
                  nop
                  add          t1, a1, a7
                  or           tp, a5, s7
                  andi         tp, tp, -1483
                  slti         s0, a4, -656
                  slli         a3, a0, 7
                  srai         s7, a2, 5
                  auipc        a4, 434413
                  srl          s7, t6, ra
                  srli         t1, gp, 0
                  slt          a2, t0, a4
                  or           t5, t2, s7
                  auipc        t5, 32727
                  srli         s3, a1, 25
                  sll          s4, gp, s4
                  sra          s2, tp, s7
                  srli         t0, t6, 3
                  sll          s4, t3, a0
                  auipc        s2, 112425
                  srl          t6, s0, zero
                  srai         s9, t4, 5
                  or           s8, s4, tp
                  sltu         a1, s3, s5
                  srli         s8, a7, 28
                  add          s10, s10, s9
                  auipc        a4, 592661
                  and          s9, s8, s11
                  slti         s2, a7, -249
                  add          s3, a6, s0
                  and          ra, s8, tp
                  lui          a5, 628026
                  srl          s3, t0, t6
                  slli         ra, a6, 17
                  srai         a3, sp, 16
                  slt          a4, zero, a2
                  ori          tp, t3, -1672
                  slti         t3, a6, 1905
                  sltu         t0, s8, s9
                  ori          a4, sp, -1137
                  and          a0, s0, a3
                  srai         a1, s1, 1
                  srli         s11, a0, 27
                  andi         ra, t3, -1591
                  or           a0, a2, a4
                  andi         s2, a7, 1137
                  andi         s6, s4, -751
                  xori         a0, tp, -403
                  slti         a6, a4, -966
                  srai         sp, s1, 4
                  sll          gp, t1, a5
                  srli         s4, s10, 26
                  lui          s9, 380609
                  slti         s9, a1, 521
                  xori         t5, s8, -84
                  slt          a5, s2, a1
                  xori         s7, ra, 1762
                  sub          a7, a5, t3
                  slt          a7, a6, t6
                  lui          s4, 309961
                  srli         s6, t3, 31
                  srli         t1, tp, 18
                  ori          a2, t3, 1196
                  ori          tp, t6, 1565
                  lui          tp, 942675
                  xor          t1, s9, s2
                  or           a3, s10, a0
                  slt          t6, a7, t1
                  andi         a4, gp, -2031
                  srai         s3, a3, 16
                  addi         s9, t4, -1229
                  nop
                  ori          s9, tp, -1728
                  xor          a4, s1, zero
                  slt          a3, t4, a2
                  sltiu        sp, a6, -47
                  ori          a0, a4, -373
                  srl          t6, s4, t2
                  sub          t0, gp, s4
                  nop
                  sltiu        tp, a6, 294
                  srl          s11, a3, s1
                  auipc        t6, 945551
                  sltiu        a2, s4, 988
                  add          zero, s10, t2
                  andi         s9, t2, -687
                  lui          gp, 586771
                  slt          zero, s5, a0
                  addi         t2, a1, 1514
                  xor          a3, a0, a1
                  xor          a6, s5, tp
                  andi         a2, t3, 56
                  sll          gp, s11, a2
                  srli         s4, s10, 2
                  nop
                  xori         a1, t4, 2004
                  andi         gp, a1, 913
                  nop
                  xori         t3, s2, -948
                  nop
                  slt          a1, s4, a7
                  addi         sp, a5, 1911
                  sub          a6, ra, ra
                  slt          s7, t2, a1
                  slli         t3, t5, 21
                  and          a5, s7, a2
                  sltiu        a3, gp, -1657
                  xori         a1, tp, 1121
                  slt          tp, s11, gp
                  nop
                  xori         s4, s11, -1567
                  sltiu        a7, a6, 1560
                  sra          t6, s10, a2
                  sll          s7, a1, s2
                  ori          s9, tp, 488
                  or           s11, t6, s2
                  add          t5, s9, a2
                  or           s6, tp, s3
                  sub          t3, s9, t1
                  slti         s6, s1, 899
                  sra          sp, a6, a2
                  srai         s4, a4, 17
                  andi         s9, s7, 997
                  addi         a1, s2, 1779
                  add          t3, t3, s1
                  sra          ra, gp, a1
                  xor          s8, s11, t2
                  slti         gp, t1, -175
                  ori          t0, t3, 1747
                  and          t0, a5, gp
                  srl          tp, t5, t3
                  or           sp, s0, a4
                  sll          t2, a4, s2
                  auipc        s7, 979359
                  ori          t3, a6, -1082
                  sub          s9, zero, s9
                  auipc        sp, 890476
                  and          s9, t0, s7
                  sltiu        a6, t6, -1791
                  slli         s10, a2, 29
                  slti         s0, s7, -1233
                  addi         t3, t1, -1169
                  sll          s2, t6, t1
                  add          t3, tp, s5
                  and          s4, s8, gp
                  lui          t1, 650130
                  andi         t2, a4, -1034
                  xori         t1, a5, -699
                  sll          s3, gp, t3
                  sltu         ra, a5, s0
                  or           t0, a0, s1
                  ori          t5, sp, -46
                  sra          t0, s2, s6
                  ori          t2, t6, 286
                  or           s8, ra, a1
                  nop
                  srli         a0, t1, 19
                  and          ra, a5, s11
                  sra          t6, ra, s5
                  slt          s6, a4, s10
                  slti         s3, s4, 1919
                  xor          a1, s4, zero
                  auipc        s8, 120533
                  xor          s9, s0, gp
                  sltiu        t6, a3, 2020
                  sll          ra, s0, s9
                  sltu         tp, s2, ra
                  slti         zero, s4, -455
                  slli         tp, zero, 27
                  add          s0, s8, s0
                  andi         a0, s6, -1841
                  ori          a1, t6, 1088
                  xori         s8, t2, -373
                  slti         s0, a1, 858
                  or           t0, s2, s4
                  ori          s6, a0, -398
                  sltu         s6, t2, s4
                  slli         a6, t3, 5
                  nop
                  sra          sp, s5, zero
                  addi         s7, s6, -1057
                  xor          a1, t6, t1
                  slli         sp, a0, 8
                  add          s8, s4, s2
                  addi         tp, a4, -129
                  srl          t5, t3, ra
                  srai         a6, s1, 20
                  srli         sp, s9, 24
                  ori          a3, t4, -725
                  and          s10, s0, t4
                  auipc        ra, 904944
                  sltu         t2, gp, s6
                  slti         a1, s7, 1364
                  srai         a0, s0, 0
                  and          a7, t1, t4
                  ori          a7, a4, -111
                  sub          ra, s3, s3
                  slli         s9, a7, 17
                  xori         t2, gp, 1269
                  and          s3, s11, a4
                  and          s3, s11, a1
                  auipc        t6, 777617
                  srli         s7, t2, 12
                  xori         s8, s11, 1491
                  li           t3, 0x7c3510c4 #start riscv_int_numeric_corner_stream_11
                  li           a5, 0x80000000
                  li           s4, 0x80000000
                  li           a0, 0x80000000
                  li           tp, 0x82800c1e
                  li           t6, 0xffffffff
                  li           a6, 0xe132616e
                  li           a7, 0xffffffff
                  li           ra, 0xffffffff
                  li           s9, 0x6371683e
                  addi         a6, s4, 1354
                  auipc        a5, 340026
                  addi         tp, a0, 1566
                  lui          t3, 193010
                  nop
                  lui          a5, 499449
                  nop
                  sub          s9, t3, a6
                  lui          a6, 178745
                  lui          t6, 103506
                  lui          a0, 279600
                  lui          s9, 707114
                  lui          a7, 83741
                  auipc        s9, 286094
                  lui          a7, 727302
                  lui          s9, 536157
                  add          tp, t3, t6
                  nop
                  lui          s9, 1048456
                  sub          t6, t6, a0
                  lui          a7, 495282
                  auipc        a5, 804845
                  lui          a5, 241023
                  auipc        t6, 664087 #end riscv_int_numeric_corner_stream_11
                  addi         a0, t1, 296
                  and          s2, s3, s4
                  srai         tp, gp, 9
                  slt          tp, s11, t2
                  slti         t1, sp, 96
                  ori          a5, t4, 95
                  nop
                  auipc        t2, 548949
                  slli         s11, a7, 26
                  srai         a2, s6, 1
                  slt          a4, s6, sp
                  nop
                  xori         s6, tp, -253
                  srai         a4, t5, 15
                  sub          zero, t6, s3
                  slli         t2, a1, 20
                  lui          t0, 61458
                  lui          ra, 449001
                  slt          t3, a7, t3
                  nop
                  add          s6, s9, s0
                  sltiu        t2, s5, -69
                  sltu         s6, s8, t1
                  andi         a6, t2, -567
                  andi         a3, t2, 24
                  lui          t5, 814949
                  nop
                  sltiu        t5, s10, 1131
                  and          ra, s1, s2
                  slli         t5, s5, 16
                  addi         s2, s4, 22
                  xor          ra, a3, gp
                  and          tp, s10, s4
                  sub          zero, s9, t2
                  slti         t0, s5, 462
                  slt          a6, t6, zero
                  and          s6, t4, t0
                  slti         s2, s5, 1983
                  sltu         s7, a5, a1
                  sub          s6, a2, s1
                  sub          a0, s1, t0
                  nop
                  sra          s8, zero, zero
                  srl          gp, a1, s8
                  sltiu        a5, a4, -759
                  xor          a0, a1, s2
                  srai         t2, a3, 29
                  slt          t1, t6, s0
                  slt          sp, a6, a0
                  srai         t0, s4, 23
                  slti         t5, s6, 359
                  srai         a5, a6, 3
                  sub          t5, t6, s0
                  add          s11, t5, a5
                  add          a0, sp, s4
                  sll          s2, a1, a6
                  li           t6, 0x8fabd494 #start riscv_int_numeric_corner_stream_5
                  li           a5, 0xd7e5fae
                  li           s9, 0xffffffff
                  li           s6, 0x7cabf4c0
                  li           s4, 0xad9ae3ed
                  li           tp, 0xffffffff
                  li           s2, 0x80000000
                  li           t0, 0x0
                  li           a3, 0xffffffff
                  li           gp, 0xffffffff
                  nop
                  addi         a3, s2, 1536
                  nop
                  lui          t0, 750283
                  lui          s6, 838022
                  sub          a5, s2, s9
                  auipc        t0, 854720
                  auipc        a3, 640320
                  lui          s4, 46171
                  addi         s6, gp, 802
                  auipc        s6, 976524
                  lui          gp, 119266
                  addi         t6, tp, -458
                  auipc        gp, 1005984
                  addi         s6, s6, 1184
                  addi         t0, s4, 531
                  addi         s6, tp, 335
                  nop
                  auipc        s9, 1013034 #end riscv_int_numeric_corner_stream_5
                  and          zero, a3, s7
                  sltu         t3, s4, s6
                  auipc        a6, 603935
                  and          s6, t5, t1
                  srl          a6, a1, tp
                  sltiu        a6, t3, 1404
                  lui          t5, 569018
                  srl          s8, t4, s6
                  sltiu        s7, s10, -637
                  sltu         t2, t0, a2
                  srl          s7, s3, s7
                  ori          ra, sp, -1618
                  xori         ra, s10, 1532
                  addi         a3, t4, 206
                  add          s11, t5, s4
                  or           s3, sp, t5
                  sub          s2, a5, s7
                  xori         s4, s1, -181
                  lui          t1, 751007
                  slli         sp, a5, 17
                  li           s3, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           s4, 0x0
                  li           s6, 0xf9927a3d
                  li           s10, 0x80000000
                  li           a5, 0x80000000
                  li           s11, 0xffffffff
                  li           t2, 0xffffffff
                  li           t3, 0xffffffff
                  li           a0, 0xffffffff
                  li           tp, 0xc92489d0
                  lui          t2, 496816
                  auipc        s10, 20805
                  add          t3, t2, s10
                  lui          a5, 962260
                  nop
                  lui          s4, 74990
                  nop
                  nop
                  nop
                  nop
                  sub          tp, s11, s11
                  sub          t3, s6, s6
                  sub          a0, t3, s11
                  auipc        t3, 491676
                  auipc        s11, 559994
                  auipc        s11, 2227
                  nop
                  auipc        a0, 492769
                  addi         t3, s10, -1414
                  add          a0, tp, t3
                  lui          s3, 634537
                  addi         s10, s6, -1609
                  sub          t3, s10, a5 #end riscv_int_numeric_corner_stream_16
                  slti         gp, ra, -150
                  slt          tp, gp, t1
                  auipc        s7, 447857
                  sub          s6, s6, a1
                  srl          a3, s6, t2
                  sll          gp, t2, s4
                  nop
                  sub          ra, a7, a6
                  sltiu        t3, a6, 24
                  or           s3, s3, s6
                  sra          zero, a7, s9
                  sub          s10, s0, s5
                  lui          t2, 884787
                  sub          a3, t0, t3
                  sltiu        a7, s10, 812
                  or           s0, s10, t6
                  slti         gp, a4, -29
                  xor          a5, s0, s5
                  ori          s7, a2, 488
                  or           t1, t5, a2
                  and          s3, a1, t6
                  auipc        a5, 358675
                  lui          s11, 795755
                  slt          t0, t6, t6
                  add          t2, ra, zero
                  sub          a5, s2, a0
                  srli         s6, t4, 6
                  add          t5, t2, t6
                  xor          tp, a1, s1
                  ori          s9, a2, 225
                  nop
                  lui          a5, 35750
                  xori         s11, s9, 614
                  slti         ra, s3, -651
                  srli         s4, tp, 2
                  and          t0, s11, tp
                  sra          s2, a3, s5
                  addi         a2, a0, 782
                  sltiu        s2, s9, -1672
                  srai         a1, s9, 25
                  add          t0, a2, a1
                  xori         t2, t5, 1536
                  sra          gp, s10, a2
                  ori          a2, a2, -717
                  and          a0, s0, a1
                  sltu         t1, tp, a0
                  sub          tp, a1, s6
                  andi         s10, t4, -1529
                  sltiu        t2, s6, -320
                  srl          tp, s2, a4
                  slt          s6, t1, s5
                  auipc        s8, 132749
                  nop
                  sltu         s8, zero, zero
                  ori          t2, t1, -440
                  srli         a6, s2, 30
                  andi         t6, s7, -1311
                  sra          s9, t6, a5
                  sltiu        t6, a6, -1855
                  and          a1, s1, s4
                  addi         sp, t2, -1442
                  sltu         a7, t4, t2
                  xori         a0, s5, -1750
                  slli         a4, t3, 7
                  slli         s6, a4, 25
                  ori          a0, t6, -694
                  auipc        tp, 866020
                  sltu         s10, t4, a2
                  or           ra, a5, t3
                  or           tp, ra, a4
                  slti         t5, s10, -1362
                  sll          s10, s5, a2
                  xori         a7, a4, -607
                  or           t5, a2, t3
                  lui          s8, 243724
                  slti         s2, a4, 432
                  xor          a2, t3, s10
                  slt          sp, s8, t0
                  xori         s8, s9, 868
                  sltiu        s6, s2, 134
                  add          s6, s8, a3
                  ori          s7, t4, -1354
                  xori         ra, t3, 137
                  srl          a3, ra, a5
                  srli         sp, s7, 17
                  auipc        tp, 373964
                  and          s0, a2, zero
                  sra          a2, tp, gp
                  nop
                  sll          gp, a0, a5
                  xor          s4, a0, a2
                  sub          t6, s5, sp
                  lui          a0, 785829
                  sltu         ra, s5, sp
                  sra          a6, s10, s10
                  slli         a2, a6, 12
                  add          s10, a7, s9
                  ori          a3, s10, -605
                  addi         a5, t4, 576
                  srl          a4, t4, t1
                  nop
                  xori         t1, s11, 672
                  ori          t5, s0, -1787
                  xori         t2, a6, -1526
                  auipc        t1, 531209
                  sltiu        s9, s1, -363
                  and          a7, s7, s9
                  add          t3, t0, s3
                  slli         t0, a4, 11
                  auipc        s0, 754441
                  or           s8, t0, a2
                  addi         s4, sp, 226
                  auipc        ra, 112291
                  srli         a4, s0, 4
                  lui          s10, 74545
                  sll          ra, s3, t1
                  slt          a2, a6, t5
                  sltiu        zero, a0, -489
                  slt          a3, a2, t6
                  nop
                  auipc        s3, 203804
                  auipc        s8, 125049
                  ori          a1, s9, -500
                  slti         zero, t2, 1992
                  and          tp, ra, t0
                  or           s7, a1, s2
                  add          sp, ra, s2
                  slt          s0, a0, a7
                  sltu         s6, tp, a0
                  add          a0, s10, t1
                  add          zero, s7, t4
                  lui          a0, 947099
                  add          s10, t2, t5
                  addi         s10, ra, -783
                  sltiu        sp, s2, -2023
                  sra          a2, ra, zero
                  ori          s7, a2, -451
                  nop
                  ori          s3, t4, 295
                  sltu         t1, a7, sp
                  sub          zero, s3, s5
                  xori         s3, s3, 450
                  xor          s2, t6, t6
                  addi         s2, s10, -1957
                  addi         s8, t4, -1165
                  sltiu        a4, s2, -554
                  sll          gp, a5, a1
                  srai         a0, t6, 2
                  srl          a0, s10, s8
                  andi         s4, gp, -1857
                  sub          s11, s8, t4
                  sub          zero, s4, tp
                  slli         tp, s1, 26
                  nop
                  srl          s9, gp, t1
                  lui          t1, 750429
                  slt          a7, s7, s11
                  sll          s2, zero, s0
                  or           s8, t3, gp
                  sra          s11, s11, t1
                  sub          tp, a4, a1
                  and          a4, s2, s6
                  nop
                  lui          a3, 445585
                  addi         a0, s11, -1136
                  nop
                  sltu         t5, a2, gp
                  slt          a3, gp, t5
                  sltiu        s0, a2, 760
                  auipc        t3, 176735
                  slti         a6, t6, -1846
                  nop
                  srl          t3, s2, t6
                  auipc        a2, 993061
                  addi         ra, t0, -1810
                  xori         sp, s9, 625
                  xori         a1, s6, -407
                  sra          t3, tp, t1
                  srl          ra, a7, a2
                  sltu         t2, a1, a7
                  srai         s7, s10, 3
                  ori          a5, s2, -349
                  lui          t1, 322302
                  srai         s9, a4, 17
                  slti         s2, a0, -404
                  nop
                  slti         s7, s8, -1074
                  nop
                  xor          s0, s11, s5
                  sltiu        a4, a1, 1515
                  xor          s3, t4, s9
                  sltu         s3, gp, sp
                  sltiu        s3, t0, -1152
                  or           a2, s5, t4
                  sltiu        gp, s2, 504
                  addi         a3, t1, -1601
                  sra          gp, s5, a2
                  sub          s4, zero, s5
                  xori         a7, s3, -1545
                  srli         s8, s0, 4
                  sra          gp, s1, t6
                  auipc        ra, 940739
                  lui          a4, 711490
                  andi         zero, s11, -382
                  sltu         a2, a2, t3
                  slti         t1, s5, 1781
                  auipc        s10, 395968
                  sll          s3, zero, s8
                  ori          s10, t4, 1855
                  sltu         t5, a6, s7
                  add          t0, s11, s11
                  srli         t3, s9, 11
                  sltu         s0, s6, a6
                  ori          a4, zero, -162
                  or           s11, a2, s0
                  nop
                  slli         t5, t3, 30
                  add          tp, s7, s6
                  lui          s6, 143285
                  xor          t5, s3, s7
                  xor          s2, s7, t2
                  addi         a0, zero, 1808
                  sra          a5, s6, t3
                  sub          a6, sp, a5
                  srli         ra, t0, 25
                  srai         a0, gp, 14
                  nop
                  sltiu        a3, s1, 1919
                  lui          gp, 662921
                  auipc        a6, 865098
                  or           s7, t2, t5
                  lui          s10, 666276
                  slli         a6, s0, 26
                  auipc        s6, 295169
                  slt          s9, a3, a6
                  sub          sp, s5, ra
                  lui          tp, 682697
                  sltu         s7, a4, s3
                  xor          a5, a7, gp
                  slli         s9, t4, 29
                  ori          sp, s8, 216
                  srai         t1, s11, 30
                  and          a6, s11, s0
                  sltiu        s11, s5, 977
                  auipc        s7, 1032383
                  sltiu        a1, s3, 1992
                  and          s4, a2, a4
                  add          t6, t3, a1
                  sltiu        t2, ra, -1366
                  sra          a7, s9, s11
                  lui          ra, 585906
                  sltiu        a0, s11, 452
                  srai         s0, a2, 12
                  andi         s7, a3, 237
                  sltu         s3, a0, t1
                  addi         s7, a5, -114
                  srai         a5, s10, 21
                  slli         a1, a2, 31
                  sub          s11, a1, t3
                  nop
                  srl          a0, ra, s3
                  slti         s9, s10, -283
                  srl          t0, t1, s5
                  addi         s10, a3, 1802
                  sltu         a3, a3, s10
                  lui          a2, 820390
                  xori         a7, ra, 1840
                  slt          s8, sp, a2
                  xor          s3, a3, t3
                  slt          s10, s2, t4
                  nop
                  xori         s10, a4, -419
                  lui          a5, 260088
                  sub          t1, s1, s8
                  slli         a1, s5, 12
                  sltiu        a7, s8, 111
                  slt          s11, s11, zero
                  add          s10, s8, a0
                  srai         s2, a2, 25
                  slli         s8, t1, 23
                  srl          ra, s2, a4
                  sll          a7, a4, s6
                  sll          a3, s2, s11
                  lui          t0, 267842
                  auipc        a3, 335128
                  slt          s2, t2, s5
                  lui          a5, 496798
                  xori         a2, s2, 933
                  sltu         gp, a1, s1
                  slt          zero, s2, a7
                  sltu         s11, zero, s9
                  sra          sp, t5, gp
                  srai         a4, s11, 18
                  srl          t0, s11, a7
                  xori         a3, s2, 1409
                  slti         a6, a5, -876
                  sub          s4, s2, ra
                  addi         t0, t0, 1685
                  auipc        t0, 697625
                  sll          a3, ra, s4
                  sltiu        zero, t6, 213
                  slli         t1, a0, 12
                  sll          s2, t3, ra
                  slli         tp, tp, 26
                  lui          gp, 954347
                  sltu         s7, s4, t5
                  sra          s8, s7, s7
                  xor          s11, tp, t5
                  slt          s9, t5, a5
                  slti         a5, a4, -1063
                  srl          s0, a3, a2
                  xor          a7, s0, t1
                  lui          a5, 894490
                  sra          s11, s5, s6
                  srai         zero, s1, 15
                  sltiu        a0, a0, 840
                  sra          t2, s6, s9
                  sub          t2, ra, s7
                  xori         t6, t5, -1580
                  slt          zero, a4, a2
                  sra          a0, s6, a7
                  auipc        s11, 237589
                  sltiu        s3, a6, -378
                  ori          tp, t4, -1846
                  add          s10, s2, s2
                  xori         tp, a6, 1897
                  srl          t1, s11, sp
                  sub          t3, s6, s7
                  sltu         t6, gp, a7
                  sll          tp, s1, sp
                  add          sp, a5, s11
                  slt          t2, a7, s7
                  sub          s8, a2, s8
                  and          t6, s6, ra
                  addi         t5, a4, 1737
                  srli         t5, s2, 31
                  xor          t2, gp, s3
                  or           s3, t5, s7
                  sltu         s6, s11, t0
                  slli         t1, a3, 30
                  srl          s2, gp, a0
                  srl          a1, s9, ra
                  slli         s4, t4, 25
                  ori          ra, s1, -554
                  sltu         t6, s5, s3
                  srl          s8, a7, a2
                  slti         a0, a5, -529
                  nop
                  or           t3, a2, a6
                  andi         zero, t5, 1816
                  sub          gp, a5, s0
                  sll          gp, s10, a6
                  xori         t2, zero, -1515
                  xor          t5, t1, t1
                  sub          t0, t2, s1
                  andi         gp, t3, 1429
                  lui          s7, 645697
                  sltiu        s0, t1, -436
                  add          t1, t4, s7
                  slli         gp, t5, 15
                  and          a2, sp, a0
                  and          s4, a1, t5
                  srai         t3, s1, 16
                  sra          a1, a5, s2
                  add          s9, zero, a3
                  addi         t0, s9, 913
                  slti         s2, a6, -1342
                  nop
                  xor          s11, s10, s7
                  sub          a5, s11, s2
                  slli         t1, s3, 3
                  sra          s8, a3, s1
                  nop
                  nop
                  ori          t5, a4, -1311
                  or           s10, a1, a0
                  sra          s2, a3, tp
                  addi         s4, s6, 186
                  add          a4, s6, a6
                  add          s4, s1, a5
                  sll          a5, s2, t2
                  lui          t2, 593867
                  xor          t6, s0, a6
                  andi         a4, a4, -1726
                  slt          s9, zero, s2
                  srli         a0, a5, 2
                  sltiu        s9, s1, -188
                  srai         zero, t2, 13
                  sra          s8, zero, a6
                  sub          zero, t3, s0
                  slli         ra, t5, 1
                  addi         zero, a2, -382
                  srli         t6, s2, 8
                  sll          s11, a2, sp
                  slt          s10, a1, t2
                  nop
                  xori         a6, a0, 647
                  andi         t0, t6, -1741
                  sll          t6, a6, s5
                  xor          ra, a7, t1
                  or           s8, a0, t4
                  sltiu        zero, s4, 218
                  or           ra, t3, t1
                  andi         t5, t1, -808
                  srli         a0, s4, 17
                  sltiu        t1, s3, -1807
                  and          s4, t3, s6
                  sltu         a0, a6, a5
                  srai         a2, t0, 1
                  sltu         s8, s0, s2
                  auipc        t6, 559929
                  slti         s10, tp, -1022
                  or           s10, s3, s3
                  xor          s10, sp, s9
                  srai         a0, sp, 0
                  sltu         s4, t5, t5
                  sub          s6, s11, a7
                  sra          s10, a1, s10
                  sltiu        s10, zero, 606
                  ori          a1, gp, 1614
                  or           a5, s8, s4
                  srli         t6, ra, 18
                  and          s0, gp, ra
                  lui          s10, 905226
                  slti         a1, a3, -1461
                  and          tp, t1, s5
                  sltu         a1, s2, a6
                  auipc        s10, 156443
                  auipc        s2, 356779
                  srai         s2, s8, 30
                  slti         t6, t4, 1655
                  and          t2, a3, t6
                  srai         s11, a4, 10
                  srai         s4, s11, 6
                  sra          gp, s0, zero
                  srli         t6, s4, 7
                  or           zero, s11, a4
                  auipc        t3, 931205
                  slti         t6, a3, -1472
                  addi         s4, gp, -1677
                  ori          s10, s7, 1698
                  auipc        a5, 519445
                  or           a2, s10, s3
                  sub          s9, a5, a6
                  sub          t6, a4, sp
                  addi         a0, t3, 35
                  srai         a7, tp, 10
                  srai         s3, t0, 13
                  slti         t0, t5, -1724
                  srl          a4, s11, s3
                  or           s7, s3, a3
                  nop
                  and          a4, gp, a5
                  sltu         t6, a0, t0
                  slli         s2, s8, 15
                  xori         t0, zero, -1639
                  lui          tp, 55191
                  xor          s3, s4, t0
                  lui          a0, 83404
                  sltu         a6, tp, t6
                  ori          zero, s10, 223
                  slt          s6, ra, a4
                  slli         a3, a5, 3
                  and          s7, s5, a6
                  sltu         s4, a4, t4
                  xori         t0, t1, 605
                  auipc        t3, 158781
                  nop
                  xori         t3, s3, -1839
                  or           a5, s7, s7
                  ori          s2, t0, 748
                  sll          a6, tp, a5
                  andi         s2, gp, -807
                  sll          a5, s0, gp
                  sra          s2, t5, s6
                  slt          s7, s11, sp
                  lui          s6, 170154
                  srai         sp, a2, 14
                  auipc        a1, 862419
                  srli         s6, a6, 4
                  sltiu        s11, t2, 519
                  add          s7, t1, s0
                  sra          a6, ra, s3
                  sub          s11, s7, ra
                  sra          a3, a6, ra
                  sra          t0, sp, s0
                  addi         a7, t1, -1509
                  slti         s2, t6, -705
                  srai         a6, a2, 31
                  add          ra, t5, t2
                  auipc        a7, 45267
                  and          a0, a6, s8
                  addi         a2, a2, -1338
                  srai         t5, s7, 18
                  auipc        t6, 976143
                  sll          a3, ra, s0
                  and          a4, zero, s8
                  xori         sp, gp, -945
                  xori         gp, s0, 420
                  addi         s11, a1, -745
                  nop
                  addi         t1, t5, -502
                  xori         s0, s8, 1477
                  auipc        s3, 840298
                  srl          s9, s4, s4
                  lui          s4, 963628
                  srli         a4, s10, 11
                  xori         t1, s8, 1847
                  srl          s2, s11, s4
                  and          a7, s5, a2
                  nop
                  sra          s6, s11, t5
                  srai         t2, s8, 18
                  xor          t1, s8, s10
                  sltu         s6, t6, s6
                  sltu         t0, a5, a1
                  srai         a3, t5, 28
                  srl          t2, s10, s0
                  srl          s9, tp, s11
                  srai         s8, a5, 3
                  slti         a4, s10, -1716
                  xori         a5, t0, -541
                  slli         t3, t6, 0
                  andi         sp, t6, -1318
                  slli         gp, s8, 0
                  and          tp, t5, s1
                  srai         s6, s10, 18
                  add          s0, s7, s9
                  srai         t5, a3, 6
                  and          s6, t0, ra
                  sub          a3, s5, tp
                  lui          a0, 1033898
                  slt          t2, t3, s8
                  and          t3, t6, s1
                  srai         t5, s10, 17
                  add          s0, t4, s11
                  srli         t2, gp, 10
                  slli         a0, s0, 29
                  sra          t3, a0, t5
                  ori          s9, a7, 1691
                  xor          zero, s8, s9
                  sltu         s3, a0, t3
                  sltu         t3, ra, t2
                  andi         s10, t6, -619
                  xor          s10, a1, s3
                  srai         t2, s3, 3
                  sltu         s3, s9, s0
                  sltiu        s8, s10, -85
                  sub          t6, ra, a6
                  ori          s10, a5, 555
                  auipc        t1, 311367
                  xor          t0, a6, s1
                  andi         t6, t2, 1940
                  xor          ra, s6, s2
                  sltu         t5, t3, s9
                  sub          a2, s2, gp
                  and          t5, s0, a1
                  ori          sp, s10, 2027
                  add          t5, t1, s9
                  sltiu        t5, s7, -565
                  xor          a3, a1, a3
                  xor          s2, a0, t6
                  addi         s2, gp, -1703
                  slt          a4, t0, a5
                  slli         zero, a3, 21
                  xor          ra, t1, s0
                  slti         a0, t1, -1898
                  sub          a3, gp, s1
                  add          s9, t5, tp
                  add          a0, a4, s4
                  xor          a4, t2, s8
                  srli         zero, s3, 19
                  srai         t0, t2, 12
                  srai         a7, gp, 26
                  xori         t2, a6, -1992
                  sltiu        t2, ra, -1716
                  xor          s10, t6, t0
                  slt          s8, a4, s5
                  sll          s4, a6, s9
                  auipc        a5, 550629
                  slt          a6, s2, t4
                  sll          s10, a5, s3
                  slli         s7, s8, 23
                  sra          t1, a3, s10
                  auipc        s6, 440595
                  lui          s9, 899929
                  sub          a0, a7, s11
                  add          gp, s10, s7
                  sub          a6, sp, a3
                  or           t1, a2, s8
                  auipc        a1, 720237
                  sra          t6, a5, a1
                  sra          zero, t1, a6
                  sltiu        a6, s9, 868
                  slti         a7, s1, 114
                  andi         s0, a5, 427
                  srl          s9, gp, a5
                  slt          s4, s3, t3
                  add          t1, a6, t5
                  or           t3, zero, a4
                  slt          a1, t5, t6
                  xor          s3, s0, a4
                  nop
                  sltiu        s9, zero, -1698
                  addi         gp, s7, -1837
                  slt          t0, s5, zero
                  add          a4, t5, t5
                  sub          ra, s10, a2
                  auipc        t6, 640733
                  and          a7, s1, gp
                  sll          t6, sp, ra
                  andi         s4, t0, -288
                  xori         zero, s5, -906
                  or           s6, a3, a0
                  xor          t3, a2, tp
                  slti         s6, s11, -852
                  srli         zero, s5, 26
                  or           t5, s7, t3
                  sra          s0, t2, s1
                  slti         s6, a4, 1627
                  ori          s9, a0, 1324
                  srai         s9, t5, 3
                  sub          t5, s3, s11
                  sltiu        s8, s11, -1865
                  sra          t2, t1, s3
                  sll          a2, gp, a1
                  addi         ra, gp, -797
                  sub          s8, a7, s4
                  slli         s11, s10, 31
                  xor          a0, t2, a0
                  sltu         s8, a5, a4
                  addi         s4, s4, 446
                  srai         a7, s6, 20
                  sltu         s11, s10, gp
                  slt          s6, s2, t5
                  slt          s4, a3, a3
                  slti         s8, s11, 157
                  xor          t6, t3, s11
                  srl          s10, a0, s8
                  xori         zero, a7, 1605
                  slli         s6, a2, 17
                  or           s8, s6, s2
                  lui          s0, 1033628
                  or           a6, s3, t6
                  sltiu        a7, sp, 849
                  or           s10, s1, s8
                  addi         t5, tp, -1488
                  slt          a7, s10, s10
                  srli         s7, t4, 2
                  lui          s7, 1028231
                  sll          gp, s4, s3
                  srli         a7, a5, 0
                  sll          ra, t5, s6
                  srai         a5, zero, 7
                  addi         s7, s9, 1999
                  lui          t6, 141630
                  nop
                  slti         t2, a2, -492
                  xori         a4, s5, 1404
                  addi         tp, t2, 221
                  sll          a3, s6, s5
                  or           t1, t2, s11
                  and          t3, s2, a7
                  xor          ra, tp, s8
                  nop
                  sll          sp, s5, a1
                  sltu         t6, t0, gp
                  and          t3, s0, tp
                  andi         zero, a4, -1898
                  auipc        s0, 792277
                  sltiu        ra, ra, 462
                  xor          s11, ra, s5
                  addi         a2, s2, 314
                  srai         s10, t6, 14
                  slli         s9, t3, 0
                  sltiu        t2, s3, -202
                  and          s3, t1, a5
                  nop
                  sltiu        s9, s0, 1962
                  ori          s6, s4, -2032
                  or           t5, s7, tp
                  sra          s8, t4, a3
                  nop
                  add          tp, s5, a1
                  add          s9, s8, a7
                  or           s10, zero, gp
                  andi         a3, t0, 155
                  srl          s10, s7, a3
                  lui          s9, 899573
                  lui          t3, 341410
                  andi         s7, a5, -366
                  srai         a6, ra, 16
                  ori          t6, s6, -1650
                  lui          sp, 195086
                  add          s0, s4, s4
                  srl          s9, gp, a2
                  sra          t3, t6, a0
                  sra          s11, a7, a6
                  sltiu        zero, a6, -1143
                  addi         s11, s8, -809
                  or           s11, s2, a0
                  and          a0, s3, a4
                  or           s0, gp, t1
                  sltu         tp, s3, a0
                  xori         ra, s6, 437
                  andi         a3, t0, -332
                  sra          t5, s2, zero
                  xori         t3, tp, -1919
                  srai         t1, t0, 17
                  sll          sp, s8, s7
                  or           a5, s7, s0
                  xori         s9, sp, -1802
                  srl          t0, a0, t3
                  or           s10, t3, s1
                  and          a0, s0, a0
                  ori          t3, s5, -750
                  nop
                  or           zero, t3, s3
                  slt          s10, s0, a6
                  sra          a2, a6, s4
                  xori         s6, gp, -1447
                  sll          t5, ra, t5
                  and          zero, s6, gp
                  xori         s6, s0, 186
                  auipc        s0, 718739
                  slti         t5, a1, -1336
                  auipc        a4, 678221
                  sll          s0, a6, s1
                  lui          ra, 465186
                  auipc        a4, 150291
                  or           ra, s3, sp
                  ori          t3, t4, -72
                  lui          a7, 534284
                  slt          a2, a5, ra
                  srai         s4, sp, 16
                  sltu         gp, s10, s0
                  xori         a1, ra, 2025
                  or           tp, s5, t6
                  andi         s9, a0, 1994
                  add          s6, gp, a4
                  sltu         zero, t1, a6
                  or           a3, t6, a4
                  srl          a5, a0, t0
                  sltiu        t6, a2, -250
                  srl          zero, t3, s5
                  srli         t3, t0, 27
                  add          s10, s10, a4
                  nop
                  srli         zero, t0, 12
                  slti         s3, s1, 528
                  slli         t6, s4, 3
                  slli         a0, a7, 21
                  xori         a1, a0, 1286
                  srli         s4, s7, 10
                  sltiu        s0, s6, -1307
                  sltu         tp, a3, s5
                  xor          t2, s5, s8
                  auipc        gp, 724931
                  addi         t5, s8, -857
                  andi         t3, t0, -1252
                  ori          t2, a6, -1964
                  xor          ra, t6, s4
                  sra          s6, s4, a5
                  andi         tp, s0, 1840
                  xori         s8, s7, -1880
                  addi         a3, a1, 1315
                  sll          t2, tp, s1
                  nop
                  addi         gp, s2, 925
                  lui          t2, 597222
                  addi         s6, s1, -1722
                  slt          s10, s4, t6
                  slti         t3, a3, -619
                  slti         a0, s8, 1
                  add          s3, a1, s7
                  xor          s11, t0, a6
                  auipc        s9, 1024224
                  andi         s8, s0, 1344
                  lui          t6, 990649
                  sub          a0, t3, t5
                  slti         s6, a1, 1258
                  sltu         s6, a7, s7
                  addi         s11, s5, 285
                  sra          a4, zero, a5
                  slt          s11, t2, a2
                  sltu         a7, s7, s1
                  slt          a7, t2, a5
                  xor          s11, s0, gp
                  slt          s7, s6, s6
                  nop
                  or           a3, zero, s10
                  sub          t3, t5, a2
                  sltiu        t6, a5, -1280
                  add          a5, t1, s8
                  slt          t6, s2, ra
                  sll          t3, s1, s7
                  add          a5, a2, t6
                  lui          ra, 502670
                  sll          s9, s5, t2
                  srl          tp, s6, s10
                  ori          s11, t2, -513
                  sltu         zero, s9, a7
                  or           t3, s7, a1
                  ori          t0, s9, -1576
                  addi         t2, a5, 1284
                  add          a1, t6, gp
                  or           s11, t3, gp
                  srai         s10, s2, 3
                  auipc        s6, 378015
                  andi         t1, t4, 837
                  addi         t0, s0, 1487
                  addi         a5, s2, 1652
                  sltu         a6, s1, t3
                  or           s10, s4, sp
                  or           gp, s4, t0
                  sltiu        tp, ra, -117
                  slti         t5, t4, -1912
                  srl          t5, s4, t4
                  nop
                  sra          tp, s2, s1
                  sub          t5, a4, tp
                  or           a5, sp, t3
                  slti         s6, gp, 276
                  sltiu        s9, a6, -744
                  xor          s3, s2, zero
                  srli         a1, t0, 22
                  xor          t6, s0, s5
                  sra          ra, s7, a2
                  xori         a2, a4, 2024
                  sltiu        tp, s0, -1506
                  nop
                  srai         a1, s1, 0
                  xor          s11, s2, s2
                  sub          sp, s10, a5
                  sub          a7, s0, tp
                  xori         a4, s11, -626
                  srai         s0, s2, 14
                  add          s8, s3, s2
                  lui          sp, 626552
                  sub          a6, s5, ra
                  sltu         a5, a1, s0
                  andi         s8, t6, -742
                  srai         a4, s6, 28
                  nop
                  or           s8, a4, s6
                  auipc        t6, 352262
                  nop
                  or           s10, s11, s10
                  nop
                  sra          ra, a4, s9
                  slti         tp, t6, -1100
                  sra          s11, s4, t2
                  addi         t5, a3, -1130
                  sra          s4, s7, s8
                  slti         s11, a2, -1362
                  sltiu        a3, a4, 280
                  or           s4, a1, a5
                  auipc        a6, 602664
                  sll          t2, a1, a5
                  xor          s0, s3, s11
                  and          ra, a1, ra
                  xor          t6, t6, s4
                  nop
                  slt          s0, sp, a2
                  slt          zero, sp, s1
                  srai         s11, a1, 12
                  slli         s9, t1, 18
                  add          zero, t5, s4
                  addi         a3, sp, -470
                  sltu         t2, s8, s8
                  sll          s6, a0, a6
                  srli         a2, s11, 30
                  or           sp, a0, t6
                  sltiu        t3, tp, 785
                  sltiu        gp, sp, -84
                  slt          s11, gp, s0
                  sub          a6, s9, zero
                  sra          a0, s2, s11
                  sra          t6, s9, t0
                  sltiu        a5, t2, 1362
                  addi         s10, t3, -437
                  sll          s4, t4, s0
                  slti         t3, a5, -1229
                  sll          s11, s3, s10
                  auipc        t3, 174585
                  or           a1, s10, tp
                  xori         tp, t6, 1161
                  slti         s8, s4, -1043
                  addi         a7, t5, -757
                  lui          a6, 1716
                  sub          ra, t2, s4
                  srli         s9, s4, 14
                  or           s7, ra, t2
                  slti         sp, s10, -1058
                  slti         zero, t6, 441
                  srl          t0, s6, s9
                  xori         s6, a5, 1192
                  srai         s3, tp, 26
                  add          a0, tp, zero
                  addi         t2, s0, 1296
                  xor          a7, t2, s2
                  lui          s10, 174400
                  sltiu        s8, s2, 1019
                  addi         t5, t3, 845
                  addi         s9, gp, 1219
                  ori          a2, s7, -1219
                  and          s3, s8, a1
                  slt          a6, s4, a7
                  and          t3, t1, s2
                  sltu         s0, t4, a0
                  slt          t5, s5, s2
                  srai         zero, s1, 31
                  auipc        a2, 636900
                  xor          a4, s0, a0
                  slt          s8, s0, zero
                  xor          t6, s1, s4
                  add          s6, a5, s7
                  srl          t0, sp, s3
                  srl          tp, s8, a3
                  sltiu        gp, a0, -1277
                  nop
                  sll          a7, s1, s10
                  sra          s2, t4, s6
                  or           t1, s8, t2
                  xor          a4, s4, s7
                  slt          s8, s11, t3
                  add          t1, ra, gp
                  andi         t3, s7, 1654
                  nop
                  or           a6, ra, zero
                  sltu         ra, t0, tp
                  or           s4, t4, t5
                  ori          a7, s5, -1937
                  sltu         gp, t1, a5
                  srai         zero, zero, 29
                  sltu         gp, t5, t6
                  or           a0, t1, a3
                  addi         a0, s2, -129
                  or           a1, a2, t3
                  srai         a1, ra, 14
                  srli         a0, a4, 15
                  and          a3, a6, a7
                  sub          a7, t3, s7
                  lui          t0, 172574
                  slli         a0, t0, 0
                  sltiu        s9, s11, -1193
                  add          a7, a6, s10
                  slli         a0, s3, 22
                  nop
                  sll          a2, s3, t2
                  ori          zero, a5, 1526
                  sll          a7, s11, t5
                  xor          a4, t3, t6
                  xor          s3, t6, s3
                  slli         a1, tp, 18
                  srai         s3, t3, 21
                  ori          s4, a3, -690
                  add          t3, s8, a5
                  or           s10, s2, a5
                  xor          t5, s8, s10
                  slti         a6, a6, 1934
                  sub          a4, tp, s10
                  nop
                  slli         a6, a4, 19
                  auipc        zero, 617088
                  xori         a4, s1, 432
                  srli         t0, a7, 6
                  sltu         a5, s6, a3
                  xori         s9, s10, 1179
                  andi         a5, s1, -1960
                  xor          a4, s4, s10
                  srl          zero, t6, s1
                  nop
                  srl          s4, s4, s10
                  and          s0, a7, a2
                  sll          t6, s5, ra
                  xor          tp, s5, s10
                  slti         gp, a6, 1469
                  xori         sp, s10, -1875
                  ori          a0, t1, -1815
                  srl          a3, a0, a6
                  sra          tp, s11, ra
                  add          t6, s4, s1
                  and          t0, gp, s5
                  lui          zero, 971609
                  srl          sp, s6, zero
                  srl          a2, t3, s7
                  srl          s7, gp, a3
                  ori          a4, t2, 624
                  nop
                  srl          s8, ra, a6
                  and          t6, s1, s11
                  addi         s8, sp, 728
                  or           ra, s11, s1
                  sltu         a5, s8, a2
                  andi         a6, s6, 1067
                  lui          a7, 132144
                  xori         s8, sp, 705
                  sra          t5, t4, a6
                  slt          s9, t6, a2
                  nop
                  addi         a4, t3, 258
                  nop
                  srli         t0, s3, 31
                  andi         t3, s2, -1795
                  andi         t5, s5, 1430
                  sltiu        gp, sp, 1530
                  srl          a4, t5, tp
                  or           s10, gp, ra
                  sltiu        a5, gp, 338
                  sltu         s11, a5, s10
                  addi         t2, t4, -1038
                  ori          t0, a1, 83
                  auipc        a5, 136999
                  lui          a0, 82062
                  sra          a0, t0, t6
                  andi         a4, s10, 686
                  nop
                  srli         s9, a2, 26
                  sra          s9, a6, a2
                  slli         t5, s1, 9
                  sub          zero, s2, s5
                  sra          a7, t6, s5
                  xori         a7, s0, -902
                  sub          t0, s8, ra
                  auipc        s11, 855987
                  sra          sp, s4, s10
                  srl          s3, a1, a2
                  sra          zero, ra, s10
                  slli         s6, a1, 5
                  srai         s6, a4, 26
                  srai         t3, t6, 21
                  sll          t2, tp, s10
                  srli         a1, a3, 29
                  add          s0, a6, s5
                  or           ra, s4, zero
                  ori          a5, sp, 999
                  xor          s11, s5, s5
                  sra          a1, ra, t3
                  or           a2, t0, a4
                  srli         s8, a5, 8
                  andi         a4, gp, -181
                  slli         s3, s11, 3
                  sra          ra, tp, s10
                  sltiu        a4, a7, -1081
                  xor          s0, s7, s1
                  xor          s4, t3, t2
                  slti         s11, tp, 928
                  or           ra, a3, a4
                  slt          t0, t2, a7
                  srai         gp, a5, 20
                  xor          ra, s1, t5
                  sub          t3, t1, gp
                  sltu         t2, s8, a7
                  sll          sp, a0, zero
                  addi         s0, s11, 64
                  nop
                  auipc        t2, 93071
                  sltiu        a6, t1, -1862
                  sra          s3, a1, t3
                  sltu         zero, s2, gp
                  sll          a4, s10, t2
                  sltu         s11, s6, gp
                  and          s7, s11, a3
                  srl          ra, s4, s3
                  xori         sp, s5, -1316
                  lui          s10, 1010735
                  slli         s7, a4, 30
                  sltiu        s11, t2, -49
                  or           s6, a7, s4
                  auipc        a6, 709805
                  sltu         s11, t2, s3
                  or           a4, t2, zero
                  or           t2, s2, s11
                  sub          s4, ra, s8
                  ori          ra, s5, 1803
                  auipc        t2, 868073
                  or           tp, a7, s1
                  addi         a6, t1, -396
                  andi         a4, s10, 314
                  srli         a2, zero, 6
                  sub          a4, sp, s2
                  xori         a7, a0, 139
                  or           t5, sp, t4
                  srli         gp, a3, 10
                  auipc        s11, 17154
                  lui          s10, 715448
                  auipc        s6, 979099
                  add          t5, s5, s2
                  slli         s10, s7, 23
                  slti         a2, a3, -572
                  srli         t2, t2, 14
                  srai         s6, a4, 14
                  or           s4, gp, a3
                  srli         a1, t4, 22
                  sll          t5, gp, t5
                  sra          s2, s1, s6
                  srli         s4, a4, 0
                  lui          s9, 132103
                  srai         s11, a7, 13
                  slti         a3, a4, 1454
                  lui          t6, 366826
                  or           gp, s2, s4
                  slt          s2, gp, t0
                  and          a3, s6, a3
                  auipc        s9, 368493
                  slt          a3, s0, tp
                  srl          s6, zero, a7
                  or           s7, s5, a5
                  add          a7, sp, s3
                  slt          tp, s6, t5
                  srli         a1, t0, 2
                  xori         t5, sp, -1582
                  sub          a5, t4, gp
                  xor          a0, a7, a4
                  srli         zero, s8, 13
                  or           s2, zero, t2
                  srl          s8, s8, sp
                  or           sp, s5, a3
                  xor          s6, a2, sp
                  srli         s10, s5, 0
                  slt          t2, s6, a2
                  ori          t3, t1, -682
                  ori          t0, a2, 1759
                  xor          s10, s8, s4
                  sub          s3, ra, t0
                  sra          s11, zero, t4
                  slli         s6, a7, 24
                  sll          s0, t3, s0
                  nop
                  srli         s10, a7, 4
                  add          zero, t4, t3
                  sll          a3, t4, a5
                  andi         s6, s0, -758
                  sltiu        a2, s3, 390
                  srai         a1, s1, 0
                  nop
                  lui          a0, 294779
                  srl          a2, s4, t3
                  sltu         s4, a6, s2
                  lui          t6, 87038
                  xor          t5, s7, s1
                  sltu         s11, gp, s7
                  sltu         t6, sp, a4
                  sltu         t2, t4, s9
                  xor          t2, s1, a3
                  sltiu        t5, s3, -1229
                  addi         a2, a5, 1500
                  ori          s3, tp, 1748
                  sll          s10, sp, s9
                  andi         a0, t1, -542
                  xori         a4, s6, -22
                  lui          a5, 305548
                  ori          sp, t2, -1606
                  srli         a3, a3, 13
                  add          a3, s6, zero
                  or           t3, a3, s10
                  andi         t6, s7, 700
                  nop
                  and          s2, s3, s8
                  add          a0, t6, s11
                  lui          s8, 818755
                  sub          gp, a1, t1
                  or           a1, t2, s11
                  addi         t5, a0, -755
                  xori         a4, t0, 1705
                  and          s0, ra, s1
                  ori          gp, a5, -61
                  nop
                  sub          a3, s8, ra
                  slli         a0, gp, 28
                  sra          a3, a2, s2
                  sll          s3, s1, a6
                  slli         s8, a6, 0
                  add          ra, sp, a7
                  or           t2, s9, s5
                  auipc        a4, 875150
                  srl          s0, s10, a2
                  auipc        a3, 682174
                  srl          t0, zero, t5
                  sll          t1, tp, a6
                  srl          a6, a4, a4
                  addi         s6, a5, -446
                  srli         t6, a2, 1
                  or           gp, a3, s6
                  and          s9, tp, a6
                  andi         s0, s0, -163
                  ori          a3, t0, 1284
                  srl          t1, t4, s10
                  sra          s0, t2, s6
                  ori          a7, s6, 1652
                  srli         gp, a4, 20
                  sll          s8, t1, a0
                  srl          tp, a0, s7
                  or           a3, t4, sp
                  addi         a1, s6, 1220
                  xor          t5, s9, t2
                  sra          a2, s4, s4
                  or           t2, a5, a5
                  and          zero, s7, s1
                  sra          t5, ra, ra
                  sra          a6, s8, a7
                  and          s2, a4, t0
                  slli         ra, ra, 26
                  slli         a6, t0, 2
                  slti         s8, s9, -196
                  addi         a2, s9, -215
                  add          s7, t1, s5
                  sub          a1, a6, gp
                  sltiu        a4, s6, 1893
                  sltu         a1, s1, s10
                  and          zero, sp, a4
                  srli         s10, ra, 30
                  nop
                  slt          t3, s10, s5
                  sll          a3, s7, s6
                  sll          a7, a7, a1
                  addi         tp, t1, -1080
                  slti         t1, t5, 641
                  sll          s6, s1, s9
                  lui          a3, 101405
                  slli         tp, t0, 21
                  andi         s6, t2, -569
                  sra          t0, s9, s0
                  add          t6, tp, sp
                  xor          a2, a6, s3
                  xor          s3, a4, s7
                  slti         t3, s8, -391
                  addi         a2, zero, -534
                  ori          a2, s1, 1297
                  slti         s8, a0, -1483
                  sra          s10, a6, s4
                  or           s0, s11, s5
                  sll          ra, t0, s9
                  sra          s4, t0, a3
                  and          a5, s7, a0
                  xor          gp, s2, s11
                  andi         zero, a5, 981
                  srai         t2, t1, 30
                  slt          t0, s4, sp
                  sra          s7, s2, a6
                  xori         gp, s9, 440
                  slt          s9, a2, a1
                  auipc        s3, 104014
                  slt          sp, s7, s9
                  srli         s11, s4, 8
                  sra          tp, s7, s8
                  addi         tp, ra, 231
                  srli         s8, t0, 16
                  slt          a0, s2, s3
                  sltu         t6, t6, s4
                  slt          t6, a4, gp
                  sub          zero, a0, a6
                  srai         t5, t0, 24
                  auipc        a7, 641453
                  srl          s3, zero, t0
                  nop
                  auipc        a5, 282140
                  srai         a1, sp, 6
                  sltiu        tp, s2, -593
                  xori         s6, s4, 1385
                  srli         s7, s11, 0
                  srl          a7, s10, a5
                  srai         s2, s5, 29
                  srl          t0, t4, ra
                  slt          a5, t4, s0
                  ori          s11, s8, 692
                  auipc        a3, 340591
                  slti         a0, s0, 510
                  or           sp, s2, t1
                  sub          t0, gp, a0
                  lui          a4, 931559
                  slt          t1, t4, s0
                  srai         gp, s0, 12
                  sub          t3, t0, s10
                  slt          t5, s7, a0
                  auipc        s9, 322232
                  sltiu        t0, a6, 952
                  or           a2, s2, s7
                  sub          s2, a6, a2
                  ori          a1, s7, 564
                  slt          a3, s6, zero
                  addi         t5, a3, -1005
                  or           t1, ra, t6
                  addi         a7, a5, -1646
                  srli         s6, s5, 4
                  add          s8, t6, a6
                  add          s10, s3, t2
                  nop
                  slti         s11, a0, -692
                  andi         s7, ra, -1295
                  srl          s7, a5, s5
                  xori         ra, a5, 977
                  or           s0, s9, a2
                  or           s10, t2, t6
                  srli         s6, t4, 12
                  auipc        sp, 631587
                  add          gp, s1, t1
                  sll          a6, a2, a1
                  auipc        gp, 506611
                  or           s4, s9, zero
                  add          t5, t6, a3
                  sltu         a2, t1, s8
                  or           a7, s7, s2
                  sltu         tp, t4, gp
                  lui          s9, 761636
                  or           t1, t4, s9
                  sltu         a0, t0, tp
                  srli         a4, t4, 22
                  xor          zero, t2, s1
                  slli         s2, t3, 16
                  auipc        a6, 310028
                  ori          s0, s4, 403
                  sub          t6, s10, s5
                  slli         t1, a2, 20
                  sra          s10, t1, s3
                  srl          ra, t4, s9
                  sltiu        s9, gp, -1160
                  xori         a1, t0, 1642
                  sll          a0, t3, a5
                  auipc        t3, 202322
                  lui          s11, 53601
                  slli         s7, t3, 3
                  auipc        t1, 267080
                  sltiu        t1, a7, 291
                  sub          t2, s6, a6
                  xor          a3, zero, s7
                  andi         s3, a3, -1869
                  slti         s8, t1, 1592
                  srai         t1, a4, 31
                  srl          s8, s8, t4
                  nop
                  sub          t2, s10, s5
                  srl          zero, a0, t5
                  or           a6, s1, a5
                  slli         t2, a5, 12
                  nop
                  nop
                  srl          s6, a5, a7
                  and          s4, t3, tp
                  slt          t0, s9, s1
                  lui          a7, 553123
                  srli         t3, s7, 9
                  sll          t6, ra, s7
                  slt          s10, s0, s2
                  xori         s3, ra, -890
                  srl          t2, t1, a5
                  xori         a5, s11, -85
                  xori         s0, a5, -1015
                  sll          a7, sp, a4
                  auipc        a6, 861280
                  sltu         a5, s6, a2
                  lui          s11, 498854
                  addi         s10, t4, -1775
                  sltu         ra, a0, zero
                  ori          gp, a7, -1786
                  sub          s4, t0, s2
                  sra          t6, a6, s7
                  slli         s11, s10, 20
                  slt          s6, t1, a7
                  addi         s10, a0, -255
                  slli         tp, t6, 20
                  and          s11, a5, t0
                  and          t6, s4, t3
                  or           tp, a4, s0
                  auipc        s4, 527202
                  nop
                  xori         gp, zero, 1947
                  and          a0, t1, ra
                  sub          a6, a5, s4
                  addi         t2, t4, 151
                  srli         s9, t0, 1
                  srai         s3, s6, 20
                  srl          s2, s7, t5
                  slli         s4, s11, 30
                  and          t2, s5, s4
                  sra          a1, s10, s1
                  xori         gp, s6, -674
                  add          zero, s11, s3
                  and          a7, a3, gp
                  srai         t2, s0, 2
                  lui          t6, 575858
                  sltiu        zero, tp, 1794
                  slli         a7, s3, 31
                  addi         s6, s6, -1493
                  ori          a2, a0, 282
                  ori          s2, t5, -1186
                  ori          s9, ra, -473
                  sltu         t0, s0, s4
                  auipc        s2, 498138
                  slt          a1, a7, a0
                  andi         s2, t5, -310
                  or           s11, s6, a2
                  addi         t6, s3, 1737
                  slti         a5, s7, -2042
                  sltiu        a1, s10, 28
                  lui          t3, 317997
                  sltiu        ra, a0, -1108
                  add          t2, tp, a4
                  sra          s2, s6, s4
                  srli         s6, t3, 21
                  or           s9, s9, gp
                  addi         s8, a1, 765
                  andi         s2, s7, 1147
                  sra          t5, ra, s1
                  ori          a0, t1, 355
                  slti         s0, s10, 1582
                  srai         s0, tp, 29
                  xori         t0, t2, 388
                  andi         a4, t1, 1464
                  add          t3, t3, t5
                  sra          s2, s2, a5
                  srl          a4, s2, s2
                  addi         gp, gp, -1125
                  sub          s0, s6, t1
                  srl          s0, t4, t1
                  xori         s8, a4, 125
                  srai         s8, s2, 30
                  slli         s7, s1, 9
                  or           ra, s4, t5
                  or           a4, gp, s8
                  sra          t5, s10, s6
                  addi         a0, tp, -768
                  and          a0, a5, s6
                  andi         a1, s6, 1563
                  nop
                  srli         t2, a2, 10
                  srl          s8, t5, t4
                  sltu         t0, t1, a1
                  sub          s11, a5, a6
                  auipc        a0, 770078
                  srl          a4, sp, s11
                  xori         zero, s3, 1936
                  or           a7, zero, t3
                  auipc        gp, 98445
                  slti         a1, a0, -1515
                  sltu         s11, s7, s4
                  sra          s11, a4, t4
                  slli         gp, a0, 7
                  lui          s7, 542276
                  slli         t5, gp, 10
                  or           s2, a2, s2
                  srl          t3, s7, s0
                  srl          s11, s10, s11
                  xor          sp, t5, ra
                  xor          a1, s3, s0
                  and          a4, s6, t3
                  sll          sp, t2, a1
                  addi         gp, ra, -835
                  srai         gp, s2, 20
                  srai         s2, s5, 14
                  ori          s3, ra, -1507
                  sra          a5, s1, t5
                  sltu         t2, t1, s7
                  srai         t2, sp, 29
                  sll          a3, s1, s5
                  and          s10, a6, a1
                  sll          t1, s0, a2
                  addi         zero, s2, 1466
                  ori          a3, a6, 832
                  slt          t1, sp, zero
                  slt          s7, s9, a1
                  and          a0, s8, a6
                  srl          s2, a5, s4
                  ori          s8, s4, 273
                  lui          s6, 187832
                  xori         ra, t6, 1363
                  sltu         a7, t0, s1
                  sltu         s9, gp, t3
                  sub          a6, zero, sp
                  sltu         t1, s8, s6
                  addi         sp, a0, -1891
                  sltu         zero, t5, s5
                  auipc        s4, 374941
                  nop
                  add          a3, s9, t1
                  sltiu        a4, s2, -1628
                  slli         sp, s7, 21
                  sll          a2, tp, a5
                  andi         t6, s6, -1100
                  add          a2, a0, s2
                  slli         t0, s10, 28
                  xori         t2, s5, 223
                  sltu         s4, t3, t5
                  or           t1, s10, s8
                  or           t5, gp, s1
                  slt          s4, s0, s3
                  add          s7, s11, a5
                  slt          ra, s3, s0
                  xor          t2, s6, a1
                  sltiu        sp, a1, -1533
                  nop
                  ori          a0, s7, -728
                  nop
                  srl          a6, a5, s3
                  sltu         a0, a2, t2
                  sltu         s8, a1, s8
                  srli         s0, a2, 6
                  sltiu        zero, s7, -364
                  srai         s3, a0, 26
                  ori          tp, t4, -1033
                  add          a0, t2, s9
                  slt          s4, sp, gp
                  sll          tp, s3, s6
                  slti         a5, ra, 1177
                  sub          a4, t6, t2
                  nop
                  xor          s8, a0, t6
                  ori          s4, s9, 1864
                  srl          a6, a5, a0
                  slli         s11, t0, 1
                  srli         t1, s4, 21
                  slli         s3, a2, 17
                  sra          s10, t5, t4
                  andi         tp, s11, 1187
                  sra          a4, ra, s7
                  slti         s11, a3, -1032
                  sltu         a5, t5, t4
                  sll          t5, t2, zero
                  slti         a3, s9, 1461
                  lui          gp, 191208
                  slti         a5, gp, -1286
                  xor          t6, s10, a4
                  auipc        tp, 717578
                  slt          s4, gp, sp
                  srli         t1, zero, 2
                  add          a2, a3, s3
                  andi         s7, s9, -1222
                  auipc        s6, 411018
                  xor          tp, ra, a0
                  or           t5, s4, a3
                  xori         t6, a2, -979
                  or           s0, tp, s6
                  addi         s0, s7, 1088
                  ori          s3, tp, 954
                  nop
                  slti         s7, s11, -1937
                  nop
                  sub          a1, s0, gp
                  sltu         s9, a4, a1
                  and          a1, s8, t6
                  sltiu        t1, sp, -897
                  auipc        a4, 658168
                  auipc        a0, 337924
                  srl          t5, t5, s10
                  auipc        ra, 506176
                  ori          t1, a3, -1713
                  ori          t2, s1, -1637
                  slli         a0, a3, 19
                  or           s0, s5, t1
                  auipc        zero, 9503
                  xor          a0, s9, t0
                  andi         t2, s11, -188
                  add          s6, s9, s4
                  addi         a0, a7, 1292
                  sub          a1, a5, zero
                  and          a3, s7, t1
                  andi         s6, a6, -1927
                  sll          s7, a1, a4
                  srli         t2, a4, 14
                  srl          tp, s7, tp
                  and          a6, a6, s8
                  srli         a1, t1, 17
                  auipc        s6, 720226
                  andi         gp, tp, -1680
                  slli         t3, a0, 13
                  xor          s7, t4, s10
                  sra          s9, s2, t0
                  ori          s11, t1, 1753
                  slti         a5, ra, 195
                  lui          s9, 525020
                  addi         a0, s2, 1528
                  srli         t5, ra, 2
                  lui          a5, 990708
                  slli         s7, a4, 18
                  or           a4, tp, t5
                  sub          gp, s6, s3
                  sll          a1, a2, a5
                  sltu         ra, tp, s3
                  srli         t3, a4, 20
                  auipc        a6, 838793
                  xori         a4, t5, -527
                  ori          a2, s5, 1270
                  xor          s9, s6, s7
                  sra          t3, a5, a2
                  xor          t0, a7, s7
                  sub          a0, s0, s1
                  slli         a2, a6, 0
                  auipc        s10, 969590
                  slli         a5, t0, 22
                  slt          a7, s10, s11
                  add          gp, s8, t1
                  nop
                  xor          t1, t4, t0
                  auipc        s2, 285131
                  sltiu        a1, s7, -844
                  sltu         t2, s6, t1
                  andi         t1, s11, 327
                  lui          zero, 480855
                  xori         s10, s11, -1065
                  xori         s10, a5, 370
                  srl          s4, t6, s7
                  sra          zero, s1, gp
                  or           s6, zero, t0
                  sltu         a4, a3, t0
                  srli         s10, a2, 1
                  xor          s7, a7, a0
                  sra          zero, a3, s6
                  nop
                  addi         a1, s3, 502
                  sub          t3, s3, s3
                  sltiu        a0, t2, 123
                  add          s9, t0, t0
                  xori         s11, a3, -1783
                  srli         s8, s9, 6
                  sra          a2, a3, t4
                  or           s0, zero, a5
                  sll          a0, s5, s8
                  sra          a1, sp, t0
                  slti         s0, a5, -315
                  andi         s6, a1, 1551
                  sltu         t3, a4, a1
                  slt          a7, s11, s3
                  add          s4, s11, s6
                  andi         sp, a6, 1113
                  andi         gp, s6, 697
                  auipc        t1, 263745
                  sra          t6, s8, t1
                  and          t5, s2, s8
                  slti         a2, s10, 1339
                  srl          s3, s8, s0
                  xori         s10, a2, -1046
                  auipc        a0, 861913
                  srai         t1, s10, 13
                  sra          t2, s8, t3
                  lui          s3, 754957
                  add          tp, t2, s10
                  add          s4, t1, s2
                  sltiu        a5, a7, 1467
                  sltu         s7, a6, zero
                  addi         a3, t0, -241
                  sub          t1, s1, gp
                  sltiu        ra, sp, -277
                  auipc        zero, 761945
                  sltiu        s7, sp, 1524
                  auipc        t3, 331772
                  slt          s9, t6, a1
                  srli         t0, t1, 16
                  xori         a4, s11, 466
                  sltiu        s8, t1, -732
                  add          zero, s10, s3
                  and          ra, a5, ra
                  slli         t2, a5, 21
                  sltu         s7, a6, tp
                  xori         a0, s7, 1310
                  sltu         s10, a3, s7
                  and          a5, a5, a0
                  and          s10, ra, s6
                  sll          t1, a6, s10
                  slt          s6, s5, s2
                  or           a6, s9, s0
                  and          t2, a1, s3
                  slli         s2, t0, 26
                  and          t5, s7, t6
                  sltu         a3, s2, s0
                  andi         zero, s1, -1337
                  sltiu        tp, tp, 1524
                  srl          s7, s1, s9
                  srli         s2, a1, 15
                  andi         s7, s10, 951
                  slli         t2, a3, 2
                  slt          ra, s4, t6
                  ori          s11, a3, -528
                  sltiu        t1, tp, -1367
                  sll          a7, a2, a2
                  andi         s6, s6, -1277
                  sltu         t0, t1, ra
                  srl          s7, s1, zero
                  ori          s8, sp, -660
                  srl          a6, a0, a6
                  sll          a5, s3, a4
                  or           s9, a3, gp
                  ori          a6, a3, 748
                  nop
                  srl          a0, a5, sp
                  srli         s9, a2, 0
                  andi         a4, t1, 1452
                  srli         s2, a0, 11
                  xor          a1, s3, gp
                  add          zero, s0, s3
                  andi         zero, s2, 1753
                  sub          gp, t0, s1
                  addi         a2, a0, -1849
                  slt          gp, sp, ra
                  sltu         a0, gp, t3
                  add          t3, s8, s2
                  xori         t2, s2, -1081
                  slt          a4, t4, s11
                  ori          s10, t3, 1866
                  and          s4, s9, s5
                  sltu         zero, a2, s9
                  sltiu        t0, a0, 582
                  andi         s6, a0, 776
                  srai         zero, s11, 7
                  sra          zero, t6, ra
                  sub          a0, s4, a7
                  lui          a3, 458655
                  slti         t6, s5, 1500
                  srai         a6, t3, 1
                  srl          t1, s0, s9
                  xor          t2, a6, a1
                  sub          s4, a7, a0
                  xori         s6, s4, 372
                  sra          a2, s6, t5
                  srai         sp, s0, 24
                  or           a5, t0, s4
                  slt          s6, s9, t1
                  xori         t6, gp, 1397
                  auipc        a5, 559050
                  srli         s10, a4, 9
                  xor          s6, s2, a0
                  srli         a4, s4, 31
                  sra          t2, s7, t3
                  andi         t1, a6, -561
                  sltiu        a4, a2, 1408
                  auipc        t2, 158950
                  srl          a1, s8, a2
                  lui          a4, 918222
                  slt          t0, s8, s3
                  srli         a1, s8, 26
                  xor          a4, a7, a4
                  sra          a0, t3, s11
                  auipc        s8, 579756
                  nop
                  slti         s7, a3, -12
                  or           t1, t3, s1
                  ori          a6, s3, -159
                  nop
                  addi         s9, t2, 1722
                  or           t5, t2, ra
                  slt          t0, a1, t2
                  sub          gp, s0, s11
                  and          s7, s7, a0
                  nop
                  srli         s0, t3, 26
                  xor          t0, s1, t3
                  or           ra, s1, s6
                  sra          t1, s10, a2
                  srli         s8, t0, 20
                  slt          zero, t4, s8
                  and          s4, sp, ra
                  srl          a4, ra, s5
                  srl          s4, s0, s11
                  sra          sp, a4, s10
                  sub          s3, s10, t6
                  srl          a4, zero, s4
                  sltu         sp, s5, t0
                  sra          a7, tp, s11
                  xori         a7, t1, -1745
                  xori         s11, tp, -1257
                  slti         a1, a7, 1214
                  add          s2, t5, s6
                  sra          t0, s5, t3
                  xor          s4, a3, s5
                  sll          a0, gp, a4
                  ori          t3, t2, -410
                  sra          a1, s6, a2
                  and          a4, t1, gp
                  sub          zero, s2, s2
                  andi         sp, a1, -1294
                  andi         ra, s3, -296
                  slti         s2, zero, -493
                  sll          s6, a3, s3
                  sra          ra, a3, a1
                  sra          t6, s7, t5
                  lui          a0, 507943
                  srli         t6, gp, 10
                  srli         s3, s6, 30
                  andi         a3, a3, 1599
                  lui          t5, 161148
                  lui          a1, 150467
                  slti         ra, s6, 996
                  slt          a1, a4, a1
                  sub          a6, s9, s1
                  sltu         t0, s10, a2
                  ori          ra, s1, 1220
                  nop
                  addi         ra, s9, 1948
                  srai         tp, sp, 11
                  nop
                  addi         s10, s5, -403
                  nop
                  and          a7, a6, a0
                  auipc        a5, 175358
                  slti         s8, zero, -483
                  nop
                  ori          t6, tp, -199
                  slt          sp, s2, a3
                  sltiu        s10, s7, -1662
                  slt          s4, s0, s2
                  nop
                  srai         a6, s5, 22
                  nop
                  addi         s4, t0, 179
                  sll          a2, s8, s4
                  auipc        s8, 405553
                  nop
                  sub          s6, s11, gp
                  srli         s3, a1, 10
                  slli         ra, s4, 4
                  xor          t6, ra, t0
                  auipc        s3, 280411
                  xor          t3, s8, a0
                  xori         s8, a4, 897
                  lui          tp, 415887
                  lui          t5, 709122
                  xori         t0, t5, -1386
                  addi         ra, a1, -354
                  xor          s4, tp, s11
                  srl          s10, zero, s5
                  sltiu        a6, t2, -1741
                  srai         sp, s11, 13
                  and          t0, s4, a1
                  slti         zero, s7, -324
                  slti         a0, s3, 1964
                  sub          sp, t4, s8
                  srli         s10, t4, 23
                  sltu         a7, ra, t5
                  xori         zero, a0, 1920
                  andi         s9, sp, -1297
                  xor          a6, t4, a7
                  slt          gp, a0, s3
                  ori          a7, s2, -150
                  xori         t3, s5, 1614
                  srai         gp, a1, 6
                  sltiu        t0, t5, -504
                  srl          s7, s6, s0
                  srl          s7, s4, s2
                  slt          a6, t4, zero
                  andi         zero, t6, -814
                  addi         a2, s1, -316
                  sll          s0, a7, s2
                  xor          t5, a0, s7
                  srai         s0, ra, 0
                  slti         s0, t6, -692
                  auipc        s10, 759985
                  add          a3, s11, tp
                  srl          s8, zero, s0
                  sra          t3, t4, a4
                  nop
                  ori          s8, s3, 1075
                  srli         s2, s4, 7
                  auipc        s2, 938299
                  sll          s9, a6, s7
                  sub          s9, s7, a2
                  srli         tp, sp, 22
                  and          t0, a1, sp
                  srl          a7, s8, tp
                  slti         a0, s2, -920
                  sltu         gp, s1, t0
                  sub          tp, a5, s10
                  sra          s10, a0, zero
                  sra          a3, s11, t0
                  or           s0, s3, a4
                  slt          s10, t0, s3
                  xori         a5, t2, -1675
                  auipc        t1, 955816
                  slt          a4, a0, s4
                  lui          s8, 22652
                  addi         t3, s5, 512
                  sltu         tp, t5, t1
                  and          s2, t4, a7
                  sub          t0, a7, a3
                  sltu         tp, a0, sp
                  sltu         ra, s2, s10
                  sltiu        s3, a5, -1389
                  sltiu        s3, tp, 859
                  slt          t5, s8, t5
                  auipc        t5, 351946
                  xori         a6, s7, 1830
                  slti         s2, a1, 2010
                  sltiu        a6, s10, 1707
                  auipc        a5, 345046
                  or           a5, t4, t1
                  or           t0, zero, t6
                  xor          t5, tp, s7
                  slti         a3, t1, -1631
                  srl          s6, s10, t2
                  sltiu        a7, s0, -1176
                  sltu         t5, ra, a6
                  xori         zero, s10, 510
                  xor          s9, t0, tp
                  slt          a2, t1, a0
                  slli         a5, t3, 1
                  and          a3, s0, ra
                  slti         s7, s8, 874
                  xori         tp, sp, -1935
                  add          a6, gp, a4
                  xor          t1, a1, a1
                  slti         a2, a0, 250
                  xor          gp, gp, s0
                  xori         s10, s6, -112
                  srli         a4, tp, 15
                  srai         gp, t1, 12
                  addi         a5, sp, -2018
                  srl          a3, a7, a3
                  sra          s8, t4, sp
                  srl          tp, s11, t3
                  auipc        s9, 80012
                  srai         a3, s9, 29
                  addi         gp, zero, -1848
                  xori         s11, s2, 817
                  sltiu        a5, zero, -598
                  auipc        s0, 583117
                  xor          s4, tp, a1
                  lui          ra, 947988
                  add          s6, gp, s9
                  ori          s6, ra, -1754
                  and          s10, zero, sp
                  addi         a3, s10, -1386
                  xor          s4, a5, s9
                  sra          t1, s7, a1
                  slti         s9, s5, 284
                  nop
                  lui          t3, 582332
                  xori         t2, t5, -439
                  lui          a6, 390017
                  slli         zero, t2, 9
                  sll          gp, s9, gp
                  srli         a2, a4, 6
                  sra          a0, t5, a3
                  ori          gp, t1, 1495
                  addi         t1, t5, -1898
                  srli         tp, a6, 24
                  sltiu        a4, t4, 1514
                  nop
                  or           ra, s2, a3
                  xori         t0, s0, -915
                  sll          t6, s6, s11
                  sll          a6, a0, a1
                  srl          ra, s8, t0
                  sub          gp, s7, t6
                  sra          sp, a4, a1
                  slt          s11, a2, t1
                  and          a1, sp, a3
                  xori         s6, a3, -324
                  srl          a1, t5, s11
                  ori          t0, s2, 332
                  srai         t0, t1, 2
                  srai         a4, s9, 8
                  sltu         s6, s4, s1
                  and          t3, s8, a5
                  xor          t5, s11, s6
                  andi         s11, s7, 53
                  auipc        s3, 876244
                  sub          s3, s1, sp
                  and          t1, s5, s5
                  slt          s7, s11, a1
                  sltiu        a4, t0, -241
                  auipc        zero, 215065
                  sra          ra, ra, a3
                  ori          t0, t6, 2033
                  andi         t2, s9, -1376
                  auipc        t1, 491852
                  lui          s9, 681777
                  auipc        zero, 634018
                  sub          t3, sp, s8
                  slt          tp, s9, s0
                  sra          t3, t4, a3
                  srli         t3, a1, 4
                  lui          t5, 962082
                  sltu         t1, t2, a7
                  slti         s9, t6, 1260
                  sll          s3, a0, a3
                  sltiu        t3, s2, 309
                  sra          a6, a6, s3
                  and          t3, t0, t0
                  lui          s10, 211481
                  and          s11, s2, a3
                  auipc        a2, 686111
                  srl          s8, s6, t2
                  auipc        t5, 982358
                  srl          a0, gp, s11
                  add          s10, t1, s2
                  or           s2, t5, a2
                  sub          s0, a2, a3
                  slli         s3, s0, 26
                  sra          t0, t4, zero
                  xori         s8, t0, -1927
                  slt          s8, a0, s1
                  xori         a5, t1, -655
                  sll          s9, a5, s10
                  srl          s9, s8, a3
                  srai         s6, s1, 6
                  srai         s6, s11, 5
                  xor          s9, s7, a0
                  auipc        a5, 305126
                  ori          a4, zero, -813
                  nop
                  add          s8, s11, a0
                  sltiu        a2, t5, -12
                  slli         s7, s2, 17
                  srl          a7, s2, zero
                  nop
                  slti         s6, s4, 1648
                  and          t5, t2, s1
                  sll          s10, s9, t1
                  slli         tp, t3, 27
                  ori          s11, t0, 602
                  and          s10, t2, a3
                  lui          zero, 468193
                  and          a5, s2, t4
                  slti         tp, s11, -1775
                  sra          t3, zero, s3
                  nop
                  srli         sp, a7, 9
                  ori          s9, a4, 2042
                  sltiu        s3, s8, 717
                  srai         s4, a3, 12
                  srl          s11, a5, ra
                  sltiu        s10, s4, 1242
                  slli         s11, s3, 22
                  srl          s0, s9, tp
                  slt          s2, a2, a6
                  xor          ra, sp, s7
                  andi         s6, s0, 1632
                  slti         a2, s10, 178
                  ori          gp, sp, -800
                  lui          s9, 843241
                  sub          s3, a3, s5
                  xor          s9, s2, tp
                  sra          s4, s8, s11
                  sll          a1, a6, s9
                  or           t5, t6, s3
                  sub          t2, a4, a0
                  srai         a1, s0, 7
                  nop
                  sra          s2, s8, a4
                  srli         s3, s0, 12
                  add          s10, s10, s4
                  sll          s0, s1, a3
                  sub          t2, a2, s0
                  sll          t5, s9, gp
                  lui          s8, 505440
                  slti         t1, a2, -625
                  slt          s7, s10, s2
                  xor          t6, t1, a6
                  sub          zero, zero, gp
                  nop
                  andi         a0, a4, 343
                  sll          a5, a0, a7
                  and          t5, ra, s9
                  sub          s3, a2, gp
                  lui          s0, 255487
                  lui          a2, 227317
                  andi         s0, t0, -1853
                  slt          s0, t3, tp
                  sll          t2, s11, a6
                  lui          s9, 936130
                  sub          s8, t1, sp
                  addi         t3, a2, -1482
                  xori         t3, s0, 1428
                  sll          s6, s8, t2
                  ori          s10, a2, -1011
                  sltu         s4, a3, s5
                  srli         t0, s3, 0
                  andi         t5, s1, -186
                  sra          a1, s2, t6
                  sll          ra, s0, s0
                  sub          s2, t4, s0
                  srli         s3, s9, 0
                  sra          s8, s10, a7
                  slli         a6, t5, 28
                  srl          s10, t3, a2
                  sra          a5, t5, sp
                  slti         a1, s3, -695
                  lui          s11, 362032
                  add          t6, a5, gp
                  srai         t1, zero, 14
                  and          a6, zero, s7
                  xori         ra, a4, 329
                  add          t5, t1, s8
                  ori          a3, s4, -1422
                  slli         s10, a5, 5
                  srli         a0, t5, 25
                  sub          tp, ra, sp
                  slli         s9, a7, 28
                  slt          ra, s6, a0
                  auipc        t6, 461263
                  sra          a6, s4, zero
                  slti         s10, zero, -858
                  ori          ra, s10, 615
                  srai         t1, a2, 15
                  slli         zero, s2, 16
                  addi         s8, s2, 225
                  sub          ra, s11, ra
                  xori         t3, s3, -841
                  srai         a5, t3, 16
                  lui          s9, 811594
                  sltu         s4, s4, t6
                  sll          t3, sp, a2
                  sltiu        a1, gp, 74
                  lui          t0, 390903
                  xori         s9, t0, -1765
                  add          a3, s11, a0
                  srl          s6, gp, gp
                  sll          a0, s11, s9
                  srl          s8, s9, s0
                  srli         s3, ra, 10
                  sltu         s11, s11, s6
                  auipc        sp, 509360
                  sll          s7, ra, gp
                  srli         sp, t6, 22
                  ori          s3, t4, 486
                  or           a2, a2, t1
                  sltu         zero, ra, ra
                  sltiu        a0, t1, 685
                  nop
                  xor          s2, a2, s8
                  sltiu        s3, t6, -652
                  add          a0, a2, t0
                  sltiu        a2, s4, -679
                  ori          a5, s6, -296
                  slti         a0, s4, 175
                  lui          s2, 571961
                  xor          a4, s3, a5
                  nop
                  slti         a0, s11, -1749
                  sltu         s3, s7, t2
                  and          s11, t3, s0
                  or           s3, a7, s1
                  slli         a2, t6, 24
                  add          s6, s0, a0
                  or           a4, s6, tp
                  or           tp, a5, ra
                  add          a4, s1, s5
                  srl          a4, a2, a1
                  slti         s3, t5, 1884
                  slli         s11, a1, 11
                  srai         s0, a2, 23
                  ori          sp, t3, 246
                  sra          a2, a6, a0
                  sub          a0, s9, a0
                  lui          tp, 325112
                  sltu         a1, a0, t6
                  sltiu        s11, t2, -419
                  addi         a1, t2, 639
                  xor          a1, t1, s5
                  sra          s3, s3, a3
                  slt          s0, a7, s2
                  sltiu        a6, a5, -1266
                  lui          sp, 184503
                  lui          tp, 271669
                  sll          t5, tp, s1
                  srai         a7, a1, 20
                  slli         s10, sp, 19
                  sra          s0, s2, s10
                  addi         s11, t6, -1976
                  srli         s4, t1, 25
                  slli         s10, a3, 8
                  srl          tp, t2, s11
                  auipc        gp, 489529
                  sub          s7, t6, s9
                  lui          t3, 112686
                  lui          a7, 483537
                  slli         s6, s2, 12
                  or           t2, t4, a7
                  slti         a7, gp, -684
                  srai         s0, s4, 21
                  sll          a5, s5, a2
                  slt          t2, s0, s0
                  add          t1, gp, zero
                  auipc        s7, 427164
                  auipc        zero, 455062
                  slli         t1, t1, 13
                  ori          s11, t5, -972
                  srl          s10, a5, s11
                  slli         sp, s7, 11
                  srl          s3, t3, t3
                  addi         s8, t4, 110
                  srai         a6, s1, 13
                  srli         t6, s9, 25
                  or           t1, a4, s4
                  or           a4, a4, t0
                  sltu         s8, t1, s10
                  ori          ra, t0, -1862
                  ori          s11, ra, 861
                  lui          a7, 18209
                  sub          a1, s10, a6
                  sra          s2, s9, t0
                  addi         s0, t6, 1803
                  sltiu        t5, s9, -1191
                  add          s6, t6, a0
                  andi         gp, a7, 773
                  srai         s10, a3, 1
                  sltiu        a6, t4, 1159
                  sub          s7, s3, s7
                  or           s4, a5, s5
                  sub          s3, gp, a5
                  add          t0, s10, a6
                  ori          a5, t2, 407
                  andi         s11, t0, -752
                  srli         s8, s5, 0
                  slt          a4, s7, t3
                  ori          tp, t2, 1898
                  auipc        a6, 172830
                  nop
                  auipc        a1, 1041077
                  srai         ra, t5, 14
                  slli         a0, s10, 13
                  addi         ra, a5, -354
                  slt          s2, s9, s0
                  srl          a5, s4, s0
                  sra          s0, t1, a6
                  sub          s11, t2, a5
                  slti         a6, a6, 1941
                  srl          t5, t6, s8
                  xor          a5, a1, a3
                  sll          s9, a0, t5
                  slt          zero, tp, t6
                  sub          ra, s4, s0
                  xor          s0, s4, t6
                  add          t1, s2, s7
                  slli         ra, s2, 17
                  sltiu        t3, ra, 158
                  auipc        gp, 412247
                  lui          a4, 373081
                  srli         t5, a5, 28
                  add          tp, s4, a3
                  andi         s6, t2, 1027
                  sra          s4, sp, a3
                  sub          t6, a3, t6
                  or           t3, s7, s8
                  ori          t3, t1, 439
                  sub          tp, t2, a4
                  sra          a5, s0, t3
                  or           s8, t3, s9
                  slti         a3, a1, 1481
                  andi         a5, t2, -1752
                  auipc        a4, 1019565
                  sub          s10, s11, gp
                  srl          s7, a0, ra
                  auipc        t0, 874324
                  addi         s9, gp, -1614
                  srli         s9, s6, 7
                  slli         a3, gp, 22
                  sltiu        a0, a6, -1521
                  auipc        a1, 869838
                  add          s9, t1, t5
                  srl          s10, s11, a0
                  xor          a2, s0, s0
                  slti         gp, a0, -344
                  srl          t2, t3, s10
                  auipc        s2, 13449
                  addi         a5, tp, -1654
                  sra          zero, t5, s5
                  xor          s9, t4, zero
                  andi         a1, s4, -1404
                  sra          t2, s3, t5
                  sub          s8, t4, gp
                  srai         tp, sp, 22
                  or           a0, sp, s7
                  slt          tp, s9, a1
                  srl          a4, s8, ra
                  xor          a3, sp, s8
                  sltu         s11, a3, s3
                  slli         s3, a1, 2
                  slli         sp, s6, 29
                  slli         s2, s8, 20
                  sra          a6, a6, t2
                  addi         t6, a3, -304
                  xor          gp, a1, a3
                  xori         a3, a6, -801
                  sra          a6, a3, s7
                  srai         t5, s1, 25
                  ori          a4, s0, -1062
                  sub          t3, ra, t3
                  sltu         ra, a3, s7
                  addi         sp, s7, 989
                  xori         sp, a0, -682
                  and          a4, s8, s3
                  lui          t1, 763981
                  sra          s7, t3, s3
                  xor          s4, s2, s4
                  nop
                  slt          t5, gp, gp
                  or           s8, t1, s0
                  or           t2, s11, a5
                  auipc        s9, 324603
                  srl          a3, s2, s10
                  srai         s7, t0, 24
                  or           a0, s7, s3
                  nop
                  sltu         gp, t2, s2
                  ori          ra, s5, 1174
                  lui          t1, 85940
                  slli         t5, s8, 30
                  andi         t6, ra, 929
                  sll          tp, ra, s6
                  slt          ra, a7, a1
                  srai         a5, t6, 0
                  srl          s10, ra, gp
                  andi         t3, s0, -1180
                  andi         a5, a2, -855
                  lui          s0, 753350
                  auipc        s9, 571159
                  ori          s6, t5, -1834
                  slti         s10, s3, 1731
                  slt          s10, tp, s11
                  or           s4, a1, t6
                  nop
                  and          t3, a0, gp
                  nop
                  and          s11, a7, t2
                  slt          s7, s11, s4
                  slli         a6, t4, 17
                  ori          zero, s11, -918
                  slt          t0, s11, t3
                  xor          s8, sp, a1
                  srli         gp, a6, 27
                  addi         t3, s9, -1874
                  sra          s10, s8, s0
                  or           a1, a7, a3
                  auipc        tp, 796903
                  nop
                  auipc        sp, 345553
                  srl          s2, a2, s11
                  sltu         ra, t0, s1
                  sra          s6, t6, t4
                  srli         a2, s1, 1
                  lui          tp, 256125
                  nop
                  xori         s9, tp, 812
                  sra          s4, s4, t1
                  nop
                  sra          s4, a1, a3
                  auipc        a6, 678828
                  slti         a1, t3, -795
                  sra          ra, a3, s9
                  sltu         s7, s11, s4
                  add          ra, a7, zero
                  sltiu        t3, a3, 1397
                  addi         t1, s2, -876
                  sra          s8, a0, t6
                  slt          t0, t3, a4
                  addi         s0, a1, -124
                  sub          t0, t1, s6
                  sll          s11, a4, t6
                  ori          a4, s8, 440
                  srai         a1, s11, 15
                  nop
                  lui          s6, 395779
                  ori          gp, s2, 520
                  andi         s0, s11, 405
                  add          a1, s0, zero
                  ori          t1, s10, 1104
                  slli         tp, a7, 6
                  add          ra, ra, s10
                  or           t2, a6, s11
                  sltu         gp, a4, t1
                  xori         sp, a4, -832
                  and          t3, t3, a7
                  ori          s6, a4, 225
                  srli         a3, tp, 10
                  sra          t2, s11, t3
                  xori         t2, tp, 294
                  add          gp, s6, t1
                  srl          s3, a0, ra
                  sra          s2, a2, s5
                  sub          s4, s0, t4
                  xor          s4, s5, a3
                  and          s2, a0, t4
                  auipc        t1, 178043
                  slt          s0, t0, s0
                  srai         zero, t3, 3
                  and          s2, s9, a0
                  srai         t5, a6, 18
                  addi         sp, s0, -1436
                  auipc        s8, 323395
                  auipc        s2, 406483
                  sra          a2, a0, s4
                  addi         s10, t1, 1681
                  sra          gp, s6, sp
                  srli         gp, t3, 31
                  srli         a3, s3, 24
                  xor          s7, t5, s11
                  xori         s0, t1, 1474
                  xori         s2, s7, -114
                  slt          t3, gp, a0
                  auipc        t2, 605854
                  sltu         s8, a1, s1
                  sltiu        s4, s11, 352
                  ori          s8, a1, 536
                  srai         s7, t4, 4
                  lui          zero, 734319
                  or           s11, s8, s7
                  addi         a1, gp, 636
                  nop
                  slti         a5, t3, -1335
                  or           s7, s9, a2
                  auipc        s9, 1015887
                  and          s9, s1, a5
                  slli         t5, s4, 11
                  nop
                  xor          t6, t3, a6
                  add          t5, s1, a6
                  sltu         a3, t0, t4
                  andi         t3, t5, 704
                  slli         t6, s10, 30
                  sub          s9, s10, s8
                  srl          t0, s2, a0
                  srai         s10, sp, 17
                  xor          a7, a1, t0
                  addi         s0, gp, -1831
                  slt          t5, s7, t6
                  xor          t0, s8, s3
                  auipc        t5, 393775
                  andi         t0, s8, 1114
                  or           a2, zero, ra
                  srl          s7, t1, t5
                  xori         t0, s10, 715
                  sub          t0, t6, a1
                  sltu         a0, s7, s8
                  andi         s8, ra, -847
                  lui          s2, 900159
                  ori          t2, t1, -792
                  slti         sp, sp, 584
                  sltu         s6, a6, a4
                  lui          zero, 56464
                  ori          a3, s11, 1009
                  lui          t0, 440327
                  ori          t2, a5, -1411
                  sll          a3, t0, a6
                  srai         a6, zero, 18
                  addi         zero, s0, -93
                  sll          t6, s3, zero
                  sltu         s4, t3, a2
                  addi         sp, t0, -1793
                  sltiu        t3, tp, 1715
                  add          s8, tp, t3
                  ori          a0, t6, -1279
                  srai         s11, s4, 10
                  xor          s10, s10, a1
                  auipc        ra, 95218
                  nop
                  sltu         tp, t6, s3
                  addi         s9, tp, 1804
                  nop
                  xori         s8, s8, 1160
                  srai         sp, ra, 28
                  lui          ra, 325320
                  slt          t2, t0, s11
                  sub          s6, s10, s0
                  addi         t2, s2, -524
                  lui          s8, 779888
                  or           a1, s11, s4
                  add          t2, t4, t6
                  sll          gp, t6, t5
                  sltu         a0, t2, a6
                  srl          a7, s7, t5
                  sra          a4, s9, s8
                  slt          s0, a6, zero
                  auipc        a2, 624220
                  slti         t6, t5, -840
                  or           a5, ra, t6
                  srl          s3, s0, t3
                  ori          zero, ra, -1239
                  sub          s8, a2, s7
                  add          ra, t6, t0
                  lui          s4, 238451
                  sub          t5, a1, a2
                  nop
                  slt          s11, t3, t2
                  sll          s11, s0, a1
                  srl          s0, ra, s4
                  sltu         ra, s9, s0
                  xori         a6, s7, 1700
                  sltu         s3, s2, s6
                  sltiu        t1, t6, -1594
                  sll          ra, t0, a3
                  srai         ra, a6, 25
                  or           s11, gp, t0
                  slt          s11, t5, s5
                  sra          t0, zero, sp
                  or           a1, s5, tp
                  add          s3, t0, a1
                  nop
                  xor          sp, t6, t4
                  slli         sp, a0, 25
                  sra          s4, s11, a7
                  auipc        s7, 923978
                  sub          a5, a6, a0
                  sll          s2, s4, a6
                  srli         a6, s11, 31
                  auipc        a5, 631468
                  slti         t5, sp, -1196
                  srl          a6, a1, s1
                  sub          s8, s2, t2
                  addi         t6, t3, 860
                  slti         a7, a0, -1589
                  andi         t0, gp, 1132
                  addi         a1, s8, -1648
                  sll          t2, a3, a0
                  srai         t5, t1, 29
                  slti         sp, s2, 251
                  lui          s11, 470917
                  add          s7, zero, gp
                  sra          a5, a6, sp
                  slt          s6, a0, t0
                  xori         a5, s6, 657
                  srl          s10, s2, s7
                  add          a0, s5, s9
                  srl          tp, s6, ra
                  lui          zero, 537637
                  and          a2, s11, tp
                  add          s0, s6, s3
                  sltu         s9, a1, tp
                  nop
                  addi         a4, a6, -1553
                  slti         ra, s2, -1202
                  srl          s2, s0, s7
                  auipc        zero, 29922
                  ori          s9, s10, 831
                  lui          a5, 178908
                  addi         tp, t0, -935
                  lui          t6, 103965
                  xor          a5, s4, t5
                  auipc        a7, 130892
                  nop
                  add          t1, s3, s8
                  xori         t1, t3, -1296
                  sra          s9, t0, s3
                  srai         a4, a2, 3
                  addi         s3, s1, -950
                  and          a2, zero, s2
                  add          a5, a7, s11
                  ori          sp, a5, -842
                  srli         t5, t5, 23
                  xori         s9, s8, -1991
                  auipc        s10, 689065
                  srli         s9, t0, 18
                  auipc        a6, 818596
                  srai         t3, s5, 19
                  srl          a1, sp, sp
                  lui          s2, 75977
                  slti         tp, a7, 1094
                  sll          gp, a1, s8
                  sll          t6, s9, a7
                  ori          s9, a4, 338
                  slt          s8, s0, s11
                  add          gp, t3, gp
                  andi         a1, t3, 1022
                  sub          a0, s7, s11
                  addi         s7, t0, 1135
                  add          s7, a3, a2
                  slti         s0, sp, -1225
                  srl          zero, s2, a1
                  nop
                  lui          tp, 255996
                  ori          s0, s2, 1655
                  sll          a2, s11, t4
                  srl          s9, t2, s1
                  sltiu        s2, s7, 1349
                  sll          t5, a1, s10
                  sltiu        ra, a0, 823
                  ori          ra, a6, -1559
                  lui          a5, 336379
                  slti         s11, s3, 139
                  add          a1, a2, sp
                  srai         a3, sp, 3
                  sltu         a6, s5, a4
                  sub          s0, ra, a5
                  slli         t1, s7, 3
                  xori         a3, tp, -715
                  sll          s10, ra, s6
                  slt          a3, t5, s10
                  andi         gp, s1, -1120
                  lui          t5, 556036
                  sra          a5, t5, t1
                  auipc        tp, 1026345
                  sltu         s7, s1, s6
                  sltiu        s9, s7, -1815
                  sra          s8, s1, s10
                  srai         a5, a0, 17
                  sltu         t3, t5, s11
                  nop
                  srli         s11, s8, 27
                  sll          t0, ra, sp
                  sra          a1, t1, t6
                  sltu         s8, s4, s1
                  sub          sp, sp, s6
                  sltu         tp, s5, a0
                  auipc        a4, 85319
                  slti         a4, a4, -1295
                  sra          t3, s5, t1
                  xor          s2, s2, t6
                  slt          a5, gp, s6
                  or           tp, t1, zero
                  sub          a4, tp, t5
                  srli         a0, a3, 1
                  and          t2, s2, s10
                  nop
                  add          a2, s10, s11
                  sra          tp, s11, a4
                  sltu         a5, a3, s3
                  srai         a4, gp, 16
                  nop
                  sra          s11, sp, a3
                  nop
                  lui          s2, 220981
                  slli         s11, s1, 4
                  slli         zero, a4, 26
                  lui          s4, 574211
                  nop
                  sub          a5, t2, s0
                  or           s0, tp, s6
                  auipc        tp, 31082
                  sltu         a5, s10, a5
                  slli         gp, a1, 19
                  srli         t1, s6, 9
                  slti         a3, a2, -59
                  sll          s0, s5, s7
                  sltu         s3, s11, s9
                  slli         s4, zero, 0
                  sub          s8, s3, a3
                  srli         s4, s1, 1
                  lui          s8, 447517
                  nop
                  ori          s7, t2, 1388
                  ori          a4, t5, 2
                  sltiu        ra, zero, 107
                  sltu         a7, s11, s9
                  slt          a0, s11, s5
                  slli         s8, a3, 14
                  sltiu        a2, t0, -1988
                  slti         a6, t6, 1468
                  xor          a0, ra, a3
                  add          ra, gp, s11
                  or           s11, t1, gp
                  addi         a1, sp, 1584
                  addi         ra, zero, 778
                  slli         tp, t6, 11
                  sra          t2, zero, s3
                  auipc        t1, 208677
                  slt          sp, a2, ra
                  srli         zero, s10, 31
                  and          s4, s2, t0
                  addi         a6, a3, -1752
                  sll          s7, a3, t5
                  andi         a7, t2, 901
                  addi         s4, a0, 1444
                  auipc        s8, 392685
                  srai         a6, t1, 4
                  lui          t5, 928952
                  slt          sp, s4, s10
                  slti         a0, tp, -387
                  lui          ra, 606394
                  srai         s3, a5, 9
                  or           t6, s7, a4
                  nop
                  lui          a7, 600375
                  lui          s0, 1004689
                  ori          s4, s7, -171
                  andi         t0, s4, 1257
                  sra          s0, a4, s3
                  sltiu        s10, s0, 770
                  slli         s8, t6, 0
                  xori         a6, a5, 1406
                  sub          zero, ra, a4
                  sll          a1, s5, t3
                  addi         t2, a4, 344
                  sub          a0, t1, s3
                  or           t0, a4, a4
                  or           a5, a4, t3
                  sltu         s9, s1, t2
                  lui          s4, 1038172
                  xori         a5, t4, -1560
                  auipc        t3, 742914
                  srli         a5, s11, 12
                  slt          a0, tp, a0
                  srl          zero, s1, t3
                  sra          s8, s6, ra
                  ori          tp, gp, -892
                  xori         a4, s2, -547
                  auipc        s2, 320354
                  lui          sp, 10362
                  xor          a5, a4, s4
                  srl          s4, s11, a4
                  sub          gp, s4, t5
                  xori         tp, s11, -1422
                  srai         s4, a3, 24
                  slt          s0, gp, s8
                  sltu         tp, s7, a4
                  lui          s2, 335106
                  xori         t2, s9, -326
                  xor          sp, zero, zero
                  auipc        s9, 556044
                  slt          a3, s8, ra
                  sltu         t1, a2, sp
                  or           s3, ra, a4
                  lui          s0, 301765
                  xori         t2, t2, -169
                  lui          s4, 531006
                  srli         s9, a4, 13
                  ori          t0, s5, 1984
                  sll          t2, t0, tp
                  sltu         s11, s11, t1
                  sltu         ra, a2, t1
                  sub          ra, ra, a0
                  ori          zero, s8, 1385
                  sub          a4, a2, t5
                  xori         s9, s5, 725
                  add          gp, zero, s11
                  addi         a3, t0, -490
                  sub          a3, s9, a7
                  xor          t1, t5, a2
                  nop
                  or           tp, t6, s7
                  sltu         s6, t0, s5
                  sub          t0, zero, a3
                  srli         a7, t0, 20
                  addi         s3, s3, 495
                  srli         s7, t1, 20
                  sltu         sp, zero, a2
                  lui          t0, 981009
                  auipc        tp, 77425
                  xor          s0, t5, t3
                  xori         t0, zero, -1666
                  srai         t1, a2, 1
                  auipc        a4, 520447
                  addi         s7, t3, -47
                  sub          tp, s10, tp
                  sra          t5, s3, t6
                  add          a7, s7, ra
                  and          a1, t1, t4
                  sltu         a5, s7, t3
                  auipc        s3, 142013
                  addi         s10, a6, -1825
                  sub          t3, a4, t2
                  addi         s3, a2, -279
                  sub          t3, t1, s0
                  addi         t6, t5, 1380
                  and          s8, a2, a5
                  sll          a5, s0, s0
                  slli         s11, a0, 12
                  auipc        s7, 950997
                  addi         t2, a4, -1742
                  sra          t0, ra, s1
                  xori         ra, s11, -1871
                  ori          s9, a1, -944
                  ori          a0, ra, 1344
                  slti         a5, zero, 1758
                  add          t0, a3, s5
                  andi         s9, s11, -1228
                  srli         s11, s0, 22
                  slt          a6, a5, s9
                  or           s11, a4, s1
                  ori          a0, s2, -1487
                  slt          t5, t2, tp
                  sll          s11, tp, s9
                  sub          t3, ra, a6
                  li           sp, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           s4, 0xffffffff
                  li           s10, 0x0
                  li           t5, 0xfad4a9e3
                  li           s6, 0xc06bbc7f
                  li           tp, 0x389203cf
                  li           t1, 0x0
                  li           s7, 0xffffffff
                  li           a7, 0xffffffff
                  li           t3, 0x0
                  nop
                  auipc        a7, 932255
                  auipc        t5, 99988
                  lui          t1, 423954
                  lui          t3, 647529
                  addi         s6, t5, -1290
                  nop
                  nop
                  addi         t3, s6, 180
                  addi         s4, t1, 993
                  addi         t3, s6, 637
                  auipc        s10, 971385
                  lui          sp, 707815
                  sub          t3, s6, s6
                  nop
                  auipc        t5, 673421
                  nop
                  nop
                  nop #end riscv_int_numeric_corner_stream_0
                  lui          a0, 151671
                  li           s7, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           t5, 0xa65674df
                  li           s6, 0x80000000
                  li           t0, 0x0
                  li           t2, 0x6e994917
                  li           t6, 0xffffffff
                  li           t3, 0xffffffff
                  li           sp, 0x0
                  li           a2, 0x80000000
                  li           s9, 0x0
                  sub          t5, t2, t2
                  nop
                  addi         t2, t5, -1797
                  addi         s9, t2, 1489
                  addi         s6, t6, -1013
                  nop
                  lui          s6, 741530
                  add          t6, t3, sp
                  add          t3, t5, a2
                  auipc        sp, 794378
                  add          t5, t0, sp
                  auipc        sp, 577034
                  sub          s6, sp, a2
                  lui          t0, 98597
                  sub          t0, t5, s9
                  sub          a2, sp, t5
                  nop #end riscv_int_numeric_corner_stream_2
                  srl          gp, sp, s1
                  and          a5, tp, s11
                  srai         a0, zero, 11
                  slli         t5, t5, 11
                  lui          s8, 315889
                  add          s6, zero, s8
                  sub          a6, s2, a5
                  sltu         a5, s0, a5
                  slli         t6, a1, 12
                  sra          a4, gp, t2
                  add          a4, s6, ra
                  sll          ra, tp, a1
                  la x9, test_done
                  jalr x0, x9, 0
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
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x29, x21, zero
                  csrr x18, 0x300 # MSTATUS
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 31
                  bne x18, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x18, 0x341 # MEPC
                  csrr x18, 0x342 # MCAUSE
                  li x31, 0x3 # BREAKPOINT
                  beq x18, x31, ebreak_handler
                  li x31, 0x8 # ECALL_UMODE
                  beq x18, x31, ecall_handler
                  li x31, 0x9 # ECALL_SMODE
                  beq x18, x31, ecall_handler
                  li x31, 0xb # ECALL_MMODE
                  beq x18, x31, ecall_handler
                  li x31, 0x1
                  beq x18, x31, instr_fault_handler
                  li x31, 0x5
                  beq x18, x31, load_fault_handler
                  li x31, 0x7
                  beq x18, x31, store_fault_handler
                  li x31, 0xc
                  beq x18, x31, pt_fault_handler
                  li x31, 0xd
                  beq x18, x31, pt_fault_handler
                  li x31, 0xf
                  beq x18, x31, pt_fault_handler
                  li x31, 0x2 # ILLEGAL_INSTRUCTION
                  beq x18, x31, illegal_instr_handler
                  csrr x31, 0x343 # MTVAL
                  1: la x9, test_done
                  jalr x1, x9, 0

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
                  la x9, write_tohost
                  jalr x0, x9, 0

instr_fault_handler:
                  add x21, x29, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

load_fault_handler:
                  add x21, x29, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

store_fault_handler:
                  add x21, x29, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

ebreak_handler:   
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x21, x29, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

illegal_instr_handler:
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x21, x29, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x18, 0x300 # MSTATUS;
                  csrr  x18, 0x304 # MIE;
                  csrr  x18, 0x344 # MIP;
                  csrrc x18, 0x344, x18 # MIP;
                  add x21, x29, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
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
