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
                  li x31, 0x40000100
                  csrw 0x301, x31
kernel_sp:        
                  la x18, kernel_stack_end

trap_vec_init:    
                  la x31, mtvec_handler
                  ori x31, x31, 1
                  csrw 0x305, x31 # MTVEC

mepc_setup:       
                  la x31, init
                  csrw 0x341, x31

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x31, 0x1800
                  csrw 0x300, x31 # MSTATUS
                  mret
init:             
                  li x0, 0x3
                  li x1, 0x7b7fbe5c
                  li x2, 0x80000000
                  li x3, 0x0
                  li x4, 0xf6bf45a0
                  li x5, 0xf9b7d296
                  li x6, 0x0
                  li x7, 0xf435d04e
                  li x8, 0x4c852e99
                  li x9, 0x80000000
                  li x10, 0xf67f5799
                  li x11, 0xb
                  li x12, 0xf7e9c6b8
                  li x13, 0x0
                  li x14, 0x80000000
                  li x15, 0xafd804df
                  li x16, 0x8f4f01e8
                  li x17, 0xf8911637
                  li x19, 0xf
                  li x20, 0x0
                  li x21, 0x0
                  li x22, 0x5
                  li x24, 0x80000000
                  li x25, 0xf
                  li x26, 0xa
                  li x27, 0x80000000
                  li x28, 0xfc0c381a
                  li x29, 0x7e2fbd58
                  li x30, 0x80000000
                  li x31, 0xff18fba8
                  la x23, user_stack_end
