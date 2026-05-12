.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x17, h0_start
jalr x0, x17, 0
h0_start:
                  li x4, 0x40000100
                  csrw 0x301, x4
kernel_sp:        
                  la x12, kernel_stack_end

trap_vec_init:    
                  la x4, mtvec_handler
                  ori x4, x4, 1
                  csrw 0x305, x4 # MTVEC

mepc_setup:       
                  la x4, init
                  csrw 0x341, x4

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x4, 0x1800
                  csrw 0x300, x4 # MSTATUS
                  mret
init:             
                  li x0, 0x6
                  li x1, 0x0
                  li x2, 0x80000000
                  li x3, 0x7
                  li x4, 0x0
                  li x5, 0xc
                  li x6, 0xab93168c
                  li x7, 0xb
                  li x8, 0x0
                  li x9, 0x0
                  li x10, 0xfa27ad63
                  li x11, 0x77c51e8e
                  li x13, 0x0
                  li x14, 0x80000000
                  li x15, 0xc38c9f89
                  li x16, 0x4
                  li x17, 0x0
                  li x18, 0x80000000
                  li x20, 0xb3db26f1
                  li x21, 0x0
                  li x22, 0x6
                  li x23, 0xf7f82bdb
                  li x24, 0x2
                  li x25, 0x0
                  li x26, 0x6
                  li x27, 0x8
                  li x28, 0x80000000
                  li x29, 0x0
                  li x30, 0x80000000
                  li x31, 0x5
                  la x19, user_stack_end
