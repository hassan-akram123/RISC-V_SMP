.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x15, h0_start
jalr x0, x15, 0
h0_start:
                  li x27, 0x40000100
                  csrw 0x301, x27
kernel_sp:        
                  la x7, kernel_stack_end

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
                  li x0, 0x41b3efbc
                  li x1, 0x80000000
                  li x2, 0x80000000
                  li x3, 0x5
                  li x4, 0xf761a376
                  li x5, 0xf9c0f797
                  li x6, 0x80000000
                  li x8, 0x505e9e0
                  li x9, 0x4
                  li x10, 0x80000000
                  li x11, 0x0
                  li x12, 0xfda1d468
                  li x13, 0x0
                  li x14, 0x3
                  li x15, 0x80000000
                  li x16, 0xdf37eced
                  li x17, 0x0
                  li x18, 0x0
                  li x19, 0x6
                  li x20, 0x8f05467a
                  li x21, 0x2b0441a9
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0xdafd5830
                  li x25, 0xa6424a74
                  li x27, 0xa16235a2
                  li x28, 0x12bd3fd
                  li x29, 0x80000000
                  li x30, 0xf05e11b1
                  li x31, 0xca86ce5c
                  la x26, user_stack_end
main:             li           t3, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           s4, 0xffffffff
                  li           tp, 0x0
                  li           a6, 0x0
                  li           a0, 0x80000000
                  li           s9, 0xffffffff
                  li           t0, 0xffffffff
                  li           s6, 0x85765e33
                  li           a1, 0xffffffff
                  li           a3, 0x54483b03
                  addi         a1, s9, -1276
                  nop
                  addi         s4, a0, -1200
                  nop
                  lui          tp, 844071
                  add          a1, s6, a1
                  addi         a3, t0, -355
                  sub          t0, a6, s4
                  add          a0, s4, s9
                  auipc        tp, 798134
                  sub          a1, s6, s6
                  add          a3, a0, a6
                  auipc        tp, 765626
                  nop
                  nop
                  sub          a3, s6, t3
                  lui          s4, 807363
                  nop
                  auipc        a1, 163781
                  lui          s4, 311245
                  nop
                  nop
                  addi         s6, a1, 1677
                  auipc        a3, 1003355 #end riscv_int_numeric_corner_stream_17
                  li           t1, 0x80000000 #start riscv_int_numeric_corner_stream_6
                  li           a4, 0xffffffff
                  li           s7, 0xffffffff
                  li           gp, 0x75e83238
                  li           s3, 0x80000000
                  li           t4, 0x80000000
                  li           ra, 0xffffffff
                  li           s9, 0xa515fd3f
                  li           a7, 0x80000000
                  li           s4, 0x80000000
                  sub          a4, a7, s7
                  addi         s4, ra, -1706
                  sub          s7, ra, ra
                  lui          t1, 248200
                  auipc        t1, 1021111
                  lui          gp, 186732
                  lui          s7, 999580
                  lui          s9, 747123
                  sub          t4, a7, ra
                  auipc        s3, 508696
                  addi         gp, s9, 2043
                  add          a4, t1, s7
                  nop
                  lui          t4, 338883
                  lui          s9, 31225
                  sub          s7, ra, s4
                  nop
                  add          a4, a7, s9
                  nop
                  auipc        s4, 398270
                  sub          ra, t1, a7
                  lui          s9, 557805
                  nop #end riscv_int_numeric_corner_stream_6
                  li           t4, 0xc4ff47b1 #start riscv_int_numeric_corner_stream_11
                  li           a7, 0x6ac9c082
                  li           sp, 0x0
                  li           t3, 0xffffffff
                  li           s11, 0xba394984
                  li           s7, 0xbea9880a
                  li           t1, 0xac0c8c85
                  li           s8, 0x1a4bd73d
                  li           s6, 0x80000000
                  li           s2, 0x0
                  auipc        s11, 923641
                  add          s7, sp, t3
                  nop
                  lui          t1, 80382
                  lui          sp, 501552
                  lui          t1, 871730
                  auipc        t1, 407324
                  sub          t3, s6, t3
                  lui          a7, 828834
                  addi         a7, t1, 1744
                  auipc        t4, 337821
                  nop
                  add          s2, s2, s7
                  nop
                  nop
                  nop
                  add          t3, t3, a7
                  nop
                  sub          t3, s8, t4
                  nop
                  nop
                  add          sp, s11, a7
                  nop
                  addi         t3, s11, -989
                  sub          s6, t1, a7
                  sub          s7, t3, s6 #end riscv_int_numeric_corner_stream_11
                  li           a6, 0x26faf31d #start riscv_int_numeric_corner_stream_10
                  li           s3, 0x6f4142c
                  li           s9, 0xffffffff
                  li           s8, 0xffffffff
                  li           t3, 0xffffffff
                  li           a7, 0xf97b2078
                  li           a4, 0x0
                  li           s0, 0x80000000
                  li           tp, 0x80000000
                  li           t0, 0xffffffff
                  lui          t0, 357166
                  lui          t0, 439920
                  lui          s9, 753677
                  nop
                  addi         s0, s0, 1464
                  sub          a7, s9, tp
                  add          a7, s0, s0
                  sub          s9, tp, s3
                  add          a7, tp, a6
                  add          t3, t3, tp
                  add          s9, t0, a6
                  add          s9, a6, s3
                  add          t3, s8, a6
                  auipc        s0, 972074
                  lui          a6, 280840
                  lui          s9, 990521
                  auipc        a7, 114630
                  add          s9, s9, t0
                  lui          s8, 144073
                  auipc        s8, 743313
                  lui          t3, 1021344
                  lui          a4, 799269
                  add          s0, a6, s9 #end riscv_int_numeric_corner_stream_10
                  li           t6, 0x3f5c070c #start riscv_int_numeric_corner_stream_2
                  li           s7, 0x80000000
                  li           s0, 0x4b1cac73
                  li           t4, 0xc7b987f1
                  li           a1, 0xca88a212
                  li           s8, 0xffffffff
                  li           sp, 0x0
                  li           s6, 0x0
                  li           a6, 0x80000000
                  li           gp, 0x92a86432
                  lui          s6, 161175
                  sub          t4, gp, t4
                  nop
                  addi         s0, a6, -367
                  nop
                  auipc        s7, 389756
                  lui          t6, 1043746
                  auipc        sp, 132758
                  nop
                  auipc        s0, 1007599
                  nop
                  lui          t4, 766120
                  nop
                  add          s7, t4, t6
                  lui          t4, 933836
                  add          sp, gp, a1
                  sub          gp, a1, gp
                  add          s0, s7, t4
                  add          s0, t4, s7
                  lui          s8, 944483
                  addi         sp, s6, -365
                  sub          s7, s6, s0
                  sub          s8, gp, s8
                  addi         s7, s7, 1731
                  sub          t4, s6, sp #end riscv_int_numeric_corner_stream_2
                  li           s11, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           a2, 0xffffffff
                  li           s7, 0xffffffff
                  li           a1, 0xffffffff
                  li           t0, 0x4a152d59
                  li           a4, 0x80000000
                  li           t4, 0xffffffff
                  li           a3, 0x0
                  li           a7, 0x32b15ac3
                  li           s4, 0x80000000
                  auipc        a2, 944704
                  auipc        s7, 727216
                  nop
                  auipc        s11, 224757
                  lui          t4, 876166
                  addi         a7, a7, -735
                  addi         a4, s7, 1539
                  lui          t4, 465757
                  nop
                  lui          s7, 339469
                  nop
                  add          t0, a3, a7
                  add          t0, s7, a7
                  auipc        a4, 976733
                  addi         a3, s7, -783
                  lui          a3, 521011
                  addi         a4, a2, -1521
                  add          s4, a1, t4 #end riscv_int_numeric_corner_stream_1
                  li           s7, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           a2, 0x3261ff20
                  li           t0, 0x80000000
                  li           a1, 0xffffffff
                  li           a7, 0xffffffff
                  li           s6, 0x80000000
                  li           t3, 0x0
                  li           a3, 0x62a4ff12
                  li           gp, 0x80000000
                  li           s0, 0x7feb457c
                  sub          a7, a7, a2
                  addi         a7, gp, -2032
                  add          a7, a2, s7
                  lui          a7, 107258
                  auipc        s0, 71915
                  lui          s7, 13578
                  sub          t0, s0, t0
                  sub          s6, a2, gp
                  add          s6, s0, a3
                  lui          a7, 782166
                  nop
                  auipc        s0, 259613
                  auipc        t3, 735461
                  auipc        a1, 880313
                  nop
                  nop
                  add          t3, s6, a2
                  add          s0, gp, gp
                  sub          a7, a1, a2
                  sub          t3, a1, t0
                  sub          gp, s0, t3 #end riscv_int_numeric_corner_stream_8
                  xor          zero, a4, a7
                  andi         t4, s0, -1315
                  xor          s8, a0, s10
                  or           t6, a7, t4
                  srli         s4, s10, 20
                  slli         t4, t2, 21
                  slli         t3, t0, 31
                  srli         s5, a5, 16
                  xor          t4, ra, t4
                  or           s3, s3, a6
                  srai         t3, zero, 31
                  lui          t5, 98550
                  slt          s8, a4, a0
                  srl          t6, ra, a4
                  slt          zero, a2, s8
                  slti         s7, a1, -690
                  lui          s5, 256718
                  nop
                  sub          a6, a1, a3
                  xori         t5, t4, 402
                  sltu         a3, s0, t0
                  srai         t5, t0, 1
                  and          s0, t2, a3
                  lui          t0, 548618
                  xor          s2, t4, a7
                  sltu         a0, a5, s11
                  add          a6, sp, s9
                  xor          s11, s0, s0
                  andi         s8, a6, 109
                  srl          s4, ra, t6
                  and          t3, s8, sp
                  sltu         t5, a2, s8
                  or           s2, a7, tp
                  add          s6, a1, s5
                  srai         s4, s0, 16
                  slti         t4, s11, -1581
                  slt          t3, t6, s8
                  nop
                  and          t0, t6, s0
                  sra          s1, ra, tp
                  xori         a1, t4, -2036
                  auipc        t0, 963451
                  slli         t4, a2, 0
                  addi         t5, a4, 1794
                  nop
                  andi         sp, a5, -896
                  auipc        t0, 128176
                  srli         s4, ra, 20
                  nop
                  andi         ra, a5, -1171
                  slti         s4, tp, 1307
                  sltiu        t1, a5, 633
                  andi         s11, a5, 2045
                  sra          s0, ra, a4
                  srl          s9, s4, a5
                  slti         t0, gp, 1197
                  xori         a6, ra, -1797
                  sll          a3, a1, ra
                  xori         a0, t4, 1265
                  sll          ra, a1, a2
                  nop
                  or           s11, s3, t5
                  srl          s0, t0, t2
                  auipc        s11, 741515
                  sltu         a4, sp, s5
                  xor          s5, zero, a1
                  and          s7, t3, a6
                  and          s0, a2, s7
                  xor          s1, s0, ra
                  xor          s1, a2, tp
                  nop
                  xori         s1, a7, 58
                  sll          a7, s1, s10
                  sub          sp, s10, s11
                  nop
                  andi         a6, s7, -1687
                  sra          a4, s5, s1
                  sltiu        s5, a2, 772
                  sltiu        s3, t1, -15
                  auipc        ra, 194468
                  auipc        s6, 743677
                  or           s1, a6, s6
                  srai         a6, t0, 14
                  sll          a1, a4, t5
                  ori          s4, s3, 1430
                  sltiu        sp, s7, 1743
                  xor          t3, t1, s9
                  srai         s3, zero, 0
                  sll          s8, ra, s4
                  sra          t0, tp, a7
                  li           s5, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           s0, 0x80000000
                  li           s7, 0x80000000
                  li           s1, 0x80000000
                  li           sp, 0x0
                  li           a7, 0x80000000
                  li           s2, 0x88ba1faf
                  li           t5, 0x80000000
                  li           s9, 0x0
                  li           t1, 0x0
                  lui          s5, 717051
                  nop
                  auipc        s9, 260277
                  add          sp, s7, s0
                  lui          s2, 718558
                  nop
                  auipc        s0, 321770
                  addi         s9, t5, -1165
                  auipc        s7, 158505
                  lui          s2, 582823
                  lui          s5, 752841
                  lui          t1, 760778
                  add          s2, s9, t5
                  addi         s2, s1, -1388
                  addi         sp, s7, -953
                  add          s2, s9, sp
                  lui          s1, 512688
                  sub          s0, s0, s5
                  add          a7, s9, a7
                  lui          a7, 971803
                  nop
                  addi         s2, s0, -2017
                  lui          s7, 1009771
                  add          s0, s0, s1
                  nop #end riscv_int_numeric_corner_stream_5
                  sltiu        zero, sp, -15
                  sltu         a7, sp, tp
                  sltiu        s3, a1, -33
                  auipc        s0, 566816
                  sltiu        s5, s2, 693
                  sltu         s5, gp, a4
                  or           a4, sp, s10
                  sra          t3, s10, tp
                  slli         s9, a7, 26
                  or           t5, s1, s5
                  xori         s4, a0, -1900
                  lui          ra, 34600
                  nop
                  srai         t4, t5, 24
                  lui          s7, 348298
                  lui          s3, 841196
                  slt          a6, t6, a1
                  xor          a0, t3, s0
                  xori         s0, s4, -243
                  sltu         a1, a5, s2
                  and          s11, a2, t6
                  ori          ra, s7, 1357
                  sll          gp, s2, s7
                  sra          t1, s11, s8
                  slli         ra, s6, 20
                  xori         s8, a6, 703
                  sll          s0, a3, s11
                  slti         ra, s5, 1979
                  sltiu        t0, a3, 968
                  slt          gp, s4, s5
                  lui          t6, 588579
                  ori          s9, s8, -861
                  srl          t1, s9, s4
                  lui          s6, 394586
                  slli         a2, t2, 11
                  srli         zero, s3, 5
                  auipc        s7, 985058
                  sltu         zero, a1, t3
                  lui          s2, 1047397
                  sltu         s0, a0, t0
                  sub          s1, gp, s8
                  nop
                  and          tp, s1, a2
                  sll          a2, s4, s6
                  and          t1, s3, s4
                  add          t1, t4, s9
                  srl          s5, a4, t0
                  sltu         s8, s10, t0
                  slli         t0, ra, 12
                  slt          zero, s7, tp
                  sltiu        s6, a3, 119
                  addi         zero, t4, 1359
                  sltu         s9, zero, a4
                  ori          a0, s6, 1727
                  srli         a0, s6, 23
                  slli         s9, s7, 3
                  srai         a0, a0, 7
                  lui          t0, 429758
                  slli         sp, s2, 15
                  add          a3, s11, s9
                  srl          s5, s1, tp
                  xor          t5, s1, tp
                  slli         s2, a5, 27
                  srl          s1, zero, a1
                  sltiu        a6, sp, 1781
                  and          a6, s3, t3
                  addi         s1, t0, -1429
                  sltu         a6, s5, t2
                  nop
                  sra          s6, s5, t1
                  slt          s9, a1, a6
                  srl          a4, sp, a3
                  xori         ra, gp, -1616
                  ori          a0, a2, 713
                  slli         t3, a4, 18
                  or           zero, s4, t2
                  srli         t5, s7, 23
                  srai         sp, a0, 31
                  slli         tp, s8, 9
                  andi         sp, t6, 1324
                  xor          s3, sp, t2
                  slli         a7, s6, 11
                  sll          a6, t6, a2
                  xor          s7, a1, s0
                  srl          s7, s4, t0
                  addi         s5, s0, -564
                  srl          gp, s9, ra
                  slti         ra, a4, -1943
                  slti         s9, s9, -1772
                  andi         t4, s1, 147
                  xor          t0, s4, t2
                  sltu         a2, a4, s11
                  srli         s4, sp, 3
                  or           a3, s4, s0
                  srli         t3, s3, 29
                  ori          a7, t4, 1471
                  andi         s2, a3, 202
                  srl          a2, zero, a6
                  sltiu        a7, t5, -429
                  and          a7, s7, s9
                  sltiu        s11, s4, -274
                  add          a7, t6, s6
                  sub          t4, s9, s0
                  slti         s7, a2, -2029
                  xori         s11, s10, -1152
                  slti         tp, tp, 1614
                  andi         t1, a3, -179
                  xori         a0, t0, -55
                  addi         t0, a5, 1487
                  ori          s5, s5, 780
                  sltu         a0, s10, t6
                  ori          t4, s9, -1650
                  sra          a0, t0, s2
                  sll          s0, t5, s2
                  slti         a1, s5, -1129
                  srl          t4, s4, t5
                  srai         a4, a3, 22
                  srai         a4, s6, 27
                  nop
                  and          t5, a5, t5
                  sltiu        t1, s3, -1869
                  or           t5, ra, s4
                  ori          s8, s6, -633
                  slt          s3, s5, a6
                  andi         s3, s1, -306
                  srl          s5, t3, s9
                  slt          a6, s0, gp
                  and          s7, s11, a5
                  ori          a0, s3, -619
                  srli         s2, t4, 20
                  sltiu        s5, t6, 1096
                  andi         a0, s0, 125
                  slli         a0, a5, 18
                  slli         a6, t2, 24
                  sra          t3, a5, zero
                  sll          s4, t1, a4
                  xor          sp, a2, s10
                  lui          zero, 524075
                  srl          a0, a4, s7
                  sll          s7, t6, s10
                  srli         t4, s10, 13
                  lui          a3, 407693
                  auipc        t5, 643017
                  add          a7, s5, a0
                  and          a4, a4, t5
                  slli         zero, t6, 13
                  ori          a0, zero, 740
                  slt          t5, zero, s7
                  srli         s0, s5, 15
                  slti         ra, t5, 610
                  xor          s0, s4, a3
                  sra          s3, s6, tp
                  sub          sp, a4, a5
                  auipc        ra, 619373
                  slt          a2, s6, s1
                  sub          a6, a4, a7
                  srli         s11, ra, 15
                  or           t1, gp, s4
                  sub          s5, t1, a6
                  sll          sp, ra, s4
                  andi         s0, t4, -1135
                  nop
                  andi         ra, s4, 2040
                  slti         s6, s6, 831
                  xor          a4, s0, s0
                  and          t5, tp, s8
                  addi         a0, s10, -795
                  slli         tp, a7, 23
                  sltu         s11, a3, a6
                  sltiu        s3, t2, -140
                  and          a4, a7, s5
                  lui          s0, 635474
                  srli         a3, s0, 14
                  srl          s6, s6, t0
                  slli         s1, a4, 16
                  sltu         gp, a2, s1
                  addi         a2, t0, 1501
                  xor          s4, a0, gp
                  xori         t0, t3, 2010
                  nop
                  sltiu        a3, sp, -99
                  sltu         s9, ra, t1
                  add          s7, t3, t6
                  slli         sp, s11, 9
                  sll          s2, t4, s11
                  srli         t5, s6, 28
                  xori         t3, s11, 597
                  auipc        s8, 115411
                  srl          t5, t0, s2
                  sra          t1, a4, s5
                  sll          s0, s2, s2
                  srai         sp, s0, 6
                  srli         a4, s0, 26
                  addi         s2, t4, -347
                  slt          a4, a4, s4
                  sra          s0, a6, t2
                  srli         sp, s10, 21
                  srli         t3, zero, 28
                  addi         t1, s3, 749
                  lui          gp, 817665
                  auipc        s5, 635937
                  sll          a3, s7, ra
                  slti         a3, a6, 1176
                  sra          a6, a2, s7
                  sra          t6, a0, s3
                  srl          s8, s11, t0
                  slti         s11, a6, 1262
                  slti         tp, t5, 1553
                  addi         s0, s3, 466
                  ori          s4, s4, -585
                  add          a0, s0, t6
                  nop
                  sll          s8, a3, a0
                  sra          s0, a1, a7
                  srai         ra, t3, 11
                  sra          a1, s7, a1
                  sra          zero, s1, t0
                  slli         s4, a5, 1
                  srai         t6, a1, 25
                  srai         gp, s9, 10
                  sub          s0, zero, a7
                  sltiu        t5, a3, -1881
                  sll          s11, zero, sp
                  addi         s11, s3, 1822
                  auipc        a4, 291463
                  and          a0, tp, t6
                  slti         sp, s10, 1660
                  add          t4, s9, a6
                  sra          a7, a5, t0
                  sub          s3, a7, ra
                  and          a4, zero, t2
                  or           gp, a1, a3
                  srli         s2, gp, 4
                  ori          ra, a3, -628
                  lui          a7, 794188
                  andi         s7, t6, -1437
                  and          zero, a7, t3
                  auipc        a2, 198789
                  srai         s9, s5, 19
                  sub          s11, tp, a6
                  xori         a7, s8, -854
                  srai         a3, a6, 13
                  srli         t6, s0, 27
                  slt          t1, sp, zero
                  srli         s5, ra, 28
                  lui          zero, 385608
                  sra          ra, a2, ra
                  slt          s7, a0, s10
                  srli         a4, a2, 14
                  nop
                  slti         s7, s7, -135
                  sll          t3, sp, s8
                  slli         s9, s8, 12
                  srl          s1, s2, s7
                  slt          gp, s9, a4
                  sltiu        tp, s11, -809
                  nop
                  ori          s1, a7, 276
                  nop
                  lui          s9, 809486
                  lui          s7, 632247
                  andi         s3, s1, -225
                  slt          s4, s10, tp
                  xori         ra, t5, 279
                  xor          s0, a1, s1
                  srai         a1, a2, 17
                  xori         s5, a3, 708
                  xori         sp, tp, 1478
                  srai         tp, a4, 3
                  slti         t6, s11, 1476
                  sub          t4, ra, t2
                  sra          sp, a4, gp
                  add          a0, gp, a5
                  lui          t5, 166289
                  or           s6, s1, t2
                  or           s5, ra, t3
                  srli         s2, ra, 16
                  slti         s6, t6, -522
                  srli         s6, sp, 22
                  sub          ra, zero, s10
                  andi         t1, a4, -183
                  slli         s0, zero, 26
                  andi         gp, t6, 1719
                  ori          s4, t4, 467
                  auipc        s4, 113791
                  sub          t5, a3, s9
                  ori          s8, s0, 1527
                  andi         s6, a0, 1183
                  sub          a1, a5, t3
                  ori          s8, t4, 1753
                  add          s0, a2, a0
                  andi         t3, sp, 451
                  srl          a2, s7, tp
                  sll          s6, s8, s11
                  sltiu        s1, s5, 3
                  nop
                  ori          t0, a3, 107
                  sltu         s7, s4, s1
                  sub          a3, s1, s8
                  sll          s1, a1, s3
                  nop
                  sll          t4, t6, s6
                  sll          zero, t5, t0
                  srli         gp, t5, 21
                  srai         s4, a1, 27
                  srl          t1, sp, ra
                  sra          gp, s10, tp
                  and          s11, a3, tp
                  srai         s2, s4, 14
                  sltu         s9, s4, a0
                  sltiu        t6, s7, 1904
                  sltu         t4, t1, t0
                  slti         t5, t3, 65
                  li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           s1, 0x11b941b3
                  li           sp, 0xffffffff
                  li           a2, 0x0
                  li           a6, 0x80000000
                  li           t4, 0x0
                  li           a4, 0x80000000
                  li           s3, 0x0
                  li           s2, 0xffffffff
                  li           s5, 0x0
                  add          a4, sp, s5
                  auipc        a2, 925673
                  sub          t4, s3, a1
                  add          s5, s3, t4
                  auipc        a1, 290883
                  add          s3, s5, a4
                  nop
                  addi         s3, s2, -1565
                  nop
                  lui          s1, 650975
                  sub          a4, sp, s1
                  add          t4, s1, a6
                  auipc        s3, 499343
                  lui          s3, 757222
                  auipc        s1, 599709
                  auipc        a2, 674223
                  auipc        sp, 312905
                  auipc        a6, 937804
                  add          s2, a2, a1
                  lui          t4, 789472 #end riscv_int_numeric_corner_stream_4
                  slt          ra, gp, s1
                  xori         t1, t1, -743
                  xor          s3, a1, ra
                  auipc        s2, 302965
                  slt          s8, s10, s7
                  add          t5, t0, a6
                  slti         t5, a2, -1148
                  sltiu        t5, s11, -1924
                  nop
                  and          s1, a1, s0
                  or           s5, s6, sp
                  add          t4, a1, s11
                  ori          a3, s1, 151
                  sra          s5, t0, t6
                  srai         s0, a6, 18
                  sra          s9, s7, s8
                  and          s8, t0, a4
                  srai         t0, a7, 28
                  and          s2, t0, s11
                  slt          t3, s3, a1
                  and          t3, ra, t3
                  andi         s4, tp, -1948
                  or           s3, s7, s1
                  slli         a3, gp, 15
                  auipc        a4, 426859
                  and          t5, s8, a1
                  sra          a6, zero, s1
                  sra          s8, t0, a5
                  sltu         a1, s5, a7
                  add          a7, s2, s2
                  or           a0, a2, s6
                  sltiu        s11, s8, -1976
                  srli         t3, s5, 2
                  or           s11, a0, a7
                  addi         t4, s0, -708
                  sll          t6, sp, s9
                  nop
                  xori         s11, t5, 310
                  sll          t1, s10, a6
                  auipc        sp, 311569
                  and          zero, s4, zero
                  and          s6, a6, s10
                  ori          sp, ra, 207
                  slli         s5, ra, 8
                  srl          t6, a4, sp
                  add          t4, t0, t0
                  ori          t0, t2, 1775
                  srl          gp, s6, t2
                  slti         s1, t3, -971
                  slti         s8, s9, 505
                  xori         a4, a1, 1476
                  or           t1, t0, a4
                  slti         a7, s1, -1769
                  xor          sp, a4, a5
                  xori         tp, s8, -856
                  andi         s5, s9, -1317
                  xori         s1, a3, 966
                  slli         a3, t2, 19
                  srli         a6, gp, 17
                  slt          t1, s2, t3
                  andi         a4, a6, -489
                  or           s4, sp, t4
                  or           s7, t1, tp
                  addi         a1, a4, 1450
                  slli         t6, a5, 21
                  srai         ra, t0, 4
                  auipc        ra, 868882
                  andi         ra, ra, 1662
                  lui          a0, 793525
                  add          s9, t0, a5
                  xor          s2, t4, t6
                  srai         a7, a0, 19
                  sltu         s4, s2, s5
                  srai         a6, s0, 4
                  ori          a6, tp, -1641
                  add          a4, s7, t3
                  slti         t4, a2, 1035
                  ori          tp, a5, -1627
                  slt          s4, sp, gp
                  nop
                  slli         a1, t3, 0
                  addi         ra, t0, 1928
                  xor          s11, s4, t4
                  and          gp, t0, s10
                  sll          t0, a2, a1
                  sltiu        t0, s1, 1892
                  or           sp, s4, s5
                  srai         gp, s11, 12
                  sltiu        t1, sp, 595
                  srli         gp, t2, 21
                  lui          s3, 482134
                  add          t3, zero, s3
                  srl          s5, s6, t4
                  nop
                  sub          sp, s3, s3
                  sub          s11, a2, s7
                  slti         ra, s0, -786
                  add          t1, a7, a1
                  slt          s0, gp, t4
                  auipc        t4, 524429
                  sra          t4, t3, a5
                  slt          s3, t3, t1
                  nop
                  xor          s1, s3, s7
                  srli         sp, s9, 1
                  srl          s6, s2, s9
                  auipc        a4, 131256
                  sub          s4, a1, s9
                  slli         t6, s2, 23
                  sll          ra, a0, s10
                  add          s11, ra, a5
                  srl          t5, s11, s10
                  sll          t5, s8, a0
                  srai         a7, s9, 28
                  slt          t5, ra, a1
                  sub          t4, tp, s10
                  slt          t5, s6, a6
                  auipc        gp, 193687
                  sub          sp, a0, a4
                  slt          a1, t2, s0
                  andi         s4, s2, 1569
                  addi         gp, ra, -1002
                  sltu         s6, tp, s2
                  addi         s5, t3, 484
                  and          t3, t0, t0
                  sra          t0, s6, t6
                  srl          s5, a2, t1
                  and          s4, a1, ra
                  addi         zero, s3, -632
                  lui          a2, 514859
                  auipc        t3, 468395
                  srl          a7, s10, a7
                  sub          a0, s6, a2
                  srl          a3, t4, s4
                  xori         t0, s10, -1365
                  nop
                  add          s3, a0, s2
                  addi         a2, s11, -1050
                  add          s9, a2, s6
                  andi         s6, s10, 957
                  ori          tp, a6, -176
                  xori         a0, t6, 1098
                  slti         t6, t3, -1057
                  sltiu        s9, t4, -846
                  auipc        s1, 277610
                  sltu         a1, s1, s4
                  sll          tp, ra, a5
                  xori         t1, sp, -1761
                  slli         a6, a1, 7
                  lui          t5, 333570
                  xor          a4, sp, t5
                  xor          sp, t3, a5
                  sra          zero, sp, t0
                  slti         s6, sp, 700
                  xor          s6, s0, s4
                  sll          a6, s8, t4
                  and          a7, s11, t1
                  srai         s3, a5, 18
                  xor          s0, t3, t1
                  ori          s5, s8, 222
                  slti         s4, a4, 244
                  and          tp, s10, t0
                  slli         s6, zero, 14
                  sra          s3, t5, a5
                  sltu         t1, s10, s0
                  sra          s0, s7, s1
                  sub          gp, s9, s11
                  sll          gp, t6, a0
                  srl          a7, a7, gp
                  nop
                  sll          a7, tp, a2
                  add          a2, a0, a4
                  auipc        a2, 275747
                  auipc        s4, 521492
                  lui          a7, 695628
                  slti         tp, sp, -911
                  and          ra, s0, s1
                  addi         s2, tp, -230
                  or           a2, s10, t0
                  slt          t0, s10, a4
                  nop
                  slli         s5, a0, 1
                  addi         s11, sp, -1068
                  xori         s1, a5, 1184
                  and          sp, a2, s1
                  ori          a2, s0, 262
                  lui          s11, 185420
                  nop
                  auipc        a2, 804912
                  slli         sp, s11, 0
                  slt          t1, s2, s4
                  slli         t1, sp, 19
                  andi         a2, a0, 879
                  slt          ra, t0, tp
                  sltu         s11, s3, s3
                  add          s11, ra, s7
                  sltiu        a1, tp, 1938
                  srl          a1, tp, s7
                  sltu         a6, t0, s3
                  xori         t5, t5, -698
                  lui          s3, 647639
                  ori          t1, a2, 657
                  andi         s2, s2, 1964
                  srai         t0, tp, 20
                  nop
                  lui          t5, 469237
                  srli         t3, a2, 1
                  add          s11, s3, a2
                  or           a3, s0, a7
                  sltu         t4, a3, s3
                  slti         t0, a4, 544
                  xor          t3, s3, s7
                  sra          a2, s7, s1
                  slt          ra, s2, a3
                  sub          a7, a4, t6
                  addi         s4, t1, 1955
                  slt          s9, a2, s6
                  xor          a6, gp, a0
                  or           s5, a6, t6
                  nop
                  ori          s1, gp, 1188
                  xori         t5, s9, 1544
                  sub          a2, s2, s2
                  sll          a4, s0, a2
                  andi         t3, s8, 1671
                  nop
                  slt          a6, a1, s6
                  or           a1, a7, s9
                  xori         t4, a6, 1815
                  ori          s1, t0, 982
                  addi         s7, tp, 1624
                  slli         s8, s2, 17
                  sra          a0, a4, t3
                  lui          sp, 351444
                  sltiu        s3, s4, 827
                  andi         gp, t5, 1190
                  and          a6, t6, t3
                  srli         t1, s7, 9
                  slli         a6, s8, 20
                  add          s4, t3, sp
                  or           a3, s11, t1
                  sltu         a7, t0, s9
                  ori          a3, a5, -1878
                  slt          a6, a2, a1
                  sltiu        ra, t4, -779
                  lui          s8, 864568
                  nop
                  auipc        s8, 1019620
                  sltu         s11, s11, t4
                  srai         t4, sp, 2
                  slti         s3, s7, 1178
                  and          s8, a7, s10
                  slli         sp, s4, 19
                  sra          ra, s2, gp
                  srai         t6, tp, 19
                  sltiu        ra, s11, 601
                  or           s7, gp, a5
                  auipc        ra, 265758
                  addi         s5, gp, -359
                  ori          t6, a5, -677
                  srli         a1, a5, 8
                  srli         a3, a6, 24
                  ori          ra, t6, -1046
                  srl          s6, a7, s6
                  xori         s6, a4, 1516
                  slt          s5, s2, t4
                  srli         s3, s3, 8
                  slt          s0, zero, a1
                  nop
                  sltu         a4, s0, a3
                  srai         a3, a6, 16
                  nop
                  slli         a4, ra, 28
                  auipc        tp, 849217
                  sra          t6, t4, t5
                  addi         t3, t2, 526
                  ori          sp, s2, -1308
                  lui          a1, 646462
                  ori          a2, s11, -1537
                  sltu         t5, tp, t2
                  andi         s1, s10, 464
                  ori          tp, s11, -2025
                  ori          a7, a1, 1841
                  sub          s3, s6, a2
                  slt          s4, a4, s4
                  sra          s8, s7, s2
                  sltu         a3, s2, a0
                  sltiu        s1, s4, 1542
                  sltu         t5, s0, s0
                  add          a2, s9, zero
                  add          t6, s10, s1
                  ori          a1, s4, 1661
                  auipc        ra, 300543
                  andi         s1, a3, 1624
                  addi         s2, t4, -541
                  auipc        s2, 984883
                  slti         s4, s7, 31
                  or           t6, sp, a7
                  xori         a2, t6, -2043
                  sltiu        s5, s1, 169
                  sltiu        a3, a5, 1536
                  auipc        a6, 561212
                  sll          a7, s4, t5
                  slt          a3, s1, s1
                  sra          zero, a5, t4
                  sub          s4, t4, t5
                  add          t3, t1, s2
                  srl          zero, a5, a2
                  auipc        s5, 374610
                  andi         s3, t4, -615
                  slti         s3, t2, -482
                  nop
                  sra          zero, a5, gp
                  and          sp, s6, s2
                  sltu         s7, t0, a4
                  add          zero, s5, t6
                  srai         a2, gp, 28
                  slt          s4, t2, a1
                  srli         s5, t1, 21
                  sltu         s4, s5, s3
                  or           s1, s0, a6
                  auipc        s6, 711113
                  and          a1, t6, s5
                  sltu         a4, a4, s3
                  ori          t6, a7, -1563
                  or           sp, a6, s8
                  slli         tp, s1, 24
                  auipc        ra, 670273
                  and          t6, t4, s8
                  sub          tp, a2, sp
                  srli         t6, a3, 12
                  and          t6, a2, zero
                  srai         a0, t6, 25
                  srai         s7, ra, 4
                  sltiu        t5, gp, -1640
                  and          s1, s4, a2
                  lui          t6, 682887
                  nop
                  slti         a3, s9, 963
                  slt          t4, a7, a0
                  or           sp, t6, s9
                  nop
                  sll          s11, t4, s9
                  sub          t1, a7, s6
                  sll          t0, a5, t5
                  sltu         s0, gp, a4
                  sll          sp, s8, t1
                  or           s3, t0, a0
                  sltu         s3, t2, a2
                  slli         s11, a3, 13
                  sub          a4, s9, zero
                  and          a1, s4, t0
                  slti         ra, a2, -613
                  xori         t5, a0, -1292
                  sltu         a2, a7, tp
                  lui          a2, 250270
                  and          t0, t5, s4
                  or           a4, s8, s1
                  xor          a2, a2, zero
                  slti         a0, a7, 1306
                  sub          s1, a7, s9
                  sltiu        t5, s9, -1284
                  sltiu        a6, a7, 1276
                  andi         s0, t6, -1431
                  slli         t6, t1, 31
                  srai         t6, a0, 12
                  and          a1, s2, s11
                  srl          ra, s11, s5
                  srli         s8, a2, 2
                  sltu         a3, a7, s9
                  auipc        zero, 884968
                  slt          s3, s9, s4
                  andi         s6, t3, 727
                  addi         zero, a5, 923
                  auipc        s7, 802146
                  lui          t3, 2480
                  sltu         s0, s10, s3
                  and          t5, s3, a6
                  sltiu        s1, a7, -1043
                  slti         a2, s1, 302
                  auipc        s11, 181548
                  slti         t0, sp, -1578
                  slt          a4, a3, t4
                  sra          s2, a1, a6
                  srai         t4, s10, 22
                  slti         s11, tp, 809
                  sltiu        a2, ra, -1821
                  add          ra, a4, a3
                  or           a1, t2, t6
                  xor          sp, s11, t4
                  srl          a4, a4, s8
                  xori         s4, s4, 1194
                  add          s1, gp, a7
                  srai         s8, a7, 9
                  add          s5, a5, a0
                  sra          s7, a0, t0
                  nop
                  srli         s2, t5, 20
                  sub          a4, s6, t3
                  sub          a6, t3, t6
                  slt          t0, s8, t4
                  add          s2, a6, s8
                  xori         tp, t3, 357
                  nop
                  sltiu        s9, s11, 1777
                  ori          s6, t0, -1350
                  xor          sp, zero, t5
                  slli         t4, tp, 3
                  slli         tp, gp, 9
                  sltu         t4, s1, a2
                  lui          a1, 707523
                  slti         s0, t3, 1052
                  slt          s5, gp, t0
                  and          s6, t2, a3
                  xor          a0, t2, a7
                  addi         s4, s5, -403
                  auipc        s11, 383796
                  nop
                  srai         t4, s0, 14
                  or           t6, a7, s4
                  andi         a4, s8, 1719
                  srl          t1, t1, s11
                  auipc        s8, 724808
                  xori         tp, t1, -139
                  lui          s7, 67579
                  add          s11, t1, a4
                  xor          s9, a7, s6
                  sll          t4, s10, s7
                  srli         a0, s5, 10
                  nop
                  sltu         s11, t2, a5
                  sub          s2, zero, zero
                  auipc        t3, 459895
                  andi         a2, s1, 72
                  nop
                  xor          s9, t0, s10
                  srli         a0, s1, 6
                  srli         a4, tp, 10
                  add          a3, s8, ra
                  sra          t4, a7, s3
                  srai         s0, sp, 7
                  sra          gp, a7, s0
                  or           gp, tp, a7
                  slt          t3, t0, s5
                  auipc        a0, 46736
                  slli         s2, s10, 22
                  auipc        s4, 320477
                  auipc        sp, 644254
                  sltiu        t1, t1, -1231
                  slti         s11, s8, -765
                  xor          a6, tp, a6
                  andi         tp, t6, 1641
                  ori          s7, s5, 927
                  sra          a4, zero, a0
                  sll          t4, a3, a4
                  sltiu        s0, a6, -41
                  slli         t3, t0, 5
                  or           s7, a3, a6
                  slti         t4, s6, 53
                  nop
                  or           s1, a6, t1
                  add          a1, a1, t0
                  auipc        zero, 513853
                  add          sp, tp, a2
                  andi         s6, a2, -214
                  nop
                  slti         s2, t2, 350
                  sub          a6, t3, t6
                  nop
                  xori         sp, tp, -1262
                  and          s8, t4, s0
                  slti         t0, s11, -1595
                  and          t5, t4, t0
                  sll          s0, gp, t3
                  sltiu        ra, t6, 1574
                  sub          s6, s2, a6
                  addi         a4, t6, 100
                  sub          s1, s0, t4
                  sra          tp, t3, t6
                  auipc        zero, 829082
                  sll          t3, a2, t3
                  srl          s0, t3, t1
                  and          s4, s3, a5
                  lui          s4, 433038
                  nop
                  xor          sp, t3, s6
                  srli         s0, t0, 1
                  srai         t6, gp, 4
                  sll          s2, t2, t1
                  sltiu        t0, s0, -256
                  srai         s3, sp, 19
                  xori         a1, s1, 983
                  sltu         gp, s9, s3
                  or           s9, a5, s3
                  auipc        ra, 777723
                  sra          s0, gp, a4
                  sra          t0, a0, a0
                  slli         s4, a5, 23
                  srl          a3, a6, a3
                  srai         s11, t2, 8
                  lui          t3, 592360
                  lui          t3, 775115
                  sra          sp, t4, t5
                  nop
                  srli         a0, sp, 24
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           gp, 0x80000000
                  li           s11, 0xffffffff
                  li           a3, 0x80000000
                  li           a4, 0x0
                  li           t3, 0xeac39703
                  li           s2, 0x80000000
                  li           s8, 0x7e961bcf
                  li           s9, 0xffffffff
                  li           a6, 0xffffffff
                  addi         gp, gp, -285
                  addi         a6, gp, 2035
                  nop
                  add          s8, s8, a6
                  addi         gp, s2, -1042
                  nop
                  nop
                  lui          s6, 709502
                  lui          s11, 185607
                  add          gp, a4, s9
                  lui          s11, 763519
                  auipc        a4, 864707
                  nop
                  lui          s2, 794140
                  addi         gp, t3, -2029
                  addi         a3, s11, -290
                  nop
                  auipc        s6, 592251
                  add          a6, s9, s2
                  nop
                  lui          s6, 189426
                  sub          s11, s9, s8
                  add          a3, a4, a3
                  auipc        s6, 161088
                  auipc        t3, 234392
                  sub          a6, a6, gp #end riscv_int_numeric_corner_stream_9
                  srli         s0, s7, 25
                  srli         s9, a2, 11
                  addi         t4, s8, -444
                  lui          a7, 73312
                  sltu         s1, tp, gp
                  add          ra, s11, t0
                  andi         s0, a5, 2041
                  srai         t3, s10, 0
                  slt          t6, t3, t4
                  srli         a7, t6, 5
                  sra          t5, t2, s10
                  srai         t4, t2, 6
                  sltu         s11, t0, s10
                  lui          s6, 554409
                  xori         a4, a3, -383
                  slti         s3, s11, -1055
                  lui          s8, 495681
                  nop
                  add          t4, gp, a5
                  slti         a7, s11, 1983
                  slt          t3, t0, ra
                  srli         a4, t3, 26
                  slti         zero, gp, -409
                  sub          s3, t2, t1
                  srai         s4, s1, 17
                  sltu         s2, s4, s6
                  addi         gp, s2, -86
                  xori         s7, sp, -1711
                  srai         t0, a4, 2
                  xor          sp, zero, s11
                  xori         t5, a7, -447
                  srl          s5, t1, t1
                  ori          s3, a7, -655
                  sra          a4, t3, a3
                  sra          t0, s3, a4
                  sll          gp, a3, s3
                  sub          t1, s0, zero
                  andi         s8, a7, -684
                  auipc        a1, 125427
                  xori         a4, zero, 1820
                  ori          s0, a3, -1311
                  add          a6, s8, a0
                  auipc        a7, 551053
                  nop
                  sltu         s11, t1, s1
                  slt          a7, a4, a7
                  sltu         s6, t0, t3
                  slt          s6, a4, s10
                  slti         t5, s8, 1921
                  srl          a6, s2, gp
                  sra          a0, a3, s4
                  slt          s0, s1, t1
                  srai         s1, t0, 19
                  sltiu        t1, s8, -631
                  srli         a7, s6, 13
                  addi         tp, s1, -812
                  srli         tp, ra, 17
                  or           s0, t6, a2
                  srl          s1, s0, a7
                  xor          s5, a0, s0
                  auipc        s8, 887521
                  srl          s4, t0, tp
                  ori          ra, s3, 1002
                  or           sp, s8, t1
                  sltiu        s1, sp, -974
                  auipc        ra, 542782
                  ori          s7, gp, -1709
                  add          t1, a5, gp
                  slli         tp, t1, 10
                  or           a6, s5, s1
                  slti         a2, t3, 1820
                  or           sp, s8, a5
                  sub          s9, a4, s4
                  auipc        s0, 1009725
                  sll          a3, a2, tp
                  lui          t4, 850386
                  and          s4, zero, a2
                  xor          t0, s4, tp
                  auipc        s11, 514248
                  sltu         tp, s7, s4
                  add          s5, a1, s7
                  or           s8, a0, a4
                  lui          s4, 520020
                  slt          sp, t4, a4
                  sltu         a0, gp, s4
                  xor          a3, s6, a1
                  sub          s8, a7, s0
                  sltiu        s2, t1, -730
                  xor          t4, s10, a5
                  xor          gp, a2, zero
                  slli         s9, s9, 4
                  sll          s0, s11, t4
                  ori          a6, t0, 1188
                  srai         t1, sp, 21
                  ori          s9, gp, -1731
                  addi         t6, a3, 557
                  xor          gp, a6, s8
                  xori         s9, t1, -785
                  sra          s4, s5, tp
                  srai         s7, a5, 13
                  ori          a7, s9, 1275
                  xori         gp, sp, 1357
                  xori         a7, s1, 34
                  or           s9, a7, tp
                  sub          s2, ra, s4
                  lui          t6, 441627
                  or           t6, t0, s9
                  sltiu        s3, s0, -1632
                  srai         t3, s2, 0
                  sra          s1, a2, t2
                  slt          t0, s9, t4
                  auipc        t4, 921750
                  auipc        s7, 384330
                  ori          a6, a0, -1340
                  add          gp, s6, gp
                  slli         s0, t6, 28
                  slt          tp, s4, s9
                  sub          s2, s6, a4
                  srai         t4, t4, 13
                  ori          a7, s4, 56
                  auipc        a6, 383601
                  xori         t3, a1, -22
                  srl          sp, a6, t5
                  xor          s1, s8, ra
                  sll          s7, s8, a7
                  sub          t4, s9, s10
                  add          t1, tp, t2
                  lui          a1, 673434
                  sub          t0, a7, s4
                  slt          gp, zero, s7
                  add          s5, a4, s3
                  sltiu        a6, a7, 842
                  slli         a1, s8, 28
                  add          gp, s1, t0
                  xori         zero, gp, -1581
                  or           a7, t0, s1
                  addi         tp, a3, -1990
                  srai         a3, a5, 14
                  nop
                  srli         a4, t2, 11
                  addi         a2, s6, 1067
                  and          sp, s10, s10
                  ori          t6, t4, 372
                  sltiu        t5, a7, -964
                  sub          a4, gp, zero
                  sltiu        a6, a6, 359
                  ori          ra, sp, 1804
                  srai         s9, t0, 9
                  srl          t5, t0, tp
                  slli         ra, t3, 11
                  slli         ra, a0, 10
                  andi         t6, s11, 1043
                  sltiu        t5, s11, -1141
                  nop
                  lui          sp, 313163
                  sub          a6, t0, a5
                  lui          a6, 89393
                  add          s9, a6, a3
                  slli         a1, t2, 5
                  srai         s0, s9, 1
                  li           s2, 0x118b3d15 #start riscv_int_numeric_corner_stream_16
                  li           t3, 0xffffffff
                  li           s5, 0x2983c63e
                  li           sp, 0xa859e9ae
                  li           t5, 0x80000000
                  li           t1, 0x0
                  li           a1, 0xffffffff
                  li           t6, 0x0
                  li           s11, 0x0
                  li           ra, 0x0
                  nop
                  nop
                  auipc        t1, 413470
                  addi         t3, t5, 353
                  auipc        s11, 456010
                  addi         a1, t1, -1097
                  add          a1, t1, ra
                  auipc        s2, 676392
                  add          s11, s11, t1
                  nop
                  add          t1, s2, s11
                  nop
                  lui          t5, 596333
                  add          t1, t5, t1
                  auipc        sp, 359024
                  lui          t1, 929465
                  lui          t5, 743841
                  sub          t3, s2, t1
                  add          s11, s2, ra
                  nop
                  auipc        t3, 291988
                  lui          s2, 1000801
                  addi         sp, s5, 484
                  addi         s5, t6, 59
                  add          s5, t1, t3
                  sub          ra, t1, s2
                  add          t6, a1, t3
                  add          t1, t3, s2
                  add          t6, t3, s11
                  auipc        t1, 5999 #end riscv_int_numeric_corner_stream_16
                  nop
                  sll          a3, t2, s4
                  slli         s7, a4, 16
                  srli         s8, t5, 7
                  xori         zero, zero, 626
                  slt          t3, sp, t3
                  slt          s7, a7, sp
                  xor          zero, a1, t5
                  srai         a6, s6, 2
                  sub          a1, a3, s3
                  ori          zero, a4, 384
                  slli         s9, t0, 6
                  sltu         s7, s4, t3
                  addi         a3, t3, 290
                  xori         t6, a1, -1731
                  slli         t3, a2, 12
                  and          s5, a4, s11
                  xor          sp, t3, s2
                  auipc        a6, 561660
                  sub          a4, ra, a3
                  and          t3, t0, a4
                  andi         sp, s10, -765
                  sra          s4, a6, s7
                  sra          t4, zero, sp
                  andi         gp, s0, -1772
                  slti         tp, t5, 1768
                  sra          a1, s2, s4
                  sra          s9, t4, s2
                  slt          gp, t3, s10
                  ori          s2, t2, -1456
                  nop
                  sub          a4, a2, a3
                  slli         gp, t5, 6
                  add          t5, a2, t1
                  xori         t6, t4, 820
                  slli         s5, a0, 28
                  ori          s9, a0, 1046
                  srl          gp, s0, t4
                  sub          t0, gp, s0
                  slt          t0, tp, gp
                  sub          gp, a2, t0
                  or           a0, a3, t5
                  slti         s3, a6, -881
                  xori         ra, a5, 211
                  srai         s7, s9, 22
                  sll          s0, t4, sp
                  slli         t6, s0, 16
                  and          t0, zero, a7
                  sub          s11, t0, a4
                  sltiu        s7, s8, 1836
                  slli         a7, s11, 20
                  or           s5, t6, a5
                  sltu         a2, a2, ra
                  sra          a0, a2, s10
                  srli         s11, s0, 28
                  slt          t4, t0, tp
                  and          s3, s9, s3
                  srl          t3, s0, s9
                  auipc        t5, 618466
                  add          a0, a2, s4
                  sub          a4, tp, gp
                  srl          a6, a4, s5
                  sub          s7, gp, a7
                  nop
                  lui          a1, 1044892
                  slli         a4, a4, 24
                  srli         tp, a4, 30
                  slti         s4, a3, 119
                  slt          s7, t1, zero
                  addi         s5, s3, -110
                  addi         a6, zero, 1234
                  sltiu        s8, a6, 1839
                  or           ra, a2, t3
                  addi         t6, ra, 267
                  srl          zero, s4, sp
                  or           sp, a6, tp
                  and          s1, a0, a3
                  sltiu        s7, s9, -11
                  sltiu        s9, s5, -628
                  slt          s3, a3, t3
                  add          a6, s8, s6
                  slli         s1, s8, 4
                  srai         s8, t3, 18
                  sub          a1, t5, a4
                  lui          t0, 376785
                  srli         s1, s7, 1
                  and          s7, a4, t3
                  sltu         zero, t4, s6
                  addi         tp, a7, 120
                  slti         s5, s9, -112
                  add          s7, s2, s7
                  addi         s8, t4, 1566
                  sltu         s1, s6, a5
                  slt          s2, t0, t3
                  add          s11, a6, s2
                  add          s9, a5, a3
                  addi         s2, a4, -1422
                  sra          zero, s3, s7
                  add          s2, t2, s1
                  xori         a6, s8, -1548
                  slli         a0, s9, 30
                  srai         a4, gp, 6
                  sltiu        zero, s0, -1080
                  lui          s1, 851690
                  slli         tp, t2, 21
                  sltiu        s0, s11, -1965
                  slli         s9, zero, 28
                  xor          tp, s10, t4
                  slt          a1, s9, t2
                  sub          s8, s8, gp
                  srai         t1, t6, 29
                  srai         a6, t2, 24
                  addi         s0, s4, 791
                  sltiu        t1, t0, -1642
                  add          a1, a2, sp
                  auipc        gp, 158846
                  ori          t5, s0, 500
                  srl          s6, gp, gp
                  or           t4, s6, s3
                  ori          t0, t2, 145
                  slti         s7, sp, -1281
                  xor          s5, a1, s3
                  xor          s8, a6, a2
                  srai         a2, gp, 12
                  slti         t0, a1, -738
                  ori          tp, s5, 211
                  slti         a2, a6, -1065
                  slli         s0, s8, 14
                  and          ra, sp, sp
                  xor          a1, t0, s5
                  slt          t5, a4, s7
                  slli         s1, s0, 20
                  sltiu        s7, ra, 1749
                  slti         s6, s1, -234
                  addi         s0, a4, 142
                  srl          s0, sp, sp
                  or           zero, a6, a3
                  auipc        s2, 257810
                  sub          s8, s9, a6
                  addi         a0, a1, -1357
                  addi         tp, a5, 1016
                  lui          s2, 967073
                  andi         t1, s6, -168
                  sub          sp, a2, t3
                  slt          a0, a2, a5
                  andi         a0, t3, 999
                  lui          s4, 640667
                  sltu         t6, s2, s3
                  slti         t1, a7, -654
                  sltu         s9, s10, s11
                  slti         s9, t6, -1380
                  and          tp, s6, t1
                  srai         sp, s3, 26
                  sub          t3, a1, a0
                  sll          a1, a0, gp
                  sra          t5, zero, a1
                  add          zero, s2, s5
                  lui          ra, 573656
                  xor          ra, t0, s11
                  sub          a3, s1, s1
                  sltiu        s5, s9, 1867
                  sll          ra, sp, t0
                  add          t3, a2, s0
                  sll          a4, t3, a6
                  srli         t6, s0, 25
                  slti         a7, a1, -608
                  auipc        tp, 866182
                  srli         t0, ra, 27
                  xori         ra, s7, -833
                  sll          s3, s10, a5
                  andi         s9, t5, 1606
                  slli         t4, s11, 1
                  and          t0, a3, s2
                  sra          zero, t1, t4
                  slli         t0, a4, 20
                  srli         s2, ra, 6
                  or           s1, s2, s0
                  addi         t3, sp, 625
                  srl          s8, sp, t5
                  sltu         s2, a4, a4
                  sll          gp, zero, a3
                  andi         gp, s11, -719
                  andi         s8, s1, -386
                  add          t4, s3, tp
                  lui          s1, 185993
                  slt          s3, s0, s4
                  or           a4, t2, t2
                  andi         sp, s7, -812
                  nop
                  slti         a1, ra, -786
                  sra          gp, s1, t1
                  srl          s11, zero, s8
                  slli         s6, s2, 18
                  sub          s7, s8, s4
                  srl          tp, a5, t4
                  srai         s0, t2, 29
                  ori          s6, s8, -572
                  srai         t3, t3, 28
                  add          s2, a7, s10
                  slti         s3, s7, 1863
                  auipc        t5, 283714
                  slli         ra, t0, 29
                  sltiu        a1, s9, -1971
                  xori         t0, t4, 1305
                  andi         s7, s11, -741
                  or           tp, s3, s3
                  sltiu        tp, s7, 1666
                  slli         s9, a0, 22
                  ori          s8, a4, -683
                  xori         a1, s11, 990
                  lui          s6, 221535
                  or           t5, t5, t2
                  slti         t5, a3, -1174
                  sra          a6, t2, s3
                  lui          a0, 125895
                  slt          s9, a2, t0
                  sub          zero, t6, s0
                  sll          s3, gp, t2
                  lui          a1, 324872
                  slli         s0, s11, 18
                  and          a2, a2, ra
                  slti         a0, s1, 762
                  srl          a4, s5, s3
                  sra          s8, s8, a5
                  add          t0, a7, s1
                  xori         gp, s11, 630
                  slt          ra, a7, a5
                  srli         tp, s9, 24
                  or           a0, a0, t6
                  sltiu        s4, t1, 1688
                  sll          a6, a4, t0
                  xor          s0, a6, zero
                  addi         a7, t6, -39
                  slti         a3, s6, -1579
                  lui          a4, 766178
                  or           t3, t6, tp
                  xori         s1, t0, -658
                  sll          a0, s3, s9
                  srai         t4, a6, 0
                  xor          s4, s3, s9
                  sub          s2, a3, a7
                  and          a4, a2, ra
                  or           gp, ra, s10
                  andi         s1, t6, -1315
                  addi         t6, s7, 1149
                  sra          s3, a6, a3
                  xori         tp, t2, 241
                  sub          t1, t0, s8
                  srai         s4, s10, 25
                  addi         t3, a2, -822
                  sltu         s11, s8, a1
                  slli         a3, a0, 24
                  slti         t5, t3, -1078
                  srai         s8, s9, 29
                  sll          s8, t3, s5
                  ori          s6, s2, -225
                  xori         t6, s9, -302
                  sub          a3, t1, a6
                  slli         t0, a7, 5
                  slti         zero, s11, 1579
                  addi         s11, a0, -429
                  lui          s8, 1021370
                  nop
                  srai         s5, a4, 0
                  slt          t4, a3, t0
                  andi         zero, t4, 1662
                  srli         s4, t0, 4
                  sub          a1, t3, t5
                  auipc        s11, 128287
                  andi         s8, t3, -1508
                  srl          t4, a7, s5
                  lui          a4, 640613
                  sll          a3, t5, a0
                  add          s4, s8, a4
                  sll          s1, a7, a5
                  xor          t1, zero, a4
                  xori         a7, a0, -168
                  sra          a0, s10, a6
                  xori         zero, s10, -1466
                  srl          t4, s7, t6
                  sll          a3, t6, tp
                  nop
                  xor          a1, s0, a4
                  or           a7, s8, t0
                  xor          s3, s2, s7
                  sub          a4, s10, t0
                  auipc        a1, 355357
                  ori          a7, a1, 1593
                  sltiu        ra, t3, 655
                  and          a6, a2, tp
                  slti         s0, a2, -967
                  sltiu        s2, zero, 1996
                  sltiu        a7, s6, -1075
                  xori         a0, s3, 904
                  slt          s3, sp, s1
                  slt          s1, tp, a7
                  andi         s4, t6, 1729
                  ori          s3, s6, -868
                  sltu         s0, t5, zero
                  sra          a4, a6, tp
                  slti         tp, ra, 1186
                  slt          s11, s7, t2
                  and          zero, s11, s10
                  and          t1, a5, s9
                  xori         t6, t2, -843
                  addi         s8, t2, -1794
                  and          ra, gp, t2
                  sll          t0, tp, s9
                  auipc        s7, 526836
                  srai         t0, s8, 2
                  xori         a3, t0, 1420
                  sub          s5, t0, t6
                  xori         t5, gp, 124
                  sra          sp, a5, a2
                  slti         a1, zero, 521
                  slt          a6, s8, s9
                  srl          t3, s3, s9
                  slt          t4, s4, a2
                  andi         t5, t2, 1808
                  sra          a4, sp, t2
                  andi         s5, a7, -990
                  andi         s8, t3, 1809
                  sra          a6, zero, t2
                  srai         s9, a7, 24
                  slti         t4, t4, -1092
                  and          sp, a3, s7
                  srl          t4, a6, a4
                  sra          t5, ra, gp
                  and          s0, s11, s6
                  srl          t6, gp, s8
                  srl          t5, t1, s2
                  xori         ra, t2, -977
                  slli         s0, t4, 27
                  and          s4, t5, a3
                  nop
                  auipc        ra, 588573
                  and          t1, t0, s0
                  sll          a4, s2, zero
                  addi         t1, t3, 772
                  srai         s0, a0, 20
                  auipc        s11, 1047415
                  sra          tp, a3, t1
                  srli         t1, s7, 15
                  add          a3, s5, s7
                  slli         zero, gp, 11
                  sra          a0, s2, a1
                  sll          s6, t1, a1
                  sltu         a1, t2, t6
                  sll          s3, a4, s10
                  sll          ra, tp, a5
                  sltiu        t0, a6, 260
                  lui          t5, 934274
                  and          s8, t0, t6
                  sra          t5, s6, a4
                  andi         t3, s8, 1270
                  lui          a3, 554745
                  slli         a7, s3, 2
                  addi         s1, t0, -1771
                  sub          s4, s6, t5
                  andi         s0, t3, -259
                  slt          s4, s7, s3
                  srli         t5, s3, 21
                  sub          t5, t2, s7
                  sll          tp, s7, s10
                  srai         t0, s1, 31
                  srli         t3, tp, 1
                  xor          t0, s4, t4
                  srli         t1, a0, 13
                  add          s5, s1, a0
                  addi         s9, s10, 1704
                  slli         t6, tp, 9
                  addi         s1, a5, -767
                  xor          sp, a0, s2
                  auipc        gp, 539866
                  sltiu        t0, s1, 1408
                  auipc        a4, 224385
                  slli         a2, s4, 6
                  add          t1, t3, s3
                  addi         sp, s11, -594
                  slli         zero, s10, 3
                  sra          ra, a1, s7
                  sll          s6, s6, a4
                  srli         t3, a1, 3
                  add          zero, t3, t0
                  srli         t5, s2, 12
                  sra          ra, a2, t3
                  and          s6, s11, s9
                  srl          a1, a0, t3
                  sltiu        a2, s7, 944
                  slti         a6, s11, -630
                  slti         a2, s6, -2000
                  sra          s7, a7, s5
                  sub          t1, zero, s7
                  srl          gp, zero, t3
                  add          a2, s0, s8
                  and          s11, s6, s5
                  sub          s6, a5, t2
                  srai         s9, s1, 16
                  add          s2, s2, s6
                  slli         s9, sp, 13
                  slli         s9, s0, 29
                  sub          s1, s7, s2
                  xori         a3, a6, 1209
                  sltiu        s1, a4, 1882
                  srli         a4, a6, 30
                  sub          s6, s1, s8
                  sll          t6, t3, t6
                  sra          t4, ra, ra
                  xori         t5, s9, 264
                  add          a6, s11, t1
                  or           s3, t5, t5
                  sltu         s3, s4, a0
                  srl          zero, t5, t6
                  ori          a2, a7, 22
                  ori          sp, s11, 173
                  ori          ra, s7, -377
                  srl          sp, s4, tp
                  srl          a2, s11, s4
                  srl          t1, a5, s4
                  sltu         s4, s7, a2
                  or           t5, a6, s7
                  srl          t4, gp, s10
                  add          t3, t5, s8
                  sll          tp, a2, zero
                  auipc        s0, 592493
                  or           t3, s7, gp
                  ori          s6, s3, -40
                  auipc        s8, 315315
                  sltiu        s0, t0, 1423
                  sra          a0, t3, s4
                  lui          s2, 689963
                  xor          s4, s5, zero
                  or           s8, a7, s4
                  srl          ra, t1, s2
                  addi         a3, tp, -713
                  and          s9, s7, t4
                  srli         s1, ra, 3
                  add          s1, zero, sp
                  sub          s1, t4, t6
                  slti         s1, s10, 1813
                  srai         s6, s4, 10
                  nop
                  srli         s3, t1, 3
                  slt          s1, a4, s4
                  slli         s8, s10, 20
                  addi         t0, s6, -1620
                  ori          a2, a5, 79
                  slt          s6, s4, a2
                  srai         t0, zero, 25
                  lui          zero, 320338
                  and          t0, s10, s1
                  auipc        s7, 549254
                  slli         a1, s8, 30
                  slt          tp, t3, t6
                  sub          a0, zero, t5
                  lui          t3, 802911
                  xori         a2, a0, -1858
                  sltu         t1, s7, sp
                  slt          s0, s3, t3
                  or           a4, s2, t2
                  nop
                  srli         t6, s7, 3
                  add          s8, a2, s4
                  sltiu        s11, t3, 1912
                  sra          ra, s2, s0
                  and          gp, t1, t5
                  slli         a2, a3, 24
                  nop
                  sub          sp, gp, s0
                  addi         a6, s1, -494
                  andi         a7, a3, 603
                  xor          s0, t3, gp
                  xori         a6, s10, 1618
                  srai         a2, t0, 27
                  andi         s8, s6, -538
                  and          a1, t4, s9
                  sub          t5, zero, t1
                  sra          sp, s0, s7
                  and          a1, s5, t3
                  sltu         s7, t6, s7
                  and          s1, s4, a6
                  sub          t3, gp, t1
                  and          tp, t2, s11
                  and          s3, s11, t5
                  or           s4, t6, s9
                  lui          sp, 704951
                  xor          a1, gp, t0
                  andi         s9, t6, -1326
                  slt          a7, a7, sp
                  lui          zero, 666154
                  slli         tp, a3, 31
                  sub          a0, ra, a4
                  addi         t0, a1, -82
                  sra          s3, ra, s2
                  nop
                  xori         a4, s8, 31
                  nop
                  sll          s6, t1, s2
                  sll          a6, t0, a4
                  xori         s7, a4, -1498
                  lui          s1, 127644
                  srli         s7, t3, 25
                  sltiu        s11, t0, 1408
                  ori          a4, zero, -910
                  ori          a0, t1, -1150
                  and          s7, a5, a6
                  sltu         s9, a3, a7
                  auipc        ra, 241569
                  add          s5, s7, t2
                  sll          t5, s1, a1
                  slli         gp, tp, 17
                  or           s11, a4, s10
                  slti         s3, t3, -680
                  xor          a0, t0, s4
                  slli         a2, tp, 15
                  ori          t5, s6, -1985
                  slt          a0, s10, zero
                  addi         gp, s8, 60
                  auipc        t3, 276025
                  sltu         s3, s7, zero
                  auipc        t5, 391593
                  xor          s7, t0, s1
                  sll          ra, gp, tp
                  auipc        ra, 357370
                  sll          a2, sp, t1
                  ori          a6, sp, 1602
                  lui          t0, 881786
                  andi         ra, s8, -919
                  slti         a6, a2, -1848
                  addi         s3, ra, -850
                  xor          s3, s4, s9
                  srli         t3, s9, 2
                  xor          s2, t5, a3
                  srai         sp, t3, 6
                  add          s6, t2, s8
                  slt          zero, ra, s5
                  sltu         t5, gp, a5
                  slli         a0, t4, 18
                  srai         t6, a5, 13
                  slli         zero, s3, 10
                  ori          s2, s4, -992
                  nop
                  slt          a0, a0, s5
                  sltu         s0, t6, t0
                  addi         a4, zero, -1101
                  slt          tp, s9, gp
                  xor          tp, a4, a0
                  sltiu        s1, t2, -1830
                  nop
                  and          tp, t4, a7
                  sra          s4, a7, s9
                  xori         t4, s1, -775
                  nop
                  auipc        s7, 1032540
                  xori         s5, s10, 166
                  or           gp, t6, s2
                  and          s9, sp, zero
                  slt          s2, s9, t6
                  slti         a4, s10, -1896
                  sub          s2, a1, t0
                  sll          a3, ra, gp
                  slt          a3, sp, a2
                  or           t4, s6, t4
                  sub          t3, s7, gp
                  sra          t5, s6, tp
                  ori          ra, a0, -1380
                  or           s3, s0, gp
                  slli         s11, s5, 2
                  sll          s11, s6, s5
                  ori          s5, s5, 580
                  slli         s7, t6, 19
                  or           s11, a5, a1
                  srl          s5, a3, ra
                  andi         t1, s9, 64
                  slli         a3, t5, 25
                  ori          t3, s3, -884
                  nop
                  andi         a7, ra, 1058
                  sltiu        t4, s7, 1973
                  xori         a2, tp, 1710
                  addi         t3, sp, 337
                  slti         t6, a3, -334
                  sltu         a0, a5, tp
                  sltu         ra, s7, a2
                  ori          s9, a3, 1324
                  sltiu        s8, s11, -665
                  xori         s8, t1, 220
                  auipc        s5, 174746
                  sra          t6, s5, ra
                  sll          t1, s0, a7
                  sll          a4, s1, a4
                  slti         ra, t2, -866
                  or           sp, s7, s9
                  sltu         a6, tp, t4
                  xori         sp, sp, -1206
                  or           s4, s6, s8
                  and          s11, gp, t3
                  sub          s9, ra, s4
                  lui          t0, 751458
                  sltu         gp, s4, s3
                  sltu         s4, s3, a3
                  srli         a1, a2, 1
                  lui          tp, 686839
                  srai         s3, t1, 4
                  sltu         a1, s5, s4
                  addi         t5, a3, -1035
                  and          s7, a3, s0
                  auipc        s7, 397191
                  auipc        t6, 300526
                  or           s2, sp, s7
                  addi         a0, s8, -774
                  sll          s5, t3, s5
                  sltiu        a3, tp, 166
                  xor          s7, t3, zero
                  sll          s7, s6, a6
                  nop
                  slti         t3, s1, 1591
                  nop
                  srl          ra, t4, s8
                  sll          a3, ra, t5
                  add          s3, a5, t6
                  addi         a0, s2, 1019
                  sra          a0, s5, s8
                  add          s6, a3, s4
                  slt          a7, s1, s9
                  andi         t1, s0, 1605
                  sub          s3, s4, ra
                  andi         s2, a4, -1549
                  sltiu        a6, a7, 2023
                  sub          ra, s7, s6
                  srai         a6, s6, 8
                  sltiu        s7, t6, -207
                  lui          s0, 579451
                  nop
                  srl          s3, a1, s5
                  sub          a2, tp, s8
                  slli         s5, gp, 15
                  auipc        a7, 685983
                  and          a6, s3, s0
                  nop
                  nop
                  add          a4, s9, ra
                  andi         t4, a5, 1762
                  and          a6, s9, s11
                  srl          s0, s9, tp
                  nop
                  or           a6, s4, s8
                  and          s9, s11, t5
                  srli         a6, s8, 0
                  slti         a1, s8, 1819
                  lui          a6, 197125
                  sll          s8, a1, a2
                  sltiu        a2, t4, 931
                  andi         s1, a4, -17
                  add          zero, t2, t6
                  add          zero, s0, s0
                  sltu         zero, s11, a7
                  slt          s3, t6, a5
                  auipc        s11, 748899
                  sub          gp, s0, a2
                  ori          tp, s10, 302
                  srai         s4, gp, 1
                  addi         s1, s3, 691
                  ori          t5, zero, -186
                  xori         a6, t6, 1546
                  lui          s6, 318954
                  slti         tp, ra, 1781
                  srl          t0, sp, t4
                  srli         s0, t5, 25
                  sltu         s7, a5, s3
                  slli         t1, a6, 13
                  sll          a1, zero, tp
                  lui          s8, 77362
                  sltiu        s2, s6, 2014
                  add          sp, a3, s11
                  srai         ra, a5, 22
                  sra          a0, a4, s3
                  slt          a3, gp, tp
                  add          ra, s5, t4
                  slti         s2, a1, -1097
                  sll          s7, s10, a6
                  lui          s9, 1010657
                  and          t6, s9, a3
                  sra          s7, t0, tp
                  andi         s11, s9, 1772
                  slli         s1, t0, 14
                  add          t3, a7, zero
                  sll          s9, s5, sp
                  nop
                  slli         s6, t3, 5
                  srai         t3, a7, 0
                  slli         zero, gp, 11
                  srl          s0, s4, s0
                  nop
                  xor          a4, gp, s11
                  srai         a7, s5, 19
                  nop
                  ori          s3, s5, -1739
                  sub          a6, sp, s6
                  slli         t1, a1, 5
                  addi         tp, sp, -965
                  srli         a7, s0, 21
                  srai         s3, a4, 3
                  xor          tp, s0, a4
                  andi         s7, s11, -730
                  sll          s11, t5, s8
                  sll          tp, zero, a2
                  sll          t0, a5, a2
                  sltu         t6, s5, s1
                  or           s11, t0, s6
                  andi         s0, a6, 912
                  sll          s4, tp, zero
                  xori         s8, s3, 674
                  slt          t1, s6, a5
                  xor          t3, a6, s4
                  auipc        t6, 59458
                  srl          t6, s10, a6
                  addi         a4, a1, -125
                  sra          s3, tp, t0
                  srl          a4, zero, tp
                  xor          s8, t5, s5
                  slti         s6, t0, 1743
                  sll          zero, t0, s0
                  sltu         a2, ra, s8
                  auipc        s4, 73530
                  slti         s1, t6, 127
                  andi         a3, gp, 65
                  srai         t4, s5, 13
                  slli         a2, t0, 22
                  sra          a3, s6, s1
                  slti         a2, a7, 870
                  srl          a6, a5, t2
                  slli         s4, s1, 29
                  sll          s2, s0, ra
                  xor          ra, t4, s9
                  srli         s9, a2, 13
                  and          t5, sp, s11
                  and          s11, a0, gp
                  andi         a3, a1, -1100
                  add          s8, s9, t0
                  sll          s9, s8, s3
                  lui          a3, 519010
                  addi         t1, t6, -792
                  addi         s1, s2, 1477
                  sll          t0, s2, s5
                  andi         s1, ra, -1115
                  andi         zero, a4, 1465
                  srli         s7, s7, 10
                  sll          s1, s1, s0
                  xor          a4, t1, a5
                  slti         t5, s5, -533
                  sll          s9, s4, s0
                  sltu         gp, a3, a4
                  sltiu        ra, s9, -16
                  xor          t4, s10, a4
                  xor          s2, t6, t6
                  srai         s1, a4, 22
                  sub          zero, t3, s11
                  add          tp, a2, t4
                  nop
                  sra          a2, t6, s1
                  xori         a0, t6, -618
                  lui          t5, 16087
                  andi         a1, gp, 1517
                  and          sp, t0, t4
                  sltu         tp, zero, sp
                  sltu         t5, t1, s8
                  slti         s7, gp, -1042
                  sra          t0, s5, zero
                  srl          s8, t0, a0
                  sra          gp, sp, s1
                  lui          a6, 355434
                  andi         gp, zero, 1202
                  srl          s6, s6, a6
                  sra          a1, t2, s9
                  addi         s9, s2, -1446
                  addi         s3, s9, -1155
                  sltiu        sp, t1, 1795
                  ori          a1, t3, -559
                  xori         zero, t0, -1745
                  and          a3, s6, s2
                  sltiu        gp, s1, 1367
                  slli         a0, a6, 23
                  srl          a6, s3, a6
                  xori         s7, t6, -156
                  add          a3, t2, t2
                  sltiu        a0, t2, 469
                  slli         a3, s10, 15
                  slt          t4, gp, t2
                  slti         a6, a1, 1119
                  ori          gp, s5, 760
                  slt          s9, s0, s3
                  xori         ra, t3, -1357
                  ori          t0, t4, 1781
                  ori          a1, s11, -1482
                  slli         t4, s8, 20
                  xor          s3, s8, t6
                  add          sp, tp, s1
                  xori         zero, t6, 1116
                  slt          t0, a1, s8
                  sltiu        t5, s2, -1003
                  or           s9, s6, a4
                  add          s3, a0, t1
                  slti         s5, t0, 2040
                  or           a2, ra, a7
                  xori         a2, gp, -1261
                  andi         t4, a6, -700
                  sll          tp, t0, t0
                  xor          t0, t2, ra
                  srli         s8, s1, 7
                  slti         a2, a4, 1901
                  nop
                  sub          s1, s2, sp
                  lui          a0, 925895
                  sub          sp, s3, a4
                  slti         a6, s8, 1812
                  srai         t4, s3, 1
                  and          s1, tp, t3
                  slt          ra, s7, a4
                  ori          tp, s11, 0
                  nop
                  sltu         ra, s6, t2
                  sltu         a0, t0, s0
                  slli         t4, s7, 8
                  ori          a3, s7, -1981
                  sltu         a4, a7, s4
                  slti         a7, a7, 1027
                  sltu         zero, gp, t6
                  lui          sp, 246694
                  sll          t3, s0, t1
                  sub          s1, a2, ra
                  auipc        s3, 386228
                  sltiu        zero, s4, -284
                  and          s1, a2, t2
                  sltu         a1, s7, s7
                  slti         t1, a3, -773
                  nop
                  sub          t3, gp, s10
                  srli         s3, s6, 8
                  xor          zero, tp, sp
                  sra          s1, t6, a5
                  xor          t1, a1, s0
                  srl          s4, ra, s10
                  sub          t6, s10, s11
                  srli         tp, gp, 24
                  add          s6, a2, t2
                  sltu         s6, t0, s0
                  add          a0, a5, a5
                  ori          a2, s11, -466
                  addi         t6, a0, -1578
                  and          tp, a2, s7
                  add          gp, s7, a0
                  addi         t5, t3, 1022
                  srai         s1, a1, 9
                  slt          s3, a1, s0
                  xori         s2, a6, 1451
                  and          s6, sp, s5
                  auipc        a1, 732572
                  and          sp, a4, tp
                  sll          ra, t6, a5
                  andi         zero, a6, -448
                  slti         a0, tp, -1887
                  nop
                  sltu         a4, a6, zero
                  slti         t3, a1, -219
                  slti         s5, t2, -716
                  addi         t6, zero, 1119
                  auipc        s0, 112289
                  slti         s4, t3, 961
                  sra          a3, s10, a6
                  sll          s8, a3, t3
                  lui          s1, 442374
                  sll          a7, a3, t3
                  srai         gp, zero, 21
                  xori         a0, s4, 1980
                  slti         s9, s7, 1042
                  srl          a2, s0, s1
                  sra          s5, a4, s10
                  addi         a0, s9, 752
                  sltu         a2, a5, s1
                  srai         s0, a0, 16
                  sltu         t4, t1, zero
                  slti         ra, a2, -1241
                  lui          s5, 381887
                  addi         s6, a6, 1957
                  ori          s5, a1, -55
                  or           t3, t2, t1
                  sll          s8, a4, s8
                  slti         ra, ra, -1904
                  slti         s1, a4, 1729
                  slt          s8, sp, a4
                  nop
                  add          a4, tp, s10
                  sra          a4, a1, s4
                  lui          t4, 235252
                  srli         t4, zero, 24
                  nop
                  sra          zero, s5, a7
                  xori         s5, a0, 679
                  lui          t5, 206522
                  sra          s11, t6, a0
                  auipc        s1, 543214
                  slli         s11, s5, 29
                  srai         tp, a6, 16
                  sra          s11, a7, s3
                  slt          a2, s7, t5
                  auipc        s6, 489085
                  ori          s3, s2, -842
                  addi         a2, s8, -1190
                  lui          gp, 138682
                  sltiu        zero, a0, 1423
                  slt          s0, t6, a0
                  sra          gp, a2, zero
                  slli         zero, tp, 20
                  nop
                  lui          a7, 471708
                  sltiu        s4, a6, -1609
                  xor          s4, t4, s6
                  slt          a2, s2, t6
                  xor          a3, s4, t2
                  and          t5, ra, a1
                  and          tp, s5, a6
                  sra          t0, s2, a6
                  auipc        a0, 445199
                  nop
                  slti         s4, a1, 1874
                  sll          a2, t4, s4
                  ori          t5, s4, 132
                  sll          t5, s2, a0
                  andi         t5, ra, 1851
                  or           s3, t6, s6
                  ori          s9, sp, -1353
                  xor          a2, s0, t0
                  sra          t6, s1, s1
                  xor          zero, s8, zero
                  andi         s2, t1, -569
                  sltiu        a0, ra, -291
                  sra          s1, s10, a3
                  sub          s5, a5, s2
                  nop
                  nop
                  srli         s0, a7, 23
                  and          t1, sp, t3
                  sll          s4, t2, a3
                  nop
                  and          a3, ra, s1
                  ori          a4, s11, -1648
                  sltiu        t4, gp, 412
                  auipc        sp, 108865
                  auipc        zero, 292985
                  slli         gp, a0, 20
                  xori         s4, a6, -119
                  slli         s4, t1, 26
                  add          a1, s11, a3
                  sub          s8, a2, t2
                  auipc        t3, 207976
                  slt          t5, sp, s11
                  xori         a0, t1, 1261
                  sra          a6, tp, s1
                  xor          a1, t3, s11
                  andi         s7, t5, -103
                  nop
                  and          gp, tp, a5
                  srli         s2, t6, 31
                  xori         t0, t4, 1296
                  ori          s11, t0, 1569
                  xori         s2, t6, -1318
                  lui          s7, 117499
                  sltu         s1, gp, t1
                  nop
                  addi         s11, a0, 2017
                  andi         sp, ra, -1164
                  sub          a2, a3, t5
                  xori         t6, a4, 1701
                  addi         a2, a1, 180
                  addi         a7, s9, -973
                  ori          s3, gp, 93
                  srai         t5, s8, 20
                  sra          t1, sp, gp
                  andi         s9, t5, 1669
                  or           sp, t2, a3
                  lui          s7, 756034
                  or           s0, a5, s11
                  and          a3, a3, a0
                  addi         s8, s10, 1044
                  sra          a3, t3, t1
                  xor          tp, tp, t4
                  or           s3, t5, s8
                  slli         s1, t3, 13
                  srai         a7, s11, 9
                  slli         s9, a6, 26
                  lui          a0, 143498
                  sltiu        zero, t1, -267
                  andi         s5, t1, -1603
                  andi         gp, s5, 369
                  andi         ra, s10, 1730
                  slt          gp, t5, t6
                  lui          ra, 569515
                  andi         t0, sp, -1625
                  sra          t5, s5, a7
                  auipc        t6, 559536
                  xori         t6, zero, 1153
                  srli         s4, t4, 22
                  sll          s3, gp, a1
                  xor          a4, t6, s3
                  srai         t1, t3, 31
                  add          s4, tp, tp
                  and          a1, a6, t3
                  ori          t3, s10, -1326
                  or           s0, s2, a3
                  sltu         s1, s10, s2
                  srai         a1, a2, 27
                  nop
                  xori         ra, a1, 1258
                  and          s0, a6, s9
                  xori         a0, s2, -986
                  srai         s6, s8, 24
                  xori         s1, t0, -1837
                  auipc        s2, 786317
                  srai         s3, zero, 4
                  srai         s11, gp, 5
                  slti         t1, gp, 1821
                  sltu         s0, s10, s7
                  lui          s6, 868436
                  sltiu        a0, t2, 1228
                  or           ra, s5, a4
                  sub          a3, s0, s6
                  lui          s6, 272175
                  nop
                  andi         a2, s1, -839
                  srai         gp, s4, 30
                  sltiu        tp, s6, 1305
                  ori          a0, a1, -10
                  lui          a0, 631357
                  and          t5, a1, t3
                  slli         s11, gp, 8
                  xori         t1, a4, -13
                  srli         a7, s10, 15
                  add          t4, a1, a6
                  andi         sp, s5, 1186
                  sll          s8, sp, a6
                  slt          a1, s5, gp
                  xori         a7, s0, 246
                  and          a2, a3, tp
                  and          s7, a4, s6
                  srli         a0, a0, 15
                  and          s0, s1, t3
                  xor          a6, s1, a0
                  srli         s9, s3, 22
                  add          sp, a0, s8
                  auipc        a0, 979946
                  srli         s9, gp, 26
                  srl          s7, s11, s2
                  ori          zero, s11, -1897
                  sltiu        s1, a1, 2003
                  sltiu        s0, t6, -1127
                  auipc        tp, 439076
                  sra          a7, tp, a5
                  srai         t1, a0, 29
                  slt          t4, zero, a0
                  and          t5, zero, sp
                  srl          s6, s2, a3
                  addi         gp, t6, -118
                  lui          s6, 256992
                  slti         t1, s11, -1592
                  lui          s7, 678874
                  sltu         zero, t1, s8
                  lui          a4, 984229
                  sra          s1, t6, zero
                  slti         s5, s9, -796
                  ori          s0, t4, -1616
                  ori          t4, s11, 1753
                  sltiu        t3, a5, 619
                  or           t4, a6, zero
                  sll          s2, s2, a7
                  addi         s6, sp, 1027
                  or           t0, zero, s1
                  srl          s2, t2, t2
                  sub          s7, s9, a0
                  or           s9, s5, a7
                  srai         a2, s9, 29
                  sub          a3, t3, a7
                  srli         gp, zero, 9
                  add          s2, ra, gp
                  andi         zero, sp, 1983
                  andi         t1, s10, 599
                  nop
                  sub          s6, t4, a7
                  ori          t1, s2, 2011
                  lui          t6, 618656
                  srl          s5, zero, s10
                  xori         a3, s2, -408
                  slti         a3, a0, 1084
                  srai         tp, s2, 17
                  addi         a4, zero, 1556
                  auipc        gp, 663445
                  xor          t3, a5, s4
                  sltiu        t4, s9, -858
                  xor          s5, a3, a4
                  sltu         a4, s0, zero
                  add          t1, s5, s6
                  sltiu        t4, a7, 1652
                  andi         t6, s8, 337
                  addi         s7, tp, -1461
                  sll          s7, gp, s0
                  and          s0, s1, s4
                  sltu         t6, a1, s0
                  sltu         s0, s3, tp
                  or           s8, t2, s2
                  sll          a7, a6, s11
                  sra          a7, s6, ra
                  and          s5, gp, a4
                  slt          a1, s6, s9
                  sll          a2, a6, a1
                  nop
                  nop
                  slti         a4, s2, 1664
                  andi         t1, a7, -1228
                  add          s0, s6, s9
                  nop
                  srl          s2, tp, sp
                  slti         s0, a1, 589
                  sra          tp, a6, zero
                  sra          a2, s6, a4
                  srl          zero, s8, s3
                  nop
                  auipc        s7, 110062
                  slt          a7, t1, gp
                  and          t5, a6, s6
                  srai         a1, s8, 8
                  xori         s7, s1, 1496
                  ori          t5, ra, 621
                  slti         s0, s5, -1852
                  or           zero, t6, t1
                  auipc        a6, 702535
                  sltu         t5, sp, t2
                  sltu         zero, zero, s4
                  slli         s8, a5, 8
                  add          t1, a6, s1
                  auipc        t4, 359667
                  slti         t6, s1, -1615
                  nop
                  sra          t5, s1, gp
                  xori         s7, a7, -1790
                  slli         a2, gp, 14
                  srai         s5, s7, 22
                  andi         a7, t4, 872
                  nop
                  srai         tp, a1, 7
                  slt          a7, t0, s5
                  xori         s4, s1, 1446
                  sub          t6, t2, s3
                  sra          s6, t2, s4
                  lui          s2, 103868
                  addi         t1, t2, -1185
                  sltiu        sp, t4, -871
                  slt          t6, t1, s11
                  lui          s4, 542541
                  and          t3, s8, s8
                  sltu         s5, t3, s0
                  srli         t1, tp, 8
                  srl          t3, t2, gp
                  nop
                  xori         t5, t6, 1494
                  sll          a2, a6, a1
                  sra          a4, a1, s4
                  slti         s6, tp, -607
                  srli         s8, a3, 10
                  add          t6, s5, s1
                  sub          s6, s6, s9
                  srli         s6, t4, 8
                  sra          s6, s0, s7
                  srl          s3, t5, s4
                  add          t1, s1, t2
                  addi         s11, a7, 1345
                  auipc        t0, 565222
                  lui          tp, 1021453
                  sltu         sp, s0, s3
                  xori         tp, ra, 1190
                  sll          t1, s8, s0
                  sra          a7, gp, s5
                  slti         a0, s0, 1124
                  slli         s1, a1, 23
                  or           a1, gp, t2
                  andi         a6, a0, 1858
                  nop
                  and          t4, t2, t2
                  srli         a4, s11, 16
                  sll          s4, tp, zero
                  srl          a3, s7, s6
                  lui          t4, 1000563
                  andi         a4, sp, 627
                  sll          a6, s5, a1
                  srai         s11, s0, 16
                  sltiu        t3, s11, 292
                  sra          sp, a1, s4
                  sll          s11, s7, zero
                  sll          a0, a1, t3
                  sub          s2, s10, s5
                  srl          gp, s2, a3
                  slt          s11, t6, s9
                  srai         s11, t6, 14
                  auipc        zero, 927134
                  sub          t5, gp, zero
                  sltu         t3, zero, a2
                  srai         s0, s11, 4
                  andi         a4, t5, -1301
                  lui          t6, 407238
                  sra          s8, gp, s4
                  slti         zero, t4, 2021
                  add          t3, a7, t0
                  xori         s6, t0, 1120
                  auipc        s1, 796054
                  or           s11, a3, tp
                  add          a4, s3, t0
                  auipc        a3, 635674
                  lui          t1, 464060
                  lui          t1, 339563
                  sltiu        s1, tp, -694
                  slt          a1, s0, s2
                  xori         a4, a5, 1192
                  lui          a4, 212041
                  ori          s9, s7, -1004
                  nop
                  auipc        s0, 481110
                  andi         s2, t4, 1509
                  sll          t0, t5, tp
                  sra          tp, ra, sp
                  sltu         gp, t0, a4
                  add          s9, s4, s7
                  xor          s9, a3, a7
                  xori         a2, a1, -794
                  srl          t6, t5, t2
                  srli         sp, s5, 4
                  sltiu        t5, zero, 2024
                  and          s3, s2, zero
                  add          gp, t0, a4
                  sub          a4, zero, a5
                  or           a7, t0, s2
                  srl          tp, t3, gp
                  and          a3, a5, s10
                  sltiu        ra, t4, 1890
                  xori         s9, s9, -1172
                  sll          sp, t0, t5
                  slli         s11, s1, 14
                  sll          t3, s6, sp
                  ori          a0, a5, 1932
                  sll          s0, a6, a0
                  or           s1, s4, s2
                  slti         s11, gp, -1322
                  add          s6, a4, s10
                  xor          a3, a7, t4
                  sltu         sp, ra, a1
                  sra          s7, s11, s1
                  auipc        t4, 561764
                  slli         ra, zero, 14
                  xori         t1, s8, -1483
                  sll          a4, a7, a4
                  srai         s6, zero, 30
                  sll          a3, s0, s1
                  sra          gp, s4, gp
                  sub          zero, s3, t1
                  add          t5, t3, sp
                  sltiu        a6, s6, -1340
                  add          t6, s9, s6
                  nop
                  slt          sp, ra, s9
                  sll          a6, a4, a2
                  xor          gp, t0, s6
                  andi         s11, a1, -1614
                  srai         s9, s10, 14
                  sltiu        gp, ra, 1915
                  srai         t4, s7, 14
                  nop
                  ori          s7, t3, -1914
                  sll          a0, t3, ra
                  or           ra, a7, zero
                  auipc        a0, 151940
                  slti         s2, t2, -1105
                  andi         s7, ra, 1879
                  sltu         t1, t4, s1
                  and          s2, a5, t3
                  slti         zero, s0, 1496
                  add          s5, t3, s1
                  sll          s5, gp, gp
                  xor          a6, t3, t2
                  sltu         s3, s6, s9
                  andi         a1, s9, 1859
                  slli         s11, s9, 2
                  srli         s9, t3, 2
                  slt          a2, gp, zero
                  slt          s0, t0, s2
                  sra          s9, s10, s6
                  addi         t1, a2, 201
                  add          ra, s6, zero
                  andi         a4, s2, 557
                  slt          a6, a4, zero
                  addi         t4, t0, -1566
                  add          t6, a0, t5
                  addi         gp, s3, 207
                  slti         s11, t1, 116
                  srai         sp, s0, 9
                  xor          s8, t4, s6
                  addi         s5, a6, 1416
                  xor          s4, s6, t3
                  nop
                  ori          a7, s8, -1969
                  auipc        a4, 88813
                  srai         tp, a6, 10
                  slt          t5, a3, a2
                  nop
                  sra          a4, a4, a5
                  srai         t3, s8, 30
                  sltu         a7, s6, s6
                  slt          t0, s4, s10
                  and          tp, t3, s4
                  andi         a1, a6, -1833
                  xor          s4, a4, s4
                  xori         s11, s7, -304
                  srl          s3, s6, gp
                  slt          s3, t2, a4
                  ori          s5, s0, -962
                  nop
                  auipc        s0, 1012060
                  ori          s7, a4, 236
                  srl          a3, a1, t2
                  lui          ra, 544449
                  addi         a4, s2, -1699
                  srai         t4, t6, 12
                  lui          s2, 979053
                  sub          s6, t3, s10
                  slli         a3, s2, 10
                  addi         s11, a1, -1853
                  sub          a7, t1, s6
                  addi         s7, s2, 1327
                  lui          a3, 361252
                  xor          s7, a3, a7
                  sll          s1, a0, s3
                  xor          t0, s4, s8
                  add          s0, s0, s11
                  addi         a7, a3, 367
                  addi         sp, s6, -1920
                  auipc        s3, 520897
                  srli         s8, s0, 5
                  sltu         s0, t6, t4
                  and          s9, t6, s9
                  sra          a2, s1, s5
                  li           t6, 0x2ebf640e #start riscv_int_numeric_corner_stream_7
                  li           gp, 0x80000000
                  li           t4, 0x80000000
                  li           a2, 0x80000000
                  li           s11, 0x0
                  li           s4, 0x8911594f
                  li           a6, 0xffffffff
                  li           t5, 0xffffffff
                  li           s9, 0x0
                  li           a1, 0x80000000
                  nop
                  auipc        gp, 803347
                  lui          a2, 57923
                  lui          a2, 626238
                  auipc        t6, 1013348
                  sub          a1, a1, a1
                  auipc        t6, 159005
                  addi         s11, s4, -1597
                  lui          t6, 679732
                  add          s4, s4, t4
                  addi         a1, s9, -2032
                  auipc        t6, 36312
                  auipc        a6, 355336
                  add          gp, s9, s11
                  add          a1, s11, a1
                  add          gp, t4, gp
                  sub          s9, t6, t5
                  addi         s11, a2, -907
                  addi         s9, s4, 834
                  nop
                  sub          a2, s9, s4 #end riscv_int_numeric_corner_stream_7
                  slli         s8, s11, 16
                  xori         a2, zero, -254
                  or           s0, zero, s8
                  sltu         s4, a5, s4
                  auipc        zero, 59431
                  nop
                  nop
                  and          s8, sp, s7
                  sltiu        s9, a6, 106
                  srl          s1, s9, s2
                  sll          tp, zero, s11
                  and          a4, t0, t1
                  and          s3, s10, a5
                  and          a2, t3, s2
                  slt          a1, t2, s5
                  addi         a4, a6, -1327
                  srai         t6, a4, 3
                  xor          s11, s2, s2
                  srai         zero, s4, 31
                  and          s6, a1, a1
                  sll          a0, s8, t2
                  slti         s4, s9, -611
                  sltiu        a7, s4, -1459
                  sltu         zero, t5, t3
                  srai         a2, s7, 0
                  nop
                  sltiu        s2, s9, -1822
                  lui          a1, 309710
                  auipc        a1, 809697
                  srl          a1, s6, s1
                  ori          a6, a0, -1333
                  sra          a2, a4, s1
                  nop
                  sltu         a6, s6, t5
                  srai         s4, s6, 22
                  auipc        a4, 1033115
                  lui          a2, 693424
                  sub          a2, a0, t5
                  srli         s9, s7, 25
                  srl          a0, t4, s10
                  srl          zero, s7, gp
                  slli         a2, s11, 7
                  slli         t0, zero, 16
                  slti         t4, a0, 1654
                  slti         s7, s5, -171
                  xori         a4, sp, -1405
                  nop
                  srl          zero, sp, s5
                  srli         t0, s0, 18
                  slt          a2, s2, sp
                  and          s3, a6, t1
                  slti         a1, t1, 1296
                  sra          a1, s10, s1
                  srai         t5, a6, 5
                  xori         zero, gp, -905
                  lui          s7, 295352
                  slli         ra, a7, 10
                  ori          a0, s2, -1878
                  sltiu        a3, a1, 925
                  nop
                  add          sp, a7, t6
                  slt          s4, s10, s5
                  srai         s4, a2, 26
                  or           tp, s7, t4
                  slt          s6, t4, s2
                  lui          s2, 247937
                  srai         a0, s7, 27
                  auipc        zero, 737639
                  srl          t0, s5, a0
                  sra          zero, a3, a4
                  xori         t1, a5, -406
                  add          s1, s2, s4
                  or           a6, t6, a1
                  and          s1, s5, s2
                  or           t5, a2, a6
                  xor          zero, a1, a3
                  sll          s1, s8, t3
                  slt          s1, t6, t3
                  or           t5, a4, s6
                  and          s11, s6, a1
                  sltu         gp, s5, s11
                  sltiu        s11, ra, 1188
                  sltu         s2, s2, s10
                  sltiu        a3, t3, -477
                  sltu         a6, t0, t3
                  ori          gp, a4, -1574
                  slli         t0, t6, 7
                  xor          sp, s4, s0
                  xori         t6, tp, -1969
                  addi         t1, s7, -1655
                  sltu         s9, s10, s2
                  slli         s3, a0, 16
                  xor          t6, a1, a5
                  or           a7, zero, s2
                  sra          s4, gp, t4
                  lui          zero, 807756
                  sltu         t1, s6, gp
                  sltu         t6, s6, ra
                  slli         a1, t1, 6
                  slti         s11, a4, 1564
                  lui          s6, 81578
                  srli         ra, t1, 10
                  or           s3, s7, a1
                  srl          a2, tp, s1
                  addi         s11, gp, 1517
                  ori          s2, s0, 228
                  andi         a4, a5, -12
                  srli         s6, t5, 4
                  addi         s7, t1, -1620
                  lui          s9, 969812
                  sltu         zero, s3, ra
                  sltu         s6, t5, s6
                  add          s7, s2, a4
                  xor          s8, a4, a7
                  xori         tp, a0, 818
                  sub          t5, s8, a3
                  slt          t3, s9, t6
                  srli         a3, s4, 2
                  andi         t0, s11, 637
                  sll          a0, a5, a7
                  slli         sp, s7, 12
                  sltiu        s4, t3, 1324
                  srl          t3, zero, s0
                  xor          s0, s7, s1
                  xor          t5, s6, t2
                  andi         ra, zero, -1693
                  slti         t5, s1, 688
                  slt          t6, a6, s9
                  sltu         gp, a4, s1
                  add          s1, t5, s2
                  ori          s3, s8, -1184
                  nop
                  or           t0, s0, s9
                  auipc        a3, 343286
                  srl          ra, s0, t3
                  ori          gp, t4, 160
                  sltiu        s9, s10, 1188
                  srl          s6, a1, a2
                  slt          s7, a0, s2
                  sra          s7, a2, t4
                  xori         t1, t5, 888
                  xor          a2, s9, a5
                  srli         s7, gp, 9
                  auipc        t5, 43604
                  or           a3, zero, a5
                  nop
                  sll          a0, s9, t4
                  addi         s4, t1, -1345
                  add          s1, t4, s3
                  sltu         a3, s9, s6
                  xor          s6, s9, s4
                  xor          ra, t2, t6
                  sll          s0, s11, s1
                  auipc        ra, 1022170
                  slt          a4, a3, s5
                  srli         gp, a5, 9
                  slt          a1, s0, s3
                  xor          gp, s3, a3
                  auipc        gp, 10258
                  slti         s1, a3, -1726
                  srli         t1, gp, 26
                  slti         s7, zero, -301
                  auipc        a0, 543571
                  slt          tp, sp, s0
                  srli         t1, tp, 13
                  xor          s0, a1, t6
                  srai         tp, zero, 4
                  ori          t0, t2, 834
                  lui          s1, 302130
                  sll          s6, s4, s11
                  andi         a0, zero, -1006
                  srl          s5, s4, t2
                  srl          s0, t2, s8
                  srai         t3, ra, 27
                  sub          s2, s0, a5
                  srai         a1, t5, 25
                  sltu         s0, t1, sp
                  and          t6, s11, s5
                  slli         t3, ra, 2
                  sltiu        s4, tp, 909
                  lui          t1, 961167
                  nop
                  lui          t4, 216915
                  slti         a0, a3, -291
                  nop
                  or           sp, zero, t2
                  ori          a6, s0, -1568
                  and          s7, t6, t2
                  slti         a6, s0, -1871
                  srli         a2, s2, 3
                  xor          tp, t3, a0
                  auipc        a7, 312146
                  auipc        s2, 881379
                  or           s11, ra, a5
                  slt          tp, t2, tp
                  lui          t3, 696289
                  srl          a0, s3, s0
                  andi         s9, s10, 868
                  sltiu        sp, a6, -1633
                  xor          a0, a3, ra
                  addi         s3, s4, 1276
                  add          t0, t3, zero
                  slt          s3, a6, s5
                  and          s11, s11, s0
                  sll          s6, a0, t1
                  slli         s8, s3, 27
                  xor          s5, s0, ra
                  xori         s3, t1, -1783
                  sub          s3, s1, s3
                  sltu         a3, a2, s11
                  sltu         t3, s0, a1
                  or           a6, s3, t3
                  add          s5, s7, t6
                  srli         s11, t6, 17
                  and          ra, s7, t1
                  slt          s4, s7, a3
                  auipc        a7, 362336
                  srli         t1, a0, 22
                  auipc        a0, 778577
                  sra          a7, a7, a5
                  slti         sp, a5, 1826
                  sll          s11, s1, sp
                  andi         s6, a0, 1081
                  ori          zero, gp, 1533
                  auipc        t3, 732342
                  lui          t3, 1006751
                  slt          s6, zero, t6
                  slli         s2, s2, 3
                  ori          s3, t2, -1382
                  and          t1, a2, zero
                  slti         tp, sp, -1505
                  or           sp, a2, s9
                  lui          t3, 630778
                  nop
                  addi         t3, zero, 1449
                  lui          s0, 482792
                  sub          zero, a1, zero
                  xori         gp, s1, -1157
                  lui          zero, 165100
                  sub          a4, s10, a1
                  slli         sp, gp, 1
                  sub          s2, a3, a6
                  srai         s0, a4, 7
                  srl          a2, t0, t2
                  srai         s3, s0, 27
                  srl          t3, s11, a1
                  addi         zero, a5, 103
                  lui          sp, 917687
                  and          s4, s10, a5
                  srl          a2, a5, s9
                  slti         zero, a2, -902
                  lui          a4, 76803
                  nop
                  sub          s11, t6, gp
                  xori         s6, t2, 1948
                  sra          s4, zero, t5
                  or           s8, s2, s2
                  lui          s4, 637979
                  slt          t6, s10, s1
                  lui          s9, 342387
                  nop
                  xori         a3, s7, 1393
                  slli         a3, a5, 20
                  sra          s1, t2, t2
                  sra          ra, s8, s9
                  sltu         s1, s0, s1
                  lui          a0, 139641
                  addi         s3, s7, -414
                  sll          a4, t4, t0
                  sra          a6, s5, a3
                  ori          ra, s6, -1688
                  lui          ra, 36973
                  sra          t5, t0, t4
                  sltiu        t1, s7, 135
                  srl          a1, t2, s5
                  ori          ra, t0, -1990
                  sub          a6, s7, ra
                  add          a2, ra, s2
                  slt          a1, s6, t3
                  xor          s3, s4, a6
                  sltu         ra, t4, t3
                  srli         s8, a4, 0
                  and          s7, s8, t0
                  add          a4, t1, tp
                  sub          s5, s9, a0
                  slti         gp, s10, -515
                  addi         sp, tp, 82
                  addi         s5, gp, 683
                  auipc        a7, 519512
                  srl          t4, s0, a5
                  ori          a0, t4, -1200
                  srl          s6, a2, a0
                  srli         a0, t1, 13
                  nop
                  sll          t6, s10, s6
                  srl          a0, s6, a7
                  slt          a2, a7, a6
                  srai         t0, a1, 10
                  addi         s8, s11, 1426
                  slli         t0, t6, 20
                  srl          s5, s7, a2
                  ori          s0, s6, -278
                  srai         zero, s3, 4
                  xori         zero, t6, -389
                  nop
                  sra          a6, a0, t4
                  srl          t3, t2, a3
                  slli         t3, s10, 27
                  slti         t3, s11, -1100
                  slli         sp, a0, 1
                  slt          s8, a2, gp
                  sll          a7, s6, a6
                  addi         s2, s9, -128
                  srl          a1, s11, s5
                  sltu         s8, t5, s0
                  xor          t4, ra, s3
                  sltu         s6, s10, a6
                  sra          ra, gp, s8
                  nop
                  sltiu        s5, s2, -1436
                  addi         a1, s10, 1872
                  sra          a1, sp, t1
                  srl          a7, a4, sp
                  srai         t6, zero, 19
                  sll          s6, a5, a1
                  xor          t3, t4, s8
                  sll          a7, t6, t4
                  sll          sp, t4, s9
                  sll          s0, a4, t2
                  xori         zero, s4, 922
                  ori          t1, s2, 1949
                  srl          s4, s9, s1
                  sra          t4, t6, s6
                  sub          a7, t5, a3
                  andi         a2, t5, -463
                  sltiu        t1, zero, -130
                  srl          a4, sp, sp
                  sll          t4, zero, s2
                  slti         t4, t3, 765
                  slti         a0, s2, 824
                  ori          s0, t1, 40
                  sub          a7, a1, ra
                  or           a0, s1, s11
                  srai         a7, gp, 13
                  auipc        t4, 162676
                  sll          s4, ra, a1
                  auipc        a4, 910170
                  or           t3, a7, a0
                  ori          s7, s10, 1507
                  auipc        s1, 131279
                  add          a1, zero, a1
                  auipc        a1, 301119
                  slt          sp, ra, sp
                  ori          t6, s7, 1011
                  sltiu        a3, s7, -1391
                  slti         t6, s3, 797
                  xori         t3, a5, -86
                  sll          t6, s0, s2
                  sra          s9, sp, t3
                  slt          s6, a5, a6
                  addi         s3, s9, -1990
                  xor          s4, s10, t6
                  sll          s2, a0, a4
                  srl          t0, t6, s10
                  sltiu        gp, zero, -1242
                  slli         ra, t4, 27
                  sub          t0, a6, ra
                  addi         t1, t6, -1268
                  lui          s4, 396723
                  srli         s0, s11, 4
                  addi         t4, a7, -1703
                  sltiu        s2, gp, 1547
                  addi         gp, a4, 1300
                  lui          t1, 772226
                  sra          a1, a1, a1
                  srli         a1, s8, 1
                  lui          sp, 467395
                  sll          t0, t5, s1
                  sltu         t3, s3, a2
                  lui          a1, 268575
                  sub          a1, s8, a6
                  srai         a1, a6, 11
                  and          zero, a0, t5
                  sltu         s8, t2, a5
                  xor          s9, ra, t3
                  lui          s2, 582634
                  and          gp, s8, t6
                  and          s3, s2, s1
                  addi         t3, a0, -144
                  add          s3, a2, a7
                  sra          t1, gp, ra
                  slti         s8, t5, -1177
                  srl          a6, s10, s10
                  nop
                  lui          s3, 393513
                  sra          a3, t1, t5
                  andi         s2, t4, 1341
                  and          a2, t1, t3
                  addi         a1, ra, 1697
                  addi         s1, a1, -708
                  sll          s0, a7, tp
                  xor          s9, s5, t5
                  addi         t3, s1, 733
                  sltu         s7, a1, t3
                  xori         a4, s1, 858
                  or           a2, zero, a6
                  or           t3, t2, a4
                  sll          s7, s2, ra
                  sub          t1, s8, zero
                  andi         s7, s0, -236
                  srli         zero, s4, 26
                  ori          t1, t3, -737
                  nop
                  srli         s8, s5, 21
                  and          s6, s7, t5
                  and          tp, a5, t1
                  and          s0, a2, t6
                  and          gp, t3, t2
                  srli         zero, t2, 31
                  and          a2, tp, s8
                  sll          t4, t1, a7
                  addi         s7, s0, -757
                  sltiu        zero, s7, 482
                  sra          tp, t0, tp
                  lui          s4, 1006157
                  or           s0, s7, s3
                  or           s6, s7, s10
                  slli         s9, t1, 15
                  or           s4, s4, s2
                  srli         t5, gp, 24
                  xor          s3, t1, t1
                  add          t4, t5, t0
                  addi         a4, s3, -538
                  xori         a1, s0, -2042
                  srai         t4, a0, 5
                  slti         a1, s5, -1020
                  sll          a2, a5, s7
                  srli         t5, s0, 2
                  sll          zero, ra, s3
                  sltu         gp, s8, s10
                  sub          a1, zero, t6
                  sltu         a7, ra, t6
                  sub          ra, gp, s11
                  auipc        gp, 208491
                  sltiu        s7, s9, -1318
                  auipc        s5, 215730
                  auipc        s3, 388387
                  srl          t6, s11, a5
                  or           gp, t1, a1
                  slti         zero, a7, 1469
                  xor          s0, a5, s0
                  srli         a2, a3, 8
                  andi         a1, tp, 61
                  ori          a6, t1, -63
                  sll          t1, ra, ra
                  slti         s9, s2, 615
                  slti         a2, tp, -175
                  sub          t0, s4, a6
                  sra          a3, t6, a7
                  sltu         sp, s10, a5
                  or           a3, s8, zero
                  slt          zero, zero, t1
                  lui          a0, 550367
                  or           s8, t2, tp
                  auipc        a7, 984
                  slli         s8, s10, 25
                  sll          zero, a4, a0
                  xor          zero, a4, tp
                  slt          s7, sp, s8
                  srli         tp, a4, 2
                  slli         s0, t6, 26
                  nop
                  sra          s9, a1, t4
                  xor          a1, t0, t1
                  sltiu        a1, s9, -226
                  srl          ra, a0, t1
                  xor          s3, a0, tp
                  nop
                  sub          a7, s4, t3
                  sra          s8, t0, a5
                  sub          t6, s10, a5
                  slli         a3, t2, 25
                  sub          s7, s3, a7
                  auipc        a4, 635780
                  add          tp, a7, sp
                  sltiu        s3, tp, -1874
                  sltiu        s11, s3, -1245
                  auipc        a0, 470251
                  sltiu        a4, t2, 1305
                  addi         s8, s8, 643
                  slt          s2, s0, tp
                  and          s6, s11, s11
                  auipc        s9, 337838
                  sub          t0, t6, a1
                  xor          t4, s0, s6
                  or           a3, t6, a7
                  srl          t1, tp, t2
                  sra          s7, a1, a4
                  slti         s3, s11, 1484
                  sll          zero, a2, s8
                  and          t5, s0, s9
                  or           tp, s4, sp
                  sub          a7, ra, s7
                  xor          t0, a2, ra
                  sra          s0, s4, s9
                  sltu         s4, s4, t0
                  sltu         s1, s3, a4
                  and          a2, t3, s10
                  or           tp, s10, s1
                  sltu         a6, s2, a3
                  sltu         t4, s2, s1
                  sltiu        s2, tp, 1813
                  ori          a1, s5, -851
                  slli         tp, s6, 22
                  sra          s7, a4, t0
                  sltu         s4, a3, a6
                  sra          s5, a2, a6
                  xori         s9, s0, 1867
                  or           s7, zero, t5
                  xori         s6, t2, -492
                  nop
                  xor          gp, zero, s11
                  xor          s2, a7, t1
                  slti         a3, a7, 594
                  sltiu        a0, s9, 1158
                  srli         t1, s10, 28
                  nop
                  auipc        tp, 335308
                  srli         s8, s4, 11
                  sltiu        s11, zero, -1482
                  sub          a6, gp, a3
                  auipc        a7, 403611
                  sltiu        t3, a0, -1443
                  srai         zero, a5, 22
                  sra          s3, a0, t1
                  add          s7, t1, t1
                  add          t4, s1, t0
                  slti         zero, t0, -1411
                  andi         s3, t0, -1267
                  xori         gp, s9, -1124
                  xor          s7, s2, t0
                  or           t0, t6, t2
                  and          s11, t5, a7
                  and          s6, s4, a0
                  srl          s9, a3, s11
                  xor          t1, a5, ra
                  sltu         s4, a7, ra
                  slt          s7, zero, a7
                  andi         s8, s0, -1924
                  andi         ra, a5, 1672
                  nop
                  add          s7, t2, s0
                  add          s3, s5, a0
                  sll          t6, s7, t5
                  nop
                  and          a6, s5, t1
                  srl          s6, t5, t3
                  auipc        t1, 228685
                  srli         gp, a0, 14
                  xor          s8, a6, gp
                  add          a0, s0, a6
                  and          a0, a2, zero
                  sll          s4, s5, a1
                  ori          sp, gp, -1656
                  xor          s0, t3, s4
                  ori          a6, t1, -1703
                  slti         ra, t0, -222
                  ori          a0, a6, -1229
                  nop
                  andi         ra, a5, 1013
                  nop
                  auipc        s4, 44962
                  xori         t6, s6, -1440
                  andi         t5, a1, 1223
                  lui          s9, 864568
                  slli         a2, a7, 3
                  or           a0, a1, s9
                  srl          a7, s11, gp
                  add          t6, s3, a5
                  slti         s6, s6, 174
                  sltiu        s3, t2, 263
                  xor          s2, gp, s8
                  nop
                  sltiu        s7, s11, 1911
                  sra          zero, s5, t0
                  andi         s0, a5, 1512
                  srl          s4, t0, zero
                  add          t6, s0, s8
                  xori         gp, gp, -1524
                  xori         t6, s7, -1575
                  xori         s3, a5, 817
                  sltiu        t4, t2, -448
                  add          a0, t1, s6
                  xor          s3, s8, a5
                  sltiu        gp, a0, 1713
                  sltiu        s6, a1, 1584
                  sltu         a3, t0, t2
                  srli         zero, s7, 14
                  or           s2, s0, sp
                  sub          a0, a2, zero
                  sltiu        s11, s2, -1579
                  auipc        s9, 340479
                  srl          a2, a7, s0
                  sltiu        tp, a3, -1868
                  srli         a0, s2, 12
                  or           tp, tp, t2
                  srli         a1, t4, 6
                  xor          a6, s5, t2
                  srli         a6, a6, 2
                  sll          s6, sp, a7
                  and          a3, s5, t1
                  addi         t6, a2, -523
                  slli         t5, ra, 2
                  slti         t0, s8, 1691
                  lui          s11, 327390
                  or           s1, s1, s9
                  slt          s5, t1, s0
                  andi         t5, a4, 1926
                  sll          sp, t3, t1
                  auipc        sp, 1012291
                  srai         a1, a4, 15
                  slli         t1, t6, 8
                  lui          s2, 266079
                  srli         a1, s7, 23
                  sltiu        s3, a3, 817
                  ori          t1, a2, 872
                  auipc        s1, 600037
                  xor          t5, s2, t6
                  add          a1, t1, t0
                  andi         ra, s9, -130
                  andi         t1, s5, 1768
                  sll          s8, a4, a5
                  nop
                  andi         a4, t5, -1233
                  xori         s5, t1, 334
                  add          s2, zero, s4
                  ori          a4, a7, -1937
                  srl          a2, s3, zero
                  nop
                  addi         s6, a6, 1201
                  ori          t5, s5, -993
                  and          t1, s9, s10
                  slli         a2, a0, 1
                  sltiu        zero, tp, 1425
                  slt          t5, a6, t5
                  srli         s7, zero, 12
                  or           a0, a6, t5
                  nop
                  addi         a7, a5, 288
                  or           sp, a2, s6
                  auipc        a2, 766341
                  andi         a2, a2, 1628
                  slli         s5, zero, 14
                  srl          s5, s7, ra
                  sub          s5, s0, s5
                  addi         s5, a3, 1268
                  slt          zero, a5, a0
                  srai         a4, s6, 14
                  xor          s5, tp, t1
                  nop
                  slli         s6, s4, 13
                  xor          t1, sp, a1
                  addi         sp, s4, 1957
                  slt          a0, t2, t5
                  srl          s3, a3, t4
                  sll          t4, s6, sp
                  srai         t5, t2, 7
                  xori         ra, s9, 1827
                  sll          gp, ra, s0
                  or           s8, s9, a2
                  srli         t3, s5, 9
                  srli         ra, a5, 27
                  andi         t0, s2, -2029
                  nop
                  add          s11, s8, tp
                  addi         s9, a1, -759
                  srai         t4, s11, 22
                  slt          t5, ra, tp
                  sltiu        s8, s1, 320
                  slt          sp, t3, s11
                  slli         s8, tp, 0
                  slli         s3, sp, 18
                  srai         a2, s6, 18
                  slti         a0, t3, -1887
                  sra          tp, s1, zero
                  auipc        a7, 184938
                  andi         tp, a4, 1118
                  srai         s1, t4, 6
                  auipc        a3, 233214
                  nop
                  xori         s7, a0, 806
                  slli         s2, zero, 21
                  or           s4, tp, s6
                  sltiu        s0, a5, -160
                  auipc        s7, 494908
                  auipc        s0, 500532
                  lui          s7, 184852
                  slt          a6, s11, s6
                  or           a0, s5, a0
                  slt          s6, s1, s7
                  slt          a4, t0, a3
                  slti         a7, ra, 655
                  slli         t6, s2, 29
                  ori          s0, s11, 1921
                  auipc        t4, 733651
                  addi         s0, a6, 853
                  xori         sp, t6, 1579
                  addi         tp, a5, -503
                  andi         a0, a0, -1196
                  nop
                  sub          a1, t6, t2
                  slti         t4, a1, -613
                  or           a3, t3, t6
                  add          tp, sp, s3
                  xori         t5, s7, -1535
                  or           zero, s4, s0
                  slli         zero, s3, 14
                  sltiu        s2, t5, -694
                  srli         s1, s11, 8
                  sub          s3, a3, s8
                  addi         t4, s7, 2023
                  sltu         s2, t4, s2
                  auipc        t0, 431320
                  xori         a4, t1, 491
                  sra          gp, t5, t2
                  sltiu        ra, a6, -1883
                  xor          t5, gp, a7
                  slti         a6, a0, 868
                  xor          s4, s10, s4
                  slt          a3, t2, s3
                  sltu         s8, s1, t2
                  sltiu        t3, t3, 1117
                  sltiu        s2, tp, -1244
                  sll          t3, s3, t0
                  lui          t1, 880942
                  srl          tp, a2, t3
                  sltu         a2, s5, s7
                  addi         t4, a6, -1350
                  add          t0, tp, t5
                  sltu         s4, sp, t5
                  sra          sp, s5, a0
                  and          t1, s1, s7
                  li           s8, 0xe7fccac1 #start riscv_int_numeric_corner_stream_3
                  li           t1, 0x0
                  li           s4, 0x80000000
                  li           s0, 0x0
                  li           a0, 0x816f254e
                  li           tp, 0x80000000
                  li           a4, 0x0
                  li           t0, 0xffffffff
                  li           a2, 0x0
                  li           s9, 0x80000000
                  addi         a4, a2, 50
                  lui          t1, 402053
                  lui          s8, 360205
                  auipc        t1, 992312
                  nop
                  add          s8, t1, s0
                  auipc        s9, 264119
                  add          a2, t1, a2
                  lui          s0, 178974
                  sub          s9, t0, a2
                  nop
                  nop
                  addi         tp, tp, -1400
                  sub          a4, s9, s0
                  add          a0, s0, t1
                  add          t1, tp, t1
                  addi         t1, a2, -185
                  addi         a0, s4, -499
                  sub          tp, t0, a4
                  auipc        s8, 75602
                  sub          s9, t1, tp
                  add          tp, tp, t1
                  auipc        tp, 115970
                  lui          s8, 717878
                  auipc        s4, 142400
                  sub          a0, s9, a4
                  auipc        s9, 24377
                  addi         a2, t1, -796 #end riscv_int_numeric_corner_stream_3
                  add          a6, a4, t3
                  xor          s11, s3, s4
                  add          a6, s11, s6
                  srl          s3, t5, t3
                  srl          a3, a6, s0
                  addi         t4, s8, -1196
                  sltiu        gp, s7, 714
                  sra          a7, s8, s10
                  xor          ra, s6, a0
                  slli         t3, s4, 26
                  lui          s1, 434304
                  slli         a2, a5, 15
                  srl          s1, a2, s6
                  addi         s4, zero, -203
                  andi         t1, s10, -78
                  srl          a4, s7, a6
                  slti         t4, tp, -1777
                  ori          a7, s11, 410
                  and          s8, a6, s3
                  sra          t4, a6, sp
                  and          t4, t4, t6
                  auipc        s8, 965987
                  sltiu        s8, a6, 635
                  xori         s0, t3, -1132
                  srli         a6, s0, 31
                  slli         zero, s7, 23
                  addi         s1, tp, -1544
                  srl          t0, t4, t3
                  add          s6, s5, a6
                  add          a6, a4, t0
                  nop
                  srli         a2, tp, 19
                  andi         a0, s6, 33
                  sra          a4, sp, sp
                  addi         zero, a7, 422
                  xori         a3, s3, 540
                  and          zero, t0, ra
                  slt          s6, s6, t3
                  slti         s2, s6, -367
                  srl          a7, a1, t1
                  sltiu        s11, s8, -684
                  ori          zero, s1, -1155
                  slli         sp, s1, 15
                  srli         t4, t6, 11
                  slli         zero, a7, 31
                  xori         gp, t5, -182
                  sll          a1, tp, a6
                  srl          a1, a4, a0
                  slt          t0, s3, s1
                  or           s7, s10, a4
                  xori         t1, s0, 1577
                  and          s11, s2, a3
                  sll          a6, s7, t6
                  slli         sp, t4, 10
                  add          ra, a0, s4
                  slli         s4, a2, 2
                  srli         t1, s3, 28
                  srl          a3, s1, s9
                  addi         s11, t3, 314
                  sub          zero, t2, s9
                  nop
                  nop
                  addi         t0, s5, -1323
                  slti         s7, s2, -781
                  lui          a4, 650723
                  slli         s8, a2, 19
                  and          s3, a7, zero
                  andi         s5, sp, -643
                  slli         a4, s8, 12
                  ori          gp, ra, -630
                  sll          zero, s7, s6
                  nop
                  lui          s5, 109781
                  srai         a1, t1, 13
                  xor          t6, zero, s8
                  addi         a6, s10, 1175
                  xor          s9, s7, s7
                  add          a6, zero, a1
                  and          s2, t4, s9
                  andi         t5, tp, -1790
                  slti         s9, s5, 258
                  auipc        ra, 511365
                  slli         a6, s0, 21
                  slli         s5, s11, 4
                  srai         t1, t6, 7
                  srai         a4, s9, 13
                  sra          t0, a2, t1
                  xor          a2, s2, t3
                  sra          s11, t3, a6
                  srli         a6, a2, 13
                  slti         t3, t0, 771
                  slt          a4, a1, t6
                  xori         tp, t6, -875
                  auipc        t6, 939373
                  xori         s7, sp, -659
                  and          s7, tp, t5
                  andi         a0, t5, 949
                  sll          tp, s6, t1
                  or           t4, t4, t3
                  auipc        s3, 557561
                  srli         t4, a1, 11
                  add          s6, t3, s5
                  xor          s8, a4, a2
                  xor          s8, s1, s3
                  add          s2, s3, t1
                  ori          s1, t6, -1615
                  auipc        s3, 870544
                  xori         a1, t3, -193
                  srl          s3, a3, tp
                  lui          tp, 341967
                  add          a6, s2, a5
                  srai         s6, a1, 25
                  lui          s4, 1021947
                  addi         s2, a0, -2028
                  srl          a6, a2, a6
                  xor          t3, a2, t4
                  slti         s5, s1, 757
                  or           a6, a6, s8
                  and          t0, a1, a1
                  slti         s6, a7, -638
                  srli         s1, t5, 10
                  sub          gp, zero, a0
                  sltiu        s8, tp, 1186
                  srl          s0, a5, s7
                  add          t6, a5, t3
                  srl          t1, a2, a4
                  srai         t6, t2, 27
                  or           s1, a0, a0
                  sltu         ra, s5, s7
                  sltu         s9, t6, a2
                  sltu         tp, s6, s9
                  andi         s4, a4, 329
                  slli         s4, t3, 25
                  nop
                  slt          s0, s6, s11
                  lui          t1, 198249
                  lui          gp, 577494
                  xori         t1, a1, -1261
                  lui          sp, 384472
                  or           t4, gp, s7
                  sll          a3, t1, s4
                  slt          s7, t0, t2
                  slli         a6, a6, 13
                  slli         a0, s4, 19
                  slti         t4, s8, 197
                  slli         s7, t6, 11
                  sltu         a3, tp, gp
                  srai         s2, gp, 29
                  sltiu        a4, s6, -516
                  xor          s7, s0, t4
                  sltiu        ra, s7, 1972
                  sltu         s0, s7, zero
                  or           s9, s0, a0
                  auipc        a6, 312389
                  or           ra, zero, t5
                  addi         zero, s10, -427
                  add          a1, a6, a5
                  auipc        s8, 298863
                  xor          s5, t5, tp
                  sltu         s7, t4, s4
                  slt          s4, s0, s9
                  srli         t4, a4, 17
                  xor          s8, t4, s1
                  slli         zero, a2, 19
                  srl          gp, t5, gp
                  slt          s1, a4, a6
                  andi         s0, s7, -549
                  sra          t4, t6, t0
                  sub          s0, s6, ra
                  and          s4, gp, a5
                  auipc        s2, 406253
                  and          s4, s0, s8
                  slti         ra, ra, -2031
                  and          s1, sp, s0
                  slti         a6, a0, 184
                  auipc        a0, 179961
                  ori          a0, a6, 169
                  sltiu        t6, zero, 205
                  lui          t3, 397835
                  srl          a2, s3, t6
                  srai         a3, s1, 0
                  ori          t0, a1, -1301
                  andi         s9, s8, -1975
                  slt          s6, s11, zero
                  srl          t3, s9, a5
                  sltiu        s6, a0, -1854
                  and          t0, s1, a6
                  srai         t5, t2, 8
                  slt          t3, a3, sp
                  slt          sp, s2, s5
                  sll          s3, s3, s4
                  ori          s7, s6, -850
                  sll          ra, s10, s7
                  add          a4, zero, s9
                  lui          s4, 63073
                  or           a0, t4, s10
                  andi         ra, s10, 213
                  or           s1, s6, s11
                  slti         a7, a4, 293
                  ori          t1, a5, 1303
                  sub          t4, t1, tp
                  slti         s0, s7, -1506
                  xori         s11, a4, -1669
                  nop
                  ori          s1, a2, 1424
                  xori         s2, zero, -1647
                  slti         s9, s4, 191
                  srli         a2, s0, 10
                  sltu         s7, sp, tp
                  add          gp, s3, t2
                  sltiu        a2, s6, -975
                  srli         s5, s1, 30
                  and          a1, s0, a1
                  lui          s7, 313160
                  add          a0, t1, zero
                  srli         a3, t6, 12
                  slli         s3, ra, 27
                  sll          s7, gp, a0
                  auipc        t6, 922972
                  slli         a0, s8, 25
                  srl          a4, s8, t0
                  slt          s8, a1, t1
                  nop
                  lui          gp, 526408
                  lui          ra, 168620
                  srli         a4, a7, 26
                  xor          gp, a2, a6
                  srl          zero, s3, s11
                  sub          t1, s1, s6
                  ori          s1, t6, 1949
                  srai         a3, a4, 15
                  or           sp, t0, gp
                  sub          a3, a5, s9
                  slt          a7, s6, s0
                  slt          a0, s8, gp
                  sltu         a3, s8, a4
                  nop
                  srl          t1, s7, gp
                  andi         t3, a4, 301
                  sra          a2, s0, t0
                  srli         tp, t4, 31
                  or           s0, s2, s11
                  slt          s9, s4, a6
                  nop
                  lui          tp, 885428
                  srl          t0, zero, gp
                  sltu         a6, s9, t5
                  slt          tp, s8, a7
                  srli         a6, a4, 14
                  slt          s9, gp, s3
                  addi         a3, t1, 1450
                  lui          t6, 796654
                  andi         a1, sp, 1553
                  addi         t6, ra, -511
                  lui          zero, 265225
                  slti         sp, s5, -1082
                  sltu         gp, a0, t1
                  andi         a4, a7, 1100
                  ori          a2, s9, -529
                  sra          s8, t0, s6
                  ori          t1, s9, -1242
                  and          t3, s9, ra
                  and          s8, t0, ra
                  srli         s0, gp, 8
                  xor          t1, a3, s11
                  xori         t6, s5, 1308
                  add          a0, s4, t5
                  slti         a7, s0, -1891
                  xori         t6, s7, 1524
                  or           s11, s10, gp
                  sub          s8, s11, s5
                  auipc        t3, 971868
                  srli         a3, t3, 11
                  slli         a1, t6, 4
                  sltu         tp, a3, s10
                  auipc        a0, 110184
                  and          s5, s1, tp
                  and          a3, t5, a1
                  slli         t0, s11, 27
                  or           s3, s7, zero
                  nop
                  slt          s1, a5, gp
                  sll          a7, a1, s5
                  slti         a6, tp, 806
                  xori         s7, ra, -1961
                  xori         s4, s6, -805
                  slli         s7, gp, 15
                  sll          a3, s10, sp
                  add          a2, s2, t2
                  xor          t1, s10, s9
                  add          a1, t3, t3
                  slt          s4, s0, t3
                  slti         a7, s3, -1804
                  andi         a0, s4, -1304
                  and          t4, t6, gp
                  auipc        s3, 164142
                  slli         s2, s10, 13
                  slti         a2, s6, -1259
                  and          t1, s9, tp
                  or           tp, s11, s10
                  and          tp, a6, a1
                  andi         sp, t1, -1984
                  sltiu        s2, a0, 1612
                  nop
                  sltu         a3, a5, a7
                  sll          a3, a6, a2
                  xor          s2, s7, s11
                  ori          t1, s4, -386
                  auipc        gp, 350552
                  sltu         a1, s1, a5
                  auipc        s4, 801754
                  andi         s5, t3, 814
                  ori          t4, tp, 985
                  xor          gp, s10, ra
                  ori          s9, zero, 1282
                  xori         s11, a3, 730
                  addi         zero, a4, 776
                  auipc        ra, 313530
                  sll          s3, s4, s4
                  srl          gp, t5, a3
                  or           tp, t0, a1
                  slt          t5, a6, t0
                  or           s0, a5, a6
                  and          sp, a5, a7
                  srl          s7, t4, a7
                  lui          s2, 319301
                  and          a6, t3, s0
                  lui          s1, 953501
                  sltu         s3, a1, a2
                  srli         t5, s5, 12
                  sltu         t6, a0, ra
                  sltiu        s5, ra, 529
                  andi         a2, s4, 255
                  xori         s1, a2, -403
                  or           a0, sp, t0
                  and          a3, s7, s9
                  sltiu        a0, s3, 997
                  srli         a6, sp, 8
                  and          s2, s2, a7
                  addi         s4, s10, 894
                  slli         a0, s2, 1
                  sll          s5, t3, gp
                  add          sp, s4, a7
                  addi         s0, ra, 497
                  add          s5, a6, a7
                  xori         t5, t1, -949
                  xori         t4, zero, 1932
                  slti         s8, t6, 1478
                  auipc        s6, 950062
                  auipc        t5, 645539
                  auipc        a2, 706558
                  add          a3, gp, t2
                  addi         s1, t2, -825
                  andi         s4, s0, -1877
                  sltu         a6, zero, s9
                  xori         a0, a4, 1851
                  srl          s4, t2, t1
                  andi         a6, s7, 1966
                  sub          a0, t3, t4
                  or           sp, s0, gp
                  slti         s4, a3, -809
                  nop
                  add          a4, a5, t0
                  ori          a3, s3, 664
                  xor          a4, s10, a4
                  xor          a3, s7, s8
                  xor          s3, s6, t0
                  or           tp, gp, s2
                  slti         a0, t5, 29
                  sub          s7, a1, s7
                  ori          s5, a7, 648
                  srl          s4, a0, a2
                  xor          a1, s5, s5
                  srl          sp, a6, a2
                  sra          s9, a3, s3
                  lui          t6, 191221
                  add          t1, t5, s8
                  andi         t3, t6, 1830
                  and          s11, a5, s5
                  or           s9, a3, s0
                  or           t1, t6, zero
                  sub          s7, s6, s3
                  slt          s9, a4, t3
                  slt          s1, a2, tp
                  slti         s4, t0, 829
                  slt          s2, t6, s11
                  ori          s4, a0, -426
                  or           a2, a6, a7
                  sltiu        tp, a5, 586
                  or           s5, s3, a1
                  srai         s9, a4, 23
                  slti         t3, sp, -719
                  sub          s0, s9, s1
                  slt          a6, a6, s2
                  lui          s6, 137852
                  sltu         s3, s11, zero
                  lui          s1, 450382
                  sub          s5, s11, s5
                  or           a0, s11, s1
                  or           t5, s1, a0
                  nop
                  sub          a6, a6, t5
                  add          s2, s8, t4
                  srai         t5, s4, 3
                  ori          s4, a3, 41
                  ori          a0, tp, 1943
                  or           t1, t2, a4
                  lui          s7, 947786
                  addi         t3, s0, -1565
                  slti         a2, s5, -113
                  auipc        t0, 834556
                  andi         t5, a5, 1385
                  xori         a7, a5, -806
                  sra          t1, a0, a0
                  addi         s11, t4, 758
                  nop
                  slti         a7, s11, 431
                  srai         s8, s6, 16
                  and          a2, t1, s3
                  slli         s2, t2, 13
                  lui          a4, 697052
                  auipc        s1, 242885
                  sra          t4, s2, s1
                  srl          s3, a2, t6
                  andi         s5, s9, -936
                  srai         t1, a1, 14
                  addi         t4, t4, -37
                  andi         t0, s11, 930
                  lui          a4, 1024161
                  srl          s11, s0, s10
                  slli         t1, s3, 0
                  and          tp, gp, a2
                  sra          s4, sp, a0
                  or           a0, s10, a7
                  srai         s0, s8, 0
                  srli         s0, s1, 22
                  slti         s5, t5, 1264
                  slli         s7, s6, 5
                  xori         sp, ra, -1357
                  slli         s0, s3, 6
                  sll          zero, tp, a4
                  lui          sp, 823026
                  xori         tp, a0, -1788
                  xori         t3, s11, -1114
                  srl          t1, t0, s2
                  xor          a6, s7, s9
                  addi         a2, a7, 1698
                  add          ra, s1, a1
                  ori          a1, s4, -1718
                  slti         ra, a4, 1
                  or           s8, tp, t0
                  sub          t6, s8, tp
                  sub          a3, t3, a6
                  slli         a2, a4, 8
                  li           s6, 0x94b8ac85 #start riscv_int_numeric_corner_stream_19
                  li           a6, 0x57208bec
                  li           ra, 0x80000000
                  li           t3, 0x0
                  li           gp, 0x281dade1
                  li           a1, 0xffffffff
                  li           s11, 0x0
                  li           s7, 0x0
                  li           s9, 0x5a7f9112
                  li           t5, 0xffffffff
                  add          t3, t5, t3
                  addi         t3, t3, -693
                  sub          t5, s6, a1
                  sub          s7, gp, s9
                  sub          s9, ra, s11
                  nop
                  add          s6, s11, s9
                  lui          s6, 252954
                  auipc        s11, 766826
                  nop
                  auipc        a6, 915605
                  lui          a6, 748468
                  addi         s9, t3, 115
                  add          s11, gp, a6
                  addi         s11, s7, -878
                  nop
                  auipc        a1, 71499
                  auipc        t3, 128173
                  addi         ra, ra, -1161 #end riscv_int_numeric_corner_stream_19
                  add          t1, t4, s3
                  slti         s7, s7, 873
                  addi         s8, s4, -1527
                  addi         s9, zero, -556
                  ori          t6, a4, -1866
                  addi         a0, a6, -1182
                  lui          s1, 701455
                  srai         t3, a2, 19
                  lui          s7, 900864
                  xor          s3, s11, s9
                  srl          t4, a2, s6
                  and          a7, a3, t0
                  and          a1, t3, s2
                  and          sp, a2, s1
                  srli         s5, t2, 7
                  nop
                  srli         a2, s7, 10
                  sltiu        s4, s5, 1266
                  andi         s7, s3, 1629
                  addi         a2, ra, 57
                  srl          s3, a6, a5
                  srli         s0, a1, 17
                  slt          t4, t4, s11
                  add          s4, s8, a6
                  sltu         s6, zero, s7
                  sll          s8, a7, gp
                  auipc        s11, 105168
                  add          s8, t5, s9
                  nop
                  auipc        a4, 487951
                  add          ra, t1, a4
                  sll          t4, a1, s11
                  add          s9, s6, gp
                  sub          s3, a4, s11
                  sll          s5, s7, s9
                  add          s5, t0, a3
                  xor          s8, s11, sp
                  srli         s4, s3, 2
                  srai         tp, t3, 21
                  xori         tp, a7, 880
                  srli         a3, a1, 8
                  xor          a3, s5, s1
                  sub          s2, gp, s7
                  sra          s4, a0, t5
                  sub          s4, s6, s1
                  slti         t4, t0, 1639
                  sll          s4, s4, a6
                  slti         s3, a5, -1737
                  sltiu        s0, a7, 108
                  xori         a3, t1, 1754
                  sra          s8, sp, zero
                  auipc        s8, 791320
                  sub          ra, s10, gp
                  sub          s7, a5, a6
                  ori          t4, t6, -1074
                  nop
                  xor          t6, s10, t3
                  lui          tp, 818687
                  or           t3, a2, a4
                  xori         s2, tp, 1228
                  lui          s8, 693012
                  sll          t3, t5, s1
                  srai         s9, a5, 26
                  sub          s11, a1, t3
                  nop
                  xori         gp, s0, -56
                  nop
                  slti         tp, s8, -462
                  and          s7, a2, s5
                  lui          a1, 202974
                  slli         t1, s6, 8
                  add          s3, a2, gp
                  srli         s3, s11, 16
                  sra          s3, s2, t6
                  slli         s1, a7, 23
                  sltu         s9, s11, sp
                  slt          s0, s7, zero
                  and          tp, a7, t4
                  slti         s9, s9, -341
                  andi         t4, s2, -1903
                  srai         s9, sp, 14
                  add          s9, tp, s2
                  xori         t3, t6, 355
                  and          ra, t6, s8
                  addi         s5, s4, 1932
                  sub          t1, s11, a4
                  add          t1, t6, t3
                  srai         s9, a7, 21
                  slli         sp, t1, 2
                  ori          t4, a7, 42
                  srai         gp, s11, 17
                  and          ra, s6, gp
                  sub          t5, t4, sp
                  srai         a3, s0, 10
                  xori         t5, zero, 334
                  sltiu        t0, t5, -1868
                  srli         t1, s7, 28
                  slli         a0, a3, 15
                  xor          s8, t5, a6
                  andi         sp, s9, -1582
                  srli         s8, sp, 23
                  slti         s0, ra, 1472
                  xor          a3, s8, s3
                  andi         s1, t0, 1115
                  xor          s6, a4, s8
                  srl          t3, sp, s10
                  xor          gp, sp, a7
                  sll          a2, a1, s11
                  srai         t4, s9, 17
                  nop
                  ori          s5, s9, 546
                  sltiu        a7, sp, -1794
                  xori         s5, s8, -1718
                  sra          s0, s11, a4
                  slt          t3, t4, t2
                  nop
                  slt          t3, zero, s10
                  sra          s5, s0, tp
                  sltu         s2, s0, s2
                  andi         a3, s4, -1481
                  srl          tp, sp, gp
                  add          t4, s3, s5
                  addi         a7, s10, -778
                  lui          a7, 432813
                  srai         s7, t4, 15
                  sltiu        s6, a3, 744
                  srai         t3, a6, 31
                  slli         a7, t5, 17
                  auipc        t0, 622526
                  add          s3, t1, s6
                  auipc        gp, 217081
                  or           zero, t0, zero
                  sra          s8, a5, t0
                  sltiu        s6, s0, -472
                  ori          a7, t0, 648
                  ori          tp, a7, -1905
                  auipc        t5, 717187
                  ori          s8, s6, -1575
                  xor          s0, s9, t6
                  sltiu        a6, s10, 33
                  lui          ra, 669303
                  auipc        s5, 678438
                  slti         t3, s5, 1678
                  addi         sp, s7, 505
                  or           a3, tp, s1
                  and          s5, s10, a6
                  li           t0, 0xc924d31a #start riscv_int_numeric_corner_stream_13
                  li           t4, 0x0
                  li           a2, 0x0
                  li           s0, 0xffffffff
                  li           gp, 0xb0641538
                  li           sp, 0x4e18ec9b
                  li           ra, 0xffffffff
                  li           a1, 0x0
                  li           a7, 0xfaa1a77e
                  li           s6, 0xffffffff
                  nop
                  add          s0, s0, a2
                  add          t4, t4, a2
                  lui          s0, 379174
                  auipc        a7, 623506
                  nop
                  nop
                  add          sp, a1, s6
                  nop
                  nop
                  addi         a1, a1, 162
                  addi         t4, sp, -1931
                  lui          t0, 983646
                  addi         t4, t0, -1053
                  sub          sp, a1, t4
                  lui          ra, 376373
                  add          t0, s0, sp
                  nop
                  addi         s6, s6, -1873
                  auipc        s0, 300444 #end riscv_int_numeric_corner_stream_13
                  srl          s0, s9, s9
                  sll          a2, gp, s9
                  sra          s8, s9, zero
                  or           t5, t3, s9
                  slli         a1, a7, 20
                  srl          a3, t5, s2
                  sltiu        s3, a0, -56
                  ori          s11, t6, 1850
                  ori          t6, a3, 753
                  or           tp, gp, s1
                  ori          s7, s7, -86
                  sra          a1, s6, sp
                  nop
                  slli         s4, s1, 27
                  srai         s0, s0, 20
                  slti         a3, zero, 1344
                  slt          s2, ra, a2
                  sltu         s0, s3, s0
                  andi         s4, a4, -1835
                  lui          s11, 222869
                  sra          a3, tp, gp
                  lui          zero, 104552
                  and          s5, t3, s4
                  slti         s2, zero, 512
                  and          s9, s11, s5
                  or           s11, a5, tp
                  xori         s3, s7, -1167
                  lui          s5, 690483
                  slti         sp, ra, 1924
                  nop
                  xor          gp, a5, s6
                  slti         s7, s11, 539
                  sltiu        t6, t6, -2047
                  addi         a1, a0, -1531
                  add          t6, s9, a2
                  srai         a2, gp, 25
                  and          gp, a7, a7
                  and          sp, a6, t2
                  slt          s7, t3, s1
                  sltiu        sp, t2, -1920
                  andi         s6, s10, -21
                  xori         t3, s11, 1015
                  sll          gp, tp, s0
                  srl          zero, a7, a2
                  xori         s2, a7, -190
                  auipc        sp, 751624
                  srl          zero, s5, a3
                  sltiu        a3, a6, -625
                  andi         t4, a1, 574
                  lui          t6, 410163
                  srli         a3, sp, 23
                  srl          t1, a0, t5
                  or           t6, t4, t2
                  slti         t3, s10, 235
                  and          t3, s0, a4
                  auipc        a7, 502155
                  srai         t1, gp, 9
                  srli         a0, t4, 22
                  sltu         a0, zero, a4
                  srl          s6, a7, a0
                  sltu         t5, s4, gp
                  auipc        s8, 843223
                  ori          t0, t0, -1838
                  sltiu        a1, t6, 930
                  srai         s2, a5, 19
                  slti         zero, a0, -1979
                  sltu         s6, s8, a0
                  srai         a3, ra, 26
                  add          s6, s10, zero
                  lui          t0, 995921
                  slti         a7, s1, 317
                  ori          ra, s2, 260
                  and          s3, t3, t2
                  add          s2, a7, sp
                  xori         gp, a2, 1289
                  auipc        s0, 767997
                  xori         tp, gp, 676
                  addi         ra, sp, -400
                  lui          s2, 34399
                  slti         sp, s4, 288
                  sra          s6, s9, s3
                  and          t1, a5, zero
                  slli         s9, ra, 21
                  xori         s4, t4, -286
                  sltiu        a2, tp, -1628
                  sub          s6, a3, a6
                  srai         t3, s1, 1
                  or           gp, s11, t0
                  srli         ra, a5, 20
                  lui          s4, 674116
                  srli         s6, s6, 14
                  sltu         t1, s6, sp
                  slli         t1, s2, 24
                  lui          a4, 567492
                  sltiu        zero, s8, 997
                  lui          a2, 14665
                  andi         sp, sp, 1173
                  sll          a4, s3, s3
                  slli         t6, s9, 29
                  add          s1, ra, a0
                  and          zero, s9, t6
                  sra          s1, a0, s4
                  slli         t3, t0, 23
                  slli         a6, t4, 14
                  nop
                  srai         s3, a5, 17
                  sra          t4, s9, s9
                  xor          s8, s11, gp
                  sltu         s11, s5, s6
                  sltu         a6, s6, s5
                  sll          a3, a7, a2
                  addi         zero, s9, 1583
                  and          ra, sp, t0
                  addi         t3, a5, 1620
                  andi         t0, s6, 445
                  auipc        t6, 530424
                  ori          sp, tp, 946
                  lui          t5, 655142
                  andi         ra, s2, -958
                  slli         s5, a6, 1
                  slli         a2, s11, 7
                  xori         s3, s11, -1198
                  addi         t0, a6, 540
                  add          a3, s3, gp
                  ori          t5, gp, 275
                  xor          s1, a0, a3
                  ori          s0, t1, -2020
                  sll          a6, s9, s0
                  andi         s4, s3, -448
                  and          a6, ra, s11
                  slt          s4, s7, a5
                  srli         t3, tp, 10
                  sra          s3, s11, s11
                  xor          sp, s5, a1
                  srli         a2, s4, 8
                  sltiu        a2, s8, 325
                  srl          a2, t2, s0
                  srai         a7, s2, 11
                  andi         s8, a4, -810
                  andi         a3, a5, -1346
                  andi         s6, a7, 1149
                  add          a3, a0, zero
                  xori         t1, s5, 385
                  auipc        a4, 701903
                  sub          s0, s5, s10
                  slt          s1, s8, s1
                  slli         s7, t4, 11
                  lui          s6, 459882
                  srli         s0, a3, 16
                  slt          s3, s7, a7
                  addi         zero, s8, -1153
                  xor          tp, a1, t5
                  sltu         s2, t3, a2
                  xori         s4, s2, 1351
                  add          a3, t5, s10
                  sub          s8, zero, s10
                  sll          gp, a2, t1
                  xori         s0, tp, -1538
                  srai         s4, t3, 11
                  or           s1, s8, s0
                  sltu         a2, s6, a6
                  nop
                  auipc        a3, 390812
                  srl          t1, gp, s3
                  srli         t5, s4, 19
                  srl          a6, a6, s2
                  sltiu        s3, sp, -278
                  sub          s1, s0, a5
                  slt          zero, s0, t5
                  nop
                  andi         a1, s11, 434
                  slli         s7, s9, 23
                  lui          a4, 970589
                  slli         t5, s4, 31
                  add          a7, gp, gp
                  slli         s8, a0, 21
                  addi         gp, t5, -499
                  xor          s2, a1, s3
                  and          s7, s2, a3
                  sltu         t6, s1, ra
                  sra          s3, s5, s0
                  lui          sp, 180915
                  srli         ra, tp, 23
                  lui          tp, 188036
                  addi         t0, sp, 1746
                  srli         tp, s2, 27
                  sra          t1, s0, a1
                  srl          t6, s3, tp
                  slti         t6, a6, 529
                  slti         sp, t4, 713
                  nop
                  sra          t1, s6, t5
                  slli         a0, s5, 28
                  auipc        a7, 960324
                  srai         t0, a1, 4
                  addi         s4, t0, 577
                  andi         a6, sp, 1871
                  srl          a7, t6, a5
                  and          t1, t0, t6
                  srai         s11, s1, 15
                  ori          s3, t2, 8
                  sub          sp, a7, s0
                  srl          t3, a0, tp
                  slli         s9, s0, 5
                  xori         a0, s0, -501
                  xori         tp, t5, 1427
                  addi         zero, gp, 241
                  xor          s2, t1, s9
                  sll          sp, a7, a5
                  sltu         s8, s10, a1
                  sll          s3, t1, t4
                  sll          s1, t5, s3
                  sra          s5, s4, s6
                  slli         t6, t1, 29
                  ori          t3, t0, 1944
                  sll          zero, sp, t3
                  srl          a4, s0, a7
                  xori         zero, zero, -23
                  ori          a3, s11, -1516
                  andi         a6, a7, -1941
                  nop
                  sub          t4, a3, a4
                  lui          tp, 301730
                  slti         s3, a0, -1304
                  nop
                  sltiu        s6, zero, -775
                  lui          ra, 276654
                  slt          s3, s6, a5
                  auipc        s2, 607366
                  auipc        s0, 449639
                  srl          s9, a0, a7
                  lui          gp, 91946
                  andi         ra, sp, -145
                  ori          s6, a6, 1813
                  srli         a7, s2, 14
                  sltu         ra, a5, tp
                  auipc        t1, 761518
                  ori          t1, gp, -1563
                  auipc        sp, 462081
                  srl          s2, zero, a5
                  or           zero, t6, s8
                  ori          ra, a1, -17
                  auipc        a3, 110417
                  lui          a1, 409626
                  slti         s0, t6, -498
                  ori          s2, sp, 579
                  sltiu        s5, s8, 1765
                  nop
                  add          s3, sp, ra
                  slti         t1, s11, -1405
                  srl          s3, s0, t6
                  sll          s9, a4, s2
                  slt          a6, s2, t5
                  srai         t0, tp, 1
                  sltiu        gp, s2, -1964
                  srl          s9, t1, t0
                  xor          s8, sp, t3
                  and          a2, a2, s4
                  xor          s11, a0, t2
                  or           s1, s7, tp
                  add          a6, tp, a7
                  lui          zero, 41234
                  xor          a3, t0, t2
                  andi         s8, t4, -304
                  slt          s8, tp, s1
                  or           t1, s11, a7
                  slt          s6, ra, s3
                  sltu         a2, a1, s4
                  slt          s6, a7, t1
                  sltu         gp, zero, s9
                  lui          s9, 123890
                  slt          t5, tp, s0
                  srai         a4, ra, 25
                  addi         s3, a0, -538
                  sltu         a0, s3, s9
                  xori         a0, a5, 524
                  sltu         a4, zero, a5
                  slt          s5, a6, ra
                  slti         t1, s2, 690
                  slti         s6, s7, -1247
                  srl          a4, tp, a7
                  slli         s5, t1, 21
                  srl          a4, a6, t1
                  slti         s2, a1, -1897
                  ori          s9, s3, -1966
                  sub          tp, s4, gp
                  srl          s3, a0, ra
                  sltiu        tp, t6, -1167
                  xor          s3, s1, s8
                  andi         s2, t1, 88
                  sub          t3, s8, tp
                  slt          zero, s11, ra
                  slti         s2, t2, 1689
                  addi         ra, sp, 101
                  sll          sp, s7, t1
                  or           t0, t2, a6
                  xor          s11, s2, tp
                  sub          s6, a1, t5
                  lui          t5, 846709
                  slti         t6, s4, -1570
                  addi         ra, s8, 2043
                  srli         a1, sp, 31
                  or           a1, a3, s7
                  sltu         s6, s9, t6
                  sltiu        s2, a7, -134
                  or           t4, s1, s10
                  sll          s0, a1, s7
                  slli         a2, s5, 29
                  lui          ra, 71704
                  and          t0, a2, a1
                  lui          s0, 526852
                  sltiu        t4, t3, 1624
                  ori          zero, ra, -1209
                  slti         ra, s4, 1914
                  srl          s9, s9, tp
                  andi         zero, s6, 1822
                  sltu         t5, t2, a7
                  nop
                  lui          t0, 409057
                  sll          zero, s5, t1
                  srl          s9, a6, zero
                  sltiu        s1, a3, -872
                  srli         a2, gp, 15
                  slti         s8, zero, -1355
                  slt          t3, a5, t2
                  sltu         s1, a1, a4
                  lui          s2, 953222
                  and          s2, s8, t5
                  slt          s6, sp, zero
                  sra          a0, s0, t6
                  add          a1, sp, a6
                  xor          s9, a3, t5
                  nop
                  lui          s6, 432752
                  andi         t4, a7, -1150
                  lui          ra, 916525
                  sra          t0, a3, s7
                  srl          a3, s4, s2
                  and          s5, a6, t6
                  auipc        tp, 664346
                  srl          a4, s10, a5
                  xori         s9, s5, 1889
                  slli         t4, sp, 26
                  auipc        ra, 507390
                  srl          a0, a2, t6
                  xori         gp, a4, 443
                  nop
                  addi         ra, s8, 1893
                  sll          s8, s6, a2
                  xori         a3, t4, 117
                  andi         s5, t0, 1291
                  or           s11, t0, s9
                  sub          s5, a7, t4
                  lui          s2, 633568
                  andi         ra, s5, -366
                  ori          s3, a6, 1413
                  slli         t4, t2, 4
                  sltu         a6, s7, a7
                  andi         a3, gp, -1242
                  andi         sp, s7, 1123
                  slt          s4, a7, a4
                  srl          t6, t3, gp
                  srl          zero, t5, gp
                  auipc        a4, 543786
                  lui          t1, 613225
                  addi         s3, s9, 17
                  andi         s4, t5, -402
                  xor          s9, a1, s11
                  slli         a7, t6, 18
                  slt          t0, ra, t2
                  xori         a7, s4, -1195
                  xori         a3, a7, 410
                  nop
                  slt          t4, t5, a2
                  slt          tp, zero, a5
                  slli         t3, a3, 13
                  srai         t4, a4, 31
                  slti         t1, s7, -1520
                  sltu         a6, sp, a0
                  and          s8, a0, a2
                  slt          a2, s6, s3
                  srl          s2, a3, a4
                  addi         a6, a0, 741
                  sub          a2, t1, s11
                  addi         s4, s11, 154
                  lui          zero, 377970
                  addi         zero, t2, -1707
                  andi         s1, s8, 1996
                  xori         a3, a4, -1276
                  slt          s3, s7, a5
                  sub          sp, t2, t3
                  andi         ra, a6, 1731
                  slt          a4, t1, s8
                  li           s5, 0xe5d690d0 #start riscv_int_numeric_corner_stream_14
                  li           t0, 0xffffffff
                  li           s2, 0x92523d65
                  li           a4, 0xffffffff
                  li           s11, 0xffffffff
                  li           a6, 0x0
                  li           a0, 0xce7a2010
                  li           t6, 0x80000000
                  li           t3, 0x57a0cee0
                  li           ra, 0x0
                  sub          s2, s2, a0
                  lui          s5, 824724
                  add          s5, t0, s2
                  nop
                  nop
                  sub          s2, s11, s2
                  auipc        a6, 334626
                  auipc        t3, 202500
                  lui          a6, 694128
                  nop
                  addi         t6, a0, -1292
                  addi         s11, s5, -552
                  add          t6, s11, t6
                  addi         s11, s5, 1834
                  add          t6, s11, a0
                  auipc        ra, 958585
                  sub          s2, t6, a6 #end riscv_int_numeric_corner_stream_14
                  andi         a1, ra, -1371
                  srl          s8, ra, t3
                  sll          zero, a1, s2
                  srai         s1, ra, 22
                  or           s5, t3, a6
                  ori          a7, s9, 253
                  nop
                  add          a3, a2, s11
                  or           tp, a0, s2
                  ori          s9, t3, -1723
                  slt          tp, t2, a0
                  srai         s5, ra, 29
                  and          a1, s0, s10
                  nop
                  srl          t5, t0, t3
                  sub          a6, s0, t0
                  srl          a1, s3, t6
                  ori          t3, s10, -1129
                  sra          t4, a6, s1
                  ori          s2, s10, 629
                  sltiu        a7, s8, -436
                  slt          s9, t0, t1
                  addi         gp, a6, -2033
                  and          tp, gp, a5
                  auipc        a3, 222209
                  xor          s4, t3, s2
                  slli         s6, t6, 30
                  slt          t6, gp, tp
                  sll          s9, s5, t5
                  addi         s7, s4, 1240
                  add          a0, s5, s3
                  srli         s9, gp, 16
                  andi         s3, t5, -357
                  sltiu        s6, s6, -1857
                  ori          s1, a4, 2000
                  slli         s11, s0, 28
                  auipc        t6, 210376
                  sltiu        tp, s10, -406
                  slti         s9, a6, 1247
                  sll          a3, tp, a6
                  addi         s9, t5, 366
                  slli         t3, ra, 21
                  sltiu        a3, sp, -1247
                  sra          a0, a5, s2
                  srli         s3, ra, 17
                  sra          t3, s1, s9
                  add          a0, s10, a1
                  and          s6, a4, s7
                  sll          a4, t4, t6
                  addi         t0, a6, 81
                  lui          a7, 1004027
                  nop
                  addi         a0, a3, 971
                  slti         a3, s3, 531
                  xori         s4, s4, -1985
                  sra          s6, a3, s2
                  lui          s11, 999403
                  slti         sp, s0, -1769
                  srli         t0, s10, 30
                  nop
                  srli         s1, t6, 12
                  sltu         t3, s3, ra
                  slli         s11, s0, 27
                  sra          a6, t2, s6
                  ori          sp, t4, 1684
                  slti         s5, gp, -1113
                  lui          t4, 655122
                  sltu         tp, a6, a2
                  nop
                  sltiu        t4, s7, -596
                  slt          gp, gp, zero
                  nop
                  slli         s0, t1, 24
                  or           a7, s4, a4
                  xor          a6, zero, s1
                  auipc        t1, 636453
                  lui          s6, 221813
                  and          t0, t5, a6
                  nop
                  add          gp, t5, s5
                  sll          t6, s9, s2
                  xor          zero, s10, a4
                  addi         a0, s4, 1090
                  srai         a0, t0, 26
                  sra          s0, a1, a0
                  andi         t6, s10, -249
                  slti         s0, s9, -931
                  andi         gp, zero, -226
                  sll          s6, s8, t2
                  andi         a6, s6, -44
                  slli         t5, t6, 8
                  slli         s7, a1, 29
                  slt          zero, a1, t2
                  sra          s2, t6, a4
                  slli         s7, t5, 22
                  srai         t1, t0, 12
                  slt          s3, zero, s8
                  sub          s6, s3, s5
                  auipc        ra, 225846
                  xori         tp, a2, 1884
                  sltiu        s2, s0, 1883
                  slti         ra, s8, -899
                  sltu         s11, s2, s6
                  ori          ra, t0, -68
                  nop
                  sra          a4, tp, a0
                  srai         gp, t5, 25
                  and          t1, s5, s2
                  sltu         t6, a6, t3
                  slt          s1, a1, t4
                  nop
                  slt          gp, s7, s7
                  slli         s3, s3, 16
                  ori          s8, a0, 1009
                  auipc        a4, 410758
                  addi         s4, s7, 1594
                  and          a6, a1, t6
                  ori          s6, s8, 1990
                  sll          t1, s3, tp
                  add          gp, zero, gp
                  addi         s5, gp, -283
                  xor          a0, tp, t1
                  sltiu        a1, s3, -500
                  and          a6, sp, zero
                  nop
                  andi         a2, s7, 1196
                  auipc        s11, 605391
                  xori         s2, a5, 628
                  ori          s4, t2, 117
                  sltiu        a1, ra, -1226
                  sltu         sp, t1, t4
                  xori         a4, tp, 1434
                  srai         s7, sp, 17
                  sll          t6, a3, a0
                  sra          a3, t5, s3
                  srl          s2, a3, t3
                  lui          t6, 981415
                  ori          a2, s7, 490
                  or           a2, t4, s4
                  ori          zero, t1, 712
                  addi         a1, a7, -226
                  sll          s1, s9, s4
                  srl          s8, gp, tp
                  slt          s7, t4, t2
                  add          s5, t6, s6
                  add          s0, s0, s4
                  addi         t6, t0, -924
                  xor          t1, a0, zero
                  slti         a3, gp, 1378
                  andi         s9, a2, 15
                  sltu         t6, s9, zero
                  auipc        s11, 655340
                  andi         sp, s2, -1793
                  srl          a1, sp, gp
                  sltiu        t4, t4, -631
                  lui          t5, 1045728
                  and          s0, s7, a0
                  addi         s4, s3, 372
                  slt          s4, s11, s1
                  srli         sp, t1, 23
                  sltiu        a4, s3, 163
                  sll          ra, s5, tp
                  sll          t4, s6, s4
                  or           t5, t5, gp
                  xori         s6, s8, 1484
                  sltiu        a7, sp, 798
                  andi         a4, s5, 1407
                  sra          a6, s4, t6
                  sll          s4, a7, s1
                  andi         s9, tp, -524
                  srl          a4, t3, zero
                  sub          t4, zero, sp
                  ori          a6, a1, -1606
                  sra          a0, s9, s8
                  addi         a6, s6, -567
                  ori          tp, t2, -345
                  sra          zero, a1, t5
                  sltiu        tp, s4, 2039
                  slli         s1, a5, 14
                  srli         s9, tp, 7
                  lui          s7, 346558
                  srl          t1, s0, t2
                  sra          t4, s11, s9
                  srli         s9, a0, 10
                  xor          s4, t1, a5
                  slli         a0, t1, 10
                  andi         a4, a6, -2008
                  or           s11, s4, t1
                  slt          s7, s2, zero
                  slt          a7, s1, s9
                  lui          a4, 647153
                  srli         t4, a6, 27
                  add          t3, sp, ra
                  sll          tp, s1, t0
                  sll          s3, s1, s7
                  srli         a2, t4, 28
                  nop
                  slt          s0, gp, s7
                  srai         s6, a4, 20
                  nop
                  sll          s4, ra, s8
                  sltu         s6, s8, s10
                  nop
                  sltu         t3, s1, s6
                  sra          a3, s0, t4
                  sra          t5, a3, s5
                  slti         s11, a7, 1445
                  ori          s0, tp, -71
                  addi         s2, s7, 654
                  sub          s9, s9, t1
                  sltu         s0, a2, a6
                  addi         gp, s4, -290
                  ori          a7, s3, 908
                  srai         a1, tp, 5
                  sltu         a2, t4, a5
                  slt          t1, s7, s1
                  auipc        sp, 34902
                  slt          t4, s7, s5
                  ori          ra, s8, 801
                  sltu         ra, t1, tp
                  and          gp, t1, t5
                  srl          a2, a0, s3
                  add          a7, tp, a5
                  sub          s6, sp, s7
                  srli         s5, a2, 5
                  slt          s3, a6, a0
                  and          s9, t3, a7
                  nop
                  lui          s9, 595182
                  ori          s9, ra, 293
                  srl          gp, t6, a0
                  slli         tp, t1, 0
                  srl          t3, t6, a0
                  nop
                  and          s2, s10, t6
                  slti         tp, a0, 437
                  nop
                  auipc        a4, 156776
                  sltiu        t1, t2, 2011
                  auipc        s3, 528636
                  slti         s9, sp, 1493
                  sltiu        gp, s1, -439
                  auipc        t0, 547179
                  ori          a2, a5, 844
                  ori          ra, a5, -1960
                  auipc        t3, 654458
                  sltu         s0, s4, a6
                  add          s11, a3, a5
                  ori          s11, t5, -616
                  auipc        zero, 899122
                  slt          a1, zero, t0
                  auipc        t0, 964299
                  sll          s7, s3, s5
                  srl          s9, s11, s6
                  srai         s11, s6, 11
                  andi         s9, s9, -1871
                  and          a7, t6, s4
                  nop
                  xor          a0, s1, t5
                  sltiu        s0, s11, 1092
                  nop
                  xori         s4, s5, 1706
                  sub          a2, s7, t2
                  srl          a0, a5, s10
                  sltu         t6, tp, ra
                  xor          a6, t3, a0
                  sltu         t0, s7, a7
                  sra          s9, a5, s4
                  nop
                  xor          t1, a4, t3
                  and          a1, a1, t4
                  sub          s3, a7, tp
                  nop
                  nop
                  sll          t5, a1, t5
                  nop
                  addi         t1, zero, 1249
                  srli         a1, tp, 25
                  sltiu        ra, s3, 885
                  slt          a0, s2, s0
                  xori         t3, a4, 1594
                  srl          s2, s6, a0
                  xor          sp, s3, a3
                  sltiu        s11, t1, -1109
                  sub          s2, s5, a2
                  srai         zero, t6, 20
                  auipc        s4, 809882
                  auipc        s7, 653041
                  lui          s6, 1031205
                  add          t0, s5, s6
                  xori         s9, a7, -1614
                  sra          s8, s0, t3
                  or           t3, s4, gp
                  ori          s7, a3, 445
                  sll          t6, t4, s2
                  ori          s4, a7, -1757
                  sltiu        a1, s7, 2013
                  srai         a3, s3, 24
                  sltu         a1, t2, zero
                  srai         tp, t6, 20
                  sltu         s2, a6, s9
                  sltiu        s2, s2, -1373
                  add          ra, s6, s9
                  slli         s0, s11, 21
                  slli         s9, s7, 26
                  lui          s9, 315478
                  auipc        a0, 469588
                  slti         t3, t3, 2009
                  slt          t5, t5, t1
                  sra          a3, s3, a3
                  sltu         a2, a2, ra
                  slli         sp, t2, 12
                  or           s5, s5, t6
                  sub          s9, s6, t0
                  andi         s1, s8, -400
                  auipc        t1, 474980
                  sra          s8, a1, a1
                  sltiu        tp, sp, -714
                  slt          t5, t6, t2
                  slti         ra, a2, -994
                  sub          t1, t4, t4
                  sltu         a3, s7, zero
                  sll          s8, s2, s4
                  add          s3, t3, a3
                  auipc        s6, 14711
                  andi         a0, a0, 1994
                  and          sp, s1, a0
                  and          tp, s2, s5
                  andi         a3, t4, 924
                  sltu         t3, t2, s9
                  slli         a7, a2, 10
                  sub          s9, a7, s9
                  sll          a0, s3, t0
                  slli         s8, s9, 23
                  or           s1, a4, a5
                  sra          t0, a1, a0
                  slti         sp, s10, 756
                  ori          gp, t1, -1355
                  addi         a6, s5, 1853
                  xori         a6, s9, 282
                  slt          s2, ra, s8
                  lui          gp, 714443
                  ori          a0, s4, 1074
                  and          t6, s7, a1
                  slti         a3, s11, -1237
                  sll          a3, s10, t2
                  ori          tp, s0, 1206
                  srli         a7, s11, 17
                  nop
                  ori          s9, t6, -1018
                  addi         a4, a5, 585
                  xor          s1, s9, gp
                  auipc        a0, 661228
                  xori         s4, ra, -801
                  slt          s11, t3, a2
                  sra          s1, a2, t5
                  sltu         a3, t6, s5
                  auipc        s4, 513102
                  srai         s8, s11, 7
                  sll          s1, s4, s4
                  auipc        t4, 1037627
                  add          t5, s7, t6
                  xor          a0, ra, a0
                  slt          gp, s5, s10
                  nop
                  auipc        a1, 953088
                  slli         s4, a6, 25
                  srli         s3, a7, 31
                  sltu         t0, s5, s4
                  sra          gp, t1, a0
                  srli         zero, a6, 28
                  sltu         a6, t3, ra
                  andi         a1, s1, -464
                  sll          s4, ra, s1
                  add          a7, zero, a5
                  auipc        a2, 257379
                  sub          s8, gp, a2
                  slti         a6, a4, 1740
                  xor          s3, t0, t6
                  and          a0, t0, zero
                  lui          s7, 783926
                  srli         s6, a0, 20
                  xor          t6, s7, s9
                  sra          s3, zero, zero
                  sltiu        s8, tp, -1048
                  ori          s4, s6, 716
                  sltu         s11, t5, s3
                  slli         t3, s3, 31
                  lui          s7, 543020
                  sltiu        sp, s0, 151
                  ori          zero, s4, -1970
                  xori         s7, s6, 1959
                  andi         zero, t2, 1125
                  xori         t6, a5, 179
                  srai         t3, a7, 8
                  lui          sp, 314827
                  xor          zero, s1, s10
                  sll          s7, t6, sp
                  slt          t1, a3, s0
                  add          a3, sp, t2
                  and          s1, s0, t1
                  sub          gp, t0, ra
                  slti         s2, t0, -1362
                  sra          tp, s8, s11
                  addi         s11, a1, -25
                  add          s0, t3, a6
                  xori         s0, t1, 1383
                  ori          a4, zero, -125
                  srl          a0, a6, s5
                  srl          s4, a0, s10
                  xori         ra, t0, 1679
                  srli         ra, ra, 6
                  sra          a7, gp, s9
                  sra          ra, a1, s1
                  sra          gp, t2, s4
                  nop
                  and          zero, t6, t5
                  srai         a3, s2, 12
                  xori         s2, t6, 659
                  and          t6, s0, s0
                  lui          a1, 1020170
                  nop
                  sub          sp, a5, a7
                  addi         a6, a7, 170
                  slt          s0, s10, sp
                  add          t6, tp, s10
                  ori          a0, s2, 854
                  li           t6, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           t0, 0xffffffff
                  li           a4, 0x4c59acec
                  li           s11, 0xffffffff
                  li           s0, 0xffffffff
                  li           tp, 0x0
                  li           a6, 0x0
                  li           a1, 0x80000000
                  li           gp, 0x0
                  li           ra, 0x80000000
                  lui          tp, 118019
                  lui          a1, 365548
                  sub          t0, gp, a1
                  add          a4, s11, a6
                  add          gp, t6, a1
                  lui          a1, 833003
                  auipc        tp, 611516
                  lui          gp, 145455
                  lui          t0, 661704
                  sub          a4, ra, tp
                  addi         t6, gp, 541
                  nop
                  addi         ra, t6, -70
                  add          t0, t0, t6
                  nop
                  lui          tp, 530637
                  add          s0, s11, gp
                  nop
                  lui          a6, 582417
                  addi         a1, t0, -853
                  lui          t0, 884684
                  nop
                  add          gp, a6, s0
                  lui          gp, 112357
                  addi         tp, tp, 1123 #end riscv_int_numeric_corner_stream_12
                  sltu         s11, tp, s1
                  ori          a2, s6, 1676
                  lui          t0, 904750
                  slt          s2, s9, sp
                  lui          s8, 736289
                  srl          a1, a0, gp
                  slli         s0, t3, 4
                  sll          t3, s8, s3
                  slti         a0, s5, 1366
                  nop
                  ori          a7, s0, -120
                  sub          s7, a5, gp
                  sll          a0, s1, s10
                  addi         sp, zero, -1624
                  srl          s2, s11, t4
                  sra          a1, s6, ra
                  add          a4, a3, s3
                  xori         s5, a3, 1656
                  addi         sp, s0, 1138
                  add          s7, s9, s4
                  xor          s9, t1, t5
                  or           s9, s10, t2
                  or           tp, t6, s0
                  slli         sp, s4, 31
                  auipc        s8, 550758
                  xori         a2, s3, 1529
                  sltiu        a1, s7, 383
                  or           s11, s4, s6
                  slti         a0, t1, 913
                  sub          t4, a3, a0
                  ori          t5, ra, -1931
                  sltiu        t5, s9, -1261
                  slti         a4, s10, 1678
                  or           sp, s1, s3
                  srl          a7, s4, t3
                  xor          sp, sp, t5
                  add          ra, s8, sp
                  slt          a4, t4, a1
                  andi         gp, a5, 1902
                  lui          sp, 172583
                  srai         sp, s10, 13
                  and          a6, tp, s8
                  srli         t1, s1, 28
                  or           tp, t6, gp
                  xor          t1, s4, t6
                  srai         s5, a3, 0
                  and          s4, s1, t1
                  add          s3, t1, zero
                  srl          s9, a5, zero
                  xori         a0, tp, 1512
                  slti         sp, a3, 870
                  srli         s6, t1, 19
                  slti         s7, s0, -2003
                  slt          a1, zero, a7
                  slti         t0, t0, -1430
                  auipc        a2, 653673
                  addi         t6, tp, -611
                  sll          t3, tp, s10
                  addi         s0, a4, 1571
                  sra          a1, s3, t1
                  ori          s7, s7, -1552
                  or           a6, s10, sp
                  ori          ra, t0, 554
                  srl          zero, t4, s1
                  xori         s3, a2, -1640
                  xor          a2, t2, t5
                  slti         s6, s8, 905
                  sra          s1, a1, a7
                  sub          a0, a7, a0
                  slti         ra, zero, -416
                  sltu         s0, s2, s9
                  and          s7, t0, s9
                  sub          tp, s6, t5
                  ori          zero, sp, 1205
                  srli         tp, t2, 0
                  sltiu        s0, s7, 1856
                  slti         gp, s0, -212
                  sra          t5, a3, s8
                  sra          t5, a1, s9
                  slti         a0, t0, -398
                  andi         s1, t5, 1680
                  sra          a4, s11, t5
                  sltu         a7, a3, t4
                  auipc        s7, 689247
                  ori          s2, t1, -1359
                  andi         a7, a0, 713
                  sra          t5, tp, s0
                  andi         sp, a6, 35
                  or           gp, gp, a0
                  sltiu        s8, t2, 1048
                  sltu         t5, a1, a1
                  auipc        t1, 69953
                  nop
                  nop
                  andi         s5, a2, 1007
                  srl          s3, s3, s5
                  or           tp, zero, s7
                  srl          a4, s11, a5
                  sll          s1, s8, s1
                  srl          s2, t0, s2
                  xor          gp, s0, s1
                  xor          ra, s11, a5
                  srli         s8, t6, 25
                  or           t4, a6, s4
                  addi         s2, s4, 1459
                  slt          a7, s11, s1
                  lui          a7, 711154
                  ori          a6, a2, 1565
                  sub          a7, a6, t2
                  sll          s7, a4, a5
                  and          a7, t3, a5
                  nop
                  sltiu        a4, a1, 327
                  lui          a7, 569181
                  sltu         s7, t4, sp
                  xori         ra, t6, 1723
                  sltu         s3, s2, t0
                  slti         s5, s6, -1828
                  xori         zero, tp, 173
                  sub          ra, s9, s4
                  lui          a4, 567605
                  slti         a6, t3, -1448
                  nop
                  srai         t4, sp, 5
                  slli         t3, s6, 5
                  ori          a0, s4, 163
                  xori         s1, s0, -1075
                  addi         a3, s5, -978
                  sra          s1, zero, s11
                  ori          t6, a7, -1168
                  sltu         s3, a3, s5
                  sll          s0, s5, t0
                  addi         a0, sp, 214
                  andi         s11, s5, 1052
                  sra          a2, a0, s0
                  add          a1, s0, t2
                  srl          a0, gp, a2
                  auipc        sp, 168837
                  sltiu        s1, a4, 1122
                  slt          s4, s1, ra
                  or           s8, a3, s11
                  slti         t6, t1, 323
                  sll          a1, t6, a5
                  add          a0, t3, a7
                  slti         s6, s9, -661
                  add          a3, t4, s7
                  addi         s6, t1, 310
                  andi         s1, s4, 1152
                  nop
                  lui          s1, 420817
                  srli         s7, ra, 13
                  xori         a7, s10, 622
                  addi         t6, a5, 850
                  xori         s8, s0, -215
                  srli         a4, a4, 11
                  srli         a3, s0, 14
                  add          tp, a6, s11
                  nop
                  slt          s2, a3, a0
                  sltu         a1, zero, a6
                  sll          a7, s7, s7
                  xor          a7, s10, s5
                  ori          s4, t6, -787
                  sll          s4, t2, t5
                  nop
                  sltiu        a0, t3, -1192
                  ori          t5, t0, 1397
                  slti         t0, t5, -1409
                  add          a4, a7, tp
                  sra          t4, t5, a4
                  add          t4, a2, s11
                  srli         a0, s2, 27
                  auipc        a7, 121890
                  auipc        s5, 50626
                  nop
                  srl          a7, t4, s1
                  srli         s9, a6, 7
                  addi         zero, s9, -405
                  ori          s4, s5, 105
                  srl          a7, s5, tp
                  srai         s5, s0, 10
                  and          tp, s9, s9
                  slli         t5, s3, 15
                  sub          t1, a4, s7
                  add          s11, s8, a6
                  addi         s3, s6, -1506
                  xor          ra, s10, s9
                  srai         gp, t0, 13
                  sltu         a0, t6, a5
                  add          a3, s0, s0
                  sltiu        gp, t3, 1129
                  and          t3, a6, t6
                  or           s3, a4, gp
                  sub          s4, a2, s1
                  sltu         t0, a6, a7
                  auipc        a1, 708518
                  andi         s0, t2, -110
                  sltu         s7, a2, s0
                  add          a2, t1, s0
                  andi         s1, sp, 1338
                  addi         a3, s7, -1094
                  auipc        s3, 581312
                  lui          a0, 705058
                  slli         s1, a7, 11
                  srl          s8, t3, a7
                  li           a1, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           s4, 0xffffffff
                  li           a7, 0x80000000
                  li           s5, 0x80000000
                  li           sp, 0xffffffff
                  li           t1, 0x80000000
                  li           gp, 0x80000000
                  li           a0, 0x299f97f
                  li           t3, 0x0
                  li           tp, 0x80000000
                  lui          t1, 603196
                  lui          a0, 557952
                  add          tp, gp, a0
                  auipc        gp, 18646
                  add          t1, t1, a7
                  nop
                  lui          a1, 1008396
                  nop
                  nop
                  addi         tp, t1, 1390
                  auipc        t3, 641864
                  add          gp, t3, gp
                  nop
                  auipc        t1, 182020
                  auipc        s5, 244238
                  auipc        gp, 65415
                  sub          tp, a0, a1
                  lui          t1, 543926
                  lui          sp, 1009648
                  lui          s4, 795651
                  addi         s4, tp, -792
                  auipc        a1, 124358
                  lui          t1, 503871
                  lui          sp, 507103
                  add          a7, sp, a1
                  add          gp, t1, t1
                  sub          s5, gp, a7 #end riscv_int_numeric_corner_stream_18
                  srai         s11, ra, 7
                  andi         zero, s7, 46
                  addi         zero, sp, 1237
                  srl          s1, s5, a2
                  srai         s11, a2, 0
                  slt          a7, s10, t5
                  srai         a3, s4, 6
                  sltu         s8, zero, t4
                  srai         s1, s9, 6
                  sra          sp, a3, t4
                  addi         gp, t5, -421
                  sub          a7, t1, s9
                  srl          t3, s10, s0
                  lui          t0, 122849
                  nop
                  andi         zero, t0, 1368
                  sltu         s3, zero, s11
                  srai         a0, t3, 30
                  xori         zero, s0, -1569
                  add          a3, s3, t4
                  andi         s2, zero, 606
                  srai         t3, a4, 7
                  sltu         t6, t4, s6
                  sll          t5, a7, a4
                  slt          a2, t0, s6
                  slti         s7, a7, -1467
                  slti         a2, t1, 1533
                  nop
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           s8, 0x80000000
                  li           t3, 0x0
                  li           s5, 0x0
                  li           t0, 0xffffffff
                  li           a7, 0xd4d73147
                  li           s4, 0xbd2629b7
                  li           gp, 0x0
                  li           a3, 0x7eb6ec4b
                  li           s11, 0xbda3fcae
                  addi         t3, s5, 1487
                  sub          s5, a7, a0
                  add          t3, s4, a7
                  sub          s11, a3, s11
                  sub          s4, gp, gp
                  nop
                  sub          s5, a7, a3
                  nop
                  sub          t3, a3, s5
                  lui          a0, 673647
                  lui          s4, 342275
                  lui          s8, 24261
                  sub          gp, gp, s11
                  add          s4, s11, a0
                  addi         a0, s4, 1388
                  nop
                  auipc        s4, 773602
                  sub          gp, t3, a3
                  nop
                  sub          a3, a7, a0 #end riscv_int_numeric_corner_stream_0
                  sra          a6, sp, s1
                  sltu         t6, s7, a5
                  sltu         t6, s7, s0
                  sltiu        a0, s3, -195
                  andi         t6, a2, -1391
                  sltu         t5, a7, s2
                  ori          t3, s1, 864
                  slti         gp, a5, 522
                  lui          s8, 665405
                  and          s5, a6, tp
                  xor          a3, t4, t5
                  sub          t0, s1, s7
                  andi         a2, t2, -1405
                  xor          a7, s4, ra
                  slti         ra, s3, -446
                  srli         ra, s0, 28
                  add          s6, tp, s4
                  slli         ra, a2, 0
                  sltiu        tp, a1, 1413
                  andi         s5, s11, 1065
                  add          gp, a5, s6
                  addi         zero, s8, 883
                  slli         a6, sp, 28
                  slli         t0, t2, 15
                  ori          s6, s3, -1116
                  slli         s0, s5, 13
                  sltiu        t3, a4, -1444
                  sra          s5, s6, t6
                  lui          a0, 643934
                  auipc        gp, 306324
                  auipc        s5, 249874
                  sltiu        ra, a3, -256
                  slti         s3, a2, -15
                  sra          t3, t5, s9
                  andi         t3, t5, 1946
                  add          t3, tp, sp
                  or           gp, t2, s1
                  slli         a0, s10, 12
                  sltu         s3, s8, s9
                  nop
                  srai         s8, t0, 17
                  sltu         a0, t6, t6
                  slli         s6, t1, 16
                  xor          t1, s8, s8
                  sltiu        tp, a0, -1283
                  sra          s8, sp, s11
                  srli         t6, t2, 8
                  slti         ra, s7, -707
                  xor          s4, sp, tp
                  and          a1, s7, s10
                  sltiu        t4, t5, -1054
                  srai         t1, s5, 17
                  sltu         s0, s9, a5
                  or           ra, t3, a6
                  add          s2, s0, ra
                  slti         a2, s7, 1045
                  lui          a7, 186685
                  slli         s4, s11, 26
                  ori          s11, s11, -1208
                  sltiu        s7, s3, 854
                  sub          t1, ra, s1
                  ori          a4, sp, 763
                  slt          t4, s3, a1
                  andi         tp, a6, 231
                  srl          s8, ra, a1
                  sra          s8, tp, a4
                  addi         t1, s4, -1973
                  slt          a2, sp, t5
                  srl          s11, s4, s0
                  addi         tp, a0, 1118
                  slti         s2, s9, -1047
                  slti         sp, t6, 1112
                  sub          s8, s4, a4
                  slli         t0, a2, 31
                  srli         s9, a6, 20
                  sub          t0, a1, sp
                  srai         zero, tp, 8
                  sll          t6, t0, s7
                  slli         s11, a7, 10
                  xor          tp, ra, t4
                  sll          a0, a4, t2
                  sra          tp, a3, s4
                  and          a3, s6, ra
                  lui          t0, 590458
                  and          s9, s3, t1
                  slt          tp, t6, s5
                  xor          a2, s4, t5
                  slli         s6, tp, 27
                  slti         t6, t5, 724
                  xor          s2, t5, s7
                  srl          t0, t2, s8
                  lui          t6, 949407
                  srl          a1, s4, a0
                  srl          s2, a0, s0
                  sub          t4, t2, a5
                  srai         s8, t5, 25
                  nop
                  sub          s9, a5, gp
                  slt          zero, t3, s7
                  sub          s1, t6, ra
                  xori         s4, a5, -1053
                  sub          t4, ra, a2
                  sub          a2, s1, t0
                  sub          a2, s8, s10
                  addi         s7, s10, -1693
                  nop
                  add          s0, a0, a7
                  slt          a6, a1, a6
                  or           s3, t3, a7
                  srl          t0, s6, a5
                  slli         t3, s9, 30
                  sltu         t4, gp, s3
                  and          a3, zero, a2
                  add          a4, s9, a0
                  addi         a4, a5, -440
                  or           s2, s0, t2
                  slt          t6, s3, t1
                  and          tp, ra, s0
                  andi         s8, a3, 452
                  sltu         s4, t2, a7
                  and          gp, a5, a1
                  slti         a4, a1, -196
                  andi         s4, t5, -1360
                  slli         s0, a6, 1
                  slti         a4, t2, -1167
                  lui          s11, 364447
                  srai         zero, s2, 4
                  add          ra, s0, tp
                  or           t5, s5, a1
                  auipc        a6, 858986
                  srli         s11, s7, 15
                  sub          s1, s4, s7
                  add          t6, s5, s4
                  li           a1, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           s11, 0x80000000
                  li           s3, 0x1ad685f3
                  li           t5, 0x6433ee62
                  li           s2, 0x0
                  li           sp, 0x0
                  li           gp, 0x0
                  li           t0, 0x80000000
                  li           s4, 0xffffffff
                  li           s6, 0xffffffff
                  lui          s6, 158661
                  sub          s3, s11, a1
                  add          s11, a1, s11
                  nop
                  auipc        sp, 305288
                  sub          sp, t0, a1
                  lui          s4, 211335
                  nop
                  add          s2, t0, sp
                  addi         s11, s11, -1878
                  add          a1, s6, sp
                  sub          s3, s2, a1
                  lui          s4, 408510
                  addi         a1, s4, 284
                  lui          s3, 881322
                  lui          gp, 788388
                  nop
                  sub          t5, t5, s2
                  add          s6, s2, t5
                  lui          t5, 832704
                  nop
                  nop
                  lui          s2, 338742
                  auipc        s4, 43327
                  add          t5, t5, t5
                  lui          s11, 417115
                  addi         a1, s6, 11 #end riscv_int_numeric_corner_stream_15
                  srai         a0, t3, 14
                  ori          a1, s11, -1093
                  sltu         ra, s8, a5
                  addi         t0, s3, -1166
                  nop
                  auipc        s3, 420865
                  srl          a3, s9, s8
                  srl          s3, s3, s5
                  ori          t6, s0, 396
                  auipc        s6, 726090
                  srl          t4, s3, sp
                  sub          a0, s6, s2
                  add          tp, s6, a2
                  addi         a4, s1, -325
                  sll          t4, s4, sp
                  addi         s9, gp, -1204
                  ori          s0, a3, 1826
                  nop
                  addi         t0, a2, 1263
                  nop
                  and          s3, s9, a0
                  nop
                  nop
                  andi         t5, t3, -2022
                  nop
                  or           s4, sp, s9
                  sltiu        a0, a5, -125
                  slti         a7, gp, 1155
                  sra          t4, s4, s9
                  srli         s9, s6, 30
                  sltiu        a4, s2, 1763
                  srli         s5, s5, 25
                  nop
                  sra          ra, s0, s0
                  sltu         t1, s1, sp
                  slt          s0, t1, gp
                  and          s11, a4, ra
                  slt          t6, a7, s3
                  auipc        ra, 854620
                  and          s3, a4, s4
                  sra          zero, t4, s9
                  sltu         ra, s4, t1
                  srl          s9, s5, s9
                  sub          t4, a2, a7
                  auipc        tp, 705701
                  sra          a2, a4, t4
                  lui          gp, 966157
                  ori          s5, a2, -512
                  slti         t5, a6, 139
                  srl          s3, t4, s10
                  sra          t3, s8, s2
                  xori         a1, tp, -421
                  lui          a0, 132110
                  and          s9, a6, s11
                  sll          s3, ra, s9
                  srli         s0, a6, 26
                  or           s3, sp, sp
                  la x15, test_done
                  jalr x0, x15, 0
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
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x7, x26, zero
                  csrr x27, 0x300 # MSTATUS
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 31
                  bne x27, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x27, 0x341 # MEPC
                  csrr x27, 0x342 # MCAUSE
                  li x19, 0x3 # BREAKPOINT
                  beq x27, x19, ebreak_handler
                  li x19, 0x8 # ECALL_UMODE
                  beq x27, x19, ecall_handler
                  li x19, 0x9 # ECALL_SMODE
                  beq x27, x19, ecall_handler
                  li x19, 0xb # ECALL_MMODE
                  beq x27, x19, ecall_handler
                  li x19, 0x1
                  beq x27, x19, instr_fault_handler
                  li x19, 0x5
                  beq x27, x19, load_fault_handler
                  li x19, 0x7
                  beq x27, x19, store_fault_handler
                  li x19, 0xc
                  beq x27, x19, pt_fault_handler
                  li x19, 0xd
                  beq x27, x19, pt_fault_handler
                  li x19, 0xf
                  beq x27, x19, pt_fault_handler
                  li x19, 0x2 # ILLEGAL_INSTRUCTION
                  beq x27, x19, illegal_instr_handler
                  csrr x19, 0x343 # MTVAL
                  1: la x15, test_done
                  jalr x1, x15, 0

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
                  la x15, write_tohost
                  jalr x0, x15, 0

instr_fault_handler:
                  add x26, x7, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

load_fault_handler:
                  add x26, x7, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

store_fault_handler:
                  add x26, x7, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

ebreak_handler:   
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x26, x7, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

illegal_instr_handler:
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x26, x7, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x27, 0x300 # MSTATUS;
                  csrr  x27, 0x304 # MIE;
                  csrr  x27, 0x344 # MIP;
                  csrrc x27, 0x344, x27 # MIP;
                  add x26, x7, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
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
