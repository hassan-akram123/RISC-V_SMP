.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x29, h0_start
jalr x0, x29, 0
h0_start:
                  li x14, 0x40000100
                  csrw 0x301, x14
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x14, mtvec_handler
                  ori x14, x14, 0
                  csrw 0x305, x14 # MTVEC

mepc_setup:       
                  la x14, init
                  csrw 0x341, x14

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x14, 0x1800
                  csrw 0x300, x14 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0x80000000
                  li x3, 0xf723fa35
                  li x4, 0x4
                  li x5, 0x8
                  li x6, 0x0
                  li x7, 0x7699aa2c
                  li x8, 0x0
                  li x9, 0x0
                  li x10, 0x0
                  li x11, 0xf1876eea
                  li x12, 0x0
                  li x13, 0xbd3c344f
                  li x14, 0x4
                  li x15, 0x1
                  li x16, 0x0
                  li x17, 0x0
                  li x18, 0x7
                  li x19, 0xcaec7351
                  li x20, 0xeb8ac9a1
                  li x21, 0x80000000
                  li x22, 0x80000000
                  li x23, 0x80000000
                  li x24, 0x984ff447
                  li x25, 0x0
                  li x26, 0xf
                  li x29, 0x0
                  li x30, 0xfbddb28d
                  li x31, 0x8f5ca07c
                  la x28, user_stack_end
