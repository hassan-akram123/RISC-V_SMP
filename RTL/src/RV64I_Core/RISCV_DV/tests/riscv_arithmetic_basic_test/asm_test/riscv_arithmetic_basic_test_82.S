.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x19, h0_start
jalr x0, x19, 0
h0_start:
                  li x4, 0x40000100
                  csrw 0x301, x4
kernel_sp:        
                  la x6, kernel_stack_end

trap_vec_init:    
                  la x4, mtvec_handler
                  ori x4, x4, 0
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
                  li x0, 0x80000000
                  li x1, 0x9
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0x68e07087
                  li x7, 0xd72a243d
                  li x8, 0xfd72741
                  li x9, 0xa
                  li x10, 0xf6a9c2c0
                  li x11, 0x559dc1c8
                  li x12, 0x80000000
                  li x13, 0x80000000
                  li x14, 0x0
                  li x15, 0xfeab5cf0
                  li x16, 0xf4035afb
                  li x17, 0xf
                  li x18, 0xfbfb242c
                  li x19, 0x7
                  li x20, 0x5ce8ba8
                  li x21, 0xf0060e64
                  li x22, 0x2f1bcfd9
                  li x23, 0x6
                  li x24, 0x0
                  li x25, 0x0
                  li x26, 0xf845a8d7
                  li x27, 0x1
                  li x28, 0xc6650a8c
                  li x29, 0x0
                  li x30, 0x80000000
                  li x31, 0x80000000
                  la x5, user_stack_end