main:             li           a5, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           s6, 0xcb52c71c
                  li           s10, 0xffffffff
                  li           gp, 0x80000000
                  li           a7, 0x0
                  li           s8, 0x80000000
                  li           tp, 0xffffffff
                  li           s5, 0x0
                  li           t0, 0xffffffff
                  li           t3, 0x0
                  add          t0, s5, gp
                  addi         s10, t3, -1710
                  nop
                  sub          s5, s6, t0
                  auipc        tp, 439125
                  sub          s8, gp, a5
                  lui          gp, 411734
                  nop
                  addi         s5, gp, -1321
                  addi         t3, s6, 1450
                  auipc        t3, 538184
                  nop
                  lui          a5, 854089
                  auipc        t0, 390348
                  lui          gp, 518181
                  auipc        s5, 866744 #end riscv_int_numeric_corner_stream_8
                  li           a0, 0xb77803d0 #start riscv_int_numeric_corner_stream_13
                  li           t3, 0xffffffff
                  li           t1, 0x1c85faa4
                  li           s0, 0x523144e1
                  li           sp, 0x5e590d18
                  li           s1, 0x80000000
                  li           a7, 0xffffffff
                  li           s10, 0xffffffff
                  li           gp, 0x150b0533
                  li           t6, 0xffffffff
                  auipc        t3, 67560
                  add          gp, s0, s10
                  nop
                  auipc        a0, 1018254
                  lui          a0, 910371
                  addi         gp, a7, 1751
                  nop
                  add          a7, s0, s1
                  lui          a7, 791034
                  add          t3, t1, s1
                  lui          a0, 662774
                  addi         sp, t3, 1268
                  add          t3, s0, sp
                  auipc        a7, 190275
                  add          t1, t1, s1
                  nop
                  auipc        s1, 695204
                  nop
                  lui          t3, 817139
                  lui          s1, 386377
                  sub          gp, t1, s10
                  addi         a0, t3, -1762
                  add          s1, gp, a7
                  sub          t6, s10, t6 #end riscv_int_numeric_corner_stream_13
                  li           s11, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           s6, 0x80000000
                  li           a0, 0xf65e1b8a
                  li           sp, 0xffffffff
                  li           t0, 0x0
                  li           s8, 0xffffffff
                  li           a1, 0x45c56a82
                  li           t1, 0xffffffff
                  li           s5, 0xffffffff
                  li           tp, 0xffffffff
                  add          sp, sp, t1
                  lui          t0, 985884
                  add          s8, t1, t1
                  lui          t0, 945864
                  auipc        a1, 308379
                  nop
                  auipc        s11, 125629
                  sub          t0, s6, s11
                  auipc        a0, 846860
                  auipc        t0, 949946
                  add          sp, s8, s6
                  sub          t1, sp, a1
                  nop
                  lui          s8, 167467
                  nop
                  nop
                  add          t0, a1, sp
                  sub          s6, tp, s5
                  addi         s6, sp, 715
                  addi         s11, s8, -496
                  lui          s6, 353098
                  auipc        s5, 271691
                  addi         tp, t0, -129
                  addi         s5, s8, -526
                  add          sp, s5, s5
                  auipc        t1, 61193
                  add          s8, s8, s6
                  sub          s5, s5, s6
                  sub          a0, s5, s5
                  sub          s6, a0, sp #end riscv_int_numeric_corner_stream_3
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           a5, 0x0
                  li           s9, 0xffffffff
                  li           s10, 0xdd47b97e
                  li           t3, 0x0
                  li           a0, 0xffffffff
                  li           tp, 0x80000000
                  li           a1, 0x80000000
                  li           ra, 0x2d082a4e
                  li           a6, 0xa683a70d
                  addi         a6, a6, 2
                  add          a6, ra, t3
                  sub          s9, t3, a0
                  auipc        s10, 588217
                  sub          a6, s10, tp
                  sub          s10, a5, s10
                  lui          a5, 210225
                  sub          a6, a1, s9
                  sub          a1, tp, s9
                  add          s9, a6, a0
                  add          s9, t3, a0
                  auipc        s10, 960016
                  add          a0, a5, tp
                  auipc        a5, 422885
                  auipc        s10, 493578
                  auipc        t3, 544600
                  auipc        a1, 37611
                  addi         s10, s4, 289
                  add          t3, t3, ra
                  add          s9, a5, a1 #end riscv_int_numeric_corner_stream_7
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           s5, 0xffffffff
                  li           a0, 0xedaba993
                  li           s10, 0x8bd4efda
                  li           s11, 0x80000000
                  li           t5, 0xcd3b4749
                  li           a7, 0xf854cfe7
                  li           a6, 0x80000000
                  li           s4, 0x933b1517
                  li           s3, 0x0
                  sub          s10, a7, a7
                  lui          s5, 491363
                  nop
                  lui          t6, 105756
                  lui          a6, 248763
                  lui          s4, 227713
                  add          a6, s4, a6
                  lui          s5, 876737
                  nop
                  lui          a7, 688687
                  lui          a7, 249117
                  sub          s3, t6, s3
                  auipc        t6, 444437
                  addi         s4, t6, -1157
                  addi         s3, a6, -318
                  sub          s4, s4, a6
                  addi         a6, a6, 1223
                  nop #end riscv_int_numeric_corner_stream_18
                  li           s4, 0x1e8fa2af #start riscv_int_numeric_corner_stream_10
                  li           sp, 0x80000000
                  li           a2, 0x80000000
                  li           a6, 0x80000000
                  li           a5, 0x80000000
                  li           t0, 0x0
                  li           s10, 0x79e6a5da
                  li           t3, 0xffffffff
                  li           gp, 0x0
                  li           a0, 0x0
                  sub          t0, s10, s10
                  nop
                  sub          s4, t3, t3
                  auipc        t0, 5328
                  lui          a0, 427353
                  lui          s10, 53729
                  add          a0, gp, t0
                  addi         a0, a5, -1830
                  addi         a6, sp, -272
                  auipc        gp, 877970
                  add          a0, s4, a6
                  lui          a0, 974511
                  auipc        sp, 168728
                  auipc        a6, 643086
                  add          s4, a6, a2
                  lui          a2, 521614 #end riscv_int_numeric_corner_stream_10
                  li           t6, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           a1, 0xffffffff
                  li           a5, 0xffffffff
                  li           s0, 0x0
                  li           tp, 0x7d7603e8
                  li           a6, 0x0
                  li           a3, 0xffffffff
                  li           a2, 0x0
                  li           t1, 0xd3ec637c
                  li           a4, 0xd2bd8b84
                  lui          a5, 527193
                  addi         t6, s0, -1551
                  addi         a4, s0, -934
                  auipc        tp, 47372
                  auipc        a5, 856671
                  lui          a1, 365143
                  lui          tp, 954539
                  auipc        a5, 667926
                  add          tp, s0, a4
                  lui          a5, 509771
                  addi         s0, t6, -1270
                  addi         t1, a4, -305
                  add          a6, a6, t1
                  auipc        tp, 515519
                  sub          a5, t6, a6
                  lui          a6, 432396
                  add          a3, a2, t1
                  add          tp, a4, t1
                  add          a4, t1, t1
                  auipc        a3, 317898
                  auipc        a6, 763200
                  auipc        t6, 784769
                  auipc        tp, 804443
                  addi         t6, a5, -57 #end riscv_int_numeric_corner_stream_4
                  add          s8, s5, sp
                  andi         s5, s0, -686
                  sub          a0, s7, zero
                  xori         t3, ra, -173
                  and          s11, s0, s6
                  auipc        t1, 292781
                  xori         s6, tp, -1059
                  srai         a5, a7, 19
                  slli         s11, a4, 14
                  andi         t5, a0, 1380
                  srai         s4, a2, 10
                  slt          ra, t4, s0
                  andi         zero, tp, 51
                  sltiu        a7, a0, -1961
                  add          a5, s6, s7
                  or           a6, t2, a7
                  lui          sp, 422877
                  sub          t4, ra, t1
                  and          t0, s2, t6
                  srli         s9, t0, 0
                  srai         s11, a0, 31
                  ori          a3, s9, 1035
                  slt          s4, a7, t2
                  sltu         a3, s8, s0
                  xor          s0, s10, s4
                  sltu         t1, ra, t1
                  srl          t0, t5, tp
                  auipc        a3, 679588
                  sub          t3, ra, s1
                  ori          tp, s8, 886
                  or           a7, s11, t6
                  sra          s3, s8, tp
                  sltu         s6, s4, t1
                  sll          s6, s0, t4
                  ori          t4, a5, -401
                  sll          s8, s1, s11
                  and          a4, a1, s6
                  sub          s8, s1, gp
                  or           a2, t2, s7
                  srli         t1, a5, 23
                  slli         a3, t2, 19
                  slt          t6, s4, s0
                  sra          t1, s8, s4
                  xor          t5, s11, s3
                  slt          s9, t6, s2
                  auipc        s0, 251359
                  ori          a7, t0, -264
                  nop
                  or           t3, zero, zero
                  lui          zero, 517489
                  srai         s3, a5, 4
                  sll          a4, a0, s4
                  add          s3, ra, t0
                  sra          t6, a1, t5
                  xori         t0, s0, 762
                  auipc        ra, 567621
                  andi         t0, s4, -851
                  lui          gp, 583344
                  li           tp, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           a6, 0x5d8f772f
                  li           t4, 0x80000000
                  li           a1, 0x64ad4f5f
                  li           s4, 0xffffffff
                  li           a3, 0x0
                  li           ra, 0xe9b1681
                  li           t1, 0x0
                  li           a0, 0x0
                  li           t0, 0x0
                  nop
                  auipc        s4, 1039787
                  sub          t1, a1, t1
                  addi         tp, tp, -2025
                  nop
                  addi         ra, a1, 734
                  addi         ra, t0, 1947
                  addi         t1, tp, 1653
                  add          ra, t0, a1
                  addi         a1, a3, -648
                  auipc        a1, 66815
                  nop
                  auipc        s4, 720165
                  nop
                  nop #end riscv_int_numeric_corner_stream_5
                  slt          t1, t0, s9
                  ori          t6, a4, -671
                  auipc        s3, 696351
                  lui          s1, 517054
                  addi         t6, tp, 2003
                  and          s1, s11, s2
                  lui          a2, 398643
                  addi         ra, ra, 1924
                  or           s9, s8, t4
                  sll          a2, ra, t0
                  and          a0, a6, t1
                  auipc        s11, 504458
                  addi         s9, s3, 950
                  sub          a5, sp, s3
                  andi         s6, s8, 824
                  slti         s4, s10, -388
                  nop
                  srli         t4, t6, 10
                  andi         t5, t0, 673
                  srl          a1, t6, t6
                  auipc        ra, 476736
                  and          s5, s9, s2
                  nop
                  sra          a4, a2, t2
                  sub          s0, s10, t0
                  slt          s0, s2, s4
                  and          s6, s7, a2
                  andi         a1, t3, -656
                  sltu         a2, s11, a7
                  auipc        s6, 515569
                  auipc        s3, 953920
                  sra          zero, t0, s1
                  slti         s3, t0, -80
                  andi         a2, a0, 879
                  or           a0, s3, s2
                  slti         zero, ra, -1236
                  sra          s0, a6, s9
                  lui          sp, 539548
                  and          ra, s6, zero
                  lui          s6, 358548
                  lui          s11, 509692
                  slli         t4, s3, 27
                  ori          a5, s9, -1087
                  and          s4, s8, s9
                  srai         sp, t5, 12
                  lui          t1, 622738
                  sltu         t4, t6, a6
                  sra          ra, s8, t1
                  slt          t1, a6, s11
                  addi         a4, s4, -1694
                  sll          a2, t1, a7
                  or           a6, s6, s1
                  slti         t3, s1, 1657
                  addi         zero, t1, -144
                  and          a4, ra, s9
                  auipc        t0, 746633
                  auipc        s10, 402856
                  srai         a3, t3, 29
                  sub          ra, tp, s9
                  sltu         gp, gp, sp
                  slt          t3, tp, ra
                  xori         tp, a3, -31
                  slti         s5, a5, 1905
                  sra          a0, s7, a2
                  xor          t1, s6, s4
                  srai         t1, s3, 27
                  add          zero, s3, a7
                  srli         t0, t6, 22
                  sub          t1, s11, zero
                  addi         s10, s7, -1646
                  nop
                  srai         s0, t5, 19
                  slt          s5, t3, s11
                  sll          s10, s7, s0
                  addi         a6, t3, -1060
                  sltiu        zero, t4, 1069
                  nop
                  ori          zero, a4, 1557
                  srli         a0, s4, 12
                  srli         a3, a7, 7
                  xori         ra, t2, -1967
                  auipc        a6, 75281
                  srai         t4, s9, 8
                  slt          s9, a3, s4
                  or           a6, s2, zero
                  auipc        s10, 1037110
                  nop
                  ori          s10, s8, -1450
                  or           a3, a2, t1
                  xori         a7, s8, 55
                  slt          s1, t4, t2
                  slli         t0, tp, 19
                  sub          tp, s10, t5
                  slti         tp, s7, 1002
                  and          t6, s5, a1
                  slli         a0, s0, 10
                  andi         a2, a6, -1147
                  add          s4, t3, gp
                  xor          s11, t4, a1
                  xor          t4, ra, s3
                  nop
                  or           t5, s4, a7
                  slli         t6, gp, 4
                  add          sp, t6, s9
                  auipc        s11, 576322
                  xor          a1, t0, t0
                  srl          a1, a6, s7
                  slti         s8, s10, -452
                  sra          t6, a0, gp
                  slt          a7, ra, a3
                  auipc        gp, 550143
                  sltiu        s4, s0, -723
                  lui          s9, 88127
                  nop
                  sra          t0, t4, s9
                  or           s1, s2, t3
                  slt          s0, ra, s6
                  nop
                  sll          a0, s0, tp
                  and          gp, s7, tp
                  or           a2, s9, s5
                  srai         s3, s4, 10
                  andi         t4, zero, -384
                  slli         t6, gp, 1
                  xori         a5, s2, -1626
                  xori         zero, t0, -1367
                  and          a6, a3, s9
                  auipc        a3, 546786
                  sll          s4, t6, s1
                  sltiu        gp, s10, 1256
                  nop
                  andi         s1, s9, -1411
                  add          s1, t1, a1
                  srai         t1, zero, 28
                  srli         s3, a5, 8
                  sltiu        s4, a7, -15
                  sll          a5, tp, t2
                  sll          a2, s11, t1
                  sra          gp, a4, a0
                  add          s11, s10, s11
                  srli         a5, s5, 29
                  sll          s10, s4, t5
                  add          t6, ra, a7
                  sub          s3, t0, s5
                  auipc        a2, 638559
                  add          a0, a4, s9
                  sra          t5, a3, a5
                  slti         gp, t0, -698
                  nop
                  slli         t5, s10, 24
                  slli         s4, s11, 31
                  srai         t3, s2, 21
                  srai         a1, a3, 25
                  sub          s10, s5, gp
                  slt          a2, a1, zero
                  sub          s9, sp, s0
                  or           t1, a0, s6
                  xor          sp, s10, sp
                  addi         s10, a1, 1082
                  slti         s5, s11, -1621
                  ori          s11, zero, -1518
                  or           a1, s1, s1
                  sll          a6, s8, a1
                  xori         a4, tp, 2002
                  slti         s0, s1, 2022
                  and          s5, zero, a2
                  or           a0, a5, s3
                  andi         s9, t1, 1583
                  addi         t5, s0, 1385
                  xor          s0, s0, a6
                  addi         t1, t1, 1138
                  nop
                  srl          a6, gp, s0
                  srli         t1, s9, 14
                  sra          s6, s10, s5
                  slli         tp, gp, 13
                  andi         s3, s2, -1277
                  sltiu        t1, a3, 594
                  and          s5, s6, t1
                  ori          t5, s1, 1068
                  sltu         ra, s2, s10
                  sra          a1, t5, s8
                  sltiu        a3, a3, 131
                  sra          zero, s8, a7
                  xor          a5, s3, t6
                  addi         t3, s3, 1080
                  sltu         t0, t0, a0
                  ori          s1, s4, 1951
                  sltiu        zero, s4, -1162
                  sltu         a7, s4, a6
                  xori         t3, s5, -633
                  ori          a6, t1, -1631
                  or           s8, t3, sp
                  sub          a7, zero, a5
                  and          a4, s11, s6
                  srli         a0, tp, 6
                  nop
                  slt          s11, t1, a7
                  xori         t3, s8, 1411
                  and          s6, s8, t2
                  slli         s8, a7, 22
                  sltiu        s10, t1, -1270
                  xori         s6, a2, 1148
                  addi         a2, s1, -847
                  nop
                  auipc        zero, 275729
                  srl          a7, t5, s8
                  sltiu        t5, s6, -1902
                  slti         s0, t1, 1536
                  slt          s9, t3, s7
                  xor          a1, a1, s1
                  auipc        t3, 854607
                  addi         s3, s3, -868
                  and          sp, t5, a1
                  nop
                  lui          s6, 489088
                  slti         ra, s8, 1221
                  and          a6, s2, s1
                  add          a2, a1, t2
                  nop
                  andi         a1, t6, -1392
                  slli         s1, s3, 7
                  nop
                  slli         s8, gp, 24
                  sub          s10, a4, sp
                  srl          s5, t1, s10
                  addi         s8, a6, -993
                  sltu         t1, ra, t3
                  and          t0, s1, s4
                  sltiu        s3, a5, 1635
                  and          s11, a5, a3
                  slli         s4, t0, 2
                  lui          s4, 995619
                  srl          ra, ra, zero
                  nop
                  sub          s9, t4, a3
                  slt          s9, s2, t3
                  addi         sp, s5, -1209
                  andi         ra, a0, 1696
                  andi         s6, a0, -911
                  or           t1, s10, t4
                  slli         a6, t3, 5
                  srli         a4, s0, 10
                  or           ra, s0, s7
                  nop
                  sub          t3, s3, t4
                  auipc        s0, 468186
                  and          a7, a6, s4
                  xori         t5, sp, -602
                  srai         t0, a5, 26
                  xor          t4, t6, tp
                  srai         s1, a7, 29
                  srai         a3, s4, 19
                  add          s8, s6, a3
                  srl          zero, a3, s11
                  sra          t6, s5, tp
                  lui          t4, 697838
                  ori          a1, s8, 1875
                  lui          s10, 252693
                  add          s10, a3, zero
                  slti         gp, a5, -435
                  nop
                  slti         a7, s0, 121
                  xori         t3, s7, -1656
                  slt          s8, t0, t6
                  slti         t4, tp, 730
                  ori          a5, tp, -556
                  andi         s11, s11, -1843
                  sra          t6, s10, s0
                  nop
                  andi         a5, s2, 1183
                  andi         s9, gp, -1087
                  sltu         s1, s8, s0
                  sltiu        t1, t2, -19
                  xori         t5, s3, 1490
                  sll          s1, t6, a5
                  ori          t5, s5, -10
                  ori          a5, s3, -843
                  add          tp, t2, gp
                  lui          a4, 946982
                  lui          ra, 554927
                  srai         a1, zero, 21
                  or           sp, a7, a3
                  sra          s4, a3, s4
                  andi         t0, t5, -612
                  slti         s10, sp, -636
                  add          s8, s0, t6
                  add          s9, s4, s5
                  xori         ra, a2, 727
                  andi         ra, a7, -1762
                  sltu         a1, a2, s2
                  and          gp, a2, t1
                  slt          tp, s11, s8
                  and          s6, s8, a1
                  sltu         t6, gp, a4
                  slti         s3, tp, -1799
                  sltiu        s10, t5, 714
                  xor          a7, t4, a4
                  xori         s1, a3, 1136
                  addi         s9, s10, -1505
                  sltiu        s6, t6, -120
                  auipc        ra, 912660
                  slli         t5, s10, 8
                  nop
                  sll          a1, s7, s6
                  sra          t1, a7, sp
                  sll          tp, t0, t3
                  srai         zero, t0, 18
                  and          a2, s3, s2
                  slti         sp, a1, 2026
                  nop
                  or           a6, sp, a2
                  and          s6, t6, t0
                  srai         a6, s2, 23
                  auipc        t0, 768016
                  ori          t1, s7, -1817
                  sra          a3, a6, t3
                  srl          t1, a0, a6
                  sltu         tp, t4, a3
                  srai         gp, zero, 19
                  slti         s6, s8, -1986
                  sub          gp, t3, a5
                  sll          s3, gp, t6
                  slti         gp, t6, -1160
                  srl          a7, ra, a2
                  andi         tp, s9, 1283
                  or           t6, a2, s7
                  sra          s8, t6, s6
                  srli         t5, s0, 23
                  srai         t4, s11, 15
                  sub          s1, s10, t6
                  ori          a5, a2, 1016
                  sub          t1, s10, ra
                  sub          s10, s7, ra
                  or           zero, s3, a4
                  slti         s9, s11, 1240
                  slt          sp, zero, sp
                  slt          a1, t1, zero
                  xori         s5, t4, -536
                  andi         t6, zero, 1498
                  srl          zero, t2, a2
                  and          s1, zero, sp
                  sltiu        s11, s9, -517
                  lui          tp, 711993
                  sub          s3, a4, s4
                  sll          a0, s11, gp
                  sltiu        a6, a4, 378
                  slti         s10, gp, -635
                  srli         a6, s5, 9
                  andi         a6, a0, -1638
                  sltu         s8, t4, s11
                  sltu         a4, s11, t0
                  ori          t6, gp, -866
                  srli         t6, a3, 3
                  lui          t3, 390848
                  andi         t4, s0, -895
                  sra          s1, a2, s7
                  addi         s9, t4, 782
                  xor          ra, a6, s10
                  sra          tp, tp, s3
                  nop
                  xori         s8, a7, 1967
                  slti         s0, s11, -1573
                  sll          s5, a4, a2
                  slti         a1, t2, -1189
                  or           s0, s10, t1
                  sltu         t1, a4, t2
                  slti         a1, s0, -1434
                  andi         s4, t2, -1698
                  sll          t1, t0, s4
                  slt          t0, s7, t6
                  srl          s6, t6, a3
                  addi         t4, a5, -988
                  sra          s10, a2, s2
                  sltu         s6, a3, a3
                  auipc        t0, 790116
                  add          a4, gp, ra
                  and          s11, s3, a4
                  srai         a2, t2, 5
                  sltu         s11, s10, a2
                  addi         s1, a1, 1056
                  andi         sp, s7, -270
                  slli         a4, s11, 25
                  sll          t1, s6, a4
                  addi         a1, tp, 1144
                  and          s9, a2, tp
                  sll          s0, t6, s2
                  addi         a2, t1, 1084
                  xori         a5, a3, 372
                  or           ra, a6, s1
                  slt          a6, s7, s1
                  slli         t0, s10, 4
                  slti         t4, t3, -533
                  nop
                  sub          a4, s1, a4
                  sltiu        sp, s7, -705
                  sltiu        sp, s4, 1647
                  nop
                  addi         s10, s4, -442
                  lui          a4, 532634
                  lui          a4, 262649
                  addi         a1, s1, 149
                  srli         s11, t2, 16
                  ori          s3, a4, 1778
                  slli         tp, s11, 24
                  xor          a5, t2, s5
                  slti         t6, t5, -600
                  or           s1, s5, s4
                  sub          zero, t3, a3
                  sra          s4, s0, s7
                  xor          s11, s9, a4
                  xor          a2, a0, tp
                  sra          a5, s10, ra
                  sra          t0, a5, tp
                  sltiu        s9, a6, 186
                  sll          s0, s5, t4
                  srai         gp, t0, 17
                  slli         t3, a1, 9
                  and          s6, sp, s4
                  sll          a2, s4, t2
                  xori         s3, s0, -1622
                  auipc        a2, 251259
                  addi         s11, sp, -184
                  slti         s0, tp, -1636
                  slt          t0, gp, sp
                  and          s4, tp, a2
                  sltiu        s0, a5, -17
                  nop
                  slti         t4, s5, 1852
                  srl          s9, ra, a4
                  xor          t3, zero, ra
                  sra          t4, a5, a1
                  sltiu        t0, zero, -1105
                  slt          s3, s5, a7
                  andi         a4, s0, 48
                  sra          s10, t1, t1
                  andi         s10, t1, 1339
                  ori          t4, t6, 1130
                  or           s1, s11, s1
                  slli         s5, s3, 24
                  xori         t3, t2, -1799
                  addi         a1, s8, -1876
                  xori         a6, t5, -1878
                  auipc        t5, 527214
                  xori         tp, ra, 342
                  sltiu        s4, a4, -2031
                  sll          t3, s3, s2
                  add          a2, t4, tp
                  auipc        t6, 440810
                  sltu         t1, s1, s10
                  srl          t3, a3, a3
                  lui          s9, 417931
                  sra          s10, t6, s5
                  slt          t3, t2, s8
                  andi         sp, s0, -806
                  addi         t5, a3, 414
                  srai         tp, a0, 5
                  add          s10, zero, s10
                  sll          s11, zero, s6
                  sltu         a2, s11, s2
                  sub          gp, sp, s9
                  srli         zero, a3, 15
                  slt          s11, s4, s11
                  or           a2, zero, s2
                  auipc        s9, 903819
                  srai         t5, gp, 13
                  ori          a1, s9, 1169
                  sltiu        s11, zero, -3
                  xor          a3, a1, s4
                  srai         a7, s9, 15
                  sltiu        s9, s5, -1306
                  sll          s3, ra, s5
                  slli         t3, sp, 15
                  sltu         a2, s8, a2
                  sltu         s8, zero, s3
                  add          a0, s4, a5
                  andi         t1, s5, -1317
                  addi         a1, s0, 485
                  sra          s11, tp, s0
                  srli         a3, tp, 12
                  add          a2, s8, zero
                  sll          s1, s5, a5
                  slli         t6, s3, 26
                  xori         tp, t3, -516
                  slti         a3, t3, 913
                  slli         sp, t5, 17
                  lui          s0, 309867
                  sub          s10, s7, t2
                  srli         ra, t2, 30
                  srai         t5, s10, 30
                  xor          t5, a6, a6
                  nop
                  sltiu        s8, t6, 956
                  xor          s4, a5, tp
                  auipc        ra, 699724
                  sll          a0, t2, a4
                  slt          t3, s8, tp
                  slti         t4, a5, -1954
                  add          ra, t1, zero
                  and          t6, s6, s1
                  ori          a7, zero, 336
                  xor          t0, t4, s2
                  sub          a3, sp, s2
                  addi         s1, a3, -1633
                  addi         t3, s11, -1495
                  sltu         s4, ra, zero
                  sra          t5, a4, gp
                  srl          t6, a4, a1
                  sra          a6, t3, t2
                  andi         s3, a7, 1102
                  add          sp, t6, t1
                  or           a4, a5, s3
                  srli         a4, s3, 25
                  nop
                  lui          s3, 424520
                  sub          s0, t6, a1
                  sra          s11, s11, s3
                  nop
                  srli         gp, sp, 4
                  nop
                  and          a4, t5, a1
                  slti         a1, s9, 1800
                  slti         t6, t1, -280
                  sub          a7, a6, a5
                  add          a0, s2, a3
                  ori          s6, s10, 1191
                  or           a7, sp, sp
                  sll          s0, a4, zero
                  add          a3, a1, t0
                  sltu         s8, t6, a2
                  sub          t6, gp, a5
                  or           a0, t0, s5
                  andi         a2, t1, -870
                  andi         a5, s6, 183
                  sra          a7, tp, t2
                  sltiu        a7, s0, 79
                  addi         t5, s4, -651
                  xori         s10, s6, -1726
                  sub          a4, a4, s4
                  sltiu        s10, s9, 695
                  ori          s1, s11, -545
                  nop
                  srl          t5, gp, s4
                  srli         s4, a5, 29
                  srli         a6, s1, 6
                  sra          t6, t2, a4
                  andi         sp, s8, -1243
                  srli         s11, s1, 20
                  xori         s9, s5, 950
                  sub          a2, t0, t0
                  xori         t4, t4, 312
                  slli         sp, t4, 3
                  sltiu        tp, a5, -1275
                  sra          a5, s9, s11
                  or           s3, tp, t2
                  ori          a3, ra, -485
                  srli         s3, gp, 5
                  srl          zero, a0, t1
                  sltiu        s1, s10, 2015
                  slli         s1, s10, 20
                  sub          s8, s9, gp
                  slt          t3, s9, a2
                  slli         s9, t5, 7
                  or           t1, a3, s9
                  slli         s4, ra, 22
                  slli         s1, s11, 29
                  ori          s9, t3, -1928
                  sltu         a2, s8, sp
                  sltiu        a2, s0, 2010
                  or           t5, t1, t2
                  add          s9, s10, a3
                  xori         s5, a2, -915
                  nop
                  andi         a4, t2, 295
                  sub          tp, s10, s10
                  lui          s9, 892906
                  add          a1, gp, s8
                  ori          t4, t3, -1102
                  sub          s3, a0, gp
                  andi         s5, s4, 894
                  xori         s4, s0, 1251
                  and          s5, a7, zero
                  srl          s5, ra, s10
                  srli         a7, sp, 3
                  sltu         t4, a6, a4
                  sltu         s3, gp, t4
                  sra          s3, s4, a3
                  sra          s9, zero, t2
                  sltiu        t4, s6, -1202
                  lui          t6, 62696
                  slt          s4, s11, zero
                  ori          a5, tp, -461
                  srli         a6, t3, 5
                  slt          a5, a5, a7
                  sltu         a7, s2, t0
                  ori          t1, a4, 566
                  srai         t5, t6, 17
                  add          a3, a4, t5
                  sub          t0, t0, s9
                  srai         a3, t2, 0
                  sub          s10, a5, t6
                  srl          ra, s1, s0
                  xor          s5, s4, s3
                  slti         a7, s10, -815
                  srl          a3, s7, s5
                  sltiu        a0, s10, 790
                  and          s6, t5, ra
                  lui          s8, 266350
                  slti         a3, t1, 1261
                  slt          s6, a1, ra
                  srai         t4, ra, 13
                  srli         s5, s10, 19
                  xor          s5, a3, s4
                  addi         a0, s3, 677
                  auipc        sp, 397524
                  nop
                  slti         t6, a1, 574
                  slli         t3, ra, 16
                  slti         zero, t4, -1091
                  srai         s6, a7, 21
                  sub          sp, t6, a6
                  xor          s8, t5, s0
                  slli         t5, zero, 18
                  sltu         zero, s7, t3
                  or           t3, ra, zero
                  addi         t4, a5, -274
                  andi         a4, s2, 159
                  srl          t4, s8, s8
                  and          s5, s10, gp
                  and          s5, t0, s9
                  add          s8, s2, a5
                  xori         t0, t2, -1961
                  sll          s5, s4, s9
                  srli         t0, t6, 21
                  sra          s0, t2, ra
                  sra          a1, a6, t3
                  ori          ra, t1, -807
                  slti         a6, t4, 1705
                  sra          s0, a2, s3
                  andi         a3, a6, -200
                  srli         sp, t0, 16
                  andi         s5, a5, 490
                  sll          gp, t2, zero
                  auipc        t1, 564533
                  andi         a5, s8, 276
                  sltiu        a0, a4, -445
                  sll          s6, s11, t3
                  sub          t4, t5, s10
                  ori          a6, tp, 1447
                  slli         t4, s4, 2
                  srli         s11, gp, 10
                  add          tp, s4, a1
                  addi         s10, s8, -67
                  ori          a0, t1, 2022
                  sltiu        s9, sp, 634
                  andi         a6, s8, 53
                  slli         s8, t1, 7
                  xori         t3, t0, 1511
                  srl          t0, s10, a4
                  srai         t4, a6, 20
                  auipc        t1, 410262
                  srl          a7, s3, s10
                  xor          t0, a4, a0
                  nop
                  addi         s1, t5, 774
                  sltu         a1, s1, a2
                  sltiu        a5, t2, -754
                  slt          a5, gp, s4
                  srl          t5, s5, a7
                  slti         t3, s11, -867
                  sub          s3, s5, s6
                  srl          t1, a4, ra
                  andi         a4, s10, 977
                  srai         a1, a1, 31
                  or           a2, s8, t2
                  add          gp, a3, s11
                  sub          tp, a7, ra
                  addi         s10, a6, -1533
                  or           s5, s6, tp
                  lui          ra, 166006
                  srli         s4, s2, 5
                  and          s8, zero, t2
                  srli         a6, s10, 30
                  sub          tp, t1, tp
                  slt          a4, s1, ra
                  xori         a2, sp, -1041
                  xori         s6, s10, 1296
                  ori          s1, a0, 143
                  ori          s9, s2, 438
                  slt          t1, a0, tp
                  xori         s1, s7, 101
                  andi         a0, t6, -1527
                  sll          a0, s4, s8
                  sll          gp, a2, s2
                  andi         t5, sp, -1505
                  andi         a7, t4, 1004
                  srai         s10, sp, 2
                  auipc        s9, 67342
                  lui          a6, 757267
                  srli         a4, a7, 23
                  sra          a5, sp, a1
                  xor          a6, ra, s9
                  sra          s10, s3, t1
                  slt          zero, t3, a0
                  sra          t0, s1, t4
                  sll          gp, a0, s1
                  slti         t6, s5, 609
                  nop
                  xor          s0, s11, a6
                  srai         t3, s6, 6
                  srl          t1, s1, s5
                  srai         s5, ra, 27
                  slti         gp, tp, 148
                  addi         s8, t6, -228
                  sll          t6, a2, s5
                  sltu         s4, a4, s5
                  ori          s1, t3, 1534
                  slt          s4, a2, t5
                  andi         s0, a3, 772
                  sltu         s0, s5, s0
                  li           a2, 0x9df4e623 #start riscv_int_numeric_corner_stream_2
                  li           a7, 0x0
                  li           a0, 0x80000000
                  li           s4, 0x0
                  li           a5, 0xe5bc5857
                  li           sp, 0x34708227
                  li           s5, 0xffffffff
                  li           a1, 0x4ce24761
                  li           s3, 0x26da4b32
                  li           tp, 0xffffffff
                  lui          sp, 612230
                  sub          s5, a7, a1
                  lui          sp, 78561
                  add          tp, tp, a5
                  nop
                  add          a7, a0, a1
                  add          a7, a5, a1
                  nop
                  add          a0, a2, tp
                  nop
                  auipc        sp, 311746
                  nop
                  add          s3, s3, a7
                  auipc        s3, 218391
                  add          a7, a7, tp
                  lui          sp, 743262
                  auipc        sp, 943529
                  lui          a5, 927638
                  nop
                  sub          a5, a1, a1
                  lui          s3, 183806
                  auipc        a7, 36141
                  addi         s4, sp, 1110
                  addi         a1, a5, -165 #end riscv_int_numeric_corner_stream_2
                  sltu         a2, a2, s0
                  xor          t0, ra, s11
                  xor          t6, a4, s11
                  sub          s6, s9, ra
                  slt          s5, s1, s3
                  nop
                  lui          zero, 13120
                  sltu         a5, s7, s3
                  ori          s8, t2, -705
                  srai         s6, s2, 3
                  lui          tp, 719787
                  and          ra, s8, tp
                  auipc        a3, 860564
                  add          t3, s6, ra
                  srli         t4, s5, 14
                  srai         a2, a3, 22
                  addi         t3, s2, -155
                  slt          a0, a4, s8
                  srai         t0, s1, 24
                  sra          s4, a4, s2
                  andi         t4, a0, 1575
                  andi         s3, s1, -1612
                  add          s5, t5, ra
                  srai         t1, s1, 31
                  xor          a1, t0, sp
                  add          tp, s9, s7
                  sub          t0, a5, a0
                  srai         a1, a5, 13
                  ori          s4, gp, 349
                  sltu         s6, a2, tp
                  nop
                  sltiu        a2, gp, 1980
                  ori          a4, a4, 628
                  srli         tp, t5, 31
                  slt          a2, a5, sp
                  srli         a6, t5, 9
                  lui          a2, 797351
                  slti         tp, t5, -1205
                  auipc        s0, 586685
                  xor          s5, a0, s5
                  ori          a0, a5, -1002
                  xori         sp, s8, 984
                  sub          t4, s5, s7
                  sltu         t5, a0, s1
                  sll          s11, ra, s4
                  and          s4, s0, a0
                  lui          s10, 548745
                  sltiu        s1, t5, -239
                  sltiu        tp, zero, 815
                  srli         zero, t1, 11
                  sll          a4, a1, sp
                  sub          s3, a7, s2
                  and          a4, t3, s4
                  srli         gp, s11, 21
                  lui          s4, 200125
                  nop
                  srli         s5, s9, 17
                  slti         s1, s0, 1832
                  sltu         s6, s2, s11
                  auipc        s8, 849654
                  slt          a0, a1, a6
                  andi         a2, t6, 1110
                  xori         tp, s4, -338
                  srai         a3, t3, 3
                  slli         a7, t6, 25
                  xor          zero, t5, t3
                  lui          s1, 122743
                  add          a2, s2, t4
                  slti         s4, gp, 1223
                  srai         a6, a7, 16
                  andi         t0, a4, -1805
                  auipc        gp, 300066
                  srai         t0, ra, 0
                  or           t4, a3, t4
                  or           a4, a4, a1
                  and          s8, t5, t1
                  nop
                  nop
                  add          s8, a3, a2
                  xori         zero, a0, 1487
                  ori          t3, gp, -435
                  srli         s5, gp, 16
                  andi         s0, a1, -1720
                  xori         t1, s1, -819
                  xor          a2, t0, s9
                  sltu         t6, zero, s3
                  addi         s3, a1, -710
                  sra          s5, s3, s1
                  srl          a3, s11, zero
                  xori         s9, ra, -1490
                  xori         t3, sp, 1999
                  slt          ra, s11, s7
                  srli         s6, s8, 23
                  nop
                  ori          t3, zero, -1792
                  sra          t1, s6, t5
                  sll          t0, sp, s7
                  sub          s0, tp, a2
                  sub          zero, s7, t6
                  andi         a4, t6, 1110
                  xori         a2, a3, 1390
                  srli         s11, s7, 26
                  srl          s9, t2, tp
                  sll          a1, a1, t2
                  srli         a0, s11, 18
                  srai         sp, t6, 21
                  addi         t3, s3, 513
                  or           s6, s11, t0
                  slt          sp, s11, sp
                  slti         a4, s7, 1028
                  slli         a2, s2, 14
                  sub          s10, a3, t3
                  xor          a2, a7, s1
                  xori         s6, a1, 112
                  sltiu        gp, s4, -1176
                  andi         a3, s8, -700
                  addi         s6, gp, 1952
                  lui          a6, 1030045
                  ori          a3, s11, -976
                  slli         s11, t4, 5
                  sltiu        s8, s0, 1751
                  xori         s9, a4, 1170
                  addi         t6, t4, 889
                  nop
                  lui          a7, 1006222
                  lui          s8, 238918
                  add          a4, t5, s7
                  slli         ra, zero, 26
                  nop
                  sub          sp, tp, t2
                  add          a5, s11, zero
                  slli         t5, s9, 15
                  sll          t5, t5, a0
                  slli         zero, tp, 3
                  xori         s9, s0, 133
                  sltiu        s10, ra, 1495
                  sltiu        t4, s6, 489
                  sltiu        a7, zero, -155
                  slti         a0, s2, -430
                  sub          a5, t0, tp
                  slli         a5, a1, 25
                  xori         a6, gp, 129
                  xori         t3, t0, -438
                  addi         t6, tp, -1189
                  srli         s5, s10, 29
                  or           a7, s4, s5
                  ori          s3, t1, 613
                  auipc        s9, 540333
                  addi         sp, s0, -670
                  slli         ra, a3, 17
                  xori         a6, tp, 466
                  andi         a4, a6, -815
                  sll          t0, t1, a6
                  sub          s1, a0, a7
                  sltu         s5, s9, zero
                  slti         s10, s10, 1297
                  srai         s6, s3, 2
                  xori         s3, sp, 1231
                  slt          ra, tp, s5
                  srai         t3, a5, 16
                  slli         t6, s1, 31
                  slt          s4, s3, s0
                  xor          t3, s6, s5
                  nop
                  sll          s10, a1, s5
                  andi         a4, s2, 1867
                  auipc        ra, 882638
                  ori          t3, s6, 1338
                  slti         s11, t5, -22
                  sltiu        s11, a0, 860
                  nop
                  sll          s5, t3, zero
                  auipc        s11, 1007662
                  sra          t6, t5, s0
                  addi         s11, a6, 467
                  slli         a5, gp, 8
                  slti         t4, a4, 934
                  or           a5, s9, s3
                  srli         t6, t1, 7
                  sltu         a5, ra, t6
                  srli         a3, s6, 12
                  add          zero, t3, t3
                  lui          s3, 777097
                  or           a2, sp, s10
                  or           a3, s3, s7
                  addi         s1, zero, 1832
                  ori          a4, sp, 1198
                  sll          a7, t6, s5
                  slt          s8, a7, s10
                  sub          ra, t0, s5
                  sltu         s5, t1, t3
                  slli         t4, tp, 9
                  lui          s6, 442571
                  slt          a5, t5, zero
                  xori         s6, a4, 1663
                  addi         t4, sp, -1304
                  xor          s8, s0, t1
                  or           s4, t1, t3
                  or           t3, s2, sp
                  srl          a1, t3, s6
                  andi         s5, t0, -1737
                  ori          t5, s9, 872
                  lui          t5, 173277
                  andi         s6, ra, 1446
                  ori          a4, a7, -834
                  add          a2, s7, s1
                  srai         t1, s9, 17
                  auipc        ra, 659057
                  andi         s0, s11, -1147
                  or           t4, a3, a2
                  srai         a7, s6, 10
                  slli         a4, sp, 18
                  add          t4, s3, t4
                  sll          t3, t3, s11
                  auipc        a5, 289313
                  srai         s8, t6, 1
                  slli         a4, s1, 10
                  sra          a4, sp, t4
                  and          s11, t3, a0
                  xor          tp, s7, t0
                  nop
                  nop
                  sra          t1, s5, s5
                  sll          gp, s9, s3
                  sltiu        ra, a1, 1563
                  srai         s3, s3, 27
                  andi         ra, s10, -1026
                  auipc        sp, 80820
                  xori         s4, s5, 860
                  ori          s1, s1, -2014
                  srli         t4, a3, 18
                  sltu         a5, a1, a3
                  sub          t6, s8, t0
                  sub          s0, gp, s11
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           s1, 0xffffffff
                  li           a1, 0x80000000
                  li           t3, 0xffffffff
                  li           t0, 0x80000000
                  li           s5, 0x80000000
                  li           s8, 0x0
                  li           s11, 0x5868c7a6
                  li           s0, 0x0
                  li           tp, 0x7d93cb5d
                  addi         t0, s1, -1222
                  addi         t3, a1, -227
                  auipc        s1, 185749
                  auipc        s8, 60487
                  add          s8, s5, s0
                  lui          s5, 358218
                  sub          t3, t0, s0
                  lui          s1, 991202
                  nop
                  sub          t0, s5, s0
                  addi         s11, s1, -598
                  auipc        s4, 479254
                  auipc        s8, 393679
                  nop
                  lui          s11, 26128
                  add          s4, s4, s1
                  auipc        s4, 1002747
                  sub          s11, t3, s1
                  auipc        t3, 4304
                  lui          t3, 242708
                  lui          s0, 363823
                  sub          s8, s5, s8
                  sub          tp, s4, a1
                  lui          s8, 59369
                  sub          tp, s1, s5
                  addi         s1, s4, -3
                  nop
                  nop
                  add          s5, s11, s4 #end riscv_int_numeric_corner_stream_14
                  nop
                  and          a0, t1, a5
                  sll          s5, a3, t2
                  sra          s0, sp, a3
                  sltiu        s9, s3, -1563
                  srl          t5, s4, s8
                  or           t4, s2, s11
                  ori          s8, s6, -1333
                  xor          s10, t6, a5
                  sra          t3, t6, tp
                  slt          a1, t6, t1
                  sltu         sp, s7, s8
                  xori         a1, s0, 26
                  srl          s6, sp, s8
                  sll          s1, s10, zero
                  sltu         s5, ra, s8
                  slti         t3, s8, 466
                  sll          s10, s8, a1
                  sra          t5, a5, a0
                  slli         a3, gp, 23
                  slti         a5, t6, 49
                  srl          zero, t6, t0
                  srl          t3, s7, s10
                  lui          t1, 333278
                  sll          s1, s5, s9
                  sll          t4, s7, a0
                  sltiu        gp, ra, -1953
                  srl          a5, s8, s6
                  srai         zero, s9, 17
                  slti         a6, t2, -1196
                  or           s11, sp, t4
                  add          t4, a0, s1
                  ori          a6, s11, 880
                  lui          a3, 601400
                  slli         tp, s11, 16
                  sltu         sp, a6, s11
                  xor          s3, s0, t1
                  sra          a5, a5, a5
                  andi         t1, s3, 1010
                  addi         t3, a1, -293
                  auipc        s10, 456850
                  ori          t1, s7, -1240
                  nop
                  slli         sp, s7, 10
                  add          s6, s11, a1
                  andi         s3, t6, 310
                  srl          gp, s10, t6
                  and          a7, zero, s7
                  sltu         s6, s3, gp
                  sra          ra, s10, s7
                  add          tp, sp, a2
                  and          tp, t5, gp
                  slti         t3, s5, 692
                  lui          t1, 955326
                  slli         t4, a7, 6
                  li           t0, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           s3, 0xffffffff
                  li           gp, 0x80000000
                  li           a5, 0xffffffff
                  li           s4, 0x80000000
                  li           s10, 0x0
                  li           s9, 0xffffffff
                  li           a3, 0xf76aa237
                  li           s0, 0xebcd75cc
                  li           s1, 0x0
                  nop
                  sub          gp, s1, s10
                  sub          s4, s0, s10
                  lui          a3, 491803
                  auipc        s9, 375096
                  lui          a5, 807808
                  lui          s0, 692272
                  auipc        a5, 203800
                  auipc        s10, 732783
                  add          t0, s0, gp
                  add          s3, a5, s10
                  add          s4, a3, s0
                  addi         gp, s0, -465
                  auipc        a3, 183247
                  addi         s1, s4, -1785
                  auipc        s10, 562732
                  addi         a3, s0, 825
                  add          s1, s3, s9
                  addi         s9, s1, 463
                  lui          gp, 930937
                  sub          s3, a3, a3
                  addi         t0, gp, 1146 #end riscv_int_numeric_corner_stream_16
                  slli         a7, s9, 26
                  sub          a2, t0, sp
                  sra          s10, s0, a3
                  lui          a0, 725452
                  lui          s8, 624027
                  andi         a1, a0, -710
                  slli         zero, a3, 9
                  srai         t5, s0, 25
                  nop
                  slli         a5, s0, 5
                  sltiu        s9, s5, 1016
                  slli         s6, s4, 21
                  slli         t5, s10, 0
                  slt          s9, s1, a7
                  sub          a4, a3, s10
                  addi         s4, s2, 2047
                  nop
                  auipc        s8, 534495
                  sltu         zero, s3, a0
                  srli         t6, t2, 2
                  auipc        s1, 991316
                  add          s3, t1, zero
                  sra          a6, t6, s0
                  slt          t6, gp, t4
                  nop
                  xor          t4, a5, t2
                  and          zero, a7, s0
                  sll          s5, s0, a5
                  sll          s3, s10, s4
                  srl          tp, s10, a3
                  sll          s5, a5, t0
                  xori         a0, tp, 1760
                  andi         t1, t6, 1875
                  sll          a7, t5, t0
                  srli         ra, tp, 25
                  slli         a2, s2, 19
                  srli         t6, s7, 4
                  or           a5, t6, s1
                  sll          a1, s8, s9
                  add          tp, a3, a7
                  andi         s10, a4, 409
                  srai         t6, a2, 29
                  xori         t6, s11, 1673
                  xor          ra, a5, tp
                  addi         a2, s8, -664
                  xori         t0, s1, -1064
                  andi         tp, s8, 732
                  sltiu        t0, s8, -2009
                  srai         s0, t4, 30
                  or           a7, s2, s10
                  sra          s3, s1, gp
                  or           gp, gp, a4
                  srai         t3, s2, 29
                  xori         s9, s9, -1629
                  sub          s4, zero, a2
                  srl          a0, ra, t3
                  xor          gp, t3, a7
                  auipc        s6, 373976
                  or           s1, zero, gp
                  sub          a3, s7, s2
                  xori         t5, a2, -1855
                  sll          t4, a1, s8
                  srli         zero, s11, 3
                  slti         s11, s11, -247
                  sll          t4, tp, s10
                  auipc        s10, 369216
                  ori          t4, a2, -1522
                  lui          tp, 414054
                  srli         s3, t3, 22
                  sra          a6, t4, s0
                  srai         t0, s10, 30
                  and          tp, a4, gp
                  ori          sp, s5, -103
                  addi         s1, t1, -1763
                  xor          tp, s10, zero
                  srai         a3, a1, 25
                  sll          t0, s5, s3
                  sltiu        s1, s11, -1338
                  add          s6, t4, t0
                  sra          zero, t4, a3
                  slli         a4, tp, 11
                  addi         s5, a6, -332
                  ori          zero, a1, -1444
                  add          t1, s7, s3
                  lui          gp, 263310
                  add          s1, s6, s5
                  sub          a1, gp, t1
                  xor          t0, a3, zero
                  sltiu        t6, a0, -1724
                  auipc        ra, 466438
                  sltu         s11, s8, s0
                  slli         sp, s5, 8
                  sll          s1, ra, s8
                  srai         s11, zero, 19
                  sltiu        s3, tp, 1463
                  and          a2, s11, t4
                  nop
                  srl          s0, a6, s10
                  xor          s4, s5, gp
                  sltu         t6, a5, s7
                  ori          a6, zero, 1996
                  sltu         t0, a1, t5
                  andi         a4, s7, 41
                  add          gp, t1, t6
                  sra          s6, s6, t5
                  sll          s10, tp, sp
                  ori          gp, t1, -259
                  sltiu        a4, a5, 163
                  srli         a2, gp, 11
                  sll          s11, a0, t6
                  nop
                  xori         s5, t4, -1931
                  or           s8, s2, a5
                  slti         s5, s11, 971
                  slt          s10, tp, ra
                  add          t1, t0, t0
                  slli         a0, s7, 16
                  addi         a4, s0, 2021
                  or           a5, s10, s11
                  or           gp, t1, a7
                  srai         zero, s10, 8
                  addi         a3, s5, 1943
                  srl          t6, s3, t3
                  sltu         a6, s8, s3
                  sltu         a6, s8, zero
                  addi         a4, a3, -1221
                  and          a1, gp, t3
                  sltiu        s8, a6, 502
                  srli         t1, t0, 8
                  add          a0, t4, s10
                  and          sp, s11, a7
                  or           a6, a4, t6
                  lui          zero, 1028503
                  sltiu        t5, a1, -545
                  sltiu        t0, s0, -1805
                  sll          a0, s4, tp
                  nop
                  addi         a5, a1, 425
                  add          a2, t0, s4
                  sub          a5, a3, sp
                  addi         s3, s7, 1652
                  srli         t5, s7, 1
                  addi         t3, s8, 258
                  slti         zero, s2, -1053
                  sltu         t6, gp, s3
                  slli         ra, t6, 6
                  srli         t1, s3, 23
                  slti         tp, s8, 1310
                  sll          a7, a2, s11
                  and          s5, t4, sp
                  xori         s3, t5, -33
                  ori          t3, a3, 293
                  slli         a7, zero, 17
                  srli         a5, t0, 29
                  andi         s3, s10, -847
                  srl          t4, a7, tp
                  sltiu        zero, sp, 1526
                  srai         t5, s9, 25
                  andi         t6, s4, 239
                  srl          s9, s0, s6
                  srl          a5, a7, a3
                  sltu         zero, s8, s7
                  sltiu        a4, s10, -1041
                  nop
                  sub          s9, a3, a0
                  srai         t1, t0, 29
                  sub          sp, s11, a5
                  lui          s4, 490926
                  slli         t5, t4, 16
                  sltiu        a1, t5, -1687
                  or           s10, a2, a4
                  auipc        a7, 358065
                  add          s1, s0, s6
                  auipc        s9, 1018766
                  sub          s0, s11, a1
                  srl          a0, t3, a2
                  auipc        a6, 209728
                  sll          ra, a7, sp
                  or           t0, s11, a3
                  srai         s0, a0, 0
                  sra          s9, sp, sp
                  slti         s0, t1, -1907
                  ori          s3, s6, -1391
                  srli         a0, ra, 7
                  ori          s0, sp, -102
                  nop
                  slli         t4, t5, 9
                  xor          t5, a0, a5
                  sra          s6, a7, a1
                  slli         s8, s2, 9
                  xor          s3, s6, t6
                  andi         a2, a2, 246
                  sltiu        gp, gp, -560
                  nop
                  auipc        a4, 1020083
                  andi         t5, t3, -1866
                  slti         t6, t2, 25
                  srai         t6, a3, 29
                  ori          s10, t2, 231
                  addi         s4, s10, -1251
                  srli         s1, a0, 2
                  sltiu        a4, s4, -1676
                  auipc        a3, 18609
                  xori         s9, s10, -959
                  auipc        zero, 399882
                  sra          t6, a6, t6
                  slt          gp, s4, t6
                  nop
                  andi         a4, tp, -351
                  slli         a2, s8, 18
                  sll          s4, s1, a3
                  sltiu        s4, tp, 290
                  srl          t0, s1, t2
                  srli         s4, a7, 25
                  sub          s11, a3, s8
                  xori         a3, tp, -1438
                  sub          t1, t2, t3
                  and          s0, a5, t3
                  srli         a0, s4, 16
                  xor          t1, ra, a2
                  slli         s10, zero, 11
                  sub          s11, s1, t4
                  srai         s5, t1, 12
                  sll          a0, t6, s3
                  srai         s0, s11, 26
                  xor          t4, s9, s7
                  nop
                  srli         a5, a2, 14
                  nop
                  xor          a3, a7, s8
                  ori          s10, a3, 128
                  or           a2, t6, a1
                  sll          a6, s9, a7
                  addi         t1, t4, -1592
                  xori         a4, s5, -943
                  ori          s8, a6, 791
                  srli         t4, s7, 14
                  sltiu        zero, s1, 943
                  slli         a2, t5, 18
                  lui          a0, 201481
                  lui          t4, 242012
                  xori         t4, t0, -1733
                  lui          s1, 616251
                  or           s5, tp, s8
                  and          s4, s11, t4
                  sltu         s3, s4, s3
                  add          s9, a5, s2
                  slt          t4, sp, s1
                  slti         t0, s5, 1749
                  sltu         t1, t0, sp
                  xori         s9, a2, 571
                  xori         sp, t3, -705
                  add          t4, s1, s2
                  auipc        t4, 163220
                  lui          s11, 757466
                  add          zero, a0, t1
                  auipc        s11, 429467
                  srli         s0, t2, 25
                  andi         a5, sp, -123
                  and          gp, s5, s10
                  sltu         s1, s9, sp
                  sra          t1, s11, t5
                  xori         s9, s2, 785
                  slti         t0, tp, 33
                  auipc        s11, 77631
                  slti         s0, s8, 991
                  nop
                  and          a0, s2, a3
                  srai         s4, t1, 11
                  srli         ra, s8, 30
                  auipc        a1, 306951
                  addi         a3, gp, 1500
                  srli         a1, t2, 17
                  srl          s8, s3, t4
                  slt          s8, a0, a1
                  slti         sp, s9, 1548
                  xor          a5, s2, s0
                  srai         a2, s5, 2
                  andi         s8, s11, -19
                  add          a3, ra, s0
                  and          s5, s8, s1
                  xori         s1, t5, -86
                  sltiu        s0, a7, -1308
                  and          a3, s4, s4
                  srai         t5, s5, 8
                  ori          tp, s10, 938
                  auipc        t4, 217645
                  srl          t3, gp, a2
                  or           sp, s10, a6
                  add          t5, s7, s8
                  xor          a3, s5, t2
                  lui          a4, 982261
                  add          a4, s1, a4
                  sltiu        t0, t2, 398
                  andi         t6, t1, 228
                  andi         t3, t0, -1838
                  srai         s10, a7, 30
                  sll          a1, s7, a1
                  nop
                  auipc        a1, 287701
                  andi         s6, a6, -992
                  sub          s1, s2, a4
                  sub          t3, a1, a4
                  sll          s3, zero, t5
                  ori          a3, s11, 180
                  lui          s8, 224576
                  lui          t6, 184619
                  lui          ra, 280820
                  slti         a7, t3, 897
                  sub          s5, tp, a5
                  slli         s0, s4, 9
                  auipc        a4, 626374
                  sll          s1, sp, a4
                  sra          s3, s1, s7
                  slti         a7, a1, -47
                  nop
                  ori          a5, t2, -1374
                  addi         t3, t6, -1473
                  and          s0, s5, s2
                  xor          a5, s4, s11
                  sltu         t1, s2, s3
                  nop
                  srli         t4, a5, 31
                  slti         s4, a0, -847
                  srl          s4, a2, a5
                  srl          ra, s9, s4
                  lui          s10, 774872
                  and          t3, a0, zero
                  lui          s11, 65865
                  sltu         s1, s7, tp
                  add          a2, s8, s8
                  addi         tp, a6, 1305
                  nop
                  slt          a6, s7, a5
                  xori         a2, t1, 1798
                  and          a6, a3, s11
                  sra          t5, s9, a6
                  sltiu        t3, a5, 1909
                  sltiu        a6, sp, -671
                  addi         t5, t1, -161
                  sub          t3, a6, zero
                  sll          a1, a5, s5
                  srai         s8, s1, 0
                  or           t0, t3, s2
                  add          t1, s3, a6
                  sll          a2, a0, t6
                  ori          s8, s1, -1822
                  sltiu        a3, t0, -510
                  srai         t0, t2, 29
                  srl          s11, sp, a7
                  lui          zero, 437977
                  add          s8, gp, a5
                  slli         s1, s11, 4
                  andi         tp, t3, 1510
                  addi         gp, tp, -150
                  sra          t6, s7, t5
                  slt          t3, s7, zero
                  xori         s5, s8, 843
                  nop
                  xori         t4, a4, 491
                  and          t3, t1, s4
                  sltu         zero, s9, a3
                  ori          s3, a1, 1926
                  addi         s8, a5, -876
                  slli         s3, t1, 25
                  addi         a3, a7, -1731
                  or           a4, sp, s1
                  sub          s6, t0, t2
                  add          ra, a1, s0
                  auipc        s10, 858028
                  ori          a6, ra, 327
                  srli         s10, a0, 1
                  sltiu        s4, zero, 1175
                  lui          t0, 23131
                  sra          a2, t5, a3
                  andi         a3, t2, -1165
                  lui          sp, 859889
                  sltiu        a4, tp, 214
                  srl          t3, a3, gp
                  slli         a7, t6, 19
                  or           a2, sp, t6
                  ori          t4, s1, 1263
                  andi         s1, ra, -179
                  xor          s8, t0, s11
                  sltiu        s3, s4, -1837
                  slti         t4, a3, -1821
                  lui          t4, 338242
                  sll          t3, s11, s6
                  sll          s3, s5, t1
                  sltiu        ra, s6, 1446
                  lui          t1, 74522
                  sub          s11, ra, t3
                  ori          a5, t0, -736
                  sll          a6, t0, a3
                  sll          s4, a1, gp
                  and          a2, t2, a5
                  sltiu        zero, a5, 345
                  andi         s3, t0, -1324
                  sltiu        s5, zero, -987
                  add          tp, t1, a6
                  ori          s3, t6, 1099
                  auipc        ra, 287025
                  andi         gp, a6, 924
                  and          s0, a5, a6
                  sltu         s11, ra, s8
                  sltu         s1, a6, s0
                  and          a3, a0, t1
                  auipc        t5, 473846
                  xori         s1, a0, -1361
                  ori          s9, a7, 999
                  auipc        t3, 703051
                  sub          s0, sp, a0
                  auipc        s11, 526575
                  sub          s8, s10, zero
                  add          sp, a2, s7
                  sltu         s3, gp, s0
                  xori         a0, s6, 341
                  sltu         t5, s0, s2
                  slli         s4, s11, 26
                  srli         sp, s8, 28
                  srl          s10, s7, t3
                  srli         t0, s4, 16
                  lui          a4, 334928
                  addi         t4, t6, 966
                  srai         t5, s7, 18
                  addi         a2, s6, -54
                  xori         a6, a2, 1643
                  srli         ra, ra, 3
                  nop
                  add          s10, a1, t0
                  ori          tp, zero, -914
                  sll          sp, a6, sp
                  nop
                  slt          tp, t6, a5
                  sra          t3, s1, sp
                  xori         a2, t4, -1570
                  addi         a7, s6, -578
                  sltiu        a5, a0, -1442
                  slt          t4, s7, s11
                  auipc        s8, 388515
                  slti         tp, t6, -800
                  sub          s5, sp, t0
                  sltiu        a5, t4, 1940
                  sltiu        a7, a6, -262
                  sra          s5, s2, a3
                  sltu         a1, a1, s2
                  slti         s4, sp, -541
                  and          sp, s8, a1
                  ori          t5, t6, -1624
                  addi         s10, a4, -1844
                  srl          ra, t1, a4
                  auipc        a3, 80195
                  nop
                  sra          t4, t0, s2
                  lui          a0, 275686
                  sra          s1, zero, t3
                  slti         tp, a7, -1119
                  ori          s4, t3, 39
                  ori          zero, t6, 678
                  andi         s4, a6, -1044
                  add          t1, zero, s5
                  and          tp, t3, a5
                  slli         tp, t5, 6
                  sll          t5, t5, s5
                  auipc        ra, 874410
                  addi         a1, s3, -1788
                  sltiu        ra, s8, -368
                  slli         a4, t0, 11
                  srli         s6, gp, 14
                  sltu         a4, s8, a6
                  srl          s10, s3, s6
                  add          tp, a3, s6
                  slti         t1, s5, -354
                  andi         s9, gp, 659
                  or           t6, s3, s4
                  lui          t0, 363098
                  ori          gp, s9, -1172
                  ori          t4, s3, -1180
                  sra          t3, s11, gp
                  ori          s3, s4, 22
                  sltiu        tp, s3, 714
                  srai         a4, s3, 22
                  sll          sp, t3, s11
                  xori         t1, a6, 605
                  slt          s4, a3, s2
                  srli         s10, a2, 21
                  srl          t0, ra, a0
                  addi         a2, zero, -1709
                  sra          t3, t3, a4
                  slti         ra, a3, 158
                  xor          t6, a2, s11
                  lui          a1, 524726
                  sra          gp, tp, s7
                  sub          tp, t2, zero
                  sra          s4, t2, tp
                  auipc        a1, 906913
                  add          a0, a4, tp
                  xor          ra, s8, a5
                  sltiu        a3, s9, 1593
                  ori          sp, a4, 1741
                  slti         t3, s3, -358
                  add          gp, t2, a3
                  sub          s11, a5, a7
                  ori          tp, tp, 789
                  auipc        t5, 103829
                  sub          t5, tp, t1
                  slti         s5, a5, -670
                  add          s6, a5, a0
                  and          t4, t5, s6
                  xor          s8, s8, ra
                  slli         t6, t6, 11
                  srai         a3, s5, 11
                  sub          s4, t4, s4
                  add          a6, t3, a0
                  auipc        gp, 798163
                  srl          a0, s0, a3
                  slti         t0, t2, -1590
                  addi         a6, s10, -12
                  srli         a3, s2, 0
                  lui          ra, 522416
                  addi         s3, s1, 363
                  sltu         t1, s4, zero
                  auipc        tp, 172776
                  slt          s8, s8, s6
                  add          s6, gp, a6
                  slli         t5, t6, 0
                  add          t1, t4, t3
                  xor          a0, a3, s2
                  addi         t0, s11, 78
                  lui          s4, 1012081
                  srli         s4, s7, 26
                  slli         a0, s4, 23
                  addi         t4, t5, -248
                  sltu         a7, t1, t1
                  addi         tp, t4, -204
                  andi         a3, s9, -694
                  addi         sp, t2, 98
                  sra          ra, s7, sp
                  andi         a4, a1, -809
                  add          a5, s6, a3
                  sltiu        t0, s5, -198
                  slli         ra, tp, 31
                  sra          ra, s11, a7
                  sltu         t3, s6, s7
                  srai         s5, a0, 28
                  addi         t1, a4, -1602
                  xor          s11, t3, s6
                  slti         s0, a0, 2000
                  slti         s3, s1, 489
                  andi         s8, t5, 1137
                  slti         s3, t0, 1329
                  auipc        s3, 860417
                  sll          zero, s6, s10
                  addi         sp, a3, -1479
                  sub          s6, s6, s2
                  andi         ra, a1, 573
                  nop
                  ori          s3, t5, 1047
                  nop
                  srai         s4, a4, 10
                  lui          t4, 374507
                  srl          gp, t2, a4
                  sltiu        s5, s5, 1823
                  addi         sp, a5, 554
                  srai         a3, t6, 26
                  nop
                  xori         a6, a3, -1420
                  sub          a2, s5, s3
                  sll          zero, a2, gp
                  srl          s6, t3, ra
                  or           tp, ra, t6
                  addi         t6, tp, -861
                  xori         s6, gp, 1662
                  auipc        t1, 85232
                  slt          zero, sp, tp
                  sra          ra, t2, a0
                  sltu         zero, tp, s4
                  auipc        t6, 873001
                  xori         sp, s2, -1382
                  slli         a4, ra, 25
                  srl          tp, a5, s5
                  sub          s5, t1, s8
                  sub          s9, ra, s3
                  sltu         a3, s7, s10
                  srai         zero, t1, 31
                  xori         s1, a5, -868
                  slli         zero, sp, 3
                  sra          ra, a0, ra
                  sra          gp, a0, s1
                  sra          gp, s9, ra
                  sra          s3, s7, a3
                  or           a3, s2, s6
                  sub          s9, s0, ra
                  and          s3, s4, s4
                  addi         t5, s7, 1893
                  srai         a2, a5, 13
                  auipc        s11, 683698
                  lui          s3, 184683
                  sltiu        a2, t0, -1844
                  sra          a2, s2, a0
                  or           s5, t3, t4
                  sll          a7, t2, t3
                  sll          ra, s10, s7
                  auipc        tp, 927063
                  addi         s11, t0, 659
                  sll          t5, t5, t1
                  slt          gp, s10, gp
                  sll          a4, s11, t5
                  sra          s11, s11, ra
                  auipc        ra, 484001
                  sra          s4, a3, tp
                  sltu         a3, t1, t4
                  and          a5, gp, a7
                  add          t4, gp, t5
                  srli         ra, s10, 4
                  or           s5, a0, a7
                  auipc        a1, 266110
                  srl          a4, a3, a4
                  sll          a2, t1, sp
                  sltu         a7, zero, t5
                  srai         ra, gp, 27
                  add          s4, s5, s11
                  lui          t6, 427970
                  ori          a0, s6, -1139
                  slt          s5, s10, s7
                  addi         s5, s10, 958
                  lui          s1, 1046678
                  nop
                  or           zero, sp, s1
                  sltu         ra, sp, s6
                  sll          s8, t1, a2
                  or           t0, s8, a6
                  slt          a4, s7, a4
                  srl          zero, gp, tp
                  xori         ra, t2, 1630
                  slti         s3, s10, 1351
                  sltiu        t0, s11, -1581
                  nop
                  slli         s11, a6, 26
                  auipc        s3, 47562
                  srli         t5, a2, 21
                  xor          s10, s10, s1
                  add          s10, s5, gp
                  srli         t0, a7, 31
                  or           a1, a7, sp
                  slli         s3, s7, 14
                  slli         s0, t6, 6
                  add          t6, zero, s6
                  srli         s6, s0, 28
                  srai         s5, t2, 18
                  slti         a6, s10, -76
                  sll          a4, sp, s8
                  addi         s9, a5, 713
                  sll          t0, s1, ra
                  auipc        a4, 117600
                  srl          t5, s10, tp
                  xori         s10, s10, 1753
                  andi         s10, zero, 1728
                  sub          s6, t4, a3
                  slti         ra, s0, -844
                  lui          zero, 182843
                  xor          t5, a4, s11
                  ori          s4, t4, 395
                  xor          a2, ra, s0
                  xor          t5, s2, a4
                  slt          a5, s0, s10
                  sll          a0, ra, s6
                  sll          s6, s0, a0
                  xor          gp, s6, s3
                  srl          s6, a1, a0
                  lui          a5, 539531
                  slti         s10, s1, 1817
                  ori          s0, a6, 1213
                  sltiu        s8, sp, -1867
                  srli         t0, a7, 1
                  slli         a7, sp, 29
                  sra          s6, s7, s0
                  sltiu        a0, s6, 1462
                  sub          a2, a0, s3
                  slt          s11, s9, s7
                  nop
                  sra          zero, s3, t2
                  sltiu        s6, a5, 695
                  or           t3, tp, s4
                  xori         s11, gp, -1939
                  ori          tp, a7, 210
                  andi         a7, a3, 267
                  sub          zero, s2, a1
                  slti         s3, sp, 796
                  xor          s11, a0, s0
                  and          a7, s6, s8
                  xori         a1, s1, 1207
                  auipc        t4, 274128
                  xori         ra, t2, -1322
                  lui          sp, 383658
                  addi         s3, t4, -1222
                  sll          s9, a7, a2
                  andi         s3, a1, -1118
                  andi         zero, t5, -1928
                  slli         s4, a2, 17
                  sltu         t6, a3, s7
                  slti         s8, ra, -1845
                  srl          s4, gp, a5
                  slt          t5, t0, s9
                  xori         s10, gp, 446
                  srl          s1, t2, a7
                  li           t5, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           a6, 0xffffffff
                  li           a2, 0x80000000
                  li           s0, 0x0
                  li           t6, 0x540e6190
                  li           a0, 0x96989300
                  li           s1, 0xffffffff
                  li           t0, 0x910fe953
                  li           s6, 0x80000000
                  li           a4, 0xffffffff
                  auipc        s6, 151144
                  nop
                  lui          t6, 1016886
                  sub          t0, a0, t6
                  add          a0, a6, s1
                  add          s6, a0, s1
                  add          s6, a6, t5
                  auipc        s0, 591149
                  sub          t6, s6, t6
                  lui          a4, 549815
                  sub          t0, s6, a6
                  addi         t6, t5, -1450
                  nop
                  sub          t5, a6, s1
                  addi         a6, t5, -1329
                  nop
                  sub          a0, a6, a2
                  auipc        t6, 557459
                  lui          t6, 537855
                  nop
                  add          a0, a0, a2
                  addi         t5, t0, -1426
                  sub          a6, a2, t5
                  sub          a0, s1, s6
                  add          a4, t0, t6
                  auipc        s1, 729274 #end riscv_int_numeric_corner_stream_0
                  auipc        t3, 727241
                  nop
                  srai         s1, s6, 24
                  srli         tp, tp, 8
                  xori         gp, s10, 2029
                  ori          zero, tp, -1834
                  lui          t3, 784546
                  auipc        ra, 835504
                  xor          s3, a4, t5
                  andi         tp, t4, 1751
                  lui          t6, 907728
                  sll          tp, a3, s1
                  sra          ra, a3, a5
                  addi         s4, s9, 495
                  sra          a6, s4, a6
                  addi         zero, tp, 268
                  slli         s5, s11, 12
                  sra          a0, s6, s0
                  srli         t1, a0, 7
                  nop
                  andi         t5, s4, 1055
                  andi         t1, t0, 626
                  sll          s1, t1, s10
                  auipc        a1, 10900
                  sub          s4, s3, s11
                  nop
                  sltu         t1, s5, gp
                  addi         t5, t0, 844
                  or           tp, ra, s11
                  xor          gp, s1, s2
                  or           t3, s1, s0
                  sll          gp, s4, s7
                  auipc        a4, 364753
                  ori          s9, t6, 285
                  nop
                  sltu         t5, s9, tp
                  lui          s9, 823063
                  slt          t1, s0, zero
                  srli         gp, t0, 20
                  andi         t1, s3, 1016
                  sub          ra, t4, s9
                  and          a2, s9, s0
                  add          s9, t4, a2
                  lui          sp, 489282
                  lui          s4, 363663
                  and          zero, s5, t6
                  and          sp, t2, sp
                  sll          s8, s8, s4
                  or           s5, s9, s4
                  sub          tp, a5, a0
                  slli         s8, a4, 0
                  slli         a3, a0, 2
                  add          t1, a5, t0
                  lui          a2, 474603
                  xor          zero, t4, tp
                  slli         s11, t3, 10
                  sll          s3, s4, t4
                  xor          a0, s3, s3
                  srl          t3, ra, s7
                  xori         a2, a2, 19
                  andi         sp, t3, -1033
                  lui          tp, 486417
                  add          t4, s5, tp
                  add          s5, t3, s5
                  srl          a5, s4, a2
                  slti         a7, zero, 525
                  srli         a0, t5, 2
                  auipc        a4, 583588
                  slt          a5, s8, a1
                  sltiu        a7, s0, 971
                  slli         a5, a1, 29
                  srai         s4, t1, 3
                  slt          t5, s7, s1
                  xori         ra, t4, 164
                  slli         a1, s11, 1
                  sltiu        s4, tp, -1709
                  srli         s0, t3, 9
                  sltiu        a1, s4, 1737
                  add          s6, a4, s7
                  xor          s8, s8, a2
                  nop
                  xor          sp, a6, s0
                  xor          s4, s8, gp
                  sltu         a2, a7, a1
                  srl          t6, s1, s8
                  srl          zero, s7, s1
                  and          s6, gp, s3
                  addi         s10, s3, 976
                  sltu         a7, ra, t6
                  ori          a0, zero, 403
                  sltu         t1, s3, a0
                  srai         s1, gp, 21
                  nop
                  srl          s0, a5, a3
                  sra          a0, a6, s10
                  sll          t0, a7, s5
                  lui          t6, 692604
                  add          a6, tp, t6
                  addi         t6, s11, 1922
                  srl          t3, zero, sp
                  or           zero, s0, a6
                  auipc        s4, 919262
                  sra          s1, s0, tp
                  xori         gp, t1, 1367
                  auipc        s0, 229215
                  srai         s10, ra, 14
                  sra          t0, a1, a2
                  xor          a1, s4, t3
                  and          t6, s10, s1
                  sltu         a5, s6, t2
                  xori         s11, s9, -98
                  srli         a6, t1, 11
                  sltiu        a0, a0, 928
                  lui          t1, 1016963
                  and          a0, t4, sp
                  addi         t6, ra, -1732
                  add          s8, s8, s6
                  or           s6, t3, t3
                  xor          t3, gp, a7
                  sra          s11, a4, a0
                  sltu         t6, s0, ra
                  sltiu        a0, s4, 579
                  sub          t4, t5, s8
                  add          s0, a3, t4
                  srl          a1, s11, a0
                  srli         a1, t5, 24
                  sub          t3, s2, t0
                  auipc        s8, 453121
                  and          a7, t6, ra
                  srai         t0, t3, 26
                  and          a2, s0, t0
                  and          gp, ra, a0
                  slti         t3, s11, 868
                  sltu         s0, s2, t6
                  andi         tp, t4, -2030
                  srai         t6, a2, 0
                  ori          a1, s11, 1207
                  nop
                  lui          sp, 224621
                  ori          a3, gp, 991
                  xori         ra, a6, 1067
                  auipc        a1, 660177
                  xor          t6, s4, s3
                  and          ra, t6, s5
                  nop
                  xori         s0, a4, 43
                  sra          s3, sp, a0
                  lui          tp, 851890
                  slt          a5, tp, a4
                  add          s4, t6, a6
                  auipc        s1, 291651
                  or           ra, t3, s5
                  lui          t5, 142251
                  srl          t3, t2, gp
                  sltiu        s6, sp, -1148
                  ori          tp, s11, 839
                  slti         s0, s6, 1389
                  addi         a0, s1, 1143
                  addi         a2, s1, 839
                  auipc        s6, 958618
                  sltiu        t0, s3, 151
                  slt          s1, s7, gp
                  slti         sp, s3, 1679
                  lui          a6, 599900
                  slli         t6, s6, 13
                  add          ra, t0, t0
                  andi         t4, t3, -621
                  sub          t3, t2, s7
                  srl          a3, s8, s2
                  and          s9, a3, t2
                  slli         sp, a3, 14
                  nop
                  or           zero, tp, zero
                  sltu         gp, a5, s8
                  sra          tp, t2, a0
                  sltiu        a3, a4, -171
                  xor          a5, a0, gp
                  xor          a5, s6, t0
                  slt          t1, t2, s7
                  or           s6, gp, s8
                  sltu         t3, s3, t0
                  xor          s0, a1, gp
                  andi         a3, tp, -1912
                  and          a2, s2, t3
                  andi         s0, s11, -189
                  nop
                  xori         s4, t0, 1872
                  slt          s3, a6, tp
                  auipc        s1, 775767
                  xor          a5, gp, s8
                  or           s6, s7, a2
                  sltu         s8, sp, sp
                  nop
                  sltu         t0, a5, t4
                  xori         t3, a5, 283
                  srl          zero, s10, t3
                  srl          a3, gp, s11
                  nop
                  ori          s0, sp, 1632
                  lui          t6, 641230
                  srai         a7, s2, 24
                  sltu         a3, a3, a2
                  slt          zero, a5, a7
                  ori          t3, zero, 645
                  xori         s6, s0, 1385
                  srl          tp, s11, s6
                  srl          s6, t4, t6
                  slt          a2, s5, s4
                  nop
                  andi         a0, s8, 349
                  srli         s3, a1, 13
                  addi         s3, s10, 440
                  sltu         t0, a5, s8
                  sltiu        t4, t6, -292
                  auipc        t1, 924968
                  sltu         s4, a3, t1
                  srli         t0, s1, 8
                  sub          a0, a4, t2
                  sltiu        t5, t5, 543
                  sub          s11, tp, s5
                  slti         t6, t4, 2047
                  xori         a3, a7, 725
                  auipc        s10, 842392
                  sra          s6, s2, s0
                  slti         gp, s4, -861
                  srl          t6, s10, a3
                  xori         tp, a7, 279
                  slt          t6, tp, s10
                  lui          s9, 804846
                  or           a3, s9, s1
                  slt          sp, a2, tp
                  slli         s0, s3, 13
                  sltu         tp, t4, s4
                  slt          sp, s9, t6
                  ori          t5, s0, -606
                  slt          s4, a2, s0
                  srli         tp, s6, 29
                  slti         zero, s9, -2023
                  sub          a6, sp, s4
                  slt          s1, a5, s1
                  addi         t4, ra, 933
                  slti         t0, gp, -971
                  slti         s1, t0, -39
                  slt          t4, s8, sp
                  lui          a3, 1029400
                  addi         t3, a3, -956
                  srl          s4, s7, tp
                  xor          a7, s10, s7
                  and          s5, s1, sp
                  slli         s9, s6, 21
                  sra          s0, t6, a5
                  add          s11, s1, t3
                  auipc        zero, 35527
                  slti         s6, s0, 1786
                  sltu         s0, a7, gp
                  ori          s11, gp, -1732
                  lui          a3, 172106
                  addi         gp, a1, 1655
                  slli         s4, a6, 16
                  slt          s11, t4, s5
                  addi         s1, t3, -440
                  sll          a5, a6, tp
                  ori          a1, s5, -392
                  sra          zero, a0, s11
                  sra          a3, ra, a1
                  srl          a4, ra, zero
                  sltiu        zero, t0, 39
                  srai         a0, a5, 26
                  or           a7, a2, a7
                  addi         t6, a7, 1692
                  sltiu        a1, t6, 1841
                  or           zero, a2, s8
                  ori          t5, a1, -1694
                  ori          a0, a7, -737
                  lui          a6, 489481
                  sltiu        s8, s10, -1854
                  lui          s6, 252581
                  addi         a5, a1, -1244
                  sra          t3, s10, zero
                  xor          t5, s4, a0
                  addi         sp, s6, -1213
                  or           t0, t5, t0
                  ori          t3, a5, -1559
                  add          t6, ra, s10
                  nop
                  auipc        t1, 1042203
                  auipc        a1, 130720
                  slt          a4, s3, s4
                  lui          ra, 565826
                  xori         t6, s0, 934
                  sra          s8, t2, s6
                  srl          sp, s2, ra
                  lui          a6, 745124
                  xor          s1, s8, zero
                  xor          sp, t1, s9
                  slti         t3, t0, -5
                  add          a2, s11, s11
                  addi         s10, t2, 1840
                  sltiu        s8, a7, 1794
                  srl          a0, a0, sp
                  sltu         a1, t6, s5
                  or           a0, a1, s7
                  add          s9, a0, a7
                  slti         a5, tp, -1387
                  sltu         s10, zero, t5
                  sub          s1, s4, t5
                  andi         a2, s4, 86
                  sltu         s4, a1, s7
                  add          t3, a7, ra
                  addi         ra, sp, 766
                  addi         s0, s8, 62
                  xori         s3, s0, 305
                  sltiu        a7, t2, -1547
                  srai         s3, s4, 26
                  add          a4, tp, a7
                  sltu         s9, gp, zero
                  srl          s3, t0, a6
                  srai         t1, s2, 9
                  xori         t0, s1, 964
                  slli         a7, a1, 26
                  nop
                  auipc        zero, 1005078
                  sub          s8, sp, s10
                  srl          a2, a2, a5
                  sub          s1, ra, a2
                  slt          a1, zero, t2
                  auipc        s1, 813946
                  slti         s9, s5, -1604
                  xori         a7, a7, 111
                  add          s10, t6, s9
                  sltu         a7, a2, a1
                  slli         t4, s6, 17
                  xor          a7, a6, t0
                  srai         s1, s2, 17
                  sltu         sp, gp, a4
                  sltiu        t0, sp, 1750
                  slt          a7, s10, a5
                  srl          s9, s7, a1
                  nop
                  sll          s3, a5, t5
                  nop
                  sll          t3, s1, sp
                  srai         t0, s0, 25
                  andi         tp, a7, -1672
                  sltiu        s9, s6, -950
                  sra          a5, s7, s9
                  or           sp, t6, s6
                  andi         ra, s3, -1640
                  slt          t0, t6, a4
                  ori          s10, s10, -121
                  andi         t0, a0, -1178
                  sll          s11, t3, s6
                  xori         t4, a6, -1274
                  sra          s11, ra, ra
                  ori          t1, a7, -1361
                  slti         s10, t4, -109
                  sltiu        s11, zero, -1706
                  and          a3, a6, t3
                  slti         t6, s4, -484
                  xori         a1, s0, -355
                  andi         s5, t5, -1055
                  slti         a5, sp, 966
                  auipc        zero, 828913
                  srl          s1, tp, s8
                  sltu         s11, a5, gp
                  lui          s4, 409507
                  sra          a0, t2, t1
                  srli         a2, s11, 30
                  sub          t4, ra, a4
                  ori          s9, a4, 428
                  andi         s3, t0, 1323
                  auipc        a2, 806917
                  srli         ra, gp, 25
                  nop
                  xori         t6, s1, 1867
                  nop
                  srli         a6, t0, 1
                  srai         ra, a7, 8
                  sll          ra, a7, t0
                  sub          t1, s4, tp
                  addi         a7, a6, 1019
                  slt          s1, s8, zero
                  sub          s6, s11, t4
                  slli         a6, s9, 16
                  sub          s1, a5, s6
                  srl          a2, t2, a3
                  slli         a3, t0, 9
                  slti         a6, s4, -1704
                  or           ra, a0, s2
                  srai         t6, t4, 5
                  slli         t3, s0, 9
                  ori          s6, a2, -1387
                  slli         s1, s9, 10
                  sra          t6, tp, t1
                  sra          a3, a3, t3
                  sub          t6, a0, s10
                  sltu         ra, a1, gp
                  slti         s5, tp, -1826
                  slti         a7, s3, 1811
                  addi         sp, s0, 1179
                  slt          s5, a6, gp
                  ori          s3, s11, -1963
                  slt          t0, s9, a0
                  sll          a3, a7, a3
                  sub          t1, s7, sp
                  srl          sp, a7, s5
                  sra          a5, t1, gp
                  sra          t4, t3, a1
                  andi         s5, a5, 2009
                  slti         sp, sp, -1243
                  srli         s8, s5, 0
                  sra          t6, t6, s8
                  nop
                  sub          t6, a0, a7
                  slli         zero, a6, 26
                  srai         s5, s6, 12
                  lui          s8, 790806
                  sll          s5, a4, t5
                  sub          ra, a0, s7
                  xor          zero, s4, s11
                  addi         s4, tp, -47
                  xor          a3, s3, a0
                  or           gp, a5, sp
                  slt          a4, zero, a2
                  auipc        s9, 558570
                  sra          t3, s8, ra
                  and          t5, s2, s8
                  and          t0, a0, t5
                  lui          t5, 339645
                  nop
                  srai         s5, s11, 13
                  sub          s4, s0, t4
                  slt          s9, s2, gp
                  xori         ra, s9, -880
                  sra          s11, s9, a0
                  add          t1, s7, zero
                  xori         s10, t0, -1272
                  sltu         s0, s10, s9
                  lui          a3, 913464
                  sra          s9, s0, s4
                  xor          s11, s3, t6
                  sltiu        s4, a0, 1584
                  and          s10, s5, t1
                  slt          a5, a5, a6
                  xor          tp, s10, s5
                  lui          a7, 71724
                  or           a4, a2, a3
                  slli         s5, t4, 7
                  slli         s8, zero, 17
                  add          t5, a3, t5
                  srai         a6, sp, 21
                  sub          t1, t6, t0
                  lui          a3, 638907
                  xori         a4, zero, 715
                  srli         tp, t3, 20
                  addi         s3, s2, -1452
                  srl          ra, t5, s2
                  srai         s9, zero, 24
                  lui          ra, 550808
                  slli         a3, a2, 23
                  sltu         s3, t1, t6
                  sltu         t5, s11, t5
                  xori         t3, s11, 1364
                  or           t1, t6, s10
                  addi         t6, t3, -1311
                  sltiu        s6, a4, 323
                  lui          s11, 774535
                  srai         s8, tp, 14
                  nop
                  addi         a5, gp, 557
                  slli         t6, s11, 30
                  lui          tp, 371353
                  or           s9, s9, s6
                  or           a1, t5, s3
                  sra          t4, a7, a1
                  nop
                  sltu         a7, s9, s8
                  ori          s6, a6, 750
                  slti         a2, a1, -1650
                  xor          a6, s3, t4
                  slti         s8, t6, -1631
                  xor          a6, t4, t4
                  add          s5, a3, a0
                  xor          a6, s2, t3
                  slli         s6, t3, 12
                  or           t1, s1, s6
                  or           t5, a3, s5
                  xori         tp, t5, 458
                  sltiu        gp, s7, -12
                  slti         a2, zero, 449
                  and          s4, s3, t3
                  sll          s8, a6, s8
                  add          a1, a2, s11
                  srai         t1, t5, 9
                  nop
                  auipc        sp, 773096
                  andi         a2, sp, -214
                  srai         s3, a1, 11
                  srl          s11, a6, s11
                  sll          s11, s7, a1
                  slti         t1, t3, -1113
                  srli         t3, s2, 2
                  srli         s4, a0, 24
                  sll          ra, gp, s0
                  srli         t6, t1, 11
                  srli         s0, gp, 15
                  and          t3, a3, s10
                  slt          t3, a5, t3
                  srli         a3, s1, 2
                  lui          a5, 667912
                  nop
                  slt          s3, s9, a0
                  nop
                  srl          sp, t0, ra
                  addi         t0, a5, 789
                  srl          a7, t2, s3
                  sltiu        a4, t5, -1175
                  add          a5, sp, t2
                  xori         a5, a7, -1779
                  sltu         a7, a7, tp
                  nop
                  slli         sp, s0, 7
                  sra          s6, a6, a1
                  xor          gp, s11, a1
                  srai         gp, a6, 21
                  xor          s3, s9, a5
                  andi         a5, s11, 1600
                  srl          t3, t0, t1
                  srai         a6, tp, 15
                  sra          sp, s0, tp
                  slti         zero, s2, -253
                  add          s8, s11, t2
                  lui          s0, 409447
                  or           ra, t1, s3
                  nop
                  slli         a6, s4, 0
                  sltiu        a1, ra, -561
                  xor          s5, a7, t5
                  xor          a4, s1, zero
                  xor          a7, gp, s2
                  auipc        t6, 806553
                  lui          a2, 562547
                  ori          s8, a4, 1548
                  and          t4, s11, ra
                  andi         s4, a6, -448
                  addi         t5, s2, 679
                  srl          a6, t1, a2
                  lui          s8, 1021736
                  slt          a0, a2, s5
                  ori          t1, s6, -1950
                  slli         t6, a5, 1
                  srl          s1, a1, s2
                  srl          a6, sp, t1
                  and          a1, sp, t5
                  xori         a4, ra, 1675
                  nop
                  or           t0, sp, s8
                  sll          t1, s9, s4
                  slli         a0, s11, 5
                  lui          s9, 823976
                  auipc        a6, 32900
                  sra          ra, a3, a5
                  sltiu        s6, a5, -728
                  ori          s4, zero, 1945
                  sub          ra, t1, t1
                  and          gp, a2, gp
                  ori          t0, sp, 2035
                  sltu         t6, a4, s2
                  slt          a5, gp, t6
                  sra          s9, a3, zero
                  nop
                  nop
                  sra          t0, s0, t3
                  slti         sp, s11, -1532
                  lui          tp, 868746
                  xori         s3, t3, -2006
                  sub          a3, ra, a4
                  ori          a3, sp, -1847
                  sra          t1, a6, ra
                  nop
                  sll          s1, a1, s5
                  or           t3, a4, s2
                  addi         t6, a3, 1289
                  add          s9, tp, s4
                  xor          a4, t6, a5
                  auipc        s5, 686668
                  slt          s3, s4, s0
                  sll          t0, a2, t3
                  auipc        gp, 449990
                  slli         zero, t6, 6
                  slli         a4, zero, 13
                  srli         s6, t5, 10
                  sltu         s4, gp, s3
                  sub          s4, t1, a6
                  sra          t6, tp, s5
                  add          a5, a5, s4
                  sub          t1, a2, t1
                  addi         t1, s2, 1689
                  sltiu        a0, s1, 938
                  xori         tp, s11, -1515
                  srl          a7, s7, s6
                  srli         s1, a7, 13
                  xor          t1, sp, a2
                  xor          zero, t6, a7
                  add          a1, s1, s1
                  srai         s5, a1, 13
                  andi         s8, gp, 1398
                  sll          a0, tp, s7
                  xor          sp, gp, s9
                  xor          a5, t1, a2
                  and          a4, a6, s8
                  slti         sp, t2, -20
                  addi         s4, s10, 1456
                  ori          t6, a0, 1684
                  srli         s3, t1, 23
                  slli         a3, tp, 1
                  sub          gp, tp, s0
                  lui          t4, 187535
                  slli         t4, s1, 26
                  xor          tp, t1, a6
                  slti         s6, s7, 1938
                  sra          t5, t5, a0
                  auipc        t5, 670939
                  xor          t6, s4, a5
                  and          t6, t0, s6
                  sltiu        tp, t4, -1935
                  andi         a4, a3, -724
                  lui          s10, 367676
                  and          t0, gp, sp
                  lui          t3, 540914
                  slt          t0, t3, s3
                  ori          t4, s0, -474
                  slti         s8, gp, -1215
                  addi         a0, a5, -1124
                  ori          a5, a2, -1590
                  sub          s4, s2, a2
                  andi         zero, a6, 199
                  sll          s8, a3, s10
                  xor          s11, s3, gp
                  xor          s5, a2, tp
                  srl          s11, a1, a2
                  andi         t0, a5, -862
                  addi         a3, t6, 1612
                  or           a4, s1, t3
                  slti         t0, s7, 1284
                  srli         a5, ra, 21
                  srli         zero, s5, 10
                  lui          s0, 684117
                  auipc        s9, 245057
                  srli         t1, a3, 25
                  ori          a0, s10, -2006
                  andi         s6, t0, -1201
                  nop
                  auipc        a2, 712887
                  xori         a7, a1, -1172
                  xor          zero, s4, t4
                  xori         t0, s8, -561
                  and          t6, s11, a1
                  slli         s5, s9, 31
                  xori         ra, s1, 976
                  sltu         ra, gp, a5
                  srl          s4, sp, s2
                  sltiu        zero, ra, -267
                  slti         s3, t1, -249
                  and          t0, s5, ra
                  sltu         s11, t4, s5
                  ori          a0, t5, -1306
                  addi         s3, a3, -1600
                  slti         t3, t3, -523
                  slli         t4, s2, 0
                  sltu         a1, tp, a2
                  xor          tp, s1, t4
                  srl          a7, a3, s2
                  srai         s8, s6, 12
                  andi         s5, zero, 1507
                  srai         s1, s7, 21
                  slti         t3, a0, 1646
                  auipc        t4, 633197
                  slti         a5, a2, 299
                  xori         a0, a6, -964
                  slti         s10, s0, 1749
                  ori          a5, s6, 319
                  auipc        s5, 130116
                  add          t1, tp, s6
                  auipc        t3, 975989
                  srl          ra, s10, a5
                  or           s6, tp, t6
                  sll          t4, t0, t4
                  ori          s8, a6, 1727
                  sltu         t0, a5, s4
                  sll          s10, a4, t3
                  srli         a7, t1, 15
                  auipc        s11, 441514
                  sltu         s3, s11, s3
                  sltiu        sp, t3, 1104
                  sll          s6, s5, t2
                  andi         t4, ra, -178
                  add          a0, t3, a4
                  nop
                  xor          gp, a0, s6
                  nop
                  slti         a0, s7, 204
                  slt          s6, a3, s7
                  and          a7, s6, s3
                  sub          s1, gp, s11
                  auipc        a3, 78388
                  srl          tp, s1, gp
                  add          s9, t5, t2
                  and          s1, t3, s10
                  xori         a0, s8, -1768
                  slt          a0, s2, t4
                  nop
                  or           t0, s0, a4
                  and          a2, tp, a1
                  sltu         gp, a1, s11
                  auipc        s9, 546546
                  sll          a1, sp, gp
                  slli         s3, s4, 14
                  add          s4, t0, t0
                  srl          s3, gp, zero
                  add          s10, s3, s6
                  sltiu        a1, s6, 1271
                  sll          ra, s8, t6
                  auipc        a0, 772071
                  slli         s9, sp, 4
                  sll          a7, t3, zero
                  andi         s5, t4, 843
                  srli         gp, a0, 30
                  srl          tp, t5, tp
                  nop
                  nop
                  add          s3, sp, t6
                  and          t6, s9, a2
                  sra          s4, tp, t1
                  add          t1, a7, a7
                  slli         sp, s6, 24
                  or           s10, gp, a3
                  lui          a2, 181748
                  or           t6, s9, s7
                  srli         a3, s10, 22
                  xori         t3, s3, 496
                  xori         a7, s11, 1377
                  add          t1, t0, tp
                  sub          a5, a1, s11
                  sra          s3, s2, s11
                  auipc        tp, 215702
                  andi         gp, s9, -863
                  sltu         s3, s2, t2
                  srli         s3, s1, 21
                  slti         s9, s11, 1550
                  and          ra, t2, t2
                  srl          t5, s9, s9
                  addi         s10, s11, 813
                  sra          s3, t6, a3
                  nop
                  slti         s6, s7, -1511
                  srai         a4, a0, 0
                  sub          gp, sp, t6
                  srl          s1, s6, a5
                  srli         t1, sp, 18
                  srl          zero, a4, t0
                  srl          a7, s8, s3
                  sra          a5, s11, t5
                  lui          s5, 684391
                  andi         s8, sp, 869
                  sll          s5, s0, a7
                  srli         t6, s0, 20
                  nop
                  or           s10, t1, s1
                  sub          s6, t6, s4
                  srli         sp, s7, 7
                  and          s8, s4, s10
                  nop
                  andi         t6, sp, -1087
                  slt          a0, gp, a7
                  srai         sp, zero, 26
                  ori          tp, s4, -1518
                  sll          tp, a5, a3
                  srli         s4, a1, 1
                  add          t0, t1, t4
                  addi         t6, a6, 1784
                  or           ra, t6, tp
                  sra          a5, a5, a1
                  sub          tp, t2, a0
                  auipc        t4, 196939
                  srai         a6, a2, 14
                  sll          tp, a6, s1
                  sra          tp, s6, tp
                  slli         t3, s7, 1
                  slt          a7, s11, s2
                  and          s4, s5, sp
                  slt          t4, s6, s5
                  srli         s6, t6, 4
                  auipc        gp, 983386
                  addi         t1, s4, -949
                  and          sp, tp, a0
                  xori         a4, s2, -1350
                  sll          t6, s7, ra
                  xor          s6, s3, t3
                  ori          s1, a0, 100
                  sub          tp, a0, s5
                  xor          a3, t0, s8
                  auipc        tp, 1043482
                  xor          s9, a5, a6
                  srai         a2, s3, 4
                  slt          a1, s4, t5
                  nop
                  sltiu        zero, t4, 143
                  sra          t0, tp, ra
                  add          tp, s3, gp
                  sra          a1, t3, sp
                  slli         s10, a5, 17
                  srai         s0, a3, 9
                  nop
                  ori          t0, a6, -1772
                  xor          s6, gp, gp
                  slt          a1, ra, t5
                  lui          s8, 775682
                  srai         s10, ra, 11
                  auipc        a5, 847218
                  sra          a1, s3, gp
                  sltiu        s1, t0, -1965
                  lui          t1, 333973
                  srai         a3, a5, 26
                  ori          s8, a2, 1259
                  lui          a3, 965026
                  slti         s10, gp, 1675
                  and          s11, s1, t0
                  sltu         a3, a0, zero
                  add          s6, a3, ra
                  srai         a7, s8, 7
                  srl          s1, zero, s1
                  slt          a1, s2, s6
                  andi         t3, a6, 821
                  slt          zero, s1, t2
                  lui          t5, 40554
                  xori         s9, sp, 251
                  xori         a7, s9, 1832
                  andi         a2, a5, 1073
                  or           s8, gp, s10
                  andi         s10, s1, 1165
                  sltiu        a3, s5, 749
                  xor          t3, t2, a7
                  add          t0, tp, t0
                  addi         a3, s8, 1154
                  slt          s10, a0, s5
                  sltiu        a0, s5, 381
                  srai         t1, s7, 26
                  ori          s5, t4, 1105
                  slti         zero, s4, -409
                  add          t6, s6, a4
                  xor          a6, s1, t5
                  sll          s6, s4, s6
                  sra          t1, a4, t6
                  srl          t1, a2, ra
                  andi         s1, t0, 326
                  srl          s11, s10, s10
                  xor          s10, a5, s1
                  srl          t5, t0, a0
                  sltiu        s11, s10, 1483
                  sltu         t0, a6, gp
                  and          a7, ra, s4
                  slti         t1, a6, -1036
                  slti         zero, s0, -487
                  ori          s1, s0, 1220
                  auipc        sp, 501273
                  and          s3, s10, t3
                  xor          a3, a6, zero
                  lui          a6, 631385
                  sra          tp, t6, t1
                  auipc        tp, 182667
                  sltu         s6, sp, s11
                  sra          t4, s3, s6
                  auipc        a2, 970214
                  srli         t4, s4, 24
                  sltiu        s6, s9, -623
                  sra          a5, s1, t3
                  slti         a2, a5, -633
                  srai         s4, t6, 15
                  sll          s5, a2, a6
                  ori          a2, t1, 669
                  slli         a3, s10, 21
                  sra          s5, a0, t6
                  srai         t1, a0, 2
                  srli         a2, s9, 10
                  auipc        s5, 76167
                  xor          s1, s2, t0
                  lui          t1, 529988
                  srl          t4, a6, t6
                  sltiu        a3, t6, 1776
                  and          s9, s4, s7
                  add          s5, zero, s9
                  sub          tp, s9, t2
                  or           zero, gp, s7
                  slli         s3, sp, 6
                  addi         a3, t0, 1678
                  addi         tp, s3, -1763
                  srl          a5, ra, a4
                  sub          s5, t5, t2
                  ori          t0, s6, 520
                  and          s8, s9, a0
                  sll          a4, a4, a3
                  sltiu        a7, gp, -1071
                  xori         a3, t1, 1575
                  xor          gp, gp, t6
                  add          a2, a5, s6
                  or           zero, s8, s4
                  xor          t0, s0, a7
                  sub          s6, a5, s9
                  and          a4, s8, a4
                  sll          a5, gp, t2
                  srli         s8, s6, 2
                  addi         s3, s11, 1865
                  slti         a4, s5, -1556
                  lui          tp, 624840
                  xori         s8, t6, -225
                  srli         s8, ra, 11
                  or           s10, s0, tp
                  slli         a7, zero, 7
                  srl          t6, zero, s7
                  slli         a3, zero, 11
                  addi         gp, t3, -458
                  srli         s0, a3, 5
                  sll          s1, s7, t5
                  slli         tp, a1, 17
                  andi         a1, t6, -186
                  or           t6, s8, s4
                  srl          t4, s8, s3
                  sub          s9, s11, a3
                  addi         a7, s2, 1076
                  sll          a2, s7, s9
                  srli         s10, t0, 30
                  nop
                  andi         a4, t6, -1948
                  addi         s9, a1, 1080
                  andi         ra, t1, 225
                  auipc        zero, 368093
                  add          t6, s0, t4
                  xori         s4, s3, 1471
                  sub          zero, s1, s11
                  lui          s3, 138729
                  slli         sp, s1, 20
                  xor          a7, t4, t4
                  srai         s9, s6, 6
                  sra          gp, zero, s4
                  srl          ra, s10, s9
                  addi         a6, t6, -1057
                  andi         s5, s11, -1368
                  srli         s0, a4, 25
                  nop
                  andi         a0, a2, 757
                  or           a6, sp, s8
                  lui          s6, 405924
                  nop
                  srl          s5, t1, a4
                  and          t4, a0, t3
                  sra          t1, s1, s7
                  and          s5, a1, a6
                  xor          sp, s10, zero
                  add          s11, tp, s3
                  slti         a5, ra, -805
                  srai         s3, s9, 8
                  ori          tp, s7, 887
                  slt          s0, s7, t4
                  xori         t6, s1, -1892
                  nop
                  li           s0, 0x80000000 #start riscv_int_numeric_corner_stream_19
                  li           s5, 0x0
                  li           s4, 0xffffffff
                  li           tp, 0xffffffff
                  li           s8, 0xffffffff
                  li           s9, 0x80000000
                  li           a7, 0xffffffff
                  li           t6, 0xffffffff
                  li           t0, 0xffffffff
                  li           s1, 0x0
                  nop
                  lui          s0, 869644
                  auipc        s0, 350529
                  lui          s8, 907090
                  add          t6, t6, tp
                  lui          a7, 772741
                  nop
                  addi         t6, s1, -1471
                  nop
                  sub          s9, a7, tp
                  lui          s4, 918420
                  add          s1, s5, a7
                  nop
                  nop
                  addi         s4, s4, -919
                  lui          t0, 837554
                  sub          s9, s0, s4
                  auipc        s0, 900988 #end riscv_int_numeric_corner_stream_19
                  addi         t1, s8, -95
                  sra          t4, a1, a3
                  add          a1, s11, s5
                  slti         s3, t5, -875
                  lui          a3, 259715
                  andi         ra, s2, -104
                  xor          s10, t6, s2
                  srl          a0, s4, tp
                  ori          a3, t3, 1229
                  srl          a2, a6, s4
                  and          s4, s0, t2
                  add          s10, s5, a5
                  sub          t0, s3, a0
                  slli         sp, t0, 14
                  addi         a0, a6, 1728
                  slli         s11, s2, 15
                  andi         t6, s8, 657
                  sra          s5, t3, s9
                  slt          s6, zero, t4
                  or           s9, s4, t4
                  slli         a0, tp, 6
                  andi         t4, s1, 1314
                  sll          t5, s7, s8
                  sra          s9, t1, a5
                  sra          a6, s2, a1
                  ori          a2, s10, -193
                  auipc        a0, 39634
                  addi         s1, t1, -867
                  xor          s9, t0, a7
                  lui          s1, 91398
                  ori          a6, a1, -1990
                  and          s0, a1, t1
                  nop
                  add          ra, s11, a5
                  sub          s5, ra, a4
                  slti         t3, a4, -137
                  andi         t6, s4, 1231
                  add          gp, t5, t6
                  xori         zero, t0, -1167
                  addi         a0, tp, 955
                  sll          a3, s11, a3
                  addi         tp, a5, 1674
                  sltiu        ra, s1, 192
                  lui          s3, 950969
                  slli         t3, zero, 27
                  addi         zero, s5, 1249
                  sltu         a1, sp, t1
                  xor          a7, t2, t0
                  slt          t4, zero, t5
                  srl          a1, s2, s10
                  ori          s4, tp, -754
                  sra          s1, sp, t6
                  nop
                  and          t4, s11, s7
                  srl          s11, t0, s11
                  slli         a1, tp, 29
                  xori         t4, a3, -1729
                  and          sp, a5, a0
                  xori         a5, a5, 1430
                  lui          s11, 145402
                  sub          t4, a5, s5
                  auipc        s9, 694979
                  andi         t5, a2, -1700
                  ori          zero, s7, 1603
                  slti         t0, a3, -1105
                  xor          a2, a5, a5
                  srl          a6, t1, t6
                  addi         a3, sp, 1819
                  auipc        t4, 137693
                  nop
                  nop
                  sll          s4, a6, a7
                  sltu         s0, a1, t4
                  sltu         s0, sp, s9
                  sltiu        t4, t5, 1544
                  slli         t1, s9, 24
                  add          s6, s0, s2
                  slt          a4, t3, a7
                  slt          sp, a2, s0
                  sltiu        s9, a5, -1388
                  xor          s10, t5, s0
                  add          a1, gp, s0
                  lui          s0, 4999
                  sll          t1, s6, a5
                  sra          sp, s3, s8
                  addi         gp, sp, 1719
                  addi         s11, t2, 1576
                  sltiu        s4, a2, -80
                  sltiu        t6, s5, 1205
                  addi         s11, s4, -1251
                  sltiu        tp, a3, 770
                  xor          s9, s11, s5
                  add          a3, s2, t5
                  xori         zero, t6, -764
                  nop
                  add          a4, s10, a4
                  slt          s5, s7, gp
                  xori         gp, s3, -172
                  or           t6, s8, t4
                  slt          ra, s4, a4
                  slt          s8, s2, t0
                  sltiu        sp, t2, -107
                  lui          t0, 133134
                  ori          sp, a7, -984
                  lui          s9, 1039150
                  slti         t6, s8, 526
                  nop
                  and          t1, s6, s0
                  slti         sp, s6, -1567
                  andi         s11, zero, -295
                  sltiu        t3, t1, -447
                  slti         a2, s9, 679
                  andi         t6, a5, 223
                  slli         gp, s6, 30
                  addi         s0, zero, 66
                  lui          a2, 388395
                  or           t4, s4, s9
                  xor          s0, s1, a5
                  srli         zero, a2, 3
                  nop
                  or           gp, s9, gp
                  xor          tp, t0, a0
                  sltiu        ra, s4, 464
                  sub          s1, s7, ra
                  and          a5, t3, s7
                  andi         a3, a0, -1088
                  sltu         s3, zero, s3
                  sub          s4, s7, sp
                  auipc        a5, 738425
                  slli         gp, zero, 14
                  nop
                  sltiu        s9, tp, 530
                  add          a3, s9, s2
                  or           tp, s5, s10
                  xor          t0, s11, s4
                  sra          t4, s8, tp
                  andi         s4, s5, -151
                  nop
                  auipc        gp, 950427
                  nop
                  lui          a0, 614383
                  sub          s6, s7, s6
                  xor          t1, ra, a1
                  lui          gp, 618979
                  xori         s4, s0, -1603
                  auipc        sp, 115799
                  xori         a3, s7, 262
                  andi         t1, t0, 114
                  slt          s3, zero, t2
                  auipc        t0, 159593
                  or           a0, a5, t4
                  ori          s4, zero, 1646
                  li           s11, 0x62b72a74 #start riscv_int_numeric_corner_stream_12
                  li           tp, 0x95d35181
                  li           gp, 0x0
                  li           a7, 0xffffffff
                  li           s1, 0x0
                  li           a1, 0xbcb97305
                  li           a6, 0x80000000
                  li           s10, 0x773c9c8
                  li           t1, 0x458c9dd4
                  li           ra, 0x636b8506
                  sub          s10, a7, ra
                  auipc        ra, 911448
                  add          a7, s10, a6
                  auipc        t1, 567854
                  auipc        gp, 887918
                  auipc        ra, 897305
                  lui          a1, 973969
                  addi         gp, gp, 100
                  add          s10, a1, a7
                  add          ra, s1, s1
                  add          t1, tp, ra
                  addi         tp, t1, -1609
                  addi         a7, tp, 735
                  add          a7, s1, ra
                  addi         a6, t1, 642
                  auipc        t1, 325401
                  nop
                  auipc        gp, 619199
                  lui          a1, 115217
                  addi         a6, t1, -1180
                  auipc        s11, 627208
                  add          a6, ra, ra
                  nop #end riscv_int_numeric_corner_stream_12
                  sltu         s10, t5, a3
                  ori          a4, a0, -418
                  sub          t5, s10, t0
                  addi         t0, a3, -471
                  add          gp, s10, t3
                  sltiu        s8, a7, 454
                  srli         sp, t3, 14
                  srai         a3, a2, 3
                  auipc        s4, 289674
                  srl          s3, t6, s10
                  srli         a6, t1, 26
                  sltiu        zero, t5, 1204
                  slt          s1, gp, sp
                  ori          s8, s9, -1744
                  sltiu        a4, zero, 219
                  sll          a0, a3, s4
                  slti         a5, a6, -1753
                  sltiu        sp, s0, 1822
                  sll          s9, a3, a2
                  sub          s6, s5, sp
                  sltu         s1, s0, a4
                  sltiu        tp, t0, 902
                  slli         a6, ra, 24
                  sltiu        s11, a5, -1855
                  addi         a3, s3, 1723
                  auipc        a3, 1028120
                  nop
                  addi         s9, s7, 1023
                  slt          t3, s4, a5
                  auipc        t6, 973777
                  slli         a6, ra, 31
                  sll          t0, a0, t2
                  sltu         s1, t4, a4
                  ori          s11, a0, -592
                  sub          t3, s3, s1
                  srl          s9, a4, a1
                  auipc        sp, 433531
                  xor          t6, ra, zero
                  andi         gp, a6, -589
                  xor          a1, t0, s6
                  lui          a0, 991745
                  slli         a0, a2, 4
                  nop
                  sltu         t1, a1, tp
                  sltiu        s8, a7, 757
                  or           a3, s11, a0
                  sll          a3, s6, s3
                  sltu         zero, t3, s9
                  or           s1, tp, s2
                  lui          s0, 378210
                  ori          a4, s8, 1623
                  ori          s8, t0, -1316
                  xor          s4, s1, a5
                  slli         t1, s5, 29
                  lui          a5, 381836
                  andi         a7, s6, 989
                  xori         a6, s5, 1014
                  slti         s9, s4, -1195
                  ori          s0, s5, -88
                  nop
                  slli         s5, s4, 21
                  slli         ra, t0, 31
                  sub          s8, t0, s10
                  xori         ra, a1, 1670
                  addi         s3, s3, -900
                  lui          s11, 173848
                  sub          s5, t2, t4
                  sra          s9, s7, sp
                  slt          a0, gp, t2
                  or           tp, s10, a2
                  slti         s3, s2, -1427
                  addi         a4, a0, 1972
                  sra          t4, t2, s8
                  sll          t5, a0, t2
                  srli         t5, s7, 5
                  sltiu        t5, a7, -902
                  sub          t1, a2, s4
                  sll          s1, s0, ra
                  addi         a0, s4, -1974
                  andi         t5, t1, 124
                  andi         sp, a0, -1904
                  lui          zero, 423043
                  auipc        a0, 117120
                  and          a0, s6, a7
                  sltu         s9, a3, s5
                  ori          t4, s7, 665
                  slt          t5, s10, t1
                  sltiu        s1, ra, 407
                  sub          t5, s4, zero
                  add          s11, s8, s2
                  xori         t1, s3, -1707
                  sub          s10, s4, a6
                  andi         a4, a0, -358
                  srli         t4, a6, 14
                  srli         sp, s2, 10
                  addi         t0, s4, -801
                  sltu         t4, a5, s4
                  xori         s6, s2, -962
                  slti         s11, s9, -521
                  nop
                  srai         a5, a6, 23
                  slti         t4, a2, 590
                  slti         t3, s9, -1635
                  add          s11, a4, s10
                  auipc        a1, 58026
                  andi         a1, a0, 1064
                  srl          t6, s5, a3
                  nop
                  or           s8, t2, s4
                  srl          zero, t5, s10
                  lui          s1, 482816
                  lui          a5, 50915
                  sll          tp, zero, a1
                  sll          s10, t2, s4
                  sub          s9, t4, s0
                  sub          gp, s0, s1
                  andi         t6, a6, 789
                  sub          t4, t3, a1
                  nop
                  lui          t1, 709704
                  sltu         s4, s10, s8
                  srl          t6, a7, a6
                  srli         a0, t3, 2
                  nop
                  slt          s1, s3, zero
                  sra          ra, s2, gp
                  sltiu        tp, a1, 679
                  sub          t6, t3, a7
                  sra          t5, s3, t2
                  or           s9, zero, s7
                  xori         s3, s10, -325
                  slli         s4, t3, 2
                  slti         s9, a3, 1032
                  slti         a5, a6, -1439
                  lui          sp, 306026
                  and          s9, s10, s4
                  andi         a7, s9, 684
                  slt          s11, t2, s11
                  sltiu        gp, ra, -406
                  slli         a6, t5, 8
                  or           t6, a6, zero
                  nop
                  addi         t6, t1, 137
                  ori          s9, s0, -1279
                  xori         s9, tp, -1555
                  addi         tp, s2, -1
                  sll          a2, a2, s0
                  sltu         sp, t6, s2
                  and          a1, t0, t1
                  addi         t0, s3, 1730
                  sll          a5, t6, t4
                  slt          tp, a6, s2
                  add          s11, t5, a7
                  slt          t3, t6, tp
                  sltu         s0, a0, t6
                  lui          tp, 429219
                  andi         s9, s8, 350
                  sll          s6, t4, s1
                  srl          t1, s2, s11
                  ori          s11, a4, 1245
                  sltu         a5, s11, t5
                  slt          s5, t0, s10
                  ori          s1, s8, -359
                  andi         tp, a3, 52
                  lui          sp, 564026
                  slli         t3, s6, 10
                  srli         a0, gp, 25
                  addi         s4, tp, 1781
                  srl          a7, t4, t4
                  xor          a3, gp, t5
                  slli         t3, s5, 29
                  sltu         t0, s8, t6
                  xori         ra, gp, -407
                  sltiu        a4, zero, 2046
                  srai         gp, t5, 29
                  slti         t3, a2, -1975
                  xori         s9, t3, -241
                  addi         sp, a4, -1970
                  addi         a1, t4, 2000
                  slti         t1, s3, 1221
                  slli         a6, a6, 9
                  xor          a0, a7, s7
                  slti         t5, s9, -1564
                  srli         tp, a6, 25
                  addi         s3, sp, -709
                  xori         s11, s8, -1220
                  slt          t3, s1, sp
                  xor          s0, t4, t0
                  sltu         s3, gp, s5
                  srl          s10, a6, t4
                  and          a5, s8, a5
                  lui          a7, 931217
                  andi         s0, s9, -1183
                  srli         s3, s10, 10
                  srli         sp, t0, 5
                  ori          a3, t2, 1197
                  or           t0, s7, s3
                  auipc        s11, 649156
                  slli         s9, s10, 29
                  xor          t0, t5, t1
                  sll          a1, s10, s6
                  add          t5, zero, t5
                  sltiu        a2, gp, 135
                  xori         t0, t0, 705
                  addi         t5, s7, 72
                  slti         a0, s8, -492
                  addi         s1, a4, -105
                  srai         s3, t5, 17
                  or           tp, sp, tp
                  ori          s9, ra, -486
                  and          zero, sp, tp
                  and          zero, zero, s4
                  sra          s5, s1, gp
                  ori          tp, t3, 1503
                  andi         tp, a4, 217
                  sll          a2, a4, s1
                  sra          a5, a3, t4
                  xor          gp, zero, t0
                  sltu         s10, s7, a0
                  andi         s4, a7, -1322
                  xor          a1, t3, s1
                  sub          a5, a7, a1
                  add          a1, sp, s11
                  li           s9, 0x80000000 #start riscv_int_numeric_corner_stream_6
                  li           t0, 0x0
                  li           s11, 0x80000000
                  li           s10, 0xf9d1eeb9
                  li           a2, 0x3d20f74f
                  li           a4, 0xffffffff
                  li           a5, 0x35c7c71c
                  li           sp, 0x80000000
                  li           a7, 0xffffffff
                  li           gp, 0xffffffff
                  lui          s10, 809369
                  add          s9, a4, a4
                  nop
                  addi         a7, s9, -436
                  nop
                  lui          sp, 172523
                  auipc        a4, 604524
                  sub          a4, a5, a7
                  lui          s11, 406169
                  addi         s11, a2, -815
                  add          a2, s10, s10
                  addi         t0, t0, -61
                  add          t0, t0, s9
                  sub          s10, a4, t0
                  lui          s11, 223548
                  sub          gp, a5, s11
                  auipc        a4, 995406
                  addi         a5, s11, 1524
                  add          a4, s9, sp
                  add          a4, gp, t0
                  add          a7, a5, a4
                  auipc        a4, 472384
                  lui          t0, 546868
                  nop
                  nop #end riscv_int_numeric_corner_stream_6
                  sub          t1, s7, t6
                  slt          a4, a1, s0
                  sub          a0, a7, s4
                  srai         s3, s7, 6
                  nop
                  sltu         s4, a1, gp
                  or           a3, s7, t0
                  srai         ra, s0, 6
                  sltu         s3, s10, t1
                  srli         a3, s7, 12
                  srli         s5, s8, 2
                  add          t0, s6, t4
                  sra          s8, s3, s4
                  srli         t3, s10, 15
                  auipc        tp, 139144
                  srli         zero, a2, 0
                  sll          s8, a2, a7
                  sltiu        s8, a6, 1416
                  srl          s10, t3, a1
                  or           tp, ra, a3
                  or           s5, a5, a1
                  slli         a2, s9, 24
                  sll          a1, t0, t6
                  xori         ra, t5, 318
                  addi         a4, a4, -1180
                  ori          s11, tp, -573
                  sub          t1, s10, s10
                  slti         t4, a2, 1980
                  slti         a5, gp, -1415
                  sltu         s11, t0, a3
                  add          t0, t1, a6
                  lui          a1, 567081
                  nop
                  lui          a4, 92407
                  or           t6, t2, gp
                  ori          ra, t3, -593
                  and          a4, t2, a2
                  ori          s3, t0, -1586
                  xor          s6, t1, s6
                  ori          s6, t0, 879
                  sltu         ra, gp, t2
                  lui          t5, 103269
                  ori          t6, gp, 131
                  andi         s0, t1, -1181
                  nop
                  sub          t6, t6, s2
                  and          s6, t3, s7
                  nop
                  srl          s0, s6, t4
                  or           t6, s11, a0
                  or           s0, zero, ra
                  lui          s3, 33256
                  xor          a2, a4, t6
                  slti         t6, t4, -1348
                  andi         ra, t5, 1369
                  slti         zero, s11, -883
                  slli         s8, s3, 25
                  and          t4, t6, s10
                  sll          s3, s2, a3
                  srai         s0, t0, 10
                  add          s3, a0, s7
                  slli         tp, t4, 29
                  sub          a0, t0, s5
                  auipc        ra, 714909
                  srli         s8, t0, 0
                  lui          t0, 557519
                  sltiu        s3, t6, 1995
                  srli         s4, s2, 24
                  ori          tp, a6, -1819
                  or           t4, t5, t5
                  sll          t5, s10, s5
                  ori          a0, t4, 1005
                  srai         t3, s9, 12
                  sltiu        t1, s0, -1827
                  sra          a6, sp, t2
                  nop
                  xor          gp, s6, t5
                  lui          s10, 538585
                  slt          s10, t4, t6
                  nop
                  sll          zero, zero, a0
                  slti         s11, a1, 1132
                  and          t5, a7, s4
                  slti         t0, a0, 1499
                  sra          s0, ra, a6
                  sub          s8, t6, a0
                  auipc        s6, 444291
                  sltu         s4, sp, a0
                  srli         s11, s3, 9
                  nop
                  slti         a0, a6, -425
                  sll          a0, a5, s8
                  and          a0, s0, s4
                  lui          s3, 508058
                  sltu         s4, s11, a7
                  srai         t6, a4, 4
                  nop
                  or           s8, s3, t4
                  ori          t3, s10, 1785
                  slti         a6, a5, -1087
                  slli         t3, a2, 16
                  slt          t4, t0, a7
                  sltiu        a5, a2, 712
                  xori         s5, tp, -2011
                  ori          tp, s2, -778
                  auipc        a5, 615414
                  sltiu        s11, t3, 17
                  slt          s10, sp, s11
                  sltu         t5, t3, tp
                  srl          a4, a4, a2
                  sltu         sp, ra, t6
                  sra          t5, s8, t1
                  nop
                  add          t4, s11, s1
                  sll          t6, t5, ra
                  srli         s0, gp, 16
                  addi         gp, s1, 66
                  sra          s5, t1, s11
                  sltu         s5, s8, t2
                  srli         sp, s2, 25
                  sra          a3, t0, t3
                  srl          a4, s11, s1
                  slt          s6, s4, a0
                  addi         a1, a2, -2018
                  andi         s9, a2, 1238
                  and          s11, s9, t3
                  srl          t3, a2, ra
                  srl          tp, s0, s11
                  lui          tp, 132711
                  ori          s11, t4, -1244
                  sltu         sp, a2, s9
                  auipc        a1, 139090
                  sltiu        s5, gp, -1034
                  sltu         a4, t1, a5
                  andi         t0, a0, -1530
                  xori         s1, a4, -1623
                  slti         t3, s3, 763
                  sra          s1, t3, a7
                  addi         s8, s5, -1231
                  sra          t3, zero, s11
                  auipc        ra, 88243
                  and          a7, s5, a0
                  xori         t6, a6, -353
                  xori         a4, s2, -75
                  sra          t1, s3, s0
                  andi         s8, a0, -2043
                  add          s9, t2, a1
                  sltiu        s9, s4, -799
                  auipc        a4, 69029
                  srli         t0, a5, 15
                  srai         s1, a7, 24
                  srl          sp, tp, t1
                  xor          t5, t1, s8
                  srl          s10, t4, t2
                  add          s9, zero, s10
                  sra          a1, a4, t5
                  srl          s3, a5, a7
                  xor          a1, s10, t5
                  or           s9, s10, t2
                  srl          s3, s1, s5
                  auipc        t4, 2501
                  sub          s5, s7, a1
                  addi         t5, a4, -804
                  sltiu        s3, s3, 145
                  addi         a1, sp, 1326
                  andi         a7, s5, -550
                  lui          s5, 986165
                  and          tp, s6, a2
                  xor          t0, t1, s9
                  sub          s5, zero, a7
                  slt          s0, s10, s4
                  auipc        a0, 29558
                  and          s0, a0, a7
                  and          s4, ra, ra
                  nop
                  sll          a0, s8, s2
                  sub          a4, s1, t3
                  sll          t0, t1, a2
                  add          sp, s1, a4
                  slli         s6, s0, 21
                  add          s10, sp, ra
                  sub          a1, sp, sp
                  srai         a4, a6, 31
                  sltu         zero, a5, s5
                  auipc        t6, 349735
                  add          s4, t0, s2
                  xor          t3, a4, t1
                  and          gp, s0, a1
                  sra          gp, s10, s11
                  slti         a1, s5, 1544
                  slt          a2, a0, t0
                  srl          t5, s1, s11
                  slli         s11, a6, 10
                  ori          s10, t1, 618
                  xori         t3, t0, -1614
                  add          t6, a2, t1
                  lui          t5, 718354
                  sltu         t0, t0, t4
                  sll          s3, tp, a3
                  addi         a5, a1, -944
                  ori          s6, s4, 39
                  srl          gp, t0, a0
                  srl          s0, s6, s8
                  nop
                  sub          t4, ra, a3
                  sra          ra, a1, t3
                  or           s9, a7, s7
                  add          a1, s10, a0
                  xor          s5, s6, a5
                  auipc        s8, 703914
                  srai         ra, s3, 21
                  slt          s3, a1, t3
                  sltiu        tp, s0, 2022
                  sltu         s8, s7, gp
                  and          s9, t3, t0
                  sltu         t0, t2, s10
                  add          sp, a1, tp
                  srl          s5, s7, s6
                  srl          s6, s1, s9
                  sll          gp, s10, s5
                  slli         s5, sp, 26
                  add          t4, s8, t5
                  addi         a5, zero, -2001
                  sltu         s9, s4, a0
                  slt          t3, s1, s10
                  srl          sp, a0, s9
                  slli         s4, s5, 13
                  add          t3, a6, t6
                  srl          t0, s4, a7
                  auipc        t0, 1029417
                  srli         sp, s1, 29
                  slli         s9, gp, 10
                  sltiu        s5, t6, -1060
                  or           t0, t1, a2
                  xori         s5, t3, 1096
                  slli         tp, ra, 11
                  sltiu        tp, s6, -114
                  or           a7, s7, a6
                  sll          tp, a2, a0
                  sltu         t5, s3, s7
                  and          s11, s3, a3
                  sll          s9, ra, s10
                  ori          a0, zero, 1007
                  xor          a1, a7, s1
                  slt          a0, s1, gp
                  sll          a6, t5, s3
                  slt          t6, zero, s7
                  ori          s1, s9, 800
                  xori         s9, t3, 329
                  and          ra, sp, s1
                  slli         a4, s5, 4
                  srli         t0, a5, 1
                  and          a2, a2, ra
                  sll          t5, t4, t0
                  xor          t3, a4, t2
                  srl          a0, s0, s9
                  lui          s3, 500146
                  sltu         t5, gp, s11
                  srli         t3, a7, 23
                  slti         t4, sp, -625
                  xor          s10, s2, zero
                  ori          s10, t2, 1125
                  sltiu        ra, ra, 1192
                  lui          s5, 35731
                  xor          s0, s9, s3
                  srli         t0, a2, 10
                  srli         a7, s6, 5
                  addi         s10, tp, -585
                  slli         gp, s11, 15
                  and          s1, a0, s11
                  slt          a3, ra, t3
                  or           s8, s6, sp
                  sra          a4, gp, a3
                  andi         ra, s6, 141
                  srl          a5, s0, s6
                  andi         a4, s4, 1300
                  slt          s0, sp, ra
                  srai         t1, t0, 8
                  slti         a4, s0, 1425
                  and          s8, t0, a4
                  slti         gp, s1, -421
                  and          s0, a2, s4
                  sltiu        a5, t2, -1377
                  srli         s0, a5, 20
                  xor          t4, s9, s3
                  sra          t3, a5, a2
                  slti         a5, t1, -699
                  sra          a7, zero, s10
                  sll          a5, s0, s5
                  srli         a4, s4, 12
                  srai         zero, s7, 12
                  sub          a6, t3, s4
                  srai         ra, t1, 15
                  xori         tp, a6, 1376
                  srai         a6, t4, 18
                  xori         s0, t5, 480
                  sltiu        s6, gp, -1397
                  sra          a3, s5, a0
                  slti         a0, a7, 1340
                  andi         a1, t4, -506
                  xor          s4, s4, t6
                  srl          s4, t5, a1
                  andi         s8, a0, 135
                  lui          a4, 771515
                  sra          a5, a3, a0
                  slti         s4, t0, 525
                  andi         t3, a2, 464
                  ori          s4, s4, -2012
                  auipc        a4, 144681
                  and          a2, s2, a2
                  andi         a4, a4, -1372
                  sltu         s5, a3, ra
                  slti         t0, t5, 1973
                  xori         s4, a6, -1105
                  auipc        s9, 321504
                  andi         a4, s6, 1783
                  xori         t4, a5, -827
                  andi         a1, a6, 969
                  sltu         s3, ra, s6
                  sra          s1, s3, a3
                  slt          t6, s7, a7
                  addi         ra, s11, -1216
                  or           t1, t1, s4
                  auipc        a5, 100218
                  and          s10, t3, s6
                  slt          s5, tp, a6
                  add          t1, t5, s9
                  xori         s5, s2, -1541
                  sub          t4, gp, a1
                  auipc        s1, 669458
                  add          a3, s6, zero
                  slti         gp, s9, 2029
                  sltu         t1, t4, ra
                  or           t6, t6, a0
                  and          t6, tp, zero
                  or           s1, a5, s5
                  sra          a0, a6, sp
                  sll          s0, s4, a5
                  sub          a1, a2, ra
                  ori          t4, zero, 1601
                  xor          a4, a7, s4
                  sll          a7, t6, gp
                  sub          s5, zero, t0
                  addi         t6, tp, 1563
                  sub          sp, t4, t2
                  srai         a5, s7, 29
                  or           a6, sp, s2
                  sltu         s6, s1, gp
                  nop
                  and          s1, a2, a1
                  nop
                  or           tp, s8, s3
                  slt          zero, t0, t6
                  addi         a0, t4, 1255
                  sub          s3, t6, a6
                  slli         s6, s2, 12
                  sra          s11, t6, t6
                  sltu         s0, t0, s0
                  sltiu        sp, s4, -1394
                  slli         s1, t5, 16
                  add          a4, a2, a2
                  addi         s1, s11, 965
                  and          zero, s4, t6
                  sll          s9, a4, ra
                  xor          a4, sp, s7
                  srli         a5, sp, 11
                  and          s8, a2, t3
                  ori          a4, a0, -228
                  and          s5, s5, ra
                  sra          s10, s2, s9
                  and          a2, s11, t1
                  lui          t4, 44713
                  addi         t0, s10, -1541
                  sltiu        a5, a2, 152
                  srli         zero, s5, 15
                  lui          t5, 707034
                  add          a2, t2, t1
                  ori          t3, s3, -75
                  sltu         tp, s8, a1
                  andi         s6, a0, -1061
                  sltiu        t4, a6, -1408
                  add          zero, a0, s3
                  srli         tp, s5, 12
                  xor          t4, s4, a0
                  nop
                  slli         a5, s5, 0
                  auipc        s4, 699696
                  sltu         s10, s6, sp
                  addi         s6, t3, 1645
                  sltiu        t6, s6, 128
                  ori          ra, s5, -160
                  sltiu        ra, s8, 1657
                  srl          s10, t5, t5
                  add          tp, s5, t4
                  xor          s6, t2, t6
                  addi         a4, a5, 759
                  sub          a4, s1, t3
                  nop
                  sltu         a3, s5, sp
                  or           s6, s4, s11
                  addi         tp, a7, 1906
                  srli         s1, zero, 4
                  sub          s11, s10, s0
                  slli         s8, t4, 11
                  sltiu        s3, t1, 1640
                  sra          s0, t3, t3
                  srli         s3, t2, 3
                  nop
                  addi         s9, s0, 1198
                  add          zero, s4, a2
                  slt          t6, s0, a0
                  and          zero, s2, zero
                  add          s6, a0, s3
                  addi         zero, s6, 1738
                  addi         s3, sp, -1241
                  or           sp, sp, t4
                  andi         t3, s9, 33
                  auipc        a1, 136381
                  add          s8, s1, t3
                  add          ra, a0, t5
                  xori         s9, s8, -1266
                  slti         s8, a6, -1507
                  srl          ra, t4, t6
                  srai         a0, s9, 31
                  add          s9, s9, t4
                  sub          sp, s9, a0
                  srl          t5, s3, a1
                  srl          s4, a1, s3
                  slli         s8, zero, 12
                  sra          a1, t5, s9
                  slt          s10, s2, t1
                  slti         gp, ra, 542
                  sra          sp, s9, ra
                  sub          s5, s11, t4
                  and          sp, s7, a2
                  slti         t0, gp, 1741
                  slli         tp, t3, 19
                  and          a6, a6, a1
                  or           s1, tp, a1
                  xor          a4, a6, s6
                  and          s0, a0, t6
                  xor          a7, s7, t2
                  slt          a4, t3, s9
                  srai         a5, t5, 5
                  srli         t4, a7, 31
                  slli         a2, sp, 0
                  andi         a0, a5, 1815
                  and          t0, ra, gp
                  andi         t6, s1, -1726
                  srli         s5, s9, 20
                  nop
                  slt          a2, t5, s7
                  slt          gp, s7, a3
                  slti         s5, gp, -1065
                  sltu         tp, t6, s6
                  ori          s1, t5, 946
                  sltiu        s11, a5, -180
                  xor          s11, s1, t3
                  sll          zero, s5, a1
                  auipc        a4, 142716
                  sll          s6, a7, zero
                  xori         t4, t6, 793
                  sltiu        t4, s3, -797
                  or           t5, s4, a0
                  srl          a5, t3, s10
                  slli         s6, s11, 6
                  slli         t0, a3, 2
                  slli         t4, zero, 10
                  auipc        a3, 528905
                  or           a7, s1, s11
                  xor          s1, s11, s8
                  slti         s10, a7, -818
                  sra          t3, s4, a7
                  sltu         t6, t3, t1
                  and          t0, a3, t3
                  add          a5, t6, a0
                  sub          a6, s8, sp
                  andi         s8, zero, 1561
                  srl          t5, s9, s9
                  srli         s9, s9, 5
                  sub          a4, s3, a3
                  auipc        a1, 311982
                  nop
                  srli         s10, s8, 7
                  and          s6, gp, a5
                  lui          s5, 751517
                  sltu         a3, t4, sp
                  auipc        tp, 1023059
                  srai         a2, a7, 26
                  andi         a1, s1, -583
                  andi         t3, zero, 1053
                  slli         t1, a0, 13
                  auipc        a1, 588710
                  xor          a6, ra, a6
                  slt          a6, t0, t5
                  xor          a0, ra, s3
                  srl          gp, s7, a0
                  srli         t0, t5, 0
                  slt          s10, s9, t4
                  ori          s5, s10, -588
                  sltiu        t1, s4, 331
                  xor          s4, zero, a3
                  addi         t4, gp, 232
                  srai         s4, s10, 15
                  addi         ra, ra, -1748
                  andi         a7, gp, 392
                  slli         a5, s10, 18
                  sltiu        s10, s7, 1554
                  addi         zero, s1, -1611
                  slt          s11, s3, s8
                  addi         a0, a4, 103
                  slt          s4, t4, s0
                  sltiu        a2, s2, -374
                  sltiu        a4, t0, -853
                  xor          t6, s10, ra
                  slt          sp, a5, gp
                  nop
                  nop
                  srli         tp, a7, 20
                  sll          s3, s7, s1
                  lui          s8, 407338
                  ori          s3, s7, -1278
                  sra          s4, zero, t4
                  add          sp, s9, gp
                  add          s3, zero, s11
                  and          t1, t5, sp
                  sltu         a1, s7, tp
                  slli         ra, t2, 2
                  nop
                  srli         gp, a4, 10
                  slli         s0, a2, 19
                  sll          a6, zero, tp
                  xori         t1, s8, -1740
                  add          a2, s7, t6
                  slt          a3, s4, t0
                  sra          ra, a6, s11
                  srai         t4, s6, 20
                  xor          a0, t6, s11
                  xor          t1, a1, s2
                  srai         t1, s2, 11
                  slt          s4, t5, a0
                  slt          a4, a1, s10
                  slt          sp, s0, s11
                  ori          s1, t6, 1291
                  ori          a7, s10, 824
                  slli         a4, a4, 6
                  sra          s4, s1, s3
                  sra          t0, s2, a7
                  srl          s11, s11, sp
                  lui          s10, 210419
                  andi         s5, s2, -1924
                  nop
                  srli         s11, t4, 4
                  slti         t5, gp, -1777
                  ori          t1, gp, -259
                  slli         s8, s3, 0
                  sra          a2, gp, s7
                  sll          a4, sp, sp
                  andi         s11, t0, 1865
                  xor          sp, ra, s3
                  andi         sp, a7, -520
                  addi         s3, ra, -341
                  srai         a5, a4, 15
                  andi         sp, a3, 1134
                  nop
                  sltiu        s10, t0, 717
                  xor          s10, a1, s11
                  add          t1, ra, t3
                  sltiu        a7, gp, 1818
                  add          a3, s5, a0
                  lui          t3, 113447
                  slli         a0, s0, 8
                  xori         ra, s0, 1641
                  nop
                  xor          t3, t6, a2
                  slli         gp, s4, 14
                  or           s3, s3, s4
                  sra          t6, s9, s3
                  ori          t3, ra, 1522
                  slt          ra, a3, s11
                  sltiu        t0, s11, 1583
                  slti         s6, s5, -180
                  sltu         s11, s2, a4
                  lui          sp, 852070
                  sra          a2, tp, a0
                  or           s6, a0, t1
                  sltu         t0, t4, s3
                  nop
                  xori         t3, s9, -341
                  and          a4, zero, a7
                  srl          a2, s0, a4
                  and          s8, s5, s11
                  lui          a2, 704591
                  ori          t4, a1, -1416
                  srli         s10, a2, 26
                  srai         a4, sp, 23
                  add          tp, t6, ra
                  sltu         t3, a1, tp
                  andi         tp, t6, 1677
                  li           a3, 0x11aa4ee0 #start riscv_int_numeric_corner_stream_17
                  li           t0, 0x80000000
                  li           tp, 0x80000000
                  li           s9, 0x80000000
                  li           s10, 0x80000000
                  li           s1, 0x80000000
                  li           a4, 0x0
                  li           t4, 0x0
                  li           t1, 0xffffffff
                  li           t6, 0x12e07ca
                  addi         s10, s1, 1744
                  addi         a3, s10, 1376
                  lui          t4, 266359
                  addi         t1, s10, 770
                  sub          t4, t6, t0
                  nop
                  addi         t4, t6, 1748
                  nop
                  lui          t1, 176095
                  sub          tp, s10, t1
                  addi         t0, t4, 1505
                  auipc        s1, 96865
                  auipc        t6, 385004
                  sub          t6, a4, s9
                  nop
                  nop
                  lui          t0, 344607
                  lui          s10, 949412
                  sub          a4, t6, a4 #end riscv_int_numeric_corner_stream_17
                  slti         s6, t1, 1638
                  srli         zero, s4, 19
                  srli         a1, a2, 14
                  andi         s11, s1, 581
                  sll          a4, a3, t6
                  sltiu        t3, t4, -987
                  andi         s11, a3, -1666
                  srai         zero, tp, 26
                  auipc        s10, 1004590
                  add          s6, s5, a5
                  slti         s10, tp, -1229
                  srli         t1, t6, 30
                  slli         t3, s5, 23
                  sltu         s4, gp, s11
                  sltu         s10, a3, t5
                  auipc        zero, 634015
                  auipc        s1, 163995
                  sltiu        s5, a7, 1287
                  srai         t3, s9, 18
                  sltu         t5, t2, gp
                  nop
                  sll          gp, s7, s8
                  xori         s4, s7, -1630
                  ori          s10, s8, 1330
                  sltiu        s8, s5, -1530
                  slt          t4, s8, s7
                  auipc        t4, 293943
                  and          sp, s5, t3
                  srli         ra, s4, 23
                  srl          t1, s2, a1
                  srai         s1, s2, 29
                  and          t6, s0, t0
                  sra          s3, t6, s11
                  or           s9, t1, s6
                  xori         a4, s7, -1242
                  andi         tp, zero, -1633
                  xori         sp, t3, -1026
                  sltiu        gp, s4, 1590
                  sra          s8, a6, a4
                  andi         s4, s0, 760
                  xor          ra, zero, s2
                  lui          tp, 626668
                  and          t4, s9, t6
                  or           s3, s6, s4
                  lui          a4, 793318
                  sltiu        t0, a0, -272
                  xori         s5, t0, -1008
                  or           gp, s7, s5
                  srai         s6, s3, 23
                  srli         sp, s1, 12
                  add          a0, t5, s3
                  xor          s1, s8, t5
                  ori          a7, zero, 185
                  add          sp, a2, s9
                  slli         tp, s8, 23
                  srai         tp, s10, 31
                  add          s11, s3, zero
                  srai         a4, a7, 0
                  auipc        a6, 868247
                  ori          s4, s11, -1518
                  add          s9, a1, t1
                  and          sp, tp, s7
                  xori         tp, zero, -1680
                  add          a7, gp, a2
                  slti         a0, s8, -10
                  addi         zero, s0, 154
                  slli         a3, zero, 4
                  xori         a3, t4, 1467
                  slti         a4, s7, -1503
                  srli         gp, t6, 5
                  lui          s9, 407643
                  slli         s3, t2, 17
                  slt          s3, s10, s5
                  sltiu        a5, s4, -614
                  srli         s3, s8, 29
                  slti         s1, sp, -1974
                  srl          a3, s5, a3
                  sra          t3, s9, s2
                  sra          s4, s3, s7
                  slli         a3, a3, 2
                  xor          s0, s7, gp
                  slti         a6, s0, -1366
                  xor          t0, s8, a6
                  lui          t6, 936564
                  sltiu        t6, sp, -266
                  xori         a1, s2, -1381
                  add          a6, s11, s0
                  srai         gp, t4, 18
                  sll          t6, t3, t1
                  srai         s0, zero, 29
                  sltiu        t1, gp, -1165
                  add          s3, s4, a4
                  and          t4, s8, ra
                  sub          a2, a2, a7
                  lui          s3, 879844
                  and          s11, zero, a5
                  slli         a7, ra, 11
                  add          a5, s2, a4
                  and          s8, sp, t5
                  xor          s10, s8, a5
                  sll          a3, a5, s1
                  sra          t0, a7, a5
                  sltu         gp, t0, t6
                  auipc        s1, 27991
                  auipc        t3, 834015
                  slli         t5, t4, 4
                  auipc        a0, 267610
                  xori         t6, tp, -800
                  addi         s8, a0, 1164
                  auipc        s6, 982129
                  and          t6, s1, s7
                  srl          t6, a7, s3
                  srai         a1, s10, 10
                  sltiu        t1, s3, 423
                  auipc        s11, 924104
                  or           a2, tp, t3
                  slt          t4, a7, t2
                  slti         zero, s3, 233
                  ori          t4, a0, 1124
                  lui          t5, 803410
                  slti         t1, s5, 1116
                  or           s9, t3, a2
                  or           a3, t6, a1
                  and          s1, t0, a2
                  xor          t5, s3, s1
                  xori         t5, a4, -1603
                  sltu         s5, s1, a3
                  xori         t6, s5, -820
                  xor          t0, t0, s1
                  or           sp, s3, t6
                  sltiu        a4, t3, -531
                  andi         sp, s9, 239
                  slli         a2, zero, 16
                  sll          a7, s1, a6
                  xori         s9, a5, 1387
                  addi         gp, a3, -31
                  or           ra, s10, t2
                  xori         ra, t1, 1435
                  srai         s4, gp, 21
                  sll          t5, a6, zero
                  srai         a6, s7, 24
                  and          s8, s8, zero
                  sltu         a7, zero, s10
                  addi         t4, tp, 869
                  or           a0, s8, t4
                  nop
                  and          sp, s7, a6
                  sltu         sp, a6, t5
                  sltu         gp, t1, s11
                  add          t6, t2, s0
                  slli         a2, zero, 21
                  srli         s8, s10, 29
                  auipc        t4, 215762
                  sub          t1, a1, t3
                  or           a2, s9, s8
                  auipc        t5, 828452
                  sub          a3, t1, s6
                  sub          t3, s6, ra
                  xor          t6, s7, a7
                  andi         a1, t2, 424
                  sltiu        t4, s4, -831
                  or           a1, t4, a5
                  sltiu        t5, s11, 139
                  auipc        s9, 243438
                  andi         t4, s5, 869
                  slli         s0, s4, 25
                  ori          ra, a4, 1341
                  ori          a7, s10, 1219
                  xori         a4, a1, -986
                  and          t6, s10, a3
                  slti         s11, t4, -922
                  nop
                  ori          s6, s5, 637
                  ori          s1, a4, 323
                  xor          a2, s7, t4
                  sltu         t1, t3, zero
                  xor          a1, t2, s10
                  auipc        t1, 59348
                  add          t1, a5, a2
                  and          s1, t2, sp
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           a4, 0xffffffff
                  li           t3, 0xffffffff
                  li           t0, 0x0
                  li           a7, 0xffffffff
                  li           a0, 0xffffffff
                  li           sp, 0xffffffff
                  li           s4, 0x80000000
                  li           t6, 0x0
                  li           s3, 0x80000000
                  sub          s3, s4, t0
                  addi         sp, t6, -553
                  lui          a6, 2976
                  addi         a7, t0, 528
                  sub          sp, s4, sp
                  auipc        a4, 771774
                  sub          a6, t0, a4
                  addi         s4, a7, -721
                  sub          sp, sp, sp
                  sub          s3, a4, s3
                  addi         t0, a6, 1263
                  add          t3, s4, t0
                  auipc        a4, 103539
                  nop
                  auipc        a4, 695783
                  addi         t0, a0, 648
                  sub          sp, a7, t0
                  lui          t6, 306164
                  addi         a0, a4, 998
                  auipc        t0, 145827 #end riscv_int_numeric_corner_stream_15
                  slti         t1, a5, 1114
                  addi         t3, s11, 506
                  or           ra, s7, a1
                  srl          s3, a2, t0
                  ori          t4, t6, 1757
                  sltiu        a4, s2, -1322
                  slt          a5, t0, s5
                  sub          sp, a0, t1
                  sltu         t6, a4, s6
                  ori          s11, s5, 1731
                  or           gp, t5, s5
                  add          sp, a1, t3
                  slli         a4, a7, 16
                  nop
                  ori          a7, a0, 567
                  auipc        t1, 733348
                  lui          a5, 277200
                  or           s1, t0, s10
                  lui          s9, 238974
                  addi         s4, a7, 233
                  slti         a4, s2, 207
                  auipc        gp, 998101
                  slli         a2, gp, 29
                  slti         t6, a4, -842
                  andi         zero, a2, 1979
                  slti         a7, a3, -676
                  srl          s4, s5, gp
                  xor          t4, tp, a0
                  sll          sp, s11, a0
                  ori          s10, t3, 2013
                  srl          ra, a4, s7
                  sltiu        zero, t5, -555
                  sub          a2, t6, s6
                  add          t3, t1, s3
                  sub          s5, a2, s5
                  sra          sp, a2, a7
                  addi         s11, s3, 117
                  sub          s11, a3, s8
                  sub          s8, t0, t5
                  sltiu        s11, a2, 120
                  srli         ra, s7, 29
                  srai         gp, t2, 25
                  or           s5, s0, t4
                  srai         t3, t1, 17
                  add          zero, a1, a5
                  or           t1, a5, s8
                  sra          tp, t2, s4
                  and          zero, t5, s11
                  sub          a7, t0, s5
                  andi         t5, s5, -2018
                  lui          a2, 918774
                  or           t0, a1, a5
                  nop
                  sub          s0, s8, sp
                  xori         a6, t6, -67
                  xori         zero, a3, -840
                  srl          zero, t6, tp
                  slt          s1, a0, a6
                  slt          s0, tp, s6
                  slli         s6, ra, 3
                  sll          sp, tp, gp
                  xori         a0, t5, 1853
                  slli         t6, a1, 10
                  nop
                  slt          t6, t0, s2
                  sra          s1, s8, a3
                  nop
                  srl          a0, a6, s4
                  sra          s6, zero, t2
                  slt          s10, tp, s1
                  sltu         t4, s10, ra
                  andi         a0, s5, -1957
                  and          s5, a6, t6
                  slti         t3, s8, -1999
                  sltu         sp, s2, s5
                  sltu         a3, s8, s8
                  slli         t1, t3, 18
                  slt          s8, t5, ra
                  auipc        s8, 929001
                  xori         zero, tp, 413
                  slti         s4, t0, 458
                  xor          t1, s7, a7
                  slti         t3, s5, -849
                  ori          a6, a1, -1792
                  slli         s3, t2, 2
                  sll          t5, t2, ra
                  ori          a5, a5, -1976
                  and          s4, s1, a0
                  sltu         gp, a0, a1
                  srai         a1, ra, 7
                  xor          a0, a6, s10
                  or           a6, tp, t2
                  auipc        s6, 621700
                  slt          ra, s2, t6
                  or           a5, t3, sp
                  sltiu        s1, ra, -881
                  ori          s1, s4, 1957
                  slti         a4, a1, 337
                  slli         s11, a6, 1
                  sll          s6, s4, s10
                  srli         a5, s8, 27
                  auipc        s0, 478180
                  nop
                  slli         s3, t6, 4
                  addi         s6, a2, 1182
                  sra          t5, t5, ra
                  sll          t3, t4, gp
                  auipc        a0, 898256
                  sltiu        a4, ra, -619
                  xor          a4, s1, t5
                  nop
                  sra          a3, tp, t0
                  xori         t5, a4, 940
                  srai         a3, a0, 21
                  slt          tp, t6, s5
                  srl          a6, a6, t0
                  sll          s6, s11, t4
                  and          t5, t5, s9
                  ori          a4, t2, -1861
                  and          t3, s7, s6
                  or           t5, s0, a5
                  srai         ra, t6, 9
                  addi         a1, a1, -455
                  ori          a7, t2, 1368
                  or           a1, s9, s3
                  add          a2, s5, t1
                  sra          ra, t6, t6
                  srai         a3, s11, 21
                  sll          s9, s4, s5
                  srli         t6, a1, 3
                  slti         a7, sp, 794
                  slti         s0, a7, 1550
                  sll          ra, a7, a5
                  sra          a0, sp, s6
                  slti         a5, s3, 1857
                  sra          t0, s1, a1
                  slti         t6, zero, -1923
                  srl          s8, ra, s8
                  or           a4, s8, t5
                  or           a1, a4, a4
                  srl          sp, a5, s10
                  addi         s10, a6, -29
                  sub          a3, a3, zero
                  sll          ra, t3, a5
                  slt          s11, s5, s5
                  ori          s0, s0, 379
                  nop
                  nop
                  sltiu        s5, gp, -1830
                  add          t0, gp, a6
                  slti         t3, t2, 50
                  sll          sp, s11, s2
                  srai         t0, tp, 11
                  slt          t3, a5, s7
                  and          t6, a7, s8
                  andi         sp, s8, 452
                  xor          s5, t4, s5
                  srai         s6, t2, 13
                  andi         t6, t0, 1096
                  xori         gp, s5, -1816
                  ori          s11, a6, 570
                  srl          ra, a7, s5
                  sra          a7, t0, a0
                  slli         ra, t4, 0
                  auipc        a7, 502671
                  slt          a3, a2, s7
                  ori          a2, t2, 1990
                  sltiu        ra, t4, -1421
                  auipc        zero, 379888
                  srai         t3, a6, 13
                  addi         s1, zero, -943
                  and          a3, t4, a7
                  xori         tp, s9, -1939
                  slli         s6, a5, 0
                  sll          t5, a7, gp
                  and          t3, a7, s5
                  ori          s9, t6, -1828
                  xor          a5, t1, a2
                  srl          a6, zero, s10
                  sub          a0, a1, t3
                  sll          s8, sp, a4
                  sll          tp, s9, s6
                  and          a6, gp, a4
                  sltu         gp, a2, s4
                  xor          t0, t6, s5
                  auipc        s4, 611312
                  slti         s3, zero, 216
                  lui          t1, 813762
                  or           a0, s9, t4
                  sra          s0, s11, t0
                  xori         a7, t4, 92
                  xori         s10, t5, 1373
                  srl          s4, a6, s5
                  add          s4, t1, sp
                  xor          s0, t6, a1
                  ori          s4, gp, 1522
                  srl          s3, s2, a2
                  xori         s8, tp, 2041
                  ori          s0, a3, 486
                  or           a0, a5, t0
                  sltiu        ra, s11, -458
                  lui          s3, 277433
                  sub          tp, t2, s1
                  slt          s11, s5, sp
                  sra          s4, t1, sp
                  srl          s10, zero, t3
                  sltiu        s0, s6, 441
                  add          s3, s0, s9
                  sra          a5, t2, a5
                  and          s6, t1, s9
                  xori         s5, t4, -1986
                  sub          s10, s3, a2
                  xori         a5, a2, 2015
                  auipc        a1, 493155
                  lui          tp, 895518
                  xori         t4, a7, 1433
                  ori          t0, t0, -1732
                  sra          gp, a1, s9
                  sll          t6, s7, s11
                  srli         s4, s11, 24
                  lui          a3, 796054
                  srai         t4, t3, 28
                  sltu         a6, t5, gp
                  sll          a5, a0, t6
                  sll          s11, tp, a0
                  slti         s5, s6, 124
                  addi         t3, a4, 1038
                  sra          t5, s3, s9
                  sll          a4, t0, t1
                  xori         s10, t2, 1473
                  slt          s0, a5, s3
                  sra          a3, t2, s11
                  sll          tp, a0, s1
                  sltiu        t0, s0, 931
                  and          t0, t5, t0
                  auipc        s11, 604212
                  sltiu        tp, s4, -1248
                  nop
                  andi         t5, s1, 3
                  srl          t5, s4, ra
                  addi         t5, s6, 1427
                  slti         t5, t2, 543
                  or           t4, t5, s4
                  srl          gp, s6, s11
                  andi         s5, s7, -1412
                  and          a3, s1, gp
                  sltiu        t5, tp, -1885
                  or           zero, a6, zero
                  slt          a5, a5, s8
                  slt          s5, s0, sp
                  lui          s6, 786612
                  auipc        a4, 10202
                  sltiu        t6, gp, -2029
                  slt          t0, zero, s0
                  slt          t4, ra, t1
                  sra          gp, a6, t3
                  addi         s10, zero, 956
                  srl          tp, gp, a7
                  xor          s9, a0, zero
                  lui          s5, 460728
                  xori         t0, s8, -2016
                  auipc        s5, 836395
                  addi         a6, s7, -1077
                  ori          t1, t2, -363
                  xor          a5, t1, s7
                  addi         gp, s9, 489
                  sll          s11, t5, s7
                  slli         s5, s8, 14
                  sra          t6, s10, t0
                  srai         a2, t5, 10
                  srli         a0, t5, 21
                  srli         a7, ra, 14
                  slti         s10, t1, 264
                  lui          s1, 1047215
                  sltu         a7, a6, a4
                  xori         zero, s11, -1729
                  sltiu        a0, t6, -523
                  slt          a6, a7, zero
                  sra          a4, s5, s0
                  xori         a0, s10, -1337
                  sub          t6, s11, a1
                  srli         t4, a4, 23
                  srai         a5, s2, 3
                  srai         s0, a2, 0
                  auipc        t4, 37102
                  slli         s6, a0, 18
                  and          s10, s4, t3
                  xori         t0, s7, -389
                  srai         s10, a4, 27
                  and          a5, t3, a2
                  slti         t6, sp, 479
                  auipc        s8, 52178
                  nop
                  add          s6, s1, t5
                  sltiu        s6, a2, -1462
                  srl          t4, t4, s9
                  sra          t5, s2, a0
                  add          s1, s3, a7
                  slt          s0, s9, t4
                  srl          sp, tp, t4
                  andi         tp, s11, -294
                  xori         s4, t3, -938
                  or           a6, a1, gp
                  andi         a7, s8, -22
                  xor          t3, s5, s6
                  sll          ra, t0, s10
                  ori          s10, a6, -1208
                  srai         s11, s1, 21
                  xori         t1, tp, -962
                  sltu         s3, a1, t1
                  and          t0, s5, s1
                  srl          t4, a7, ra
                  sub          a0, s1, s10
                  andi         s9, a3, 1803
                  auipc        s11, 238845
                  and          t5, s6, a3
                  ori          s4, sp, 1614
                  auipc        gp, 493008
                  sll          a1, sp, s0
                  add          a2, ra, s2
                  sra          s9, s11, t4
                  add          s6, s8, t6
                  srai         s6, a7, 17
                  nop
                  xori         s11, gp, 710
                  xori         sp, s5, 438
                  andi         s1, t4, 797
                  srai         a2, a7, 19
                  xor          a1, a4, gp
                  sub          a1, ra, s6
                  slli         a1, s10, 22
                  lui          s6, 809566
                  xor          gp, gp, a2
                  or           a0, sp, s6
                  xor          s3, s0, s6
                  sll          t4, a7, t3
                  auipc        a1, 279841
                  addi         s5, s3, 694
                  slli         s5, s5, 24
                  sltiu        a5, t5, -94
                  xor          zero, s9, a2
                  add          t6, s3, t0
                  srai         t0, ra, 22
                  srai         s11, t0, 25
                  xor          gp, a4, t3
                  sll          t0, s3, s11
                  ori          a3, tp, 1175
                  nop
                  or           t0, a7, s0
                  sltiu        t1, t0, 136
                  srli         s11, s8, 24
                  sltu         t6, s7, t3
                  srai         s0, a5, 22
                  srli         sp, t4, 24
                  srai         a6, t5, 23
                  ori          t5, s3, 1622
                  and          a3, a5, a3
                  sub          s11, tp, s2
                  srl          a0, t4, t0
                  ori          a0, a0, 1053
                  addi         a6, sp, -192
                  and          t1, t0, s8
                  andi         s8, s9, 1910
                  slli         a2, s10, 31
                  andi         a7, s4, 960
                  slti         t3, t2, 1711
                  slti         s5, t5, 1972
                  auipc        s3, 995485
                  sll          s9, s10, a2
                  srai         s6, a7, 17
                  xor          a5, s10, sp
                  sltu         a5, ra, zero
                  ori          s6, s7, -999
                  sll          a0, s8, s1
                  sltiu        s0, s0, 1501
                  add          ra, t1, s5
                  or           a2, t1, s1
                  sltiu        zero, s9, 251
                  xori         a7, tp, 1269
                  lui          a2, 882441
                  sltiu        a1, gp, 658
                  andi         s8, a3, -1559
                  ori          t5, s10, 1217
                  sltu         s11, t2, t3
                  ori          a4, t1, -277
                  slti         t6, s4, 1120
                  srli         tp, t3, 9
                  xori         s9, s0, 1509
                  slli         t3, s2, 20
                  sltu         a7, t3, s9
                  and          t3, s2, a2
                  slti         s9, a1, 1475
                  sra          a7, a7, sp
                  ori          sp, a1, 476
                  addi         tp, t5, -1103
                  add          a6, s11, s1
                  nop
                  slt          a5, a7, s10
                  nop
                  sll          t1, t5, a4
                  addi         s4, s10, 146
                  andi         s11, s11, 1233
                  lui          tp, 894150
                  srl          gp, t2, a0
                  lui          ra, 145584
                  sltu         a7, s0, t6
                  add          sp, s2, t2
                  ori          t5, s5, 305
                  srl          gp, s7, t5
                  xori         s9, t1, -272
                  or           a7, s3, t3
                  slt          t4, t1, a6
                  sra          a0, a3, s0
                  or           s3, s6, tp
                  srl          t4, a5, a7
                  sltiu        zero, s5, -50
                  sll          s10, s10, a3
                  add          a7, s7, a7
                  ori          t1, gp, 590
                  and          s0, t6, t4
                  slti         gp, s1, 2001
                  or           tp, s0, t2
                  or           a0, t1, gp
                  and          t1, s4, s8
                  nop
                  sltu         s5, s3, t1
                  slti         s10, s9, -339
                  xor          tp, gp, s5
                  srli         s6, s8, 27
                  srl          t5, a6, t5
                  and          a1, a4, a3
                  srl          zero, s3, a3
                  srli         s3, t2, 18
                  or           s10, s11, s0
                  sltu         zero, s10, a1
                  srli         s3, sp, 5
                  or           gp, a1, t2
                  addi         a1, s5, 1747
                  xor          t3, a2, sp
                  and          a7, t0, a1
                  nop
                  andi         t1, s10, 860
                  xori         a5, s0, -478
                  or           ra, s0, gp
                  andi         s3, a4, 1148
                  xori         t1, sp, 315
                  andi         gp, t0, 870
                  sra          gp, a0, s0
                  ori          tp, s11, -1027
                  sll          a7, gp, a5
                  srli         gp, s5, 2
                  srl          s0, s4, s6
                  and          a3, t6, s2
                  or           s6, s9, s6
                  ori          s8, s8, 555
                  sll          t4, s2, s1
                  add          a7, zero, s1
                  srli         ra, sp, 2
                  and          a3, tp, s7
                  sltu         s1, t0, s10
                  andi         s1, a1, -1717
                  auipc        a1, 508149
                  add          t3, t4, s9
                  or           t5, s11, t1
                  slli         s5, a3, 27
                  slli         s5, s9, 14
                  nop
                  sltiu        t4, t2, 1922
                  andi         a5, a6, -1965
                  sub          t4, s8, s11
                  slt          s6, t5, t4
                  addi         a1, t2, 2020
                  andi         a7, s6, -1873
                  sltu         gp, s0, a4
                  sltiu        s1, s0, -1059
                  srli         s5, s1, 8
                  srli         s0, a0, 29
                  or           sp, gp, a5
                  slt          tp, a2, tp
                  xor          a7, s7, t2
                  srli         a6, s0, 4
                  lui          s9, 684803
                  nop
                  auipc        a6, 167954
                  lui          s5, 207438
                  slti         tp, t1, -1145
                  nop
                  srai         s6, a5, 5
                  or           t1, s0, t5
                  sra          s4, a1, s8
                  xori         t1, s8, 1813
                  sll          a0, t4, t5
                  lui          s1, 985521
                  xori         s9, s7, -1022
                  slt          a1, s9, t6
                  and          a0, s2, sp
                  andi         t0, s0, 1844
                  slti         gp, t2, 576
                  or           t1, gp, s10
                  ori          t4, tp, -1107
                  or           ra, t3, ra
                  sltiu        a3, s9, -108
                  andi         s9, a4, 517
                  srli         t6, a3, 27
                  nop
                  andi         a0, s3, 96
                  slti         a3, s7, -970
                  ori          a0, s0, -797
                  xor          s1, tp, t5
                  sll          s4, s11, s5
                  or           s11, s5, t2
                  auipc        s4, 90334
                  srli         s8, a4, 16
                  slti         s8, s5, 904
                  sub          tp, a7, s5
                  slli         a2, gp, 20
                  add          t0, s4, s10
                  sltiu        t4, a1, 1728
                  addi         a2, s11, -483
                  sltiu        s8, a7, 243
                  sub          s10, s2, s11
                  slti         t4, a6, -1906
                  auipc        gp, 826625
                  lui          a6, 750841
                  auipc        sp, 686879
                  srli         a6, s11, 12
                  and          t6, a1, a7
                  and          s6, s4, s3
                  add          a5, s1, t1
                  xor          s5, s3, sp
                  slti         s9, t5, -1213
                  srl          t0, a3, t3
                  slt          a6, tp, a1
                  sltu         a3, a1, a7
                  sltu         t0, t4, a4
                  sub          t4, t3, ra
                  xori         s11, tp, -943
                  sltiu        a0, tp, -1313
                  addi         t3, a3, -1769
                  auipc        sp, 286803
                  slti         a4, s11, 490
                  addi         t0, a3, 1974
                  sra          s9, gp, gp
                  or           a7, zero, s8
                  sra          s9, t2, ra
                  srai         a1, s11, 3
                  andi         t1, s7, 1863
                  auipc        t0, 772574
                  auipc        s0, 665602
                  andi         t1, s10, -49
                  addi         a3, t4, -1666
                  add          t5, s9, a4
                  xori         t4, s1, 126
                  sltiu        t1, gp, 1760
                  xori         t6, t3, -38
                  add          s1, s9, s10
                  or           a0, s10, a1
                  sra          s11, s8, s0
                  or           t4, s4, a7
                  or           s9, s8, s3
                  sltu         s5, a3, t5
                  addi         a7, gp, 751
                  andi         t3, s9, -1495
                  srl          a4, s11, t2
                  and          gp, a1, a0
                  sltu         t4, a6, sp
                  li           a2, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           s1, 0x0
                  li           s9, 0xffffffff
                  li           tp, 0x0
                  li           s6, 0xffffffff
                  li           t5, 0x0
                  li           s11, 0x863cdd86
                  li           s3, 0xffffffff
                  li           t3, 0xffffffff
                  li           t0, 0x5c178133
                  auipc        s11, 116664
                  auipc        s9, 15681
                  auipc        t0, 159243
                  auipc        t0, 538027
                  auipc        s3, 793785
                  lui          s6, 918734
                  lui          s9, 534549
                  add          s11, s6, s11
                  auipc        s1, 607267
                  add          s11, s9, s6
                  addi         s9, t0, -930
                  nop
                  add          s9, s6, s9
                  nop
                  auipc        t3, 822092
                  nop
                  auipc        s3, 98804
                  sub          s9, s6, s9
                  addi         tp, t3, 536
                  nop
                  auipc        a2, 653265 #end riscv_int_numeric_corner_stream_11
                  and          s6, tp, s9
                  sub          gp, a7, s6
                  auipc        t6, 557065
                  or           t6, a3, a5
                  ori          s8, s9, -1441
                  sub          s4, a6, a7
                  slt          s9, a5, s10
                  andi         s3, a7, 777
                  li           s6, 0x62591433 #start riscv_int_numeric_corner_stream_1
                  li           s11, 0xd2656249
                  li           s5, 0xffffffff
                  li           s9, 0x2e6f0afa
                  li           t6, 0x4720f2dd
                  li           s3, 0xffffffff
                  li           s0, 0x0
                  li           a7, 0x80000000
                  li           t0, 0x0
                  li           a4, 0xffffffff
                  addi         s11, a7, 1983
                  auipc        s3, 627261
                  lui          s3, 362414
                  sub          a7, s6, s3
                  addi         s9, s0, -1511
                  nop
                  nop
                  add          a7, t0, t6
                  auipc        t0, 854887
                  lui          s3, 924722
                  add          a4, s0, t6
                  lui          s3, 543745
                  addi         t0, s5, 372
                  addi         a7, t6, -1950
                  nop
                  addi         s0, s0, 220
                  add          s11, s9, s11
                  nop
                  add          a4, a7, a7 #end riscv_int_numeric_corner_stream_1
                  auipc        t4, 512854
                  addi         sp, s1, 1495
                  srai         s0, ra, 14
                  srl          a3, s1, a1
                  auipc        s9, 211859
                  srl          a5, s0, s8
                  srli         s4, s6, 30
                  and          a3, a3, s11
                  sltu         tp, a4, a6
                  sub          s8, t1, a6
                  add          s1, s11, s5
                  andi         s4, ra, -225
                  xor          s1, s10, sp
                  srai         s9, s10, 10
                  sll          a0, zero, t2
                  slli         tp, s4, 2
                  srli         a5, t0, 2
                  srli         a3, t1, 18
                  or           t3, t5, t3
                  and          a6, s8, a6
                  srli         t6, t2, 5
                  xori         s0, a2, 1670
                  andi         s5, t2, -481
                  ori          s1, s2, -369
                  slti         t5, a7, -52
                  xor          s1, t3, t5
                  srl          a2, s4, t6
                  lui          s9, 927419
                  add          a1, t5, a5
                  and          t0, t0, s7
                  addi         s0, a5, -410
                  sra          s1, s2, s1
                  ori          t0, ra, -1630
                  slli         t0, t2, 27
                  srli         t0, gp, 20
                  andi         t1, t5, 789
                  srli         s4, sp, 4
                  slt          t6, t1, s4
                  slli         zero, a6, 27
                  sub          a1, s5, s0
                  slli         a1, s1, 17
                  xori         gp, t2, 862
                  add          s3, a6, t5
                  srl          ra, a0, a4
                  nop
                  sltiu        s11, s7, -1588
                  slt          a5, a0, tp
                  srl          t1, s2, s1
                  ori          zero, t3, 191
                  and          s9, a7, s11
                  xor          t6, sp, s6
                  srai         a3, a6, 8
                  add          s5, a7, a5
                  sll          a5, zero, t0
                  or           s11, a7, zero
                  and          s5, a3, ra
                  nop
                  and          tp, ra, a5
                  add          a4, gp, s6
                  srli         s8, a4, 14
                  sub          a0, s3, s6
                  add          t4, s6, tp
                  srai         s11, sp, 9
                  lui          a6, 670822
                  addi         a1, t6, -592
                  andi         t6, s9, -8
                  xori         t4, sp, 79
                  sltu         gp, s3, s3
                  sra          a3, a7, t2
                  xor          a3, a7, s6
                  and          s6, s3, s1
                  sltiu        zero, t1, -1499
                  srli         a1, s11, 17
                  srl          s11, s2, t5
                  andi         s9, a6, 167
                  slti         a6, gp, -492
                  addi         s3, t1, -1012
                  andi         sp, s11, -1880
                  srai         a6, t6, 4
                  sll          ra, t4, s2
                  auipc        s6, 188192
                  sub          tp, s3, a1
                  auipc        a0, 681177
                  slti         s6, t2, 1456
                  andi         a3, a0, -1522
                  slli         zero, s9, 4
                  sra          s3, a5, a6
                  andi         a1, a3, 1120
                  sll          s11, a6, t5
                  xori         s5, s3, 1057
                  lui          a4, 32366
                  auipc        s6, 785065
                  or           s1, s6, a6
                  andi         tp, s0, 1282
                  srl          a4, s5, t4
                  sltu         t1, tp, s0
                  slt          t4, s9, a1
                  nop
                  srai         s5, s10, 30
                  srli         s10, a3, 6
                  sltu         a5, a6, a4
                  xori         t6, s6, 267
                  nop
                  sra          a1, a2, s9
                  or           s5, t0, s11
                  xori         t1, sp, -977
                  srai         s0, zero, 18
                  srl          s10, s3, gp
                  srli         a5, s11, 16
                  ori          s0, s0, 327
                  sra          ra, t6, ra
                  and          ra, a4, gp
                  sltu         gp, s7, s6
                  lui          t6, 474358
                  and          s3, t5, a4
                  addi         s6, t3, 1539
                  xori         a1, t4, 1336
                  lui          s10, 361909
                  srli         gp, s3, 8
                  srli         t1, t3, 30
                  and          s6, t4, s7
                  add          a7, s9, a1
                  srl          s4, a6, t0
                  lui          a5, 71011
                  slti         t0, t1, 589
                  slt          a1, s8, zero
                  xor          t6, tp, tp
                  andi         a3, ra, -417
                  addi         s5, a3, -1141
                  sra          a0, s0, tp
                  sra          a1, s1, s10
                  srl          sp, s0, a4
                  lui          a0, 845892
                  slti         a5, t2, -712
                  lui          a4, 842517
                  auipc        s6, 681781
                  xori         ra, a5, 359
                  srli         s4, s6, 18
                  sltiu        s10, s9, -806
                  ori          t5, a0, -1276
                  slt          s3, s7, a3
                  srai         tp, a4, 30
                  srl          t4, t2, a2
                  srl          t3, s5, a3
                  sub          s11, t1, s7
                  or           a6, t6, sp
                  ori          t1, s8, 1390
                  srli         t5, zero, 15
                  and          a5, s9, s3
                  sub          a4, a6, s8
                  sub          t5, s0, s10
                  sltu         ra, s9, a4
                  nop
                  addi         a7, s5, 1768
                  auipc        a6, 420644
                  xor          s4, s1, zero
                  and          s6, t3, a2
                  andi         s0, s1, -644
                  slti         a0, s2, -639
                  slli         a1, ra, 9
                  srai         a5, a6, 4
                  nop
                  and          t3, a6, s3
                  addi         a7, sp, 498
                  slti         a0, tp, -755
                  and          t4, gp, s0
                  xori         a0, s0, 776
                  sltiu        s8, s9, -1659
                  slt          s10, s4, gp
                  add          tp, t5, t5
                  slt          s8, sp, t1
                  sll          a5, s6, a1
                  sltu         t6, s11, s8
                  srai         gp, s8, 7
                  sltiu        a5, s11, 457
                  slti         t4, s9, -1952
                  sub          s1, gp, s0
                  nop
                  srl          s3, s7, a2
                  add          s10, t3, t1
                  xor          zero, s3, zero
                  xori         t6, zero, -991
                  addi         t1, s7, 688
                  add          gp, s0, a6
                  srai         t1, a2, 8
                  sra          ra, s8, s2
                  addi         s10, s4, -1309
                  sltiu        a1, t4, 1287
                  add          zero, a2, t3
                  andi         a0, a2, -17
                  slti         t0, s8, -1330
                  sltiu        s8, a3, 1993
                  lui          t6, 391188
                  ori          s4, s3, 836
                  ori          s5, s1, 1602
                  andi         a5, t0, -559
                  sltiu        tp, s8, 608
                  sll          a6, a1, s1
                  xor          a4, s2, s3
                  auipc        s0, 207031
                  ori          sp, s0, -482
                  sltiu        s10, a1, 914
                  srl          t0, a2, ra
                  lui          ra, 635596
                  addi         zero, s3, -1960
                  add          s11, a3, s9
                  andi         t4, s3, 1192
                  nop
                  srli         s5, a0, 0
                  nop
                  nop
                  sltiu        a3, ra, 1636
                  ori          a0, a1, -841
                  add          s3, a1, s11
                  and          a1, s7, gp
                  sltiu        s0, zero, -1456
                  andi         t6, s8, 674
                  xori         ra, a5, 1283
                  sub          t1, s0, t2
                  sub          a6, zero, t2
                  andi         t0, a6, -1757
                  slti         a7, a6, 1008
                  sltiu        tp, ra, -1411
                  and          s1, t3, tp
                  nop
                  ori          sp, a7, -462
                  slt          s1, t3, s10
                  nop
                  lui          t5, 254392
                  sll          s5, t1, a2
                  srai         a6, t5, 19
                  slti         t0, s4, -737
                  srli         s9, tp, 20
                  ori          a1, s10, -1734
                  or           s10, t0, s10
                  sra          s11, s1, s8
                  srai         zero, s8, 7
                  addi         tp, s4, 207
                  auipc        zero, 837119
                  sub          s4, t0, a7
                  sub          s3, tp, s9
                  slt          ra, s4, t6
                  ori          a2, t0, -515
                  srli         s6, t3, 25
                  sub          t6, s3, s0
                  srli         a1, zero, 14
                  or           a4, s1, t6
                  ori          s6, s8, 1774
                  add          sp, s1, ra
                  lui          s9, 939803
                  srai         a2, s5, 2
                  addi         ra, s11, -1181
                  auipc        tp, 405970
                  and          t3, s1, s5
                  srai         t6, t4, 30
                  and          t3, s9, a1
                  slli         s0, tp, 21
                  slli         gp, zero, 30
                  lui          a0, 408295
                  sub          a1, s11, s11
                  srai         s5, t1, 22
                  sra          t5, s10, s4
                  sub          a5, t5, a6
                  add          t3, s4, a0
                  sltu         sp, t2, t5
                  slti         t3, t3, 1755
                  ori          t1, s0, -1796
                  andi         s5, a5, 158
                  sub          s3, s0, zero
                  sltiu        t3, t6, -1402
                  ori          t3, t6, -1966
                  sub          zero, t0, a1
                  srl          s8, s3, s5
                  sra          a7, t1, t4
                  or           a5, sp, gp
                  addi         s6, t2, -314
                  srai         zero, t6, 9
                  sra          t3, gp, t2
                  srl          t1, t0, t2
                  srai         s11, s10, 7
                  addi         s0, tp, -1453
                  xori         s1, a3, -747
                  andi         ra, gp, 1486
                  auipc        t5, 126269
                  srl          a6, s5, zero
                  srli         t0, sp, 25
                  add          s3, s3, s9
                  or           a5, a5, s3
                  andi         s11, s5, -988
                  auipc        a7, 212376
                  slli         t5, s7, 22
                  ori          t0, s6, -1758
                  sub          s0, s1, zero
                  addi         gp, zero, -697
                  slli         a4, a6, 14
                  add          a2, ra, tp
                  srl          ra, s4, s7
                  nop
                  srai         a5, s10, 15
                  ori          s9, a3, -692
                  srli         a1, s9, 26
                  sltu         s6, s1, t1
                  xori         t6, t5, 548
                  addi         a6, s1, -818
                  nop
                  srai         a1, a7, 6
                  xor          t4, t1, s2
                  add          a6, t1, a6
                  srl          s9, sp, s0
                  nop
                  add          s5, s10, gp
                  lui          a1, 749136
                  andi         s5, t4, -2047
                  slli         a5, a0, 24
                  xor          a6, t4, ra
                  addi         s4, s7, 158
                  slti         s5, a3, 1791
                  sll          t4, s4, t4
                  addi         t3, a2, 1702
                  srl          s4, a2, gp
                  srai         a6, s8, 6
                  sltiu        t6, s8, 470
                  nop
                  slt          tp, sp, a3
                  srl          t4, s2, s11
                  sltiu        a5, a2, -10
                  srl          s9, s5, s0
                  srl          t3, s3, t6
                  add          a1, a2, s4
                  slt          s8, s9, a5
                  sltu         ra, zero, a0
                  lui          gp, 208783
                  nop
                  addi         s8, t0, 636
                  slli         a5, ra, 17
                  srai         sp, s2, 21
                  auipc        a4, 588464
                  slt          a3, s3, s4
                  slt          a2, s4, t3
                  addi         sp, a0, -1286
                  slt          s0, t5, t4
                  srli         ra, a0, 8
                  sub          t0, s10, s11
                  sll          a2, sp, a3
                  nop
                  sra          t4, s10, s7
                  lui          s3, 997140
                  ori          zero, a5, 501
                  add          t3, zero, a6
                  srl          sp, s1, s3
                  slti         s5, s1, -1168
                  xor          a1, s3, s2
                  srli         tp, t6, 4
                  sltu         s9, a7, t1
                  addi         t6, a0, 583
                  lui          t3, 895848
                  sll          a3, t2, s9
                  srl          s4, zero, t6
                  and          s6, s11, gp
                  srli         ra, s5, 23
                  addi         a3, s2, -91
                  srli         s3, t0, 17
                  auipc        a7, 357732
                  or           sp, gp, a7
                  or           s8, a2, tp
                  addi         s8, a0, 944
                  xori         tp, s8, -438
                  or           a2, a2, a4
                  slt          s3, s4, a5
                  xori         s10, s4, -660
                  slt          s8, s0, s7
                  and          s9, a7, a0
                  addi         t0, s7, 915
                  sra          sp, ra, zero
                  nop
                  auipc        t1, 9082
                  nop
                  sll          s0, s6, s1
                  sltiu        t1, s2, -308
                  andi         s3, s3, 224
                  and          t4, t0, t3
                  srl          s6, s7, a1
                  and          s6, a2, t1
                  lui          a3, 483018
                  sll          s6, s11, s0
                  sra          a2, s0, s2
                  sub          a5, a6, t5
                  and          a5, a4, a5
                  lui          s10, 327506
                  sub          s9, a7, a6
                  sltiu        a5, a1, 1705
                  lui          s10, 366581
                  slti         s6, a3, 1141
                  xori         t6, s7, -687
                  auipc        s11, 460851
                  sub          t1, a5, s4
                  or           zero, a6, t4
                  lui          a3, 293671
                  srl          a4, s0, a5
                  sltu         a3, gp, t5
                  or           gp, t0, t6
                  auipc        gp, 40439
                  ori          s4, tp, -1159
                  or           a2, a1, t5
                  lui          s9, 275086
                  srl          a6, s6, t6
                  srl          s3, ra, a7
                  slti         s4, a0, 1051
                  sra          a4, t2, t4
                  srli         a3, a2, 5
                  srl          t3, a3, gp
                  srli         t6, sp, 26
                  slli         t4, tp, 4
                  slti         s1, t5, 551
                  slt          a2, t4, s7
                  or           s8, t1, t3
                  addi         a0, s6, -1965
                  addi         s6, s8, -571
                  nop
                  lui          gp, 225602
                  xor          ra, s4, s6
                  sra          s3, s0, s9
                  xori         t4, s2, 991
                  lui          a1, 511104
                  sll          s1, s1, a4
                  ori          s8, s1, 180
                  andi         s6, a4, -936
                  xor          a4, ra, gp
                  andi         sp, s8, 746
                  sltu         t3, s7, t5
                  lui          a1, 625744
                  or           s1, s7, s3
                  xori         a1, t5, 593
                  srai         s1, a1, 16
                  xori         s8, s5, -1045
                  slt          a2, s5, a0
                  srai         tp, t5, 21
                  srai         s3, t2, 4
                  or           t6, s9, a4
                  sra          zero, s5, a6
                  slt          s1, gp, t6
                  sll          t1, ra, s6
                  srai         a7, s0, 10
                  slli         a5, a6, 11
                  srl          a1, t2, s7
                  add          s8, t3, s9
                  sub          zero, t6, gp
                  sltu         s9, t1, s1
                  slli         s11, t4, 5
                  addi         ra, a7, 1051
                  xori         ra, s3, 570
                  sra          a3, t0, t1
                  and          s5, s8, a3
                  li           s3, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           sp, 0x80000000
                  li           a3, 0x0
                  li           s11, 0x0
                  li           s9, 0x0
                  li           tp, 0xffffffff
                  li           t6, 0x0
                  li           t5, 0x0
                  li           ra, 0xffffffff
                  li           s0, 0x0
                  addi         tp, s9, -505
                  lui          a3, 15792
                  lui          tp, 30455
                  add          tp, t5, sp
                  addi         a3, sp, -1536
                  add          tp, s9, s11
                  add          tp, ra, a3
                  addi         t5, sp, 1828
                  auipc        a3, 36080
                  sub          a3, sp, tp
                  auipc        a3, 522649
                  add          s0, a3, s3
                  nop
                  add          ra, s9, sp
                  addi         a3, a3, 211
                  auipc        t5, 318817
                  add          s9, s9, t5
                  auipc        s0, 1003938 #end riscv_int_numeric_corner_stream_9
                  andi         t6, a7, -1991
                  lui          a5, 84111
                  srl          t4, a5, tp
                  sll          t0, a2, s11
                  and          a3, t3, ra
                  slli         t4, s6, 3
                  srli         s5, t6, 22
                  add          t0, t2, a7
                  add          gp, t0, a7
                  add          a6, s0, ra
                  xori         a1, t0, 82
                  sub          a2, t6, s4
                  or           t1, t6, t3
                  xor          a1, s0, s7
                  lui          tp, 348578
                  sltiu        a3, t3, -1715
                  xori         t0, s0, 96
                  addi         tp, tp, -1876
                  nop
                  sltu         t6, a3, s9
                  ori          a3, t2, 571
                  sltu         t0, t5, a0
                  lui          t6, 602683
                  slli         s5, a0, 24
                  sra          a1, t4, ra
                  addi         tp, t4, -45
                  slt          tp, s2, s9
                  xor          s3, gp, gp
                  nop
                  xor          a3, a6, tp
                  auipc        a1, 772985
                  add          t5, t5, t0
                  sll          s3, a3, s3
                  or           t6, s2, s6
                  nop
                  and          a3, a0, s3
                  sltu         s6, ra, a3
                  andi         s8, gp, -529
                  srai         s3, a1, 28
                  sltiu        a5, tp, -1418
                  nop
                  lui          t4, 1022158
                  sltu         t3, s1, t5
                  xori         s3, tp, -776
                  andi         s0, a6, 338
                  xor          a1, s4, t2
                  srai         t3, a3, 12
                  or           a7, tp, t2
                  addi         t3, a1, -2000
                  slti         a4, t4, 255
                  lui          s5, 1004414
                  slli         t0, t1, 20
                  slt          zero, s8, sp
                  or           a4, s8, a5
                  andi         gp, t1, -600
                  sub          a4, t4, s3
                  ori          s6, s11, -1605
                  srl          s5, ra, s11
                  or           s0, sp, s5
                  or           s10, t2, a4
                  ori          s6, a2, 698
                  slti         tp, t6, 537
                  lui          t3, 389506
                  srl          gp, t0, s8
                  add          s1, s8, zero
                  or           s11, a6, ra
                  srai         zero, s2, 31
                  sra          t0, s9, s8
                  lui          s5, 651927
                  slti         s1, t5, 1159
                  sll          s5, t4, s0
                  srli         a0, a3, 28
                  and          s9, t3, a5
                  sra          a7, s2, s11
                  slti         s5, a6, -1950
                  lui          t5, 300691
                  sll          a2, s2, t5
                  slli         t1, a5, 15
                  and          a2, s8, s11
                  nop
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
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x18, x23, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_2:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x18, x23, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_3:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x18, x23, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_4:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x18, x23, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_5:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x18, x23, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_6:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x18, x23, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_7:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x18, x23, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_8:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x18, x23, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_9:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x18, x23, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_10:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x18, x23, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_11:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x18, x23, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_12:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x18, x23, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_13:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x18, x23, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_14:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x18, x23, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_15:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x18, x23, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
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
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x18, x23, zero
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x25, 0x3 # BREAKPOINT
                  beq x31, x25, ebreak_handler
                  li x25, 0x8 # ECALL_UMODE
                  beq x31, x25, ecall_handler
                  li x25, 0x9 # ECALL_SMODE
                  beq x31, x25, ecall_handler
                  li x25, 0xb # ECALL_MMODE
                  beq x31, x25, ecall_handler
                  li x25, 0x1
                  beq x31, x25, instr_fault_handler
                  li x25, 0x5
                  beq x31, x25, load_fault_handler
                  li x25, 0x7
                  beq x31, x25, store_fault_handler
                  li x25, 0xc
                  beq x31, x25, pt_fault_handler
                  li x25, 0xd
                  beq x31, x25, pt_fault_handler
                  li x25, 0xf
                  beq x31, x25, pt_fault_handler
                  li x25, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x25, illegal_instr_handler
                  csrr x25, 0x343 # MTVAL
                  1: la x7, test_done
                  jalr x1, x7, 0