main:             li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_18
                  li           s5, 0x80000000
                  li           t5, 0x52a83d6a
                  li           a0, 0x80000000
                  li           t2, 0x0
                  li           t1, 0xbbf7f807
                  li           ra, 0x0
                  li           a5, 0xffffffff
                  li           s10, 0x0
                  li           tp, 0x0
                  addi         ra, a5, -479
                  add          s5, a0, a0
                  nop
                  addi         a6, t1, -1790
                  auipc        t2, 398498
                  auipc        s5, 907092
                  auipc        t1, 20895
                  add          a6, ra, s5
                  auipc        t1, 854471
                  add          a0, a5, t2
                  sub          tp, s10, a0
                  nop
                  add          tp, t1, s10
                  auipc        a5, 729751
                  add          tp, ra, ra
                  sub          t1, t1, s10
                  lui          a0, 50791
                  nop
                  lui          t2, 311836
                  add          tp, s10, ra
                  auipc        t2, 584861 #end riscv_int_numeric_corner_stream_18
                  li           t1, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           t6, 0xffffffff
                  li           a5, 0xffffffff
                  li           s1, 0x908095e0
                  li           a6, 0xffffffff
                  li           a4, 0x807e889e
                  li           sp, 0x0
                  li           a7, 0xb161aec6
                  li           s2, 0x0
                  li           t0, 0xffffffff
                  lui          t1, 573880
                  sub          a5, s2, sp
                  addi         s1, s1, -490
                  lui          s2, 1001913
                  lui          t0, 877154
                  addi         a6, s2, -1520
                  addi         s1, t6, 1671
                  add          a7, a6, t6
                  addi         t6, a5, 840
                  add          t6, a7, a4
                  auipc        t0, 899048
                  auipc        a6, 998769
                  nop
                  add          a6, s2, a4
                  lui          a6, 486091
                  sub          a6, sp, s1
                  addi         t0, a6, 1492
                  nop
                  lui          sp, 1027785
                  nop
                  nop
                  lui          t0, 535285
                  auipc        s1, 728599
                  nop
                  lui          t6, 893230 #end riscv_int_numeric_corner_stream_3
                  li           s1, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           sp, 0x0
                  li           s0, 0xffffffff
                  li           t5, 0x0
                  li           gp, 0x539c06c1
                  li           s9, 0x3a1751
                  li           t0, 0xffffffff
                  li           s3, 0x80000000
                  li           ra, 0xffffffff
                  li           s8, 0x80000000
                  add          t0, sp, s1
                  addi         s1, s0, 719
                  add          s8, t5, s0
                  sub          sp, s8, s1
                  nop
                  sub          t5, t5, s3
                  nop
                  addi         s1, s8, 1163
                  add          ra, s0, t0
                  nop
                  sub          s8, s1, s3
                  lui          t5, 158586
                  add          sp, gp, t5
                  sub          s8, ra, gp
                  add          sp, s8, s1
                  auipc        ra, 311914
                  auipc        gp, 1035012
                  auipc        s8, 60494
                  add          t5, s3, s9
                  nop
                  nop
                  addi         sp, s8, -525
                  auipc        ra, 795451
                  add          gp, s9, t0
                  add          sp, s0, t0
                  auipc        t5, 523986
                  add          t0, s3, s3
                  nop
                  lui          gp, 375993
                  nop #end riscv_int_numeric_corner_stream_1
                  li           s5, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           a2, 0x0
                  li           t6, 0xffffffff
                  li           t0, 0x0
                  li           s6, 0x80000000
                  li           s1, 0x0
                  li           s8, 0xffffffff
                  li           s9, 0x80000000
                  li           a1, 0x80000000
                  li           a4, 0x40c074f6
                  nop
                  auipc        t6, 294518
                  sub          s5, a1, t0
                  addi         s8, t6, -14
                  addi         a4, s1, -1925
                  lui          a2, 347219
                  auipc        s8, 562516
                  sub          s1, a4, s5
                  lui          a2, 83771
                  sub          s6, t0, a4
                  sub          a2, s5, s6
                  addi         a4, s9, -1577
                  add          s1, s9, a1
                  nop
                  lui          s8, 733113
                  auipc        t6, 388071
                  lui          s5, 584058
                  sub          t6, s5, t0
                  nop
                  sub          s6, a4, s1
                  sub          s9, a1, t6
                  lui          s6, 306531
                  lui          t0, 626716
                  auipc        s5, 390906
                  sub          s6, t6, s5 #end riscv_int_numeric_corner_stream_12
                  li           s0, 0xa8dd7ffa #start riscv_int_numeric_corner_stream_2
                  li           tp, 0x80000000
                  li           a5, 0x80000000
                  li           s10, 0x80000000
                  li           gp, 0xffffffff
                  li           t2, 0x80000000
                  li           ra, 0x80000000
                  li           a4, 0xffffffff
                  li           s5, 0x0
                  li           s7, 0x0
                  lui          gp, 885379
                  addi         s5, t2, -1932
                  auipc        s0, 151316
                  addi         t2, a4, 81
                  lui          s0, 462242
                  nop
                  nop
                  sub          a5, gp, tp
                  sub          s0, gp, t2
                  sub          s5, s5, t2
                  sub          s0, ra, a5
                  nop
                  add          a5, t2, a5
                  auipc        a5, 998921
                  addi         a4, s10, 66
                  sub          s7, s7, s5 #end riscv_int_numeric_corner_stream_2
                  li           t0, 0xfe67493b #start riscv_int_numeric_corner_stream_5
                  li           sp, 0x2664f41
                  li           a7, 0xffffffff
                  li           t1, 0x57540231
                  li           a6, 0xffffffff
                  li           a3, 0x0
                  li           a4, 0xffffffff
                  li           s1, 0xffffffff
                  li           s8, 0x0
                  li           t2, 0x7898c096
                  auipc        s1, 358060
                  add          a4, t2, sp
                  sub          t2, t0, sp
                  auipc        s8, 995802
                  nop
                  nop
                  lui          s1, 231288
                  sub          t2, t0, s1
                  addi         a7, a4, 481
                  add          a4, s1, a6
                  add          a3, t2, t2
                  addi         t0, t2, -133
                  lui          sp, 295068
                  sub          a7, sp, t2
                  nop
                  lui          t2, 904202
                  addi         a7, a7, -1839
                  lui          a6, 689340
                  add          s1, a6, t2
                  auipc        sp, 396766
                  addi         s8, t0, -1352
                  auipc        s1, 618620 #end riscv_int_numeric_corner_stream_5
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           s4, 0x0
                  li           s8, 0xffffffff
                  li           a0, 0x250d182b
                  li           a5, 0x8bdd59ef
                  li           a4, 0x80000000
                  li           s5, 0xffffffff
                  li           t5, 0xffffffff
                  li           gp, 0xffffffff
                  li           a1, 0xffffffff
                  lui          s8, 553398
                  lui          a4, 988818
                  sub          s5, s8, ra
                  nop
                  auipc        t5, 869937
                  sub          a0, t5, t5
                  lui          ra, 403268
                  sub          gp, s4, a5
                  add          a1, ra, ra
                  auipc        a0, 140076
                  addi         a0, t5, -855
                  add          t5, s8, a5
                  auipc        a5, 968297
                  lui          s5, 971446
                  nop
                  auipc        a1, 80391
                  auipc        s4, 436725
                  sub          s4, ra, a1
                  nop
                  auipc        a1, 694435
                  nop
                  addi         a1, s8, 187
                  add          a4, s4, s5 #end riscv_int_numeric_corner_stream_16
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           s9, 0xb41c7286
                  li           s3, 0x80000000
                  li           a0, 0x80000000
                  li           s6, 0x80000000
                  li           a3, 0x0
                  li           tp, 0xffffffff
                  li           s5, 0x0
                  li           t1, 0x80000000
                  li           s2, 0x8dc1c038
                  nop
                  lui          t1, 374086
                  add          s5, a3, s5
                  nop
                  addi         s2, s3, 912
                  auipc        a0, 876829
                  nop
                  addi         s3, a3, -835
                  nop
                  lui          s5, 896887
                  addi         t1, s5, 1721
                  addi         s2, s6, -1558
                  addi         a0, s3, 1373
                  lui          s9, 970951
                  sub          s2, a0, t1
                  sub          tp, a3, tp
                  auipc        t1, 323771
                  auipc        a0, 470784
                  lui          t1, 869734
                  sub          s6, s4, s9
                  sub          a0, a3, s4
                  sub          s5, s9, s4
                  add          t1, s9, tp
                  auipc        t1, 39723
                  sub          s5, t1, s6
                  nop
                  nop
                  lui          a0, 951205
                  lui          s3, 238205
                  add          a0, s4, s9 #end riscv_int_numeric_corner_stream_8
                  srai         s6, t6, 8
                  nop
                  add          a1, s10, s5
                  slli         t1, a6, 7
                  or           s4, t5, t5
                  ori          s7, s8, 179
                  slli         s0, s6, 30
                  xor          a0, s11, tp
                  lui          a7, 809751
                  nop
                  sub          tp, a7, s2
                  add          s7, a6, t2
                  add          sp, ra, t3
                  addi         s0, s5, -152
                  ori          s4, t1, 829
                  sll          a2, a5, t5
                  ori          zero, ra, -483
                  srli         t5, t0, 26
                  slli         t6, s1, 24
                  add          s3, t2, s9
                  sra          t6, a6, a0
                  sll          t5, a5, a4
                  lui          a1, 1020705
                  xori         a5, t6, -846
                  sll          t5, t5, t1
                  auipc        s3, 250110
                  sltu         a0, a2, a1
                  srli         a2, s11, 9
                  srai         t1, s8, 20
                  lui          s6, 770461
                  nop
                  slli         t5, ra, 27
                  sub          s5, s4, s10
                  add          t1, t1, t2
                  andi         tp, t0, 1541
                  slt          sp, s3, s6
                  or           s7, s9, a4
                  xor          a5, s10, s3
                  add          s4, t0, s3
                  sltiu        ra, a0, -13
                  slti         s9, t2, 1862
                  sub          s4, t1, t3
                  or           s9, t4, s4
                  andi         s10, s1, 150
                  sltiu        s2, zero, -1139
                  sltu         s1, t2, s8
                  auipc        a4, 351658
                  xor          s2, a3, t0
                  sltiu        a1, sp, 1208
                  sltu         gp, t1, t4
                  sub          s3, s8, a7
                  slt          s0, s8, gp
                  sltiu        s0, s8, 843
                  sra          s7, s10, a5
                  lui          t6, 582331
                  srl          a0, a7, s1
                  slli         a7, a6, 28
                  sltu         s7, a6, s3
                  andi         t5, gp, -1072
                  sll          a3, s6, s1
                  slti         s9, a3, 1139
                  lui          t1, 624928
                  or           s5, gp, a5
                  srai         t0, s11, 1
                  srl          a1, s6, s9
                  auipc        s2, 722958
                  sub          t1, a3, s10
                  xori         s2, t1, 661
                  xori         t2, t0, 1550
                  xor          a4, t3, s0
                  nop
                  sltu         s4, t1, zero
                  andi         zero, s6, 1874
                  xori         s0, s7, 409
                  nop
                  xori         s4, t3, -1697
                  sra          gp, s7, t3
                  sub          tp, s1, a6
                  xori         s3, a7, -348
                  and          s9, zero, t6
                  and          gp, a2, t6
                  slt          a4, s1, t5
                  nop
                  srl          gp, a4, s5
                  addi         a0, s5, -340
                  lui          t2, 96717
                  slt          zero, t4, s8
                  nop
                  xori         a1, s0, -1399
                  srl          t6, s2, zero
                  or           s3, t6, s1
                  srl          a6, tp, a2
                  sra          sp, s3, s8
                  xori         ra, t4, -298
                  sltu         tp, a2, s4
                  nop
                  ori          s10, s7, 198
                  addi         s1, s11, -759
                  slti         s3, zero, -1289
                  add          a0, t2, t3
                  slli         s6, tp, 4
                  srli         s4, t2, 31
                  slli         s2, ra, 19
                  sra          a2, zero, t4
                  slti         zero, a2, -908
                  srai         zero, s4, 18
                  or           t0, a0, a7
                  add          t2, s8, s0
                  nop
                  lui          s3, 853607
                  ori          ra, t3, -1705
                  slli         t2, s4, 8
                  nop
                  auipc        a2, 1028989
                  and          a0, s10, a1
                  sll          s5, a7, a2
                  or           t5, a2, s6
                  add          a1, a2, a5
                  srl          t2, s11, s7
                  and          gp, s5, s0
                  and          s6, zero, s5
                  xori         gp, t1, 158
                  srl          a0, a2, tp
                  slti         sp, t3, -257
                  nop
                  lui          s3, 546960
                  sltu         s1, s11, ra
                  sra          t1, a4, s10
                  slli         s7, s7, 14
                  slli         a3, s9, 25
                  ori          s4, zero, -431
                  nop
                  srli         s4, t0, 22
                  srai         s0, t1, 21
                  sub          a1, gp, s11
                  srl          s0, s2, a2
                  srl          s9, t5, t1
                  srai         s3, a3, 10
                  sra          s1, t0, s8
                  xori         s3, t0, -946
                  slt          zero, s1, tp
                  slti         s8, s9, 969
                  auipc        a5, 951736
                  lui          zero, 77580
                  sra          s4, s0, a7
                  slt          s2, t6, t0
                  auipc        s8, 782788
                  srli         s4, zero, 28
                  srai         t2, ra, 12
                  lui          sp, 983746
                  slli         s4, s4, 11
                  slli         s5, a7, 29
                  lui          t2, 369807
                  addi         tp, s6, -997
                  srli         s6, a2, 12
                  ori          s7, s11, 1587
                  nop
                  lui          a7, 629565
                  sra          s8, a4, a7
                  or           s10, t6, sp
                  ori          a3, s1, -1823
                  slt          a1, s4, s9
                  auipc        a4, 581890
                  andi         s0, gp, 1766
                  srli         a4, tp, 12
                  slt          s3, s2, t6
                  add          a2, a0, s4
                  slti         t5, s2, 1332
                  lui          a7, 120759
                  sll          a7, t0, t2
                  auipc        ra, 204833
                  lui          a0, 487918
                  srli         a3, a4, 24
                  sub          s1, a6, t5
                  sltiu        s5, s2, -13
                  addi         t6, sp, -1842
                  lui          a0, 13844
                  srl          s1, a0, a5
                  sltiu        t0, a3, -555
                  addi         s5, s10, -1008
                  add          t5, a1, t6
                  slt          s7, s10, a4
                  sltu         s9, s6, t4
                  addi         s7, t0, -1474
                  srai         s9, a3, 18
                  lui          t2, 497311
                  and          gp, a6, s4
                  sub          gp, a4, t1
                  sll          t1, tp, a0
                  sra          a7, a3, s10
                  lui          s0, 331553
                  sll          a2, s0, s3
                  srai         t2, sp, 13
                  srl          a7, s4, s5
                  addi         s4, a2, 400
                  xor          sp, ra, s7
                  or           s4, a5, t6
                  slli         gp, t3, 11
                  sll          a6, s1, s7
                  xor          s0, a0, t3
                  auipc        s2, 1013110
                  auipc        zero, 983310
                  nop
                  ori          zero, a2, -985
                  srai         a5, a4, 6
                  slli         gp, a1, 10
                  nop
                  sll          s0, s2, s3
                  srl          s3, s0, t5
                  addi         ra, s6, 616
                  slti         tp, tp, 1018
                  lui          s2, 1005619
                  slt          a1, s9, gp
                  sltu         t0, t1, s6
                  addi         s3, t2, -1191
                  andi         s7, s11, -1352
                  sra          a0, s11, t3
                  and          sp, s4, t5
                  sub          s5, a3, a5
                  ori          s8, tp, -304
                  xor          s5, t4, s11
                  srli         gp, a1, 21
                  auipc        s0, 676571
                  slli         a7, t5, 30
                  sub          s8, t0, t5
                  srai         s4, s10, 18
                  or           s4, s11, a5
                  ori          tp, t6, 1932
                  sra          t6, s6, t1
                  lui          ra, 359191
                  or           a4, gp, s8
                  srli         s9, s0, 2
                  nop
                  srli         gp, zero, 9
                  lui          t1, 465563
                  xori         zero, t1, -767
                  sll          s10, s11, tp
                  slti         a6, a4, 1427
                  andi         s10, sp, -259
                  or           gp, a4, s9
                  slti         a1, s3, 562
                  add          sp, a4, zero
                  slti         s1, sp, 764
                  lui          s4, 198546
                  auipc        a0, 670959
                  xor          t1, ra, t2
                  ori          gp, a2, 252
                  add          t2, a6, sp
                  sltiu        t5, s9, 1685
                  ori          t1, s2, 880
                  sltiu        t1, t0, 1728
                  xor          t0, t3, ra
                  slti         t1, s2, 44
                  sltu         t2, s11, zero
                  lui          s5, 331292
                  slt          a2, tp, t1
                  slti         a3, a0, 676
                  lui          a4, 841350
                  srli         s3, a7, 31
                  addi         a5, a7, -861
                  srli         ra, gp, 22
                  and          s3, a5, s0
                  srl          s6, s2, a5
                  sra          tp, t2, s8
                  sll          a0, sp, s9
                  nop
                  sltu         s2, s9, s0
                  lui          ra, 823126
                  srl          zero, a3, t4
                  xor          t2, t5, s2
                  addi         a6, s8, -206
                  sltu         t1, a5, t2
                  srai         s9, a5, 2
                  nop
                  sltiu        t5, a7, 22
                  srli         ra, t6, 6
                  sltu         a0, a4, a3
                  sub          t2, a3, s3
                  sub          zero, a5, t4
                  slt          a1, t0, t6
                  auipc        t2, 243419
                  andi         s10, s8, 709
                  srli         s7, a7, 6
                  and          s8, s5, s3
                  sub          ra, gp, s7
                  slti         s9, s1, -1023
                  and          a4, s5, s8
                  srl          gp, a2, t1
                  slli         a3, s4, 23
                  addi         t0, tp, 1107
                  srl          s2, s2, tp
                  lui          s4, 503301
                  nop
                  add          t5, a3, a1
                  lui          a6, 47746
                  slt          tp, a7, a6
                  add          a3, s6, s0
                  sub          s9, s8, t6
                  addi         a2, s0, -463
                  slli         t2, zero, 8
                  slli         t2, t3, 21
                  xori         s0, a0, -165
                  or           a7, t6, a7
                  srai         a7, t5, 12
                  ori          s2, t3, 1981
                  slli         a7, zero, 25
                  sra          s0, tp, t1
                  ori          sp, a1, -222
                  andi         ra, s6, -1812
                  nop
                  srai         sp, t6, 9
                  add          s5, tp, a1
                  sra          a1, s11, s6
                  ori          s6, ra, 662
                  sltiu        sp, a2, -280
                  sll          s2, s2, s0
                  nop
                  xori         a0, gp, 1715
                  sub          s9, t6, a0
                  slt          s1, a1, s2
                  or           a6, s6, s6
                  auipc        a1, 19610
                  xori         s4, s6, 1958
                  sll          s5, a6, a4
                  auipc        t1, 476278
                  addi         a2, a4, 1898
                  slli         t2, a7, 7
                  sltiu        gp, a6, -1357
                  sub          ra, a6, t4
                  xor          s1, sp, gp
                  nop
                  add          t2, s2, a1
                  sll          s1, t1, s11
                  or           gp, zero, s7
                  andi         s0, s10, -419
                  sll          s4, s1, s2
                  nop
                  nop
                  nop
                  xori         a6, a4, 923
                  sub          s1, tp, a1
                  slli         t0, zero, 15
                  lui          s10, 428136
                  sll          s6, s1, t6
                  sll          a6, s10, s5
                  sll          t6, a5, sp
                  slli         a3, a5, 30
                  addi         t2, a1, 610
                  andi         s5, a2, -1841
                  slli         s5, s1, 6
                  slt          s3, s4, s7
                  slti         s2, a1, -1331
                  slti         a2, s4, 141
                  sll          s7, a6, a4
                  slti         s1, sp, 1155
                  auipc        s6, 2185
                  xor          a7, a4, sp
                  sll          t2, a7, a3
                  and          sp, t2, a1
                  xor          zero, tp, t0
                  sra          t5, a6, a2
                  and          a6, tp, t3
                  srai         s5, t1, 22
                  or           s0, s0, tp
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           ra, 0x80000000
                  li           t2, 0xffffffff
                  li           s4, 0x0
                  li           a3, 0x0
                  li           a2, 0x0
                  li           t5, 0xcb21c140
                  li           t1, 0xffffffff
                  li           s9, 0xffffffff
                  li           s0, 0x0
                  auipc        t2, 122380
                  nop
                  addi         t1, a3, -1375
                  addi         s0, s9, -256
                  lui          a2, 33112
                  nop
                  auipc        a6, 831571
                  addi         a6, t2, 1901
                  auipc        s9, 641095
                  auipc        s9, 283678
                  auipc        t2, 323086
                  add          s9, a6, s4
                  lui          a2, 347609
                  nop
                  add          s9, ra, a6
                  addi         s9, s4, 388
                  nop
                  auipc        ra, 592267
                  add          ra, t1, t2
                  sub          s4, s4, a2
                  add          t1, s4, s4
                  nop
                  addi         a2, ra, -111
                  sub          a6, ra, a6
                  nop
                  sub          t1, a3, ra
                  addi         t1, a2, 1248 #end riscv_int_numeric_corner_stream_11
                  sll          s0, a3, t6
                  srl          s3, zero, t1
                  xor          s5, gp, s9
                  slt          s7, t3, t4
                  add          t5, s0, t6
                  andi         a4, s10, -803
                  lui          t1, 716364
                  slt          s0, s7, t6
                  add          a3, zero, s11
                  or           a2, s1, a1
                  xori         a1, s10, 1528
                  xori         s1, t0, -1300
                  srl          s6, a5, a6
                  ori          a0, s1, 713
                  ori          a3, sp, 1075
                  addi         a3, s11, 758
                  slli         a3, a4, 6
                  sub          s2, s10, a7
                  and          t2, t2, s8
                  srl          gp, s4, s1
                  sltu         t6, t0, a4
                  sll          t2, a3, a7
                  sltiu        a7, s10, -546
                  xori         a2, a0, -1314
                  slli         zero, s7, 30
                  addi         s2, t3, -64
                  sll          ra, s9, t4
                  slli         s7, a6, 6
                  ori          a0, t1, 839
                  sub          s4, a6, a3
                  add          s9, t2, s2
                  sra          sp, zero, s0
                  auipc        a5, 858596
                  lui          a5, 972877
                  nop
                  sll          gp, a0, t4
                  nop
                  xor          tp, s1, t0
                  sub          a1, s0, s3
                  slt          a6, a4, s2
                  and          a1, a0, t0
                  nop
                  slti         zero, a7, 550
                  add          a4, zero, a5
                  addi         a5, s4, -1362
                  auipc        s7, 660695
                  ori          s10, t1, -696
                  and          t1, sp, s3
                  auipc        zero, 787208
                  sra          s3, t3, s6
                  nop
                  xor          s6, s1, zero
                  sra          tp, s8, zero
                  srai         s8, ra, 22
                  sra          s6, s3, t0
                  sltu         ra, a6, s3
                  addi         s8, a2, -1485
                  lui          s7, 90821
                  slli         t2, s0, 4
                  sll          a3, sp, t3
                  srli         a0, gp, 11
                  ori          s4, a0, 321
                  andi         t6, zero, -633
                  slti         a6, a4, 815
                  and          a7, t5, a1
                  sll          a2, a3, s1
                  or           t1, a4, a1
                  srli         t6, s1, 27
                  lui          s9, 933144
                  auipc        a3, 961881
                  andi         gp, zero, 646
                  srl          s2, zero, s11
                  xor          s0, s2, tp
                  xor          a2, t2, s7
                  and          s1, s5, s5
                  sltiu        s9, a5, 1200
                  xor          a1, t5, s3
                  slt          tp, t1, tp
                  and          s1, ra, a7
                  sub          s5, gp, s5
                  slti         t6, a5, 513
                  or           t0, t4, s5
                  sltu         s8, s3, s4
                  sra          sp, t2, s9
                  lui          t0, 388535
                  and          a0, s9, a0
                  srai         gp, a2, 20
                  andi         a7, t4, -52
                  sltiu        sp, t1, -1244
                  slti         s10, s11, -87
                  sll          a5, sp, s8
                  auipc        s5, 786988
                  sra          a2, t4, t3
                  ori          tp, s9, 1849
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           t1, 0x80000000
                  li           t6, 0x80000000
                  li           a7, 0x0
                  li           gp, 0xffffffff
                  li           s6, 0x0
                  li           a2, 0xffffffff
                  li           s0, 0xe4e9753f
                  li           tp, 0x9a23d5b8
                  li           a5, 0x0
                  auipc        a2, 636107
                  addi         t2, tp, 1227
                  nop
                  lui          a7, 823941
                  auipc        s0, 498841
                  lui          a7, 314376
                  auipc        s0, 603382
                  sub          a5, s6, tp
                  add          t2, s0, t1
                  add          a7, gp, s6
                  auipc        a7, 259654
                  lui          t1, 762571
                  sub          tp, t1, a7
                  lui          a5, 839908
                  addi         t6, s0, 1570
                  add          t6, a5, t2
                  auipc        a7, 771762
                  auipc        t6, 636288
                  nop
                  nop #end riscv_int_numeric_corner_stream_13
                  or           a1, s5, s9
                  sub          a0, t2, a3
                  add          t2, a2, tp
                  nop
                  li           s4, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           s6, 0x80000000
                  li           t6, 0x80000000
                  li           a4, 0x0
                  li           sp, 0xffffffff
                  li           s8, 0x80000000
                  li           gp, 0x0
                  li           s3, 0x80000000
                  li           tp, 0x0
                  li           t2, 0xffffffff
                  add          a4, t2, tp
                  nop
                  nop
                  lui          s6, 1033466
                  sub          s4, a4, a4
                  nop
                  nop
                  addi         t2, t6, -1881
                  add          s6, t6, s8
                  nop
                  add          s6, sp, s3
                  sub          s6, s3, s3
                  auipc        a4, 254662
                  lui          t6, 447713
                  addi         gp, sp, 205
                  lui          s4, 494336
                  auipc        tp, 56815
                  nop
                  sub          a4, sp, s4
                  nop
                  add          tp, s3, s3
                  sub          s6, s4, a4
                  sub          t6, sp, sp
                  auipc        s3, 856877 #end riscv_int_numeric_corner_stream_4
                  slt          tp, ra, s0
                  sll          s6, a4, a7
                  lui          t5, 581847
                  lui          a1, 1013780
                  lui          ra, 854983
                  sltiu        a6, a7, -478
                  andi         a1, t2, 475
                  sub          s10, tp, a5
                  srl          s5, s9, t3
                  sll          a2, ra, s4
                  and          a4, s4, s11
                  andi         t6, tp, -1005
                  addi         t5, s6, 266
                  sub          a7, zero, s4
                  addi         t0, a0, 1599
                  andi         s1, a4, 1432
                  andi         ra, a0, 555
                  xor          a3, tp, a2
                  slli         a5, a3, 5
                  sra          s8, s7, a3
                  xor          a5, zero, s8
                  sll          s8, a6, sp
                  addi         s1, t5, -1183
                  add          a0, zero, s5
                  sub          zero, a1, a3
                  sra          s6, s4, a6
                  sub          a1, t2, s4
                  sltu         s10, t0, t0
                  xori         a1, a6, 1790
                  slli         sp, s0, 1
                  add          a2, a3, a1
                  lui          s5, 761863
                  nop
                  and          a0, s8, s5
                  sub          a0, t2, s9
                  ori          a3, a6, 1779
                  addi         s10, t1, -1147
                  sltiu        s7, s9, -1197
                  sltiu        s5, s7, -1288
                  andi         a2, s8, -1482
                  srl          s8, a5, ra
                  slli         a3, t3, 6
                  slli         t6, s9, 22
                  xor          a1, s0, t1
                  andi         t0, a7, 862
                  lui          s5, 859684
                  slti         s10, a5, -136
                  sltiu        a4, s10, 814
                  sub          s9, t3, t2
                  srai         s1, tp, 22
                  andi         ra, s3, -1846
                  ori          t1, s3, 1246
                  sltiu        sp, t4, -1124
                  sra          s10, a7, s4
                  sub          s4, t2, t0
                  add          s3, t6, t0
                  and          a7, t3, t4
                  xor          s0, s1, s5
                  srl          t0, s3, t3
                  and          s0, gp, gp
                  or           zero, s6, t1
                  xori         s8, t1, -967
                  sltiu        t1, gp, 6
                  srli         s10, tp, 1
                  sub          gp, t4, s3
                  sra          s4, ra, a4
                  sub          a4, s7, t2
                  sub          s3, s0, s3
                  ori          t2, a4, -242
                  sra          a2, a1, t3
                  sub          a4, t4, t1
                  nop
                  slt          s10, a2, a7
                  xori         a5, a1, -1485
                  sltu         s3, t4, t1
                  sltu         a2, zero, a3
                  srai         s10, t3, 21
                  xor          s2, a3, s9
                  slli         tp, s11, 23
                  xori         t2, t6, -288
                  sltu         a3, t0, t3
                  srli         s8, a1, 10
                  or           tp, s8, s2
                  addi         gp, a1, 1043
                  nop
                  slli         ra, t5, 13
                  sll          a5, tp, s10
                  add          t0, t0, s4
                  slti         a5, ra, 906
                  lui          a4, 277064
                  slti         t5, s5, -1772
                  auipc        tp, 766379
                  sltu         a6, t2, a1
                  slt          t1, s1, s6
                  and          t0, s11, s4
                  and          s9, s3, a1
                  srli         s4, t3, 17
                  lui          a1, 64267
                  and          t1, s6, a7
                  xor          a2, a0, s5
                  xori         t5, a7, -587
                  xori         tp, t3, -1587
                  auipc        s8, 799969
                  srli         a6, tp, 0
                  addi         s10, zero, -1608
                  sll          a6, s2, a0
                  sltiu        a2, s5, 1771
                  and          s2, s3, t6
                  sra          a4, t6, s7
                  sub          s2, t1, t6
                  xor          s3, sp, t6
                  nop
                  nop
                  ori          zero, s1, -1665
                  srl          a5, s4, t5
                  sub          s8, s1, ra
                  nop
                  slti         sp, t2, -303
                  srli         s9, a6, 29
                  xor          zero, t0, ra
                  xori         ra, gp, -389
                  sll          s1, gp, a7
                  xor          s7, tp, s6
                  xori         s8, s1, -376
                  sub          s1, s4, t6
                  ori          s7, t3, -1554
                  sltu         a7, a0, s1
                  srli         a4, s7, 2
                  nop
                  xori         t6, s3, -298
                  sll          gp, a3, t6
                  srl          s3, a3, s10
                  slti         sp, s4, 143
                  auipc        t1, 889755
                  xori         s2, gp, -1732
                  sra          tp, s3, a5
                  xor          a3, s2, s3
                  slli         a5, t5, 9
                  auipc        s5, 868448
                  sll          s9, a1, a3
                  sll          s8, ra, zero
                  ori          t0, s2, 172
                  sub          a7, s7, s5
                  srai         a4, sp, 30
                  sra          s2, sp, a5
                  srli         a0, s11, 23
                  slt          a2, s1, a6
                  sll          a7, gp, a0
                  srli         t6, s2, 30
                  add          a5, s2, a3
                  or           s7, a3, s2
                  sll          t6, tp, s1
                  addi         s1, s7, -1107
                  slt          t0, a5, t4
                  nop
                  add          s1, s3, s5
                  srl          ra, a3, t3
                  or           a7, ra, s9
                  addi         s7, t1, 1108
                  sltiu        a3, a3, -669
                  srl          t1, t3, t0
                  xori         s7, a6, -1300
                  sra          s3, s11, s6
                  sra          a5, t1, t2
                  sra          a3, s2, a0
                  srai         zero, s7, 20
                  add          tp, s9, t4
                  or           ra, t3, a2
                  slti         s3, s4, -2011
                  slti         s5, a7, 1439
                  add          s10, s7, a1
                  slt          s5, a2, s5
                  srli         s7, s9, 3
                  slt          s6, gp, s3
                  xori         sp, a0, -1563
                  slli         t5, s9, 20
                  sltiu        zero, zero, 260
                  nop
                  sra          a0, gp, s4
                  sll          t2, a6, s1
                  srli         gp, s5, 28
                  srai         t2, s11, 2
                  sltiu        t5, t4, 1153
                  auipc        s4, 96845
                  sll          a0, a2, a6
                  srai         ra, a7, 12
                  sltiu        s6, s4, -727
                  ori          s0, s10, -1935
                  sra          s1, s10, s10
                  lui          a3, 440071
                  slli         t5, a4, 28
                  sll          t6, a7, t0
                  srl          t2, s7, t6
                  auipc        a4, 299810
                  slti         s7, s8, 888
                  auipc        sp, 277116
                  sltu         t6, a2, zero
                  srli         s4, a6, 5
                  sll          s9, t5, t1
                  addi         sp, a2, -221
                  sll          a4, s3, a3
                  auipc        ra, 381826
                  or           s5, s10, s6
                  lui          s8, 184336
                  sltu         tp, s3, t1
                  andi         s0, s10, 552
                  slti         t5, t3, 338
                  sltu         gp, s7, s2
                  or           s6, s7, a6
                  and          a3, a2, t0
                  slli         ra, s11, 5
                  srli         s10, s4, 30
                  addi         s2, s11, 236
                  ori          t2, sp, -1393
                  or           s0, s11, s0
                  srai         s5, t3, 1
                  addi         t0, a4, 46
                  xor          t1, gp, zero
                  slt          s3, a4, ra
                  or           zero, s2, s2
                  addi         gp, s6, 912
                  and          s10, ra, sp
                  xori         s3, s3, -686
                  and          a0, t2, s4
                  or           t5, a0, t6
                  auipc        s3, 641768
                  sll          a1, tp, s2
                  andi         s9, a3, 23
                  sra          t5, a6, t0
                  slti         t0, s10, -1127
                  xori         a4, s11, -779
                  xori         t0, t4, -235
                  addi         a2, s4, 1259
                  xor          zero, a0, s11
                  and          a2, ra, a0
                  srli         ra, t0, 3
                  lui          a5, 609496
                  srai         s5, s7, 28
                  xor          s5, a1, a4
                  sll          t5, s3, t5
                  srl          s2, a2, s1
                  slli         t6, s10, 21
                  lui          a5, 747077
                  sll          a5, a2, t3
                  xori         s6, s3, 86
                  addi         s0, t2, -1381
                  lui          s7, 554166
                  slli         t2, s10, 8
                  sll          t1, s0, a3
                  xori         s4, t1, -1377
                  addi         s3, s6, 1663
                  sub          s0, s2, s9
                  add          t6, sp, a2
                  xor          t6, s11, t2
                  sltu         s6, a3, s6
                  lui          t5, 92284
                  sra          a5, zero, zero
                  sra          a6, s2, ra
                  lui          t2, 505252
                  sll          t2, ra, tp
                  slti         a2, t0, 1482
                  lui          s6, 898752
                  srl          tp, a0, zero
                  srl          t6, s10, tp
                  ori          s4, a2, -1251
                  add          a3, s2, a2
                  sltiu        s0, t5, 946
                  nop
                  slti         t1, t5, 1598
                  sra          sp, a4, a1
                  srli         a4, s2, 28
                  srl          a2, s6, a5
                  and          s2, t2, s2
                  auipc        s9, 811224
                  sll          s4, a2, a2
                  srli         s4, t3, 3
                  ori          t2, a0, -25
                  sub          a3, a3, sp
                  nop
                  xori         s9, a5, 334
                  addi         s5, s0, 2000
                  srli         s1, t3, 14
                  addi         s3, zero, 1146
                  sra          a0, a3, a7
                  xor          gp, t6, t3
                  slt          s9, a3, s0
                  xori         t1, ra, -1904
                  and          a5, t0, s7
                  ori          a1, s7, 1047
                  sub          s9, zero, a6
                  addi         s6, s9, 1968
                  slt          ra, a4, t1
                  sub          a6, a1, s5
                  andi         s7, a3, -1547
                  sltiu        s2, ra, -31
                  sltiu        s9, a7, 742
                  xori         s0, s10, -166
                  ori          a6, sp, -80
                  xori         s0, s1, 1901
                  slt          t6, zero, ra
                  srli         a4, a1, 27
                  srl          t1, s3, ra
                  add          a2, a4, sp
                  slli         a6, t1, 7
                  slt          t2, s3, tp
                  sltiu        s5, a0, 108
                  srli         a2, a0, 2
                  auipc        a6, 328915
                  addi         tp, t4, 1890
                  sltu         s3, t0, sp
                  ori          t1, s2, -87
                  auipc        gp, 561895
                  lui          a2, 223151
                  lui          t5, 15685
                  addi         a6, s11, -202
                  slli         t0, t6, 28
                  sltu         s2, s10, s6
                  ori          a5, s3, -137
                  slti         zero, a1, 858
                  srl          s5, s2, s8
                  sll          zero, s5, s11
                  ori          a3, a5, -1073
                  or           sp, a7, s5
                  addi         s4, t5, -869
                  srai         zero, s6, 20
                  or           a1, t0, s9
                  xor          zero, s0, s3
                  add          a6, t0, a4
                  ori          s0, s1, 1487
                  srli         s0, sp, 23
                  slti         s10, s6, 943
                  sll          t1, s5, a6
                  sltiu        s0, t3, -1764
                  slli         tp, a2, 7
                  sll          t6, s8, t5
                  add          t0, t2, ra
                  add          t1, s7, s11
                  slti         tp, zero, -1081
                  sll          s4, a2, s5
                  sll          t5, s8, s4
                  lui          s5, 519359
                  xor          t5, s0, s3
                  add          s5, a5, a4
                  sll          a4, t2, s2
                  ori          a6, s7, -1058
                  ori          t1, a0, 1236
                  ori          s5, s7, -1761
                  xori         s7, t5, 752
                  srli         sp, t6, 12
                  sltu         s10, s11, a6
                  ori          zero, s3, 1779
                  nop
                  auipc        a1, 410863
                  slti         a7, s7, 1583
                  sll          a6, a1, a1
                  or           zero, a4, a4
                  srl          a1, s1, a6
                  nop
                  add          s7, a2, tp
                  add          s10, s10, s4
                  slti         gp, s9, 839
                  lui          a3, 179203
                  auipc        tp, 873424
                  sltu         s10, t6, s6
                  srl          a6, s8, s0
                  srai         s3, s7, 4
                  and          t5, s9, tp
                  or           gp, s3, sp
                  ori          s2, a2, -1217
                  and          a7, a4, gp
                  auipc        s10, 941760
                  sra          s8, a1, s4
                  and          sp, s5, a1
                  lui          ra, 496514
                  slli         s6, a7, 25
                  sub          t6, tp, s5
                  sra          a6, s9, t0
                  slt          t5, t0, a0
                  add          s1, s2, t3
                  ori          s1, a0, -1199
                  srli         s9, s6, 25
                  or           s6, s4, s7
                  sra          t0, a1, t5
                  andi         t6, a2, 764
                  add          s0, a1, t5
                  auipc        a6, 38072
                  xori         sp, s8, -335
                  srl          s0, a4, s9
                  sltu         a7, a3, a3
                  slti         s0, s0, -1267
                  auipc        s3, 841945
                  sub          ra, t4, a6
                  sll          s7, a0, a1
                  addi         s7, t5, 1174
                  sub          sp, t0, s11
                  or           s10, s10, sp
                  nop
                  xor          a5, t4, ra
                  sub          sp, t0, a5
                  andi         a2, t0, 1009
                  slt          t6, a0, a4
                  andi         a6, a4, -1941
                  xor          s0, s10, t1
                  andi         gp, t4, -325
                  xor          t1, t6, t6
                  lui          s5, 431492
                  or           a1, a3, gp
                  and          s7, a5, a4
                  srai         s0, a7, 11
                  sltu         tp, ra, ra
                  srai         s3, s9, 28
                  sll          s4, s9, s1
                  addi         t5, s7, -1396
                  slt          s9, s9, s3
                  and          tp, a4, zero
                  xor          a6, t5, a5
                  nop
                  lui          s2, 30293
                  sltiu        a1, s4, -230
                  add          a4, a2, t1
                  addi         t6, s2, 353
                  nop
                  sll          a3, s10, t2
                  xori         s8, t5, 1424
                  ori          s4, s8, 1766
                  sll          a0, t5, s9
                  xori         a6, gp, -1307
                  or           s8, s0, s1
                  srli         gp, s0, 23
                  sltiu        gp, a2, -431
                  andi         s2, s7, 1088
                  add          a0, t0, s6
                  auipc        t6, 228496
                  slli         tp, s3, 12
                  addi         zero, s7, 1245
                  sltu         s10, t0, sp
                  sra          s8, s5, t5
                  xori         ra, t6, -496
                  sltu         a4, s5, s6
                  xori         a1, zero, -1590
                  lui          zero, 887681
                  nop
                  andi         t2, s3, 523
                  slti         a2, zero, 1680
                  and          s10, s11, a6
                  lui          t0, 571523
                  xori         gp, a5, 663
                  add          s10, a5, s8
                  sltiu        a6, s3, 793
                  auipc        s0, 560060
                  sll          s6, a5, gp
                  slli         ra, a6, 18
                  andi         a5, a5, -883
                  srl          s9, a1, s10
                  auipc        a7, 894381
                  addi         s5, s9, 1986
                  slti         a0, s6, -1350
                  sra          s9, s8, ra
                  or           s3, s1, t4
                  add          s6, t6, a3
                  srl          s6, t5, s1
                  add          t6, tp, s11
                  or           s9, t3, t3
                  slt          t1, a4, s2
                  sub          a3, a0, a5
                  xori         s9, sp, 1062
                  or           t6, s4, a4
                  srai         s6, s3, 0
                  srl          s9, s11, t5
                  srli         t6, t4, 16
                  slti         s5, a6, -112
                  srl          a7, a2, sp
                  srli         a1, a2, 5
                  or           s1, s0, s6
                  sub          s6, a0, s0
                  slt          s3, s4, a3
                  nop
                  or           a6, s3, sp
                  srl          s10, t6, s3
                  sltiu        a4, s4, -1203
                  sltiu        ra, t1, -878
                  slt          s8, s10, t3
                  sltiu        s9, a0, -700
                  srl          gp, t1, a2
                  add          a7, s11, t3
                  addi         t6, s2, 448
                  sltu         t2, t3, a4
                  xor          a5, t0, s0
                  auipc        sp, 454749
                  nop
                  or           s6, t0, a3
                  ori          s10, t3, -65
                  or           sp, a4, a5
                  xor          s1, s3, s0
                  ori          s10, a2, -1770
                  srl          a0, s5, t5
                  sra          s1, s6, s9
                  sltu         t0, gp, t4
                  slli         a0, t2, 12
                  slli         t2, a3, 16
                  sltu         s0, s1, a3
                  lui          t0, 811949
                  srli         s1, gp, 22
                  xor          gp, s6, s2
                  slti         a7, t0, -1281
                  or           a4, a2, s11
                  sltiu        sp, zero, 1637
                  sltiu        t5, s11, -1557
                  andi         a4, t1, -719
                  slt          s6, s11, zero
                  or           t6, a5, s1
                  srai         t1, a6, 29
                  or           t5, s5, a7
                  srl          s10, s4, sp
                  sltiu        gp, s4, -314
                  sltu         ra, a1, a4
                  sll          gp, t0, s11
                  ori          t0, t1, 303
                  sltiu        a3, sp, 347
                  ori          s3, ra, 464
                  auipc        a4, 583803
                  srai         s7, s1, 11
                  xor          a1, gp, zero
                  addi         a5, a4, -1133
                  sltu         s9, a0, ra
                  nop
                  sll          a7, s2, a2
                  auipc        s5, 896014
                  andi         gp, a1, -1401
                  sra          t2, t1, s2
                  sltiu        s2, s6, 126
                  and          a4, a0, s11
                  or           a7, s0, t1
                  sltiu        tp, ra, 1038
                  srli         t0, a0, 25
                  slt          tp, t3, t1
                  addi         t1, t4, 1227
                  srai         tp, gp, 23
                  andi         t6, a6, 50
                  sll          s7, t3, s5
                  nop
                  lui          a3, 73239
                  sll          a7, s10, s1
                  sltu         s2, s2, s9
                  andi         s8, s9, 2033
                  add          t5, s4, tp
                  or           a7, ra, t0
                  andi         s5, a2, -1782
                  ori          s4, a0, -1982
                  addi         gp, t6, 200
                  sub          a2, a7, s1
                  auipc        s6, 359848
                  xor          s6, s6, s0
                  add          a3, a0, s10
                  srli         t1, s5, 5
                  lui          s9, 138991
                  xori         ra, s6, -1195
                  slt          s1, a0, s4
                  srli         a4, ra, 3
                  srai         s4, t4, 26
                  sll          a1, tp, a3
                  slti         a2, t1, 1398
                  add          s10, s0, s0
                  nop
                  ori          a2, s0, 1323
                  slti         a4, a7, -547
                  and          a5, a6, a3
                  sltu         s3, a3, a1
                  add          s4, sp, s0
                  xori         a1, s4, -1894
                  sra          t2, ra, a0
                  xor          s7, s11, zero
                  slt          a2, t2, s8
                  slli         s6, a1, 13
                  andi         a4, s11, -564
                  slt          a1, s10, s9
                  add          a3, a4, zero
                  or           a2, t1, a5
                  add          s1, t4, s10
                  slt          tp, a0, s0
                  ori          gp, s2, 643
                  and          t2, a3, t0
                  slti         zero, a4, -720
                  xor          s10, a1, s0
                  addi         a5, s3, -783
                  sll          zero, gp, t3
                  sra          s7, t2, t3
                  srli         tp, a0, 2
                  srl          a0, s8, t0
                  slli         s10, s7, 3
                  and          gp, s10, s10
                  srl          a2, s8, a6
                  sll          t5, t4, a3
                  or           a3, s9, gp
                  sub          s7, s9, a0
                  sltiu        s9, s9, 1395
                  slti         sp, s6, 613
                  srli         s5, a0, 25
                  slli         s3, t6, 31
                  srai         s5, a0, 27
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           s1, 0x897cca7e
                  li           s10, 0x80000000
                  li           a3, 0x0
                  li           a7, 0x80000000
                  li           t2, 0xffffffff
                  li           a2, 0x80000000
                  li           s7, 0x80000000
                  li           a6, 0xffffffff
                  li           t0, 0x0
                  add          a7, a2, t2
                  sub          a6, s1, t2
                  auipc        s1, 476120
                  sub          a3, a7, a6
                  sub          s10, s7, t2
                  sub          a3, s10, a7
                  lui          s1, 360787
                  add          a2, a3, s1
                  sub          s7, s10, a6
                  sub          a4, s7, a4
                  lui          s10, 577841
                  nop
                  nop
                  addi         s1, a7, 33
                  auipc        a3, 404241
                  nop
                  sub          a2, a2, a2
                  addi         s7, a4, 463
                  sub          a6, a2, s7
                  lui          a3, 826749
                  nop
                  add          s10, s7, t0
                  add          a7, t0, a6
                  nop
                  addi         t0, a6, 355
                  auipc        a2, 491263 #end riscv_int_numeric_corner_stream_14
                  lui          a2, 767148
                  andi         a7, t4, -729
                  ori          s9, a0, 641
                  sltu         a4, a1, s4
                  auipc        a0, 620286
                  nop
                  slli         sp, a3, 10
                  sra          t6, s5, s3
                  srai         zero, t2, 29
                  srai         zero, s4, 13
                  sltiu        t6, s8, 1312
                  auipc        s7, 424575
                  srl          s10, a7, s3
                  xor          a3, t1, tp
                  srli         gp, t3, 16
                  slti         s7, sp, 1608
                  andi         s9, s11, -1239
                  sll          a0, s5, s8
                  nop
                  sll          a5, s5, t1
                  srli         ra, s2, 23
                  auipc        a4, 58749
                  xor          t0, zero, sp
                  srl          ra, a0, sp
                  ori          s9, s4, 1179
                  andi         s1, s10, -1643
                  ori          gp, a6, 1204
                  slli         a7, a4, 17
                  sltu         s1, t4, t4
                  slli         s7, s1, 2
                  xori         a2, t5, -1580
                  sltiu        t2, a1, -1387
                  sltiu        gp, a2, -412
                  andi         s2, gp, -67
                  ori          tp, ra, 838
                  nop
                  xori         a0, sp, 1459
                  srli         s0, s9, 6
                  srli         s7, a3, 16
                  addi         a2, a0, -576
                  slti         ra, s0, -910
                  nop
                  slt          s0, t3, t4
                  srli         s5, s4, 21
                  sltu         tp, gp, zero
                  lui          s10, 858337
                  srai         zero, s5, 23
                  sra          t5, s9, sp
                  slli         a5, zero, 16
                  srli         a0, a2, 17
                  sub          tp, a2, sp
                  slti         s7, t5, -1586
                  srl          a1, s8, a5
                  ori          s5, s2, 1660
                  nop
                  srl          zero, s10, s6
                  sra          a7, t0, s3
                  sra          ra, s4, a7
                  sub          s1, t4, s11
                  add          t6, t4, zero
                  or           sp, gp, s7
                  lui          s2, 367256
                  andi         a5, a5, 901
                  sra          s5, a2, a1
                  sub          a5, a4, ra
                  ori          a4, a4, -72
                  srai         a0, s5, 14
                  sll          a4, t5, a2
                  srai         s6, s1, 4
                  slli         s5, t2, 16
                  srli         s8, a6, 12
                  sll          a5, a4, s8
                  sltu         zero, s5, s0
                  add          t5, s10, s3
                  and          s6, s1, s4
                  sll          t1, s1, a1
                  srai         a3, a2, 4
                  sltu         s0, a3, t1
                  srai         a5, t4, 22
                  auipc        t5, 964955
                  slt          sp, s11, s3
                  add          tp, ra, s2
                  sra          s9, s11, sp
                  slt          zero, zero, a6
                  xor          s4, a7, t5
                  nop
                  xori         t5, a5, 1596
                  lui          s6, 47320
                  andi         a2, s4, -1669
                  lui          zero, 249851
                  slli         a3, s2, 8
                  add          t5, sp, s4
                  sltu         t1, s7, t3
                  sll          t2, s8, s9
                  sub          s5, a3, s0
                  addi         a1, t0, 374
                  add          tp, a2, s7
                  auipc        a5, 1031065
                  add          s5, a7, t6
                  slt          a0, s10, t2
                  andi         a5, t0, -1614
                  sub          a6, s2, s0
                  add          a5, t4, a7
                  sltu         zero, gp, a6
                  xor          s5, tp, sp
                  sll          a5, s10, t4
                  andi         t1, t4, 876
                  xor          tp, ra, s0
                  xor          t0, a3, t2
                  ori          s4, s8, 1505
                  slt          a7, a6, t2
                  or           gp, gp, t3
                  xor          a2, a0, s0
                  auipc        sp, 1020153
                  sra          a1, t6, t4
                  slti         a2, gp, 815
                  andi         s3, t0, -765
                  sltu         s7, t2, sp
                  slli         a5, s10, 0
                  srai         s6, ra, 14
                  srl          a1, s5, t6
                  sltu         zero, tp, s0
                  add          t5, a1, s2
                  add          s1, t0, a0
                  sltiu        a3, s4, 1296
                  srl          s0, s3, zero
                  li           a2, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           t2, 0x80000000
                  li           t5, 0x0
                  li           s2, 0x80000000
                  li           s8, 0x80000000
                  li           s3, 0xffffffff
                  li           s7, 0x80000000
                  li           gp, 0xe2b74c7e
                  li           a7, 0x0
                  li           a1, 0x0
                  addi         a1, s2, 966
                  addi         s8, a2, -316
                  add          s3, a7, s8
                  add          t5, a2, s7
                  auipc        s8, 881670
                  auipc        s8, 833568
                  nop
                  nop
                  sub          t2, s3, a1
                  lui          s3, 736152
                  nop
                  nop
                  lui          s3, 490339
                  sub          t2, s7, s2
                  addi         gp, s8, -209
                  sub          s2, a7, gp
                  addi         a7, a2, -1158
                  nop
                  nop
                  sub          a1, a2, s7 #end riscv_int_numeric_corner_stream_0
                  sra          t2, a2, s2
                  auipc        a1, 107599
                  or           t5, a7, s7
                  auipc        s7, 916958
                  or           zero, s4, tp
                  sltiu        t5, t4, -1519
                  sub          sp, t0, s5
                  ori          t0, a0, 196
                  sub          t0, s3, s8
                  sra          s10, t1, s1
                  srai         s1, s1, 0
                  sra          a2, t5, s10
                  or           s4, s2, t0
                  xor          s4, t6, tp
                  lui          sp, 706723
                  auipc        a1, 157019
                  addi         t6, a5, -446
                  slt          s10, a7, s6
                  xor          gp, s10, s9
                  and          ra, ra, s6
                  slt          sp, s8, s2
                  slli         gp, s10, 24
                  slli         a2, a7, 12
                  or           a7, s6, tp
                  sltu         s4, t5, a7
                  lui          s4, 1028738
                  auipc        s6, 298873
                  slti         zero, t6, -342
                  sub          a3, tp, t4
                  xori         s5, a4, 1513
                  sra          a7, s5, s2
                  srl          a6, s7, t1
                  sll          ra, s2, zero
                  sltu         s4, a1, t2
                  add          ra, a6, s4
                  lui          a1, 981886
                  lui          s6, 132862
                  slli         tp, s6, 0
                  sltiu        a7, s3, 1577
                  slli         t2, t3, 15
                  slt          a1, a1, t2
                  ori          a2, t0, -1661
                  sub          s6, a3, ra
                  slti         s0, s3, 1201
                  sub          a3, zero, a0
                  sra          zero, t2, s3
                  srli         a3, a7, 25
                  lui          s2, 295892
                  addi         s0, s2, 1761
                  sra          s8, a6, a1
                  add          s6, s8, s0
                  xor          a6, s2, t3
                  srli         s10, sp, 11
                  add          a7, s3, a0
                  xori         s4, a2, -656
                  nop
                  xori         s6, s8, -676
                  lui          a4, 718259
                  addi         t5, s0, 316
                  andi         s8, t0, 678
                  xori         t5, s5, -1442
                  ori          ra, s7, -1747
                  srl          a1, t2, zero
                  sltu         s1, s5, t2
                  srl          a1, s3, s9
                  sltiu        a7, a2, -771
                  andi         t5, tp, 1841
                  lui          a7, 462675
                  sub          s9, s4, s5
                  slt          s10, a5, s0
                  andi         t5, s4, -476
                  xor          a4, t4, ra
                  and          t0, a2, s3
                  xori         a2, t2, -675
                  sltiu        a7, zero, -458
                  and          a4, s9, a3
                  sra          t2, a7, s11
                  lui          a3, 218031
                  sltiu        t1, t1, -101
                  sra          s3, gp, s8
                  addi         s6, s6, 1825
                  srai         sp, s8, 31
                  sll          a7, s8, s5
                  and          a1, t4, a4
                  sra          gp, s2, t0
                  sll          a7, gp, gp
                  xori         a0, t1, -1442
                  andi         s6, s0, 77
                  ori          a6, a5, -399
                  xori         zero, a0, 627
                  srli         a7, a1, 2
                  lui          t1, 243190
                  ori          t1, s1, -1037
                  srai         s9, zero, 15
                  srl          gp, s3, s6
                  ori          s2, s8, -1819
                  sltiu        s4, ra, -882
                  sll          a7, s1, s3
                  srl          s0, s2, sp
                  srl          a2, ra, t6
                  srai         s8, sp, 24
                  sltiu        gp, a0, 1258
                  ori          a7, s2, -1077
                  and          gp, zero, s7
                  xor          a2, sp, s11
                  ori          t1, s1, 516
                  slli         sp, t1, 28
                  sra          s2, a1, a4
                  and          a4, t1, tp
                  lui          s3, 774595
                  add          a5, s1, sp
                  nop
                  andi         a5, s0, -1150
                  srl          s7, t2, s11
                  xori         a0, sp, 10
                  srl          t1, gp, t3
                  nop
                  ori          gp, t4, -260
                  slti         a2, a1, 530
                  or           s0, s1, s4
                  sltu         s8, a0, s2
                  xor          s6, a3, ra
                  and          s2, a7, s3
                  andi         s4, t6, -1129
                  sltu         s1, sp, s5
                  nop
                  slti         t1, s2, 1189
                  sra          a7, sp, s1
                  xori         s3, s11, -1247
                  xor          zero, s9, s7
                  and          s0, zero, a5
                  and          gp, t4, s8
                  sltiu        a4, t4, 1063
                  slti         s6, t0, -517
                  add          s6, t2, s6
                  auipc        s9, 692412
                  auipc        t2, 1011660
                  srl          gp, t4, a0
                  slli         s8, t6, 24
                  ori          t5, a5, -1489
                  sll          s3, s7, s5
                  srai         s2, zero, 21
                  sltu         s0, t2, s1
                  slti         ra, a1, 1214
                  sltu         a5, ra, s0
                  xor          a4, s4, ra
                  or           t0, s4, s4
                  andi         s5, a7, -1336
                  sra          s6, a4, s4
                  slti         gp, a7, 1990
                  sltiu        t2, t5, 902
                  sll          a6, s1, tp
                  auipc        tp, 762980
                  srli         ra, t6, 23
                  auipc        a4, 391350
                  andi         zero, s3, 415
                  and          a3, t3, gp
                  or           t6, t3, s3
                  lui          t6, 357281
                  srai         s4, zero, 31
                  sltiu        a5, a2, 2016
                  sra          ra, t3, t5
                  and          sp, s6, s3
                  srl          s8, a7, a0
                  srai         a2, a5, 1
                  nop
                  srli         t1, a5, 22
                  nop
                  andi         t1, a5, 1277
                  add          zero, s3, s5
                  xor          s0, a2, tp
                  slt          s9, t1, a2
                  add          t6, t5, a3
                  auipc        a7, 916097
                  add          s9, a1, gp
                  auipc        a7, 971911
                  sltiu        sp, a5, 1494
                  srai         s1, s1, 17
                  sub          tp, s10, t1
                  sltiu        a5, t6, 814
                  and          s9, a4, a2
                  addi         a3, s8, 1760
                  slt          a3, s2, s0
                  slli         s5, s10, 13
                  andi         tp, s3, 1794
                  sra          s7, t5, s10
                  sll          s1, sp, a4
                  addi         s10, a1, -1614
                  srl          t6, a4, zero
                  sra          a6, t4, tp
                  or           s6, s9, t0
                  sltiu        sp, a4, 88
                  sltu         s8, s5, zero
                  sll          a6, t3, a6
                  sll          a2, s1, s3
                  srai         a6, a3, 14
                  addi         s7, s10, 614
                  addi         a5, t4, -571
                  ori          a3, s6, -2016
                  and          s9, tp, a5
                  sll          t5, s8, s9
                  lui          sp, 514399
                  slti         a1, a1, -1256
                  slli         s5, a3, 2
                  or           ra, s0, s1
                  slt          t0, s9, s2
                  lui          s7, 760244
                  auipc        s6, 526762
                  srai         s3, s4, 11
                  and          s5, s1, ra
                  slt          a4, a1, t3
                  sltiu        a6, sp, 1410
                  sra          a4, s3, s2
                  slt          t0, a6, a6
                  xor          t6, t6, a2
                  add          a2, tp, s2
                  add          a4, s11, a1
                  slli         a0, gp, 8
                  slti         s10, gp, -920
                  sltiu        ra, t2, 1767
                  or           gp, a1, t3
                  sltiu        s4, t4, 667
                  and          s10, s1, gp
                  srli         s8, a0, 12
                  xori         s1, s1, -205
                  or           a2, t4, t4
                  sub          t0, s5, t0
                  sra          s0, a5, t1
                  or           a4, s9, zero
                  lui          s7, 299972
                  and          s3, zero, s9
                  srli         a1, s11, 24
                  slti         t0, s9, 1162
                  xor          t0, t1, a3
                  srli         a7, t0, 1
                  add          s4, t0, t5
                  srai         sp, s11, 20
                  andi         a1, a1, -1348
                  addi         ra, s7, -908
                  srai         a3, s10, 17
                  lui          a0, 360193
                  slt          s10, s5, a6
                  andi         t2, s2, 1083
                  addi         s5, t1, -1740
                  auipc        a2, 825270
                  xori         s0, t4, 360
                  sltu         t6, zero, a6
                  srai         s2, t0, 10
                  xor          t2, a6, s6
                  sltiu        a2, s3, 1820
                  or           ra, t2, s4
                  add          ra, t2, t0
                  sll          s9, s1, s0
                  auipc        a7, 834903
                  sra          sp, s11, t3
                  nop
                  sll          a1, a0, s9
                  add          t1, s4, zero
                  slti         s5, tp, -317
                  andi         a4, a5, -193
                  slti         zero, a0, 1253
                  sltu         s8, s11, t0
                  xor          s10, s6, t0
                  xor          s9, t6, s5
                  xori         s3, t2, -1424
                  sra          s7, a3, a6
                  slti         t1, a6, -1572
                  xori         ra, a1, 505
                  and          s4, t6, gp
                  slti         a6, a0, 1160
                  add          zero, a2, t0
                  lui          t2, 334393
                  slt          s1, a5, s0
                  sll          a0, s10, t0
                  xor          s2, t6, zero
                  and          s2, s6, t5
                  ori          a7, a7, 80
                  sltiu        a3, a5, -1332
                  slli         s0, a6, 30
                  sra          a0, a4, t4
                  sra          a1, t6, s5
                  srli         s2, a2, 8
                  slli         tp, t6, 7
                  sra          s5, t3, a0
                  srli         t6, sp, 22
                  srl          a0, gp, s2
                  add          a5, a4, a5
                  ori          a4, s9, -1655
                  xori         a1, s7, 248
                  xori         a7, a7, -996
                  auipc        t0, 465794
                  srai         a6, a2, 13
                  srai         ra, tp, 30
                  srl          a4, t4, s4
                  ori          s3, s10, -68
                  add          a5, ra, t2
                  sra          sp, tp, gp
                  lui          a7, 624934
                  nop
                  ori          sp, gp, -1105
                  slt          s7, ra, t4
                  andi         s4, ra, 1838
                  sll          sp, t1, s9
                  sub          t2, t4, s11
                  srai         s8, s11, 0
                  srli         a1, a4, 15
                  or           zero, s11, a6
                  or           s10, s10, gp
                  sra          s4, t1, s9
                  add          t1, s5, t4
                  or           t2, t0, s11
                  andi         s6, zero, -1443
                  nop
                  slt          zero, s2, t2
                  and          s0, a4, s1
                  or           a7, t2, t6
                  and          a6, t0, gp
                  slti         sp, s1, 1853
                  nop
                  andi         s5, s6, 731
                  slti         s2, s4, -489
                  slti         t6, s8, 1417
                  or           a0, s11, a4
                  andi         s6, tp, 1009
                  sltiu        a2, zero, -947
                  srai         a6, a1, 6
                  slti         sp, s5, -1728
                  srl          a7, s1, a5
                  srli         t0, gp, 20
                  sra          zero, a5, a6
                  sltu         s4, t6, a1
                  sltiu        s2, a7, -423
                  and          s6, s10, a0
                  srli         t0, a2, 5
                  and          s8, t6, a4
                  slt          s4, s1, s8
                  ori          a6, t0, -1947
                  nop
                  srl          tp, t1, zero
                  add          t0, a1, a6
                  sll          s7, gp, a4
                  slti         t1, tp, -1379
                  addi         s7, s11, -1622
                  and          a0, t0, t5
                  srai         ra, ra, 11
                  lui          a2, 808931
                  sltu         s3, s6, s0
                  srai         ra, t3, 14
                  slt          tp, s5, t2
                  auipc        tp, 827111
                  andi         t6, s8, 1128
                  nop
                  auipc        a3, 703591
                  sltu         s3, t5, s6
                  sub          s9, s6, sp
                  add          gp, a1, s0
                  srl          s3, t6, s4
                  xor          s7, a6, t5
                  srl          tp, sp, s11
                  slli         s7, s6, 26
                  srl          ra, t1, s4
                  auipc        s10, 150512
                  nop
                  slt          s6, s9, s5
                  li           a0, 0x7d84f3df #start riscv_int_numeric_corner_stream_15
                  li           s4, 0xffffffff
                  li           gp, 0x0
                  li           s3, 0x0
                  li           s0, 0xe814af54
                  li           s6, 0x80000000
                  li           a3, 0x5ae9ec98
                  li           ra, 0x0
                  li           s8, 0x0
                  li           t0, 0x80000000
                  nop
                  sub          s0, a3, a3
                  nop
                  addi         s3, t0, -464
                  auipc        s6, 112240
                  sub          s3, s6, gp
                  sub          s0, gp, ra
                  addi         s3, s8, -937
                  auipc        a0, 294975
                  add          s8, a3, t0
                  auipc        a0, 32535
                  sub          a3, s0, s4
                  add          a0, s0, a0
                  auipc        a3, 222283
                  auipc        a0, 635390
                  nop
                  nop #end riscv_int_numeric_corner_stream_15
                  slt          tp, a4, a2
                  xori         a5, t1, -1114
                  srai         s2, t6, 2
                  sltu         zero, a1, t5
                  add          gp, s10, s3
                  slli         s5, t1, 6
                  srl          s9, a5, a3
                  sltiu        s4, a7, -987
                  addi         a0, t0, -1103
                  andi         ra, a1, -1388
                  sra          a1, t2, a3
                  add          a0, t0, t3
                  ori          ra, a5, -594
                  slt          s4, t5, t5
                  srai         s5, s10, 22
                  addi         a3, t2, 1458
                  add          s9, s5, s0
                  lui          s4, 233237
                  andi         s6, a0, -1903
                  slti         s10, s9, -521
                  ori          zero, a7, -764
                  lui          s6, 527725
                  auipc        t5, 114730
                  xor          s1, s3, sp
                  sltu         s5, s9, s7
                  ori          s4, s9, -352
                  andi         s5, s1, -526
                  xor          s0, sp, a0
                  andi         s7, s3, 1007
                  nop
                  sub          a0, s7, zero
                  nop
                  sll          ra, t6, s8
                  xori         a0, s2, -1314
                  slli         zero, t0, 11
                  xor          a7, a6, a7
                  slli         s4, s1, 19
                  xori         s1, ra, 971
                  sll          zero, a7, s10
                  lui          s8, 276672
                  andi         sp, sp, -387
                  or           a0, a3, tp
                  add          t5, zero, t3
                  addi         zero, a2, 1134
                  xor          s2, a5, t1
                  sra          a4, a1, t2
                  slt          t0, s7, s4
                  sub          t5, s7, zero
                  xori         a5, s5, -673
                  xori         s4, t6, 1648
                  addi         s9, s2, 707
                  lui          t0, 691602
                  add          zero, s1, s9
                  srli         t0, a0, 17
                  andi         sp, gp, -1346
                  andi         s6, s11, 1448
                  or           t1, s2, tp
                  xor          tp, s2, tp
                  xori         s0, t1, -251
                  srai         a6, s9, 21
                  srli         gp, s1, 7
                  sltiu        t6, s2, -863
                  andi         s3, s6, -1019
                  sub          t5, t4, ra
                  slti         sp, t5, -1140
                  srl          a3, t3, t1
                  sll          t2, s1, s11
                  xori         s4, s10, 357
                  ori          s1, ra, -1480
                  slti         t5, s2, -495
                  andi         s2, a7, 1761
                  xor          s0, gp, ra
                  slti         s5, a7, 471
                  sra          s5, s2, gp
                  add          s4, s3, s5
                  add          sp, s7, t5
                  xor          a0, s5, t5
                  addi         t6, s10, 134
                  xor          t5, s6, s0
                  sub          a7, s4, s11
                  or           t2, s1, s7
                  addi         s0, a7, -1234
                  xor          s1, t5, ra
                  sltiu        gp, gp, 1410
                  slt          s2, s1, t3
                  slli         a4, t4, 23
                  add          t5, s2, a2
                  ori          a0, a0, -634
                  andi         a2, s5, -1764
                  sub          a5, s7, s3
                  sltu         s1, a1, a1
                  add          t2, s8, s6
                  sltu         s9, s7, a1
                  add          s9, a0, a0
                  and          s7, zero, t6
                  or           s10, a2, s1
                  xor          s4, t3, s6
                  slli         t5, t2, 19
                  slt          s3, a2, s11
                  add          s1, s8, a0
                  sltiu        a4, a7, -43
                  srai         a3, s4, 15
                  addi         s3, a3, -1352
                  xor          a7, s10, t1
                  srli         t1, t0, 16
                  srli         s7, t4, 9
                  andi         s10, sp, 896
                  lui          s0, 471471
                  or           t0, a4, ra
                  xori         a4, t3, 863
                  xor          s6, s2, t4
                  sra          s5, t5, s3
                  sub          a2, a5, a3
                  add          s7, s3, s1
                  srai         s3, a7, 28
                  xor          t6, t2, ra
                  slli         a1, s10, 12
                  add          gp, t1, gp
                  ori          a6, a1, 80
                  addi         a2, s7, -1823
                  srli         s5, s8, 6
                  sll          a4, a4, s8
                  srl          sp, s5, s10
                  or           a4, a4, s9
                  slti         a7, a7, 542
                  nop
                  ori          s5, s5, -1652
                  sll          sp, s1, s9
                  auipc        s1, 1047641
                  and          s3, s5, s2
                  sltiu        a0, t6, -1857
                  sltu         s10, t0, t2
                  xor          a4, s8, tp
                  sltiu        zero, s4, 247
                  and          a7, tp, t1
                  lui          a3, 245731
                  xori         s2, s2, 1875
                  sub          a2, gp, s3
                  or           s0, a3, t1
                  andi         gp, s1, 2037
                  nop
                  slli         a2, t0, 21
                  srl          a5, t3, tp
                  addi         a7, s9, 214
                  addi         s6, s1, 665
                  andi         t0, s5, -1460
                  sub          s5, s9, a4
                  and          s10, t2, a3
                  slti         gp, t4, 1790
                  xori         gp, a1, 1168
                  xor          a0, a1, a4
                  sub          s10, s5, gp
                  ori          s5, s9, 1769
                  xor          s2, a2, s9
                  sltu         s10, s7, t5
                  slli         t1, s2, 21
                  auipc        s9, 528871
                  ori          t0, ra, 357
                  slt          gp, a7, a2
                  lui          tp, 284110
                  slt          s4, s6, s7
                  ori          t2, t0, -393
                  sll          t5, a4, tp
                  srli         a3, s4, 6
                  ori          t2, a2, 1993
                  lui          s2, 420500
                  ori          t1, s10, -1701
                  srl          tp, t6, a6
                  and          gp, a7, s10
                  slli         s8, a5, 4
                  add          s6, t0, s1
                  and          a4, a5, t5
                  srai         t0, s3, 4
                  srai         s4, t0, 19
                  srli         s9, gp, 28
                  sra          sp, s0, zero
                  sra          t5, s11, gp
                  slt          a7, a0, s3
                  lui          s7, 619541
                  lui          s8, 133122
                  and          t2, a1, a1
                  sub          ra, s7, s4
                  ori          tp, a5, 722
                  and          s9, t3, s1
                  slt          a6, t4, t5
                  slt          t0, t4, t5
                  sltiu        s6, t6, -511
                  srai         zero, t3, 9
                  slt          t2, t4, s4
                  add          a5, a7, t4
                  srai         t5, a0, 25
                  sltu         t5, t4, a3
                  sltiu        s6, s6, 1118
                  nop
                  sltiu        t0, t2, 1161
                  srl          ra, a0, s3
                  or           a2, a5, t0
                  slti         t5, s10, -36
                  auipc        zero, 315090
                  xor          s3, s6, s7
                  add          s4, t1, s6
                  sub          s10, a4, s3
                  srl          zero, zero, s7
                  ori          t1, t0, 1572
                  auipc        t6, 197715
                  or           s4, tp, t6
                  xori         a3, s6, 887
                  and          zero, t0, s1
                  nop
                  add          t2, s10, t2
                  slti         tp, s4, 563
                  xori         ra, gp, 1294
                  add          sp, s8, t1
                  addi         a0, a3, -1237
                  or           s8, ra, s11
                  sub          t0, a1, s0
                  slti         a4, a1, 1685
                  add          gp, s2, gp
                  slt          a3, a1, a4
                  and          a4, s0, a0
                  sll          s4, t3, a4
                  and          s5, s2, s0
                  sltu         t0, sp, a6
                  nop
                  addi         t5, t3, -1329
                  addi         s5, t5, 145
                  slti         s7, a5, 1472
                  xori         s4, s4, 955
                  srl          s6, t5, t6
                  srli         s5, s2, 12
                  slli         gp, t0, 31
                  slli         a1, gp, 2
                  addi         s8, tp, 1663
                  addi         s9, s10, -777
                  sltiu        a1, a7, -1848
                  auipc        ra, 762098
                  srli         s3, ra, 4
                  srl          s0, s11, ra
                  lui          tp, 1039691
                  sub          s10, a2, a7
                  and          s3, a2, t0
                  sltu         s8, t5, zero
                  and          s1, a1, s3
                  add          s3, ra, s0
                  sra          a6, s5, a7
                  sll          s9, s8, t6
                  srai         s7, s0, 13
                  srli         s8, a4, 8
                  sra          s2, s11, a1
                  auipc        t6, 1038018
                  slli         s4, a5, 13
                  sltiu        a3, a1, 444
                  sra          a4, gp, s0
                  slti         t6, t0, -905
                  lui          s7, 403422
                  auipc        a2, 872719
                  ori          s4, sp, -1978
                  sra          t0, s7, a0
                  auipc        ra, 305765
                  ori          sp, s5, -420
                  sltiu        a1, ra, 465
                  andi         s1, zero, -692
                  srai         s3, a6, 16
                  or           a1, s0, s1
                  slt          a4, tp, zero
                  addi         s10, a2, 1539
                  xor          ra, a0, s9
                  ori          s5, t3, -1728
                  sltu         s0, t5, a7
                  lui          a6, 202363
                  sltu         t1, t5, s11
                  and          a1, zero, s5
                  sra          s9, sp, a1
                  or           tp, t0, a3
                  srl          t0, s9, s11
                  slti         t6, s10, 693
                  nop
                  sltiu        a2, tp, -28
                  slt          s7, a0, tp
                  srai         gp, s9, 8
                  xor          ra, s2, t6
                  add          s4, s5, sp
                  andi         s9, a7, -1132
                  sltiu        ra, t4, 29
                  srl          t5, s6, s4
                  sra          a6, a5, t5
                  sll          s4, a5, a6
                  auipc        a0, 315676
                  or           s5, gp, gp
                  sltiu        gp, a6, -1447
                  sra          a5, t2, t1
                  add          s0, t6, s10
                  sll          t0, s11, zero
                  srai         s10, t1, 13
                  xori         s10, t3, -683
                  nop
                  or           a5, t1, s3
                  srai         a6, gp, 9
                  and          t6, s7, tp
                  srl          a5, t2, t4
                  slt          tp, s11, s0
                  slt          s10, t0, gp
                  or           s0, t0, gp
                  slti         ra, a5, 549
                  andi         a7, a5, 746
                  lui          s9, 1031555
                  andi         a0, zero, -801
                  lui          a2, 831360
                  slt          tp, s5, s3
                  slli         s10, s6, 10
                  nop
                  nop
                  sltiu        s2, t2, -2022
                  auipc        a5, 821480
                  lui          a1, 732002
                  sltiu        a5, s1, -1761
                  auipc        s2, 1037586
                  add          t1, s10, t5
                  and          s8, a5, t2
                  sltiu        s0, a1, 603
                  slt          s9, a0, s11
                  slti         t6, s9, -1750
                  slti         s8, t2, -1251
                  nop
                  add          a4, zero, t4
                  xori         a4, a5, -1010
                  slli         s7, t3, 12
                  add          s2, s9, t4
                  addi         ra, t2, -1262
                  srli         tp, s3, 15
                  andi         t0, a1, 942
                  slt          s2, t0, s7
                  sltiu        s9, zero, 1699
                  sltiu        s8, s7, 457
                  addi         a4, s3, 276
                  auipc        s1, 673459
                  srl          a1, s6, a1
                  sub          a0, t3, s7
                  or           t0, t0, t2
                  srli         t1, gp, 15
                  sltiu        s10, a7, 1039
                  sltu         s7, a5, t5
                  addi         t6, t2, 1492
                  slli         a5, t1, 9
                  addi         s4, tp, -720
                  addi         s9, a3, 564
                  nop
                  srli         a0, s11, 12
                  sltu         t6, s10, s5
                  srai         a6, a0, 0
                  sra          s7, s9, s11
                  slti         tp, sp, -379
                  sra          t5, s5, s8
                  andi         t2, s11, 326
                  srl          tp, s11, s0
                  add          a4, s2, s6
                  addi         sp, s10, -1802
                  sll          s0, gp, t3
                  sra          s10, tp, gp
                  sltiu        ra, s10, -1730
                  slt          a4, s1, t3
                  add          s2, t1, t3
                  srl          a0, sp, t1
                  sltiu        s2, t2, 825
                  slt          a2, t0, t3
                  lui          s10, 145448
                  srai         t6, a0, 12
                  srl          s2, t5, gp
                  and          a6, s9, a7
                  sll          t0, t0, s0
                  nop
                  auipc        sp, 261882
                  slt          a3, s7, s8
                  sra          a7, s9, zero
                  srl          s8, a7, t2
                  lui          s4, 947761
                  srl          t2, zero, gp
                  sll          a0, s9, s11
                  sra          a2, t1, s9
                  xor          tp, s2, s2
                  sra          t0, t0, a0
                  xori         t0, gp, -2003
                  addi         t6, t5, 1042
                  sltu         a2, t1, a0
                  sltiu        s3, s7, 378
                  nop
                  auipc        a7, 961724
                  slti         a4, s9, -1844
                  and          a3, s3, t1
                  xor          a1, s7, a2
                  lui          t5, 753810
                  ori          a3, t3, 1628
                  nop
                  sltu         s7, a2, ra
                  sltiu        a7, s4, -341
                  sra          a3, s4, t6
                  slli         s3, t3, 6
                  andi         a7, s4, -1183
                  or           a6, a4, a7
                  nop
                  and          a2, s3, s4
                  slt          a2, t2, gp
                  add          s10, s2, s0
                  slti         a0, t1, -389
                  slli         s5, t1, 5
                  slli         a4, gp, 10
                  srli         a0, s7, 12
                  srai         a1, s3, 5
                  auipc        gp, 1000965
                  sll          s10, s9, gp
                  sub          t1, s3, s1
                  slli         a1, s5, 15
                  auipc        s6, 917018
                  srl          t0, s9, s9
                  and          s2, t2, s7
                  srai         a7, a2, 16
                  and          s6, s1, s7
                  srl          a1, s5, t3
                  add          a2, s10, gp
                  sltu         a0, gp, a6
                  xor          tp, t6, a4
                  nop
                  sra          sp, s10, s8
                  sub          tp, a1, a0
                  srl          s8, s7, zero
                  slli         s10, s4, 7
                  ori          a4, a7, 806
                  sra          s8, s3, t4
                  srai         t0, sp, 14
                  sll          s1, s8, ra
                  srli         t1, sp, 29
                  sra          a2, t2, ra
                  lui          gp, 40835
                  lui          s10, 954895
                  ori          a5, s6, -1518
                  slti         a1, s7, 46
                  slli         gp, zero, 11
                  or           a3, s5, s3
                  or           t2, s7, a5
                  sll          a6, s8, a1
                  srli         a6, t2, 31
                  or           t6, s3, a5
                  slt          a7, s4, a3
                  slt          t6, ra, a0
                  sltiu        s7, t1, 22
                  sltiu        s1, t6, -39
                  addi         t2, t2, -1160
                  srl          sp, ra, gp
                  andi         t0, s0, 943
                  andi         s10, s8, -572
                  xori         a5, s2, -683
                  or           s1, a1, s11
                  addi         a0, s1, -1978
                  xor          a4, t5, s8
                  slli         a5, tp, 8
                  sra          a4, a6, s11
                  nop
                  sub          a0, zero, s1
                  sltu         tp, a0, a1
                  sll          s10, s5, s11
                  slt          a4, a5, a5
                  sltiu        s5, a5, 1226
                  slti         a5, a3, -1805
                  srli         s8, s9, 30
                  sll          a2, sp, s2
                  xor          a2, t1, a6
                  sltu         a7, s9, t2
                  sltu         a2, tp, s2
                  ori          a1, s9, 1083
                  xori         a2, t5, -620
                  or           s1, s6, s10
                  nop
                  auipc        s0, 279345
                  sra          t5, s2, s0
                  ori          s2, ra, -756
                  or           s6, tp, a7
                  sltiu        a7, t4, 342
                  lui          a7, 853143
                  and          s9, t1, a5
                  nop
                  sltu         s7, ra, a5
                  slti         s10, gp, 154
                  slli         s8, s1, 13
                  addi         a6, a2, -693
                  lui          a6, 954996
                  andi         t0, t4, -271
                  slli         s2, a4, 20
                  sra          s10, s11, ra
                  sll          t5, t6, s3
                  sll          s4, a6, s11
                  xor          a6, tp, a2
                  srli         t1, sp, 17
                  sub          s10, s11, t3
                  andi         s0, s7, 1919
                  sltiu        s4, gp, -530
                  xori         tp, s11, -1133
                  srli         s2, s10, 13
                  slli         s0, s2, 2
                  srli         t1, t0, 5
                  sll          a6, s1, a5
                  xor          s1, t4, s5
                  auipc        s1, 223470
                  sll          s0, t3, s10
                  auipc        a7, 668255
                  sll          a7, s6, s0
                  sra          s10, s3, sp
                  srai         gp, t4, 16
                  or           s5, s0, tp
                  or           t6, t2, a5
                  sltiu        a4, t5, 1054
                  srl          t6, s7, t5
                  slli         s8, s11, 12
                  sll          a4, s2, s5
                  and          s4, s4, s7
                  sltiu        t5, t0, 843
                  lui          ra, 968954
                  sltiu        s8, s0, 1166
                  nop
                  andi         s5, a0, -33
                  or           tp, t5, s3
                  xori         s3, a7, 999
                  srli         t1, s5, 31
                  sll          s2, a1, a7
                  srl          t2, t2, a0
                  slli         s6, tp, 13
                  addi         s9, s3, 1422
                  slt          t6, s11, s4
                  sltiu        s0, t4, -1907
                  lui          a6, 23618
                  andi         s8, s11, -412
                  sub          tp, s6, s6
                  slti         s4, s11, 172
                  srli         s0, a7, 28
                  slti         s4, s3, 446
                  auipc        a6, 996622
                  auipc        s1, 411118
                  sra          a4, s0, zero
                  lui          s0, 321987
                  xor          a0, s5, s4
                  lui          a5, 424345
                  slt          a1, s5, s5
                  sll          s9, t6, a4
                  slt          a7, t3, a3
                  srli         gp, a4, 16
                  or           s9, t0, t1
                  xori         t0, t4, -502
                  srli         s8, s9, 27
                  xori         a4, a0, 524
                  slt          s10, s8, s2
                  or           a1, a2, s0
                  sltu         a0, a1, a2
                  sltiu        a4, t0, -1648
                  srai         ra, a2, 12
                  slti         a3, t6, 1361
                  sll          s5, a4, t6
                  xori         a2, s1, -1915
                  or           s8, a0, s9
                  add          s3, a6, t0
                  slt          a3, t3, a6
                  sltu         s9, sp, t0
                  auipc        a5, 499381
                  slti         ra, t0, -568
                  srl          s2, a4, s3
                  srli         a7, t6, 30
                  andi         a5, t0, -664
                  lui          sp, 482589
                  addi         a2, s3, -781
                  sltiu        a3, t1, 1909
                  slli         t1, a1, 7
                  addi         s6, t6, 1246
                  addi         s6, s6, -857
                  lui          a7, 409826
                  slt          tp, t2, t3
                  lui          s9, 995652
                  slli         sp, t1, 27
                  auipc        t2, 578991
                  and          s9, s6, s11
                  add          s10, t1, tp
                  srai         t5, a6, 4
                  or           s8, t4, a7
                  xori         tp, a4, 1110
                  addi         a5, a3, -697
                  andi         t1, t4, 1506
                  slli         a2, t4, 16
                  andi         tp, t0, 131
                  xor          s8, t0, s4
                  and          s10, a2, zero
                  sll          s3, s3, s2
                  srai         s0, s5, 7
                  slli         s3, s7, 19
                  andi         s6, a1, -1670
                  srai         zero, sp, 5
                  nop
                  sra          a3, s7, s9
                  srl          s0, t2, gp
                  xori         gp, s6, 1108
                  sltu         a2, s3, s8
                  sra          t0, a2, a0
                  sltiu        a7, tp, 1292
                  xori         t2, t2, 1914
                  and          s7, s2, a5
                  sll          s2, s5, s11
                  or           a4, a6, s11
                  and          t5, s6, t0
                  sll          t6, s7, t3
                  auipc        s8, 1008689
                  addi         a2, s8, -85
                  sra          s6, s3, s2
                  add          t2, s8, s7
                  auipc        gp, 312667
                  sll          t1, s2, a4
                  sra          t5, s10, t4
                  sub          s5, ra, a4
                  sub          zero, ra, t0
                  ori          a5, s11, -1739
                  srli         s2, t3, 6
                  sltu         s8, t1, s0
                  xor          gp, s4, tp
                  lui          a0, 792690
                  and          ra, s9, t0
                  srl          s2, t0, s10
                  srai         t0, a3, 19
                  nop
                  li           a5, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           s4, 0x277ab14e
                  li           s8, 0xffffffff
                  li           t5, 0x0
                  li           t2, 0x0
                  li           s3, 0x80000000
                  li           s0, 0x80000000
                  li           t6, 0x0
                  li           a4, 0x0
                  li           s6, 0x80000000
                  sub          s0, s4, s8
                  nop
                  sub          s0, s4, s3
                  auipc        s8, 206679
                  lui          t5, 146427
                  auipc        s3, 13686
                  add          s3, s0, t6
                  sub          s8, s6, t6
                  addi         s8, t6, -39
                  sub          a5, a5, s3
                  sub          s8, a4, s4
                  nop
                  lui          s8, 725908
                  add          s0, a4, s4
                  addi         s8, s3, -2037
                  addi         t6, t6, -784
                  sub          a4, a5, t5
                  add          s6, t2, s4
                  sub          s0, s8, s6 #end riscv_int_numeric_corner_stream_17
                  xor          s4, s7, s7
                  sltiu        s6, t0, 824
                  xori         s2, s2, 285
                  sll          gp, t1, tp
                  sub          s1, t6, t4
                  or           zero, t5, a0
                  sra          s9, s1, a0
                  nop
                  and          a2, s10, t3
                  slt          t5, a3, a3
                  add          a4, gp, s7
                  andi         s10, s1, 987
                  or           s7, sp, a0
                  sll          s6, s8, t0
                  or           a7, gp, s10
                  and          a0, t0, a5
                  sra          s4, t1, s7
                  add          sp, s0, a7
                  add          a7, a4, zero
                  srl          s3, t0, a1
                  sub          s7, t6, s8
                  sltu         t2, s1, tp
                  lui          s8, 300798
                  addi         a3, t0, -184
                  srl          a3, t0, s5
                  sltu         ra, tp, s6
                  xori         zero, a3, -757
                  srl          s6, s10, s5
                  or           a7, s5, a5
                  or           a0, t1, ra
                  srli         a6, s5, 2
                  srli         s10, t1, 23
                  srl          a0, zero, s11
                  sll          t5, a0, s5
                  auipc        s10, 1012065
                  xori         s9, a6, 156
                  add          t6, a3, s0
                  srl          zero, a5, a7
                  srai         a7, t1, 11
                  sltiu        gp, a6, -1786
                  ori          a0, gp, -335
                  add          s4, zero, tp
                  lui          t5, 672993
                  addi         s6, s7, -978
                  srli         a0, t3, 7
                  nop
                  sra          tp, a5, ra
                  srai         a1, a5, 14
                  srai         tp, tp, 2
                  and          a0, s2, t4
                  sll          s9, t5, s9
                  sltu         s6, a7, t2
                  add          a2, a0, t6
                  sub          s9, s5, t2
                  slti         gp, s2, -31
                  lui          s8, 785397
                  or           s2, t1, s6
                  add          s1, t0, s7
                  srl          a6, s9, t0
                  slt          a2, s4, s5
                  sll          s5, s9, s8
                  and          s3, s11, a1
                  xor          s5, s2, s11
                  xor          t5, s0, t2
                  ori          a0, s0, 621
                  srai         t1, s8, 13
                  srl          t5, t2, s2
                  sltu         s1, gp, a6
                  add          s5, s4, a1
                  slli         s7, a6, 0
                  slli         a0, t6, 28
                  srli         t1, sp, 27
                  andi         a2, s9, 1483
                  sll          a7, t5, s9
                  sll          s0, s0, a1
                  srli         s5, tp, 13
                  addi         s4, s5, -1704
                  and          a1, s6, t4
                  add          s0, sp, a5
                  xor          s2, zero, s6
                  lui          sp, 58366
                  add          a1, s9, a6
                  lui          t2, 80388
                  slli         t0, tp, 13
                  andi         s5, a2, 779
                  sub          a6, tp, zero
                  xor          s3, a4, s11
                  srai         tp, s0, 12
                  or           s0, t5, t3
                  slt          ra, a4, a6
                  andi         a5, t4, 1159
                  xori         t6, t2, -1724
                  lui          t2, 482915
                  auipc        s9, 1026850
                  srai         s0, t5, 19
                  slli         s0, s11, 29
                  sll          s4, t3, s3
                  lui          s5, 107830
                  sub          t2, s9, s10
                  slt          s8, s8, a5
                  slt          t1, zero, zero
                  sra          a0, gp, t4
                  or           s7, a5, t5
                  lui          a0, 951372
                  xori         a2, s11, 1928
                  addi         t0, gp, -843
                  auipc        a4, 66604
                  lui          s1, 612407
                  and          a6, a1, s11
                  lui          s8, 518239
                  xor          s6, s6, a4
                  srli         t5, s1, 21
                  and          a4, s4, s5
                  nop
                  ori          s0, s5, 1590
                  slt          t6, a7, t6
                  sub          tp, a2, t0
                  sltiu        a1, s9, -842
                  srl          a1, t0, s11
                  slli         gp, a2, 26
                  li           a3, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           a7, 0x0
                  li           a5, 0x0
                  li           t0, 0x48fcb69e
                  li           a6, 0xffffffff
                  li           s7, 0xddea1ed0
                  li           tp, 0x0
                  li           s6, 0x0
                  li           a2, 0x0
                  li           s3, 0xffffffff
                  nop
                  sub          s6, s7, a2
                  add          s6, a5, a7
                  lui          a6, 114183
                  add          s6, t0, tp
                  nop
                  add          s7, a7, a3
                  add          a7, s6, s7
                  addi         a7, a6, -1989
                  add          a2, s6, a7
                  addi         a6, a6, 1990
                  nop
                  add          a5, a3, a2
                  nop
                  addi         a3, a2, -1591
                  add          s7, a5, s3
                  nop
                  lui          s6, 973660
                  nop
                  sub          a6, s7, s6
                  nop #end riscv_int_numeric_corner_stream_7
                  slti         sp, t3, 404
                  srl          a4, t4, t1
                  srli         t6, s11, 18
                  sltiu        s0, s1, -211
                  sltiu        s9, sp, 881
                  auipc        t0, 774485
                  nop
                  sltu         t5, s3, a7
                  or           zero, s3, tp
                  lui          s5, 821421
                  srl          a7, t1, zero
                  add          s6, s2, s10
                  sltiu        a4, a5, -1841
                  srai         a7, s0, 10
                  auipc        a4, 311572
                  srli         a1, s2, 11
                  sra          s3, a4, a2
                  sll          s0, s11, a0
                  andi         a4, ra, 1419
                  xor          s2, a5, a2
                  srl          a2, sp, s8
                  sra          s8, s5, t3
                  slti         s9, tp, 525
                  srai         s8, s4, 11
                  nop
                  sra          t2, a3, t6
                  auipc        t2, 417000
                  sltu         a7, gp, s7
                  or           ra, s6, s9
                  auipc        s0, 163048
                  sltu         t1, ra, s4
                  sltiu        s6, zero, 1334
                  sltu         s2, s2, gp
                  sub          s10, gp, t0
                  xor          s5, s10, s8
                  sltiu        s8, a1, 1107
                  addi         a3, s4, 2004
                  srl          s7, a2, ra
                  slli         t2, gp, 14
                  xor          s9, s9, s11
                  auipc        t6, 605821
                  nop
                  auipc        tp, 382589
                  sra          s10, s0, s8
                  xor          a6, a7, s9
                  xori         s6, s6, 380
                  srai         a3, s1, 20
                  auipc        a1, 562791
                  slt          gp, t6, t3
                  nop
                  andi         t0, t6, -1650
                  xor          gp, a3, s4
                  sra          ra, ra, t4
                  sra          s4, s3, zero
                  sub          t6, s0, a5
                  srl          s2, sp, s2
                  sra          s10, sp, s4
                  lui          a3, 268585
                  or           s7, gp, a7
                  srai         ra, s10, 23
                  slli         t5, s8, 0
                  srli         a3, a2, 30
                  sra          ra, s7, s6
                  ori          zero, t4, -974
                  and          t1, s8, a6
                  srai         a4, a5, 3
                  xor          tp, zero, a0
                  sub          zero, a7, s1
                  ori          s1, ra, 950
                  srl          s1, s11, t3
                  slti         t6, s4, 1578
                  andi         t5, s1, 796
                  sltiu        s10, a6, -365
                  and          a4, t3, tp
                  ori          s0, s2, 53
                  sra          a0, s10, s10
                  ori          s5, t3, -1564
                  and          a2, t4, a5
                  ori          t6, a1, 1412
                  sub          tp, ra, a6
                  or           s9, a5, gp
                  slti         s10, t2, 920
                  or           s9, t3, a6
                  or           s1, a4, s2
                  auipc        s8, 223692
                  xori         t0, s4, 354
                  xori         a5, t1, -434
                  xor          s2, a4, a6
                  slli         a6, s1, 20
                  sra          t5, a7, s9
                  and          s7, t1, t0
                  slt          s9, t6, s8
                  xor          s5, a0, ra
                  add          s10, t5, t6
                  sra          a1, a0, a6
                  or           t6, t2, a7
                  srl          a5, t5, a5
                  sra          a2, t5, t6
                  srli         gp, s11, 2
                  sltu         s5, s4, s3
                  lui          s10, 669673
                  slt          s5, a4, s1
                  xori         s9, t6, -923
                  srai         t2, t4, 8
                  slti         s5, a0, -559
                  slli         s6, t6, 14
                  slt          s10, t2, a6
                  sub          s7, s11, ra
                  srli         s9, zero, 1
                  and          a7, s7, t2
                  slli         a6, s11, 0
                  and          s7, a3, a5
                  sub          a0, zero, sp
                  lui          a2, 939401
                  add          t2, s2, s5
                  sltiu        a1, a6, 21
                  sll          s10, a4, s11
                  xori         a7, a0, -564
                  nop
                  srli         s1, zero, 20
                  srai         a1, s1, 15
                  slli         tp, t1, 12
                  andi         a2, a0, 1227
                  sltu         tp, s5, s10
                  xori         a0, a7, 57
                  add          a0, s1, a2
                  slli         a6, s7, 14
                  andi         a3, a3, 1875
                  nop
                  slt          ra, s9, t1
                  xor          s6, t0, zero
                  srli         s8, s5, 3
                  srli         a7, sp, 3
                  xori         a4, s3, -1152
                  add          s4, s7, a2
                  sll          a4, s2, a0
                  slli         s0, zero, 18
                  srli         s8, zero, 10
                  srl          t6, gp, s4
                  srai         zero, t0, 2
                  add          t5, s11, s1
                  xor          t2, s9, s1
                  sltiu        s4, s10, 529
                  slli         a7, tp, 3
                  slli         s10, s3, 21
                  xori         sp, s0, 1069
                  andi         a1, tp, -229
                  slti         s8, a4, 1848
                  ori          ra, a4, -1568
                  slti         t2, t0, -1632
                  slli         a0, s4, 0
                  sltiu        a7, s6, 664
                  sub          zero, a0, t0
                  sra          gp, s0, t5
                  sll          s8, a6, t0
                  xor          a0, s8, t5
                  slt          s6, t3, t4
                  sltiu        tp, s10, 737
                  xor          gp, t0, a0
                  addi         s4, a4, 1370
                  xori         s0, tp, -305
                  and          a3, tp, s8
                  ori          s8, t4, 1355
                  srli         s6, a0, 30
                  srli         s3, tp, 17
                  sll          gp, s4, t1
                  xori         a4, s10, -98
                  sltiu        tp, s0, -322
                  sltiu        s5, t4, -674
                  xor          s1, s9, a4
                  lui          gp, 371847
                  slli         t6, t5, 26
                  srl          s0, t6, a4
                  slt          s5, t1, s4
                  srai         a4, a1, 6
                  sltiu        s4, a7, -686
                  add          a0, a4, t6
                  nop
                  auipc        s4, 988298
                  or           a2, t5, s9
                  ori          s4, s7, 1962
                  sll          t1, t5, t5
                  auipc        a1, 740276
                  slt          t2, s7, a2
                  andi         a1, t0, 23
                  or           tp, ra, s10
                  srli         s0, t6, 19
                  andi         s7, a1, 405
                  srli         sp, s7, 6
                  slli         gp, sp, 22
                  srl          s0, a3, s8
                  srai         s1, t1, 30
                  or           s2, s5, a5
                  xor          t5, t0, a0
                  xor          zero, s1, t5
                  auipc        tp, 131564
                  slli         zero, s3, 8
                  slti         a3, s11, 1863
                  sltiu        s2, gp, 917
                  sltu         s5, a5, a6
                  ori          t2, zero, 1491
                  slt          a0, s3, sp
                  xor          a3, s1, s0
                  slti         s9, s8, -415
                  ori          s2, t3, -260
                  sub          sp, s7, s4
                  andi         tp, s2, 1862
                  add          s2, s8, t6
                  srli         s1, ra, 12
                  ori          s6, a6, 1482
                  lui          t2, 347210
                  or           ra, a5, tp
                  sltu         a3, s8, ra
                  srli         t0, a0, 10
                  or           a1, a5, a3
                  sltiu        s9, s0, 1103
                  ori          t0, s8, -419
                  sltiu        s6, s7, 1305
                  xori         s5, s9, 2017
                  andi         gp, t0, -1699
                  ori          a2, a0, 1503
                  srai         a2, tp, 0
                  auipc        a2, 814304
                  auipc        t2, 78113
                  andi         s6, sp, -1581
                  srli         s5, a1, 7
                  srai         gp, s3, 17
                  sra          s4, t1, a1
                  auipc        t5, 1042083
                  and          a7, a3, a7
                  sub          a0, a6, a5
                  add          t1, a1, s2
                  nop
                  srai         s4, s4, 18
                  auipc        s9, 372498
                  srli         a5, s10, 19
                  andi         sp, s7, 1724
                  xori         a0, a7, 532
                  auipc        s4, 793228
                  or           gp, sp, ra
                  lui          t6, 301135
                  lui          a2, 339787
                  xor          sp, t6, a0
                  slti         t0, t5, 1197
                  slti         zero, s11, -1278
                  and          t2, s7, t3
                  slli         t5, t3, 19
                  slli         sp, s11, 16
                  andi         t6, zero, 184
                  slt          s7, s5, s4
                  auipc        a4, 749940
                  lui          s8, 786480
                  slt          a1, a7, sp
                  sra          a2, s5, s0
                  ori          s0, s0, 1986
                  xori         a5, sp, -1198
                  sub          t1, s6, t4
                  xori         s5, tp, 469
                  slli         s5, s0, 29
                  slli         s0, a3, 29
                  xor          t2, s3, s1
                  srai         a1, a0, 21
                  xori         s8, t0, 1797
                  srl          t6, s5, t3
                  sub          t6, s7, a3
                  auipc        s4, 1568
                  sra          s0, t0, s11
                  xor          s1, t0, s11
                  andi         t6, a6, 713
                  srai         s10, t5, 11
                  slt          a6, sp, a5
                  sll          t1, a6, s2
                  lui          zero, 58571
                  srli         a3, zero, 30
                  slt          t0, a2, sp
                  srai         s2, s11, 4
                  sll          zero, s4, t4
                  srli         t6, s11, 17
                  slli         s10, zero, 0
                  nop
                  and          s10, ra, s11
                  auipc        tp, 30871
                  slli         t6, s4, 27
                  lui          sp, 675238
                  ori          s10, t3, -463
                  and          ra, a3, a2
                  xor          t0, t2, s0
                  auipc        a0, 197086
                  sub          tp, a6, t1
                  sub          s6, gp, s10
                  slt          s6, a6, a3
                  xor          t1, s11, a4
                  addi         a5, a4, 201
                  xori         s9, s8, -425
                  sra          s2, s8, zero
                  sll          a3, t2, t1
                  srai         t0, s7, 2
                  slti         s8, a1, 1137
                  srl          t2, a2, a2
                  ori          ra, s10, 922
                  or           s10, s0, tp
                  ori          a0, a3, 1475
                  sra          a7, a4, zero
                  add          s10, a7, s10
                  slli         t2, t3, 31
                  andi         zero, s10, 610
                  sltiu        a6, s11, 1894
                  xor          s3, s4, t0
                  slti         s5, a4, -1255
                  and          s8, s11, t2
                  sra          t0, s5, a7
                  srli         a2, t2, 27
                  slt          t0, a0, s3
                  sll          gp, s10, s1
                  add          a1, t3, a4
                  slt          zero, t2, a2
                  srl          a0, s9, ra
                  xori         a2, a5, -106
                  xori         s3, a2, -1438
                  sltu         t5, s8, t6
                  xor          s3, zero, s7
                  xor          a4, a1, s0
                  or           s0, a2, a6
                  slti         s10, s3, 650
                  xori         s8, s6, -1253
                  srli         s10, sp, 28
                  ori          sp, a2, -1700
                  xori         a0, tp, 23
                  srli         s3, s1, 0
                  srli         t2, s7, 15
                  slti         a4, s5, 1613
                  xori         tp, a0, 62
                  andi         a7, t4, 1663
                  addi         t1, a1, -1420
                  sll          s6, a5, s10
                  slti         tp, s4, 1093
                  add          t6, a3, s11
                  slti         a4, s7, 815
                  xori         sp, a2, -1888
                  and          s4, s6, a1
                  and          tp, s8, s3
                  slti         t5, ra, 105
                  lui          tp, 681968
                  sub          s9, a4, s1
                  xori         a4, a6, -1214
                  and          t1, s10, t5
                  xori         a4, s1, 1097
                  slt          sp, tp, t0
                  srli         a6, s10, 4
                  andi         t1, sp, -527
                  auipc        tp, 187860
                  nop
                  nop
                  auipc        sp, 809485
                  xor          t0, s8, a5
                  sub          sp, gp, t2
                  srli         s9, t4, 11
                  and          a5, a6, a5
                  add          s4, s7, a4
                  add          tp, s4, a1
                  sll          sp, a5, s10
                  auipc        t2, 44796
                  slt          t0, t5, s9
                  slt          s8, s3, s8
                  slti         a4, s3, -1832
                  addi         a4, s10, 927
                  xori         a5, zero, 1046
                  sll          t2, a4, t3
                  auipc        a6, 139114
                  sltiu        a4, zero, 264
                  sra          s0, s8, zero
                  slti         a5, s11, -892
                  srli         t6, s0, 9
                  slli         s10, s2, 27
                  sra          tp, s6, s4
                  add          a2, a0, a6
                  slti         a3, s3, -887
                  addi         t1, t3, 346
                  or           a5, t3, t2
                  or           a2, s7, s9
                  lui          s9, 108782
                  ori          a2, t0, 820
                  andi         a2, a0, 829
                  ori          t6, a2, -1256
                  srli         t2, s11, 3
                  slli         tp, t6, 8
                  srai         ra, a6, 20
                  sltu         s8, a7, a3
                  or           tp, a4, s11
                  and          a2, zero, s6
                  andi         ra, t3, 1413
                  auipc        s8, 634589
                  slli         a6, t1, 8
                  nop
                  slli         s3, t2, 14
                  nop
                  srli         ra, t2, 22
                  srai         s4, t4, 11
                  slti         gp, s10, 840
                  add          ra, t6, t5
                  lui          a2, 559874
                  auipc        t2, 215576
                  xori         a3, zero, -1050
                  sll          t2, s10, t5
                  slli         t6, s2, 15
                  addi         tp, a0, 1308
                  and          a2, s11, tp
                  lui          s5, 53192
                  andi         s0, zero, -1676
                  sub          a7, a5, a6
                  or           s3, t0, s11
                  sra          s4, gp, a3
                  sltu         s1, gp, s11
                  sll          a5, s8, ra
                  add          a1, s3, s9
                  slt          a6, a1, sp
                  sltiu        a2, t4, -102
                  nop
                  or           s3, a1, t0
                  ori          a5, s9, -1201
                  slt          t2, t0, s9
                  sll          s0, a4, s10
                  nop
                  xor          t6, gp, s8
                  xor          a2, t2, t4
                  srli         s4, a4, 23
                  slt          s6, a4, s5
                  srl          a4, s11, t1
                  addi         zero, a7, -1121
                  slt          a3, s4, t3
                  xori         s3, s6, -733
                  xor          s1, zero, a1
                  sra          s5, t4, t0
                  xor          a2, s11, s7
                  sll          a0, s3, zero
                  lui          a4, 211174
                  sltu         a5, s4, a1
                  slli         s0, t2, 3
                  srl          s6, t2, s5
                  srl          s2, gp, s10
                  auipc        ra, 813096
                  slti         a0, a5, 1475
                  sltu         t0, s8, t6
                  ori          a1, a6, -1508
                  and          s9, s7, gp
                  xor          s1, s1, sp
                  slti         t6, a7, -48
                  xori         s7, s2, 1208
                  add          s6, gp, s4
                  slt          a3, a7, gp
                  nop
                  xori         s1, s10, 151
                  sltu         a2, s4, s4
                  lui          a2, 1018393
                  srl          a5, a7, s3
                  sra          gp, s4, s5
                  sltiu        t0, a1, -301
                  nop
                  slti         a5, t4, -1194
                  ori          a6, t6, 110
                  sltiu        s7, t3, -1346
                  lui          s2, 414775
                  sltiu        a5, s1, 207
                  srli         sp, t3, 6
                  or           gp, a0, a6
                  xori         s0, a5, -1183
                  sub          s9, a2, s8
                  srl          ra, sp, s2
                  xori         sp, t0, -165
                  lui          s3, 698917
                  or           tp, a0, tp
                  auipc        tp, 111543
                  andi         a0, a6, -1858
                  sltu         s10, t3, s3
                  slli         t0, t2, 4
                  lui          s8, 371593
                  lui          s3, 245729
                  srai         t1, a6, 26
                  sltu         sp, tp, s9
                  srli         a2, ra, 0
                  sltu         a1, a0, s5
                  slt          s3, s3, a7
                  sltu         a6, s3, a2
                  srai         a4, s8, 26
                  sltu         a6, s10, t2
                  or           a3, gp, a7
                  add          s9, a1, t0
                  addi         s1, s10, 1652
                  sll          gp, t3, a7
                  sll          s2, s5, t1
                  xori         a2, s0, -182
                  srl          s7, s5, s6
                  andi         a7, a3, -210
                  or           s9, s0, s7
                  slt          a5, s3, zero
                  sra          tp, t1, gp
                  sltu         s1, s3, a0
                  sra          a4, a7, a5
                  xori         a0, a5, -242
                  slt          ra, gp, t3
                  xor          t6, gp, t2
                  ori          gp, a4, -369
                  auipc        s0, 563936
                  or           s8, t6, ra
                  add          s4, ra, s0
                  srli         s5, a0, 28
                  sltu         zero, a1, t1
                  slti         a2, s5, 283
                  srli         t1, s2, 6
                  sltiu        a6, s4, 1735
                  xor          a2, t2, a6
                  slti         s0, ra, -850
                  nop
                  lui          t1, 458106
                  sra          s4, t5, a2
                  sll          a5, a4, s6
                  slti         gp, t2, -892
                  srli         s5, a2, 27
                  sltiu        a5, a3, -1553
                  sll          a5, s0, s9
                  xor          s0, t0, t3
                  srli         s8, t3, 28
                  add          a0, a1, t5
                  xori         s3, zero, -1039
                  slt          s6, a3, t1
                  slti         s7, a1, -1889
                  slti         s5, s4, -447
                  and          a0, s8, ra
                  addi         t5, s4, -216
                  sra          sp, s8, a3
                  slt          s7, s7, ra
                  lui          t2, 813190
                  lui          ra, 263662
                  or           t0, s5, a5
                  sra          t6, a6, a1
                  ori          gp, tp, 128
                  xori         t5, ra, 1384
                  xor          a2, s2, s10
                  xor          s5, sp, t3
                  andi         a6, gp, 1187
                  sra          ra, gp, a2
                  addi         gp, s9, 165
                  slt          a3, a3, a6
                  auipc        zero, 148541
                  xor          t6, t3, a7
                  nop
                  xor          a0, a0, a3
                  sltiu        s2, s8, 506
                  slti         a0, a2, -128
                  ori          s2, t0, -1618
                  xori         t6, s8, -1506
                  slli         zero, a1, 23
                  lui          a1, 53740
                  srl          s5, a6, t1
                  or           a4, s5, a3
                  andi         s3, t2, 2037
                  sra          ra, gp, a6
                  addi         t2, sp, -1867
                  sub          a2, s5, s8
                  sra          s0, a2, t1
                  or           s2, s0, ra
                  sra          gp, t4, t2
                  nop
                  sra          s0, t0, ra
                  ori          s1, tp, -1397
                  lui          a4, 556342
                  ori          a2, s2, 1105
                  or           s5, a1, a6
                  srli         a2, s0, 21
                  slt          t0, a0, t3
                  srli         a7, s10, 28
                  xor          gp, gp, s8
                  sra          a4, a2, t3
                  slti         t0, s3, 819
                  sltu         a2, a2, s3
                  xor          a1, t0, zero
                  nop
                  srl          a0, s8, a7
                  slt          a7, a0, a4
                  srl          ra, t5, a4
                  auipc        a2, 807473
                  auipc        a4, 542828
                  sltu         a5, t3, t0
                  sltu         t5, a7, t6
                  ori          t5, s6, -1007
                  slli         a6, s11, 4
                  srli         s6, t0, 7
                  srli         s7, s4, 21
                  and          a5, s3, s9
                  srai         a6, s3, 16
                  ori          s1, t2, 1136
                  andi         s4, s10, -1766
                  sltu         t6, s10, t5
                  sll          t5, t0, zero
                  slti         a0, gp, -868
                  xori         s8, a6, -52
                  or           t2, t1, a5
                  sra          s10, s10, a7
                  srl          a3, a2, s0
                  srl          t6, s10, a1
                  xor          a4, s6, s5
                  or           sp, s0, s5
                  sltiu        s8, s0, 329
                  lui          a2, 217932
                  ori          s8, s0, 563
                  xor          tp, t1, s6
                  slli         s6, a7, 12
                  nop
                  and          s8, a3, sp
                  nop
                  srai         t1, t6, 27
                  andi         s0, s1, 2043
                  slti         sp, s10, 832
                  srli         s0, a5, 14
                  slt          s7, s9, s11
                  sltiu        t6, t5, 372
                  sll          a6, a1, s0
                  or           s5, t5, s9
                  sltu         tp, s5, t6
                  add          ra, t2, s11
                  sltiu        zero, a4, 285
                  sub          s10, s6, s2
                  auipc        s8, 959440
                  slli         s7, s3, 9
                  auipc        s9, 761504
                  nop
                  andi         t6, s8, 1482
                  xor          s7, a5, a1
                  slti         a7, t6, -1956
                  auipc        a1, 897257
                  sub          s10, s5, sp
                  or           s10, a2, s4
                  slt          gp, t1, s1
                  slli         s3, tp, 8
                  xori         a5, sp, -110
                  srli         t1, tp, 0
                  srli         s3, a5, 13
                  sll          s2, t0, s10
                  lui          a1, 406940
                  lui          s8, 536091
                  andi         s10, t6, 464
                  or           t0, t4, s9
                  auipc        t5, 86891
                  srl          s0, t5, s6
                  sub          s7, t6, a6
                  sltu         t6, t5, a0
                  sub          s10, a3, t3
                  lui          s6, 390091
                  srai         s9, t5, 5
                  srl          s10, s0, a4
                  xor          a0, s10, a1
                  auipc        a2, 696531
                  lui          a3, 478131
                  sltiu        gp, a6, -2004
                  slli         gp, s11, 22
                  xor          a0, s7, s1
                  sub          t1, s11, a3
                  sll          s6, s10, s8
                  or           s8, s9, a5
                  srai         a6, a1, 23
                  andi         a1, a1, -87
                  sra          s5, t4, a1
                  sltu         a6, s1, s6
                  add          tp, s0, t5
                  ori          a6, s6, 559
                  srai         a3, a2, 30
                  andi         s6, s4, -111
                  slt          s4, t5, sp
                  slt          s8, s1, s1
                  or           a7, a1, s3
                  xor          sp, t5, t0
                  and          a6, a7, a1
                  srl          a2, tp, a7
                  nop
                  xori         a1, gp, -1252
                  lui          a3, 247009
                  or           s3, tp, a3
                  slti         s4, a1, 1492
                  auipc        s5, 156384
                  lui          a3, 520346
                  ori          s3, zero, 1581
                  auipc        s1, 515703
                  slt          a0, ra, s0
                  ori          a3, sp, -319
                  sltiu        s6, s2, -1169
                  andi         s9, t0, 530
                  slti         s10, zero, 235
                  slti         s5, s3, 1917
                  slli         gp, t1, 21
                  sll          s5, s0, t2
                  sll          gp, s9, t4
                  srai         a0, s10, 28
                  sub          ra, a7, s2
                  srai         ra, a7, 1
                  sltiu        a3, a7, -1846
                  nop
                  xori         a6, a2, -1281
                  lui          s2, 588583
                  add          t6, s6, a0
                  auipc        t5, 343824
                  slti         sp, t1, -679
                  srli         a1, ra, 25
                  xori         a5, t0, 753
                  auipc        a7, 637810
                  slli         s1, zero, 21
                  addi         s8, ra, -889
                  sub          a1, t1, sp
                  add          s0, s7, s3
                  srli         s6, t0, 7
                  slt          s6, a2, t6
                  srli         t2, s0, 26
                  lui          s1, 777214
                  slti         ra, s0, 436
                  slli         a7, s6, 27
                  or           s9, a1, gp
                  sra          s10, tp, s4
                  lui          s0, 184868
                  srai         a4, a2, 20
                  sltu         s4, s9, s5
                  srai         a4, gp, 17
                  slti         zero, tp, 1852
                  slli         t2, s3, 29
                  xori         s5, a6, -1482
                  srai         a4, a3, 13
                  add          a2, t2, s11
                  lui          sp, 468518
                  srli         s10, a3, 6
                  srai         s6, s10, 17
                  slt          a2, t0, s10
                  xori         t5, a3, 999
                  or           s7, t1, s8
                  sra          s2, s6, t5
                  lui          gp, 266393
                  lui          s3, 382028
                  lui          s5, 128592
                  sub          s4, s11, s3
                  and          tp, t4, s11
                  andi         t2, a1, -383
                  xor          ra, s8, a3
                  andi         s9, a0, 670
                  srai         s4, gp, 4
                  ori          zero, a3, 1665
                  sub          s6, s8, ra
                  xori         s1, a6, 1674
                  auipc        s9, 1028029
                  add          zero, tp, s9
                  sra          s10, a5, t5
                  xor          s7, a3, a4
                  slli         a4, s10, 23
                  slt          ra, a5, s4
                  sra          t0, s10, a1
                  addi         s7, s3, -1035
                  xor          s7, s6, s5
                  auipc        t1, 363150
                  addi         t5, a4, -1440
                  andi         a1, a7, 1787
                  add          s3, a2, s0
                  add          a2, s1, a0
                  nop
                  srai         a1, a3, 18
                  srai         t1, s2, 18
                  sltiu        t2, s8, -1828
                  sub          s9, sp, a6
                  add          s3, a7, s5
                  sltu         s3, s2, t0
                  auipc        a2, 779384
                  sltiu        a7, zero, 1040
                  or           s5, s3, s7
                  addi         s0, a3, -1647
                  ori          s5, s5, 380
                  or           ra, t0, s2
                  xori         s5, gp, -363
                  addi         s2, sp, -445
                  slli         tp, a6, 25
                  andi         a4, s8, -1983
                  ori          a0, s8, 710
                  sltu         s3, s8, a3
                  sltu         s2, a7, a7
                  add          s4, t0, s2
                  sltiu        s5, a1, 1667
                  sra          a6, s8, s10
                  or           s8, s6, ra
                  and          s3, t5, s0
                  srl          s8, t3, gp
                  srli         s10, s10, 4
                  add          t1, sp, s3
                  xor          s6, t2, s4
                  or           a2, t3, a7
                  srai         sp, gp, 31
                  and          t0, s3, s4
                  sltu         a6, a6, a5
                  auipc        t0, 278198
                  addi         a2, gp, 1195
                  xori         a4, a5, -581
                  lui          s2, 870759
                  auipc        a0, 451022
                  sltu         t5, t4, s7
                  slti         t0, a2, 893
                  sltu         t5, t3, t1
                  addi         a0, sp, -847
                  lui          s1, 184764
                  auipc        tp, 394385
                  nop
                  lui          a0, 453006
                  or           t5, sp, zero
                  srl          s6, a1, a1
                  srli         s10, a5, 30
                  ori          s10, a6, -803
                  addi         a7, t1, -986
                  sll          a1, t3, sp
                  sltu         a7, a6, ra
                  sub          t5, s2, ra
                  ori          ra, a0, 1500
                  add          s2, a3, tp
                  sll          s0, t0, s2
                  sra          s7, a0, t2
                  addi         s1, t2, -1986
                  sll          a2, s5, gp
                  auipc        a2, 954600
                  or           s3, s7, s3
                  srai         s5, s6, 16
                  slt          ra, zero, a4
                  andi         t1, t5, -1364
                  xori         s5, a2, -607
                  lui          t1, 711923
                  auipc        zero, 432655
                  nop
                  sltiu        t5, s9, 364
                  or           s7, t5, t2
                  srli         t0, s7, 4
                  sra          a0, s10, s11
                  andi         a5, a6, 2023
                  addi         a0, a2, -821
                  slli         a5, a5, 19
                  or           s1, a5, s4
                  addi         a0, zero, -1440
                  slti         s4, t3, 857
                  slt          t5, s3, a5
                  nop
                  sra          zero, s11, t3
                  srai         a4, s2, 23
                  slt          t6, a6, ra
                  srl          a4, s0, t6
                  and          a4, s2, tp
                  slti         a1, s2, -641
                  sll          s2, s6, s10
                  slli         t2, s7, 5
                  slti         t1, s10, -1813
                  slli         zero, t3, 11
                  sltu         gp, t6, t1
                  lui          a7, 617670
                  auipc        tp, 943575
                  add          s5, a2, s7
                  sub          s7, s1, s1
                  sub          t2, tp, s6
                  xor          s1, a1, a2
                  sltu         s6, s5, s8
                  nop
                  and          t5, s9, s10
                  nop
                  sll          s10, a7, s10
                  xori         a2, s7, 435
                  sltiu        a4, t0, 1791
                  sltiu        sp, s6, -668
                  sub          a7, t1, a3
                  auipc        t5, 184623
                  sub          a2, a6, t6
                  addi         s1, t2, 768
                  sltu         s6, tp, a0
                  slti         zero, a6, 19
                  xor          a3, sp, ra
                  sll          a5, s7, t6
                  add          s3, s11, t4
                  add          s5, s6, t1
                  srl          a0, a4, t6
                  addi         tp, t0, -1337
                  andi         a0, t4, 1349
                  auipc        a4, 805837
                  lui          s10, 272216
                  nop
                  sll          gp, a5, s7
                  ori          a6, s8, 1168
                  xor          tp, s2, a5
                  slt          s0, t6, a7
                  srl          a6, t1, gp
                  or           a7, s8, t2
                  or           s7, a3, t0
                  sll          sp, a7, a5
                  slli         tp, a5, 20
                  ori          t0, s7, -1422
                  addi         a6, ra, -1955
                  slli         zero, s2, 26
                  srl          a5, ra, t1
                  slli         a7, s10, 28
                  slti         a6, a2, 1155
                  addi         a2, ra, -1024
                  slti         gp, a4, 168
                  srli         s10, a5, 13
                  andi         s5, s3, -1359
                  sub          a4, s0, t4
                  lui          s2, 922697
                  or           s7, t2, a4
                  sra          a4, t4, sp
                  and          s3, s1, t6
                  xori         a1, t2, -1635
                  sra          s2, t3, s3
                  addi         s0, t0, -1724
                  ori          s4, s5, -282
                  srli         t2, a6, 14
                  andi         t2, s0, -591
                  sra          zero, s10, a7
                  or           s3, s11, s8
                  lui          t5, 693662
                  addi         a2, s11, 1684
                  srli         t5, t5, 5
                  srl          s10, gp, t5
                  slli         a1, s10, 2
                  xor          gp, t3, s8
                  slt          a7, a1, s9
                  sll          tp, a6, a5
                  xori         a7, t2, -583
                  slt          a5, a4, s10
                  addi         gp, s11, -1544
                  lui          a7, 870143
                  srl          t0, tp, a6
                  sll          a3, gp, s7
                  lui          sp, 99155
                  sra          a2, a4, a6
                  and          s3, a6, t3
                  sltu         s5, t6, t4
                  srli         gp, tp, 20
                  srli         s1, a0, 0
                  sll          t5, s3, s5
                  ori          s7, t6, 582
                  sll          t2, s2, t4
                  addi         a3, s8, 1678
                  slt          t6, a3, a5
                  lui          t6, 209140
                  srl          s1, a6, a2
                  andi         a6, a0, -976
                  sltu         s8, a3, t3
                  and          a1, a2, s3
                  nop
                  xori         a5, a5, 221
                  or           sp, s9, s7
                  sltiu        s8, gp, -988
                  slli         zero, t2, 21
                  sra          a1, a1, a2
                  and          s9, t2, s4
                  srli         a5, s11, 6
                  slli         t5, s1, 14
                  sub          t2, sp, a5
                  sll          s9, t1, s5
                  auipc        tp, 617008
                  andi         a5, t0, -343
                  slli         a0, s9, 27
                  srli         gp, s3, 11
                  and          s2, a6, tp
                  add          s6, s7, s7
                  addi         s0, s1, -946
                  slti         t1, t2, -1345
                  slli         s5, s4, 8
                  sll          a2, s8, a3
                  srli         s9, s1, 14
                  sltu         a5, t0, t5
                  sltiu        a3, tp, -1050
                  lui          t6, 484293
                  slt          t5, t2, s11
                  sub          ra, s7, s4
                  xor          t1, a4, t1
                  xori         a4, s6, 40
                  xor          a1, s4, gp
                  ori          s2, t0, -1948
                  sra          tp, tp, a1
                  srli         a7, t3, 26
                  sra          a0, t3, t3
                  sltiu        t5, s0, -1138
                  add          a0, t0, s2
                  andi         s6, s1, 1678
                  ori          a5, s0, 3
                  srl          s10, s6, ra
                  slli         a4, s11, 30
                  slti         tp, t1, 451
                  xori         s10, a1, 1635
                  auipc        s2, 848704
                  lui          s2, 509409
                  auipc        a4, 929079
                  sltu         a2, t5, a7
                  ori          a0, zero, 1107
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_6
                  li           a7, 0x8aba242d
                  li           t2, 0xffffffff
                  li           a2, 0x0
                  li           a3, 0x80000000
                  li           a1, 0xffffffff
                  li           s3, 0xffffffff
                  li           a4, 0x80000000
                  li           a0, 0x80000000
                  li           s9, 0xffffffff
                  add          s3, t2, a7
                  lui          a2, 90549
                  sub          t2, s3, s3
                  nop
                  auipc        a0, 81556
                  sub          s9, a1, t2
                  add          a2, s6, a2
                  sub          a3, t2, a3
                  add          a2, a0, s9
                  add          s3, s6, a0
                  auipc        s9, 731079
                  add          a0, a2, a4
                  lui          a3, 478124
                  sub          a3, a1, t2
                  addi         a2, a2, -1124 #end riscv_int_numeric_corner_stream_6
                  slt          a5, t1, s7
                  andi         t1, a4, 2004
                  and          s8, s5, s0
                  srl          s6, s1, t2
                  slli         a5, tp, 2
                  slli         a7, a6, 19
                  slli         t0, tp, 31
                  srl          s8, s8, t4
                  lui          t1, 274562
                  nop
                  nop
                  and          a3, s7, t6
                  slti         s4, a6, -1814
                  nop
                  sra          s10, a5, t3
                  slt          zero, a4, gp
                  sra          s9, t0, s0
                  srl          t5, s1, t5
                  addi         s1, a7, 1442
                  sll          t0, s5, ra
                  slt          s1, a7, s5
                  sll          s3, a5, s2
                  nop
                  srai         s6, s1, 11
                  slti         t0, s1, 550
                  ori          t1, a1, 1494
                  lui          s7, 950333
                  sltiu        ra, zero, 995
                  slli         a5, t4, 29
                  sub          a2, t3, gp
                  srli         tp, s7, 1
                  sltiu        t6, s10, -692
                  or           s10, a0, tp
                  srl          sp, s10, s11
                  sltu         zero, t5, tp
                  srl          a5, s5, s10
                  slt          a2, gp, s8
                  slli         a7, s5, 22
                  slti         s10, sp, -1895
                  auipc        a6, 390653
                  xori         a1, ra, 1068
                  srai         t1, tp, 27
                  nop
                  and          s1, t4, a3
                  add          t1, s10, a0
                  sltiu        a2, s4, 34
                  srli         s10, gp, 11
                  addi         zero, s8, 732
                  sltu         ra, s11, sp
                  sub          s7, t1, a6
                  srli         s5, sp, 11
                  sll          ra, s11, s4
                  slti         s2, sp, -170
                  xor          gp, s10, s0
                  slt          ra, t3, t4
                  ori          s5, s5, -8
                  ori          t0, s7, 435
                  xor          t6, a4, sp
                  srl          a6, s6, sp
                  ori          s2, s6, -1175
                  slti         s7, a6, 1192
                  slli         t0, s10, 16
                  xor          s2, a1, t5
                  lui          a6, 760610
                  slt          ra, t1, s7
                  and          zero, s7, s11
                  slli         s8, t3, 11
                  ori          s3, s9, 212
                  nop
                  slti         s10, s4, -1617
                  sll          a6, zero, s10
                  and          s1, s8, gp
                  sll          s2, s6, t3
                  lui          a7, 729555
                  addi         a3, t2, -580
                  xori         a7, s3, 349
                  andi         t0, s0, 753
                  slt          a0, t6, a6
                  or           sp, gp, s7
                  sub          s0, gp, t3
                  slli         s4, a2, 10
                  nop
                  srai         s8, ra, 18
                  xor          t1, t0, a4
                  srai         a5, a1, 2
                  sll          t2, t2, s8
                  andi         s7, a7, 1203
                  sra          tp, s4, s2
                  auipc        sp, 284850
                  and          s1, a5, a5
                  or           a6, gp, t0
                  sub          sp, s0, s3
                  addi         t5, sp, -1645
                  slli         a1, s1, 15
                  srli         ra, gp, 16
                  sra          a0, s11, s3
                  srli         s6, ra, 1
                  sltiu        s3, s8, -1239
                  add          s4, t3, s11
                  lui          a6, 869061
                  nop
                  slti         ra, a2, 138
                  sub          a5, tp, t2
                  lui          s4, 1014175
                  slti         a0, s0, -905
                  srl          a5, s5, s8
                  andi         s0, s7, 195
                  srai         a1, s5, 26
                  nop
                  auipc        a1, 1021446
                  slti         t1, a4, -1109
                  sll          t6, s2, a5
                  and          s6, a1, s0
                  sra          t0, s8, s8
                  and          gp, s9, t4
                  slt          a7, t6, s6
                  add          tp, a6, s3
                  xori         a5, t3, -1240
                  xori         a0, s2, -424
                  sub          ra, s3, a6
                  sltu         t2, zero, s0
                  lui          s10, 534092
                  and          zero, t1, s11
                  srai         s1, a2, 10
                  slt          s0, s5, s4
                  ori          a0, s5, 1659
                  sub          t5, s1, t6
                  srai         t0, t3, 20
                  srl          s7, a1, gp
                  slti         gp, tp, -1021
                  lui          s6, 41371
                  ori          t1, a0, -844
                  sub          a7, a4, s0
                  sll          t5, a7, s11
                  sltu         s7, s3, s2
                  xor          t2, s8, t2
                  srai         t6, s2, 3
                  sra          a2, t2, s0
                  ori          s0, gp, 447
                  sltiu        a6, t0, -1782
                  xor          a0, a5, t1
                  slti         s7, ra, 1003
                  or           s4, a2, a1
                  sll          t2, a0, t0
                  slli         sp, t6, 6
                  sll          s3, a0, t1
                  slt          t5, a7, t4
                  sltiu        a6, sp, -353
                  add          s6, s7, a1
                  ori          s1, sp, 515
                  add          s8, a6, gp
                  sltiu        a3, a4, 1467
                  nop
                  addi         a5, s2, -68
                  sltu         t6, t2, a4
                  slli         a7, t4, 0
                  sltu         t0, t4, t0
                  auipc        tp, 269202
                  slli         s3, a4, 25
                  slt          s2, s1, a0
                  sltu         zero, a1, a7
                  xor          s6, t0, s9
                  ori          ra, s1, -106
                  slli         a1, t0, 4
                  sra          a3, s4, a5
                  auipc        ra, 595724
                  slt          a6, a1, tp
                  sltiu        s1, s11, 1278
                  sltiu        a3, a7, 1222
                  slli         t0, sp, 8
                  addi         s5, a7, -1054
                  srl          s9, a4, t6
                  or           a7, s4, s0
                  srli         s5, a4, 30
                  srai         t0, s3, 12
                  add          t0, t3, sp
                  slt          s7, t6, s6
                  sltu         s9, ra, a7
                  or           zero, s9, t6
                  sub          s9, a1, a3
                  sltu         s10, s2, s10
                  slli         a0, s7, 29
                  slti         t5, s6, -760
                  sltiu        s10, t1, -129
                  slti         tp, s9, -962
                  sltu         s9, t3, t1
                  slli         a2, t4, 22
                  sltu         t0, s0, zero
                  nop
                  lui          ra, 1012655
                  sll          gp, t2, t3
                  add          s9, gp, s6
                  slt          t6, s9, a4
                  slt          gp, t5, s2
                  xor          t5, s10, gp
                  srl          a2, gp, ra
                  add          tp, t5, s7
                  addi         zero, s9, 1332
                  srai         t1, s10, 10
                  lui          s0, 965004
                  nop
                  slt          a1, a4, s5
                  sltiu        a6, zero, 1464
                  ori          ra, a5, -452
                  andi         gp, s1, 151
                  srl          s2, ra, t0
                  sll          zero, t6, s0
                  ori          s9, t1, 797
                  srli         s7, a5, 29
                  sltu         a5, s2, t4
                  xor          s2, s1, a7
                  srai         s3, t1, 17
                  sll          a5, t6, t2
                  srli         t1, sp, 22
                  sltu         s10, s9, s6
                  or           a0, t0, zero
                  add          a5, t5, t3
                  srli         sp, s10, 3
                  sll          a4, t0, a5
                  auipc        s7, 486996
                  andi         a6, s2, -1196
                  srl          t0, s11, t1
                  ori          a2, a5, 1377
                  lui          s5, 520380
                  sll          s10, gp, a7
                  srl          s7, t2, s4
                  slli         a0, t0, 0
                  or           s10, t6, ra
                  addi         s4, zero, 984
                  and          a0, t3, s1
                  andi         zero, a4, -578
                  slt          t1, s10, t4
                  add          tp, t3, s11
                  andi         t0, t0, -1853
                  slli         t1, a3, 27
                  srl          a1, a1, a3
                  slti         s9, t4, -1519
                  or           s3, s1, a7
                  ori          s9, s1, -793
                  nop
                  slti         s3, tp, 193
                  ori          a7, a3, -370
                  lui          t0, 109318
                  slli         a6, a4, 22
                  sub          zero, s2, s8
                  sltiu        s0, gp, 1236
                  auipc        s5, 282802
                  slti         zero, tp, 992
                  slli         s4, s1, 20
                  addi         a2, t0, -1730
                  slt          s10, t0, a4
                  sltu         a3, a6, s4
                  srai         t0, t1, 25
                  auipc        s3, 280359
                  slti         s4, ra, -1530
                  slli         s1, t6, 27
                  slli         gp, a2, 17
                  srli         a2, s2, 0
                  sltu         tp, s4, s1
                  ori          ra, s0, 1668
                  slli         t2, s0, 3
                  nop
                  xor          s3, sp, s10
                  slt          a0, s5, s6
                  sll          a7, t2, s7
                  xori         s5, s2, -1438
                  sra          a1, s11, t0
                  sltiu        ra, t5, 45
                  srai         s4, a0, 18
                  sub          a0, a2, s3
                  xor          s6, t0, t3
                  and          s9, t1, s11
                  auipc        s10, 897179
                  add          t5, a6, t2
                  addi         t6, t6, 1163
                  or           a2, a7, tp
                  srai         t0, a6, 12
                  or           s8, a7, s0
                  lui          zero, 399489
                  slli         s7, t1, 28
                  addi         s8, tp, -1097
                  and          a7, t6, s3
                  sub          t2, t0, s2
                  lui          a0, 1040324
                  xori         a6, s7, 168
                  andi         sp, a2, -136
                  and          t0, s10, a1
                  addi         t2, zero, 594
                  slti         s9, tp, 1872
                  and          s7, a5, gp
                  xori         a1, a4, -454
                  and          s8, s10, zero
                  sltu         a4, s0, s1
                  addi         t1, a0, 1195
                  nop
                  slti         s7, s7, -673
                  addi         t6, ra, 96
                  ori          s4, s10, 1731
                  slt          t2, s1, a7
                  sltu         s4, t2, s4
                  or           a0, t3, ra
                  sll          zero, a4, a3
                  sra          a6, t2, s2
                  lui          s9, 807021
                  srli         s2, s1, 26
                  auipc        s2, 329869
                  srai         a4, s6, 27
                  addi         t0, a7, -1705
                  sll          a1, a1, ra
                  sra          tp, s7, s11
                  add          s9, a1, s0
                  lui          t5, 425068
                  sltu         a2, t3, t2
                  and          a3, t1, t3
                  auipc        a4, 144396
                  andi         t1, a2, 987
                  xori         s8, s3, -1271
                  sll          tp, tp, ra
                  addi         s6, s0, 884
                  add          s5, a6, s2
                  add          zero, s6, s3
                  lui          t1, 377639
                  srli         zero, s1, 30
                  sll          s3, t5, a7
                  auipc        s6, 550660
                  auipc        a4, 450626
                  or           s8, a4, a1
                  xori         a1, a3, -1412
                  slt          ra, t0, zero
                  slli         a3, zero, 25
                  xori         t6, s5, -254
                  or           s2, t5, a4
                  add          t1, sp, t0
                  slti         a0, s1, -1532
                  andi         t5, s0, 872
                  srai         a6, a2, 8
                  sltu         s2, t0, a5
                  sub          s1, a2, s1
                  slti         s4, t6, 1183
                  srli         t5, t1, 21
                  sub          a1, tp, s7
                  sub          a2, t3, t4
                  xori         s5, a3, -1474
                  sra          a3, s5, a3
                  srli         zero, a1, 23
                  addi         a4, a7, -873
                  srli         s3, t4, 14
                  and          t5, ra, t1
                  slti         s2, t0, -353
                  slt          s9, s10, a1
                  addi         s9, a7, 1435
                  slt          a5, t4, t3
                  xor          s7, a4, a4
                  sltu         a4, zero, s0
                  xori         t6, s4, 874
                  ori          a5, zero, -1508
                  add          s2, a5, s1
                  ori          t5, ra, -1773
                  sltu         s3, s0, ra
                  or           tp, a6, s0
                  sub          a5, ra, sp
                  sra          a2, s4, sp
                  auipc        s1, 1047156
                  slli         a3, a6, 15
                  srai         a0, ra, 23
                  slti         s3, s9, -338
                  sra          a0, a5, a2
                  add          t6, gp, zero
                  slli         sp, t2, 28
                  sltiu        ra, s5, 12
                  sltiu        t2, s3, -1078
                  srl          s7, s2, a7
                  srai         a4, a4, 10
                  srli         a6, s1, 2
                  auipc        a0, 679467
                  sll          t2, s8, a6
                  sub          t6, s7, s9
                  and          s9, s7, a4
                  andi         s0, ra, -758
                  sll          a6, t4, t5
                  slli         t1, s5, 6
                  add          zero, zero, ra
                  srl          sp, t4, s11
                  nop
                  sltiu        a0, tp, -1068
                  sltu         t0, s5, a6
                  srl          a7, s2, s11
                  sub          s1, t6, s2
                  nop
                  lui          s10, 167956
                  srli         a1, s11, 10
                  slt          tp, t4, ra
                  sll          gp, zero, gp
                  add          a7, s8, ra
                  sll          ra, t6, t1
                  li           a3, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           s10, 0x0
                  li           t6, 0xffffffff
                  li           a1, 0xffffffff
                  li           s5, 0x80000000
                  li           a0, 0xffffffff
                  li           s1, 0xffffffff
                  li           s9, 0x80000000
                  li           s7, 0x80000000
                  li           tp, 0x80000000
                  nop
                  sub          tp, s9, s5
                  addi         s7, s1, -18
                  lui          tp, 117039
                  auipc        a3, 330500
                  add          a3, s10, a1
                  auipc        s10, 730636
                  sub          s5, s1, s7
                  add          s9, s1, s7
                  lui          a3, 304477
                  addi         s10, s5, 1063
                  add          s9, s7, a1
                  addi         s10, a3, 1778
                  nop
                  add          s7, s10, a3
                  lui          a1, 543667
                  sub          s7, s9, t6
                  sub          tp, a1, tp
                  auipc        tp, 297561
                  add          tp, s10, t6
                  lui          s10, 364202
                  add          s9, t6, t6
                  lui          a1, 165734
                  nop
                  lui          s5, 423774
                  sub          s10, a1, t6
                  add          s5, s1, t6
                  auipc        s10, 471304
                  auipc        s9, 449278 #end riscv_int_numeric_corner_stream_9
                  slli         a1, a4, 1
                  addi         ra, s8, -2013
                  srli         a1, t1, 24
                  xori         a7, a1, -1947
                  xor          s8, a1, s0
                  lui          a6, 435548
                  sll          s3, a4, tp
                  sub          s8, s4, t6
                  srai         a7, a5, 17
                  auipc        s1, 252065
                  lui          s1, 430799
                  sltu         s1, sp, t5
                  xor          a7, sp, ra
                  srli         zero, zero, 14
                  slti         s0, s8, 1004
                  nop
                  xor          a7, s10, a6
                  addi         t5, s3, 1029
                  srli         t6, t3, 13
                  addi         t5, a7, -322
                  slt          s6, a2, t1
                  or           t6, s3, s8
                  sra          zero, zero, ra
                  srai         s7, s1, 2
                  or           s10, s9, a7
                  srai         s4, a2, 22
                  and          a4, s11, a3
                  lui          sp, 197230
                  slt          s4, s9, a7
                  srli         gp, a0, 24
                  sra          a5, a3, s6
                  srli         ra, a7, 3
                  xori         t1, a2, 635
                  srai         a6, t3, 25
                  slli         s6, s4, 26
                  auipc        t1, 824916
                  add          s9, tp, ra
                  nop
                  xori         t6, ra, -233
                  sltu         s5, s4, s2
                  add          a1, s5, s11
                  srai         a1, t1, 13
                  auipc        sp, 339675
                  addi         s3, s4, 1815
                  andi         s10, a4, 57
                  or           s10, t3, t5
                  slli         t5, s5, 3
                  slli         s3, gp, 22
                  srli         s9, s0, 9
                  sll          s2, sp, sp
                  add          s1, t5, sp
                  or           s7, s3, t6
                  srai         t0, s11, 0
                  andi         s8, ra, -898
                  addi         tp, t5, 1988
                  ori          sp, a3, -55
                  sltiu        t5, t4, 529
                  slti         a5, s8, 29
                  or           s6, sp, t6
                  xor          a7, t1, a3
                  addi         t6, s2, 1320
                  lui          tp, 114271
                  sltiu        a3, s4, 900
                  sltiu        t1, s8, 209
                  srl          tp, gp, t1
                  andi         a5, a2, 1472
                  andi         ra, s7, 483
                  slt          s4, gp, s10
                  slt          s5, t1, s10
                  add          s6, t5, s10
                  or           s6, t3, s6
                  slt          a1, t6, a2
                  sltu         a6, s10, a5
                  slt          t1, s6, s9
                  slli         t0, s10, 0
                  slt          s0, t3, s6
                  ori          sp, sp, 381
                  ori          s10, t6, -1317
                  sra          a2, zero, a7
                  add          s0, a1, s4
                  sltiu        gp, s9, -1525
                  andi         a7, a7, 1510
                  xori         a2, s0, -969
                  sltu         s5, a7, sp
                  and          a6, s11, a7
                  slli         s7, s9, 20
                  srai         a2, t0, 1
                  or           t5, zero, t2
                  or           tp, s3, s6
                  sltiu        s2, t2, -68
                  srl          ra, s6, s0
                  sub          t0, s4, zero
                  slti         s2, ra, 348
                  slt          s10, a0, t4
                  and          t6, t5, s4
                  nop
                  xori         s10, t0, 1655
                  andi         a7, s10, 528
                  slli         t1, gp, 19
                  srl          s8, a1, t0
                  auipc        a4, 935526
                  nop
                  addi         s4, a5, 945
                  and          t6, a2, t4
                  slti         a3, a6, 981
                  or           a0, t5, s6
                  or           s10, zero, a1
                  sltiu        tp, gp, 854
                  slti         a4, t0, 1536
                  or           s9, a2, a1
                  add          tp, a0, s7
                  auipc        a5, 24102
                  sll          t0, a6, a1
                  or           zero, s8, a6
                  ori          gp, s2, -667
                  sra          t2, s5, s8
                  andi         t6, a2, 118
                  srai         t2, t1, 8
                  ori          ra, s2, -750
                  slt          tp, sp, ra
                  slti         s0, t2, -1129
                  andi         s0, s4, -753
                  sltiu        ra, s0, -780
                  add          a3, t3, t1
                  srl          a2, a0, a1
                  slti         a1, s11, 679
                  addi         t5, s0, 1264
                  srai         s0, t4, 2
                  xor          s3, t2, s5
                  sll          ra, s2, t0
                  xor          s2, t6, t1
                  slt          a7, a0, a2
                  sub          zero, t4, s1
                  xori         a1, ra, 1713
                  lui          a0, 311565
                  sll          sp, s11, a4
                  sltu         s1, ra, t0
                  sltu         zero, a4, t1
                  nop
                  nop
                  srl          s6, a2, t5
                  xor          a4, t2, a4
                  auipc        a4, 499387
                  sub          t1, gp, ra
                  slti         t6, s11, 755
                  sltiu        s10, a4, -1039
                  add          a1, s10, a3
                  or           s4, sp, s3
                  sltiu        s7, t3, -432
                  srl          a7, a3, a5
                  sll          zero, ra, ra
                  andi         sp, tp, -645
                  lui          t0, 390500
                  or           a1, a4, s5
                  srai         a4, s1, 2
                  nop
                  addi         t1, t2, 776
                  addi         t6, a5, -1908
                  auipc        a5, 540144
                  slt          t2, t3, tp
                  and          t2, s9, s11
                  srl          t6, s5, s6
                  slli         ra, t6, 26
                  slti         s2, s9, 1573
                  srai         s8, a0, 1
                  sll          s6, a2, sp
                  nop
                  or           t0, tp, s1
                  srai         a2, s11, 18
                  sra          sp, s10, zero
                  srai         a1, gp, 4
                  addi         a1, s8, 117
                  sra          t2, zero, s11
                  sra          a3, a3, sp
                  xor          a5, a0, s5
                  xori         gp, s0, 1918
                  auipc        s4, 790016
                  sltiu        s8, t5, -1185
                  srli         a4, s9, 22
                  xor          a4, s8, s9
                  slli         t5, s9, 11
                  auipc        s0, 300232
                  addi         s9, gp, -1056
                  sltiu        s2, s7, -625
                  xori         s0, s3, 243
                  slli         s7, s6, 9
                  sltiu        a7, s2, -1522
                  slli         s1, s8, 15
                  sltiu        gp, t2, -565
                  addi         t1, s0, -209
                  srl          a0, t2, s11
                  srl          gp, s9, s2
                  sltu         s1, gp, s4
                  addi         t2, s2, -1485
                  ori          s3, sp, 1571
                  auipc        s0, 710971
                  sll          s7, a1, t4
                  sra          a4, a3, t0
                  srai         s3, s2, 8
                  xori         a4, ra, -1383
                  sltu         s6, zero, s2
                  sra          tp, a7, a2
                  sll          t0, a2, s7
                  sll          s1, a4, s7
                  srl          s10, a1, sp
                  or           a2, t3, s4
                  xor          s7, s9, s4
                  lui          a4, 364158
                  srli         a7, sp, 2
                  sra          s3, t5, tp
                  slli         gp, a3, 25
                  srai         s6, a6, 0
                  slt          tp, zero, s0
                  xori         s6, s8, 279
                  srl          t0, t0, t2
                  addi         a2, sp, -260
                  srl          a0, a6, a7
                  sltu         t0, s5, a4
                  srl          s10, t5, s10
                  ori          a4, gp, 1362
                  sltiu        a3, t1, -1946
                  slt          t1, sp, zero
                  sll          a0, zero, ra
                  addi         s6, t1, 1666
                  slti         t1, t5, 1697
                  addi         a6, t3, 832
                  ori          tp, t3, 1202
                  sub          t2, s9, zero
                  ori          s3, t1, 1305
                  sll          tp, a4, s11
                  slt          a4, a4, s8
                  or           t0, s0, zero
                  li           s5, 0x0 #start riscv_int_numeric_corner_stream_10
                  li           a4, 0xffffffff
                  li           a5, 0xffffffff
                  li           s4, 0x0
                  li           s1, 0x0
                  li           s10, 0x2edc3eca
                  li           tp, 0xf27bd443
                  li           a6, 0x80000000
                  li           s2, 0x5b4ca9ab
                  li           t5, 0xffffffff
                  auipc        a4, 695282
                  addi         a5, a6, -1267
                  sub          t5, s2, s2
                  auipc        s4, 596577
                  nop
                  sub          a6, s10, s1
                  add          s1, s1, s2
                  addi         s4, t5, 1910
                  auipc        tp, 206470
                  add          a5, a5, s4
                  lui          t5, 307573
                  addi         a4, a6, 353
                  sub          s1, a5, s5
                  add          a6, s10, tp
                  nop
                  sub          a5, s10, s10
                  auipc        a6, 976556
                  nop
                  addi         a5, a6, -2048
                  lui          s5, 479536
                  add          s1, s5, s10
                  sub          s2, s1, a4
                  addi         a5, s2, -805
                  auipc        s2, 879567
                  lui          a4, 31829
                  nop #end riscv_int_numeric_corner_stream_10
                  srai         s4, a0, 2
                  ori          s3, t0, 1959
                  slli         a1, t1, 17
                  addi         t5, ra, -1380
                  slt          s8, tp, t4
                  auipc        a2, 399611
                  srai         a3, sp, 27
                  add          s1, t2, a1
                  lui          t0, 802746
                  or           s4, s8, t0
                  srl          s2, t2, t6
                  slli         t2, t6, 6
                  xori         t0, s7, 135
                  sub          s4, s3, s2
                  and          t6, s1, s3
                  slt          ra, a5, a0
                  slt          t6, a1, gp
                  sltu         a2, a0, s5
                  srli         a1, s9, 16
                  srli         t0, t4, 5
                  slli         s5, s5, 3
                  auipc        a0, 404254
                  add          t6, a2, a5
                  auipc        t0, 804306
                  sltiu        a5, t5, -1061
                  slti         gp, s3, 1935
                  srli         s0, s2, 14
                  srli         t5, a7, 23
                  sra          s10, s1, tp
                  nop
                  auipc        s4, 698205
                  xori         s9, sp, 506
                  sra          s5, s2, s5
                  slli         gp, t3, 0
                  sll          a4, tp, a0
                  slti         s2, s3, -1144
                  slt          zero, t2, s7
                  sltu         s0, t2, s1
                  sub          s2, s3, a5
                  addi         tp, s3, -301
                  sltu         a7, s8, s0
                  sub          a5, t0, gp
                  slti         s1, a6, -1319
                  lui          t2, 635360
                  or           s5, t6, t6
                  slti         s10, sp, 1744
                  xor          gp, t2, t5
                  add          gp, s9, s8
                  srli         zero, zero, 11
                  auipc        a6, 177054
                  auipc        a4, 745511
                  sra          s5, t2, t4
                  andi         a4, gp, 1365
                  lui          t5, 101527
                  sll          s9, a3, t4
                  nop
                  sll          s8, t2, s1
                  auipc        a6, 125423
                  srli         a1, s6, 11
                  sra          zero, s8, s0
                  slli         a7, s1, 0
                  or           sp, a5, sp
                  srai         t5, s0, 9
                  and          a0, t5, s11
                  xor          s7, t3, gp
                  sra          s7, a5, s1
                  xor          t0, s7, t1
                  xor          gp, sp, a5
                  sltu         s7, t1, gp
                  srai         a1, a1, 24
                  addi         a3, t3, -655
                  slt          t2, a1, s11
                  add          s5, a2, a4
                  auipc        s0, 530551
                  slli         a5, s11, 20
                  addi         a3, s0, -501
                  and          t0, a4, s10
                  lui          gp, 420088
                  add          tp, a0, s7
                  sub          s4, t3, a5
                  or           a1, a0, t6
                  xori         s3, a4, 1081
                  srai         a1, s6, 12
                  slti         a1, t4, 133
                  sltiu        a1, a3, 122
                  ori          t1, zero, -1394
                  sra          zero, s2, s8
                  sltu         s10, a1, s3
                  xori         ra, s1, -887
                  nop
                  sll          t6, s9, s4
                  srai         s0, s10, 13
                  lui          sp, 773939
                  sra          a2, a4, s5
                  srai         t5, sp, 0
                  or           a2, t1, s11
                  add          a0, t6, s8
                  xor          ra, a3, s2
                  sltiu        a3, gp, -920
                  sll          t5, t2, s2
                  add          s10, s3, a5
                  sltiu        a5, sp, -697
                  and          s5, s7, s3
                  and          t1, t5, s1
                  slti         s3, s4, 1618
                  addi         a1, gp, 1641
                  srl          tp, a5, a2
                  and          a1, a5, zero
                  sub          a4, s11, s8
                  nop
                  xori         a6, a6, 1649
                  slti         s0, s6, 31
                  and          t0, s2, s2
                  sub          s7, a1, s0
                  andi         sp, s11, 22
                  sub          a5, a4, t4
                  srl          a1, t5, t0
                  xor          s6, ra, t1
                  sltu         s6, t2, gp
                  nop
                  srli         a0, s9, 26
                  add          s10, tp, a4
                  ori          a3, a3, -80
                  and          s9, a2, s1
                  slli         s10, a7, 6
                  xor          t5, t3, s8
                  add          a5, a2, t4
                  sltu         s5, sp, s6
                  slli         t2, t1, 3
                  sub          a1, a7, gp
                  sll          t0, s4, s4
                  addi         s5, s6, -1033
                  slti         s5, a4, -681
                  nop
                  and          s7, s4, s10
                  xori         s1, a3, 1004
                  sltu         a4, s10, s11
                  addi         s5, zero, 1389
                  auipc        t5, 239090
                  slli         a5, gp, 13
                  slli         s1, s2, 12
                  nop
                  nop
                  sra          t0, s7, s0
                  srai         t5, a6, 5
                  slt          a2, a2, s11
                  ori          sp, sp, 774
                  sll          t0, t4, s9
                  ori          a6, s0, 34
                  srai         a1, tp, 3
                  srai         s3, s2, 3
                  srli         a2, s4, 19
                  addi         s4, s5, -168
                  addi         a4, a5, 1300
                  andi         t2, s11, 1325
                  srli         s8, s2, 10
                  sltu         s1, s3, s9
                  xor          s9, gp, s7
                  and          t2, s6, sp
                  sltiu        a2, s2, -1095
                  srl          s4, t5, t3
                  and          s2, a1, t3
                  nop
                  add          s9, s8, t4
                  or           s2, s0, a4
                  slti         s2, s4, 350
                  and          a3, a7, t6
                  sltu         s7, t1, a5
                  sll          zero, s0, s3
                  andi         s6, s5, -1700
                  srli         s9, a5, 7
                  xor          a6, t2, a3
                  xor          s4, s3, s8
                  xori         t6, t6, 676
                  sltu         zero, t4, s6
                  xor          a6, t3, s2
                  auipc        a6, 130227
                  ori          zero, gp, 341
                  xori         gp, a1, -1302
                  xor          a6, t4, ra
                  sll          s3, s4, a6
                  nop
                  and          zero, a1, a1
                  add          s10, t1, a7
                  andi         a0, s0, -1332
                  slli         a4, t1, 31
                  srai         gp, s2, 2
                  slt          a6, t2, a7
                  xor          s10, s3, sp
                  srli         s5, a7, 29
                  sub          s4, s10, zero
                  nop
                  xor          t0, t3, sp
                  slt          zero, a3, s5
                  sltiu        t5, sp, 199
                  sltiu        s1, t1, 1049
                  nop
                  xor          tp, a3, s8
                  lui          a5, 547250
                  sll          tp, s8, s7
                  sll          sp, a7, a3
                  xor          s6, t4, tp
                  sltiu        s2, s9, -475
                  sltiu        s1, tp, -1954
                  ori          a2, a2, 1655
                  and          s10, t6, s9
                  sll          zero, gp, tp
                  srl          s7, t2, a1
                  srl          ra, t4, tp
                  sltiu        a3, t2, 1384
                  ori          t2, s2, -1376
                  sll          a7, s10, gp
                  slli         a7, ra, 16
                  slli         s4, a6, 4
                  slli         s5, s9, 15
                  sra          a3, t4, s10
                  sltu         t2, zero, t2
                  and          sp, a2, t4
                  and          t2, t3, s9
                  srl          a3, s0, s9
                  slt          s8, a2, tp
                  srli         ra, a6, 1
                  auipc        gp, 983071
                  sub          sp, a2, s9
                  nop
                  ori          a7, a3, 1604
                  slli         a7, s6, 11
                  or           t0, a3, t5
                  auipc        a7, 393324
                  lui          a6, 514810
                  and          a0, s6, s3
                  auipc        a3, 91442
                  or           sp, a4, a1
                  sltu         a2, s6, a0
                  srli         a4, a1, 0
                  srl          tp, tp, a7
                  auipc        t0, 173050
                  or           s8, a0, zero
                  addi         s10, a6, -1066
                  sll          s8, s1, a5
                  and          gp, a5, a0
                  srli         s5, sp, 1
                  xor          s10, s9, a7
                  slli         tp, s7, 20
                  srai         zero, s2, 29
                  slli         gp, s7, 5
                  and          s5, s0, a0
                  xori         s4, s0, 763
                  nop
                  xor          s6, s0, s8
                  sub          s1, ra, gp
                  slt          t2, s9, a7
                  auipc        gp, 584402
                  slti         t1, t2, -650
                  auipc        gp, 936563
                  xor          t1, t4, t5
                  andi         a2, sp, -576
                  or           s10, t3, ra
                  sub          s4, s9, t5
                  sra          t6, t1, s11
                  sra          a3, gp, t0
                  srai         zero, t3, 22
                  slt          t2, s9, s1
                  slti         a5, s5, -1173
                  slt          a0, t0, s0
                  nop
                  sub          a3, s8, s2
                  sra          a6, s6, a7
                  add          a4, ra, t1
                  srai         a6, t2, 16
                  sll          a6, gp, t6
                  sltu         a3, t2, s5
                  slli         ra, t3, 9
                  sltu         t5, a3, s9
                  lui          s6, 550684
                  sltu         a5, s4, a5
                  srl          a7, s2, a3
                  srl          s9, s5, s5
                  andi         gp, s8, -120
                  srli         s6, a3, 12
                  sltiu        s6, t0, -532
                  andi         tp, t5, 1442
                  xori         a4, s3, -522
                  ori          zero, s0, -512
                  xori         t0, sp, -1016
                  srl          s3, ra, zero
                  addi         s7, s3, -1890
                  ori          zero, s10, 1796
                  xori         s4, sp, -1014
                  sll          t0, t1, s7
                  xori         a5, s6, -871
                  slli         s3, s0, 8
                  slli         a0, a3, 14
                  xori         t1, sp, 1639
                  andi         s2, a6, 519
                  sltiu        t0, a1, -1271
                  lui          t5, 119814
                  auipc        gp, 664292
                  xor          s2, s7, t5
                  addi         a1, a3, -269
                  and          a0, a2, s10
                  nop
                  andi         a0, a2, -54
                  lui          a0, 142523
                  sltiu        s4, tp, 1606
                  slti         t1, t3, -2037
                  sltiu        s1, s11, 1165
                  xor          a1, s2, s5
                  auipc        s8, 83054
                  sltiu        a5, s10, -47
                  or           zero, t3, t2
                  or           s9, t4, sp
                  add          s6, s7, a6
                  auipc        s1, 108777
                  addi         sp, s9, 322
                  xori         s0, s0, 766
                  and          s3, a2, s4
                  add          s0, s8, a3
                  and          t1, a7, t0
                  sll          s8, a2, t5
                  xori         a3, a2, -794
                  slli         s7, s0, 14
                  nop
                  ori          gp, t2, 869
                  addi         t6, t0, -1396
                  andi         t5, s4, 487
                  auipc        t5, 525376
                  slt          a1, s3, a6
                  xori         t5, a3, -140
                  xor          s8, t5, s0
                  sra          t6, ra, a2
                  sra          a4, s7, t4
                  slli         zero, s0, 21
                  slli         s6, s0, 13
                  srli         s2, s5, 7
                  add          s5, s5, s1
                  lui          a4, 987550
                  and          a7, s5, s9
                  srl          a5, sp, a5
                  srli         t2, s1, 23
                  add          zero, a0, gp
                  ori          s5, sp, 1350
                  nop
                  sub          s7, a2, a0
                  sub          s7, sp, ra
                  add          a4, a6, s0
                  andi         s1, a4, -442
                  sltiu        t2, s11, -1052
                  nop
                  slti         ra, s2, -503
                  slli         t6, a6, 15
                  xor          tp, a6, a1
                  srli         s6, a0, 7
                  nop
                  auipc        a5, 755069
                  xor          t5, s2, s11
                  sltiu        t6, s8, 33
                  addi         s4, s4, -1142
                  slti         s0, s4, 33
                  add          s10, t5, ra
                  srli         s3, a1, 23
                  sltiu        gp, a7, 1503
                  sltiu        s6, s0, 1983
                  slt          s4, a4, sp
                  sub          a3, s4, s10
                  xor          s7, a5, s8
                  sub          tp, s11, a4
                  ori          a7, s8, 835
                  srl          s2, t5, s0
                  ori          t1, t4, -910
                  slli         s0, s3, 3
                  sll          s7, t1, a2
                  andi         s0, ra, 963
                  nop
                  and          s7, s3, s6
                  lui          t6, 334374
                  sub          s7, t6, t0
                  add          s6, a4, s0
                  or           s1, a7, sp
                  sub          s5, s3, t3
                  addi         s3, sp, -564
                  xor          t1, s11, t3
                  srli         s5, tp, 14
                  and          a4, a5, s7
                  ori          s6, s1, -701
                  add          zero, a4, s10
                  add          s3, t1, a6
                  and          a2, a2, a1
                  ori          zero, a3, -575
                  auipc        t0, 973575
                  sra          s0, s1, s6
                  and          s1, a7, a7
                  sltu         s2, a1, s6
                  srl          a5, t1, s1
                  slli         s1, s3, 0
                  sub          s6, t0, s8
                  srli         t0, t4, 17
                  sll          sp, t5, s1
                  srli         s3, s9, 30
                  sltu         tp, s11, s6
                  andi         s10, gp, -265
                  sltu         a5, t2, a7
                  srl          t1, s5, zero
                  srai         t5, t6, 31
                  srl          t6, s10, a0
                  xori         s6, s0, -1306
                  xor          s8, a3, s7
                  sltu         a5, s9, t6
                  srli         t1, a7, 9
                  ori          t0, s11, 1498
                  sub          zero, gp, sp
                  and          a2, a1, tp
                  nop
                  add          sp, t5, gp
                  ori          s10, s11, 975
                  sub          s2, s11, t1
                  xori         t6, s4, -1730
                  srai         s0, a4, 2
                  or           a2, a1, a3
                  xor          s6, t1, a5
                  andi         a4, gp, -163
                  xor          a3, s8, ra
                  sub          a0, t4, t2
                  auipc        gp, 891950
                  sltu         s10, s1, a1
                  andi         s7, ra, 2014
                  nop
                  ori          sp, s2, -776
                  srl          a5, zero, a6
                  xor          t1, a5, a6
                  sltiu        s8, sp, -1342
                  add          a4, a1, a1
                  slt          a5, a5, a3
                  xor          a7, s0, a3
                  sub          ra, s8, s2
                  xor          s8, s1, a5
                  nop
                  add          a1, a4, s2
                  xori         s6, a3, 274
                  auipc        s1, 78382
                  slt          t6, s2, a0
                  or           s1, t6, a2
                  xor          sp, t0, t2
                  sra          a4, a4, s4
                  slti         ra, s0, 1784
                  sltiu        a6, s9, 986
                  srai         s5, s4, 13
                  srl          s2, t2, s9
                  sltiu        a0, s6, 320
                  xor          sp, s4, a7
                  slt          s10, s8, s4
                  srai         s9, a5, 16
                  andi         s0, a0, 634
                  add          a0, t6, s5
                  slt          tp, s10, a3
                  sll          t1, s5, s9
                  sll          t5, s8, a5
                  srai         t2, sp, 23
                  slti         a1, gp, 1709
                  and          s8, a7, a7
                  auipc        s1, 61697
                  sub          zero, s7, a0
                  and          a0, s4, ra
                  srli         s7, zero, 27
                  srai         a4, s2, 7
                  auipc        zero, 494351
                  sltiu        zero, s6, -97
                  xori         a0, t3, 1137
                  sltu         a0, a6, s11
                  add          a2, a0, a4
                  sll          t6, s11, s9
                  srli         gp, a5, 12
                  addi         a7, zero, 170
                  nop
                  sltu         gp, a3, t0
                  sra          s7, s7, s1
                  slti         zero, a7, -1158
                  nop
                  srl          a7, a4, a1
                  ori          gp, s10, 2012
                  slt          t1, t4, s8
                  or           a7, s1, a4
                  addi         a0, s3, -1821
                  addi         s6, t2, 1922
                  ori          ra, zero, 2011
                  auipc        s2, 257095
                  slt          s7, a7, s8
                  or           t2, gp, tp
                  xori         t6, s3, 1806
                  srl          tp, s5, ra
                  lui          ra, 142645
                  nop
                  nop
                  add          t2, t3, sp
                  addi         s0, s7, 613
                  nop
                  ori          t6, s10, -1423
                  lui          s7, 126782
                  srli         s8, a5, 24
                  slti         sp, s6, -1397
                  add          s5, t1, a7
                  andi         a4, s7, -1299
                  lui          s10, 545578
                  ori          s9, s4, 157
                  sltu         t5, tp, s2
                  xor          a1, a0, s10
                  sltiu        a1, s9, -2017
                  sra          s5, a1, s11
                  ori          s4, t4, 302
                  andi         s10, s6, -1996
                  sltiu        a7, t3, -173
                  srl          zero, a7, s8
                  srli         t2, s11, 9
                  slti         a3, a4, -711
                  sll          s5, a3, ra
                  and          ra, t4, s3
                  sll          a3, s0, s10
                  sra          s3, a5, s6
                  slt          a4, a7, tp
                  sub          a6, t5, a4
                  sub          s6, a2, t2
                  xori         s1, t4, -999
                  add          s0, gp, t1
                  addi         a6, s5, 1161
                  srli         a5, t6, 27
                  auipc        s10, 45224
                  auipc        a4, 274310
                  sltu         t6, s3, gp
                  xor          s3, t2, t5
                  auipc        a1, 376693
                  srli         zero, s5, 2
                  sll          s0, s10, t0
                  sub          s5, a3, t2
                  sub          s2, t6, a2
                  ori          s5, s11, -1650
                  or           gp, s9, s6
                  ori          t5, a4, 806
                  xor          s10, a4, s4
                  sub          gp, s9, zero
                  ori          t5, tp, -57
                  sltiu        zero, t4, -296
                  sll          a7, a5, a6
                  srli         t0, t1, 25
                  srl          t5, s2, a5
                  auipc        tp, 607883
                  srli         a1, a1, 25
                  lui          s4, 29834
                  sltu         s8, s11, a0
                  addi         t0, tp, 1246
                  slt          tp, a1, zero
                  srli         t0, a1, 14
                  xor          s4, t0, gp
                  slt          t6, s7, a3
                  slli         s4, gp, 10
                  lui          t2, 108648
                  nop
                  sub          s4, s2, a3
                  xori         s7, tp, 55
                  sra          t0, s4, s3
                  xor          s10, a4, s6
                  sltiu        s10, t0, -877
                  add          s0, zero, s4
                  srli         a4, t4, 11
                  lui          a0, 409763
                  auipc        ra, 858728
                  slli         sp, a4, 10
                  slt          s3, a7, s7
                  srl          s6, s3, s11
                  add          gp, s4, s2
                  or           ra, a5, a0
                  srl          s9, a0, t2
                  and          s4, s9, s10
                  sra          s0, t1, a0
                  xori         s2, s8, 631
                  sltiu        a6, s10, 41
                  slt          a1, s6, a6
                  srl          a4, a1, a7
                  add          t1, s2, ra
                  add          t1, a0, ra
                  andi         zero, t4, -500
                  sra          t6, s6, s7
                  add          s8, s6, a1
                  xor          ra, a5, s0
                  sltiu        s3, s1, 37
                  lui          s0, 280633
                  auipc        a7, 936591
                  sltu         a6, t2, a6
                  sub          ra, a2, gp
                  auipc        a4, 111337
                  srli         t0, a3, 28
                  sub          s0, t5, gp
                  srai         s2, a0, 16
                  sltiu        s6, s4, -1438
                  sltiu        s2, t1, 1755
                  or           a6, a2, a5
                  addi         a2, a1, 1359
                  slti         gp, t6, -1717
                  xori         s8, s8, 1817
                  xori         a4, t1, -1621
                  add          t6, s10, t3
                  lui          a0, 459520
                  sltu         s0, s5, s11
                  add          s10, s2, tp
                  or           t0, s9, a6
                  addi         a3, a5, 106
                  slt          t0, a2, s8
                  ori          a1, t2, -275
                  auipc        tp, 186546
                  addi         sp, a4, 1079
                  lui          a7, 714889
                  add          a6, tp, t4
                  srli         t2, a5, 2
                  andi         a5, s4, -16
                  andi         t2, s11, 782
                  srl          t1, s10, s1
                  slli         ra, t0, 10
                  ori          t6, a4, 1009
                  or           a7, t4, a3
                  slt          s0, a2, t1
                  xori         a0, a6, 1832
                  ori          s10, t1, 1285
                  sra          a4, a2, s5
                  sll          a1, a2, zero
                  nop
                  nop
                  sltu         s6, s3, t2
                  sub          s9, t3, a0
                  lui          s4, 793641
                  srli         s5, s6, 14
                  slti         s0, t1, 798
                  xor          s9, s0, t0
                  sltu         s7, a3, sp
                  sub          gp, s7, s2
                  lui          s7, 242586
                  auipc        t6, 739409
                  sltiu        s7, a0, 1613
                  sll          a7, a6, s5
                  add          a2, a5, s0
                  srli         a2, a5, 16
                  sll          t0, t6, s9
                  sll          s9, gp, s5
                  sub          t6, t3, s7
                  lui          a4, 570665
                  addi         s1, a5, -1496
                  slti         t5, gp, -1859
                  xori         t5, s0, 1799
                  lui          s0, 689802
                  or           t1, a0, a3
                  slli         a0, t0, 13
                  addi         a6, tp, 1054
                  slli         s2, tp, 9
                  slli         s8, t6, 14
                  auipc        a4, 70330
                  xor          a5, a2, t3
                  slt          s2, s10, s11
                  and          s9, s10, t6
                  sltiu        s10, s5, -53
                  slli         a5, a5, 8
                  andi         s8, tp, -1340
                  sub          a4, a4, s5
                  addi         t0, s6, -368
                  xor          a2, a7, t0
                  add          t5, s8, t5
                  slt          s7, gp, s6
                  nop
                  auipc        a4, 356461
                  srl          t2, s1, t5
                  slli         s5, t0, 30
                  ori          t2, s9, -1700
                  slt          s5, s6, s11
                  xori         tp, a3, -703
                  lui          s5, 786684
                  slt          a5, ra, t4
                  sub          a6, a2, a6
                  ori          t2, t0, 1648
                  sll          a7, a3, a3
                  srli         s10, s2, 26
                  srai         a3, s9, 31
                  auipc        s7, 632305
                  srai         sp, s6, 6
                  slt          s3, a5, s6
                  srl          a0, a2, t4
                  andi         s8, sp, -912
                  sltiu        t0, gp, 1215
                  sltiu        t2, zero, 188
                  lui          a0, 188210
                  slti         a3, s1, -873
                  sll          a4, s4, t6
                  andi         gp, a4, -1366
                  add          a5, s6, t1
                  add          a4, s1, t4
                  slli         gp, a5, 0
                  sra          s4, a7, t2
                  auipc        ra, 602306
                  srai         gp, s5, 29
                  sll          s5, zero, s11
                  sub          a5, s7, tp
                  and          s6, s11, a3
                  sll          t5, t1, s4
                  slt          s5, s10, a2
                  sub          a5, s2, s7
                  auipc        s3, 947048
                  slli         s9, s6, 31
                  sll          s4, s11, s5
                  or           s3, sp, t3
                  addi         s6, s0, -111
                  andi         a3, s4, 934
                  andi         gp, s4, 81
                  slt          t6, a2, t1
                  add          s7, t2, ra
                  xori         a5, t2, -63
                  sll          a3, s5, t2
                  slt          a0, s8, t1
                  addi         a7, a6, -1209
                  sltiu        t1, s6, 2006
                  and          t2, tp, a4
                  sub          a3, t6, t1
                  sub          t1, s3, t4
                  or           zero, t5, gp
                  xori         a5, s8, 365
                  auipc        t2, 490960
                  srai         zero, a6, 28
                  sub          s0, a6, t2
                  slli         s1, s0, 13
                  slli         a1, a2, 5
                  sra          s1, t3, t1
                  sltu         t5, s2, a3
                  slti         s5, a6, 933
                  or           s3, t4, t0
                  auipc        s3, 12053
                  nop
                  srli         s8, t5, 19
                  xor          s4, a0, gp
                  slt          sp, a1, t3
                  srl          a7, a3, t1
                  xor          a2, a7, s10
                  add          t1, ra, t1
                  or           a7, t0, a7
                  sra          s8, gp, zero
                  or           s10, t0, a2
                  slt          ra, t6, a4
                  srai         s5, t0, 20
                  lui          a6, 119836
                  andi         s10, gp, 1461
                  sra          s3, s1, ra
                  auipc        s3, 292146
                  lui          gp, 969225
                  sll          t5, t4, s4
                  nop
                  xori         s1, s6, -1618
                  sll          s7, t1, a5
                  sltiu        a0, ra, -909
                  and          t6, s6, s7
                  ori          s1, gp, -881
                  srli         a6, s8, 5
                  add          s9, t6, s5
                  xori         s5, a3, -341
                  auipc        s7, 175419
                  sra          a7, a1, s4
                  andi         zero, a4, 257
                  xor          s4, sp, a5
                  and          gp, s8, gp
                  or           t6, gp, s9
                  slli         a1, sp, 3
                  sra          a1, zero, gp
                  and          s3, zero, a0
                  auipc        s7, 72466
                  srl          tp, s1, s8
                  lui          t2, 574599
                  srai         s0, t0, 11
                  sub          s7, a4, s1
                  xor          tp, a0, s9
                  and          a1, a2, t4
                  or           s2, a6, t2
                  addi         s2, a5, 1765
                  sra          t0, s10, gp
                  srl          s7, t2, s6
                  srl          gp, s3, t3
                  lui          s2, 677741
                  sltiu        s10, t4, 542
                  srai         s8, a0, 1
                  slt          tp, s7, s4
                  srli         t0, sp, 3
                  and          s7, s1, tp
                  ori          sp, a5, -574
                  slti         tp, s3, -1379
                  sltu         s7, a3, s9
                  andi         s9, s0, -1213
                  sltu         a4, t6, s3
                  lui          s6, 641273
                  sltiu        sp, gp, 753
                  srl          a7, a0, t6
                  andi         sp, s6, 1483
                  slt          tp, s6, a0
                  and          s5, s3, s10
                  slt          s10, a2, a7
                  sub          t0, t1, a1
                  nop
                  nop
                  slli         t6, gp, 31
                  slt          zero, a3, a2
                  slt          zero, a3, a0
                  and          t0, a1, s3
                  and          t0, s5, a0
                  srl          s1, a6, s10
                  xor          t6, a5, s4
                  ori          a3, ra, -665
                  sra          s0, s5, tp
                  sltu         t5, s5, s3
                  auipc        t5, 72870
                  slli         t6, t4, 12
                  nop
                  and          s6, s8, a1
                  sll          s3, s0, s6
                  sra          a3, t4, a6
                  nop
                  and          gp, s4, t0
                  and          s5, t2, a1
                  auipc        s1, 211398
                  and          a1, a2, s8
                  sltu         zero, s11, s0
                  auipc        a0, 459629
                  li           s3, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           s5, 0x0
                  li           s0, 0x0
                  li           ra, 0xba1aec9
                  li           a1, 0x0
                  li           s10, 0xffffffff
                  li           t2, 0x0
                  li           sp, 0x80000000
                  li           gp, 0x0
                  li           t6, 0x0
                  nop
                  add          ra, s0, sp
                  nop
                  nop
                  nop
                  auipc        s3, 388854
                  auipc        gp, 500305
                  add          s5, s0, s0
                  addi         gp, s5, 290
                  sub          sp, gp, gp
                  sub          s3, t2, sp
                  nop
                  auipc        s0, 413364
                  add          ra, ra, t6
                  addi         ra, sp, -1066
                  sub          sp, s5, a1
                  add          s5, t6, sp
                  add          t6, t2, t2
                  lui          s3, 356376
                  nop
                  nop
                  addi         ra, ra, 1151
                  sub          t2, t6, t6
                  add          s10, sp, s3 #end riscv_int_numeric_corner_stream_19
                  lui          s10, 33271
                  add          s6, t6, gp
                  andi         a6, a2, 683
                  xori         t6, t1, 1514
                  ori          tp, s1, 1073
                  slt          a2, s10, s8
                  sub          s2, s10, s7
                  slt          a4, t3, s5
                  slt          zero, a1, s7
                  and          s7, t3, a3
                  srl          t1, s2, s4
                  srai         s1, s6, 20
                  sra          s6, a0, ra
                  sub          s10, a1, ra
                  sra          t1, t2, s9
                  auipc        s8, 373191
                  srli         a5, s4, 9
                  slt          a0, t1, a1
                  nop
                  slt          s9, s6, a5
                  xor          sp, t1, s1
                  srl          s8, t0, t6
                  sltiu        a5, t5, 1501
                  sra          tp, t2, s11
                  slt          s1, t4, t3
                  andi         s8, a5, -233
                  ori          a4, a0, 76
                  sll          s1, s8, t0
                  sll          a4, a0, s7
                  srl          s3, t5, s7
                  sra          gp, s9, zero
                  xor          s6, zero, t5
                  lui          s10, 708933
                  srl          gp, gp, gp
                  slli         s0, a0, 11
                  slti         a5, t3, 1142
                  sub          a1, t0, ra
                  sll          t1, s1, s4
                  srl          s1, zero, tp
                  srl          ra, a5, s1
                  sltiu        s9, a2, 1251
                  nop
                  lui          s4, 469508
                  lui          a0, 397750
                  slli         zero, s8, 30
                  srli         s9, t2, 29
                  and          s9, t6, a1
                  sltiu        s4, gp, -310
                  srli         a6, s2, 21
                  lui          t0, 335104
                  and          s3, a2, s10
                  auipc        a7, 520142
                  nop
                  xor          s7, t3, s8
                  xor          a5, ra, sp
                  slti         s0, s6, 128
                  auipc        s10, 662701
                  add          tp, a3, s6
                  ori          a5, s10, -1244
                  slli         t0, a1, 7
                  or           a3, zero, s9
                  slti         a0, t6, -104
                  addi         s10, t2, 1223
                  sll          s2, tp, a5
                  ori          a1, t0, -986
                  slt          sp, ra, s3
                  and          tp, a5, s2
                  sub          s2, s0, a1
                  slli         ra, zero, 20
                  auipc        s4, 108381
                  lui          t6, 77221
                  addi         s8, s10, -1003
                  ori          s7, a2, -794
                  nop
                  and          tp, s3, s0
                  slli         a2, a1, 25
                  srai         s8, s7, 21
                  auipc        a5, 953312
                  slti         t6, s11, -630
                  sra          s6, s10, sp
                  auipc        a5, 57485
                  or           s8, s5, t4
                  sra          zero, s8, a1
                  sub          s9, a7, t0
                  slti         s5, a7, 243
                  srli         t0, s10, 21
                  sra          s10, gp, t1
                  nop
                  srli         a4, a1, 4
                  and          t1, s9, s2
                  xori         a4, s4, -1853
                  or           s3, a4, t5
                  or           ra, ra, a1
                  addi         s9, s0, 753
                  or           a6, s6, s5
                  srl          a0, t3, s0
                  ori          a0, zero, -1153
                  add          a5, ra, s11
                  sra          ra, s0, s11
                  sll          a6, s2, s5
                  slt          s2, s11, a4
                  andi         t0, a7, 1708
                  xori         gp, gp, -1193
                  add          t5, a1, ra
                  srli         zero, t0, 23
                  xori         s10, a3, 1053
                  slt          s3, tp, s11
                  lui          s2, 1016505
                  xor          s1, t5, s6
                  xor          a6, s11, a6
                  slt          s0, t1, t1
                  sra          t6, s8, s11
                  nop
                  sll          sp, gp, t4
                  srli         a3, s9, 25
                  sll          ra, a2, a3
                  sll          a4, t6, s10
                  xori         s10, s9, 1946
                  nop
                  ori          s1, ra, 748
                  nop
                  xor          s8, s2, t3
                  srl          a4, s2, s7
                  addi         s1, a2, 1579
                  srai         s5, a4, 30
                  sltu         t1, s1, ra
                  srai         s9, s1, 16
                  auipc        zero, 135944
                  xor          a1, s5, s9
                  add          s4, s9, s10
                  xor          a0, gp, a2
                  ori          t2, a7, 1437
                  or           sp, s3, sp
                  addi         a5, tp, 1484
                  and          s8, t1, a7
                  xor          gp, s0, s4
                  slli         ra, a1, 12
                  andi         a7, s1, 642
                  sll          a4, t0, t5
                  sltiu        t0, s2, -1906
                  and          s0, tp, s4
                  srai         s1, s0, 9
                  andi         t6, tp, -678
                  xor          t5, zero, s8
                  xori         s2, s4, -1750
                  sra          s10, a3, s5
                  lui          sp, 727780
                  ori          sp, a4, -1318
                  and          t0, t3, a2
                  addi         s1, a3, -1718
                  sra          s2, s2, t2
                  srai         s3, a7, 2
                  or           s5, s8, s2
                  srli         tp, s8, 1
                  slli         t6, zero, 16
                  slti         gp, s11, 1801
                  andi         ra, sp, -215
                  sltiu        a2, t0, -1057
                  sll          s1, s3, a3
                  addi         tp, s0, -1591
                  andi         ra, s1, 1655
                  sub          a7, t0, s3
                  and          s3, s2, s2
                  add          a5, ra, s7
                  sll          sp, t1, t3
                  sub          a7, sp, a2
                  ori          a7, s0, -2037
                  or           gp, a7, t1
                  andi         a2, gp, -647
                  sra          s1, s3, t2
                  lui          s2, 230490
                  srli         a4, ra, 14
                  slti         s9, s6, 707
                  ori          s10, tp, -452
                  addi         s3, s1, 512
                  andi         a3, s6, 1479
                  ori          t0, tp, 1240
                  sltu         s6, s6, t0
                  slti         a2, t6, -433
                  sltu         s4, s5, a7
                  slti         s6, a0, -434
                  add          a0, a5, s8
                  srli         tp, s7, 0
                  xori         s3, ra, -467
                  andi         s1, a5, 1951
                  ori          a3, s5, 1018
                  srai         s9, s11, 14
                  add          t6, t4, zero
                  srli         t2, ra, 13
                  srai         gp, s7, 27
                  andi         t5, a4, 123
                  sra          a2, s9, gp
                  sub          s5, a0, a6
                  auipc        a3, 397597
                  slt          t5, s7, s3
                  and          s1, s11, t4
                  nop
                  srai         tp, t2, 28
                  srli         a7, a2, 8
                  andi         s0, s10, -116
                  sltiu        a4, t6, -604
                  slli         t2, zero, 8
                  sltiu        a6, ra, 1376
                  auipc        s3, 533140
                  srai         s1, s3, 12
                  nop
                  nop
                  srl          a3, a7, a3
                  sra          gp, t6, s2
                  sub          s1, s9, a6
                  xor          t5, s0, ra
                  sub          s1, a4, a7
                  andi         s1, s1, 1962
                  ori          zero, gp, -574
                  sra          s10, s3, s8
                  slli         sp, ra, 12
                  or           a4, a6, a7
                  ori          a6, s4, 590
                  add          a1, s3, t5
                  andi         a1, t0, 363
                  sltu         s1, s4, s3
                  ori          s10, a5, -108
                  sltiu        a0, tp, 1689
                  sub          t6, s1, a3
                  sub          s0, sp, s0
                  or           a0, a7, a0
                  srli         a2, s10, 10
                  slli         s10, s11, 22
                  slli         a4, a6, 8
                  add          s1, s8, t3
                  add          a6, a1, s0
                  sll          tp, s8, t2
                  sltiu        s4, s0, 1162
                  or           s0, t5, s6
                  auipc        s4, 783385
                  lui          t1, 991099
                  andi         s9, s3, -1773
                  sltu         s3, s0, gp
                  addi         a2, gp, 1499
                  xori         t0, t5, -363
                  srl          a0, t5, a2
                  sra          s5, t0, t4
                  nop
                  sub          a0, s6, zero
                  addi         a2, t5, 1593
                  xor          s5, s6, zero
                  lui          s10, 49173
                  and          a1, s9, s2
                  sltiu        s6, ra, 127
                  sra          tp, t3, t0
                  slti         a1, s8, -603
                  nop
                  sra          a4, t0, s2
                  auipc        t2, 377230
                  srai         sp, t5, 10
                  slti         s6, s3, 426
                  srli         a5, a1, 22
                  srli         zero, tp, 15
                  sltu         s5, t0, s8
                  slt          a2, s7, s2
                  sltiu        a0, sp, -1337
                  srai         a6, t0, 26
                  srl          a7, t1, s6
                  nop
                  andi         a3, s10, 262
                  sra          a3, s5, a1
                  srai         s9, s3, 7
                  la x29, test_done
                  jalr x0, x29, 0
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
                  csrr x14, 0x300 # MSTATUS
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 31
                  bne x14, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x14, 0x341 # MEPC
                  csrr x14, 0x342 # MCAUSE
                  li x17, 0x3 # BREAKPOINT
                  beq x14, x17, ebreak_handler
                  li x17, 0x8 # ECALL_UMODE
                  beq x14, x17, ecall_handler
                  li x17, 0x9 # ECALL_SMODE
                  beq x14, x17, ecall_handler
                  li x17, 0xb # ECALL_MMODE
                  beq x14, x17, ecall_handler
                  li x17, 0x1
                  beq x14, x17, instr_fault_handler
                  li x17, 0x5
                  beq x14, x17, load_fault_handler
                  li x17, 0x7
                  beq x14, x17, store_fault_handler
                  li x17, 0xc
                  beq x14, x17, pt_fault_handler
                  li x17, 0xd
                  beq x14, x17, pt_fault_handler
                  li x17, 0xf
                  beq x14, x17, pt_fault_handler
                  li x17, 0x2 # ILLEGAL_INSTRUCTION
                  beq x14, x17, illegal_instr_handler
                  csrr x17, 0x343 # MTVAL
                  1: la x29, test_done
                  jalr x1, x29, 0

