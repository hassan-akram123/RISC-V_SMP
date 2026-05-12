.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x22, h0_start
jalr x0, x22, 0
h0_start:
                  li x27, 0x40000100
                  csrw 0x301, x27
kernel_sp:        
                  la x4, kernel_stack_end

trap_vec_init:    
                  la x27, mtvec_handler
                  ori x27, x27, 0
                  csrw 0x305, x27 # MTVEC

mepc_setup:       
                  la x27, init
                  csrw 0x341, x27

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x27, 0x1800
                  csrw 0x300, x27 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xf472ce89
                  li x2, 0xe
                  li x3, 0x80000000
                  li x5, 0xf3d855e0
                  li x6, 0xfce96a03
                  li x7, 0x4d49804a
                  li x9, 0x80000000
                  li x10, 0x80000000
                  li x11, 0x9
                  li x12, 0x0
                  li x13, 0x62822a41
                  li x14, 0x8
                  li x15, 0x80000000
                  li x16, 0xf99585af
                  li x17, 0x10787028
                  li x18, 0x0
                  li x19, 0xc8a7d202
                  li x20, 0xc
                  li x21, 0x80000000
                  li x22, 0xe
                  li x23, 0xff3f8e18
                  li x24, 0x80000000
                  li x25, 0x36e1cee3
                  li x26, 0xf070fd99
                  li x27, 0x80000000
                  li x28, 0x3
                  li x29, 0x80000000
                  li x30, 0x0
                  li x31, 0x80000000
                  la x8, user_stack_end