main:             li           t4, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           a4, 0x80000000
                  li           t2, 0x0
                  li           t3, 0xffffffff
                  li           s9, 0x0
                  li           s2, 0x80000000
                  li           a1, 0xffffffff
                  li           a0, 0x80000000
                  li           gp, 0xffffffff
                  li           t6, 0x80000000
                  add          gp, a1, t6
                  addi         t3, s2, 272
                  addi         t4, a1, 219
                  add          t3, a0, a0
                  nop
                  addi         s9, t6, 1447
                  sub          gp, s2, s2
                  nop
                  sub          t4, s2, s2
                  lui          t4, 788571
                  lui          s9, 744140
                  nop
                  nop
                  addi         t3, a0, -959
                  auipc        a0, 126691
                  addi         a0, gp, -1222
                  sub          t3, t6, t6
                  addi         a1, t3, -1452
                  sub          t3, t2, a0
                  sub          gp, t4, t2 #end riscv_int_numeric_corner_stream_13
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_16
                  li           ra, 0xffffffff
                  li           t1, 0x66d6fe4a
                  li           s1, 0x80000000
                  li           tp, 0x5cc0a8a1
                  li           s10, 0x80000000
                  li           s2, 0xffffffff
                  li           a6, 0xffffffff
                  li           s5, 0x80000000
                  li           a4, 0x0
                  sub          s10, a4, s8
                  sub          t1, tp, tp
                  add          t1, a4, a4
                  addi         t1, s5, -584
                  nop
                  sub          ra, t1, s10
                  add          ra, a4, a6
                  add          s5, ra, s8
                  auipc        a4, 263959
                  sub          s10, t1, s10
                  lui          tp, 798776
                  sub          s8, a4, tp
                  nop
                  addi         s1, s2, -1667
                  auipc        s1, 489259
                  sub          s10, tp, s1
                  lui          a4, 222656
                  lui          ra, 634583
                  add          a4, s10, a6
                  nop
                  lui          s1, 425253
                  add          s8, s1, s1 #end riscv_int_numeric_corner_stream_16
                  li           t4, 0x437ca0cc #start riscv_int_numeric_corner_stream_6
                  li           s6, 0xffffffff
                  li           t1, 0xffffffff
                  li           s5, 0xc7af20c5
                  li           s9, 0xffffffff
                  li           s1, 0x80000000
                  li           ra, 0x80000000
                  li           s4, 0x80000000
                  li           t0, 0x0
                  li           t2, 0x0
                  nop
                  lui          s4, 687484
                  addi         s5, s5, 8
                  sub          t0, ra, s4
                  sub          s9, t1, t1
                  addi         ra, t4, -593
                  sub          s4, s4, s5
                  sub          s5, t1, s5
                  auipc        t4, 137739
                  add          s9, t1, s6
                  sub          ra, ra, s4
                  nop
                  auipc        t4, 937345
                  nop
                  add          s4, s1, s4
                  lui          t4, 688134 #end riscv_int_numeric_corner_stream_6
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           t3, 0x0
                  li           a3, 0x0
                  li           s8, 0xffffffff
                  li           s9, 0xffffffff
                  li           gp, 0x80000000
                  li           t2, 0xffffffff
                  li           s6, 0xc5677b6d
                  li           s4, 0xffffffff
                  li           a6, 0xe8f92ffc
                  add          t2, s9, s4
                  auipc        t2, 661186
                  auipc        t2, 557679
                  addi         s9, s8, 697
                  auipc        s9, 435363
                  add          t2, s9, t2
                  lui          s4, 306173
                  nop
                  add          a6, t3, s6
                  nop
                  nop
                  auipc        t3, 926620
                  lui          s4, 155609
                  add          a6, s9, a3
                  nop
                  auipc        s6, 544238
                  auipc        a0, 718776
                  add          s9, s9, s6
                  addi         t3, s4, -1651 #end riscv_int_numeric_corner_stream_8
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           a6, 0x0
                  li           s6, 0x48857cc0
                  li           s4, 0x80000000
                  li           t1, 0x817ac7f8
                  li           s1, 0xffffffff
                  li           a1, 0x0
                  li           s9, 0x80000000
                  li           t3, 0x80000000
                  li           t5, 0x0
                  sub          t1, a6, a1
                  lui          t5, 897909
                  auipc        t3, 9840
                  lui          t5, 627462
                  addi         t5, t5, -1053
                  sub          t1, t5, s6
                  lui          t3, 170995
                  auipc        s1, 730651
                  add          s6, t1, a1
                  lui          sp, 174028
                  addi         a6, t1, -1551
                  sub          sp, a1, t1
                  add          sp, t3, a1
                  lui          a6, 664784
                  add          t5, s9, s6
                  sub          a1, t1, s6
                  auipc        t3, 680501
                  nop
                  addi         s9, t1, -1572
                  sub          t5, s4, s1
                  auipc        sp, 383534
                  auipc        t5, 617324 #end riscv_int_numeric_corner_stream_15
                  li           a0, 0x37da62e1 #start riscv_int_numeric_corner_stream_11
                  li           a5, 0x80000000
                  li           s4, 0x8dcc12c4
                  li           a4, 0x958141c
                  li           s11, 0x80000000
                  li           s1, 0x0
                  li           s0, 0x1139651
                  li           t6, 0x0
                  li           a1, 0x80000000
                  li           t2, 0x80000000
                  addi         a5, a4, -110
                  addi         t2, a4, -609
                  nop
                  lui          a0, 436278
                  nop
                  nop
                  nop
                  sub          s0, s0, s11
                  nop
                  addi         a4, s0, 1626
                  auipc        t6, 581777
                  lui          a5, 515514
                  auipc        t2, 727375
                  add          a4, a1, a4
                  lui          a1, 1014964
                  nop
                  nop #end riscv_int_numeric_corner_stream_11
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           s4, 0x51ef1e37
                  li           a0, 0xffffffff
                  li           t0, 0xffffffff
                  li           t4, 0x80000000
                  li           ra, 0xa2704879
                  li           s7, 0x1691730f
                  li           s2, 0x80000000
                  li           t5, 0xffffffff
                  li           a6, 0x62559c5f
                  addi         s8, s2, 970
                  addi         s7, a6, -771
                  auipc        t4, 664824
                  addi         s4, t4, 1305
                  addi         s7, s8, -787
                  nop
                  nop
                  nop
                  sub          s2, s4, t0
                  lui          a0, 900691
                  add          s8, a0, a0
                  addi         a6, s7, -996
                  lui          s8, 117880
                  lui          s4, 683630
                  lui          a6, 506659
                  lui          a6, 406688
                  addi         a0, s4, 1380
                  addi         ra, ra, -293
                  auipc        a6, 771953
                  add          s7, t5, t0
                  add          s8, t5, s2
                  nop
                  add          s4, s4, s4
                  nop
                  lui          ra, 294779
                  nop
                  lui          s8, 283242
                  auipc        s7, 430113
                  addi         s8, s2, -65
                  addi         t0, a6, -72 #end riscv_int_numeric_corner_stream_17
                  li           a5, 0x71cd6eba #start riscv_int_numeric_corner_stream_3
                  li           a6, 0x0
                  li           t5, 0x0
                  li           t4, 0x80000000
                  li           t3, 0xffffffff
                  li           a0, 0xffffffff
                  li           a4, 0xffffffff
                  li           t0, 0x0
                  li           s2, 0x95b3868b
                  li           t2, 0xdad0e348
                  auipc        t5, 139195
                  sub          t4, a6, a5
                  lui          t2, 384492
                  nop
                  add          a5, t3, t0
                  addi         t5, a4, -135
                  lui          a4, 936396
                  lui          t2, 718874
                  lui          t2, 783503
                  sub          t5, a6, a5
                  addi         a4, t3, 1060
                  lui          t0, 619570
                  nop
                  lui          t5, 959794
                  add          t4, t3, t0
                  nop
                  nop
                  lui          t2, 1030913
                  nop
                  nop
                  lui          a5, 76169
                  add          s2, a6, a0
                  auipc        a5, 864914
                  lui          t4, 644171
                  nop
                  addi         a5, a4, -725 #end riscv_int_numeric_corner_stream_3
                  li           tp, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           t2, 0x80000000
                  li           s1, 0x0
                  li           s10, 0xffffffff
                  li           sp, 0xffffffff
                  li           a6, 0xcd92e178
                  li           a4, 0xffffffff
                  li           t6, 0x80000000
                  li           s11, 0x0
                  li           t5, 0x0
                  auipc        sp, 194444
                  lui          t2, 743516
                  add          s10, a6, t5
                  lui          sp, 813310
                  auipc        t6, 473425
                  sub          a6, tp, t5
                  add          s11, tp, s1
                  addi         s10, t5, -1232
                  auipc        t5, 504043
                  nop
                  addi         s10, a6, -1076
                  sub          s10, a4, tp
                  add          t6, s11, a4
                  auipc        s1, 612334
                  add          s11, t6, s1
                  addi         t2, t2, 540
                  sub          a6, a4, sp
                  nop
                  lui          t6, 595226
                  nop
                  sub          s1, t5, t2
                  auipc        s11, 392127 #end riscv_int_numeric_corner_stream_7
                  addi         s1, s3, -2012
                  slt          a4, s9, s3
                  andi         t2, a5, 48
                  or           t0, a5, a0
                  slli         sp, a2, 31
                  srai         t1, s3, 25
                  srai         sp, s7, 17
                  and          a0, s2, s7
                  auipc        s7, 629703
                  slli         s4, t5, 10
                  auipc        s11, 488358
                  srli         t3, s5, 18
                  lui          gp, 769975
                  addi         s4, s5, -283
                  add          tp, a7, gp
                  slt          s10, t5, a2
                  srli         a5, s6, 29
                  sub          s10, t3, s10
                  add          s8, s5, tp
                  slli         t6, s10, 26
                  sra          a5, a7, gp
                  nop
                  slti         a5, a5, -571
                  srli         a3, s5, 11
                  sltu         s0, a1, t1
                  andi         s7, ra, -1145
                  add          sp, s9, s7
                  srai         t1, tp, 29
                  xori         t0, s0, -1044
                  xori         a4, t2, -1089
                  sltiu        tp, a1, 1878
                  nop
                  and          a1, s9, t1
                  xori         s8, t6, -650
                  or           t1, sp, s9
                  sltiu        t2, a3, 121
                  xor          a0, s5, zero
                  nop
                  auipc        s7, 384214
                  ori          sp, a1, -1343
                  sra          a1, s4, s7
                  sltiu        s6, gp, 181
                  xori         s2, s10, -1155
                  addi         s5, t5, -2012
                  ori          a4, t0, 41
                  xor          tp, s4, t2
                  ori          s8, a0, 1682
                  xori         a0, s3, 809
                  xori         s9, s6, 67
                  nop
                  sltiu        zero, tp, 1999
                  sltu         s4, t2, a3
                  auipc        ra, 1032463
                  ori          s4, t1, 974
                  slti         t1, s8, 5
                  srl          t0, s8, a5
                  and          s4, ra, sp
                  nop
                  and          s4, t1, s4
                  xor          s9, s9, s2
                  slli         t5, a3, 19
                  slt          t4, a0, s2
                  sra          a5, s1, a0
                  slti         a6, t3, -430
                  lui          s5, 128489
                  addi         t6, s0, 1495
                  and          s5, s2, a1
                  srl          ra, a6, s4
                  or           t4, s2, t1
                  xori         t3, s11, -1715
                  srli         t6, zero, 2
                  srli         tp, sp, 14
                  sra          gp, s7, a2
                  auipc        tp, 144134
                  ori          a4, s2, -536
                  sra          s5, t5, a3
                  and          s10, t3, t2
                  ori          a4, s0, -987
                  lui          zero, 415133
                  sll          t5, tp, s2
                  sub          s6, s6, t1
                  sltu         s2, s1, a6
                  nop
                  slli         s4, t0, 7
                  srli         a4, a2, 15
                  srai         t4, t6, 20
                  xori         s6, t5, -635
                  srl          s4, a4, s7
                  andi         s8, a3, -1670
                  addi         sp, t5, -1086
                  srli         s7, a0, 26
                  xori         tp, s3, 1567
                  srl          s8, s1, s5
                  srli         a3, a1, 19
                  srli         s6, a5, 12
                  nop
                  sltiu        t5, s1, 1835
                  nop
                  srai         s7, tp, 24
                  sub          a5, s7, t0
                  srl          s7, gp, s11
                  slli         a3, t0, 5
                  nop
                  auipc        a5, 369621
                  srli         s2, s9, 8
                  xori         s1, gp, -73
                  lui          t3, 12296
                  addi         t6, s6, 1882
                  add          a4, s1, s3
                  srl          a1, a2, s0
                  slli         s1, t1, 24
                  ori          t4, t5, 64
                  sra          s4, s6, a0
                  xori         t6, zero, 1990
                  ori          t2, t5, 105
                  sltu         t0, a7, a1
                  ori          t3, t3, 917
                  or           t5, a2, sp
                  sra          s4, s7, t0
                  andi         a6, a0, -49
                  sra          a3, t4, t0
                  sra          t6, s4, a3
                  andi         s7, s4, -647
                  lui          a6, 314388
                  and          s0, t1, sp
                  xor          s5, a3, t0
                  xor          a5, a5, s11
                  addi         sp, s11, -892
                  xor          t3, t2, t1
                  sra          s0, t5, t2
                  slti         s6, a0, -1044
                  li           t3, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           s8, 0xffffffff
                  li           a5, 0x0
                  li           s4, 0xffffffff
                  li           s9, 0xffffffff
                  li           gp, 0x3f674ca0
                  li           s1, 0x0
                  li           s5, 0x0
                  li           a4, 0x80000000
                  li           t4, 0x50bb8705
                  addi         s4, s8, 359
                  nop
                  auipc        a4, 548533
                  nop
                  add          t3, t3, a5
                  auipc        t3, 859034
                  auipc        s4, 747786
                  lui          t3, 462277
                  sub          s1, a4, s1
                  nop
                  auipc        s4, 216792
                  addi         gp, s5, 6
                  lui          s4, 473919
                  addi         s5, t4, -1248
                  addi         a5, s9, -1005 #end riscv_int_numeric_corner_stream_1
                  ori          s2, sp, 481
                  add          a4, a7, t4
                  or           s4, t3, s6
                  sub          a5, gp, s11
                  lui          t2, 685061
                  nop
                  addi         ra, a3, 1963
                  sltiu        s2, gp, 266
                  add          t4, a3, a5
                  sltiu        a4, a0, -1025
                  slt          t0, t0, s0
                  add          t0, s0, gp
                  and          s7, a1, a2
                  nop
                  ori          a3, s5, -351
                  sub          a6, t0, s10
                  and          s10, ra, a4
                  srli         ra, a1, 23
                  andi         s6, s1, 663
                  auipc        s9, 713871
                  ori          a0, t1, 781
                  addi         s6, t2, -368
                  slti         s10, t1, -1889
                  xor          sp, t0, s0
                  sll          s9, s5, t1
                  andi         s10, zero, 1671
                  lui          s9, 616776
                  auipc        s8, 907101
                  auipc        a5, 750816
                  sub          a3, s6, s9
                  sra          a4, sp, t3
                  ori          a0, t1, -158
                  srli         s9, a6, 29
                  sra          t6, s7, s4
                  addi         s10, s5, 601
                  srai         a3, gp, 15
                  xor          ra, t2, gp
                  lui          t5, 261354
                  srli         t0, s5, 19
                  or           s7, s2, a1
                  slt          s0, t0, s9
                  slti         a1, a1, -1079
                  sll          s1, tp, t4
                  auipc        s4, 223033
                  slli         s6, t4, 0
                  sra          s7, s2, s11
                  or           s8, s7, a6
                  nop
                  li           t3, 0x7c1c6ab2 #start riscv_int_numeric_corner_stream_19
                  li           gp, 0x80000000
                  li           a1, 0x0
                  li           s7, 0x0
                  li           t4, 0x0
                  li           a6, 0x0
                  li           s9, 0x80000000
                  li           a5, 0x0
                  li           ra, 0x80000000
                  li           s8, 0x80000000
                  lui          s7, 407672
                  lui          a1, 264617
                  nop
                  nop
                  add          ra, s9, s9
                  lui          a1, 854083
                  lui          t4, 658697
                  nop
                  lui          s9, 859286
                  nop
                  lui          a6, 743493
                  nop
                  auipc        s7, 1606
                  lui          a1, 55473
                  nop
                  nop
                  addi         t3, t3, 1131
                  add          gp, ra, gp
                  addi         t3, t4, -1946
                  nop #end riscv_int_numeric_corner_stream_19
                  andi         ra, s7, -1909
                  sra          s10, s1, sp
                  auipc        a1, 645672
                  sub          s7, a2, ra
                  xor          zero, s10, a7
                  addi         s6, a6, -553
                  xor          sp, s3, t5
                  addi         zero, sp, -1384
                  or           s4, s4, s6
                  sra          t1, s3, a6
                  sltiu        a0, t4, -625
                  ori          t1, s7, 3
                  srai         a1, t5, 27
                  addi         t2, t1, 1570
                  nop
                  add          t1, t5, s7
                  xori         a4, s5, -1216
                  sltu         t5, a4, s10
                  nop
                  add          sp, t3, a2
                  sltu         t2, ra, a7
                  sltiu        s0, t1, -417
                  sltiu        s5, s9, -323
                  ori          s7, t0, -166
                  xori         s7, a3, -222
                  andi         a1, s11, -1594
                  slti         a3, s6, -1740
                  sub          t2, t6, s4
                  srl          t3, s5, t2
                  slli         s9, t1, 7
                  srl          ra, t6, s2
                  srli         a3, ra, 22
                  add          s0, s6, t1
                  sra          t1, sp, s11
                  srai         gp, a5, 1
                  xor          s10, a4, t5
                  or           s4, s1, a1
                  and          a6, a0, a3
                  srl          a3, t1, s5
                  andi         s5, t5, 819
                  sra          s0, ra, ra
                  slli         sp, s0, 0
                  addi         s7, zero, 1441
                  srai         a4, s7, 31
                  add          s10, t6, t3
                  andi         s2, t2, 388
                  xori         s9, s0, 1654
                  or           s4, a0, tp
                  srl          a4, a0, s10
                  srli         t1, s10, 21
                  srl          s1, s0, t2
                  sll          s11, t3, t5
                  sra          s9, t6, tp
                  slti         t3, t6, 1778
                  sltu         a5, zero, s9
                  srai         sp, s1, 20
                  xor          ra, sp, s9
                  sub          sp, s6, a2
                  srl          a1, s11, s11
                  sub          a0, s5, s9
                  sra          gp, s6, t0
                  slti         s5, t1, 1810
                  slli         s1, s7, 14
                  srai         a4, t6, 19
                  add          ra, s8, a7
                  xor          a3, s5, s10
                  xor          s7, a6, t2
                  slli         t5, gp, 25
                  slti         t1, t1, 1304
                  sltu         tp, sp, s2
                  sltu         t1, t0, s10
                  and          a5, s8, zero
                  srli         s4, s7, 18
                  sra          t6, a1, t1
                  slti         t0, a5, 261
                  addi         ra, s6, 891
                  sll          a3, s8, t3
                  xori         s4, a1, -1161
                  sltu         t6, tp, s2
                  andi         s0, s8, -49
                  and          a4, s7, a1
                  addi         t6, tp, -1440
                  add          ra, t5, ra
                  srl          s5, a2, s11
                  slt          zero, s0, t0
                  sub          a5, s6, t5
                  ori          a6, s0, 954
                  sub          s6, a4, t3
                  nop
                  sll          s7, s1, a3
                  sra          s7, s8, t4
                  xori         t0, s8, -2010
                  slli         s11, t0, 15
                  add          a0, s11, s11
                  ori          gp, t2, -1051
                  sra          a3, t4, t0
                  xor          s4, a1, s9
                  lui          t0, 808548
                  slti         a6, t1, 824
                  sltu         s6, s4, s0
                  slt          t5, s6, s5
                  slli         s10, t5, 17
                  slti         t4, s8, -407
                  srl          a6, a2, s0
                  srli         s11, sp, 3
                  srai         s2, tp, 21
                  sltu         tp, gp, s5
                  sub          gp, tp, s3
                  or           t2, a3, s1
                  and          sp, s9, a0
                  nop
                  and          s7, a1, a3
                  xori         a3, a2, -1862
                  or           s2, a6, t0
                  andi         s7, s11, 159
                  and          t4, s9, s9
                  sra          a1, s8, tp
                  auipc        a0, 444192
                  andi         a4, s4, -1278
                  addi         t2, sp, -377
                  sra          a5, a3, s11
                  slti         t3, ra, -424
                  sltiu        ra, t6, -1122
                  sll          s8, t5, a5
                  or           t6, a0, a0
                  sra          a1, t4, s9
                  sra          s8, a6, s10
                  sltu         sp, a2, t5
                  andi         tp, t6, 1566
                  slt          a3, s5, sp
                  slti         s0, s8, -480
                  and          s8, s7, t5
                  or           ra, s9, s10
                  sll          s1, a4, a3
                  xori         a4, s10, -724
                  slt          t6, t1, gp
                  slli         s0, s6, 31
                  xor          t1, a2, t5
                  slti         gp, zero, -688
                  and          a1, a1, a5
                  srli         t4, s0, 13
                  xori         s4, s2, -177
                  lui          a0, 499532
                  sll          s11, a7, s0
                  or           s8, a7, s7
                  xor          a6, a2, sp
                  sra          t2, s5, s7
                  sltiu        a4, s5, 1436
                  nop
                  xor          a5, s6, s0
                  add          a6, a3, t6
                  lui          s9, 18737
                  ori          s6, s10, 1880
                  srl          s11, a1, a7
                  sltiu        s5, tp, -994
                  sltiu        s4, t4, 1846
                  or           a5, s6, s4
                  sub          a6, gp, a6
                  sll          s10, s1, a7
                  slt          s10, a6, a1
                  xor          s6, t2, s11
                  auipc        t3, 812035
                  srli         tp, s3, 27
                  addi         t2, s8, 1269
                  and          ra, s11, s8
                  xori         a6, s6, 1837
                  sll          t2, s4, a2
                  auipc        t6, 936411
                  srl          s1, t0, s4
                  andi         gp, a6, -1695
                  add          t1, a7, s11
                  add          t6, s5, gp
                  slti         tp, s9, -1342
                  sll          s9, t4, a5
                  nop
                  ori          a0, t6, 112
                  and          s1, s5, t3
                  lui          s6, 198579
                  or           a3, a7, s9
                  xor          s9, s5, t6
                  srl          s0, a5, gp
                  xor          t1, s0, s9
                  or           t1, t3, sp
                  xori         t3, s8, 1733
                  ori          t1, s1, -820
                  and          t2, a7, a7
                  add          s4, s7, s10
                  and          t2, t4, a7
                  sltiu        gp, s7, -1682
                  add          a6, ra, s7
                  srl          ra, sp, t2
                  slti         s9, t6, 1515
                  lui          t2, 173113
                  slti         t3, s5, 228
                  slti         t6, t0, -826
                  ori          a0, s2, -631
                  srai         s8, s4, 2
                  srli         tp, s11, 30
                  lui          a0, 33489
                  addi         s2, t1, -456
                  nop
                  add          s5, t3, t2
                  slt          s9, gp, a7
                  sra          s1, t1, sp
                  and          s7, ra, ra
                  slti         s5, t6, 1741
                  xor          s11, a6, s9
                  srl          s10, s3, ra
                  sub          s0, s11, t5
                  sra          a0, s0, t5
                  lui          gp, 641252
                  srl          ra, t6, t5
                  sltu         s4, tp, a2
                  add          gp, t1, sp
                  and          t1, t6, s7
                  add          s5, s8, t2
                  srl          a4, s5, sp
                  slli         ra, s5, 14
                  add          t1, a2, s8
                  nop
                  sltu         t0, t1, ra
                  srli         s9, ra, 14
                  or           a6, s3, s7
                  xori         s9, t1, -1168
                  sll          s8, sp, sp
                  slti         t5, a0, -641
                  sll          a0, t5, s11
                  srai         t5, t6, 15
                  add          t2, a7, s9
                  sra          t0, t3, t3
                  lui          sp, 297495
                  slt          s1, s1, a7
                  slti         sp, s8, 533
                  add          t2, s9, s4
                  addi         t2, s3, -807
                  xori         s0, a2, -1338
                  auipc        t2, 707201
                  and          s9, t5, s1
                  nop
                  srl          t2, t6, s0
                  sub          zero, zero, t5
                  srli         zero, s3, 28
                  sll          a5, a3, gp
                  slli         s11, s10, 0
                  and          s11, a1, t4
                  slt          a6, s3, s8
                  nop
                  sra          a1, s2, a0
                  sltu         s11, a3, s9
                  sll          s2, gp, s11
                  slti         ra, gp, 1305
                  sub          s2, t0, s0
                  slli         s5, a6, 2
                  srai         s2, a2, 20
                  sll          s8, t1, a6
                  auipc        a4, 235725
                  srli         t0, t0, 27
                  sltiu        ra, a5, 1884
                  lui          a4, 999584
                  srl          ra, s8, s2
                  sll          t3, s7, a4
                  sltiu        s4, s0, -2000
                  auipc        s10, 453703
                  auipc        zero, 959888
                  add          t1, ra, a7
                  ori          a1, s2, 1956
                  xori         s1, sp, -1977
                  srl          a6, a3, a3
                  addi         zero, t1, 2029
                  srli         s2, t0, 4
                  andi         gp, s5, 1607
                  auipc        sp, 659935
                  slt          s5, a0, s4
                  srli         t1, a5, 15
                  sub          sp, s11, s10
                  slt          s10, s2, s5
                  andi         s5, s5, 1991
                  slli         t2, s6, 26
                  slli         s11, s3, 7
                  addi         a5, s6, 1914
                  add          t6, s11, t4
                  sra          s7, s8, s6
                  srai         t4, s1, 27
                  sltiu        s5, gp, 559
                  slli         t3, s10, 6
                  ori          tp, t1, 1468
                  and          a5, gp, s10
                  lui          t0, 795432
                  xor          s0, s7, s8
                  srli         s8, t0, 7
                  nop
                  sltu         s4, a4, t1
                  ori          t6, t0, -589
                  xor          a3, a3, s8
                  addi         s10, ra, 24
                  sltiu        s0, t0, -2014
                  add          gp, t0, t6
                  xor          a4, s6, s10
                  add          s2, sp, a7
                  auipc        a5, 27102
                  sub          zero, a6, s10
                  sub          s11, a3, s1
                  add          gp, zero, a4
                  slli         zero, tp, 16
                  sll          tp, s0, t3
                  add          s7, s10, ra
                  srl          s1, s3, s10
                  slt          a4, gp, s5
                  sltiu        t3, t2, -210
                  sltiu        s4, s3, -1076
                  xor          a5, a1, sp
                  slt          ra, s8, t5
                  auipc        t6, 210651
                  andi         t3, a3, 1899
                  srl          t0, t4, gp
                  sub          t2, s9, s4
                  xor          t1, s5, s10
                  nop
                  slti         s7, t1, 154
                  sll          a3, a1, zero
                  and          s1, a7, sp
                  ori          s0, t2, -1469
                  sltu         s8, gp, s2
                  sltu         gp, t3, gp
                  lui          s0, 135644
                  or           t3, sp, t4
                  srli         s1, a4, 7
                  srl          t6, gp, a7
                  lui          s4, 706355
                  xor          a1, zero, t5
                  sll          s9, s11, s5
                  nop
                  auipc        tp, 127469
                  sll          t3, s1, a5
                  andi         s0, s5, 1313
                  sra          t3, s5, t3
                  addi         ra, s2, 655
                  xor          s6, a3, s8
                  sltu         sp, a4, s10
                  and          t5, s5, s3
                  lui          a5, 699149
                  srl          s6, t1, a7
                  srai         a4, zero, 1
                  or           a4, t4, a4
                  sra          s7, t0, s10
                  srai         a3, t3, 21
                  sll          s5, ra, s4
                  auipc        s1, 686031
                  nop
                  sltiu        gp, s11, -253
                  srl          sp, s3, s3
                  slli         zero, t2, 24
                  sll          gp, a2, zero
                  srai         a4, t4, 9
                  addi         sp, s4, 336
                  nop
                  xori         a4, sp, 1185
                  sub          t0, a3, ra
                  addi         tp, s4, 1533
                  xor          a6, s11, a1
                  sra          zero, a6, a3
                  sra          a1, s9, s9
                  nop
                  slti         t0, a1, 2015
                  addi         t5, a0, 58
                  slti         s1, t1, 1999
                  auipc        ra, 487154
                  sub          t1, s5, t0
                  nop
                  slli         t4, s3, 27
                  auipc        a6, 451736
                  auipc        ra, 97367
                  slti         s1, s4, 320
                  sra          s9, a3, t6
                  slli         gp, s1, 24
                  srl          tp, a1, s11
                  nop
                  slti         ra, t2, -516
                  ori          s9, a2, -1016
                  xor          tp, s1, s7
                  ori          s11, s2, 1070
                  sll          a4, a5, t6
                  sub          t0, tp, t5
                  lui          t0, 747151
                  srl          a5, t3, t3
                  auipc        s5, 74132
                  srli         t2, a2, 22
                  sll          s5, zero, zero
                  xor          s4, sp, t3
                  nop
                  andi         a1, t0, 209
                  andi         zero, s0, -154
                  slt          a5, a5, s9
                  xor          sp, s11, a2
                  addi         s11, s11, 1941
                  srl          ra, s6, s6
                  sltiu        a1, s3, -2000
                  sltu         t3, t6, gp
                  srli         s9, t4, 28
                  addi         t0, gp, 24
                  auipc        s5, 946615
                  xor          s8, a4, s10
                  add          s8, a2, t5
                  slt          a4, a6, sp
                  srl          s7, s9, t1
                  nop
                  slt          a4, t1, tp
                  srl          gp, s0, s10
                  ori          zero, a2, 1222
                  sltu         a0, a0, s5
                  slti         t0, t0, 268
                  ori          t3, t2, 933
                  sra          s6, s7, ra
                  sltiu        t3, s4, -755
                  sltu         s4, a7, s7
                  sltu         s4, s0, s4
                  sll          t5, s8, s1
                  sll          t2, gp, s11
                  xor          gp, t2, tp
                  srli         s2, s1, 25
                  xori         ra, t2, -1873
                  srai         t5, s9, 28
                  slli         s2, t1, 0
                  add          sp, t6, ra
                  ori          s5, s0, 1314
                  slli         t2, s8, 20
                  slt          s5, s4, s10
                  sll          gp, s2, s10
                  nop
                  ori          s5, ra, -934
                  andi         s4, zero, -904
                  andi         s2, gp, -1998
                  slli         s8, a7, 24
                  ori          s6, a6, -1644
                  ori          ra, t4, 1649
                  sra          a0, t3, s5
                  add          sp, a2, s5
                  add          ra, s5, s1
                  xor          a6, t4, a0
                  sll          a5, a4, a4
                  slli         s9, sp, 25
                  nop
                  lui          s5, 285666
                  lui          t1, 666731
                  or           s11, a3, t2
                  slli         s6, a7, 16
                  slti         a1, s6, 1250
                  or           a4, t0, s6
                  srli         t1, s7, 30
                  addi         sp, s10, -1989
                  slti         a1, s2, 1362
                  sub          a3, s7, a0
                  ori          gp, s5, 746
                  slli         zero, s0, 28
                  xor          s11, t2, t3
                  addi         t5, a6, -1475
                  or           a5, a3, a6
                  slli         s6, s11, 24
                  and          t2, s1, a3
                  slt          s10, gp, a2
                  sra          s1, s0, s3
                  srl          zero, s6, t6
                  sub          gp, a2, s7
                  srli         t4, s3, 9
                  sra          gp, t3, t6
                  addi         s11, s2, 773
                  or           s10, t6, s11
                  sub          t6, s11, t6
                  add          t0, a7, t4
                  or           s0, t0, t4
                  lui          t1, 485419
                  auipc        a1, 181331
                  sll          a4, tp, t6
                  srai         s10, s5, 8
                  sltu         t1, a3, zero
                  sltu         t0, a6, t3
                  or           s9, s1, s11
                  srl          t5, tp, t1
                  sub          t0, t5, a0
                  srai         t1, a2, 10
                  sltu         t4, s3, s10
                  slli         tp, t2, 28
                  xori         s2, s1, 656
                  sltu         t0, t6, s11
                  srli         a3, t6, 25
                  sltiu        s2, t5, -997
                  slli         a5, a4, 23
                  srai         s5, a4, 14
                  srai         zero, a2, 2
                  xori         t2, s11, -1557
                  addi         gp, a1, -886
                  xor          a5, sp, a6
                  srai         s1, t4, 20
                  sltu         a3, s0, s9
                  xor          s1, t0, zero
                  or           s4, a3, tp
                  slt          sp, ra, a0
                  andi         zero, sp, 1580
                  sltiu        s1, a2, 1322
                  srai         tp, s10, 22
                  srli         a1, a1, 11
                  slti         s1, tp, -1443
                  slti         s5, s2, -1222
                  srai         a4, a7, 0
                  nop
                  sub          t0, s11, s6
                  ori          t5, t3, 433
                  sltu         a0, s8, gp
                  lui          s11, 25473
                  sra          a3, t4, s11
                  addi         s6, ra, -1911
                  slt          s9, sp, a0
                  lui          a1, 793601
                  auipc        s8, 885689
                  xor          t5, zero, t3
                  xori         s1, s11, 916
                  sll          s8, s11, s3
                  slli         s9, ra, 10
                  or           s7, t5, s9
                  lui          s2, 702853
                  or           s0, a2, s10
                  addi         a3, t5, 1447
                  srli         s4, s4, 21
                  and          t4, t2, s3
                  srl          a1, sp, s10
                  sltu         s5, s3, t2
                  lui          s9, 682750
                  sll          s7, s6, ra
                  xor          s11, s11, a4
                  addi         sp, t4, 1692
                  sltiu        ra, s7, -1991
                  add          s8, ra, t5
                  or           t4, s10, zero
                  slti         s4, s9, 1710
                  add          s0, s1, a7
                  and          ra, sp, a5
                  add          a0, t4, ra
                  addi         a3, a0, 465
                  andi         tp, a6, 907
                  xori         t1, t2, -1243
                  or           zero, s11, a5
                  srl          t3, s4, s3
                  or           tp, a2, t0
                  sll          a1, tp, t0
                  slt          tp, s4, s11
                  xori         s6, a7, 610
                  slti         t3, s5, -1406
                  andi         s9, s4, 1032
                  sra          gp, a1, zero
                  srai         t1, t2, 27
                  sra          s1, s11, s5
                  slli         t6, a6, 3
                  add          a4, s8, s3
                  addi         t1, ra, -1908
                  add          s2, a2, t1
                  sltu         ra, tp, t1
                  auipc        t0, 978697
                  xori         s4, s11, 810
                  nop
                  or           s5, s5, a2
                  or           gp, s8, s11
                  slt          t3, tp, a0
                  sltu         zero, a7, zero
                  andi         a6, s6, 452
                  and          s7, a3, s10
                  srli         s8, t0, 21
                  sra          s1, a1, s0
                  and          gp, s2, a5
                  sra          a4, a4, s1
                  sltiu        t6, s9, -433
                  sltu         a6, s8, s4
                  add          a5, s6, s11
                  auipc        s0, 909656
                  slt          s4, t6, a4
                  xori         t5, s8, -1757
                  sltu         s9, s3, tp
                  slti         s9, s9, 39
                  xor          gp, a1, s8
                  srli         t6, s1, 7
                  slti         s9, zero, -905
                  sub          sp, s6, s5
                  srai         s1, t3, 10
                  andi         s1, t1, 1704
                  slti         t5, s8, -763
                  auipc        s10, 291458
                  xor          t5, t2, s0
                  slli         a5, t3, 0
                  sra          s9, gp, a1
                  slti         a4, t2, 868
                  ori          a3, zero, -1516
                  andi         ra, gp, 1170
                  slti         s5, gp, -1211
                  sltu         t5, s11, s6
                  or           a0, ra, a4
                  sltiu        t4, s2, -565
                  srai         tp, tp, 12
                  slli         t6, s8, 31
                  sub          s2, a5, t1
                  slt          sp, a2, s11
                  ori          t5, s3, 1452
                  add          s10, a3, s6
                  xori         s2, s10, -833
                  or           t0, t3, a0
                  auipc        s7, 132470
                  sll          s2, tp, s4
                  srl          s10, a4, t4
                  slt          t2, s8, s6
                  srli         a6, t3, 2
                  sra          tp, t1, zero
                  sub          s2, t1, s11
                  add          t6, s0, s10
                  or           a1, a0, t6
                  slt          gp, s5, a0
                  sltu         a4, s3, a6
                  nop
                  add          s2, a0, t2
                  or           s1, s3, s9
                  auipc        s6, 146655
                  auipc        s2, 645316
                  slti         tp, s3, -983
                  lui          a4, 900815
                  slt          t5, s9, s2
                  lui          t4, 1000057
                  ori          sp, sp, -852
                  srli         t0, t5, 9
                  and          s4, s10, s4
                  sub          t2, s9, a1
                  sra          s8, gp, t2
                  add          s0, s2, t3
                  sltiu        tp, s1, 539
                  sra          s11, s5, s0
                  srl          t2, ra, s1
                  slli         zero, t3, 0
                  sub          zero, s7, t3
                  nop
                  lui          a1, 632870
                  sra          s8, a4, s0
                  add          s6, s8, s4
                  ori          tp, a6, -1397
                  srai         s2, s10, 31
                  sltu         t0, s8, s4
                  auipc        s10, 325861
                  andi         t1, zero, 1169
                  srai         s11, s0, 20
                  sub          t5, zero, gp
                  slt          gp, t2, s4
                  sub          a4, sp, s3
                  auipc        a3, 260432
                  slti         s10, t6, -1817
                  or           a4, s5, t6
                  add          tp, t3, a2
                  sra          tp, t3, t5
                  slti         s11, a2, 277
                  slli         t6, s4, 1
                  xor          s10, s10, s4
                  sll          a4, a5, t1
                  sltu         t2, t3, s5
                  slli         a0, s3, 23
                  slti         a3, s3, -1225
                  sub          zero, t5, t5
                  sltiu        s5, s5, -1782
                  xor          t2, s9, s7
                  sra          s10, tp, a2
                  srl          t0, s6, a4
                  addi         t4, s5, 962
                  sll          t1, a6, a1
                  sltu         t4, s10, s6
                  xori         a4, sp, 343
                  slt          t3, a4, s6
                  xor          a4, s7, a0
                  xor          a1, s2, s2
                  or           t0, s1, s10
                  sll          s2, a7, t2
                  ori          t6, t1, -1222
                  sltiu        t3, a1, 2025
                  or           s8, ra, s6
                  sltiu        t0, t3, -1496
                  sltu         a0, t1, s2
                  srl          ra, s0, ra
                  sub          s7, ra, zero
                  nop
                  sra          zero, a1, a4
                  srai         t2, a5, 27
                  xor          t0, s8, a1
                  sra          a3, s6, s7
                  ori          t3, a6, 1019
                  addi         gp, t4, -1441
                  addi         ra, s11, 1088
                  xori         s10, zero, 1847
                  slt          s11, a7, a6
                  addi         s8, t0, 155
                  sltu         t1, a7, a5
                  sltu         s2, s8, a3
                  andi         t1, s0, -1617
                  srai         tp, t5, 30
                  nop
                  sub          s9, t0, s5
                  sra          ra, ra, s0
                  slt          s5, t6, a7
                  sltiu        s4, t0, 1778
                  nop
                  sra          s5, s6, s9
                  lui          a3, 135461
                  auipc        s0, 96552
                  srl          s6, gp, t5
                  andi         t1, sp, -1961
                  srli         a5, zero, 18
                  and          s9, s7, t3
                  lui          a1, 898590
                  sll          s6, s8, s0
                  xori         gp, s9, -1356
                  srl          a4, t5, s11
                  lui          s8, 487231
                  srl          t3, t2, tp
                  slt          s0, s9, t2
                  sltiu        a5, a4, -314
                  or           s4, gp, s11
                  xor          s8, gp, a7
                  add          t4, zero, a0
                  auipc        s11, 296197
                  addi         a5, s9, 923
                  sltu         tp, a5, gp
                  xor          s7, a0, s10
                  sub          a3, zero, t2
                  andi         a3, s7, 154
                  xor          t6, s11, t4
                  xor          a0, t5, s1
                  slli         t5, t0, 6
                  slli         s10, a5, 18
                  sltu         s9, s3, s7
                  slli         s2, t2, 25
                  auipc        zero, 231033
                  addi         s2, t5, 1114
                  add          a5, sp, t0
                  slti         t6, s9, 1513
                  slt          gp, t0, t3
                  xor          s6, a7, s4
                  sll          a1, s1, t6
                  andi         gp, s4, -1194
                  srai         t0, s11, 3
                  slt          ra, s10, t4
                  slti         a3, s6, -2017
                  andi         s1, t3, -1405
                  sub          s9, t5, t3
                  andi         t0, a2, -50
                  sra          ra, s1, zero
                  slt          s0, a1, a2
                  sll          ra, s2, s9
                  slli         t5, sp, 23
                  sltiu        t0, a7, 2019
                  and          a6, a2, s8
                  andi         a3, a5, -261
                  xor          zero, s2, t5
                  lui          s7, 399241
                  sltu         t0, s6, s10
                  lui          a4, 175080
                  ori          sp, s10, -411
                  ori          s6, a2, 785
                  sub          s10, a1, t6
                  slli         t5, gp, 18
                  sltiu        s11, a6, 358
                  srai         t6, t4, 28
                  slti         s8, s4, 1849
                  sub          t3, zero, tp
                  or           t1, t3, s2
                  lui          s9, 289427
                  add          s0, a4, a3
                  auipc        zero, 829945
                  ori          s5, ra, -1526
                  sub          s6, s10, s10
                  sltiu        t3, s6, -537
                  lui          tp, 609586
                  sltu         t5, s8, s5
                  sub          zero, a7, s3
                  sub          a1, t5, gp
                  auipc        t5, 484811
                  srai         t4, a4, 10
                  slt          sp, tp, a7
                  and          a4, gp, s6
                  slti         s5, t0, -1198
                  sltiu        a1, s4, 1540
                  xor          a0, ra, a2
                  srl          a3, zero, s10
                  nop
                  xori         s7, t4, -1348
                  xori         s11, t6, -176
                  slti         t3, s1, 762
                  ori          ra, s5, 19
                  srl          a4, s6, t4
                  srl          a3, ra, a7
                  sll          s2, gp, t0
                  nop
                  xor          s1, s9, a0
                  srl          t4, a3, s10
                  slti         t1, t3, -2017
                  auipc        a6, 3498
                  sltiu        sp, a2, -1556
                  nop
                  srl          s8, a1, t1
                  auipc        a3, 584984
                  nop
                  slti         t0, s10, -1460
                  addi         a1, a7, 1264
                  sra          s9, s5, t4
                  xori         s4, a3, 1889
                  sub          sp, s9, s0
                  addi         t6, a6, 1935
                  slli         zero, s9, 9
                  sltu         t2, s1, s9
                  xori         s0, t4, 726
                  addi         sp, t3, 906
                  sltu         s8, a0, gp
                  sra          s6, t0, a3
                  slli         a3, gp, 20
                  andi         t5, s3, 697
                  sltiu        a5, a3, 1399
                  slt          s6, s6, a7
                  slti         t1, t0, 720
                  andi         a6, t5, 1388
                  xori         s9, a5, -663
                  sra          t5, ra, s1
                  sltiu        gp, a1, -1756
                  lui          s7, 267011
                  and          s5, gp, tp
                  ori          s4, t3, -1472
                  auipc        a0, 587375
                  sll          s1, a1, tp
                  srl          a1, gp, s1
                  srli         s8, s3, 0
                  sltiu        s11, t4, -794
                  sll          t3, s1, s1
                  slti         gp, s8, -503
                  and          s11, a6, a6
                  srl          sp, a4, t0
                  slti         s6, t0, -146
                  sltu         s5, a0, t2
                  lui          t6, 308133
                  srai         a6, ra, 20
                  and          a4, sp, t5
                  xori         s2, t4, 24
                  andi         tp, s10, -633
                  ori          tp, t3, 736
                  andi         a3, s3, 271
                  nop
                  add          a5, a4, t2
                  lui          sp, 894503
                  sll          gp, a3, s0
                  and          t6, a1, t6
                  auipc        t0, 980063
                  slti         s1, s5, -1529
                  auipc        a5, 866950
                  andi         s7, s4, -590
                  xor          a0, sp, gp
                  xori         a1, a7, -1617
                  xor          s9, s5, a4
                  sltiu        a6, s3, -1950
                  add          t6, s3, zero
                  srli         a3, sp, 3
                  slt          t5, ra, a7
                  lui          s4, 642747
                  srl          a5, s4, sp
                  srai         s5, s9, 18
                  or           t5, t1, gp
                  addi         s0, t2, 230
                  slti         a3, s6, -25
                  srli         t0, s1, 7
                  ori          a5, s6, 340
                  srli         t2, s5, 0
                  and          s6, s10, sp
                  and          a4, tp, s3
                  andi         zero, t2, -336
                  sra          a4, sp, zero
                  sltu         a6, t4, t0
                  sltu         a1, a4, gp
                  srai         a4, a3, 19
                  srai         zero, s9, 31
                  xor          s1, t6, s4
                  ori          t3, t3, 1825
                  srl          t4, t2, a1
                  sub          s5, s6, t2
                  andi         s7, s3, 1101
                  sltiu        a5, gp, -954
                  lui          s10, 976607
                  slt          s8, s4, a3
                  nop
                  lui          s5, 455175
                  or           s1, ra, t4
                  sll          a3, sp, a3
                  slti         t2, a1, -151
                  xori         tp, ra, -1272
                  or           s6, t6, a1
                  nop
                  slti         sp, t3, 289
                  sra          gp, s7, s3
                  srl          t0, t4, t4
                  slti         s6, a2, 1324
                  sub          t4, t6, t0
                  or           s8, s6, s4
                  sltu         t1, zero, s6
                  srai         a0, zero, 21
                  addi         s4, s2, 985
                  srai         s7, gp, 23
                  andi         s1, a5, 778
                  slli         t2, gp, 12
                  or           t0, s7, a7
                  slt          t3, t6, a3
                  sltu         t0, s4, t3
                  andi         t6, a0, -948
                  slli         s7, t4, 24
                  or           s4, a7, s1
                  add          gp, a5, t4
                  sub          s11, a6, a6
                  ori          sp, a5, 518
                  sub          t0, s5, s6
                  sub          s11, a2, a1
                  sra          s7, s6, s1
                  and          s9, t5, a7
                  slt          s10, s6, s6
                  sub          s5, s2, s7
                  slli         s8, s0, 31
                  slt          s1, s9, t6
                  and          s11, s0, a4
                  srli         s9, t1, 4
                  ori          a4, a0, 1651
                  and          t2, s11, t5
                  srai         s5, t1, 23
                  nop
                  auipc        s11, 726618
                  slt          t6, a1, s0
                  sub          s9, t6, ra
                  nop
                  slt          a0, t3, gp
                  xori         s2, sp, 1666
                  sltiu        t1, s0, -1751
                  xor          t0, t5, a6
                  sra          gp, t2, s10
                  sll          s9, s9, a2
                  nop
                  addi         s0, a4, 378
                  srli         s1, ra, 20
                  andi         t6, t4, 56
                  xor          s0, t1, t6
                  auipc        t0, 886878
                  sra          s4, sp, a4
                  sltiu        s4, s5, -1889
                  srl          s4, a3, s7
                  and          a4, zero, t3
                  lui          sp, 933381
                  or           a0, a6, s7
                  srli         a5, s4, 30
                  or           s6, t4, s11
                  add          a4, zero, a2
                  sltu         s2, gp, s4
                  srl          t4, a7, t1
                  sra          a0, t1, t1
                  nop
                  andi         a1, s5, 1854
                  slt          s9, a5, a6
                  srl          a4, s5, t1
                  slli         t3, a6, 20
                  sub          a3, s9, s6
                  sll          a4, sp, sp
                  sub          t2, t4, s0
                  sll          s7, sp, a3
                  nop
                  srl          zero, s0, s11
                  srai         zero, t0, 8
                  auipc        a6, 96724
                  xori         t2, s0, 1121
                  nop
                  slt          s10, s3, sp
                  and          tp, t1, tp
                  srai         s2, s3, 1
                  andi         a5, t6, 288
                  and          ra, s10, ra
                  srai         t3, a5, 12
                  xori         a3, a2, -330
                  srl          a6, a2, a0
                  sll          a0, sp, s9
                  xori         s9, a5, 272
                  sltu         s10, ra, ra
                  srli         s8, t5, 24
                  sll          a4, t5, s5
                  xori         zero, s0, -757
                  ori          s10, t4, 926
                  auipc        a5, 360297
                  addi         zero, s0, -1251
                  li           s6, 0x86a3955c #start riscv_int_numeric_corner_stream_5
                  li           t5, 0xffffffff
                  li           t0, 0x2397c2f1
                  li           tp, 0x0
                  li           t3, 0x0
                  li           gp, 0xffffffff
                  li           s2, 0xffffffff
                  li           t4, 0x3fa51dc8
                  li           t2, 0x80000000
                  li           a3, 0xb0ed30ab
                  add          s2, a3, t5
                  lui          s6, 226322
                  lui          a3, 252251
                  addi         s6, gp, 66
                  auipc        tp, 671871
                  auipc        s6, 59502
                  sub          gp, t0, s6
                  lui          s6, 647821
                  auipc        t0, 1012724
                  sub          t3, gp, t3
                  addi         t5, t3, -86
                  addi         s6, tp, 1453
                  lui          t4, 420739
                  add          gp, t0, t2
                  lui          t3, 933664
                  lui          gp, 1010097
                  auipc        gp, 730445
                  addi         gp, t2, -371
                  auipc        t4, 304821
                  nop
                  lui          t3, 866968
                  addi         t2, t4, 1279
                  add          gp, t5, s2
                  nop
                  add          s6, gp, tp
                  addi         t4, gp, -1850
                  addi         gp, gp, 1294 #end riscv_int_numeric_corner_stream_5
                  slli         sp, zero, 12
                  or           s0, t2, ra
                  and          t5, a3, t3
                  slt          s10, t5, s4
                  xori         s5, a2, 679
                  sltiu        a1, a1, 1972
                  sltiu        s9, s0, -1721
                  srai         s7, sp, 23
                  nop
                  slti         a6, sp, -1072
                  sltiu        s2, a7, 1817
                  sll          t1, a3, t2
                  sltiu        a6, s10, -1393
                  sub          s6, t5, t5
                  srl          s0, a5, a7
                  srl          s10, s6, sp
                  ori          tp, a7, 1811
                  sub          s0, a0, t2
                  sub          s9, a4, a1
                  slli         zero, t5, 5
                  nop
                  sub          s8, t0, t3
                  ori          s10, t6, 990
                  auipc        s2, 705329
                  or           t6, t3, a6
                  srli         s11, a3, 3
                  srai         tp, t1, 23
                  srai         zero, t2, 18
                  ori          t4, a3, 1432
                  ori          ra, s5, 401
                  slt          t5, s10, a3
                  add          a5, s8, t3
                  srl          t2, tp, s8
                  sra          s10, s10, a3
                  sltiu        s0, zero, 540
                  nop
                  srl          gp, s6, s5
                  andi         sp, ra, -1976
                  sltiu        a0, s5, -1563
                  and          zero, s1, ra
                  xor          s11, t0, s7
                  and          t6, sp, s9
                  sll          t3, ra, s4
                  srai         s5, s4, 20
                  or           ra, a4, t6
                  and          t6, a2, t0
                  slt          t4, a7, t1
                  sll          gp, t6, t1
                  andi         s10, t0, -409
                  slti         t4, tp, 1510
                  and          s9, s3, t3
                  add          s9, tp, s8
                  slt          ra, t4, s8
                  auipc        t2, 657527
                  sub          sp, t1, t3
                  srl          zero, s1, s3
                  sll          s0, s4, a5
                  slli         a6, a5, 18
                  sub          sp, s7, a3
                  auipc        t6, 822249
                  slt          s10, s11, t4
                  xori         t5, s2, 1189
                  sltiu        t0, ra, 1757
                  sub          t3, s10, a4
                  sub          s9, s3, a6
                  srli         s0, t4, 17
                  srli         t0, a1, 18
                  or           a6, t5, a2
                  sltiu        s9, t2, -958
                  add          ra, tp, sp
                  andi         t0, t6, 1183
                  lui          t0, 271483
                  srli         a0, t1, 26
                  addi         s5, s10, 735
                  xori         a1, t1, -1351
                  sll          s1, s6, s7
                  xor          tp, s0, gp
                  addi         t1, gp, 1507
                  nop
                  xori         t5, s3, -558
                  sltu         t1, a4, a1
                  srl          s0, a5, a4
                  xori         s5, a5, 2020
                  ori          s4, s3, 806
                  lui          s11, 64872
                  sub          zero, a2, a7
                  and          a1, s9, s1
                  nop
                  xori         a0, s11, -1934
                  sub          a1, a6, ra
                  addi         s2, s0, -880
                  slli         t5, ra, 8
                  ori          s5, t3, 1890
                  slt          t4, s1, gp
                  andi         t3, tp, -495
                  xori         gp, a7, -313
                  addi         s2, a2, 395
                  sltiu        t0, s1, 1665
                  sltu         t0, t1, zero
                  ori          a4, a3, 125
                  srl          t0, t1, t0
                  sltu         sp, a3, zero
                  xor          a4, t2, s2
                  sltu         t2, ra, tp
                  nop
                  lui          s9, 1072
                  srl          s1, sp, t4
                  xor          s6, t1, s1
                  and          s7, gp, s11
                  srl          t6, s11, t4
                  ori          ra, gp, -1776
                  slli         t3, a3, 2
                  add          s9, s7, s11
                  sltiu        s4, t0, -724
                  srai         s9, tp, 20
                  sltu         s11, s5, s10
                  srli         s8, t4, 13
                  addi         a4, s3, -1397
                  xor          a0, a4, t5
                  srai         s5, ra, 3
                  ori          t3, a1, 1230
                  andi         t2, a6, 908
                  srli         a6, t0, 25
                  lui          s6, 591108
                  addi         s7, t4, 1797
                  sra          s6, t0, gp
                  xori         s10, a1, -97
                  sltiu        t3, s8, -1048
                  auipc        a5, 748921
                  or           a3, a7, s4
                  sltu         s5, a2, s8
                  slti         a5, a0, -94
                  auipc        s5, 190695
                  add          a5, sp, s3
                  sub          ra, gp, s2
                  and          t5, s0, s6
                  auipc        t3, 199679
                  sub          t6, a2, ra
                  sub          s4, a4, a4
                  nop
                  sll          s2, s0, s7
                  slt          t3, s7, tp
                  andi         s2, a1, 928
                  and          s11, t5, s7
                  xor          t6, t6, s10
                  addi         t5, a0, 457
                  or           s7, t5, s4
                  ori          a6, a0, 1370
                  lui          a3, 350943
                  nop
                  auipc        a3, 112188
                  sltu         t5, s8, a1
                  add          gp, ra, s4
                  sra          a1, t3, t2
                  and          s0, s4, gp
                  slt          s8, t6, t5
                  srl          sp, a6, s5
                  sub          t0, t3, s9
                  srl          s10, tp, tp
                  ori          t2, a2, -1319
                  xori         a3, t5, 871
                  sltu         a1, s7, a5
                  sltu         s5, s3, t6
                  slti         s11, t0, 388
                  srl          a6, a7, ra
                  xor          s0, t3, t0
                  srl          t5, a1, s9
                  xor          t2, s11, a4
                  sltu         s8, t0, sp
                  slt          a4, t4, s8
                  xor          a1, sp, s7
                  add          a5, s3, t6
                  srl          s0, s6, a1
                  srl          a3, a4, t1
                  sub          tp, tp, s3
                  auipc        ra, 451008
                  andi         s9, t5, 746
                  sll          a6, a4, a2
                  sll          a6, t1, t3
                  andi         zero, sp, 1331
                  xori         s10, s1, -1875
                  sra          s7, a4, s9
                  slt          s6, t4, a4
                  srai         t5, s7, 19
                  srl          s4, t1, t4
                  ori          t2, t4, 1154
                  sll          s4, t2, a2
                  slti         t6, s5, -958
                  addi         zero, ra, -955
                  andi         a5, s0, 260
                  sltiu        a5, tp, -1219
                  sub          ra, gp, zero
                  srai         tp, t3, 25
                  xori         a6, t1, -325
                  auipc        s5, 353310
                  sll          s5, t0, t5
                  xor          a5, s11, ra
                  sltu         s9, tp, s0
                  slt          a4, a7, s2
                  and          a3, a6, s11
                  srai         ra, zero, 28
                  slti         s7, s4, 1078
                  slti         s11, s9, -1918
                  sltiu        s11, gp, 1937
                  xori         s8, ra, -643
                  sub          s10, gp, s11
                  lui          s9, 530335
                  sra          t5, t0, sp
                  sltiu        s10, a6, 1880
                  sra          a0, a6, tp
                  slti         a3, t3, 887
                  sll          a6, s10, s4
                  xor          s0, gp, s5
                  ori          s11, a3, 1836
                  srl          s6, gp, s0
                  srl          a1, s6, t3
                  xori         s2, a6, 668
                  xor          s2, s11, s9
                  xor          s8, s3, gp
                  ori          a5, s9, 1188
                  slli         s9, a5, 8
                  ori          t1, s7, 776
                  slti         a6, s7, -1267
                  srai         a6, ra, 10
                  sub          a1, a2, zero
                  nop
                  srai         s0, s1, 7
                  srai         s9, s4, 6
                  sltu         s6, a4, a4
                  lui          sp, 783714
                  sub          s8, s3, zero
                  xor          s4, a7, s11
                  sub          t0, tp, tp
                  slti         t0, t1, -1769
                  sll          s5, t4, s1
                  xor          t4, zero, a3
                  and          gp, a1, s9
                  addi         a5, s10, -28
                  or           s5, gp, s6
                  lui          s7, 294086
                  nop
                  slt          t5, t5, a1
                  and          tp, s2, s11
                  add          t0, s6, a2
                  srai         s7, t1, 11
                  sra          t5, s6, a2
                  auipc        zero, 1047585
                  srl          a6, a6, sp
                  sub          ra, tp, s6
                  srl          t1, t4, a6
                  slti         s7, s11, -1205
                  sll          t0, s11, a2
                  slti         tp, gp, -2032
                  srli         s4, s4, 9
                  sltiu        s10, s10, -821
                  or           t1, s4, t0
                  and          s4, tp, zero
                  ori          s4, sp, 491
                  auipc        t5, 1014958
                  slt          a4, a3, t1
                  and          a0, a2, s7
                  slli         s10, a0, 30
                  xor          t3, s8, sp
                  add          a3, a4, s1
                  srai         t1, sp, 5
                  slti         a0, s7, -1057
                  add          t1, t4, s3
                  sltiu        t5, t6, 814
                  srai         t1, gp, 10
                  sll          a5, t6, tp
                  sll          a5, t6, t0
                  sra          a4, t3, a2
                  xor          s10, a3, t3
                  auipc        a5, 615350
                  andi         t4, a2, 160
                  sltiu        s2, t6, -1857
                  ori          zero, s7, -1098
                  xori         t2, a2, -1973
                  slt          a1, a2, zero
                  sll          s4, t0, a1
                  slli         ra, s1, 25
                  xor          s10, zero, tp
                  sra          s0, zero, t2
                  or           s10, a2, s6
                  auipc        zero, 124646
                  andi         t6, t2, -1009
                  ori          s11, a7, -1335
                  or           gp, t0, t0
                  sltiu        a1, a2, 984
                  add          tp, t6, s4
                  or           t3, s10, a1
                  srai         t2, ra, 11
                  sll          s8, s9, s0
                  xori         s6, s1, 352
                  addi         s9, t5, 1946
                  ori          s2, s1, -1879
                  lui          t3, 968949
                  srl          zero, zero, a3
                  auipc        t6, 357562
                  xor          s10, s0, s4
                  srai         t2, t5, 28
                  slt          s7, s3, s6
                  add          s8, gp, t0
                  addi         t1, t2, 976
                  or           s1, s5, t6
                  andi         s10, a5, -1315
                  slti         tp, t5, 913
                  sll          t6, t3, s5
                  ori          s7, t1, -509
                  ori          sp, s7, 1058
                  lui          s5, 334522
                  srl          t1, s8, a6
                  srli         a5, a2, 25
                  sub          t4, ra, a4
                  slt          a5, s6, t0
                  andi         t0, a5, 283
                  sub          a0, t2, s3
                  lui          s4, 794076
                  nop
                  srli         s8, zero, 16
                  sltu         s4, sp, s2
                  sltiu        t1, tp, 1916
                  xori         t6, ra, -58
                  lui          gp, 87937
                  lui          t5, 42298
                  sltiu        a6, a6, 1352
                  sll          t0, s11, s6
                  xor          s6, s6, t5
                  and          t4, s9, t1
                  or           a4, tp, t1
                  ori          t2, gp, 1654
                  nop
                  slt          zero, a5, tp
                  slli         s5, a0, 12
                  auipc        s0, 320513
                  srai         s2, a0, 1
                  sltiu        t5, a5, -981
                  auipc        s2, 51285
                  ori          s11, a1, -1869
                  andi         a3, ra, 752
                  lui          t2, 329399
                  xor          a1, s5, s5
                  andi         s4, s0, -435
                  sll          s11, a2, s6
                  auipc        ra, 919112
                  sltu         s4, ra, t1
                  sra          zero, t4, a1
                  and          s4, s3, s8
                  ori          s5, s4, -1059
                  sltu         s4, s2, t1
                  sra          t3, t0, a7
                  srai         s8, a6, 2
                  and          t3, s5, gp
                  srli         ra, s5, 17
                  nop
                  ori          sp, t6, -1178
                  lui          s11, 596003
                  xor          tp, s5, a5
                  sll          s7, a3, s5
                  srli         s5, t2, 25
                  auipc        a6, 643995
                  srl          t3, a1, ra
                  srl          s11, a4, s9
                  srl          t4, t3, t1
                  sub          s7, s4, zero
                  srai         t3, t4, 0
                  srli         s10, t1, 27
                  add          s4, s3, a3
                  auipc        s2, 302389
                  slli         tp, s5, 14
                  srai         t1, tp, 19
                  sra          zero, a4, sp
                  addi         s6, t0, 1815
                  srl          sp, a7, a0
                  ori          ra, a1, 376
                  srli         a4, tp, 27
                  addi         a4, a5, -498
                  srai         s6, a0, 30
                  or           a0, t1, s1
                  or           s11, zero, tp
                  xori         t1, a1, 1671
                  sra          t1, a6, a0
                  auipc        a0, 241253
                  xor          s8, a2, a6
                  sub          sp, s2, t0
                  sll          t4, s3, a3
                  sra          s2, s8, s9
                  andi         s11, s0, 1803
                  sll          t5, s4, s2
                  sra          s0, ra, sp
                  add          sp, t5, a7
                  lui          a0, 132248
                  addi         s1, s7, 366
                  slt          t4, s6, tp
                  slt          t5, s9, t1
                  slli         sp, s9, 2
                  add          s11, a6, s10
                  sra          t1, a5, s10
                  add          s6, t1, a0
                  xor          s1, t0, s1
                  add          s1, t5, s7
                  and          tp, s11, s11
                  sub          s2, s9, a0
                  nop
                  add          gp, s3, s9
                  addi         a5, s1, 816
                  sltiu        s5, s4, 1265
                  sll          a6, zero, tp
                  and          s1, s6, sp
                  andi         s8, tp, -1366
                  ori          t3, s3, -480
                  srl          t4, s8, t0
                  or           gp, s2, s3
                  and          sp, t2, a3
                  sltiu        s1, t4, -1053
                  srli         s5, s11, 25
                  or           a3, t0, s0
                  xor          s9, a2, s3
                  add          gp, gp, s2
                  sra          t4, s5, s3
                  sra          t0, s6, s7
                  slt          t1, a3, s6
                  ori          sp, a3, -58
                  sub          a0, s6, s6
                  xor          a6, s6, s2
                  srai         t2, s8, 3
                  lui          a0, 201235
                  slti         sp, t4, -1944
                  slli         t1, t6, 20
                  sltiu        a4, t6, -321
                  andi         t4, a1, -68
                  sra          s5, t3, s7
                  addi         s0, a5, 996
                  add          t2, s3, a1
                  auipc        a0, 462742
                  srl          s6, s11, gp
                  nop
                  add          a4, s2, t6
                  sub          s0, s1, t3
                  sll          t4, a2, ra
                  srai         a6, a6, 16
                  xor          t6, t0, tp
                  slti         s8, s3, -16
                  sltu         s0, t0, t0
                  sub          t2, ra, tp
                  addi         s0, s7, 761
                  andi         s7, a7, -1758
                  slli         t6, s1, 24
                  nop
                  auipc        s0, 1010174
                  andi         a4, s5, 694
                  slt          a0, s6, t4
                  ori          s9, s2, -249
                  xori         t6, s7, 1482
                  auipc        s8, 1023112
                  auipc        s7, 756084
                  srl          a4, s8, t3
                  sra          zero, a7, t0
                  or           s7, s8, s2
                  or           s1, t0, s11
                  sltu         s5, s4, t4
                  lui          t3, 753392
                  ori          s4, a1, -1468
                  ori          tp, t6, -801
                  lui          sp, 390718
                  and          s0, t5, a2
                  nop
                  lui          a3, 24714
                  xori         s6, a5, 1048
                  sll          s2, t0, a4
                  srli         s8, a7, 8
                  srai         a0, zero, 13
                  srli         t5, a6, 21
                  sub          t3, t3, a7
                  sra          s4, zero, t1
                  and          t1, s10, ra
                  sltiu        t5, ra, 360
                  slt          sp, s9, s0
                  srl          s9, a4, a3
                  slti         t1, a3, 1840
                  slti         tp, s6, 892
                  srli         a5, t6, 15
                  andi         t2, a1, 860
                  srl          s4, a2, s10
                  or           t4, t0, a5
                  srl          gp, t1, a1
                  xor          s2, s8, zero
                  add          t0, t5, t0
                  addi         s5, s11, -242
                  and          gp, ra, s11
                  sub          s6, s1, s4
                  or           ra, s7, a5
                  sub          t2, a4, t6
                  ori          gp, t1, 967
                  ori          t2, t6, -362
                  ori          s2, t3, -52
                  nop
                  srli         t4, zero, 13
                  slt          t6, t3, a6
                  or           a1, a5, t0
                  auipc        a6, 155100
                  and          t3, s4, t3
                  sub          t2, ra, gp
                  ori          tp, s8, 944
                  nop
                  ori          gp, sp, -1097
                  auipc        gp, 841873
                  slt          gp, s11, s8
                  slti         a3, s10, -481
                  slli         s0, t0, 14
                  addi         s1, ra, 1873
                  srli         s1, gp, 23
                  srl          a4, a7, t3
                  slli         s5, s11, 2
                  ori          s7, t4, -1063
                  auipc        zero, 817100
                  or           t6, t6, tp
                  sltiu        gp, t5, -231
                  sra          s1, a2, s11
                  sub          a3, gp, s9
                  srli         ra, s6, 3
                  add          s9, a0, s3
                  slt          a5, s4, t6
                  or           t1, a4, s2
                  lui          s5, 889002
                  xor          gp, sp, s10
                  auipc        tp, 532500
                  sll          s9, s7, t5
                  sltiu        t0, s5, -18
                  sltiu        s7, s9, 923
                  sra          a6, s10, s2
                  xor          s11, t3, a2
                  slli         a6, s1, 22
                  srl          t4, t6, a5
                  sltu         a0, s0, a3
                  nop
                  add          s7, s1, t2
                  slt          s2, s0, t0
                  auipc        sp, 601012
                  srli         a4, a3, 27
                  sra          tp, s4, t6
                  add          s7, zero, s8
                  sra          a3, zero, s3
                  slli         a1, t3, 31
                  slt          s6, s11, t1
                  nop
                  sltu         s0, s11, s9
                  sra          a6, t4, s3
                  xor          s1, s9, s5
                  auipc        a3, 500894
                  sll          t1, t4, s4
                  srl          s10, a7, zero
                  xor          t1, s5, a4
                  and          tp, a3, a4
                  lui          s7, 421430
                  and          s10, s9, s1
                  xori         s1, a7, -1972
                  srl          a6, s9, tp
                  andi         t3, tp, -1664
                  sra          s11, s2, s6
                  sub          zero, a0, ra
                  slt          a4, sp, s5
                  xor          a5, zero, s0
                  srli         a4, a6, 6
                  sub          a1, zero, s9
                  sra          s8, ra, s1
                  sra          s4, s8, a2
                  lui          t0, 725084
                  srai         ra, a5, 24
                  and          s5, a5, t4
                  add          a3, s6, t5
                  ori          a3, tp, 508
                  add          tp, t5, tp
                  sll          s2, tp, s5
                  or           t1, s3, t1
                  addi         a5, gp, 1536
                  slt          a5, t3, s8
                  srl          a3, a2, s1
                  lui          a3, 338908
                  andi         s10, a4, -1604
                  srai         s7, s2, 11
                  and          t3, ra, t1
                  slt          s10, s10, s7
                  addi         tp, t0, 1755
                  ori          a5, s3, 545
                  slli         s8, a5, 30
                  xori         gp, a5, 569
                  sra          t3, a2, a6
                  lui          a6, 748071
                  xori         t4, t2, -1115
                  slt          s8, s6, a7
                  and          s11, a2, s0
                  nop
                  sra          s7, a2, s5
                  srli         s5, s3, 0
                  srai         s1, s4, 21
                  sub          t2, ra, a0
                  sll          t2, t6, t0
                  srli         s2, a5, 26
                  srl          t2, t4, t1
                  srai         a0, a1, 0
                  sltiu        a0, a7, 57
                  srli         zero, t6, 20
                  slt          a3, t4, s8
                  sra          t5, t1, s6
                  sltu         s11, a1, s6
                  xor          s10, t4, s10
                  xor          s8, s7, t3
                  add          s11, t6, s7
                  andi         t0, s10, 583
                  slli         s2, s6, 4
                  sll          t4, t3, t2
                  slt          tp, s8, a2
                  lui          gp, 153032
                  and          s8, s1, zero
                  slli         t0, tp, 11
                  nop
                  sub          s2, a2, t6
                  andi         t1, t6, -137
                  xori         a4, a2, -1973
                  slli         sp, s10, 8
                  nop
                  nop
                  addi         ra, a5, -941
                  xor          tp, a6, t5
                  sltu         s11, s10, s1
                  sltiu        sp, s6, 852
                  srai         tp, zero, 29
                  xori         gp, a3, 1239
                  and          a3, s4, t1
                  auipc        s6, 270474
                  lui          t0, 652739
                  slt          s0, s11, a7
                  slt          t1, s0, s6
                  xori         a5, t5, -1697
                  addi         t4, t2, 1356
                  slti         s1, a7, -1859
                  or           a5, s6, s2
                  sltiu        s7, t3, 908
                  slt          a1, t1, s4
                  slli         s7, t5, 15
                  xori         t3, a2, 626
                  srl          s0, s8, t3
                  slti         a6, s1, 9
                  auipc        s5, 368936
                  slti         t5, t1, 75
                  sra          t1, tp, a7
                  slt          sp, s4, s1
                  and          s6, t6, s2
                  andi         s2, t1, 1206
                  andi         tp, s8, 278
                  add          a1, s2, a0
                  lui          a5, 68932
                  sra          s6, gp, a5
                  srai         s11, a6, 14
                  nop
                  auipc        a1, 1002442
                  sra          s9, sp, s1
                  or           t4, s5, a4
                  ori          s9, t3, -1336
                  slli         sp, t3, 23
                  slli         t3, a7, 30
                  sltu         t5, ra, s9
                  lui          a4, 203420
                  srai         zero, t5, 20
                  slti         a4, t0, -133
                  lui          t3, 787549
                  sub          s9, s1, s6
                  add          s10, a6, t6
                  xor          a1, ra, a2
                  xor          s10, s9, a0
                  srai         s10, s5, 25
                  sll          s10, s3, a5
                  addi         t1, s7, 1870
                  nop
                  add          s8, gp, tp
                  slli         s5, t6, 27
                  slli         a4, a1, 22
                  lui          t4, 871036
                  ori          a3, s2, 2002
                  slti         gp, ra, 496
                  sra          s1, a3, sp
                  srai         t2, s8, 8
                  slti         s2, tp, -283
                  sltiu        sp, s9, -451
                  sltu         a0, t6, a3
                  or           s5, s6, zero
                  sub          s11, t1, t0
                  xori         s6, t1, 1709
                  slli         gp, s4, 23
                  slli         s4, s9, 26
                  nop
                  sltu         s8, s1, a4
                  sltu         t5, t4, t2
                  srl          t5, s2, t0
                  xor          t4, s4, s0
                  add          s5, s5, t5
                  sltu         a1, zero, s4
                  slli         zero, a7, 21
                  sub          t6, a5, t4
                  slli         t6, s6, 31
                  slti         s9, t1, -118
                  xor          a0, t6, ra
                  add          a4, t2, zero
                  or           t1, s9, s0
                  addi         s10, s1, 402
                  andi         s8, s9, -853
                  slli         s4, a1, 4
                  auipc        a6, 318471
                  sll          s8, t1, a5
                  slt          s11, a6, a7
                  srai         ra, t0, 25
                  or           t5, s9, s11
                  slli         s1, s1, 27
                  sub          s4, tp, t2
                  or           a3, s3, s6
                  or           ra, s11, t4
                  add          s10, a3, a6
                  auipc        a5, 677009
                  lui          s5, 563633
                  or           a5, s9, a0
                  srli         t4, a0, 15
                  sltu         s11, ra, s11
                  andi         ra, t2, -417
                  ori          s9, ra, -926
                  addi         t3, ra, -1972
                  xori         tp, s9, 159
                  slti         a4, s11, -733
                  ori          a0, a6, 880
                  slt          s5, a3, ra
                  sltu         t3, a1, s1
                  sra          a3, t6, s9
                  slti         a4, ra, 247
                  andi         s7, a4, -728
                  slti         ra, a1, 1892
                  and          s8, a4, a1
                  sub          s6, s2, s5
                  xor          s10, tp, t2
                  auipc        a6, 260509
                  nop
                  andi         gp, a3, -658
                  srai         t6, t5, 21
                  lui          t0, 1013138
                  addi         a5, s4, 1805
                  sra          tp, sp, t4
                  nop
                  sltiu        t4, gp, -1090
                  auipc        gp, 1035419
                  sll          s6, gp, a6
                  sll          a0, s11, zero
                  sub          t0, s11, s1
                  xori         zero, zero, 446
                  sll          a0, t1, t2
                  or           s10, s9, a6
                  srai         s7, s3, 28
                  slti         a0, s8, -183
                  srai         s4, s5, 31
                  sll          t3, s7, s11
                  srli         t0, a1, 8
                  or           s6, s3, t1
                  lui          t0, 306678
                  srli         t1, tp, 5
                  andi         t6, t5, 759
                  srai         t4, s2, 4
                  slli         s10, s7, 14
                  xor          s10, sp, s9
                  sll          s9, s9, s3
                  auipc        a0, 532948
                  nop
                  xori         s9, a1, -627
                  xor          t5, s6, s9
                  and          a4, a1, s5
                  srai         a3, t4, 10
                  add          s4, a3, a0
                  auipc        a6, 977015
                  sll          t3, sp, s11
                  srli         t5, sp, 2
                  andi         tp, t0, -426
                  slt          s7, a0, a2
                  or           ra, s5, sp
                  slt          t0, t0, t1
                  lui          t1, 295514
                  slt          s10, t0, t1
                  xori         s8, a7, -1478
                  slt          t6, s4, a3
                  auipc        a5, 236989
                  srl          a0, s10, s0
                  add          s2, a3, t1
                  xori         a5, a5, 59
                  sltu         s8, t5, zero
                  sll          s9, s5, gp
                  nop
                  add          s2, s0, a5
                  slli         s9, t2, 19
                  and          s4, t1, zero
                  addi         s8, t3, -456
                  slli         tp, s4, 22
                  xori         a6, s11, 877
                  and          t0, t1, s7
                  xori         a1, a3, -192
                  add          t3, s11, a3
                  lui          a0, 349017
                  sltiu        s2, s11, 403
                  add          s8, ra, s9
                  sra          s5, s2, a3
                  srl          a6, t5, s10
                  xor          t4, a6, ra
                  or           zero, s10, s6
                  lui          t1, 96949
                  slti         t5, a3, -1570
                  lui          t4, 1048417
                  nop
                  add          s7, t3, a5
                  auipc        s5, 676097
                  srli         gp, s11, 16
                  xor          t1, t3, s3
                  xori         a3, s8, -1407
                  nop
                  sra          a3, s0, gp
                  nop
                  xori         s8, a5, 909
                  auipc        s1, 921794
                  andi         a6, a7, 546
                  slt          a5, s9, a4
                  and          t1, t4, a5
                  srl          a6, s0, s0
                  add          t1, a2, s1
                  add          s0, t4, t2
                  srai         s9, a3, 7
                  xori         t4, sp, 548
                  sltu         a1, s3, t4
                  xor          t2, a6, t6
                  sltiu        s7, gp, 393
                  or           t5, s1, a4
                  slli         sp, s10, 15
                  sltu         a5, t4, t4
                  srl          zero, a4, a4
                  sra          a4, zero, s4
                  slli         a6, s0, 0
                  srli         tp, a2, 22
                  and          s4, a1, s9
                  or           tp, s7, t2
                  sub          s10, zero, t4
                  ori          a1, s0, -1399
                  slti         s2, a7, 1305
                  srai         s9, a6, 17
                  addi         s2, ra, 768
                  addi         s4, s6, -777
                  srai         ra, a3, 16
                  add          t6, t1, t0
                  addi         a5, t5, -392
                  sltiu        s1, t3, 1217
                  nop
                  add          t3, s0, zero
                  nop
                  and          a5, s2, a0
                  sra          t2, t3, a2
                  slt          a5, a6, tp
                  srli         gp, zero, 26
                  sra          s8, s11, s2
                  srli         s8, s11, 22
                  nop
                  addi         tp, a2, 1455
                  sub          s6, a6, s8
                  slli         tp, s8, 23
                  andi         ra, t0, 852
                  slti         s11, s2, -700
                  sra          a1, s9, t2
                  addi         zero, s0, -846
                  add          ra, t0, s5
                  srai         t0, a2, 24
                  auipc        s0, 667313
                  srli         s7, a3, 12
                  sra          s9, tp, t3
                  srai         tp, s8, 18
                  lui          ra, 16342
                  srl          t4, s9, t0
                  andi         s6, tp, -488
                  slt          a3, s7, s0
                  ori          gp, s4, 1174
                  and          a1, t4, gp
                  or           s6, tp, a1
                  sltiu        a1, a5, -1276
                  srli         t5, s2, 10
                  andi         a5, t3, -1097
                  sll          t0, a0, s6
                  lui          s7, 214049
                  slt          t6, t1, t5
                  sra          s9, s3, sp
                  addi         a6, s10, 849
                  lui          a5, 873932
                  addi         a0, t6, -1987
                  sra          tp, gp, t5
                  auipc        a6, 733700
                  srli         a5, a0, 5
                  xori         a4, s7, -589
                  slli         t3, s7, 7
                  sll          s5, s10, t3
                  xori         s4, t2, -2030
                  or           s9, t0, s1
                  slt          a3, a5, ra
                  xori         t5, s9, 701
                  lui          s2, 310139
                  addi         sp, t1, 859
                  addi         a3, s6, -1478
                  andi         s6, s1, -1510
                  nop
                  sub          a0, a3, ra
                  srl          a3, t1, tp
                  srai         s2, t4, 26
                  slt          t4, t3, s7
                  slt          s5, a5, a5
                  addi         t4, sp, -998
                  nop
                  slt          s0, t6, gp
                  ori          t2, t0, 1053
                  slt          s9, gp, tp
                  or           sp, s2, a7
                  sra          t2, s5, s3
                  or           tp, a3, a0
                  and          sp, s3, s9
                  add          t2, sp, s6
                  sra          t1, t2, s4
                  sltu         a4, tp, s7
                  sub          ra, s2, s8
                  slt          a1, a6, gp
                  slt          a4, s6, s2
                  slli         a4, s9, 12
                  andi         zero, s0, -2034
                  slt          t3, gp, a0
                  slli         t0, a4, 15
                  addi         s6, s1, -1884
                  add          a3, t3, s2
                  addi         t5, zero, 1481
                  ori          s5, s5, -591
                  lui          s10, 241883
                  xor          s11, s11, a6
                  sll          a4, s1, s10
                  xor          s11, a5, t1
                  sll          t6, t4, ra
                  sll          s0, s5, s3
                  sltu         tp, t2, zero
                  sra          a4, a7, ra
                  sll          a3, a6, s6
                  andi         s0, a3, 1921
                  sra          s0, a0, s2
                  andi         s10, t0, 71
                  sltiu        a1, sp, -761
                  srl          s4, sp, t3
                  srl          s6, t2, a6
                  sub          a1, t2, t6
                  slt          s8, a3, a5
                  sltiu        ra, s7, 777
                  auipc        s2, 898115
                  nop
                  srai         s10, s2, 18
                  slti         a1, t4, 755
                  sll          s6, s8, a4
                  srli         s5, s7, 22
                  andi         gp, zero, 1559
                  sll          t3, s9, t0
                  sll          s6, t3, a3
                  add          s2, a4, t4
                  srli         s4, t2, 21
                  sra          s9, a7, sp
                  sub          s4, gp, t6
                  lui          ra, 713420
                  or           s10, t6, s9
                  sltiu        t4, a6, -1746
                  nop
                  andi         t6, a2, -858
                  sltu         t1, t6, s7
                  slt          s11, t4, s10
                  or           s8, sp, tp
                  and          s6, t0, s2
                  slt          s11, a4, gp
                  slli         s1, t1, 18
                  sll          s5, t0, s9
                  add          a3, t5, t5
                  nop
                  ori          s5, a7, -889
                  sltiu        sp, gp, -1697
                  xori         t6, sp, -987
                  sltu         t1, s5, t6
                  xori         a0, t2, 80
                  sll          t5, t1, s5
                  sltiu        s7, a3, -1344
                  slli         t3, t3, 5
                  addi         sp, s9, 9
                  slti         t2, t2, 1092
                  slli         s2, s5, 21
                  nop
                  nop
                  add          s1, a3, a1
                  slti         s10, a5, 147
                  sltiu        a5, sp, -747
                  xor          a3, s11, sp
                  sra          ra, s6, a5
                  and          a0, s1, tp
                  or           gp, s6, ra
                  sltiu        s2, ra, -1047
                  auipc        t5, 998135
                  ori          s9, a4, 637
                  srl          t0, zero, a1
                  sltu         s8, t0, s11
                  srl          s10, tp, a3
                  sltiu        t0, s2, -521
                  srli         t3, s9, 4
                  addi         s4, gp, -1664
                  add          ra, s4, s1
                  and          s5, s8, t1
                  and          s11, s2, tp
                  srai         s0, t4, 24
                  and          a6, a2, a5
                  addi         t5, t5, 1554
                  slti         zero, a6, 1705
                  srl          sp, s4, t2
                  srl          t3, s6, t0
                  sltu         zero, s11, a0
                  andi         a5, ra, 742
                  ori          t3, a1, 1865
                  slt          s6, s1, a3
                  addi         s1, a0, -1728
                  sub          s2, s5, a1
                  srli         t4, zero, 25
                  slli         s5, zero, 15
                  ori          s4, s6, 501
                  andi         t4, s1, -1275
                  nop
                  slt          t0, s9, a1
                  sra          a3, a1, tp
                  xori         a3, tp, 1770
                  xori         s6, s0, -1776
                  auipc        s11, 338576
                  and          a5, s2, t3
                  and          a0, s5, s1
                  or           a4, s1, s3
                  xor          t2, sp, s2
                  addi         t1, s10, -21
                  andi         a3, s7, -1861
                  addi         a5, sp, 1592
                  ori          a6, t2, 1002
                  srl          sp, s5, a2
                  and          s4, a0, t3
                  slti         gp, s5, -291
                  srai         t2, s7, 10
                  slt          a0, s0, t2
                  srli         s4, a7, 9
                  slli         s10, s7, 20
                  sltiu        s1, t5, 1681
                  or           s11, s8, a0
                  slt          t0, s9, zero
                  lui          s10, 93881
                  lui          t5, 895488
                  andi         gp, a4, -1545
                  xori         t1, s11, -238
                  sltu         s1, a0, s7
                  sltu         s7, s6, t5
                  slti         a6, a7, 319
                  nop
                  ori          s1, a2, 1943
                  or           sp, s5, t5
                  lui          a6, 87752
                  xori         s0, a0, 681
                  nop
                  sra          s4, s1, a6
                  nop
                  xori         a6, t1, 81
                  slt          s9, s4, s4
                  slti         a4, gp, 234
                  sra          t0, gp, s2
                  addi         gp, a5, -195
                  slli         s0, gp, 21
                  addi         s11, s7, 1736
                  sltu         a5, t4, t2
                  sra          sp, s5, a7
                  xor          t2, gp, s11
                  sub          zero, a2, a2
                  srli         a0, a5, 7
                  xor          s9, s6, s9
                  sub          a1, a6, a6
                  sub          s8, ra, t4
                  srai         s8, s5, 11
                  or           t0, t0, t2
                  sub          a3, t0, a6
                  add          a5, a7, a2
                  andi         a5, a7, -1414
                  srl          s9, gp, a4
                  srli         a3, a7, 0
                  ori          s2, ra, -321
                  xori         sp, s1, 550
                  or           t4, s2, s0
                  add          s8, a5, s6
                  srai         s2, s6, 13
                  add          s6, a0, tp
                  slti         t5, ra, -1295
                  ori          tp, t2, 665
                  slli         s1, t6, 21
                  nop
                  or           s9, tp, s4
                  xori         a3, gp, -436
                  sltiu        a6, t2, -1805
                  xor          s10, s2, s3
                  xor          t5, a4, a5
                  lui          a1, 825566
                  auipc        s5, 101709
                  lui          t0, 103412
                  add          zero, t5, t2
                  ori          s8, t4, 808
                  lui          s4, 830253
                  auipc        ra, 855869
                  lui          t3, 1034280
                  addi         s10, a6, 1778
                  sltu         s9, zero, t4
                  slti         t2, s1, 1386
                  sll          s1, s0, s4
                  auipc        t3, 15063
                  lui          s7, 327837
                  slli         s4, s8, 30
                  auipc        t3, 474057
                  sra          a0, t6, s10
                  xor          t2, s3, s6
                  or           s11, t0, sp
                  slt          s8, s3, s2
                  ori          t2, a5, 1887
                  and          s10, s1, tp
                  srai         s10, a0, 31
                  sll          s7, s9, s11
                  sub          s8, sp, s2
                  add          gp, gp, a2
                  xori         a1, t4, 1445
                  slt          s5, t1, s1
                  andi         s5, s3, -1591
                  add          tp, a2, a0
                  sltiu        a5, s4, -375
                  sra          s0, s9, s8
                  lui          s6, 93900
                  sub          s2, t4, a5
                  srai         tp, sp, 20
                  auipc        s9, 323872
                  sltiu        t6, t3, 906
                  auipc        a1, 53580
                  srl          t6, t2, s0
                  ori          t4, gp, 1403
                  nop
                  andi         t1, t1, 1791
                  xor          s6, a5, s1
                  andi         s2, s10, -1280
                  srli         tp, a4, 27
                  and          s6, a7, sp
                  sub          a1, a3, t5
                  xori         t1, a5, 968
                  xori         ra, s10, -969
                  or           ra, gp, t5
                  lui          t1, 37557
                  ori          s11, t4, -1114
                  addi         a3, a2, 146
                  and          t1, a4, gp
                  sra          a0, t3, t4
                  sltiu        s6, s4, 2030
                  srai         s9, tp, 19
                  slli         a0, s2, 23
                  slt          s5, a0, zero
                  nop
                  sltiu        s0, gp, -172
                  ori          zero, s0, 679
                  slli         a1, tp, 12
                  slli         ra, ra, 9
                  add          zero, s1, t6
                  srai         s8, s11, 18
                  sltiu        s2, s1, -397
                  srai         a5, t3, 9
                  slti         s1, s8, 1493
                  auipc        s9, 683489
                  sra          t1, zero, s8
                  lui          s11, 183227
                  srl          t6, sp, tp
                  sra          t5, a0, ra
                  srai         sp, t4, 4
                  xor          t3, t6, a3
                  sra          s2, sp, zero
                  and          s9, s1, a0
                  lui          a0, 701840
                  srai         s6, sp, 2
                  ori          s8, a5, -1903
                  or           s1, s1, t0
                  xori         s5, s5, 2010
                  slli         s6, t2, 14
                  srli         tp, a5, 9
                  xor          a5, t1, a0
                  sll          t4, t5, t1
                  srli         s1, t6, 28
                  sra          a4, ra, s11
                  slti         t4, t5, -442
                  slli         s7, a2, 20
                  srli         t5, t1, 14
                  srl          ra, s6, gp
                  srai         s2, gp, 2
                  slli         s11, t2, 3
                  nop
                  xori         sp, a3, 35
                  or           a3, s9, tp
                  lui          a0, 548431
                  xor          s11, a3, t4
                  srai         t5, a5, 23
                  lui          a0, 727651
                  sra          s6, s9, a5
                  sltiu        tp, a6, 1851
                  sll          s8, tp, s1
                  andi         a4, a7, 1087
                  srli         s10, s7, 27
                  sltu         a5, a1, a7
                  slti         t0, s7, 1006
                  sra          s1, a5, a3
                  xor          t2, s4, t2
                  nop
                  sltiu        t2, s2, 1026
                  nop
                  srli         s2, s5, 16
                  and          s5, a3, t6
                  sub          ra, a6, s8
                  srl          s10, sp, tp
                  srl          s10, s11, zero
                  sltu         t1, t1, ra
                  sub          ra, t6, a7
                  auipc        a4, 574296
                  xori         s1, a1, 1293
                  sub          t5, a2, s10
                  xori         t4, t5, -1267
                  slt          sp, s9, s2
                  ori          t3, s5, 1582
                  slti         a4, s4, -111
                  sltiu        s1, tp, -274
                  or           t0, a1, t0
                  slt          a1, a5, s0
                  srl          s8, s4, s11
                  sra          s4, a5, s9
                  sra          s0, a5, ra
                  lui          t5, 836977
                  srl          a1, t6, s9
                  andi         t1, s4, -1989
                  xor          tp, a4, s4
                  lui          t4, 478047
                  sltu         a4, a7, s5
                  xor          t1, sp, s3
                  sltiu        s11, gp, 984
                  ori          s8, s7, -1579
                  srai         tp, t1, 29
                  auipc        t6, 931564
                  addi         a3, s10, 1307
                  lui          a3, 673703
                  add          s8, a6, s0
                  slli         t5, sp, 15
                  add          sp, a7, s3
                  xori         s0, s2, 1514
                  sra          s7, t0, s2
                  sll          s1, t3, s11
                  srai         s8, s11, 23
                  andi         t1, a2, -204
                  sll          s8, s10, a7
                  andi         t5, s11, -420
                  srl          a3, a5, t6
                  srai         t4, t4, 30
                  or           t6, s3, a1
                  sub          a4, a6, sp
                  srli         s0, t0, 22
                  lui          s8, 1030192
                  and          s4, s8, s8
                  srl          s8, t6, t4
                  sub          s9, tp, t3
                  xori         s2, ra, -537
                  slti         t0, a6, -935
                  or           t6, s3, t1
                  srli         t3, t5, 5
                  slti         a3, gp, -1195
                  and          t1, s6, s6
                  srl          t5, sp, a0
                  sub          t3, s7, a4
                  xori         s2, a2, 718
                  ori          s2, s2, 1500
                  sra          a3, a2, t4
                  sltu         t5, a3, t4
                  sltiu        t1, a5, 266
                  sub          a6, t5, s9
                  lui          s9, 713900
                  xori         ra, gp, -926
                  sra          s8, s0, a4
                  andi         zero, t2, 1586
                  auipc        a5, 981617
                  xor          s10, ra, tp
                  sltu         t6, t4, a2
                  srl          a1, sp, a6
                  sll          gp, s2, t0
                  addi         t2, a1, 1983
                  srl          s10, a6, s1
                  xori         s9, s3, 102
                  nop
                  addi         t6, s7, 1182
                  auipc        a5, 418836
                  sltiu        s7, a3, -640
                  lui          t5, 416730
                  slli         t2, tp, 8
                  sll          ra, s0, t1
                  andi         t0, t6, -83
                  slli         t2, tp, 11
                  auipc        zero, 991582
                  andi         zero, t5, 1075
                  sub          a0, a6, a1
                  lui          t0, 267628
                  slti         tp, a6, -1232
                  add          a4, t1, t4
                  nop
                  slli         tp, s3, 5
                  and          t1, zero, s9
                  lui          a6, 778387
                  nop
                  slli         t2, t5, 24
                  xori         ra, t3, -1248
                  sltiu        a4, gp, 1100
                  lui          a5, 813228
                  sub          s4, t5, s8
                  xor          s4, t0, ra
                  sra          ra, a0, a5
                  ori          s1, t3, 424
                  slti         t6, a4, -1390
                  ori          s10, ra, 1277
                  slli         t4, t2, 30
                  auipc        t4, 808785
                  sll          s5, t3, zero
                  sltiu        a3, s2, -1118
                  or           a6, s3, a6
                  xori         zero, s5, 1608
                  sltu         s9, ra, t0
                  xor          s11, sp, t1
                  or           s9, a4, a7
                  addi         s6, s4, -589
                  sub          s9, s0, t5
                  slti         gp, s4, 1143
                  auipc        a1, 319441
                  li           t0, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           a4, 0x0
                  li           s6, 0x9716a5d2
                  li           tp, 0x0
                  li           s7, 0x80000000
                  li           t2, 0xffffffff
                  li           a1, 0xffffffff
                  li           t1, 0xffffffff
                  li           s0, 0x0
                  li           t6, 0x382f2e81
                  add          tp, t2, t1
                  nop
                  auipc        tp, 928748
                  auipc        tp, 306921
                  addi         a1, s7, -353
                  addi         a4, t2, -806
                  auipc        s0, 616880
                  nop
                  add          t0, s0, s6
                  sub          a4, t1, s0
                  auipc        a4, 6278
                  add          s0, s6, s6
                  auipc        a4, 817430
                  addi         t6, tp, 1814
                  nop
                  add          s7, t6, a1
                  add          t6, a1, tp
                  sub          t0, a4, s0 #end riscv_int_numeric_corner_stream_14
                  auipc        s5, 1007153
                  auipc        t5, 184885
                  sub          a1, a2, s9
                  slti         t4, s5, 286
                  slti         s7, t6, 1520
                  or           s0, s10, a7
                  srai         a1, t6, 4
                  andi         s1, s4, 340
                  add          t0, s1, s3
                  sra          a5, a4, s1
                  sltu         s1, zero, a2
                  ori          tp, a5, 1183
                  xori         a1, t5, -1868
                  srli         t0, a4, 6
                  sltiu        s2, s2, 1982
                  xor          ra, s3, s4
                  and          a6, s8, a6
                  srai         tp, t6, 7
                  srai         s11, a1, 14
                  sll          a5, t5, t2
                  slti         zero, ra, 382
                  sltu         gp, a0, a2
                  auipc        s2, 899554
                  or           t3, a4, t5
                  or           a5, gp, ra
                  nop
                  sltu         tp, sp, s7
                  lui          a3, 603851
                  ori          tp, s8, 626
                  andi         a4, t5, 1287
                  slt          a5, a7, t2
                  add          a6, s5, a2
                  andi         s0, s9, 1223
                  srl          a0, s6, s6
                  slli         a0, a1, 30
                  srai         t3, s1, 27
                  addi         t5, a5, -743
                  slt          t5, a3, gp
                  sltu         a5, a2, a6
                  slli         s6, a6, 0
                  slt          a1, s9, s2
                  or           t6, s2, t3
                  srli         sp, sp, 31
                  addi         tp, gp, -1781
                  ori          t1, s2, 1326
                  sra          a4, t6, a3
                  sub          t6, t3, s3
                  slt          t3, ra, s1
                  sltiu        sp, t1, 279
                  and          t4, t3, a6
                  auipc        a5, 843602
                  or           s4, t1, s9
                  ori          s5, s3, -388
                  srai         gp, s9, 6
                  andi         sp, t3, 1063
                  sltu         s0, a4, a3
                  ori          a6, t4, -1970
                  add          a3, a0, s3
                  addi         s4, a5, -1478
                  slt          s6, s11, a2
                  srl          s2, gp, a0
                  xori         s11, s5, -1307
                  xor          s0, s5, ra
                  nop
                  andi         s9, ra, 611
                  sll          s11, a1, a0
                  sra          s0, a3, a6
                  srli         tp, t0, 28
                  sub          t5, s7, t6
                  slli         ra, s1, 19
                  auipc        sp, 433320
                  slli         tp, s5, 0
                  slti         tp, sp, 1124
                  sra          s7, s3, t6
                  and          t4, s1, s9
                  srl          zero, a1, t1
                  or           t6, s5, a2
                  srl          sp, s9, a7
                  andi         a6, s8, -122
                  or           s11, s4, s11
                  sll          s8, t1, s5
                  andi         t2, s5, 373
                  lui          s8, 59182
                  sub          t5, sp, s5
                  sltiu        a6, t4, 1233
                  srai         gp, a5, 0
                  add          tp, sp, tp
                  addi         s10, t3, 830
                  sub          t2, s9, a0
                  nop
                  ori          sp, a4, -2029
                  add          a6, a0, a5
                  sltu         t2, a6, tp
                  lui          s7, 768727
                  sltiu        s8, s4, -1713
                  xor          a4, a5, a5
                  or           zero, tp, t0
                  sltu         s7, a4, tp
                  sltu         s1, a6, t5
                  sltiu        a4, t6, -286
                  srl          zero, a4, s10
                  xor          t1, a5, s9
                  lui          t0, 529606
                  lui          gp, 525877
                  xor          s11, s1, zero
                  auipc        s1, 325896
                  slti         zero, t6, -1234
                  srli         s0, t6, 6
                  ori          s5, t2, 1443
                  sltu         gp, s10, ra
                  and          a0, a6, a3
                  add          a3, ra, t6
                  lui          a3, 710636
                  add          s10, s0, a6
                  sll          t1, a0, sp
                  auipc        t1, 270494
                  lui          s1, 193053
                  slli         gp, a0, 31
                  sub          tp, t0, a6
                  and          t6, s11, s4
                  nop
                  addi         a1, a4, -360
                  srli         t2, sp, 19
                  sub          s1, gp, t1
                  xori         tp, a6, -926
                  sltiu        s2, s11, 996
                  sra          s2, t5, a0
                  or           t6, a6, a1
                  nop
                  slti         gp, a1, 1638
                  addi         sp, gp, -1033
                  add          s8, a5, a4
                  slli         s9, s7, 20
                  sra          a6, s11, t2
                  nop
                  slli         a6, a5, 24
                  add          s2, s1, s7
                  slli         s10, sp, 3
                  add          t3, a4, s4
                  and          s11, a1, gp
                  andi         s5, t6, 1608
                  xori         t3, gp, 1821
                  srai         s0, gp, 24
                  addi         tp, s6, -478
                  slt          t4, a5, t3
                  add          s2, s8, a4
                  and          a0, s1, t6
                  lui          t2, 689190
                  sll          t5, a4, s7
                  slti         s0, s11, 1164
                  slli         tp, s11, 15
                  sub          t0, s8, t4
                  sub          s5, a7, a7
                  xori         tp, a7, -920
                  addi         s4, t5, 1659
                  sra          t1, zero, s8
                  slli         gp, t1, 25
                  srli         s9, gp, 15
                  lui          t4, 688794
                  xor          a0, t1, s1
                  lui          a5, 160305
                  xor          tp, sp, a2
                  addi         s11, a7, -58
                  ori          s0, a0, 1057
                  sub          s7, t5, s11
                  sltiu        s9, sp, 786
                  sll          s9, a1, t6
                  add          s0, t4, t0
                  nop
                  nop
                  srl          t1, s4, zero
                  slli         tp, s4, 31
                  auipc        a3, 561264
                  ori          s5, t1, 887
                  srli         t6, a5, 17
                  nop
                  slt          t0, s8, ra
                  slti         t3, t2, -2039
                  sra          a4, a6, s3
                  slli         t6, t2, 31
                  addi         a3, s3, -1198
                  nop
                  sll          ra, s0, t6
                  sltiu        s0, s9, 1233
                  andi         sp, zero, -246
                  slti         s1, s11, 114
                  sra          tp, a6, gp
                  sub          s4, t3, s1
                  sub          a4, s10, s11
                  slli         s8, s2, 9
                  sltiu        t0, a0, 1931
                  addi         gp, s6, -334
                  add          t6, a3, zero
                  xor          ra, a6, s7
                  add          s4, s6, tp
                  nop
                  nop
                  or           s11, s0, s11
                  lui          t1, 330920
                  slt          t1, a4, a0
                  sub          s11, zero, s9
                  slli         t4, t1, 13
                  lui          t0, 128530
                  and          t3, t6, s0
                  sra          s10, t0, gp
                  and          ra, t2, s3
                  xor          s11, s5, a3
                  lui          a5, 898381
                  sll          t5, t4, s11
                  addi         sp, zero, 361
                  sltu         sp, s5, s2
                  add          gp, t3, gp
                  xori         s0, sp, -1105
                  addi         ra, a7, -1842
                  auipc        s11, 294795
                  xor          s9, ra, s6
                  srai         t0, s10, 27
                  auipc        s7, 646742
                  srl          a0, s6, s7
                  sub          t3, s0, t1
                  slti         s1, sp, 942
                  srai         s7, ra, 29
                  add          t4, t2, s8
                  addi         sp, s8, 339
                  slti         tp, s2, 1052
                  and          s6, a0, s5
                  xori         a0, gp, -1460
                  or           tp, t0, a3
                  or           s1, s3, s8
                  sll          s9, s3, t6
                  srai         s1, a5, 9
                  srai         s9, t2, 15
                  srai         s8, a7, 26
                  srai         t5, s0, 12
                  ori          a6, s4, -1029
                  xori         t2, s8, -720
                  ori          s11, t4, 1718
                  slt          a1, t6, tp
                  ori          t6, t2, -2046
                  srai         s2, t6, 12
                  srli         s8, t6, 12
                  sub          s10, a7, a2
                  sltu         t5, a3, zero
                  or           a5, s1, t4
                  srli         s4, s5, 3
                  xor          t2, a0, tp
                  sltiu        s1, a5, -1709
                  sra          s1, s9, a7
                  slli         s9, s7, 21
                  sra          s1, t3, a2
                  srai         gp, a5, 0
                  addi         s1, t4, 731
                  nop
                  slti         t3, t3, 1649
                  srl          s0, s7, t4
                  srli         s5, s5, 14
                  or           a6, s9, t4
                  lui          s2, 704416
                  slti         s0, t0, -1984
                  srl          gp, s3, a3
                  slli         t6, s10, 2
                  nop
                  sub          s1, a7, t0
                  srl          s7, ra, t2
                  sub          zero, a0, t6
                  srai         s0, t1, 11
                  sltiu        t4, tp, -2043
                  ori          s5, a3, 256
                  srl          a1, t6, t3
                  ori          s11, a6, 685
                  or           t0, s9, s3
                  xor          s7, a3, t5
                  sll          a6, gp, s10
                  sltiu        t2, zero, 1648
                  or           a4, s6, s0
                  ori          t2, ra, -18
                  sub          s1, t2, t2
                  or           t2, s9, s11
                  add          s7, s11, a0
                  nop
                  sltiu        a0, a6, -447
                  andi         a1, gp, -2016
                  addi         t0, t5, -1556
                  nop
                  lui          s7, 874805
                  slt          t4, t1, s1
                  andi         s6, a5, 680
                  or           t3, s1, t3
                  slti         a5, zero, 123
                  andi         t4, s6, 18
                  srl          a6, a5, t6
                  andi         t0, t5, 895
                  ori          s6, s2, -409
                  sll          s2, zero, t5
                  srl          t2, a4, t4
                  nop
                  xori         t6, a0, 690
                  srli         t0, s1, 28
                  add          s1, s10, a3
                  add          s11, a1, s6
                  sub          s1, a0, s2
                  sll          s8, ra, s5
                  xori         t5, s2, 482
                  or           t2, t0, t1
                  sll          s4, s7, s3
                  sltu         sp, s5, gp
                  slli         a3, s1, 12
                  ori          t4, a7, -1185
                  xor          zero, a3, s5
                  lui          t2, 270439
                  slt          a6, s5, s7
                  and          t0, a3, t1
                  sltu         zero, zero, s5
                  slti         s0, a5, 293
                  slti         t1, s1, -1385
                  nop
                  slt          a6, s8, s8
                  srai         t4, t1, 13
                  sra          tp, gp, s0
                  xori         ra, zero, -805
                  sltu         ra, a7, t3
                  ori          s8, s2, 1482
                  srli         t1, s1, 11
                  add          s2, s5, sp
                  and          a1, a6, t4
                  add          a4, t3, s9
                  sub          t2, s10, s8
                  sll          s11, zero, s1
                  sra          s5, t0, gp
                  srli         a5, s10, 17
                  slli         s11, s1, 19
                  andi         t1, a0, -1442
                  sltu         a3, s0, a7
                  xor          t4, s9, zero
                  slli         t6, a2, 7
                  sltu         s4, a2, t0
                  sltiu        a4, zero, -245
                  sltiu        t2, t6, 1098
                  ori          sp, a2, -1646
                  sll          t1, a7, a7
                  xori         s9, s2, 612
                  ori          t0, t1, -804
                  srai         t4, t2, 4
                  sltu         zero, a7, a5
                  ori          a3, a0, 954
                  sltiu        s8, gp, -666
                  ori          s4, s11, 605
                  or           s1, s2, zero
                  or           sp, s3, s4
                  andi         s9, s0, 19
                  sll          zero, t1, s1
                  slli         s2, t1, 11
                  and          gp, zero, sp
                  auipc        t1, 555493
                  sltiu        s1, t3, -1929
                  andi         s7, s0, -1669
                  or           t2, a6, s1
                  srl          zero, s1, tp
                  and          s8, s3, s11
                  xori         t0, s1, 1314
                  slti         s10, s9, 1082
                  slti         zero, tp, -576
                  xori         ra, t1, 124
                  slli         zero, s11, 4
                  sub          s11, tp, tp
                  sll          s0, s9, s6
                  auipc        a4, 126521
                  srli         a3, s5, 19
                  xor          a3, a7, t5
                  ori          s4, s0, -1297
                  xori         t6, gp, 986
                  or           t0, gp, s7
                  slli         s10, s3, 31
                  and          s6, tp, tp
                  auipc        a4, 385729
                  or           t2, s11, t6
                  andi         s8, ra, 1712
                  andi         a6, t6, -1589
                  and          sp, a0, a6
                  srai         s6, a4, 9
                  addi         t1, t3, 227
                  ori          s6, s6, -1519
                  sltiu        tp, s5, -1880
                  lui          gp, 25432
                  lui          s10, 256716
                  sub          a4, s7, s1
                  or           a6, ra, a6
                  lui          s8, 994527
                  sll          t5, s1, t1
                  or           t5, zero, s1
                  sub          s11, s1, gp
                  add          s1, a1, t4
                  auipc        sp, 792044
                  sub          s9, t3, t5
                  sra          gp, s11, s10
                  or           s1, tp, t0
                  andi         a5, s9, 109
                  lui          s8, 447624
                  andi         s4, s4, -17
                  and          s8, a6, s3
                  sra          s5, s8, t2
                  xori         a0, zero, -1559
                  sub          s1, a7, s3
                  sltiu        t5, s9, 1476
                  sra          s1, s8, t3
                  andi         t0, s11, 885
                  srli         a5, t3, 3
                  sra          s0, s11, s4
                  xori         s8, s7, 1933
                  xor          t3, ra, s1
                  ori          s11, a1, -1028
                  slti         a5, tp, -577
                  sll          t5, s4, t1
                  srl          s6, s0, a0
                  addi         s1, t3, 1633
                  slli         a5, t1, 18
                  andi         t3, t2, 24
                  srl          s9, a1, t0
                  auipc        gp, 988862
                  auipc        ra, 407707
                  and          ra, t0, t0
                  lui          t5, 992209
                  slli         s1, t6, 6
                  srli         s11, s10, 21
                  slli         s9, s0, 1
                  ori          t6, zero, 812
                  slti         s11, t0, -1222
                  add          t3, s3, sp
                  sub          t4, t4, s11
                  sub          ra, a1, t6
                  addi         gp, t2, -973
                  slt          sp, s2, t2
                  xori         t5, a3, -1720
                  slt          s0, a3, a1
                  sltiu        s2, s9, 1356
                  srai         t2, a5, 1
                  lui          a3, 469475
                  and          s1, t2, a5
                  addi         a3, t4, -207
                  sub          sp, s3, s7
                  slt          tp, s8, gp
                  addi         t4, t3, -782
                  sll          a0, s0, ra
                  xori         t1, s8, 312
                  sltiu        s9, s7, -86
                  and          t1, s0, s3
                  sll          t6, t0, t4
                  sub          tp, t6, s4
                  slti         a5, zero, 1900
                  slti         s2, s8, 2041
                  sra          t1, s8, sp
                  andi         t2, s4, -460
                  nop
                  sll          a0, gp, a2
                  and          a3, a0, t1
                  nop
                  auipc        s1, 60675
                  nop
                  nop
                  sll          s7, s10, t2
                  auipc        t3, 500523
                  sub          a5, s8, t2
                  slti         zero, zero, -967
                  xor          s0, s8, a7
                  sltiu        s1, s6, 1237
                  sub          t6, a4, zero
                  sltu         s0, t6, zero
                  srai         t3, s8, 3
                  xori         s11, a6, 1893
                  slt          t3, s4, t6
                  slli         t3, s4, 1
                  and          s7, t0, tp
                  auipc        a6, 485895
                  auipc        s0, 800997
                  sltiu        s6, s7, -1320
                  sll          s7, t3, sp
                  lui          s8, 638859
                  or           a6, tp, sp
                  slt          t5, s0, a0
                  sll          a1, a6, s8
                  sltiu        s10, s4, 1540
                  sub          a5, t0, a1
                  nop
                  addi         tp, a0, 1643
                  slt          tp, s11, a5
                  xor          a5, a3, a6
                  sub          s6, s8, s10
                  slti         a6, gp, -1451
                  sub          s5, a2, s1
                  add          s6, tp, t1
                  and          t3, s6, a2
                  sltu         a4, zero, a6
                  nop
                  srai         t4, t0, 21
                  ori          t1, s6, 1247
                  lui          gp, 865612
                  slti         t5, a0, 695
                  auipc        t2, 542578
                  slli         t4, s9, 23
                  sra          t1, t5, zero
                  srl          s9, t2, a1
                  sll          s10, zero, a6
                  or           tp, s0, zero
                  sub          t5, s5, a1
                  srli         s0, a5, 6
                  lui          t6, 279722
                  and          t6, s5, a4
                  slti         t3, s2, 424
                  sub          s8, s5, s5
                  ori          a5, a3, 585
                  xor          s4, t5, tp
                  slli         tp, a5, 5
                  slti         s5, s3, 1064
                  and          t3, s8, a1
                  auipc        t1, 197948
                  andi         a3, s4, 890
                  xori         ra, t6, -1881
                  srl          s5, t2, a7
                  nop
                  sll          s11, a4, a2
                  nop
                  sub          tp, s4, s7
                  xor          t2, s5, zero
                  xor          s2, s3, s4
                  or           sp, t2, t2
                  addi         a6, s4, -1583
                  srli         a3, gp, 27
                  xori         tp, t3, 1656
                  sltiu        s9, s5, 1640
                  ori          s2, s8, -692
                  xori         s1, t3, 1439
                  srai         tp, a3, 0
                  srl          s2, s2, a7
                  slt          tp, t1, s4
                  sltu         gp, a6, a2
                  slli         t5, a6, 25
                  addi         t2, s8, -1
                  srai         t6, s6, 28
                  sll          zero, a3, a0
                  add          t0, t3, ra
                  slti         s9, s6, 1658
                  andi         a5, t6, 522
                  ori          s7, s4, -1885
                  addi         t1, s9, 226
                  sltu         s5, s3, s10
                  xor          t2, s3, t6
                  sltu         s9, s11, t0
                  and          s7, s0, s6
                  addi         sp, a1, -1926
                  sub          a0, gp, s5
                  addi         t1, t3, 2027
                  nop
                  slti         t2, a1, 1338
                  srli         t4, a7, 14
                  sub          s10, a7, s8
                  nop
                  and          a5, s11, t4
                  sra          tp, t2, a5
                  ori          tp, sp, 1331
                  slli         ra, s6, 29
                  sra          gp, t6, s5
                  slti         zero, t2, -1567
                  srli         t4, t4, 18
                  srli         s2, tp, 17
                  auipc        t2, 63238
                  lui          s1, 432644
                  sltiu        s11, s7, 1850
                  sltiu        t1, s10, 787
                  and          ra, tp, s0
                  slti         s4, a6, 1754
                  andi         s2, a1, 414
                  slti         s5, sp, -624
                  lui          t4, 960340
                  andi         t5, s2, 232
                  auipc        s4, 949041
                  srli         t3, t0, 31
                  sltu         tp, s0, t2
                  add          s11, s1, a1
                  slt          a0, s5, t4
                  and          tp, ra, t0
                  sltiu        t5, s1, 1141
                  and          t2, t6, t3
                  lui          ra, 807060
                  xori         t6, s1, 1113
                  lui          a1, 376019
                  andi         tp, s8, -1582
                  sub          t6, tp, a2
                  auipc        s1, 599825
                  nop
                  xor          t3, gp, t6
                  slt          ra, a1, s8
                  sra          s5, t1, a2
                  lui          t2, 210483
                  sub          ra, gp, t2
                  sltiu        t1, gp, -260
                  sltu         t0, s0, t1
                  addi         t0, t5, -1247
                  auipc        a4, 355211
                  and          t1, a4, s2
                  lui          t6, 770637
                  xori         a5, gp, 694
                  ori          s2, s5, 441
                  nop
                  sltiu        s6, s3, 1319
                  srli         s4, s10, 8
                  slt          a0, s5, s0
                  srl          s7, a5, t5
                  xor          s5, s1, t2
                  xor          s4, s4, t2
                  ori          s10, s10, 1795
                  or           t6, t4, a4
                  sltu         t4, s5, s3
                  sub          s7, s9, a2
                  srai         s4, s3, 27
                  or           a3, t5, s2
                  nop
                  sra          s4, t6, t5
                  sra          a0, a0, s10
                  slt          s2, a7, s4
                  sltu         ra, t1, s4
                  sltiu        a4, a6, 1423
                  srai         a5, s1, 18
                  and          s11, s0, t5
                  ori          a3, a4, 1733
                  slti         a6, s10, -849
                  slt          s9, zero, zero
                  slli         t1, t4, 11
                  and          t6, ra, a4
                  andi         a4, a1, 1032
                  lui          t6, 299499
                  addi         s5, s3, -1441
                  sltu         a4, s2, tp
                  sltu         a4, s10, s9
                  or           a5, a0, t2
                  nop
                  xor          s0, a5, a4
                  sll          s9, tp, gp
                  sltiu        a3, tp, 716
                  or           a1, a3, t2
                  srl          t5, t6, s7
                  xor          sp, t1, t3
                  slt          s11, t6, s2
                  sltu         zero, gp, zero
                  srai         gp, t1, 16
                  sltu         a6, s6, t6
                  sltu         t4, s3, s0
                  andi         a0, s6, -1365
                  sll          tp, s1, s6
                  slli         t3, t6, 10
                  auipc        s10, 465013
                  slti         t2, a0, -420
                  or           s6, s7, s6
                  sll          t6, s11, a3
                  nop
                  slli         a5, t3, 4
                  srli         s7, s9, 25
                  nop
                  slti         s4, a1, 1042
                  ori          sp, s2, 874
                  andi         s2, s3, -251
                  sltu         s6, a4, sp
                  nop
                  sll          s6, a2, a3
                  srai         t5, a7, 28
                  lui          t1, 531481
                  srai         t6, s5, 30
                  auipc        t2, 61644
                  srli         a3, ra, 23
                  sltu         ra, t2, s4
                  slt          a1, t3, t1
                  sub          a6, sp, s11
                  sltiu        a5, a4, 939
                  sll          s10, tp, sp
                  nop
                  srl          ra, a6, tp
                  slt          s8, a7, ra
                  srl          s11, t0, a5
                  addi         a1, s8, 237
                  srl          s9, t0, a6
                  sra          a4, t3, gp
                  or           t3, a1, s4
                  andi         t4, s3, 678
                  lui          a0, 141493
                  xori         t2, s4, -90
                  srli         tp, sp, 13
                  add          t6, t6, gp
                  sltiu        s7, gp, 1134
                  or           s7, s10, t5
                  xori         s8, a4, -1240
                  srl          s6, gp, t5
                  srl          ra, a5, s10
                  sub          s6, s3, s11
                  sltiu        a3, t5, 1485
                  andi         a1, s9, -1356
                  auipc        s9, 426379
                  slli         tp, ra, 29
                  add          t4, a7, s2
                  and          a6, gp, t2
                  sll          s7, sp, a0
                  sra          s1, t5, s11
                  slt          t6, s10, s6
                  slti         t4, t4, 208
                  auipc        s5, 652522
                  auipc        ra, 825306
                  sltiu        t5, t0, -262
                  sll          s9, ra, gp
                  sub          s9, s2, s8
                  xor          s4, t6, a0
                  andi         t3, a7, 1768
                  slti         s10, zero, 326
                  xor          s6, s2, s5
                  srli         a4, s10, 0
                  andi         a1, s3, -1100
                  nop
                  sub          s5, a4, s1
                  auipc        zero, 125492
                  xori         a0, a4, 1967
                  srli         a0, s3, 19
                  andi         sp, s1, -68
                  sra          sp, t6, s6
                  sll          a1, zero, s0
                  srai         t4, t4, 6
                  xori         s1, t3, 1216
                  slli         t3, t1, 23
                  andi         t4, t6, 2006
                  slt          t0, s0, s3
                  add          s2, a0, a2
                  ori          a4, s2, -34
                  xor          a3, s8, s8
                  and          t3, a2, t3
                  slli         a4, s0, 26
                  lui          a0, 618880
                  srai         a3, tp, 20
                  sll          a5, a1, t4
                  sltiu        s4, s5, 231
                  xor          t5, s6, a1
                  or           s9, a7, s11
                  ori          t1, t5, 1550
                  slti         a5, t6, -1637
                  slli         s5, a1, 14
                  sra          t0, t5, s8
                  srai         a3, t1, 3
                  auipc        s6, 962660
                  srai         a6, a4, 22
                  sll          t5, s6, t3
                  ori          gp, t5, -1317
                  or           t0, s8, t0
                  sub          t0, s5, a4
                  nop
                  nop
                  nop
                  add          s10, t2, s2
                  or           s1, t1, ra
                  slli         a3, t5, 3
                  auipc        t3, 940119
                  sub          s7, a6, s1
                  slli         tp, t4, 12
                  addi         gp, s9, -762
                  or           s4, gp, t4
                  sra          t6, s0, a7
                  auipc        t0, 550089
                  sltiu        s2, a7, -98
                  xori         s0, s4, 1305
                  lui          zero, 935294
                  xor          a5, a5, t6
                  sltu         t0, a6, gp
                  srli         a0, a4, 20
                  or           t4, a7, s8
                  slt          t5, gp, s1
                  add          t6, a4, s10
                  sltiu        ra, s7, -289
                  slti         t3, s11, -1466
                  sub          a1, a0, t0
                  slt          s2, t1, s2
                  slli         s10, a3, 21
                  sra          s11, a6, s4
                  auipc        s1, 421320
                  srl          a6, ra, t5
                  srl          t2, a3, s6
                  srl          s9, a7, s9
                  srai         tp, ra, 28
                  srl          s7, a1, t1
                  srai         t6, t0, 6
                  andi         ra, s9, 559
                  srai         s5, a1, 17
                  srl          s5, s2, s8
                  xor          tp, a7, s2
                  srl          s9, a7, a6
                  xor          t1, s1, s0
                  slt          t3, s7, a0
                  ori          t1, t6, -315
                  lui          s1, 9381
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           t2, 0x0
                  li           s5, 0xc56ba373
                  li           a6, 0x80000000
                  li           t3, 0x0
                  li           s11, 0xffffffff
                  li           a4, 0x80000000
                  li           s10, 0xffffffff
                  li           a5, 0x80000000
                  li           s8, 0x80000000
                  addi         t2, t2, -612
                  addi         t2, s8, -501
                  nop
                  auipc        s11, 13875
                  add          a5, s10, t3
                  sub          a4, s8, a4
                  addi         s8, a5, 97
                  sub          a4, t3, t3
                  nop
                  add          s5, a6, t2
                  addi         t3, s4, 1849
                  addi         s4, s4, 2020
                  lui          a4, 348307
                  auipc        s5, 695454
                  auipc        s8, 710776
                  add          s10, a4, a4
                  sub          a4, a4, s5
                  lui          s5, 690394
                  auipc        s4, 286371
                  lui          s10, 837165
                  auipc        s10, 455639
                  addi         s11, a5, -1931
                  addi         s8, s4, -1968
                  sub          s4, t3, t3
                  auipc        t3, 966886 #end riscv_int_numeric_corner_stream_0
                  slti         s8, s7, 1390
                  sltiu        ra, t0, 1658
                  andi         s11, t3, -1673
                  nop
                  addi         a0, a0, -261
                  and          t4, a5, tp
                  xor          s1, t5, a5
                  sltiu        t1, tp, -316
                  sltu         s8, t1, s8
                  srli         s8, t2, 30
                  andi         s1, t4, 156
                  lui          s1, 20955
                  andi         s2, t5, 1870
                  andi         t3, s6, 193
                  slli         a6, a7, 1
                  slli         a0, s11, 17
                  and          t1, s5, s6
                  and          t0, s6, t2
                  addi         s7, a2, 331
                  and          a4, a1, s10
                  add          s8, s5, gp
                  slt          a4, a2, s9
                  xori         s11, s7, -621
                  li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           sp, 0x0
                  li           a5, 0xffffffff
                  li           s10, 0x80000000
                  li           s2, 0x80000000
                  li           tp, 0xfe0ec85c
                  li           s4, 0xac20693
                  li           s11, 0xffffffff
                  li           t3, 0xffffffff
                  li           s8, 0xffffffff
                  auipc        s8, 902646
                  sub          a6, s2, t3
                  lui          s11, 295813
                  addi         s2, sp, -1169
                  nop
                  addi         sp, a5, 183
                  addi         s10, sp, -622
                  add          t3, a6, s4
                  add          s4, s11, a5
                  addi         s4, a5, -1
                  lui          s4, 57496
                  sub          sp, s10, tp
                  nop
                  sub          a5, s8, tp
                  nop
                  sub          s11, a6, tp
                  nop
                  add          a5, a6, s8
                  nop
                  auipc        a6, 14177
                  nop
                  add          t3, a5, sp #end riscv_int_numeric_corner_stream_4
                  add          t1, t2, s3
                  srai         t6, s3, 25
                  srl          t0, gp, s7
                  srai         a3, t6, 21
                  srai         s4, t5, 21
                  sll          t5, t1, s1
                  ori          s2, tp, -364
                  add          s8, t1, s5
                  srl          t3, a0, t0
                  srai         a5, t0, 25
                  sra          s1, s9, t6
                  and          t0, a2, s10
                  slt          s4, s7, a7
                  sll          s5, ra, s5
                  sra          s9, s3, a6
                  andi         t5, t2, 560
                  nop
                  slti         t0, tp, -811
                  auipc        zero, 898263
                  ori          t4, s7, -1173
                  sltu         a6, s4, s11
                  sub          s0, ra, a2
                  sra          t1, s0, t4
                  or           s9, s8, a1
                  lui          s10, 555342
                  nop
                  srl          s7, tp, a7
                  sltu         s8, s4, s8
                  srli         t3, t3, 17
                  add          gp, t5, s2
                  ori          s7, zero, 1985
                  slli         a1, t1, 26
                  srli         a4, s5, 5
                  sll          s8, t0, t6
                  and          t1, t6, zero
                  sra          s7, a0, a3
                  xor          a4, s2, s1
                  nop
                  sub          a0, a6, s10
                  sltu         s7, s5, s8
                  auipc        t4, 817844
                  auipc        t0, 58105
                  nop
                  srl          t4, gp, t1
                  slti         tp, s3, 256
                  slli         a5, t2, 19
                  nop
                  ori          t3, s11, -635
                  sub          gp, a2, s3
                  slli         s4, s2, 22
                  sltiu        a0, t3, -1855
                  srai         s2, gp, 25
                  srli         s4, s7, 17
                  slt          s5, t6, s8
                  sltu         zero, s5, sp
                  slti         a5, s9, 760
                  auipc        s6, 802417
                  add          a0, a7, a4
                  sltu         s5, a3, zero
                  and          t5, s2, s0
                  xori         a4, s4, 1466
                  sltiu        t0, a5, -1372
                  sra          a3, a2, s1
                  slti         ra, sp, 206
                  or           s2, sp, tp
                  andi         s5, a0, 1973
                  slt          s5, a4, a0
                  slti         s2, s9, -2035
                  andi         t5, a1, -1167
                  lui          a6, 831344
                  nop
                  and          s1, s4, tp
                  lui          s8, 9298
                  xor          gp, t6, s9
                  srli         s1, gp, 2
                  or           s11, s7, t4
                  and          s11, a5, t4
                  xor          a4, ra, sp
                  xor          sp, s9, s3
                  and          ra, a2, s9
                  and          t6, tp, s11
                  slli         s5, t0, 9
                  nop
                  lui          s2, 376359
                  add          s6, a5, s5
                  sra          a6, t0, tp
                  nop
                  slt          t0, s11, s8
                  sltiu        a5, t2, 1803
                  ori          t1, s6, -12
                  sll          t1, s4, s10
                  slti         s0, t5, 267
                  srai         s8, t3, 0
                  srli         t0, a6, 28
                  addi         a5, s11, 211
                  nop
                  auipc        a1, 989030
                  add          s10, t4, a6
                  lui          t3, 238529
                  srli         t0, s10, 24
                  slli         s2, s4, 23
                  andi         sp, s8, -1129
                  ori          s6, s10, 1955
                  slt          t3, tp, a2
                  srai         t3, a0, 26
                  slt          t2, s7, t3
                  and          t5, s11, t5
                  auipc        a6, 694432
                  slli         s6, s0, 22
                  slt          tp, a7, t2
                  sltiu        ra, s1, -6
                  sll          s10, t3, s2
                  ori          a6, sp, 589
                  add          ra, a7, ra
                  auipc        s4, 898497
                  auipc        a1, 485357
                  xor          t5, zero, t0
                  slli         a0, a6, 16
                  xori         gp, a3, -1884
                  ori          s9, ra, 1470
                  sltiu        t2, s5, 59
                  srai         t2, gp, 10
                  andi         zero, s5, -676
                  auipc        s6, 468026
                  srli         a1, a6, 30
                  xori         t5, t6, 1902
                  add          a3, gp, t4
                  andi         s9, a0, 252
                  nop
                  addi         s7, s3, 1379
                  sub          a6, s1, s10
                  or           a0, t2, t4
                  sra          s5, s11, s7
                  xor          s0, s1, t4
                  slli         a6, s2, 9
                  sltu         s8, a2, s10
                  sra          s10, a3, s10
                  nop
                  sra          a6, s6, s1
                  lui          s10, 836587
                  and          s5, t1, t5
                  auipc        a0, 810229
                  or           s0, a7, t1
                  srl          s7, s10, s6
                  srli         tp, a5, 9
                  sra          t4, t4, a7
                  lui          t3, 1031108
                  auipc        a6, 973678
                  add          a5, s9, s6
                  sll          s9, t3, t6
                  sll          gp, t5, s0
                  and          a0, a3, s0
                  slt          s4, a2, t4
                  add          t6, t0, s10
                  auipc        sp, 1013080
                  sltu         s6, s8, a4
                  nop
                  srli         s1, t5, 25
                  sll          t2, s4, a3
                  sll          s4, zero, t5
                  xori         s8, t1, 2043
                  srli         s5, s2, 6
                  add          t2, gp, a0
                  and          s5, t5, t0
                  ori          tp, zero, 1102
                  xor          a6, tp, sp
                  sll          t1, a3, sp
                  addi         a3, t5, 681
                  sltu         a4, ra, a3
                  lui          gp, 281074
                  sltu         t4, t2, s5
                  srl          tp, s7, s9
                  sltu         s10, t5, t4
                  srai         s10, s6, 3
                  sra          s4, a1, s7
                  srli         sp, gp, 30
                  sra          a6, s10, t3
                  sll          a1, t1, zero
                  srai         s2, a3, 29
                  sub          s11, a5, s8
                  addi         t6, a4, -183
                  auipc        s11, 412230
                  sub          a5, t4, s5
                  slli         s4, s6, 25
                  nop
                  slti         s0, t4, -390
                  xor          t1, ra, s3
                  srl          a1, a5, t2
                  xori         s2, a1, -104
                  and          a0, t1, t4
                  add          a3, s4, s8
                  sra          a5, gp, s5
                  srai         s0, t3, 19
                  sra          s4, s11, t5
                  auipc        t5, 291266
                  addi         ra, s3, 1383
                  srl          gp, s0, tp
                  auipc        a5, 999866
                  sltiu        t5, a5, -233
                  andi         a4, s6, -266
                  nop
                  sltu         t2, s6, s3
                  sub          a5, a4, a6
                  srli         a6, s11, 2
                  xor          s10, s6, t6
                  sltiu        a6, a5, -1834
                  xor          t2, s5, a2
                  xor          t6, a7, s4
                  andi         t2, a2, -424
                  or           t0, gp, t1
                  andi         s0, a0, 1995
                  slt          a1, tp, s8
                  slli         s10, zero, 26
                  sltu         t3, a4, a6
                  sra          s11, s8, gp
                  nop
                  add          t6, a6, s8
                  ori          s11, sp, 1757
                  ori          t2, gp, -1546
                  and          sp, s0, a6
                  sub          a0, s1, a6
                  sll          t0, a0, s10
                  sltu         s5, s1, t2
                  sltu         t0, a2, a1
                  srli         s6, t0, 14
                  srli         s9, s10, 19
                  slt          s6, s6, s1
                  slli         t0, s2, 28
                  xor          s8, a7, s7
                  sltiu        s10, s6, -634
                  slli         s8, a4, 4
                  add          a4, s5, t5
                  or           t3, s6, t1
                  srl          t6, t2, s9
                  slti         t5, s8, -553
                  nop
                  auipc        t4, 138331
                  auipc        t2, 753555
                  sub          a6, a5, gp
                  sltiu        s4, a0, 205
                  srai         s6, a7, 12
                  sltu         s4, a1, s1
                  sll          t5, s4, ra
                  srai         s6, s7, 23
                  sra          s11, a2, a5
                  or           s6, s8, gp
                  addi         gp, s9, 1091
                  add          t6, t4, s3
                  sub          t6, t1, s3
                  slt          t6, a1, s3
                  add          a6, a3, t6
                  ori          s4, s8, 1255
                  slt          sp, s1, t3
                  slt          s1, s0, t3
                  xor          a1, ra, t2
                  srai         a5, t4, 28
                  or           s7, a1, a0
                  add          a6, a3, s1
                  sltiu        s1, s3, -1260
                  auipc        t2, 623700
                  slli         s6, t4, 11
                  sub          s6, s9, sp
                  xor          zero, t4, ra
                  xor          s7, a1, a0
                  sll          t4, a4, s11
                  xor          a1, s1, a1
                  slt          a1, a6, zero
                  slli         zero, a1, 30
                  andi         s2, t1, -123
                  lui          t1, 856153
                  slli         zero, ra, 5
                  slti         s8, s0, 880
                  sltu         s10, t4, tp
                  xori         a0, s8, -539
                  xori         t2, a7, -1736
                  and          tp, a7, a0
                  sltu         s0, s0, s8
                  sltu         s6, s5, s11
                  xori         a3, s2, 1841
                  xor          s11, t6, t6
                  slli         a1, sp, 28
                  sltu         gp, a5, zero
                  andi         a6, t3, 475
                  nop
                  sub          t2, s6, s10
                  sltu         s6, a0, a5
                  sltiu        s6, sp, -1452
                  sll          a4, a0, a7
                  addi         tp, sp, -862
                  add          s8, s9, t2
                  sub          s10, zero, a2
                  slt          t3, s11, sp
                  sub          s6, s0, sp
                  sltiu        t1, a6, 395
                  add          t1, s9, a6
                  sub          t6, a0, sp
                  slt          tp, t4, s9
                  nop
                  li           gp, 0x218e8a69 #start riscv_int_numeric_corner_stream_12
                  li           s10, 0xffffffff
                  li           t4, 0x80000000
                  li           a5, 0xffffffff
                  li           s0, 0x80000000
                  li           sp, 0x80000000
                  li           t5, 0xa8691abd
                  li           a6, 0xffffffff
                  li           s7, 0xffffffff
                  li           a1, 0xffffffff
                  add          gp, sp, s0
                  lui          sp, 273894
                  lui          t5, 16373
                  auipc        a5, 527225
                  addi         a1, s7, -1758
                  lui          t5, 595506
                  auipc        s10, 891930
                  lui          a5, 357757
                  add          s10, a5, a1
                  addi         t4, a1, -517
                  nop
                  nop
                  nop
                  nop
                  add          gp, t4, gp
                  addi         a5, a5, -1356
                  nop
                  lui          a1, 852231
                  addi         t5, s7, -1593
                  nop
                  auipc        s7, 711519
                  nop
                  addi         sp, s7, 615
                  auipc        a5, 148059
                  sub          a5, s0, t4
                  sub          a1, gp, s10
                  lui          a6, 736361
                  addi         t4, sp, 1932 #end riscv_int_numeric_corner_stream_12
                  xori         t0, sp, -1860
                  slli         s5, t2, 1
                  sltiu        s6, a0, -441
                  addi         sp, s9, 1173
                  addi         t1, t1, 1900
                  and          t5, t6, a7
                  lui          t0, 419670
                  lui          zero, 595472
                  srli         s6, s5, 14
                  xori         gp, a1, 28
                  srl          zero, t1, sp
                  addi         s8, t0, 1284
                  and          a0, gp, s9
                  srai         t0, sp, 4
                  srai         s0, a5, 4
                  auipc        ra, 38504
                  sltu         t2, a6, t4
                  add          a5, t0, s4
                  add          t3, sp, a1
                  add          s5, a2, tp
                  slli         a6, s7, 0
                  andi         sp, tp, 347
                  sltu         t0, a7, s2
                  sltu         s1, t1, s2
                  xor          s8, s5, s11
                  xor          a1, s6, tp
                  lui          s7, 306747
                  srl          t0, s1, t0
                  srai         a6, s1, 21
                  sltiu        t4, t4, 181
                  srai         s7, a5, 16
                  srli         t0, t6, 19
                  nop
                  sub          t6, s7, s1
                  sltu         t5, a4, t4
                  srl          a5, a4, zero
                  sub          t3, t1, s7
                  slti         s1, s7, 1188
                  srai         a3, a7, 14
                  sll          s8, sp, s3
                  addi         tp, a6, 276
                  add          s6, tp, s10
                  slt          zero, s9, zero
                  add          zero, a5, s3
                  srl          t0, t5, tp
                  sltiu        s2, a7, -1375
                  sltu         s1, s8, s9
                  slt          gp, s6, s0
                  sltiu        s10, a4, -856
                  srl          a1, t4, gp
                  sra          s0, s9, a7
                  or           a5, ra, ra
                  or           s5, s7, t4
                  sll          a6, a3, s8
                  ori          a5, t6, 1601
                  slli         s9, a5, 10
                  sltu         s9, s2, a4
                  sll          sp, zero, s4
                  nop
                  sll          s5, a4, sp
                  lui          t0, 27190
                  add          t5, s3, t4
                  nop
                  auipc        a1, 274510
                  lui          gp, 1000883
                  srai         t4, tp, 21
                  auipc        a1, 501470
                  sub          t3, a6, a7
                  srai         s7, a5, 20
                  lui          gp, 415958
                  nop
                  ori          s7, t5, -616
                  and          tp, s8, t4
                  sltiu        s4, a7, 345
                  srl          t6, a5, t6
                  xori         t4, a3, 667
                  ori          s2, s9, 1503
                  andi         zero, s11, -796
                  ori          ra, s6, 2031
                  sub          zero, s4, t3
                  sra          a6, s2, t5
                  ori          s2, t5, -1145
                  sra          a0, s1, s2
                  sltiu        a1, t3, 1431
                  lui          a0, 525327
                  or           s9, s6, tp
                  slli         s0, t3, 28
                  slt          s4, t0, t4
                  sra          t6, a6, t3
                  slt          s9, tp, s5
                  and          s5, t4, t3
                  srl          tp, t4, a7
                  sra          gp, s4, ra
                  or           t2, a2, tp
                  srl          zero, s3, a6
                  addi         a3, s5, 768
                  andi         a6, s11, 398
                  xori         s0, tp, 1157
                  slli         s1, a0, 12
                  xori         gp, a7, -339
                  xori         s1, zero, 483
                  slli         a3, t2, 2
                  slt          t0, s8, zero
                  sub          t5, gp, s7
                  and          t2, s8, s8
                  sub          ra, s3, s2
                  srai         a1, a7, 3
                  auipc        sp, 154372
                  auipc        s1, 137601
                  andi         a0, s7, 459
                  sltu         tp, s9, t3
                  sltiu        s4, s6, -1770
                  ori          s11, s1, 531
                  slt          s8, a2, s1
                  lui          s10, 328927
                  sub          s8, s3, s6
                  and          t1, s7, t4
                  nop
                  slli         ra, s10, 14
                  lui          a4, 525503
                  xori         s4, s1, -301
                  srli         t3, t0, 11
                  auipc        gp, 447480
                  slt          a3, s8, s9
                  slli         a3, a0, 3
                  slli         s11, a1, 0
                  sub          t4, s5, t2
                  slti         t4, t1, -1430
                  xori         sp, s6, -1893
                  slti         zero, t3, 1396
                  addi         s8, s10, 762
                  or           t3, s4, a6
                  andi         zero, t4, -1795
                  andi         t2, a0, 1183
                  slli         s2, a5, 21
                  sra          gp, s1, s6
                  slli         a4, s11, 11
                  auipc        s5, 231256
                  nop
                  slt          sp, a1, s5
                  sra          t6, s11, s3
                  addi         t4, t2, -348
                  srli         zero, s5, 30
                  or           a0, s9, t4
                  nop
                  sub          t1, a7, s8
                  sll          ra, a7, s8
                  srl          t0, a1, a2
                  lui          s8, 266165
                  auipc        t2, 6551
                  addi         s11, a4, 1210
                  xori         tp, a0, 1967
                  xori         gp, s7, -1265
                  sll          s2, t6, t4
                  auipc        tp, 227657
                  lui          zero, 881697
                  xori         s9, s1, 607
                  add          a5, s6, s2
                  xori         a0, s3, 880
                  auipc        s2, 3732
                  sltiu        s5, a6, -1719
                  sra          s8, a6, a3
                  sltu         a6, t5, s11
                  srai         s1, s4, 17
                  srai         s5, s7, 17
                  sub          s0, s2, s7
                  sltiu        a3, gp, 278
                  and          t4, t3, a7
                  srl          s4, s10, s3
                  auipc        a6, 384707
                  and          a1, t1, s8
                  srai         ra, a0, 21
                  slt          s8, gp, s2
                  srli         s6, s7, 16
                  sltu         s8, t0, t6
                  and          a0, s8, zero
                  srli         ra, s9, 9
                  andi         a5, s3, -1410
                  sub          s10, s4, s3
                  xor          s1, s6, s5
                  andi         ra, s4, -47
                  auipc        t3, 119784
                  or           s4, a7, zero
                  add          ra, sp, gp
                  nop
                  nop
                  xor          s7, a4, a2
                  or           a6, t6, s3
                  add          t1, t2, s9
                  andi         a4, s1, -1626
                  andi         t5, s11, 2019
                  srli         a0, tp, 2
                  slti         t3, s5, 268
                  sra          s11, tp, t1
                  slti         s5, t6, -1527
                  lui          s1, 283524
                  sltiu        s2, t4, -1265
                  slt          t0, gp, a0
                  sltu         s10, s4, a0
                  nop
                  auipc        s11, 219658
                  andi         t1, a3, -1453
                  nop
                  sll          s6, s8, s9
                  andi         s2, s5, 696
                  slti         tp, a5, -236
                  slli         t3, s2, 3
                  add          a6, s6, a0
                  addi         a1, a4, 419
                  sra          tp, s2, tp
                  sltu         zero, t0, ra
                  add          gp, a4, t5
                  lui          s1, 849028
                  sub          s0, a3, zero
                  nop
                  sll          s8, zero, s11
                  sltiu        s4, a7, -359
                  slli         a4, s11, 11
                  sll          s2, gp, s7
                  slt          t4, gp, s10
                  or           t0, s6, s8
                  slti         t2, a5, 1995
                  sll          t4, a7, s10
                  sll          gp, s4, a3
                  srli         a6, t4, 14
                  slt          t5, a4, a6
                  auipc        t1, 891905
                  sltu         t5, t3, t3
                  lui          a0, 1028178
                  slti         s6, a1, 271
                  slt          zero, s3, t0
                  srl          a6, zero, t1
                  xor          t0, a7, t3
                  xori         t0, ra, 658
                  slt          s4, a6, s2
                  xor          s5, t0, s10
                  sltiu        a0, a1, 329
                  nop
                  sub          a5, tp, a0
                  srai         t5, s0, 19
                  srli         s0, s10, 1
                  sra          zero, s7, s4
                  xor          a4, t6, a2
                  sra          t2, sp, s11
                  sltiu        s1, t1, 2012
                  lui          a5, 928148
                  sub          a5, s2, t3
                  xor          t0, t2, tp
                  nop
                  slt          a0, t2, sp
                  add          sp, a4, t6
                  sltu         a3, s9, t2
                  sra          s0, t5, s8
                  sra          s9, s11, s11
                  srl          a1, s1, tp
                  slt          gp, t3, a7
                  srli         gp, zero, 20
                  srli         s9, t0, 27
                  ori          s2, s8, -11
                  slli         t3, ra, 5
                  ori          t0, gp, 1175
                  andi         s7, s7, -1955
                  srl          a5, s2, t0
                  sltiu        t3, s3, -479
                  srai         t1, t6, 18
                  ori          t5, t2, -317
                  slti         a3, s0, 1993
                  slt          s7, t3, tp
                  sll          s1, a7, a4
                  add          s4, sp, ra
                  srli         s4, a7, 17
                  sltiu        s6, sp, 207
                  slt          s2, s5, s5
                  sub          s1, s3, s2
                  sub          s10, s11, zero
                  sltu         t3, a7, gp
                  sub          s10, s1, a0
                  or           gp, s4, s7
                  add          ra, gp, t4
                  or           s4, a5, a4
                  or           s2, t0, t0
                  sra          s0, s4, tp
                  slti         s11, s10, 1062
                  nop
                  add          s6, s9, s6
                  sra          a4, t4, s3
                  sltiu        t0, s7, -390
                  andi         a0, t3, -1494
                  and          s1, a4, s9
                  srai         t0, t2, 21
                  srli         a1, t5, 21
                  lui          a4, 878380
                  srli         s11, tp, 4
                  sll          a5, sp, t1
                  or           s1, s7, a5
                  srai         t3, s0, 20
                  or           s4, s7, a2
                  slti         s9, t4, 298
                  xor          t4, s1, t1
                  slli         tp, a6, 7
                  slli         zero, a3, 27
                  sra          s2, s2, a6
                  sll          s6, s3, s5
                  sll          a4, t4, s7
                  sll          a6, a1, a1
                  ori          a6, s10, 190
                  srl          t3, t3, t6
                  xor          s2, s7, t2
                  andi         sp, a4, 1120
                  srli         sp, a0, 13
                  and          s11, t0, t2
                  srli         s10, s11, 15
                  sltu         t4, a0, s10
                  lui          s8, 273660
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           t6, 0xffffffff
                  li           t2, 0x0
                  li           s5, 0x3eaf1e7
                  li           s1, 0xffffffff
                  li           a5, 0x0
                  li           s2, 0xffffffff
                  li           a3, 0x0
                  li           a4, 0x73b98aa6
                  li           t5, 0xce47d65d
                  lui          a5, 755623
                  nop
                  auipc        s2, 391208
                  sub          t5, s5, s2
                  lui          t5, 809278
                  sub          a4, t2, s2
                  addi         t2, a4, 2004
                  add          s2, t6, s1
                  sub          s1, s8, t6
                  auipc        s2, 452636
                  auipc        s2, 1017806
                  sub          s5, s5, s8
                  nop
                  auipc        a5, 394930
                  sub          s2, a3, a5
                  addi         a4, a3, -1015
                  sub          a4, s1, a4
                  sub          a4, t2, s1
                  lui          a5, 9793
                  add          a3, t6, a3
                  nop
                  auipc        s8, 769959
                  addi         t5, a3, 1541
                  auipc        s8, 293198
                  sub          a3, s1, s5 #end riscv_int_numeric_corner_stream_18
                  auipc        a5, 131426
                  addi         s1, s5, 249
                  lui          gp, 566837
                  sub          t3, s3, s2
                  slli         gp, t1, 21
                  sltiu        t0, s10, 1540
                  sll          a6, a2, gp
                  nop
                  addi         s10, a7, 1343
                  sltu         s8, a3, t6
                  slt          s11, a2, s6
                  sltiu        zero, s3, -1807
                  srli         t5, s8, 23
                  sltu         a1, s9, a2
                  xor          s0, t6, t6
                  addi         t5, s9, 141
                  sltu         s0, t3, t5
                  slti         gp, t1, -1439
                  slti         a5, ra, -1992
                  slt          zero, a0, a2
                  xor          ra, s9, s6
                  xori         a6, s10, 1552
                  srl          ra, s7, s7
                  sll          t5, t6, s1
                  xori         a4, a6, 905
                  srl          gp, a6, t3
                  slli         zero, s4, 31
                  sltu         s8, s0, ra
                  sltu         s0, t3, s6
                  auipc        a1, 205284
                  sra          zero, s0, sp
                  nop
                  sll          s6, t6, s1
                  addi         s9, a1, -1998
                  sltiu        s8, a7, -1262
                  nop
                  sra          zero, s0, gp
                  addi         t4, t3, 227
                  slti         tp, t4, 1645
                  or           ra, t0, ra
                  add          t6, a3, gp
                  srai         t3, s11, 9
                  andi         a5, t4, 155
                  slt          s4, s3, t6
                  ori          s11, a0, 148
                  sltu         a6, sp, zero
                  sltu         s5, s2, sp
                  and          s9, a3, a3
                  andi         a4, sp, -10
                  srli         t6, s9, 8
                  sltiu        t6, a2, -1935
                  nop
                  addi         s6, zero, 401
                  sltiu        s11, s9, 733
                  or           t4, t3, s11
                  xor          ra, s2, s4
                  xori         s7, s9, 1583
                  andi         a5, t3, -1535
                  sll          a0, t2, sp
                  slli         a4, a0, 23
                  sltiu        a3, a4, 1644
                  slti         s1, t0, 1035
                  srli         t3, t6, 30
                  sltu         tp, a4, s11
                  sll          s2, s9, tp
                  addi         ra, zero, 1126
                  lui          a4, 228872
                  srl          ra, s9, zero
                  sra          s8, t3, s3
                  slti         t0, sp, -1480
                  addi         tp, s10, -1883
                  sltiu        t0, s1, -1628
                  slt          s7, sp, t0
                  and          t1, s11, s7
                  add          a4, s8, s6
                  nop
                  and          a6, a3, s2
                  slt          a6, a1, a6
                  auipc        s5, 542400
                  xori         a5, t6, 1272
                  addi         s11, t3, 366
                  srl          zero, t6, a5
                  slt          s0, zero, s2
                  xori         zero, tp, 841
                  slli         t3, s10, 26
                  slt          tp, s10, a6
                  xori         t6, s0, -1836
                  srai         s1, ra, 16
                  or           zero, ra, zero
                  addi         s9, s6, -1204
                  slt          t0, zero, a6
                  sll          t6, s3, a0
                  addi         gp, t1, 1002
                  nop
                  sra          a6, s2, s1
                  slti         s2, s4, 950
                  xori         s11, t6, -702
                  and          a1, s0, a4
                  auipc        sp, 162145
                  sltiu        a6, t5, 1296
                  sub          gp, s3, t4
                  auipc        zero, 788320
                  sltiu        s0, ra, 1026
                  sra          s1, tp, t4
                  srai         s10, zero, 18
                  sltu         t0, a0, s2
                  srli         gp, a1, 14
                  slt          a1, a4, s9
                  srli         t1, a0, 3
                  nop
                  sltiu        t1, t3, 1238
                  srli         t0, a6, 16
                  sll          s11, s3, s11
                  add          a3, t1, a2
                  sltiu        t2, a1, 1755
                  sra          s2, zero, s10
                  xor          a6, a7, ra
                  slti         s11, t6, -814
                  auipc        s9, 439421
                  add          zero, t0, a2
                  sltiu        s11, sp, -832
                  sub          s6, s7, s8
                  srai         t2, t4, 6
                  xor          s4, a2, a0
                  xori         t4, s3, -1075
                  and          t3, s8, gp
                  srai         a3, s5, 18
                  xori         a5, s0, 1029
                  lui          t6, 367703
                  slti         t4, a6, -169
                  andi         s0, s10, -1894
                  srai         s11, a5, 19
                  srai         s9, a2, 11
                  slt          s7, ra, s11
                  and          s4, a4, s3
                  srli         a1, s11, 17
                  addi         s7, tp, 296
                  lui          t3, 733037
                  slt          s7, s9, s5
                  ori          s10, s1, -1289
                  slt          t4, sp, t4
                  slti         a6, t5, -1986
                  srai         t3, s7, 23
                  sub          t3, s5, gp
                  xor          s11, t5, zero
                  sltu         s8, a1, a1
                  xori         t3, s3, 573
                  addi         tp, s6, -261
                  srai         t3, a6, 4
                  xor          s1, a2, s6
                  srl          s2, a2, a7
                  sltiu        a6, t4, 313
                  xor          t5, t6, a3
                  sra          ra, tp, s6
                  nop
                  srai         a4, a5, 7
                  nop
                  xor          ra, s4, s7
                  sltiu        a3, s8, 1514
                  slt          ra, s4, s6
                  andi         a5, s3, 1809
                  xori         s4, t4, -1327
                  nop
                  sra          a4, s9, a0
                  sltu         a3, a0, s4
                  sra          a6, s10, t2
                  srli         t1, s8, 30
                  sra          zero, a6, s9
                  lui          gp, 578078
                  lui          t5, 983562
                  ori          t2, a3, 1972
                  sltu         s6, a5, t2
                  andi         s7, a3, 434
                  slti         t2, sp, 947
                  sll          s7, a2, s9
                  auipc        a3, 677175
                  and          t0, gp, tp
                  slti         t5, t6, 862
                  srl          s11, s0, s8
                  sra          t6, s1, s11
                  sra          s11, zero, t3
                  srl          s7, t4, a6
                  andi         t5, tp, 151
                  auipc        a1, 335732
                  srai         a3, zero, 31
                  sra          a5, t1, t4
                  srai         t6, gp, 22
                  srai         a1, a7, 24
                  sltu         s7, t3, t5
                  addi         t0, t0, 869
                  or           t1, a7, a0
                  sub          s10, a5, zero
                  xor          zero, s1, zero
                  or           t0, t1, s9
                  sra          s6, s11, s4
                  slli         a6, s2, 17
                  sltiu        t2, s9, -1515
                  srli         s6, t6, 15
                  sra          sp, s4, gp
                  or           s4, s10, sp
                  xor          s4, a1, s0
                  sra          t4, a5, s1
                  slti         a1, a2, 2041
                  srai         s9, a1, 22
                  sltu         t5, tp, s4
                  add          a6, ra, a1
                  slti         s8, t0, -272
                  lui          s6, 910225
                  srai         s4, tp, 7
                  sub          t4, a2, s2
                  auipc        a3, 90998
                  slli         s0, sp, 2
                  sub          s10, a0, s5
                  sll          s2, s8, t4
                  sltiu        s9, s7, 284
                  sll          a5, t5, s8
                  or           t3, a4, t4
                  lui          t2, 727813
                  and          zero, s3, s1
                  or           s10, a6, t3
                  or           s4, t6, t2
                  srli         t3, s5, 0
                  andi         s0, a7, 1662
                  li           s0, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           t4, 0x70f014aa
                  li           t0, 0x80000000
                  li           s9, 0xffffffff
                  li           s10, 0x0
                  li           s4, 0x0
                  li           a5, 0x80000000
                  li           a0, 0x59e344a7
                  li           s1, 0xd22544d
                  li           s5, 0x0
                  addi         s10, s9, 1963
                  nop
                  addi         s0, s0, -1431
                  auipc        s5, 715999
                  lui          s9, 659402
                  sub          t0, a5, s5
                  auipc        s1, 296704
                  add          a5, s4, s1
                  auipc        s1, 845033
                  sub          a0, a0, s1
                  add          s5, s4, a0
                  sub          s1, s5, t4
                  auipc        a5, 540467
                  sub          a5, s10, s1
                  addi         s4, t0, 1180
                  auipc        t0, 745576
                  addi         s10, s1, -1580
                  sub          s0, s10, s5
                  auipc        t0, 565818
                  add          t4, a5, s10
                  sub          s1, t4, s10
                  auipc        s10, 448293
                  add          a0, s0, t4
                  addi         s1, t4, 2019
                  nop
                  addi         s4, s1, -882
                  add          s0, a0, s10
                  auipc        s5, 248370
                  add          s5, t0, s4 #end riscv_int_numeric_corner_stream_9
                  or           sp, s4, tp
                  srai         t4, t0, 22
                  xori         s4, gp, 1452
                  srli         a0, s9, 6
                  srai         s10, gp, 2
                  sltiu        s9, s1, 1894
                  nop
                  auipc        a5, 427475
                  srai         s2, zero, 19
                  or           a0, t4, zero
                  sll          a1, s9, t5
                  auipc        t2, 403315
                  lui          t6, 973143
                  slt          ra, a4, s10
                  xori         t6, t5, -1751
                  andi         t2, a1, 755
                  srli         t2, a5, 0
                  slli         s7, gp, 12
                  slli         s0, ra, 4
                  srl          s7, s0, t2
                  slli         t1, s0, 15
                  srli         t2, a5, 4
                  xori         a3, s4, -603
                  sub          a5, s1, t4
                  sub          s11, t6, s4
                  sra          ra, t3, t4
                  sll          a4, t2, t6
                  addi         a0, s0, -638
                  ori          s0, t4, 2034
                  slli         a6, s4, 13
                  slti         s2, s3, -986
                  sltiu        tp, tp, 790
                  andi         s9, sp, 651
                  slli         tp, zero, 2
                  or           a4, gp, s9
                  lui          t2, 997925
                  auipc        s8, 503563
                  slti         t5, t0, -1167
                  sltu         a0, t4, a5
                  slli         a0, s11, 27
                  xor          s7, s6, s9
                  xori         s8, s6, 1741
                  slli         t5, t5, 26
                  addi         t3, ra, -693
                  slti         t1, t5, 808
                  lui          a4, 749000
                  sltu         s7, t6, t1
                  sltu         a0, a6, s6
                  srl          t5, a2, s7
                  srli         s11, a4, 0
                  addi         a5, a5, -513
                  slt          s8, s6, a3
                  and          s7, a3, s8
                  sll          sp, a5, sp
                  sll          t1, s10, s1
                  sltiu        tp, t6, 1003
                  and          s0, s1, a4
                  and          zero, tp, s1
                  andi         a3, s7, 589
                  xori         s10, a2, 1069
                  auipc        a4, 990057
                  sra          s6, t3, gp
                  addi         a5, t0, 679
                  auipc        a1, 859183
                  srl          t2, s9, a6
                  sltu         a5, a5, a1
                  ori          t1, s7, -1065
                  sub          a1, a0, s1
                  slti         s11, t3, -14
                  addi         s8, s8, 605
                  addi         s6, s0, 477
                  lui          sp, 577192
                  slti         gp, a6, -825
                  sll          s6, s4, a2
                  andi         s2, gp, 1898
                  ori          t6, a6, -78
                  slli         ra, a4, 8
                  slti         a1, t2, -685
                  auipc        a5, 490787
                  sll          a1, t2, t1
                  sra          s11, s5, a6
                  sll          a0, ra, t1
                  slt          s6, a0, s4
                  auipc        s10, 698678
                  slti         ra, s0, 1542
                  and          a4, zero, s4
                  xor          a1, t4, a3
                  or           t4, zero, s1
                  slt          a0, t6, ra
                  addi         tp, zero, 576
                  add          s6, t0, s11
                  ori          t6, t4, 1783
                  add          a6, t1, s8
                  slli         t0, ra, 18
                  srli         s10, s6, 27
                  slli         s5, s11, 13
                  ori          zero, s7, -410
                  lui          s11, 1032187
                  sltiu        a0, s11, 252
                  andi         zero, a7, 464
                  srai         t1, zero, 3
                  sra          s10, s6, s10
                  sltu         ra, s2, a7
                  slti         t6, s5, 1267
                  xori         tp, s0, -1213
                  ori          sp, s0, 729
                  slt          t1, a0, s5
                  nop
                  andi         a4, a3, -1076
                  xor          s8, s0, s1
                  ori          s8, t2, -1478
                  sra          s0, t5, s2
                  lui          a5, 890969
                  or           t2, s4, zero
                  sub          s9, t5, s2
                  sltiu        a3, s9, 1933
                  sltiu        gp, s4, -217
                  slli         a3, s10, 30
                  xor          s1, a0, s1
                  xor          sp, a2, a7
                  nop
                  srl          s2, s5, s10
                  and          a1, a4, t0
                  lui          t5, 386175
                  addi         gp, a2, -553
                  and          s10, s8, a2
                  sra          a4, a5, a1
                  srli         t0, s7, 22
                  xor          s5, a1, s0
                  addi         s1, a2, -1091
                  sub          s9, t6, s6
                  lui          t6, 1045385
                  auipc        zero, 573454
                  sltu         ra, sp, t6
                  xori         s1, s6, -1841
                  addi         s6, ra, 142
                  auipc        sp, 834867
                  slt          a1, a0, tp
                  srli         ra, s9, 26
                  lui          s5, 608586
                  nop
                  sltiu        t2, a0, 1011
                  slli         s1, gp, 19
                  andi         s1, a0, 2041
                  srai         s6, s10, 28
                  addi         t1, s5, -1810
                  sll          s7, zero, s2
                  sltiu        a4, ra, -867
                  sub          s5, a6, a1
                  sltu         a5, ra, s10
                  slti         s5, s9, -1114
                  sltiu        s10, t1, -340
                  sra          ra, a4, s7
                  sltiu        s5, t0, 737
                  lui          t0, 275278
                  srai         s7, s6, 28
                  sll          s9, s2, a1
                  srli         tp, s6, 4
                  srl          s11, s3, a2
                  srl          s0, t1, t6
                  srli         t0, s8, 3
                  add          t4, tp, sp
                  slt          a0, sp, a3
                  lui          gp, 773038
                  srai         s8, s0, 12
                  lui          a0, 792797
                  sll          s2, a3, t2
                  sub          t5, ra, a1
                  nop
                  srai         s5, s10, 27
                  slti         s6, gp, -1370
                  sltu         t4, s10, a2
                  and          t6, t4, a3
                  srl          t6, zero, a5
                  and          s4, s8, s7
                  lui          a1, 819912
                  srli         a6, ra, 27
                  sra          a1, a0, a7
                  addi         s2, a6, -216
                  slt          a1, a1, a0
                  andi         s5, s6, -1774
                  slti         s9, t2, 640
                  xori         t4, sp, -991
                  slt          s5, a5, t6
                  lui          s7, 191262
                  sra          t2, s6, s8
                  add          gp, s3, a4
                  xor          t4, t6, a1
                  srli         s5, a2, 22
                  andi         tp, s7, -993
                  and          s7, t3, a1
                  or           t6, s1, a1
                  nop
                  slli         s1, zero, 31
                  slti         s8, gp, 942
                  nop
                  srl          t5, s3, a0
                  addi         s7, t1, 34
                  slt          a4, s8, t0
                  andi         t0, a1, 305
                  nop
                  srli         a3, a2, 27
                  srai         s6, t3, 14
                  sra          t5, a3, gp
                  sll          s7, t4, zero
                  srai         gp, a4, 12
                  sub          t2, a6, s0
                  or           ra, s7, a1
                  srl          a5, t4, s0
                  slli         s8, s7, 15
                  andi         zero, t5, 685
                  lui          s11, 83847
                  addi         s2, t4, -957
                  sra          s2, s5, t1
                  srli         s0, a3, 30
                  srli         t5, s4, 25
                  ori          zero, gp, -1545
                  slti         s6, s11, 1451
                  slli         a4, s3, 3
                  xori         ra, a5, -741
                  srli         tp, t0, 4
                  xor          a0, ra, s10
                  sltiu        a4, t1, 972
                  nop
                  or           s1, t6, t3
                  sltu         s11, s3, a5
                  sltu         s1, s10, t0
                  andi         sp, t3, 1383
                  auipc        s9, 458573
                  nop
                  sub          t2, a2, a2
                  andi         ra, a5, 1632
                  auipc        a1, 26599
                  sltu         s11, sp, s8
                  slti         s1, a2, -1320
                  sra          s5, s11, s10
                  nop
                  nop
                  srl          s5, sp, a3
                  xor          zero, sp, a1
                  xori         a6, a2, 1909
                  sltu         sp, sp, a1
                  andi         s2, sp, -1495
                  xor          a3, a7, t5
                  srai         s5, s5, 31
                  nop
                  or           s8, gp, zero
                  slt          s10, a0, a3
                  and          sp, s3, a3
                  sub          gp, a5, s11
                  sra          t2, a6, t3
                  slt          t2, s5, s10
                  srl          t5, s5, tp
                  slli         s6, a5, 11
                  sltiu        s6, s5, -791
                  xori         a3, t2, -1107
                  and          s11, t6, sp
                  nop
                  andi         s11, s4, -946
                  xor          s4, a5, a6
                  slt          s6, sp, s1
                  andi         t1, a0, -245
                  sll          s6, t5, sp
                  srai         a0, t5, 3
                  auipc        s5, 75956
                  sltu         zero, a7, s11
                  auipc        s8, 550176
                  slli         s5, a3, 1
                  sra          s1, t6, s11
                  add          a0, a7, t4
                  sll          s6, s8, s10
                  xori         a6, s4, 297
                  lui          tp, 426359
                  sub          t4, t2, s2
                  addi         t4, s10, -808
                  slli         t2, s6, 19
                  slli         a5, s11, 1
                  sltu         s5, ra, a5
                  addi         s6, s4, -2024
                  addi         sp, a3, -1978
                  xor          s9, ra, t0
                  slti         t3, t4, 1206
                  or           s5, a0, s0
                  andi         t3, s5, 1294
                  and          a5, t5, sp
                  ori          a3, sp, -1726
                  sra          a4, t5, gp
                  or           a1, t0, a6
                  add          ra, t5, a4
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           t3, 0xffffffff
                  li           s1, 0x8dca908b
                  li           t5, 0x0
                  li           t1, 0xffffffff
                  li           a0, 0x0
                  li           s11, 0x0
                  li           sp, 0x80000000
                  li           s6, 0xffffffff
                  li           t6, 0x80000000
                  auipc        s8, 801169
                  addi         s8, t5, 1126
                  auipc        s1, 1022474
                  lui          s11, 312748
                  nop
                  addi         t3, sp, 1179
                  addi         sp, t3, -1138
                  lui          t1, 217106
                  lui          s1, 791827
                  addi         s8, t5, -1267
                  lui          a0, 322605
                  lui          s11, 874476
                  sub          s11, sp, t1
                  lui          t5, 124997
                  auipc        s6, 277425
                  lui          t1, 981843
                  sub          a0, a0, t5
                  addi         t3, t5, -1837
                  addi         s1, s8, -169
                  lui          s8, 672728
                  auipc        t6, 58161
                  nop
                  addi         s1, s6, 1424
                  add          t3, t6, sp
                  sub          s1, sp, s1
                  auipc        a0, 954975
                  nop
                  auipc        s8, 145885 #end riscv_int_numeric_corner_stream_10
                  and          a3, gp, t0
                  andi         a1, s2, -1491
                  ori          t6, t2, -1389
                  addi         t3, ra, 64
                  sub          t6, s6, t4
                  srai         s5, t4, 30
                  xori         t1, s3, -735
                  add          s11, t5, a2
                  sltu         s7, gp, a2
                  or           ra, s3, s1
                  auipc        t5, 231616
                  or           t4, s3, t3
                  andi         zero, t6, 605
                  srai         ra, sp, 31
                  sll          t2, s4, zero
                  xor          s8, s0, a7
                  add          a0, a3, s8
                  auipc        sp, 593173
                  srl          s7, t4, t5
                  nop
                  xori         sp, s4, -340
                  or           t1, zero, tp
                  slli         s7, a4, 11
                  slli         s0, s4, 30
                  slli         a0, t5, 17
                  or           ra, s0, ra
                  xori         s2, t4, -811
                  slt          s5, sp, s7
                  ori          sp, a5, -667
                  slli         sp, a0, 21
                  sltu         s9, s3, a0
                  lui          s8, 1013140
                  srl          a5, a2, a0
                  auipc        t4, 889521
                  xor          t5, s10, s2
                  sra          s0, s4, t1
                  srli         sp, a6, 0
                  srai         t3, ra, 31
                  ori          s10, s3, -51
                  sub          s5, ra, a2
                  sra          s7, t3, gp
                  sll          t6, zero, a7
                  sltu         a6, a1, s0
                  slti         tp, s4, -848
                  and          s6, zero, ra
                  sub          sp, t4, a7
                  addi         zero, a4, 1090
                  addi         zero, a1, -840
                  sll          t4, a5, s11
                  srl          a4, s8, ra
                  addi         s11, a4, 512
                  slti         s8, t4, 1227
                  auipc        ra, 609723
                  sub          t4, t1, s9
                  srli         s8, tp, 20
                  slt          a3, t3, s3
                  srai         s10, a6, 1
                  auipc        a5, 942064
                  andi         tp, t6, -1662
                  and          s4, a6, a4
                  srl          t2, s11, t2
                  slti         s7, s0, 2004
                  srli         t1, s4, 16
                  srli         s6, a3, 4
                  srai         a5, gp, 26
                  lui          tp, 901594
                  slli         s10, a4, 16
                  ori          s7, t4, 964
                  sub          sp, s8, a0
                  add          s1, s3, zero
                  srli         s5, s10, 28
                  lui          a0, 745259
                  ori          zero, s10, -1585
                  lui          t6, 793855
                  sll          s9, s7, a4
                  auipc        s2, 807791
                  xor          s2, a1, t3
                  srli         tp, a0, 14
                  slli         s0, a4, 16
                  andi         a5, s2, 371
                  lui          s6, 179540
                  srai         t4, t6, 19
                  srl          s1, a3, t5
                  ori          t1, s1, 1736
                  addi         a1, s5, -160
                  slt          t1, s1, zero
                  srl          tp, t0, s1
                  ori          a3, s11, 1170
                  slti         s10, s7, -1220
                  or           t0, t2, t0
                  addi         t0, t0, 1577
                  addi         s9, t6, -454
                  srl          t6, a5, a7
                  xor          t0, t6, s1
                  srli         a0, sp, 3
                  sll          s9, t2, t2
                  srl          a4, s4, t2
                  sll          s7, s6, tp
                  srai         a5, zero, 29
                  xori         t5, a3, -397
                  add          s11, a7, t6
                  and          s0, t1, a5
                  sub          s1, s8, t1
                  and          t5, s9, sp
                  ori          a5, s9, 2005
                  lui          a1, 653463
                  xor          a0, sp, zero
                  add          a4, a1, t2
                  sub          sp, ra, s5
                  auipc        a6, 288011
                  sltu         s11, s11, sp
                  sra          s7, s2, s2
                  andi         zero, s5, -1893
                  auipc        gp, 394990
                  xori         sp, s8, -2019
                  sltiu        t0, t3, 1745
                  and          t0, t3, s3
                  slti         t0, s10, 914
                  sra          s11, s4, s3
                  sltiu        t4, s5, -1093
                  slt          s2, a4, a4
                  auipc        s8, 944515
                  sub          gp, a5, s6
                  ori          a4, a3, 968
                  add          s11, a0, s6
                  and          s9, s1, t6
                  auipc        s7, 343641
                  sra          s9, s7, a6
                  sra          s4, t0, s6
                  srli         a6, zero, 12
                  srli         s9, t2, 7
                  xor          s0, t5, ra
                  xor          zero, a6, t6
                  lui          s1, 793627
                  or           t0, s1, s5
                  add          s6, tp, a4
                  sub          s6, s9, s0
                  sltiu        a6, a6, -1475
                  lui          s2, 257333
                  and          gp, a1, s9
                  srl          t0, s11, a7
                  auipc        a4, 827380
                  and          t5, s1, s3
                  andi         a5, s8, 1472
                  sra          t1, s11, s9
                  srai         ra, a5, 10
                  or           a4, a5, zero
                  sltu         t4, s2, s2
                  xor          a0, s1, gp
                  sltu         s4, sp, a4
                  ori          sp, a5, 198
                  lui          s5, 754560
                  srli         s2, a2, 6
                  add          t6, sp, a5
                  and          ra, t5, a6
                  auipc        t1, 1036038
                  sll          s10, t2, t6
                  slli         a0, s10, 21
                  andi         s2, a7, -1398
                  xor          t3, s3, t1
                  andi         s2, t5, 1409
                  srli         t5, s6, 19
                  sll          a0, ra, t0
                  or           t6, s6, s11
                  sll          t6, t6, s11
                  xori         s8, s6, 1560
                  add          t3, a5, s0
                  srli         gp, a2, 19
                  slti         s10, s10, -222
                  sll          ra, a3, s3
                  auipc        a5, 413166
                  andi         s7, s10, 1346
                  addi         s4, t2, 1203
                  slt          s11, a7, s6
                  srl          t5, a2, sp
                  sll          s6, a1, s4
                  srl          s2, tp, t4
                  addi         gp, a2, -1785
                  or           s0, s9, t4
                  sltiu        t6, a6, -277
                  auipc        t1, 111373
                  srl          a4, zero, t6
                  sra          gp, s4, tp
                  addi         s9, s7, -50
                  xori         tp, ra, 843
                  srli         zero, t5, 13
                  xori         s10, s8, -556
                  sltu         t4, a5, s1
                  addi         t4, s2, -966
                  slli         zero, tp, 3
                  sll          a0, gp, a4
                  slti         sp, tp, -911
                  xor          s11, ra, a4
                  srl          s10, a6, a4
                  srai         t2, s2, 17
                  auipc        s10, 539976
                  auipc        s6, 983722
                  xori         t4, ra, 1048
                  srai         s9, a2, 0
                  auipc        t5, 658037
                  srli         s9, s2, 2
                  slt          t6, t5, s8
                  srai         s11, tp, 22
                  auipc        t0, 78566
                  and          gp, a5, sp
                  sra          t2, t4, ra
                  xori         zero, s0, -1910
                  xori         t0, s3, -431
                  sltu         s7, zero, a7
                  lui          t5, 797276
                  and          a3, a2, a2
                  sub          t2, s7, a1
                  xori         s11, s9, 963
                  slt          zero, a2, a2
                  nop
                  sltu         zero, t5, t0
                  nop
                  sra          t4, s10, s11
                  nop
                  srai         t4, t3, 0
                  lui          s8, 232610
                  slti         a1, s8, 1438
                  slt          t3, s11, t5
                  addi         s5, s11, 1920
                  slt          t2, s0, a5
                  and          t2, a0, s10
                  nop
                  sll          a6, s4, a7
                  xor          a4, s6, s4
                  auipc        t2, 240764
                  and          gp, t6, t5
                  xor          sp, a1, t0
                  sltu         s4, zero, t6
                  slli         a0, s7, 19
                  slti         t1, s2, 1681
                  sll          sp, a3, a3
                  or           t2, a5, s2
                  srli         gp, s7, 19
                  srli         s9, tp, 30
                  xor          zero, a6, zero
                  and          ra, zero, a5
                  andi         a6, t1, 917
                  srl          gp, a3, s8
                  sll          s10, s6, s9
                  nop
                  lui          a0, 67194
                  xor          t1, t4, s11
                  xori         t3, a7, 1274
                  auipc        s7, 663569
                  sra          s1, s8, zero
                  add          s10, t5, a1
                  addi         s0, t6, -89
                  xori         t2, s6, -1513
                  srli         s5, a2, 1
                  nop
                  slti         t5, a2, -1671
                  nop
                  ori          ra, ra, -1513
                  sltiu        s10, ra, 1915
                  andi         t0, a2, 1129
                  sra          s4, s5, s4
                  slli         a5, s3, 5
                  srl          zero, a4, a5
                  sra          t0, a5, a7
                  sll          a1, s1, t1
                  nop
                  slt          gp, t5, a3
                  sra          s11, t5, t4
                  or           s11, tp, t3
                  lui          s7, 438994
                  srl          zero, t2, s11
                  sll          t5, a7, s10
                  sltu         t1, a7, t1
                  auipc        t4, 325571
                  ori          t5, sp, -1748
                  srai         s7, t4, 24
                  lui          tp, 335356
                  srai         a1, a0, 2
                  auipc        tp, 104647
                  slli         s9, t6, 2
                  slti         gp, a2, 380
                  and          a1, ra, s8
                  ori          s1, s3, -1251
                  sltiu        a4, s11, -995
                  and          s7, sp, tp
                  sltu         s5, s4, a5
                  xori         a1, t6, 1945
                  nop
                  lui          s5, 129866
                  and          a1, s8, a6
                  andi         gp, s2, 1717
                  srl          s11, a7, s2
                  slli         t1, s1, 28
                  lui          s5, 25212
                  nop
                  srai         s2, a6, 18
                  slli         a0, t0, 22
                  xori         s11, t5, -1895
                  sltu         s0, t4, s3
                  auipc        s11, 983440
                  andi         s1, t6, 308
                  sltiu        zero, s0, 1484
                  slt          s7, a7, t2
                  xori         s1, t6, -1613
                  slt          zero, zero, s7
                  or           s7, sp, t0
                  add          a1, s8, s3
                  and          s0, a3, s1
                  nop
                  xori         t2, s1, -1066
                  sra          gp, s7, s6
                  sltiu        s8, a0, 36
                  andi         s5, t2, -2048
                  addi         s6, a4, 496
                  srai         s7, s10, 23
                  and          t5, a3, s0
                  sra          sp, s10, gp
                  sll          t6, t2, t4
                  slti         ra, s6, 331
                  add          a0, zero, gp
                  sltiu        a4, s5, -1869
                  sltu         gp, t6, ra
                  slti         t2, t6, 1218
                  andi         a0, t3, 1056
                  nop
                  xor          ra, t3, t2
                  lui          a0, 1026961
                  srli         s10, s7, 11
                  or           s9, a5, zero
                  add          a0, tp, s2
                  slti         t4, s5, -529
                  xori         a5, a4, 302
                  sll          t3, s11, s9
                  lui          zero, 2341
                  auipc        s6, 701015
                  sltiu        s11, t1, -896
                  sub          gp, tp, a2
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_2
                  li           s4, 0x763f56e5
                  li           s2, 0x0
                  li           s11, 0x270c0d05
                  li           t4, 0x80000000
                  li           a6, 0x0
                  li           gp, 0x0
                  li           ra, 0x0
                  li           tp, 0x983d9c4f
                  li           a1, 0xffffffff
                  nop
                  lui          sp, 1020141
                  sub          ra, s4, t4
                  addi         s2, ra, 407
                  nop
                  addi         sp, sp, -1420
                  lui          gp, 811377
                  auipc        tp, 111442
                  sub          a6, s4, a6
                  sub          t4, gp, s4
                  add          sp, tp, a1
                  add          t4, t4, s4
                  auipc        s2, 975607
                  sub          sp, ra, ra
                  addi         gp, tp, 1566
                  add          gp, gp, t4 #end riscv_int_numeric_corner_stream_2
                  xor          t1, t4, s2
                  nop
                  slti         t2, tp, 198
                  srli         t1, a2, 23
                  addi         a1, a1, 236
                  andi         s10, a1, -551
                  slt          a1, zero, s4
                  or           t2, a0, s9
                  slt          s5, gp, s10
                  srl          a0, s7, s7
                  xor          t0, a6, a5
                  add          a0, s3, a3
                  srai         t4, t4, 5
                  lui          t4, 83918
                  srai         sp, gp, 17
                  add          t6, a0, t6
                  sll          zero, t4, sp
                  srl          a0, s2, gp
                  add          s8, t4, a1
                  sll          t4, a3, s2
                  and          t2, a5, s9
                  add          s9, s9, tp
                  srl          tp, s9, t0
                  sll          t6, s7, gp
                  sub          tp, a7, tp
                  srli         a6, s6, 14
                  xor          t6, s2, a5
                  or           s8, a2, sp
                  xor          t2, t4, s7
                  sltu         t4, a2, t6
                  sra          t5, a7, t0
                  andi         s11, a0, -838
                  slli         s9, t5, 30
                  sltu         sp, a0, a3
                  srai         t2, s11, 25
                  slt          a3, s1, a5
                  nop
                  srl          t1, s7, sp
                  add          ra, a6, s9
                  sltiu        t0, s0, -1077
                  sub          t6, a0, s0
                  sra          t5, a3, s0
                  sltu         s10, s7, tp
                  sub          s9, s4, s8
                  addi         a0, a7, -1755
                  or           t4, s5, t3
                  nop
                  or           t3, t4, s0
                  xori         s4, sp, -340
                  addi         a0, a2, -1330
                  auipc        s7, 644441
                  sub          t1, s6, a7
                  slt          s4, sp, s1
                  add          t3, s7, gp
                  sll          a3, a0, a3
                  sra          zero, a3, t2
                  slt          t4, s6, a5
                  slt          a6, a2, s9
                  addi         gp, a7, 207
                  slti         a3, t6, 194
                  slli         t5, s11, 17
                  xor          gp, t4, tp
                  sltu         a5, s10, a1
                  nop
                  srl          a3, a3, a1
                  addi         s11, a6, -3
                  and          s10, s4, s0
                  ori          t4, t0, -118
                  lui          s10, 500284
                  srai         ra, t6, 29
                  addi         s6, t3, -1863
                  sll          a1, ra, a0
                  add          t0, s9, t4
                  srl          s2, t0, a7
                  srai         s4, a6, 26
                  or           s6, s4, s8
                  srai         s6, s9, 11
                  sltiu        s0, t5, -1261
                  sll          s4, zero, a0
                  addi         s9, a4, -1499
                  xor          s4, t4, t0
                  or           s4, a5, s5
                  sltiu        t0, a0, -563
                  andi         t4, sp, 1022
                  andi         s8, t3, 78
                  sra          sp, a7, s6
                  sra          tp, t3, s8
                  and          tp, s8, a3
                  sub          gp, a5, ra
                  ori          s0, s5, 1748
                  slt          gp, s4, s6
                  or           t4, ra, s7
                  slti         s11, zero, 1434
                  sltiu        s1, s5, 2022
                  ori          t4, gp, 338
                  slti         a0, t2, -951
                  lui          t3, 275261
                  auipc        a1, 756880
                  slli         s4, t6, 21
                  slt          s10, s3, t4
                  add          tp, s1, s6
                  lui          gp, 953518
                  add          t3, s10, zero
                  xor          a6, s8, a1
                  nop
                  or           s4, gp, a1
                  lui          t0, 647185
                  lui          s1, 719630
                  add          s11, s3, a3
                  xor          s0, a5, tp
                  slli         t0, a6, 28
                  auipc        s9, 300949
                  add          sp, s9, s8
                  addi         s11, s2, -733
                  sltiu        a0, s9, 1790
                  srli         tp, s6, 9
                  sltu         tp, a0, s10
                  or           t4, t2, s6
                  sra          s9, s6, s6
                  or           s0, gp, tp
                  slt          gp, gp, a5
                  sll          s2, s5, a4
                  andi         s8, t3, 211
                  xor          a3, s7, s5
                  sltu         s7, a6, t5
                  xori         t6, s1, 1459
                  sltu         s5, s9, s11
                  sltu         t2, t0, a7
                  slt          t3, s8, s3
                  sll          s4, s1, a4
                  sll          s11, a1, t3
                  srl          t0, a6, s5
                  slt          s10, t3, s3
                  slli         s2, s10, 3
                  srl          s5, s2, t6
                  srli         s11, a5, 6
                  slli         a0, s3, 12
                  sub          s11, t6, a1
                  srli         a3, s0, 3
                  and          s2, s11, s0
                  or           t1, t6, s1
                  srli         a5, t3, 15
                  xor          t3, s2, s8
                  sltiu        zero, t4, 1919
                  sltu         s8, s3, s11
                  nop
                  lui          t5, 180007
                  sra          t2, t5, t1
                  auipc        t1, 1034468
                  srai         s6, s8, 25
                  andi         a4, t1, -1458
                  srl          a4, s5, a0
                  sltiu        s5, gp, -478
                  sra          t2, s11, s6
                  or           ra, s10, t3
                  ori          a0, s0, -1363
                  slt          a4, a5, s11
                  slti         ra, a5, 1524
                  andi         s9, t5, -141
                  sltu         a3, t0, t0
                  and          t5, s7, ra
                  srl          t1, a4, sp
                  and          s11, a7, a2
                  slli         a1, a7, 2
                  sll          s10, s0, t4
                  xori         a3, a0, -1020
                  sll          s11, s2, s7
                  sll          t3, s10, a5
                  sra          t6, a0, s0
                  xori         a4, s4, -700
                  or           s1, s9, s6
                  ori          s9, t0, 1272
                  auipc        s2, 216371
                  add          ra, a4, s9
                  xor          a4, t0, a5
                  xori         s0, t4, 437
                  sra          s8, a7, t3
                  slt          gp, s3, t2
                  auipc        a1, 176830
                  auipc        a0, 398164
                  srli         a0, s6, 16
                  addi         t2, a7, 745
                  slti         s9, tp, -1538
                  auipc        tp, 56972
                  srl          s9, t6, tp
                  sll          s8, a6, a6
                  sltu         s7, a1, s5
                  srli         t4, s5, 18
                  lui          t2, 120517
                  auipc        t4, 441148
                  sltiu        t3, t3, -1411
                  addi         s10, ra, 651
                  ori          s0, s2, 400
                  nop
                  add          t3, t3, a2
                  auipc        sp, 457422
                  add          t1, t5, t6
                  and          ra, gp, s7
                  srli         s1, s10, 8
                  xor          t3, s0, s11
                  addi         t2, a4, 973
                  lui          s7, 944695
                  sub          t6, t4, s11
                  sll          s6, gp, a0
                  andi         gp, s7, 1474
                  auipc        s1, 355327
                  sll          s8, s0, s9
                  sll          t6, zero, a1
                  srli         a5, s9, 29
                  srl          t2, s3, zero
                  or           a4, t3, s6
                  srli         t5, a0, 30
                  xori         a6, t0, 1878
                  nop
                  andi         gp, s0, 985
                  sltiu        zero, s10, 1728
                  auipc        s1, 889519
                  sll          t0, a7, s0
                  sltiu        s7, t0, -1560
                  la x17, test_done
                  jalr x0, x17, 0
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
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x12, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_2:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x12, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_3:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x12, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_4:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x12, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_5:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x12, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_6:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x12, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_7:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x12, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_8:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x12, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_9:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x12, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_10:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x12, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_11:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x12, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_12:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x12, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_13:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x12, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_14:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x12, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_15:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x12, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

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
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x12, x19, zero
                  csrr x4, 0x341 # MEPC
                  csrr x4, 0x342 # MCAUSE
                  li x24, 0x3 # BREAKPOINT
                  beq x4, x24, ebreak_handler
                  li x24, 0x8 # ECALL_UMODE
                  beq x4, x24, ecall_handler
                  li x24, 0x9 # ECALL_SMODE
                  beq x4, x24, ecall_handler
                  li x24, 0xb # ECALL_MMODE
                  beq x4, x24, ecall_handler
                  li x24, 0x1
                  beq x4, x24, instr_fault_handler
                  li x24, 0x5
                  beq x4, x24, load_fault_handler
                  li x24, 0x7
                  beq x4, x24, store_fault_handler
                  li x24, 0xc
                  beq x4, x24, pt_fault_handler
                  li x24, 0xd
                  beq x4, x24, pt_fault_handler
                  li x24, 0xf
                  beq x4, x24, pt_fault_handler
                  li x24, 0x2 # ILLEGAL_INSTRUCTION
                  beq x4, x24, illegal_instr_handler
                  csrr x24, 0x343 # MTVAL
                  1: la x17, test_done
                  jalr x1, x17, 0