ecall_handler:    
                  la x14, _start
                  sw x0, 0(x14)
                  sw x1, 4(x14)
                  sw x2, 8(x14)
                  sw x3, 12(x14)
                  sw x4, 16(x14)
                  sw x5, 20(x14)
                  sw x6, 24(x14)
                  sw x7, 28(x14)
                  sw x8, 32(x14)
                  sw x9, 36(x14)
                  sw x10, 40(x14)
                  sw x11, 44(x14)
                  sw x12, 48(x14)
                  sw x13, 52(x14)
                  sw x14, 56(x14)
                  sw x15, 60(x14)
                  sw x16, 64(x14)
                  sw x17, 68(x14)
                  sw x18, 72(x14)
                  sw x19, 76(x14)
                  sw x20, 80(x14)
                  sw x21, 84(x14)
                  sw x22, 88(x14)
                  sw x23, 92(x14)
                  sw x24, 96(x14)
                  sw x25, 100(x14)
                  sw x26, 104(x14)
                  sw x27, 108(x14)
                  sw x28, 112(x14)
                  sw x29, 116(x14)
                  sw x30, 120(x14)
                  sw x31, 124(x14)
                  la x29, write_tohost
                  jalr x0, x29, 0

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
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
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
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
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
                  csrr  x14, 0x300 # MSTATUS;
                  csrr  x14, 0x304 # MIE;
                  csrr  x14, 0x344 # MIP;
                  csrrc x14, 0x344, x14 # MIP;
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
