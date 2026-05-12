.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x7, h0_start
jalr x0, x7, 0
h0_start:
                  li x26, 0x40000100
                  csrw 0x301, x26
kernel_sp:        
                  la x29, kernel_stack_end

trap_vec_init:    
                  la x26, mtvec_handler
                  ori x26, x26, 1
                  csrw 0x305, x26 # MTVEC

mepc_setup:       
                  la x26, init
                  csrw 0x341, x26

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x26, 0x1800
                  csrw 0x300, x26 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xfd2fcec6
                  li x2, 0xf97db0d0
                  li x3, 0xc8c452f5
                  li x4, 0x7
                  li x5, 0x80000000
                  li x6, 0x7619c8c5
                  li x7, 0x5a1d687a
                  li x8, 0x0
                  li x9, 0x1
                  li x10, 0x80000000
                  li x11, 0xf179cb11
                  li x12, 0x6cad03fc
                  li x13, 0x80000000
                  li x14, 0x8
                  li x15, 0x80000000
                  li x16, 0x0
                  li x17, 0xf8b9e80a
                  li x18, 0xfbe83a87
                  li x19, 0x2
                  li x21, 0x80000000
                  li x22, 0x0
                  li x23, 0xfbc7cb99
                  li x24, 0xee9f09bf
                  li x25, 0xf26babe0
                  li x26, 0xf95c65df
                  li x27, 0xe
                  li x28, 0xf7a78c3c
                  li x30, 0x80000000
                  li x31, 0x0
                  la x20, user_stack_end