main:             li           sp, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           t6, 0x0
                  li           a2, 0x80000000
                  li           a5, 0x80000000
                  li           t2, 0xffffffff
                  li           s11, 0x80000000
                  li           s1, 0x0
                  li           gp, 0xffffffff
                  li           ra, 0x80000000
                  li           s5, 0x0
                  add          gp, t2, t2
                  addi         gp, a2, 180
                  nop
                  lui          a2, 425352
                  sub          s1, s5, ra
                  add          gp, s1, gp
                  lui          a5, 593939
                  lui          ra, 718587
                  auipc        s1, 712808
                  nop
                  lui          s1, 471148
                  lui          sp, 127914
                  add          s5, t6, a5
                  auipc        ra, 883808
                  nop
                  addi         t2, gp, 456
                  nop
                  nop
                  auipc        s11, 879114
                  add          s11, s11, ra #end riscv_int_numeric_corner_stream_4
                  li           a4, 0xd65375d0 #start riscv_int_numeric_corner_stream_14
                  li           s5, 0xffffffff
                  li           t2, 0x0
                  li           s10, 0x80000000
                  li           s8, 0x80000000
                  li           s1, 0x80000000
                  li           a3, 0xa8d75e68
                  li           s11, 0x80000000
                  li           a7, 0x32e49b78
                  li           a5, 0x80000000
                  lui          s11, 333473
                  auipc        a3, 396151
                  addi         s10, a5, 1313
                  addi         a7, a4, 1645
                  add          t2, a3, a3
                  add          a7, s8, a4
                  lui          a3, 956667
                  addi         a5, s11, -541
                  nop
                  nop
                  add          a7, s8, s10
                  auipc        s11, 706174
                  nop
                  addi         s1, s10, 1419
                  nop
                  add          a3, s11, s8
                  addi         a5, a5, -1902
                  lui          t2, 258781 #end riscv_int_numeric_corner_stream_14
                  li           s8, 0x669c6767 #start riscv_int_numeric_corner_stream_5
                  li           a7, 0x80000000
                  li           t1, 0xffffffff
                  li           a2, 0x0
                  li           s7, 0x80000000
                  li           s9, 0x0
                  li           a3, 0xffffffff
                  li           s10, 0xffffffff
                  li           ra, 0x80000000
                  li           a1, 0x0
                  lui          a1, 747253
                  sub          a7, s8, ra
                  lui          t1, 241670
                  lui          a1, 230089
                  sub          s10, a3, a1
                  add          s10, a1, s8
                  nop
                  auipc        t1, 767738
                  sub          s9, s9, t1
                  sub          a1, a3, ra
                  lui          s9, 173777
                  add          a1, s10, a2
                  addi         t1, a3, -1067
                  add          ra, s8, s10
                  auipc        s9, 899977
                  nop
                  sub          t1, s9, s9 #end riscv_int_numeric_corner_stream_5
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           t2, 0x80000000
                  li           a2, 0xe014048a
                  li           t3, 0x80000000
                  li           a7, 0x4229bcb5
                  li           sp, 0x5d83574d
                  li           s4, 0xc13dbd2c
                  li           a0, 0xffffffff
                  li           s8, 0x0
                  li           t5, 0x0
                  nop
                  add          t5, ra, sp
                  sub          s8, s4, sp
                  sub          t2, t5, t5
                  lui          s8, 513041
                  lui          s4, 22469
                  lui          a0, 761463
                  addi         a2, t5, -532
                  lui          t2, 290525
                  lui          s4, 270801
                  lui          t5, 690600
                  auipc        t2, 581153
                  sub          t5, sp, ra
                  add          s8, t2, t5
                  add          sp, a7, a2
                  auipc        a0, 250158
                  auipc        t3, 372970
                  addi         a0, a2, 1433
                  add          ra, a7, t2
                  addi         ra, t3, 1477
                  add          a0, a2, a2
                  lui          a0, 56950
                  add          a0, t2, a0
                  add          a0, t2, ra
                  auipc        a2, 576719 #end riscv_int_numeric_corner_stream_3
                  li           a5, 0xba3b4464 #start riscv_int_numeric_corner_stream_16
                  li           s8, 0x80000000
                  li           a2, 0x8ca0d60c
                  li           s7, 0x0
                  li           t0, 0xffffffff
                  li           s3, 0xcda68269
                  li           ra, 0x0
                  li           sp, 0x8eee1ce0
                  li           t1, 0x80000000
                  li           a7, 0x80000000
                  addi         ra, t1, 830
                  lui          sp, 714346
                  addi         ra, s3, -455
                  nop
                  lui          a7, 698947
                  sub          t0, ra, s8
                  lui          s8, 138257
                  add          a2, a5, sp
                  nop
                  nop
                  nop
                  nop
                  nop
                  auipc        t0, 18078
                  lui          s7, 823399
                  auipc        t1, 254438
                  add          s7, sp, s3
                  sub          t0, a7, t1
                  add          t0, a2, t1
                  auipc        s3, 419537
                  addi         a5, t1, 1981 #end riscv_int_numeric_corner_stream_16
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           a6, 0xffffffff
                  li           t2, 0x6c1b3aec
                  li           gp, 0x0
                  li           ra, 0xf2eca703
                  li           s9, 0xdf3c713b
                  li           s7, 0x0
                  li           a3, 0xc854e9a4
                  li           t0, 0x0
                  li           t4, 0x0
                  lui          t0, 356129
                  auipc        ra, 185608
                  lui          a3, 61950
                  auipc        s2, 176118
                  add          t2, gp, a6
                  nop
                  addi         gp, s2, 1127
                  nop
                  lui          t0, 653242
                  add          gp, a6, gp
                  add          s9, gp, ra
                  add          t4, a6, s7
                  lui          ra, 371162
                  auipc        s7, 275570
                  sub          t0, a3, ra
                  auipc        t0, 58009
                  sub          t4, a6, gp #end riscv_int_numeric_corner_stream_12
                  li           gp, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           t1, 0x0
                  li           t0, 0xffffffff
                  li           a7, 0x9a95ab43
                  li           t4, 0xffffffff
                  li           s2, 0x0
                  li           t2, 0xffffffff
                  li           a3, 0x0
                  li           a1, 0x80000000
                  li           s1, 0x80000000
                  lui          t4, 559293
                  auipc        a7, 710886
                  addi         a3, t0, 110
                  lui          a1, 478934
                  add          a3, a3, t1
                  addi         a1, t0, 1195
                  lui          s2, 406125
                  nop
                  auipc        t4, 74335
                  nop
                  lui          a1, 691646
                  add          a1, s2, t2
                  add          t0, s1, t4
                  addi         a3, t1, 1384
                  add          s2, a7, s1
                  lui          a3, 973089
                  sub          t2, t1, t1
                  add          t1, s1, a3
                  auipc        t2, 605940
                  addi         t4, s2, 50
                  auipc        a1, 82694
                  nop
                  lui          t0, 670882
                  addi         t0, gp, -1584
                  auipc        a1, 974325 #end riscv_int_numeric_corner_stream_7
                  li           t6, 0xd2d0417f #start riscv_int_numeric_corner_stream_11
                  li           a4, 0x0
                  li           a1, 0xffffffff
                  li           a6, 0xffffffff
                  li           s10, 0x7488d457
                  li           a3, 0x80000000
                  li           t5, 0xdfd73a51
                  li           t1, 0x0
                  li           t3, 0x0
                  li           a2, 0x0
                  nop
                  addi         t5, a4, -1718
                  auipc        a2, 274253
                  lui          a6, 613394
                  sub          a6, t3, a3
                  nop
                  lui          t6, 1025526
                  add          a1, t5, a2
                  lui          a2, 617397
                  addi         s10, s10, -1263
                  add          a6, t5, a2
                  nop
                  auipc        a1, 642714
                  lui          t5, 196149
                  lui          s10, 972193
                  sub          t3, t1, t5
                  nop #end riscv_int_numeric_corner_stream_11
                  li           a3, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           s8, 0x80000000
                  li           t3, 0xf1d6e085
                  li           gp, 0xffffffff
                  li           t2, 0x0
                  li           a1, 0x80000000
                  li           s3, 0x0
                  li           s7, 0x30f3af4a
                  li           a2, 0x80000000
                  li           s5, 0x0
                  lui          t3, 942783
                  addi         a1, s5, -964
                  lui          s7, 139783
                  sub          a3, s3, s3
                  add          t2, a2, t2
                  sub          s3, a1, a2
                  addi         s3, a2, 1364
                  nop
                  addi         s3, s7, 276
                  auipc        a1, 343826
                  add          a2, a1, s3
                  add          a3, a3, a2
                  lui          s8, 55596
                  nop
                  addi         a2, s3, -53
                  add          s8, a2, s7
                  add          t3, a1, s7 #end riscv_int_numeric_corner_stream_1
                  li           a1, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           t3, 0x2c09f832
                  li           a0, 0x0
                  li           s2, 0x44910df0
                  li           a7, 0xffffffff
                  li           s10, 0x641650ce
                  li           a4, 0x0
                  li           t0, 0x80000000
                  li           s5, 0x0
                  li           sp, 0xe1fe99d
                  lui          a1, 962301
                  sub          s5, a1, s10
                  nop
                  nop
                  nop
                  add          a1, a0, s2
                  addi         t0, t0, -116
                  lui          a7, 327674
                  add          t0, s10, s2
                  add          sp, sp, t0
                  add          sp, s2, t0
                  addi         a1, t0, 178
                  lui          a7, 348174
                  add          s2, t0, s2
                  sub          t3, a4, t3
                  sub          s5, t0, a1 #end riscv_int_numeric_corner_stream_17
                  sra          s5, a0, t1
                  srl          a6, t5, gp
                  sub          a3, a0, t0
                  sltu         t0, t0, t2
                  nop
                  sub          t6, s2, s8
                  nop
                  slt          s7, t4, t5
                  srli         s9, s4, 8
                  or           sp, t3, t1
                  xor          t0, t6, s8
                  addi         a4, tp, -825
                  srai         s8, s6, 29
                  srli         gp, s0, 15
                  sub          a3, zero, zero
                  sub          t3, s9, t6
                  xor          ra, a3, s10
                  or           t0, t1, a0
                  srai         t5, s9, 14
                  slti         s4, s0, 1404
                  srl          s3, a7, a3
                  add          t4, t6, s10
                  sub          s2, a1, ra
                  srli         s9, s10, 14
                  addi         s3, a6, -968
                  addi         a3, a7, -943
                  or           s8, t1, t2
                  xori         a7, s1, -1723
                  addi         t1, s8, -2009
                  slti         a3, a5, 1964
                  sub          t4, s1, s8
                  auipc        a1, 464108
                  slti         a0, sp, 427
                  srai         a3, a0, 2
                  addi         sp, t0, 1468
                  slli         t0, s10, 5
                  sra          s8, s3, s10
                  lui          a0, 661959
                  sra          t6, gp, t3
                  sltu         s9, a7, t0
                  sra          s9, t0, t2
                  sltiu        s11, a4, 1493
                  xor          ra, s4, s11
                  slt          t1, a5, t2
                  nop
                  xori         t4, s0, 1791
                  slli         a1, s8, 26
                  andi         t4, s4, -368
                  slli         a1, s7, 29
                  srai         a5, t1, 17
                  xor          a1, s8, t5
                  auipc        s5, 426174
                  lui          sp, 976600
                  and          s1, t6, s9
                  xori         a3, s10, 170
                  sra          sp, t3, t0
                  and          s2, gp, a0
                  lui          s11, 621993
                  sltu         s3, zero, s2
                  addi         t0, s6, 1983
                  srl          s3, t3, a3
                  add          s10, zero, gp
                  auipc        a7, 271643
                  srl          a4, t3, a5
                  lui          t6, 836569
                  and          zero, s11, a1
                  sll          a3, s7, ra
                  slti         s9, ra, -1565
                  lui          t0, 91350
                  srli         a7, s11, 21
                  sltiu        gp, s5, 1573
                  sra          a7, a0, a7
                  nop
                  sltu         t4, s5, t0
                  srai         a3, s6, 6
                  sra          s3, a3, t0
                  sub          t3, a0, s1
                  nop
                  srli         a1, a0, 5
                  or           s2, a1, t1
                  sltu         a3, t6, t6
                  auipc        s2, 222110
                  nop
                  slti         a7, a7, -1218
                  srl          s11, s3, ra
                  slti         t3, s6, 1173
                  sltiu        s11, t6, -892
                  and          s8, s4, a7
                  auipc        gp, 872017
                  srli         t3, s0, 13
                  srl          s3, s3, ra
                  and          t0, t1, a6
                  andi         a0, s1, 1541
                  srai         t4, s0, 5
                  slt          s1, ra, gp
                  andi         a7, gp, 596
                  nop
                  slt          a2, zero, s3
                  auipc        s1, 703408
                  slt          t3, s9, gp
                  nop
                  sra          sp, a7, t6
                  srai         sp, sp, 10
                  slt          a3, t2, s6
                  slti         t0, s4, 1944
                  sltiu        t1, t1, 920
                  auipc        a1, 1045743
                  sub          s9, s9, gp
                  slli         s1, s8, 20
                  srl          gp, s0, a6
                  and          a4, s8, s10
                  sub          a2, s2, t0
                  sra          s4, a1, sp
                  srli         s9, s5, 7
                  auipc        zero, 217597
                  slti         a5, gp, -1542
                  addi         sp, a6, -480
                  sltiu        t4, t1, 548
                  nop
                  ori          t0, a3, 2010
                  srli         t5, s11, 18
                  auipc        a4, 95539
                  and          s9, a5, a7
                  sra          a5, s1, ra
                  sll          a0, s6, a7
                  srl          a4, s10, a6
                  and          a0, s3, s6
                  xori         s3, t1, 43
                  sltu         s3, gp, t4
                  and          a0, a0, s9
                  xori         s1, a6, 1638
                  xori         a2, t4, -1920
                  ori          s8, t2, 1729
                  ori          t3, s11, -515
                  add          gp, s8, tp
                  xori         sp, a1, -1229
                  xor          s10, s3, s9
                  xori         s2, s7, 340
                  srli         s8, t0, 10
                  slli         s5, t4, 28
                  nop
                  lui          a1, 476263
                  slti         s5, a5, 777
                  sub          t5, t3, a3
                  sub          t1, t4, a4
                  srl          s3, s11, s0
                  addi         s10, s4, 1927
                  slt          s8, s10, a5
                  sra          s4, s5, a2
                  sltiu        a2, s10, 1096
                  sub          a5, t2, s5
                  sll          s3, a7, a7
                  sltu         t0, t4, t6
                  srli         a6, tp, 17
                  slt          a3, s5, zero
                  srl          t6, s9, a1
                  sltiu        sp, t1, -725
                  nop
                  slt          s8, s2, a0
                  xori         s4, zero, 1777
                  slti         s8, a7, 1467
                  srai         a7, a4, 17
                  andi         s2, a1, 261
                  slti         s10, a7, 775
                  srli         t2, tp, 7
                  sll          s7, a4, a4
                  andi         sp, s2, -461
                  and          t0, a0, sp
                  sra          a4, t0, a6
                  and          s2, s8, s9
                  srai         ra, s2, 19
                  or           s5, ra, tp
                  addi         a0, s3, 794
                  sltu         a1, s4, a3
                  sub          s2, a1, gp
                  sltiu        a1, t5, -1169
                  xor          s11, s6, s5
                  andi         s10, s2, 1097
                  nop
                  addi         sp, a5, 149
                  addi         s1, s8, 2008
                  lui          s4, 76472
                  slti         a5, a3, -319
                  sltiu        a7, t4, 1586
                  lui          t3, 767787
                  srl          a1, sp, t0
                  xor          t6, s4, t0
                  add          a0, ra, t0
                  auipc        sp, 508412
                  sll          a7, s4, s7
                  slt          zero, a1, gp
                  srl          a3, s4, t0
                  auipc        s8, 796696
                  slt          t0, ra, s3
                  srli         t4, t1, 25
                  lui          gp, 343994
                  srl          s4, t4, s11
                  add          a6, s9, s1
                  and          t4, a4, t2
                  srli         s10, t2, 16
                  slli         s4, t4, 6
                  slt          sp, s1, gp
                  slli         s10, ra, 29
                  slt          t3, a1, s2
                  slt          s10, s3, t2
                  sra          sp, s11, zero
                  sra          t6, s2, a3
                  sll          ra, t6, a7
                  nop
                  srai         a2, s2, 1
                  nop
                  sll          s9, a0, a5
                  add          t1, s0, a6
                  sra          s7, s3, zero
                  or           s4, t0, gp
                  andi         s3, a7, 1735
                  and          a7, a0, s3
                  auipc        a0, 776844
                  sll          t4, a0, s1
                  and          s10, s11, a1
                  ori          a1, s6, 1372
                  xori         t3, zero, 1379
                  srli         s9, t6, 6
                  sra          s3, t3, t0
                  auipc        s8, 817069
                  srai         s10, s11, 26
                  srl          a5, t4, s0
                  xori         t6, a1, -820
                  nop
                  andi         t5, t5, -1927
                  nop
                  sltiu        s9, a1, -1982
                  ori          s9, a1, 331
                  sub          a5, s8, a0
                  slli         a4, s7, 3
                  sltu         ra, sp, t0
                  nop
                  sltu         t6, a6, t5
                  sltiu        t3, s9, -233
                  nop
                  sltiu        t2, a1, -1592
                  srai         s10, a1, 25
                  sll          a7, a0, t1
                  slli         s11, a0, 2
                  xor          s1, s7, tp
                  lui          s3, 686208
                  sll          s10, a1, t0
                  slli         t3, s0, 29
                  slti         a6, tp, 1142
                  add          a4, s3, ra
                  and          t4, a6, a2
                  srli         t1, a6, 22
                  ori          gp, t1, 587
                  or           a5, zero, s3
                  slli         t4, a4, 11
                  srl          t6, t1, s4
                  ori          ra, gp, 171
                  slt          s4, a4, t6
                  xor          s1, s5, zero
                  or           s9, a0, s7
                  add          s10, s4, sp
                  auipc        s8, 934336
                  srai         a7, a2, 10
                  slt          a6, t1, a6
                  auipc        zero, 667082
                  xor          s4, t5, s4
                  srli         t4, a5, 17
                  srai         a1, a2, 13
                  slt          t3, s11, s11
                  auipc        a6, 979440
                  sub          a3, s6, t3
                  sub          a0, s6, zero
                  srai         t3, t5, 2
                  srli         sp, s6, 3
                  andi         s1, s1, -457
                  sltiu        s9, t4, 139
                  slli         a5, zero, 8
                  ori          t6, s5, -2039
                  srli         s4, s11, 20
                  slti         s5, sp, 523
                  nop
                  srli         a4, a6, 3
                  andi         s1, tp, -1257
                  sll          t4, t2, t0
                  nop
                  andi         a4, s2, 1839
                  sltiu        s3, sp, 1630
                  addi         s3, s9, 1283
                  sll          a2, a2, ra
                  andi         t3, s2, 1948
                  auipc        a7, 938993
                  addi         s11, t1, 1089
                  sltiu        s5, s9, -488
                  srai         t5, a0, 6
                  sltu         gp, s9, s11
                  slti         a7, s4, 1872
                  nop
                  andi         zero, t0, -1452
                  ori          s2, a3, 208
                  lui          a0, 542679
                  srai         ra, s1, 5
                  ori          gp, a0, -1973
                  xori         s3, a4, 1121
                  sltu         a4, t5, s5
                  srai         ra, s4, 15
                  add          a0, zero, s7
                  sub          a3, s8, s3
                  sltu         a2, s8, s10
                  nop
                  srli         t1, s2, 22
                  lui          a7, 382930
                  xori         s8, t4, -308
                  lui          t2, 1032519
                  xor          s7, zero, s3
                  srai         t3, zero, 12
                  add          t2, s3, t1
                  auipc        t6, 85598
                  slt          t5, zero, s3
                  lui          s2, 285962
                  add          a4, t3, s7
                  addi         t6, s10, -1520
                  nop
                  xor          s8, a6, s9
                  sltiu        s9, ra, 1612
                  slli         s5, s2, 9
                  sll          t4, s8, sp
                  srai         t6, s4, 3
                  sra          a2, s2, a5
                  and          a6, t4, t4
                  slti         t0, s7, 1095
                  addi         s5, s3, 1415
                  or           a0, a3, a3
                  ori          a1, a4, -888
                  and          a6, a4, t0
                  sltiu        t3, s3, 1744
                  slli         a6, ra, 31
                  or           sp, s6, s0
                  sltu         s10, ra, s1
                  or           ra, a4, s0
                  slt          t5, a0, ra
                  sra          s11, t6, s5
                  nop
                  srl          s4, t0, a5
                  srli         s7, s7, 22
                  auipc        t3, 698841
                  sltu         t3, a2, t4
                  or           s9, t6, gp
                  srai         a7, a2, 13
                  xor          sp, a6, sp
                  sltiu        a1, a4, -1908
                  lui          t1, 267869
                  slli         a2, s10, 27
                  srai         s9, a3, 14
                  sll          sp, a5, s8
                  ori          t2, s0, -391
                  sltu         s8, s0, a5
                  ori          zero, s10, -72
                  ori          t4, a1, 1343
                  nop
                  xor          t2, a2, s4
                  xori         a3, s6, 2044
                  srl          a6, a7, t5
                  sltiu        s7, a2, 237
                  slt          s10, a7, s7
                  sll          t0, s5, a3
                  srl          t6, s2, t6
                  lui          t3, 454010
                  sltiu        t0, gp, -83
                  auipc        s7, 516277
                  andi         s10, a3, -1558
                  ori          s1, zero, -13
                  ori          t3, s1, -451
                  xori         sp, gp, -1048
                  xori         s11, s5, 1804
                  add          s9, t1, tp
                  xori         a7, t3, -259
                  nop
                  sltiu        a6, ra, 385
                  lui          a2, 707711
                  sll          gp, s2, s5
                  lui          t2, 585740
                  auipc        a1, 170927
                  srl          s5, a0, s6
                  sll          a1, s9, a1
                  add          s11, a3, t0
                  slt          a5, zero, a5
                  srai         s8, a5, 25
                  srai         ra, a5, 31
                  sub          t3, a6, a6
                  slti         s9, a5, 906
                  addi         a1, t1, 4
                  sub          s2, t1, s11
                  srl          t4, zero, s6
                  xori         s3, t1, 1285
                  sra          s2, t1, a7
                  sub          t6, sp, s2
                  sub          a5, t2, ra
                  lui          a4, 210052
                  srli         t5, a1, 7
                  slt          s10, s6, t2
                  slt          t3, a6, s2
                  or           s7, s0, s1
                  ori          a5, a3, 517
                  xori         t2, a1, 1977
                  addi         a0, a5, -1754
                  add          s11, a4, s9
                  srl          a4, s10, t6
                  nop
                  add          t2, a0, sp
                  sub          a0, zero, t6
                  addi         s5, t3, 901
                  xori         a3, s9, -1191
                  srai         s10, a5, 16
                  slt          a3, a6, s8
                  lui          s8, 966085
                  addi         t1, a1, 1625
                  srai         t5, s1, 21
                  sltu         a6, a1, s1
                  and          a4, a0, a4
                  srli         s3, t6, 15
                  slli         a1, s8, 8
                  slt          ra, t4, t0
                  srl          s2, s7, s7
                  srli         s2, a4, 15
                  nop
                  sra          s4, sp, a6
                  lui          s2, 841010
                  auipc        s4, 1016858
                  lui          a1, 705467
                  or           t6, s7, t4
                  xori         a4, t5, 245
                  xor          s7, a3, t1
                  srli         s4, s7, 4
                  and          t6, a2, s10
                  srai         ra, ra, 26
                  ori          s11, s10, 445
                  sltu         t1, a3, a5
                  sra          t0, t0, tp
                  sll          s7, a0, a7
                  sltiu        t3, s0, -845
                  xori         t3, s9, 1587
                  and          t1, a3, sp
                  slti         t2, zero, 1342
                  sub          s7, gp, a2
                  sll          t3, s11, s9
                  sra          s8, s4, s10
                  sra          s5, s6, a7
                  sub          sp, sp, t5
                  slt          a7, s5, t3
                  add          s2, s4, tp
                  srli         t4, a5, 0
                  srl          ra, a0, s3
                  auipc        s3, 967769
                  sub          s9, s4, gp
                  sub          a6, tp, t5
                  lui          s10, 719712
                  srli         a4, t3, 13
                  nop
                  slti         a4, t1, 675
                  or           gp, zero, s3
                  slti         s2, a5, -1664
                  sub          gp, s8, s6
                  ori          sp, t1, 507
                  sll          s4, a2, a2
                  srli         zero, sp, 31
                  auipc        t3, 20910
                  nop
                  srai         s5, s0, 20
                  andi         a7, s0, 1319
                  or           t4, s0, s1
                  xor          s2, a3, t6
                  nop
                  slli         t4, s4, 29
                  xori         a7, a6, -549
                  xor          s7, s5, a7
                  sll          s11, a7, s3
                  auipc        a3, 522336
                  srl          ra, s9, t5
                  srli         a2, s4, 27
                  slli         t4, t4, 26
                  and          sp, s10, ra
                  ori          t5, s0, -1559
                  li           t5, 0xed61d099 #start riscv_int_numeric_corner_stream_13
                  li           s7, 0x0
                  li           a7, 0x80000000
                  li           s8, 0x0
                  li           a5, 0xffffffff
                  li           sp, 0x0
                  li           a3, 0x80000000
                  li           a1, 0x0
                  li           gp, 0xffffffff
                  li           a4, 0xac54ddd6
                  sub          a5, s8, s7
                  auipc        s7, 446392
                  addi         s7, a5, -1238
                  lui          sp, 439154
                  addi         s7, a5, -863
                  nop
                  add          a7, a1, s7
                  lui          a1, 1040984
                  nop
                  addi         s7, gp, 1416
                  auipc        sp, 167548
                  sub          a7, a3, s8
                  lui          a4, 88816
                  lui          gp, 585201
                  nop
                  addi         sp, a4, 205
                  add          a3, t5, a7
                  nop
                  sub          s7, a3, a1
                  nop #end riscv_int_numeric_corner_stream_13
                  addi         s3, s0, 596
                  slt          sp, gp, a3
                  sll          s8, t6, t4
                  srai         a0, s8, 29
                  or           a6, s1, t6
                  slli         t1, t1, 21
                  srl          t4, s10, t0
                  sltiu        a0, s10, 1588
                  addi         t0, a2, -1606
                  or           s11, tp, t2
                  sll          s7, s3, a7
                  sltu         a0, s7, t5
                  sub          ra, s1, s2
                  sra          a5, sp, a7
                  andi         a6, t0, -1767
                  addi         t6, tp, 2027
                  slli         s10, a5, 16
                  xori         t3, a0, -927
                  xori         t5, a0, -984
                  sub          a0, gp, s11
                  add          s7, tp, sp
                  sll          s10, gp, s0
                  srai         t0, t3, 7
                  nop
                  slti         s2, t6, -482
                  sltiu        s9, a1, 275
                  sltu         a1, sp, zero
                  slt          s7, s3, t1
                  auipc        zero, 134101
                  andi         ra, s10, -1452
                  add          t0, s3, a1
                  sra          s7, s1, ra
                  slti         t6, a1, 1907
                  auipc        s8, 446758
                  lui          t2, 789974
                  and          t4, a0, a2
                  srai         gp, s1, 2
                  ori          s5, t5, -1781
                  ori          t4, s4, 1149
                  lui          a1, 648570
                  addi         s8, s3, -1258
                  srli         zero, zero, 31
                  and          t0, s7, tp
                  sltiu        t2, t4, -1571
                  andi         a1, a4, -1395
                  srl          t2, gp, ra
                  xor          ra, s9, t0
                  sltu         s2, a0, s10
                  sltiu        t0, t3, -1553
                  addi         s11, gp, 1847
                  ori          t1, s8, 857
                  sltu         t4, t4, gp
                  or           t1, a4, s5
                  srai         a6, s9, 15
                  addi         s1, s11, 1476
                  xor          t3, s3, s5
                  xori         a7, t2, -1056
                  or           s7, t4, a1
                  or           a0, sp, ra
                  slti         s8, ra, -2015
                  add          t3, ra, t5
                  lui          a7, 617795
                  lui          s1, 57451
                  andi         a3, tp, -698
                  sltiu        s3, s10, -1331
                  slli         s3, t2, 7
                  sra          a1, t2, s9
                  sll          t5, a4, s8
                  ori          gp, s7, 53
                  ori          t1, s4, 585
                  sub          s5, a0, t5
                  and          a2, t1, s7
                  or           sp, s0, s9
                  slti         sp, a7, -316
                  auipc        sp, 269318
                  auipc        s11, 220243
                  sra          a0, t4, a7
                  slti         t4, a0, -1513
                  srli         t6, s5, 24
                  nop
                  andi         sp, a2, 522
                  add          gp, gp, s1
                  add          t3, t1, s10
                  sra          s7, gp, a1
                  srli         t2, t3, 28
                  nop
                  srli         s11, a2, 0
                  sll          a7, t6, a7
                  srai         ra, s8, 27
                  addi         a2, s8, -869
                  add          s1, t5, s11
                  auipc        ra, 27475
                  slti         s2, s0, -513
                  srai         s3, s6, 19
                  lui          t2, 919051
                  srai         t0, a5, 20
                  auipc        s2, 657242
                  sll          a2, ra, s10
                  ori          a5, t5, -1497
                  sll          zero, t1, s0
                  srl          a2, s4, sp
                  or           s9, t4, t0
                  srli         a2, t2, 12
                  slt          s2, a1, t4
                  slt          sp, s4, s2
                  sll          s10, zero, a7
                  nop
                  srai         s10, s5, 28
                  or           t0, t5, s4
                  add          a5, s1, s6
                  and          s3, t5, t0
                  srli         a4, t6, 12
                  sra          sp, s11, a7
                  xor          a3, a2, s6
                  srl          sp, s2, gp
                  sll          s11, ra, tp
                  slti         ra, gp, -988
                  ori          s8, t2, -463
                  lui          t1, 386752
                  srl          a5, t6, a2
                  srai         a3, a5, 23
                  sub          a1, s0, s9
                  sll          a0, gp, ra
                  andi         sp, a2, 1679
                  add          t4, zero, a4
                  auipc        s3, 806500
                  xori         s11, t6, 864
                  srli         s10, s6, 8
                  slt          s4, s0, t3
                  andi         s1, s8, 1698
                  slli         s7, s7, 18
                  or           t1, s7, s3
                  lui          s8, 828066
                  slli         s11, zero, 1
                  nop
                  slli         a6, t3, 12
                  sub          t5, zero, s9
                  sltiu        t3, t6, -272
                  addi         t6, a2, 1216
                  xor          s3, a2, s11
                  nop
                  xori         t6, a7, 1612
                  xor          a3, tp, s11
                  sll          s11, s11, s10
                  sll          a0, t1, a4
                  auipc        zero, 232959
                  auipc        a0, 432351
                  sltu         t4, t3, a2
                  addi         sp, a1, -894
                  sltu         s9, a7, ra
                  xor          zero, gp, a4
                  sltiu        s10, t4, 1336
                  xor          s2, s4, gp
                  sltiu        t5, sp, 1730
                  slti         t0, zero, -1716
                  and          s5, t1, s1
                  xori         s2, s4, -549
                  slt          gp, a6, a4
                  xor          a1, t6, a6
                  slli         s2, a1, 27
                  sll          a2, zero, t3
                  addi         zero, s0, -230
                  and          a2, tp, a7
                  sub          s5, t4, s11
                  sltiu        a2, a0, 1347
                  slli         a1, s11, 13
                  add          t0, tp, tp
                  xor          s3, t2, t1
                  addi         s1, s11, -1784
                  ori          s7, t1, 1211
                  srai         s5, a4, 29
                  sltiu        s10, s1, 1458
                  sub          s2, s8, a4
                  slti         a3, t1, 521
                  andi         a1, a2, 181
                  sll          a0, s4, ra
                  sltu         s4, s9, s5
                  sltiu        s4, tp, -48
                  slti         t6, a3, 1548
                  add          s1, a0, t2
                  nop
                  srli         s1, s3, 21
                  xori         s3, s9, 463
                  srl          gp, a0, s3
                  add          sp, s3, t4
                  xor          s10, a7, a5
                  srai         s11, a1, 21
                  or           gp, gp, zero
                  sub          s9, s1, a4
                  xori         s5, a3, 234
                  ori          s7, s7, 1266
                  srli         t1, s5, 7
                  add          s1, a4, a2
                  add          s1, a1, s7
                  srli         a3, s3, 7
                  sra          a2, gp, t6
                  auipc        t4, 196843
                  addi         zero, s4, 186
                  xor          t1, a4, s4
                  auipc        zero, 867568
                  auipc        t1, 562918
                  srl          zero, s11, s3
                  or           a3, a5, t5
                  sltu         t5, a4, s10
                  slti         a4, s1, -1553
                  ori          a7, s8, -360
                  add          t0, s9, t5
                  slli         s9, t1, 30
                  andi         s3, t0, -255
                  slt          s2, t4, sp
                  sra          t4, a4, s10
                  ori          t2, ra, 617
                  andi         s1, ra, -1611
                  auipc        a6, 208970
                  auipc        a0, 1011100
                  slt          s9, s3, zero
                  sra          ra, s5, s6
                  sltu         t6, a2, s8
                  sub          t2, s5, s4
                  add          a5, s9, t0
                  slli         s4, a5, 9
                  or           s2, t3, ra
                  lui          s1, 295985
                  nop
                  srli         s4, a7, 19
                  srl          s2, s8, s0
                  slli         a0, t3, 23
                  xor          a5, a0, a0
                  or           a2, tp, t1
                  srai         ra, s9, 14
                  slt          a3, s1, sp
                  lui          t4, 523821
                  xor          t4, t1, a2
                  sll          s9, s7, s0
                  add          s1, s1, t3
                  nop
                  add          a1, s2, s4
                  slli         t3, a1, 21
                  xor          s10, t3, s10
                  slt          t5, gp, a1
                  and          s1, a1, ra
                  and          zero, s6, t5
                  sll          a0, a6, t6
                  sra          s9, s6, s2
                  sub          ra, gp, a1
                  srli         s1, s2, 9
                  srli         s4, a6, 7
                  srli         t0, s4, 4
                  srl          s5, s3, s7
                  or           a2, s3, s7
                  sra          a1, s9, s3
                  addi         a5, t4, -1914
                  andi         s3, s4, -963
                  srai         t1, t3, 18
                  sub          a1, s6, s4
                  sra          t1, s3, s4
                  sub          a3, s6, s6
                  or           zero, a1, s3
                  srl          s11, s7, s11
                  sltiu        s10, a6, 1084
                  ori          a1, t3, -1031
                  srai         s5, s0, 14
                  xor          sp, s9, a0
                  xori         a7, zero, 1120
                  li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           a3, 0x5c1ca5e1
                  li           s10, 0xffffffff
                  li           s8, 0x80000000
                  li           t6, 0x4d2890a1
                  li           t2, 0xffffffff
                  li           a5, 0x4f94b19c
                  li           t5, 0xbceb9d2e
                  li           s2, 0xffffffff
                  li           s5, 0x0
                  addi         a3, s5, -2030
                  add          t6, t5, s8
                  lui          t5, 597643
                  sub          t2, t2, t5
                  addi         s10, t2, -247
                  addi         a3, a3, -261
                  auipc        t6, 535334
                  sub          s8, s8, a3
                  add          s2, a3, t5
                  sub          s2, a6, s2
                  sub          a6, a6, s5
                  sub          a5, t2, s5
                  addi         a6, a5, -225
                  auipc        t6, 393514
                  add          a6, a6, a5
                  auipc        t5, 206928
                  auipc        a5, 778517
                  addi         t6, a6, -955
                  addi         s10, a5, 1035
                  lui          s2, 960345
                  lui          t2, 497142
                  nop #end riscv_int_numeric_corner_stream_10
                  and          a7, t1, sp
                  xor          s9, a1, s3
                  xori         a3, s10, -127
                  srli         a7, t2, 6
                  nop
                  ori          t3, t0, -799
                  srl          a6, a7, s9
                  nop
                  sltiu        s2, s0, -1025
                  sub          zero, a6, gp
                  add          s11, s4, t5
                  xori         t0, s6, 1369
                  sll          t3, a2, s11
                  or           a0, sp, a2
                  and          s2, t6, t0
                  srli         s1, s10, 31
                  sltiu        gp, t4, 1012
                  sll          s3, a6, a6
                  or           t1, s4, a5
                  xor          t0, s2, a5
                  add          a5, t5, a7
                  nop
                  or           sp, zero, s1
                  lui          s4, 435345
                  add          a6, t4, t6
                  srli         a4, a6, 16
                  addi         sp, sp, -828
                  xori         s11, s4, -1314
                  sltiu        s4, s0, -614
                  slti         a2, s6, -455
                  sll          t3, t2, t2
                  srai         a7, s7, 3
                  srai         zero, s4, 18
                  ori          t5, sp, 924
                  sra          t3, t1, sp
                  sra          t4, t3, a3
                  slt          sp, s4, ra
                  or           a7, s8, gp
                  add          t1, t2, a2
                  sltu         s8, a5, zero
                  slli         t0, s0, 10
                  lui          a7, 610500
                  sll          a0, s6, t1
                  srli         t5, t4, 13
                  ori          s5, s5, 110
                  lui          a6, 599975
                  auipc        gp, 204766
                  sub          a5, s11, s2
                  or           ra, a2, ra
                  or           gp, s2, t6
                  sub          ra, s7, s11
                  slti         a4, s8, 71
                  slti         sp, a6, 1911
                  sll          a1, s0, s7
                  addi         sp, a6, -531
                  slti         s10, s0, 560
                  sra          t6, t3, s5
                  slli         s5, s8, 21
                  srl          s2, a5, s0
                  or           t5, t5, s1
                  sub          s10, a2, s3
                  or           t4, t3, zero
                  xori         s8, a2, 1718
                  ori          a6, t0, -1561
                  srai         a6, t5, 9
                  auipc        a0, 956163
                  slli         zero, ra, 22
                  add          s9, a5, zero
                  or           s5, s0, s10
                  srl          s4, a5, gp
                  srai         a4, s10, 1
                  or           s11, zero, s9
                  srai         s8, s3, 9
                  nop
                  add          s8, s9, s7
                  srli         a1, a3, 6
                  and          a7, t1, t6
                  xor          s9, s0, t6
                  sub          s7, s5, t2
                  srai         a7, sp, 2
                  slti         a1, s7, 182
                  sltiu        a2, s9, -353
                  nop
                  sra          s10, sp, s2
                  lui          t4, 851431
                  and          s5, s10, s11
                  andi         t3, zero, -1790
                  srl          zero, a7, t6
                  sltu         t1, s0, tp
                  slti         a0, t2, 1643
                  addi         ra, a3, 800
                  srl          a5, s4, s11
                  slti         a2, a1, -1098
                  addi         t4, tp, 1706
                  slti         a4, s9, 1840
                  sll          ra, s10, a3
                  sll          gp, a0, s10
                  sub          a6, a0, a2
                  slti         a1, ra, 392
                  srai         t4, t1, 24
                  nop
                  srli         s10, sp, 22
                  xori         a1, s9, -1569
                  sra          s1, ra, tp
                  sltu         s10, s11, s8
                  xori         s2, s7, 1327
                  nop
                  xori         s9, ra, 320
                  andi         a6, t5, -290
                  slti         t5, a1, 1960
                  slli         s9, zero, 5
                  sll          t3, sp, a7
                  sltu         t0, s5, s2
                  xor          a2, t0, s2
                  lui          s3, 284950
                  slli         a7, a6, 4
                  slt          t3, s1, sp
                  sra          ra, s0, a2
                  sltiu        s10, s6, 164
                  sll          t3, a1, t2
                  lui          a3, 722564
                  add          sp, t4, t1
                  srl          t6, a5, a2
                  slt          a2, s9, a3
                  slli         t6, t0, 8
                  srli         a0, t4, 18
                  nop
                  lui          s1, 35129
                  xori         gp, s10, 400
                  sltiu        a5, a4, -439
                  andi         t0, t4, -688
                  or           a0, tp, s3
                  sll          t2, gp, zero
                  or           t6, s3, a2
                  auipc        s8, 624415
                  slli         gp, a5, 19
                  srli         s10, t1, 10
                  sll          s11, s0, t2
                  sra          s11, s2, s9
                  xor          a5, s3, s10
                  sltu         s9, a5, ra
                  sltiu        s2, s7, 281
                  nop
                  nop
                  slli         t0, a6, 20
                  srli         sp, s5, 8
                  sltiu        a5, t0, 462
                  slli         gp, s7, 2
                  sltiu        s1, s10, -2042
                  add          s4, t6, zero
                  slt          s11, gp, s11
                  andi         a0, s1, -181
                  or           t4, s4, a4
                  lui          t6, 1027296
                  sra          t1, s0, s0
                  xor          a6, s4, zero
                  slli         s7, gp, 26
                  srli         s11, t0, 22
                  and          t2, gp, s5
                  and          t6, t3, s0
                  slti         s9, s11, -156
                  nop
                  andi         s1, s5, -1711
                  and          s10, a6, a3
                  addi         t6, a5, 1383
                  auipc        s10, 620663
                  and          s5, zero, zero
                  nop
                  xor          a1, s10, tp
                  and          ra, a3, s10
                  slti         ra, s10, 1600
                  sll          t1, a1, s0
                  xor          ra, zero, s7
                  ori          t1, s1, -31
                  auipc        t1, 432346
                  andi         t0, s11, 1396
                  srl          s5, t3, s6
                  slti         s7, a1, -1596
                  srli         a2, t4, 4
                  sub          s8, s5, a4
                  sub          a1, a3, a3
                  slti         s1, s1, 1206
                  and          s3, t0, t6
                  srai         a2, a0, 3
                  auipc        s4, 335340
                  add          a3, s11, a1
                  xor          s4, a2, a5
                  auipc        a1, 1017412
                  lui          s11, 103802
                  lui          t6, 790809
                  nop
                  ori          s3, s10, -250
                  srl          ra, a0, a2
                  sltiu        s3, s6, -547
                  sll          a7, t2, a5
                  sll          s4, tp, t5
                  slt          gp, ra, a0
                  xori         t0, s11, -1965
                  srai         s5, s10, 20
                  add          s11, t1, s11
                  lui          t6, 757717
                  slli         s5, s0, 26
                  add          s10, gp, s6
                  sra          t3, s1, t4
                  nop
                  or           t4, a6, a4
                  andi         a0, zero, 252
                  sltiu        t1, s1, -620
                  slt          t1, a4, a5
                  addi         s1, a6, -1465
                  sll          t3, a7, s8
                  add          a6, a3, t0
                  sra          sp, a5, s4
                  slli         a6, t0, 23
                  sub          a2, ra, s6
                  sltu         s10, s11, a2
                  addi         a4, s3, 836
                  srl          a5, t4, a6
                  xori         a1, a0, -1974
                  andi         t6, s11, 384
                  andi         zero, t6, -1134
                  lui          s9, 43673
                  sltu         s1, t0, ra
                  auipc        s1, 382927
                  andi         a6, a6, -1556
                  xori         s9, s5, 1408
                  srl          zero, s3, s9
                  add          a6, s3, s3
                  sll          a1, a1, a1
                  addi         a1, a5, 6
                  slli         t5, t5, 21
                  addi         a3, a6, -1105
                  sra          a6, s2, s5
                  slli         t5, s5, 19
                  lui          t5, 289571
                  addi         a7, a2, 1850
                  sltiu        a3, s1, -1873
                  nop
                  xori         a5, t1, -970
                  auipc        a7, 423691
                  srli         s9, a7, 9
                  sub          t6, t5, a2
                  xor          s1, t3, s4
                  slli         s3, zero, 19
                  slt          a0, s9, t0
                  or           zero, t2, t5
                  or           a2, s8, a1
                  or           a0, a3, t1
                  sltiu        s11, a2, 963
                  sra          t4, a0, a6
                  andi         a1, s7, -499
                  slt          s9, t5, s2
                  auipc        ra, 85353
                  srai         t1, s11, 3
                  or           sp, s4, a0
                  sub          s9, t5, a6
                  and          t3, s10, t4
                  sll          t4, s0, a2
                  addi         t5, s4, 1403
                  xor          sp, a0, t0
                  slt          s1, zero, s0
                  slt          s1, a3, t0
                  andi         a3, a1, -900
                  slti         a3, s0, 349
                  sll          t0, a2, s8
                  andi         t6, t5, 1411
                  add          s11, a6, ra
                  nop
                  ori          t5, s6, 81
                  srl          s8, zero, s1
                  xori         a4, s5, 1120
                  sltiu        s9, tp, -1965
                  andi         s1, a5, -259
                  slli         s5, a7, 20
                  nop
                  srl          s9, ra, ra
                  slt          t3, zero, sp
                  addi         s4, ra, -2006
                  and          s1, sp, sp
                  ori          s8, s4, 446
                  slti         a7, t2, 1653
                  ori          sp, t3, -765
                  addi         s7, a1, -585
                  sra          a2, t1, s10
                  xori         a6, t4, -1004
                  andi         s1, t1, 697
                  or           sp, s8, s11
                  xor          s8, sp, gp
                  addi         t4, s8, 334
                  srli         zero, t0, 15
                  auipc        t6, 577823
                  sub          a4, s11, a5
                  and          t4, s11, sp
                  addi         t0, s4, 65
                  xori         zero, sp, 983
                  lui          a5, 253466
                  sltiu        zero, sp, -1727
                  or           a3, s7, a0
                  sub          a6, s5, a5
                  addi         t6, t5, 115
                  add          a4, t2, tp
                  and          s7, s8, a0
                  auipc        sp, 322167
                  srai         s2, a4, 4
                  addi         a3, s1, -982
                  lui          s3, 675139
                  sltiu        a5, a7, -649
                  sltu         a0, t0, t6
                  add          t5, t1, t0
                  xor          sp, t6, a5
                  auipc        a4, 883062
                  srl          t2, sp, s4
                  srl          a3, zero, gp
                  and          s10, a5, s0
                  ori          s3, s10, 706
                  xori         a6, s1, 1410
                  sub          a3, s11, a4
                  sll          s9, s11, s5
                  lui          sp, 418313
                  nop
                  addi         t6, s5, 1473
                  xor          s1, a6, s8
                  auipc        zero, 67726
                  or           s9, t3, t4
                  lui          s7, 190726
                  sub          a0, s6, a5
                  xori         s8, tp, -599
                  sub          sp, a0, a5
                  add          a6, a6, a4
                  nop
                  slt          s5, tp, s2
                  andi         t5, t3, 54
                  nop
                  sltiu        a3, s3, 959
                  sltu         s3, s3, a6
                  xor          t1, s0, s3
                  sltu         s4, s9, t5
                  add          sp, t1, s2
                  srli         s10, a4, 23
                  or           ra, ra, zero
                  slli         s4, a4, 19
                  slt          s9, sp, s9
                  sra          sp, t4, sp
                  slti         s4, a3, 840
                  nop
                  sltiu        t0, s8, -289
                  addi         a0, s8, 736
                  sub          s9, sp, t4
                  auipc        s3, 274883
                  add          s7, s1, s2
                  andi         s7, a6, 1660
                  lui          t5, 1029559
                  xori         t3, t3, -77
                  slli         s1, gp, 11
                  addi         t4, s9, 1721
                  addi         s2, s8, -1981
                  xor          zero, a6, t5
                  andi         s11, t6, 22
                  or           t3, t0, s1
                  srl          a2, s7, t1
                  sub          t3, t1, s5
                  sltu         s5, a4, s6
                  sll          s3, s5, s4
                  sltu         s2, a5, s2
                  auipc        t0, 297872
                  srli         s11, t4, 31
                  andi         a6, s8, 311
                  auipc        s11, 182367
                  addi         t2, t4, -1983
                  andi         a2, zero, 1881
                  andi         a6, t4, 1921
                  andi         s11, s1, -1836
                  ori          a5, s7, 410
                  sub          a0, s5, tp
                  sll          t4, ra, a2
                  sub          zero, t4, t0
                  nop
                  srli         s4, sp, 17
                  lui          a0, 226162
                  slti         a4, a1, 596
                  andi         t5, sp, -312
                  slti         s1, a1, 973
                  xori         a6, a0, 1401
                  slti         sp, s11, -1599
                  slti         t6, a4, -609
                  xor          s5, s10, a1
                  sltiu        s8, a7, -671
                  auipc        t0, 261418
                  and          s8, s10, s11
                  auipc        s8, 109841
                  andi         s5, zero, -1152
                  slti         s5, zero, 967
                  sltu         s11, s3, a6
                  srai         s11, t3, 18
                  and          gp, s8, s4
                  sll          s10, a4, a1
                  add          ra, a4, a1
                  nop
                  ori          gp, a5, 1615
                  xori         t0, s5, 331
                  auipc        s9, 87288
                  auipc        ra, 267885
                  srl          a7, t3, ra
                  srai         a6, s11, 9
                  sll          s11, gp, s11
                  srai         a6, sp, 21
                  andi         s8, s4, -1662
                  sltiu        s10, s10, 1884
                  sra          a3, a6, s9
                  ori          t4, a5, 1282
                  nop
                  addi         ra, gp, -1226
                  srai         t3, a1, 1
                  and          t3, t2, t5
                  xori         zero, t2, -2026
                  nop
                  srl          s9, t3, t1
                  slt          a2, s0, t5
                  sltiu        s1, s9, 679
                  slli         a4, t2, 24
                  srli         t5, s0, 28
                  nop
                  or           a0, s3, a6
                  auipc        a5, 897008
                  xori         s5, s1, 1944
                  sltiu        t6, s9, -281
                  andi         t2, ra, 653
                  andi         sp, s7, 1473
                  ori          t6, a5, 1709
                  slli         gp, t5, 25
                  srl          gp, t4, s7
                  and          a1, t4, a5
                  and          s9, t1, gp
                  xori         s4, t6, 1374
                  sll          t2, gp, s6
                  nop
                  srai         t1, a6, 16
                  sra          s8, s0, t0
                  srai         a3, t0, 2
                  sra          s5, s0, t3
                  sub          gp, t5, zero
                  lui          ra, 166546
                  srai         s8, zero, 14
                  auipc        t3, 674570
                  or           t6, a6, zero
                  ori          a3, s3, -1865
                  and          s5, a1, a6
                  srli         ra, t1, 22
                  srai         t5, s1, 16
                  nop
                  slti         s2, t3, 1386
                  andi         a0, s8, 1056
                  ori          a5, zero, -1792
                  sub          t6, a1, a1
                  addi         s2, a1, -1134
                  slti         a3, s3, -577
                  and          t5, sp, t0
                  add          s7, t4, zero
                  xori         a7, t5, 1955
                  xori         s9, gp, -864
                  slti         t1, t2, -769
                  and          a3, t3, s4
                  nop
                  sra          a6, s11, s2
                  srli         s10, s8, 22
                  sltiu        zero, a7, 1580
                  ori          gp, a3, 515
                  auipc        a7, 5652
                  srai         t4, s9, 13
                  andi         s4, a7, -972
                  or           s4, s8, ra
                  srli         gp, tp, 24
                  sub          s7, t0, s9
                  xori         s3, a6, 1161
                  xor          s8, t2, t3
                  sub          a0, s3, a1
                  sub          s10, s2, s8
                  and          a0, a7, s11
                  sltiu        s2, ra, 1155
                  slli         a2, tp, 18
                  addi         a6, t6, 1873
                  srl          s11, s0, t0
                  or           a5, zero, s2
                  sltu         a5, a5, t2
                  sub          s3, s3, s0
                  andi         a3, gp, -557
                  sltiu        a6, s5, 1844
                  ori          a2, ra, -1226
                  and          t0, s1, s10
                  sltiu        s8, s5, 1361
                  lui          sp, 367754
                  lui          t1, 171506
                  srli         s11, s2, 10
                  srai         a4, a1, 27
                  sltu         a1, ra, a6
                  sra          zero, a4, zero
                  slli         s4, s6, 17
                  addi         s11, s0, -2022
                  sltiu        s9, s6, -263
                  xori         a4, s10, -499
                  xor          ra, s10, a3
                  slt          s4, t6, s2
                  sll          a2, a5, t0
                  nop
                  or           s11, a4, s10
                  or           a0, tp, s2
                  xor          sp, s10, s5
                  xor          a3, s0, s11
                  addi         a4, t6, -1805
                  or           a3, a7, sp
                  add          a6, a5, s4
                  slti         s7, s1, -1790
                  sltu         a5, ra, a2
                  slti         a6, zero, 1839
                  andi         t4, s3, 1254
                  sra          a6, s1, t4
                  sltiu        a3, a6, -543
                  and          a3, t6, tp
                  srai         t6, t5, 18
                  addi         s2, sp, -1461
                  xori         t2, a4, 1708
                  sra          s4, a3, gp
                  sltu         t1, t6, s0
                  xor          a6, s3, s1
                  sltu         s1, s5, a2
                  nop
                  srli         s9, ra, 5
                  sltiu        s2, t4, 602
                  addi         s2, zero, 382
                  nop
                  sra          s1, a1, s8
                  xor          ra, a7, s10
                  sltu         gp, a7, t1
                  addi         zero, t6, -803
                  srli         t0, s2, 0
                  and          s3, ra, s0
                  slli         a5, t0, 11
                  slt          s7, s10, ra
                  xor          s11, a5, a2
                  addi         sp, gp, -299
                  srl          s2, a3, s7
                  add          a7, a2, t2
                  slti         a5, s4, 1745
                  add          s9, t3, s0
                  sub          ra, t0, zero
                  xor          t4, a0, t2
                  sltu         a7, t6, a5
                  sra          gp, t1, s8
                  xor          a0, s9, s6
                  sll          gp, t0, s3
                  lui          a7, 981815
                  lui          t0, 800172
                  sra          a1, a5, t2
                  sub          s10, t4, gp
                  srli         s7, t1, 8
                  and          s1, t0, t6
                  xor          gp, a7, sp
                  xor          a7, s11, t1
                  srai         a3, s2, 17
                  auipc        t1, 368082
                  lui          t1, 389332
                  or           zero, s0, a4
                  ori          t1, t1, 659
                  xori         s4, t5, -1761
                  sra          s9, s2, a4
                  auipc        t2, 323014
                  nop
                  or           s3, s11, t0
                  auipc        s9, 1037238
                  nop
                  srl          sp, t4, s5
                  or           zero, s5, t0
                  andi         a7, sp, 1545
                  srl          a3, s0, tp
                  sltu         t2, s6, sp
                  sra          a6, t3, t6
                  nop
                  srli         gp, s0, 16
                  lui          a7, 372779
                  auipc        s10, 233885
                  xori         t0, t1, 1192
                  or           gp, a3, t3
                  sltu         a0, a5, ra
                  add          s5, t1, s3
                  auipc        s9, 193510
                  andi         t4, t4, 1334
                  srl          t0, zero, a4
                  xori         s7, t5, -178
                  slli         s4, s2, 5
                  slli         t4, gp, 24
                  srli         t5, a3, 8
                  srli         t0, t2, 18
                  and          a0, s9, s4
                  xori         s1, a1, -771
                  and          s3, a4, t6
                  sltu         t0, a0, a6
                  sltiu        a1, t5, -896
                  lui          s10, 678605
                  xori         s9, s4, 1558
                  sltiu        a4, tp, -461
                  or           a2, zero, a4
                  slti         s11, s8, -426
                  or           s3, t3, a5
                  sub          a5, tp, a1
                  sra          s2, t0, a0
                  auipc        t5, 804759
                  sra          sp, a5, s0
                  xori         t3, s4, 1877
                  or           s8, a3, s3
                  sub          a7, s2, t6
                  srli         sp, s5, 15
                  xori         s2, gp, 327
                  addi         s2, a4, -1990
                  srli         s3, a1, 2
                  sltu         t6, t1, s0
                  addi         s5, t6, 314
                  add          a0, a6, t1
                  sub          s8, a3, a3
                  slli         s9, a0, 8
                  slt          t0, a4, a3
                  srai         t6, a3, 23
                  sub          s5, s1, sp
                  slli         s1, s7, 18
                  sub          t0, a6, a1
                  andi         gp, tp, 493
                  sltu         s3, s7, sp
                  xori         s8, s5, -1042
                  srai         t1, s1, 1
                  lui          s5, 420437
                  sltu         ra, s5, s9
                  add          a3, s2, a6
                  srli         s3, t3, 24
                  lui          t6, 952414
                  sll          s3, s9, a1
                  xor          a5, a3, s3
                  sltiu        t3, s5, -791
                  addi         t3, s6, 36
                  add          ra, sp, s2
                  or           t5, s6, a2
                  srl          gp, s4, zero
                  lui          s3, 354881
                  slti         s4, s8, 1181
                  srli         t1, a5, 28
                  lui          sp, 696624
                  nop
                  addi         t2, sp, -802
                  or           a3, a0, a0
                  xor          a0, s3, t3
                  xor          a3, t2, s2
                  sltiu        s11, zero, 378
                  and          s5, s6, s8
                  lui          t5, 159011
                  addi         a5, s3, -708
                  slli         a6, t6, 18
                  xor          s8, a4, a1
                  sltu         gp, a4, s9
                  sltiu        zero, a6, -525
                  lui          s7, 949175
                  ori          t2, a2, -771
                  slti         s2, s8, 154
                  andi         s4, gp, 456
                  andi         t6, gp, 1891
                  sra          sp, s8, s2
                  sra          t5, a2, s8
                  slt          s2, t6, gp
                  andi         s7, t3, -1525
                  sltiu        sp, t4, -1157
                  lui          ra, 915043
                  sltiu        t0, a1, -1942
                  srli         a2, t0, 15
                  srli         ra, s9, 8
                  srai         t5, t3, 8
                  add          t4, s3, ra
                  srli         a1, a7, 1
                  sll          a3, s10, a7
                  srl          a0, ra, a4
                  sltu         a2, t2, t4
                  and          t2, s5, a5
                  srli         a3, ra, 25
                  sll          s5, t2, s3
                  ori          t2, s6, 1560
                  sra          a1, s2, s7
                  lui          a7, 598587
                  lui          s3, 269882
                  sub          t4, s11, s6
                  andi         s11, gp, -1371
                  and          a6, s6, t2
                  slli         s11, s8, 15
                  slt          s11, a1, t1
                  lui          s3, 987141
                  sltu         a5, sp, t4
                  auipc        t2, 747222
                  sltu         s8, t6, t5
                  xori         s7, t3, 415
                  sltu         a6, zero, s11
                  ori          s8, s9, -254
                  and          a6, gp, s5
                  or           s7, s3, a0
                  slli         a5, a6, 14
                  slli         sp, sp, 29
                  srai         s3, s2, 0
                  lui          sp, 665432
                  sltiu        t3, a1, 1070
                  sra          t5, t1, a1
                  nop
                  add          t4, zero, zero
                  slt          a0, a2, t2
                  sub          t2, s5, s2
                  sll          t3, a2, s9
                  nop
                  xori         s8, a2, 173
                  and          t3, t0, a0
                  or           a3, gp, s7
                  lui          a4, 61041
                  andi         s5, a7, -1939
                  nop
                  sra          t0, a6, s9
                  sra          zero, tp, s6
                  addi         t3, a5, 1783
                  sub          s2, a4, t1
                  addi         a6, t4, 455
                  srl          s4, a4, s6
                  addi         a5, t3, 107
                  sltu         s2, t5, sp
                  auipc        a3, 575494
                  srl          t5, t6, sp
                  srai         a6, s5, 30
                  slli         t1, tp, 23
                  srl          s8, sp, s7
                  auipc        a5, 165050
                  sltu         s9, a1, s10
                  lui          s9, 573867
                  sll          s8, t6, s6
                  sra          a3, tp, a7
                  or           a7, a0, s4
                  xori         s11, s1, -417
                  add          s3, a6, a4
                  xori         s11, s5, -772
                  and          t0, a5, a0
                  andi         s4, a3, -1854
                  lui          t6, 240453
                  nop
                  xori         s8, a0, -565
                  xori         s8, s10, 1435
                  auipc        s1, 672347
                  xor          a2, a2, a5
                  sll          t2, a6, s10
                  and          a4, a1, s10
                  and          gp, s0, gp
                  slti         s7, tp, -1627
                  xori         t4, gp, -1474
                  lui          s9, 417188
                  sltiu        a1, tp, 481
                  sltiu        ra, zero, -1730
                  nop
                  slti         a2, a7, 144
                  lui          t6, 465124
                  sltiu        s11, s10, 1491
                  add          zero, s10, a3
                  ori          s10, a4, 208
                  or           t5, a3, s5
                  or           a5, t5, s6
                  slti         s8, gp, -1471
                  xori         a0, t3, -945
                  srai         gp, t6, 13
                  nop
                  add          a6, s11, s4
                  slti         a3, t6, -930
                  and          t4, a2, s10
                  slti         a4, t3, -918
                  sltu         t5, s9, a3
                  nop
                  srli         s11, t2, 10
                  sltiu        a0, s8, -1006
                  sub          s9, ra, s1
                  ori          t4, a4, -1898
                  sltu         s11, t2, s3
                  slli         a0, a2, 4
                  add          s5, t0, t4
                  sltu         a0, sp, zero
                  xor          ra, s11, s9
                  xori         a3, sp, -9
                  srl          a0, s3, t2
                  andi         ra, s5, -642
                  xor          t0, a3, a2
                  sub          s10, s1, s11
                  ori          s11, a5, -5
                  srai         a2, ra, 1
                  or           s7, s7, s4
                  srli         t0, s9, 25
                  slt          s7, t4, t6
                  sll          a5, t4, s9
                  nop
                  and          zero, s3, s10
                  xori         t4, s0, 467
                  srl          t5, t6, s9
                  xori         t4, s2, -1253
                  sll          t5, a2, s1
                  srl          a7, t3, s1
                  srl          a6, a6, s0
                  add          t6, sp, a7
                  xor          s11, gp, s10
                  and          s10, t1, t3
                  auipc        ra, 764448
                  ori          s9, a1, 1457
                  sra          s11, t3, t5
                  srli         a0, s10, 6
                  slt          a3, t2, a6
                  lui          a5, 496363
                  slli         a1, s7, 6
                  slli         a3, s2, 22
                  slti         s9, tp, -712
                  xori         t6, a4, 749
                  ori          t3, a6, 73
                  andi         a4, t3, -1692
                  or           a4, t0, a1
                  slti         s8, t6, -307
                  xori         a6, s7, -479
                  lui          t1, 214528
                  xori         zero, s0, 184
                  sra          t6, a3, s0
                  sll          a6, ra, s3
                  xori         s11, t3, 1503
                  slli         a1, s5, 11
                  sra          s2, ra, a3
                  srai         a1, a0, 13
                  sub          a1, zero, s0
                  and          a6, s3, ra
                  slli         s9, a0, 2
                  lui          sp, 471983
                  and          a4, a5, a5
                  sltiu        t6, a6, -1287
                  sltiu        t2, s1, -27
                  addi         zero, a5, 48
                  nop
                  sub          s2, sp, t0
                  lui          s10, 176151
                  nop
                  addi         t1, t6, 192
                  and          s2, t0, a7
                  and          s9, s0, a4
                  lui          a0, 303176
                  srl          s3, s3, s6
                  addi         a4, s7, -1835
                  srai         ra, s8, 29
                  sll          a1, s0, s2
                  lui          t0, 267838
                  srl          a6, a6, zero
                  sub          s10, t3, s7
                  sltiu        s5, ra, 733
                  slt          a4, s3, t1
                  ori          t3, t6, 76
                  addi         zero, a6, 1737
                  srli         s3, t1, 14
                  xori         s1, ra, 273
                  sltu         gp, a3, a1
                  andi         a4, a1, 1405
                  xori         gp, s10, 78
                  ori          a0, a4, 603
                  srli         a0, t5, 9
                  and          s1, tp, s5
                  and          t3, s11, s4
                  auipc        s1, 558785
                  addi         ra, zero, 1105
                  sltiu        ra, a1, -1519
                  andi         t1, s3, -297
                  srli         a0, t1, 26
                  or           a2, s11, s10
                  auipc        s5, 294674
                  sub          a2, sp, a7
                  slt          a1, s2, a1
                  xor          t6, a6, sp
                  auipc        s5, 708054
                  addi         zero, tp, -631
                  sll          t5, t1, t1
                  slt          s4, gp, sp
                  ori          t4, a6, 1376
                  slli         s1, s7, 0
                  ori          t3, s8, -906
                  srl          a6, t0, s2
                  srl          s5, gp, s11
                  slli         t3, s2, 4
                  sltu         ra, s9, s10
                  sll          s8, ra, s9
                  and          sp, a1, a5
                  sltiu        t2, s5, 627
                  ori          a1, t1, 934
                  xor          zero, t6, s8
                  xori         a5, s11, -988
                  xor          a2, s2, a3
                  ori          t4, tp, 1686
                  or           zero, tp, t3
                  sltu         s11, t2, tp
                  lui          a6, 1042318
                  sltiu        a3, s5, 1922
                  and          t5, s6, t5
                  slli         a6, tp, 11
                  srai         s5, a2, 2
                  slli         s10, s9, 19
                  or           t4, t2, s1
                  nop
                  andi         a6, a2, 183
                  andi         s5, gp, -91
                  add          a4, zero, s7
                  xori         s8, t5, 278
                  nop
                  srli         s9, s6, 13
                  xori         a3, a0, 1977
                  slli         t5, sp, 2
                  nop
                  sltu         s9, a1, s7
                  sltu         s9, t2, s8
                  xori         a2, gp, -1644
                  srli         s7, s1, 0
                  andi         a0, a4, 1014
                  xori         a4, sp, -1356
                  sra          ra, s7, a3
                  slti         s10, t2, 488
                  or           a6, a6, sp
                  sub          a6, s8, a3
                  slti         s4, a7, -1805
                  slti         a7, s6, 123
                  add          s5, a3, s11
                  andi         s1, s11, -1027
                  sub          t4, t0, s10
                  xori         a2, s7, -560
                  auipc        a5, 582356
                  slli         sp, s7, 6
                  and          s9, a1, a4
                  addi         s3, zero, 562
                  andi         a4, s8, 1678
                  addi         a1, a6, -1701
                  lui          a2, 395597
                  slli         a2, a4, 13
                  sltu         a1, s3, ra
                  or           t2, a2, a0
                  slti         s9, ra, -8
                  sltiu        sp, t4, -499
                  add          a4, s9, s3
                  srai         gp, a5, 1
                  nop
                  sll          ra, s7, tp
                  srli         s4, s1, 31
                  slt          ra, a6, s0
                  and          s9, s5, s2
                  sltiu        sp, a3, 2026
                  xor          a1, ra, s0
                  sub          s5, tp, s8
                  srl          s5, t1, t1
                  andi         t1, t6, -1400
                  and          zero, a0, a2
                  slti         t3, s8, -1705
                  slli         t3, a7, 22
                  slli         a1, s9, 2
                  sub          t2, zero, a6
                  sub          a2, ra, zero
                  auipc        sp, 61253
                  xor          s8, s11, s5
                  xori         t2, s8, -1916
                  srli         a6, s4, 10
                  or           t2, s8, a0
                  slti         s4, s5, -491
                  srli         s3, s2, 3
                  or           a2, t4, t0
                  sltu         a4, t4, a7
                  slt          s10, s7, s0
                  xor          s10, t0, t5
                  ori          t1, sp, 1844
                  or           t2, t2, t4
                  add          s10, s8, zero
                  and          zero, s8, a4
                  lui          a5, 237069
                  xor          s7, a7, s10
                  sll          a6, s4, a3
                  or           s5, ra, t6
                  auipc        a3, 487373
                  and          s5, gp, t3
                  lui          t0, 193481
                  slli         a3, s10, 10
                  sra          a5, t3, s11
                  addi         a4, s2, 1347
                  sltu         zero, zero, s6
                  sltu         a4, ra, t5
                  sub          t4, a0, s1
                  srai         s4, a4, 2
                  addi         s8, t2, -1761
                  sub          ra, a0, ra
                  addi         ra, a1, 274
                  srl          t2, gp, t6
                  andi         s2, a5, 405
                  xor          a0, a2, s6
                  srl          a3, a3, s10
                  sltiu        a0, t3, -538
                  srli         s3, ra, 12
                  andi         zero, a0, -215
                  srli         a0, a2, 23
                  or           t6, s3, t0
                  slt          t0, zero, ra
                  slti         sp, sp, 1783
                  xor          a2, s2, a0
                  nop
                  xor          a0, zero, a7
                  srl          zero, s1, t3
                  sub          a4, s10, s1
                  xor          zero, s5, s11
                  lui          zero, 692670
                  xori         t6, zero, 1307
                  xor          s2, s7, t4
                  addi         t3, a2, 227
                  xor          t6, s11, s3
                  auipc        zero, 940982
                  xor          s9, t4, zero
                  sll          s11, t2, s0
                  and          ra, a2, s9
                  xori         t0, s1, -717
                  sltu         gp, s11, tp
                  lui          zero, 593608
                  sub          t3, s5, s7
                  srli         s11, s0, 13
                  slti         sp, sp, 0
                  or           t0, s0, s5
                  slli         s2, zero, 31
                  srli         a0, s2, 16
                  lui          s2, 208645
                  addi         a6, s9, 68
                  or           t1, a5, s10
                  addi         a1, s7, 1064
                  xor          t0, t4, a4
                  slt          s4, ra, a6
                  xori         s11, tp, 1962
                  lui          a7, 282922
                  xor          t5, sp, s10
                  srl          s4, s6, s4
                  sll          t6, a6, a1
                  sub          t4, t2, a7
                  and          a6, s2, a0
                  sll          s2, s2, s0
                  auipc        s11, 364847
                  lui          t5, 196740
                  xori         t2, t1, -299
                  nop
                  xor          s11, a5, a1
                  lui          s8, 563361
                  xori         t3, a4, 261
                  slli         t5, t3, 6
                  andi         s5, s11, 382
                  and          sp, t2, a6
                  slli         s11, t2, 5
                  xor          a2, a5, s7
                  andi         t2, s3, 374
                  slli         a7, t2, 24
                  sltu         ra, t2, a3
                  ori          t2, s4, -2035
                  auipc        a5, 548930
                  auipc        s1, 850283
                  sltiu        s9, t2, 1421
                  and          t3, s2, s7
                  ori          a1, s3, -1675
                  nop
                  srai         a0, a4, 2
                  sra          a5, t6, t2
                  srli         s9, a4, 31
                  andi         t0, s4, 19
                  sra          a7, s7, s2
                  auipc        a1, 470909
                  ori          a1, t2, -1120
                  sll          a0, t2, t3
                  sub          s2, t5, a6
                  add          s4, t3, a0
                  slti         sp, s3, 1733
                  lui          t1, 250310
                  ori          s2, sp, 1435
                  or           s2, s10, s2
                  srai         s8, t3, 28
                  auipc        s9, 721125
                  sll          a3, a2, tp
                  sltu         t4, s9, zero
                  xor          s5, s8, a6
                  nop
                  srai         s11, s1, 19
                  or           s11, t4, a5
                  addi         a2, s1, 1559
                  andi         a1, s0, -1014
                  sra          t2, t0, s0
                  addi         a7, s10, 1785
                  andi         a2, t6, 447
                  slli         s9, t5, 3
                  sltiu        s9, a6, 559
                  sll          s4, a2, a7
                  or           sp, s5, t5
                  xor          sp, t3, t4
                  ori          a6, sp, 5
                  lui          t4, 393311
                  xor          a4, t5, t5
                  slti         s11, s5, -1220
                  srai         s10, zero, 3
                  sltiu        t3, a7, 1128
                  lui          t2, 1005056
                  sub          a7, t4, s0
                  add          s9, a2, gp
                  xor          gp, s3, s10
                  nop
                  auipc        s9, 701583
                  lui          a1, 903595
                  nop
                  sub          a6, gp, t0
                  add          t0, zero, a7
                  slli         a0, s10, 19
                  sub          s11, s1, t1
                  slt          t3, tp, t5
                  nop
                  sra          a6, t6, s11
                  and          a4, a0, s8
                  sll          a4, t5, s10
                  ori          t1, a5, 874
                  srli         a6, gp, 0
                  sll          a2, t3, sp
                  andi         t2, s8, -1188
                  auipc        a7, 774803
                  srli         t1, t2, 17
                  andi         ra, t4, 1931
                  sra          s5, a3, t4
                  xori         s5, a4, 1545
                  sll          s5, sp, s5
                  slt          t2, ra, tp
                  sub          s4, a6, s3
                  nop
                  srl          a3, t1, s3
                  sltiu        s5, a1, 41
                  srl          gp, s10, a1
                  and          s5, ra, a2
                  slt          t0, a5, s8
                  srli         s10, s3, 3
                  sltiu        s7, t0, -616
                  and          t3, gp, sp
                  sltu         gp, s8, t4
                  xor          t5, a5, s4
                  xori         a2, a4, -1277
                  and          s2, t6, s7
                  ori          s9, a5, -366
                  sll          a2, a4, s3
                  sll          t4, a3, s6
                  slli         t0, t1, 26
                  sub          a2, t6, t1
                  srai         t2, s2, 4
                  srl          a3, a6, t6
                  lui          t2, 486947
                  andi         t2, ra, 493
                  sra          t1, zero, sp
                  and          a4, t0, gp
                  srai         t0, a2, 13
                  srai         t0, s11, 8
                  lui          a3, 919524
                  srl          s4, s3, s3
                  and          t6, s2, tp
                  xori         a7, t3, -2002
                  slli         t1, t5, 25
                  srl          s9, a4, s3
                  add          a7, a3, a7
                  srli         t4, s7, 13
                  andi         s11, tp, -732
                  and          t1, t0, t3
                  andi         a3, s5, 65
                  slti         s8, a2, -54
                  or           a0, t1, a4
                  lui          a2, 684091
                  auipc        a5, 73727
                  srli         t4, s11, 15
                  srli         sp, a6, 15
                  sltiu        t2, s9, 1954
                  andi         s1, a3, 2017
                  sll          s8, t0, s7
                  ori          s1, s6, 1113
                  addi         t3, t1, -1935
                  add          a7, s0, a1
                  sub          t2, s11, gp
                  add          t2, a5, t5
                  sub          s4, s8, t2
                  or           gp, a6, s4
                  sll          t6, s4, a5
                  and          t4, s0, s0
                  nop
                  slt          s9, t2, a7
                  nop
                  srli         s11, s9, 6
                  sll          s10, sp, s11
                  sltiu        t0, a2, 1776
                  nop
                  lui          a3, 199649
                  or           a7, s11, t6
                  srai         a2, s6, 31
                  slti         s8, s2, 959
                  srl          t6, t3, s11
                  slt          a0, t1, s9
                  slli         s3, t0, 9
                  slt          a5, t0, t0
                  sra          a7, a2, a0
                  sub          a0, t3, s2
                  sra          t0, s0, s5
                  sltu         a5, t6, t2
                  or           gp, t0, a6
                  xori         a2, s6, 1409
                  srl          t3, a7, s4
                  and          ra, t0, a4
                  srli         zero, s1, 31
                  auipc        ra, 808119
                  srl          a2, gp, zero
                  slti         ra, a5, -1618
                  slti         a2, t1, -2042
                  sub          s8, t3, s11
                  sll          s7, s6, s9
                  andi         t1, s5, 1001
                  nop
                  or           s7, a7, s5
                  add          s4, a6, a7
                  andi         s8, t4, 1618
                  andi         s1, s0, 789
                  addi         a6, gp, -1183
                  sub          a3, s6, s5
                  srl          a5, a3, a7
                  slti         a2, s8, 906
                  srl          a6, t4, t6
                  sub          s1, a4, s11
                  lui          zero, 170803
                  xor          a3, a1, a6
                  slti         t6, t1, 715
                  slt          a7, a6, s11
                  addi         s9, t0, 1315
                  srl          s9, zero, a0
                  ori          gp, s7, 1703
                  srl          t3, s1, a7
                  sltu         t2, zero, s9
                  xori         a7, a5, 1321
                  nop
                  sltu         s10, s0, s6
                  ori          t6, a4, -1492
                  add          t3, t4, a2
                  srli         t2, gp, 13
                  slt          s9, ra, t4
                  xor          a1, s11, t5
                  srai         a5, t6, 9
                  slt          a4, s0, s6
                  add          s2, sp, t6
                  auipc        a3, 43948
                  add          a3, s6, t4
                  xori         a3, tp, 1203
                  auipc        s9, 638247
                  sltu         a7, s3, s9
                  sra          s2, a2, s10
                  lui          a1, 262192
                  sll          s4, tp, sp
                  sll          a0, s2, a6
                  srl          s10, s6, t0
                  xor          s5, t0, gp
                  add          s7, s11, a6
                  sltiu        t1, sp, -126
                  slt          gp, a0, a3
                  andi         s7, a6, 1753
                  add          t0, t2, a3
                  sub          s10, t2, a1
                  ori          a4, gp, 1510
                  slli         s5, t2, 20
                  sltiu        s1, a0, -132
                  slt          zero, s9, a1
                  slti         s9, t4, 1632
                  ori          sp, a1, -129
                  xori         a3, t2, -404
                  srai         s11, gp, 4
                  srli         s1, s0, 28
                  slli         a6, t1, 13
                  auipc        a2, 762467
                  xor          a0, t2, gp
                  slt          t1, t1, sp
                  slti         s7, sp, 686
                  or           zero, a2, t5
                  slti         zero, t0, -1248
                  srli         a1, s2, 6
                  sltu         a1, s5, s3
                  sub          a5, s5, s11
                  add          s9, a0, a4
                  lui          s11, 907901
                  slli         s1, t0, 24
                  xori         a7, s1, -1389
                  or           ra, s5, t3
                  auipc        t0, 615461
                  srli         s7, sp, 14
                  srai         s3, a1, 27
                  xori         t6, s11, 767
                  addi         a1, a7, 413
                  slt          t3, gp, a7
                  nop
                  sra          s9, t1, s2
                  xor          s3, tp, a1
                  srai         s5, s11, 7
                  xori         t4, s10, 833
                  nop
                  lui          ra, 517381
                  sltiu        s4, s11, -1993
                  addi         a1, s3, -1588
                  srai         a0, s5, 22
                  nop
                  and          t4, a1, a7
                  xori         s4, s11, -292
                  sub          a4, a4, s4
                  srl          s7, s3, s1
                  sltiu        t0, s3, -1979
                  xor          t6, s1, s11
                  and          a6, a7, a2
                  sub          a1, a2, t0
                  or           t3, t6, a0
                  srai         s7, t3, 28
                  sra          t6, s4, t1
                  srl          ra, gp, zero
                  andi         a2, s4, -1760
                  addi         t4, s11, -1677
                  ori          s10, s1, -1780
                  ori          s4, t3, -90
                  or           t6, a3, s0
                  sltiu        gp, sp, 1735
                  and          a2, a7, zero
                  sll          a6, t4, s11
                  xori         s8, zero, 270
                  srl          s2, a7, s7
                  srl          s2, a6, t5
                  srai         a7, t2, 1
                  lui          t4, 1005864
                  sll          s1, a7, t1
                  srl          zero, t2, t0
                  slli         s3, zero, 18
                  slli         t3, a2, 13
                  or           ra, s11, s5
                  slti         a1, s3, -683
                  srli         t5, s2, 12
                  sub          s7, a6, s0
                  xori         a2, a0, 497
                  sltu         t5, a0, a6
                  sltiu        t3, a0, -1888
                  srli         a7, ra, 16
                  xori         t1, a5, -690
                  andi         s5, a1, 130
                  srl          s7, a4, t6
                  or           s9, a6, zero
                  sra          a3, t2, t1
                  nop
                  andi         s3, s3, -1830
                  slt          a4, s6, a2
                  srl          s10, t0, s8
                  ori          sp, ra, -1038
                  slti         s4, s1, -1551
                  slt          t2, tp, zero
                  addi         s5, a3, -1688
                  nop
                  sub          t5, s8, s2
                  xori         s1, a3, -369
                  sra          zero, zero, sp
                  sltiu        a0, s9, 732
                  auipc        s7, 764435
                  nop
                  slti         t3, s11, 388
                  addi         a0, t4, -739
                  slt          s7, t5, s7
                  slti         s8, a7, -894
                  or           a0, t2, sp
                  sll          s3, a1, s0
                  and          a3, t0, tp
                  xor          s2, gp, s0
                  slti         a1, s0, -391
                  srli         s1, s2, 7
                  slt          s10, s0, zero
                  sub          a0, s11, tp
                  srl          a5, t6, a6
                  sra          ra, t4, s7
                  nop
                  srai         a7, tp, 21
                  slli         t5, t0, 5
                  add          t0, zero, t2
                  lui          a7, 203057
                  lui          t0, 1008985
                  andi         t2, t2, -603
                  and          sp, s3, tp
                  ori          t4, t2, -167
                  xori         s9, t1, 117
                  srli         a7, t5, 0
                  slli         zero, s1, 1
                  slli         s5, s7, 12
                  addi         t5, a2, 963
                  sra          zero, t6, t6
                  xori         s10, s8, -991
                  slti         gp, t5, 947
                  sra          s11, gp, s6
                  andi         a1, s10, 1075
                  ori          s10, s6, -180
                  li           t6, 0x80000000 #start riscv_int_numeric_corner_stream_19
                  li           s7, 0x0
                  li           gp, 0x0
                  li           s1, 0x9efe2d0
                  li           s8, 0x80000000
                  li           a6, 0x957036f
                  li           t1, 0x8f20e5a
                  li           ra, 0x80000000
                  li           s11, 0x80000000
                  li           t0, 0xa9a88eaa
                  sub          gp, t1, ra
                  addi         s8, t6, 1966
                  auipc        s8, 262181
                  add          gp, t0, s1
                  sub          t1, s1, s1
                  add          s11, s8, s7
                  lui          t0, 925550
                  auipc        s1, 41821
                  sub          s8, s1, t1
                  addi         s7, s7, 39
                  nop
                  sub          gp, gp, a6
                  add          t1, t6, s7
                  addi         t1, t0, 282
                  nop
                  lui          s1, 213426
                  auipc        ra, 821226
                  lui          t1, 137428
                  auipc        s11, 279841
                  lui          a6, 397041
                  addi         s7, gp, -695
                  sub          ra, t0, ra
                  sub          a6, s11, t6 #end riscv_int_numeric_corner_stream_19
                  srli         a4, s9, 9
                  srl          t2, t3, s9
                  sltiu        s11, zero, 113
                  srli         t2, t4, 13
                  sll          s1, a6, ra
                  and          zero, t3, zero
                  slt          s3, s2, a7
                  srli         s7, a5, 26
                  slt          t0, t2, a1
                  addi         a5, sp, 1640
                  auipc        s9, 129354
                  slti         a5, s0, 753
                  add          s5, s0, t3
                  xori         a3, a7, -1867
                  or           s4, s4, s1
                  addi         gp, s10, -209
                  slti         gp, sp, 239
                  slli         s1, a0, 2
                  xori         a3, tp, -1921
                  ori          s2, a1, -1114
                  sltu         a0, s3, a3
                  andi         sp, a3, 1355
                  sltiu        s10, a0, -1067
                  and          t4, s3, s7
                  srli         a0, gp, 17
                  add          t5, a2, t4
                  nop
                  sltiu        s5, s4, 0
                  srai         s7, a3, 11
                  addi         ra, t3, -1774
                  srli         a2, s1, 29
                  slli         s5, t4, 30
                  addi         t3, t4, -1247
                  auipc        zero, 1037895
                  andi         a2, ra, 864
                  ori          a2, s7, -66
                  lui          s2, 68799
                  ori          t0, ra, -65
                  sltiu        zero, sp, 591
                  slt          s3, a2, s9
                  auipc        s4, 797687
                  nop
                  or           s11, t0, a6
                  or           a3, t4, s10
                  andi         s8, t4, 1365
                  and          zero, t3, zero
                  or           t1, a0, a3
                  xor          a5, a2, sp
                  sra          a7, s8, a4
                  nop
                  srl          a1, t6, t6
                  slti         t3, t4, 23
                  srl          a2, t2, a1
                  slli         s10, s2, 15
                  or           gp, t1, a5
                  andi         s2, s4, 1805
                  slti         a4, s6, 1452
                  srai         a3, s0, 20
                  lui          s1, 757432
                  add          a5, tp, t0
                  sll          t3, sp, s2
                  sll          a5, s3, ra
                  sll          a3, s11, sp
                  xor          a6, t0, s6
                  auipc        a7, 171576
                  andi         sp, t5, -1956
                  srl          zero, s6, a7
                  andi         t5, s10, 312
                  srl          t3, s8, s1
                  andi         s3, s8, 1549
                  slt          t1, zero, s3
                  add          a0, t5, s1
                  andi         a2, a7, -1250
                  srai         gp, s3, 28
                  srli         t4, a7, 27
                  sll          s8, t2, a0
                  ori          s11, s10, -1019
                  sltu         t2, s0, t3
                  sll          t4, sp, a4
                  andi         ra, s8, 622
                  sub          gp, s5, t6
                  and          t5, ra, s10
                  andi         t4, t4, 941
                  sll          s10, s9, a0
                  slli         s9, sp, 5
                  auipc        a2, 13278
                  sra          s10, a2, sp
                  slt          s1, a0, s6
                  xori         s3, tp, -307
                  sra          t6, a7, a4
                  xor          ra, a3, gp
                  slt          zero, a5, gp
                  auipc        a1, 927053
                  sub          sp, s1, zero
                  slli         s10, s5, 9
                  sub          t6, s0, s5
                  sltiu        s2, s1, 1817
                  sltiu        a7, a6, -310
                  auipc        a0, 294103
                  sub          sp, a2, t0
                  sub          ra, s1, s5
                  or           s1, a4, s2
                  sltu         a4, s9, s1
                  srai         t0, a2, 24
                  sltiu        s10, a4, -1272
                  sltu         zero, a7, s11
                  ori          a2, a5, -1977
                  xor          a1, t6, s0
                  lui          t4, 588639
                  srl          a3, s1, a3
                  srli         t6, a1, 1
                  sltiu        zero, s2, -177
                  lui          t5, 213967
                  srl          s5, s11, s9
                  nop
                  add          a6, s4, s5
                  srl          a5, t2, a3
                  and          a3, zero, a6
                  xori         a4, s5, -1232
                  srai         t5, gp, 15
                  sll          a5, t4, a3
                  andi         a5, ra, -1220
                  srl          s8, zero, a0
                  slti         s5, t2, -1675
                  lui          t4, 541521
                  sltu         s1, a2, a5
                  slti         s9, s3, -1435
                  srli         t5, a7, 19
                  srli         t2, a5, 11
                  auipc        s7, 10594
                  srli         gp, tp, 19
                  li           t1, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           t5, 0xffffffff
                  li           s5, 0x0
                  li           t3, 0x163e6657
                  li           s3, 0x125dd0eb
                  li           t2, 0x0
                  li           a5, 0x80000000
                  li           sp, 0x80000000
                  li           s10, 0x5092459e
                  li           s11, 0xffffffff
                  lui          t1, 778400
                  lui          s10, 598586
                  add          t5, s3, t3
                  sub          s5, s10, t1
                  auipc        t2, 615850
                  sub          t2, t1, t2
                  addi         t1, s5, 1999
                  nop
                  sub          s11, s11, t3
                  add          s10, t5, t1
                  auipc        s11, 752517
                  add          s3, t2, sp
                  addi         t2, t1, 1994
                  sub          s3, a5, t2
                  add          s10, s10, sp
                  nop
                  sub          s5, sp, s11
                  add          s10, t1, s11
                  nop
                  addi         s11, a5, 1966
                  addi         a5, t3, -241
                  nop #end riscv_int_numeric_corner_stream_6
                  sra          t3, t2, a1
                  auipc        s10, 343460
                  slli         s9, s4, 28
                  sub          s9, a2, s10
                  or           t1, zero, a1
                  srl          a0, t0, s0
                  or           a0, t1, sp
                  sub          gp, a5, s6
                  srli         t2, gp, 1
                  addi         s9, a7, 737
                  srai         zero, s1, 25
                  xor          a0, a0, s0
                  sub          a2, s7, s9
                  sub          t2, s10, sp
                  addi         zero, s6, -1931
                  nop
                  auipc        a7, 1030210
                  sra          s4, t1, s11
                  nop
                  sltiu        gp, s3, 66
                  and          s10, s6, s4
                  or           s5, s8, a3
                  or           s3, a1, s0
                  lui          s7, 658660
                  srl          s4, s0, a3
                  sub          a1, a4, a1
                  srl          a4, t2, a4
                  add          s9, t2, s11
                  ori          s10, s8, -508
                  lui          s9, 1036715
                  sll          a3, t3, s4
                  add          sp, t5, s1
                  addi         s9, a1, -1933
                  slti         s2, a5, -24
                  andi         t4, gp, -69
                  sltiu        t1, t2, 345
                  sra          s1, s9, t0
                  sltu         s7, sp, sp
                  nop
                  srli         a2, a6, 8
                  auipc        s2, 123686
                  srai         s9, a6, 5
                  slt          a0, t1, s9
                  nop
                  sltiu        s3, ra, -2020
                  srai         s2, a5, 18
                  sra          s2, s3, s11
                  xor          t5, t3, tp
                  auipc        a2, 42520
                  sltu         s1, s9, s7
                  and          t2, tp, s2
                  sll          sp, ra, a3
                  slt          s8, a6, s10
                  slt          a2, s5, a0
                  slt          ra, a3, a0
                  nop
                  xor          a3, s10, gp
                  srai         t5, a3, 29
                  srli         t3, s10, 11
                  srai         zero, s3, 8
                  or           s9, s1, s2
                  auipc        t6, 415823
                  ori          zero, s4, -1550
                  lui          a2, 725814
                  ori          t6, s8, 1104
                  nop
                  addi         a6, s7, 1873
                  lui          s1, 410859
                  or           a4, a5, a2
                  add          t3, t1, s8
                  slt          s11, t3, a1
                  slli         a1, a4, 1
                  xori         s4, s0, 1820
                  slli         t2, s9, 8
                  slli         a4, t5, 7
                  xori         s2, s9, 2028
                  and          t2, s6, s7
                  srl          s10, s4, s4
                  or           s9, t1, s3
                  sra          t1, a2, t2
                  auipc        s8, 368620
                  and          t3, tp, t0
                  sra          a6, s4, a1
                  srai         a6, t2, 21
                  sll          s10, a2, t1
                  addi         s2, a2, 153
                  add          t6, a7, t0
                  srai         s4, s10, 13
                  slt          s5, a4, sp
                  ori          ra, s3, -611
                  slt          s10, a7, a7
                  xor          a7, s2, s10
                  slt          ra, t4, s11
                  slli         s10, ra, 28
                  add          a3, s0, s2
                  nop
                  slti         s5, t6, 11
                  and          a4, zero, s2
                  and          s5, sp, a4
                  srli         a7, s11, 15
                  and          zero, s4, s5
                  or           s3, s3, t0
                  slt          a4, s11, a4
                  add          ra, s11, t4
                  or           s7, t2, a2
                  nop
                  sll          s9, gp, s0
                  andi         t4, s1, -1633
                  add          zero, s8, s11
                  xori         t5, s4, 880
                  sra          t1, a1, s10
                  nop
                  srli         s4, a7, 10
                  or           a6, t6, s8
                  slti         a5, s4, -284
                  srli         t3, t1, 10
                  slli         a2, s0, 18
                  slti         t5, s7, 1554
                  add          s2, a3, a6
                  sll          s9, s9, s0
                  sltiu        zero, s5, 208
                  addi         t4, a6, 503
                  lui          zero, 652495
                  addi         a1, s0, -1892
                  lui          s4, 524300
                  nop
                  srai         a4, t5, 3
                  ori          t3, s1, 904
                  or           a6, t3, gp
                  sltiu        a3, a0, 1564
                  auipc        t0, 878487
                  sltiu        a6, t6, 1996
                  add          a7, a0, a4
                  or           t6, a0, s1
                  srl          s4, s6, tp
                  addi         s10, s0, -1624
                  auipc        s8, 47596
                  add          a6, tp, ra
                  sub          t0, a2, a0
                  andi         t6, s10, 125
                  srl          a7, s6, a6
                  slli         s8, t2, 15
                  slli         s10, s8, 24
                  nop
                  nop
                  sltu         s9, t3, gp
                  srli         s4, s5, 9
                  auipc        s8, 262001
                  ori          a0, s8, 441
                  addi         sp, ra, 503
                  sltu         s3, s4, sp
                  xor          s1, t6, s3
                  auipc        sp, 684142
                  xor          s7, sp, zero
                  slti         s10, a3, -1259
                  ori          s1, s0, 912
                  li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           s9, 0x8c10a6d9
                  li           s7, 0xffffffff
                  li           s4, 0x8bc7987e
                  li           s10, 0x10ca43ca
                  li           s8, 0x41abb492
                  li           a1, 0xffffffff
                  li           sp, 0x3346c3e3
                  li           s3, 0x80000000
                  li           t6, 0xe7cef85c
                  add          ra, s7, s10
                  add          t6, s7, sp
                  add          s10, s8, s9
                  addi         a1, s9, -1726
                  addi         t6, s8, 1659
                  sub          s8, s10, s9
                  addi         sp, a1, -1289
                  addi         a1, s3, 676
                  addi         s4, ra, -685
                  lui          s3, 2161
                  auipc        s8, 385036
                  sub          s10, s3, s7
                  sub          s9, s10, s8
                  lui          s10, 15312
                  addi         s9, s3, -1547
                  lui          ra, 87603
                  auipc        sp, 877714
                  add          a1, s8, s9
                  auipc        sp, 334110
                  sub          sp, s8, s8
                  nop
                  add          sp, s3, sp
                  nop
                  add          s9, s3, sp
                  auipc        a1, 411123
                  add          s10, s4, s10
                  addi         t6, s10, 1000
                  lui          sp, 153762 #end riscv_int_numeric_corner_stream_9
                  xori         t0, a2, -352
                  slt          s4, a1, a0
                  sll          t6, a2, a7
                  srl          a2, s2, a0
                  srl          zero, t4, s3
                  add          a4, a3, a7
                  slt          s5, gp, a6
                  auipc        s5, 591516
                  slti         s3, a4, 1109
                  sub          s4, a5, t5
                  and          s1, a0, s10
                  nop
                  srl          s1, t0, s7
                  srli         s5, s7, 1
                  srl          a6, t3, tp
                  xor          s11, t1, s8
                  sltu         gp, a7, s0
                  nop
                  sub          a1, t6, s7
                  srai         t5, a1, 2
                  sra          s5, t0, s10
                  auipc        a6, 972438
                  ori          s3, a1, -295
                  srl          t5, s8, t0
                  sra          a2, s8, a3
                  addi         t4, tp, -1429
                  slti         t6, a0, -1222
                  srli         s7, s0, 27
                  addi         t3, sp, -1514
                  sll          a5, a2, s2
                  nop
                  xor          t4, t6, s5
                  slt          sp, s6, s4
                  and          s2, s9, s11
                  sll          s8, zero, a5
                  lui          s9, 450990
                  auipc        s1, 635584
                  xor          s10, a2, s0
                  sll          s5, t2, s0
                  sltu         t4, a3, s7
                  slt          a0, zero, s9
                  srli         a5, sp, 8
                  andi         a1, zero, 53
                  andi         a6, t6, 1707
                  sub          s2, s6, a3
                  or           gp, s4, t4
                  sra          a5, s3, a6
                  ori          t3, a2, 1962
                  andi         s7, a1, 1988
                  srl          t4, t4, t3
                  andi         t3, t4, 81
                  sltu         t4, s3, t0
                  ori          s5, s3, 1021
                  sltiu        a6, sp, 214
                  lui          t6, 339176
                  slli         t3, a7, 30
                  slt          s10, a4, sp
                  xor          s10, t3, t3
                  or           t6, a4, a4
                  add          s11, gp, a0
                  or           zero, zero, a2
                  sltu         zero, a3, t6
                  slt          zero, s4, a5
                  add          gp, a1, a5
                  sra          s8, s10, a2
                  lui          s9, 469473
                  sltu         s3, a1, a6
                  lui          s10, 78167
                  slti         a3, tp, -1296
                  xori         s1, s0, 479
                  sll          a6, t0, a5
                  lui          t3, 587794
                  sltiu        s1, t1, -1402
                  srl          a2, gp, t6
                  sll          zero, s2, t1
                  auipc        t0, 398980
                  slt          t5, s6, a1
                  xori         s4, t5, 1885
                  srli         s8, a4, 4
                  or           s8, t1, s1
                  sra          a1, s3, s4
                  nop
                  add          s7, s4, s1
                  srli         t3, t2, 15
                  sltu         t3, s2, s5
                  and          a5, t4, a6
                  lui          s10, 963738
                  ori          s11, s6, -1448
                  slli         t2, t4, 18
                  lui          zero, 49851
                  slti         s8, t3, -145
                  slli         a0, a7, 13
                  and          t6, a2, a0
                  srli         zero, a2, 8
                  or           t4, s11, a7
                  sltu         t6, t2, t0
                  sltu         s7, tp, t0
                  xori         t6, s9, 1075
                  or           a1, t2, s8
                  sra          s3, t0, s0
                  and          a6, t0, s10
                  srli         t5, s9, 22
                  srai         zero, s1, 17
                  sltiu        a3, a4, -1495
                  and          s1, t5, s2
                  add          s4, ra, s2
                  auipc        s4, 113150
                  and          t6, tp, gp
                  slti         s11, a4, -2033
                  sltu         s5, zero, s2
                  srai         s7, s2, 20
                  xori         s9, a4, -755
                  srl          a6, s6, s6
                  xor          s7, s2, a5
                  lui          s9, 805920
                  slt          a1, t2, ra
                  addi         s4, ra, -441
                  sra          a5, t0, s11
                  sltu         gp, s5, a5
                  xor          t1, a6, a1
                  lui          s2, 247802
                  slt          s1, s4, a6
                  li           s11, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           t1, 0x0
                  li           s1, 0x80000000
                  li           s3, 0x0
                  li           t6, 0x80000000
                  li           a5, 0x80000000
                  li           a7, 0x0
                  li           a6, 0x80000000
                  li           s8, 0xab819db7
                  li           t4, 0x0
                  addi         t1, a7, -878
                  auipc        s8, 733642
                  addi         s11, s3, -1975
                  sub          s8, s11, a5
                  sub          a7, a6, t4
                  auipc        t1, 623528
                  sub          t1, a5, a5
                  lui          s8, 409051
                  auipc        s8, 308661
                  nop
                  nop
                  add          s1, s8, t6
                  lui          s1, 56676
                  auipc        s8, 731038
                  auipc        a6, 1010119
                  lui          t1, 228118
                  nop
                  nop
                  lui          a5, 60013
                  add          a7, a6, a5
                  lui          s11, 749529
                  add          t6, a7, a6 #end riscv_int_numeric_corner_stream_0
                  addi         zero, s5, 403
                  sub          s3, s2, a5
                  add          zero, t3, a6
                  slti         zero, s4, -125
                  srai         s3, s7, 0
                  sll          t5, a1, s10
                  slt          a0, s11, a2
                  nop
                  sll          sp, a3, s2
                  or           ra, s1, s5
                  srl          t1, s4, s1
                  andi         a2, s0, 1120
                  ori          s9, s11, -1129
                  xori         a7, t6, 1072
                  xori         sp, t4, -711
                  add          a7, s4, t2
                  sra          a6, gp, s6
                  sra          s10, s5, zero
                  sltiu        s5, t3, -1478
                  slti         t3, tp, -115
                  sll          t5, s5, a5
                  sra          s1, t3, s4
                  add          t4, t6, s2
                  xor          s5, ra, t6
                  srai         s7, ra, 14
                  slti         s8, s6, -11
                  srai         a4, a5, 2
                  addi         a6, t2, 1491
                  srli         sp, s4, 31
                  addi         s10, a6, -295
                  ori          a7, t5, 432
                  slt          t5, t5, t3
                  slli         s3, gp, 4
                  nop
                  nop
                  nop
                  slt          a3, s8, s3
                  ori          s8, t3, 1623
                  xori         s11, tp, -1917
                  sll          t0, ra, t3
                  sub          zero, t5, s4
                  sub          a5, sp, a6
                  slt          sp, t2, a5
                  add          s8, a7, s4
                  and          s4, t3, a0
                  slt          s1, s6, s6
                  add          ra, s11, t6
                  xori         a2, s3, 2000
                  xori         s11, s8, 730
                  add          t3, a0, s1
                  srai         t1, a4, 28
                  srli         s2, s0, 25
                  sll          sp, a2, s3
                  nop
                  and          t2, s5, s10
                  ori          a1, a0, -1128
                  sub          t2, t3, s10
                  slti         s9, gp, 633
                  sll          a2, t4, a0
                  sltu         a7, zero, a5
                  slt          a3, zero, t5
                  slti         s2, a3, 1901
                  sll          s8, s9, a1
                  srl          s10, t0, a7
                  and          t5, a7, t2
                  and          t3, s5, s4
                  sltu         s9, a6, t1
                  sltu         t0, a4, a4
                  add          a2, t4, ra
                  and          t6, a0, zero
                  nop
                  xor          a6, t4, s5
                  andi         a4, zero, 532
                  andi         a3, s11, -1511
                  srli         s2, t1, 26
                  ori          s2, tp, 855
                  xor          s10, zero, a3
                  andi         t4, a2, 1538
                  auipc        t5, 485803
                  xori         t5, a0, -1374
                  srl          s3, s10, a1
                  addi         s4, gp, 525
                  sll          s8, sp, a7
                  xori         s1, a1, 1213
                  srl          t1, a6, s10
                  srl          t3, s0, ra
                  slti         s11, a0, 1943
                  slli         s2, t5, 23
                  addi         a2, a6, -1868
                  slti         t2, tp, 2010
                  nop
                  xori         s1, sp, 978
                  srli         a6, a0, 3
                  xor          a0, s3, t6
                  sltiu        t4, t0, 1769
                  addi         t5, s0, 61
                  sltu         t4, s3, a0
                  andi         t2, s4, 1479
                  or           zero, s10, a2
                  srli         zero, a0, 13
                  ori          s8, ra, 416
                  slli         gp, a2, 12
                  addi         t6, gp, -27
                  sra          zero, a5, a2
                  sltiu        a1, sp, 886
                  ori          a7, s0, -1094
                  nop
                  xor          a6, s1, s8
                  slti         s10, s1, 1400
                  srl          t1, a3, s9
                  ori          s1, ra, 1240
                  nop
                  xor          t2, ra, s10
                  and          a2, s8, a6
                  slti         ra, s7, -1339
                  or           t5, t1, gp
                  slti         zero, t4, -537
                  slti         s8, s11, 633
                  auipc        s7, 894406
                  nop
                  srl          s9, s6, s0
                  auipc        a4, 257081
                  sltu         zero, a0, t4
                  add          s11, a3, a3
                  slti         ra, tp, 605
                  slt          zero, sp, s6
                  srl          t5, s7, t1
                  add          t6, s2, s6
                  slli         t1, gp, 6
                  and          a1, a4, s8
                  sra          s9, zero, t1
                  addi         a6, sp, 1778
                  sra          s10, a6, ra
                  slti         a5, s4, -734
                  add          t1, t6, a2
                  sltiu        s7, a1, -1090
                  nop
                  slt          a2, a2, t3
                  slli         s8, s10, 27
                  srl          t3, ra, t5
                  slti         a4, a2, 1914
                  slli         t4, ra, 10
                  slli         t6, zero, 6
                  ori          t1, gp, -1697
                  auipc        a1, 540942
                  andi         t6, t6, -985
                  srli         s3, t0, 30
                  sub          t6, sp, s0
                  xor          a5, s5, a2
                  addi         t6, s0, 652
                  or           t5, a6, t4
                  lui          a1, 286255
                  or           s11, s11, zero
                  sub          sp, s3, t3
                  nop
                  xor          gp, tp, s6
                  xori         s5, gp, 1290
                  and          s11, ra, tp
                  sltu         s7, s0, s0
                  xor          t1, t1, t2
                  slli         s4, t5, 0
                  ori          ra, s8, 1874
                  auipc        a5, 315321
                  lui          a7, 30373
                  ori          t3, s5, -2037
                  sltu         a5, t0, gp
                  or           s2, s6, s6
                  nop
                  ori          sp, s6, -1569
                  xori         s5, ra, -508
                  addi         zero, ra, 927
                  slli         s2, a3, 24
                  sll          a1, t5, a3
                  srl          a2, t3, s8
                  or           a2, s4, ra
                  add          s5, t5, a6
                  srai         s5, t4, 17
                  or           a4, a2, sp
                  slli         a2, t0, 4
                  xor          s2, t2, s6
                  and          s11, s4, s5
                  ori          s10, a5, -435
                  sltu         t5, a1, sp
                  srai         zero, s3, 26
                  ori          t3, s4, 1381
                  slt          a1, s8, ra
                  slt          t5, a4, t0
                  or           s11, tp, s3
                  andi         s4, s6, -530
                  sub          s11, a6, a4
                  slt          t5, s0, t1
                  and          s10, a6, s6
                  srai         s1, a0, 1
                  slt          s9, a5, s5
                  slli         t0, t1, 19
                  and          s7, a5, a2
                  xor          a4, s0, a4
                  or           s1, s8, s4
                  or           a2, s9, t5
                  srli         a0, gp, 2
                  nop
                  ori          a4, s10, 1907
                  sltu         s4, s3, s0
                  sltiu        s4, t5, 1118
                  sra          t3, a5, ra
                  auipc        t5, 792903
                  or           a1, t4, ra
                  xor          s8, t4, a0
                  sll          t6, s6, s0
                  sub          t6, sp, t5
                  sra          t5, s2, a1
                  nop
                  add          s5, a5, ra
                  sub          s11, s1, a4
                  auipc        t5, 859563
                  sub          s1, s4, a7
                  xor          a4, s3, s10
                  sltiu        t1, a5, 1056
                  srai         a0, t0, 28
                  srai         s9, s9, 27
                  slti         zero, a2, -912
                  sra          t2, s3, s3
                  and          zero, gp, t4
                  sra          s7, a3, a7
                  srli         s5, s3, 7
                  nop
                  srai         s9, a3, 13
                  sltiu        s4, s10, 553
                  andi         s3, a7, 1645
                  slti         a2, s10, -1430
                  sub          s8, s7, t4
                  and          a5, s2, zero
                  add          t0, t5, s6
                  slli         t4, s6, 30
                  slti         a2, t0, -1965
                  addi         t0, s11, 1303
                  sub          t5, s8, s10
                  sub          a7, s6, s2
                  addi         a2, t2, -687
                  auipc        s8, 187641
                  and          sp, s2, a1
                  srl          ra, s9, zero
                  sltiu        t1, a1, 850
                  sltiu        s10, s8, 676
                  xori         gp, sp, 1865
                  xori         s1, t5, 487
                  sltiu        s1, a1, -496
                  slt          a5, gp, sp
                  lui          s3, 529887
                  addi         a1, a2, 1945
                  xor          s4, s0, s3
                  xori         s3, s1, 2015
                  xori         s3, zero, -1711
                  sra          t5, a5, a6
                  sub          s5, s6, a2
                  sll          s4, s0, t3
                  srai         s3, s2, 8
                  add          s10, s6, a1
                  srai         t0, ra, 15
                  sltu         s7, t3, a4
                  slt          a5, t3, t0
                  auipc        t2, 165020
                  srli         gp, a5, 22
                  srai         a3, a0, 16
                  slt          s5, a6, tp
                  sltiu        gp, gp, -2001
                  or           s3, t2, sp
                  slti         a6, t0, 163
                  sltu         s10, t4, gp
                  xor          s4, a2, zero
                  xor          zero, zero, a0
                  xor          gp, s1, t1
                  nop
                  and          ra, zero, t5
                  xor          a5, s6, zero
                  addi         t3, t3, 844
                  slti         gp, zero, -1094
                  srli         a4, a5, 25
                  srli         s1, s4, 4
                  sltiu        ra, a5, -935
                  ori          t6, s1, 1630
                  and          s10, s10, t4
                  srli         a7, s3, 16
                  ori          sp, s1, -1689
                  slt          t6, a6, t1
                  sll          s5, s11, t3
                  srl          s7, tp, a2
                  sll          t4, tp, s10
                  srl          s9, s3, s1
                  xori         sp, a4, 1663
                  sub          a1, ra, a0
                  slti         t3, s2, 590
                  or           sp, a2, zero
                  xor          a2, a5, t0
                  srai         s7, s6, 26
                  sltiu        t3, s10, 511
                  sub          a5, s9, s11
                  sltu         t1, a2, gp
                  sub          s2, s3, s4
                  addi         s4, a3, -836
                  xori         gp, a4, -1090
                  and          sp, a7, zero
                  xori         a1, a0, -1895
                  xori         a4, ra, 794
                  sub          t2, s9, tp
                  add          t0, t1, s10
                  and          s9, a7, s5
                  srai         a5, t0, 28
                  lui          a4, 841854
                  add          s8, s5, a7
                  add          s11, s0, tp
                  slli         s3, s3, 27
                  slti         t5, s3, -1088
                  andi         t3, s9, 543
                  slti         s9, t4, -185
                  addi         t1, t3, -1817
                  slti         t1, t5, 1290
                  srai         a5, t0, 10
                  lui          gp, 298936
                  add          sp, s2, sp
                  auipc        t1, 526823
                  addi         s4, s6, -1305
                  sub          t6, t5, a2
                  sltu         t0, s2, zero
                  srai         a0, s11, 16
                  slli         a6, tp, 28
                  srai         a5, a0, 27
                  slli         zero, t2, 28
                  andi         s5, zero, 1683
                  sltiu        s4, s4, 477
                  ori          a7, t1, 1953
                  sub          s7, t6, t5
                  xori         s4, t1, -1425
                  sltiu        s11, s4, -1527
                  slti         gp, ra, 755
                  sub          s3, ra, a7
                  and          s1, a3, a6
                  and          a4, s9, s6
                  srl          s7, s7, ra
                  sra          s3, a7, t4
                  slli         s5, zero, 31
                  sll          s10, s0, a0
                  srai         s11, ra, 22
                  xori         a2, a5, 1545
                  sub          ra, t4, a3
                  ori          a6, s3, 1644
                  and          s11, a4, sp
                  or           a2, t3, t5
                  sltiu        s10, sp, -1569
                  or           s11, s3, s2
                  sub          a6, a4, s0
                  srai         gp, s10, 15
                  srai         a2, s2, 29
                  nop
                  lui          t3, 431405
                  nop
                  sll          t2, a3, a5
                  auipc        a3, 846992
                  andi         s10, s7, 1138
                  slt          s10, t6, a4
                  addi         a4, t5, -969
                  srli         t3, s2, 30
                  slti         t4, zero, -490
                  add          t1, a3, a1
                  srai         a0, s5, 5
                  xori         t5, ra, 747
                  xori         a3, s6, 96
                  srl          a6, s11, t1
                  srli         t6, s11, 8
                  sltu         s9, s2, t1
                  ori          s7, t6, -717
                  sra          s1, a0, a7
                  lui          t2, 1039250
                  xor          gp, t1, s8
                  srai         sp, t6, 21
                  srai         t1, a4, 11
                  auipc        a0, 994172
                  sll          t6, s3, s8
                  sra          s10, zero, a6
                  addi         s9, s7, 149
                  and          a4, a2, s10
                  sub          zero, s1, s4
                  addi         s9, s2, -1169
                  and          s7, t4, s9
                  nop
                  sra          s10, t6, zero
                  ori          s8, gp, -381
                  nop
                  srl          t3, t6, a7
                  sltu         s10, a5, s7
                  addi         s3, tp, -1439
                  slt          t1, s2, s2
                  sra          t6, zero, sp
                  slt          t4, tp, s11
                  add          ra, s2, t1
                  ori          s1, s4, 1265
                  sub          s8, s7, a0
                  addi         s5, a0, -992
                  sll          a1, t1, t1
                  slt          gp, s4, s5
                  sub          s4, sp, s8
                  slt          a2, sp, s9
                  srai         a5, sp, 1
                  sltiu        s5, s10, -986
                  auipc        a3, 773400
                  add          s3, tp, a5
                  sra          t6, gp, a4
                  lui          t3, 835468
                  auipc        gp, 544409
                  or           sp, a7, sp
                  addi         a2, a3, -1380
                  addi         s4, s11, 1961
                  srai         a4, sp, 2
                  sltu         s2, a3, s3
                  sltu         t0, t0, a6
                  sra          t5, a0, a7
                  andi         a5, s6, -592
                  slti         t5, s1, -255
                  xor          s10, a5, a3
                  sra          s7, s3, s5
                  xor          gp, s6, t4
                  add          ra, t2, s2
                  srli         s7, a1, 20
                  lui          a0, 955843
                  sltiu        t0, a2, -2012
                  srli         t5, s1, 19
                  sub          gp, s6, sp
                  auipc        a3, 386160
                  slli         s2, s4, 28
                  add          s2, zero, a4
                  slti         zero, sp, -1443
                  sll          t0, s5, t2
                  lui          ra, 703559
                  or           t2, a3, s2
                  xori         s1, t0, 31
                  slli         gp, t6, 30
                  xor          a3, a2, s11
                  sra          t4, t5, s10
                  sll          s1, a6, s2
                  srli         zero, sp, 17
                  slti         a4, a6, -465
                  sll          s7, zero, ra
                  lui          s11, 786870
                  srai         a2, tp, 3
                  sll          t5, s6, a5
                  sll          a5, zero, ra
                  sub          t6, a2, t3
                  sub          s9, t5, a4
                  sltu         t6, t0, s0
                  sub          a6, s5, t6
                  xori         s2, s8, 1332
                  xori         s9, s10, -1737
                  add          t1, sp, a2
                  slti         a5, gp, -1659
                  or           s10, t4, t1
                  or           t2, t6, t6
                  add          a0, zero, s0
                  auipc        s8, 938628
                  srai         t2, s10, 6
                  sub          s1, tp, t3
                  srli         a3, a4, 10
                  lui          a4, 938424
                  add          t1, t3, a2
                  slt          a0, ra, a5
                  sub          a4, s2, a0
                  xori         sp, t0, 586
                  slt          t1, a7, s10
                  or           s4, a6, a1
                  sra          s5, t0, sp
                  auipc        s8, 618790
                  sub          t3, s7, t2
                  slti         s5, s5, 1406
                  srli         a1, s1, 1
                  slli         s11, sp, 15
                  sll          gp, a2, zero
                  ori          s7, a4, 116
                  xori         t3, a1, 47
                  ori          zero, s3, 2023
                  addi         a7, sp, 625
                  slt          sp, s3, a1
                  lui          a5, 956892
                  srli         s9, t0, 17
                  srli         s11, s6, 23
                  xori         s10, s10, -1401
                  srai         s10, s2, 20
                  add          sp, s0, t5
                  and          t5, s11, s1
                  srli         a1, a4, 0
                  nop
                  sltu         a4, s1, s3
                  sra          a6, s4, tp
                  sltu         s5, a1, ra
                  srli         t3, s3, 9
                  andi         a4, a3, -270
                  srl          t2, t0, t2
                  and          s2, t1, a3
                  or           t3, s8, a2
                  ori          s10, s4, 491
                  sub          ra, a0, zero
                  add          a0, t1, t5
                  srai         t4, t2, 21
                  sltiu        a7, a7, 909
                  nop
                  xori         t0, s0, 1003
                  ori          t4, a7, -965
                  ori          a4, s2, -1084
                  slli         a4, s2, 26
                  nop
                  lui          t6, 162491
                  andi         t2, ra, -1647
                  lui          s2, 605033
                  sub          a1, s2, a6
                  or           t0, a3, a7
                  xor          s10, tp, a4
                  ori          s2, s3, 1208
                  lui          t2, 159144
                  slt          s7, a4, s2
                  sra          t0, t6, ra
                  xori         s8, s2, -1808
                  or           s4, s2, a5
                  add          t2, t3, t2
                  nop
                  srl          a7, s4, sp
                  sltu         gp, s2, s11
                  sltu         a1, s0, t6
                  sltiu        s9, s6, -2
                  addi         s7, t1, 674
                  sll          t6, s0, a0
                  slt          s11, a0, a0
                  and          s2, t6, s7
                  slt          a0, a0, ra
                  slli         t1, t1, 0
                  sub          s11, a7, t4
                  xor          a4, a1, s7
                  or           s2, a6, s8
                  nop
                  xori         s8, t4, -1147
                  sltu         a5, s6, a3
                  nop
                  addi         s3, a3, -1476
                  sltu         s11, s5, s10
                  auipc        t6, 52176
                  auipc        ra, 241462
                  and          a1, t5, a3
                  sub          a0, s10, s7
                  or           t5, s5, a5
                  lui          a4, 820445
                  slli         a7, t3, 15
                  and          s7, tp, s3
                  xori         a4, a3, -1125
                  andi         t2, t5, -239
                  lui          s2, 1005762
                  srl          a1, a3, ra
                  xor          t4, t2, a2
                  srli         a7, ra, 5
                  ori          t3, s1, -1888
                  sll          t4, t4, t4
                  srl          s3, s1, s4
                  or           a0, a4, a5
                  addi         t2, s4, -1686
                  sltu         sp, sp, a7
                  andi         a0, s3, -1162
                  slti         a7, s9, -109
                  srl          t6, s6, s3
                  slt          s4, t6, t0
                  addi         a6, s2, 257
                  sltu         t5, s7, s6
                  lui          s5, 283439
                  xori         t6, s9, 396
                  or           a0, t0, t0
                  sltiu        a5, t6, 1582
                  auipc        t5, 480486
                  srl          s2, t2, tp
                  slli         t0, t2, 23
                  xori         s1, s3, 1906
                  xor          t3, zero, a3
                  andi         a0, a1, 1149
                  sra          s11, t6, s6
                  nop
                  slti         a2, t0, -23
                  srai         s2, ra, 23
                  srl          a3, a4, t6
                  xor          s1, s0, s1
                  srl          a1, s5, a6
                  sub          ra, s8, t1
                  andi         a0, a4, 1048
                  ori          t4, s4, 436
                  xori         t2, t6, -301
                  or           a3, sp, s11
                  srli         s11, t2, 15
                  and          ra, a6, s2
                  sltu         t5, t3, t5
                  srli         t4, s3, 31
                  slti         s2, s5, 1919
                  andi         zero, t5, -1471
                  sll          a7, zero, t6
                  ori          sp, a5, -638
                  andi         zero, t6, -1474
                  addi         a6, s8, 731
                  xori         a4, s0, 1557
                  sltu         a4, s5, a7
                  nop
                  slli         s5, a2, 31
                  sltu         s10, ra, s0
                  andi         t3, s1, 1804
                  or           t1, t0, t0
                  sll          t5, s11, s10
                  nop
                  slli         a4, s4, 26
                  ori          s8, s7, -252
                  and          a3, a5, zero
                  sra          t2, t2, t6
                  srai         a4, s6, 25
                  xori         s11, t0, -513
                  or           t4, s11, s8
                  sra          a1, t2, s5
                  and          a0, t1, s11
                  srli         a4, a3, 23
                  lui          a2, 330695
                  xor          t6, s8, a6
                  sra          a1, t1, s7
                  sub          a2, s8, s9
                  xor          s5, tp, s3
                  slli         s5, a2, 4
                  sub          s3, s5, tp
                  srai         t5, sp, 29
                  lui          s8, 442700
                  addi         s1, zero, -1553
                  srli         a0, tp, 26
                  and          a2, zero, s10
                  slt          t0, s1, a7
                  and          t0, ra, a5
                  srai         s1, s3, 8
                  lui          a5, 1015011
                  srl          a4, s2, t0
                  slli         a1, a1, 13
                  lui          a6, 418847
                  nop
                  or           t0, t2, a6
                  sltiu        t0, t5, 1551
                  addi         t6, s2, 1953
                  lui          a2, 7089
                  sll          s2, s5, a2
                  slti         t2, ra, -251
                  srli         a3, s3, 15
                  slli         s4, ra, 14
                  slt          t2, tp, s9
                  srl          s1, sp, t4
                  sra          a6, s4, a0
                  srl          a4, ra, s3
                  ori          a0, t5, 394
                  sra          a3, sp, s6
                  add          a6, s7, a3
                  sub          s4, a4, t4
                  slli         t5, t2, 3
                  sll          a6, s6, t4
                  sltiu        s7, gp, 28
                  srai         s7, s3, 10
                  andi         s4, t5, 842
                  xor          t6, s11, s3
                  srli         zero, t3, 13
                  nop
                  nop
                  lui          s5, 278153
                  or           ra, zero, a1
                  srl          s7, s3, s8
                  slli         s8, sp, 8
                  xori         a1, s0, -1565
                  auipc        t6, 994023
                  srli         a5, t1, 21
                  and          a5, gp, t3
                  sltiu        t4, s0, -1246
                  sll          t2, s6, s4
                  srai         t6, s1, 8
                  and          sp, a0, s8
                  srli         a4, ra, 10
                  srai         s9, a1, 17
                  addi         t2, t4, -1760
                  sltu         s9, t3, a6
                  sltiu        t6, a5, 18
                  srai         s10, s3, 29
                  lui          t4, 149149
                  srl          a2, s10, t2
                  slt          t0, a1, a0
                  addi         t3, a2, -234
                  sub          s8, tp, a7
                  auipc        a2, 709009
                  xori         a0, tp, -97
                  and          s8, a2, s2
                  srl          t0, t6, a1
                  slli         zero, zero, 23
                  lui          s7, 371951
                  slt          s10, a4, gp
                  lui          t4, 484803
                  or           t4, s10, s3
                  add          s1, s4, s8
                  slti         s11, a4, 784
                  ori          sp, sp, 864
                  addi         gp, gp, 1422
                  or           t4, t6, ra
                  slt          t3, a0, s7
                  xori         s11, t0, -1650
                  srli         gp, s11, 1
                  sra          a3, s7, a1
                  andi         zero, a6, 1113
                  sub          t4, a6, ra
                  auipc        a1, 943937
                  sub          s2, ra, s9
                  srl          s9, a5, t4
                  lui          s5, 831492
                  auipc        s10, 690363
                  sltiu        s4, t1, 1192
                  srai         s11, s0, 16
                  sltu         s7, t3, s3
                  andi         s11, sp, 297
                  xor          s4, t6, s5
                  srl          s3, t5, zero
                  srli         gp, s10, 3
                  slti         a7, gp, 1070
                  srli         t6, t0, 19
                  auipc        gp, 782765
                  xori         ra, s5, -2004
                  sltiu        t0, s4, 285
                  srai         a6, ra, 1
                  srl          t6, s9, t0
                  xori         s5, t3, 1496
                  auipc        s2, 402942
                  sltiu        t6, a0, -1474
                  slt          s9, a3, s8
                  add          s5, t1, tp
                  srai         a1, s10, 30
                  srli         s7, t4, 26
                  xori         ra, t6, 1692
                  sra          a6, s8, a7
                  xori         gp, t5, 310
                  sltu         t0, zero, a1
                  ori          s4, a4, -385
                  sll          s7, a0, a7
                  slt          zero, t3, a2
                  slti         s11, s11, -737
                  sltiu        s9, s11, 917
                  xor          a0, s3, s11
                  sub          a3, t3, s5
                  srl          s11, a0, t1
                  slli         a3, t3, 11
                  ori          a0, zero, -1304
                  andi         t4, s3, -1106
                  xori         t1, tp, -1237
                  or           t2, sp, t5
                  xor          gp, a5, tp
                  or           gp, s4, s9
                  ori          a2, a7, 420
                  andi         s7, a0, -962
                  nop
                  slti         a7, s3, 1547
                  add          gp, a0, s6
                  add          s2, t6, a1
                  srl          a5, s9, t2
                  sra          s7, s9, a3
                  add          a2, s10, t4
                  slli         a0, t4, 8
                  lui          a3, 372591
                  slli         a5, t5, 4
                  auipc        t5, 891217
                  lui          t6, 894902
                  andi         a4, s4, -1630
                  andi         t4, s6, -239
                  srli         a2, zero, 5
                  and          a0, s6, s1
                  srai         s3, t0, 25
                  or           a1, s6, a7
                  sltiu        gp, gp, -1221
                  auipc        a4, 1047724
                  lui          s11, 493526
                  slt          ra, t0, s5
                  andi         t1, s5, 557
                  or           s11, a0, a6
                  sltiu        t1, zero, 1559
                  ori          a7, s8, -311
                  srai         a2, s1, 6
                  sltu         s2, s2, gp
                  sub          zero, gp, t5
                  slt          s5, tp, gp
                  sltu         a6, t5, t6
                  sub          sp, t4, t4
                  auipc        a6, 972316
                  nop
                  srli         a4, s3, 3
                  andi         a1, t6, -802
                  sub          t1, s3, s10
                  srli         a4, t3, 11
                  auipc        a5, 857717
                  nop
                  sltu         s3, a6, a4
                  slli         zero, t2, 9
                  srai         s9, s9, 0
                  slt          a6, sp, a3
                  and          s5, a5, s5
                  xori         a4, a6, 642
                  auipc        a1, 88142
                  slt          s9, t2, t0
                  lui          t6, 1012529
                  sltu         t4, a2, s7
                  nop
                  sltiu        a1, a4, 771
                  and          a3, t4, s7
                  sltiu        t6, a5, -808
                  sltiu        gp, sp, -119
                  sub          a6, a4, a3
                  sltiu        gp, s11, 1647
                  sll          a7, s4, s3
                  srli         a7, zero, 31
                  or           ra, a7, s5
                  lui          s1, 974842
                  xori         s4, a7, 1176
                  sra          s1, a2, zero
                  ori          ra, a6, -94
                  nop
                  sltiu        t6, s6, -796
                  xor          s3, s8, a0
                  srai         s1, s4, 10
                  srli         s3, s3, 15
                  sll          s7, tp, s6
                  lui          t6, 614539
                  srli         t1, a4, 28
                  ori          s2, a1, 289
                  add          a3, a1, sp
                  nop
                  slli         a2, tp, 1
                  nop
                  sub          a3, s6, tp
                  slt          s5, a0, t2
                  slli         s7, sp, 23
                  and          t1, s11, t1
                  slti         s3, a1, -1894
                  srl          s8, t1, a5
                  sltiu        s10, s1, 280
                  addi         s4, s6, 1531
                  sll          t2, t0, s4
                  slti         a2, a5, 1900
                  srl          s8, s5, t0
                  auipc        s7, 556539
                  slli         s5, t5, 9
                  addi         a0, a7, 794
                  xori         a1, t6, -1394
                  xor          s5, gp, sp
                  slti         gp, a0, -1695
                  srai         a1, a1, 15
                  lui          s3, 614789
                  nop
                  sltu         t4, a3, s0
                  and          s3, sp, gp
                  sub          t5, s10, a1
                  nop
                  sub          a4, s1, sp
                  sra          t5, s4, s2
                  sra          s10, tp, a6
                  lui          s8, 1037596
                  sll          s5, s1, s0
                  sltu         a1, s0, a3
                  nop
                  sll          t6, tp, a3
                  lui          s7, 847515
                  or           a2, s10, s8
                  or           a0, a3, s5
                  srl          s5, sp, t4
                  sub          s11, a0, s6
                  srl          zero, a4, s7
                  slti         s9, tp, -635
                  sltiu        a5, a4, 1135
                  sra          t3, t2, s7
                  srai         t0, tp, 22
                  srli         s10, s8, 28
                  lui          a2, 345834
                  slli         s8, t1, 0
                  lui          s7, 840361
                  sltiu        ra, s6, -830
                  or           s10, a3, t5
                  sll          a5, tp, t2
                  add          s4, s1, s3
                  andi         a0, t0, -1298
                  slt          a2, t6, s0
                  xor          s11, s2, s9
                  lui          a6, 1017925
                  and          sp, tp, s5
                  sub          s10, a5, t4
                  xor          s9, t4, sp
                  nop
                  xori         s5, t6, -1467
                  and          s8, s11, s6
                  nop
                  sltiu        s9, t3, 677
                  sub          t6, a0, t4
                  lui          t3, 19624
                  sll          a5, t0, s10
                  addi         s4, t5, -1179
                  sltiu        t2, sp, 261
                  sra          s10, gp, t4
                  addi         s10, s3, 1377
                  srai         ra, a7, 25
                  sra          t0, t4, t6
                  slli         sp, a3, 22
                  andi         s2, gp, 434
                  srl          a0, s4, s3
                  sltiu        t2, s3, -85
                  sltiu        s8, s10, -813
                  xori         t5, t6, 1794
                  and          s1, a7, s3
                  add          a5, a0, a1
                  slt          s5, a0, t2
                  li           a0, 0x8556b642 #start riscv_int_numeric_corner_stream_2
                  li           gp, 0x0
                  li           t0, 0x80000000
                  li           sp, 0xbf31330d
                  li           a2, 0x80000000
                  li           s8, 0xffffffff
                  li           a1, 0x80000000
                  li           ra, 0x0
                  li           a3, 0x1eda2e62
                  li           t1, 0xffffffff
                  sub          a3, a2, a1
                  auipc        s8, 68182
                  nop
                  addi         sp, t1, 268
                  nop
                  addi         a1, a1, -1394
                  sub          sp, s8, gp
                  lui          gp, 663874
                  addi         gp, a3, 53
                  lui          sp, 671046
                  add          t0, s8, a0
                  addi         t0, gp, 573
                  lui          s8, 801108
                  auipc        ra, 687706
                  nop #end riscv_int_numeric_corner_stream_2
                  sll          t4, s7, t1
                  sll          a3, s5, tp
                  xor          t5, a4, t4
                  slli         s11, s7, 3
                  ori          a6, a3, 1015
                  slti         s5, a6, 712
                  slti         s2, a5, 793
                  slt          s9, s7, s11
                  ori          s2, s11, 1255
                  lui          t4, 594887
                  sltu         s5, t3, s3
                  ori          t6, s11, 1650
                  slli         sp, s10, 29
                  add          a0, s8, s6
                  sll          t3, s11, s10
                  and          t6, a4, a2
                  slli         sp, a3, 15
                  srli         gp, t4, 28
                  nop
                  xori         a2, tp, 1008
                  slt          t3, a3, t4
                  sra          s5, a1, s10
                  lui          t1, 66091
                  sub          t5, s6, t2
                  sub          t3, s4, a3
                  auipc        gp, 19966
                  sltiu        s5, a2, 997
                  xor          a3, s5, s0
                  andi         s2, s4, 1841
                  sra          s11, a1, s3
                  srl          zero, t5, a3
                  addi         s10, a4, 1940
                  slt          t4, t3, zero
                  slti         ra, t1, 482
                  sll          s3, zero, a2
                  and          t1, t1, s6
                  xor          t6, zero, s6
                  sltiu        s5, a2, 472
                  sltu         t0, t4, a3
                  addi         t5, t3, -1527
                  ori          a6, s6, -506
                  slli         s8, a2, 31
                  or           a0, a6, s8
                  xori         a3, tp, 1335
                  lui          t3, 624453
                  auipc        s11, 612146
                  srai         a6, gp, 0
                  sltiu        t1, s2, -353
                  and          t0, sp, s3
                  add          t3, s6, t0
                  slti         s2, t6, -324
                  sltu         t0, t4, a7
                  srli         s4, a1, 13
                  andi         s2, tp, 2039
                  addi         a6, t2, 1527
                  or           t4, s10, t6
                  auipc        sp, 100906
                  and          t2, s5, s7
                  slli         ra, s8, 11
                  sub          t1, sp, t6
                  sltiu        t5, a0, 1423
                  add          sp, t0, s11
                  sll          sp, tp, s4
                  sub          zero, s9, t0
                  slti         a5, s8, -1072
                  sll          s3, t0, s3
                  slti         a5, s1, -1476
                  sltiu        s11, s1, -963
                  srl          s9, a0, s9
                  and          s8, s7, s7
                  ori          t3, a4, -549
                  sltiu        sp, a0, 1009
                  sltu         t0, t3, gp
                  srl          s8, t5, s7
                  addi         t2, t5, -1575
                  lui          a0, 524317
                  andi         t4, t6, -178
                  auipc        s1, 510346
                  srli         a1, a6, 9
                  sltu         s1, t0, s5
                  sll          s1, s9, tp
                  addi         s1, a0, -1701
                  slt          a7, t3, s7
                  nop
                  sltiu        s7, a0, 376
                  sltiu        t1, t5, 1344
                  add          s4, s7, a7
                  sltu         s8, s1, t0
                  srl          t2, t2, t6
                  sltu         t3, a5, sp
                  xor          zero, a4, s0
                  add          s1, a1, a2
                  sltu         gp, a0, t0
                  slli         t3, s8, 11
                  ori          t2, s11, -1664
                  xor          t3, s5, a2
                  ori          s7, gp, 1977
                  sra          a7, s3, a2
                  and          s7, t3, s6
                  sub          a1, t0, t3
                  slt          zero, a1, a6
                  sra          t0, zero, s7
                  sltu         gp, t6, s7
                  srli         t2, a6, 18
                  addi         s7, s1, 873
                  lui          t0, 986855
                  slti         t1, s8, -1181
                  xor          a1, t6, a7
                  srai         t2, s5, 13
                  ori          t1, s9, -644
                  srli         ra, t6, 21
                  auipc        a5, 280068
                  lui          t4, 48770
                  srl          sp, gp, s1
                  srl          s9, a1, s1
                  nop
                  sub          gp, t0, t6
                  srl          t5, a2, gp
                  srai         t5, t1, 27
                  or           s4, a7, s8
                  and          t6, s4, a4
                  srl          s2, a4, s7
                  lui          ra, 344502
                  ori          a7, gp, 2007
                  sltu         s3, t6, t3
                  sra          s10, s2, gp
                  xor          ra, s8, s9
                  addi         s9, t0, -1856
                  lui          a3, 1029658
                  slt          s10, a1, s0
                  srai         t3, t4, 27
                  srli         t0, tp, 1
                  ori          t4, sp, -156
                  sra          s11, s10, s1
                  xor          t4, t1, t2
                  addi         s9, t0, -1343
                  andi         t2, zero, 554
                  lui          t2, 474413
                  srai         ra, t2, 21
                  slli         a2, t6, 3
                  auipc        s3, 688025
                  sltiu        s3, s8, -1788
                  or           t2, a1, s0
                  addi         gp, t4, 1741
                  nop
                  slli         s2, zero, 13
                  slt          s5, a2, a7
                  sra          t3, a7, a6
                  srli         t3, a6, 17
                  slti         a3, s11, -469
                  or           s9, a5, s6
                  sra          s8, t2, s10
                  addi         s3, s11, -255
                  sltiu        t1, a4, 813
                  or           t2, s4, s1
                  add          s4, tp, sp
                  srai         s1, s3, 19
                  xor          gp, s2, s4
                  and          a4, s0, a1
                  or           s8, t5, sp
                  andi         s8, s9, 241
                  andi         s8, t6, 1172
                  srl          s7, t3, gp
                  or           s9, t2, a1
                  sll          t2, a6, t0
                  xori         a1, gp, -1140
                  sltiu        sp, a3, 698
                  ori          a6, a0, 1819
                  xor          s10, t2, a1
                  sltu         s3, a5, t1
                  addi         s1, s1, -1745
                  auipc        s3, 946039
                  xori         s4, a4, -54
                  and          s9, s11, a2
                  ori          s7, a4, -1396
                  xori         t3, s5, 115
                  sra          sp, t2, t4
                  sltiu        a2, s8, 1184
                  sltiu        t1, a0, 1248
                  sub          s9, t2, tp
                  srli         t2, t4, 9
                  xori         t3, gp, -1890
                  add          t1, s1, s2
                  xori         t2, sp, -931
                  or           t5, tp, a0
                  sll          s10, s4, s3
                  slt          a4, a2, t5
                  ori          a0, zero, 1841
                  xori         a6, s6, -1404
                  andi         gp, gp, 123
                  andi         t1, s9, -1887
                  slt          a6, t1, s2
                  srl          s10, s0, s2
                  sltiu        t5, s3, 647
                  slli         a4, gp, 20
                  addi         s9, a4, -110
                  addi         a6, s1, 111
                  xor          a7, t6, a4
                  srai         s1, s11, 18
                  and          s9, t2, t1
                  nop
                  add          s8, s5, sp
                  lui          t0, 321814
                  slt          s10, s10, t4
                  srai         ra, s3, 26
                  xor          s2, s2, a6
                  srai         s11, a2, 27
                  sltiu        t5, t2, -1071
                  srli         s11, a2, 31
                  auipc        s2, 41249
                  sltiu        s8, t3, 1056
                  sll          ra, a4, sp
                  sra          s2, s9, zero
                  sltu         a6, gp, t2
                  slli         sp, a2, 29
                  add          s10, t1, t2
                  andi         t5, s6, -782
                  sll          a5, s8, a4
                  xor          t1, t6, a7
                  xori         a4, s7, 75
                  srli         zero, s1, 18
                  slti         a6, a5, 1464
                  srai         s2, a3, 22
                  andi         s5, s6, 487
                  srl          s8, a1, a1
                  slli         s2, s8, 12
                  lui          a2, 670840
                  slli         t1, s5, 4
                  addi         a0, a7, -570
                  sra          s4, zero, t0
                  xor          t4, t5, zero
                  nop
                  or           s1, sp, a4
                  xori         gp, t1, -200
                  ori          s9, a1, -991
                  auipc        s9, 639509
                  andi         t6, s5, -1413
                  sra          t2, s8, zero
                  slli         t3, a0, 22
                  xori         zero, a3, 1748
                  nop
                  nop
                  sra          s8, t2, a5
                  sll          t1, s2, a0
                  slti         s5, a2, -651
                  slli         t2, a0, 11
                  or           s9, a3, zero
                  srl          t5, zero, a1
                  or           gp, s6, a7
                  srl          s4, t0, t0
                  sra          s9, tp, s6
                  ori          zero, a7, 183
                  sltu         s1, s8, tp
                  xor          s10, t5, s5
                  addi         a7, a6, -897
                  auipc        gp, 233939
                  srl          t6, t5, t5
                  srl          s2, tp, a7
                  xori         s7, t1, 1494
                  ori          a6, tp, -477
                  lui          t6, 821067
                  auipc        a2, 887024
                  or           s11, tp, tp
                  addi         a1, s4, -335
                  slti         a2, a0, 1656
                  andi         s7, ra, -1917
                  add          s4, s1, gp
                  xori         s7, t4, 2040
                  sra          a7, a3, t3
                  lui          s9, 1038540
                  xori         ra, t0, 182
                  sra          s5, t0, s7
                  sra          t4, t1, a1
                  sll          s9, ra, s10
                  slti         a1, tp, 544
                  xori         s7, a5, -1230
                  or           s2, t2, a3
                  xori         t6, a7, -1440
                  lui          a0, 344085
                  and          gp, s7, t1
                  srl          s3, s9, s6
                  srl          s2, s2, s4
                  addi         t1, s0, 649
                  srl          s3, s7, s0
                  sltiu        t6, s5, 699
                  srai         t3, s1, 3
                  add          a4, gp, t2
                  sltu         ra, zero, t1
                  sltu         s3, ra, t2
                  sra          t0, sp, t0
                  auipc        a7, 45213
                  sra          ra, a6, a7
                  addi         gp, t3, -1266
                  slt          s5, s11, a6
                  slti         gp, s4, 481
                  add          a5, s3, t2
                  ori          s10, s0, 1357
                  sll          s10, a3, s9
                  sll          s8, t2, s3
                  slt          a3, t1, sp
                  auipc        t3, 301030
                  slti         s11, s0, 504
                  addi         t3, s7, -1394
                  srl          a1, s4, s1
                  andi         a6, t2, 1197
                  nop
                  add          t3, a3, s2
                  andi         t4, s7, -125
                  srl          a5, a2, a0
                  sltiu        a7, s5, -1239
                  andi         a5, a2, 1455
                  xor          t0, a6, s8
                  nop
                  or           a3, t6, ra
                  auipc        a0, 522802
                  slt          s3, zero, t0
                  slti         s9, t3, -994
                  srai         s1, t0, 10
                  lui          a0, 1009568
                  nop
                  sltiu        zero, s5, -1547
                  sra          t0, zero, s4
                  srli         s7, s3, 5
                  xori         s9, a1, 50
                  sltu         t4, s7, s9
                  sub          zero, s11, a0
                  srli         a3, t3, 24
                  nop
                  sltu         t4, t3, t2
                  ori          s4, s9, 761
                  auipc        s8, 232013
                  or           t5, t4, a2
                  xori         s3, a3, -1407
                  slt          gp, s8, s8
                  srai         a1, a3, 26
                  and          a0, a6, s2
                  srai         a4, sp, 28
                  xori         t2, s0, -2006
                  ori          t6, t2, -1748
                  li           t2, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           t0, 0xa7ed8a46
                  li           t1, 0x80000000
                  li           s4, 0x80000000
                  li           a0, 0x0
                  li           sp, 0x80000000
                  li           a3, 0x0
                  li           s8, 0x0
                  li           gp, 0x0
                  li           s5, 0x0
                  addi         t2, s5, 289
                  nop
                  add          s8, s4, t0
                  auipc        a0, 562559
                  auipc        s5, 959450
                  nop
                  add          a3, gp, t2
                  lui          t2, 647764
                  nop
                  addi         s4, t2, -1727
                  add          t1, sp, s4
                  add          s4, a0, t0
                  sub          a0, gp, a0
                  add          t1, a3, sp
                  auipc        a3, 468189 #end riscv_int_numeric_corner_stream_15
                  lui          t0, 720146
                  ori          s9, a4, -1507
                  srli         s11, t5, 0
                  srai         a1, s6, 20
                  srl          s8, a5, a0
                  slt          a1, s4, tp
                  sub          t6, s5, s11
                  or           a4, s11, t2
                  slti         s8, s2, 1021
                  srl          a2, t6, s10
                  lui          gp, 30173
                  and          a0, gp, a0
                  sll          s3, s9, ra
                  add          a1, s8, zero
                  sltiu        s1, zero, -36
                  or           gp, s6, a4
                  xor          s7, t6, a3
                  slt          s8, a7, a4
                  sll          s2, t3, s5
                  and          zero, t0, s2
                  auipc        s2, 696111
                  srli         a3, s11, 18
                  xor          t0, ra, a0
                  ori          s1, t6, 253
                  slti         s5, s3, 1941
                  srai         a2, s6, 1
                  or           s3, s2, sp
                  slli         t4, t0, 17
                  slli         a4, s2, 4
                  sub          s5, sp, ra
                  sltiu        s5, a0, -2047
                  sll          s11, a1, s9
                  auipc        sp, 878231
                  srai         a0, a3, 26
                  nop
                  slli         a5, a7, 3
                  xori         t1, s7, -198
                  andi         t2, tp, -670
                  addi         t0, a5, 215
                  and          s9, t4, a1
                  sub          t4, a5, zero
                  auipc        a7, 991570
                  sub          sp, a4, s4
                  srai         s7, t4, 6
                  add          s3, s1, s10
                  srai         a6, a5, 3
                  addi         s9, a2, -1004
                  srli         a7, s9, 6
                  nop
                  slt          t0, s7, s4
                  nop
                  srai         t4, a4, 20
                  nop
                  sll          s5, t0, a1
                  sra          gp, s0, zero
                  xor          gp, a0, t3
                  xor          gp, ra, sp
                  addi         t6, a2, 200
                  slti         zero, s2, -1995
                  slti         a3, t6, -110
                  slt          a0, t1, s6
                  srl          sp, t1, s2
                  add          t3, s2, s0
                  slt          s7, s10, s1
                  sltiu        s4, s8, -2018
                  add          a6, a0, s0
                  and          s2, t4, gp
                  srai         s3, s2, 17
                  slli         t4, a3, 15
                  lui          s9, 395176
                  srai         a7, s11, 25
                  xor          a2, s11, gp
                  srl          a6, a2, s8
                  slli         a0, s4, 10
                  lui          t5, 508515
                  slti         t2, s6, -1326
                  add          a4, t6, s4
                  xori         s9, sp, 1977
                  srl          t0, t1, t5
                  nop
                  xor          s10, s4, gp
                  sra          s10, zero, tp
                  auipc        a4, 274279
                  and          s9, t4, s2
                  andi         s1, t4, 585
                  sra          ra, t2, s10
                  sll          a1, a7, t0
                  add          ra, a6, s2
                  sra          a6, a4, t4
                  sll          s2, t2, zero
                  and          s5, s3, a2
                  nop
                  srli         s7, s7, 7
                  srl          t2, t1, s2
                  srli         a4, s9, 14
                  and          s5, sp, a0
                  sltu         s8, t5, s11
                  xor          t2, s2, s7
                  nop
                  sltu         a7, a3, a4
                  and          s4, t0, t6
                  ori          a5, sp, -1011
                  xor          a3, zero, a2
                  xor          a0, s10, s11
                  ori          a7, s5, -703
                  or           t3, t6, s9
                  slli         a7, a2, 3
                  srl          s1, t5, s8
                  slli         s5, s0, 24
                  auipc        s10, 145915
                  slti         a2, s4, -172
                  srai         a4, s11, 28
                  addi         a7, ra, 99
                  slt          a0, t5, a1
                  sll          s3, s9, t3
                  addi         s10, t0, -836
                  sltiu        a0, t1, -1
                  or           s10, sp, a2
                  nop
                  and          gp, s1, s1
                  and          zero, a3, s9
                  andi         s1, t4, -617
                  srli         a0, ra, 9
                  ori          s8, a3, -189
                  sra          t4, a2, s4
                  srli         a6, s1, 3
                  slli         sp, s4, 7
                  slli         a7, s1, 27
                  sltu         zero, t1, s7
                  slli         gp, s9, 26
                  xori         a1, t3, -1543
                  sra          a2, gp, s11
                  srli         a4, t2, 1
                  add          t0, t6, s4
                  slti         s7, s8, 647
                  srl          t6, a3, t6
                  srl          t6, a5, s5
                  sra          s7, s6, ra
                  srl          t3, t4, a1
                  srai         s10, s7, 16
                  ori          s2, t4, 76
                  sra          a1, s9, a5
                  nop
                  andi         a5, s7, -1098
                  sll          s5, a5, gp
                  sltu         t0, s7, sp
                  sub          s7, s11, tp
                  sll          s4, s1, t1
                  sub          t1, s4, a1
                  slli         t0, t1, 23
                  sll          a0, t6, sp
                  auipc        s2, 334660
                  sltiu        a3, a7, 138
                  ori          t0, s8, 1279
                  sll          s11, s10, a1
                  sub          zero, s7, t3
                  addi         t0, a4, -1185
                  andi         t1, s1, -1214
                  lui          a0, 565941
                  sltu         a6, s6, s3
                  nop
                  sll          sp, s7, t6
                  slli         s2, a4, 9
                  sltiu        s9, t6, 1933
                  nop
                  addi         s2, s3, -590
                  or           a1, a5, s7
                  addi         s11, s1, -779
                  sra          t0, a7, a1
                  sltu         s9, a6, a4
                  slt          a7, t6, a5
                  sltiu        a1, t2, -1402
                  sltu         s11, s5, ra
                  xor          t0, s9, s5
                  slli         s4, a6, 12
                  sltu         a1, t2, zero
                  srl          s8, t1, s0
                  slli         a3, a6, 30
                  addi         a2, s5, -847
                  srli         t4, s10, 19
                  slt          s8, a6, ra
                  auipc        a3, 52873
                  slti         t3, s7, 883
                  slti         a2, s6, -438
                  sltu         gp, t3, s9
                  or           t6, t2, t2
                  srl          a6, s6, s2
                  auipc        a3, 636634
                  sltu         sp, t5, s4
                  sltu         t2, s10, t5
                  add          a2, t0, a5
                  sub          a0, a0, s1
                  slt          a7, s5, s9
                  and          t2, t3, t6
                  or           t5, sp, s10
                  nop
                  srli         zero, s0, 11
                  and          sp, t5, ra
                  and          t5, a1, s3
                  sra          gp, a2, t1
                  xor          gp, gp, tp
                  srai         a1, a3, 29
                  and          ra, a5, s2
                  andi         a4, s1, -1990
                  xor          a4, t4, a7
                  ori          t5, t4, -1245
                  srli         a2, t4, 30
                  slti         s5, tp, 266
                  nop
                  xori         a3, zero, 533
                  sltiu        a3, t1, 429
                  sra          s8, t0, t1
                  slt          a6, s9, a7
                  sltiu        s10, s6, -196
                  nop
                  slt          s3, a2, sp
                  sub          a0, a1, zero
                  addi         gp, ra, -1397
                  slt          sp, a3, s11
                  and          s1, tp, s10
                  sub          s2, s9, s5
                  sll          t6, s0, a1
                  nop
                  andi         s3, t1, -256
                  add          a7, t5, a5
                  add          sp, a4, t1
                  addi         a5, s11, -33
                  add          a6, s6, t4
                  sltiu        t5, s8, -1837
                  srl          a4, a5, t5
                  and          a7, s1, s3
                  andi         t4, s4, -969
                  nop
                  nop
                  nop
                  xori         a1, s8, 1107
                  or           t2, s1, gp
                  nop
                  ori          sp, tp, -1945
                  slli         a1, tp, 10
                  sra          t2, t3, t0
                  srl          a1, a0, s4
                  and          a6, s9, ra
                  xor          a6, gp, s9
                  sltu         a3, t6, s2
                  ori          s8, tp, 458
                  srl          s8, s2, s8
                  sltu         s3, t6, a1
                  xori         ra, s6, -1226
                  sltu         a2, s11, t0
                  srli         t2, s4, 16
                  andi         s1, s9, 1111
                  srl          s7, s0, sp
                  xor          a6, a1, ra
                  addi         ra, s11, 297
                  andi         a4, s8, 958
                  ori          a3, a0, -376
                  nop
                  addi         a3, s0, -1751
                  auipc        ra, 706874
                  srai         gp, s11, 5
                  sll          a3, a7, t0
                  sll          t5, zero, zero
                  sra          s4, s5, tp
                  ori          s3, s7, -1074
                  sltiu        t2, t2, -1996
                  addi         t5, s7, 1668
                  andi         a2, a2, -1329
                  andi         a5, s6, -1936
                  and          t1, s4, a6
                  slti         a7, s2, -1303
                  srai         s3, t6, 3
                  srli         s3, t1, 0
                  or           s9, s11, s2
                  xor          a5, s3, s11
                  srl          s4, s3, t3
                  auipc        a6, 902543
                  xor          s2, a6, t3
                  addi         s10, a6, 23
                  sltu         s5, s6, a6
                  sltiu        t5, s2, 475
                  lui          s8, 133227
                  slti         t6, tp, 1168
                  add          s9, t5, zero
                  addi         s9, s0, 657
                  auipc        s7, 778776
                  srai         a0, tp, 14
                  sra          s8, s2, tp
                  lui          ra, 752176
                  or           sp, s6, s5
                  andi         s8, a0, 264
                  addi         t0, a6, 1223
                  sltu         t5, a2, t3
                  andi         a7, a0, -688
                  slti         s7, ra, 527
                  srl          s10, a0, t5
                  ori          a2, a7, 1574
                  andi         t4, s1, -643
                  or           s2, t2, t6
                  addi         t6, zero, 568
                  srai         t1, s1, 10
                  sltiu        s4, s8, -960
                  sltiu        s10, s9, 550
                  srli         ra, a7, 4
                  lui          gp, 674422
                  sra          zero, s0, a7
                  xori         s5, s9, 743
                  sltu         a0, s5, t2
                  addi         a4, s6, 1354
                  srl          s3, s3, s1
                  addi         a2, t3, 132
                  srl          s8, a1, a2
                  slti         t0, t0, -693
                  nop
                  auipc        zero, 517508
                  lui          a3, 711331
                  slti         s11, a3, -1577
                  slt          s2, ra, s8
                  sltiu        t3, gp, -1052
                  add          a3, s0, a0
                  sltiu        s9, t3, -1995
                  srai         t3, a7, 2
                  andi         gp, a7, -715
                  sll          zero, s9, s4
                  slli         t5, t0, 23
                  sltu         t1, a5, t3
                  slli         a4, tp, 29
                  srl          s4, a3, tp
                  add          t0, a0, s6
                  sltu         s7, s8, gp
                  nop
                  and          s4, s2, a5
                  slt          gp, s3, s7
                  xori         a5, sp, -201
                  nop
                  xor          t1, s1, s3
                  sltiu        ra, zero, 963
                  addi         a3, t1, 1912
                  xor          s2, t1, s3
                  srl          a7, s7, a4
                  sltu         a7, zero, s0
                  slli         t2, ra, 27
                  xor          t5, a7, t1
                  sltiu        t3, a5, 656
                  sltu         t3, t5, t3
                  ori          s7, sp, -716
                  slti         s11, a4, 83
                  sltiu        a1, t3, -1863
                  sll          a0, t3, s7
                  sltiu        s4, s10, -811
                  lui          s4, 287473
                  add          a4, s8, a5
                  auipc        sp, 930755
                  xori         a6, s8, 1941
                  slt          ra, a7, a6
                  nop
                  srl          zero, a3, zero
                  slli         a6, a0, 22
                  slli         a0, s6, 7
                  addi         t5, s2, 602
                  or           t1, gp, ra
                  slt          s10, t0, a7
                  andi         t4, a0, 726
                  sra          a3, t2, s3
                  sra          a7, s4, s6
                  srai         a5, s11, 1
                  srai         s4, s11, 30
                  slt          s9, t5, a1
                  srli         a2, s5, 9
                  sll          t4, a4, s2
                  or           a6, a0, t3
                  srl          s2, a7, s9
                  auipc        t1, 367165
                  srl          a5, t2, gp
                  xori         s3, s6, 2012
                  ori          a2, t4, 738
                  slli         a0, a0, 25
                  li           s2, 0xffffffff #start riscv_int_numeric_corner_stream_18
                  li           a0, 0x80000000
                  li           t5, 0x0
                  li           a7, 0x0
                  li           a6, 0x0
                  li           t1, 0x0
                  li           t0, 0x21349b13
                  li           t3, 0x0
                  li           a5, 0xffffffff
                  li           sp, 0xb26aad3a
                  auipc        a6, 87307
                  lui          t0, 765531
                  sub          sp, a7, s2
                  lui          a5, 534020
                  nop
                  auipc        a6, 771126
                  addi         t5, sp, -734
                  sub          a6, t3, t5
                  add          t5, a6, t5
                  sub          a7, t1, a0
                  addi         a7, t0, -1030
                  sub          s2, a5, a0
                  nop
                  lui          s2, 280390
                  lui          a0, 88814
                  lui          s2, 968347
                  sub          s2, t0, t1
                  addi         a7, t1, -801
                  nop
                  lui          sp, 433799
                  nop
                  auipc        t1, 385757
                  nop
                  sub          a0, sp, sp
                  addi         t5, a6, -595
                  add          t3, a6, a0
                  addi         s2, a5, 30 #end riscv_int_numeric_corner_stream_18
                  slti         ra, a6, -74
                  sltu         s4, a5, t3
                  sra          a2, sp, ra
                  or           a6, tp, a3
                  or           s10, t5, a5
                  slti         ra, t3, 445
                  sltiu        a2, s4, 1023
                  sra          t0, s7, a0
                  ori          sp, s1, 1158
                  or           t0, s10, t5
                  sra          s3, s0, s8
                  sra          s1, s9, a3
                  srl          a7, t3, s8
                  sub          s3, t1, t6
                  sub          a6, a4, gp
                  sll          t4, t5, s6
                  sub          a0, s0, a7
                  and          t0, tp, a6
                  andi         a0, ra, 672
                  xor          t5, zero, tp
                  slli         t3, gp, 17
                  sltu         t5, s1, a1
                  sll          ra, s11, s9
                  srli         ra, s6, 26
                  slti         s11, a2, 604
                  srai         s9, a3, 22
                  auipc        gp, 748946
                  sll          s7, s3, t3
                  xori         a1, a2, 254
                  lui          t2, 893942
                  slti         s10, gp, -266
                  ori          t2, s9, -528
                  auipc        t4, 448745
                  and          t3, s3, s9
                  srai         gp, a3, 20
                  xor          zero, sp, t1
                  andi         s8, ra, -1216
                  ori          t2, t2, -1631
                  sub          t4, t0, t3
                  ori          a4, zero, -1296
                  lui          t6, 330756
                  xori         s1, s11, 787
                  and          s5, a3, gp
                  srai         s3, s5, 8
                  sub          s5, t3, s5
                  lui          s9, 138582
                  sll          s1, t1, gp
                  srli         a2, zero, 3
                  slti         a1, t5, 1799
                  auipc        gp, 468929
                  slt          a5, gp, a5
                  nop
                  srl          s9, s11, s2
                  slti         s7, s2, 1285
                  slti         a1, s1, 84
                  xori         a6, a2, 208
                  and          a2, t6, a1
                  srai         s2, s0, 21
                  nop
                  add          t5, s4, tp
                  sltiu        sp, s9, -76
                  sltiu        s10, a4, -1903
                  sra          s5, t4, a4
                  nop
                  auipc        a3, 78317
                  srli         s1, t3, 14
                  slli         sp, a2, 16
                  addi         gp, a0, -1895
                  nop
                  srl          s3, s1, s0
                  srai         s11, s1, 26
                  nop
                  andi         a5, t4, -712
                  sll          s9, tp, t4
                  sll          t5, s5, sp
                  srai         a5, tp, 9
                  xor          s2, s5, s0
                  sltu         a2, t6, s3
                  sra          t6, s9, sp
                  srli         s10, s10, 26
                  slt          ra, s4, t6
                  or           t5, t2, a3
                  and          s8, a0, a5
                  xori         a6, a5, -1254
                  sra          a5, a3, t6
                  sub          a3, tp, s3
                  nop
                  sltiu        a1, s3, 735
                  srl          s5, s0, a5
                  auipc        a1, 300769
                  ori          s2, s5, 1808
                  xor          a7, t0, t5
                  andi         t6, a2, 1036
                  slti         s3, s1, -1707
                  sll          a6, a0, s5
                  addi         s1, t6, -288
                  sub          s2, t3, t2
                  xori         s5, s4, -689
                  sll          zero, a6, s4
                  sub          s7, s2, s2
                  and          zero, s2, a1
                  nop
                  or           a7, s6, s0
                  add          a0, a1, s7
                  srl          ra, t5, s2
                  add          t1, t0, s8
                  nop
                  or           s10, a7, sp
                  sub          s8, a4, t5
                  srli         s8, t2, 0
                  xor          t5, t2, a7
                  and          gp, a2, a6
                  slli         a5, a2, 6
                  xor          t6, a1, s3
                  sltiu        t6, s9, 1996
                  and          a3, s7, s7
                  addi         t4, gp, 1553
                  add          ra, a4, s2
                  ori          t2, a6, -158
                  add          t2, a3, t1
                  add          t2, s9, t0
                  slt          s9, s1, ra
                  xor          s5, zero, s0
                  slli         a1, t6, 17
                  xor          a1, gp, s2
                  auipc        t5, 801899
                  sltiu        a2, t1, -1645
                  ori          t1, a5, 1873
                  srai         a0, s11, 4
                  sltu         t5, zero, s7
                  xori         a4, t6, -2029
                  addi         t6, a5, -275
                  add          s8, t0, t0
                  ori          t4, t3, 1904
                  xor          a6, s11, s8
                  add          a6, t1, a4
                  nop
                  andi         t5, s2, 1227
                  ori          s9, t5, -1641
                  add          a0, s7, s8
                  slti         t3, s1, -265
                  nop
                  add          a4, s2, gp
                  xor          s3, zero, t1
                  addi         s1, s4, 1629
                  addi         a5, s7, -1174
                  or           t6, s5, s8
                  auipc        s5, 557347
                  sub          s11, s10, ra
                  sltu         t4, a1, t4
                  auipc        t5, 358759
                  and          a6, s3, zero
                  srai         a6, a3, 6
                  auipc        t3, 116651
                  slti         a5, t0, -156
                  sra          s8, s11, a2
                  ori          t3, s4, -1437
                  sltiu        a2, s6, -584
                  sra          a2, sp, a0
                  srl          ra, t0, t6
                  and          s9, s8, s8
                  addi         a5, s3, 764
                  andi         a4, t2, 1382
                  xori         t0, a6, -383
                  xori         s3, ra, -1682
                  slli         zero, s4, 26
                  xori         t4, s8, -1030
                  xor          a0, s3, s6
                  andi         t6, tp, 608
                  sltu         t1, t2, a4
                  slli         s2, t3, 21
                  sra          s9, s4, ra
                  srli         s5, s10, 8
                  ori          ra, t3, 1532
                  add          a5, s8, a3
                  sltu         sp, s10, a0
                  slti         t2, t0, -1096
                  sll          a4, t2, a0
                  srl          s10, s8, zero
                  sltu         t0, t4, zero
                  sltu         t1, s4, a3
                  nop
                  sll          t0, a4, a3
                  sltiu        zero, a4, -1299
                  sltiu        t0, a2, 1289
                  xori         s8, s11, -602
                  sra          t1, s4, a3
                  add          t1, a5, a7
                  and          s10, s0, a3
                  auipc        t6, 99182
                  and          t2, gp, s10
                  sub          t2, t5, t0
                  ori          s5, t3, -589
                  sub          s2, a5, s9
                  sltu         t6, zero, s4
                  xor          t0, s6, s1
                  addi         a2, s4, 1246
                  slli         s10, t1, 17
                  slt          s9, s10, t5
                  and          a2, s7, a4
                  lui          a2, 939954
                  slli         s11, tp, 29
                  sltiu        a0, t3, -758
                  and          s3, s6, a1
                  slti         a7, a0, 1828
                  xor          zero, ra, tp
                  sll          t5, s3, s5
                  and          a2, a3, t6
                  sll          a0, a0, a5
                  srai         s1, sp, 27
                  sll          a6, s7, s5
                  sra          t0, ra, ra
                  auipc        a5, 645466
                  slt          s7, t5, s1
                  or           s5, a6, s0
                  andi         s4, t0, -466
                  and          s11, t5, s10
                  sltu         t6, s4, s11
                  addi         s2, zero, -2018
                  xor          t4, s11, s9
                  or           s11, s8, t6
                  add          a2, t1, t0
                  xor          a7, gp, t2
                  slli         t1, a4, 23
                  sltiu        gp, gp, -819
                  andi         s3, t2, 939
                  srai         t3, a1, 23
                  sltiu        a4, s9, -59
                  add          a3, s3, s6
                  nop
                  sra          a0, a3, ra
                  nop
                  slli         gp, a5, 22
                  auipc        s5, 446069
                  auipc        a4, 168455
                  slli         a3, t2, 30
                  sll          s2, a3, sp
                  srai         t0, s7, 9
                  auipc        a5, 602226
                  ori          s2, s2, 1854
                  sra          s7, s11, s11
                  slt          s10, t6, a1
                  auipc        s9, 677412
                  or           s7, t0, s1
                  sltu         a7, s7, t5
                  sltu         gp, a2, sp
                  addi         a7, t4, -1746
                  auipc        t3, 149545
                  ori          s3, a1, 1912
                  srli         s9, gp, 11
                  slli         ra, t5, 22
                  sltiu        s2, s0, 2010
                  srli         t3, s6, 26
                  sra          s10, s6, s0
                  addi         s1, a6, 1877
                  auipc        s4, 587885
                  auipc        s2, 644219
                  or           sp, a3, a1
                  and          t1, s1, a2
                  addi         zero, t6, 1995
                  sll          ra, s8, a7
                  srl          a7, gp, s7
                  ori          s10, s6, -333
                  xor          t0, s7, a0
                  and          sp, s4, s6
                  nop
                  and          sp, a0, t1
                  lui          s7, 598921
                  auipc        s11, 338681
                  auipc        a4, 924790
                  slli         t5, sp, 18
                  xori         s10, s11, -1556
                  andi         a4, s3, 970
                  or           a1, s2, s2
                  nop
                  sll          sp, t0, s8
                  add          a5, s10, s10
                  srl          s11, s1, s11
                  srl          a6, s2, s10
                  slt          a5, t6, t2
                  slt          s8, s11, tp
                  andi         s7, s2, -976
                  sll          t5, ra, s7
                  addi         a4, a6, 990
                  sub          t1, s4, tp
                  slt          s4, t6, a7
                  sll          a6, s9, s2
                  slli         a6, s7, 7
                  sub          a5, t3, s5
                  slli         t6, a3, 9
                  xori         a4, a2, 723
                  or           t0, s0, s1
                  xor          s4, s8, ra
                  auipc        a7, 684341
                  or           s2, a6, a5
                  srli         a6, s10, 28
                  slli         gp, s1, 15
                  auipc        s10, 100175
                  auipc        s7, 18937
                  sra          t0, gp, s0
                  slti         a7, t0, -1150
                  sltiu        t6, s5, -935
                  slli         a0, tp, 9
                  addi         a7, s7, 691
                  add          s5, t5, a0
                  and          t6, a6, t5
                  slti         s11, t4, -257
                  slti         s10, a6, -34
                  add          s7, a2, s8
                  slt          t2, s3, s10
                  sltiu        s1, a2, -272
                  slti         t4, a3, -1541
                  auipc        gp, 60449
                  slt          s3, a0, a1
                  sll          s4, s10, s11
                  or           a1, s6, s11
                  lui          s3, 474549
                  xor          gp, s3, t2
                  addi         a2, s9, 1308
                  ori          t6, t4, 816
                  andi         gp, s11, -951
                  nop
                  auipc        t2, 223684
                  slti         zero, gp, -313
                  nop
                  addi         t2, t2, 2038
                  xor          t4, a2, s7
                  slli         s9, s9, 10
                  andi         s2, t4, -803
                  ori          a2, a0, -1831
                  or           gp, a3, a2
                  auipc        s3, 932048
                  sra          t4, t0, s7
                  sltiu        gp, s7, -1727
                  xori         s9, t2, -462
                  sub          a6, a0, s5
                  add          s7, s9, sp
                  srai         gp, s3, 23
                  xori         s7, a5, 991
                  and          s9, t1, s10
                  slti         a4, t6, -916
                  sra          gp, s8, s1
                  sra          zero, a5, gp
                  sub          s10, a2, a0
                  sltu         s4, a7, s8
                  nop
                  or           a0, a7, a3
                  addi         s9, s8, 871
                  xor          sp, gp, s6
                  ori          t1, s4, -71
                  slti         s3, a5, -629
                  slt          s2, s8, a6
                  add          t3, s4, t6
                  nop
                  or           t4, s8, s10
                  sltu         a5, s5, t2
                  auipc        s11, 958060
                  sub          s5, t4, s10
                  lui          sp, 561719
                  sltiu        a5, a3, 1300
                  auipc        s3, 849753
                  srl          t3, s5, s4
                  xor          t4, a0, s1
                  srl          s4, a7, tp
                  auipc        s3, 331991
                  sltu         a2, t6, s9
                  ori          gp, zero, 507
                  or           t1, tp, t6
                  slli         gp, gp, 26
                  sra          zero, a7, a6
                  slli         a0, sp, 23
                  andi         s11, zero, 1066
                  add          a1, s4, s6
                  add          a6, s9, a3
                  xor          t5, sp, a0
                  lui          t0, 167003
                  or           t3, gp, a6
                  auipc        t1, 617721
                  slti         s2, t6, -1305
                  sltu         gp, ra, s0
                  srli         s10, a0, 26
                  and          zero, s9, s9
                  sltu         zero, a2, s3
                  xor          gp, s7, a1
                  slti         a7, t1, -1749
                  ori          s5, t2, 1504
                  and          t0, s4, t3
                  srai         s1, s10, 20
                  or           zero, s5, t0
                  srai         a2, a4, 23
                  and          s1, t4, t4
                  and          s9, s7, s0
                  or           t1, s3, t5
                  add          s5, a0, s5
                  slli         t3, s5, 17
                  andi         sp, a6, -355
                  andi         t2, a4, 1027
                  addi         s9, s1, 1899
                  andi         a3, zero, -535
                  sll          gp, s10, a6
                  srli         a2, gp, 17
                  srai         s5, ra, 19
                  sltiu        s7, gp, -36
                  nop
                  slt          t3, t5, s8
                  sub          t1, gp, s3
                  sltiu        s9, s0, -48
                  srli         a4, gp, 0
                  ori          s8, a4, -709
                  slt          s2, t2, t4
                  auipc        sp, 254836
                  addi         s5, s11, 546
                  addi         sp, a3, -632
                  or           s8, ra, t3
                  srl          t6, a5, s9
                  xor          t6, a6, a3
                  slti         sp, s2, 1427
                  slt          t0, s11, a3
                  or           zero, t6, t4
                  sll          s7, sp, a4
                  lui          a3, 89983
                  lui          a3, 341478
                  add          s1, sp, s11
                  add          a5, s4, s3
                  lui          a1, 492448
                  ori          s11, gp, 1423
                  srli         t3, a0, 23
                  or           s10, t0, zero
                  slli         s3, t4, 25
                  slt          s3, s8, t3
                  xori         t5, a5, -1772
                  sll          s3, tp, s0
                  srli         a5, t1, 8
                  srl          s3, gp, ra
                  slti         s2, a2, -706
                  sra          s7, a5, t4
                  sll          s3, ra, t3
                  sra          a0, gp, s0
                  sltu         t4, sp, t1
                  xori         a6, s4, 616
                  lui          s4, 905924
                  auipc        t5, 487569
                  srl          s11, s3, t2
                  sra          s8, t6, a6
                  ori          s7, s1, 1654
                  auipc        s3, 422611
                  sltiu        s7, s4, 514
                  slti         a7, t4, -225
                  nop
                  auipc        t1, 194385
                  and          sp, a4, t0
                  andi         gp, s1, -1579
                  srl          t1, s7, a2
                  and          a1, t4, s5
                  and          s10, s11, s2
                  nop
                  ori          sp, s11, 1587
                  add          t6, gp, s3
                  and          a1, t1, s3
                  xori         s4, t6, 342
                  addi         t5, s10, 520
                  sra          s9, a3, gp
                  lui          s9, 394568
                  sra          a6, a7, a0
                  auipc        t0, 963574
                  andi         a3, gp, -923
                  sltu         t4, s7, a1
                  sub          s5, gp, s11
                  srl          t5, a4, a3
                  slli         s9, s5, 31
                  srli         s11, sp, 13
                  lui          s11, 438320
                  sra          t6, t4, s11
                  andi         t1, t3, -1365
                  srl          a6, a2, t1
                  add          a5, s8, gp
                  sltu         a0, t2, s7
                  sll          s8, gp, t0
                  srai         a0, a6, 16
                  ori          s11, t6, -1968
                  or           t4, a0, s0
                  sltu         zero, s1, t6
                  sra          a4, s10, s11
                  andi         s8, s10, 228
                  add          t5, gp, a6
                  add          s7, a5, sp
                  sub          t1, gp, zero
                  or           a0, zero, a5
                  srai         zero, t1, 2
                  andi         s1, t5, 1980
                  slti         a1, zero, 449
                  sub          s9, s2, s1
                  sltu         t1, t5, a0
                  xor          sp, a7, a2
                  addi         t0, t4, -678
                  sub          s11, t1, s6
                  slt          a3, s5, s1
                  nop
                  sra          a2, t4, a6
                  sub          s1, a3, t5
                  auipc        s7, 388117
                  lui          a6, 93987
                  or           ra, a3, s7
                  slti         s1, a0, -14
                  xor          t2, t0, a5
                  slli         a4, tp, 25
                  sra          s8, s5, s7
                  slti         a1, s9, 1880
                  addi         s2, a5, 635
                  auipc        sp, 522330
                  sll          a2, a7, a0
                  sltu         s9, a2, ra
                  auipc        s1, 868023
                  lui          s8, 486961
                  srl          a0, a5, t5
                  ori          s9, s5, 1699
                  slti         t1, a4, 555
                  xori         ra, sp, 1523
                  sub          ra, t3, t1
                  slti         s9, s9, 1476
                  and          ra, a6, a7
                  and          s10, zero, zero
                  or           t3, tp, a5
                  xori         t4, a7, -2042
                  slti         s2, s2, 429
                  slli         s7, s9, 14
                  srai         zero, ra, 6
                  add          a7, a2, tp
                  sltu         t0, ra, s3
                  sltu         s2, s10, a5
                  addi         s5, s6, -122
                  slli         t4, s11, 28
                  srai         a2, s0, 18
                  srai         t0, t1, 14
                  andi         gp, s7, 1691
                  sltu         t6, a3, s5
                  ori          s10, gp, -140
                  ori          t2, a3, -778
                  ori          s1, s8, 827
                  addi         t2, tp, 1644
                  auipc        s5, 949228
                  sltiu        s4, s2, 507
                  or           a0, a6, s11
                  and          a5, s8, s1
                  sll          a6, s3, a5
                  auipc        t6, 951422
                  slti         t5, t3, 1353
                  sub          a0, s2, t0
                  sll          t4, sp, zero
                  sra          s7, s9, s5
                  srai         sp, ra, 20
                  add          t4, t1, a7
                  srai         s9, t0, 10
                  li           s11, 0x19072d71 #start riscv_int_numeric_corner_stream_8
                  li           t4, 0xffffffff
                  li           t5, 0x80550715
                  li           a3, 0xa20327b5
                  li           s3, 0x0
                  li           s4, 0x0
                  li           a5, 0x7cf004c6
                  li           t3, 0xba6b6019
                  li           ra, 0x4f7a4fe3
                  li           s1, 0x80000000
                  sub          t3, s4, ra
                  lui          ra, 561163
                  sub          t3, t3, s4
                  auipc        t3, 310868
                  addi         t3, s11, 185
                  add          s4, t4, s4
                  addi         s11, t4, 1966
                  addi         t4, s3, 1731
                  nop
                  addi         s3, s11, -1164
                  nop
                  addi         t5, t4, -309
                  add          s3, s11, s1
                  sub          t5, s4, a5
                  nop
                  lui          t5, 448423
                  addi         a3, t5, 722
                  lui          ra, 772886 #end riscv_int_numeric_corner_stream_8
                  and          t2, s10, a0
                  xori         t6, s6, -246
                  nop
                  sra          ra, s2, t2
                  slti         t6, a0, -88
                  and          t6, a7, zero
                  or           sp, s3, s5
                  sll          s10, t4, s4
                  sltu         s1, a1, a4
                  xor          a4, t0, a7
                  sll          a2, a7, a3
                  ori          sp, ra, 597
                  sra          s9, s3, t2
                  slt          s5, a3, s7
                  sra          s3, s1, s1
                  ori          t6, sp, 1108
                  sltiu        a0, a4, 1298
                  slt          a4, t3, s11
                  ori          a3, s8, 256
                  sub          t0, s8, s6
                  xori         t6, gp, 1541
                  lui          a5, 610435
                  srai         s8, ra, 8
                  slli         s5, s0, 16
                  srli         gp, t2, 30
                  or           s5, a4, t5
                  addi         s4, a6, 1287
                  addi         s10, tp, 421
                  sltu         s5, a4, s4
                  slti         s10, s10, -537
                  sra          s3, t6, s5
                  sra          s1, sp, a6
                  sra          t2, t6, t5
                  add          a0, s5, s3
                  andi         a5, s11, -1793
                  addi         s9, a4, 329
                  srli         s7, a2, 9
                  auipc        gp, 1038528
                  or           s2, a7, a3
                  addi         a5, t0, -404
                  addi         a0, a4, 983
                  slli         ra, s0, 3
                  sll          s4, sp, a0
                  and          a5, zero, s0
                  ori          ra, t4, 969
                  xori         a3, a1, -1290
                  sll          s10, s1, t3
                  and          a3, tp, t4
                  xor          s10, s11, s8
                  add          a3, t5, a1
                  or           t3, zero, t1
                  srli         s7, a6, 10
                  andi         ra, s4, -565
                  addi         a0, a7, 1214
                  srl          s2, ra, a1
                  sltiu        a3, s11, -659
                  srl          a6, s9, zero
                  andi         a2, s1, -367
                  slli         a2, s3, 14
                  slli         s4, t6, 11
                  addi         zero, t4, 1609
                  add          s10, s0, ra
                  sra          s2, t6, a1
                  xori         a1, s7, 1857
                  slli         t2, s5, 20
                  xor          t5, ra, a4
                  ori          a6, t3, -166
                  srai         a6, a5, 19
                  andi         s3, s4, -13
                  slt          a6, ra, s3
                  xori         t0, s5, 1162
                  sub          t3, s8, s10
                  and          s4, gp, s2
                  auipc        s5, 648569
                  slti         s9, t0, 1331
                  lui          gp, 85897
                  nop
                  slti         t2, ra, 869
                  sltu         zero, a2, a2
                  srai         a0, a6, 12
                  srli         s10, s11, 17
                  andi         t1, a6, -208
                  and          s4, t3, t1
                  auipc        a1, 824219
                  sll          ra, a1, s3
                  or           s11, t6, sp
                  sltu         zero, gp, s6
                  and          s5, s4, t0
                  sll          s2, s4, s2
                  and          s11, t3, a4
                  xori         s1, a7, -199
                  andi         s5, t5, -159
                  srai         sp, s0, 10
                  xor          a7, t5, t4
                  xor          a3, ra, a6
                  and          ra, t2, ra
                  slt          t6, s9, a7
                  and          s2, a2, ra
                  sub          s2, s5, t1
                  xor          s8, s0, zero
                  xor          a0, s6, t5
                  srli         a2, a5, 15
                  addi         t2, a3, -1200
                  addi         a5, a2, -1166
                  ori          zero, a4, 1450
                  auipc        a3, 347761
                  nop
                  sub          zero, a7, s2
                  srl          s9, s10, a2
                  sltiu        a2, tp, 122
                  sltiu        s4, t5, 2003
                  sll          t4, s6, t0
                  lui          sp, 430663
                  sltu         s7, t2, sp
                  srli         ra, sp, 0
                  srai         a1, s0, 25
                  addi         a4, s2, -420
                  srai         t4, a6, 17
                  sub          t4, t0, s2
                  slt          a6, a6, s4
                  srl          s3, t6, a7
                  xor          t5, t0, t5
                  nop
                  sltu         s5, t2, a5
                  add          s9, a0, t3
                  srl          a3, t4, t5
                  sltu         a2, t6, s6
                  srai         a0, t6, 22
                  auipc        t6, 42900
                  xori         s8, a7, 141
                  srai         zero, t0, 22
                  slli         t6, t4, 25
                  auipc        s5, 386590
                  xor          a0, t2, t5
                  srl          s2, t0, a7
                  srai         t4, s7, 18
                  srli         a2, s11, 15
                  auipc        s10, 726178
                  slt          a1, s8, t1
                  addi         t4, sp, 1063
                  add          ra, zero, s11
                  slt          s8, a2, s3
                  auipc        t3, 131640
                  slti         s8, zero, 1026
                  lui          gp, 166125
                  andi         s10, t6, 898
                  slt          a3, s9, t4
                  slti         t6, s11, 2040
                  add          a2, s10, t2
                  sub          a0, s11, a3
                  sra          gp, s6, s6
                  addi         a1, s9, 1478
                  sub          s1, ra, a4
                  sll          t0, s8, s3
                  add          s9, t1, s1
                  sltu         s10, s9, s10
                  add          s9, zero, s4
                  lui          a6, 457516
                  xor          sp, gp, t5
                  srl          s3, a7, s10
                  xori         s5, s9, 596
                  sub          a0, a5, t1
                  sub          sp, s5, s9
                  sll          s9, s10, s10
                  addi         a6, s8, 1819
                  lui          t6, 1009223
                  auipc        s9, 232728
                  nop
                  xor          t5, s6, s9
                  sub          s3, s4, s3
                  ori          s9, t5, 1314
                  sra          s3, t5, s0
                  sltiu        a4, a2, -230
                  sub          a4, a2, s7
                  addi         s2, s4, 706
                  slti         t1, s1, -1590
                  andi         s3, s10, -858
                  srli         a5, a6, 6
                  sltu         sp, a5, s8
                  srai         s2, s11, 16
                  srai         ra, s8, 22
                  and          a1, a4, a4
                  srl          a4, t1, t3
                  slti         t0, s10, -67
                  sltiu        s9, s9, 230
                  sra          t1, sp, a2
                  slti         s4, s6, -1301
                  xor          s7, s4, tp
                  sltu         a4, s6, a4
                  and          s10, s2, s10
                  xor          gp, t0, t3
                  xor          s4, s8, ra
                  add          gp, a3, t4
                  sra          t4, a0, s9
                  sll          a6, s2, a5
                  and          s4, gp, a6
                  sll          a7, s8, t1
                  nop
                  slti         gp, a6, -1808
                  sra          zero, s3, a1
                  xori         s5, t5, 1725
                  slli         a5, gp, 1
                  slti         a1, a3, 47
                  auipc        a5, 746830
                  srli         a0, t3, 8
                  sltu         gp, gp, a4
                  add          s10, t1, s1
                  sll          t2, s8, tp
                  sltiu        s9, a3, 557
                  sub          a3, t4, s3
                  xori         a2, a1, -1831
                  auipc        a0, 701811
                  ori          a6, t0, -220
                  slli         a7, sp, 22
                  sltu         a6, zero, s1
                  sltiu        a2, a2, 1970
                  xor          t1, ra, a5
                  sll          zero, a5, a1
                  xori         s3, t6, -1863
                  ori          a2, t4, -934
                  andi         t5, a2, 288
                  sll          t3, s4, a1
                  srl          s5, a6, s8
                  sra          s10, t1, s11
                  lui          t3, 839055
                  and          s7, t0, a4
                  sll          a7, t1, s6
                  slt          gp, a6, t3
                  auipc        t3, 22617
                  xor          zero, s5, a0
                  slti         t3, a6, -314
                  slti         t0, gp, 148
                  slt          t4, a1, t6
                  xor          a4, s2, s8
                  sra          a3, a1, a2
                  andi         zero, s0, 1594
                  sll          s8, s10, s5
                  slt          s1, gp, s3
                  xori         a7, a6, 1522
                  sltu         gp, s5, t2
                  nop
                  xori         t3, a2, -1257
                  sll          s5, gp, s8
                  srli         a6, a1, 29
                  sra          s2, t1, a6
                  and          t5, a3, a3
                  srli         s10, t4, 16
                  sll          s5, a2, a5
                  srai         s7, s0, 1
                  andi         t0, s3, -381
                  sub          a0, a4, t2
                  slti         s1, t6, -24
                  andi         sp, s4, -775
                  srli         a0, s2, 2
                  or           s10, t2, sp
                  auipc        zero, 480453
                  auipc        s1, 949477
                  andi         t4, a0, 556
                  nop
                  sltu         t5, t4, gp
                  slli         s9, s10, 19
                  ori          t1, s6, -1552
                  slti         a6, t3, 443
                  addi         a0, zero, -681
                  sll          t4, t2, s6
                  sltiu        t2, ra, 1487
                  and          a0, a0, a4
                  lui          t0, 287217
                  slli         s10, s4, 25
                  slli         a6, a5, 22
                  and          s11, gp, s4
                  sra          a7, t4, s4
                  slti         s2, s4, 395
                  or           s4, a5, t2
                  la x22, test_done
                  jalr x0, x22, 0
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
                  add x4, x8, zero
                  csrr x27, 0x300 # MSTATUS
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 31
                  bne x27, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x27, 0x341 # MEPC
                  csrr x27, 0x342 # MCAUSE
                  li x17, 0x3 # BREAKPOINT
                  beq x27, x17, ebreak_handler
                  li x17, 0x8 # ECALL_UMODE
                  beq x27, x17, ecall_handler
                  li x17, 0x9 # ECALL_SMODE
                  beq x27, x17, ecall_handler
                  li x17, 0xb # ECALL_MMODE
                  beq x27, x17, ecall_handler
                  li x17, 0x1
                  beq x27, x17, instr_fault_handler
                  li x17, 0x5
                  beq x27, x17, load_fault_handler
                  li x17, 0x7
                  beq x27, x17, store_fault_handler
                  li x17, 0xc
                  beq x27, x17, pt_fault_handler
                  li x17, 0xd
                  beq x27, x17, pt_fault_handler
                  li x17, 0xf
                  beq x27, x17, pt_fault_handler
                  li x17, 0x2 # ILLEGAL_INSTRUCTION
                  beq x27, x17, illegal_instr_handler
                  csrr x17, 0x343 # MTVAL
                  1: la x22, test_done
                  jalr x1, x22, 0