main:             li           t3, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           s7, 0x4e0f504b
                  li           a2, 0x0
                  li           a1, 0x0
                  li           a3, 0xcbe900bb
                  li           t2, 0x29cdd19
                  li           gp, 0xe1c5ac26
                  li           a5, 0x80000000
                  li           tp, 0x8b88cb55
                  li           t6, 0xffffffff
                  addi         t2, t3, 336
                  add          s7, a3, t2
                  addi         s7, t3, -763
                  addi         a5, gp, 692
                  add          s7, t3, t2
                  auipc        a5, 644679
                  auipc        t2, 930281
                  auipc        a5, 744447
                  nop
                  lui          t3, 935556
                  addi         t6, t2, 487
                  sub          a3, a1, a1
                  sub          s7, a3, t6
                  nop
                  addi         a2, gp, -365
                  addi         t3, a3, 1634
                  auipc        t2, 398443
                  sub          t6, a1, a3
                  addi         a5, gp, -1270
                  add          tp, s7, a3
                  auipc        t2, 992078
                  lui          tp, 454231
                  nop
                  nop
                  sub          t6, s7, s7 #end riscv_int_numeric_corner_stream_12
                  li           t3, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           a4, 0x3ab10473
                  li           a0, 0xffffffff
                  li           a5, 0x0
                  li           t2, 0xffffffff
                  li           s4, 0xffffffff
                  li           sp, 0xee7f0563
                  li           s9, 0x80000000
                  li           tp, 0x0
                  li           a1, 0xc4746018
                  auipc        a4, 248788
                  lui          a0, 242052
                  sub          a1, t2, a1
                  nop
                  addi         a1, s9, 1462
                  lui          t2, 192051
                  sub          a0, t3, sp
                  lui          sp, 191522
                  nop
                  add          a4, t2, s9
                  auipc        a1, 846025
                  nop
                  addi         t2, a1, 611
                  sub          s9, a5, t3
                  sub          t3, sp, sp
                  lui          a1, 368693
                  sub          s9, t2, t2
                  auipc        t2, 702632
                  auipc        a1, 693436
                  nop
                  add          s4, a5, a4
                  add          tp, a4, sp
                  auipc        a0, 38750
                  sub          t3, a4, tp #end riscv_int_numeric_corner_stream_18
                  li           s6, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           a7, 0xffffffff
                  li           s0, 0xffffffff
                  li           s5, 0x363c35d7
                  li           a3, 0xffffffff
                  li           s4, 0xffffffff
                  li           t3, 0x80000000
                  li           s1, 0x280174c7
                  li           a0, 0x0
                  li           s9, 0x0
                  lui          a3, 783510
                  add          t3, s0, s4
                  sub          a0, a0, a0
                  addi         a7, s5, 1727
                  lui          s1, 435571
                  lui          a3, 723214
                  nop
                  lui          a3, 571786
                  auipc        s0, 753839
                  addi         t3, t3, 1137
                  sub          a7, s1, s6
                  auipc        a0, 737248
                  add          s0, a3, s5
                  auipc        s9, 27432
                  addi         t3, a0, -386
                  nop
                  nop
                  nop
                  sub          s4, a7, s6
                  sub          t3, t3, a0
                  addi         a3, s6, 402
                  lui          s9, 858344
                  addi         s0, s0, -1727
                  sub          s4, s9, s1 #end riscv_int_numeric_corner_stream_9
                  li           t3, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           s8, 0xffffffff
                  li           a2, 0xa648921
                  li           a5, 0xfc38eef4
                  li           t6, 0xffffffff
                  li           gp, 0x2e5e9552
                  li           s11, 0xd10bf74
                  li           t2, 0x80000000
                  li           t4, 0x80000000
                  li           s2, 0xffffffff
                  nop
                  sub          t6, t2, s8
                  sub          a5, gp, a2
                  add          a5, t6, s2
                  addi         a2, s8, 1027
                  nop
                  addi         a2, t2, 625
                  nop
                  sub          s2, a5, t6
                  nop
                  add          t6, t3, s11
                  add          t2, s2, gp
                  nop
                  lui          s8, 241630
                  nop
                  add          gp, t3, a5
                  lui          t2, 746275
                  auipc        s8, 23577
                  lui          t4, 645952
                  nop
                  sub          gp, t3, s8
                  sub          t6, t3, a5
                  sub          a5, t3, t3
                  add          s11, t4, s2
                  sub          t4, a2, t6
                  addi         gp, t6, -1012
                  lui          t4, 409932
                  sub          t4, s11, s8
                  sub          t3, t4, s11 #end riscv_int_numeric_corner_stream_5
                  li           gp, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           s0, 0x80000000
                  li           a3, 0xffffffff
                  li           s4, 0x0
                  li           t4, 0x0
                  li           tp, 0x0
                  li           a2, 0x80000000
                  li           a5, 0x0
                  li           a6, 0xffffffff
                  li           s9, 0x285a67ea
                  addi         a5, a2, 1394
                  sub          s0, s0, s0
                  sub          a5, gp, a3
                  add          a3, a2, t4
                  sub          tp, tp, a6
                  auipc        tp, 324913
                  addi         a6, s9, -607
                  lui          a6, 7871
                  nop
                  nop
                  auipc        s9, 566773
                  addi         s4, a2, 527
                  lui          a6, 394211
                  nop
                  sub          a3, a3, a2
                  nop
                  addi         s0, a2, 145
                  nop
                  nop
                  add          gp, t4, tp #end riscv_int_numeric_corner_stream_15
                  li           a7, 0xfeb1ab67 #start riscv_int_numeric_corner_stream_10
                  li           tp, 0x0
                  li           s11, 0x9ef874b5
                  li           t2, 0x80000000
                  li           s6, 0x34e99348
                  li           a4, 0xffffffff
                  li           a0, 0x0
                  li           s10, 0xffffffff
                  li           t3, 0x80000000
                  li           ra, 0x80000000
                  nop
                  nop
                  add          s6, ra, s10
                  nop
                  sub          a7, s10, ra
                  sub          s10, a4, tp
                  lui          s6, 692621
                  add          tp, s6, a0
                  sub          a4, t3, a7
                  add          t3, a0, a4
                  lui          a4, 382482
                  addi         ra, ra, -791
                  sub          s11, s10, s10
                  auipc        s6, 860270
                  sub          s10, t2, t3
                  lui          ra, 1026959
                  add          s6, t2, a4
                  lui          t2, 69750
                  addi         s10, a0, -1977
                  add          a4, t3, tp
                  addi         ra, t2, 1500
                  auipc        s10, 806086
                  lui          tp, 70459
                  add          t2, a4, a7 #end riscv_int_numeric_corner_stream_10
                  li           t2, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           s1, 0xffffffff
                  li           s11, 0xad370792
                  li           s5, 0xbbbf60d7
                  li           a7, 0x80000000
                  li           ra, 0x1d3b455f
                  li           a5, 0xaeb5b53f
                  li           a4, 0x80000000
                  li           s6, 0x80000000
                  li           sp, 0x80000000
                  nop
                  add          s6, s11, sp
                  lui          a4, 535899
                  add          s6, sp, ra
                  lui          s11, 913254
                  addi         a4, s6, -880
                  auipc        s6, 615260
                  lui          ra, 977414
                  sub          ra, s11, a4
                  addi         a5, ra, 1079
                  nop
                  auipc        s1, 524039
                  lui          ra, 684593
                  lui          sp, 366262
                  nop
                  sub          a7, s1, s6
                  add          sp, s1, s5
                  auipc        t2, 510180
                  auipc        ra, 37201
                  sub          s11, t2, a4
                  lui          s11, 518559
                  nop
                  lui          s1, 617184
                  nop
                  addi         s6, t2, -1136 #end riscv_int_numeric_corner_stream_4
                  li           s7, 0xb406e55f #start riscv_int_numeric_corner_stream_2
                  li           a3, 0x0
                  li           t2, 0x0
                  li           gp, 0x80000000
                  li           s9, 0xffffffff
                  li           a2, 0x0
                  li           s5, 0x80000000
                  li           s8, 0xffffffff
                  li           s1, 0xa637cff2
                  li           s4, 0x80000000
                  auipc        s5, 721870
                  auipc        s1, 788438
                  nop
                  addi         a3, s8, 155
                  addi         s7, a3, -59
                  auipc        a3, 682514
                  auipc        s8, 616121
                  auipc        t2, 364054
                  nop
                  nop
                  auipc        t2, 785060
                  add          s5, s5, a2
                  lui          s9, 168107
                  add          s9, gp, s7
                  add          t2, t2, s5
                  add          a2, s1, a3 #end riscv_int_numeric_corner_stream_2
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           s2, 0x0
                  li           a5, 0xffffffff
                  li           gp, 0x9e9cbb1b
                  li           s4, 0x80000000
                  li           s9, 0x0
                  li           s0, 0xd509e07a
                  li           s8, 0x80000000
                  li           ra, 0x4275327a
                  li           a2, 0x0
                  auipc        s2, 856282
                  addi         a4, s4, -29
                  lui          gp, 552550
                  add          gp, gp, a2
                  sub          a5, ra, s2
                  nop
                  auipc        s4, 911512
                  nop
                  sub          s4, s9, a2
                  nop
                  auipc        s0, 673025
                  sub          s2, gp, gp
                  auipc        a4, 166404
                  addi         gp, s4, -664
                  add          s0, s9, a2
                  addi         gp, s2, -429
                  auipc        a4, 398201
                  auipc        s9, 183114
                  addi         s2, s0, -1065
                  lui          a5, 509009
                  lui          s8, 934858
                  lui          a4, 202484
                  nop
                  auipc        a4, 420783
                  add          s4, s4, s0 #end riscv_int_numeric_corner_stream_6
                  li           s1, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           t5, 0xffffffff
                  li           t2, 0xa9f536b
                  li           a5, 0xdb98d676
                  li           t6, 0x682b4fb7
                  li           sp, 0x0
                  li           s5, 0x0
                  li           a0, 0x0
                  li           a4, 0x80000000
                  li           a1, 0x32ad92b4
                  lui          t2, 700190
                  sub          s5, t2, t5
                  addi         a1, t6, 1807
                  add          a5, a1, a4
                  lui          s1, 710044
                  add          a5, a5, a0
                  auipc        a5, 527911
                  sub          a1, a1, t5
                  sub          s5, sp, a1
                  add          a4, a4, t2
                  add          t5, a4, t5
                  auipc        s5, 728232
                  auipc        t6, 433293
                  lui          a5, 392011
                  nop
                  add          sp, t5, a1
                  addi         a0, s5, 2
                  add          a1, t6, t6
                  sub          t2, a5, a1
                  addi         sp, a5, -1517
                  auipc        s5, 145361
                  sub          a4, a0, a4
                  auipc        s1, 717333 #end riscv_int_numeric_corner_stream_17
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           ra, 0x80000000
                  li           a2, 0xffffffff
                  li           s1, 0x0
                  li           a3, 0x0
                  li           t6, 0xffffffff
                  li           a4, 0x0
                  li           t5, 0x0
                  li           a0, 0x0
                  li           a5, 0x80000000
                  sub          sp, a0, a3
                  nop
                  addi         sp, s1, 196
                  addi         a4, a2, -1343
                  sub          a2, ra, s1
                  add          t6, a5, t5
                  nop
                  add          a5, a0, a5
                  auipc        a4, 730225
                  nop
                  add          a5, t6, a2
                  sub          a4, a5, sp
                  lui          sp, 1014442
                  nop
                  add          a5, a0, a5
                  lui          t5, 653403
                  addi         a5, ra, -110 #end riscv_int_numeric_corner_stream_7
                  li           t3, 0x16df4fc1 #start riscv_int_numeric_corner_stream_1
                  li           t5, 0x0
                  li           t2, 0xf222b82
                  li           a7, 0x740a420
                  li           t6, 0x80000000
                  li           s10, 0x0
                  li           tp, 0xffffffff
                  li           t4, 0xffffffff
                  li           s6, 0x80000000
                  li           s2, 0x332a321c
                  lui          s2, 288005
                  add          t6, a7, s2
                  lui          s10, 994120
                  auipc        t6, 1033168
                  addi         tp, t3, -1445
                  addi         a7, t2, 833
                  sub          s6, s2, s6
                  nop
                  addi         s6, s10, -1159
                  add          t2, t3, t2
                  lui          s6, 429833
                  auipc        s10, 880621
                  auipc        tp, 53248
                  lui          s6, 758981
                  sub          t3, t2, s6
                  sub          t3, t2, a7
                  sub          a7, s10, t2
                  addi         t2, t3, 1690
                  add          tp, a7, t5
                  nop
                  addi         t2, s10, 1908 #end riscv_int_numeric_corner_stream_1
                  li           s10, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           s6, 0x1af4d67e
                  li           t2, 0x0
                  li           sp, 0x5c432f5e
                  li           a5, 0x7c55957b
                  li           s2, 0x80000000
                  li           a3, 0xffffffff
                  li           s5, 0x3223ea3c
                  li           a2, 0xd2b61822
                  li           s11, 0xffffffff
                  nop
                  sub          s11, a2, s6
                  lui          a2, 735287
                  nop
                  nop
                  nop
                  add          a5, s2, s5
                  nop
                  lui          t2, 872745
                  sub          t2, a5, a2
                  lui          a2, 720439
                  auipc        s2, 921667
                  addi         a2, s5, 1212
                  auipc        s5, 62676
                  add          sp, s11, t2
                  addi         s10, s11, -255
                  add          s10, t2, s6
                  auipc        t2, 217643
                  auipc        s2, 79016
                  addi         s6, s5, 218
                  sub          t2, s10, s10
                  addi         s2, s10, -698
                  lui          a5, 569254
                  addi         a2, a5, -757
                  lui          a3, 127978
                  sub          t2, t2, s10
                  sub          t2, sp, s6
                  lui          a2, 208270
                  auipc        sp, 833825
                  lui          sp, 738388 #end riscv_int_numeric_corner_stream_0
                  li           gp, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           a5, 0x80000000
                  li           tp, 0x80000000
                  li           s0, 0x80000000
                  li           s4, 0xffffffff
                  li           a7, 0x80000000
                  li           s9, 0xb7654273
                  li           a1, 0xffffffff
                  li           s11, 0xffffffff
                  li           t6, 0x0
                  auipc        s9, 729229
                  auipc        a1, 160511
                  lui          t6, 206089
                  auipc        s11, 798292
                  addi         t6, s0, -1912
                  nop
                  add          s4, a5, gp
                  add          s9, a5, a7
                  sub          s0, tp, s0
                  sub          a7, s0, s0
                  lui          t6, 247168
                  sub          s0, t6, a5
                  lui          tp, 857142
                  nop
                  add          gp, gp, s4
                  auipc        s4, 511927
                  nop
                  addi         tp, tp, -1454
                  sub          a5, t6, s0
                  auipc        t6, 575107
                  sub          s9, s9, s9
                  addi         gp, s11, -1047 #end riscv_int_numeric_corner_stream_8
                  sltu         t3, a7, a1
                  addi         a3, s8, -1524
                  sltiu        zero, s7, -1348
                  ori          tp, s7, 1786
                  nop
                  ori          t6, a5, 1857
                  lui          t3, 568979
                  slli         s11, s6, 3
                  srl          t3, s0, ra
                  slt          t6, a1, t6
                  sra          sp, zero, a5
                  nop
                  sub          a4, a5, sp
                  sltu         a3, s3, s6
                  ori          a2, a2, -76
                  nop
                  sltiu        a3, s1, -402
                  slti         s0, s3, 1208
                  slt          a6, tp, s3
                  andi         s0, a7, 135
                  and          gp, t5, a3
                  auipc        ra, 770891
                  or           t5, s1, t2
                  or           sp, t3, s3
                  srl          s0, s1, t3
                  sra          a7, t1, a4
                  ori          zero, t6, 1157
                  srli         a0, t4, 16
                  srli         s5, a2, 11
                  slli         a1, sp, 12
                  andi         a1, a3, 161
                  xor          s6, a5, s7
                  sub          s6, zero, t1
                  xor          tp, a7, ra
                  sub          gp, a7, s4
                  ori          tp, t6, -1851
                  xori         a4, a7, 775
                  addi         a5, tp, -40
                  addi         s6, a5, 333
                  sub          a3, t6, t3
                  sub          a6, s10, a1
                  lui          s4, 755234
                  lui          s1, 681393
                  sltu         t6, s1, s7
                  addi         t2, t3, 1509
                  srl          a7, t2, a7
                  slt          s6, a0, t4
                  xori         s1, s9, 152
                  xor          s1, s10, t2
                  addi         s0, ra, 1105
                  xor          s11, s4, s9
                  slti         tp, s6, -1211
                  or           t2, s0, a2
                  sub          s1, s5, a2
                  sra          s2, s3, a3
                  sll          t6, a3, s5
                  slti         t3, s1, 89
                  xori         tp, tp, -98
                  sltiu        s2, t1, -1162
                  ori          s2, s7, -148
                  slli         s2, s7, 13
                  sltu         sp, a1, s5
                  addi         t5, t1, 735
                  slt          a3, gp, ra
                  slt          s11, t4, s8
                  ori          a4, ra, -1890
                  srai         s2, s3, 27
                  andi         s0, s2, -1366
                  add          tp, t3, gp
                  auipc        s0, 64956
                  sub          t2, s10, s4
                  srli         ra, ra, 16
                  andi         s2, t0, -542
                  sltiu        a7, t2, 1809
                  slti         a1, gp, 160
                  sub          t2, t5, t2
                  slt          a5, s5, s1
                  sltu         ra, a0, a4
                  slt          s4, a3, a6
                  lui          a5, 524455
                  sra          a6, zero, t2
                  srai         s5, s7, 26
                  slli         a1, s5, 8
                  nop
                  srli         s10, a7, 21
                  or           gp, s6, s6
                  sltu         s10, t6, a6
                  srai         a6, sp, 9
                  lui          s11, 833091
                  xori         s9, s4, 555
                  and          zero, s8, t6
                  xori         gp, t5, 1289
                  srli         a2, gp, 21
                  slti         s10, s4, -348
                  sltiu        a6, ra, -162
                  srl          s9, sp, s4
                  sltu         s7, tp, t6
                  lui          a7, 681461
                  srai         s2, a3, 16
                  slli         a3, a0, 4
                  ori          t5, s6, -744
                  srai         zero, t3, 18
                  and          a7, gp, t2
                  sll          s7, ra, s0
                  sltu         s1, s2, s9
                  andi         s10, t4, -1070
                  sll          s7, zero, t3
                  addi         t4, s8, -865
                  and          s4, t0, t2
                  auipc        s1, 425
                  andi         t2, s2, -1194
                  srli         a4, a3, 15
                  ori          s7, s7, -815
                  slli         a2, a3, 1
                  sll          s9, s2, a0
                  slti         gp, gp, 890
                  sra          a7, a7, s2
                  sll          s5, s2, a0
                  slt          s6, s2, a3
                  sll          t4, s5, t3
                  sra          gp, s11, t6
                  or           s10, a6, gp
                  sltu         s8, s5, tp
                  slti         gp, t2, 450
                  ori          s7, s11, -1581
                  sll          tp, gp, t3
                  nop
                  andi         a3, s7, 1684
                  ori          a5, s8, -1056
                  andi         tp, t3, 1030
                  sltu         s1, t6, a3
                  slt          s10, a5, sp
                  srli         a3, a6, 9
                  slti         a5, s5, 607
                  auipc        t4, 620974
                  slti         a1, a2, 163
                  xor          t2, s8, a5
                  srli         s9, s4, 26
                  slti         a3, tp, 1235
                  sub          tp, t3, s3
                  or           gp, s10, a0
                  xor          gp, s1, a2
                  or           s1, a2, s9
                  or           t2, a1, ra
                  sll          zero, s2, gp
                  slti         a4, s4, -658
                  slt          s9, t2, t0
                  srli         s8, a2, 9
                  and          s8, t2, s11
                  srli         s4, t0, 21
                  auipc        t2, 693945
                  addi         a1, s9, -535
                  srl          t4, a7, t6
                  add          s9, s1, s11
                  auipc        ra, 953603
                  andi         t6, t4, -1533
                  sltiu        sp, a0, 312
                  xori         s1, s2, 309
                  sltu         ra, a5, t2
                  sra          t4, t2, s5
                  lui          a0, 546255
                  addi         s9, ra, 675
                  nop
                  slt          a3, s8, t2
                  srli         a6, s3, 25
                  and          a0, a6, s9
                  srli         s0, ra, 22
                  addi         s4, t0, 1503
                  sub          a3, a0, s1
                  slti         ra, t4, 272
                  ori          t6, t2, -1874
                  nop
                  srl          s11, sp, s3
                  and          a0, s4, a5
                  nop
                  sll          a0, s11, zero
                  srai         s9, s3, 4
                  xori         s4, s8, -1905
                  sltiu        s6, t0, 509
                  slti         s1, t0, 266
                  addi         t5, t5, -359
                  lui          s9, 59804
                  auipc        s6, 104011
                  sltu         s8, a7, t2
                  sll          a1, t0, s1
                  slli         s8, a1, 5
                  sll          a7, tp, s3
                  xor          s5, a1, zero
                  or           a1, ra, s0
                  srli         t2, ra, 1
                  and          s2, s9, sp
                  srli         t6, t3, 30
                  srl          a0, s9, t1
                  sll          t5, s11, a0
                  addi         s8, t3, -29
                  sll          zero, s0, s2
                  lui          s8, 492693
                  sltu         gp, t5, s10
                  lui          t3, 1004105
                  sra          ra, s2, t6
                  andi         a2, s5, -51
                  sltu         s4, s2, t1
                  nop
                  sltu         t4, a4, a3
                  srl          s10, a1, s2
                  addi         s9, zero, 1679
                  sra          a4, s11, t3
                  srl          s10, s4, t5
                  nop
                  nop
                  sltiu        sp, t6, -1434
                  sltu         s0, sp, sp
                  srai         a3, s4, 2
                  srl          t3, tp, zero
                  sra          zero, a4, s5
                  srli         s8, s7, 18
                  sltu         s2, zero, s8
                  addi         sp, ra, -43
                  or           s2, a1, s3
                  auipc        s2, 138966
                  and          gp, t0, gp
                  xori         a0, t2, 1656
                  slli         a5, a7, 17
                  slli         a3, t3, 3
                  sltu         t4, tp, s1
                  sra          a7, s0, gp
                  srli         s5, a7, 1
                  srai         s11, t0, 24
                  slli         s1, a1, 15
                  sub          s4, a6, gp
                  ori          a3, s2, 1788
                  andi         a3, zero, 1
                  xori         s8, s6, -465
                  srli         a7, t3, 17
                  srli         t4, s10, 6
                  nop
                  xor          gp, a2, s4
                  ori          s2, ra, -1943
                  slt          s6, a2, t1
                  sll          s5, sp, tp
                  sltu         s0, s10, sp
                  sra          a7, gp, t0
                  srli         s5, s10, 21
                  andi         s10, tp, 15
                  sltu         s8, t0, sp
                  auipc        s2, 31798
                  xori         s10, s1, -129
                  sub          s4, s7, s2
                  srl          zero, s4, s11
                  slli         a2, gp, 6
                  slti         zero, a0, -1742
                  add          s9, s4, s6
                  slli         s0, t1, 20
                  slt          tp, s1, a3
                  sub          s10, a7, s3
                  srli         s2, s1, 17
                  xor          s0, s4, s8
                  and          tp, a5, a1
                  srai         zero, a5, 23
                  add          ra, gp, t4
                  srl          s9, t6, s1
                  sll          zero, a7, t3
                  srl          s1, a7, gp
                  auipc        zero, 627037
                  srli         t5, t0, 7
                  or           s4, s3, t6
                  slt          a6, t4, ra
                  sltu         s7, s11, a2
                  slti         s11, s8, -1265
                  slti         s5, s11, 1972
                  lui          t6, 686219
                  slti         s6, s2, 1374
                  sltiu        s8, s7, -1697
                  xor          a5, s9, s4
                  andi         s4, s11, -603
                  xor          t5, s0, a5
                  add          s2, a1, t2
                  addi         s4, sp, -844
                  or           s0, s6, s4
                  or           a0, s0, t6
                  andi         s1, t4, -172
                  xor          gp, a3, zero
                  srai         a5, t2, 2
                  nop
                  sra          ra, a0, s10
                  slti         s6, s2, -991
                  auipc        s11, 451509
                  sub          a0, t1, s3
                  nop
                  slti         a3, t5, -57
                  xori         a1, ra, -634
                  add          s10, gp, a6
                  sra          s6, t2, a3
                  add          s10, a6, s1
                  slti         zero, s3, -468
                  xor          t4, s1, t6
                  srl          sp, a7, a7
                  ori          t6, gp, 619
                  slti         tp, s0, 1673
                  sltu         a4, s9, a6
                  lui          s0, 684536
                  lui          t3, 317744
                  slti         a4, tp, 1585
                  xor          s11, s5, a4
                  sub          s10, sp, sp
                  sltu         s11, s7, a1
                  sll          s2, a2, a1
                  sub          s4, ra, a1
                  sra          a3, s9, a6
                  lui          a6, 495721
                  lui          t6, 1026689
                  ori          s8, a0, 956
                  or           s7, t6, t3
                  sub          s5, gp, a0
                  auipc        s5, 396730
                  sub          a1, s1, t4
                  srli         t6, s0, 30
                  slti         s9, tp, -1780
                  sll          s10, a7, ra
                  or           s0, a3, t1
                  auipc        s1, 756764
                  auipc        gp, 91624
                  and          a1, ra, t4
                  srli         tp, a3, 23
                  lui          gp, 40019
                  xori         a4, a1, 1450
                  xori         s6, a5, 764
                  sub          s9, a6, s11
                  sll          s9, s0, t6
                  sltu         s8, zero, zero
                  sub          tp, s9, s0
                  sltu         s8, ra, s6
                  add          t5, a7, a0
                  xori         a6, zero, -363
                  sll          zero, t5, a1
                  xor          tp, s11, a3
                  slti         a5, t1, -1073
                  sra          a6, tp, ra
                  add          s0, t2, t4
                  srli         t3, a0, 29
                  slli         s7, a5, 1
                  or           a4, s4, sp
                  sltu         a3, zero, a3
                  sltu         t5, a1, a3
                  xor          t6, t4, s8
                  slt          a4, s1, s6
                  andi         a0, a1, 857
                  andi         t3, tp, 196
                  srl          s4, t6, s6
                  sra          s1, s6, t1
                  slt          a5, s8, s4
                  and          zero, s5, t1
                  auipc        t5, 304785
                  xor          tp, sp, s1
                  sra          t4, a6, tp
                  lui          t3, 23144
                  addi         a6, t5, 177
                  srai         sp, s6, 7
                  sltiu        a2, t3, -541
                  xori         t2, t3, -1441
                  addi         s5, s7, -265
                  slt          s5, s8, a2
                  andi         tp, s6, 1111
                  or           zero, tp, sp
                  srai         a5, t5, 1
                  lui          s6, 838672
                  srli         ra, t5, 5
                  nop
                  slti         a7, s0, -1596
                  sub          a5, s9, t2
                  sub          tp, s7, t3
                  xor          a3, a7, s0
                  ori          s0, a4, 1180
                  add          a1, a3, s9
                  nop
                  add          a0, s6, s9
                  srli         s8, t1, 13
                  xori         s1, s0, -970
                  ori          a5, zero, -108
                  or           t4, s10, a1
                  slli         zero, a6, 0
                  srai         s10, s11, 2
                  auipc        a2, 338682
                  xor          tp, zero, a6
                  nop
                  sll          s9, s4, s11
                  add          t6, s5, s1
                  auipc        s7, 669583
                  srl          a3, t5, t1
                  ori          tp, a0, 1002
                  sll          a6, s1, a1
                  addi         t2, t2, -1153
                  srl          t6, s0, s5
                  slli         tp, a4, 26
                  or           a4, s8, t4
                  or           a0, s2, a6
                  sltiu        t2, ra, 727
                  and          s6, a7, t4
                  srli         t2, a3, 27
                  nop
                  andi         s4, zero, -658
                  srai         s10, a4, 11
                  sra          t2, a7, s4
                  sll          a3, s7, a5
                  auipc        s7, 964035
                  andi         a4, t0, 515
                  slli         s7, t3, 10
                  auipc        s8, 382967
                  lui          sp, 549855
                  nop
                  ori          t5, a5, 1059
                  slti         s1, t6, -370
                  ori          t3, s10, -1261
                  auipc        a4, 135825
                  sll          a6, a4, t1
                  auipc        a6, 212819
                  sltiu        s9, ra, 1120
                  slt          s1, s7, a1
                  lui          s7, 764974
                  or           a2, s11, s5
                  andi         t4, ra, -419
                  slt          zero, s7, s2
                  sltu         t3, tp, sp
                  slti         a6, t2, -1779
                  auipc        t2, 538417
                  ori          a4, s5, -1860
                  srai         s11, s7, 14
                  srai         a1, t2, 5
                  srl          s0, t0, a4
                  sub          sp, zero, s4
                  slt          t2, s6, s9
                  and          s10, s0, s3
                  slt          tp, s9, s4
                  sra          a7, s5, zero
                  srli         ra, t6, 15
                  slt          tp, zero, s6
                  auipc        t4, 27341
                  xori         s7, t0, 1010
                  and          tp, s0, t6
                  add          s2, t6, a2
                  slti         t4, sp, 1332
                  xor          t4, s10, a0
                  addi         zero, a0, 1577
                  slli         tp, t1, 2
                  add          s9, a6, a4
                  xor          a3, tp, s3
                  sll          tp, t2, a4
                  sub          a1, s4, a7
                  slt          s10, a4, s0
                  nop
                  slti         s9, s6, -958
                  or           s1, s3, t6
                  add          s1, t6, zero
                  slti         s10, a0, -1292
                  sltiu        s8, a6, 971
                  auipc        a7, 725381
                  xor          s10, sp, t1
                  srli         sp, t5, 15
                  lui          s4, 224590
                  slli         s8, gp, 8
                  or           a3, s9, t0
                  andi         a3, s1, 1144
                  addi         s0, t5, -1715
                  slt          tp, a4, t1
                  add          a5, t3, s7
                  srli         a3, t5, 3
                  slli         a2, t6, 13
                  sll          tp, t3, s5
                  slt          a6, a3, zero
                  nop
                  slt          a1, t3, a7
                  srl          s1, zero, t1
                  nop
                  nop
                  sra          s5, t2, t4
                  ori          a5, t4, 874
                  nop
                  ori          a7, a0, 1009
                  add          a0, sp, a4
                  slt          s5, t4, t6
                  sltu         s9, t5, a1
                  addi         s5, s0, 250
                  xori         a5, zero, 882
                  slti         t6, s2, -689
                  xori         t5, s0, -1746
                  sltiu        s9, s6, -1272
                  andi         tp, a5, -342
                  and          t3, a7, s11
                  sltiu        s0, s6, 30
                  srai         a2, s5, 15
                  sll          a2, a6, s7
                  and          a0, s9, s7
                  slt          s8, s9, a2
                  xori         a5, s3, 616
                  ori          s0, t1, -1868
                  addi         ra, a0, 754
                  andi         s11, a3, 1405
                  sub          t2, a7, gp
                  srai         s6, s3, 9
                  sltiu        t3, t5, -1847
                  add          tp, ra, ra
                  lui          a0, 440263
                  sltu         s10, s7, t4
                  slt          a6, t4, t0
                  sub          sp, t4, s0
                  lui          s2, 476414
                  slli         t6, gp, 17
                  sll          s9, tp, s7
                  xor          t3, s11, a5
                  andi         s8, s2, -1262
                  sltu         a2, s1, a6
                  ori          t4, s9, 734
                  or           t3, s0, s9
                  slt          a3, ra, a0
                  sll          a1, a5, s3
                  srai         a0, s2, 1
                  srl          t2, t1, t3
                  slti         t6, t1, 1388
                  slti         s5, s1, 1877
                  sll          s5, s6, s7
                  add          s1, s0, a5
                  slt          a7, zero, t4
                  and          tp, a5, a0
                  slt          s6, t4, t0
                  and          s6, t6, s0
                  lui          s7, 99847
                  addi         s9, gp, 367
                  and          s1, t4, a2
                  or           t4, s2, s0
                  slti         a4, t1, -136
                  sll          s10, s9, a7
                  sltu         s4, t1, a2
                  or           s6, s6, a4
                  xori         zero, s0, -830
                  and          t5, s0, ra
                  sra          t5, s1, a2
                  sub          s1, a5, s6
                  srl          zero, s4, tp
                  slt          zero, s9, a7
                  xori         sp, t4, -932
                  ori          t5, t3, 54
                  sll          a6, sp, ra
                  xori         t6, t0, -1395
                  sll          t3, t4, a4
                  sra          s5, zero, tp
                  srl          a2, t2, a6
                  xori         s7, t5, -711
                  andi         s11, gp, -1224
                  slli         a7, t4, 26
                  slti         a0, a0, -1471
                  addi         a1, s6, 1094
                  srli         a7, s3, 27
                  srai         a7, s7, 12
                  sltiu        s8, s5, 257
                  xor          zero, a5, s8
                  srli         s4, s10, 30
                  lui          a5, 490038
                  andi         s10, t2, 625
                  ori          s7, t4, -866
                  srl          a2, ra, s3
                  slt          s8, s3, s10
                  or           s4, t6, t6
                  slti         zero, a5, -580
                  sra          a4, t5, s8
                  and          s7, t1, a5
                  slti         s9, s5, -1931
                  slti         a2, t3, 24
                  xor          s10, t4, ra
                  ori          s2, tp, 1081
                  srl          t2, zero, s4
                  sltu         zero, s5, gp
                  sltu         a5, t4, t3
                  sltiu        a5, t0, -1825
                  or           s6, ra, s1
                  xor          tp, t6, tp
                  srl          s6, a4, s11
                  add          ra, zero, s6
                  ori          ra, a6, -1657
                  sltu         t3, s5, gp
                  add          sp, t0, t1
                  ori          sp, t6, 1338
                  sltu         a3, s2, s3
                  slt          a7, a2, gp
                  or           sp, t0, s2
                  or           s1, gp, s0
                  sll          a6, a1, s4
                  sltiu        sp, a0, 144
                  sltu         t5, s6, a3
                  slli         a1, s9, 7
                  srli         ra, a1, 10
                  andi         t4, t4, -129
                  ori          a7, t5, 552
                  sra          a7, t1, a6
                  srl          s7, sp, s5
                  srai         gp, a2, 31
                  ori          s1, s3, -1973
                  sltiu        zero, t6, -1293
                  srai         s4, a2, 14
                  nop
                  sub          a0, gp, gp
                  add          a3, a4, a4
                  xor          a5, a1, gp
                  andi         t5, tp, -559
                  lui          s1, 234684
                  or           s8, t6, a7
                  sub          tp, s11, zero
                  and          a6, ra, a3
                  srl          s1, t3, t4
                  xori         a0, a0, 450
                  andi         t2, s0, 1611
                  addi         s8, s6, 435
                  sra          t2, t2, t2
                  slli         tp, a5, 2
                  addi         ra, a6, -364
                  sltu         t3, a1, s7
                  sltiu        s4, t0, -1061
                  srl          t3, s0, a1
                  add          ra, t3, a3
                  xor          zero, t2, a7
                  andi         ra, zero, 1309
                  sltiu        a2, t0, -1717
                  sra          s10, t1, tp
                  and          s10, s0, s7
                  ori          s6, s11, 198
                  add          t5, a1, s1
                  sll          s7, tp, a2
                  and          ra, s6, t6
                  slt          s4, s11, s9
                  nop
                  xor          a3, tp, t1
                  sra          a5, tp, t1
                  add          a3, t5, sp
                  sra          a0, t1, s7
                  sltiu        s0, a2, 338
                  slti         a5, s6, -890
                  sltiu        ra, a0, 1949
                  add          t2, s3, a7
                  add          a1, a1, s0
                  andi         a4, s2, -820
                  ori          a4, s3, -1602
                  and          s0, s8, s5
                  addi         a6, t2, -1603
                  srl          t2, sp, s9
                  and          s2, s1, a3
                  slli         s5, a0, 13
                  srai         s11, s0, 2
                  xori         a1, s2, 966
                  ori          t5, s10, 1369
                  lui          s4, 1002477
                  srai         zero, t0, 30
                  or           s6, s11, s0
                  sll          s4, sp, a1
                  nop
                  addi         sp, a4, 1418
                  slti         a4, t5, -372
                  add          a4, a4, t6
                  or           a2, t1, s4
                  or           s5, s10, zero
                  sltu         a4, zero, s0
                  auipc        t6, 123827
                  srli         a3, a2, 18
                  slli         s1, ra, 22
                  andi         s1, s1, -1819
                  slt          a5, t4, a3
                  xori         s5, s2, -2026
                  sltiu        t3, a4, -1956
                  srli         a0, s7, 15
                  srl          gp, t3, a5
                  srai         t2, tp, 20
                  sltu         t2, sp, s0
                  sra          s0, a5, zero
                  add          t2, s0, s9
                  slti         t4, a6, 1967
                  nop
                  slli         s8, s1, 3
                  srl          s6, ra, s10
                  slt          s5, s3, a1
                  andi         gp, t4, -1054
                  srai         a1, t1, 25
                  srl          gp, t2, gp
                  add          a1, s6, s7
                  nop
                  sll          s4, gp, t0
                  addi         s6, s6, -863
                  and          tp, s8, t1
                  ori          a6, a0, 695
                  addi         t6, s0, 1472
                  lui          a5, 829149
                  andi         s9, t0, -141
                  lui          s11, 866322
                  and          s9, t0, t3
                  xori         s0, t1, -352
                  srli         t4, a5, 20
                  lui          a6, 744920
                  srli         ra, s7, 13
                  sll          s7, t0, t0
                  srl          a6, t4, s9
                  srai         s10, a1, 12
                  slt          gp, t5, gp
                  auipc        s2, 132757
                  andi         tp, s2, 868
                  srl          s1, s11, a0
                  sll          zero, s0, t1
                  or           a0, t6, t1
                  lui          a6, 32955
                  srl          gp, s6, s8
                  sra          sp, t6, t4
                  or           s8, s9, s9
                  and          t5, a4, t4
                  or           a0, zero, a1
                  addi         t2, a6, -1623
                  sra          a4, s11, t2
                  slti         a7, s9, 111
                  add          ra, t6, a2
                  slt          s10, a3, t1
                  slti         gp, t3, 1251
                  slli         s5, s3, 1
                  sltu         a7, s0, t4
                  sltu         s10, a6, s5
                  sltu         s9, a1, t6
                  srli         t3, a2, 28
                  sub          s4, a2, t6
                  ori          a5, s8, -498
                  nop
                  auipc        a5, 778246
                  xori         gp, ra, 731
                  nop
                  auipc        gp, 198656
                  add          a0, ra, s7
                  nop
                  and          a5, s3, t6
                  addi         s8, s5, -1546
                  srl          a5, a5, s5
                  lui          a5, 453846
                  add          ra, s2, sp
                  ori          s1, t0, 1300
                  andi         s1, t6, -1383
                  slt          gp, s8, t4
                  ori          tp, s4, 881
                  srli         a3, a6, 18
                  xor          zero, t1, a0
                  sub          t3, s7, a5
                  srai         ra, sp, 21
                  srl          ra, a3, ra
                  xori         s1, a5, 182
                  sra          s5, s5, tp
                  slli         s10, s5, 3
                  slt          ra, s0, s0
                  sra          a1, s11, s1
                  sltu         s2, s10, t2
                  sll          t4, a5, sp
                  srai         s2, a0, 6
                  sll          t4, a5, s7
                  xori         sp, a1, 1597
                  slli         t6, t5, 18
                  xori         tp, s6, 233
                  nop
                  srli         t2, s2, 18
                  srli         s9, s11, 7
                  srl          s9, s1, a4
                  sltiu        a5, ra, -276
                  or           s7, s8, t5
                  slli         s7, s1, 10
                  xor          t3, s6, a6
                  srai         ra, s1, 5
                  lui          s1, 681788
                  lui          s6, 598472
                  slt          gp, sp, s7
                  and          a7, t3, s9
                  sll          t5, s5, s3
                  xori         s9, s7, 1898
                  slti         a2, t0, -1987
                  add          s2, s7, a1
                  srli         t5, s10, 14
                  xori         t6, s7, -905
                  add          a7, a0, a5
                  sra          s10, a5, s11
                  auipc        a1, 791669
                  xor          a3, tp, t3
                  sub          tp, s2, s1
                  sltiu        t4, s2, -528
                  lui          s7, 855104
                  sltiu        t3, s11, 667
                  auipc        t2, 81017
                  ori          s8, zero, -1387
                  or           a3, t3, s7
                  or           a0, s0, a4
                  slti         zero, s1, -880
                  nop
                  addi         a6, s6, 1979
                  srli         tp, s7, 16
                  srl          ra, s11, t1
                  and          t4, s7, a0
                  slti         tp, sp, 566
                  ori          t3, a2, 2006
                  sra          gp, a4, s0
                  sra          a6, a0, s11
                  slt          a0, s11, a5
                  slli         a4, t4, 26
                  srl          t4, t1, ra
                  or           s4, sp, s11
                  sub          s7, s7, a3
                  or           a6, s9, t1
                  lui          s0, 1013390
                  slt          s5, sp, t1
                  sltu         s7, a4, s0
                  or           a2, s10, a7
                  or           a7, t0, s11
                  slli         a2, t4, 12
                  slt          s11, s4, t1
                  or           t4, s1, t1
                  sltiu        t3, s1, 308
                  nop
                  andi         a6, zero, 1301
                  slt          a7, t1, a2
                  nop
                  nop
                  ori          s5, s4, 554
                  sltu         ra, a0, t1
                  ori          s0, s3, -567
                  lui          a5, 560958
                  slli         t6, s9, 9
                  ori          t6, t1, -301
                  slt          a4, t6, s3
                  slli         sp, gp, 6
                  sltu         a4, s3, s7
                  add          s6, sp, s5
                  srli         ra, s9, 19
                  srai         s6, s5, 27
                  sltu         a2, a2, t4
                  srai         s1, s2, 19
                  sra          a7, s6, a3
                  xori         s11, t3, -813
                  sll          tp, zero, a6
                  slt          gp, a3, a3
                  slli         s6, a4, 5
                  or           s5, a2, s5
                  srai         s9, s8, 1
                  srai         a7, s9, 30
                  xor          s5, t6, a0
                  slti         s4, t1, -919
                  sltu         ra, a2, a3
                  add          t4, t3, a1
                  sltiu        gp, a5, 1878
                  xor          a3, t0, a6
                  srli         a2, s7, 18
                  andi         zero, sp, 783
                  or           s4, ra, s9
                  srli         ra, tp, 31
                  ori          s0, ra, -1009
                  ori          s7, s6, -1351
                  sra          t2, s11, s3
                  srli         a6, s10, 7
                  addi         s0, t3, -223
                  slli         sp, t2, 6
                  lui          gp, 980923
                  xori         ra, a4, -163
                  xor          s11, s10, a1
                  sll          s6, a0, t3
                  slli         a6, gp, 23
                  and          s9, s5, s4
                  xor          a0, a1, s5
                  srl          sp, sp, s5
                  sll          a3, s3, sp
                  slli         s2, s4, 26
                  xor          ra, s2, s6
                  xori         s7, a7, 223
                  auipc        t2, 521399
                  nop
                  and          s9, gp, s0
                  nop
                  or           ra, s1, a5
                  nop
                  sll          a1, a0, s4
                  and          t3, a4, a6
                  sra          t2, t6, a7
                  addi         s6, ra, -329
                  slt          gp, a1, a2
                  or           zero, a4, t3
                  sub          s5, a6, s9
                  and          t3, a6, s8
                  addi         t2, s3, 1279
                  sra          t3, s9, s8
                  slti         s0, t2, 928
                  xor          a6, a6, t1
                  ori          s0, a6, 272
                  sub          gp, a4, t4
                  slli         a2, a4, 2
                  nop
                  slti         s2, s7, 550
                  sltiu        a3, s3, -1742
                  lui          a1, 755631
                  sll          s7, ra, a5
                  srl          t5, s2, tp
                  sra          gp, tp, t2
                  ori          s5, t4, -952
                  add          a1, tp, s0
                  auipc        sp, 623937
                  lui          s1, 935847
                  and          tp, sp, s1
                  andi         t4, s5, -1846
                  andi         t4, s11, -1454
                  auipc        t3, 745990
                  srl          a6, t1, s1
                  addi         s4, zero, -1836
                  slt          t3, s5, s8
                  srli         s8, t6, 4
                  sltu         s5, s1, s0
                  slti         t2, a4, 1681
                  ori          a5, t5, 79
                  slli         tp, s0, 12
                  srai         s0, tp, 23
                  slli         ra, ra, 29
                  xori         a4, t1, 593
                  srai         a2, t0, 20
                  nop
                  auipc        t5, 1025106
                  andi         s7, s0, 146
                  addi         s2, a2, -1976
                  sltiu        a1, a7, 372
                  xori         s7, a4, -1624
                  addi         s2, t6, -514
                  sltu         s9, ra, t6
                  addi         gp, t6, -1789
                  xori         a3, t3, -1563
                  addi         sp, sp, 571
                  slt          a2, t2, s3
                  add          s1, t5, t2
                  sll          t6, s11, t1
                  and          t5, a6, a0
                  sltu         s9, a2, s10
                  sltu         t6, a1, s2
                  addi         ra, t4, 1151
                  srl          s10, s8, s10
                  or           s8, t0, a0
                  sltiu        a3, s6, -1683
                  andi         tp, s1, 681
                  lui          a5, 1026178
                  sltiu        s8, s4, -1733
                  and          tp, s8, t5
                  slti         s10, a7, -329
                  sltu         tp, sp, s6
                  auipc        tp, 532271
                  sltu         a3, s8, s2
                  xor          t6, s0, a7
                  auipc        t3, 363595
                  slli         s4, t0, 29
                  sub          t4, s5, s10
                  nop
                  sll          t2, a4, s1
                  sll          s6, t0, s7
                  addi         s1, s1, 647
                  sub          s1, tp, a6
                  add          s5, a3, s0
                  slt          t3, gp, t3
                  xori         t6, t6, 1268
                  srl          s0, t1, s4
                  addi         a0, s1, -1837
                  slli         t6, a3, 21
                  xori         t2, s3, -1409
                  srli         a0, a6, 18
                  nop
                  srli         t5, s11, 4
                  xor          s0, t1, a6
                  andi         s11, ra, 1331
                  srli         a1, t3, 20
                  srai         ra, a3, 8
                  sll          t3, t1, a4
                  lui          s11, 483717
                  ori          s2, s0, 441
                  sltu         sp, a4, t1
                  andi         s5, t1, -567
                  auipc        gp, 123968
                  srli         s8, gp, 17
                  srai         s2, s0, 25
                  slti         tp, ra, 1420
                  and          a5, s9, s2
                  and          a3, t1, s10
                  sra          a5, s8, s4
                  auipc        tp, 1018625
                  srli         a4, tp, 16
                  add          s0, s1, s0
                  auipc        s10, 475577
                  addi         t6, s2, 1380
                  ori          a6, s1, -1040
                  sub          t6, a6, s8
                  sra          s8, t5, s4
                  slli         a3, t0, 29
                  ori          a5, ra, 831
                  andi         a4, ra, -269
                  sltu         a1, a4, a0
                  srl          a7, t0, t4
                  slli         s5, t1, 12
                  srli         a1, a5, 2
                  or           t2, s1, t2
                  lui          s0, 969835
                  slt          zero, ra, s7
                  srai         t2, s4, 22
                  xor          a3, a4, s0
                  auipc        zero, 912093
                  slli         gp, a7, 16
                  srl          t4, s6, t0
                  addi         tp, s8, 346
                  srl          tp, s5, ra
                  lui          a0, 607327
                  and          a4, t3, s11
                  sra          tp, t1, gp
                  and          s6, s11, t4
                  andi         a3, a6, -399
                  lui          a0, 873047
                  sltiu        t3, s5, -763
                  srl          t6, a5, t4
                  lui          t6, 701417
                  or           a0, s4, gp
                  srl          s10, t1, a3
                  slti         t6, s6, 1594
                  andi         s2, a5, -104
                  xori         a4, t1, 68
                  and          s4, gp, s6
                  sltiu        t3, zero, -1478
                  srai         a2, t0, 24
                  sra          a6, s2, a7
                  slli         s0, a6, 6
                  and          a3, a2, tp
                  addi         a5, gp, -1701
                  add          sp, a2, a5
                  sltu         t5, a1, sp
                  and          s1, t3, s5
                  auipc        a0, 915123
                  srli         s2, a7, 10
                  or           s1, s9, s6
                  add          s4, s8, s0
                  add          a2, tp, zero
                  sltu         zero, a7, a5
                  nop
                  xori         a6, t3, -800
                  and          t6, t2, s4
                  xor          s0, a6, sp
                  xor          a7, t1, t4
                  sltiu        t3, s5, -1194
                  xor          a3, t5, s4
                  ori          a2, a4, -1083
                  slli         a7, sp, 29
                  srl          s5, a3, a6
                  slti         a4, a2, -1240
                  srai         s11, t4, 24
                  ori          tp, a0, -1446
                  ori          s2, a1, -1741
                  nop
                  sll          a4, t5, s8
                  sltiu        t6, s8, 775
                  srai         a7, s3, 19
                  nop
                  xori         zero, t6, 1089
                  and          s10, t2, a6
                  sra          a7, t2, a3
                  add          sp, zero, a0
                  sra          a1, s10, tp
                  addi         s2, s5, -276
                  auipc        sp, 1046441
                  srli         t6, t0, 3
                  xor          s1, a4, t0
                  or           t4, a6, ra
                  xori         s0, s11, 688
                  srai         t3, a0, 1
                  andi         s10, s6, -209
                  sltu         a6, s9, t3
                  srl          a3, a2, a6
                  xori         tp, t0, 389
                  slti         s2, s0, -455
                  srl          s4, t6, sp
                  sll          s2, ra, a3
                  sra          ra, s10, a5
                  lui          s0, 884370
                  slti         s6, a2, -67
                  and          s2, s6, s0
                  sltiu        s1, tp, -765
                  addi         t3, ra, 454
                  slli         a4, a7, 22
                  nop
                  srai         t5, s7, 7
                  andi         s0, a2, -584
                  nop
                  sltiu        t2, sp, -825
                  slt          a5, a5, t3
                  auipc        a5, 6875
                  xori         a6, s7, 1794
                  addi         t5, s6, 398
                  andi         a5, a4, 181
                  srl          s9, zero, s3
                  sra          gp, a3, a7
                  lui          s7, 965227
                  slt          s4, zero, s9
                  add          ra, s11, ra
                  xor          a6, t5, s9
                  xor          s7, s4, t4
                  auipc        tp, 560805
                  slli         s7, a7, 29
                  add          gp, s11, t6
                  xor          sp, s1, s1
                  srai         t3, s3, 30
                  lui          s7, 115857
                  and          s5, t4, s9
                  ori          a2, a6, -654
                  slt          sp, t1, zero
                  andi         s4, gp, -1524
                  srai         sp, t2, 3
                  nop
                  srli         a5, s6, 28
                  sub          s10, tp, s3
                  or           s1, a6, s4
                  add          tp, s9, s5
                  sra          s4, s9, s9
                  sub          a7, t2, s0
                  lui          s5, 260123
                  srli         gp, t2, 22
                  sltiu        tp, t0, 237
                  srli         a3, zero, 15
                  and          s10, zero, a4
                  sll          t6, a0, a5
                  auipc        a0, 381570
                  auipc        sp, 54792
                  nop
                  sltu         a0, t0, s11
                  lui          a4, 892354
                  srli         a1, tp, 2
                  auipc        s5, 14266
                  nop
                  xori         a6, s6, 1917
                  sub          t2, a0, s1
                  sll          s9, ra, s0
                  slli         a2, a2, 23
                  sltu         gp, a3, t6
                  slli         s8, sp, 26
                  sra          ra, t5, t0
                  sltu         s8, t1, a3
                  xor          s2, s8, sp
                  xori         sp, t6, 1330
                  andi         gp, a0, 624
                  andi         a7, s6, 1750
                  xori         t4, tp, -1968
                  lui          a7, 924995
                  sra          a6, a4, s9
                  sub          a1, t5, s2
                  ori          a6, s2, 2030
                  slli         s6, s8, 4
                  srai         s10, a2, 15
                  slt          zero, a4, a4
                  slt          s10, a3, t5
                  sll          a0, t5, s11
                  slti         s1, s9, 319
                  srai         a6, a2, 12
                  xor          a6, gp, sp
                  lui          t2, 724066
                  slli         a1, s8, 31
                  srl          a1, s8, tp
                  and          sp, s5, t6
                  ori          t3, t5, 1280
                  auipc        s0, 80134
                  li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           a7, 0x0
                  li           t3, 0xffffffff
                  li           s6, 0x0
                  li           s2, 0x0
                  li           s11, 0xa1d3d2b6
                  li           s5, 0x6518c085
                  li           t4, 0x0
                  li           s4, 0xffffffff
                  li           a3, 0x80000000
                  lui          a3, 293599
                  addi         t4, s11, -219
                  sub          s5, s2, s2
                  nop
                  sub          s11, s2, a7
                  nop
                  sub          a3, s5, s2
                  sub          s5, a7, s4
                  sub          s2, s11, s4
                  lui          s6, 989217
                  lui          a3, 993625
                  addi         s2, a7, -884
                  addi         a3, a7, -1420
                  add          t3, s11, t3
                  lui          s4, 289279
                  lui          s11, 758763
                  sub          t4, s2, a7
                  sub          a3, a7, a7
                  lui          s5, 130467
                  nop
                  addi         s6, s11, -945
                  addi         s11, t4, 1223
                  lui          a7, 509890
                  auipc        a3, 560269
                  nop
                  nop #end riscv_int_numeric_corner_stream_11
                  sltu         t3, a2, a6
                  srai         s7, s4, 13
                  or           a4, s7, t5
                  add          a3, tp, tp
                  sltu         s0, s7, s0
                  sra          s5, a4, s9
                  slti         s6, a1, -1117
                  lui          s1, 707297
                  sub          a5, s11, a3
                  sltu         ra, t3, s11
                  auipc        t3, 582170
                  nop
                  srl          s2, a3, tp
                  xor          s4, t3, a1
                  sra          a5, t6, t5
                  sltu         s5, s3, s11
                  sra          a7, t3, a6
                  srl          a0, t4, a5
                  slti         t6, t3, -257
                  srli         t5, s8, 1
                  slti         s0, s9, -458
                  srli         a2, t5, 26
                  slt          s8, gp, s10
                  or           t3, a3, s10
                  xori         s0, a6, 218
                  add          s4, gp, s1
                  sub          zero, s10, t3
                  auipc        s11, 4279
                  sltu         t6, zero, a2
                  slti         a1, a3, -241
                  slli         s7, a6, 20
                  slt          a6, s0, a0
                  andi         zero, a2, -1114
                  slt          sp, s4, t5
                  slt          s8, s2, t6
                  slti         s4, gp, -1069
                  sll          s5, t3, s11
                  auipc        t6, 210646
                  or           s5, s8, t1
                  srai         s11, t1, 26
                  sltu         gp, s9, s10
                  xori         t5, a6, 1324
                  srai         s9, s7, 23
                  xori         t2, a6, 278
                  sub          t2, a1, s2
                  srli         t4, a4, 12
                  and          s10, t5, s3
                  srl          sp, s6, t0
                  srl          t4, t2, t6
                  andi         sp, s2, 1764
                  xor          a3, t6, s4
                  slli         t3, a0, 12
                  slti         s6, s8, 1111
                  or           s4, s10, t4
                  and          a5, s8, a6
                  xor          a1, t2, s2
                  xor          t5, tp, a0
                  ori          zero, a7, 1200
                  andi         a1, s3, -376
                  srli         t2, a7, 6
                  slti         a3, t4, -1370
                  slt          a1, t0, s9
                  sll          a6, s6, s4
                  srai         s11, sp, 15
                  srl          a6, a4, a7
                  ori          s1, s4, 1317
                  sra          s8, s5, a1
                  auipc        gp, 393060
                  nop
                  auipc        s0, 759980
                  sltu         sp, t5, t1
                  slli         t4, t6, 19
                  srli         t6, sp, 9
                  and          a1, s1, t0
                  slti         a4, a0, 916
                  addi         t3, a5, 1582
                  sltiu        a1, s7, 65
                  sltu         s10, t1, s9
                  sra          s1, s4, s6
                  slli         a0, sp, 26
                  srl          a3, s8, tp
                  slli         zero, sp, 30
                  and          a0, a4, s4
                  srl          s5, s6, t1
                  slt          gp, t6, s9
                  sll          tp, s11, s4
                  sltiu        s0, s10, -1922
                  andi         gp, tp, -507
                  ori          t3, a4, -1531
                  srli         a3, s11, 23
                  sll          s10, t6, a3
                  slli         s5, s1, 20
                  nop
                  andi         a4, t0, -688
                  sltiu        s8, a0, 15
                  or           s11, t1, s11
                  sltu         ra, zero, t6
                  sra          a2, t5, s7
                  or           s0, t3, s1
                  xori         sp, s3, -270
                  addi         a0, a2, -1091
                  nop
                  xori         s7, s3, -679
                  sltiu        s8, sp, -50
                  sltiu        s7, t0, -1565
                  xori         t2, gp, 1174
                  or           s8, s7, a0
                  auipc        t5, 23439
                  ori          tp, s6, 76
                  xori         a0, t0, -1909
                  ori          sp, s3, -1823
                  add          t5, gp, gp
                  nop
                  auipc        zero, 242922
                  sra          s1, s3, s7
                  nop
                  sub          zero, a6, ra
                  xor          s9, a2, t3
                  andi         t5, t1, -1586
                  addi         ra, zero, 678
                  sra          a3, t3, s10
                  add          a0, tp, s8
                  sra          a5, a6, s7
                  lui          t6, 882533
                  ori          a2, s3, 309
                  sll          s10, s1, t4
                  ori          t3, a7, 1309
                  slt          s5, a2, s4
                  andi         a2, s3, -1309
                  srai         gp, s3, 5
                  or           t6, a5, a5
                  addi         s4, s2, -56
                  sub          a5, s8, zero
                  sltu         zero, a2, s1
                  sltiu        s0, a5, -1323
                  sltu         s10, s10, sp
                  sub          a5, a4, a4
                  srl          s1, s9, t3
                  and          a5, s6, t2
                  or           t6, s4, s6
                  slti         ra, ra, 224
                  andi         s9, t1, 614
                  sub          ra, gp, gp
                  and          s2, gp, gp
                  srli         ra, s8, 8
                  sltiu        s9, a4, -1664
                  sll          s1, t5, s9
                  slti         s1, a0, 1800
                  sll          t5, a4, s4
                  add          s1, t6, s10
                  xor          t2, s5, zero
                  srli         a6, t3, 0
                  auipc        s2, 304330
                  add          t5, s10, zero
                  srl          t6, s11, a5
                  ori          a2, t3, -276
                  or           s6, s6, sp
                  add          sp, t3, t1
                  sltu         ra, s10, s0
                  srl          a0, t0, t5
                  sltu         a6, s6, s9
                  slli         s0, ra, 5
                  auipc        t6, 297773
                  auipc        zero, 670109
                  srai         s2, s5, 28
                  and          s4, a1, s11
                  lui          s1, 643227
                  sub          t4, a3, a0
                  sltiu        s1, s5, 141
                  addi         t5, s1, -830
                  slti         s6, s11, 2018
                  xor          s9, s4, ra
                  or           a1, s3, a2
                  srli         s9, zero, 24
                  xori         a7, a1, 6
                  add          s2, zero, s4
                  and          s2, s10, s11
                  sub          t3, a2, t2
                  ori          a1, a0, -19
                  sub          s4, a7, a2
                  ori          s8, s9, 1361
                  andi         t5, gp, -1228
                  andi         a2, t5, -845
                  lui          s5, 790169
                  lui          s2, 461178
                  sra          a0, t0, s7
                  lui          a2, 78593
                  xor          t6, s2, a2
                  or           sp, t3, t6
                  srli         s4, t1, 16
                  nop
                  slti         s6, a3, -1746
                  srai         s5, a2, 9
                  xori         s5, ra, -1801
                  slli         sp, t0, 7
                  xori         s4, s0, -907
                  or           zero, s11, a0
                  sub          a0, tp, t2
                  slti         t5, t2, -390
                  add          sp, zero, s10
                  addi         gp, a4, 443
                  srli         s8, a4, 26
                  xori         s5, sp, 1619
                  sltu         a7, a7, s11
                  and          s8, t0, gp
                  sub          t3, s2, s4
                  srai         s1, t1, 29
                  srai         a1, s7, 23
                  andi         a5, zero, 831
                  sll          s7, s2, s4
                  sltiu        s7, a4, 2039
                  sub          gp, s0, s10
                  xori         s1, s4, 931
                  nop
                  slt          a3, a2, a2
                  or           a3, s2, a0
                  andi         ra, a3, -1198
                  sra          a7, s11, t1
                  sltiu        t2, t3, -895
                  addi         t4, a7, -1023
                  sra          ra, zero, s2
                  nop
                  srl          s2, tp, a7
                  sltiu        a4, t0, -156
                  lui          a0, 701352
                  srl          t5, s10, t5
                  ori          t2, s4, -1073
                  srli         a0, a5, 12
                  sll          a5, t1, t0
                  andi         ra, a5, -795
                  add          t5, ra, s4
                  slli         a2, a6, 8
                  slli         zero, s5, 0
                  xor          a7, a4, t0
                  or           t6, t5, s2
                  auipc        s8, 1038440
                  sub          s10, s10, t2
                  sltu         sp, a2, s9
                  srai         t4, a2, 16
                  srli         tp, s11, 18
                  auipc        s11, 581896
                  lui          s11, 109263
                  and          s6, zero, zero
                  sub          ra, sp, s1
                  addi         t6, tp, 871
                  lui          s5, 1039264
                  ori          s6, s3, -1568
                  or           s6, s0, s0
                  ori          s4, a7, 1661
                  addi         t5, s0, 1674
                  sra          s5, s6, s8
                  sub          s0, t3, s4
                  srl          a4, s7, a6
                  sub          a4, t2, a0
                  srai         s7, t3, 8
                  sltu         s2, t3, t3
                  xori         t4, ra, -76
                  or           s10, t5, a7
                  srai         t5, a4, 16
                  slt          s4, ra, s0
                  andi         t3, t4, 1320
                  srai         s5, s0, 23
                  srl          a7, s8, t3
                  or           a3, a0, t2
                  sra          tp, a5, s5
                  auipc        t5, 981615
                  xor          a4, s3, zero
                  sub          s9, s7, a1
                  or           ra, a1, a3
                  sra          s9, s7, s8
                  sltiu        s7, gp, -250
                  auipc        s4, 544500
                  srli         a2, s8, 12
                  srl          s1, a5, s9
                  add          s10, s8, t1
                  sra          s11, s10, t6
                  slli         s0, zero, 1
                  srai         s11, t1, 1
                  ori          s2, s0, -468
                  lui          s9, 244461
                  and          t3, a5, s2
                  srl          s8, s9, s10
                  sltiu        s9, s2, 533
                  sltiu        t3, t1, 968
                  srli         a6, a7, 3
                  andi         s11, s7, -1898
                  slti         t5, a7, 1423
                  srl          a4, s11, t0
                  slt          gp, t2, t2
                  xori         s4, t6, 1214
                  sra          s11, t3, s11
                  addi         a4, t3, -604
                  addi         s6, a5, -74
                  xor          tp, a2, t0
                  xor          zero, sp, a4
                  sll          s8, s2, a1
                  lui          s11, 769823
                  lui          a0, 800286
                  slli         s11, s7, 3
                  xor          a3, t4, zero
                  slli         gp, t5, 17
                  sltu         tp, s3, a1
                  lui          a6, 905661
                  auipc        ra, 177580
                  add          a2, t3, zero
                  sub          s7, t4, s9
                  sub          s1, s11, t5
                  sltu         a4, t6, s5
                  add          s5, t5, s8
                  sll          ra, s5, zero
                  and          a4, t1, s4
                  xori         s10, t0, -617
                  srai         a0, s1, 22
                  slli         s10, s7, 8
                  sll          a1, a7, sp
                  and          a1, a2, s6
                  sltiu        s8, a5, 1405
                  lui          s7, 21370
                  ori          s1, gp, -972
                  sll          s1, a7, s7
                  xor          s11, a1, ra
                  slti         s2, s2, 894
                  sll          zero, s6, t0
                  sltu         a1, a4, t0
                  auipc        s5, 463588
                  sub          ra, a4, s6
                  srai         zero, s1, 7
                  slt          zero, t1, t6
                  lui          s9, 217910
                  xori         s7, a7, -740
                  sub          a6, s5, s10
                  sub          s4, t3, s0
                  ori          a7, t2, 2046
                  or           a5, s9, a3
                  add          tp, a7, s5
                  and          t4, t0, a6
                  sltu         s1, gp, t5
                  andi         s6, s10, -821
                  add          t6, s11, t1
                  srl          sp, a0, tp
                  slti         a3, a3, 1937
                  sltiu        a0, s7, -1085
                  xor          t4, s9, s0
                  sra          t6, a2, t6
                  slli         s0, a6, 23
                  sra          s8, t6, s1
                  addi         s4, t6, -1940
                  add          s1, s1, s11
                  slt          a3, gp, s9
                  ori          sp, a2, -842
                  xor          a0, t3, s11
                  and          a2, ra, s7
                  sra          s11, s5, tp
                  srai         t6, s3, 23
                  slti         s2, t1, 1483
                  sll          s2, s5, s2
                  nop
                  slt          a4, s1, zero
                  sub          tp, s11, s4
                  sltu         t2, t3, s3
                  srl          s4, s11, t6
                  lui          t3, 104171
                  addi         a5, zero, 144
                  sltu         s9, s8, s6
                  ori          t6, t6, -702
                  slt          s0, t4, a5
                  sra          t6, s10, a3
                  srl          a7, a0, gp
                  add          t2, a3, a5
                  add          tp, gp, s8
                  ori          s8, tp, 422
                  or           a2, a0, s9
                  sltu         gp, t0, a6
                  auipc        s7, 268697
                  sub          sp, s6, a2
                  slti         a0, a5, -1713
                  sub          tp, s1, a3
                  slt          s1, a2, gp
                  or           a5, s5, s4
                  ori          t3, t5, 164
                  sra          a2, t6, zero
                  sra          gp, s9, t6
                  auipc        t4, 958985
                  and          s10, tp, s3
                  sub          s0, s9, zero
                  sra          s0, a0, a7
                  ori          s9, s0, 694
                  slti         t2, sp, -1023
                  sra          s9, s6, s11
                  ori          a7, t0, 990
                  xor          s2, ra, s1
                  lui          t6, 1024439
                  sra          a4, s2, t6
                  add          s8, t5, t6
                  sltu         s7, t4, gp
                  ori          s8, t6, -261
                  slt          a2, t3, a3
                  nop
                  sub          s9, s9, sp
                  sra          s8, s4, s3
                  srli         a2, t4, 9
                  slli         t6, s11, 14
                  srl          s8, a0, t0
                  ori          s4, s9, 1962
                  xori         s1, s8, -666
                  slti         a6, a7, 1215
                  lui          tp, 531597
                  sll          a6, s10, t4
                  auipc        s8, 964819
                  sltu         a2, zero, sp
                  andi         zero, t6, 1825
                  add          s0, t3, a7
                  lui          t5, 960521
                  auipc        a1, 928653
                  ori          tp, s7, 1504
                  srl          s1, a3, s8
                  sll          s6, s6, s3
                  addi         s0, t2, 762
                  slti         s0, s2, 1937
                  srl          a7, s4, t5
                  slli         tp, a3, 13
                  and          gp, t5, t5
                  or           s8, s6, s2
                  and          a3, zero, t2
                  sra          s4, s7, s5
                  ori          s4, s6, 486
                  sltiu        a5, t1, 865
                  slt          a0, s2, gp
                  auipc        s2, 737166
                  xori         a4, zero, -1289
                  nop
                  andi         s5, s0, -969
                  addi         a7, s4, -986
                  sll          tp, a5, a5
                  andi         a6, s3, 646
                  ori          s10, t0, 1878
                  auipc        gp, 197747
                  and          t3, s2, t6
                  addi         a2, t6, -713
                  and          s7, s6, sp
                  ori          s5, s6, -354
                  srl          a1, t0, sp
                  sra          s2, s7, a6
                  srai         a1, t4, 17
                  sltiu        s8, a3, 368
                  auipc        t4, 583856
                  sltiu        a2, t3, 1086
                  and          a6, s11, ra
                  xori         zero, a6, 855
                  sub          s9, s6, s1
                  sra          t4, a5, s11
                  andi         s9, s3, 751
                  add          s5, s3, ra
                  nop
                  add          zero, t2, a6
                  slli         s4, s2, 23
                  slli         a1, t0, 0
                  slt          s11, s1, a2
                  slti         a6, s9, 427
                  xor          s6, t6, t6
                  add          a6, t6, t2
                  sub          s1, a2, a4
                  ori          s5, a1, 451
                  slti         s4, t1, 641
                  sltiu        t3, a1, 570
                  lui          t5, 152394
                  and          s2, t6, s3
                  slli         s11, tp, 25
                  or           t5, t4, zero
                  sub          s5, s3, sp
                  xori         s2, s8, 320
                  auipc        ra, 147039
                  ori          gp, a6, 1698
                  xor          ra, a0, t0
                  srli         a0, t4, 21
                  sll          gp, a5, sp
                  or           s5, a5, t6
                  sltu         gp, a5, t3
                  srl          s7, s9, a3
                  xor          s6, t2, s5
                  add          t4, s3, s1
                  nop
                  sub          a6, t5, ra
                  addi         s0, s10, 1643
                  and          s11, s6, a4
                  xor          s5, a0, tp
                  and          a2, a0, t1
                  and          s4, a3, s3
                  sra          s11, zero, s7
                  lui          a4, 804047
                  auipc        t5, 791677
                  and          t3, t6, s5
                  addi         t6, s1, -1997
                  nop
                  sltiu        a2, zero, -821
                  addi         gp, t6, 198
                  sra          zero, a6, a2
                  and          s2, zero, a0
                  ori          a5, s5, -1924
                  sra          s4, gp, a3
                  andi         s1, a6, 1415
                  sltiu        s6, s3, 572
                  and          ra, s0, s4
                  ori          sp, s3, -267
                  sltiu        zero, s7, 1455
                  lui          s8, 132884
                  sltu         a1, t1, s5
                  addi         s2, t4, 141
                  sll          s7, a4, a4
                  xor          s2, tp, sp
                  slti         s5, s10, 114
                  sra          gp, s8, t5
                  and          a2, t1, a7
                  sra          a5, sp, a5
                  ori          s11, t2, -339
                  srl          s0, s9, t0
                  lui          s0, 127475
                  add          s0, a7, s1
                  lui          s5, 413513
                  slli         a0, s10, 17
                  andi         t4, t4, -212
                  srl          s9, s11, tp
                  xori         a7, s2, -1978
                  slt          a6, s8, s3
                  srli         s11, gp, 21
                  sll          s8, a0, s0
                  sltiu        s11, s8, 229
                  sltiu        a2, a4, -1241
                  srai         s7, a2, 9
                  andi         t2, a3, 1076
                  slt          tp, s6, a1
                  sltiu        s5, s4, -800
                  auipc        t5, 965762
                  slt          a2, s11, a5
                  sll          s6, a0, t2
                  addi         a5, a5, -554
                  sltu         t3, a5, s5
                  or           t6, s10, t1
                  sltu         a2, s2, s10
                  xori         t5, a6, 29
                  srli         s7, s4, 22
                  srai         t6, a2, 14
                  sra          a6, a1, t4
                  nop
                  or           gp, t0, a4
                  andi         t3, a1, -82
                  sltu         s9, a5, s9
                  and          t6, s2, s7
                  slt          a5, gp, s5
                  slt          t5, gp, s1
                  xor          s10, s3, a3
                  slt          a0, s2, s5
                  sltu         t2, s11, s7
                  sltiu        s6, a3, -1219
                  sra          gp, a4, t2
                  slli         a1, zero, 22
                  or           s11, t4, s1
                  nop
                  or           s10, s0, a4
                  andi         s9, gp, 1767
                  ori          a1, s3, -846
                  srli         a6, t1, 31
                  xori         s11, a6, -206
                  sra          t5, t1, t3
                  nop
                  slt          s2, t6, a4
                  sltu         a0, s7, s2
                  slti         a2, ra, -368
                  addi         t5, s9, 1463
                  sltiu        a6, a1, -1291
                  add          tp, t1, s7
                  sltu         s1, a0, s5
                  auipc        a3, 90527
                  sll          gp, s0, a6
                  xor          s1, a6, s3
                  sub          t6, s0, a6
                  slt          zero, s10, a6
                  addi         sp, gp, 609
                  lui          t3, 434961
                  nop
                  ori          s10, a7, -178
                  sub          ra, ra, s10
                  sub          a0, s3, zero
                  srl          s0, a6, gp
                  sltu         s1, sp, t0
                  or           a3, a6, s7
                  andi         zero, sp, -753
                  slli         a5, t6, 24
                  li           a2, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           s8, 0x83c05f24
                  li           a6, 0xb5874718
                  li           s6, 0x0
                  li           t3, 0x0
                  li           gp, 0x0
                  li           s2, 0xffffffff
                  li           a0, 0x80000000
                  li           t4, 0xdd438d7a
                  li           a1, 0xffffffff
                  add          s6, s2, gp
                  add          gp, a2, t4
                  nop
                  addi         t4, a0, -613
                  nop
                  nop
                  auipc        s2, 559031
                  auipc        a0, 397286
                  addi         t4, t3, -1184
                  auipc        a1, 634716
                  addi         gp, s8, -78
                  sub          t3, a0, a2
                  sub          a1, s6, t3
                  auipc        s2, 222656
                  lui          a1, 541480
                  lui          s6, 965672
                  nop
                  nop
                  auipc        a1, 828977
                  auipc        a6, 184534
                  nop
                  nop #end riscv_int_numeric_corner_stream_14
                  sll          s8, t1, a3
                  ori          a0, zero, 1475
                  xori         a7, t6, 1682
                  slli         s6, s1, 27
                  auipc        zero, 756224
                  nop
                  srl          zero, s1, s1
                  sub          t4, sp, a5
                  nop
                  slt          s6, s2, a2
                  lui          s5, 267
                  srai         t4, s11, 27
                  ori          tp, a4, 1234
                  srl          t5, a4, a2
                  srli         a4, s10, 4
                  slli         a2, s11, 29
                  and          a6, s10, a2
                  sll          gp, t2, s0
                  srli         s2, zero, 15
                  xori         s0, a2, 1773
                  xor          t2, t4, t6
                  andi         a7, a6, -1124
                  ori          s9, t0, -1120
                  add          a7, a0, s0
                  sub          s5, s7, s9
                  xori         tp, t2, -736
                  sra          s6, t0, zero
                  and          a7, s7, s8
                  srai         s4, s11, 28
                  ori          s11, gp, -319
                  andi         s5, gp, -480
                  sra          a2, s3, s7
                  srli         a5, s5, 22
                  slti         a1, a7, 1745
                  auipc        sp, 468246
                  slt          a1, s11, s4
                  srl          t3, s4, t0
                  lui          a6, 874257
                  slli         zero, s8, 4
                  slli         s11, t6, 28
                  nop
                  sub          s6, t1, a6
                  sll          tp, a4, t4
                  ori          s0, s1, -1561
                  sltu         s5, t3, s8
                  sra          s4, a1, s1
                  sll          a4, t1, s4
                  slti         t5, a0, -1000
                  xori         t5, s8, 1368
                  or           gp, t5, s7
                  ori          gp, t5, 815
                  add          a2, s3, a6
                  slti         t6, s2, -1538
                  addi         s1, s1, 10
                  slli         a7, t5, 28
                  ori          s5, a7, -137
                  or           t4, s10, s4
                  addi         s11, gp, -1058
                  slti         sp, a0, -1553
                  auipc        t4, 872145
                  and          s5, s4, a6
                  xor          s5, sp, a1
                  or           s2, s8, s11
                  sltiu        a0, t5, 250
                  xori         a2, ra, 1824
                  and          t2, s5, sp
                  xor          t5, t5, tp
                  slti         ra, s8, 636
                  slti         s11, gp, -1503
                  addi         ra, s1, 753
                  sra          sp, t1, s8
                  slli         s8, s2, 23
                  sltiu        s1, s9, 1124
                  lui          ra, 212086
                  srl          a5, t1, s8
                  add          a2, sp, a1
                  sll          s1, t4, s8
                  sub          s7, s1, s8
                  ori          a7, s0, 1272
                  sra          a0, tp, t2
                  andi         sp, t4, -1816
                  auipc        s10, 583751
                  lui          zero, 684689
                  srai         zero, a3, 15
                  andi         s8, s3, -1422
                  sltiu        s1, a1, 893
                  srl          zero, s7, zero
                  sltiu        s11, s9, -489
                  andi         ra, a2, 1049
                  sltu         tp, a6, t2
                  sltiu        s11, a0, -1636
                  andi         zero, ra, -39
                  srli         t6, s7, 21
                  srl          s8, s5, s6
                  sll          s1, zero, t6
                  slli         gp, a2, 0
                  srai         t4, s9, 21
                  or           t6, t0, s7
                  sra          s5, t5, s0
                  sra          s8, t4, t4
                  and          ra, s8, tp
                  or           ra, a5, t4
                  sll          a6, s9, s1
                  srl          ra, s9, a4
                  lui          a3, 1004238
                  and          s10, s0, gp
                  addi         s1, t5, 793
                  sltu         tp, t0, s9
                  sra          a5, gp, gp
                  slti         a1, tp, 516
                  addi         s2, a4, 244
                  sra          a2, tp, s10
                  slt          a7, a6, a2
                  addi         s6, t5, 140
                  sltiu        s7, s1, 97
                  sltu         s6, s5, t2
                  andi         s9, s4, 1434
                  sub          a5, s10, t6
                  slti         zero, t0, -711
                  addi         s1, s8, -1833
                  srai         s9, t2, 15
                  srl          s1, a7, a2
                  or           sp, t4, t0
                  ori          a1, zero, -831
                  add          a7, t2, s9
                  srl          a2, a5, gp
                  sub          s4, ra, t6
                  slli         sp, s7, 6
                  sltu         a5, s8, zero
                  and          tp, s9, zero
                  srl          zero, zero, t3
                  srai         s11, s5, 28
                  sll          tp, sp, s10
                  xor          ra, s10, t4
                  addi         s5, tp, -595
                  addi         t2, s3, -1784
                  andi         s8, a4, 417
                  and          a1, s6, s8
                  sltiu        gp, s0, -1945
                  srl          s4, a7, t4
                  nop
                  nop
                  auipc        ra, 618676
                  srli         a2, a4, 30
                  srai         a5, t3, 26
                  sltiu        s2, s0, -1326
                  slti         s0, a3, 466
                  xor          t2, gp, tp
                  ori          gp, s6, 200
                  sltiu        s8, t5, -1393
                  and          zero, a3, zero
                  srai         a1, a1, 14
                  or           a6, s6, a4
                  add          ra, a4, a1
                  srl          s9, a0, a3
                  and          a6, t6, ra
                  auipc        sp, 357319
                  andi         s4, a2, 2012
                  srai         sp, s11, 30
                  sltiu        s7, zero, -1505
                  xori         s7, a2, -1744
                  slt          a4, s8, t4
                  and          tp, tp, t0
                  sll          s11, s4, a0
                  slti         s0, a3, -916
                  addi         s8, a1, -1466
                  ori          gp, gp, -769
                  sltiu        t4, a4, -130
                  slt          a5, s1, tp
                  lui          a0, 812077
                  slli         s11, s7, 27
                  sltiu        t4, a7, -2006
                  srli         ra, a1, 27
                  sll          s11, a0, gp
                  ori          t6, s9, -1497
                  andi         s11, s10, 382
                  andi         zero, sp, 1021
                  sra          gp, ra, t5
                  lui          s5, 80642
                  ori          s9, a0, 1760
                  add          s11, s1, s8
                  ori          ra, zero, -1940
                  or           t2, tp, s7
                  xor          a6, t3, a0
                  and          s1, a7, s0
                  addi         t6, a2, 744
                  srl          s11, sp, a0
                  ori          ra, s8, 1416
                  sltiu        a0, t2, -1837
                  addi         s4, s9, 578
                  sltu         t6, t6, s11
                  slt          a4, s11, s10
                  srai         t4, s6, 1
                  and          s9, a2, a3
                  sll          t5, t6, s11
                  srai         s9, a5, 8
                  srli         s4, s11, 13
                  andi         s7, t4, 909
                  nop
                  auipc        gp, 481742
                  addi         s6, a3, 838
                  srl          a4, s0, t3
                  sltiu        t6, a3, 2000
                  sltu         gp, a2, t4
                  sltu         t5, t6, s4
                  slt          s1, t4, a6
                  sra          s9, s5, zero
                  or           a3, t2, s8
                  xor          s5, s4, s0
                  sltiu        s8, a6, -1537
                  sub          s7, t0, t6
                  sltiu        s1, a0, 542
                  or           sp, t2, a3
                  nop
                  slli         a4, t6, 2
                  add          a1, a1, s6
                  add          s10, t5, a3
                  sub          a6, a3, a5
                  add          t3, s4, a3
                  sll          s6, s9, t6
                  sll          s10, a3, zero
                  xori         t2, s8, -1841
                  andi         sp, tp, -2015
                  addi         a6, a4, 1790
                  sra          s6, s2, a2
                  lui          s0, 579095
                  srli         s2, zero, 18
                  sub          s2, ra, sp
                  srl          s10, s9, t3
                  addi         a1, a2, -878
                  xor          s6, sp, t1
                  srai         a1, ra, 15
                  slt          s5, s9, s11
                  slli         t3, a0, 3
                  ori          zero, s9, 1691
                  sltiu        sp, s9, -777
                  andi         s6, s0, -1656
                  auipc        a2, 479021
                  sub          s4, s9, s9
                  sll          a2, a3, a6
                  sltiu        a5, s10, -425
                  addi         a3, t6, -436
                  andi         a5, t4, 667
                  add          tp, s3, tp
                  add          s9, a4, a6
                  sra          s2, ra, s0
                  auipc        s2, 405704
                  sub          t5, s4, zero
                  nop
                  and          gp, s10, s9
                  sltiu        s11, t1, -1029
                  sltiu        s8, a2, 745
                  xor          s6, s4, s8
                  xori         t2, s1, 1079
                  ori          a7, a2, -1531
                  xor          s6, t2, s7
                  sub          a3, t3, s10
                  auipc        s0, 721216
                  slli         s7, a1, 11
                  slti         t4, gp, -1514
                  slti         s8, s9, 721
                  xori         s4, s2, 433
                  sra          a4, tp, t0
                  sub          a6, a6, t4
                  srl          a4, t4, t2
                  nop
                  xor          a0, s11, a0
                  andi         s6, s11, 508
                  sltu         s1, s8, a4
                  srl          t5, s6, s0
                  lui          a2, 381135
                  add          s4, s10, s11
                  lui          t6, 473675
                  sub          s8, a7, s1
                  srai         a5, zero, 7
                  slli         t5, s10, 2
                  srai         t6, t4, 17
                  sll          a7, t0, gp
                  addi         s1, s4, 1797
                  xori         t5, a2, -439
                  xor          gp, s7, s7
                  addi         t5, s0, -1977
                  slli         s11, t4, 19
                  addi         a4, t1, 562
                  addi         t5, a7, -698
                  xori         sp, sp, -435
                  and          a5, gp, sp
                  add          tp, a3, a7
                  srl          a3, s1, t3
                  sra          s2, a4, t6
                  sltu         s10, a4, a4
                  add          zero, t2, s9
                  sra          a5, tp, a7
                  nop
                  lui          s11, 178188
                  srl          sp, tp, t3
                  sltu         tp, s10, tp
                  xori         zero, t5, 935
                  add          s0, a6, s3
                  nop
                  xor          a7, a0, s9
                  srl          tp, a0, s8
                  andi         t2, s0, -629
                  or           s2, sp, zero
                  slli         a4, a6, 6
                  slti         a1, t1, -2013
                  xori         s11, s5, 1093
                  srl          s4, s10, s10
                  or           s0, t2, s4
                  and          a6, s1, tp
                  lui          t5, 15046
                  ori          ra, t0, 1558
                  nop
                  sub          a6, t2, s6
                  slti         s4, t1, 872
                  addi         gp, t0, -1615
                  nop
                  sltiu        s5, t2, -1215
                  slli         tp, s2, 11
                  sltu         tp, s0, zero
                  sra          sp, t5, s8
                  add          t3, sp, t3
                  sub          s2, s0, t4
                  auipc        a1, 178518
                  sltu         a1, s5, s9
                  sub          t4, a7, s11
                  slli         sp, a2, 6
                  andi         t5, a1, 1551
                  lui          a6, 782714
                  sll          t4, s0, a3
                  xori         s11, t1, 248
                  slli         s2, s3, 16
                  srl          gp, a4, s11
                  xor          s10, tp, s11
                  add          s11, t6, a5
                  xor          s10, a2, ra
                  xor          a6, a5, t4
                  nop
                  ori          ra, s1, 1848
                  slti         s1, s0, 1069
                  sltiu        s1, t3, 1899
                  sra          s11, t4, t3
                  sltiu        s7, a6, -1158
                  srai         tp, t6, 15
                  andi         s2, a7, 967
                  srl          s8, s11, tp
                  xori         t6, s8, 1548
                  and          t2, s10, s5
                  xori         sp, s8, 578
                  srli         s7, t4, 10
                  srai         a0, s8, 22
                  andi         t2, a0, 1877
                  add          sp, a0, s6
                  sltu         s5, tp, s4
                  nop
                  sub          zero, a6, s9
                  sltu         s1, a1, a7
                  srl          sp, s8, gp
                  ori          a7, zero, 862
                  or           s1, s7, s0
                  srl          a4, s8, a4
                  xor          zero, tp, s0
                  ori          t3, t4, -1057
                  slli         t3, s6, 12
                  srl          s7, s1, s0
                  auipc        t5, 557745
                  srai         t3, s7, 10
                  slli         s10, s3, 0
                  sub          a3, t2, a4
                  sub          a1, t4, s1
                  sltu         t5, s9, s11
                  sltiu        sp, s3, -588
                  sra          t6, ra, a2
                  slli         s1, t6, 5
                  lui          zero, 854560
                  add          s0, a2, t4
                  xori         a1, a1, 1323
                  nop
                  auipc        a1, 674671
                  auipc        a4, 81169
                  add          tp, tp, s9
                  xor          s10, s1, a4
                  lui          ra, 776891
                  ori          s11, gp, -606
                  sltiu        zero, s10, 155
                  xori         a2, s0, -1579
                  nop
                  and          s7, s8, zero
                  andi         t6, tp, -188
                  and          a4, s10, t1
                  add          t2, s2, s10
                  srli         a5, a1, 22
                  srai         s1, t1, 14
                  srli         tp, a1, 6
                  sltiu        a0, a5, 727
                  srl          a5, a0, s4
                  sub          sp, ra, s0
                  ori          s0, s1, 1837
                  slt          a2, t3, t3
                  slti         t2, s1, -522
                  auipc        a4, 837197
                  addi         s1, a4, -809
                  srai         s10, s10, 18
                  lui          a7, 338558
                  sra          a0, s7, t2
                  xori         a4, a4, 182
                  sub          gp, zero, s3
                  ori          s0, t3, -887
                  auipc        sp, 212699
                  add          s11, s8, s8
                  slli         a7, a5, 2
                  sltu         tp, a3, a7
                  slli         s2, a7, 18
                  and          sp, ra, a3
                  slli         a0, s2, 8
                  add          a1, a3, a1
                  slli         s1, s5, 14
                  sltu         s9, tp, s5
                  nop
                  ori          sp, t0, 1913
                  add          t3, a6, s2
                  sltiu        t3, gp, -1447
                  and          s0, zero, s4
                  auipc        gp, 768117
                  sll          t6, s5, s0
                  sltu         a1, s9, a6
                  and          s10, s3, s7
                  add          s4, zero, a0
                  sltu         ra, t3, a2
                  sra          s9, s11, t4
                  andi         a6, s4, -732
                  addi         t5, a5, -991
                  slti         s6, s3, -756
                  sltiu        zero, a7, -5
                  slti         a6, a1, -1959
                  srai         a7, s2, 3
                  xor          t4, t3, sp
                  nop
                  ori          a4, s9, 1386
                  xor          t6, tp, s4
                  sub          a7, t6, s5
                  lui          s8, 619753
                  ori          t3, t5, 1622
                  srai         s0, a3, 14
                  or           s10, s3, a4
                  sra          s10, a3, s9
                  sll          t5, s10, s10
                  addi         a3, s8, 1269
                  sub          t3, sp, a3
                  slli         a0, a2, 24
                  srli         s1, a2, 9
                  sltu         s6, s2, t5
                  srl          t6, s1, a6
                  slti         t3, t2, -1153
                  srli         t3, t6, 29
                  auipc        a5, 91705
                  or           sp, t3, s8
                  nop
                  andi         a0, s5, -620
                  srli         t5, s5, 5
                  xor          tp, s2, a3
                  slt          s9, s11, ra
                  slli         a3, a4, 2
                  and          s0, s0, sp
                  and          s4, s1, a4
                  addi         a5, sp, 295
                  slt          s8, s9, s4
                  lui          t3, 435031
                  addi         a1, a3, 251
                  slti         s5, t4, -2048
                  auipc        s9, 605729
                  slti         t5, a3, -351
                  sll          a5, s9, a3
                  xori         s11, t4, 202
                  add          a1, a1, a0
                  auipc        gp, 751522
                  slt          t3, t1, a6
                  add          s9, s7, a3
                  srli         a1, gp, 3
                  srli         s7, a1, 15
                  srl          s7, gp, t0
                  xori         s6, t4, 1937
                  slt          a2, a7, t6
                  srai         sp, t6, 2
                  srli         a5, t3, 24
                  sub          a0, a5, a7
                  ori          s1, s2, -619
                  xori         a5, t1, 958
                  or           s5, gp, a1
                  xori         s0, gp, -1671
                  or           s6, tp, a7
                  slti         gp, s2, -1605
                  slti         s5, ra, -1038
                  or           a5, t4, s1
                  auipc        a1, 226339
                  xori         s10, t3, -1337
                  xori         t2, s0, 1772
                  nop
                  sltiu        s11, a2, -762
                  or           a6, zero, t3
                  srl          a6, a3, s0
                  add          s1, a4, t4
                  sltiu        ra, a1, 1270
                  srli         s11, t5, 4
                  sltiu        t3, gp, -503
                  srl          ra, s2, t5
                  sltu         s9, a3, t5
                  slti         s2, t2, -1131
                  slt          t4, s1, a3
                  add          a2, s11, s9
                  sll          s9, t6, s4
                  nop
                  srai         s2, s4, 30
                  lui          t4, 385585
                  slt          tp, s6, a2
                  xor          sp, s5, s1
                  sub          tp, s8, s2
                  nop
                  srl          t3, t1, s10
                  slli         s2, s0, 7
                  addi         s6, tp, 663
                  sltu         a1, a6, a7
                  slti         t2, s5, 495
                  slti         zero, t4, 1353
                  or           t5, s7, t2
                  lui          tp, 656959
                  srai         t5, t6, 11
                  add          s11, s11, a4
                  ori          s0, a1, -1322
                  and          a0, a4, a4
                  and          gp, gp, s4
                  slti         s11, a7, -1492
                  sll          sp, s1, t4
                  sra          s6, a3, s11
                  lui          s5, 339874
                  sll          s1, s4, a1
                  srli         s7, t5, 4
                  srai         a7, t5, 12
                  srl          sp, t5, a2
                  nop
                  sltiu        s4, s2, -696
                  slli         s6, s2, 22
                  nop
                  slt          s9, a1, t6
                  srli         s11, t5, 19
                  add          s5, t6, s4
                  lui          t4, 808959
                  sll          t4, t6, s4
                  srl          a0, a3, s1
                  slti         s4, s3, -1927
                  nop
                  andi         s6, t0, 635
                  add          s10, zero, s11
                  sll          s11, s5, a3
                  slli         t6, a2, 8
                  xori         t5, s8, 854
                  sra          s6, a4, a6
                  srli         s5, s11, 9
                  sub          a2, gp, t0
                  srai         t2, s2, 14
                  sub          t3, gp, s3
                  andi         t3, s3, -256
                  slti         a3, a5, -908
                  and          zero, a7, s9
                  sub          a7, s0, a2
                  slt          t3, s0, a1
                  lui          zero, 499240
                  sra          t2, a1, a7
                  sub          s7, s4, s3
                  nop
                  srai         a5, s10, 21
                  slti         a4, a4, 816
                  sra          a4, t5, zero
                  srai         a0, a1, 15
                  andi         a4, t1, -306
                  slli         s8, t0, 15
                  add          t6, a4, s2
                  add          t6, t6, t6
                  sltiu        a4, s3, -653
                  slt          s4, t0, a0
                  nop
                  srli         s9, s3, 10
                  xori         s1, gp, 1978
                  xori         tp, a7, -601
                  slli         zero, gp, 0
                  nop
                  slt          t6, s11, zero
                  ori          t2, s1, -1921
                  lui          s11, 581543
                  sub          s9, a7, gp
                  sltiu        s2, a7, -591
                  xor          s9, a1, tp
                  addi         ra, s3, 1066
                  srli         s10, s0, 23
                  and          s11, a5, sp
                  add          s6, s6, a5
                  auipc        s1, 441307
                  addi         s10, s3, -1822
                  sra          t3, t2, a6
                  xor          s9, t0, sp
                  slt          a6, s3, s6
                  add          t5, t5, s6
                  sltiu        zero, s1, -1801
                  lui          a6, 955744
                  auipc        a3, 369074
                  sub          s7, a0, ra
                  lui          s4, 320659
                  srl          t6, t6, a3
                  slli         tp, sp, 27
                  slt          t6, s4, s1
                  sub          s11, t3, ra
                  slt          s8, a3, t3
                  or           a1, s4, tp
                  add          a4, t4, t6
                  srai         a6, s5, 7
                  add          a3, t2, zero
                  nop
                  nop
                  xori         t6, a3, 1099
                  lui          t6, 12179
                  slt          a7, gp, s3
                  add          s10, s6, t5
                  lui          s0, 932764
                  slt          t3, t2, a4
                  slli         s11, t4, 19
                  sltiu        a2, a5, 311
                  sra          s6, s11, zero
                  xor          a4, s0, zero
                  lui          s4, 498619
                  xor          a7, s8, a1
                  sltu         s5, t6, s10
                  xor          s9, s10, t5
                  sll          t3, sp, t6
                  srli         t5, a6, 0
                  xor          s11, ra, t4
                  addi         a2, s5, -461
                  xor          s4, s3, t3
                  sra          a0, a7, s9
                  add          s2, a4, s2
                  sltu         t3, t4, t6
                  or           a1, a7, a0
                  srli         a4, t3, 22
                  auipc        s9, 232939
                  slli         s4, s10, 0
                  srai         tp, s0, 4
                  sltu         s7, s2, t1
                  addi         s7, zero, 1622
                  sub          a6, a5, a1
                  addi         s11, s10, -808
                  srai         sp, a0, 5
                  xor          s9, t1, s8
                  sll          s4, s1, s11
                  srai         s5, s1, 20
                  xori         ra, t0, -1063
                  xori         sp, s3, -749
                  add          s10, ra, t2
                  sll          zero, zero, t3
                  xori         t4, a2, 1557
                  auipc        s10, 192456
                  sra          a1, s3, s10
                  xor          s9, t1, a6
                  xor          t3, s6, t2
                  sltiu        gp, a7, -417
                  sll          gp, tp, s11
                  xor          s1, s8, sp
                  sltiu        ra, t4, 1546
                  xor          ra, t4, a2
                  ori          a4, t2, -696
                  nop
                  slti         tp, s8, -973
                  addi         a4, t3, 662
                  slt          t2, s0, a3
                  sltiu        gp, s11, 458
                  xori         a2, t6, -829
                  srl          s1, t5, s7
                  srai         zero, t4, 10
                  sltu         sp, a1, a1
                  slli         s2, s4, 9
                  auipc        a4, 647332
                  and          ra, s10, s2
                  sltiu        a6, s5, -1956
                  auipc        s2, 273653
                  sltu         s0, s5, t2
                  srl          s4, s5, t6
                  or           tp, sp, s5
                  ori          s4, t1, 1873
                  sub          t6, s7, a0
                  srai         s2, s2, 20
                  auipc        gp, 506531
                  xor          t5, s1, a5
                  xor          a3, a6, t5
                  nop
                  sltu         a5, t1, s4
                  xori         s4, s3, 1769
                  sra          s5, s7, a2
                  andi         a4, s5, -1677
                  add          t5, s2, t0
                  sub          s9, t0, s0
                  sll          t6, s10, a0
                  addi         t6, a4, 1287
                  ori          s9, a5, -1198
                  slt          a1, t2, a1
                  srli         s5, t4, 29
                  add          ra, s6, t4
                  ori          t2, a2, -1490
                  sub          t6, s10, t1
                  srai         t6, a7, 19
                  sll          s4, s5, gp
                  nop
                  add          s4, gp, zero
                  slli         a5, t4, 21
                  lui          s4, 604144
                  nop
                  slli         a0, s1, 12
                  slti         t4, s7, -101
                  srai         zero, s1, 11
                  ori          a6, t3, 1634
                  nop
                  srl          a3, a1, t1
                  ori          t6, tp, 1059
                  addi         gp, t0, -894
                  andi         s11, t1, -1592
                  auipc        t2, 416992
                  sltu         tp, s11, s8
                  sub          s8, t0, a1
                  sltu         a6, s4, a0
                  slti         t5, s11, 1609
                  slt          s6, s10, a7
                  slt          t5, s3, s6
                  lui          t4, 120492
                  auipc        s11, 936899
                  lui          t4, 932538
                  sltiu        a5, s4, -100
                  auipc        a3, 597053
                  andi         gp, s7, 495
                  sra          sp, a6, t3
                  slt          t3, sp, a3
                  slt          s10, a3, s10
                  lui          s6, 945653
                  srai         s9, ra, 9
                  srl          a4, a2, a3
                  sub          s0, s7, t6
                  slti         a1, t6, -273
                  addi         t4, sp, 1043
                  sltiu        s6, gp, -460
                  add          sp, s8, a5
                  sltu         s5, a6, t2
                  srli         a3, a5, 11
                  sub          a5, s8, a3
                  sub          a4, s6, t5
                  sltu         t3, gp, s11
                  xor          s11, a0, gp
                  auipc        s11, 1022072
                  nop
                  slti         t6, s6, 447
                  sll          s5, t5, s9
                  sll          s0, zero, a0
                  srli         a7, s10, 19
                  srai         a1, t1, 14
                  srl          sp, sp, t0
                  slli         t6, s11, 9
                  sltiu        tp, zero, 105
                  andi         s11, s7, -1258
                  and          t3, s2, tp
                  slti         gp, t1, 1457
                  andi         s1, s10, -592
                  andi         s11, s11, -1997
                  add          s6, s11, s3
                  slt          s1, t4, s3
                  add          t6, s9, s5
                  auipc        s7, 739108
                  sltu         t3, tp, s0
                  slli         s8, tp, 21
                  sltu         gp, s6, a1
                  nop
                  slt          t4, a6, s1
                  auipc        gp, 936173
                  and          zero, a2, tp
                  andi         a1, s7, 1857
                  auipc        t6, 745618
                  xori         ra, a4, 1883
                  srli         a0, tp, 21
                  srl          s0, a1, s8
                  srai         sp, t1, 21
                  addi         a7, a1, 597
                  sltiu        a2, a3, 138
                  sll          a5, s2, s9
                  and          zero, s3, t0
                  slt          s5, s0, a1
                  srai         a7, s3, 17
                  sra          s1, t6, s7
                  or           t6, t3, t4
                  srli         gp, s11, 31
                  xor          s1, t3, a3
                  or           a3, s3, zero
                  and          ra, zero, s11
                  slti         s8, t3, -1284
                  lui          a7, 741951
                  sltiu        sp, s10, -1456
                  srli         t4, s10, 0
                  sra          s0, a2, a5
                  srl          t3, t6, sp
                  lui          s5, 99054
                  slti         t4, t4, -167
                  andi         a3, s4, 497
                  auipc        s5, 705159
                  sub          a6, a3, a0
                  nop
                  addi         sp, t4, 1675
                  ori          t2, a1, -1449
                  lui          s9, 513927
                  ori          s11, s1, 816
                  lui          ra, 587563
                  sra          a6, tp, s9
                  sltiu        t5, a3, -1766
                  srli         t5, a2, 1
                  auipc        a3, 94101
                  auipc        s2, 688002
                  ori          a3, t2, 2033
                  xori         s10, a0, -894
                  or           a3, a0, s7
                  slli         sp, s9, 18
                  slli         a1, a1, 20
                  add          t4, gp, ra
                  auipc        s6, 571730
                  auipc        s7, 247515
                  srli         t3, t6, 30
                  slti         s0, s1, 1161
                  nop
                  lui          a3, 336651
                  srai         s10, sp, 14
                  sltu         zero, t0, s5
                  nop
                  addi         a7, s2, 757
                  addi         tp, s4, -1102
                  add          gp, a4, t6
                  slti         a6, s8, 579
                  addi         t2, a0, -72
                  slti         a5, s10, 194
                  or           s7, a3, t6
                  add          a4, t2, t2
                  and          sp, gp, s2
                  slti         a1, s2, -1347
                  srli         tp, a6, 25
                  sltiu        a6, s9, 919
                  slli         s0, sp, 3
                  slt          s7, a0, s5
                  andi         a0, t3, 245
                  srl          s6, tp, t0
                  lui          sp, 441224
                  slt          t3, a4, a6
                  andi         s9, a3, 986
                  nop
                  addi         t5, a1, 1631
                  sltiu        a6, s1, 1387
                  srai         s11, s6, 10
                  sltiu        zero, sp, 1300
                  ori          a0, a5, -371
                  ori          ra, s9, -143
                  sra          s8, t0, a7
                  srl          s6, a3, s7
                  and          s4, s9, t0
                  nop
                  or           t3, s9, a0
                  auipc        t2, 403712
                  sra          gp, gp, s10
                  nop
                  addi         s2, t5, -592
                  slli         t6, t0, 7
                  add          zero, s0, t6
                  sltiu        s2, a0, 1575
                  nop
                  srli         t3, s8, 20
                  ori          s7, s3, 1901
                  auipc        s4, 818945
                  add          s9, t0, t6
                  and          s4, t0, a5
                  auipc        a0, 1006682
                  slli         s6, s6, 21
                  ori          a1, s9, 1464
                  sll          tp, ra, s9
                  sltu         s0, t4, a3
                  slti         t6, t1, -1860
                  sra          s6, gp, tp
                  and          t3, t5, s6
                  ori          a2, a1, 526
                  slt          s8, gp, t6
                  slt          a7, s9, a0
                  slti         zero, t4, 482
                  xori         t5, tp, 97
                  xor          a5, a6, tp
                  add          ra, a1, ra
                  sll          sp, s6, s10
                  srl          t6, t2, s11
                  lui          t2, 498630
                  xor          sp, t5, s9
                  slti         a5, t0, -1224
                  or           s0, t2, s8
                  srli         gp, t0, 20
                  srli         gp, a7, 18
                  auipc        zero, 4716
                  xor          t2, a1, s1
                  and          tp, tp, ra
                  srl          a7, t2, s2
                  andi         s6, a1, 2041
                  nop
                  xor          s2, t6, tp
                  srli         s6, t4, 8
                  sll          a0, zero, a6
                  nop
                  sra          ra, sp, s2
                  ori          gp, s9, -1537
                  sll          t4, gp, t0
                  ori          t3, a3, 1071
                  sltiu        s0, a1, -1272
                  lui          a3, 23809
                  andi         s5, s1, 1695
                  or           t3, s5, gp
                  or           s6, a1, a3
                  sra          a1, a2, t3
                  sll          s8, a5, s5
                  nop
                  xor          t2, gp, s10
                  auipc        a0, 899881
                  nop
                  ori          a5, s9, -33
                  slti         ra, t5, -1866
                  lui          a5, 485945
                  slt          a7, a7, a3
                  srli         tp, a7, 6
                  sltu         a1, t3, s1
                  addi         zero, s2, -1973
                  sltiu        a7, s3, -1433
                  auipc        s10, 580840
                  or           sp, ra, a3
                  srai         s8, gp, 12
                  sll          t5, s4, zero
                  xori         s5, t6, -115
                  slli         s8, a3, 30
                  xor          a1, s1, s9
                  auipc        a0, 241900
                  and          s5, tp, a0
                  sll          s7, s11, ra
                  sub          tp, t0, s11
                  or           t2, a6, a4
                  nop
                  sub          s1, gp, a3
                  or           a0, s10, ra
                  lui          a0, 131276
                  xori         s5, s11, 728
                  nop
                  lui          s1, 891430
                  or           s4, a1, s5
                  add          s8, a5, a6
                  xori         s2, s9, 1041
                  xor          ra, s10, s5
                  and          s9, s2, t4
                  ori          s4, t4, -1306
                  slli         s4, tp, 22
                  and          t5, zero, s10
                  srai         s8, t0, 21
                  slt          s7, s0, a3
                  srli         a3, a7, 9
                  addi         t4, s0, 1763
                  sub          s6, t2, s0
                  sltu         s0, s4, s1
                  add          s11, s5, s8
                  srli         t3, t3, 27
                  srl          a0, s9, t0
                  ori          s10, s1, -1250
                  srl          s1, gp, t6
                  sltiu        t4, s9, 556
                  and          t5, s1, a4
                  lui          a0, 639385
                  nop
                  ori          s6, s6, -848
                  or           sp, t1, t3
                  sub          zero, t1, s7
                  sra          a1, s5, t0
                  sltu         s2, a2, gp
                  sub          tp, t4, ra
                  sltiu        a6, t4, 2024
                  auipc        sp, 449527
                  or           t2, t5, t0
                  xor          s2, t4, a7
                  nop
                  slt          s11, t3, a3
                  srl          sp, s8, s2
                  slt          s10, sp, a7
                  srli         a4, t2, 23
                  slt          t3, sp, s10
                  andi         s2, t5, 1817
                  srai         a6, a7, 30
                  nop
                  sub          s2, s11, gp
                  or           t5, s8, t5
                  slli         zero, s9, 30
                  and          s7, s11, a0
                  sra          gp, gp, s7
                  sll          a2, s3, s8
                  lui          t2, 657312
                  xor          s0, s7, a2
                  nop
                  sltu         a2, a3, s8
                  add          sp, s11, s4
                  sltiu        a2, s9, -2023
                  srli         gp, s11, 23
                  sll          t4, t1, t4
                  nop
                  ori          s11, s11, 2037
                  sltu         a1, a2, a4
                  sltiu        ra, t2, 736
                  sltiu        a1, t2, 1672
                  srli         s2, s9, 28
                  slt          t2, t1, sp
                  sra          a7, tp, a5
                  addi         ra, t5, 1517
                  slt          s7, s10, s9
                  srli         sp, s3, 9
                  slti         gp, s7, -138
                  sll          s7, s6, s11
                  and          ra, ra, s3
                  srai         s8, s3, 3
                  nop
                  xor          t2, t4, t5
                  nop
                  srli         s7, a0, 25
                  lui          t6, 785114
                  ori          a0, s3, -1394
                  sltiu        t5, t1, -1568
                  andi         a5, tp, 683
                  addi         a1, s9, 1323
                  or           a5, s4, t6
                  add          s1, s5, zero
                  srl          t2, a2, t1
                  sltu         a5, ra, s2
                  slt          zero, ra, ra
                  slt          a1, a0, s6
                  srl          s0, ra, ra
                  sltiu        ra, t4, 647
                  ori          s11, t5, -418
                  and          a7, a2, s1
                  add          a5, t5, a0
                  ori          a2, s3, -1919
                  sra          s7, s3, sp
                  srl          t5, s5, a3
                  or           s11, s5, s11
                  andi         s11, s10, -613
                  and          s0, a0, a6
                  ori          a2, s4, -1009
                  srli         a6, t3, 22
                  srl          t4, tp, t4
                  srl          a3, t2, a3
                  srai         a6, a1, 9
                  xor          tp, a0, a6
                  and          t2, s5, s11
                  nop
                  slli         s10, a5, 11
                  sltu         s10, s3, t3
                  srai         a2, s5, 6
                  slli         t4, s10, 1
                  srai         s5, s6, 16
                  sra          gp, gp, t2
                  slt          t6, gp, a4
                  xor          s7, a0, a1
                  slti         gp, a4, 748
                  addi         s11, s5, 1845
                  slt          a0, gp, a7
                  or           gp, s3, s8
                  sltiu        a5, s10, 1786
                  or           t3, t6, s1
                  auipc        t3, 750807
                  lui          s5, 321147
                  ori          sp, s4, 1221
                  and          t2, s9, a2
                  xori         s2, tp, -1923
                  sra          a6, s11, s7
                  sll          t2, t4, s0
                  ori          t3, s1, -957
                  sra          s5, s0, s1
                  sltu         s5, s11, s4
                  ori          t3, t0, -884
                  sra          a6, s8, a5
                  slti         a3, a1, 305
                  slli         s10, tp, 20
                  sll          gp, s0, t6
                  addi         a2, s7, -1428
                  andi         s2, s11, 1683
                  slli         a5, s6, 18
                  andi         gp, s11, -752
                  or           s10, t6, s1
                  nop
                  addi         sp, s0, 1867
                  slt          s10, a5, a4
                  sltiu        ra, a6, 1605
                  srai         s8, ra, 24
                  or           s9, s1, t2
                  srl          s10, t3, a0
                  and          a3, s11, sp
                  ori          s7, a4, -51
                  slti         t3, s11, 874
                  nop
                  andi         a1, a6, 763
                  nop
                  xori         s5, t3, -1875
                  addi         zero, a7, 707
                  srai         ra, a7, 25
                  ori          t5, s3, 1136
                  slli         t6, ra, 6
                  sra          s4, sp, a1
                  add          s10, s4, a1
                  xor          t2, t4, s0
                  lui          sp, 281404
                  slt          s7, t1, s2
                  sra          a2, a3, a7
                  slti         s2, t5, -1856
                  and          a1, a5, a4
                  ori          sp, s11, 291
                  srai         s5, sp, 25
                  andi         s8, t3, 721
                  srli         t4, a2, 12
                  add          s5, t3, t5
                  addi         a5, s8, 636
                  xor          t2, t0, a1
                  slti         ra, t5, 427
                  add          a6, s10, zero
                  or           s1, t5, s0
                  sll          a6, zero, s2
                  ori          ra, s2, -1319
                  nop
                  nop
                  slti         s0, a0, 490
                  srl          t3, gp, s6
                  srai         a7, s10, 22
                  sll          a3, s1, s3
                  lui          s6, 711574
                  sub          s9, t4, t1
                  sltiu        gp, a7, 300
                  sra          s2, gp, s9
                  lui          s7, 1039446
                  xor          t3, s0, gp
                  slti         s8, a3, 567
                  xori         s2, t6, 1419
                  xori         s11, s8, 1329
                  or           gp, s3, s0
                  xor          a4, gp, zero
                  slti         s4, t0, 262
                  xori         a4, s9, -918
                  addi         s5, t1, -1595
                  andi         t2, s3, -1081
                  sub          t5, gp, t5
                  srai         t5, s3, 23
                  or           t5, a0, t0
                  srl          s11, a1, s11
                  sltu         s6, s0, s11
                  ori          a2, a0, -2022
                  add          s0, a4, s8
                  slli         a7, s1, 25
                  srai         a0, s6, 23
                  slli         a4, a0, 16
                  auipc        s0, 969398
                  xori         ra, s9, 919
                  xori         s0, t5, 1801
                  andi         a1, a2, 721
                  sltiu        s2, t5, -1770
                  srli         t6, a7, 4
                  sub          a3, s6, t6
                  slt          s6, s2, s0
                  sltu         t2, tp, s6
                  srl          tp, s4, s3
                  sltiu        ra, t3, 1504
                  add          s4, t5, t1
                  sll          s5, tp, s3
                  sra          gp, t2, s5
                  srli         s2, a2, 4
                  or           s1, a7, s2
                  and          a1, a1, a3
                  sub          sp, t2, t3
                  srli         s5, s7, 22
                  andi         zero, sp, 438
                  sltiu        t3, s1, 2030
                  slt          a1, s1, a4
                  ori          s4, a6, -1301
                  addi         s9, t1, 1281
                  srli         t4, s10, 7
                  slli         s9, s8, 5
                  sll          s1, s9, t5
                  ori          t6, s3, -1586
                  slt          sp, s2, s5
                  srl          t6, s6, s7
                  sra          t5, s9, t4
                  sub          s7, s10, s5
                  srai         s6, sp, 5
                  andi         s1, s9, -2002
                  slti         s9, s0, 327
                  addi         a0, a4, 1681
                  xori         s8, s6, -363
                  auipc        s5, 377433
                  slli         s1, zero, 12
                  sltiu        a4, a3, -363
                  nop
                  srl          t3, s5, a6
                  auipc        s7, 399674
                  sll          s5, a3, s0
                  ori          s10, s2, -1899
                  srai         s0, a1, 22
                  srl          a0, a2, s7
                  srai         s11, a6, 1
                  sltu         s2, zero, a0
                  srl          s11, s0, a3
                  nop
                  srl          a2, t1, s4
                  slti         s6, s11, -1986
                  and          t4, a2, s3
                  sltu         sp, s2, s6
                  srli         a5, s4, 1
                  srl          t2, a0, t3
                  and          t5, a4, s7
                  slt          a4, t1, s0
                  slli         s6, a1, 14
                  sra          a5, s11, t0
                  sltiu        s8, a1, 1860
                  slt          s1, a7, a1
                  slt          a5, a7, a4
                  nop
                  srai         s10, a1, 14
                  slli         sp, t0, 31
                  addi         a2, s5, -1885
                  add          t6, a0, s2
                  sub          a3, s0, s9
                  nop
                  sltu         s6, s8, a6
                  sra          s1, t4, t0
                  add          a4, ra, s2
                  xor          t6, t2, sp
                  nop
                  auipc        zero, 9339
                  sll          a4, t3, s11
                  slti         a6, s7, -860
                  srl          a7, s10, s7
                  slt          s10, t4, t6
                  sltu         s8, s8, t5
                  srai         sp, s8, 10
                  ori          s0, s6, 869
                  xor          s6, t0, s3
                  srli         s0, s8, 12
                  xori         t2, s9, -216
                  slt          t4, t5, a3
                  slti         s5, a2, -1934
                  srl          tp, s8, a3
                  srli         ra, ra, 4
                  xori         t5, t0, 1127
                  ori          t6, a0, -745
                  srl          s6, s2, t5
                  srli         t6, a6, 4
                  slti         s2, s5, -213
                  sub          s5, a0, a0
                  add          t3, s7, s3
                  or           sp, a3, s8
                  slti         s4, sp, -1518
                  lui          a1, 592608
                  sll          a5, a1, s10
                  or           zero, s0, sp
                  slli         t3, s6, 1
                  or           s8, s8, s0
                  lui          t3, 854923
                  lui          t3, 168748
                  srli         a3, sp, 5
                  auipc        gp, 841622
                  xor          t5, t5, s5
                  sll          a5, gp, a1
                  lui          s1, 357117
                  srai         s5, zero, 6
                  nop
                  nop
                  or           s5, tp, t2
                  sltu         s11, t2, t3
                  andi         t2, a5, 299
                  srai         t6, s7, 11
                  ori          tp, sp, -1296
                  sltiu        t3, s8, -886
                  sll          s7, t6, s11
                  slli         t5, tp, 9
                  slli         s6, a1, 9
                  xori         a1, s10, 787
                  sltiu        a2, t5, 965
                  srli         sp, t5, 18
                  srl          t5, a1, s11
                  ori          s9, s8, -190
                  srai         s4, t6, 10
                  andi         a4, s1, -1010
                  sltu         s5, a2, a1
                  addi         a2, t4, 10
                  xori         s8, a5, -824
                  lui          a6, 860462
                  addi         s10, a2, 1863
                  nop
                  lui          s7, 428774
                  sub          s0, s1, t4
                  srl          a5, t1, s1
                  slli         t4, tp, 26
                  addi         s11, s3, 728
                  srl          a2, s6, a3
                  xor          a7, ra, a0
                  ori          a3, s5, -1091
                  nop
                  sltiu        s7, tp, 106
                  slli         s2, s4, 4
                  sll          a7, a3, a3
                  andi         s2, s4, 1538
                  srli         s4, zero, 6
                  sltiu        s9, sp, 1445
                  srl          s11, s9, tp
                  add          s10, s5, a4
                  lui          sp, 874858
                  nop
                  srai         a3, a4, 0
                  sub          s11, s5, t1
                  sll          a3, t5, s10
                  srai         s6, t6, 22
                  ori          s7, t4, -552
                  sltu         s8, a4, t1
                  or           a0, t3, zero
                  srl          a4, a0, s2
                  srli         a0, t1, 5
                  xor          s9, a0, s8
                  slt          a0, a4, s8
                  sll          s9, s5, a5
                  sltu         a1, a1, a2
                  lui          s11, 766490
                  nop
                  srli         s11, s6, 6
                  addi         a7, s9, -641
                  lui          s8, 121004
                  srl          s7, s2, t5
                  xori         ra, a4, 837
                  sltu         a2, sp, s10
                  sub          a6, a1, a2
                  sltu         s5, s0, s10
                  slti         s7, t2, 1677
                  lui          s5, 338065
                  slli         s1, t6, 10
                  slti         s4, t4, 979
                  xor          s10, a7, a2
                  nop
                  sra          a7, s3, gp
                  add          s6, a4, s10
                  auipc        t6, 977241
                  addi         a3, s3, -1489
                  sub          gp, s8, sp
                  and          sp, zero, a3
                  srli         zero, s9, 6
                  sll          s7, s1, zero
                  srl          s2, a5, sp
                  and          t6, t4, s5
                  and          s7, a7, t1
                  or           s6, s11, t5
                  xori         s9, s1, 831
                  sltiu        s11, t5, 1353
                  slti         s6, s8, -357
                  auipc        s0, 999570
                  sltiu        a7, a1, 1681
                  srl          s9, t2, s8
                  or           s1, a6, t1
                  ori          s0, s2, -1475
                  slti         t2, t6, 925
                  xori         s4, t6, -168
                  lui          a2, 821398
                  sra          t2, t5, a7
                  srli         a5, t1, 20
                  sra          s11, s7, t5
                  and          s8, t5, s9
                  sub          s9, a7, ra
                  slt          s10, s10, s8
                  addi         s4, t3, 1978
                  srai         a6, a3, 24
                  sll          s8, s6, a0
                  srl          a2, t3, ra
                  srai         a3, t6, 22
                  sub          zero, t3, s9
                  slti         t2, s4, -1921
                  and          s2, t5, a7
                  slli         s5, t3, 26
                  sra          s1, gp, a3
                  slli         t2, t0, 23
                  lui          s8, 246989
                  ori          sp, s6, 1401
                  srai         gp, t1, 14
                  xor          a2, s5, s8
                  addi         a1, t2, 317
                  slli         tp, s0, 25
                  or           s9, s3, s1
                  xori         a7, ra, -1590
                  srai         t3, sp, 8
                  slt          t6, a6, a7
                  sra          a4, t1, s6
                  add          s6, t3, s11
                  andi         s0, s6, 116
                  ori          t5, t6, -1776
                  xori         gp, s7, -1413
                  andi         zero, a0, 1472
                  and          s7, a4, s0
                  lui          s6, 595604
                  sltiu        a4, t3, 1047
                  nop
                  sll          a7, t6, a4
                  xor          s10, t2, s9
                  sll          ra, a7, t5
                  sltu         a0, t5, a6
                  lui          s6, 249080
                  addi         ra, s0, 1230
                  slt          a1, t0, t3
                  srl          s11, s4, a4
                  srli         s1, t1, 3
                  slt          s9, gp, s7
                  sub          t5, t2, t3
                  xor          a0, gp, sp
                  srli         a1, t5, 13
                  lui          s6, 949395
                  slt          a0, s10, a1
                  sra          a0, t5, ra
                  andi         zero, tp, -1793
                  xor          s9, t3, t6
                  or           s8, a7, a3
                  sra          s11, a2, a0
                  ori          s8, t6, -112
                  sltiu        s0, s0, 1601
                  srai         a4, zero, 18
                  srli         a2, s2, 6
                  srai         t6, s0, 4
                  andi         s9, s0, -372
                  sll          t5, t3, s2
                  slti         tp, s4, -1223
                  slli         s7, s2, 8
                  slt          a2, a4, t0
                  andi         s2, s3, 1410
                  sra          a2, a1, sp
                  and          zero, t2, t5
                  sll          s8, a5, a3
                  add          t2, ra, t3
                  srli         s7, zero, 26
                  sub          a5, a2, a6
                  sll          a3, t3, a5
                  srai         s0, s1, 28
                  slli         ra, s8, 15
                  ori          sp, s4, 1238
                  xori         s6, s11, -195
                  nop
                  xori         s8, s7, 1641
                  sltiu        gp, ra, -495
                  add          t5, a6, s1
                  xori         a3, a0, -137
                  sll          t2, a5, s5
                  and          s11, s11, s4
                  sub          t3, gp, a7
                  sub          s8, s2, s11
                  slli         a3, s10, 20
                  slt          a5, t2, s0
                  srai         sp, s7, 3
                  andi         s9, a4, 1729
                  sltiu        s0, s6, 896
                  slli         ra, t3, 20
                  add          zero, s8, a3
                  sll          t3, s1, sp
                  xor          s4, s7, s11
                  sub          a6, s0, tp
                  and          s6, t3, s11
                  sltiu        sp, t1, -1874
                  srl          s2, ra, s10
                  sub          s5, a0, t6
                  addi         gp, t2, -1987
                  or           zero, s7, t6
                  nop
                  andi         s1, ra, -1345
                  sll          t5, s7, t4
                  xor          a4, t1, s9
                  sltiu        s7, s10, 416
                  or           s6, s7, s9
                  sra          s1, a5, a4
                  lui          a1, 795190
                  slti         s10, s7, 251
                  xor          s9, s9, s5
                  sra          zero, a6, sp
                  sll          s1, s4, ra
                  sll          s9, a0, s11
                  srai         a4, a1, 21
                  ori          s7, t3, -495
                  slt          t2, s1, t3
                  sub          t2, s6, sp
                  xor          a2, s5, a7
                  xor          t4, sp, zero
                  or           s2, a6, t4
                  slt          t5, s8, a7
                  add          s11, a7, s10
                  srl          a0, t5, a3
                  srl          sp, s1, gp
                  sra          s10, s0, a5
                  addi         s6, s4, 98
                  ori          a3, a1, 1460
                  nop
                  srli         t3, t1, 2
                  slti         ra, t6, -1417
                  add          s8, s11, s2
                  slt          s5, s5, s10
                  auipc        gp, 547593
                  sub          s6, s5, s3
                  sltiu        s0, a7, -390
                  srli         s11, a5, 18
                  srl          s4, a7, s10
                  sltu         a6, tp, s9
                  add          s9, zero, a2
                  sll          a0, a4, s6
                  sub          a1, a6, t2
                  slt          ra, a6, s1
                  sub          t2, s0, ra
                  srai         s10, tp, 4
                  sra          zero, t6, s5
                  lui          s2, 750227
                  and          t5, s6, s2
                  sub          s6, a6, zero
                  or           a0, a7, t1
                  lui          t5, 187250
                  add          s4, s1, a4
                  sll          a4, t5, t4
                  srl          s9, s5, s7
                  auipc        t5, 318706
                  auipc        s1, 94038
                  lui          a4, 125084
                  sltiu        a7, sp, 523
                  xori         ra, s10, -461
                  slti         s2, s7, -1015
                  sltiu        a1, a2, 798
                  auipc        a4, 517633
                  sltu         s0, t3, t0
                  addi         gp, t1, -536
                  xor          a4, a5, s0
                  add          s1, t1, t0
                  lui          s2, 46510
                  lui          t6, 775514
                  slti         t2, s2, -1134
                  xor          gp, s1, zero
                  addi         a3, s4, 1884
                  xori         a3, t1, -26
                  slti         t2, s11, -1402
                  nop
                  and          a3, s1, s7
                  xori         t6, a0, 1279
                  addi         zero, t1, -1397
                  slli         a1, s0, 22
                  slli         a3, s2, 23
                  auipc        s2, 491987
                  sub          s1, s1, s0
                  sra          ra, s6, t0
                  auipc        a3, 398593
                  nop
                  sltu         s2, s5, s9
                  lui          tp, 687124
                  srli         t3, t0, 27
                  ori          gp, s0, 1065
                  or           s10, a4, s2
                  andi         a1, a7, 179
                  add          s1, t5, t2
                  srai         t5, zero, 27
                  slli         s8, t5, 18
                  nop
                  andi         sp, a0, -406
                  andi         a5, s4, -1950
                  sltu         a7, tp, ra
                  add          s8, s9, s11
                  lui          s5, 266301
                  srli         t5, s5, 2
                  xor          ra, t2, t6
                  xor          sp, gp, s6
                  srli         a0, s11, 25
                  srai         s2, t4, 21
                  add          a4, s0, a2
                  sll          s0, t3, s4
                  slti         a0, s4, -332
                  auipc        a3, 769380
                  or           tp, t4, s10
                  srai         a3, ra, 17
                  xor          s10, t4, t5
                  auipc        a1, 340901
                  add          t2, s7, s3
                  srli         a2, s0, 19
                  sltu         s4, s9, s5
                  sltiu        a4, t1, 1884
                  xori         a1, s7, 1008
                  xori         s8, t1, -1246
                  slt          a7, a6, s8
                  ori          t2, s3, -328
                  add          s11, a7, sp
                  srl          t6, t3, s5
                  and          tp, t4, a0
                  slti         s9, s11, 607
                  srli         sp, s5, 9
                  auipc        a2, 214714
                  nop
                  or           s10, s5, a6
                  add          a2, t2, t3
                  or           tp, tp, t0
                  or           zero, zero, s8
                  xori         s11, t1, -41
                  sra          a4, t1, s9
                  sltu         s8, s9, tp
                  nop
                  sub          tp, s1, a5
                  addi         a1, s6, -1309
                  addi         s5, a1, -1873
                  sltu         s7, zero, a1
                  slt          s7, t2, s9
                  ori          a4, a3, 1804
                  ori          t4, a4, 31
                  slti         s0, s4, -1772
                  srli         t3, t5, 21
                  sub          t2, s10, sp
                  auipc        ra, 409442
                  or           s8, t0, s1
                  sll          s10, s9, a5
                  sra          s11, a2, s1
                  add          s8, sp, zero
                  sltiu        t4, a6, 1918
                  addi         s11, gp, 1002
                  sltu         gp, s3, ra
                  xori         s0, s7, 1541
                  slti         gp, s11, -1473
                  add          s1, zero, tp
                  slli         s6, gp, 26
                  sra          t5, ra, s4
                  srl          s10, s3, t2
                  auipc        a3, 884465
                  slti         s11, s7, -372
                  andi         s11, t2, 811
                  srli         t2, s3, 18
                  slli         sp, t2, 23
                  auipc        a1, 38852
                  xori         s10, s5, -1840
                  add          t6, a7, s2
                  sub          a3, a6, t4
                  xori         t5, s10, -1713
                  srli         a3, s5, 2
                  or           s9, s5, ra
                  sltu         s1, s2, s9
                  srli         a6, a2, 12
                  srl          a7, s0, gp
                  xori         a1, s2, 1635
                  xor          s8, a6, s5
                  sll          s6, a1, t3
                  srai         a3, a2, 25
                  slti         s4, t5, -2025
                  auipc        a6, 142914
                  nop
                  slt          gp, a2, t1
                  auipc        s0, 283636
                  andi         s1, a1, -1233
                  auipc        a7, 438298
                  lui          s9, 960623
                  addi         s7, s7, -1195
                  add          s6, a2, t6
                  slli         s0, s2, 23
                  add          s4, s1, sp
                  slti         t4, a6, -389
                  lui          t5, 695877
                  and          sp, t0, sp
                  slli         a5, t3, 12
                  add          a4, a3, sp
                  srai         a5, s6, 31
                  addi         a1, s2, 1297
                  and          t3, s9, a6
                  andi         s8, a2, -1
                  sltu         ra, t1, s6
                  slli         tp, s2, 12
                  andi         t3, a0, -1574
                  add          a5, a0, a7
                  xori         t3, a3, -708
                  xor          s0, s10, s7
                  nop
                  sll          tp, t5, s8
                  sltiu        s6, a6, -1270
                  srli         a7, t3, 18
                  srli         s8, a4, 31
                  or           t4, t1, t2
                  li           s10, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           s0, 0xffffffff
                  li           a4, 0xffffffff
                  li           a0, 0x0
                  li           s11, 0xfc0d6fc2
                  li           t3, 0xffffffff
                  li           t6, 0xc3f55ce0
                  li           s6, 0x80000000
                  li           gp, 0xffffffff
                  li           t2, 0x80000000
                  lui          s10, 893343
                  sub          s6, s11, t3
                  lui          gp, 1014593
                  auipc        s11, 843543
                  lui          gp, 233617
                  auipc        gp, 194777
                  lui          gp, 488842
                  auipc        s11, 68238
                  add          t2, s0, s10
                  auipc        a4, 894576
                  addi         a4, t6, 1021
                  lui          gp, 119841
                  addi         t2, s0, -1511
                  add          t6, a0, s11
                  nop
                  nop
                  sub          a4, t2, a0 #end riscv_int_numeric_corner_stream_3
                  add          s10, gp, t6
                  add          s11, s2, s11
                  slt          a7, a6, a7
                  lui          ra, 494495
                  lui          t5, 274974
                  slti         gp, gp, -2039
                  slt          a3, t0, a6
                  srl          a4, a3, a2
                  sltu         t2, a4, s11
                  nop
                  srli         a7, s11, 12
                  slti         a3, a2, -280
                  and          a0, tp, s3
                  add          a7, t3, s5
                  add          s5, a0, a1
                  slt          s1, zero, a7
                  andi         ra, a2, 1267
                  xori         a1, a4, -341
                  ori          a4, s0, 136
                  xor          s5, zero, s9
                  xor          s11, a5, gp
                  sll          a3, a3, a5
                  lui          s11, 204100
                  or           t6, s9, a1
                  lui          s11, 457890
                  ori          a2, a4, 1197
                  sra          t4, t0, a3
                  ori          s11, a4, -32
                  and          a0, s5, s7
                  srli         s10, s4, 10
                  sll          s7, gp, a3
                  lui          s1, 130692
                  xori         s0, s6, -1429
                  and          s8, zero, t3
                  andi         ra, s0, -49
                  sub          a3, s7, a4
                  andi         s5, gp, -830
                  auipc        t3, 841051
                  srl          s11, t1, s0
                  sltiu        a0, s9, 1500
                  sll          s6, ra, s1
                  ori          sp, t3, -281
                  xori         s11, gp, 338
                  xor          zero, s6, s6
                  auipc        s4, 526709
                  add          gp, s1, t5
                  slt          a7, t6, s9
                  xor          t4, t5, s1
                  slli         a5, s5, 18
                  nop
                  srli         a4, a4, 7
                  nop
                  srli         s4, tp, 29
                  or           s7, s2, s10
                  slti         s0, s11, 1469
                  addi         a1, a6, -1751
                  srl          a7, zero, zero
                  sra          a6, s10, zero
                  and          s2, s6, t1
                  or           a5, a6, zero
                  and          s5, tp, t0
                  srl          a2, a1, a1
                  nop
                  ori          s4, s1, -1856
                  or           ra, a1, s5
                  sll          s8, t6, s2
                  add          a0, t0, gp
                  addi         s9, zero, 934
                  xori         s8, sp, 859
                  sra          t3, s5, s3
                  nop
                  srai         s2, s5, 13
                  xori         tp, zero, -1054
                  srli         a1, s8, 14
                  slt          sp, a5, s2
                  nop
                  add          t4, a4, a7
                  or           t6, a6, s3
                  srl          s9, s10, a7
                  slti         s11, ra, -549
                  sub          s4, a0, s11
                  or           a6, a4, s10
                  slt          a6, t5, zero
                  addi         s11, a5, 398
                  sll          s5, s10, zero
                  sub          zero, s4, gp
                  xori         a3, a5, 908
                  srl          s9, t1, s4
                  xor          a4, s9, zero
                  andi         sp, tp, -453
                  li           a1, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           t6, 0xffffffff
                  li           s9, 0x0
                  li           t4, 0x0
                  li           s2, 0x0
                  li           a0, 0x80000000
                  li           s0, 0xe60f7430
                  li           a4, 0xd1f472b3
                  li           s8, 0xb195afe4
                  li           a5, 0x80000000
                  add          s0, s0, t6
                  nop
                  add          s8, s8, a1
                  lui          t4, 55864
                  sub          a4, s2, a0
                  addi         t4, a0, 0
                  lui          a4, 24395
                  auipc        t4, 756696
                  nop
                  addi         a0, s8, -1070
                  auipc        a0, 525704
                  add          s8, t4, t4
                  sub          t6, a5, s8
                  addi         s0, t6, -447
                  lui          s8, 368564
                  sub          a0, a0, a1
                  sub          s2, s2, s9
                  lui          a0, 1014983
                  auipc        s2, 527743
                  nop
                  addi         a1, s0, -208
                  auipc        s9, 906428
                  sub          s9, s9, a0
                  sub          a5, s9, a1
                  lui          s0, 601404
                  sub          a4, s2, t6
                  addi         a4, s0, 509
                  lui          a4, 774046 #end riscv_int_numeric_corner_stream_19
                  slti         s1, s0, -1699
                  sub          s2, s9, s8
                  sltiu        a0, sp, -1592
                  sltiu        sp, s8, 66
                  slti         s11, t1, -1753
                  nop
                  andi         sp, ra, 688
                  and          a2, ra, t6
                  srl          s1, a1, gp
                  andi         a3, zero, 432
                  sll          s4, zero, s11
                  sltu         s11, s10, s2
                  lui          s5, 673408
                  sub          a3, tp, s7
                  or           s0, t4, s5
                  lui          s2, 892600
                  or           a6, a1, t4
                  andi         ra, s2, 762
                  andi         s7, s8, -1196
                  slt          t6, sp, a2
                  sll          t5, a4, s2
                  sll          s11, a3, gp
                  xor          s4, t4, a2
                  auipc        s2, 289908
                  srai         s7, gp, 24
                  sll          s6, s7, t4
                  slli         a7, s9, 3
                  and          zero, s7, a5
                  add          ra, t0, t1
                  andi         t2, a0, 981
                  xor          gp, a4, t0
                  sll          a0, t3, tp
                  sra          t6, a7, tp
                  sub          s2, a3, t6
                  nop
                  lui          s6, 856223
                  srl          s2, ra, gp
                  addi         tp, s7, 883
                  auipc        s10, 564018
                  andi         a2, t1, 173
                  srl          a5, t0, s2
                  xori         s4, ra, 664
                  auipc        a6, 182041
                  and          a3, a2, s5
                  sra          t3, t5, s9
                  addi         a4, a2, -1322
                  add          ra, s3, s10
                  andi         t2, tp, -751
                  xor          zero, sp, s7
                  srl          s11, s0, s4
                  andi         s7, s2, -315
                  xori         s4, t6, 1003
                  add          a1, s9, a1
                  nop
                  add          sp, t6, tp
                  srai         t2, s5, 21
                  xor          s10, tp, t0
                  auipc        a2, 53976
                  andi         s4, t4, -816
                  srl          s9, s11, a0
                  sltiu        s8, tp, 20
                  sra          s5, s2, t4
                  sra          a7, sp, t6
                  lui          t3, 672841
                  srli         ra, a4, 4
                  ori          a4, s1, -177
                  srli         zero, s2, 10
                  addi         gp, ra, 1392
                  addi         t6, s11, -1714
                  xor          a2, a2, a3
                  slti         t3, a2, -333
                  sltiu        gp, a5, -1318
                  or           s4, a6, s7
                  sltiu        a6, s8, 1037
                  lui          a5, 58609
                  srli         s0, a7, 18
                  slt          t2, t2, gp
                  addi         s0, a1, -1458
                  slli         s2, gp, 24
                  sub          s1, s5, t5
                  addi         t5, s1, -832
                  slti         s0, a7, 238
                  sltu         s2, s9, s10
                  ori          a6, s11, -457
                  slt          s1, sp, a6
                  srai         a5, t1, 9
                  xor          a3, t6, t4
                  or           t3, s0, a6
                  sub          s10, t3, a6
                  or           a3, t5, s3
                  addi         t5, s3, 460
                  slt          gp, t4, t0
                  slt          tp, a6, t4
                  slti         t4, zero, -1153
                  nop
                  sra          s11, gp, a3
                  and          t3, sp, a4
                  nop
                  xori         t2, a4, 818
                  xori         t6, zero, -520
                  sltu         t4, t3, t3
                  auipc        a1, 788065
                  add          t6, s1, t3
                  srl          gp, s8, a6
                  ori          s10, s7, -1825
                  sltiu        s0, a1, 95
                  nop
                  lui          a0, 984292
                  auipc        s1, 119841
                  xori         a3, t0, -915
                  sltiu        gp, s9, 1305
                  or           t4, a2, a7
                  sll          zero, t4, gp
                  slti         a4, t2, 742
                  sltu         s0, sp, t4
                  lui          a6, 746228
                  sll          s0, s11, sp
                  or           s11, t1, t2
                  srli         a5, a2, 1
                  addi         a7, t4, 43
                  addi         t4, t3, -152
                  srai         s4, s6, 20
                  ori          a3, a1, -1162
                  xori         s9, s2, 1056
                  ori          s1, t6, 620
                  add          s7, t0, s9
                  srli         t2, zero, 29
                  slt          zero, a0, t0
                  sltiu        s11, s2, -370
                  srl          s5, a1, s0
                  slt          t4, a6, gp
                  srli         ra, a5, 3
                  slt          s1, t1, zero
                  nop
                  slli         s2, a1, 14
                  ori          a2, s6, -1430
                  xor          t2, t3, a4
                  auipc        t4, 565018
                  srl          a7, t6, t4
                  slti         s11, s9, -184
                  and          s8, t1, t5
                  sra          zero, a5, t0
                  srli         t6, tp, 27
                  and          t5, t4, t0
                  sll          s11, a4, t4
                  xori         t5, t4, 1123
                  xori         a2, a5, -162
                  srl          t2, s9, t2
                  add          sp, ra, s1
                  sltiu        t2, t2, -578
                  sra          s5, t0, s9
                  slli         t4, s9, 2
                  auipc        s8, 405495
                  sra          t2, s8, s3
                  add          s11, s10, s0
                  sub          zero, t0, s6
                  sltiu        s0, s11, 1523
                  sra          a7, a2, a5
                  and          t2, a4, s4
                  sub          a4, s1, s4
                  sra          gp, t3, s6
                  srl          a6, s6, tp
                  and          t6, s2, s6
                  sra          s0, t1, s9
                  li           a4, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           a6, 0xe74f6177
                  li           a3, 0xffffffff
                  li           t4, 0x3e9d1423
                  li           sp, 0x0
                  li           a2, 0xffffffff
                  li           s10, 0x0
                  li           s6, 0x80000000
                  li           s9, 0x850db7ef
                  li           a0, 0xffffffff
                  lui          sp, 485510
                  addi         t4, s6, 1404
                  addi         s10, t4, -1820
                  lui          a6, 355772
                  addi         sp, t4, 1721
                  add          a6, a3, s10
                  nop
                  sub          a2, s9, sp
                  addi         a0, s9, 1814
                  add          t4, s10, a6
                  auipc        s10, 846600
                  add          a3, a6, t4
                  auipc        t4, 120525
                  sub          a0, s9, s6
                  nop
                  auipc        a4, 77715
                  sub          s10, t4, s9
                  lui          a4, 471758
                  nop
                  nop
                  add          s6, s6, sp
                  addi         a4, sp, -1258
                  nop
                  nop
                  nop
                  add          a6, s10, s6
                  auipc        t4, 904970 #end riscv_int_numeric_corner_stream_16
                  auipc        s10, 589604
                  or           s1, s9, s6
                  lui          a1, 942862
                  slli         s4, t3, 20
                  slli         a0, a1, 2
                  and          ra, s3, zero
                  lui          t4, 301965
                  slti         s0, s4, 1917
                  xori         s2, s3, 1332
                  srai         t2, t6, 1
                  sub          s10, s4, t6
                  sltu         tp, a3, t2
                  or           tp, a6, t5
                  sub          s8, a7, tp
                  slt          a6, a2, zero
                  srli         s8, a0, 16
                  xor          a0, ra, s10
                  addi         ra, t3, -839
                  add          a4, s4, a7
                  and          a3, a4, gp
                  or           s10, a0, a7
                  srl          s0, s7, a4
                  slt          s0, ra, a5
                  slli         a3, s5, 27
                  slli         t2, sp, 19
                  srai         s8, sp, 21
                  add          s5, sp, s3
                  sll          a6, a1, tp
                  add          gp, a5, a6
                  nop
                  srl          a0, t5, zero
                  ori          zero, t5, -119
                  sltu         a0, s5, t5
                  add          a6, ra, s6
                  sll          a3, s5, s10
                  slt          a1, a7, t5
                  ori          s7, s2, -1373
                  or           a6, s11, s11
                  andi         t6, s3, -1170
                  auipc        s6, 995276
                  sub          s11, a2, t0
                  or           a0, t6, t1
                  sltu         s0, a1, s11
                  sll          a2, s2, gp
                  srli         s8, a6, 0
                  slti         gp, s6, -1616
                  srl          s10, t0, t0
                  srai         s0, a7, 17
                  sub          s0, t3, t4
                  xor          a7, a7, ra
                  srl          a2, s10, t1
                  or           t5, gp, s1
                  auipc        s1, 910848
                  sub          a1, t2, s10
                  sll          a6, a6, s8
                  lui          t3, 544071
                  add          t5, t6, s8
                  slli         s7, s8, 5
                  lui          ra, 12002
                  nop
                  sub          tp, s7, t0
                  sra          a7, s9, t5
                  auipc        t2, 1041165
                  auipc        s9, 117157
                  slt          s0, a1, a3
                  srl          a1, s3, a5
                  xori         s2, s6, 1599
                  addi         s4, a4, 784
                  srai         a3, s0, 9
                  or           t6, t6, a1
                  xori         t3, s11, 704
                  lui          a3, 456167
                  sra          s9, s1, s7
                  ori          s2, s10, -1539
                  xor          a0, a4, zero
                  xori         s11, zero, 335
                  xor          a5, t6, t6
                  or           s2, s5, a5
                  srl          s2, a4, s1
                  slt          s10, sp, zero
                  nop
                  or           a2, s6, a3
                  sltiu        s1, a0, -1207
                  sltu         s9, s2, a3
                  srai         s6, t5, 26
                  add          zero, s7, tp
                  sub          t4, s4, s8
                  srai         t6, s0, 3
                  xor          s11, a3, t4
                  sltiu        s6, s11, 313
                  nop
                  sra          s2, s10, tp
                  srli         a1, s3, 11
                  and          s0, a1, s10
                  nop
                  ori          a6, s9, -359
                  sltiu        s8, a1, -1286
                  and          s11, s7, a2
                  slt          s10, s0, a2
                  srl          a5, s3, t0
                  add          tp, s5, s2
                  slti         t6, a0, -1655
                  sltu         a2, t3, s1
                  andi         s6, a5, 1419
                  slli         s0, s9, 4
                  slt          s0, a5, s4
                  andi         a7, a5, -1600
                  sltiu        sp, t6, 1258
                  add          t2, s2, tp
                  ori          zero, t3, 739
                  xor          s2, s6, s5
                  srli         a2, s9, 16
                  sra          sp, s9, s5
                  ori          zero, a2, 1121
                  xor          t6, s9, s9
                  add          s10, zero, s5
                  or           a2, t3, t6
                  sub          s6, a2, a3
                  xori         t3, s7, -1915
                  srl          t2, s11, t3
                  sltiu        zero, ra, -509
                  and          a0, a6, tp
                  srli         s8, s0, 10
                  nop
                  or           a6, a4, sp
                  sll          s7, t5, a4
                  sltu         s8, t3, s0
                  addi         t2, a6, 1231
                  srai         s8, s10, 16
                  sll          zero, s9, t1
                  sub          ra, s2, a2
                  srl          a4, sp, a1
                  srl          gp, s5, a5
                  slti         s9, a5, 1206
                  sltiu        s0, s11, 988
                  sll          gp, a5, t2
                  sltu         a2, a1, s8
                  slti         t6, tp, 1564
                  slti         s6, s8, 1265
                  sll          s4, s0, s9
                  andi         s9, s6, 1210
                  lui          s9, 768277
                  slt          s4, s3, a3
                  sll          zero, t3, s8
                  sll          s8, sp, ra
                  or           gp, a3, a7
                  sub          ra, t3, a6
                  sltiu        tp, s7, 288
                  slt          s9, tp, t5
                  auipc        a6, 615576
                  sltiu        s9, a3, 538
                  or           s5, t3, tp
                  lui          sp, 937692
                  xor          t2, zero, a4
                  xor          s4, t5, t3
                  sll          a6, t5, s3
                  srl          t5, a6, t1
                  slli         s0, tp, 5
                  sltiu        gp, t4, -1314
                  slti         a4, a0, -1956
                  slli         s2, s3, 31
                  sub          s7, s6, s1
                  slti         zero, s6, 1060
                  srl          ra, zero, tp
                  slti         t2, sp, -492
                  andi         s4, s10, 971
                  slti         t3, s2, -1796
                  srai         a2, tp, 11
                  sra          t3, a7, s2
                  slti         s5, t3, -1922
                  or           t5, t3, a3
                  srai         s8, s6, 8
                  slt          a5, a4, t6
                  add          s4, s6, s4
                  srai         s9, s0, 22
                  nop
                  add          s1, a2, a3
                  slti         a7, s5, -201
                  ori          t6, t1, 1265
                  slli         s9, ra, 7
                  lui          tp, 344436
                  or           s9, t1, t0
                  sub          s9, gp, s4
                  add          sp, a3, s7
                  andi         t3, t0, -1240
                  sub          t5, s0, tp
                  xori         a4, tp, -864
                  xori         a1, s0, 1439
                  sltu         a1, s2, s11
                  or           ra, a2, t3
                  andi         t4, a6, -322
                  or           s7, t0, a1
                  slt          a3, t2, a6
                  sll          t5, s0, a7
                  nop
                  nop
                  slti         a7, t0, 513
                  sltiu        s0, sp, 1130
                  srai         a6, a1, 23
                  lui          a3, 266518
                  sll          s9, a2, ra
                  sub          s7, s8, s10
                  auipc        sp, 35124
                  addi         tp, a4, 1391
                  srl          t3, a3, s6
                  xori         s0, t2, -944
                  addi         ra, s7, -1425
                  addi         s1, s7, 823
                  xor          a6, a0, a6
                  auipc        ra, 250508
                  auipc        a4, 323786
                  andi         t5, a4, 425
                  srai         s5, s2, 8
                  sub          s11, t1, zero
                  xor          s6, tp, a4
                  add          s2, t0, s6
                  nop
                  srai         s6, zero, 24
                  ori          a7, zero, -308
                  srai         t6, t1, 10
                  or           a6, s11, s6
                  srai         a3, t2, 29
                  or           s4, a3, a0
                  lui          s5, 39442
                  nop
                  slti         s2, s6, -1671
                  auipc        s9, 95329
                  andi         s11, s6, 852
                  slli         s10, sp, 8
                  nop
                  slt          a4, s2, s7
                  srai         ra, a5, 21
                  srai         gp, t3, 7
                  slti         ra, s5, -1867
                  xor          s9, t4, a2
                  slli         s1, t1, 7
                  sltu         a6, a5, a2
                  srli         s4, s5, 21
                  srai         t3, s4, 23
                  and          a2, s8, s7
                  sra          t4, s6, s6
                  sll          a1, s3, s10
                  srai         a4, a2, 17
                  sltiu        s5, a2, -613
                  slli         a7, t0, 15
                  nop
                  sra          s4, s7, a1
                  slt          s6, s11, t6
                  andi         gp, ra, -1914
                  add          gp, s10, a3
                  sra          tp, a2, s11
                  sub          t2, t5, s3
                  addi         a6, s4, 1726
                  nop
                  auipc        s2, 117713
                  andi         a0, zero, -1865
                  slti         a5, a4, -741
                  ori          t5, a3, 296
                  and          t4, t3, s6
                  andi         tp, s0, 404
                  addi         t2, a5, 737
                  xori         gp, s9, -63
                  add          gp, a4, t1
                  ori          a0, a4, -1498
                  sub          a4, s4, ra
                  add          s10, s10, sp
                  slti         t2, t1, -784
                  srai         a1, t5, 24
                  add          s10, a2, t0
                  sra          gp, s10, t0
                  ori          t5, s2, -1476
                  ori          s9, a0, -1923
                  addi         s11, tp, 1437
                  andi         t5, s6, -2042
                  xori         s1, a7, -459
                  add          a1, s5, a3
                  sll          tp, sp, ra
                  xor          s1, s3, a0
                  andi         s4, a2, 669
                  ori          t2, s10, 1032
                  xori         a0, a2, 1838
                  and          a3, t4, t5
                  sltu         t2, tp, a1
                  xori         zero, s0, -1651
                  or           s8, t5, a3
                  sra          s8, a3, gp
                  sub          t3, a5, a5
                  srai         t2, s11, 1
                  slti         a4, a2, 1419
                  addi         zero, s3, 938
                  lui          s10, 454703
                  addi         t2, t2, 1878
                  andi         s0, t1, 1110
                  auipc        s1, 818979
                  or           s4, s0, s4
                  srai         a5, a2, 31
                  addi         s2, t5, -1536
                  nop
                  nop
                  sltiu        a1, s11, 724
                  sra          a0, t5, a2
                  and          zero, a0, a2
                  sll          zero, sp, s3
                  or           s6, ra, t6
                  slli         sp, a2, 2
                  slti         s8, ra, -140
                  or           s4, gp, t3
                  and          s2, t2, s2
                  ori          t2, t0, 818
                  auipc        s10, 637837
                  srli         s5, a2, 11
                  add          gp, t6, t6
                  sub          a7, s7, a1
                  srai         s8, s6, 29
                  lui          s10, 954770
                  srl          s2, s7, s10
                  auipc        gp, 971988
                  sll          a0, gp, s3
                  and          t2, a2, t5
                  ori          a5, s7, 752
                  add          t3, s5, a3
                  add          s1, s8, s6
                  ori          a4, a6, 1166
                  slt          s6, a4, zero
                  and          a7, a1, t4
                  and          t5, s5, gp
                  srai         s7, s9, 13
                  and          s5, t5, tp
                  auipc        t4, 85742
                  lui          s2, 714861
                  xori         s8, s7, -338
                  sltiu        s6, a6, 83
                  xor          s4, t3, t3
                  sll          gp, a7, a4
                  addi         s8, a0, 835
                  and          t2, t2, t1
                  ori          s7, ra, -344
                  sltiu        a4, t2, 1570
                  ori          gp, s11, 1255
                  srl          s11, a2, t0
                  sltiu        s9, ra, -868
                  addi         s4, sp, -2042
                  and          a0, s6, s1
                  addi         a3, t5, -835
                  sra          t5, sp, t1
                  ori          s6, s1, -784
                  srli         ra, s8, 7
                  sltiu        t3, sp, 450
                  sll          t3, s6, a3
                  slli         s5, s3, 10
                  auipc        a3, 811294
                  sub          t4, t0, s4
                  srl          s11, t2, gp
                  xori         s1, t1, -1281
                  sub          gp, zero, t2
                  srl          ra, t6, t6
                  srl          a3, s1, t6
                  nop
                  sll          s2, t3, s0
                  and          a0, s0, t6
                  slti         a7, t1, 1076
                  slti         s8, t2, 903
                  ori          t3, s8, -850
                  slli         s0, s7, 24
                  add          s2, a4, a1
                  srl          a3, s8, t3
                  ori          t2, s3, 1076
                  sltu         a2, t4, sp
                  srli         t4, a6, 17
                  add          ra, a1, t4
                  sltu         ra, s8, gp
                  or           a4, a4, s8
                  slt          a6, t2, a4
                  srai         s2, gp, 10
                  sltiu        t4, s2, -814
                  ori          t3, a6, 760
                  sltiu        s6, a2, -1647
                  andi         tp, t0, -1980
                  and          s8, s5, s6
                  auipc        a4, 60069
                  lui          t6, 499628
                  sltu         s0, a4, t2
                  sltu         sp, s0, gp
                  li           t3, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           s4, 0xffffffff
                  li           s2, 0x9ff792e1
                  li           s0, 0x93b9784e
                  li           s5, 0xffffffff
                  li           s8, 0x80000000
                  li           s10, 0x9b01cec0
                  li           a6, 0x80000000
                  li           a1, 0x0
                  li           a5, 0xffffffff
                  add          s0, s2, s2
                  auipc        s0, 401437
                  addi         s2, s5, 315
                  auipc        s2, 71745
                  add          s10, s4, s2
                  nop
                  lui          t3, 428638
                  sub          s8, s5, a1
                  nop
                  sub          s2, s8, s4
                  nop
                  nop
                  add          s2, s4, s4
                  add          s10, s0, s0
                  sub          a6, a6, a5
                  sub          a5, s10, a5
                  sub          a6, t3, s8
                  addi         s0, s8, 348
                  sub          a6, s2, s4
                  nop
                  auipc        t3, 149357
                  nop
                  nop
                  addi         t3, s4, 210
                  lui          a1, 409714
                  addi         s0, s0, -924
                  add          t3, a1, s5 #end riscv_int_numeric_corner_stream_13
                  lui          t5, 161805
                  xor          t2, t0, s7
                  sltu         a3, zero, a0
                  srai         a3, t2, 15
                  xor          s5, s7, t1
                  slt          t3, t3, t4
                  srl          t4, a3, a4
                  slli         s6, s6, 24
                  sltiu        s1, a1, -1901
                  andi         s7, s1, -501
                  sll          s0, a3, s3
                  lui          s0, 830692
                  and          a0, a2, s8
                  xori         s6, a4, -766
                  add          a1, a0, gp
                  srli         s4, a5, 6
                  xor          t2, a1, a3
                  and          s11, s8, a1
                  nop
                  andi         tp, a5, -1883
                  sltu         a1, a6, ra
                  slti         zero, s4, 797
                  nop
                  xori         s10, a0, 1725
                  add          t4, t4, t6
                  add          t6, s9, s9
                  xor          t4, s5, s5
                  andi         tp, t6, -1038
                  add          s7, sp, s11
                  sll          t6, s6, t6
                  sub          s6, s1, a0
                  sub          a6, s4, t4
                  or           t2, sp, s2
                  xor          s2, s11, a2
                  or           a6, a6, t1
                  slli         s5, s8, 15
                  auipc        t2, 63277
                  auipc        s7, 359753
                  srai         s0, t2, 8
                  slli         a1, s11, 7
                  slti         s9, s5, 1223
                  srl          a3, s4, t0
                  andi         s2, s2, 1507
                  sub          a6, s6, t5
                  add          s11, s3, s2
                  xori         t5, tp, 759
                  slli         s1, t5, 5
                  andi         gp, a3, 1272
                  add          s5, zero, a5
                  sll          ra, s8, gp
                  or           a4, s3, s3
                  sra          a0, gp, t2
                  auipc        s11, 895123
                  xor          sp, s2, s5
                  and          t5, s1, zero
                  slt          t4, a6, t3
                  xori         s11, a4, -928
                  or           s5, t0, s10
                  srai         t5, t2, 18
                  slt          t5, s6, s0
                  or           a2, gp, s5
                  add          gp, s7, zero
                  srl          t6, a2, s1
                  srai         a2, s11, 8
                  ori          s0, t0, -983
                  andi         a4, a6, 549
                  srli         s5, t3, 0
                  sltu         s2, t4, a6
                  srl          a5, s4, t6
                  lui          a6, 218880
                  srai         a4, s2, 21
                  slt          s10, a5, s9
                  xor          s1, t0, gp
                  xori         gp, sp, 1113
                  or           a2, a0, a7
                  or           s9, s10, t5
                  auipc        sp, 166828
                  srai         s9, a4, 16
                  slt          s4, t0, s10
                  slti         t6, gp, -154
                  srai         s9, sp, 0
                  auipc        a2, 523191
                  srai         s9, s2, 20
                  auipc        s9, 679289
                  nop
                  srl          s0, a0, t3
                  sub          a1, a5, s4
                  srli         s5, a6, 30
                  sltiu        a4, t6, 815
                  and          a0, t2, s9
                  ori          s6, s10, 565
                  sltiu        s9, t0, -1727
                  andi         zero, s9, 895
                  auipc        a2, 605094
                  sub          s10, s11, t1
                  srl          a7, s9, a1
                  xori         a3, gp, -1669
                  sltiu        t4, a1, 1902
                  or           t6, s8, s9
                  addi         s10, zero, -102
                  sltiu        zero, t2, -1982
                  sra          s5, a7, ra
                  sra          t5, s7, t2
                  sll          sp, s6, a7
                  slli         s1, a7, 21
                  sll          s7, sp, a7
                  add          gp, s6, t3
                  or           sp, s9, t3
                  andi         a1, s3, 801
                  slti         s8, s10, 1445
                  addi         a2, a7, 1573
                  slti         s11, s10, -1733
                  xor          s6, a3, t6
                  slli         s7, t2, 20
                  ori          s4, a3, -477
                  auipc        s8, 967054
                  slli         tp, a7, 7
                  addi         a5, t6, -1040
                  and          t2, a2, s10
                  srai         s10, s8, 9
                  sll          s9, s11, s9
                  xori         a3, s4, 922
                  andi         tp, t2, -1240
                  slli         t5, gp, 31
                  slt          t6, a7, t6
                  sll          a7, s0, s0
                  addi         s7, zero, 102
                  and          zero, a7, t3
                  sra          s8, s10, s11
                  xor          t2, t3, t4
                  sltu         a3, s5, a7
                  sra          a0, a1, s3
                  slli         a1, s10, 12
                  sltu         a0, ra, s11
                  slti         s0, s5, -1513
                  addi         s1, gp, 1721
                  or           s5, s1, s5
                  and          a5, s1, t4
                  xor          a4, tp, s1
                  xor          ra, zero, ra
                  ori          t2, a0, 1557
                  slli         a2, a4, 10
                  srl          s6, t5, s5
                  sltiu        a7, ra, -1934
                  sub          a1, s6, s8
                  xori         s0, t1, 1449
                  sltiu        a6, s3, 36
                  sltu         tp, gp, s11
                  srli         s0, s0, 29
                  srai         s10, s10, 11
                  sra          t3, t0, t2
                  addi         s10, sp, -1329
                  sub          a6, t1, s9
                  sltu         s5, s9, t4
                  slti         s10, a4, -962
                  sll          t3, s3, t0
                  xor          a5, zero, s1
                  auipc        s8, 593512
                  nop
                  slt          s11, t5, a7
                  slti         s6, a1, 914
                  slli         t6, a1, 22
                  auipc        a5, 519101
                  sub          a4, zero, s6
                  sltu         a3, s10, s0
                  sra          s2, s7, s1
                  nop
                  srli         t6, t0, 15
                  sltiu        s1, a5, 847
                  slti         a1, t6, -1856
                  srli         s0, a5, 22
                  xori         t2, s8, 8
                  xor          s1, t6, t4
                  sub          s6, a1, t2
                  lui          a4, 920153
                  and          s4, s4, a1
                  or           gp, zero, a2
                  slli         s10, s0, 17
                  sra          t3, s1, t3
                  sra          s0, s1, t2
                  srli         a0, s10, 26
                  sub          t3, gp, a2
                  lui          t5, 406531
                  srli         t6, s11, 30
                  xor          tp, t3, s9
                  ori          t3, t4, 282
                  sub          s6, a0, s10
                  and          a2, s3, a7
                  slli         s9, gp, 24
                  srl          s8, a0, s2
                  auipc        t2, 936827
                  ori          s0, s11, 1527
                  sub          s7, a4, gp
                  addi         tp, s4, -846
                  sltiu        t5, a3, -898
                  xori         tp, a3, -1133
                  slt          t6, ra, t3
                  nop
                  or           a1, t4, s10
                  nop
                  sltu         ra, ra, a6
                  sltiu        a5, t0, 1900
                  srli         s11, t3, 3
                  nop
                  nop
                  add          s2, s3, s0
                  srai         ra, ra, 9
                  xor          a1, a3, a0
                  ori          zero, t4, 1542
                  add          a5, sp, t6
                  xor          a7, a5, s1
                  lui          s10, 976179
                  slti         zero, s10, 928
                  sltiu        s7, s3, -1685
                  srli         ra, a3, 5
                  xor          s10, tp, a3
                  sra          t2, a1, t4
                  add          s5, a7, t0
                  auipc        t3, 198434
                  addi         gp, a7, 188
                  lui          gp, 864676
                  xor          s8, a1, a7
                  slli         a3, t0, 6
                  slt          a7, t2, s10
                  slli         s11, a5, 23
                  addi         s5, s4, 1349
                  addi         a3, zero, 1628
                  add          s0, sp, zero
                  add          a2, s6, s0
                  srli         s11, t0, 11
                  sll          t3, s9, a5
                  sltiu        a3, t0, 1646
                  nop
                  xor          sp, t4, a7
                  add          ra, gp, t5
                  or           sp, a4, t0
                  srli         a4, t0, 6
                  srai         s5, s3, 21
                  auipc        tp, 884209
                  srli         a0, s6, 23
                  and          a5, s9, s10
                  sltu         a7, s11, a5
                  xori         sp, a5, -509
                  srli         a1, s11, 19
                  lui          tp, 238600
                  ori          t3, t5, 890
                  ori          s6, s11, 1958
                  srai         gp, gp, 14
                  ori          t4, zero, 1881
                  add          t6, s2, s11
                  srai         s1, ra, 25
                  and          t4, zero, t1
                  or           t2, ra, ra
                  andi         a0, t6, -1818
                  nop
                  srl          t3, sp, t0
                  lui          ra, 873204
                  slti         a4, s2, -1292
                  addi         t2, ra, 432
                  sra          t2, a5, t0
                  slli         s8, s5, 11
                  sll          s4, s3, s3
                  auipc        t3, 321783
                  and          a7, t6, s9
                  or           t6, a5, s9
                  and          a3, t6, a5
                  add          sp, a1, s6
                  auipc        sp, 232832
                  xori         s2, s1, -1797
                  srli         a6, s1, 14
                  addi         gp, s3, -1711
                  sll          t3, s7, a4
                  or           s11, a5, a3
                  sll          a5, a0, a0
                  add          t2, t3, ra
                  sll          t6, t1, s0
                  and          a7, s3, s3
                  andi         s6, t1, 1778
                  or           ra, a3, s8
                  slti         s9, s3, -737
                  xor          a6, s6, s7
                  auipc        gp, 776120
                  sra          s11, s1, a6
                  addi         s5, s10, -1461
                  nop
                  slt          t2, tp, s9
                  lui          t2, 678112
                  xori         tp, a6, -1979
                  sra          a5, s2, s10
                  sub          t4, ra, s7
                  srl          a7, sp, s8
                  add          gp, a0, t0
                  slti         s4, zero, -1010
                  sll          t3, s1, a5
                  slt          t5, a6, s2
                  sll          a1, a3, s2
                  slti         tp, s0, -978
                  xori         a3, zero, -920
                  sltu         s4, s7, a4
                  or           zero, s8, t3
                  add          ra, s0, a4
                  srli         s10, ra, 29
                  sll          s8, t5, s3
                  lui          a4, 185566
                  sra          s5, a6, a3
                  slt          t5, s11, t6
                  nop
                  slt          s0, ra, s2
                  sra          sp, s1, a6
                  and          a5, s11, s11
                  sub          t6, zero, s1
                  sub          a7, s1, a7
                  sra          a0, a6, s11
                  or           s9, a3, tp
                  ori          a7, s9, -1457
                  or           s4, a2, a3
                  nop
                  addi         a6, sp, 753
                  srai         zero, t6, 11
                  auipc        sp, 358188
                  sltiu        s0, a7, -966
                  sra          a5, s1, a0
                  xor          a1, s6, a3
                  and          t4, t6, s0
                  sltu         a1, t4, a7
                  srai         s9, t5, 7
                  srli         s2, ra, 24
                  xori         s1, s1, 1330
                  srai         a6, a4, 23
                  sltiu        s10, a6, -1194
                  srl          s9, s5, t6
                  addi         a1, a6, -196
                  xori         t3, a4, -173
                  slti         s9, gp, -851
                  xori         gp, gp, -1798
                  srli         s8, a3, 15
                  lui          t5, 458456
                  addi         s5, gp, 93
                  or           s1, gp, t4
                  sltiu        a2, s2, 1682
                  andi         a6, a7, 7
                  addi         t6, t3, 1774
                  ori          s7, s0, -446
                  and          gp, a2, a1
                  sll          s2, a2, s6
                  sltiu        t5, s10, -1747
                  andi         s9, s1, -1681
                  sll          t2, a1, t0
                  sltiu        t3, a0, -1051
                  srai         t2, s4, 21
                  ori          a5, s5, -314
                  slt          s2, t0, t1
                  sltiu        t5, s1, 452
                  nop
                  and          t2, s2, t3
                  addi         s4, t6, -1396
                  sltu         t6, s6, s2
                  ori          a4, s1, -1497
                  sltiu        a5, s7, 1548
                  sub          t5, s11, a2
                  slt          s0, t6, ra
                  slti         s7, s3, 1478
                  or           a1, s11, s8
                  srli         s11, s10, 28
                  srai         a4, s6, 20
                  sll          t5, s4, s0
                  andi         s10, s4, -1626
                  sub          s7, t1, t1
                  slli         a1, t4, 2
                  add          a1, s4, zero
                  srai         a3, gp, 11
                  andi         s2, a3, 1485
                  sub          a5, sp, a0
                  srli         s10, s11, 28
                  nop
                  lui          s6, 798945
                  srli         s8, s7, 17
                  auipc        s8, 704618
                  xor          tp, t5, s3
                  sltiu        a7, s8, -1692
                  ori          a6, a1, 1750
                  nop
                  ori          s7, s5, 1716
                  nop
                  slti         t4, sp, -1787
                  andi         t4, a3, 1343
                  nop
                  slt          s0, a6, s3
                  andi         t6, s5, 1355
                  lui          t5, 821079
                  sll          t3, a3, ra
                  auipc        gp, 198194
                  srai         t5, t2, 9
                  srli         sp, s4, 28
                  lui          a5, 41403
                  srl          s2, a5, s9
                  srl          t3, a6, a2
                  and          ra, a4, t2
                  auipc        a2, 410274
                  slt          s6, s5, t2
                  sra          t2, a0, t5
                  nop
                  or           a0, s0, tp
                  slt          ra, s4, s0
                  lui          t5, 731415
                  addi         s11, s4, -267
                  ori          ra, sp, 924
                  andi         t3, s3, -562
                  sltu         s10, t2, s8
                  slti         s7, t2, 98
                  and          s11, a0, t2
                  srli         s10, t0, 11
                  slli         t2, a6, 15
                  or           t5, a6, tp
                  srli         s1, ra, 12
                  addi         s0, zero, 498
                  sltu         a6, t4, t3
                  ori          s0, a2, -1860
                  and          s1, t2, zero
                  xor          t2, sp, t3
                  xori         a2, a5, 487
                  andi         s7, t6, -1042
                  lui          ra, 212646
                  slti         sp, a3, 107
                  sra          s5, t3, a7
                  srl          s2, s9, s7
                  sra          s7, a3, s9
                  srl          t2, a3, s2
                  sll          t5, a3, s10
                  srai         tp, ra, 29
                  sra          zero, s4, t6
                  sra          t4, t2, s10
                  sra          ra, ra, s1
                  add          s8, s7, t0
                  sltiu        a5, sp, -750
                  sll          s8, s8, a2
                  add          t3, gp, t2
                  xori         t6, s5, -1695
                  or           tp, zero, s7
                  add          s4, s5, s3
                  xor          sp, t3, s2
                  nop
                  sltu         t2, t0, s6
                  sltiu        t4, a7, -1605
                  slli         s4, a6, 14
                  add          s5, a2, t5
                  lui          a0, 677740
                  ori          a0, t1, -1857
                  sra          s7, s4, t6
                  srai         a0, sp, 31
                  sltu         a6, t6, a7
                  slt          a1, t5, sp
                  lui          s10, 528691
                  add          t6, a2, s10
                  sltu         s4, gp, s11
                  andi         s5, t6, -314
                  andi         t6, t6, 1738
                  slt          ra, s0, t2
                  lui          s8, 538574
                  sra          t4, a5, a3
                  srl          s2, t5, s0
                  sra          s10, a1, t0
                  sra          s2, a2, s0
                  andi         s1, a4, 1845
                  slti         s11, s8, -1192
                  xor          t3, s9, a4
                  slli         ra, t3, 30
                  sltiu        a6, a1, 1179
                  sltu         sp, s1, s1
                  slt          sp, a0, a1
                  sltu         s10, s6, s11
                  slli         sp, zero, 25
                  xor          a7, ra, a4
                  srli         a7, s1, 11
                  srl          a0, a3, a0
                  auipc        t5, 884283
                  ori          t6, s7, -1186
                  addi         t3, tp, -980
                  slt          a2, s2, s2
                  srl          a4, t1, s10
                  or           t2, s6, t3
                  slli         s9, s0, 14
                  slt          s7, t1, a2
                  slt          a1, s7, s8
                  andi         s6, gp, 1847
                  ori          a7, s10, -608
                  srai         s4, tp, 20
                  xor          gp, t5, t0
                  srl          s1, a0, a2
                  sll          s1, t1, t0
                  auipc        s2, 378688
                  sra          a6, t4, a4
                  slti         t3, s4, 1366
                  sll          tp, s5, s5
                  xori         a3, t0, 853
                  ori          a1, a7, 737
                  auipc        a2, 813516
                  sra          a4, s0, s5
                  srai         s11, s4, 17
                  slt          a3, a0, sp
                  auipc        a6, 770446
                  slt          a4, zero, s6
                  srai         s1, a6, 13
                  lui          t5, 675808
                  ori          s2, s5, 1115
                  srl          a0, a2, a4
                  lui          a3, 487111
                  sltu         s2, s1, a5
                  lui          s11, 473199
                  xori         s6, sp, 1760
                  srai         a4, s4, 30
                  srl          a4, t2, t4
                  xori         s5, a5, 1435
                  sll          gp, s9, s0
                  xor          gp, s8, a1
                  sll          s11, a4, a6
                  sll          sp, s3, t0
                  srl          s11, s0, s0
                  addi         s4, t6, 1869
                  ori          a0, s2, 960
                  nop
                  or           a2, t6, t4
                  xor          t6, a2, a4
                  sltiu        a0, a6, 2020
                  or           sp, sp, s5
                  slt          a6, a3, s4
                  sltiu        t4, s2, -1849
                  auipc        a0, 297692
                  or           zero, s9, s11
                  auipc        a5, 788666
                  srai         tp, s3, 15
                  srl          s0, s4, a3
                  or           a5, a6, s9
                  sll          t4, s9, t0
                  andi         t3, gp, -464
                  sub          s0, s5, t1
                  xori         ra, s8, 1939
                  sub          a2, t4, gp
                  auipc        s4, 285542
                  srl          t5, s7, s3
                  sltiu        s0, a1, -1429
                  sll          s9, s6, a2
                  auipc        s0, 796919
                  addi         a5, a7, -1339
                  add          t4, s2, t1
                  sra          a7, s3, a6
                  slli         s1, s3, 23
                  srl          s4, s9, a1
                  and          a4, s10, a1
                  sra          s7, s6, t1
                  and          s6, t0, t2
                  sltiu        s1, t6, -339
                  slli         s4, s8, 1
                  srai         a5, a6, 26
                  slti         a1, s1, -1957
                  auipc        t4, 599988
                  addi         t4, a6, -1352
                  xori         s6, s11, 1484
                  auipc        s8, 30173
                  add          a0, a2, t0
                  auipc        s9, 211161
                  ori          t2, t1, 1519
                  addi         tp, s8, -1742
                  addi         s5, t1, 697
                  and          a7, s9, zero
                  srai         s1, a2, 5
                  sltiu        gp, s3, -462
                  xor          t2, s10, s2
                  ori          t6, a1, -868
                  srli         s2, a6, 26
                  sll          a6, t4, t2
                  srli         s0, s8, 29
                  srli         a6, t2, 1
                  ori          a6, s5, 294
                  slti         s11, s9, -2019
                  sltu         a1, t1, t6
                  xor          s6, zero, a3
                  addi         s8, s1, 879
                  andi         a6, t0, -1946
                  sltiu        t3, a1, -199
                  add          gp, s0, a6
                  xor          s0, s8, s5
                  add          s1, s6, s4
                  sra          a5, s7, s1
                  sub          a2, t1, s0
                  xor          a6, s10, s5
                  sub          t6, s7, t1
                  add          a4, gp, ra
                  auipc        sp, 403163
                  addi         s1, t5, 58
                  andi         s5, t2, 1275
                  auipc        s11, 904238
                  xori         s9, s7, -912
                  sltiu        a1, t6, -532
                  sub          tp, t0, s7
                  xori         t4, a5, 1275
                  sra          ra, zero, t0
                  xori         t4, s10, -1152
                  xor          s4, s9, s0
                  addi         a7, s4, -480
                  auipc        a3, 139688
                  xor          s0, zero, a7
                  addi         s9, gp, 1786
                  andi         s11, s1, 1345
                  andi         a6, a6, 425
                  sra          a3, a2, s1
                  sltiu        sp, a7, -1510
                  nop
                  slti         tp, s9, 637
                  addi         a6, s4, 776
                  andi         s10, t3, -1736
                  srl          s6, t5, a7
                  sub          s9, s3, s8
                  xori         t5, s2, 1305
                  auipc        a3, 446173
                  nop
                  auipc        t2, 929744
                  xor          zero, s11, a5
                  slti         sp, t5, -1643
                  sra          s0, a5, a0
                  nop
                  or           a7, a6, a1
                  xor          a0, tp, s7
                  sub          t3, s6, s6
                  auipc        a5, 272983
                  andi         s2, a0, -1779
                  lui          t5, 133613
                  andi         s2, t5, 1567
                  xor          a0, a0, t3
                  ori          a0, s10, -1928
                  slt          s10, a6, t5
                  add          s0, zero, s6
                  nop
                  lui          s5, 655373
                  sub          s10, a3, a1
                  and          s1, s5, a4
                  ori          a6, a1, -443
                  ori          tp, a6, 1805
                  nop
                  sra          s1, s7, s6
                  auipc        t2, 401103
                  ori          a6, s11, -917
                  srai         ra, s0, 16
                  sltiu        ra, ra, -1924
                  sra          ra, ra, a1
                  slti         s6, t6, 963
                  andi         zero, s3, 1394
                  nop
                  add          ra, t2, s10
                  ori          ra, s5, -160
                  and          s11, s6, sp
                  sltu         s10, s10, zero
                  ori          t5, a5, 767
                  srai         t3, s6, 18
                  slti         s4, s10, -828
                  sra          t2, tp, zero
                  slli         a6, a1, 21
                  auipc        gp, 914048
                  and          s8, s6, s6
                  xori         a7, s1, -831
                  ori          s0, gp, -124
                  srli         s0, t0, 24
                  andi         gp, s11, 1606
                  ori          a1, a5, 1570
                  add          s4, a7, s0
                  and          t3, s11, a4
                  addi         a0, t5, -1316
                  slli         a4, a0, 0
                  slt          s7, t2, ra
                  slti         zero, a6, -465
                  slt          s2, a4, gp
                  sub          t3, a3, a5
                  and          t6, t5, s1
                  srli         a7, t2, 9
                  srl          tp, t5, s11
                  add          a3, t2, s0
                  xor          tp, ra, a5
                  srli         t5, s1, 4
                  xor          s6, s10, s5
                  lui          s2, 37327
                  sltiu        s11, sp, -578
                  or           a6, t6, t4
                  xor          s6, s0, t0
                  xori         s10, t5, 730
                  slli         t3, a2, 11
                  xori         a2, t0, -163
                  srai         t3, s2, 6
                  slti         s8, s10, 182
                  slli         a6, s1, 25
                  sltiu        s11, a7, -1611
                  add          a7, a5, t3
                  srai         s1, s2, 24
                  or           s5, s6, s5
                  slli         a1, a7, 4
                  slti         s10, tp, 1403
                  sub          s4, t3, t0
                  sltiu        a5, s1, 1695
                  xori         s5, zero, -1308
                  sub          s7, s4, t4
                  and          s5, t3, s5
                  srl          a0, t4, t1
                  xor          a3, ra, t5
                  slti         a5, a6, 16
                  xori         t5, s0, 398
                  addi         ra, s9, -633
                  sltiu        a7, s9, -593
                  or           gp, t5, a4
                  srli         a1, s5, 6
                  andi         t5, s2, -958
                  slt          s10, s8, a3
                  slli         s4, sp, 26
                  srai         sp, a0, 26
                  addi         zero, t2, -437
                  and          a5, s4, s5
                  slli         t5, t1, 16
                  auipc        s4, 676020
                  sll          s5, s0, t4
                  nop
                  sltu         s1, a2, sp
                  srli         t2, t3, 23
                  nop
                  or           s1, gp, s11
                  nop
                  slli         tp, s6, 30
                  ori          tp, a1, 1634
                  and          a6, s6, zero
                  slt          a2, s0, tp
                  add          a4, s11, s6
                  sltiu        ra, s6, 964
                  srli         s4, t1, 19
                  ori          a5, s0, -1131
                  lui          a6, 788789
                  srl          s8, a7, a1
                  add          s2, t1, s2
                  xor          a2, t3, t4
                  sltiu        s8, a3, 310
                  sltu         t2, s5, a0
                  nop
                  sll          s11, s10, a5
                  ori          t4, t4, 1422
                  sltu         a2, s9, s1
                  slti         ra, t5, 1016
                  xor          s7, s0, a3
                  sll          a7, s7, s8
                  srl          t2, gp, a0
                  add          t5, t3, a0
                  or           s5, s5, a1
                  nop
                  ori          a1, t0, 651
                  ori          ra, s4, -790
                  add          t3, s10, t5
                  ori          s0, zero, -2000
                  lui          a6, 660738
                  and          a6, s10, t0
                  srai         t5, a3, 21
                  slt          a0, t4, s3
                  slt          zero, a3, a7
                  slti         a7, gp, -660
                  sub          t6, s1, t0
                  slti         s4, tp, -1580
                  xor          s7, s4, s2
                  ori          zero, s4, 558
                  xori         t4, t4, -270
                  nop
                  xor          a7, t6, s5
                  auipc        t3, 676649
                  lui          t3, 635768
                  lui          a5, 1011245
                  nop
                  andi         gp, t5, -601
                  lui          s1, 901946
                  addi         t2, t1, -1086
                  slt          a0, a1, s4
                  or           tp, a5, t6
                  slt          s1, t4, s11
                  sll          a3, s7, s4
                  sub          s10, s5, ra
                  sub          t2, s9, gp
                  slt          t2, t5, a3
                  sll          t2, s8, t6
                  auipc        t4, 519638
                  srli         s4, a2, 16
                  slti         s0, s4, 1475
                  xor          a6, s6, t6
                  srl          gp, s1, a6
                  add          s10, t1, a6
                  sra          t6, a1, zero
                  slti         s5, s6, -1093
                  sub          a6, sp, s10
                  slli         a7, ra, 7
                  or           a2, a7, s5
                  ori          s8, s0, -1635
                  sltu         s8, a5, t6
                  xor          a0, s3, gp
                  srl          s6, s9, a0
                  or           s2, s4, s5
                  auipc        s9, 512922
                  add          zero, s6, s9
                  auipc        a7, 71552
                  xori         t6, s11, 1340
                  sub          a3, a7, t3
                  srl          s9, a3, gp
                  sltu         s9, t0, s2
                  srl          s10, a5, a1
                  add          s5, s9, a7
                  add          s0, s4, a5
                  add          a3, tp, zero
                  add          gp, t2, a5
                  slt          s4, t6, s0
                  srai         t4, t5, 3
                  lui          a4, 744869
                  and          t5, a0, a3
                  ori          a0, zero, 869
                  slt          s0, a7, a2
                  nop
                  sltu         s4, t2, t2
                  slli         t3, t0, 13
                  add          gp, t2, t3
                  sll          t3, s3, a4
                  srai         a1, s8, 13
                  sub          a4, s4, t1
                  sra          t4, a3, s0
                  ori          s7, ra, -950
                  ori          t4, t4, -902
                  auipc        a4, 731441
                  ori          a6, s3, 504
                  sra          s8, s5, t3
                  slti         a3, s0, 1394
                  srl          s10, a2, s11
                  slt          a7, a7, s5
                  slti         s11, a0, -1022
                  xor          tp, s11, t5
                  slti         s5, s11, -1785
                  slti         s10, s11, 136
                  slli         t6, a2, 8
                  sltu         a6, sp, s11
                  auipc        a6, 191069
                  or           s11, a4, t0
                  srai         t5, s11, 2
                  sra          a0, tp, a5
                  sltiu        s4, s9, 1133
                  sub          s9, a7, s8
                  add          t3, a4, t4
                  or           gp, s6, s5
                  andi         s4, t0, 545
                  add          ra, s2, s0
                  sub          a7, a3, a7
                  xor          a6, t2, gp
                  sltiu        a3, gp, 1516
                  slt          s2, s0, s5
                  slli         t3, s7, 23
                  slli         zero, s4, 3
                  ori          s7, t0, -761
                  srai         s2, t3, 1
                  srl          t6, a5, a2
                  srl          s9, s10, t5
                  auipc        t3, 706633
                  auipc        s7, 356809
                  slt          t3, zero, s11
                  addi         s4, a2, 1406
                  ori          zero, s2, -1914
                  slt          t3, ra, sp
                  srai         ra, a7, 17
                  addi         a2, t6, -1139
                  add          sp, a6, t4
                  xor          s11, s1, a6
                  srai         a7, s7, 3
                  or           zero, a6, a0
                  xor          gp, s4, s4
                  and          t4, s0, s10
                  lui          a3, 594516
                  sll          s0, a4, a2
                  lui          gp, 1014566
                  srl          gp, sp, ra
                  srli         s11, t0, 29
                  slli         sp, t5, 9
                  auipc        s2, 204988
                  auipc        s10, 628169
                  sll          t4, s2, tp
                  sltiu        tp, s4, 389
                  sll          t5, s2, t3
                  sub          s6, a2, sp
                  andi         s6, s10, 678
                  slli         s9, ra, 24
                  lui          a5, 77182
                  andi         a1, s8, 1150
                  sra          s9, a1, a4
                  nop
                  nop
                  sll          ra, s0, a3
                  slli         t2, s8, 12
                  addi         a4, a1, -2004
                  srai         s7, s9, 12
                  sltiu        s11, gp, 1519
                  slli         s2, t2, 3
                  ori          a4, gp, 1418
                  ori          t3, t6, 330
                  xor          s11, t5, s1
                  slti         s1, a7, 1356
                  or           s6, t6, a7
                  slli         a0, a3, 26
                  andi         a3, a6, 1462
                  addi         t6, s4, 1876
                  xor          t4, t5, s9
                  lui          t4, 1045165
                  srli         s4, a2, 27
                  slti         a7, s11, -843
                  xor          s0, s7, s10
                  or           a2, a4, s11
                  and          a6, t0, a3
                  sub          t3, s5, s6
                  auipc        s6, 619015
                  ori          t4, t0, -1311
                  or           t2, a3, s4
                  sra          s10, a0, s11
                  slt          s7, a5, s10
                  sltiu        a1, s5, 1335
                  sltu         s7, s2, zero
                  sltiu        a6, a6, -1880
                  or           s0, t3, s5
                  add          s11, a0, s10
                  sra          a5, s6, t6
                  xori         s4, s2, -486
                  and          a3, a1, gp
                  sub          a4, gp, s4
                  sltiu        a1, s3, 677
                  ori          tp, s1, 291
                  auipc        gp, 908025
                  lui          a1, 220733
                  slti         a2, t3, 265
                  slt          zero, t2, a7
                  or           a2, t3, sp
                  andi         sp, s9, -469
                  sra          gp, ra, ra
                  la x19, test_done
                  jalr x0, x19, 0
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
                  add x6, x5, zero
                  csrr x4, 0x300 # MSTATUS
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 31
                  bne x4, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x4, 0x341 # MEPC
                  csrr x4, 0x342 # MCAUSE
                  li x30, 0x3 # BREAKPOINT
                  beq x4, x30, ebreak_handler
                  li x30, 0x8 # ECALL_UMODE
                  beq x4, x30, ecall_handler
                  li x30, 0x9 # ECALL_SMODE
                  beq x4, x30, ecall_handler
                  li x30, 0xb # ECALL_MMODE
                  beq x4, x30, ecall_handler
                  li x30, 0x1
                  beq x4, x30, instr_fault_handler
                  li x30, 0x5
                  beq x4, x30, load_fault_handler
                  li x30, 0x7
                  beq x4, x30, store_fault_handler
                  li x30, 0xc
                  beq x4, x30, pt_fault_handler
                  li x30, 0xd
                  beq x4, x30, pt_fault_handler
                  li x30, 0xf
                  beq x4, x30, pt_fault_handler
                  li x30, 0x2 # ILLEGAL_INSTRUCTION
                  beq x4, x30, illegal_instr_handler
                  csrr x30, 0x343 # MTVAL
                  1: la x19, test_done
                  jalr x1, x19, 0

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
                  la x19, write_tohost
                  jalr x0, x19, 0

instr_fault_handler:
                  add x5, x6, zero
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
                  add x5, x6, zero
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
                  add x5, x6, zero
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
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x5, x6, zero
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
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x5, x6, zero
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
                  csrr  x4, 0x300 # MSTATUS;
                  csrr  x4, 0x304 # MIE;
                  csrr  x4, 0x344 # MIP;
                  csrrc x4, 0x344, x4 # MIP;
                  add x5, x6, zero
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