ecall_handler:    
                  la x31, _start
                  sw x0, 0(x31)
                  sw x1, 4(x31)
                  sw x2, 8(x31)
                  sw x3, 12(x31)
                  sw x4, 16(x31)
                  sw x5, 20(x31)
                  sw x6, 24(x31)
                  sw x7, 28(x31)
                  sw x8, 32(x31)
                  sw x9, 36(x31)
                  sw x10, 40(x31)
                  sw x11, 44(x31)
                  sw x12, 48(x31)
                  sw x13, 52(x31)
                  sw x14, 56(x31)
                  sw x15, 60(x31)
                  sw x16, 64(x31)
                  sw x17, 68(x31)
                  sw x18, 72(x31)
                  sw x19, 76(x31)
                  sw x20, 80(x31)
                  sw x21, 84(x31)
                  sw x22, 88(x31)
                  sw x23, 92(x31)
                  sw x24, 96(x31)
                  sw x25, 100(x31)
                  sw x26, 104(x31)
                  sw x27, 108(x31)
                  sw x28, 112(x31)
                  sw x29, 116(x31)
                  sw x30, 120(x31)
                  sw x31, 124(x31)
                  la x7, write_tohost
                  jalr x0, x7, 0

instr_fault_handler:
                  add x23, x18, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

load_fault_handler:
                  add x23, x18, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

store_fault_handler:
                  add x23, x18, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

ebreak_handler:   
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x23, x18, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

illegal_instr_handler:
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x23, x18, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  add x23, x18, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
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