ecall_handler:    
                  la x27, _start
                  sw x0, 0(x27)
                  sw x1, 4(x27)
                  sw x2, 8(x27)
                  sw x3, 12(x27)
                  sw x4, 16(x27)
                  sw x5, 20(x27)
                  sw x6, 24(x27)
                  sw x7, 28(x27)
                  sw x8, 32(x27)
                  sw x9, 36(x27)
                  sw x10, 40(x27)
                  sw x11, 44(x27)
                  sw x12, 48(x27)
                  sw x13, 52(x27)
                  sw x14, 56(x27)
                  sw x15, 60(x27)
                  sw x16, 64(x27)
                  sw x17, 68(x27)
                  sw x18, 72(x27)
                  sw x19, 76(x27)
                  sw x20, 80(x27)
                  sw x21, 84(x27)
                  sw x22, 88(x27)
                  sw x23, 92(x27)
                  sw x24, 96(x27)
                  sw x25, 100(x27)
                  sw x26, 104(x27)
                  sw x27, 108(x27)
                  sw x28, 112(x27)
                  sw x29, 116(x27)
                  sw x30, 120(x27)
                  sw x31, 124(x27)
                  la x22, write_tohost
                  jalr x0, x22, 0

instr_fault_handler:
                  add x8, x4, zero
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
                  add x8, x4, zero
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
                  add x8, x4, zero
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
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x8, x4, zero
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
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x8, x4, zero
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
                  csrr  x27, 0x300 # MSTATUS;
                  csrr  x27, 0x304 # MIE;
                  csrr  x27, 0x344 # MIP;
                  csrrc x27, 0x344, x27 # MIP;
                  add x8, x4, zero
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