main:             li           sp, 0xa1c4bfa2 #start riscv_int_numeric_corner_stream_5
                  li           s9, 0x80000000
                  li           s2, 0xffffffff
                  li           t0, 0x6ea56db8
                  li           a2, 0x86961906
                  li           a1, 0x0
                  li           s6, 0x0
                  li           s1, 0x316f3423
                  li           s10, 0xb2a53008
                  li           s5, 0xffffffff
                  auipc        sp, 875763
                  auipc        s2, 552523
                  sub          t0, s9, a1
                  nop
                  add          s10, s1, sp
                  sub          sp, s2, s6
                  sub          s5, a2, s6
                  sub          s9, s9, t0
                  addi         a2, s9, -1099
                  nop
                  addi         t0, s9, 1159
                  sub          s2, s6, s6
                  addi         s5, s1, -1784
                  auipc        s1, 597800
                  auipc        s10, 1025340
                  sub          sp, s10, s9
                  sub          a2, s2, s6
                  sub          a1, s5, s9
                  sub          s5, a2, s9
                  sub          s10, sp, sp
                  add          s6, s5, s5
                  nop
                  lui          s10, 81941
                  addi         a1, s6, 471
                  sub          sp, t0, s10
                  nop
                  addi         t0, t0, 2013
                  lui          s6, 228276 #end riscv_int_numeric_corner_stream_5
                  li           s6, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           a4, 0xf81c9fd1
                  li           s9, 0x1c8865c9
                  li           s7, 0xc0485fd9
                  li           s5, 0xffffffff
                  li           t5, 0x0
                  li           a7, 0xffffffff
                  li           a0, 0x0
                  li           s1, 0x506efdae
                  li           tp, 0x80000000
                  sub          tp, tp, tp
                  auipc        s5, 440749
                  add          a4, a0, s5
                  auipc        a7, 310887
                  auipc        s6, 721838
                  sub          s7, a0, a7
                  lui          s5, 141143
                  lui          s1, 207710
                  add          a0, s6, s5
                  add          s5, t5, s7
                  auipc        s6, 480774
                  addi         a0, s1, -705
                  nop
                  add          s7, s7, a0
                  add          a0, a0, s1
                  nop
                  nop #end riscv_int_numeric_corner_stream_4
                  li           a3, 0xdb0a5ad0 #start riscv_int_numeric_corner_stream_8
                  li           a5, 0x80000000
                  li           s3, 0xffffffff
                  li           t6, 0x0
                  li           a0, 0x0
                  li           sp, 0xbb699066
                  li           gp, 0x80000000
                  li           t5, 0x80000000
                  li           s0, 0x80000000
                  li           s11, 0xffffffff
                  nop
                  auipc        sp, 105079
                  addi         s3, sp, 2001
                  auipc        a0, 197083
                  lui          s0, 433871
                  nop
                  nop
                  addi         s11, gp, 1925
                  sub          a0, s0, s11
                  sub          a0, a5, a3
                  sub          a3, a0, gp
                  lui          s0, 494628
                  nop
                  nop
                  addi         sp, t6, 832
                  auipc        t6, 217390
                  lui          s11, 997868
                  auipc        a3, 498817
                  sub          s0, s3, s0
                  auipc        a5, 525086 #end riscv_int_numeric_corner_stream_8
                  li           s0, 0x4f5886fd #start riscv_int_numeric_corner_stream_3
                  li           s1, 0xffffffff
                  li           a1, 0x0
                  li           t1, 0x0
                  li           tp, 0x9c4ed1b9
                  li           a6, 0x5c06e616
                  li           a5, 0xee288cb3
                  li           ra, 0x80000000
                  li           s9, 0x80000000
                  li           s8, 0x80000000
                  lui          ra, 968039
                  lui          a1, 96746
                  sub          a1, s1, s0
                  lui          a1, 798045
                  lui          s9, 971580
                  nop
                  lui          t1, 952102
                  add          s8, a5, s8
                  nop
                  add          ra, s1, s8
                  nop
                  auipc        ra, 133026
                  addi         ra, s8, -914
                  nop
                  add          a6, s1, s9
                  nop
                  add          a1, ra, ra
                  nop
                  sub          s0, tp, s1 #end riscv_int_numeric_corner_stream_3
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           gp, 0x0
                  li           t6, 0x0
                  li           t0, 0xffffffff
                  li           a1, 0x0
                  li           ra, 0x0
                  li           s0, 0xffffffff
                  li           s2, 0x80000000
                  li           s11, 0xffffffff
                  li           tp, 0xa7d358e
                  addi         s0, tp, -1001
                  sub          gp, gp, s2
                  addi         tp, t6, 2024
                  nop
                  auipc        a1, 495227
                  auipc        s11, 699786
                  auipc        s11, 761616
                  addi         t6, s11, 1230
                  sub          a1, s8, s8
                  lui          s0, 416334
                  add          t0, s0, s0
                  auipc        a1, 612212
                  lui          s11, 357126
                  add          t6, tp, ra
                  add          s8, a1, s11
                  lui          a1, 284940
                  nop
                  nop
                  addi         t0, t6, 1498
                  lui          t6, 221403
                  add          t0, gp, ra
                  auipc        s11, 607830
                  add          t0, s8, t0
                  nop
                  sub          s11, s8, tp
                  sub          t6, s2, s2 #end riscv_int_numeric_corner_stream_7
                  li           a7, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           ra, 0x80000000
                  li           a4, 0x80000000
                  li           a6, 0x42cca5be
                  li           s7, 0x80000000
                  li           s11, 0x80000000
                  li           s10, 0xffffffff
                  li           a0, 0x80000000
                  li           s1, 0xc958d900
                  li           t3, 0xe87c8c7a
                  add          ra, a7, a4
                  lui          s7, 667119
                  auipc        ra, 485473
                  addi         s10, s1, 2002
                  nop
                  addi         ra, a0, 793
                  addi         a6, a6, 1616
                  lui          a4, 451817
                  addi         ra, a0, -1893
                  sub          s1, a6, a6
                  nop
                  sub          s1, a7, a6
                  auipc        a6, 836578
                  nop
                  add          s11, s1, t3
                  auipc        a7, 823110
                  addi         ra, t3, -1315
                  addi         s10, s10, -109
                  lui          a7, 394209
                  lui          a7, 259146
                  add          s11, a4, s10
                  auipc        a7, 635125
                  nop
                  addi         t3, t3, 552
                  add          s7, t3, a7 #end riscv_int_numeric_corner_stream_14
                  li           s10, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           t1, 0x80000000
                  li           a6, 0x0
                  li           s0, 0x0
                  li           s11, 0x80000000
                  li           t5, 0x7f6b1edf
                  li           s5, 0xe0b55d6
                  li           s3, 0xffffffff
                  li           a7, 0x80000000
                  li           t3, 0x0
                  nop
                  auipc        s10, 992410
                  nop
                  sub          a6, s5, a7
                  nop
                  nop
                  lui          a7, 880673
                  add          t1, s3, s11
                  add          a6, s3, s10
                  auipc        a7, 116493
                  lui          s5, 347075
                  addi         t5, a7, 807
                  add          t3, s11, a6
                  lui          t1, 26245
                  add          s11, s0, t3
                  sub          a7, a6, t1
                  add          s3, s5, a7
                  sub          a7, a6, a6
                  add          t3, s0, t3
                  lui          s3, 820359
                  auipc        s5, 371171
                  add          s11, a6, t1
                  lui          a6, 970929 #end riscv_int_numeric_corner_stream_18
                  li           s7, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           s2, 0x0
                  li           a1, 0x707749d8
                  li           s10, 0x0
                  li           s11, 0x0
                  li           s3, 0x0
                  li           s8, 0x0
                  li           ra, 0x80000000
                  li           s0, 0x80000000
                  li           a0, 0x80000000
                  nop
                  nop
                  add          s11, a1, s11
                  sub          s0, s3, ra
                  add          s7, a0, a0
                  add          s3, ra, s2
                  nop
                  sub          s10, s10, s0
                  add          s2, s8, s3
                  sub          s2, ra, s11
                  nop
                  auipc        s10, 171511
                  sub          s0, ra, a0
                  sub          a1, a0, s11
                  addi         a1, s0, 1851 #end riscv_int_numeric_corner_stream_12
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           s0, 0xffffffff
                  li           tp, 0x2598a0be
                  li           t5, 0x535ad03e
                  li           a4, 0x0
                  li           s7, 0xffffffff
                  li           s8, 0x80000000
                  li           a2, 0x80000000
                  li           t1, 0x80000000
                  li           t3, 0xa3718a05
                  sub          t3, t3, s9
                  nop
                  addi         s0, tp, 153
                  sub          s8, s7, s9
                  addi         tp, a4, 1364
                  lui          t5, 230307
                  addi         a4, t3, 608
                  auipc        a2, 172602
                  addi         tp, a2, 1084
                  addi         s7, a4, 901
                  nop
                  nop
                  lui          s0, 668862
                  addi         t5, tp, 900
                  addi         s9, s9, -23
                  nop
                  lui          a2, 975715
                  nop
                  nop
                  auipc        s7, 183821
                  add          s9, s8, s8
                  auipc        t3, 286896
                  lui          s9, 768023
                  addi         t1, s9, 2001
                  lui          s9, 831455
                  auipc        t3, 419026
                  addi         t5, tp, -1990
                  nop
                  add          tp, s0, tp
                  nop #end riscv_int_numeric_corner_stream_15
                  li           t3, 0x9d8fd9c #start riscv_int_numeric_corner_stream_6
                  li           sp, 0xffffffff
                  li           s9, 0x7198a859
                  li           ra, 0xe9a3ce05
                  li           a2, 0xffffffff
                  li           s11, 0x80000000
                  li           a5, 0x0
                  li           tp, 0x80000000
                  li           t5, 0x0
                  li           t0, 0x3fe1222b
                  auipc        s9, 630570
                  lui          t5, 727325
                  nop
                  auipc        a5, 686308
                  add          s9, sp, s9
                  nop
                  add          t3, t5, t5
                  sub          a5, a2, t0
                  addi         sp, t5, 208
                  lui          a2, 703548
                  sub          t0, ra, s11
                  lui          t0, 579272
                  nop
                  nop
                  sub          s9, a2, ra
                  sub          s9, t0, a5
                  sub          t3, t3, sp
                  auipc        tp, 855148
                  sub          s11, t3, s11
                  lui          a5, 768088 #end riscv_int_numeric_corner_stream_6
                  li           a5, 0xd7654278 #start riscv_int_numeric_corner_stream_2
                  li           s2, 0xc5e1ee15
                  li           a4, 0x80000000
                  li           t3, 0x80000000
                  li           gp, 0x0
                  li           a7, 0x0
                  li           t6, 0xffffffff
                  li           s11, 0x0
                  li           s8, 0xffffffff
                  li           s9, 0x0
                  add          gp, gp, s11
                  lui          s9, 628146
                  add          a7, a5, a7
                  addi         a4, a5, -377
                  nop
                  lui          a4, 701342
                  lui          gp, 7702
                  nop
                  nop
                  sub          t6, gp, t3
                  lui          s11, 535222
                  lui          t6, 733529
                  sub          s11, t6, t6
                  auipc        s11, 76565
                  lui          s11, 861976
                  addi         a5, s2, -781
                  add          t3, s9, s9
                  nop
                  auipc        a4, 1048359
                  addi         s8, s9, -3
                  add          a4, a4, a5
                  auipc        a4, 74290
                  add          a5, a4, a7
                  lui          t3, 689489
                  nop #end riscv_int_numeric_corner_stream_2
                  srl          s2, a7, a3
                  add          s11, ra, t3
                  sltiu        a4, a4, 1768
                  nop
                  add          ra, a2, s10
                  li           a0, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           s1, 0x0
                  li           a1, 0x0
                  li           a5, 0x14e9cf76
                  li           ra, 0x4544dd7f
                  li           s6, 0xb1ad8767
                  li           s8, 0xffffffff
                  li           gp, 0xffffffff
                  li           s5, 0x286993a9
                  li           t0, 0x0
                  sub          s1, a1, a1
                  lui          s6, 78282
                  lui          s1, 550292
                  lui          a0, 369654
                  add          a0, ra, ra
                  lui          a1, 975210
                  addi         a5, a5, 1235
                  nop
                  lui          s8, 519744
                  nop
                  add          a5, a1, s8
                  sub          a5, ra, s8
                  auipc        ra, 18173
                  nop
                  sub          a5, gp, s8
                  lui          s1, 718792
                  lui          a0, 156620
                  nop
                  lui          s5, 907734
                  add          s8, s6, a0
                  sub          s1, t0, s8
                  auipc        a1, 851851
                  addi         t0, s5, 1312 #end riscv_int_numeric_corner_stream_17
                  sltu         sp, a3, a0
                  sra          s6, t6, zero
                  nop
                  addi         a4, s0, -1257
                  srli         a6, t6, 28
                  xori         a1, s6, -1947
                  xor          s8, s11, t1
                  slt          zero, sp, s4
                  srli         a4, gp, 3
                  sltu         zero, s9, s4
                  nop
                  srai         s8, a2, 16
                  xor          t1, s7, zero
                  sll          a5, s1, a4
                  ori          s9, s7, 524
                  li           t0, 0x22f577f5 #start riscv_int_numeric_corner_stream_11
                  li           sp, 0xffffffff
                  li           t6, 0x80000000
                  li           s8, 0xffffffff
                  li           a7, 0x80000000
                  li           s1, 0xffffffff
                  li           s7, 0xffffffff
                  li           ra, 0xc21ab7b2
                  li           s10, 0xa5af69d9
                  li           s6, 0x9e9cabb3
                  add          t0, t6, s7
                  lui          s8, 547697
                  lui          s8, 95474
                  nop
                  sub          s6, s6, t6
                  addi         ra, a7, -647
                  nop
                  add          s10, s7, s6
                  sub          s10, t6, ra
                  lui          t0, 144370
                  sub          s6, s7, s1
                  addi         s6, t0, 1635
                  auipc        s8, 182949
                  auipc        s1, 559933
                  addi         ra, t6, 1883
                  nop
                  nop
                  lui          ra, 117658
                  addi         s6, s1, -1559
                  addi         s6, sp, 582
                  addi         s7, s8, 1313
                  addi         sp, a7, 23
                  add          s10, s8, sp
                  auipc        s6, 40151
                  addi         s1, t0, -1012 #end riscv_int_numeric_corner_stream_11
                  srai         t6, a4, 28
                  auipc        sp, 609208
                  sltu         s3, s7, tp
                  xori         zero, a4, -1377
                  or           s3, s9, t5
                  xori         t5, a1, -1038
                  and          zero, a4, sp
                  and          s8, t2, s6
                  andi         s6, s2, -1020
                  slt          s3, ra, a2
                  nop
                  xori         a7, s6, 335
                  or           t6, a5, sp
                  sltu         a3, a3, tp
                  andi         t0, t6, 1949
                  slli         a5, a3, 24
                  srl          s8, t1, s3
                  xori         ra, a1, -921
                  xor          ra, a5, t3
                  sltiu        gp, t1, 998
                  sll          s9, a5, s9
                  sll          a4, t3, a1
                  slti         s0, s8, 1384
                  srl          ra, a5, s3
                  and          s1, s11, s4
                  sltiu        s6, t5, 619
                  sub          a4, t2, a1
                  slli         a3, s5, 16
                  slt          t1, s10, sp
                  srl          s7, gp, s4
                  ori          s1, a6, 1779
                  nop
                  srai         a5, zero, 3
                  sub          a1, t2, s9
                  andi         tp, zero, 156
                  and          a2, t6, t1
                  sll          s1, a0, t2
                  sub          s3, s1, s4
                  slli         s2, sp, 14
                  sltu         a1, t4, sp
                  addi         gp, s2, 1710
                  slt          s10, s2, tp
                  srai         sp, t3, 23
                  and          zero, s10, a7
                  sltu         t3, t5, s6
                  sll          s2, a7, gp
                  srai         s3, s10, 24
                  add          s9, s7, s10
                  sltu         s11, sp, s11
                  srai         a1, s2, 29
                  srli         t0, a1, 12
                  sra          a3, a6, a6
                  srai         a4, s7, 17
                  sra          a0, t0, a7
                  ori          t1, s2, 171
                  xor          s3, s10, s10
                  and          a5, s9, t5
                  xor          gp, t1, a7
                  lui          ra, 980570
                  srl          a5, a0, s6
                  addi         a1, a5, -696
                  sra          a2, a5, a0
                  or           s10, a1, s9
                  sltu         zero, s10, s7
                  slti         s10, t5, 155
                  srli         zero, s3, 17
                  xori         a1, t5, -887
                  auipc        t1, 714412
                  addi         zero, s6, 737
                  srl          t0, s3, s5
                  srai         s10, t0, 17
                  addi         s5, t6, 242
                  xor          t1, t3, s5
                  srai         a7, s2, 28
                  nop
                  andi         zero, zero, -818
                  sra          a5, s8, t3
                  slli         t6, s1, 0
                  sra          t3, t5, t6
                  andi         a0, t4, 1879
                  sra          sp, s3, a3
                  ori          s1, a2, 905
                  slli         a6, s7, 29
                  auipc        s3, 496335
                  sltu         ra, t1, t5
                  sltu         t5, t0, s6
                  sll          a5, a5, s6
                  srl          a6, s0, t1
                  slli         s0, t6, 14
                  ori          t1, t0, 1937
                  slt          a4, t1, s3
                  sltu         a5, a6, t6
                  sll          s3, a4, s7
                  srai         gp, s9, 10
                  sltiu        gp, s4, 188
                  slt          t1, s11, s7
                  slti         s5, s9, -1680
                  sra          a3, t2, a4
                  or           ra, s4, a5
                  slt          a4, s4, s11
                  srl          sp, a0, t5
                  andi         s2, t3, 1379
                  sub          a2, a3, t1
                  sltiu        a5, s9, -1648
                  sra          a5, ra, s8
                  slli         sp, t1, 9
                  sra          t1, tp, s6
                  and          ra, t0, t5
                  slti         a2, ra, 1244
                  or           t1, s1, t5
                  xori         s3, zero, -844
                  sll          s2, t5, s5
                  nop
                  auipc        zero, 230412
                  sltu         s0, gp, t5
                  srai         a6, zero, 19
                  srai         gp, s7, 4
                  srli         ra, ra, 9
                  ori          s2, a3, -1824
                  xori         gp, s3, 422
                  sub          zero, s11, s11
                  slli         a1, a3, 29
                  xori         a2, t1, 1554
                  add          s2, sp, a4
                  ori          a5, s4, 83
                  slt          a0, s8, s4
                  sll          a0, s6, a6
                  srli         t1, tp, 7
                  ori          s5, t1, -787
                  auipc        s3, 789979
                  or           t3, t0, ra
                  slti         s1, t6, -1964
                  lui          t1, 237234
                  lui          gp, 884819
                  or           a6, s6, s1
                  nop
                  andi         a6, s11, 399
                  sll          a1, t6, t1
                  sll          a6, a0, a4
                  lui          a2, 391771
                  sltiu        a6, a7, -1300
                  sltu         t1, s9, s9
                  nop
                  auipc        s1, 163803
                  srli         a2, t0, 16
                  add          t5, t6, t0
                  sltu         gp, sp, s0
                  or           t3, a1, s9
                  sltu         t1, s5, t4
                  or           s3, t3, s1
                  and          sp, s10, a2
                  addi         s1, a7, -623
                  slt          t5, t4, t5
                  and          tp, tp, a6
                  sub          gp, s0, s10
                  srli         a4, t3, 12
                  slti         t5, t0, 243
                  srl          s11, s11, t6
                  addi         a2, t2, 1121
                  nop
                  auipc        a3, 105024
                  xor          s7, t3, t4
                  or           t6, gp, t3
                  sltu         a7, a7, s4
                  and          zero, s10, s9
                  auipc        t3, 97480
                  srli         s1, s6, 11
                  srl          a4, s6, t4
                  lui          s8, 139709
                  sra          a2, s10, tp
                  slli         s6, a5, 18
                  srl          s3, t5, a0
                  lui          s9, 611426
                  slli         s3, s2, 10
                  xori         gp, s0, -1123
                  sub          a5, t2, s2
                  auipc        s5, 684726
                  slli         a6, s10, 8
                  sltiu        s0, a6, 763
                  lui          t3, 791940
                  sub          a5, a2, s3
                  sub          s7, t2, s0
                  srli         a6, a1, 25
                  srli         s11, s11, 24
                  nop
                  sub          a1, s7, ra
                  srl          gp, s7, a5
                  nop
                  ori          ra, s7, 278
                  nop
                  srli         t6, t5, 22
                  nop
                  sltiu        ra, a0, -691
                  sltiu        tp, a3, -1266
                  ori          t5, gp, -1208
                  srai         s2, t6, 18
                  sub          s0, t2, a7
                  or           gp, s1, t4
                  sra          a4, t6, s3
                  auipc        a0, 463064
                  srl          s10, s7, s1
                  sltiu        t5, gp, -1784
                  add          gp, s7, t3
                  slt          s6, sp, a5
                  add          a0, a1, a5
                  xori         s5, a1, -618
                  srai         s1, s10, 23
                  sltiu        s3, ra, 1140
                  andi         s7, a3, 1926
                  and          s6, a2, t3
                  slt          s3, s2, a0
                  sltu         t1, s11, zero
                  ori          t0, t6, -417
                  and          a7, tp, t5
                  slt          s1, a0, a0
                  addi         a0, s8, 548
                  add          s3, sp, t3
                  srli         gp, a1, 22
                  or           s11, s2, s9
                  or           t3, s11, t5
                  auipc        a1, 1048011
                  slt          a1, gp, s11
                  sltiu        t6, t5, -1668
                  auipc        a2, 798432
                  sltu         s6, t5, t3
                  and          sp, ra, s7
                  or           t5, sp, t5
                  or           sp, t4, a5
                  slti         sp, t5, 1281
                  xor          s3, a1, s0
                  slti         s1, s7, -1917
                  slti         t0, s5, -1696
                  nop
                  and          sp, t6, zero
                  xori         a6, s3, -302
                  auipc        zero, 602769
                  nop
                  srl          s1, t2, a2
                  auipc        s0, 815475
                  srli         a3, t6, 13
                  nop
                  lui          zero, 575306
                  or           s0, zero, tp
                  sltu         t3, tp, s4
                  li           t1, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           s8, 0xffffffff
                  li           ra, 0x80000000
                  li           s9, 0x80000000
                  li           a5, 0xffffffff
                  li           s6, 0x80000000
                  li           t5, 0xc93ebdbd
                  li           a6, 0x965a7edf
                  li           a2, 0xffffffff
                  li           s7, 0x172a98bf
                  sub          s8, a2, t5
                  addi         t5, s8, -2031
                  add          a6, s9, a2
                  nop
                  lui          s9, 242809
                  nop
                  add          a5, s9, t5
                  nop
                  nop
                  nop
                  add          s8, a2, ra
                  auipc        s6, 448655
                  sub          s9, s8, t5
                  sub          a2, s8, s8
                  addi         ra, ra, -1490
                  addi         s6, a6, 572
                  lui          t1, 169742
                  sub          t1, s8, t5
                  addi         s7, ra, 1723
                  addi         t1, a2, -1623
                  add          a5, s8, t5
                  lui          a6, 1032514
                  addi         t1, a5, 1176
                  add          s9, s7, s7
                  nop
                  lui          s8, 7650
                  nop
                  nop
                  sub          s7, a5, s6
                  addi         ra, s6, -1604 #end riscv_int_numeric_corner_stream_0
                  sub          s10, s8, zero
                  sltu         a2, s6, s1
                  slti         t1, s10, 1768
                  slli         s8, t4, 0
                  sub          a6, s10, a4
                  andi         s7, a2, -1274
                  slt          s0, gp, tp
                  addi         s6, t4, -1834
                  andi         a1, a4, -1865
                  sltiu        s10, s4, 763
                  addi         s2, t0, 1922
                  nop
                  slli         t0, a7, 9
                  slt          s3, s1, t3
                  or           t6, a3, t6
                  slt          s5, t5, a0
                  slt          s5, t3, s8
                  srai         s10, s8, 19
                  and          s1, t6, sp
                  srai         t5, t2, 13
                  sub          s5, a1, ra
                  or           t5, gp, a6
                  auipc        s2, 461578
                  sltu         s10, t4, a2
                  sltiu        s0, gp, 608
                  sub          a7, s9, s10
                  slti         s8, t3, -1435
                  lui          t3, 557079
                  slli         a0, s4, 23
                  auipc        s0, 89869
                  sub          t1, t2, s11
                  sll          a6, a4, a4
                  lui          s1, 626330
                  andi         s1, zero, 1128
                  xor          t0, s1, a6
                  and          s11, t3, s5
                  addi         s8, a5, -199
                  add          t0, s11, a5
                  addi         a4, a4, -971
                  or           zero, s3, t5
                  sltu         s5, s7, s4
                  slti         s6, s9, 1899
                  slti         s7, t2, -1997
                  sltiu        sp, s6, 286
                  andi         t5, s0, -1387
                  xor          s1, s6, s8
                  srli         s6, s5, 17
                  srl          sp, t2, zero
                  sub          s3, s9, a3
                  sltu         s5, t3, a7
                  sub          sp, t5, t1
                  slli         a3, s3, 18
                  andi         s0, s5, -1291
                  slli         a5, s6, 5
                  sra          gp, zero, t0
                  xori         s10, t3, -16
                  slt          t3, t2, t3
                  slti         zero, zero, -1726
                  xor          s5, s5, s4
                  srl          a7, a6, a4
                  add          t5, t2, a0
                  sll          a0, t2, s7
                  add          t5, t6, s8
                  sll          s3, s7, a2
                  slt          sp, t5, s0
                  sltu         s5, t6, a5
                  srl          s1, a1, a2
                  sra          a4, s11, a1
                  slt          s11, s2, s3
                  xori         s3, s5, 326
                  and          a7, t4, a4
                  srl          s0, a5, s4
                  sll          a0, s0, t3
                  srl          s2, a2, t6
                  auipc        s0, 461654
                  sll          t5, s11, t4
                  add          a0, s6, t5
                  sltiu        tp, s10, -956
                  nop
                  nop
                  lui          tp, 22808
                  sltiu        a5, s8, 1552
                  addi         a1, s2, -1681
                  auipc        a5, 979594
                  sra          s5, s0, s1
                  lui          gp, 575295
                  slt          a1, zero, t1
                  slti         s1, a7, -1316
                  xor          t6, a2, a4
                  srl          s5, a5, t2
                  xor          s7, s5, t4
                  or           s6, t3, a6
                  srl          t3, t2, a7
                  srli         t1, a6, 26
                  xori         s7, s9, -659
                  sll          tp, a5, t1
                  ori          ra, s9, -889
                  slt          s2, s2, a7
                  add          t1, t3, t4
                  slt          tp, t0, a6
                  slli         s9, gp, 7
                  srai         s0, t1, 15
                  slli         a5, a4, 14
                  srai         s9, sp, 8
                  sltiu        a4, t0, -1768
                  sub          s8, s10, sp
                  xor          a4, tp, s0
                  or           s3, a5, s7
                  sltiu        t1, a2, 239
                  slti         a5, s8, 1154
                  slti         a5, s6, -1582
                  sra          s9, t6, sp
                  sltiu        s5, s6, 442
                  sub          a3, t4, s9
                  nop
                  add          a4, a3, a5
                  lui          a2, 974020
                  sll          s9, t1, t6
                  lui          t0, 910909
                  slli         s0, s5, 9
                  ori          a7, a3, 1491
                  addi         s10, s1, 1380
                  xori         gp, a2, -650
                  auipc        a3, 307016
                  sub          s2, s5, a0
                  nop
                  sltiu        t3, sp, -756
                  xori         a4, t5, -90
                  ori          t1, a6, -213
                  srai         ra, s3, 27
                  xori         a1, s4, 1337
                  sltiu        s9, t2, -827
                  srli         t5, t1, 25
                  sub          s6, s2, t3
                  xori         zero, a4, -1392
                  slt          ra, a1, a0
                  sltu         a5, tp, s11
                  slli         t5, s1, 25
                  addi         s2, tp, -442
                  and          s10, t6, tp
                  sll          a6, s6, a3
                  slti         a6, a3, 1342
                  auipc        a1, 247779
                  sltiu        a4, a1, 293
                  slt          s9, s6, a4
                  xor          s2, s11, s10
                  srl          t1, ra, s2
                  sub          t1, t1, s0
                  srli         s0, t0, 28
                  srl          s10, t4, s2
                  addi         s1, t1, -458
                  sltu         sp, a0, a3
                  add          s11, a1, s3
                  add          s9, s2, s7
                  sltiu        s6, s1, -131
                  ori          s9, a6, 270
                  andi         a0, a5, 1217
                  nop
                  xor          s9, zero, s7
                  or           gp, t3, t0
                  and          a4, a1, gp
                  or           t0, a7, t4
                  slli         t1, t3, 21
                  xor          tp, s8, sp
                  add          a4, sp, a4
                  lui          t0, 684665
                  or           s9, s3, t1
                  xori         tp, ra, -22
                  srai         a7, a3, 6
                  xori         s10, gp, -544
                  slli         s0, a1, 20
                  slli         s3, t6, 12
                  srli         t3, s10, 7
                  sll          s11, a6, s7
                  ori          a3, s5, -553
                  slli         a6, t3, 20
                  xori         s2, s5, 86
                  sub          s8, a6, a6
                  sra          s3, a2, a5
                  slti         sp, t3, -1689
                  sub          s7, s11, zero
                  andi         t3, s8, 1125
                  or           s7, sp, s8
                  sltu         s9, a3, s7
                  srl          zero, s6, a1
                  ori          t6, s5, 264
                  slt          s1, s8, s1
                  andi         ra, s2, 1600
                  slti         gp, s1, 875
                  slli         s7, a7, 20
                  sll          a0, s11, s4
                  and          a3, a0, s2
                  srai         zero, s9, 1
                  addi         gp, a6, 1776
                  auipc        t0, 560122
                  slti         s5, a7, -1514
                  addi         t1, t6, -1707
                  nop
                  srl          s5, gp, s5
                  sub          s11, t1, t0
                  sub          a5, s11, tp
                  sra          a4, s2, s1
                  slli         a2, a6, 6
                  nop
                  auipc        t6, 892835
                  sltiu        a1, t4, -1250
                  sra          s2, a4, t4
                  slli         a6, s9, 20
                  xor          t5, s9, ra
                  sub          s11, a5, ra
                  sra          a2, a5, s4
                  sub          ra, s5, s10
                  lui          s0, 118898
                  slli         tp, s8, 23
                  sltiu        ra, t3, -28
                  srai         a4, s2, 8
                  sltiu        t0, a7, 148
                  slli         a4, s6, 5
                  auipc        a3, 591551
                  sub          s5, tp, a0
                  srl          a2, sp, a2
                  sltu         a3, a2, t0
                  slti         t6, a1, 166
                  add          a2, s3, t5
                  xor          s8, s5, t2
                  sltu         s2, t1, s2
                  srl          gp, a2, t4
                  add          ra, s6, s0
                  sll          a0, s7, t3
                  auipc        t5, 211899
                  sll          t1, a2, a2
                  sra          s11, s7, tp
                  sub          a2, t1, a5
                  xor          a2, s11, a7
                  auipc        s11, 391682
                  or           s0, s10, t6
                  slli         ra, t6, 26
                  slt          a4, s7, s6
                  sub          s2, s2, s7
                  addi         a7, t1, 997
                  sub          a3, a3, a2
                  sll          s10, ra, s5
                  addi         s7, s11, 1518
                  sltu         a0, s2, s7
                  lui          s3, 625218
                  xor          t0, s10, s2
                  auipc        sp, 142454
                  sll          gp, t3, t5
                  slli         s0, a0, 7
                  nop
                  slt          t3, s6, t5
                  sltu         sp, ra, s0
                  srli         t5, t5, 11
                  sub          t1, a0, a0
                  auipc        gp, 392400
                  sll          tp, a1, s3
                  lui          a6, 816399
                  nop
                  sub          a2, sp, t0
                  sub          ra, t6, gp
                  slli         s1, a7, 5
                  nop
                  lui          s9, 982645
                  addi         s1, a2, -1527
                  lui          a1, 928441
                  xori         s5, s2, -881
                  and          a7, t0, gp
                  ori          t3, t2, -1831
                  xor          s9, s11, t0
                  and          s2, a5, a6
                  slti         t6, s5, -1535
                  srli         a5, s8, 14
                  ori          a7, s7, -1237
                  addi         ra, zero, -1772
                  ori          a1, s9, -253
                  and          zero, t3, a5
                  ori          a5, sp, 692
                  srl          s10, a5, t0
                  xor          zero, a2, s4
                  srl          a1, a2, t3
                  srl          t1, zero, s3
                  auipc        sp, 583788
                  and          s2, t0, s4
                  auipc        a6, 20955
                  srl          s9, zero, s4
                  srai         s9, a2, 9
                  slli         s10, s8, 9
                  xor          a7, t0, s9
                  sll          t3, s5, s8
                  srl          ra, ra, t2
                  slt          sp, a6, s9
                  auipc        tp, 937627
                  li           a5, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           ra, 0xfb4b708a
                  li           a7, 0xffffffff
                  li           gp, 0xc4da11bf
                  li           t3, 0xc4b26141
                  li           s8, 0x80000000
                  li           a4, 0x6dcfa338
                  li           s1, 0x1ecae8ce
                  li           tp, 0xffffffff
                  li           sp, 0x8d669a9f
                  auipc        s1, 11099
                  lui          tp, 315541
                  nop
                  sub          a5, ra, a7
                  addi         tp, gp, 542
                  nop
                  auipc        a7, 730911
                  auipc        sp, 812774
                  sub          s8, ra, s8
                  auipc        s8, 199523
                  nop
                  sub          a4, sp, sp
                  addi         gp, sp, 1127
                  auipc        a7, 914046
                  sub          t3, a5, s8
                  nop
                  nop
                  auipc        s8, 617110 #end riscv_int_numeric_corner_stream_1
                  sll          a5, s3, s1
                  srl          sp, a3, s5
                  or           tp, s0, s1
                  or           a1, s5, a0
                  and          a7, s1, s1
                  ori          s9, s6, -1884
                  sll          s1, t6, s3
                  and          a3, s8, s5
                  srli         s10, s4, 1
                  nop
                  srai         tp, t3, 14
                  sltiu        t5, a0, -238
                  sltu         zero, t0, t3
                  nop
                  slt          s8, s11, s9
                  sltiu        s7, t1, -2026
                  xori         a4, t4, -217
                  nop
                  sra          s6, t1, s6
                  add          a1, t5, s9
                  sltu         gp, t0, zero
                  auipc        t0, 13423
                  ori          a3, t1, 93
                  addi         t0, s3, 635
                  sll          sp, t0, a2
                  add          s0, a7, s10
                  slli         a5, s9, 25
                  slti         a6, t5, -572
                  and          s2, s3, a5
                  nop
                  sra          t5, s10, a4
                  sltiu        s2, a4, -547
                  xori         s9, a6, -56
                  sra          s6, sp, t2
                  sltiu        ra, t3, -1091
                  lui          sp, 530300
                  sll          s8, s1, ra
                  auipc        a5, 656354
                  slti         s7, s4, -144
                  or           t3, a3, a7
                  srl          a0, s2, s0
                  slli         zero, zero, 28
                  sub          a6, t1, s10
                  add          a7, a0, ra
                  add          s8, a2, t6
                  auipc        gp, 300843
                  srai         s0, a0, 11
                  xori         s11, t1, -1104
                  sra          s2, t6, s8
                  sub          sp, t4, a4
                  sra          s7, a0, tp
                  xori         s0, s4, -1636
                  and          a7, a2, a2
                  andi         a2, a0, -1033
                  slti         s10, s5, -593
                  or           a4, t0, s6
                  xor          a3, s8, t5
                  sub          a0, ra, s6
                  srli         t6, a5, 3
                  sra          gp, ra, s11
                  slli         a4, a1, 2
                  srli         s7, t1, 20
                  srai         t5, s10, 0
                  lui          t1, 897307
                  srai         s5, s7, 17
                  andi         t3, a5, 554
                  xor          s6, s2, zero
                  or           t0, a5, a4
                  slli         t0, tp, 3
                  auipc        s9, 1034625
                  slt          s7, s5, a7
                  slli         a7, a1, 27
                  and          t1, s7, s0
                  auipc        t5, 13443
                  auipc        sp, 806423
                  srl          tp, s9, t4
                  slti         a3, s6, 1988
                  srl          s0, a4, t3
                  slli         t6, zero, 18
                  sll          s11, s1, s5
                  add          a0, t4, a7
                  ori          t6, a3, 400
                  nop
                  srai         s9, s3, 20
                  slti         a5, a4, 1859
                  xor          a4, s5, t6
                  sub          s6, s3, gp
                  slli         t5, gp, 24
                  slt          sp, sp, s3
                  nop
                  or           s8, t6, t4
                  sub          s1, a3, a4
                  xori         t0, t6, -1138
                  sra          s7, s5, s8
                  nop
                  srai         s5, a3, 2
                  and          a7, ra, a4
                  and          ra, t3, s7
                  srai         s1, t2, 18
                  xor          s1, s3, tp
                  sra          s3, s2, t2
                  andi         s6, tp, 1006
                  auipc        s6, 33663
                  sll          s6, s7, t6
                  xor          sp, ra, t6
                  add          a0, t1, t2
                  lui          s11, 994643
                  srai         tp, a7, 5
                  sub          s5, s10, a1
                  nop
                  slt          ra, t3, s7
                  sltu         s2, a3, a1
                  sll          s2, a4, zero
                  sltu         sp, t3, a3
                  addi         a1, t5, -489
                  add          gp, t5, t0
                  xori         s7, s9, 977
                  sub          zero, s0, s5
                  addi         zero, a6, -791
                  srai         s10, t5, 29
                  xor          s10, s6, sp
                  lui          s6, 382026
                  sltu         s0, a5, gp
                  sltu         t3, zero, a0
                  ori          a5, a7, 1847
                  addi         s2, t0, -1877
                  nop
                  sra          t1, s1, a1
                  srai         s10, sp, 11
                  and          sp, zero, a3
                  xori         t6, s0, -1575
                  sub          a2, s9, t3
                  sll          a0, tp, a5
                  srli         a4, s8, 1
                  lui          ra, 848983
                  slli         ra, s3, 6
                  ori          s3, a4, -85
                  addi         tp, a7, -1964
                  lui          s8, 641989
                  sltu         a6, a4, t6
                  slli         a1, s6, 20
                  sltu         s2, t6, a2
                  nop
                  sll          t0, t6, s11
                  and          a0, a1, t5
                  add          tp, sp, s10
                  srli         t6, t6, 10
                  srl          t0, a6, t0
                  or           t6, t5, a4
                  srai         t0, a5, 2
                  andi         a1, s4, 1794
                  sltu         t0, a6, t3
                  xor          s0, ra, t1
                  srli         s7, s7, 4
                  andi         t3, s0, -1881
                  sra          t5, tp, s4
                  nop
                  andi         s1, zero, -804
                  slli         a6, t6, 28
                  lui          s10, 324404
                  sltiu        s2, t1, 791
                  sll          s7, t0, t5
                  sll          a2, t3, s2
                  ori          a2, s11, -2045
                  slli         s5, a2, 12
                  sltu         a2, a2, t1
                  srai         t6, a5, 9
                  srl          s10, t4, a7
                  sltu         ra, s8, a7
                  xor          a3, s11, t4
                  slti         t5, s10, 715
                  auipc        tp, 409422
                  slli         s1, s5, 14
                  slli         s5, a1, 27
                  add          a4, a2, t5
                  auipc        s8, 908201
                  xori         gp, a5, -1834
                  andi         t1, s4, 1474
                  add          t3, s2, a0
                  and          s0, t4, ra
                  lui          a6, 49979
                  xor          s9, t4, a4
                  xori         s1, t5, 900
                  slli         ra, a4, 19
                  sub          s7, t2, s3
                  srai         a1, tp, 25
                  add          a7, a0, s7
                  srl          t5, s8, tp
                  sltiu        s3, t2, 1826
                  srai         s8, a6, 4
                  sltu         a4, s10, gp
                  xor          ra, a6, tp
                  sub          a1, gp, a0
                  slli         s6, sp, 1
                  sub          s8, ra, t1
                  lui          s9, 892877
                  and          a5, s9, tp
                  addi         t1, a2, -732
                  nop
                  sub          s10, s3, s7
                  slt          s9, s8, zero
                  xori         zero, s0, -1506
                  sll          a5, a0, s11
                  slti         ra, a2, 834
                  slti         a6, t5, -90
                  lui          a5, 907341
                  or           s5, s7, s8
                  sll          s8, a6, gp
                  sltu         gp, s1, s0
                  xor          s10, t2, s6
                  slti         a1, zero, -139
                  srl          t6, a3, s7
                  srl          t6, a5, t5
                  addi         a5, a3, 1920
                  addi         a4, gp, 215
                  sltiu        a7, s4, 1795
                  andi         tp, t1, -341
                  and          a5, s8, s3
                  slli         a5, a5, 26
                  slti         tp, a6, 1636
                  auipc        a0, 591585
                  slli         s2, s11, 14
                  lui          s6, 342204
                  ori          s2, ra, -1786
                  sra          a2, a2, s7
                  slt          a2, s6, s7
                  and          s1, s6, gp
                  slli         a2, s8, 9
                  sltiu        a0, zero, 1874
                  slt          s5, s6, t5
                  sll          gp, s0, s4
                  sltiu        t0, a1, 620
                  lui          t6, 620783
                  srl          t5, t0, s1
                  sltiu        t5, t4, -1772
                  slli         s0, s11, 13
                  andi         t3, s1, 1544
                  add          a7, s11, s7
                  auipc        t6, 402173
                  xori         t3, t6, 1073
                  nop
                  srai         a2, a4, 3
                  slt          s9, s4, tp
                  slt          a2, gp, s0
                  sra          a1, s8, a3
                  xor          s7, s1, s2
                  sltiu        a0, s0, 1564
                  and          s5, sp, a3
                  sub          t6, zero, t4
                  sltiu        a0, s9, 1791
                  and          ra, s0, s3
                  addi         gp, sp, -1664
                  xor          s2, tp, a7
                  or           a3, zero, s7
                  sra          gp, a5, tp
                  nop
                  sltiu        s2, s6, -1749
                  slli         s1, s3, 6
                  andi         s9, a2, 678
                  slli         s5, s2, 2
                  xor          a1, s7, s11
                  sltiu        gp, t1, -860
                  sub          gp, a2, s2
                  srl          t3, s0, t0
                  slti         sp, s3, 40
                  slt          s3, gp, s6
                  slti         a6, a1, -1984
                  sltiu        sp, a2, 207
                  sltiu        t1, s8, 1696
                  sra          t6, a3, s11
                  ori          s11, zero, 1933
                  nop
                  xori         zero, s0, 959
                  sll          sp, t1, a0
                  ori          a3, t4, 358
                  sltiu        a5, t2, -2030
                  and          a1, zero, tp
                  lui          t6, 461719
                  lui          s7, 1045712
                  slli         a7, s10, 0
                  sll          s11, s11, a5
                  srli         s8, tp, 14
                  sub          s6, s11, a6
                  nop
                  xor          gp, s1, a1
                  srai         s6, s6, 10
                  sltiu        sp, s1, -158
                  srl          a0, t5, a4
                  auipc        tp, 269645
                  ori          s0, a5, 1378
                  srl          s3, s4, a2
                  srli         zero, a0, 1
                  auipc        a7, 850885
                  xori         a3, s5, -450
                  slti         s3, s10, -979
                  xor          s1, sp, s1
                  sltiu        sp, s1, 1591
                  sub          t3, s7, zero
                  xori         t6, s5, 1035
                  add          a3, t5, s5
                  sra          zero, a0, s3
                  slt          s6, zero, t3
                  sll          a6, t1, t1
                  add          s3, s9, s5
                  xori         ra, t6, 209
                  xor          a1, t6, s8
                  xori         s11, t4, -1831
                  sra          s0, gp, s7
                  andi         s7, a5, 1588
                  auipc        s9, 778482
                  slti         a4, s11, -104
                  sra          sp, t6, ra
                  sll          a1, a4, a3
                  sub          s6, t2, s4
                  sub          a1, s7, s6
                  sltiu        s6, a0, -869
                  ori          sp, a2, -756
                  auipc        a2, 606837
                  srl          ra, a1, a2
                  srl          s7, a7, a6
                  auipc        a3, 920809
                  sub          s10, a5, a7
                  and          a4, s0, t0
                  or           s9, s10, a2
                  slt          a5, a0, s0
                  sll          t0, s1, s0
                  xori         a4, t1, 189
                  xori         zero, sp, 370
                  srl          t1, a4, s8
                  srli         t6, s2, 4
                  slli         sp, a1, 4
                  slli         s5, a3, 31
                  xori         t5, ra, 1962
                  srli         s9, t4, 15
                  xor          a3, t0, a1
                  slti         a5, t3, -605
                  or           t3, t4, gp
                  auipc        t0, 148203
                  srl          s10, tp, s9
                  srai         a2, sp, 18
                  add          t5, t4, a5
                  srai         t3, s9, 21
                  ori          t6, t0, -1910
                  sltiu        t3, a3, 1885
                  addi         gp, a3, 9
                  slt          s1, sp, t4
                  and          s0, a4, t5
                  xor          a7, t0, s2
                  srai         s1, a2, 14
                  sra          t3, s9, s0
                  srai         s8, s11, 23
                  xori         a7, t1, 130
                  sll          zero, s7, s8
                  srli         t3, zero, 6
                  or           t6, ra, t6
                  sra          t1, s4, s11
                  sll          tp, s9, a1
                  srl          t1, t3, tp
                  slt          t1, ra, s4
                  sltu         s6, a3, s9
                  sra          a0, s5, a7
                  auipc        t1, 774629
                  or           t3, s6, t6
                  slli         a1, t1, 20
                  andi         s9, ra, -157
                  and          a1, s6, s11
                  lui          zero, 864023
                  slti         s10, t6, 782
                  sub          t0, a5, s1
                  xori         sp, s10, 723
                  sltiu        s10, t1, -359
                  slli         t6, s7, 11
                  ori          s10, t2, -1358
                  sra          t6, s0, s4
                  sltu         zero, s8, a6
                  sra          a0, s0, s7
                  add          s6, sp, s7
                  srli         ra, s11, 12
                  srai         tp, a0, 10
                  xori         a1, zero, 685
                  slt          a0, a0, s4
                  srli         s11, s2, 14
                  slli         s8, s0, 26
                  andi         t0, tp, 1715
                  ori          t5, s7, -1829
                  andi         s6, t1, -1061
                  srl          tp, s5, t5
                  sll          gp, s0, t1
                  andi         gp, s4, -413
                  slt          a6, s11, sp
                  slli         a7, s4, 28
                  sll          a3, a2, a6
                  srl          a3, s0, t2
                  slt          ra, s5, gp
                  add          t5, t2, a3
                  sltiu        s5, a3, -1421
                  sll          t5, a2, tp
                  lui          a4, 45320
                  or           s9, a7, t5
                  nop
                  sra          s2, s8, s6
                  ori          s1, ra, 1823
                  sll          a6, t1, t2
                  srli         t3, gp, 8
                  sra          t0, s7, t4
                  xori         t6, s8, 259
                  srl          s5, t5, a7
                  sra          s6, t6, a0
                  lui          s9, 312124
                  sll          t0, s7, s11
                  andi         s7, sp, -1586
                  sll          s8, zero, zero
                  auipc        t0, 601297
                  xori         s7, t0, -1634
                  sltiu        s3, t6, 1894
                  sltiu        s9, a5, -462
                  andi         zero, s0, 1140
                  sltiu        s10, s10, 377
                  srl          s3, s5, t6
                  lui          s2, 646569
                  sltiu        t1, s0, -798
                  srli         a5, a1, 3
                  add          s11, s6, a6
                  xor          s0, t2, t5
                  sra          s2, s6, t5
                  slli         s11, a1, 24
                  auipc        a1, 956795
                  auipc        s0, 346095
                  and          ra, sp, a6
                  sltiu        a7, a5, 1541
                  lui          s11, 245682
                  slli         a5, s7, 28
                  slli         s11, t0, 10
                  andi         s5, a3, 1733
                  lui          a2, 34452
                  sra          s9, s7, a1
                  nop
                  andi         s5, a1, -688
                  or           s11, a2, gp
                  sll          a3, a0, s9
                  sra          a1, s9, a1
                  sub          s0, s6, ra
                  or           t6, s2, s2
                  xori         s1, a7, 76
                  srai         ra, s0, 20
                  sra          s8, s0, t6
                  sll          a5, s1, t6
                  slti         a3, zero, 1203
                  ori          a1, zero, -1999
                  slti         a6, t6, 66
                  auipc        ra, 776072
                  slt          t5, a0, t3
                  addi         a2, s2, -1180
                  slt          s5, s9, a3
                  sltiu        a3, a3, -365
                  lui          t1, 424979
                  or           a2, t6, t0
                  or           a0, s4, t0
                  srl          t1, a6, t3
                  sra          a5, gp, t1
                  ori          a6, s4, -1710
                  slt          s3, t5, a2
                  srl          a6, a2, s3
                  srl          s0, a1, t0
                  ori          a7, sp, 1820
                  nop
                  addi         t0, t1, -609
                  sra          s3, ra, t5
                  addi         s1, gp, -856
                  srli         a1, s5, 6
                  ori          t0, zero, -844
                  addi         gp, t3, -600
                  xor          a2, t3, t2
                  slti         s3, s2, -397
                  addi         s1, tp, -737
                  lui          s3, 430898
                  srli         s9, s9, 2
                  srl          t1, s11, s0
                  srl          a5, a3, s8
                  auipc        tp, 591934
                  xor          a5, s3, t0
                  auipc        s1, 575708
                  srl          tp, a0, a1
                  addi         a5, t0, 1240
                  srl          t6, s9, a7
                  slt          a2, sp, t4
                  auipc        a0, 685212
                  nop
                  sltu         gp, s1, s4
                  sub          tp, zero, s9
                  srai         t6, a5, 13
                  slli         s3, a2, 2
                  slli         a4, s3, 22
                  sra          s10, s8, s0
                  srli         t0, s11, 30
                  sll          t1, s0, t6
                  ori          sp, tp, 1288
                  srai         s6, s1, 13
                  sub          a7, a6, s11
                  addi         t5, a6, -734
                  srl          t6, a1, s2
                  sll          s6, s6, a0
                  or           t1, s0, s9
                  and          a0, a2, a4
                  sra          gp, zero, s5
                  srli         a0, a5, 23
                  andi         s0, t4, 680
                  or           t3, t5, s5
                  sub          a3, t0, s6
                  slli         s2, ra, 9
                  lui          a4, 678211
                  xori         gp, a3, -1638
                  srli         s3, t4, 29
                  sltiu        t0, zero, 544
                  sltu         a2, t2, ra
                  ori          a7, a6, -2041
                  sub          tp, s5, s5
                  auipc        a0, 749088
                  nop
                  slt          t6, a1, s4
                  nop
                  sltu         t0, s10, s2
                  slli         sp, t5, 26
                  lui          a3, 446959
                  xori         a6, a0, -1675
                  sltu         s1, s6, a1
                  auipc        s0, 293973
                  srai         s7, gp, 17
                  slti         s7, s6, 273
                  xori         t3, gp, 1118
                  or           a5, s1, a0
                  auipc        t5, 561940
                  sll          s3, t5, t6
                  sltiu        s3, t0, 264
                  xor          s5, a5, s7
                  andi         s3, s4, 1949
                  xor          tp, t4, s0
                  lui          a3, 949631
                  add          t0, zero, a4
                  xor          s7, t4, a0
                  addi         s9, s0, 922
                  and          s8, a3, tp
                  sra          s6, a2, ra
                  ori          sp, ra, 1447
                  srli         s10, s10, 30
                  slli         s7, s6, 6
                  ori          a0, s10, -1479
                  xor          t5, zero, a4
                  lui          s5, 853899
                  andi         s0, s4, 1482
                  ori          s11, a7, -1210
                  xori         s8, a2, 437
                  ori          s7, s3, 37
                  sltiu        s11, s6, 776
                  srai         s5, sp, 12
                  andi         s5, s11, -602
                  or           s7, tp, s6
                  andi         a1, zero, -1874
                  srai         gp, s4, 17
                  nop
                  xor          t5, a3, s1
                  ori          s9, s11, -662
                  xori         s5, s2, 879
                  sll          s6, s3, gp
                  or           s3, a1, s9
                  lui          s7, 450411
                  add          s2, a5, ra
                  add          a7, s2, t3
                  lui          s0, 842088
                  addi         t3, a3, 373
                  srli         t6, t5, 0
                  sub          a6, s7, a3
                  sub          t5, t5, s1
                  ori          s10, a3, -847
                  slt          gp, t5, s4
                  srai         s3, a6, 0
                  auipc        tp, 265070
                  slt          a2, a2, a6
                  sra          s11, s11, s3
                  sra          s1, tp, t1
                  srai         t5, t4, 6
                  lui          s1, 412012
                  srli         gp, s5, 15
                  slt          a3, t2, t4
                  ori          a4, a3, 1782
                  slti         a4, a6, -1397
                  srai         t5, s6, 24
                  and          s0, t2, s10
                  sub          tp, t0, ra
                  slti         s1, a0, -1134
                  xor          s6, t5, tp
                  addi         s1, a6, 812
                  slti         s1, a0, 441
                  add          s8, s11, s10
                  xori         a2, zero, -1223
                  nop
                  sltiu        s3, a6, 1351
                  srl          s2, t4, t3
                  srli         t3, zero, 15
                  sltiu        tp, a3, -1482
                  sltiu        s1, s3, 817
                  srl          t0, a4, sp
                  nop
                  srai         s10, s11, 18
                  sub          t0, s7, a6
                  addi         s0, a2, -977
                  slt          zero, s7, ra
                  slli         s11, a6, 7
                  slt          s5, a4, sp
                  sll          a7, a7, t1
                  add          a7, ra, a5
                  sll          s10, gp, a0
                  sra          a1, ra, a6
                  xori         s5, s1, -285
                  xori         s5, s9, -543
                  nop
                  sltu         t5, s10, t5
                  and          t3, s6, gp
                  sra          zero, s4, zero
                  sltiu        gp, t2, 1251
                  srai         a0, s0, 6
                  sub          s11, s2, a4
                  ori          s3, ra, 212
                  slt          s7, ra, a2
                  sltu         a6, t0, gp
                  nop
                  and          a0, t4, zero
                  srli         t0, t3, 5
                  addi         a6, a4, -395
                  sll          s9, t5, s8
                  sltu         sp, t0, s11
                  xori         s11, s9, -1864
                  sltu         t1, gp, s3
                  sltu         a0, t1, s6
                  slt          s2, s8, a0
                  nop
                  lui          s0, 423127
                  ori          a0, t5, -1999
                  srli         s0, s8, 1
                  andi         a2, a0, 219
                  sra          s5, t3, s5
                  or           s9, t1, s5
                  xor          s1, s6, t4
                  ori          a3, s3, -34
                  srai         s11, a3, 11
                  xor          s7, zero, s3
                  slt          s10, a4, zero
                  xor          t1, s8, zero
                  ori          s2, a7, -1626
                  or           t0, a5, zero
                  nop
                  ori          a0, a7, 1227
                  slli         t1, a0, 31
                  srli         s8, s7, 16
                  add          gp, s4, sp
                  sltu         gp, s3, a5
                  srai         t3, s9, 6
                  or           tp, a5, a0
                  sltu         t0, a1, ra
                  sltiu        s2, s5, 660
                  auipc        tp, 390898
                  or           a4, s9, s10
                  sltiu        s7, a5, 344
                  addi         a7, s1, -898
                  lui          a0, 384611
                  or           a3, s11, a0
                  ori          s1, gp, -85
                  sll          s9, tp, t0
                  and          ra, s0, t3
                  slt          s5, a0, t6
                  sll          ra, s6, a4
                  sll          a4, s11, t4
                  ori          a7, s3, 1272
                  sra          tp, ra, tp
                  xor          s11, a5, t1
                  auipc        a0, 784802
                  sltiu        ra, s10, 2042
                  sub          s11, a0, a3
                  ori          s5, s7, 844
                  srli         t5, a3, 2
                  lui          s3, 626791
                  ori          s3, ra, 1464
                  xor          s2, s6, t4
                  srai         a0, s4, 3
                  srl          s2, s10, s6
                  lui          ra, 137348
                  and          a6, s6, a3
                  and          a4, s11, gp
                  sll          t3, a0, gp
                  and          s3, s4, sp
                  nop
                  sra          t1, s4, sp
                  ori          s11, a7, 990
                  slti         s9, s6, -219
                  srl          t1, s7, zero
                  xori         s11, t6, -510
                  add          a5, s11, s4
                  auipc        s2, 291174
                  lui          s8, 449643
                  sltu         t3, a3, t1
                  add          a6, s10, s9
                  slti         a5, s0, -420
                  andi         a5, zero, 359
                  ori          a2, a3, -106
                  or           t3, s0, a4
                  ori          s1, a1, 1793
                  sra          a3, s1, t5
                  or           t0, a2, a6
                  slt          a5, sp, zero
                  or           t0, s5, s10
                  srl          s1, a1, t1
                  or           s2, s8, s8
                  lui          tp, 905671
                  sltu         t6, t2, s5
                  sltu         a7, t2, t5
                  slti         s2, ra, -344
                  slli         gp, a5, 7
                  xor          s6, s3, a7
                  slti         t3, s10, 754
                  sra          s0, s0, t2
                  sll          s7, sp, a0
                  sltiu        a2, a4, 1377
                  sltiu        s11, ra, 742
                  srai         a6, s6, 1
                  or           t6, t0, t0
                  andi         t5, s5, 646
                  sltu         s1, t6, t5
                  sltu         a7, s6, s6
                  add          a1, s5, s10
                  slti         s7, s7, -1658
                  slti         s9, t1, 311
                  and          gp, t6, t6
                  addi         s9, a2, -683
                  sltiu        s0, s0, -2014
                  sltiu        a4, s8, -1689
                  addi         s10, a3, -340
                  and          zero, s0, s3
                  srai         a6, s6, 17
                  xor          zero, a0, s0
                  add          t1, s6, zero
                  add          sp, s9, a5
                  sltiu        s11, t6, 2006
                  andi         sp, a0, 502
                  slti         a1, s4, 936
                  addi         s6, a4, 1694
                  auipc        t1, 324541
                  add          t6, a2, a0
                  sltiu        t0, gp, 155
                  srai         s7, s11, 3
                  sub          ra, t5, t4
                  add          s3, t5, ra
                  srl          a7, a1, s3
                  andi         a4, a1, 691
                  srai         a3, t0, 4
                  srli         a6, s1, 14
                  sltiu        a0, sp, 237
                  addi         sp, a7, 1276
                  sra          a2, t0, a3
                  slt          s6, a2, s1
                  andi         s7, t3, 2006
                  xor          s11, t2, s1
                  sra          a3, s0, a6
                  andi         a6, gp, 1499
                  addi         s1, t1, 42
                  auipc        a2, 612376
                  xori         s10, a7, 623
                  nop
                  sltu         s6, gp, s6
                  andi         t6, zero, 915
                  sra          a1, t5, t0
                  srli         s5, t0, 16
                  xor          sp, sp, t6
                  sub          a7, s9, s8
                  slli         s0, a7, 11
                  xor          s0, a3, s1
                  and          s9, s7, a3
                  add          s3, a2, a3
                  xori         s5, s2, 1083
                  or           ra, s9, s9
                  andi         gp, t6, -40
                  andi         a0, s7, -325
                  nop
                  srai         t6, sp, 5
                  sltu         s9, a1, s10
                  xori         s7, s8, 1506
                  sll          s11, s9, a4
                  andi         t3, t2, 1469
                  slli         a0, s8, 31
                  sltiu        s6, t0, -722
                  lui          a3, 317519
                  slti         s11, s3, 470
                  ori          a7, s3, -2022
                  srl          t3, t1, a4
                  slti         t3, s2, 1841
                  xor          a4, s7, t5
                  sra          sp, ra, tp
                  slti         t5, t5, -1842
                  sltiu        t6, s2, -1512
                  slti         a6, t2, -1471
                  sll          s8, s1, t5
                  addi         a2, a6, 971
                  addi         s11, s0, 1276
                  and          s8, s11, s3
                  sltiu        a3, s11, -808
                  lui          ra, 733527
                  sltu         s6, a6, t0
                  sltu         s10, s2, tp
                  slti         t0, s1, 1684
                  srli         s6, tp, 10
                  or           s10, t4, a0
                  sltu         gp, s3, a4
                  sra          a3, a5, s7
                  srai         a2, t1, 29
                  add          tp, s5, s8
                  and          s5, t0, a5
                  sll          s0, a0, s7
                  srai         s9, t1, 13
                  slt          t1, s9, s0
                  slti         gp, s9, 2011
                  xori         a3, s9, -332
                  addi         s11, a4, 736
                  slli         a5, tp, 15
                  sltiu        s3, sp, -210
                  sltu         s5, s5, a3
                  sltiu        a6, s10, 1355
                  slt          s0, s2, sp
                  and          t5, t2, ra
                  slt          s11, s1, tp
                  srai         s11, a7, 13
                  auipc        s3, 214391
                  srl          s3, t6, a4
                  xori         gp, gp, -1687
                  lui          sp, 670681
                  sltu         a7, s4, t3
                  ori          s9, a6, -191
                  auipc        t5, 356077
                  ori          a2, s6, 792
                  slli         s5, s8, 14
                  lui          sp, 586170
                  sra          a6, tp, t2
                  or           s0, a2, s1
                  or           a5, a0, s0
                  xor          gp, s5, tp
                  srl          t5, s3, s10
                  srl          a6, sp, a1
                  srli         t5, t2, 30
                  sltiu        a5, s4, 131
                  sll          s9, s1, s1
                  sltiu        a1, t3, -672
                  slti         s6, s7, -1432
                  slli         s5, s7, 11
                  auipc        a6, 566321
                  andi         a4, s11, -2000
                  auipc        a5, 817029
                  or           s9, tp, a5
                  slti         sp, ra, 562
                  srli         a0, t0, 18
                  slti         sp, a3, -1641
                  xor          t6, s5, ra
                  xor          s5, gp, s5
                  ori          s11, t0, -317
                  sltiu        a5, s6, 1659
                  sltu         s9, s8, s0
                  sra          a6, s7, s3
                  add          t1, s0, s11
                  lui          tp, 127611
                  slti         sp, t3, 1922
                  srli         t6, t5, 28
                  or           s0, s10, t4
                  andi         a6, t3, 1141
                  srli         s1, t6, 19
                  nop
                  addi         a6, s1, -537
                  slt          s0, t2, s10
                  and          ra, s10, zero
                  and          t1, s11, s2
                  srl          t6, sp, t4
                  xor          s2, t4, tp
                  xor          a3, t0, s7
                  slli         gp, s9, 6
                  auipc        a5, 351580
                  sltu         gp, s9, ra
                  srai         s10, a0, 7
                  add          t3, s3, s0
                  sltu         a3, t6, sp
                  auipc        zero, 382957
                  sltiu        s5, s11, -283
                  srai         a7, s4, 29
                  sltiu        s10, t1, -1164
                  auipc        a2, 516616
                  xori         a3, t5, -1443
                  xori         zero, sp, -1693
                  slti         t6, zero, 1669
                  xor          a3, t0, a7
                  add          s0, s9, a6
                  srai         t5, t1, 13
                  srai         s3, s5, 29
                  addi         s8, t6, 2039
                  srl          t0, s8, a7
                  add          s6, a5, s11
                  slti         s7, a7, -94
                  and          tp, s3, ra
                  lui          s3, 1043459
                  slti         s11, a6, -94
                  sub          zero, s6, s5
                  lui          zero, 548216
                  srai         s3, zero, 13
                  auipc        t1, 829736
                  sra          sp, a2, s7
                  sub          a5, s2, t1
                  nop
                  add          a0, t5, ra
                  sra          s7, t0, t6
                  auipc        a2, 861345
                  srai         a3, gp, 31
                  xor          s0, a3, a2
                  or           tp, t4, s10
                  andi         s2, s3, 877
                  lui          a0, 751170
                  andi         s2, ra, -519
                  ori          t5, zero, 66
                  sub          s1, s0, a6
                  andi         a5, s5, 1158
                  slt          s11, s4, t5
                  nop
                  sll          s5, t5, a3
                  sll          gp, a5, s11
                  ori          s11, s1, -1647
                  srl          s9, s9, a3
                  andi         gp, t6, 99
                  and          a6, t2, s6
                  and          gp, s9, t5
                  slti         a0, t6, -1754
                  slti         a3, t5, 1935
                  sub          t6, a2, a4
                  sltu         sp, a7, a1
                  or           a3, t0, s4
                  nop
                  lui          s2, 514376
                  slti         zero, s2, -1139
                  or           s11, s4, s8
                  xori         sp, t1, -51
                  srli         zero, a0, 30
                  slt          s11, s5, s3
                  srl          s1, tp, zero
                  slti         t1, a2, 1250
                  srli         a3, s11, 4
                  auipc        t3, 1007910
                  sltiu        s9, a7, 584
                  slti         s5, s2, -1603
                  sub          s8, a7, s0
                  slt          a7, sp, s0
                  addi         s10, a5, -749
                  auipc        ra, 823938
                  slt          a6, a6, a1
                  srl          a2, s2, ra
                  auipc        a0, 23484
                  srl          a6, t6, a2
                  auipc        sp, 567086
                  sra          t3, a2, a1
                  andi         a7, a2, -1252
                  andi         a2, s2, 37
                  sltu         s11, s0, s5
                  sltiu        t1, s6, -32
                  lui          s2, 752930
                  srl          t5, s6, a1
                  sltu         a1, s5, a5
                  srli         s3, s1, 19
                  srl          s2, s9, s8
                  sll          s8, t1, t1
                  add          s2, a2, t4
                  lui          s0, 147667
                  nop
                  srl          s10, ra, a1
                  slt          s6, a4, t0
                  or           t3, a7, t4
                  and          ra, s8, s6
                  sra          a5, s7, s8
                  sltu         s3, a0, s8
                  slli         a2, t6, 30
                  srl          s0, gp, tp
                  xori         a4, t4, -1442
                  sltiu        a0, s8, 145
                  slli         t3, s5, 2
                  srai         a0, s9, 7
                  sltu         tp, tp, a2
                  sub          a1, a1, a3
                  slti         a0, s0, -1107
                  sra          s0, sp, t4
                  and          a5, s11, s9
                  xor          s11, a6, a6
                  sltu         s9, s2, t0
                  sub          t3, s3, s10
                  slli         s8, s0, 24
                  srl          t1, t1, a5
                  auipc        t5, 1037972
                  xor          s2, s3, s7
                  sub          zero, a0, a4
                  slt          s9, a6, gp
                  srai         s11, sp, 10
                  ori          s3, s3, 288
                  srli         a6, t2, 7
                  sltu         s9, a5, a1
                  xori         t5, a4, -1749
                  andi         s11, t4, -898
                  sltiu        a7, s1, 1302
                  addi         a5, t2, -1491
                  auipc        ra, 628140
                  ori          tp, a6, -232
                  sub          s1, s2, a1
                  and          s0, s11, s5
                  xori         t5, t0, 1539
                  slt          tp, s2, s3
                  or           sp, a5, a4
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           s6, 0x135a0fb3
                  li           t3, 0x80000000
                  li           ra, 0xffffffff
                  li           a6, 0xbe05be74
                  li           sp, 0x26e7793c
                  li           t5, 0xffffffff
                  li           s1, 0x93d74e8
                  li           s8, 0x0
                  li           gp, 0x0
                  addi         s9, a6, -1481
                  auipc        t3, 13558
                  sub          ra, s8, sp
                  addi         s9, gp, 1963
                  lui          t5, 152426
                  nop
                  nop
                  auipc        gp, 992101
                  sub          s1, sp, s9
                  auipc        sp, 567004
                  sub          sp, sp, t3
                  nop
                  add          gp, gp, ra
                  nop
                  auipc        sp, 744985
                  auipc        t5, 216808
                  sub          gp, a6, sp
                  lui          t5, 124506 #end riscv_int_numeric_corner_stream_16
                  add          s1, t4, ra
                  sub          s10, s9, a1
                  sltiu        s3, t1, -194
                  slli         s1, s5, 20
                  xori         t5, t0, -880
                  sub          a2, t0, a0
                  slli         s1, s4, 13
                  sll          a3, s10, s9
                  sub          t5, a1, s0
                  lui          t6, 426888
                  srli         zero, s7, 25
                  sra          s2, s7, s10
                  srl          s8, s0, a0
                  slt          a2, s6, t4
                  lui          s8, 737533
                  nop
                  add          ra, a0, t4
                  slli         a4, a3, 16
                  add          s0, s10, a0
                  addi         s11, s6, -1434
                  sra          s5, s5, t6
                  ori          a6, ra, -419
                  lui          sp, 672204
                  sll          zero, s3, tp
                  add          zero, tp, t1
                  srai         s6, a6, 19
                  nop
                  add          s6, s7, a7
                  sub          tp, zero, s10
                  addi         a4, s11, 1298
                  auipc        s2, 909208
                  slt          t3, ra, t5
                  sltu         a6, sp, s9
                  add          t5, gp, t4
                  xori         s11, sp, 1498
                  sub          t6, s3, a3
                  addi         t5, s9, 1885
                  sltiu        s2, s10, 334
                  addi         s10, a3, 302
                  and          s2, s9, t2
                  sub          t5, t4, zero
                  slti         s3, sp, 1025
                  or           t3, s9, t6
                  sll          t0, a3, s0
                  auipc        s5, 47392
                  sll          s5, tp, a7
                  andi         gp, s1, -1980
                  ori          a2, t4, -517
                  sltiu        s2, t3, 1696
                  slti         s8, a4, -1214
                  sll          ra, ra, s11
                  xor          t6, s4, s1
                  xori         a5, s11, -1201
                  srai         s3, a1, 0
                  srli         t6, t6, 4
                  sra          s1, a6, s6
                  lui          s11, 475891
                  xor          s0, a6, sp
                  sll          a3, s2, a4
                  srai         s11, tp, 4
                  srai         a0, a4, 10
                  nop
                  srl          s2, s1, s3
                  and          a3, ra, a1
                  sra          a0, t6, t2
                  srl          a5, a1, s1
                  and          a3, s0, t6
                  lui          a6, 527721
                  ori          sp, a6, 507
                  sub          t6, a3, s6
                  xori         ra, tp, -236
                  sll          a5, s3, s2
                  andi         s5, s4, 23
                  or           s5, s10, s11
                  nop
                  ori          a4, t2, -1377
                  srli         t3, a2, 3
                  sll          t5, a3, s6
                  slli         tp, s4, 19
                  slt          s5, t0, s9
                  andi         s5, t4, -1468
                  sra          ra, a1, a0
                  sltu         gp, t1, s9
                  slt          s9, s2, t0
                  slli         s3, s11, 8
                  xor          sp, t4, t6
                  lui          a5, 183037
                  srli         s3, t6, 0
                  slli         gp, a5, 2
                  add          a5, s3, s7
                  slli         sp, a1, 19
                  sub          s7, t4, a0
                  slli         a0, s10, 24
                  sltiu        s3, a2, -1284
                  ori          a5, zero, 1747
                  sltu         gp, s7, s11
                  add          tp, s1, t3
                  nop
                  auipc        a5, 1047364
                  slt          s1, a2, t3
                  sll          zero, s0, t0
                  add          sp, a1, s8
                  auipc        s7, 494538
                  nop
                  xori         s9, a2, 2002
                  and          s5, t1, zero
                  sub          gp, s4, a6
                  sll          s6, s4, s4
                  nop
                  sltiu        gp, a5, 1738
                  slt          s7, t4, s2
                  xor          a5, a5, a0
                  andi         a3, s8, 1652
                  ori          zero, t0, 883
                  and          a1, s8, gp
                  add          t3, s10, s2
                  sll          a7, t2, s11
                  xori         sp, a1, -1750
                  andi         a1, a4, -1276
                  add          t3, a5, tp
                  lui          a1, 935567
                  lui          zero, 74240
                  slti         s6, a4, 1710
                  slt          s2, gp, ra
                  and          s1, a7, s9
                  nop
                  slti         s6, a0, -53
                  or           s11, s0, s4
                  nop
                  srl          tp, s5, gp
                  xori         t5, a7, 15
                  addi         gp, t4, -1448
                  xori         t0, s5, -668
                  xori         a3, s1, 1314
                  addi         zero, zero, 1089
                  slti         a4, s2, -1783
                  srl          t6, s4, s2
                  srl          s9, a3, sp
                  nop
                  srai         a1, s5, 18
                  sltu         t5, s3, t6
                  xor          s0, s10, t6
                  xor          t5, s4, t5
                  slti         tp, a2, 749
                  nop
                  xor          s9, t0, s10
                  sltiu        a1, a3, -1853
                  sra          t6, a0, s9
                  srli         a7, t5, 26
                  addi         a3, a1, 1370
                  slli         a3, a4, 23
                  ori          s7, t3, 709
                  ori          sp, s10, -1729
                  slti         s1, s10, -174
                  andi         a1, s11, 252
                  sll          s8, s2, tp
                  auipc        t6, 549579
                  xor          a6, a1, ra
                  li           s0, 0xf9d7e5e8 #start riscv_int_numeric_corner_stream_10
                  li           tp, 0x0
                  li           a2, 0x0
                  li           s3, 0x80000000
                  li           s5, 0x99ecad17
                  li           s10, 0xffffffff
                  li           s8, 0x80000000
                  li           s11, 0x80000000
                  li           s1, 0x6a2d39f
                  li           sp, 0x80000000
                  add          s11, s8, s10
                  add          s3, s0, a2
                  lui          s5, 404499
                  addi         s1, s1, -150
                  add          s5, s8, sp
                  nop
                  nop
                  lui          sp, 236710
                  addi         s0, s1, 286
                  add          s5, s1, a2
                  add          sp, s5, s11
                  lui          s10, 1007874
                  add          s3, s0, s0
                  sub          a2, s10, sp
                  nop
                  lui          s0, 979952
                  add          s8, s10, s11
                  lui          s1, 589399
                  auipc        s8, 582152
                  nop
                  sub          s8, a2, s11
                  addi         s0, s0, -274
                  sub          s0, a2, s3
                  lui          a2, 439918
                  auipc        a2, 480179
                  add          sp, s5, s8 #end riscv_int_numeric_corner_stream_10
                  ori          ra, t3, 1400
                  or           a6, zero, s5
                  add          s6, a5, a0
                  srli         s10, s7, 16
                  sub          t0, tp, s11
                  add          s5, t6, s0
                  andi         s3, a5, -974
                  srai         s1, ra, 21
                  sub          s3, ra, s3
                  sll          a3, s0, a3
                  srli         t0, s9, 5
                  auipc        a5, 443432
                  and          a4, ra, t4
                  sltiu        s1, a7, -1694
                  xor          ra, t0, s0
                  auipc        s2, 938798
                  and          a6, t4, s6
                  srai         sp, s1, 9
                  srai         t6, s7, 14
                  xor          a1, tp, sp
                  slti         gp, t3, -550
                  slli         s6, s4, 31
                  add          a2, t3, s5
                  nop
                  sltiu        t5, t0, -1054
                  sll          gp, t0, s4
                  xori         tp, t4, -152
                  xor          s10, s11, t5
                  add          ra, s8, t5
                  slt          s11, t4, s8
                  addi         sp, s8, -1281
                  sub          t1, s10, a0
                  srli         s11, sp, 27
                  sll          s6, a1, zero
                  slti         a3, a2, -538
                  sltiu        sp, a1, 299
                  xor          s0, zero, t0
                  or           t3, zero, a7
                  xori         s8, a2, 2006
                  sra          s9, a5, s7
                  slti         tp, t0, -1991
                  slli         s5, s1, 11
                  slli         t5, a4, 24
                  auipc        a2, 783073
                  sra          sp, tp, t6
                  srl          a5, t3, a5
                  or           a0, s11, s0
                  slt          a5, s5, sp
                  auipc        s0, 687051
                  srai         s1, s11, 22
                  sub          s3, s8, gp
                  slli         s0, t3, 7
                  slti         t6, ra, 1945
                  xori         s8, tp, 34
                  srl          s11, sp, s8
                  sll          s7, gp, a0
                  add          s11, t3, ra
                  nop
                  srli         t1, s1, 13
                  xori         t5, s9, -478
                  and          a3, a2, s1
                  sub          s3, gp, s9
                  add          t0, gp, s4
                  and          a6, s8, t3
                  xori         a1, t3, 396
                  and          s2, a7, a4
                  slti         sp, t2, -278
                  andi         s9, a6, 166
                  add          s10, a5, t1
                  addi         a6, a1, -1948
                  or           s7, s5, a0
                  slti         zero, tp, -814
                  sra          sp, t6, t3
                  sltu         t5, s6, a5
                  sub          s2, t0, ra
                  xor          s3, s5, t5
                  and          t5, t1, t6
                  lui          t3, 350617
                  slt          s6, s5, a7
                  srl          a2, a2, a0
                  and          a1, s5, a0
                  nop
                  sltiu        sp, a6, 1560
                  add          tp, tp, s11
                  srli         s0, zero, 15
                  slti         gp, a5, -950
                  sra          t0, t1, sp
                  ori          ra, s10, 1837
                  sub          a5, t4, a6
                  add          s2, t2, s6
                  slti         a2, a1, -521
                  srl          t0, s9, sp
                  sltiu        s8, a5, 1547
                  ori          s9, sp, 1994
                  sll          a5, t4, t1
                  slli         s3, tp, 0
                  and          t1, s4, a7
                  addi         a1, t6, 172
                  or           sp, s4, t0
                  lui          s1, 306566
                  srli         t1, s2, 17
                  sltu         s10, gp, gp
                  or           t1, s6, a5
                  and          t3, s11, s7
                  andi         s6, a5, 1867
                  sltu         a5, s8, a0
                  xori         t3, s5, 569
                  srai         s6, t1, 16
                  auipc        zero, 415910
                  sra          s3, a7, a5
                  sltiu        a0, s7, 1010
                  srl          a7, s0, a3
                  xor          s10, zero, s6
                  sll          a3, a1, ra
                  ori          ra, t3, 435
                  slli         a1, tp, 18
                  slti         a2, t5, 821
                  sub          ra, s5, a3
                  auipc        s9, 585137
                  sltiu        ra, s9, -1407
                  xori         a2, s9, 1464
                  sll          ra, t4, s4
                  addi         a4, tp, 542
                  auipc        s5, 473897
                  xori         a1, t0, 1165
                  or           s9, a0, s4
                  addi         zero, tp, 130
                  addi         t3, s7, 929
                  srai         s5, t1, 12
                  sltiu        a0, t6, -1176
                  auipc        tp, 617781
                  addi         a6, s11, 52
                  nop
                  sltiu        t1, s0, 691
                  xor          s2, gp, a2
                  lui          s2, 408601
                  sltu         a0, s6, t5
                  add          a6, s6, s9
                  slli         t0, ra, 15
                  sll          s11, ra, t0
                  xor          s6, t4, a5
                  slli         s0, a0, 17
                  xori         t1, t2, 1084
                  addi         a1, tp, -767
                  sltiu        s3, a5, 62
                  sra          s5, t6, a6
                  srl          s2, s5, gp
                  sll          a6, zero, sp
                  xor          s5, a5, a0
                  srl          t3, s1, a1
                  or           ra, a5, a6
                  or           s9, t0, t1
                  sltu         t3, s4, t2
                  or           gp, s6, t5
                  or           a6, t4, t2
                  xor          s2, zero, a3
                  nop
                  or           s10, t1, s7
                  and          a5, ra, s4
                  sltu         t3, sp, a2
                  srl          s9, s7, s1
                  slli         t0, t4, 21
                  sltiu        t6, t0, -1850
                  xor          a5, t5, a6
                  ori          s3, t2, -1191
                  nop
                  sltiu        s6, a4, -321
                  andi         s5, s9, -852
                  sra          s9, s2, zero
                  lui          a6, 461733
                  srl          s3, tp, tp
                  srli         a2, a7, 7
                  ori          tp, s4, -1007
                  and          s2, a1, zero
                  add          ra, a7, s5
                  lui          a4, 562381
                  xor          t6, s8, a2
                  srl          t6, a5, a3
                  srai         t0, t1, 14
                  slli         s7, ra, 28
                  sll          a0, s8, t4
                  auipc        a5, 873775
                  srai         s3, s7, 13
                  lui          a4, 159683
                  add          t6, t5, s6
                  or           a6, a4, s10
                  andi         gp, t4, -1283
                  or           ra, s8, gp
                  lui          s8, 290701
                  addi         t3, t6, 1902
                  sub          a2, s8, ra
                  andi         sp, gp, 346
                  srl          s8, t6, t4
                  srai         a1, a2, 15
                  srai         tp, t5, 9
                  xori         s2, tp, -1694
                  auipc        s11, 801137
                  addi         a2, s11, 702
                  addi         t3, a0, -213
                  sltu         s1, ra, a1
                  slti         sp, s7, 1478
                  auipc        s8, 774395
                  sub          t5, tp, s8
                  xor          tp, s6, s1
                  sll          s2, tp, zero
                  sll          a1, a1, s0
                  slt          s1, s1, s8
                  sltu         s0, s1, s5
                  sltiu        a6, s11, 137
                  addi         s5, t2, 109
                  and          a7, s6, t4
                  srl          a5, t2, s5
                  nop
                  slt          s1, s9, a4
                  sra          a7, s8, gp
                  sll          t0, s4, s5
                  xor          s8, a2, t2
                  lui          s3, 644218
                  slti         s6, tp, -109
                  sltu         t1, s8, s6
                  srli         t0, s7, 17
                  xor          t1, s3, s3
                  addi         t0, t6, 951
                  srai         a7, s11, 14
                  nop
                  auipc        s11, 485880
                  xori         s5, s8, -1986
                  nop
                  srli         sp, s5, 18
                  slt          s5, t1, s5
                  nop
                  lui          a3, 74944
                  srl          t0, a2, a7
                  sll          t5, a4, t4
                  slli         s5, a2, 3
                  sra          a1, a1, t6
                  xori         a4, s9, 1876
                  ori          s3, sp, 1662
                  slli         a7, a2, 9
                  ori          s5, gp, -1508
                  ori          a1, t2, 1242
                  nop
                  slli         s11, ra, 30
                  sltiu        s1, s8, -427
                  srl          t1, tp, s2
                  sltiu        a2, t2, 1194
                  sltiu        a7, sp, -238
                  slt          s9, gp, a1
                  and          s3, a0, t0
                  nop
                  add          t5, t0, s4
                  or           a4, a4, gp
                  xori         s6, ra, -1319
                  slt          s1, a4, a6
                  sltiu        t3, t0, 1448
                  srli         t1, s5, 2
                  srai         s0, t1, 23
                  andi         a5, s8, -278
                  sltu         tp, gp, t0
                  and          s0, s3, s5
                  sra          s10, sp, sp
                  sra          t1, s5, t2
                  nop
                  add          s6, s11, t1
                  sltiu        a3, s1, 1933
                  addi         s8, s2, -1672
                  sra          s10, s3, sp
                  srl          s6, a6, s9
                  slli         t6, a6, 5
                  xor          t3, s3, t0
                  slli         zero, a5, 14
                  and          a1, a6, a3
                  or           s7, a3, t3
                  andi         s3, a5, 11
                  lui          a4, 879850
                  andi         zero, t6, 1386
                  slli         s3, s9, 2
                  addi         s1, t0, 142
                  ori          a6, s4, 1061
                  xori         a6, a4, 445
                  sltiu        a5, t6, -1958
                  slt          tp, s8, s0
                  ori          a7, a7, -1124
                  ori          tp, a1, 1366
                  auipc        s3, 699331
                  addi         s11, sp, -194
                  slli         s1, s8, 30
                  sub          a4, t4, a4
                  sltu         t1, t3, a7
                  addi         s7, a1, -1083
                  add          s8, s3, s7
                  srl          tp, s8, sp
                  nop
                  add          s1, s9, gp
                  srai         s8, a0, 25
                  srl          s11, s5, t4
                  add          s0, s11, s1
                  sra          a6, a7, a4
                  add          a3, s0, s6
                  sub          sp, s3, zero
                  xor          s6, t5, a3
                  xori         s11, zero, -748
                  sltiu        a3, s1, -1552
                  or           sp, s3, s7
                  and          s3, a7, t1
                  xori         gp, t4, 961
                  and          s3, s3, s10
                  sltu         ra, t3, t3
                  andi         a0, a0, -26
                  sub          s0, t3, s4
                  sll          a3, s8, t0
                  srl          s0, s6, s4
                  srli         s8, gp, 24
                  add          s7, a0, a3
                  xor          s6, s3, s0
                  sra          zero, t5, a7
                  andi         s6, a6, -269
                  srli         s6, zero, 1
                  srl          s2, s2, a0
                  sra          s1, s4, a3
                  srai         a4, gp, 31
                  sra          a4, s4, t3
                  sltiu        gp, s8, 892
                  lui          s3, 256139
                  ori          ra, a7, 1748
                  sra          zero, t1, s0
                  lui          zero, 550583
                  sub          s8, s3, t1
                  xor          gp, s2, s4
                  nop
                  ori          s10, a4, -655
                  and          a6, a1, a0
                  slli         gp, s0, 29
                  srli         sp, ra, 29
                  sltiu        s6, s4, 872
                  srai         s1, a6, 6
                  andi         s3, s3, 904
                  sra          ra, s8, s5
                  auipc        a6, 701686
                  xor          sp, s6, s3
                  or           gp, t2, ra
                  add          t0, s8, s0
                  slli         a3, a3, 4
                  xor          a6, s5, a5
                  srl          t6, t3, a4
                  andi         s1, t5, 1179
                  srai         ra, a4, 27
                  auipc        s6, 364735
                  or           ra, ra, s9
                  sub          s7, sp, s0
                  sub          t0, t2, a5
                  xor          a5, t4, s1
                  srl          s0, a7, a3
                  srli         a6, tp, 3
                  andi         a4, a6, -443
                  sra          a7, s10, t6
                  addi         a0, s10, 1903
                  add          s7, s7, a4
                  sub          a4, t3, a3
                  slli         zero, s10, 31
                  nop
                  sltiu        s0, t4, -50
                  auipc        gp, 1034054
                  sltiu        s5, s9, 246
                  srl          a7, s9, a6
                  andi         a1, a4, -1430
                  sub          s0, s10, s7
                  sll          t0, a3, s6
                  slti         a5, t5, 11
                  srai         s8, t6, 24
                  srli         sp, t2, 29
                  sra          s1, s6, t6
                  or           s7, a7, a1
                  andi         a2, t0, -692
                  slti         s6, s5, -1177
                  slti         a2, a3, 725
                  ori          tp, s5, -302
                  addi         s1, s3, 528
                  auipc        tp, 931035
                  ori          t3, a7, 528
                  srai         sp, a3, 11
                  xor          s3, zero, s8
                  sltiu        tp, a3, -1730
                  and          t6, s3, a4
                  slt          t3, a4, s8
                  sltu         zero, t3, s5
                  xori         t0, zero, -1549
                  sltu         s2, sp, t0
                  lui          t5, 216314
                  slti         ra, a6, 1405
                  sra          sp, t0, t6
                  slt          t3, s3, t2
                  slti         s10, s1, 1487
                  slti         s1, t4, -284
                  or           a4, s3, t2
                  nop
                  xor          tp, s2, t4
                  sub          a7, a7, s9
                  lui          ra, 831828
                  xori         s9, s9, -1572
                  slli         t6, sp, 13
                  sltiu        a7, s1, -2044
                  ori          s9, tp, 1575
                  or           s5, t2, t0
                  srli         s0, s3, 6
                  slli         s0, t4, 19
                  sub          t6, a5, t2
                  xor          t1, a0, a0
                  or           s1, s0, sp
                  srai         ra, s5, 24
                  sltu         s9, t1, zero
                  srai         t0, s0, 6
                  xori         t1, t3, 1538
                  slti         a3, tp, 464
                  srai         tp, a5, 15
                  or           s7, a6, a4
                  srli         s3, a6, 25
                  or           s10, a3, tp
                  sltu         s7, t6, s6
                  srl          gp, s6, t6
                  slti         a4, s10, 1418
                  ori          t0, a5, 1891
                  sub          s5, gp, s8
                  auipc        s3, 539993
                  ori          s10, s2, -1452
                  slti         s0, a3, -241
                  lui          s11, 340781
                  sub          tp, s9, t6
                  ori          s9, ra, 1222
                  xor          s8, gp, t3
                  sltu         t5, s10, zero
                  add          a2, s2, t4
                  xori         s5, s4, 767
                  sll          s3, sp, s10
                  add          zero, a3, t3
                  xor          ra, tp, s11
                  lui          gp, 152876
                  nop
                  sltu         a1, t1, s11
                  auipc        a1, 604623
                  sltu         s1, a1, zero
                  slli         ra, s6, 12
                  slti         s10, t4, -1677
                  auipc        a2, 62610
                  nop
                  slt          t3, t6, s6
                  sltiu        ra, a2, -15
                  srai         s0, s8, 3
                  andi         a6, sp, 540
                  ori          a7, s8, 1160
                  ori          a4, a5, 212
                  and          s6, t0, s2
                  slli         a2, a5, 14
                  lui          a1, 351613
                  slti         s6, a5, -61
                  add          a3, t4, a1
                  sll          gp, s1, gp
                  sll          a7, s2, zero
                  lui          s7, 18892
                  srai         a0, s5, 13
                  auipc        s7, 155417
                  srli         a4, gp, 26
                  auipc        s2, 870501
                  addi         s0, t1, -189
                  ori          a7, sp, -1250
                  slli         a0, gp, 22
                  xori         a7, t5, 189
                  nop
                  nop
                  ori          a4, s6, 244
                  nop
                  sra          a0, s1, t2
                  or           t6, a5, s9
                  lui          t5, 256921
                  sub          s3, tp, s11
                  or           s2, s1, t5
                  srli         s10, sp, 23
                  sll          s10, a5, s5
                  sltu         t0, s9, s1
                  slli         ra, t3, 31
                  xor          ra, t5, t4
                  sltiu        s5, s3, -738
                  or           a2, a7, t3
                  slti         s8, s9, -22
                  xor          t3, s5, zero
                  srl          t3, a5, t1
                  or           s8, s11, s7
                  srl          s11, a2, a6
                  or           t3, s3, tp
                  xor          s2, a6, s0
                  addi         a0, s5, 1285
                  xori         a0, a1, -1723
                  sltu         a4, t0, t6
                  srai         t5, s2, 12
                  xor          t6, s10, a6
                  and          t5, s8, a7
                  slti         s8, a7, -491
                  slt          s6, t1, t0
                  sltu         t5, t0, s10
                  andi         t5, a4, 1274
                  addi         t1, s8, 425
                  lui          s1, 156285
                  ori          t6, a0, -1888
                  auipc        s6, 234738
                  srai         a2, s0, 13
                  slti         t0, s0, -2035
                  ori          s2, t0, -23
                  slli         t3, s10, 5
                  ori          a6, s5, -432
                  srai         sp, a6, 4
                  and          s0, t6, s2
                  sltiu        t1, ra, -1497
                  addi         gp, s11, -158
                  sltu         s0, ra, a4
                  sra          a6, a1, s4
                  xor          a7, a1, s7
                  xori         s1, s9, 539
                  auipc        t5, 845496
                  lui          zero, 221282
                  slt          zero, a7, t0
                  xor          zero, a1, t5
                  sll          t1, s10, s8
                  slli         tp, s0, 0
                  or           gp, a5, s4
                  and          s0, s5, t0
                  sra          a6, gp, t3
                  slt          sp, sp, zero
                  or           s11, s8, a0
                  auipc        a2, 815222
                  andi         s8, t1, -552
                  slt          zero, gp, s8
                  lui          t6, 998573
                  nop
                  srli         a0, s6, 28
                  andi         gp, s9, 911
                  sub          a5, t5, s6
                  srl          s8, t0, a2
                  addi         s5, s9, 719
                  slti         s10, s1, 1668
                  srai         tp, s6, 21
                  sub          a1, s8, a3
                  srl          s10, s4, s4
                  or           s6, t3, s8
                  lui          a0, 641402
                  slt          sp, a7, a6
                  srl          s7, s2, s9
                  srli         ra, t1, 9
                  sltiu        ra, tp, -1548
                  ori          s1, sp, 415
                  ori          a6, s7, -1062
                  or           a7, sp, t6
                  srli         tp, s7, 23
                  lui          a2, 359551
                  add          s5, t1, s4
                  srli         sp, s6, 3
                  xor          t5, s10, sp
                  xori         ra, s7, 13
                  xor          s5, s10, s6
                  auipc        t5, 275940
                  and          a2, a5, a3
                  slti         t0, a0, -1345
                  sll          t5, zero, s10
                  srli         s9, s0, 6
                  srl          gp, t2, t0
                  sltiu        a3, a3, 666
                  slli         a2, a4, 11
                  srl          a1, s7, a5
                  sll          t6, t5, s6
                  slt          gp, t2, s3
                  sltiu        t6, a5, -1496
                  slli         a3, s2, 0
                  xor          t0, t1, s8
                  slti         s3, a2, 1136
                  srl          sp, s6, s5
                  srli         a4, s2, 26
                  nop
                  slli         a2, sp, 20
                  auipc        t1, 1022557
                  and          zero, a3, a7
                  slli         t3, t3, 14
                  sltu         t0, s9, t2
                  or           a2, t3, t1
                  ori          a1, s3, 1311
                  sra          t6, t2, a2
                  andi         s7, s9, -476
                  slli         a1, a0, 9
                  and          s1, s7, s4
                  and          a6, s1, s2
                  sltiu        a1, t4, -459
                  sltu         t5, t3, ra
                  add          sp, a7, a2
                  auipc        sp, 1001836
                  srl          a1, a6, s10
                  slt          s11, zero, sp
                  slti         t0, t6, 266
                  srai         gp, ra, 14
                  andi         s3, a7, -1363
                  sub          s5, s1, s8
                  srai         s3, ra, 25
                  sub          sp, t3, s11
                  sltu         zero, s8, a6
                  andi         a6, t4, 1390
                  sltiu        s6, s9, -1295
                  auipc        a4, 899353
                  or           ra, a6, s1
                  sltiu        s9, t2, 938
                  srl          gp, ra, s9
                  and          t1, sp, tp
                  add          tp, tp, s6
                  srl          sp, tp, s9
                  srai         zero, t3, 18
                  srli         a2, sp, 21
                  and          s10, t0, a3
                  slt          s2, s1, s2
                  sltu         s2, s2, a5
                  slti         s8, s6, 1239
                  slti         ra, t5, 1629
                  sll          t6, a3, t2
                  sltu         zero, a2, s9
                  srl          gp, s2, s0
                  addi         s5, t3, -915
                  srai         s5, gp, 6
                  srl          t0, t5, a7
                  slli         t5, s1, 27
                  or           a2, a2, zero
                  lui          a1, 976120
                  sra          t6, t6, t4
                  sltu         ra, sp, s4
                  lui          s10, 293833
                  srl          a4, s5, a7
                  nop
                  slti         sp, a0, 1045
                  sltu         s11, t3, a7
                  srli         s5, s6, 28
                  and          tp, a6, t4
                  ori          s6, s2, -469
                  srai         a0, a0, 5
                  add          a5, t4, a2
                  lui          t5, 268602
                  xor          t0, t1, s5
                  lui          s6, 843172
                  sra          gp, a1, t4
                  srl          a7, a3, s1
                  slt          a7, s3, a2
                  slli         sp, s4, 29
                  sltu         a2, s2, a0
                  lui          a6, 635159
                  srl          a0, s5, gp
                  and          s5, t4, s3
                  ori          ra, t0, 1168
                  add          zero, a3, t3
                  sub          s8, a1, ra
                  srli         a7, s11, 2
                  slli         t1, s11, 20
                  sltu         s11, gp, t3
                  slti         s7, gp, 639
                  sub          gp, a5, a7
                  or           tp, t1, sp
                  andi         t6, s11, 1703
                  sub          s3, s3, t6
                  slt          ra, s10, a3
                  sltiu        ra, a2, 1118
                  or           a4, s7, a7
                  slti         a3, tp, 1772
                  lui          a6, 338935
                  slt          a2, t3, t3
                  nop
                  and          s5, t3, zero
                  ori          t6, zero, 1546
                  srli         gp, a7, 13
                  add          s6, s6, t1
                  slli         s0, a5, 18
                  and          s2, s8, t6
                  auipc        t3, 384766
                  lui          s5, 46139
                  srli         s10, a6, 2
                  sltu         s11, s7, t6
                  andi         a3, zero, -219
                  andi         s7, s10, 1766
                  or           s10, a0, s4
                  andi         t5, zero, 230
                  srai         sp, s9, 12
                  and          t0, s9, tp
                  add          a5, t6, t4
                  slti         t6, s6, -1494
                  addi         s6, zero, -1496
                  xor          a1, a7, t3
                  slt          a2, s10, s10
                  ori          a5, a1, 747
                  or           t6, t0, tp
                  slt          s5, t0, s10
                  ori          s9, t4, -786
                  srli         s7, s10, 7
                  srli         zero, s7, 16
                  sub          zero, s0, zero
                  sll          ra, s0, s10
                  xor          a0, t3, a6
                  slti         t0, s0, 952
                  sltiu        s6, t0, 1311
                  nop
                  sltu         a5, a0, sp
                  sra          s11, a7, s7
                  slt          s1, t2, s3
                  sll          s8, s3, t2
                  sll          tp, s6, sp
                  lui          s10, 903896
                  ori          a2, s0, -1748
                  slli         s6, s4, 1
                  slt          s7, sp, a7
                  addi         s7, s2, -502
                  and          s7, s3, a4
                  or           ra, sp, a4
                  srli         t0, s2, 2
                  auipc        s9, 103798
                  add          tp, a2, s6
                  slli         a7, t3, 10
                  addi         t0, t2, -162
                  sub          s2, tp, t2
                  and          a3, a0, s11
                  and          a3, gp, t5
                  sltu         s2, s6, t4
                  sll          a7, t5, s2
                  sll          s2, sp, t0
                  srai         s8, zero, 23
                  slti         t1, s2, 1652
                  sub          s11, t6, s1
                  xori         s6, a4, -1325
                  slti         s1, s8, 326
                  or           s0, t6, s3
                  xori         a1, a1, 94
                  add          s5, t4, s9
                  nop
                  addi         s6, ra, 1410
                  addi         a1, s11, 139
                  srai         ra, s10, 16
                  slli         s6, s9, 12
                  or           ra, a0, a5
                  slli         tp, t1, 22
                  srli         a0, t6, 1
                  srai         s6, a2, 18
                  and          t0, t0, t6
                  ori          a2, t0, 1252
                  xor          a5, t0, t0
                  or           s11, s6, t1
                  andi         s9, s0, 1696
                  srai         t1, a1, 26
                  srli         s7, t0, 25
                  slti         s9, ra, -695
                  slt          gp, s4, s10
                  slt          a3, s10, t6
                  sltiu        s11, t4, 366
                  andi         a6, tp, -1882
                  lui          s0, 874894
                  auipc        t0, 786507
                  xor          s10, t3, s9
                  andi         a2, zero, -1828
                  add          sp, t1, a2
                  auipc        a2, 994332
                  addi         a1, s11, -767
                  andi         s3, t4, -1152
                  sltiu        s0, s2, 415
                  sra          s0, a4, a7
                  sra          s3, t1, a5
                  auipc        a1, 56085
                  auipc        a5, 702142
                  andi         tp, tp, 947
                  xor          s8, a1, a3
                  and          t3, t3, tp
                  andi         s10, s7, 101
                  auipc        s9, 290085
                  srl          t5, t6, s10
                  sltiu        a4, t1, 211
                  nop
                  slli         s1, t5, 27
                  slti         s11, s9, 1981
                  slt          ra, t5, a6
                  ori          s2, t0, -1453
                  auipc        s5, 830021
                  auipc        a6, 157632
                  sltiu        s1, s4, -1384
                  or           zero, s11, s3
                  add          a6, s10, s11
                  slti         s0, a2, 543
                  sll          s2, s8, a2
                  nop
                  sra          s3, a4, a4
                  srli         a0, gp, 20
                  xor          s3, s7, s11
                  xori         sp, s6, -188
                  sltu         s1, s3, s7
                  slti         t5, zero, -592
                  sltu         a1, t6, s11
                  sltiu        s0, a1, 1054
                  srli         s10, sp, 25
                  sll          a3, tp, t6
                  xor          sp, t5, t1
                  and          tp, s4, s6
                  sltu         a2, a4, t3
                  auipc        t3, 65971
                  sra          s7, s5, s3
                  xor          s3, t2, zero
                  and          tp, t4, sp
                  sll          a1, t6, s0
                  ori          a7, ra, -1249
                  ori          a3, a5, 326
                  srli         a3, a4, 25
                  srl          sp, s7, s10
                  xori         s11, a6, 1546
                  sll          gp, zero, tp
                  slt          a7, gp, t2
                  auipc        s7, 556708
                  xor          s8, gp, a4
                  or           t3, a5, tp
                  slli         a3, s3, 21
                  srl          t3, s1, s5
                  add          a2, a0, sp
                  or           t3, t6, t2
                  sub          s7, gp, s4
                  or           a3, t6, t3
                  auipc        s2, 551990
                  lui          a6, 758753
                  nop
                  sra          s10, s0, a7
                  srli         a5, s1, 31
                  sra          s1, a2, a2
                  xor          s11, s9, t6
                  sltu         t5, s8, t6
                  xori         t5, s8, -1001
                  ori          a2, s10, 1767
                  and          s1, t4, zero
                  slli         t6, s2, 18
                  and          a4, sp, a0
                  add          a4, a3, a4
                  sltiu        s6, s1, 1162
                  srai         s9, t2, 31
                  sra          gp, a6, t5
                  srl          s11, a3, a0
                  auipc        tp, 32947
                  andi         s9, s6, 247
                  sll          s7, s4, a3
                  and          s7, s8, t5
                  auipc        tp, 50389
                  ori          s10, a7, -3
                  xori         a3, t1, 632
                  sltu         a0, s8, a2
                  sltu         tp, sp, a0
                  slt          a4, s8, a6
                  srai         tp, a3, 3
                  lui          t5, 619296
                  sltu         t1, gp, s10
                  or           s2, t0, t0
                  sub          s6, ra, s0
                  or           s8, a3, a7
                  sltiu        t0, s3, 729
                  sll          s3, t0, s9
                  or           s6, t3, s7
                  sltu         s10, s8, a4
                  or           a2, s7, tp
                  srl          sp, t4, t4
                  and          s1, s0, s4
                  lui          t3, 803856
                  srli         t6, t6, 2
                  auipc        a5, 391656
                  ori          s1, gp, -682
                  sltiu        ra, t1, -1816
                  sll          s10, t1, t5
                  slt          a2, s1, a6
                  sll          a5, ra, a2
                  slti         a7, tp, -1673
                  srai         t6, t4, 19
                  sub          sp, t4, t3
                  or           sp, s10, s3
                  or           s9, a2, t5
                  srai         s1, a4, 27
                  sll          a6, ra, gp
                  slt          a6, s10, t2
                  slli         t0, t6, 18
                  sra          s7, t6, tp
                  sltiu        ra, ra, -153
                  xor          a6, a3, s7
                  srai         a6, a5, 6
                  andi         sp, a0, 1956
                  and          a0, t3, t4
                  slti         a5, t5, 1587
                  srli         ra, s6, 30
                  auipc        ra, 409470
                  srai         zero, t1, 11
                  slli         s2, a7, 13
                  srli         a6, a6, 20
                  xor          t5, a7, gp
                  sub          sp, t5, s10
                  xor          s0, a0, t0
                  add          s11, a4, s2
                  addi         s7, s10, -378
                  lui          gp, 389932
                  sra          s7, a0, sp
                  slt          s11, a3, s7
                  slt          zero, zero, t6
                  slli         zero, a3, 11
                  ori          ra, s7, 1895
                  nop
                  xor          s10, t4, a5
                  srl          a4, sp, a3
                  add          a1, ra, t5
                  nop
                  sub          a6, t4, s7
                  slt          s10, s9, s0
                  srai         s5, s10, 13
                  slt          s5, s7, a3
                  srli         s10, s6, 18
                  slti         gp, a5, -523
                  add          zero, t1, t3
                  nop
                  sll          a2, a3, t2
                  srli         t5, a2, 2
                  slt          s5, t6, zero
                  xori         gp, s8, -564
                  xori         a0, s2, 238
                  xor          a1, ra, a2
                  xor          a2, a6, t3
                  add          a6, s6, t4
                  xor          s8, t4, t1
                  addi         gp, zero, -405
                  sll          a6, s4, s6
                  srli         ra, s7, 0
                  srai         a2, t1, 7
                  sll          s7, s8, s6
                  nop
                  sltiu        tp, s8, 1849
                  sltiu        s5, t4, 310
                  ori          a7, a5, 1811
                  lui          a0, 414246
                  nop
                  xori         a1, s8, -1103
                  srli         s5, t1, 0
                  sub          a0, s5, s4
                  srai         t6, gp, 20
                  slt          s6, t4, ra
                  ori          t5, s4, -1074
                  srai         ra, s3, 21
                  nop
                  sra          s3, t0, t4
                  slti         ra, t4, -60
                  addi         t1, sp, 130
                  xor          a3, a0, t0
                  srai         a2, s8, 1
                  sll          t3, t0, ra
                  or           gp, ra, zero
                  slti         a2, s0, -98
                  srl          s1, t3, s2
                  ori          s2, a2, 1424
                  auipc        s10, 881516
                  xor          s7, t4, s0
                  slti         t6, sp, -11
                  nop
                  xor          t3, s2, s9
                  sub          t1, t1, a7
                  srai         s9, s9, 5
                  or           s3, s9, t2
                  slli         s11, s6, 18
                  srai         a3, s2, 9
                  slt          s6, a3, a7
                  xor          a7, s8, ra
                  addi         s11, s8, -1968
                  and          a6, s5, s10
                  or           s11, s3, s7
                  sltu         s3, s5, a0
                  sll          t1, s3, gp
                  sltiu        s7, ra, -232
                  slti         s2, t1, -657
                  xor          tp, s0, s4
                  sltiu        a0, a1, -1795
                  sub          t0, t6, a4
                  srai         t6, s8, 26
                  srli         a3, a0, 17
                  auipc        s8, 857403
                  lui          s3, 233022
                  srai         s8, a3, 13
                  slli         ra, s5, 31
                  srli         t3, s11, 26
                  add          a7, a2, s0
                  andi         a7, a6, 1948
                  slti         s8, sp, 225
                  srai         sp, a1, 20
                  nop
                  sll          t3, t0, ra
                  srl          a6, s0, a4
                  slli         s5, t3, 3
                  nop
                  srli         s3, a7, 3
                  auipc        t1, 661982
                  slti         a0, s9, 1839
                  xor          s9, s7, sp
                  sll          s6, t2, a2
                  slli         tp, t5, 16
                  srai         a5, a7, 27
                  sra          t0, sp, s11
                  srli         a5, ra, 4
                  or           s8, s2, a5
                  nop
                  sll          s9, s11, t1
                  or           s11, gp, t4
                  slt          a1, sp, zero
                  slti         t1, s7, -1827
                  add          a6, a6, s0
                  addi         t0, t4, 370
                  sub          a4, a3, s8
                  add          tp, a0, t4
                  slti         s9, s9, 62
                  and          s1, t1, t4
                  ori          a5, gp, -528
                  slt          t5, sp, t4
                  sub          a7, gp, s3
                  addi         t5, a2, 1348
                  srli         a7, zero, 0
                  srl          a4, a1, t2
                  sltiu        a7, zero, -279
                  sll          a0, zero, t3
                  addi         s2, s9, -1478
                  or           t6, sp, tp
                  sltu         tp, a5, t4
                  sltu         s9, a1, s0
                  auipc        a0, 653833
                  slti         a6, s6, -726
                  sltiu        s5, t0, 2025
                  auipc        s8, 196753
                  srl          s0, t3, a5
                  sll          t5, a2, t0
                  xor          s10, s9, tp
                  sltu         a1, s0, s2
                  sltiu        s1, t1, -1662
                  andi         t6, a7, 1954
                  sub          a1, ra, a3
                  addi         a1, tp, 1854
                  auipc        t3, 232180
                  auipc        tp, 543081
                  sltiu        gp, a0, 643
                  slt          s0, s11, t3
                  xor          tp, gp, t2
                  andi         s7, t2, -632
                  slt          a2, t1, s1
                  or           a0, s0, t2
                  addi         s5, a3, -976
                  xor          a4, s1, sp
                  xor          s8, t1, s8
                  sub          s9, t4, t4
                  sll          tp, ra, s2
                  lui          s10, 949923
                  slli         sp, t3, 3
                  sra          s5, s11, tp
                  add          a4, a1, s10
                  srai         a2, s0, 6
                  addi         tp, a2, 480
                  slli         a7, a4, 25
                  sll          a2, zero, a6
                  auipc        a7, 415954
                  andi         sp, t6, 1334
                  srli         s3, t1, 9
                  auipc        a6, 926170
                  sub          s5, a2, s9
                  sltu         a7, a0, ra
                  xor          a0, s3, s10
                  srl          gp, t3, s1
                  lui          t3, 617395
                  ori          s3, s3, -718
                  add          gp, s0, a1
                  srli         t1, tp, 24
                  lui          s7, 953544
                  slt          ra, zero, sp
                  addi         a7, s7, 222
                  sltu         s5, t0, a0
                  xor          t1, s7, s6
                  sra          s11, a0, s0
                  srl          s8, a3, sp
                  andi         t3, s4, -1172
                  srai         sp, a6, 8
                  sll          t1, s2, s7
                  andi         t6, a1, -923
                  or           t6, t6, s8
                  xor          s7, sp, a3
                  or           tp, zero, t4
                  sra          s8, t6, a6
                  srai         a4, s9, 18
                  sub          s3, s11, s5
                  srli         a1, s2, 6
                  srli         zero, a6, 15
                  addi         t1, s0, 1184
                  srl          s5, s0, tp
                  srl          a5, t5, t2
                  nop
                  srl          tp, t4, s1
                  slt          gp, t2, s1
                  auipc        t3, 438260
                  srli         tp, s9, 13
                  sll          ra, t2, sp
                  ori          t3, a0, 1508
                  xori         a1, t3, 972
                  and          gp, s5, a3
                  xori         a2, t2, 1616
                  sltiu        s7, a0, 1486
                  srli         s1, a2, 2
                  slli         tp, s8, 29
                  sltiu        s3, s8, 900
                  srli         s5, t2, 12
                  srl          tp, s8, s2
                  slli         a0, s11, 8
                  lui          s10, 219339
                  srl          t3, ra, s7
                  ori          a0, sp, 469
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           a3, 0x80000000
                  li           t5, 0xffffffff
                  li           t3, 0xffffffff
                  li           a1, 0xffffffff
                  li           s2, 0xbf18d575
                  li           gp, 0x80000000
                  li           a6, 0xda7d903e
                  li           t0, 0x7b672eed
                  li           t6, 0x80000000
                  add          a3, t0, t0
                  sub          a6, t6, a3
                  nop
                  addi         tp, t6, 665
                  nop
                  auipc        t0, 359900
                  nop
                  add          t3, a3, a1
                  addi         gp, t0, 1819
                  sub          t3, t6, a1
                  nop
                  add          t0, t5, gp
                  sub          a3, a3, t0
                  addi         s2, a1, 1332
                  sub          t3, t6, a3
                  addi         a3, t0, -1279 #end riscv_int_numeric_corner_stream_19
                  sll          a3, t0, s4
                  sll          zero, s4, a4
                  or           zero, t4, s7
                  sltu         s0, s3, gp
                  andi         gp, a1, 1784
                  sltu         a1, a0, s11
                  slt          t3, s0, s4
                  sll          t1, t1, s10
                  sub          ra, t1, t3
                  sltu         a3, t3, s10
                  nop
                  slt          s6, a1, a4
                  xori         s1, s2, -1679
                  sltu         s5, t2, s7
                  addi         t0, gp, -517
                  lui          a2, 300359
                  andi         a0, s6, -531
                  or           s5, s4, t0
                  addi         gp, t0, 1346
                  sll          a4, s10, a0
                  sub          s0, t0, s9
                  srl          sp, s9, s7
                  nop
                  xor          ra, t5, a0
                  nop
                  and          a4, s3, t6
                  or           s7, s11, s2
                  srai         s1, s1, 8
                  sltiu        a3, t4, 1595
                  sltiu        zero, a3, -1146
                  slli         a7, s10, 17
                  srai         s9, t1, 25
                  nop
                  auipc        s9, 481080
                  xor          a5, s9, s0
                  sub          ra, s9, s3
                  slli         a1, s10, 0
                  andi         a1, s5, 930
                  xori         a6, ra, -562
                  ori          t0, s9, -550
                  slti         a1, t2, 1026
                  sub          s9, s6, a2
                  sra          s10, t3, ra
                  srl          t0, gp, s10
                  add          s1, ra, t1
                  sll          t3, a5, t0
                  sra          gp, s0, ra
                  andi         ra, s5, -269
                  srai         a7, t3, 0
                  andi         a3, tp, -509
                  srai         ra, a7, 17
                  srli         s1, a4, 6
                  sltu         t1, s2, t5
                  slt          s11, tp, s3
                  slt          sp, t3, a5
                  ori          gp, t5, -121
                  srl          s2, s2, a3
                  addi         s8, t3, -236
                  srl          a6, s11, a0
                  xori         a7, s7, -1012
                  andi         ra, t5, 94
                  addi         s7, t6, -1719
                  sltiu        ra, a1, -900
                  auipc        a5, 630184
                  sll          gp, s11, s11
                  srl          t1, tp, s8
                  slt          a2, s1, s6
                  sub          a6, s1, t4
                  srl          a3, a1, s9
                  sub          ra, s11, s8
                  auipc        t3, 764483
                  srai         tp, a7, 5
                  slli         ra, s4, 6
                  xor          gp, ra, gp
                  auipc        t3, 797551
                  sra          s1, a0, a6
                  slti         a6, a1, 1152
                  sltu         zero, s8, sp
                  and          a2, a7, a0
                  andi         s3, a5, 1657
                  auipc        sp, 279455
                  nop
                  andi         a3, sp, 287
                  sltiu        a2, t4, -1407
                  srl          zero, t2, t1
                  sub          s10, a3, a3
                  sra          s8, a4, t6
                  add          s10, a0, a2
                  xor          gp, s2, a4
                  sub          a4, t2, tp
                  sltiu        s0, a7, -1483
                  xori         t6, s3, 1094
                  sll          a0, a4, gp
                  lui          s6, 322475
                  xori         t1, gp, 520
                  addi         s7, s4, 1263
                  xori         a5, s5, -1688
                  or           t0, a7, a5
                  or           gp, s0, s8
                  and          t0, s7, s0
                  srai         a3, t6, 29
                  slt          t1, t3, a2
                  sub          a7, s7, a4
                  or           t6, t6, t2
                  ori          t6, sp, 747
                  or           s0, a4, s8
                  auipc        t3, 196646
                  slt          t5, t3, a6
                  or           gp, ra, s5
                  slt          a6, t6, s7
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           s5, 0xa87e3a8f
                  li           s2, 0xe8d9c5ab
                  li           a4, 0x80000000
                  li           t3, 0x0
                  li           a2, 0x457ea99e
                  li           a3, 0xa5422ef8
                  li           s8, 0x0
                  li           a1, 0xffffffff
                  li           s10, 0x80000000
                  auipc        a3, 760569
                  lui          a4, 977212
                  add          s8, tp, a1
                  add          s2, a1, s10
                  addi         a2, s2, 336
                  add          a3, tp, s5
                  nop
                  add          s2, s2, a4
                  addi         a2, t3, -619
                  nop
                  nop
                  add          a1, t3, s10
                  lui          s5, 583800
                  add          s5, a1, s10
                  auipc        t3, 939746
                  sub          a4, a1, a1
                  nop #end riscv_int_numeric_corner_stream_9
                  or           s8, a2, s6
                  slt          s5, a2, a1
                  or           t0, s1, s4
                  slli         s6, t4, 10
                  sra          gp, s10, s10
                  xor          s3, a5, a1
                  srli         s10, a0, 22
                  slt          a1, tp, s2
                  sub          s0, t1, t2
                  auipc        s10, 301528
                  andi         a0, a6, 503
                  nop
                  slt          a1, s9, s9
                  or           s1, s2, a7
                  sub          s8, t3, s8
                  srai         sp, s11, 27
                  xori         t6, sp, -182
                  slt          zero, s8, t1
                  sltiu        t1, a1, 277
                  srl          t1, tp, s2
                  sltu         t6, s7, s3
                  srl          s8, a6, tp
                  sll          s10, a3, a1
                  slti         s5, t1, 111
                  sltiu        a3, s4, -360
                  add          s8, t4, s2
                  xori         a0, s5, -1352
                  nop
                  sub          s1, s10, a3
                  lui          s8, 211887
                  srli         s9, t1, 6
                  auipc        s8, 637985
                  srai         gp, t4, 4
                  sra          a5, a2, gp
                  sra          s0, a6, s11
                  add          t3, s10, a2
                  slt          gp, s1, t6
                  srai         s1, sp, 12
                  sltu         t1, s5, s1
                  sub          t0, s10, t4
                  xori         a0, sp, -1171
                  sltu         s10, a0, gp
                  sub          s10, a0, a7
                  lui          s2, 586883
                  srai         s3, tp, 29
                  srl          a3, a0, gp
                  addi         gp, s1, 1086
                  ori          a1, a0, 347
                  sub          tp, a3, t5
                  addi         a4, s9, -1011
                  slti         s3, zero, -801
                  add          s6, t4, sp
                  xori         s9, a0, -35
                  addi         a4, s10, -2048
                  lui          s6, 328086
                  slli         a6, t3, 14
                  sra          t0, s5, t4
                  srai         s7, s8, 25
                  slt          a6, tp, a6
                  nop
                  slt          s11, s8, t0
                  srai         t3, s0, 0
                  srai         s2, s2, 3
                  lui          gp, 238972
                  sltu         a2, s9, a1
                  add          s8, t0, s7
                  sltiu        sp, a2, 1693
                  xor          a0, t5, s1
                  auipc        t0, 386337
                  ori          s11, a1, 849
                  slt          a0, ra, a5
                  slti         s7, s11, -572
                  sra          s8, zero, t2
                  sltiu        t3, t2, 186
                  and          a0, a6, t1
                  ori          a1, a5, -783
                  srai         s1, a6, 6
                  auipc        s10, 31832
                  auipc        zero, 707669
                  sub          s9, ra, a7
                  and          a0, t5, s5
                  nop
                  or           s9, sp, s7
                  add          s1, s4, sp
                  xori         t6, sp, -1149
                  or           a1, s0, a6
                  sltiu        s3, s11, -176
                  sub          ra, t5, s6
                  sub          s6, zero, t2
                  sltiu        s10, tp, 1135
                  srl          t6, s7, s5
                  sub          t0, s10, s10
                  ori          s7, s5, 469
                  addi         t0, s10, 1009
                  srai         zero, a0, 29
                  auipc        a3, 1030152
                  nop
                  nop
                  add          tp, a4, s9
                  slt          a5, s11, s3
                  sra          gp, t0, s2
                  and          a2, tp, gp
                  add          a6, s2, zero
                  sra          s5, s4, sp
                  sra          a3, a3, gp
                  and          a0, tp, a2
                  sll          s2, t6, s1
                  slt          a3, s10, s10
                  lui          s9, 473816
                  srai         s5, s11, 0
                  xor          a4, s1, a4
                  sub          s11, s5, t3
                  sltiu        t1, s1, -149
                  lui          a1, 730053
                  lui          a6, 310154
                  slt          s3, a1, t2
                  auipc        a1, 664
                  ori          a2, s2, -1659
                  and          t3, t2, t4
                  and          s2, a6, a7
                  nop
                  ori          zero, s3, 1611
                  ori          s11, s9, 1072
                  ori          s10, s0, 1757
                  nop
                  or           s7, t3, tp
                  nop
                  or           a6, s0, t6
                  andi         s6, zero, -1765
                  slli         tp, s11, 9
                  sra          s9, t5, t4
                  and          a7, a2, a2
                  sra          ra, t5, s0
                  slli         s8, sp, 31
                  xori         s8, a4, 882
                  sll          s0, sp, t1
                  and          t3, a0, t4
                  add          t0, zero, s0
                  slli         s8, s4, 20
                  addi         a4, s1, -1489
                  srl          s9, s6, s0
                  lui          s7, 245291
                  sra          s7, a1, t2
                  add          a5, s4, t5
                  xor          a3, s9, s7
                  and          s11, t6, t2
                  nop
                  srai         s6, gp, 26
                  srai         a5, s0, 27
                  slli         a1, s11, 8
                  and          a5, zero, a5
                  ori          tp, a2, -1737
                  sll          s11, s8, t1
                  slt          a0, ra, s7
                  slti         a4, s11, -1369
                  slti         s2, a0, -508
                  sra          s11, s7, t0
                  andi         t0, a2, -1312
                  sltu         a4, t1, s11
                  add          tp, s2, zero
                  sub          a7, t3, s6
                  or           s11, s11, zero
                  addi         sp, t0, -711
                  sltiu        s10, t2, -1070
                  sll          s7, a2, a5
                  addi         s0, t4, 346
                  srli         s9, s4, 17
                  xor          tp, s2, a3
                  ori          s11, sp, 531
                  sltiu        a6, a1, 540
                  or           zero, t4, t0
                  ori          a6, s9, -818
                  srli         s5, s5, 13
                  sra          s5, a7, t5
                  auipc        s0, 186354
                  and          a5, s2, zero
                  or           t1, t6, s11
                  srli         t0, t2, 22
                  auipc        s5, 442872
                  lui          t0, 1015566
                  sra          t5, a0, s4
                  nop
                  andi         sp, a0, 453
                  ori          a5, s8, 1554
                  add          gp, s0, zero
                  sra          s9, s2, s9
                  sll          a7, a2, zero
                  srli         s3, sp, 17
                  andi         s0, s11, -1422
                  addi         s1, s8, -357
                  xori         s2, t6, 59
                  addi         a1, a7, -1428
                  slt          s1, s5, ra
                  auipc        s6, 818307
                  sltu         gp, s2, s1
                  add          s8, t3, t4
                  xor          t3, t6, gp
                  lui          s2, 588756
                  slt          t6, t2, gp
                  slt          t0, t2, a6
                  sltiu        s6, zero, 1394
                  sll          s2, t2, s8
                  sltiu        a4, a2, 1614
                  auipc        ra, 1014414
                  ori          s6, t5, 1166
                  andi         t3, a6, -494
                  andi         s2, t5, -155
                  srai         t0, a6, 0
                  and          s3, s7, s10
                  sltu         s8, s3, s9
                  lui          t5, 367683
                  sltiu        ra, s0, 1154
                  slti         a2, s2, -845
                  auipc        sp, 611308
                  xori         a2, s4, -1578
                  add          s1, s11, zero
                  slt          a7, t1, s8
                  sltiu        zero, s0, -595
                  sll          gp, a2, t4
                  lui          t6, 174040
                  srli         a5, s11, 8
                  lui          s11, 1029434
                  xori         a7, tp, -2034
                  xori         ra, t4, 1713
                  sra          s5, tp, a6
                  sltu         s7, gp, s3
                  slli         zero, a1, 19
                  nop
                  srli         s10, a0, 11
                  and          s1, s5, t2
                  or           gp, s2, s7
                  or           a4, s9, a7
                  sub          zero, ra, t3
                  auipc        s6, 515342
                  slli         zero, s10, 24
                  srli         a7, t5, 15
                  srl          t6, tp, ra
                  srl          t5, t0, zero
                  and          s1, t4, t6
                  xor          s0, gp, a1
                  srai         t1, s1, 11
                  nop
                  sltiu        a3, tp, 57
                  xor          gp, t3, t3
                  sltu         a5, t1, zero
                  andi         s2, a6, 61
                  srli         t1, s4, 14
                  srl          sp, s5, a3
                  addi         t1, a5, 11
                  sltu         s11, t1, a0
                  addi         a6, a3, -763
                  or           s10, a2, s4
                  nop
                  xori         a3, a2, -1835
                  slli         s1, t0, 11
                  add          t1, a6, t1
                  or           a4, a1, a7
                  addi         a0, t2, -249
                  sub          ra, a7, t2
                  xor          a0, t6, s0
                  andi         a6, s10, -1418
                  srai         a3, t5, 30
                  sra          a0, t3, s1
                  srli         sp, a5, 21
                  addi         t3, a7, -947
                  add          s7, s11, t4
                  ori          a5, s9, -1394
                  slti         ra, t3, -141
                  andi         s10, t1, 235
                  sltu         t6, a2, s9
                  srli         t1, s4, 26
                  sltu         s1, s7, s10
                  or           a0, a5, s0
                  slli         t3, s2, 7
                  sra          tp, a0, s9
                  lui          s6, 333476
                  slli         a1, a0, 3
                  add          s3, t6, t3
                  xori         s1, s11, -1653
                  srli         s3, a5, 31
                  xor          t3, s6, s0
                  addi         ra, gp, -1093
                  xor          s7, a6, s3
                  srai         s9, t2, 9
                  lui          sp, 326967
                  add          a7, s8, t6
                  ori          s11, s11, -1775
                  nop
                  sra          s3, sp, t1
                  sub          t6, s3, t4
                  ori          t3, a5, 455
                  sltu         tp, s5, a3
                  srl          tp, a0, s6
                  sra          s5, t0, tp
                  ori          a7, a7, 173
                  sltiu        s9, ra, -125
                  ori          s6, s4, -96
                  slt          s9, s11, t0
                  slli         s8, ra, 5
                  srai         ra, t5, 9
                  add          s0, a4, s10
                  or           t1, t4, s2
                  sub          a5, a1, t3
                  sltiu        s2, a2, 1088
                  sra          a6, s5, sp
                  nop
                  andi         sp, a6, -691
                  lui          ra, 95403
                  sltu         sp, a2, s5
                  srai         s8, sp, 31
                  nop
                  srl          zero, s7, s5
                  slli         t0, s1, 4
                  slt          a7, t2, zero
                  sltu         a1, sp, a2
                  slli         a0, t0, 10
                  sra          a0, s9, t6
                  sra          gp, s11, a7
                  sltiu        a7, t1, -1456
                  addi         a6, a7, 1637
                  sltu         t1, tp, t3
                  sub          zero, s0, a6
                  srai         a1, t1, 20
                  add          s0, a1, t0
                  sra          s7, s10, t2
                  and          s7, tp, a0
                  srli         s9, t4, 10
                  nop
                  add          t5, a7, s2
                  nop
                  sltu         s10, gp, sp
                  lui          s2, 301810
                  lui          a6, 599574
                  xori         t5, t2, 1938
                  lui          t0, 297334
                  slti         t3, a5, 70
                  srai         t0, tp, 5
                  sltiu        s9, s0, -99
                  auipc        a6, 95637
                  srai         s10, a1, 18
                  sltiu        s10, tp, -1696
                  or           s5, s7, tp
                  srl          a4, t1, sp
                  sll          s1, s6, t4
                  xori         t1, a1, 737
                  slt          s5, a4, s5
                  slti         sp, s8, 543
                  sltiu        ra, s1, 878
                  sltu         t3, zero, t2
                  slli         a6, tp, 29
                  andi         s2, s8, -1390
                  auipc        gp, 799699
                  lui          a6, 222820
                  lui          a6, 651386
                  sltiu        t3, s0, 28
                  nop
                  add          a7, t4, a7
                  slli         sp, s10, 10
                  ori          a1, sp, -2003
                  andi         ra, s7, 1344
                  addi         s6, a3, 1685
                  andi         t3, a3, -876
                  add          a0, a4, t0
                  sub          s3, s1, s8
                  srai         s1, a0, 18
                  sltu         sp, a5, s5
                  addi         s10, t6, -132
                  sub          s8, s2, a2
                  addi         t3, a0, 624
                  slt          t3, s11, gp
                  srl          s10, a6, s8
                  auipc        gp, 156665
                  sra          s2, s2, gp
                  srl          t1, s8, t3
                  srl          a3, a6, s11
                  sltiu        a0, a2, 316
                  slti         gp, s3, -75
                  andi         s7, gp, 511
                  srli         a4, a6, 9
                  slli         a3, t0, 16
                  xor          t0, t2, t2
                  or           a1, tp, t3
                  andi         s5, s7, -1302
                  lui          t0, 586262
                  srli         s2, s7, 31
                  add          t5, t5, t4
                  srli         s11, ra, 7
                  lui          s3, 181633
                  xori         t5, a6, -704
                  xori         s5, tp, -910
                  add          s10, t0, s0
                  ori          t3, t1, -893
                  add          s1, t0, a2
                  sra          gp, s3, a5
                  or           a7, a5, s10
                  and          tp, t1, tp
                  nop
                  slli         a3, tp, 28
                  srai         a0, a0, 2
                  sltu         s10, a3, a2
                  srli         s5, s6, 2
                  lui          s7, 716494
                  auipc        s7, 357943
                  ori          s7, s3, -278
                  xor          sp, a0, s10
                  ori          s8, gp, -1730
                  sltu         s2, a4, a1
                  srai         s0, a2, 31
                  lui          s0, 335349
                  srl          s0, gp, a7
                  slli         a6, t2, 5
                  xori         a2, a7, -2029
                  addi         s2, s6, -1094
                  xor          a7, a0, s2
                  srai         t0, a4, 27
                  sltiu        s8, t5, 1528
                  slti         t1, s11, -948
                  xor          a6, t5, s10
                  srl          t5, s6, t4
                  sub          a0, s2, a5
                  slli         s0, a4, 3
                  sltiu        sp, a4, 816
                  or           t3, s11, s1
                  slt          a0, a5, s5
                  add          tp, t3, s5
                  xor          s10, a1, a0
                  add          s5, zero, a6
                  xori         s11, s1, 1631
                  addi         t3, t1, 1188
                  sltiu        s2, s9, -876
                  sltiu        t1, a4, 365
                  andi         a7, t6, 419
                  srl          a0, s1, s10
                  nop
                  ori          zero, a0, 1056
                  srai         a3, t2, 25
                  slti         zero, s8, 754
                  slti         a3, ra, -1112
                  or           t6, t2, a7
                  slt          tp, tp, a6
                  sll          s8, t0, t6
                  andi         t0, s7, 526
                  slli         t5, t2, 26
                  sub          a4, t6, t3
                  ori          t3, t2, 1355
                  sltu         tp, s3, t1
                  addi         a2, s1, 1642
                  srl          a0, a0, s0
                  add          s8, sp, s7
                  srli         s6, ra, 18
                  sltu         s3, t0, s10
                  xori         s10, s7, 333
                  add          s8, t3, t0
                  slti         a1, s9, 4
                  sub          s9, t5, zero
                  nop
                  auipc        a4, 19045
                  srli         a3, s3, 18
                  addi         s8, s5, 1901
                  slli         s8, zero, 1
                  srl          s6, a0, a2
                  sll          a4, s8, a0
                  srl          a5, s1, gp
                  srl          s2, s0, s7
                  andi         a2, a2, -1644
                  sltu         t3, t0, s1
                  lui          a6, 760483
                  addi         a2, t1, -2011
                  xor          s11, gp, s10
                  add          ra, a5, a6
                  slt          sp, s0, s8
                  xor          t0, a2, a3
                  addi         gp, s9, 1578
                  slli         t6, t6, 7
                  sltu         s6, s3, ra
                  add          a6, tp, t3
                  sltiu        t1, t3, 987
                  addi         s9, a7, -432
                  andi         tp, t0, -1325
                  auipc        t0, 281191
                  andi         t0, s8, -1861
                  andi         a0, s9, -1093
                  srli         s5, s4, 30
                  nop
                  auipc        s7, 839905
                  xori         t6, a6, -334
                  xor          s3, a1, a2
                  sll          s8, a2, a2
                  sltiu        a1, s0, -1904
                  slt          a5, a3, s0
                  and          a5, a4, t6
                  srli         tp, sp, 21
                  srai         s2, t5, 18
                  addi         a4, s3, -529
                  srl          s0, s9, s0
                  slt          t0, a4, s3
                  srai         a5, s1, 10
                  addi         a1, s2, -1700
                  sra          s10, s4, a7
                  sra          s9, s0, a7
                  srli         s8, zero, 3
                  sltiu        tp, a7, -1979
                  sltiu        a1, tp, -1048
                  sub          t6, t6, s2
                  sll          s5, a7, a4
                  or           a5, s0, zero
                  nop
                  slli         t1, t6, 5
                  and          ra, s0, a7
                  sltu         a5, t4, t0
                  sll          sp, t6, s5
                  sltiu        a7, zero, -114
                  lui          a7, 470317
                  xori         s10, a1, -724
                  nop
                  slt          s7, a1, s6
                  sra          tp, tp, tp
                  slli         s8, a6, 2
                  auipc        t3, 122301
                  sra          ra, t0, tp
                  sltu         s6, s9, a2
                  sltu         s10, s8, a3
                  slt          t6, a6, t5
                  addi         a1, a6, 957
                  sltu         s5, t2, s11
                  sub          t0, a7, tp
                  sltu         a6, s0, t4
                  slt          t3, a5, s0
                  auipc        a2, 287451
                  xori         s8, t1, 465
                  slti         s11, s2, 1594
                  slti         t0, s7, 1325
                  xor          s9, a6, s4
                  srl          sp, t4, t0
                  add          s2, s7, s11
                  sltiu        gp, a7, 768
                  sll          a4, s5, t1
                  sll          zero, a2, s8
                  sub          a2, a3, t3
                  addi         t0, s11, 720
                  sltiu        s3, s5, 2011
                  and          t1, gp, t0
                  add          zero, ra, t2
                  andi         s11, s2, 393
                  slli         s1, t0, 6
                  srli         ra, s11, 11
                  slt          gp, s10, a5
                  ori          s5, a6, -304
                  srai         ra, s11, 21
                  ori          s6, s2, -293
                  sltu         t1, s1, t1
                  srli         s8, s2, 22
                  or           gp, s11, tp
                  sra          s8, s3, s1
                  or           s2, a6, a4
                  auipc        s0, 62295
                  xori         sp, t1, -2046
                  srai         s1, a0, 14
                  sltiu        s10, a2, 1879
                  sll          t0, s6, t1
                  and          zero, s8, s6
                  addi         s0, s1, -350
                  and          s9, s1, a0
                  ori          s10, a5, 1325
                  ori          a4, a1, 1708
                  andi         sp, t5, 1134
                  add          t0, s9, s5
                  slli         s9, s6, 19
                  andi         ra, s5, 1863
                  addi         a1, a2, -431
                  xori         s3, s10, 911
                  sltu         tp, sp, s9
                  and          a1, a6, gp
                  sltiu        a5, ra, -1291
                  sll          gp, a7, t2
                  and          zero, t3, sp
                  addi         t0, s10, 1385
                  addi         a0, s8, -1585
                  andi         s1, s0, -508
                  xori         a6, s4, -1792
                  srli         t6, a3, 21
                  srli         a4, a4, 6
                  lui          s9, 880985
                  sra          s7, s0, a5
                  and          zero, a0, s8
                  sra          s11, zero, s1
                  sub          gp, gp, a3
                  nop
                  slt          a5, s0, t5
                  ori          sp, s10, 1309
                  slti         a0, a7, -769
                  or           s7, ra, s2
                  slt          a0, s7, t5
                  slli         s7, s7, 15
                  slli         a1, s0, 19
                  andi         a6, a1, -544
                  srli         s2, s4, 6
                  sltu         s10, s0, s10
                  auipc        s5, 225716
                  ori          t1, s0, 1745
                  add          s5, a6, gp
                  and          t0, a1, a5
                  xor          sp, t1, s10
                  sll          t5, t5, tp
                  and          a5, sp, t3
                  sub          s3, s10, t2
                  sll          s2, s7, t4
                  sub          s7, t4, a4
                  xor          s11, t1, s3
                  sub          a3, t2, a3
                  sltu         a6, t2, a3
                  and          a0, a0, a1
                  srai         a5, zero, 5
                  xor          s5, gp, t3
                  srl          s10, s3, s1
                  srli         s8, a5, 27
                  auipc        s10, 993707
                  sltiu        s8, s2, 984
                  sltu         tp, ra, s11
                  add          a7, s10, tp
                  nop
                  slti         s9, s3, 1200
                  xori         a2, s11, 263
                  slli         tp, a1, 4
                  srl          zero, a4, s3
                  slt          sp, a7, tp
                  slti         t6, t2, 1408
                  srl          s6, s3, t0
                  auipc        zero, 783992
                  srl          t3, sp, s8
                  sra          t0, s2, t4
                  sub          tp, s1, t1
                  addi         a5, s4, -1060
                  auipc        t3, 782478
                  ori          t0, s3, 936
                  sub          s1, s9, s2
                  lui          a2, 898589
                  sra          a5, a7, s1
                  ori          s11, a0, 644
                  slti         a4, zero, 1779
                  slt          a3, s9, s7
                  slli         a0, s7, 29
                  sltu         a1, t0, s9
                  ori          s7, s10, 899
                  ori          gp, s0, 754
                  xor          t5, t1, t6
                  sub          s0, ra, s5
                  andi         s6, a5, -1379
                  auipc        ra, 451776
                  sltiu        a3, t2, -892
                  and          t1, a3, s9
                  ori          s2, s9, 197
                  andi         t5, t4, 909
                  auipc        gp, 800375
                  add          ra, a4, s7
                  slt          a5, t3, a0
                  srli         a1, s7, 8
                  lui          a6, 820676
                  xori         a1, sp, 1231
                  srl          a0, s8, s6
                  lui          t1, 389273
                  auipc        s8, 245898
                  slti         gp, a4, -1300
                  add          s1, s0, s4
                  andi         tp, zero, 1440
                  add          a5, a3, a0
                  sltu         a4, s0, a2
                  add          s5, ra, s1
                  sltiu        a2, t3, -1168
                  xor          a1, s4, gp
                  auipc        a0, 481497
                  slti         tp, s11, 1572
                  sll          ra, ra, zero
                  nop
                  sra          t0, a5, ra
                  slli         s1, zero, 14
                  auipc        s9, 671477
                  and          s0, t6, s4
                  nop
                  slli         s1, s1, 28
                  sltu         t6, a1, s0
                  or           s8, a6, s7
                  sub          s0, s6, tp
                  lui          a7, 760790
                  sltiu        s3, t0, -1770
                  xori         zero, s9, 946
                  sll          t3, s3, a6
                  sub          a3, a6, t5
                  nop
                  auipc        a0, 867668
                  sll          zero, t5, a0
                  nop
                  srli         a4, a6, 19
                  sltiu        a3, s11, -1157
                  sra          s6, t3, a4
                  lui          a2, 372729
                  srli         t0, s11, 30
                  nop
                  xori         a7, a7, 979
                  slt          s7, t4, t3
                  slli         a0, s4, 30
                  or           a7, t6, t6
                  sltiu        s2, a0, -956
                  sltiu        s10, s3, -1929
                  sltu         a7, s2, s7
                  sltiu        s10, gp, -1787
                  slt          s1, a2, s6
                  xor          t6, s7, zero
                  srai         s1, t1, 13
                  and          t5, a3, t5
                  srl          s1, s6, t6
                  addi         a6, s4, 1903
                  xori         s11, s1, 1910
                  auipc        s11, 844318
                  srl          sp, s2, s9
                  slt          gp, s11, s10
                  sltiu        t3, a7, 728
                  xor          s9, t4, s1
                  and          s6, ra, gp
                  slti         s2, a4, 1521
                  ori          a0, gp, 1468
                  nop
                  andi         s3, tp, -866
                  sll          a7, s6, t5
                  ori          s0, a7, -1
                  xor          s6, s2, a7
                  lui          tp, 807922
                  ori          tp, t2, -1803
                  xor          tp, a0, t2
                  andi         s6, a0, 1942
                  sll          s11, t3, s0
                  andi         s9, a6, 1566
                  sra          a5, tp, t4
                  sltu         t6, t0, sp
                  auipc        a5, 538010
                  and          t3, zero, zero
                  slti         s6, a0, 144
                  addi         s7, a2, -1036
                  xori         a3, t5, 1770
                  lui          s2, 48046
                  sra          s2, t0, gp
                  nop
                  slti         ra, t4, 854
                  add          a4, zero, zero
                  andi         a6, a0, -1589
                  or           t3, a2, gp
                  ori          s0, s0, -415
                  srli         s9, a0, 19
                  or           s2, s1, s3
                  nop
                  and          s1, a6, s7
                  and          ra, sp, t0
                  andi         s2, a6, 642
                  slt          s0, a4, t6
                  xor          s2, t0, s0
                  xori         zero, t1, 2039
                  or           s3, t4, s3
                  and          s0, t5, s0
                  or           a0, s3, t3
                  sub          a5, sp, t5
                  srli         s8, s3, 25
                  slti         s11, sp, -1920
                  srli         a4, ra, 17
                  slli         s11, s8, 12
                  add          s10, s7, a4
                  sll          s5, s4, tp
                  add          s8, tp, a1
                  sltiu        s11, s7, 952
                  slti         s6, t5, -175
                  sra          a2, s6, a5
                  slli         gp, s11, 1
                  lui          zero, 967698
                  sll          gp, a0, s4
                  sltu         a7, s6, t4
                  addi         s3, t0, -1439
                  sub          s10, sp, ra
                  add          s1, t6, s3
                  sltiu        t6, s8, 2031
                  add          s2, a7, t1
                  xor          s3, t2, a6
                  lui          a4, 47736
                  or           t1, a4, sp
                  srl          s6, a3, s2
                  sub          s9, s11, t1
                  and          t3, zero, a5
                  auipc        ra, 105011
                  lui          a6, 312375
                  addi         a0, ra, -150
                  xor          s9, ra, s2
                  slt          sp, s7, ra
                  slti         a3, s6, -1416
                  ori          s10, t6, -912
                  addi         t5, s1, -1298
                  and          a0, t6, s2
                  slli         zero, t6, 28
                  slt          gp, t6, s3
                  and          s0, s0, a6
                  sll          t0, a2, a3
                  and          a4, s5, s7
                  sll          a3, s6, tp
                  srl          s7, s7, t5
                  auipc        t0, 918887
                  add          tp, s11, a0
                  or           a7, s10, a5
                  ori          t0, t0, -683
                  sltu         s9, s8, s6
                  sltu         a3, gp, s6
                  sltiu        s10, a6, 604
                  sll          s11, t2, s8
                  sltu         t5, s0, t6
                  slt          tp, t4, t1
                  sra          t6, sp, s1
                  or           s6, a0, s0
                  srai         s6, t5, 18
                  auipc        a7, 770935
                  xori         s5, s4, 445
                  and          a4, gp, a0
                  sltiu        gp, sp, -550
                  sll          gp, t6, t2
                  or           a7, s1, s11
                  auipc        s9, 157610
                  auipc        s11, 605697
                  auipc        s3, 126411
                  srli         sp, a5, 14
                  xori         s10, a4, -1964
                  xor          s3, gp, s5
                  slli         a5, t6, 14
                  xor          s1, s11, a5
                  lui          s3, 884520
                  and          s7, sp, s0
                  nop
                  sltu         s2, a0, a0
                  nop
                  sltiu        a6, s1, 1403
                  sub          s11, t5, s1
                  or           s7, a4, sp
                  sll          a7, a4, s6
                  addi         zero, s10, -745
                  ori          t5, a4, 437
                  srli         a3, a2, 23
                  xori         s1, gp, 1844
                  or           s6, t5, t3
                  srl          t3, s0, t2
                  srli         tp, a4, 3
                  slt          a7, s10, t5
                  xor          s2, a7, tp
                  xor          a0, t6, a1
                  nop
                  or           sp, t5, tp
                  slli         s6, gp, 2
                  xor          s7, s4, s11
                  srl          s2, s9, s10
                  sltiu        a7, s2, -1249
                  and          s5, t1, t1
                  sltiu        ra, s0, -1671
                  sra          a0, s4, ra
                  auipc        s8, 167735
                  nop
                  lui          s7, 181767
                  addi         s9, a4, 1085
                  lui          a5, 966187
                  srli         s6, s10, 4
                  srai         a7, a5, 31
                  sub          t3, ra, s0
                  slti         t0, s2, -1631
                  addi         s6, s9, 1658
                  and          a7, t1, t0
                  xor          tp, zero, a2
                  sltiu        a4, s8, 1448
                  sll          tp, t2, t4
                  srai         s8, sp, 12
                  and          ra, s5, s3
                  srai         s9, s3, 26
                  slt          s1, t6, gp
                  auipc        s8, 387036
                  xori         t5, s4, -169
                  auipc        a6, 715025
                  or           s2, t6, s7
                  sll          s3, t1, ra
                  xor          a7, zero, s6
                  sltiu        a1, s11, 2007
                  sltu         a2, a7, gp
                  xori         s7, s5, 1544
                  sll          s5, a6, s2
                  slt          tp, s1, t5
                  sll          s6, s2, s4
                  ori          a0, a1, 423
                  srai         t6, s7, 8
                  or           a6, a4, a1
                  and          a0, a2, s8
                  srli         gp, s9, 14
                  nop
                  xori         a4, s8, -652
                  and          s1, sp, s0
                  nop
                  slt          a3, s11, ra
                  xori         t3, a3, -479
                  nop
                  sub          a1, s3, s4
                  slt          s1, t4, s7
                  slt          s6, a3, s7
                  ori          tp, a3, -585
                  sltu         a1, s1, a6
                  sltu         zero, a1, s1
                  sra          s11, s8, t0
                  slt          s1, a4, t3
                  sra          ra, s1, s11
                  sra          tp, s9, s5
                  ori          s9, s4, -1606
                  xori         a1, t0, 1280
                  andi         a7, ra, -1331
                  srli         s5, s6, 16
                  and          s7, a6, a5
                  addi         s10, s5, 645
                  andi         a0, a5, -1666
                  slli         ra, a1, 4
                  sltu         a1, a7, s9
                  srl          s0, s4, gp
                  slli         a7, t2, 12
                  add          t0, t3, s2
                  nop
                  xori         s9, a7, 1453
                  slt          a1, a6, a4
                  sltu         t3, a7, a4
                  and          sp, s11, a3
                  slli         s9, a3, 24
                  sub          a2, a5, s5
                  ori          s5, t1, -739
                  slt          a6, t5, a2
                  sll          s0, a3, tp
                  sltiu        ra, s6, 536
                  sub          s0, a5, s0
                  or           t0, gp, a0
                  sltu         ra, s2, t2
                  lui          s10, 541277
                  srl          t6, s5, s8
                  addi         s3, sp, -945
                  andi         tp, t0, 759
                  slli         t5, s1, 5
                  or           a2, a6, a3
                  or           zero, a5, s2
                  sub          s6, s4, zero
                  ori          t5, t2, -275
                  or           t3, t1, sp
                  andi         zero, s1, -2
                  and          s3, s5, t4
                  sltiu        s7, s0, 642
                  auipc        s2, 602250
                  sll          s3, t1, gp
                  or           tp, s7, a1
                  srai         s2, ra, 1
                  nop
                  srl          s8, t5, s5
                  srai         s1, tp, 21
                  sll          a2, a7, t6
                  nop
                  srli         a3, t1, 24
                  srl          tp, a5, s3
                  srai         t1, sp, 6
                  addi         gp, s1, -983
                  srl          s2, t0, t6
                  andi         a1, a6, -167
                  lui          a1, 527023
                  lui          zero, 590398
                  sll          t1, t5, t3
                  ori          s9, zero, 2034
                  or           s5, gp, zero
                  auipc        s11, 475821
                  slt          t3, s10, a1
                  sub          gp, s9, s0
                  sra          t6, zero, a2
                  add          a1, a1, gp
                  sltiu        t5, a6, -1254
                  sll          a7, a7, zero
                  add          a2, tp, tp
                  auipc        t1, 680930
                  andi         zero, t3, -438
                  slli         s11, ra, 25
                  andi         tp, s0, -1127
                  slt          t6, t2, ra
                  andi         gp, s9, -678
                  srli         a2, s0, 14
                  sub          zero, s3, s10
                  sra          ra, s9, a0
                  srl          sp, t6, a0
                  xor          a7, t3, t6
                  slt          t5, s4, sp
                  sll          s1, a1, t4
                  sub          tp, t1, ra
                  sltu         s1, a2, a7
                  xor          a3, a4, tp
                  sltu         a0, s10, t6
                  nop
                  srl          s1, t0, s8
                  slt          s9, t0, gp
                  addi         a1, s5, 909
                  srli         a3, s8, 22
                  addi         a2, a6, -1089
                  srai         s8, s8, 21
                  xori         a0, t3, 1605
                  srai         sp, t3, 16
                  or           tp, t4, s5
                  nop
                  slli         t5, a2, 20
                  add          s11, s2, t5
                  add          ra, a1, a5
                  srai         t0, s8, 13
                  srai         s3, a3, 4
                  lui          s2, 359759
                  sra          s6, t6, a1
                  sltiu        a2, a0, -1792
                  ori          gp, s10, -94
                  sll          a5, t5, t4
                  and          a1, a4, a1
                  ori          s1, t6, 2016
                  andi         s3, gp, -617
                  srai         tp, s11, 26
                  lui          s1, 611824
                  andi         s10, a2, -1930
                  sll          a3, s4, s6
                  ori          t6, s0, 274
                  sltiu        a0, s1, -115
                  ori          s10, tp, 1669
                  slti         s7, s4, -758
                  and          gp, s9, s10
                  add          a4, s10, tp
                  sub          a3, a6, s1
                  sltiu        t5, s9, -1633
                  slli         s3, s2, 12
                  nop
                  ori          s3, s2, -1646
                  sra          a7, s6, s7
                  sll          t3, t6, ra
                  addi         a3, s7, 784
                  slt          sp, s0, t0
                  or           sp, a2, ra
                  addi         t6, s10, 549
                  sub          s0, a3, s4
                  sra          s8, gp, tp
                  sltu         t5, t3, tp
                  sll          tp, t6, t5
                  auipc        zero, 876133
                  auipc        s2, 376124
                  and          a6, t0, s0
                  addi         a2, t3, -457
                  sll          a3, a5, tp
                  lui          t6, 683338
                  sltu         s9, s10, t5
                  sra          s0, s10, gp
                  slli         s8, s1, 1
                  slli         s5, a2, 22
                  sltu         zero, s6, a4
                  auipc        s11, 266012
                  sra          zero, s0, t3
                  or           ra, s2, t5
                  srai         s7, s5, 13
                  sub          a0, ra, zero
                  sltiu        a6, a1, 1505
                  andi         s8, gp, 360
                  slt          s3, t6, s6
                  sub          t0, t5, s6
                  xori         zero, t1, -1425
                  sub          zero, s5, t4
                  srli         s6, a0, 23
                  or           zero, ra, a4
                  and          s6, t1, t1
                  xori         t5, t0, -1255
                  slt          s0, s5, s3
                  add          a4, t2, s3
                  srli         a4, t2, 16
                  and          s8, a6, a3
                  slli         t1, a3, 28
                  add          s8, gp, s2
                  ori          s5, a1, -1917
                  srli         s7, s6, 24
                  sra          t3, s1, s5
                  sub          t3, a2, s10
                  sll          a7, s6, a6
                  srli         s7, t3, 28
                  sub          a4, a5, a3
                  srli         a5, a3, 1
                  xor          a1, s7, s10
                  andi         s7, s0, -1151
                  slti         s9, a6, 358
                  srai         a3, s2, 26
                  slli         a0, s2, 31
                  srl          s3, s2, t1
                  xor          a6, ra, s0
                  sra          s11, a5, s7
                  add          sp, s10, a5
                  xori         a3, s3, 118
                  srai         s6, t6, 11
                  sll          t5, gp, t2
                  auipc        s10, 918233
                  lui          t3, 24644
                  srli         t0, gp, 2
                  srl          a2, a5, s10
                  sra          s11, sp, a7
                  andi         s9, s3, 1086
                  sltu         s10, s1, s2
                  xor          s8, a5, s6
                  slt          a2, a7, zero
                  addi         s1, a3, -377
                  srai         s10, s1, 8
                  srl          s10, zero, s4
                  lui          s8, 191141
                  ori          s0, a5, -94
                  srli         a5, t5, 14
                  or           s7, t5, s5
                  sub          t3, sp, a2
                  auipc        t6, 267942
                  add          t0, s7, s2
                  sra          t5, gp, a4
                  slli         s1, s0, 16
                  sll          a5, a0, t5
                  nop
                  nop
                  sltu         s0, a7, a1
                  sra          tp, t0, t3
                  slt          gp, s10, t3
                  and          s8, s6, s7
                  sltiu        t5, a0, 1907
                  srl          t1, s1, t3
                  and          a7, t5, gp
                  xori         gp, sp, 1533
                  slti         s10, s0, 1229
                  srl          s0, a3, a6
                  srli         gp, t5, 13
                  srai         gp, t2, 31
                  xor          s0, s5, s2
                  slli         t0, ra, 31
                  sll          s3, zero, t3
                  slti         a1, s10, -642
                  lui          a1, 229681
                  slti         s11, t6, 811
                  srli         t0, tp, 3
                  xori         tp, t2, -1851
                  addi         a7, t3, -1507
                  auipc        a3, 195004
                  or           a6, a0, s6
                  xori         s5, s7, -1435
                  and          tp, a7, a7
                  add          t3, s7, t5
                  srli         a7, sp, 14
                  ori          t3, a2, 243
                  slli         a4, a1, 13
                  add          a2, s6, s4
                  slt          a6, ra, a4
                  sub          s11, s11, s4
                  sub          s3, sp, s3
                  sub          t1, s9, s7
                  slli         ra, a6, 1
                  srai         t3, s8, 20
                  ori          t0, s7, -531
                  srai         a5, s4, 16
                  slti         s1, gp, 1760
                  andi         s9, sp, 801
                  srl          s8, s4, t4
                  srl          a0, a3, a3
                  slt          gp, a6, a7
                  or           t1, a6, s7
                  sltu         zero, a1, ra
                  lui          s9, 199196
                  srli         s5, a0, 11
                  auipc        t0, 61599
                  andi         a4, t2, 508
                  slti         s9, a5, 1835
                  slli         t1, a4, 9
                  slti         gp, s5, 1529
                  slti         sp, s0, -883
                  slt          s0, a5, zero
                  srli         gp, a0, 14
                  xor          s5, s5, a7
                  srli         t3, s1, 18
                  sltiu        s6, s0, -149
                  sub          s1, s4, a4
                  nop
                  andi         a6, s1, -1621
                  srli         t0, gp, 28
                  xor          s7, s4, s6
                  lui          ra, 122679
                  slti         s3, t0, 1591
                  and          a7, s3, s7
                  xori         s2, s10, 296
                  nop
                  srli         tp, a6, 5
                  sltiu        t5, s5, -734
                  sltiu        s1, s8, -590
                  slli         a5, t3, 1
                  and          t6, sp, t5
                  slti         a7, t4, -1116
                  auipc        ra, 178806
                  slt          ra, s10, t0
                  xor          s9, s6, s7
                  lui          a4, 7447
                  add          a7, s9, a3
                  sub          t3, a3, a0
                  auipc        s5, 804953
                  or           t0, s5, s2
                  sll          a2, a5, t0
                  xor          s10, sp, s5
                  sltiu        s11, s5, 1177
                  xor          a5, a5, t2
                  srl          t6, t5, s7
                  slti         t3, s5, 978
                  and          ra, t1, t6
                  sra          gp, s6, s7
                  xori         t5, a7, -882
                  add          s10, s2, s7
                  slli         s8, s1, 16
                  ori          s0, s4, 276
                  sra          s8, s5, t2
                  slt          a3, a3, s0
                  lui          zero, 535555
                  slli         t3, t5, 13
                  lui          a7, 596420
                  and          zero, a1, a5
                  add          a7, s10, ra
                  srai         s2, s4, 8
                  andi         s1, a2, -1121
                  sra          sp, s0, t1
                  sub          a4, s3, s1
                  sll          s9, s6, s10
                  slti         a6, a0, 1701
                  srai         tp, s8, 25
                  or           tp, t6, ra
                  addi         a4, s6, -366
                  sll          t0, a5, a5
                  sll          a0, s2, a4
                  xor          sp, a0, s10
                  srai         t3, s10, 13
                  slli         a1, t0, 21
                  slt          a2, t1, tp
                  xor          s6, gp, t3
                  xor          ra, tp, s8
                  ori          s2, tp, 452
                  sltu         s1, gp, sp
                  srl          s9, t0, s4
                  or           ra, s4, s8
                  sub          tp, s10, t0
                  andi         a4, a3, 232
                  sll          t3, s9, s1
                  sltu         s5, s7, t3
                  xor          tp, a2, t4
                  srai         t1, s7, 6
                  andi         s3, gp, 2034
                  slt          tp, s9, t4
                  sub          a2, a5, a0
                  or           a5, t6, ra
                  srli         a5, t3, 30
                  li           s0, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           t5, 0x68c4de0
                  li           t3, 0xffffffff
                  li           t0, 0x7ab4e105
                  li           s7, 0x80000000
                  li           s9, 0xffffffff
                  li           t1, 0x4c5418e0
                  li           s2, 0x553ff007
                  li           s1, 0x80000000
                  li           sp, 0xffffffff
                  add          s1, t1, t3
                  nop
                  lui          t5, 356719
                  addi         s7, s1, -1020
                  auipc        t1, 7384
                  sub          t1, s9, s2
                  auipc        t0, 458511
                  add          t5, t3, s2
                  lui          sp, 1035972
                  sub          s9, s9, t0
                  lui          t0, 566253
                  lui          s7, 334544
                  addi         s1, sp, -1927
                  lui          s2, 140330
                  sub          sp, s0, t1
                  lui          s1, 415359
                  lui          sp, 624621 #end riscv_int_numeric_corner_stream_13
                  addi         s0, t5, -1962
                  slt          s0, s4, s11
                  xor          s11, a7, s5
                  andi         s7, a6, -385
                  sub          t3, s9, a4
                  nop
                  sra          s3, a2, t3
                  slli         t1, a2, 17
                  sub          t3, a5, sp
                  sltiu        a1, a1, 1933
                  sub          a0, t1, t0
                  add          t5, t6, a4
                  sltiu        s8, gp, -685
                  sra          s8, s2, s6
                  sltu         s9, a5, t6
                  auipc        sp, 16846
                  auipc        a7, 362047
                  sltiu        a7, gp, 591
                  auipc        s8, 946440
                  sub          a2, t2, zero
                  nop
                  and          a6, t1, s7
                  sub          t5, tp, s2
                  ori          a6, s0, 1663
                  auipc        a0, 113555
                  sltu         s9, gp, s9
                  slti         s6, t1, 844
                  sll          zero, a6, a6
                  srl          a2, s6, sp
                  srl          a2, t6, s4
                  xori         sp, a6, 1103
                  or           s7, t3, t2
                  add          a7, s3, zero
                  xori         s8, a1, 688
                  srli         a5, s7, 27
                  nop
                  srai         t3, tp, 7
                  auipc        zero, 222496
                  and          tp, ra, a3
                  auipc        s11, 555378
                  xor          t0, s7, s4
                  and          t1, t2, s9
                  add          t1, t3, s4
                  and          zero, a6, a7
                  srai         s5, t6, 15
                  srl          a6, zero, t6
                  sra          gp, s1, s1
                  slt          a3, s2, a5
                  sltu         a7, s5, a3
                  sltiu        a6, tp, -1881
                  auipc        t1, 970436
                  slt          s5, a4, t6
                  srli         a6, t6, 0
                  slli         a0, t3, 18
                  nop
                  sub          a3, t0, t3
                  auipc        t1, 418853
                  sltiu        a3, s7, -235
                  or           t3, zero, t1
                  sra          s9, a2, t4
                  sra          t3, s0, a4
                  slli         gp, s5, 16
                  nop
                  auipc        t0, 894808
                  ori          ra, t2, 1484
                  sltiu        t6, gp, 976
                  auipc        s9, 4113
                  srl          s6, gp, s2
                  srai         s9, s2, 15
                  sltu         ra, s11, a2
                  sub          t5, s6, s6
                  sltu         a4, zero, t0
                  srai         t0, ra, 10
                  sltiu        a6, s10, -848
                  slli         a4, zero, 0
                  nop
                  andi         t0, t1, -865
                  lui          s11, 62809
                  add          a3, t0, s5
                  sra          s2, sp, ra
                  add          t3, s0, a5
                  lui          s2, 105267
                  auipc        s1, 723624
                  srai         a5, a6, 27
                  xori         s3, s11, 1120
                  slt          a4, t6, a3
                  andi         s9, ra, 1556
                  xori         s7, t5, -1589
                  add          s8, s11, s11
                  add          a2, s7, a6
                  slti         a7, s8, -212
                  andi         a2, t5, 479
                  srl          t1, s4, s8
                  lui          s1, 626537
                  andi         s11, t2, 769
                  srl          t0, tp, a0
                  slti         a7, s9, -1174
                  xori         tp, zero, 1149
                  sltiu        a4, s1, -1737
                  auipc        a2, 161823
                  slt          t5, zero, s10
                  nop
                  xor          t0, t3, a7
                  sra          t3, s8, s7
                  add          a6, a4, t0
                  sub          a6, a2, a0
                  ori          gp, s8, 738
                  andi         s6, a5, 1572
                  srl          ra, t5, gp
                  add          t0, s10, s10
                  xor          s2, t3, s10
                  nop
                  srli         t3, s11, 3
                  andi         gp, s11, 2037
                  sll          s6, a3, a4
                  auipc        sp, 738549
                  srai         s11, s11, 23
                  sub          s2, s10, s1
                  slti         sp, sp, -23
                  srl          s1, s2, t3
                  andi         s8, t6, 1365
                  sll          s7, a1, s6
                  sra          a5, a4, a7
                  and          t1, t4, s4
                  or           ra, t2, s2
                  srli         s11, a5, 19
                  slt          t6, s10, a7
                  nop
                  auipc        s5, 21092
                  and          a0, t1, a1
                  sltu         s2, t3, a6
                  sra          s2, ra, s2
                  slti         ra, s11, -1691
                  addi         t3, s11, 970
                  lui          t3, 659871
                  srli         tp, t5, 13
                  srl          s8, a7, s9
                  nop
                  ori          t0, s4, -1260
                  sra          t0, a6, a0
                  sub          a5, t5, gp
                  srai         a0, s3, 12
                  srl          a2, s11, a6
                  sra          a7, t6, tp
                  slt          t5, a6, ra
                  addi         s11, a3, 1405
                  or           a0, t2, s9
                  sub          t3, t0, t2
                  srli         a5, s10, 8
                  sll          t1, a5, zero
                  nop
                  sra          a1, s11, s5
                  srl          s11, t0, s0
                  ori          a5, a1, 1183
                  slli         a1, a1, 14
                  sra          gp, t3, t1
                  slti         s0, a3, 1784
                  and          s0, s1, t2
                  andi         a6, tp, 629
                  add          t3, s6, t3
                  sub          s5, tp, tp
                  addi         ra, s6, 141
                  or           zero, s11, ra
                  auipc        a1, 791114
                  slti         a7, gp, -753
                  sll          s8, t2, s2
                  ori          s8, a5, 1816
                  sll          s0, s1, a1
                  and          ra, ra, t6
                  add          s5, sp, a2
                  sltu         a1, a3, ra
                  add          a3, s7, t0
                  srli         s2, ra, 2
                  sll          sp, t3, a2
                  nop
                  sltu         t0, s4, a5
                  and          t3, ra, t3
                  xori         a1, s3, -404
                  ori          s8, ra, -1712
                  sltu         s0, a0, t4
                  sub          s6, a4, a0
                  or           t0, a0, a7
                  srl          t1, s4, t3
                  srl          a5, t1, s9
                  slt          a7, s5, ra
                  slli         tp, s10, 2
                  srl          s1, s6, s1
                  or           s5, t4, t2
                  addi         tp, a7, 1932
                  lui          zero, 231510
                  andi         s7, t6, 1100
                  sltu         a1, a5, a5
                  sub          s1, a7, sp
                  xori         s6, gp, 20
                  sra          s11, s2, s10
                  sltu         tp, t6, s7
                  lui          sp, 439785
                  lui          t6, 327160
                  srl          gp, a7, s0
                  auipc        s2, 535935
                  srli         a2, t6, 21
                  slt          s9, a3, t4
                  srl          s2, a2, s11
                  auipc        s10, 1023815
                  add          sp, t1, zero
                  sltiu        t6, s0, 1569
                  xori         tp, s9, -1807
                  and          s5, a1, t1
                  auipc        s11, 705095
                  srl          s11, t4, t1
                  srl          tp, s2, a7
                  nop
                  srai         s1, s6, 17
                  srl          s10, ra, a5
                  sub          a6, s0, s10
                  andi         t6, zero, -1813
                  srli         t5, s8, 26
                  sra          a4, s5, t6
                  slli         s2, ra, 31
                  sll          t3, a3, tp
                  lui          zero, 719524
                  srl          a1, t3, tp
                  auipc        sp, 907764
                  sra          t0, a4, a2
                  srai         a6, t5, 26
                  add          s6, a5, t5
                  slt          tp, s5, s9
                  addi         s9, t2, 1400
                  nop
                  and          t3, s10, s10
                  sub          a5, s4, gp
                  lui          s11, 103186
                  slti         a0, a2, -33
                  sll          zero, ra, a1
                  auipc        a5, 982151
                  slt          a2, a3, s10
                  sltu         s2, s6, sp
                  or           a3, t0, t4
                  xori         a7, zero, 1550
                  addi         t5, s10, -2031
                  auipc        zero, 377568
                  lui          s3, 682243
                  srli         s3, a0, 27
                  ori          tp, a4, 136
                  lui          s10, 356566
                  sra          s9, s5, t2
                  srai         a5, s10, 22
                  xori         t6, s7, -140
                  slti         s2, t6, 1213
                  slli         s10, t0, 8
                  xori         s6, s8, 1325
                  sll          a6, zero, t6
                  addi         s5, a1, -382
                  sra          a2, s9, a0
                  slti         s7, tp, -68
                  nop
                  srai         zero, a5, 12
                  slt          t0, tp, a5
                  slt          a2, a3, s2
                  and          s0, s8, a7
                  ori          s9, t2, -1243
                  xori         s9, zero, -1076
                  or           a1, t3, a5
                  lui          s3, 826131
                  add          t1, s0, s3
                  and          a3, zero, s11
                  lui          s5, 856522
                  nop
                  srai         zero, t3, 27
                  addi         a3, s1, 473
                  slt          t6, s8, s0
                  or           t6, a0, ra
                  srl          ra, a1, a1
                  srli         s9, a2, 7
                  addi         t3, t6, 1416
                  andi         t0, s8, 1581
                  add          s2, s10, t6
                  ori          s11, a0, -266
                  andi         ra, zero, 376
                  lui          gp, 201661
                  sltiu        s2, t5, -1109
                  slti         s6, t2, -1577
                  slli         a6, a2, 22
                  slt          a7, s3, s7
                  sub          a6, zero, t0
                  lui          a4, 765528
                  nop
                  and          a6, t1, t0
                  sltu         t5, t4, s9
                  or           s9, s10, a1
                  nop
                  slt          a3, t0, s3
                  add          t1, s7, s7
                  slli         s0, s2, 6
                  or           tp, t1, s8
                  lui          t1, 926303
                  nop
                  or           s6, zero, s5
                  and          a7, tp, sp
                  add          s2, a2, s3
                  slt          a7, s7, t3
                  addi         a6, a7, -1161
                  auipc        t5, 182606
                  nop
                  auipc        t1, 80675
                  slti         a6, s5, -234
                  andi         s3, a7, 1718
                  slti         a6, a6, -414
                  auipc        s1, 448886
                  or           a4, t5, t1
                  slli         sp, a0, 6
                  addi         a4, s10, -1389
                  srl          a5, t3, s8
                  ori          a2, s11, 1311
                  sub          a5, s11, t3
                  srli         s2, s8, 24
                  slli         t5, t5, 31
                  add          s10, ra, t4
                  sra          s5, s6, t6
                  sltiu        gp, t2, 5
                  sll          a2, s3, s2
                  ori          a7, tp, -1285
                  addi         s9, a1, -1807
                  lui          s0, 803388
                  sltiu        t6, s4, 1345
                  or           gp, s0, a1
                  auipc        s0, 160531
                  xori         zero, zero, 1349
                  xori         s3, a4, -1037
                  and          a6, sp, t3
                  xori         s2, zero, 116
                  srai         s9, a1, 28
                  auipc        a4, 919706
                  slt          s0, a2, a3
                  srai         s9, t4, 7
                  sra          s2, a5, s8
                  add          a4, gp, t5
                  addi         s3, ra, 518
                  srl          ra, a2, t2
                  sra          ra, s0, t1
                  ori          a5, s1, -1276
                  srl          t5, a0, s6
                  andi         a7, a6, 1686
                  auipc        t0, 257561
                  sltiu        s9, a0, 1014
                  sltiu        s6, t5, 93
                  slti         s7, s5, -718
                  srai         sp, t1, 16
                  slt          s9, s2, s7
                  or           t1, ra, a7
                  xor          a1, a0, a0
                  and          t0, a1, t4
                  sltiu        s7, s1, 391
                  nop
                  lui          a2, 522058
                  sll          s8, s5, t5
                  auipc        a0, 644258
                  addi         a7, a3, -1159
                  slti         s3, a2, -1442
                  nop
                  nop
                  lui          s7, 129516
                  add          s5, s4, s5
                  srai         s6, tp, 24
                  srl          a3, a3, s1
                  srai         t5, t6, 18
                  add          a2, a7, a1
                  xori         zero, tp, -2020
                  or           t0, s7, a3
                  add          s0, s2, s4
                  slli         t0, s11, 27
                  sll          a6, t4, a6
                  andi         s0, t2, -714
                  srai         ra, t5, 23
                  auipc        t3, 928285
                  sll          s5, a3, ra
                  add          a1, s5, s9
                  sltiu        s2, gp, -207
                  nop
                  slt          s8, s9, t5
                  slt          t0, sp, s10
                  srl          t3, t1, s4
                  slti         s8, a1, 1098
                  ori          s0, s2, 1918
                  srai         s11, s8, 16
                  sll          sp, s10, t1
                  xor          s1, s3, s8
                  srl          s2, ra, s11
                  sltu         a3, a2, t3
                  add          s9, tp, a1
                  sub          a2, gp, s11
                  xor          s3, sp, a0
                  nop
                  slli         a0, s7, 24
                  srai         t3, t1, 19
                  add          s8, s4, t4
                  andi         sp, a6, 579
                  nop
                  lui          a1, 669159
                  xor          s7, zero, s10
                  slt          a3, s7, t6
                  xor          tp, t4, s4
                  or           t1, a5, t1
                  sub          t6, s3, a5
                  lui          ra, 136493
                  xor          s3, t2, tp
                  or           t0, t0, s2
                  auipc        s1, 210312
                  sll          s5, t0, t2
                  ori          s2, s10, -353
                  srli         zero, a1, 6
                  or           tp, s8, tp
                  srai         s8, t5, 22
                  andi         s8, s10, -1322
                  add          t1, a5, gp
                  or           a6, t1, s10
                  srli         t0, a3, 10
                  slli         a6, s6, 0
                  sub          s1, t5, t5
                  addi         s0, t1, -1285
                  slt          s8, a4, t1
                  lui          s9, 901297
                  addi         t1, s6, 342
                  sltu         a2, s1, s5
                  sltu         t1, s3, s0
                  srai         tp, s7, 0
                  srli         s9, a1, 4
                  srli         tp, s11, 22
                  add          s2, a1, a3
                  srli         gp, s7, 2
                  sltiu        t1, t0, -985
                  xori         s11, s3, 30
                  srai         a2, s11, 31
                  addi         tp, a6, 753
                  ori          s5, s11, -98
                  andi         tp, t0, -1593
                  sra          t5, ra, sp
                  lui          a1, 159046
                  slli         t5, s6, 6
                  andi         t1, t4, -1939
                  xor          a3, a5, ra
                  andi         zero, a7, -3
                  slli         s6, zero, 5
                  and          s8, s1, zero
                  sll          s0, s1, a6
                  sltu         a3, t3, zero
                  auipc        a2, 453503
                  xor          s6, a6, t1
                  srai         s5, a4, 27
                  ori          ra, s3, 1666
                  ori          s8, tp, -1762
                  sra          zero, s2, a0
                  sll          s2, s1, a0
                  srl          ra, s10, t2
                  add          a3, t3, s7
                  addi         a6, t1, -1464
                  slli         t1, zero, 31
                  sub          a5, a3, zero
                  addi         a4, s11, 1961
                  sra          s2, t0, t4
                  add          s3, s9, a4
                  srl          a5, a7, s11
                  auipc        a3, 604369
                  xor          s8, s7, sp
                  xori         s2, t3, 997
                  ori          a1, s7, -447
                  sra          ra, a7, t6
                  lui          s8, 913977
                  ori          s1, s11, 460
                  and          s11, t0, s1
                  slti         a4, a0, 1051
                  nop
                  or           tp, ra, s5
                  nop
                  sub          s6, s1, a3
                  xori         s11, a6, 234
                  addi         a5, t2, 991
                  sltiu        a5, s1, 1730
                  nop
                  slti         tp, s9, -1982
                  or           s2, t4, a7
                  or           s2, a7, zero
                  xor          a4, a1, zero
                  slt          s7, s4, a6
                  auipc        s6, 136653
                  nop
                  nop
                  and          sp, s4, s4
                  lui          s2, 777442
                  andi         ra, a6, 16
                  slti         t0, a5, 765
                  lui          s6, 417154
                  srli         s9, zero, 4
                  lui          s8, 807517
                  slt          s9, s11, a5
                  nop
                  srai         s10, s0, 25
                  srl          s9, a1, a1
                  lui          t5, 183068
                  slli         a5, s7, 29
                  nop
                  lui          t1, 404017
                  srl          s7, s3, s5
                  srai         a4, t1, 10
                  add          a6, s8, t2
                  xor          a4, s4, s10
                  slti         s2, a5, -2026
                  srli         t3, gp, 5
                  xor          s11, a6, t6
                  lui          gp, 172832
                  srai         a0, a7, 17
                  srl          s7, ra, s7
                  and          s7, s0, s0
                  srli         s7, s2, 6
                  sltu         a0, a1, t2
                  andi         s0, a3, -731
                  sub          s3, s10, a5
                  or           a0, a1, t4
                  sltu         a1, s2, t1
                  ori          s7, t1, 1150
                  or           s3, ra, s11
                  andi         a6, a7, -1710
                  slt          s3, t2, s7
                  add          s1, t4, ra
                  auipc        zero, 45543
                  lui          t5, 773015
                  srl          t6, a6, t5
                  sltiu        t0, t4, -770
                  sub          tp, a7, gp
                  auipc        t3, 485685
                  add          ra, s7, a5
                  or           s10, a2, s6
                  or           t5, s8, ra
                  and          tp, t3, s7
                  or           t0, s11, a4
                  andi         a0, s2, 1461
                  slt          zero, s0, s6
                  srli         s8, t5, 11
                  srai         s2, s11, 14
                  auipc        gp, 986000
                  sra          s0, s0, a3
                  srl          tp, zero, s0
                  auipc        sp, 975576
                  add          s0, zero, sp
                  srli         s3, a0, 14
                  sub          a0, sp, t3
                  sra          t0, s3, s5
                  sltiu        t6, s7, 1693
                  addi         s9, a4, 1576
                  slt          s9, a5, t1
                  srai         t1, s9, 14
                  srai         a6, t0, 16
                  sra          s2, s5, t0
                  addi         ra, tp, 1549
                  nop
                  slli         gp, s0, 29
                  xori         a3, zero, -24
                  slli         t6, s2, 11
                  auipc        a0, 542177
                  nop
                  ori          a6, t2, 1797
                  sll          a7, a7, a4
                  sll          s1, s9, s10
                  srai         s2, a1, 30
                  auipc        s9, 534583
                  sub          s8, a3, s4
                  and          s7, a4, s7
                  or           a2, s7, a5
                  sltu         tp, s10, t2
                  and          a7, s11, s4
                  lui          s8, 619156
                  srai         a0, s0, 3
                  ori          s2, s8, 1200
                  sll          a6, ra, tp
                  sltiu        zero, t1, 995
                  ori          t1, s7, 1006
                  addi         s9, a3, 1660
                  xori         a5, a3, 1866
                  slli         s1, zero, 27
                  sll          tp, a4, t1
                  slt          t5, sp, t4
                  nop
                  auipc        s1, 851072
                  nop
                  slli         a1, s3, 24
                  sltu         tp, t2, a3
                  sll          s1, t3, s9
                  addi         tp, s5, -1015
                  sll          s9, a1, a7
                  srl          s7, s1, t5
                  srl          ra, a0, a0
                  or           s9, s4, sp
                  sra          s1, gp, t1
                  slt          a0, s4, tp
                  auipc        t5, 426433
                  srai         a0, t0, 2
                  or           s8, t6, a0
                  sltu         a2, gp, s2
                  srli         s6, zero, 22
                  and          t0, s7, zero
                  and          ra, t0, s5
                  addi         t0, t0, 1604
                  sra          s2, s6, s3
                  srli         s5, a7, 15
                  sra          s1, t2, tp
                  sub          a2, gp, s9
                  xori         zero, a0, 169
                  lui          tp, 363608
                  slli         t3, t0, 8
                  add          t3, tp, s0
                  and          sp, t5, s8
                  sra          t0, t5, t0
                  or           tp, tp, s6
                  and          t5, t0, sp
                  srli         a4, s3, 29
                  xor          s9, t3, zero
                  xor          a7, s11, a7
                  ori          a2, s0, -962
                  andi         a2, t1, 619
                  or           a4, s10, t3
                  sltiu        s6, s8, 949
                  slti         a3, s11, 133
                  addi         ra, a3, -1574
                  sra          s1, t2, a6
                  ori          tp, s2, 636
                  sll          a0, s8, a7
                  ori          a7, s5, -432
                  slt          a4, s11, t1
                  sub          a4, tp, s6
                  add          t6, t1, a1
                  andi         s6, s9, -1117
                  addi         s10, a7, -1929
                  lui          t3, 301044
                  add          s3, s7, t2
                  srl          s2, s9, s5
                  xori         t1, t1, 560
                  ori          s6, a5, -1955
                  srli         s8, s11, 11
                  andi         s11, s1, 1423
                  slli         zero, a1, 16
                  lui          zero, 660006
                  sltu         t3, s11, s0
                  slt          a7, a5, t1
                  srl          s11, t1, s9
                  nop
                  and          s2, sp, s3
                  sltu         s1, zero, tp
                  xori         t1, gp, -1043
                  ori          a6, zero, 1710
                  auipc        s2, 949183
                  slli         s6, a6, 7
                  addi         s7, s4, 431
                  auipc        s11, 988663
                  sltu         t5, t0, s1
                  xor          a1, s1, s11
                  auipc        s2, 859418
                  sra          s9, a0, a4
                  sll          a5, s5, t6
                  lui          a3, 767359
                  slt          a4, s7, s4
                  xor          tp, a1, a3
                  auipc        s0, 1014892
                  add          tp, t1, gp
                  sra          a2, t5, t5
                  srai         a2, s6, 7
                  slt          s8, gp, t3
                  auipc        s6, 779434
                  add          s8, s1, s11
                  nop
                  srli         t0, t6, 2
                  slli         a7, t5, 23
                  addi         s5, sp, 1902
                  addi         s5, t5, -722
                  xori         tp, s8, 225
                  addi         a2, tp, 357
                  slti         s0, a5, 2010
                  srl          t3, a4, s9
                  sll          a7, t1, t1
                  xori         tp, s1, 1139
                  add          ra, a7, s2
                  addi         s10, t3, 732
                  srli         a5, t6, 20
                  or           s8, t0, tp
                  srli         a4, a1, 7
                  add          a2, s6, s2
                  xori         s5, t4, -396
                  srai         s10, s8, 30
                  or           a6, zero, s10
                  sltiu        a3, t5, 537
                  and          zero, s8, s4
                  nop
                  add          t0, a1, a5
                  add          s6, a4, ra
                  and          tp, s11, s1
                  sra          s5, a6, s0
                  addi         a0, t6, -2018
                  srai         s9, s5, 22
                  sll          ra, t4, t6
                  xor          a3, s8, s0
                  srli         s11, s5, 0
                  and          s10, a0, t3
                  xori         a0, t3, 1387
                  xor          a1, t1, a1
                  sub          s0, a2, t2
                  add          a5, a1, t4
                  or           sp, ra, t5
                  lui          s0, 108417
                  slli         s5, s11, 23
                  srai         t3, s8, 28
                  auipc        a0, 924113
                  addi         a4, s9, -271
                  add          s10, s9, t5
                  srai         s8, s10, 13
                  sub          t1, t3, s5
                  andi         s7, tp, -218
                  xor          s3, t0, s3
                  sll          t0, a0, t2
                  nop
                  slti         a4, a6, 245
                  slli         a7, s11, 3
                  xor          t3, a0, sp
                  add          a6, s6, s4
                  auipc        ra, 527277
                  lui          sp, 422248
                  slt          s1, zero, a6
                  addi         s7, a7, 129
                  srl          a2, tp, s8
                  sltiu        a4, s11, -1965
                  lui          s5, 832208
                  sll          a4, zero, a6
                  ori          a7, s4, -1089
                  slli         s6, a4, 18
                  sra          t1, tp, s11
                  srai         t3, t5, 0
                  auipc        s10, 200300
                  xori         s10, t3, 298
                  nop
                  srli         a5, s4, 8
                  srai         s9, ra, 17
                  addi         tp, a6, 1663
                  nop
                  addi         s11, sp, 1311
                  addi         a0, t4, 831
                  srli         t6, s11, 27
                  sub          s11, t1, s0
                  auipc        a0, 599969
                  slt          sp, t1, sp
                  ori          ra, s7, -1784
                  xori         s11, s4, -25
                  ori          t3, a6, 635
                  andi         t5, t3, 109
                  sll          s11, a3, a6
                  sll          s5, t1, s11
                  srl          t5, s7, t1
                  slli         t1, ra, 24
                  and          a2, a0, a0
                  sub          gp, s0, ra
                  sub          gp, ra, sp
                  slli         a0, t6, 12
                  and          s7, a1, s3
                  nop
                  lui          a0, 725239
                  slli         s3, s9, 4
                  srli         a2, zero, 3
                  slli         s6, s3, 22
                  sltiu        a4, t0, -1103
                  srl          zero, a3, t6
                  sra          s2, a2, t1
                  nop
                  srai         s0, a4, 12
                  add          a3, a7, s8
                  add          s0, t1, t0
                  add          a6, s1, s4
                  andi         s8, a6, -660
                  lui          s3, 866005
                  xor          s6, zero, s9
                  sltiu        ra, a2, -990
                  srli         gp, s10, 23
                  nop
                  sub          s1, s11, s0
                  and          a4, t5, t3
                  slli         t1, sp, 22
                  nop
                  and          a1, s1, a3
                  ori          a0, s1, 2027
                  auipc        a4, 805739
                  ori          a7, s10, 536
                  nop
                  sll          t1, s7, t0
                  ori          s11, ra, 576
                  srai         a2, a7, 22
                  ori          s9, ra, 1829
                  srai         ra, s4, 11
                  andi         zero, a1, 1028
                  ori          s3, tp, 528
                  sltu         s0, sp, a3
                  srl          sp, t6, a4
                  slti         a1, t6, 170
                  sll          t0, t1, a5
                  slt          t5, gp, a1
                  sltu         gp, ra, s9
                  srli         s9, s6, 1
                  sll          t6, t0, a5
                  la x7, test_done
                  jalr x0, x7, 0
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
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x29, x20, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_2:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x29, x20, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_3:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x29, x20, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_4:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x29, x20, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_5:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x29, x20, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_6:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x29, x20, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_7:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x29, x20, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_8:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x29, x20, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_9:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x29, x20, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_10:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x29, x20, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_11:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x29, x20, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_12:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x29, x20, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_13:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x29, x20, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_14:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x29, x20, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_15:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x29, x20, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x29, x20, zero
                  csrr x26, 0x341 # MEPC
                  csrr x26, 0x342 # MCAUSE
                  li x23, 0x3 # BREAKPOINT
                  beq x26, x23, ebreak_handler
                  li x23, 0x8 # ECALL_UMODE
                  beq x26, x23, ecall_handler
                  li x23, 0x9 # ECALL_SMODE
                  beq x26, x23, ecall_handler
                  li x23, 0xb # ECALL_MMODE
                  beq x26, x23, ecall_handler
                  li x23, 0x1
                  beq x26, x23, instr_fault_handler
                  li x23, 0x5
                  beq x26, x23, load_fault_handler
                  li x23, 0x7
                  beq x26, x23, store_fault_handler
                  li x23, 0xc
                  beq x26, x23, pt_fault_handler
                  li x23, 0xd
                  beq x26, x23, pt_fault_handler
                  li x23, 0xf
                  beq x26, x23, pt_fault_handler
                  li x23, 0x2 # ILLEGAL_INSTRUCTION
                  beq x26, x23, illegal_instr_handler
                  csrr x23, 0x343 # MTVAL
                  1: la x7, test_done
                  jalr x1, x7, 0

ecall_handler:    
                  la x26, _start
                  sw x0, 0(x26)
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  la x7, write_tohost
                  jalr x0, x7, 0

instr_fault_handler:
                  add x20, x29, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

load_fault_handler:
                  add x20, x29, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

store_fault_handler:
                  add x20, x29, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

ebreak_handler:   
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x20, x29, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

illegal_instr_handler:
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x20, x29, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x26, 0x300 # MSTATUS;
                  csrr  x26, 0x304 # MIE;
                  csrr  x26, 0x344 # MIP;
                  csrrc x26, 0x344, x26 # MIP;
                  add x20, x29, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
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