ecall_handler:    
                  la x4, _start
                  sw x0, 0(x4)
                  sw x1, 4(x4)
                  sw x2, 8(x4)
                  sw x3, 12(x4)
                  sw x4, 16(x4)
                  sw x5, 20(x4)
                  sw x6, 24(x4)
                  sw x7, 28(x4)
                  sw x8, 32(x4)
                  sw x9, 36(x4)
                  sw x10, 40(x4)
                  sw x11, 44(x4)
                  sw x12, 48(x4)
                  sw x13, 52(x4)
                  sw x14, 56(x4)
                  sw x15, 60(x4)
                  sw x16, 64(x4)
                  sw x17, 68(x4)
                  sw x18, 72(x4)
                  sw x19, 76(x4)
                  sw x20, 80(x4)
                  sw x21, 84(x4)
                  sw x22, 88(x4)
                  sw x23, 92(x4)
                  sw x24, 96(x4)
                  sw x25, 100(x4)
                  sw x26, 104(x4)
                  sw x27, 108(x4)
                  sw x28, 112(x4)
                  sw x29, 116(x4)
                  sw x30, 120(x4)
                  sw x31, 124(x4)
                  la x17, write_tohost
                  jalr x0, x17, 0

instr_fault_handler:
                  add x19, x12, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

load_fault_handler:
                  add x19, x12, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

store_fault_handler:
                  add x19, x12, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

ebreak_handler:   
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x19, x12, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

illegal_instr_handler:
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x19, x12, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x4, 0x300 # MSTATUS;
                  csrr  x4, 0x304 # MIE;
                  csrr  x4, 0x344 # MIP;
                  csrrc x4, 0x344, x4 # MIP;
                  add x19, x12, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
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
