.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x24, h0_start
jalr x0, x24, 0
h0_start:
                  li x12, 0x40000100
                  csrw 0x301, x12
kernel_sp:        
                  la x9, kernel_stack_end

trap_vec_init:    
                  la x12, mtvec_handler
                  ori x12, x12, 1
                  csrw 0x305, x12 # MTVEC

mepc_setup:       
                  la x12, init
                  csrw 0x341, x12

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x12, 0x1800
                  csrw 0x300, x12 # MSTATUS
                  mret
init:             
                  li x0, 0xe
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0x7
                  li x4, 0xf
                  li x6, 0x6245bda8
                  li x7, 0x0
                  li x8, 0xf97e3af0
                  li x10, 0x26fa7a66
                  li x11, 0x80000000
                  li x12, 0xf7b7be47
                  li x13, 0xf
                  li x14, 0xbf82c092
                  li x15, 0xf58ef9cb
                  li x16, 0x120aa280
                  li x17, 0x80000000
                  li x18, 0x0
                  li x19, 0x9025fa4b
                  li x20, 0x80000000
                  li x21, 0xf1d703ab
                  li x22, 0x2fc4a6da
                  li x23, 0x3b5471c
                  li x24, 0x4
                  li x25, 0x9
                  li x26, 0x5ec9efce
                  li x27, 0x0
                  li x28, 0x80000000
                  li x29, 0x522a128c
                  li x30, 0xa13206bc
                  li x31, 0x4
                  la x5, user_stack_end
main:             li           s4, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           a3, 0xa8e84db9
                  li           t1, 0x0
                  li           s7, 0xc33d9c01
                  li           gp, 0x80000000
                  li           a5, 0xffffffff
                  li           a1, 0xffffffff
                  li           a2, 0x0
                  li           tp, 0x0
                  li           s2, 0x0
                  add          s4, s4, gp
                  lui          a5, 37805
                  nop
                  add          t1, a3, s2
                  nop
                  auipc        a2, 427841
                  sub          tp, a2, a3
                  addi         tp, a1, 1333
                  lui          gp, 892265
                  lui          a5, 1000098
                  lui          t1, 892304
                  auipc        s2, 907693
                  auipc        a2, 626657
                  lui          a5, 764026
                  addi         a5, s2, 2026
                  addi         a1, a5, 34 #end riscv_int_numeric_corner_stream_9
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           t6, 0x80000000
                  li           a5, 0x80000000
                  li           a4, 0x2cd38dbb
                  li           s5, 0x80000000
                  li           a2, 0x80000000
                  li           t5, 0x0
                  li           a0, 0xffffffff
                  li           tp, 0xffffffff
                  li           s7, 0x80000000
                  addi         t5, s9, 1823
                  auipc        s7, 774054
                  auipc        tp, 515801
                  addi         s9, tp, 776
                  add          s7, a5, s5
                  addi         a0, a4, 605
                  auipc        s7, 682751
                  lui          a0, 904715
                  add          s7, a2, a0
                  lui          a5, 857929
                  nop
                  sub          t6, tp, tp
                  lui          t6, 154691
                  add          s9, a0, t6
                  lui          s7, 1043081
                  lui          tp, 472912
                  lui          s7, 882106
                  auipc        s7, 132587
                  addi         a2, tp, 993 #end riscv_int_numeric_corner_stream_12
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           t4, 0x6377210c
                  li           a7, 0x0
                  li           s6, 0x80000000
                  li           ra, 0xbfb20321
                  li           t5, 0xde201c29
                  li           t6, 0xffffffff
                  li           t3, 0x80000000
                  li           a2, 0x0
                  li           a6, 0x80000000
                  add          a7, t5, a6
                  sub          t3, t4, a7
                  lui          t4, 275224
                  add          s6, a6, a7
                  lui          t6, 477413
                  addi         ra, t5, 1774
                  add          ra, t3, a0
                  nop
                  sub          s6, t4, a6
                  nop
                  addi         t4, ra, 735
                  add          t3, t3, a6
                  add          a2, a7, a0
                  addi         ra, t6, 316
                  nop
                  sub          a6, a0, a0
                  sub          t6, t4, a6
                  sub          t3, a7, a2
                  lui          ra, 113456 #end riscv_int_numeric_corner_stream_2
                  li           a3, 0xffffffff #start riscv_int_numeric_corner_stream_7
                  li           t4, 0x51b3702b
                  li           a2, 0x9ac19be0
                  li           a7, 0x80000000
                  li           t5, 0x0
                  li           sp, 0xffffffff
                  li           t1, 0xffffffff
                  li           s0, 0x0
                  li           a6, 0x2fb232f9
                  li           s10, 0xffffffff
                  addi         t4, t1, -148
                  addi         t5, t1, 1485
                  addi         t5, t4, 1681
                  sub          a3, s10, t5
                  auipc        s10, 458177
                  sub          a3, s10, s10
                  add          s0, t4, t4
                  lui          a2, 965508
                  add          sp, t5, t5
                  lui          t1, 875873
                  nop
                  auipc        a6, 237621
                  addi         t1, s10, 477
                  add          a3, a7, a2
                  auipc        t4, 708604
                  auipc        t1, 5197
                  auipc        a2, 1008078
                  auipc        s0, 620637
                  auipc        t1, 463073 #end riscv_int_numeric_corner_stream_7
                  li           t4, 0x2e6a122e #start riscv_int_numeric_corner_stream_17
                  li           t3, 0xffffffff
                  li           tp, 0x80000000
                  li           t5, 0x0
                  li           s5, 0x0
                  li           s11, 0x80000000
                  li           s9, 0xffffffff
                  li           s6, 0xdbf262bf
                  li           a5, 0xffffffff
                  li           a3, 0x80000000
                  lui          s6, 590269
                  addi         s5, s5, 639
                  sub          a5, a5, s9
                  nop
                  auipc        tp, 793055
                  add          a3, t3, t5
                  auipc        tp, 411660
                  lui          s9, 309756
                  lui          t3, 843846
                  lui          s5, 728259
                  sub          t5, a3, a3
                  lui          s9, 441819
                  sub          s11, a3, a5
                  addi         s5, s11, -716
                  add          s5, t5, s6
                  auipc        s5, 179890
                  auipc        t5, 506081
                  sub          a5, t3, t3
                  sub          a3, tp, a3
                  nop
                  auipc        s9, 932686 #end riscv_int_numeric_corner_stream_17
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           s4, 0x80000000
                  li           tp, 0xcb35c9e5
                  li           t4, 0x80000000
                  li           a2, 0xaaef262a
                  li           t5, 0x60083eca
                  li           t2, 0xffffffff
                  li           a1, 0x0
                  li           s5, 0xb591089
                  li           t1, 0x0
                  auipc        a2, 101271
                  addi         a2, t1, 1160
                  addi         s4, a0, -69
                  addi         tp, t4, 1108
                  add          s4, s5, t5
                  auipc        tp, 958520
                  sub          a2, a0, t5
                  sub          t4, a1, a0
                  addi         t4, s4, -610
                  sub          a1, t5, t5
                  add          a1, t5, a0
                  lui          s5, 965651
                  sub          t2, a0, a1
                  auipc        a0, 2418
                  add          t2, a0, t5
                  sub          a2, a1, a0
                  addi         tp, s4, -285
                  add          s5, t5, a2
                  lui          tp, 120300
                  addi         t1, t5, -1184
                  lui          s4, 473110
                  addi         t1, a0, -1559
                  lui          tp, 450603
                  nop #end riscv_int_numeric_corner_stream_19
                  li           a6, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           t4, 0x5e29f495
                  li           a1, 0x0
                  li           s11, 0x49ddbd35
                  li           t5, 0x80000000
                  li           t3, 0x80000000
                  li           t6, 0x80000000
                  li           s5, 0x80000000
                  li           s3, 0x80000000
                  li           t1, 0xd94eea0b
                  nop
                  lui          t4, 869773
                  nop
                  lui          t1, 344348
                  add          s5, t4, s11
                  addi         s5, t3, -1477
                  nop
                  auipc        t3, 1013843
                  addi         s5, a1, -1331
                  add          t3, t6, s11
                  addi         s5, t6, 66
                  addi         s11, t4, -417
                  auipc        t1, 988293
                  addi         s11, t5, -1048
                  lui          t1, 700815
                  auipc        t6, 960901
                  addi         s11, t3, 1772
                  auipc        s11, 755808
                  add          t4, s5, s5
                  nop
                  sub          t6, s3, s3
                  lui          t5, 140997
                  sub          t6, s11, s11
                  lui          t4, 789702
                  nop
                  addi         t4, s11, 1991
                  add          s5, s11, t1
                  addi         t5, a1, -916 #end riscv_int_numeric_corner_stream_3
                  andi         t6, t0, 1092
                  lui          s2, 773897
                  slt          a0, s9, s2
                  ori          s0, ra, -865
                  addi         a5, t0, 868
                  or           t2, zero, t0
                  andi         s9, t0, 1327
                  sltiu        s10, s5, -1888
                  and          s5, a5, s7
                  addi         a1, s0, -1869
                  andi         s2, ra, -418
                  sltu         gp, ra, s2
                  srl          t6, t1, s9
                  nop
                  srl          sp, s9, t5
                  nop
                  xor          s5, s7, a4
                  xori         s5, zero, -690
                  sra          a6, s8, s4
                  srli         a6, s3, 26
                  slt          zero, t1, a4
                  srai         s9, a1, 19
                  add          a3, t5, s4
                  xori         s10, s1, -1484
                  add          a0, a1, a6
                  add          t6, s10, s7
                  sra          s4, t3, a2
                  sub          gp, t4, t4
                  sll          s11, t4, a6
                  xori         gp, a1, -1909
                  slli         gp, s3, 11
                  srl          t2, s5, tp
                  nop
                  andi         s11, a0, 756
                  srli         s11, s4, 17
                  sltu         a1, a6, s5
                  sltu         s7, ra, s9
                  auipc        s9, 525212
                  lui          ra, 429998
                  addi         sp, s10, 851
                  andi         a2, t3, -2034
                  sltu         t5, t4, s10
                  sll          sp, s2, a2
                  nop
                  addi         gp, t4, -483
                  srli         s6, s11, 27
                  sub          tp, zero, s4
                  addi         a1, t0, -1284
                  sra          sp, s9, a4
                  slt          s2, t5, gp
                  and          t5, t0, t3
                  srl          s9, ra, t3
                  andi         tp, s4, 598
                  sltu         t6, t3, a5
                  nop
                  sll          s5, s10, s2
                  auipc        s6, 858589
                  xori         a0, s4, -1357
                  auipc        a2, 753912
                  lui          a2, 660091
                  sll          ra, a7, t3
                  xori         a6, s0, 1999
                  sub          s0, tp, sp
                  lui          a0, 346358
                  and          t1, a4, s5
                  andi         s2, s6, -1129
                  sll          s5, t5, t2
                  srai         t3, s9, 23
                  and          a6, t4, ra
                  xor          s0, t4, s6
                  xori         gp, s0, -245
                  and          a6, s10, s6
                  sltiu        s0, sp, -2015
                  nop
                  srai         ra, gp, 9
                  lui          t1, 1025483
                  andi         sp, tp, -1465
                  sltiu        t5, a1, -1800
                  lui          s7, 947297
                  lui          s5, 178258
                  sra          a0, s4, s2
                  addi         t1, a7, -2010
                  sub          t2, s4, a7
                  andi         s7, gp, 1954
                  lui          tp, 540764
                  slti         a0, s8, 1475
                  sra          s7, s3, s5
                  xori         t6, sp, 2013
                  andi         sp, s2, 959
                  srai         a5, s11, 12
                  sub          ra, a1, s7
                  add          t5, s9, s9
                  ori          gp, s9, 1681
                  and          a1, a6, t6
                  srl          t5, s1, a1
                  andi         s11, s0, 1606
                  slti         s6, s8, -529
                  srai         s0, s3, 26
                  srli         t2, a3, 16
                  srai         tp, a1, 27
                  slli         s7, a1, 31
                  ori          t6, a3, 36
                  auipc        s0, 773397
                  xor          ra, a1, s3
                  ori          s7, s3, 1363
                  xori         s6, t1, 271
                  or           s3, s3, t4
                  nop
                  auipc        s5, 551052
                  xori         a2, tp, 860
                  and          a4, s3, s6
                  andi         a3, s7, -849
                  sltu         s0, s1, a7
                  sltiu        s5, t6, -412
                  xori         s11, t4, 1990
                  andi         ra, t6, 128
                  and          a5, a7, s5
                  slli         a0, t4, 18
                  nop
                  addi         gp, a3, -118
                  add          s0, s7, t6
                  slli         gp, t1, 4
                  sll          t1, s1, s2
                  andi         s9, a0, 1616
                  sltu         a1, s11, t1
                  ori          s0, a1, -1442
                  srl          s4, t3, s11
                  xori         s7, t0, 1624
                  xor          a7, s6, a5
                  srli         s7, zero, 0
                  sll          a5, a7, t5
                  sra          s0, tp, s5
                  nop
                  and          gp, tp, s1
                  sra          a5, t0, ra
                  sltiu        tp, a5, -922
                  sltu         t3, s10, zero
                  or           a0, a0, s0
                  add          s3, t4, t3
                  andi         s5, ra, -485
                  srai         s2, a4, 17
                  slti         s2, a6, -1530
                  and          gp, a7, s1
                  slli         s7, sp, 26
                  slt          sp, s5, s1
                  xori         a1, s2, -700
                  slt          tp, s10, a7
                  ori          ra, a0, -770
                  sltu         s11, s5, s6
                  srl          zero, t3, gp
                  sltiu        s3, t1, 578
                  sltu         t5, s10, s4
                  slti         a4, s5, 1382
                  xor          t2, s9, tp
                  sll          a6, t6, s7
                  xori         a3, a5, -1715
                  add          s10, a5, s4
                  and          s4, t1, s4
                  sltu         a0, s1, s3
                  nop
                  sltiu        t3, s0, -988
                  slli         t1, s8, 21
                  andi         s7, s5, 96
                  auipc        a0, 353790
                  xor          t4, t5, s11
                  or           a2, sp, a2
                  sub          tp, s2, a4
                  ori          a0, s3, -1995
                  and          t1, s6, s9
                  sub          s3, s9, zero
                  srli         s4, zero, 20
                  nop
                  nop
                  addi         s10, a2, -1372
                  xori         a2, s10, 954
                  slli         s4, t0, 0
                  auipc        s10, 29622
                  slt          t4, t0, a0
                  slti         t5, zero, 1185
                  sra          a4, sp, s2
                  nop
                  or           t1, s3, ra
                  lui          ra, 714728
                  slli         t2, s7, 27
                  auipc        ra, 502568
                  ori          s2, gp, -1733
                  sra          t3, t3, s11
                  sltiu        s4, s1, 1299
                  slt          a4, t3, s1
                  slti         t3, t3, 1145
                  xori         sp, a0, -757
                  slt          s5, a4, a1
                  lui          s5, 744179
                  sra          s5, a6, s1
                  sll          a5, t1, t5
                  xor          tp, s8, ra
                  add          a3, a6, s2
                  lui          s0, 11339
                  sra          s10, s6, t2
                  lui          a2, 605170
                  slt          a0, s3, a1
                  srai         tp, s0, 24
                  srl          ra, s7, a6
                  or           a2, ra, s11
                  andi         tp, a5, -380
                  srl          t5, t5, a3
                  or           sp, a0, a0
                  auipc        a2, 319878
                  slli         s2, a5, 19
                  or           s4, t5, a4
                  add          s9, s7, t3
                  nop
                  slli         sp, s9, 18
                  xori         s7, t5, 643
                  sub          s6, t1, t5
                  and          zero, s0, a0
                  srli         s10, a3, 2
                  auipc        a1, 568444
                  sub          t3, a0, a4
                  srai         s2, t6, 9
                  sltiu        s9, s2, 889
                  add          t5, t2, s2
                  sltu         s11, a7, t2
                  lui          s4, 938432
                  srai         a6, t1, 25
                  slt          a4, s8, a0
                  or           t4, s3, s6
                  and          a6, t0, a2
                  xori         t1, tp, -653
                  or           s0, s2, s5
                  slt          s10, t2, a4
                  sltu         s11, a1, t5
                  lui          t6, 296415
                  sll          ra, t2, s6
                  sltu         zero, a4, s2
                  ori          s6, tp, 1017
                  andi         a0, a1, -572
                  and          s4, a5, s9
                  ori          s9, t0, 387
                  auipc        s5, 520366
                  sltu         s5, a4, t2
                  lui          t4, 849312
                  sub          s7, tp, a3
                  lui          zero, 1032739
                  sltiu        t5, t0, 894
                  ori          ra, a1, 1172
                  srai         sp, s9, 18
                  xori         ra, s3, 843
                  sltu         a6, a5, t2
                  add          a6, ra, sp
                  sll          s5, t1, t2
                  xor          a6, s1, ra
                  sltu         s6, a2, s1
                  srai         t3, zero, 16
                  and          a2, s0, ra
                  nop
                  slti         gp, a0, -81
                  sll          a7, s2, a4
                  xori         ra, s7, 1250
                  sltiu        ra, zero, 1998
                  sltiu        gp, s7, -1415
                  xor          a7, t5, a7
                  sub          s0, s5, s4
                  sub          a7, sp, a2
                  ori          a2, a2, 1947
                  xori         s11, gp, 41
                  xori         t6, s5, -105
                  auipc        s9, 6625
                  srli         t1, a0, 16
                  add          s11, s11, zero
                  sltiu        tp, a4, 962
                  slti         s5, s8, -434
                  slt          a0, t6, t6
                  sra          s6, a5, s9
                  andi         zero, s6, 810
                  xori         a3, s11, 290
                  xor          s9, t6, t6
                  sub          s11, t3, t1
                  srai         s10, s9, 26
                  srl          a3, a5, t5
                  xori         s3, s6, 1923
                  srai         gp, s10, 18
                  sra          a0, ra, a0
                  xor          s2, t3, a7
                  sltiu        s2, a6, 40
                  or           s3, a7, a5
                  lui          s6, 629424
                  xor          zero, s11, a5
                  slt          sp, gp, s9
                  ori          s5, s7, 248
                  sll          t4, gp, a0
                  slli         a5, s7, 29
                  slti         a7, a0, -1330
                  slt          s3, a1, a2
                  slli         s0, zero, 24
                  slli         ra, s1, 11
                  sub          a4, a2, s8
                  sub          a2, t2, s2
                  and          t1, zero, s10
                  ori          tp, t1, 1167
                  sub          s9, t6, a4
                  sra          s2, t3, s2
                  srl          s11, s11, a3
                  addi         s5, t6, 1874
                  sub          a7, a1, s7
                  slti         zero, a5, 55
                  or           s2, t2, s9
                  addi         sp, a6, -1933
                  ori          s11, a5, -1717
                  srai         gp, t6, 22
                  and          s9, s8, t6
                  sltiu        t4, s6, -376
                  or           a6, a6, s7
                  ori          s2, a6, -1606
                  sll          s3, s10, s2
                  ori          s4, a7, -944
                  auipc        a6, 749479
                  sra          t4, s5, s1
                  lui          t1, 751599
                  sltiu        a6, zero, -249
                  slt          t6, s4, s2
                  sub          s5, gp, gp
                  xori         s4, t0, -446
                  srai         t3, a7, 24
                  srai         a7, s3, 14
                  sll          s10, t0, a7
                  lui          zero, 433757
                  srai         t3, s6, 9
                  auipc        t5, 517104
                  ori          a6, s4, -827
                  slt          s9, s9, a3
                  andi         gp, a2, 300
                  sltiu        a6, t0, -1941
                  auipc        s2, 197985
                  sltu         s3, t3, s10
                  nop
                  srai         t2, ra, 18
                  add          a1, s9, t3
                  xor          s6, s5, ra
                  sltiu        s4, a7, -1638
                  ori          s6, s2, -2045
                  slti         gp, t3, 631
                  and          a5, a0, a3
                  and          a5, a4, s3
                  slti         gp, a7, 1879
                  sra          a5, a2, tp
                  sltiu        a4, s5, 1292
                  ori          t5, t0, 1669
                  srl          tp, s1, a1
                  andi         a6, sp, -1024
                  or           a5, s9, s2
                  slli         tp, t1, 6
                  slli         a5, a3, 14
                  auipc        s0, 872460
                  sltu         a3, t5, t0
                  addi         a6, tp, -102
                  srl          t5, s5, s2
                  xori         s7, gp, 176
                  srli         a1, a7, 20
                  srl          a6, s9, t3
                  and          s0, zero, t2
                  nop
                  lui          t1, 35025
                  srl          t3, t1, t2
                  andi         a2, s0, -97
                  ori          t6, a3, 1582
                  lui          ra, 970722
                  or           s9, t0, s6
                  sltu         s10, t5, a5
                  lui          sp, 500271
                  auipc        s9, 818126
                  addi         a5, t0, 1525
                  sltiu        s11, a5, -317
                  slli         a7, t4, 24
                  sra          sp, sp, tp
                  add          s0, s10, a2
                  sll          s3, a2, s4
                  sll          t6, zero, a1
                  andi         s5, t1, -1583
                  nop
                  srl          gp, s1, gp
                  andi         a4, s7, -479
                  sub          sp, t2, s10
                  auipc        zero, 716117
                  lui          a1, 238078
                  srli         sp, t3, 4
                  and          s11, s0, sp
                  ori          s7, s11, 1170
                  xori         a6, a6, -2036
                  sll          t2, t6, s6
                  ori          s0, sp, 1393
                  xor          a7, a5, a7
                  andi         s10, t6, -1036
                  auipc        a0, 803268
                  addi         s6, s3, 1607
                  andi         s3, t3, -3
                  srai         t1, ra, 16
                  xor          tp, a1, s4
                  xor          a5, a6, s8
                  sll          t6, s1, sp
                  add          a1, s11, s3
                  addi         s3, s5, -1685
                  srli         a4, t3, 23
                  or           tp, t3, zero
                  nop
                  slti         a7, t2, 1860
                  xori         sp, s9, 480
                  slt          t3, a7, a6
                  srli         a3, zero, 6
                  add          tp, s3, zero
                  addi         t1, a6, -161
                  xor          sp, zero, t6
                  xori         s3, a5, 771
                  srai         a1, zero, 3
                  ori          s10, ra, -529
                  xor          a1, a5, s4
                  srl          a5, s3, s3
                  slt          gp, a5, s6
                  auipc        s2, 627894
                  lui          t6, 991595
                  andi         s2, t5, -153
                  sub          s5, a1, a3
                  sll          t4, t1, a0
                  slli         t4, a6, 2
                  xor          gp, a0, t1
                  srl          t5, a4, s5
                  sltiu        s5, t6, 1345
                  xori         s5, t3, 280
                  ori          ra, s1, 1675
                  sltiu        a3, zero, -1493
                  addi         s7, a2, 390
                  sub          t3, s4, s6
                  ori          a0, s8, 1644
                  ori          gp, t4, -872
                  slt          gp, s5, a3
                  sll          s3, tp, t0
                  sltu         ra, t2, s5
                  srl          a6, a5, t1
                  slli         s10, gp, 21
                  or           t6, t2, t1
                  sra          tp, s10, s11
                  nop
                  srai         a2, s2, 17
                  auipc        s5, 1021855
                  lui          a0, 266335
                  ori          s5, a4, 365
                  nop
                  auipc        s3, 650084
                  sll          a6, s3, s2
                  andi         a6, a3, 1915
                  lui          s9, 219457
                  slti         s9, s10, 354
                  and          s4, s1, a1
                  sltu         zero, t2, t4
                  nop
                  nop
                  srli         s9, gp, 15
                  srai         s5, t6, 16
                  xori         sp, s6, 301
                  addi         zero, gp, 995
                  srli         s2, t3, 31
                  xori         s5, s5, 196
                  sll          t3, s11, s5
                  addi         ra, t0, -341
                  sra          s7, t4, a2
                  sll          s11, t5, t2
                  or           a4, s3, s3
                  sub          a1, t6, gp
                  ori          a6, t6, 1425
                  sra          s10, t2, s9
                  and          t3, a2, s5
                  nop
                  nop
                  xori         t1, tp, -1576
                  sub          s7, s8, s6
                  srai         s9, s8, 30
                  slti         s9, a7, 454
                  and          a7, a5, tp
                  nop
                  xor          tp, s2, t3
                  auipc        s5, 1003462
                  auipc        s3, 507564
                  andi         s2, t3, 1229
                  nop
                  srai         a3, a7, 5
                  sltiu        s5, s4, 472
                  and          zero, t1, gp
                  srli         a2, s2, 17
                  sltu         a3, s0, zero
                  addi         a6, t6, -984
                  slli         s5, t3, 16
                  sll          s11, a6, ra
                  sll          s2, s6, a5
                  nop
                  nop
                  add          a0, a4, t2
                  sltu         s4, s10, t1
                  nop
                  srl          a7, s9, a0
                  add          ra, s2, s2
                  srl          t5, ra, t3
                  and          s5, gp, tp
                  or           zero, a4, s11
                  sltiu        s7, t3, -1546
                  srli         a4, t0, 1
                  slti         a4, s9, -1024
                  xor          sp, t1, a6
                  lui          a1, 396794
                  srai         t3, s5, 8
                  srli         s6, t5, 2
                  sra          t2, a3, s3
                  xor          a4, a7, s3
                  nop
                  addi         a5, a0, -1489
                  addi         zero, s9, -293
                  xori         a2, a7, -1296
                  sub          a6, zero, t3
                  or           a0, t1, t0
                  and          s9, s2, s4
                  or           ra, s10, a1
                  srai         s0, s10, 2
                  add          zero, t5, s2
                  slti         s5, a6, -302
                  or           t5, s8, s4
                  sub          t6, s2, s3
                  nop
                  nop
                  srli         a7, t2, 17
                  sub          s11, s1, s3
                  srli         s11, a1, 25
                  andi         a4, t2, -417
                  sub          a5, t2, a3
                  addi         ra, zero, 593
                  or           tp, t0, s10
                  slti         s3, t3, -71
                  add          a6, s6, a0
                  auipc        ra, 785035
                  srli         gp, a6, 0
                  sra          a2, t6, a5
                  addi         s3, a1, -1913
                  slt          a4, t3, t1
                  srl          a3, t6, s6
                  addi         a5, a6, -2027
                  ori          s5, a7, -47
                  andi         a4, t2, 274
                  addi         zero, a7, -813
                  sub          ra, t2, a0
                  sra          gp, t3, s11
                  slt          gp, s4, s5
                  srl          a4, s2, t0
                  srl          t6, tp, s5
                  sltiu        a2, s5, 341
                  or           zero, a1, s7
                  xor          s3, s8, t1
                  sltiu        a1, s5, -1650
                  srl          t1, ra, a7
                  xori         t6, s10, 263
                  and          t2, s7, zero
                  ori          s11, s9, 755
                  slli         s7, t2, 29
                  slti         a6, t0, -1006
                  nop
                  ori          s3, t4, -609
                  srli         a0, ra, 14
                  srai         a6, t6, 22
                  auipc        a2, 314304
                  add          s7, s3, s9
                  srai         a3, t5, 28
                  srl          tp, s8, zero
                  slli         a1, s11, 0
                  slt          a6, ra, s11
                  xor          zero, ra, zero
                  nop
                  lui          sp, 199258
                  addi         a4, t5, -533
                  slli         sp, s5, 12
                  sub          ra, a0, t4
                  srai         s11, t0, 27
                  srli         a0, a3, 4
                  srai         a0, t0, 26
                  or           tp, t0, a7
                  nop
                  sra          a4, t5, t6
                  sltiu        tp, tp, 1149
                  srai         sp, t4, 20
                  ori          t2, s9, 246
                  xori         s10, s8, -1019
                  sub          tp, tp, ra
                  and          s9, s1, s2
                  srl          ra, s11, t5
                  or           s11, t5, t1
                  xori         a6, a2, 202
                  srl          tp, a3, s5
                  xori         gp, t4, -766
                  sra          s2, sp, t5
                  srl          s4, s11, s0
                  lui          s11, 313076
                  slli         t4, a4, 20
                  sll          a0, a2, tp
                  xor          zero, a2, s3
                  auipc        t4, 540388
                  slt          s9, s3, a3
                  xori         t3, t3, -66
                  lui          s0, 860303
                  slti         a6, a1, 467
                  addi         gp, s4, -1291
                  sll          s11, s8, s1
                  ori          t1, t5, -1192
                  auipc        a6, 231537
                  sltiu        t5, s5, 347
                  srli         t2, zero, 8
                  add          ra, s9, s9
                  nop
                  addi         t6, a7, 783
                  srli         a6, s3, 4
                  nop
                  srai         t6, t0, 0
                  and          s2, t1, s6
                  addi         a2, a3, 59
                  slt          a5, s2, a1
                  slti         ra, s0, -647
                  add          ra, a6, a1
                  sub          t5, t0, gp
                  addi         t6, ra, 1896
                  auipc        s11, 429404
                  slt          a7, a3, s7
                  slti         tp, s0, -686
                  auipc        t4, 370315
                  srli         t1, zero, 22
                  add          s11, s6, a1
                  srl          a3, a2, t5
                  andi         t3, s4, 1265
                  slli         tp, s10, 1
                  andi         a1, s1, -1099
                  and          s2, s0, s2
                  and          a7, t0, s10
                  slli         s9, t0, 6
                  slli         t4, t1, 21
                  auipc        t3, 834319
                  and          s5, s7, s5
                  xori         t6, s9, 1517
                  sltu         a2, s8, s6
                  andi         s0, a4, -1214
                  slt          a0, t3, t3
                  srl          tp, s0, a2
                  addi         s7, s9, -1957
                  sltiu        a0, s5, 1644
                  auipc        s6, 822675
                  srl          gp, sp, t3
                  slti         zero, t0, 382
                  sltiu        s3, s9, -1589
                  or           s5, a3, sp
                  srl          a5, a0, s8
                  sll          s10, s1, t0
                  srl          t6, ra, t5
                  sub          s2, ra, t4
                  sltu         s11, a0, t2
                  srl          a0, t0, s3
                  auipc        s5, 89525
                  auipc        s9, 289248
                  srl          t4, t2, s0
                  xor          s3, gp, s10
                  xori         s5, s4, -826
                  addi         tp, s0, -1330
                  nop
                  srli         t2, s2, 10
                  and          a7, s7, a0
                  or           s7, t1, s5
                  andi         t2, a2, 1410
                  sll          s11, a0, s6
                  xor          t6, zero, a0
                  lui          s7, 947761
                  and          a7, s10, t4
                  sub          t1, t2, t4
                  sltiu        s7, s10, -576
                  slti         a3, s7, -1110
                  andi         s3, t0, 1046
                  nop
                  sub          s4, a1, s2
                  srai         a7, s9, 23
                  sltiu        tp, t1, 1768
                  sub          s2, t1, t5
                  sra          s5, a3, a4
                  add          a4, a0, a4
                  slli         s6, s11, 9
                  slti         a1, s6, 1123
                  sll          a1, ra, a0
                  slli         t2, ra, 14
                  add          s10, t0, s8
                  sub          zero, s10, a0
                  sra          s7, s10, t2
                  sltiu        s4, s11, -562
                  xori         s0, tp, 1874
                  sltiu        a4, t2, 370
                  auipc        s2, 172247
                  xori         s5, s6, 1474
                  sra          t5, t0, t0
                  sltu         a1, a4, t3
                  sltu         t1, t6, t5
                  srli         a3, t3, 2
                  lui          t1, 399324
                  xori         s7, a6, 517
                  auipc        a1, 1009837
                  slli         a6, t1, 27
                  srl          sp, t4, s11
                  and          t4, gp, a2
                  ori          a4, s8, -348
                  sltiu        gp, s11, 652
                  xori         s2, t0, -1365
                  nop
                  or           a3, s11, t5
                  lui          a1, 75561
                  sub          s10, t5, ra
                  xori         s6, s3, -1547
                  sltu         s2, s5, a3
                  sltiu        s7, tp, 743
                  srl          s5, a1, a0
                  andi         s4, t1, 757
                  addi         gp, a6, 1767
                  auipc        t4, 967289
                  or           t2, s7, tp
                  or           s6, s3, t5
                  andi         a2, s2, -837
                  nop
                  sll          s11, ra, t3
                  slli         tp, t0, 4
                  ori          s2, s4, 147
                  addi         ra, a4, 383
                  xori         s2, t3, 733
                  srl          s9, a6, s10
                  lui          a7, 296740
                  slti         t5, gp, -1045
                  addi         tp, gp, -247
                  and          tp, s6, a4
                  srl          t2, s6, s7
                  srl          s0, a0, a2
                  sltiu        s10, t2, -1684
                  slti         s7, a1, -1036
                  andi         sp, s0, 222
                  sub          zero, s11, s9
                  xori         s3, s0, 317
                  nop
                  slli         s2, zero, 26
                  or           t6, a5, a1
                  srl          s0, a3, s4
                  slli         t4, s5, 1
                  xor          t5, t1, s1
                  addi         a7, t1, 1920
                  xor          zero, s11, a3
                  auipc        a3, 165372
                  slt          s3, a1, a2
                  add          s11, ra, a2
                  sltiu        s3, a4, 1830
                  and          gp, s2, a6
                  sll          t4, s7, s8
                  slti         t5, t5, -683
                  sub          a4, t3, t2
                  andi         a5, ra, -263
                  ori          zero, a6, 1613
                  slti         t3, t3, -1578
                  addi         t5, t4, 1967
                  or           s10, s6, tp
                  andi         t4, t5, 59
                  nop
                  slli         gp, a0, 14
                  sltiu        sp, s3, 420
                  nop
                  ori          ra, a7, 1608
                  srai         a0, s0, 5
                  srl          a6, a0, t5
                  sra          t5, a4, s5
                  add          a1, s8, s1
                  lui          a4, 920007
                  or           a2, s4, t2
                  srl          t1, a3, tp
                  slti         s7, a3, 633
                  andi         t3, t0, -786
                  sub          t6, ra, t6
                  add          s9, a0, a0
                  srl          t6, sp, t4
                  or           s6, t2, t0
                  andi         t6, gp, -1101
                  sub          zero, s2, a0
                  xori         a5, s5, -1048
                  xor          a7, t6, s3
                  add          t6, s5, a7
                  slt          a5, s6, s0
                  slti         t1, a7, 1235
                  lui          s11, 31958
                  add          a2, t4, t2
                  ori          a4, a0, -808
                  slli         t4, a4, 29
                  addi         t2, t4, 1541
                  ori          a2, t4, 290
                  xor          a6, ra, tp
                  slt          t4, t3, t3
                  sltu         a0, s3, s8
                  and          s10, t4, a7
                  sra          s9, s6, a3
                  sltiu        t2, s10, 1620
                  addi         a4, a4, 1038
                  srai         a3, s4, 16
                  addi         t1, s9, 560
                  slt          s6, s7, t5
                  or           s0, ra, s6
                  sltu         a2, a1, s10
                  srli         gp, a6, 18
                  sra          t3, s0, t3
                  auipc        t4, 805051
                  sltiu        a1, s3, 1568
                  andi         s5, t1, -119
                  ori          ra, t5, -117
                  xor          a2, a1, t6
                  add          s4, t4, t5
                  slt          s5, s3, t0
                  srai         s4, t5, 13
                  xori         s2, t4, 563
                  xor          a0, a2, s5
                  ori          a4, s4, -1765
                  or           s2, a2, ra
                  auipc        s10, 1029286
                  srai         t5, t6, 12
                  sltu         a4, a7, t6
                  addi         s9, s2, 3
                  xori         gp, sp, 54
                  sltiu        zero, a7, -497
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           t4, 0x80000000
                  li           a5, 0x0
                  li           t1, 0x80000000
                  li           t6, 0x0
                  li           t5, 0x0
                  li           t3, 0xd6962a59
                  li           s7, 0xffffffff
                  li           s10, 0x8a24477a
                  li           gp, 0x0
                  auipc        t3, 44737
                  add          s10, t4, s9
                  nop
                  lui          gp, 763250
                  addi         s10, a5, -1032
                  addi         gp, gp, -1903
                  auipc        s9, 890552
                  addi         t5, s9, 856
                  nop
                  lui          s9, 312533
                  addi         t4, t1, 465
                  add          t3, t5, t5
                  add          t4, t1, t4
                  addi         t3, t3, 1570
                  nop
                  auipc        t3, 945540
                  lui          t5, 275027
                  auipc        t5, 371648
                  sub          gp, s9, s9
                  auipc        a5, 566367
                  lui          gp, 1035409
                  auipc        t4, 163754 #end riscv_int_numeric_corner_stream_13
                  nop
                  lui          a5, 227752
                  andi         t6, zero, -56
                  sub          zero, s11, s9
                  auipc        zero, 51650
                  or           s11, a2, t3
                  sltiu        tp, t2, -185
                  sra          t4, t6, t2
                  slli         a7, t3, 11
                  nop
                  sll          s6, a5, t1
                  sub          zero, s8, a1
                  sltu         sp, s6, t5
                  ori          zero, s7, 447
                  xori         t2, sp, 482
                  addi         s2, t1, -479
                  srai         t4, a3, 24
                  addi         s2, s7, -1982
                  nop
                  xor          ra, s9, sp
                  sltiu        s10, t2, 1384
                  srli         s7, a4, 17
                  sltiu        t1, s10, 1463
                  or           s9, a3, s4
                  sltu         a6, a6, t6
                  or           zero, s7, s7
                  slt          zero, a1, s11
                  srl          s10, s9, t5
                  ori          a1, zero, -1770
                  nop
                  lui          a6, 868947
                  add          a6, s5, s7
                  sub          t3, t0, s7
                  sltiu        a0, s4, 1104
                  andi         t4, s8, -1529
                  addi         a4, sp, -249
                  or           t4, a6, t2
                  sltu         a0, t0, tp
                  slti         t3, t2, 1146
                  srl          s3, a6, a1
                  xori         s10, s10, 946
                  auipc        tp, 295163
                  sub          ra, t0, s8
                  and          a4, a6, t6
                  xor          s6, s8, a0
                  auipc        s10, 199242
                  add          a5, a1, a5
                  sll          t3, gp, s4
                  or           s6, s3, s11
                  lui          tp, 147034
                  xori         t6, a6, -1882
                  sra          t2, a2, s10
                  srai         a6, a4, 20
                  addi         a3, t2, -1660
                  lui          t1, 613774
                  add          ra, t6, s8
                  slti         a3, s7, -1321
                  sra          t2, tp, s6
                  sra          s9, a2, t3
                  srl          s3, s2, t5
                  and          s9, zero, t0
                  addi         s0, a4, 757
                  auipc        ra, 62081
                  srli         a2, a6, 23
                  sll          s5, a2, t3
                  slti         a5, sp, 1125
                  and          gp, tp, ra
                  slt          s3, gp, sp
                  ori          gp, s1, -512
                  slli         s2, tp, 17
                  slti         a4, s6, 977
                  addi         a1, a7, 1665
                  sltu         a5, s11, t5
                  sub          a7, gp, a2
                  sltiu        a7, zero, 1185
                  srli         s6, s11, 28
                  and          s2, t0, t3
                  sltu         t4, s6, a1
                  add          a3, s3, t1
                  xor          s9, t4, ra
                  srai         ra, s7, 15
                  xori         a5, t0, 27
                  add          s6, t4, zero
                  sra          a4, a5, t2
                  and          s10, a7, t2
                  addi         s4, zero, -667
                  xori         s7, t3, 216
                  addi         s3, t2, 352
                  sra          a6, s9, s0
                  andi         gp, s7, -1764
                  srl          a0, a4, s7
                  srai         a4, s7, 7
                  xori         t3, s1, -1694
                  slti         s10, zero, 300
                  nop
                  addi         t2, t2, 1239
                  addi         a0, s3, -387
                  auipc        t5, 1047356
                  xor          a2, a2, s4
                  add          tp, sp, s3
                  srli         a2, s3, 13
                  add          t6, t0, t3
                  or           ra, s2, t1
                  sltiu        t5, s4, 1762
                  xor          a3, t1, s7
                  xor          s10, zero, s0
                  slti         a2, a6, -44
                  sltiu        s6, t1, 214
                  srai         a7, t2, 29
                  sltu         t2, s11, s7
                  sub          tp, sp, zero
                  sltu         a5, a0, t1
                  and          a1, tp, s3
                  sub          s4, t5, t4
                  slt          t6, sp, tp
                  slti         s6, gp, -1766
                  andi         a0, tp, -435
                  xori         s3, t4, 1898
                  add          s3, s0, s7
                  xor          a3, zero, a4
                  andi         s4, a7, -1034
                  srl          a3, t3, a3
                  xori         a2, a5, -413
                  nop
                  sra          a1, t6, a0
                  addi         t6, s1, 926
                  and          ra, s10, s0
                  or           a4, a4, zero
                  or           gp, t4, a2
                  sll          s10, a2, t6
                  sltiu        s3, t0, 1680
                  slti         t2, t6, 153
                  xori         s2, zero, 1220
                  slti         t1, ra, -308
                  sltiu        t5, t1, 871
                  addi         a0, s3, -693
                  srai         a4, s6, 7
                  slti         s3, ra, -1974
                  auipc        a6, 88431
                  sra          ra, zero, s5
                  or           a4, ra, ra
                  andi         t4, t3, -1634
                  or           a3, t6, s5
                  ori          s5, a7, -1125
                  lui          t3, 378272
                  srli         t3, s6, 27
                  auipc        s6, 702951
                  slt          s7, t3, s3
                  sll          s7, a7, a4
                  addi         s0, tp, -1519
                  xor          a7, t2, s10
                  sra          t5, a5, sp
                  add          s5, t4, s1
                  xor          tp, gp, a1
                  sltiu        gp, a7, 56
                  andi         t1, a3, 276
                  xor          a7, t0, ra
                  and          s6, a3, tp
                  sra          a7, t5, a3
                  xor          s6, a7, a7
                  sltu         ra, a2, a7
                  srl          ra, a1, sp
                  xor          s5, a5, s2
                  and          t6, t2, t5
                  xori         s4, s1, 552
                  xor          ra, s1, s0
                  andi         t6, s5, -161
                  addi         a7, t2, -1360
                  srl          t1, a2, t5
                  ori          a0, t0, 515
                  xori         s0, t1, -314
                  slt          tp, gp, t1
                  slli         s2, t4, 5
                  xor          a2, a2, t4
                  andi         t6, s10, -137
                  slli         a4, s7, 25
                  srai         s4, t0, 14
                  or           sp, a0, a3
                  slti         s5, ra, 539
                  xori         t5, t0, 1172
                  sltu         t4, s0, sp
                  andi         s3, t6, -667
                  slli         a4, t4, 6
                  or           a2, a1, t2
                  sltu         a7, sp, t4
                  slt          t5, s5, a2
                  srl          zero, t4, t2
                  andi         t1, a0, -1621
                  andi         t3, s5, -1589
                  sltu         s5, zero, s3
                  ori          a5, s6, 154
                  and          t6, t6, t6
                  srl          s10, tp, a1
                  auipc        s3, 871748
                  addi         s6, zero, 323
                  ori          a1, a3, -635
                  sub          a4, s5, s5
                  slti         t2, s3, 1021
                  srl          tp, s2, s8
                  slli         s7, s8, 27
                  add          t1, s8, t6
                  nop
                  srai         a7, ra, 4
                  sra          a7, a4, zero
                  ori          gp, s7, 559
                  and          t4, ra, t0
                  slti         a4, t2, -1377
                  andi         a4, a3, 1934
                  addi         zero, tp, 1804
                  sub          t6, gp, s2
                  sub          sp, sp, a2
                  lui          s3, 664776
                  srai         s5, s11, 14
                  srai         t3, t0, 31
                  xor          s0, t1, a0
                  sub          s3, t1, s11
                  lui          ra, 251449
                  or           t5, tp, s0
                  slli         s6, t4, 15
                  or           t2, t5, s2
                  sltiu        s9, s3, -1351
                  srai         s9, zero, 24
                  xori         a2, a5, -297
                  srl          a3, tp, a7
                  xori         ra, a2, -937
                  ori          s11, s2, 193
                  lui          a3, 507406
                  and          s6, s1, a2
                  sltiu        a2, t3, 1222
                  andi         s3, t5, 2004
                  sltu         gp, s8, a3
                  slt          s5, zero, t2
                  slli         t5, t6, 10
                  sltu         a3, zero, t5
                  andi         t3, zero, 223
                  and          a6, a3, sp
                  srai         tp, s8, 31
                  srai         t3, a1, 22
                  addi         s4, s9, -819
                  sll          t3, s1, t5
                  andi         a7, a6, 56
                  and          a3, zero, s9
                  srli         s3, s5, 12
                  ori          t4, a7, -1929
                  auipc        a2, 554709
                  andi         sp, a1, 278
                  srl          a0, s9, s10
                  addi         s9, a2, -1138
                  xor          a2, t0, zero
                  slli         s11, s5, 26
                  add          a2, t5, a1
                  lui          s9, 466427
                  add          zero, a3, s0
                  slt          s7, a4, t0
                  srl          a7, gp, s10
                  srai         s2, t1, 26
                  or           a7, a5, s9
                  sub          s0, tp, a5
                  sltiu        gp, a5, -913
                  add          a7, t4, a6
                  lui          tp, 896972
                  slti         s6, s5, 1804
                  ori          sp, a7, -256
                  ori          s0, s7, 368
                  slt          s6, a3, s7
                  add          a6, tp, t4
                  slt          s10, s9, t4
                  addi         s2, zero, 756
                  sub          a4, s10, sp
                  auipc        a3, 482980
                  xor          zero, t1, sp
                  slli         a3, t2, 4
                  or           t1, sp, s10
                  sltu         s3, s11, a0
                  nop
                  or           zero, gp, a4
                  xor          s6, a1, t5
                  auipc        s9, 474857
                  lui          s4, 420342
                  addi         a0, sp, 1040
                  xor          a2, s5, t4
                  auipc        a2, 463339
                  srl          a0, a3, s8
                  xor          s11, a6, s2
                  srli         a7, s10, 21
                  lui          a7, 1025568
                  addi         s4, s10, 1074
                  auipc        s9, 522205
                  sltu         tp, a6, a6
                  nop
                  xor          s5, s5, t1
                  ori          tp, t6, 1999
                  and          t5, s0, t0
                  or           sp, s7, s10
                  sra          sp, a7, s4
                  or           sp, a1, sp
                  slt          a3, a6, t6
                  sltu         a4, t3, a7
                  sll          s11, a5, t0
                  sub          a4, t2, t6
                  srai         s11, zero, 28
                  addi         t2, t6, 1187
                  andi         s6, sp, -929
                  sra          sp, gp, a4
                  slli         s9, s10, 0
                  slt          s3, s11, gp
                  srai         a1, s3, 25
                  srai         t1, s8, 5
                  slt          zero, s1, t6
                  slti         a3, zero, -522
                  auipc        s3, 613641
                  srai         t4, a7, 16
                  srli         t2, a7, 12
                  slli         s9, a0, 25
                  srai         gp, a5, 30
                  xori         s2, s0, 281
                  sll          ra, s11, s0
                  sll          sp, s10, ra
                  xori         t5, t6, -45
                  addi         s7, a1, -1744
                  srl          s10, zero, a1
                  slli         a4, gp, 19
                  srli         s3, s4, 4
                  sltu         s10, s8, gp
                  andi         t3, t2, 170
                  addi         ra, s9, -1942
                  sub          a6, t6, s2
                  sltiu        s5, t5, 47
                  or           sp, t2, t2
                  slli         s11, a0, 22
                  sll          ra, t3, t0
                  sra          s2, s4, a3
                  srl          s5, s1, s8
                  andi         zero, s7, 1750
                  srl          t6, s7, gp
                  xori         s9, s9, -195
                  sub          sp, a4, a7
                  sub          s6, a0, t5
                  andi         s0, s4, 192
                  slli         t5, a4, 5
                  lui          t2, 744183
                  lui          t6, 782346
                  or           s5, a2, t6
                  sltiu        a4, t0, -1085
                  sltiu        a3, sp, 1865
                  nop
                  sub          a3, ra, s7
                  sub          a1, s4, a2
                  srai         sp, s0, 10
                  and          gp, sp, t5
                  xori         t3, a1, -691
                  sltiu        s7, a1, -1317
                  slt          a4, s4, a7
                  srai         a3, s1, 14
                  nop
                  sub          ra, t0, t3
                  sltu         a1, s5, s11
                  slti         s9, t2, 1071
                  auipc        t5, 849105
                  lui          a0, 184154
                  slti         s0, a1, -1670
                  sra          t3, s7, t1
                  ori          a5, t2, -1404
                  auipc        zero, 62667
                  slt          s11, s11, s3
                  auipc        s2, 569548
                  add          s5, t4, s7
                  auipc        s6, 819303
                  srai         s2, s1, 25
                  srl          tp, s6, s0
                  slti         a4, sp, 985
                  add          t4, s11, a2
                  srl          s7, tp, s4
                  slt          s3, t1, tp
                  sra          t2, a1, zero
                  sltu         t1, ra, t0
                  and          t1, t1, t1
                  auipc        a0, 699166
                  sra          a3, t6, s0
                  srai         gp, s8, 27
                  sltu         s10, s0, t2
                  sra          ra, sp, zero
                  and          a1, t1, a4
                  sub          t4, zero, s4
                  auipc        s10, 907498
                  auipc        a5, 273364
                  sra          s4, t6, s2
                  and          s2, a4, tp
                  nop
                  nop
                  lui          tp, 600673
                  slt          s5, s8, a1
                  xori         tp, s7, -332
                  sll          s0, s1, t3
                  srai         s11, sp, 21
                  and          t3, sp, a0
                  srai         a5, a1, 3
                  and          a3, t2, a2
                  addi         t6, a1, 1420
                  xori         t2, s4, 1019
                  lui          s11, 180430
                  nop
                  slli         t4, gp, 16
                  slli         s3, t5, 30
                  slli         t2, t4, 6
                  andi         s0, a3, 1493
                  nop
                  srli         s5, t1, 7
                  srli         s0, a2, 25
                  xori         ra, t1, 619
                  slt          t4, a3, s2
                  or           s4, t0, s9
                  slt          s4, t1, t2
                  addi         t1, t6, 1805
                  and          s7, a7, tp
                  sra          a5, a3, s3
                  lui          s10, 176224
                  andi         s4, s9, -1150
                  slt          s4, t1, ra
                  ori          gp, s1, -332
                  andi         s6, a6, -1905
                  or           s3, s0, t3
                  slt          t4, s4, t3
                  add          a5, a3, t1
                  li           a1, 0xffffffff #start riscv_int_numeric_corner_stream_18
                  li           s6, 0x8655700
                  li           a2, 0xffffffff
                  li           s7, 0xffffffff
                  li           s2, 0xffffffff
                  li           t6, 0xaa521091
                  li           s3, 0x80000000
                  li           s9, 0x0
                  li           t5, 0x80000000
                  li           s10, 0xffffffff
                  addi         t6, t5, -478
                  nop
                  add          s7, t6, s3
                  auipc        a2, 189571
                  auipc        s6, 736544
                  lui          s10, 977294
                  sub          s10, s3, s9
                  nop
                  lui          s10, 445835
                  addi         s2, s2, 1101
                  auipc        s6, 684247
                  auipc        s3, 25223
                  sub          s9, t6, s9
                  add          s2, s2, t5
                  add          a2, a2, t6
                  sub          s10, t5, s6
                  auipc        a2, 155173
                  auipc        t5, 579513
                  sub          s6, t6, s10
                  addi         s9, t6, 1324
                  addi         s10, s7, -1258
                  add          s7, a1, a1
                  add          s10, a1, s3 #end riscv_int_numeric_corner_stream_18
                  and          s3, s0, zero
                  srai         s7, t0, 31
                  andi         t1, t0, 109
                  addi         a6, s4, -671
                  andi         s4, a7, -1421
                  or           s11, a6, t6
                  slli         s5, s7, 3
                  xori         s3, a4, -221
                  sll          a2, t3, s8
                  sub          a3, s0, t0
                  xori         t3, s2, -326
                  srai         t1, gp, 30
                  srli         a0, sp, 29
                  sra          s0, s3, s6
                  add          a3, s1, a2
                  sll          t5, s1, a6
                  lui          s3, 855203
                  or           a0, a7, s10
                  and          t3, a5, s0
                  sll          a0, t3, s7
                  or           s10, s10, s2
                  srli         zero, t3, 6
                  auipc        a4, 655517
                  auipc        a4, 539966
                  sub          a7, gp, a6
                  xor          s2, a6, zero
                  add          gp, s2, sp
                  add          a1, t2, t3
                  or           t2, s7, s7
                  xori         t3, t3, -285
                  lui          s10, 213349
                  sub          s2, s2, t1
                  sra          s5, t6, a4
                  slti         a2, s6, 1051
                  xor          a1, t3, a7
                  slli         s5, s9, 31
                  or           a5, a0, tp
                  srli         tp, s1, 13
                  sra          s9, s4, a2
                  xori         t3, t0, -1659
                  srl          a0, s11, s11
                  add          t4, gp, a0
                  xori         t5, t6, 91
                  xori         s5, s6, -738
                  sra          a6, a2, s8
                  add          a6, tp, s5
                  sub          s11, s10, a5
                  sra          a3, a1, gp
                  sub          s10, a4, t6
                  nop
                  add          a5, s8, s7
                  sltiu        s5, t0, -1135
                  auipc        sp, 193389
                  sll          s3, t2, t2
                  sltiu        ra, a5, 633
                  sra          t4, t6, t3
                  slti         a2, s4, 1119
                  sltiu        gp, s9, -1834
                  lui          t6, 1012508
                  xori         a1, s1, 594
                  slt          s10, a5, t2
                  addi         s3, s8, -1238
                  addi         s3, s3, 371
                  slli         t6, s8, 15
                  slti         t1, tp, 697
                  addi         s0, s1, 2010
                  sub          s7, s8, a5
                  addi         a3, s8, 1146
                  xor          t6, a5, t5
                  li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           a5, 0x0
                  li           t2, 0x0
                  li           a4, 0xffffffff
                  li           s3, 0x80000000
                  li           gp, 0x390d879b
                  li           a7, 0x80000000
                  li           s10, 0xf090b84c
                  li           t3, 0x80000000
                  li           a0, 0x0
                  auipc        s10, 988002
                  addi         s3, a4, -1793
                  add          gp, t2, t2
                  sub          gp, a5, a4
                  addi         gp, t2, 1476
                  sub          t2, s3, a7
                  addi         a7, a1, 587
                  lui          s3, 204585
                  add          a4, a0, a0
                  lui          a0, 779031
                  lui          a5, 496719
                  lui          s3, 126762
                  addi         a5, a7, -1082
                  addi         t3, a0, -387
                  addi         t2, s10, -599
                  sub          a1, gp, a5
                  auipc        s10, 126048
                  add          a1, gp, a7
                  addi         a1, gp, -979
                  auipc        a1, 396596
                  add          a0, a4, a4
                  lui          a5, 523953
                  auipc        a5, 945531
                  addi         s3, t3, -1285 #end riscv_int_numeric_corner_stream_5
                  slt          t1, s2, gp
                  and          gp, gp, s2
                  nop
                  addi         a5, s5, -376
                  sra          a7, s10, t0
                  add          zero, s2, t1
                  sltiu        s0, s2, 1744
                  xor          s0, s4, a0
                  and          s7, t0, s3
                  auipc        s4, 676976
                  lui          s0, 503059
                  xori         a4, s8, 860
                  andi         s0, a3, -2039
                  slti         a6, s0, 1258
                  andi         a1, t3, 1601
                  xor          sp, s10, a3
                  addi         a2, t4, -172
                  slt          t4, zero, t3
                  srl          t4, gp, s9
                  sub          t4, s8, a2
                  srl          s7, s7, t4
                  sra          s7, a7, t4
                  nop
                  srai         ra, t2, 17
                  addi         t6, t2, -1050
                  xori         s5, s3, 1610
                  or           t6, s0, s6
                  ori          a4, a2, 543
                  andi         s0, a1, 102
                  xor          ra, ra, s4
                  sra          a2, tp, a0
                  srli         s4, a0, 1
                  andi         a6, t0, 319
                  auipc        t2, 715836
                  xor          s6, gp, a7
                  or           t1, s8, t0
                  xori         s11, s1, 378
                  andi         s0, s7, -885
                  addi         s4, zero, -846
                  auipc        a2, 952836
                  xori         t1, s5, -1805
                  nop
                  and          a5, a3, a5
                  sra          a1, s8, a7
                  slti         sp, s6, 315
                  add          ra, a0, t3
                  xor          t1, a1, t4
                  nop
                  auipc        a6, 774251
                  addi         t6, a1, 183
                  sll          s5, a3, sp
                  or           a1, t1, sp
                  xor          gp, t4, s6
                  sra          a3, s10, tp
                  nop
                  or           a3, a4, a2
                  srl          s5, t1, a6
                  sub          t4, ra, a2
                  sltu         a3, t5, a4
                  ori          s5, a6, 1885
                  srli         s4, s7, 23
                  srai         s7, ra, 5
                  sltu         a1, t5, gp
                  srai         t3, s6, 12
                  sltiu        gp, a4, 949
                  lui          s6, 609375
                  auipc        s2, 450659
                  srl          s10, t3, s11
                  or           t6, s5, a4
                  slli         s0, s3, 9
                  nop
                  slt          s5, t0, t5
                  nop
                  srli         a6, a3, 12
                  lui          s0, 748283
                  andi         a4, a4, 778
                  sra          t5, a6, t2
                  sll          gp, a2, s9
                  xor          a7, a1, a1
                  xori         t6, a3, 489
                  slli         t3, s5, 6
                  slti         zero, a6, 832
                  nop
                  sra          gp, a1, t0
                  srai         a4, s9, 18
                  sltu         t1, tp, a2
                  slt          a0, ra, s2
                  slli         a2, s7, 26
                  srli         s2, a0, 21
                  andi         ra, t5, -1123
                  srl          s7, a4, s5
                  sll          a5, ra, zero
                  ori          s10, a7, 1476
                  or           ra, s5, s4
                  andi         zero, a0, -1214
                  sltu         s9, a6, a0
                  slli         zero, t5, 8
                  xori         t2, s9, 1822
                  slt          a2, a2, a4
                  auipc        s7, 894034
                  sll          t5, ra, a4
                  xor          a4, s6, s9
                  srl          s11, t4, ra
                  slt          s4, s9, s7
                  srli         t1, ra, 14
                  auipc        zero, 816394
                  slli         a3, s8, 28
                  sltiu        s7, a4, 1254
                  sltiu        s10, gp, 1086
                  sltu         tp, a2, s4
                  lui          t5, 169012
                  addi         zero, t5, 1572
                  srl          t1, ra, zero
                  srai         sp, s10, 5
                  xori         s11, a7, -1377
                  or           a1, a6, tp
                  sra          a0, t0, s9
                  auipc        a2, 999374
                  slti         t5, s5, -1584
                  srli         a4, s9, 21
                  srl          s4, s8, a6
                  sltu         s4, t4, tp
                  nop
                  auipc        s0, 130075
                  srai         s0, t6, 24
                  xori         a7, s7, -970
                  auipc        t2, 464226
                  nop
                  sub          t3, gp, t5
                  andi         sp, a4, 661
                  slti         t4, s8, -1693
                  sll          ra, s10, t1
                  auipc        t4, 499731
                  nop
                  srli         s4, t5, 31
                  srai         s10, a3, 30
                  sra          zero, s5, s1
                  sltu         a5, s6, a7
                  nop
                  slli         s4, t2, 1
                  xor          t6, tp, t5
                  slti         a5, t5, 1460
                  nop
                  auipc        s3, 65539
                  slt          t3, s2, t4
                  srli         a2, sp, 2
                  sll          t2, s4, t4
                  srl          gp, t0, s0
                  andi         a6, a5, 1469
                  srai         s0, t0, 5
                  andi         a5, s4, -216
                  or           zero, s9, tp
                  sra          a5, t2, t6
                  and          a5, s11, tp
                  auipc        gp, 843573
                  andi         ra, s11, -1935
                  sltu         s6, t6, t6
                  lui          a0, 880680
                  slli         t2, a6, 14
                  xor          t3, s2, s3
                  srli         zero, s1, 21
                  xor          s9, gp, sp
                  sltiu        t2, s10, -1883
                  srl          s5, s11, s2
                  srli         s0, gp, 19
                  sll          tp, s8, t0
                  ori          t6, s8, -1506
                  slli         t3, a6, 14
                  slt          zero, s5, a4
                  or           s4, s4, t5
                  srai         tp, s9, 15
                  slt          s4, s10, gp
                  andi         a7, s5, 837
                  or           t3, s2, a5
                  srli         s4, a1, 7
                  sra          a7, s10, a2
                  nop
                  ori          tp, a2, -698
                  and          a2, s0, s3
                  slti         a6, s7, 1778
                  sltiu        tp, s4, 650
                  sll          s7, t1, a3
                  srl          gp, t6, s10
                  nop
                  or           a5, t6, t0
                  slt          a3, a1, s3
                  sra          t4, a1, s9
                  srli         s3, s2, 29
                  slli         gp, t0, 6
                  srl          a3, a1, a1
                  slti         a7, s9, -1633
                  sltiu        s11, t4, -1914
                  andi         zero, a4, -714
                  nop
                  slt          s9, a7, a1
                  slt          a2, ra, t6
                  slli         t3, t4, 14
                  sll          t1, a3, s0
                  xori         a0, s1, 1044
                  addi         a2, a6, -1991
                  sub          gp, t0, s2
                  andi         a7, zero, -1450
                  xor          s11, t5, s2
                  add          t5, a5, t0
                  srli         s5, s7, 5
                  or           a2, t4, a2
                  and          a5, s3, ra
                  add          s2, s7, t5
                  sub          ra, s4, ra
                  add          a0, s3, s6
                  lui          a0, 105497
                  slli         t6, s9, 8
                  xor          s4, s10, a0
                  add          a2, s5, s8
                  nop
                  lui          t5, 428088
                  srai         t2, s4, 15
                  and          s9, t3, s6
                  nop
                  auipc        a6, 305830
                  sll          sp, t5, s2
                  sltiu        tp, s5, 1617
                  slt          s6, sp, s3
                  xori         tp, s5, -325
                  sra          a3, s5, zero
                  slli         t1, s8, 31
                  sltiu        t2, t3, 1604
                  slti         s6, s10, 783
                  andi         s3, a1, 1408
                  sltu         gp, gp, s0
                  andi         s4, ra, 1892
                  nop
                  sra          s7, s5, s11
                  sltu         a0, t0, s3
                  slt          s11, t2, a6
                  xor          t3, ra, a0
                  xor          s3, a5, t6
                  srai         s5, s1, 19
                  sltu         s11, s11, t3
                  sll          tp, s5, t1
                  and          s0, s1, a6
                  auipc        t2, 142207
                  sub          tp, s6, gp
                  or           t2, s2, s6
                  xor          a7, a4, s6
                  andi         t3, s0, 43
                  sra          a2, s10, s11
                  sra          a1, s6, a6
                  xor          a4, t6, s7
                  or           a7, t0, s8
                  sra          s11, t3, s11
                  sltu         s2, s2, a7
                  sub          s3, s6, a5
                  addi         a1, a3, 608
                  xor          s0, a1, s3
                  slli         s10, s1, 30
                  sub          t2, t0, t5
                  auipc        t3, 419001
                  nop
                  lui          tp, 450033
                  ori          a0, ra, 786
                  slti         t3, ra, -1573
                  and          a0, s6, a2
                  slli         a6, a5, 25
                  srl          t1, s0, t4
                  ori          s4, t3, 1448
                  lui          s10, 11303
                  nop
                  sll          t5, s9, a2
                  sltu         t6, s3, a0
                  sub          s9, s9, t2
                  nop
                  lui          s3, 525614
                  add          s0, t2, s0
                  srl          s11, s11, sp
                  ori          a4, s8, 1509
                  slli         a6, s4, 21
                  nop
                  ori          t4, s3, 1015
                  slt          t2, a2, sp
                  sltiu        a0, ra, -1324
                  or           a2, a6, ra
                  auipc        s2, 891411
                  sra          t6, sp, gp
                  and          t5, t6, s8
                  lui          a7, 17518
                  srai         t3, s9, 17
                  sltiu        a1, s7, 1423
                  and          s2, a1, t0
                  add          a7, a0, a7
                  add          t3, t3, t6
                  xori         s6, s8, -1235
                  srli         t4, a0, 1
                  lui          s3, 332403
                  andi         s6, a7, -444
                  xori         t4, t2, 1163
                  ori          gp, a7, 1643
                  nop
                  nop
                  sll          s5, a4, a6
                  sra          sp, s9, s11
                  auipc        a0, 348611
                  and          t5, t3, a0
                  sra          t1, tp, a1
                  auipc        gp, 223514
                  sra          t5, t2, s0
                  srl          a2, t0, sp
                  lui          s2, 596174
                  andi         a0, s5, -1237
                  xori         s0, a2, -1579
                  slli         gp, s8, 20
                  slli         a3, s2, 8
                  lui          zero, 497869
                  srli         t6, a7, 8
                  add          a7, a6, s1
                  lui          s6, 104948
                  xor          t6, gp, zero
                  ori          t2, s6, -1283
                  auipc        s10, 1033056
                  ori          s11, s0, -65
                  lui          tp, 336703
                  slli         s7, s8, 3
                  srl          s4, ra, a2
                  slti         t5, t2, 854
                  srl          a2, s9, s8
                  slli         t1, a5, 23
                  srli         s7, s0, 13
                  or           a2, s9, s1
                  nop
                  slti         s3, s7, -504
                  add          a6, a1, s1
                  ori          t4, a5, -934
                  sltu         s11, s11, s3
                  nop
                  slti         a3, s2, -563
                  srl          t6, a5, tp
                  srli         s4, a2, 3
                  nop
                  add          a1, s6, t4
                  ori          tp, s1, -1336
                  lui          a2, 1034364
                  xori         s10, s6, -313
                  lui          t1, 496156
                  slt          sp, tp, a2
                  auipc        s2, 782915
                  slli         a5, a3, 9
                  or           t3, sp, t6
                  addi         a1, s5, 397
                  srl          s9, s4, s8
                  slli         a1, t5, 20
                  or           a5, gp, s5
                  addi         t1, s6, 236
                  sll          s2, gp, a2
                  slli         t6, s9, 4
                  sltu         t5, s9, gp
                  srai         t4, a2, 6
                  ori          s11, t2, -1912
                  slli         a5, zero, 21
                  sra          tp, s1, t2
                  nop
                  addi         a6, t0, -1174
                  slt          t6, a4, sp
                  sub          a7, ra, t1
                  andi         gp, zero, -1279
                  srl          a4, s8, s6
                  sub          s4, t4, tp
                  xori         a1, t0, -176
                  slt          t6, gp, s11
                  lui          s11, 636091
                  sub          t2, t1, s6
                  xor          s11, a0, s0
                  auipc        t3, 449933
                  xor          s2, gp, t5
                  andi         s0, t5, -1665
                  xori         s10, t5, -407
                  auipc        a5, 144454
                  ori          s11, a1, -1047
                  ori          a2, ra, 1148
                  addi         t2, s2, 1116
                  sub          t4, s3, s10
                  slti         s5, a6, 123
                  xor          ra, t4, s9
                  slt          s10, t5, s3
                  slt          t6, a0, t4
                  sll          zero, t4, a4
                  or           gp, s4, a0
                  nop
                  xori         a3, s1, -537
                  xori         a2, s10, 1716
                  slti         a5, a3, -1761
                  sll          a5, t0, tp
                  sra          a3, s5, s11
                  ori          a4, tp, 238
                  slti         s6, s4, -1570
                  slli         t2, a1, 2
                  lui          s6, 659300
                  or           t4, a5, s8
                  sll          tp, tp, a6
                  slti         t1, t5, 336
                  srai         t2, a5, 5
                  sra          a5, s0, s0
                  ori          s11, t2, -1167
                  addi         a3, zero, 1505
                  and          a6, s4, s7
                  andi         a7, a4, -17
                  slt          sp, s5, t0
                  or           s2, t6, a6
                  sltiu        t5, gp, -991
                  sll          a3, t2, s8
                  xori         a0, s0, -562
                  sll          t4, s6, s3
                  sra          tp, s0, a2
                  sltu         t4, s0, t2
                  slt          t4, t5, a6
                  xor          s5, tp, gp
                  slt          s3, ra, s9
                  auipc        sp, 502128
                  addi         a7, a0, 1219
                  addi         t3, zero, -1859
                  xori         a0, s11, -290
                  srl          s7, a2, s5
                  auipc        zero, 189068
                  slti         s6, a7, 578
                  sra          s10, a7, gp
                  slli         a0, s6, 19
                  addi         s2, sp, 1694
                  sltu         t6, ra, zero
                  slt          a6, ra, s2
                  srai         s9, tp, 14
                  andi         s2, s4, -1977
                  and          s4, gp, s7
                  sub          gp, a3, a6
                  lui          a4, 770713
                  slt          a6, t0, s11
                  sub          s5, s4, s11
                  add          s9, a2, a4
                  auipc        ra, 614087
                  addi         a1, t1, 544
                  srli         a2, a0, 7
                  sltiu        ra, s11, -1442
                  srai         t6, t1, 8
                  or           t1, tp, s1
                  andi         a2, s6, 873
                  slt          zero, s11, s4
                  nop
                  xor          s5, s9, tp
                  addi         a2, a5, -1180
                  xor          a2, t1, zero
                  slt          gp, a1, t0
                  nop
                  xor          a2, s3, t6
                  slt          t5, a2, s11
                  srli         ra, t1, 25
                  sltu         a5, s6, t5
                  and          t1, a6, s1
                  and          t4, a7, s10
                  ori          a0, s1, 1566
                  sra          gp, t3, a0
                  sltiu        ra, a6, -1916
                  srai         t4, t0, 1
                  srai         a4, s3, 12
                  nop
                  srl          a4, a0, s0
                  srl          a1, t2, a4
                  srl          sp, s7, t4
                  nop
                  slt          t2, t6, t2
                  auipc        a1, 536877
                  sltu         a1, a6, t2
                  or           s4, a6, a5
                  slli         a7, gp, 13
                  xor          s6, sp, t1
                  or           s11, s1, a1
                  xori         t2, s6, -1622
                  sll          t6, s4, s9
                  sll          sp, s3, t6
                  slli         a2, s5, 3
                  andi         s0, t0, -43
                  srli         s0, t6, 24
                  addi         a7, a7, -2047
                  lui          a0, 257893
                  sll          sp, t3, s3
                  xor          s10, s9, a0
                  addi         a0, zero, 1636
                  slli         s9, t5, 0
                  sltu         s11, a2, s9
                  sll          sp, a1, zero
                  xor          s4, t2, ra
                  slti         gp, s7, -182
                  sll          sp, t6, t3
                  sll          a7, s9, a5
                  nop
                  srl          zero, s11, a1
                  or           gp, s1, s5
                  or           ra, tp, sp
                  ori          a6, t6, -1695
                  ori          s7, t5, -1040
                  sra          t6, s3, s7
                  slti         t5, a3, 1489
                  slti         a6, s11, -556
                  addi         a3, a4, 24
                  lui          a5, 709150
                  andi         a5, s7, 1264
                  sra          a7, t1, t1
                  auipc        a7, 350470
                  sltu         t5, t0, s0
                  sll          s3, s1, t2
                  ori          t4, s1, -1727
                  andi         sp, t6, -331
                  add          a1, a3, s10
                  slti         t1, a3, -1651
                  srai         a3, a3, 8
                  sub          a0, t1, a1
                  addi         t4, s11, -237
                  addi         sp, a6, 1986
                  sra          a3, sp, a4
                  or           t3, a0, ra
                  andi         s2, s11, -759
                  slli         s0, s0, 14
                  andi         t2, t1, -413
                  nop
                  sltu         s4, t0, a1
                  addi         t5, tp, 575
                  sll          sp, s6, a4
                  sltiu        a0, ra, 620
                  srl          a7, s2, s7
                  sra          s5, s5, sp
                  sltiu        a4, tp, -252
                  slti         a4, s1, 804
                  andi         s5, ra, -1987
                  slti         gp, s2, -1906
                  andi         zero, a1, 441
                  sra          gp, a4, tp
                  lui          tp, 694027
                  ori          t6, a7, -584
                  srl          a4, t2, s6
                  xor          sp, a1, s2
                  sll          a3, a2, s9
                  addi         s9, ra, -217
                  sltu         s3, s5, zero
                  srai         a5, a0, 1
                  lui          zero, 938202
                  sltiu        s10, a7, 1202
                  andi         a7, t2, -558
                  lui          s2, 62989
                  sltiu        t3, a2, -1306
                  srli         s2, s4, 24
                  ori          tp, zero, -536
                  or           a3, a0, a3
                  slli         s4, s8, 14
                  lui          t4, 1026968
                  andi         gp, tp, -488
                  add          s11, a3, s3
                  xori         t3, t1, 1392
                  srli         ra, a7, 6
                  addi         s7, ra, -130
                  sub          t1, s1, s7
                  auipc        gp, 902660
                  slti         t1, tp, 380
                  sub          ra, sp, s3
                  addi         t2, s5, -1904
                  or           s10, a3, sp
                  sltu         s7, s8, a1
                  sltiu        s10, t5, 874
                  srai         s0, t0, 1
                  andi         a4, s1, 690
                  andi         s4, t3, -170
                  ori          gp, s10, 1757
                  srli         t2, t5, 15
                  srl          ra, a0, s0
                  addi         t3, s2, -1300
                  andi         gp, s3, -1558
                  srli         a5, a1, 9
                  xor          a4, s5, a1
                  sll          a0, a2, t6
                  ori          a0, zero, -209
                  xori         gp, s3, 1290
                  add          s6, s1, t5
                  slli         a2, t3, 1
                  sub          s5, zero, a7
                  srai         a5, zero, 0
                  auipc        s4, 169619
                  lui          s3, 463051
                  sltu         s3, t3, s2
                  and          s0, a5, zero
                  sltiu        sp, a3, -1726
                  srli         s2, a7, 3
                  sltu         t6, a5, s11
                  slli         t6, sp, 14
                  sub          s3, a5, sp
                  auipc        a5, 625612
                  sub          sp, tp, s2
                  srl          s4, sp, s10
                  slti         s4, tp, -957
                  ori          a6, t2, -1688
                  and          a5, a0, s0
                  srli         s4, sp, 15
                  ori          t3, s10, -382
                  xori         zero, s3, 537
                  slti         a2, s3, -623
                  srai         a4, a7, 2
                  xor          s0, t5, a1
                  slli         s9, t0, 3
                  nop
                  xor          t2, t2, t6
                  sub          s0, s9, a0
                  sltiu        a5, s4, -1600
                  nop
                  sll          ra, s6, s11
                  sltu         t3, t1, s9
                  sll          t5, zero, s4
                  sll          t5, ra, s3
                  slti         s9, zero, 1551
                  lui          sp, 467193
                  sltu         a7, sp, t2
                  sub          a7, t2, s10
                  sra          t2, s5, s10
                  li           a6, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           s10, 0x0
                  li           s11, 0x7317b541
                  li           t1, 0xea9858ef
                  li           a2, 0x80000000
                  li           s9, 0x0
                  li           a4, 0xf4c1f196
                  li           tp, 0x0
                  li           t4, 0x5f603fc4
                  li           t3, 0x13fde531
                  sub          t3, t3, tp
                  addi         t3, a2, 1811
                  lui          t1, 135849
                  lui          t1, 480345
                  addi         a2, t4, -1167
                  sub          s9, a2, a2
                  lui          t4, 28686
                  addi         tp, a2, 1241
                  add          s10, t1, t3
                  sub          t3, s9, tp
                  lui          t3, 467656
                  lui          s10, 159699
                  auipc        tp, 670693
                  sub          a6, a2, s9
                  auipc        a6, 941369
                  add          a2, t3, a2 #end riscv_int_numeric_corner_stream_4
                  slt          a3, s3, t3
                  andi         gp, t0, -1152
                  or           t1, s9, zero
                  xor          s5, s10, t0
                  sub          sp, a3, a4
                  sltu         zero, t4, s8
                  srl          s3, a3, t2
                  xor          s9, s9, a0
                  sll          t2, s6, a0
                  slli         a7, sp, 18
                  xori         s5, t1, -1608
                  sltiu        s0, s0, 1346
                  lui          gp, 281777
                  add          s7, sp, t2
                  and          a1, t2, s9
                  add          t4, s0, tp
                  slt          a7, s8, tp
                  xor          t4, s5, s3
                  srli         s0, a7, 29
                  andi         s11, t4, -1033
                  srl          a7, s11, a7
                  sll          s3, s5, t5
                  slli         a0, a1, 20
                  sub          zero, s0, tp
                  sra          t2, a2, t2
                  and          s10, ra, a7
                  or           t3, zero, a6
                  sll          s2, t1, zero
                  addi         a5, zero, -876
                  lui          s10, 511207
                  sub          zero, ra, t5
                  sltu         s6, s11, t5
                  add          t5, sp, gp
                  ori          t6, gp, -1035
                  addi         a6, t0, 1086
                  sltiu        a3, a6, -1470
                  sub          tp, s4, ra
                  ori          s6, s9, 2041
                  xor          s4, a7, zero
                  slli         a3, a1, 14
                  lui          s2, 645154
                  ori          s3, t4, -112
                  and          t1, ra, s2
                  nop
                  add          s7, s4, a4
                  lui          t6, 773772
                  ori          s6, a6, 726
                  addi         s0, s4, -680
                  srl          gp, a0, s5
                  ori          s0, s1, 218
                  sub          s2, zero, tp
                  lui          zero, 39511
                  or           a2, s1, a2
                  add          t4, gp, s4
                  ori          sp, s5, -1252
                  sll          t4, s2, a2
                  srai         a1, a7, 18
                  addi         zero, a1, -1671
                  sltu         s4, tp, a6
                  nop
                  srli         s10, a1, 1
                  nop
                  lui          s4, 827623
                  sra          a2, s11, t4
                  srli         a6, a7, 27
                  srai         s5, s4, 1
                  nop
                  slt          gp, s0, s4
                  sltiu        a7, s11, 33
                  sltu         s10, a1, a5
                  srl          t4, zero, t5
                  slti         a6, a4, -1085
                  sltu         zero, t2, tp
                  sltu         s4, t5, s7
                  slt          a0, t3, s5
                  srl          a6, ra, a4
                  srai         s4, a4, 30
                  auipc        s10, 933588
                  slt          s5, ra, a0
                  add          s9, s9, s7
                  slli         t5, a1, 9
                  slt          gp, s1, a6
                  slti         t3, t2, -806
                  addi         gp, a7, -364
                  add          sp, t5, s10
                  sra          t5, a7, t5
                  slli         sp, t2, 22
                  xor          t2, s6, s3
                  xor          tp, a6, a7
                  addi         a2, s7, 2023
                  srai         t5, t0, 19
                  xor          a4, s11, a7
                  or           t4, t6, t6
                  sltiu        t3, ra, -238
                  auipc        t4, 1000970
                  and          t5, a5, s6
                  slt          a6, a4, a3
                  srl          s4, t6, t2
                  auipc        gp, 472263
                  addi         s11, zero, -171
                  sltiu        ra, s7, 284
                  srl          a2, s8, sp
                  and          s10, a3, t6
                  nop
                  or           t1, t3, s1
                  sll          s6, ra, ra
                  sub          a4, t6, s0
                  nop
                  sltiu        t5, gp, -7
                  slt          s3, s8, s8
                  lui          zero, 56275
                  sub          t3, s4, s3
                  sub          a5, s8, s3
                  nop
                  slli         sp, gp, 13
                  sll          t5, a0, a2
                  srli         s11, gp, 13
                  slli         a1, t1, 17
                  srai         t6, a3, 31
                  andi         t3, zero, -1524
                  srli         t4, t6, 2
                  slti         a0, s11, -1118
                  and          a3, sp, a3
                  srai         s0, sp, 13
                  and          s3, s6, sp
                  slt          s5, a1, a7
                  sub          t2, s1, s10
                  addi         a2, zero, 711
                  sltiu        t4, s0, 1321
                  nop
                  or           s6, tp, tp
                  slt          a7, a4, zero
                  nop
                  lui          s0, 824184
                  sra          a7, a2, a7
                  ori          s9, t1, 415
                  add          a2, s0, t5
                  add          t2, ra, s2
                  sub          s5, a4, a0
                  sltiu        s9, s0, -1930
                  sub          a5, ra, ra
                  slti         s9, s8, 915
                  addi         sp, a3, 1761
                  andi         ra, t5, 355
                  sub          s5, zero, s6
                  sltiu        a7, s8, -609
                  sra          a6, a7, t6
                  srai         gp, a7, 31
                  srli         s9, s10, 27
                  srli         s5, ra, 1
                  xori         a2, ra, -1303
                  lui          s10, 477515
                  add          s4, t4, t6
                  and          s11, t6, tp
                  slt          t5, t1, s2
                  addi         s4, t0, -1127
                  lui          a1, 257497
                  slli         a0, t0, 29
                  xori         s5, t4, 310
                  srli         s3, sp, 11
                  slti         a2, tp, 1755
                  andi         s11, t3, -690
                  xor          zero, tp, a5
                  sltiu        s3, a0, 755
                  sub          s3, s7, s1
                  sltu         s5, a7, s5
                  addi         t1, t3, -527
                  or           s11, s7, ra
                  add          zero, t4, a1
                  ori          s7, t4, 857
                  xori         t1, t1, 1776
                  add          s0, s2, s3
                  andi         t5, s9, -1133
                  ori          s0, a1, 1318
                  sltiu        tp, s1, -1786
                  nop
                  srai         a7, a4, 2
                  srai         t6, s6, 11
                  slli         s2, a3, 1
                  srli         a7, a4, 3
                  srl          s10, tp, a1
                  addi         gp, a2, -374
                  slti         t5, s4, -567
                  srl          t6, a5, t5
                  sltiu        s3, t1, 1985
                  slt          t3, a2, a5
                  srl          s6, s6, t6
                  add          a7, zero, a7
                  sll          a7, gp, a4
                  nop
                  slt          t3, s11, t4
                  addi         ra, t3, -479
                  sltiu        a4, s9, -1720
                  slli         t5, t1, 20
                  and          s0, a7, s7
                  slt          a4, s9, a3
                  sltiu        s9, s6, 160
                  add          s4, zero, t2
                  srai         s11, a3, 29
                  srai         t3, t2, 12
                  xori         t5, s11, -912
                  sub          a7, t5, s6
                  slli         s10, t1, 3
                  sub          s9, a1, zero
                  sub          a4, s9, s6
                  lui          sp, 734609
                  li           sp, 0x80000000 #start riscv_int_numeric_corner_stream_6
                  li           a5, 0x0
                  li           t1, 0x96f9854a
                  li           ra, 0xf045d085
                  li           s0, 0x5e51144f
                  li           s4, 0x0
                  li           s10, 0x0
                  li           a7, 0x0
                  li           a0, 0xffffffff
                  li           t2, 0x80000000
                  addi         t2, sp, 623
                  sub          s10, a5, a0
                  add          sp, s10, s4
                  lui          a7, 6440
                  lui          s0, 625636
                  add          t1, a7, t1
                  addi         t2, s10, -1019
                  add          t2, t1, a7
                  lui          ra, 475664
                  add          t1, sp, a7
                  sub          a0, ra, sp
                  auipc        t1, 117676
                  nop
                  sub          t1, s4, s10
                  sub          a0, a5, s4
                  nop
                  auipc        t1, 775398 #end riscv_int_numeric_corner_stream_6
                  auipc        zero, 235514
                  srl          ra, t2, s9
                  slti         a6, t3, -1963
                  sra          s9, a1, t4
                  slti         s7, t0, 1595
                  lui          a7, 605505
                  addi         tp, s4, 1488
                  srli         s11, s0, 3
                  ori          s7, s11, 1183
                  sra          s11, s2, s5
                  srl          t6, ra, a2
                  ori          a0, gp, -1024
                  sra          t4, s5, s6
                  slt          a3, s3, s2
                  srai         t5, ra, 8
                  xori         tp, a2, -1408
                  add          ra, s10, a2
                  ori          t1, zero, -426
                  sll          t6, s4, t3
                  sub          a6, t4, t0
                  or           t6, a3, t2
                  andi         s3, ra, -1789
                  srli         s3, a5, 5
                  srl          t5, zero, s6
                  andi         a5, s5, 1355
                  ori          s10, t6, -1224
                  xori         s5, s10, -637
                  sra          t3, t5, a0
                  and          t2, t0, s7
                  sra          a2, t1, sp
                  srl          t5, zero, a1
                  srai         t4, s11, 30
                  nop
                  add          t5, t3, s1
                  slti         tp, s1, -1920
                  srl          s7, a0, s11
                  slli         s6, s0, 20
                  lui          s7, 583094
                  slli         a1, s6, 4
                  sub          t1, t4, a1
                  slt          t2, gp, t1
                  srai         s0, s10, 23
                  sub          t4, a6, a0
                  slt          t1, s3, s4
                  addi         s11, t4, -1557
                  slli         t4, t1, 19
                  add          a0, s9, a3
                  addi         s2, a0, 1394
                  sltu         tp, t4, t1
                  sub          a0, a6, t4
                  xor          a7, s4, s9
                  srli         t2, s2, 25
                  xori         s7, s1, -1789
                  and          gp, a4, s1
                  ori          a4, s2, 663
                  slt          t2, t4, a5
                  sub          tp, gp, a2
                  slli         s10, gp, 14
                  andi         zero, s5, -1546
                  add          s2, zero, s1
                  sltiu        t1, s0, -289
                  and          s5, s5, a4
                  slti         ra, s5, 685
                  add          t4, t1, tp
                  lui          s11, 264838
                  ori          t5, s0, -548
                  slt          t1, t1, a6
                  slt          t1, t1, s3
                  sra          a1, t5, s6
                  or           s4, sp, s2
                  or           a7, a7, a5
                  auipc        tp, 866394
                  xori         s2, a6, 1621
                  slt          zero, t4, a7
                  or           t4, s10, t1
                  sltiu        t1, a3, 966
                  auipc        s0, 854563
                  auipc        s2, 969169
                  slti         s4, s9, 1280
                  and          gp, tp, s7
                  slti         tp, t2, 766
                  and          s0, t2, t0
                  srl          zero, t5, s3
                  andi         a7, a0, -148
                  addi         t2, t1, -1221
                  and          t3, s11, t4
                  slti         t6, s9, -27
                  lui          t5, 499338
                  sltiu        zero, t3, -575
                  add          a4, s11, s10
                  nop
                  xori         t3, s1, 114
                  xor          ra, s6, a2
                  or           sp, a0, a6
                  nop
                  slli         s4, ra, 16
                  srli         a0, a2, 11
                  and          tp, t4, s0
                  srai         t5, t5, 16
                  lui          a6, 189967
                  slli         a5, a2, 8
                  sra          s9, a0, a5
                  addi         s2, s1, -1604
                  nop
                  sltiu        s11, a3, -754
                  and          a4, t0, s9
                  andi         s6, gp, -131
                  sub          t5, a7, a0
                  nop
                  sltiu        s6, t3, -1776
                  sltiu        s2, a3, -1471
                  srl          a5, s4, s6
                  sltu         t1, gp, a6
                  auipc        s11, 682751
                  and          a1, a2, s1
                  andi         t5, sp, -1632
                  addi         t6, s3, -1310
                  add          gp, sp, t5
                  sltiu        t1, a2, 1344
                  ori          a7, a1, -567
                  nop
                  xor          t4, t4, a6
                  add          zero, t1, t1
                  sltu         a4, s8, t6
                  ori          s0, t5, -990
                  srai         s3, a5, 2
                  sltu         a4, s10, t0
                  slt          a3, t6, t5
                  and          t5, t0, ra
                  andi         s11, t2, 52
                  slt          tp, s11, t5
                  srl          s7, s2, s2
                  nop
                  sltu         a0, t2, a0
                  andi         s3, t0, 248
                  srai         a4, t5, 3
                  sll          a0, s6, ra
                  ori          s11, s3, 1349
                  lui          s3, 118268
                  nop
                  or           t3, t1, s1
                  addi         s9, tp, -1944
                  and          a5, s1, a3
                  sra          s6, s11, s1
                  andi         t3, s10, 1023
                  srl          s5, s10, s9
                  sra          t1, t4, s11
                  add          ra, gp, ra
                  lui          s11, 365130
                  sltiu        ra, s6, 1719
                  slti         t3, t6, -1257
                  xor          s2, s6, s8
                  auipc        tp, 42349
                  nop
                  nop
                  or           t4, s9, t1
                  slt          s3, t2, t1
                  xor          s0, a6, ra
                  srai         a4, a5, 15
                  add          s7, s10, a3
                  ori          a5, t6, -157
                  or           t4, t3, a1
                  sll          t3, s5, s6
                  sltu         a3, t6, s4
                  sub          s0, tp, s1
                  slli         a4, s1, 27
                  add          s0, s6, s2
                  and          tp, s3, a5
                  slti         s2, s4, 715
                  sll          a2, zero, ra
                  nop
                  srli         gp, zero, 8
                  sltiu        s2, s4, 269
                  or           a1, t6, s9
                  lui          s4, 55698
                  srai         s6, t3, 26
                  and          s10, s5, s7
                  lui          t6, 573021
                  sltiu        s6, s0, -1088
                  sub          gp, a5, s7
                  srli         s0, t2, 18
                  ori          s5, s8, -1631
                  xor          s10, t2, t3
                  sltu         s6, t4, s10
                  lui          ra, 315869
                  auipc        zero, 24249
                  sltiu        sp, s9, 381
                  sltiu        s11, tp, -845
                  nop
                  sltiu        ra, t0, -453
                  nop
                  sra          ra, t0, tp
                  lui          gp, 388669
                  srai         s3, a0, 31
                  andi         a5, s9, -471
                  slli         s5, ra, 8
                  ori          a2, a3, 1303
                  slt          t1, s10, s6
                  slti         tp, sp, 1785
                  slli         a1, s10, 12
                  or           a5, t4, a2
                  slli         s3, s3, 27
                  or           zero, s1, s1
                  lui          s2, 87828
                  sra          s10, t6, t6
                  xori         s7, s5, 1240
                  nop
                  ori          t5, s6, -83
                  addi         s3, t4, 762
                  ori          t6, sp, -1889
                  srli         t2, a3, 3
                  auipc        a3, 137958
                  sll          a3, t1, s8
                  sub          a2, t1, s8
                  sll          ra, a7, s10
                  srai         t3, sp, 16
                  sra          s9, tp, a5
                  srai         ra, s7, 5
                  andi         sp, sp, -2029
                  sll          a4, s2, t3
                  add          s10, sp, s2
                  nop
                  nop
                  addi         s7, t6, -861
                  slti         s9, gp, 690
                  and          s2, a6, s5
                  sll          s0, t0, s7
                  sll          t2, t4, s11
                  nop
                  xori         s5, t6, 275
                  xor          a7, t0, a2
                  slli         a2, s3, 22
                  nop
                  srli         a0, s11, 8
                  andi         gp, a3, 718
                  lui          a6, 554297
                  slli         zero, s5, 4
                  nop
                  and          t4, s10, t1
                  xori         a1, s9, 863
                  srl          s6, t2, sp
                  auipc        a3, 95417
                  andi         s2, a5, 1186
                  sltiu        a0, t2, 563
                  sll          sp, t2, a3
                  nop
                  sltiu        sp, t6, 1762
                  slli         sp, s9, 3
                  sltu         s3, s3, ra
                  xor          s2, t6, a0
                  sra          ra, tp, gp
                  sra          zero, a6, t4
                  srli         t1, s8, 21
                  andi         a5, s5, 1607
                  sra          s2, s2, s4
                  sra          t1, s8, s2
                  slt          zero, a1, tp
                  slti         a4, t6, 499
                  auipc        s2, 200042
                  nop
                  srai         s5, s11, 13
                  ori          s3, a6, -1418
                  sra          a5, s4, s7
                  slti         a1, s1, 766
                  srli         a2, s11, 9
                  srai         s2, s9, 9
                  slti         t4, sp, -968
                  and          a2, t6, a2
                  sub          t5, t6, a6
                  and          a0, sp, s0
                  xor          zero, a1, sp
                  sra          a0, t1, s1
                  slt          ra, s6, t1
                  addi         ra, s1, -777
                  xori         t1, s9, 398
                  slti         t6, a1, -1076
                  srli         s11, t5, 16
                  lui          s5, 598741
                  sra          t5, s10, ra
                  addi         a0, s11, 1171
                  sra          s6, a5, s11
                  or           s0, s5, a4
                  nop
                  slli         a6, s10, 17
                  slli         gp, s8, 27
                  sub          t2, a3, s6
                  nop
                  xori         a7, s4, -1543
                  andi         tp, t6, -233
                  add          s0, zero, a4
                  srl          s3, t1, a4
                  xori         sp, t0, -1929
                  or           t5, s6, sp
                  nop
                  auipc        sp, 684687
                  slti         t1, tp, 1289
                  auipc        a4, 757211
                  slt          a0, a1, s7
                  srli         zero, a7, 10
                  ori          a6, t4, 930
                  srai         s9, tp, 10
                  addi         s3, a2, 1556
                  add          t4, s2, s5
                  add          tp, a6, s3
                  srai         tp, a1, 18
                  srli         s9, t1, 14
                  ori          s3, s9, 1250
                  ori          t5, a4, -5
                  srai         s7, s9, 6
                  sub          a2, a7, a2
                  nop
                  nop
                  slt          t6, t1, s5
                  slti         t2, a3, 1434
                  slti         t1, a0, 1620
                  and          t3, s11, s7
                  slti         ra, s5, -926
                  sll          a7, s9, t1
                  sll          s0, zero, t3
                  sltu         a6, s8, s5
                  auipc        zero, 904633
                  or           a0, s10, a2
                  sltu         t1, s9, s6
                  srli         s7, s2, 2
                  slli         tp, sp, 29
                  srai         a5, a5, 29
                  xori         a1, a3, 1126
                  xori         s5, a4, -1954
                  sra          s3, a6, s5
                  sra          a3, a5, t1
                  nop
                  sltu         s3, tp, tp
                  addi         ra, a0, 1812
                  srai         zero, a4, 17
                  srai         a6, tp, 18
                  addi         s10, a4, -547
                  nop
                  andi         a4, gp, 1397
                  li           t3, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           s7, 0x10813677
                  li           s10, 0x0
                  li           sp, 0xffffffff
                  li           a3, 0x80000000
                  li           t1, 0x0
                  li           s3, 0x80000000
                  li           a5, 0x439b6854
                  li           t6, 0x7830d698
                  li           s11, 0xbcec3abc
                  auipc        s3, 668308
                  auipc        a5, 929992
                  add          t3, t1, t1
                  auipc        s11, 634033
                  sub          t3, t6, s7
                  nop
                  addi         t1, s10, -1097
                  auipc        s3, 91260
                  auipc        t3, 159424
                  auipc        t1, 976898
                  addi         sp, sp, 273
                  sub          s7, a3, t3
                  add          t3, a3, a5
                  add          s3, t3, s7
                  lui          a5, 590824
                  addi         s7, s10, -102
                  add          a5, s10, t3
                  auipc        s11, 755645
                  addi         a3, a3, 1340
                  add          s7, a5, s11
                  lui          t3, 274422
                  nop
                  auipc        a3, 501515
                  lui          s10, 451170
                  sub          a5, a3, t6
                  add          a3, s7, t1
                  sub          t6, t1, t6
                  sub          s11, s3, s11
                  auipc        t6, 712011 #end riscv_int_numeric_corner_stream_16
                  sltu         s6, t5, s4
                  slt          s4, s8, t4
                  slt          s11, s3, a6
                  auipc        s9, 799200
                  sub          a4, a1, zero
                  sll          a1, s11, t1
                  sltu         t1, s0, s10
                  sltu         s3, a0, s8
                  and          s6, zero, zero
                  slti         s6, a0, -1873
                  sub          zero, s5, t5
                  slt          s5, zero, t1
                  srl          t5, s11, a6
                  and          t3, s2, sp
                  slli         a4, a6, 29
                  andi         s5, a6, 444
                  add          a5, s0, t1
                  srl          s7, zero, a5
                  xori         s0, s9, -922
                  or           t2, a6, s9
                  auipc        t2, 660967
                  auipc        t3, 458670
                  xor          t3, t4, s4
                  lui          a1, 642912
                  addi         t6, a3, 460
                  add          zero, t4, ra
                  srli         s6, s5, 23
                  sub          t3, s1, t2
                  sltiu        a2, a2, -486
                  slt          sp, s6, s11
                  sltiu        s3, s9, -1619
                  xor          tp, s1, sp
                  add          s6, ra, t1
                  slt          s6, a5, s4
                  sltu         a5, t2, s10
                  or           ra, s5, s6
                  srli         t3, s10, 11
                  nop
                  or           s9, t0, t0
                  srai         t6, t4, 26
                  srli         a6, s6, 29
                  slli         t1, a2, 10
                  and          t4, t4, s1
                  andi         t6, sp, 1983
                  srli         tp, s9, 0
                  xori         t6, a7, 1491
                  srli         t1, t6, 7
                  andi         s0, s6, 1412
                  sltiu        t3, s0, -558
                  xor          a7, s8, t6
                  addi         s6, s8, 1904
                  andi         tp, ra, 17
                  and          s11, s8, ra
                  sra          ra, a5, a1
                  sltiu        s11, t2, -296
                  sra          tp, a3, s5
                  sub          s2, s1, s2
                  srli         sp, a2, 4
                  slti         gp, a5, 593
                  or           s10, t2, s5
                  addi         t5, s7, -340
                  nop
                  nop
                  slli         s10, s0, 19
                  sub          a1, s7, s6
                  sltiu        a5, t5, -1437
                  sra          a3, a6, a0
                  sltu         gp, s5, gp
                  slt          a0, s11, a2
                  xor          s2, t5, tp
                  and          t5, t5, s2
                  slt          s6, t6, s7
                  add          s11, t0, t4
                  slli         zero, s7, 26
                  slli         t2, a7, 26
                  and          zero, gp, t1
                  or           a3, zero, a4
                  sub          t6, a7, s11
                  andi         s10, s10, -1975
                  sll          a5, t2, a2
                  slli         a2, s10, 11
                  sub          s7, s2, t4
                  add          s5, a5, a4
                  xori         t5, s0, 1259
                  ori          s0, gp, 802
                  srai         t4, t0, 13
                  add          s3, t0, s9
                  xori         a0, sp, 537
                  slti         s7, tp, -1821
                  auipc        a7, 811001
                  sub          s7, t3, s2
                  sub          s7, s1, t0
                  lui          t2, 828677
                  xor          s9, s11, s6
                  nop
                  and          s7, a7, tp
                  slti         ra, gp, -1500
                  slli         s6, t0, 3
                  add          a2, s2, s2
                  srl          t4, t6, s4
                  lui          sp, 63785
                  ori          ra, s9, 1779
                  xor          s7, t1, s7
                  ori          a5, t5, 1322
                  or           tp, s5, t3
                  sub          gp, s4, tp
                  auipc        s4, 702631
                  srl          s0, s5, t3
                  srai         a3, a0, 16
                  srai         a1, s0, 9
                  slli         s0, t6, 17
                  srai         s5, t1, 9
                  slli         s4, zero, 14
                  sll          s6, s1, s10
                  slt          s10, s1, s7
                  auipc        s10, 863294
                  xori         s6, t5, -4
                  ori          s10, s8, 44
                  sltiu        gp, ra, 135
                  or           s11, sp, a1
                  ori          s6, s1, -850
                  addi         s0, s9, 143
                  slti         a0, a5, 2003
                  and          s10, t5, tp
                  slli         t2, a6, 16
                  add          t6, s10, tp
                  xor          a5, s4, s2
                  slli         t2, t4, 28
                  sra          s6, a0, s5
                  ori          ra, a3, 642
                  srl          a6, s6, t5
                  xori         s7, s8, -586
                  andi         s9, a4, -1181
                  auipc        a6, 216730
                  or           t1, s4, a0
                  sub          a1, s11, s10
                  srai         a6, a2, 3
                  sltiu        gp, a0, 1485
                  addi         s0, s11, 502
                  slli         s4, a3, 16
                  lui          sp, 591652
                  srl          t4, gp, s11
                  sra          s0, t2, s9
                  sub          s6, s10, t3
                  and          s3, s11, a5
                  addi         s4, t6, -2023
                  sltiu        a7, s7, -1974
                  sltu         a3, s8, a4
                  auipc        gp, 83902
                  slt          sp, gp, a5
                  auipc        t5, 829686
                  xori         s11, a2, -319
                  and          zero, t2, s5
                  sll          s5, t3, t0
                  addi         zero, s3, -540
                  nop
                  srai         s2, tp, 14
                  srai         a5, s4, 9
                  or           s9, gp, gp
                  andi         s5, ra, -871
                  sub          t5, a3, s10
                  ori          zero, s2, 1524
                  sll          t2, s0, a4
                  sltu         t5, a3, ra
                  nop
                  nop
                  slti         zero, t0, -907
                  and          gp, s11, a4
                  and          t2, tp, a5
                  slli         t2, a5, 13
                  xor          s5, a0, ra
                  sra          gp, t2, t3
                  li           s11, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           t1, 0xd0b9874a
                  li           a6, 0x80000000
                  li           t3, 0x80000000
                  li           s9, 0xffffffff
                  li           s10, 0x80000000
                  li           s6, 0x0
                  li           s0, 0xffffffff
                  li           ra, 0x80000000
                  li           t6, 0xffffffff
                  sub          s10, t1, ra
                  sub          t1, s9, s0
                  addi         s10, s0, 1639
                  addi         t3, t6, 822
                  nop
                  auipc        s11, 453549
                  auipc        s10, 323362
                  auipc        t3, 1021539
                  sub          s11, a6, s0
                  sub          s11, s0, s0
                  add          s9, t3, t3
                  auipc        a6, 849885
                  lui          t6, 515184
                  auipc        s6, 942417
                  lui          ra, 731434
                  addi         s6, t6, 990
                  sub          t3, t6, t3 #end riscv_int_numeric_corner_stream_15
                  addi         s10, s0, -305
                  slt          tp, a6, gp
                  srai         t5, s9, 27
                  sltiu        t2, a7, -1736
                  and          a4, ra, a5
                  srai         a5, a3, 30
                  sltu         s9, s10, s11
                  slli         a6, t6, 18
                  auipc        zero, 474860
                  or           zero, a5, t6
                  ori          a6, tp, -1744
                  addi         t1, s11, 1948
                  addi         t2, t2, 920
                  and          s0, s0, sp
                  sub          s3, s3, a6
                  slt          a7, s10, t0
                  sltu         a3, sp, ra
                  xor          t3, a3, a6
                  slti         sp, s10, -691
                  sll          s4, a0, t3
                  sltu         a7, s5, ra
                  lui          t5, 620247
                  sltiu        s4, s1, 1391
                  sltiu        a0, s11, -219
                  lui          a6, 228016
                  sltu         sp, t1, t3
                  srl          a7, a3, t5
                  xori         s0, s2, 1387
                  srai         a7, s3, 11
                  add          s9, a7, s9
                  or           s10, gp, s4
                  slti         t2, s7, 410
                  srl          s9, t3, a4
                  lui          s10, 929174
                  srli         tp, a3, 10
                  auipc        t5, 16648
                  sltiu        t6, s2, 77
                  addi         a7, s9, 764
                  srli         a2, s6, 21
                  lui          s4, 191937
                  slli         sp, tp, 23
                  ori          s6, s7, 892
                  slti         zero, a4, 468
                  srl          s7, t2, t1
                  andi         t2, s9, -631
                  and          s2, a2, a0
                  addi         a2, s4, -1118
                  or           a3, a4, s9
                  slt          gp, zero, s5
                  sra          t4, s6, a1
                  addi         tp, s4, 1203
                  andi         s3, a2, -733
                  sll          s2, t5, s3
                  slti         ra, a7, -2026
                  ori          s0, ra, -1437
                  xori         sp, tp, 1950
                  ori          a0, tp, 1516
                  srli         sp, s2, 9
                  sll          s5, a2, t1
                  lui          a0, 930351
                  lui          a7, 861829
                  xori         gp, t5, -904
                  and          s10, t0, t3
                  sra          s0, sp, a3
                  sll          a5, t1, s10
                  ori          s0, gp, 1803
                  xor          gp, s8, s3
                  andi         s4, s1, -835
                  srli         zero, t3, 29
                  slti         t5, s9, 1766
                  sll          s11, t4, s2
                  xor          s10, s1, s5
                  sub          t1, a4, a5
                  srl          a5, s5, t0
                  xor          s5, a2, a3
                  addi         s4, t2, -1566
                  addi         t5, a4, 1091
                  ori          zero, t2, -104
                  add          s11, s6, s1
                  slt          t3, tp, a3
                  slt          a7, gp, t1
                  slt          t6, a1, a2
                  add          s9, ra, gp
                  sltiu        a5, a5, -1343
                  slli         s11, s11, 5
                  sltiu        gp, s5, 1485
                  addi         s0, t5, -512
                  sltiu        s10, tp, -208
                  sub          s7, t4, t0
                  sltu         a7, a3, t2
                  srli         t6, s7, 14
                  srai         a7, t6, 8
                  sub          s7, sp, s10
                  nop
                  lui          a4, 508068
                  xor          s4, a5, s9
                  or           t5, a5, t0
                  and          t5, a2, t0
                  srli         s6, s9, 22
                  srai         a5, s1, 27
                  xor          a0, t2, sp
                  or           s0, s6, ra
                  xor          zero, s0, t1
                  lui          t3, 691859
                  addi         a1, t3, 681
                  slti         a3, s4, -1564
                  slt          s5, tp, t0
                  sll          a5, t4, a6
                  nop
                  sra          t5, a3, s3
                  lui          t5, 282903
                  addi         s3, a5, -764
                  ori          sp, s6, -1857
                  sll          a1, a3, a3
                  sub          t4, s2, t3
                  andi         s0, a0, 171
                  srai         a5, t2, 5
                  sub          a0, a6, tp
                  or           s11, a6, s8
                  auipc        s5, 960706
                  lui          ra, 1044099
                  sub          a1, ra, a2
                  xori         t6, a0, -1815
                  add          t4, a6, s0
                  slti         s7, tp, -167
                  sra          s4, s2, t2
                  or           a6, a0, t5
                  sub          gp, sp, t6
                  srai         a3, s11, 31
                  or           a2, ra, a3
                  sll          gp, ra, a5
                  and          t1, a4, a5
                  xor          s4, sp, s0
                  addi         s2, a4, 158
                  slt          s7, s1, a4
                  add          s11, gp, a5
                  auipc        a7, 423752
                  slli         tp, t1, 5
                  sra          a3, t5, t4
                  sltiu        ra, s10, -34
                  or           t3, a5, a1
                  sra          t3, s4, a1
                  nop
                  srai         a6, a0, 17
                  slli         s3, t5, 9
                  andi         s0, t1, 805
                  slt          a4, a1, t2
                  ori          s4, s4, 1634
                  xor          s9, a5, s10
                  and          s5, t2, sp
                  and          s0, t2, s6
                  nop
                  srai         sp, a2, 1
                  srli         ra, s2, 17
                  or           s3, a3, sp
                  add          t2, s3, s7
                  sltiu        t3, s10, -1510
                  slti         s6, s9, 1166
                  srl          s0, s2, gp
                  sltiu        s4, t5, 853
                  ori          s7, a3, -700
                  or           t2, zero, sp
                  or           a5, a1, tp
                  nop
                  xori         a6, zero, 606
                  srli         a1, tp, 15
                  sra          ra, a1, s7
                  ori          s11, t1, 266
                  xor          s4, s4, t3
                  srai         zero, t0, 13
                  sra          s11, s1, s6
                  ori          s0, a0, -90
                  srl          s4, a7, a7
                  srli         a7, zero, 23
                  nop
                  and          t6, a6, gp
                  slt          zero, zero, a2
                  srli         t3, s6, 31
                  add          sp, s8, a6
                  slli         tp, s3, 30
                  andi         s7, sp, -668
                  addi         s10, tp, 597
                  nop
                  xor          t1, a2, t0
                  lui          sp, 559308
                  or           s10, s10, s9
                  auipc        a0, 492506
                  and          a2, s11, a0
                  xor          sp, s11, sp
                  or           s3, gp, s2
                  ori          s6, a5, 1792
                  srai         s5, s1, 25
                  or           zero, a5, a3
                  or           zero, s0, zero
                  sra          t5, zero, a2
                  nop
                  and          s10, s11, sp
                  slt          sp, a1, t5
                  sltiu        t1, sp, 1982
                  add          ra, s4, sp
                  slli         a6, t1, 30
                  nop
                  slli         a0, sp, 2
                  srli         a7, s7, 26
                  srai         a4, s3, 12
                  srl          s0, s9, a3
                  xor          gp, t3, s1
                  xori         a7, a0, 414
                  srai         sp, t6, 13
                  add          t3, t2, t2
                  sltu         t5, s9, t1
                  andi         sp, s8, -932
                  nop
                  lui          t4, 647380
                  sll          s2, s11, gp
                  srl          t3, a3, s5
                  or           t1, s2, s11
                  slli         tp, a2, 16
                  xori         a7, a3, 1560
                  xor          s9, t5, s10
                  slli         a1, s0, 27
                  or           a0, s3, a3
                  and          sp, a1, gp
                  lui          t3, 209227
                  sll          t5, s8, a7
                  nop
                  slt          a5, a0, t1
                  addi         s5, a3, -551
                  add          tp, a6, s1
                  slli         zero, t3, 15
                  auipc        s9, 35097
                  nop
                  nop
                  sub          gp, s10, s4
                  xor          s0, s1, zero
                  xori         s9, a6, -158
                  lui          s2, 275138
                  xori         t2, gp, 1792
                  sll          zero, ra, t2
                  srai         a0, a5, 22
                  add          s7, s3, s5
                  or           a1, zero, s6
                  xori         a5, s4, -376
                  ori          t2, s5, -1616
                  slt          gp, t3, a5
                  sub          s9, s5, sp
                  addi         a0, ra, 875
                  sll          t4, s4, a2
                  sltu         t1, s8, t1
                  sub          tp, t6, tp
                  lui          s11, 231790
                  auipc        s4, 487294
                  sra          s0, a5, t1
                  ori          s7, gp, -1046
                  add          a4, a4, t4
                  slt          s3, a1, ra
                  andi         a2, a3, -517
                  auipc        a0, 346419
                  srli         a6, ra, 11
                  add          t4, tp, t2
                  and          t4, s7, a6
                  slli         s5, gp, 31
                  andi         a7, a4, 1587
                  ori          s6, a0, -1540
                  or           a7, a0, s10
                  sra          a4, ra, tp
                  nop
                  addi         s6, s3, -850
                  sltu         tp, zero, a7
                  srai         a0, s7, 9
                  sltiu        t6, s2, -587
                  lui          t6, 462773
                  andi         s10, s0, 696
                  srl          t4, t3, t3
                  srai         a1, a6, 21
                  auipc        a6, 349000
                  xor          a6, a6, t1
                  slti         s9, sp, -1964
                  srai         t5, a0, 4
                  srai         s7, s1, 2
                  sltiu        gp, s6, 539
                  or           a6, s9, a0
                  sll          zero, s8, t6
                  sra          t4, tp, s0
                  ori          s0, t1, 302
                  xor          s4, s6, t2
                  addi         s0, a5, -2004
                  slt          s6, s8, t1
                  ori          s11, a0, -1170
                  or           s4, s10, s2
                  srli         a0, a5, 5
                  sltiu        t2, a0, 97
                  slli         s4, a2, 29
                  sltu         gp, t2, a6
                  xor          a2, a1, s5
                  slli         s2, t6, 31
                  lui          a3, 152246
                  xor          s2, t0, a2
                  sub          s0, a5, t2
                  ori          s3, s10, -1164
                  xor          s2, t0, s5
                  slli         a7, t6, 21
                  nop
                  andi         a1, a0, 129
                  and          a3, a3, t0
                  ori          s4, s6, -593
                  or           s9, ra, s8
                  slti         a3, a0, 1854
                  nop
                  lui          s5, 844478
                  slli         t4, t6, 15
                  slt          a5, s11, t4
                  slti         a6, a4, 727
                  and          s4, s8, t1
                  srl          zero, s1, s6
                  sub          a4, t3, a7
                  auipc        gp, 22016
                  srl          s10, a2, gp
                  sra          t4, tp, s7
                  slt          s3, s6, s1
                  auipc        a4, 615303
                  srl          zero, ra, a3
                  sra          t6, gp, a7
                  sltu         a0, s0, s11
                  addi         sp, tp, -1310
                  srai         s10, sp, 28
                  ori          a2, s5, -1952
                  and          gp, a3, s11
                  addi         t6, sp, 511
                  srli         a5, s1, 29
                  srai         a7, a2, 23
                  sltiu        t2, s5, -39
                  addi         s2, s5, -213
                  slti         zero, t0, -305
                  srli         gp, a2, 4
                  auipc        a0, 670874
                  ori          ra, s5, -1428
                  sll          a6, t3, s3
                  xor          s11, t3, sp
                  sltiu        s6, t6, -1907
                  slli         s4, t1, 10
                  sltiu        s6, s1, -1541
                  sra          a7, a3, s10
                  sltiu        s9, t4, -614
                  srai         s0, t2, 13
                  lui          a1, 672903
                  addi         s10, s5, -380
                  sub          sp, a4, s10
                  sub          zero, ra, t4
                  and          t1, s11, tp
                  xor          tp, s8, t0
                  sltiu        s9, tp, -1208
                  lui          s5, 419617
                  sltiu        a3, s7, -394
                  lui          ra, 689069
                  srai         s4, ra, 22
                  sub          t2, t4, t6
                  lui          zero, 575379
                  addi         t6, a3, -192
                  sra          s3, tp, s6
                  slti         zero, t3, 1173
                  xor          gp, sp, a7
                  slt          tp, sp, t3
                  sra          zero, s6, gp
                  sltu         s0, a0, t6
                  xor          s5, s3, s8
                  xori         a5, s2, -498
                  srli         a2, s0, 1
                  lui          t6, 820311
                  srai         s7, t5, 6
                  lui          a6, 104229
                  sltu         a2, tp, t4
                  sltiu        t1, a2, 998
                  lui          a4, 235501
                  add          t4, s8, a5
                  xori         zero, a4, -1176
                  lui          s4, 14717
                  xor          sp, a4, gp
                  slli         t6, s3, 27
                  xor          s6, tp, t1
                  or           s9, s2, s3
                  xor          s2, sp, ra
                  and          s2, a2, a0
                  sltu         s3, t3, s6
                  andi         t3, a4, -170
                  auipc        gp, 523664
                  sra          s10, a2, s3
                  nop
                  add          ra, a7, s11
                  slt          a4, s3, s4
                  ori          tp, sp, -212
                  and          s4, s6, s3
                  sub          s3, a4, a6
                  or           a0, zero, s7
                  addi         s7, zero, 1528
                  addi         a4, t2, 1396
                  auipc        ra, 825522
                  lui          s3, 22539
                  sltiu        s0, t6, 603
                  add          s6, t3, s0
                  srli         s11, t1, 20
                  li           a2, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           t6, 0x0
                  li           s4, 0x80000000
                  li           s7, 0x0
                  li           s11, 0xbf70316c
                  li           t1, 0x0
                  li           tp, 0x0
                  li           a4, 0xffffffff
                  li           a1, 0x0
                  li           a0, 0xffffffff
                  nop
                  lui          s11, 977501
                  sub          a1, a4, s11
                  sub          a4, s4, a1
                  lui          s11, 555070
                  auipc        tp, 140377
                  add          a1, a2, a1
                  auipc        a0, 231153
                  lui          tp, 373690
                  auipc        a1, 903987
                  addi         s4, a0, 629
                  lui          tp, 864755
                  add          a0, a0, a0
                  nop
                  add          a0, a2, s11
                  lui          t6, 671330 #end riscv_int_numeric_corner_stream_1
                  srai         t3, t6, 15
                  add          t3, a6, sp
                  xori         zero, t6, -541
                  andi         s5, s7, 436
                  xori         s3, s8, -51
                  xor          t4, s7, ra
                  slli         s6, s1, 12
                  srai         a1, t6, 30
                  sltu         ra, s5, t2
                  and          tp, s4, s9
                  or           a4, a3, t6
                  or           a4, a6, a3
                  auipc        a3, 12078
                  or           t3, t5, a6
                  ori          t1, t1, 1626
                  add          tp, a5, s5
                  sll          t5, gp, sp
                  srli         a2, t4, 15
                  srli         s6, a1, 22
                  or           s4, t3, t0
                  andi         zero, a7, -1361
                  slti         a2, s0, -666
                  slli         s3, ra, 27
                  sra          s7, s5, s2
                  xori         s10, s3, -365
                  addi         a0, sp, -1123
                  andi         s9, a7, -1995
                  sltu         ra, a0, gp
                  sltiu        a0, s0, -167
                  sra          a4, s4, s9
                  xor          t6, s0, zero
                  ori          ra, a5, -1310
                  addi         zero, a5, 1727
                  nop
                  srai         a2, s9, 19
                  srli         t6, s8, 21
                  andi         s11, a3, 1349
                  slt          zero, s1, sp
                  andi         s6, s9, -413
                  sll          s7, s9, s6
                  sltiu        a7, s3, 321
                  slti         s10, tp, 1339
                  sub          s3, a5, zero
                  xor          s11, a1, t3
                  andi         s4, s4, 1847
                  sltu         t5, t1, t0
                  or           a4, a1, t1
                  auipc        s11, 1046093
                  srli         tp, a6, 23
                  sra          s5, a7, a4
                  srl          t6, gp, a4
                  nop
                  sltu         s7, s9, s10
                  slti         gp, ra, -810
                  sra          a4, s9, a6
                  sll          sp, t4, t3
                  xori         sp, a0, -1181
                  srl          t1, t6, s1
                  sltiu        a4, a1, -711
                  srl          s3, t6, sp
                  lui          s11, 36727
                  add          a0, s2, s10
                  addi         t2, t3, 124
                  lui          t3, 970580
                  addi         a0, a4, 1707
                  slt          a7, a6, s6
                  sltiu        sp, s2, -1143
                  and          a5, t2, sp
                  auipc        a5, 786100
                  srai         a6, t1, 5
                  sltu         ra, a6, t2
                  or           t4, s2, s11
                  xori         s10, a0, 1280
                  and          t3, zero, t5
                  slti         t2, a1, -299
                  andi         a6, s2, 1800
                  srai         t6, gp, 28
                  auipc        s10, 1017412
                  slli         sp, s9, 7
                  addi         s7, a0, 596
                  sltiu        a0, a2, -1109
                  srli         a0, a7, 8
                  sltu         s6, s0, t5
                  sltu         s11, t3, t6
                  sltu         s0, a2, a4
                  slli         s6, zero, 7
                  xori         t4, s10, -1487
                  or           s2, s0, t2
                  slli         a0, a7, 4
                  andi         s10, s0, -1608
                  andi         s6, a0, 1333
                  or           a4, a0, t6
                  andi         ra, s1, 317
                  slli         a6, s2, 14
                  slli         t3, a0, 18
                  srai         s5, t2, 11
                  sub          t5, s4, a5
                  andi         t5, t1, -1841
                  srli         a5, s9, 15
                  sra          a1, a7, s5
                  sltu         t3, a7, ra
                  slti         s9, s3, 1626
                  srl          t6, t2, s4
                  nop
                  srl          a1, s11, s8
                  or           a3, a3, t3
                  sra          t3, s9, a5
                  slti         t1, t4, 271
                  sra          a4, a5, s6
                  xori         a5, sp, -1406
                  auipc        s10, 701818
                  or           a0, t6, tp
                  lui          a3, 493385
                  sltiu        s0, t4, -155
                  sra          s11, zero, s1
                  xor          s9, t0, t2
                  addi         a4, t6, -1664
                  slti         t4, a2, 1074
                  addi         a6, ra, 1959
                  nop
                  srli         s3, a0, 20
                  sra          s10, a7, ra
                  sll          a0, a4, a1
                  slti         a2, gp, 1051
                  andi         t1, t5, 1809
                  auipc        a6, 59836
                  slti         s7, a2, 457
                  auipc        s0, 355643
                  sltiu        s9, sp, -1630
                  addi         s7, s5, 152
                  auipc        s0, 545184
                  or           a7, s2, sp
                  auipc        sp, 748196
                  slti         a5, t5, 465
                  sltiu        a4, t5, 1372
                  and          sp, s4, tp
                  or           gp, a2, gp
                  sub          a0, a2, a0
                  sll          s6, a0, a3
                  srli         s11, a6, 7
                  srli         t6, t5, 0
                  xori         ra, zero, 1525
                  addi         s7, a6, 663
                  srai         a5, s3, 21
                  sra          a5, a4, t4
                  srli         s7, t6, 18
                  sltiu        s0, t1, -838
                  slt          a5, a0, t4
                  sll          s2, s1, a6
                  addi         a1, s6, 692
                  xori         a3, t1, 827
                  nop
                  sra          s11, a2, s8
                  sltu         s7, a4, a0
                  srli         s0, t4, 1
                  auipc        s11, 581623
                  srai         a3, s2, 22
                  and          a7, a0, s0
                  and          a1, t1, s5
                  xor          s5, t6, tp
                  andi         t2, t1, 49
                  sub          a7, s6, s5
                  addi         tp, sp, -1601
                  slt          a4, a4, t0
                  sll          ra, t5, s9
                  sub          ra, s10, s7
                  slli         a3, a3, 23
                  sltiu        s9, t4, -261
                  sra          s6, tp, a7
                  ori          tp, ra, 1458
                  andi         ra, s4, 1409
                  sub          t1, t3, t0
                  nop
                  slt          a6, s0, s11
                  slti         t1, a7, -1156
                  srli         s0, s4, 16
                  srai         a2, tp, 19
                  addi         s9, a5, -314
                  slli         t5, sp, 8
                  sra          s11, a4, a3
                  xori         gp, s8, 431
                  xori         s9, a0, -747
                  nop
                  addi         a6, s1, -430
                  srli         a5, s10, 7
                  sub          zero, t0, s9
                  lui          s9, 154472
                  sub          s0, a6, s11
                  srl          zero, s5, gp
                  slli         t2, sp, 16
                  sub          ra, s6, a4
                  andi         a4, s2, 1749
                  srai         tp, sp, 18
                  nop
                  srli         s10, s5, 19
                  srli         tp, s1, 14
                  sub          t2, s2, s5
                  sra          a7, ra, t0
                  sltiu        gp, t2, -1078
                  xor          gp, s6, a6
                  xor          t6, a2, a3
                  sll          s3, a4, t4
                  lui          a0, 941302
                  srli         zero, t1, 23
                  srli         s10, s10, 8
                  slt          s4, t1, a4
                  sll          t3, zero, ra
                  slti         a4, s6, -502
                  or           zero, t1, a1
                  and          t5, t6, t2
                  ori          ra, a0, 1333
                  lui          t4, 963378
                  addi         a6, s0, 1494
                  sltiu        zero, a6, 297
                  sltu         gp, t6, t2
                  andi         s3, t0, -1016
                  nop
                  or           a3, s7, t4
                  srai         s7, s5, 13
                  or           t3, t4, s9
                  and          sp, s4, a6
                  sltu         s10, t1, a0
                  add          s11, s8, a5
                  addi         t2, s5, -1163
                  slt          s7, t5, sp
                  xor          t1, t1, a1
                  sltu         s6, sp, s9
                  sll          tp, a3, s5
                  add          s5, a7, a5
                  lui          t5, 832893
                  auipc        s9, 259374
                  sltu         s7, a1, zero
                  slti         zero, s0, -692
                  xori         t6, gp, 273
                  xor          t1, t0, ra
                  add          a3, a2, s5
                  slti         gp, t2, 2010
                  sltiu        s2, t5, 381
                  nop
                  auipc        t4, 763870
                  and          s3, s7, s3
                  slli         a5, gp, 29
                  xori         a1, t3, -884
                  srai         s0, t5, 22
                  slti         gp, tp, -1957
                  xor          t1, s10, ra
                  sub          s3, zero, t2
                  xor          a4, ra, t5
                  slli         t3, s7, 1
                  sltiu        s2, a4, -1055
                  and          s0, a1, a3
                  srli         a4, s9, 6
                  slti         a7, a0, -1876
                  ori          gp, s8, -345
                  xori         s0, t2, -1785
                  slli         s0, s11, 21
                  nop
                  sltu         a4, s9, a5
                  or           sp, t2, t0
                  andi         sp, s2, -1161
                  sll          a6, a0, s1
                  srai         a1, s5, 9
                  srl          s3, a0, s5
                  sub          tp, a5, ra
                  srai         a0, s11, 0
                  srli         a1, t1, 7
                  ori          a0, s1, 1158
                  or           t2, s7, s10
                  sltiu        t5, a2, -855
                  xori         t6, zero, 858
                  auipc        s6, 453069
                  ori          a6, s1, 452
                  srl          a5, a2, a7
                  srai         t4, s10, 26
                  slli         a1, a7, 1
                  sltu         a4, a1, s0
                  addi         a6, t0, 344
                  xor          t5, t0, a2
                  slti         t1, s2, -1050
                  or           t2, a1, s1
                  nop
                  auipc        a7, 862211
                  addi         zero, s6, -1604
                  sltiu        t1, s1, -1863
                  sub          s0, t3, s7
                  addi         s0, t6, -903
                  slti         t4, a0, -991
                  sll          ra, s5, t3
                  addi         zero, zero, -109
                  ori          zero, t3, -804
                  xor          a2, tp, t0
                  sltiu        t3, tp, 1039
                  lui          sp, 873182
                  xori         t2, a7, 1471
                  srl          zero, s10, s11
                  sub          a6, ra, t0
                  or           a1, a1, s10
                  nop
                  lui          s10, 465402
                  auipc        t2, 365463
                  slti         t5, t3, 99
                  xor          gp, a5, sp
                  addi         a3, a2, -1684
                  nop
                  sra          t1, ra, a5
                  auipc        t4, 34483
                  slt          a3, a4, t0
                  lui          gp, 330426
                  sltiu        s11, a4, 964
                  and          sp, a0, a3
                  add          t1, t0, s5
                  ori          t3, s7, -1188
                  nop
                  srl          a4, s2, s2
                  sub          s10, gp, s8
                  add          s2, t4, s6
                  slli         s9, zero, 22
                  sltiu        a1, s8, 287
                  sll          t4, a5, a6
                  srli         a3, a7, 11
                  nop
                  and          t3, t6, s8
                  sll          a2, a6, sp
                  and          sp, s1, s2
                  sltiu        s0, s9, 1653
                  slti         s7, s3, -1052
                  add          s0, s8, t2
                  srl          a3, s5, a7
                  xori         s6, a7, -1272
                  ori          tp, t4, 1940
                  srai         s2, a4, 4
                  srl          zero, s2, s2
                  slti         s0, ra, -1006
                  auipc        ra, 613065
                  or           a0, s6, a4
                  and          a7, a7, s8
                  add          s9, a7, a5
                  srli         a4, zero, 25
                  lui          ra, 296720
                  add          s11, t0, a6
                  lui          t3, 1047390
                  lui          s4, 637335
                  sltu         s3, s10, s10
                  add          a4, s4, t2
                  or           s11, gp, t6
                  or           s2, a5, s0
                  sltiu        ra, s10, -1633
                  sra          a7, a6, s4
                  ori          gp, t0, -1701
                  xori         a0, t1, -1443
                  xori         s0, a3, -1438
                  sltiu        zero, a0, -605
                  auipc        s0, 848426
                  xori         t6, s0, 714
                  andi         t4, s7, -1967
                  srl          sp, a3, s0
                  sra          tp, t1, s6
                  or           a0, s1, s3
                  and          s4, a1, ra
                  xori         s6, a5, 1419
                  sra          tp, t4, ra
                  slli         s5, t3, 27
                  srli         s6, s7, 31
                  andi         gp, t2, 112
                  nop
                  sll          a3, ra, s3
                  addi         a2, t3, 545
                  sltu         s0, t4, a0
                  sll          tp, s4, t2
                  sra          s11, t1, t1
                  ori          s10, t6, 1954
                  and          gp, t3, a4
                  and          s5, a2, a4
                  slti         zero, t0, 483
                  and          s10, ra, s8
                  or           a6, a4, a4
                  srai         s10, s6, 14
                  add          ra, a0, s10
                  sltu         ra, s3, t1
                  xor          s6, s9, s4
                  addi         s7, s7, -646
                  slli         s0, s6, 6
                  auipc        a6, 176225
                  sll          t6, sp, s2
                  srl          s9, a7, t1
                  srli         s7, sp, 7
                  sra          t4, s1, s10
                  sll          a1, a6, s0
                  ori          ra, a4, -349
                  addi         s9, zero, -1531
                  add          a3, s6, s7
                  srl          s0, t6, sp
                  auipc        a3, 279732
                  lui          zero, 958500
                  andi         s9, s5, -2038
                  and          s6, t4, t4
                  srl          a2, t5, zero
                  and          t2, s7, zero
                  xor          zero, t1, a3
                  nop
                  xori         t4, s5, 670
                  srai         s9, s3, 7
                  srli         t1, t2, 0
                  xori         t6, s6, 1953
                  add          s0, s11, s10
                  srli         s10, t2, 25
                  sltu         t4, a3, s0
                  nop
                  andi         t6, a3, 1263
                  sltu         a5, s5, a0
                  addi         t5, s4, -1984
                  srli         t2, sp, 8
                  sub          t2, s3, s9
                  sra          s10, s4, a0
                  auipc        t4, 989619
                  srli         s10, sp, 20
                  and          t6, s1, t5
                  or           a4, zero, sp
                  xori         t6, a1, -1562
                  and          a3, a6, a1
                  lui          a7, 256201
                  auipc        a7, 790087
                  sll          s6, s5, tp
                  srl          a6, s4, t2
                  add          a3, s3, a7
                  srl          a3, t2, t0
                  add          t3, s7, ra
                  slt          t2, s6, a2
                  sltiu        t4, s7, -1513
                  ori          s4, t3, -343
                  add          sp, gp, s2
                  sub          s5, t6, a2
                  slli         s10, s4, 21
                  srli         a2, t5, 24
                  addi         s6, a3, -1991
                  or           a7, t2, t0
                  srai         a0, a0, 20
                  sub          s3, tp, s0
                  sra          s4, s3, sp
                  xor          a0, ra, s6
                  and          s6, s5, t3
                  slt          t4, s1, a4
                  slli         a7, t5, 12
                  xor          a7, t1, s4
                  addi         a3, t6, -484
                  slti         a0, a3, -396
                  ori          gp, a4, -1762
                  sra          s7, a7, s1
                  add          a0, t3, s11
                  and          zero, t0, t2
                  sub          t6, a7, s4
                  add          t2, zero, zero
                  lui          t5, 595377
                  slti         s5, sp, 1929
                  addi         s2, s7, 936
                  srli         t6, s1, 1
                  auipc        a6, 931305
                  andi         a2, s7, -1094
                  sra          zero, s3, t6
                  srl          s7, s2, s8
                  slt          t1, t1, t1
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           t2, 0xb54d2f84
                  li           s10, 0xffffffff
                  li           gp, 0x0
                  li           a2, 0x815785a2
                  li           s3, 0xffffffff
                  li           t1, 0xf6f20d48
                  li           a4, 0x80000000
                  li           s5, 0x80000000
                  li           a0, 0x0
                  sub          s3, s2, t1
                  lui          gp, 585
                  nop
                  sub          gp, t1, s3
                  sub          s2, a2, s2
                  addi         s5, t2, -1711
                  auipc        a4, 477177
                  nop
                  addi         s2, gp, -1406
                  addi         a0, a4, -318
                  lui          s3, 94776
                  sub          t1, a2, t1
                  addi         a0, a2, 199
                  nop
                  addi         s5, s2, -1850
                  nop
                  addi         a4, t1, 1109
                  nop
                  lui          t2, 552727
                  lui          s10, 284616
                  nop
                  lui          s5, 3240
                  add          s3, s5, s10
                  addi         a4, t2, 1305
                  lui          t1, 709106
                  addi         t1, s2, 1046
                  add          s2, t2, s5
                  add          a0, a0, s10
                  auipc        t1, 677809 #end riscv_int_numeric_corner_stream_8
                  addi         a5, a3, 1721
                  lui          t1, 353902
                  sll          a1, t3, s4
                  addi         s4, a3, -174
                  andi         s5, gp, -138
                  sra          tp, gp, t5
                  and          t4, t3, s10
                  sra          s5, s5, s11
                  or           s9, t2, ra
                  addi         s9, sp, 1750
                  add          s7, s4, s11
                  xori         a4, gp, -414
                  slti         a0, s5, -1881
                  sra          sp, a6, a2
                  xori         t6, t3, -1574
                  srli         s0, s0, 20
                  sub          zero, zero, t5
                  sltu         s7, a1, zero
                  xor          s10, t0, a2
                  srai         a7, t1, 8
                  add          s5, gp, t3
                  sltiu        t6, a2, -44
                  srai         s5, gp, 22
                  addi         s0, s3, 1127
                  slli         ra, s9, 17
                  lui          a0, 596925
                  andi         a1, t1, 333
                  sll          t2, tp, s4
                  slt          tp, ra, a2
                  sra          gp, a6, s8
                  srli         s9, s5, 24
                  addi         s11, a6, 143
                  lui          s3, 255327
                  slti         t6, tp, -202
                  sltiu        a1, sp, 303
                  srl          a0, s9, t0
                  xor          s2, ra, t4
                  addi         s3, s10, -369
                  and          s7, s8, a1
                  add          t6, a2, t1
                  addi         s4, sp, 471
                  andi         t3, s3, -858
                  lui          a0, 949450
                  slti         s2, s9, 1077
                  or           a3, t4, s10
                  slli         ra, tp, 29
                  xor          t3, t4, s6
                  andi         t3, a6, -1101
                  slt          s0, s2, t4
                  srai         s7, t3, 5
                  slli         t4, t6, 13
                  ori          a4, t2, 1578
                  nop
                  xor          t5, zero, t2
                  slti         ra, t3, 581
                  and          s0, t4, s4
                  slt          ra, ra, a4
                  srai         s3, s6, 26
                  xor          a7, tp, s5
                  slti         t3, a7, 1216
                  nop
                  xori         t3, s8, 1165
                  add          a1, ra, s10
                  lui          t2, 964539
                  srl          t2, s8, s9
                  sra          s5, s6, s4
                  srl          t4, t3, s1
                  xor          t6, t4, a7
                  auipc        s9, 124913
                  lui          a4, 939014
                  auipc        s10, 184029
                  sltu         s3, s3, gp
                  lui          t2, 770287
                  sub          t6, t5, s5
                  slt          s3, s10, tp
                  add          t1, s0, s1
                  or           s0, t1, a6
                  ori          sp, tp, 1187
                  or           sp, s1, t5
                  srl          a3, a4, s3
                  slli         a5, t2, 5
                  srl          t6, a3, s3
                  xor          t2, a5, a5
                  addi         t1, s4, 1202
                  sub          a5, t6, s6
                  lui          a5, 843547
                  addi         s2, a6, -1556
                  sltiu        t6, s6, 887
                  srli         s11, s2, 25
                  sra          s7, s11, t2
                  or           a1, ra, zero
                  srai         a4, s10, 2
                  sltiu        t1, a6, -1639
                  andi         s11, s2, 1153
                  sub          tp, a6, sp
                  slt          t5, a0, a7
                  or           s2, s0, tp
                  ori          a6, a1, -1450
                  addi         t6, a1, 143
                  srl          a3, t5, gp
                  srl          a6, s3, a2
                  xor          t6, a1, s2
                  lui          zero, 798703
                  auipc        s6, 392323
                  slli         zero, t6, 7
                  xor          s4, a4, t5
                  and          a2, s8, s2
                  lui          a1, 95560
                  auipc        a0, 172274
                  addi         a5, t4, -1019
                  andi         s11, s7, 1683
                  xori         s9, tp, -1488
                  and          s4, zero, s4
                  slti         a6, t1, -1650
                  andi         a5, zero, 1964
                  and          a3, s6, s5
                  sll          a3, a7, s1
                  add          zero, s7, t5
                  sra          s3, s10, a6
                  or           a5, s5, s9
                  or           gp, s5, a7
                  sltu         t2, s9, s9
                  sltu         a1, zero, s5
                  sltiu        sp, t6, -1402
                  sub          s2, gp, a1
                  srli         t2, a1, 22
                  slti         s10, t1, 1753
                  add          a3, s11, t0
                  nop
                  sltu         s10, t0, s5
                  and          s10, t0, t3
                  slli         s4, tp, 11
                  slti         s5, t4, -30
                  add          t4, t4, t1
                  xori         s0, a4, 2012
                  srli         a4, s7, 9
                  sra          t4, s6, a4
                  or           a1, t1, s1
                  sll          s0, t6, s8
                  xor          s2, t0, s5
                  srai         gp, zero, 15
                  xori         zero, s9, 1092
                  or           t5, s7, a7
                  ori          a7, a0, -237
                  addi         s2, s10, 1856
                  srli         a2, s1, 19
                  or           s4, t5, t2
                  li           a0, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           s3, 0xffffffff
                  li           t2, 0xffffffff
                  li           s7, 0x80000000
                  li           s4, 0x80000000
                  li           a3, 0x9a2d00a7
                  li           t6, 0x0
                  li           s6, 0xdc7008e8
                  li           s0, 0x80000000
                  li           s11, 0x80000000
                  sub          s7, s11, t6
                  nop
                  nop
                  auipc        s4, 254955
                  nop
                  add          t2, a0, s3
                  lui          s4, 395169
                  lui          s0, 199632
                  auipc        s6, 446281
                  nop
                  nop
                  nop
                  nop
                  nop
                  lui          s11, 664080
                  nop
                  lui          t6, 509176
                  nop
                  auipc        s11, 741459
                  auipc        t6, 365468
                  sub          a0, a0, s6
                  nop
                  sub          a0, s4, t2
                  add          s7, s6, t6
                  addi         t6, s0, -1858
                  addi         s3, s7, 123 #end riscv_int_numeric_corner_stream_11
                  sltu         tp, s8, sp
                  slti         s4, a7, -1653
                  lui          t3, 856904
                  slti         s11, s6, 1199
                  sltiu        sp, tp, 1069
                  xori         a6, t3, -1697
                  ori          ra, s7, 1484
                  slti         t5, s8, 1969
                  add          t6, t6, t4
                  srl          a7, zero, s9
                  xor          s2, t3, s2
                  slti         a6, t2, -1980
                  srli         gp, s7, 0
                  xori         a7, s1, -1128
                  srl          s9, a7, t2
                  srli         s10, t0, 20
                  addi         a6, t1, 806
                  srl          a1, s0, s9
                  sll          a7, s10, a1
                  srli         a0, a6, 27
                  slt          s7, s8, s6
                  slt          s3, s3, a0
                  sub          s4, t2, t5
                  xori         s0, a3, 638
                  andi         tp, s2, 291
                  xor          s10, s11, s8
                  auipc        s0, 867437
                  slli         a2, sp, 0
                  sub          s7, gp, s6
                  xori         s2, a1, -369
                  sra          s5, tp, s8
                  addi         s9, t0, -269
                  lui          s3, 895618
                  sub          a7, zero, s4
                  li           s11, 0xd9c4ca55 #start riscv_int_numeric_corner_stream_14
                  li           a5, 0x0
                  li           s9, 0xffffffff
                  li           gp, 0x0
                  li           s0, 0x80000000
                  li           s10, 0xffffffff
                  li           s6, 0x80000000
                  li           a7, 0x80000000
                  li           a2, 0x0
                  li           t1, 0xffffffff
                  sub          s9, s0, s6
                  auipc        t1, 609328
                  auipc        s6, 221582
                  sub          a7, a2, s9
                  auipc        a5, 480678
                  addi         a7, s11, 1519
                  nop
                  add          a7, a7, s9
                  nop
                  addi         a5, gp, 1265
                  add          s9, t1, a2
                  sub          s10, s11, s0
                  addi         s0, s6, 1184
                  lui          s10, 727208
                  auipc        gp, 661071
                  sub          s0, a5, s11
                  sub          s11, s6, s9 #end riscv_int_numeric_corner_stream_14
                  addi         a4, a3, 1479
                  sra          t5, s1, a7
                  slt          s0, t4, a0
                  srli         t5, t6, 4
                  xor          t6, t4, a5
                  or           sp, s7, s7
                  and          s5, s9, s2
                  auipc        t6, 606043
                  ori          t2, s10, 1680
                  sll          s3, s5, s10
                  and          a0, s5, s3
                  nop
                  srli         a7, s11, 7
                  sltu         a6, t2, s10
                  add          t6, t1, sp
                  nop
                  srli         t6, s0, 21
                  andi         a1, s8, -242
                  add          s6, t5, t0
                  srl          s4, s7, s0
                  ori          a7, a2, 1495
                  srai         zero, s1, 28
                  andi         tp, gp, -554
                  auipc        a6, 1041926
                  sltu         t2, a4, s3
                  add          a5, s0, a7
                  sra          s0, t2, gp
                  srai         t1, s6, 23
                  or           s6, a1, s6
                  sub          gp, gp, t2
                  or           s4, s1, sp
                  sll          t2, a7, a0
                  add          s9, s9, ra
                  addi         tp, a1, -1331
                  sra          a6, s9, ra
                  nop
                  sub          t1, t0, sp
                  sub          a5, t4, a1
                  sra          s6, s11, t6
                  nop
                  sltiu        a3, t3, 1030
                  slli         gp, s2, 18
                  sub          a1, s8, s3
                  sltu         a7, ra, a5
                  sltu         s6, a5, t0
                  slti         ra, s6, 1842
                  sll          a7, a4, sp
                  addi         a1, a4, -995
                  or           zero, zero, t3
                  andi         s11, s11, -252
                  xor          s5, t2, s0
                  srl          a3, a4, s7
                  xor          t6, a4, t3
                  slti         s3, a2, -76
                  srl          s11, a0, s0
                  addi         a7, s0, -1296
                  nop
                  slli         t6, s11, 20
                  xori         ra, t0, -1082
                  nop
                  sub          a0, t1, a5
                  sra          tp, a1, s9
                  srl          t3, a7, s0
                  srli         s4, a2, 14
                  add          t5, t4, t6
                  srl          a1, ra, s6
                  sub          zero, t2, s3
                  srli         s4, s2, 17
                  slti         ra, ra, -1496
                  sll          a5, t0, t1
                  addi         gp, t4, -1399
                  slti         s0, s4, -1669
                  nop
                  sra          s3, s1, ra
                  sub          s11, tp, a5
                  slt          t3, a6, s2
                  ori          s6, a3, 911
                  add          s2, a6, a6
                  or           sp, zero, t1
                  and          ra, t1, a4
                  ori          s6, a5, 678
                  auipc        t2, 141668
                  xor          zero, a1, tp
                  sll          a0, s4, a0
                  or           s5, a4, t2
                  or           t3, s8, zero
                  slt          gp, sp, s8
                  sltu         gp, s10, a7
                  lui          a1, 766390
                  srai         t3, a4, 4
                  andi         ra, a1, 1247
                  sltiu        zero, a6, -776
                  auipc        t1, 140797
                  nop
                  sra          a7, s2, tp
                  andi         s11, s4, 1945
                  slti         t2, a2, 467
                  slt          gp, t0, sp
                  slt          s3, s8, ra
                  sltu         a0, s6, t1
                  srli         s2, t3, 30
                  add          t5, s10, a7
                  slti         ra, s5, 713
                  sll          t6, t5, a5
                  or           t1, gp, a7
                  nop
                  srai         ra, a2, 1
                  sra          zero, a4, t4
                  sra          s2, a7, t6
                  andi         t4, s5, -221
                  sra          s9, a6, t3
                  xori         t6, s1, 1832
                  ori          s4, a5, -1091
                  and          gp, a2, t1
                  srli         a7, s11, 31
                  slti         ra, a5, -1895
                  xor          a1, s3, a0
                  lui          a4, 745591
                  xori         s5, sp, 736
                  addi         zero, a6, 344
                  xori         t4, s9, 991
                  ori          s6, s10, 2026
                  sub          a0, a0, t4
                  ori          t1, a0, -1354
                  nop
                  srai         s2, s9, 29
                  andi         t5, s7, 1902
                  srai         s6, t3, 23
                  auipc        t3, 378724
                  slti         a5, a5, -882
                  srai         t2, sp, 11
                  srai         a0, a1, 28
                  and          s3, a1, s2
                  srl          s6, t2, s5
                  xor          s4, s10, t0
                  srli         a0, zero, 12
                  slt          t1, s8, t4
                  slt          a1, s4, s9
                  nop
                  sra          s10, s11, t1
                  xori         s4, t1, 1848
                  slli         zero, sp, 16
                  slli         t4, s0, 26
                  srl          a2, t6, a7
                  xori         t1, zero, -1984
                  slli         t6, t4, 30
                  sltu         tp, a6, zero
                  sra          a6, s6, a1
                  addi         s2, t1, -1013
                  sra          ra, s5, ra
                  xori         t3, s8, 1105
                  add          sp, a6, t1
                  addi         a1, a5, -1423
                  slt          s5, t1, s11
                  sltu         s2, a1, s10
                  slli         ra, s10, 24
                  ori          s9, s6, -1520
                  srai         s0, a7, 26
                  sltiu        zero, s11, -564
                  nop
                  srl          s3, s10, s7
                  ori          s11, s8, -205
                  slli         s6, a0, 18
                  ori          a0, t2, -862
                  xori         a2, zero, -130
                  xori         t5, a7, -656
                  and          a5, a1, s0
                  xor          t3, t5, t0
                  lui          s5, 286375
                  sltu         a1, t1, t0
                  xor          s5, s1, a0
                  slti         t5, s3, 1107
                  ori          a7, s9, 659
                  and          a3, gp, s9
                  addi         ra, s8, -1706
                  sltu         s3, a4, s3
                  sub          s6, a5, t1
                  lui          t4, 637580
                  srai         t5, t0, 30
                  lui          t3, 497140
                  slli         s4, s6, 17
                  srai         s0, sp, 22
                  xor          a4, a4, t4
                  andi         t2, a3, 1474
                  xori         a1, s7, 1178
                  sltu         zero, a2, t4
                  sltiu        t5, s11, 775
                  nop
                  sltu         t5, t0, t3
                  sltu         t1, a6, a0
                  slt          s10, s1, t2
                  slli         tp, a7, 18
                  ori          t1, s5, 157
                  sltu         zero, s7, a5
                  and          s5, s1, sp
                  nop
                  nop
                  sub          t3, t5, tp
                  xori         a1, s4, -957
                  sltu         s9, a5, s5
                  add          s11, a1, a0
                  addi         t2, t0, 1160
                  add          a4, a2, a5
                  sltu         t1, s10, s10
                  srai         t4, t4, 5
                  add          t2, s10, a0
                  srai         ra, s9, 18
                  sltiu        a2, a4, -916
                  andi         t4, s1, -1837
                  sub          s11, s4, s5
                  srai         t5, t4, 17
                  nop
                  xori         gp, a3, 650
                  sltu         s9, a2, tp
                  sll          a3, a5, s3
                  xori         a4, t0, -335
                  and          a5, a6, a6
                  auipc        a2, 459751
                  xori         s11, a2, 1339
                  sltu         zero, t0, s8
                  sub          a5, s1, a0
                  ori          s9, a0, -1952
                  slt          s11, a6, a7
                  sub          a3, a7, zero
                  addi         t2, sp, 500
                  addi         t3, t4, -1229
                  sltu         a5, a5, t4
                  srli         a6, t1, 15
                  sltu         t3, a4, s6
                  addi         t4, s11, 738
                  sub          a6, ra, a2
                  slt          t6, t0, s11
                  ori          s3, sp, -1998
                  sll          t3, sp, t4
                  srai         s6, s10, 4
                  add          a3, s0, s9
                  sra          gp, sp, gp
                  add          gp, a5, a7
                  nop
                  add          a2, t2, s1
                  add          a5, s6, s2
                  srli         s5, t4, 25
                  auipc        a0, 684522
                  sll          a1, s8, s2
                  slti         a2, t5, 606
                  add          s0, s9, s5
                  add          t6, sp, t1
                  or           zero, a2, a3
                  sltiu        t3, t4, -1368
                  add          s9, a5, gp
                  nop
                  srli         t6, t4, 2
                  ori          a6, t4, -891
                  nop
                  sub          a6, a7, a4
                  and          a7, a3, s10
                  sll          s10, s3, t3
                  sra          s5, s6, s11
                  auipc        t6, 653757
                  slli         a0, s9, 29
                  auipc        t2, 38749
                  or           a6, s7, a5
                  sltu         a5, s5, a1
                  add          s9, s5, s10
                  sub          a3, s0, a4
                  lui          a3, 662754
                  and          t4, a4, s8
                  sll          tp, t4, zero
                  srli         sp, s10, 23
                  add          t6, s5, t5
                  slt          tp, a7, s2
                  lui          t6, 730158
                  slti         a4, a7, 1889
                  sltu         s9, tp, s0
                  add          a7, a7, ra
                  sll          tp, t5, t2
                  sll          s4, a6, sp
                  sltu         tp, s9, s10
                  and          s7, a0, s4
                  nop
                  srai         sp, a5, 27
                  srai         s5, s7, 4
                  sltiu        s10, s3, 996
                  xor          ra, t3, s5
                  add          a2, s3, a7
                  xori         gp, a1, -930
                  ori          s5, ra, -1900
                  and          s5, gp, a6
                  xori         a3, s0, -299
                  sltiu        a6, s1, 1360
                  srai         s11, s3, 6
                  sltu         s9, t2, a6
                  slli         a3, s7, 22
                  sltu         s5, t0, a1
                  auipc        t6, 638163
                  sltu         t5, s10, t6
                  ori          s7, a3, 507
                  ori          s11, t0, 985
                  slt          s10, s6, s0
                  lui          t6, 299164
                  slt          t4, ra, t5
                  srai         t3, s10, 26
                  srli         a6, s2, 13
                  or           s3, a2, s4
                  ori          tp, t2, -700
                  or           s7, t3, a6
                  srli         a2, t6, 1
                  or           t4, s6, t2
                  ori          a0, a7, -1300
                  andi         s10, a3, -1606
                  slli         t5, a7, 7
                  ori          s7, t1, 1000
                  slli         a4, s0, 8
                  add          a5, s11, a1
                  slli         a2, a3, 14
                  slt          a0, a4, t6
                  lui          s10, 145515
                  slti         t2, t2, -214
                  slti         t6, s5, 569
                  srl          zero, a2, s1
                  or           s6, t1, tp
                  xor          s6, a1, s8
                  auipc        gp, 688275
                  slti         s6, s6, -1417
                  sra          sp, s0, t1
                  srli         s5, a7, 13
                  or           sp, t0, t5
                  sra          s3, a3, sp
                  nop
                  or           t6, t1, ra
                  or           t5, zero, t2
                  ori          t2, t6, -1743
                  ori          s3, a7, -1559
                  nop
                  sltu         a1, s0, zero
                  sub          s2, a1, a0
                  or           s5, a5, s3
                  sltu         s6, s11, a3
                  sltiu        t4, s3, -746
                  sll          s5, t1, t2
                  and          s5, a2, t2
                  and          s4, t4, s0
                  addi         a2, a6, 767
                  srl          sp, t0, a0
                  xori         ra, t5, 271
                  sll          tp, sp, gp
                  srai         a2, a1, 9
                  srli         s6, t4, 30
                  sub          t6, t2, gp
                  andi         t4, sp, 1885
                  sltiu        t4, a1, -1007
                  andi         a1, a2, 687
                  slli         a7, t5, 0
                  nop
                  slt          s3, a5, sp
                  andi         tp, gp, -703
                  sll          gp, s8, ra
                  slti         s3, sp, 1369
                  andi         s11, s2, 500
                  or           s3, t0, s5
                  srai         s3, a5, 15
                  slli         s6, a2, 27
                  slli         ra, t4, 17
                  sra          s3, t0, tp
                  ori          s4, t2, 142
                  sub          s9, a1, t2
                  sltiu        tp, tp, -248
                  slt          a0, t2, s10
                  auipc        s9, 305281
                  sll          a7, sp, s3
                  addi         t6, s5, 1636
                  addi         t5, gp, -1302
                  sra          s4, a2, zero
                  sub          a2, a4, s0
                  slt          ra, a6, a3
                  nop
                  sra          a2, s8, tp
                  auipc        s7, 1018955
                  sra          s0, sp, s0
                  andi         a4, a7, 394
                  xori         s11, t0, -1473
                  xori         t6, a1, -1861
                  addi         a7, s8, -1200
                  addi         s11, t1, 1341
                  srli         zero, t4, 0
                  sltiu        s0, gp, -988
                  sltiu        a4, t0, 1761
                  srl          gp, t2, t5
                  sra          ra, s11, s4
                  sll          s4, a2, a3
                  slli         a3, a0, 21
                  and          a7, a5, s10
                  sub          s2, zero, s3
                  addi         a0, a4, -1687
                  ori          t4, ra, 1425
                  sub          s7, a6, s1
                  lui          t3, 976245
                  andi         a4, t4, 377
                  or           a0, s4, a6
                  andi         s2, a3, -1966
                  ori          s6, a2, -1920
                  sra          t3, s8, s4
                  slti         zero, t4, -1071
                  add          a1, t5, a4
                  srai         a7, a7, 7
                  or           t5, s5, t0
                  ori          t1, a3, 719
                  add          s10, s3, zero
                  sltu         s2, a3, s6
                  lui          t2, 875915
                  slti         s6, s8, 585
                  andi         t2, a0, 166
                  srai         s2, a4, 29
                  and          s7, ra, sp
                  nop
                  or           t2, t4, a2
                  srli         s6, s3, 0
                  slt          zero, s6, t3
                  addi         s4, s2, -1209
                  ori          a1, t6, 1991
                  addi         s11, gp, 278
                  srl          tp, s10, gp
                  srli         s0, t2, 18
                  xor          s0, s11, t5
                  srli         s2, s3, 7
                  srai         a5, a7, 11
                  addi         t3, t0, -1545
                  andi         s0, t4, -412
                  or           a0, a0, a1
                  slt          tp, s10, a4
                  add          t1, a3, a0
                  slt          s5, s2, t6
                  xor          tp, t4, a7
                  slt          s9, t4, s5
                  and          t1, gp, a6
                  xor          t1, s4, s6
                  lui          zero, 951055
                  lui          t5, 331148
                  addi         zero, t1, 1846
                  andi         s3, s0, -1102
                  sll          s0, s5, t3
                  addi         t4, gp, 1335
                  sra          s6, gp, tp
                  srl          s5, tp, a6
                  srai         t6, t2, 1
                  srl          t2, s5, s5
                  srai         a0, s4, 1
                  slti         s10, a5, -535
                  auipc        a1, 115392
                  sltu         s2, a0, s9
                  xor          t6, a1, a3
                  xori         s2, s9, 424
                  and          s9, ra, a6
                  srai         a4, s1, 8
                  slt          s10, a4, t2
                  srl          t3, tp, tp
                  srli         zero, t1, 20
                  nop
                  auipc        s11, 559749
                  xor          t2, s4, t0
                  ori          zero, sp, 484
                  srli         a4, t2, 18
                  or           s2, gp, a6
                  lui          a0, 70502
                  sltiu        a0, s0, -1877
                  ori          gp, a7, 504
                  sra          s0, a7, s11
                  sltiu        s3, s10, -457
                  sltiu        a0, s2, -92
                  xor          t6, t5, s11
                  ori          a2, a6, 1978
                  xor          s2, tp, ra
                  sltu         s4, sp, a5
                  sub          t2, a0, t0
                  add          t6, a2, s1
                  add          a6, s6, a2
                  xori         gp, t5, 1040
                  auipc        t5, 465488
                  and          t3, a7, s9
                  ori          a5, s4, -4
                  xori         t1, t1, 1241
                  srai         s0, s4, 31
                  xori         tp, s8, -751
                  addi         t4, t4, 857
                  xor          ra, t2, a1
                  slti         a0, t4, 1273
                  srli         t1, sp, 25
                  srli         s6, a0, 9
                  add          s7, t1, s4
                  andi         a0, s3, -69
                  sub          ra, tp, s0
                  lui          s9, 737726
                  srai         a7, s3, 15
                  srli         a0, s7, 23
                  sra          t2, a6, s6
                  andi         t1, s11, -1237
                  lui          t2, 234141
                  sltu         sp, ra, t1
                  add          s2, a7, s11
                  andi         s4, a3, 1995
                  srl          gp, t0, s7
                  add          sp, t5, s5
                  ori          s4, sp, 999
                  sub          t2, ra, s10
                  ori          a7, zero, -744
                  xori         s7, t6, -774
                  xor          ra, a7, zero
                  auipc        a2, 837805
                  slti         a6, a6, -1119
                  slti         s7, s1, 411
                  nop
                  srai         s2, t1, 4
                  sra          t2, s3, a0
                  srl          s3, sp, t5
                  add          t6, s0, a3
                  srl          s6, zero, a5
                  and          t1, t5, a3
                  auipc        a4, 494123
                  auipc        t3, 370557
                  sll          a2, t5, a1
                  xor          t3, s8, s4
                  sltiu        s9, s1, -943
                  sll          tp, ra, s8
                  slt          a3, t1, a3
                  sra          t1, ra, s2
                  sub          a6, tp, s1
                  addi         s4, a5, -1502
                  srli         s5, s11, 11
                  sra          t4, a3, a7
                  slt          t1, t3, s10
                  srai         s11, a4, 27
                  add          s4, a4, s11
                  sltiu        s7, a7, -654
                  slt          a7, s7, t0
                  sltu         t3, a5, t6
                  addi         s4, t3, 1144
                  auipc        a7, 881632
                  sra          t3, a1, t6
                  add          s2, s6, s11
                  sltiu        a5, tp, -1796
                  ori          s3, a0, 828
                  nop
                  addi         t3, a7, -1523
                  ori          a5, s11, -695
                  addi         t5, s5, -1581
                  addi         s3, t4, -1059
                  lui          t2, 944009
                  srli         t6, gp, 0
                  sltiu        t1, s7, 1691
                  or           a7, a4, a1
                  sll          s9, gp, ra
                  or           a3, tp, t5
                  xori         s10, s2, -877
                  slt          a5, gp, a0
                  auipc        a7, 600924
                  andi         a1, s11, 1958
                  slti         zero, s2, 1045
                  add          zero, t1, sp
                  andi         t4, a1, -1484
                  xor          t3, a7, s11
                  slti         a0, s3, -837
                  ori          zero, s8, 1286
                  lui          a4, 4124
                  add          t1, t0, a7
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_10
                  li           s3, 0x0
                  li           ra, 0x0
                  li           s5, 0x80000000
                  li           a2, 0x80000000
                  li           a0, 0xa5b2f456
                  li           a5, 0x0
                  li           a4, 0x0
                  li           s9, 0xffffffff
                  li           t2, 0xffffffff
                  sub          s9, a0, s3
                  lui          s3, 710225
                  nop
                  nop
                  auipc        a0, 587654
                  nop
                  lui          a0, 893805
                  auipc        t6, 701458
                  addi         a0, ra, -503
                  auipc        a2, 741957
                  add          a4, a2, s3
                  nop
                  addi         s3, a4, 801
                  lui          a2, 896297
                  lui          s9, 926030
                  auipc        t6, 47056
                  add          a2, a4, a2
                  addi         s5, s3, 2028
                  nop
                  addi         ra, s5, 1202
                  sub          s5, ra, ra
                  auipc        a5, 315173
                  addi         ra, a0, 451 #end riscv_int_numeric_corner_stream_10
                  srai         sp, t3, 17
                  andi         t2, s0, 1146
                  addi         t5, s2, -720
                  ori          zero, a1, -1273
                  srai         tp, a7, 23
                  andi         a1, a1, 621
                  or           a1, s3, t5
                  srli         s6, tp, 24
                  add          t1, t5, t5
                  add          t2, gp, s6
                  slti         t5, t6, -241
                  sltu         s10, t1, s11
                  srli         a5, t0, 28
                  nop
                  xori         tp, t1, -631
                  and          s10, t3, t2
                  slti         a0, a4, -489
                  lui          t1, 860625
                  or           a7, a0, t4
                  srli         a6, s10, 29
                  add          s2, a1, a7
                  slti         a3, s2, -264
                  sltiu        ra, t2, -1656
                  sra          s4, s10, s5
                  auipc        a7, 214804
                  slli         s4, sp, 27
                  srli         s0, s1, 25
                  sub          s3, a2, a6
                  auipc        s9, 478451
                  sra          ra, t4, a6
                  sra          sp, s4, t6
                  srl          a1, t0, t0
                  sub          t2, t3, a6
                  slt          t6, a2, a4
                  slt          s10, a3, zero
                  sub          a5, t3, zero
                  lui          s10, 20474
                  and          s11, s9, a6
                  slli         t2, zero, 5
                  sltu         a0, s1, sp
                  andi         s7, s0, 1035
                  nop
                  andi         a2, s11, 201
                  srl          a4, s8, a1
                  srl          sp, a1, s4
                  sra          a2, t6, t3
                  slt          s6, t4, a6
                  lui          s11, 732034
                  and          tp, s3, t5
                  and          a0, t0, a7
                  add          a5, a1, s6
                  nop
                  srai         a5, s10, 28
                  sra          t5, s7, a6
                  auipc        gp, 870564
                  addi         zero, zero, 8
                  srli         s7, s10, 20
                  xor          s10, a1, s11
                  sltu         s6, t2, a4
                  xor          a0, tp, t0
                  auipc        t3, 752229
                  sltiu        gp, s2, -1808
                  slli         a2, t0, 13
                  xor          t4, t4, s5
                  xor          t5, a6, ra
                  sltu         zero, s11, t5
                  srai         s6, a2, 23
                  slt          s3, t3, s7
                  slli         tp, a1, 12
                  srl          s10, s8, a4
                  lui          tp, 946381
                  slt          t1, zero, s4
                  sra          s6, a2, a0
                  srai         s6, s9, 20
                  xori         a6, zero, -296
                  slt          t4, t2, gp
                  srli         s6, gp, 4
                  xor          s0, s3, gp
                  lui          s11, 314270
                  sltiu        s4, a0, 1076
                  xor          t2, gp, s11
                  sltu         a2, ra, s5
                  sltu         a2, s11, tp
                  or           a2, a2, s10
                  xori         t2, s4, 1487
                  lui          zero, 800695
                  sltiu        t2, t6, -2022
                  slli         gp, t0, 23
                  srl          s9, a2, s4
                  lui          t5, 430528
                  andi         a0, a1, 1935
                  sltiu        s0, t5, -648
                  slt          s11, s9, a2
                  xor          s3, s0, t1
                  andi         sp, sp, -1466
                  lui          s11, 376575
                  lui          zero, 83109
                  sltiu        t2, s7, 17
                  addi         s10, s3, 523
                  srai         s9, t4, 12
                  lui          gp, 4423
                  auipc        t6, 30315
                  srai         s11, s10, 3
                  sra          s9, s2, s0
                  xori         gp, s2, 701
                  srl          s6, t6, t0
                  add          s7, sp, s2
                  srai         s3, a0, 7
                  nop
                  sltu         a6, t2, t4
                  auipc        zero, 892549
                  or           tp, a1, t6
                  and          a2, t4, tp
                  add          s0, t3, a6
                  or           s10, s3, a1
                  andi         gp, t4, 435
                  nop
                  nop
                  sltiu        a4, a7, 22
                  andi         s2, t6, 1874
                  add          s3, a5, s9
                  sltiu        t1, t5, -1202
                  srl          t6, s10, s1
                  or           a6, a5, a6
                  ori          s5, tp, 1306
                  slti         t2, s2, -1760
                  sub          tp, s10, t1
                  add          s4, sp, t3
                  sltu         s0, t2, s6
                  or           s0, t3, t0
                  xori         a0, s0, -1877
                  slt          t4, a1, t3
                  ori          s7, s10, -1173
                  nop
                  srl          a2, t1, t1
                  xor          a5, s0, s6
                  srli         s10, t2, 14
                  auipc        t5, 672551
                  slli         s3, s11, 11
                  sltu         s10, a1, s8
                  lui          t1, 836407
                  xori         zero, s3, 1550
                  andi         tp, s6, -545
                  ori          a4, s5, 1918
                  slti         t1, a5, -269
                  add          s2, s10, s0
                  lui          t6, 944552
                  sll          a7, t6, s9
                  addi         s3, a6, 1803
                  slti         s0, a6, -1213
                  xor          s4, t0, t6
                  slti         s10, s10, 2010
                  sub          sp, t5, s3
                  auipc        t6, 768769
                  sra          sp, t4, s3
                  sub          t3, s3, sp
                  sltu         t5, a5, a2
                  sra          s2, t1, a4
                  auipc        s7, 514551
                  andi         t5, s9, 130
                  sub          a0, sp, a7
                  srl          a4, a5, t2
                  srai         s7, s2, 12
                  srai         sp, a1, 11
                  sll          s10, s3, s1
                  ori          zero, zero, -541
                  sltu         s9, s3, t4
                  or           tp, s9, a0
                  lui          s10, 626533
                  ori          a3, zero, -751
                  addi         a5, tp, 1562
                  slli         s3, a7, 8
                  srl          ra, s11, a3
                  xor          s2, a0, a5
                  or           a5, t2, a0
                  sltiu        a0, a0, -1807
                  xori         t3, a0, 1620
                  srli         s5, a7, 25
                  slti         a5, s5, -1971
                  sltu         s2, a0, s6
                  sra          a4, a4, t3
                  sub          a2, t3, s4
                  add          a6, s11, t4
                  andi         s10, a3, 1319
                  srai         s3, tp, 0
                  slti         ra, s0, 1144
                  andi         t1, t0, -1476
                  slt          t6, a0, tp
                  lui          a1, 925210
                  auipc        zero, 230650
                  sub          s5, tp, t0
                  sra          s9, s9, t6
                  sll          s11, t1, t1
                  xori         a5, a3, -1966
                  lui          s5, 146132
                  sll          a4, t6, ra
                  add          t5, tp, s6
                  xori         s5, gp, -1586
                  sltu         tp, s2, a2
                  srli         t6, a6, 17
                  addi         t4, a4, 721
                  addi         gp, zero, 600
                  srai         gp, s9, 21
                  sra          s10, a3, s3
                  xor          a7, gp, a3
                  srli         a1, s5, 12
                  lui          a7, 436738
                  slt          t1, tp, s11
                  sltu         zero, a6, a1
                  srl          sp, ra, s4
                  sll          a7, s6, s2
                  srli         a7, t0, 11
                  andi         s5, t1, -125
                  srli         a3, a1, 8
                  sub          s5, s0, a2
                  srli         a7, t3, 17
                  addi         gp, a5, 1164
                  srli         s0, gp, 28
                  andi         zero, s10, -1216
                  sltu         a1, a3, s1
                  xor          t3, a0, a0
                  sll          t2, s6, s2
                  sub          a5, a5, t1
                  add          a0, s2, s0
                  lui          gp, 76165
                  and          s7, t6, s3
                  auipc        s0, 49145
                  slli         s0, a3, 10
                  sltu         tp, s10, s4
                  slt          a0, ra, a2
                  and          a2, a6, s2
                  add          t3, tp, s1
                  sll          s11, t6, s9
                  slli         sp, s9, 21
                  lui          s2, 360466
                  xori         t2, a4, 1541
                  slt          s5, s1, a7
                  lui          s4, 961458
                  srli         a3, ra, 18
                  slt          t4, t3, a1
                  or           s6, s1, tp
                  or           t2, s9, zero
                  auipc        a4, 381128
                  nop
                  xori         s6, t5, 559
                  auipc        s9, 716597
                  srai         a7, s9, 20
                  lui          s5, 758079
                  slli         a1, tp, 7
                  lui          a3, 101316
                  sub          a6, s7, a2
                  ori          s7, s11, 1944
                  and          tp, tp, ra
                  add          a4, t5, ra
                  sltu         t4, s4, ra
                  slti         gp, sp, -983
                  slt          s3, t0, a6
                  slli         a1, t5, 9
                  slli         a5, t2, 17
                  add          s6, ra, a1
                  auipc        a3, 195762
                  xor          a4, t3, s3
                  lui          a6, 656586
                  sra          gp, s5, s8
                  srai         tp, s6, 2
                  nop
                  sub          t5, t1, s11
                  slli         s11, ra, 24
                  ori          a1, s5, -271
                  sltu         s7, ra, ra
                  srli         s4, a5, 14
                  srli         t3, s8, 24
                  srli         s4, s11, 5
                  andi         a2, sp, 1867
                  xor          s11, a0, s5
                  add          gp, t5, t6
                  srai         t1, s5, 22
                  sra          s10, t4, s1
                  andi         s7, s0, 196
                  or           a5, t0, t6
                  xori         ra, t3, -621
                  sub          s11, s11, t3
                  or           s9, t2, s7
                  sltu         a2, a7, t3
                  slti         gp, s4, 1709
                  sltu         s9, zero, a6
                  slt          t5, s8, s4
                  srl          t4, t1, t0
                  slti         s7, s0, -140
                  or           s6, a1, gp
                  nop
                  xor          a1, a5, a2
                  slti         a1, s3, 1449
                  ori          t6, a6, 386
                  sltiu        a6, a5, 519
                  andi         t6, s3, -1602
                  lui          zero, 378380
                  andi         a5, a0, 223
                  srl          s11, a3, t5
                  sll          s5, s10, a6
                  xori         s4, t6, 549
                  andi         t1, a6, 279
                  xori         s3, t0, 755
                  sltu         s2, a5, gp
                  sra          a3, sp, a7
                  and          t6, a6, s9
                  slli         t4, gp, 17
                  sll          s11, t6, a4
                  slti         a5, sp, 766
                  srai         a4, s5, 0
                  sra          t4, s0, a3
                  xor          t1, s4, t2
                  sra          a4, s9, s2
                  slti         s11, s0, 188
                  srl          s0, tp, a1
                  ori          a0, a5, -1765
                  slti         t3, s9, -1017
                  andi         s11, t5, -683
                  add          zero, a0, zero
                  srai         a2, s2, 13
                  xor          zero, s4, s5
                  sub          a5, tp, t4
                  or           a2, s0, a7
                  or           s5, a2, a3
                  slli         a7, t0, 0
                  sltu         sp, a5, s1
                  ori          s9, a7, 1493
                  auipc        sp, 982998
                  sra          a7, a5, s11
                  xor          s11, t6, ra
                  xor          s0, a0, t1
                  slt          s6, ra, t5
                  or           sp, a5, t3
                  add          s4, t3, a7
                  sltu         s2, a7, s5
                  addi         s6, sp, 192
                  andi         t2, t4, 61
                  srai         t1, a2, 1
                  or           t3, t5, a0
                  srl          s11, t5, s0
                  ori          a6, a4, 1580
                  slti         t6, a5, -1345
                  addi         s10, t3, 61
                  lui          s7, 262755
                  slli         a3, gp, 23
                  slt          a1, s5, s7
                  slt          sp, a1, a1
                  or           a4, a5, a0
                  slli         s9, s11, 30
                  or           t1, tp, t3
                  sltiu        zero, t2, 1944
                  sub          a1, s1, a4
                  srai         s0, t1, 17
                  srl          a2, t2, s6
                  and          ra, s2, t3
                  or           t2, s5, s2
                  sltiu        sp, t3, -2013
                  srai         a3, ra, 21
                  sra          s9, a1, sp
                  srl          a3, s1, t6
                  sltu         t1, s9, a7
                  xori         tp, t6, -218
                  slt          t3, a3, s0
                  sltu         a5, s1, t6
                  slti         sp, s0, -1824
                  slti         t1, s0, -389
                  sub          s0, zero, s3
                  auipc        s0, 1021883
                  add          s5, ra, a7
                  sltu         tp, a6, s7
                  add          a0, s11, t0
                  sltiu        a0, gp, 1333
                  or           a0, t2, t5
                  sra          t5, s8, zero
                  xor          gp, a4, tp
                  ori          t1, a5, 1323
                  addi         a2, s7, -1515
                  sltiu        s7, t3, -310
                  ori          s6, a0, -1034
                  sltiu        s0, s9, 1281
                  nop
                  sub          t2, s5, a7
                  andi         t6, a2, 1981
                  srai         s5, s4, 11
                  slli         sp, a3, 15
                  ori          gp, t4, -306
                  auipc        t4, 135742
                  or           a2, s2, s0
                  and          gp, t0, a0
                  slt          t3, a6, s10
                  slti         s5, s9, -945
                  srl          gp, zero, a6
                  xor          t2, t1, t0
                  xor          gp, s11, s4
                  xor          t6, t0, s4
                  slt          a6, a6, a0
                  ori          s10, s9, -1736
                  and          tp, t6, s10
                  sub          s4, s3, t0
                  xori         s4, s6, 1500
                  srl          t3, sp, zero
                  slt          a5, a5, s5
                  or           sp, t5, t3
                  lui          a6, 1046035
                  sub          t3, sp, a1
                  addi         s5, t0, -1996
                  sra          s4, ra, a5
                  srai         s6, a1, 5
                  or           a5, a0, s3
                  sub          s0, a0, t4
                  sub          s11, a7, s1
                  ori          s10, t1, -969
                  add          s0, t4, t5
                  nop
                  add          a6, s1, a2
                  and          zero, s6, s2
                  auipc        s9, 78692
                  sltiu        t3, s8, 1021
                  ori          t3, a4, 277
                  srai         t1, zero, 24
                  xor          s7, t5, s10
                  and          a2, s1, a5
                  slli         t6, a2, 21
                  lui          s0, 410672
                  slti         s10, t2, -1250
                  ori          a7, s10, 1773
                  sltiu        t6, gp, 1270
                  and          t5, a0, a3
                  andi         a6, s7, -590
                  srl          a5, sp, s8
                  xor          t5, s7, t2
                  auipc        t4, 948804
                  xor          gp, gp, s8
                  sra          gp, a7, s6
                  xor          a2, t5, s0
                  xori         s7, t0, -1033
                  xori         ra, s2, -334
                  xori         t2, a2, 1902
                  add          ra, s3, t5
                  sra          s5, a1, s11
                  srli         s9, s9, 27
                  and          a4, s6, gp
                  sltiu        s0, gp, 473
                  ori          s9, t0, -1931
                  slti         sp, sp, 742
                  sra          t3, ra, a6
                  add          s4, tp, s10
                  srl          a7, zero, t3
                  srl          t3, t6, t3
                  ori          a2, tp, -964
                  and          s4, s3, ra
                  ori          a5, s7, -1771
                  srai         s2, s6, 21
                  srli         t2, s4, 24
                  slli         s6, s2, 31
                  sll          a6, a6, s5
                  slt          s7, s7, s7
                  srli         s11, s9, 17
                  srli         gp, t4, 28
                  ori          ra, s3, 1590
                  srl          ra, gp, s8
                  andi         s11, a7, 153
                  xor          a7, gp, t5
                  auipc        s6, 489338
                  auipc        a1, 354403
                  nop
                  ori          gp, t4, 2
                  slli         a0, tp, 21
                  xori         t3, s4, -380
                  srli         t2, s6, 17
                  andi         t5, t2, 416
                  ori          zero, s8, 669
                  sltu         s0, s6, tp
                  addi         sp, a0, -1222
                  sub          a5, ra, gp
                  srli         s4, t6, 24
                  srai         t1, a6, 20
                  srai         a2, gp, 21
                  sll          t3, t4, s2
                  add          s2, a6, s0
                  andi         a1, a4, 859
                  sltiu        gp, t3, -82
                  srai         gp, s10, 12
                  slti         t1, s4, 1309
                  xor          a3, t4, s6
                  auipc        s9, 207942
                  xori         a1, t2, 961
                  xori         a3, a6, -996
                  or           a0, s6, a3
                  srli         t6, zero, 28
                  slt          s4, a1, sp
                  srai         a0, a2, 3
                  or           a3, s10, s1
                  nop
                  srl          t3, a0, s2
                  slti         t3, a0, 378
                  ori          a2, a2, -1547
                  nop
                  slli         s7, t0, 14
                  ori          tp, s0, 167
                  and          s10, s6, s10
                  addi         a4, s0, 1869
                  lui          a1, 404647
                  nop
                  xori         t1, s9, 639
                  srl          s6, s5, t3
                  slt          t5, a3, t5
                  sltu         s11, s5, zero
                  slt          zero, s4, s0
                  sltiu        sp, s7, 1841
                  xori         t3, t1, -1903
                  auipc        s6, 236190
                  srl          a0, a0, s0
                  sub          sp, a1, s3
                  sll          s3, a2, s2
                  sub          sp, s6, a2
                  slli         a7, s2, 31
                  xori         s10, s10, 140
                  or           t1, s2, s11
                  sra          a7, t0, gp
                  sll          s2, s10, tp
                  srli         a2, gp, 15
                  sll          a6, t4, gp
                  sltu         s6, s7, s10
                  slti         s5, t0, -1180
                  auipc        a1, 706802
                  sltiu        a0, s7, 722
                  ori          t6, s0, -1980
                  sltiu        t4, s1, 740
                  sra          s6, t1, s5
                  sra          t6, gp, s9
                  sll          s4, t3, s7
                  xor          a3, a0, s9
                  ori          s0, s1, -1014
                  or           s5, s5, s2
                  sub          a0, sp, s2
                  srli         s6, gp, 15
                  sra          a7, a2, t2
                  add          s4, s9, s2
                  srli         a7, a6, 6
                  slt          a2, t3, t3
                  add          zero, ra, s1
                  li           a4, 0x872c95a9 #start riscv_int_numeric_corner_stream_0
                  li           sp, 0xffffffff
                  li           s4, 0xffffffff
                  li           s5, 0xe730bdf8
                  li           s2, 0x80000000
                  li           t3, 0x0
                  li           s0, 0xffffffff
                  li           s10, 0xffffffff
                  li           gp, 0xffffffff
                  li           a0, 0x214320a7
                  lui          s4, 398720
                  lui          t3, 696033
                  add          s2, s4, s2
                  sub          a4, sp, a4
                  auipc        a0, 127766
                  lui          gp, 320054
                  sub          s4, s5, s2
                  sub          t3, a0, s10
                  add          s0, s2, s2
                  sub          s5, a4, s10
                  sub          gp, sp, a4
                  add          s10, s10, gp
                  add          s4, s5, sp
                  auipc        s10, 904415
                  addi         s0, s0, -255
                  add          sp, s5, s10
                  nop #end riscv_int_numeric_corner_stream_0
                  and          zero, s8, a5
                  sub          sp, a4, s3
                  or           s3, s2, t0
                  slt          s0, t0, s4
                  slti         gp, t4, -668
                  srli         a4, a3, 21
                  or           s3, a3, a3
                  srai         a3, a7, 23
                  slti         t3, t6, -1536
                  xori         a2, s8, 1992
                  sltu         a1, t5, a1
                  srl          s2, s0, ra
                  srl          s0, ra, a3
                  sub          s7, t5, a2
                  srai         s6, t0, 0
                  or           t5, a3, s5
                  srli         s10, s10, 3
                  slt          s4, ra, s8
                  or           a3, a4, a0
                  or           t5, s2, a0
                  add          ra, ra, s0
                  add          s9, a3, s10
                  add          s7, t3, s4
                  sll          s6, t5, s6
                  lui          s0, 938475
                  sll          sp, s11, s1
                  sltu         a2, s4, sp
                  ori          a0, a7, 478
                  sra          t5, s5, a5
                  slti         s3, t6, -752
                  sltiu        s9, s4, -1480
                  sltu         s0, t1, t0
                  slti         gp, tp, 1570
                  slli         zero, a4, 30
                  sll          ra, a5, t4
                  sra          a1, a2, sp
                  xori         s7, s5, 599
                  and          s7, s10, a6
                  nop
                  srai         s4, t1, 19
                  sltu         t5, t3, s3
                  lui          a3, 92664
                  addi         s3, s8, -1658
                  auipc        t1, 228165
                  nop
                  andi         s4, a7, -1483
                  and          s6, zero, s2
                  sub          t5, a5, a2
                  slt          s6, zero, a7
                  sub          t6, s9, s11
                  srli         s9, t4, 31
                  nop
                  srai         s6, s4, 4
                  nop
                  slt          s5, a4, s7
                  ori          t6, t1, 49
                  srl          s11, tp, sp
                  addi         t6, s1, -1548
                  auipc        sp, 399058
                  sltiu        sp, s4, -1124
                  ori          s7, t5, 855
                  ori          gp, s3, -324
                  srai         t6, a7, 6
                  add          s7, a6, s1
                  auipc        s2, 308802
                  sub          sp, t1, a6
                  srai         s3, t4, 3
                  sltiu        a3, s11, 467
                  xori         t1, s8, -95
                  sltiu        s6, s2, 914
                  sll          s7, s7, t0
                  xori         a0, a6, 338
                  lui          a4, 226881
                  slli         a5, a2, 8
                  auipc        s10, 273746
                  add          s0, s2, s5
                  nop
                  sll          s11, t1, sp
                  lui          ra, 1007166
                  lui          t5, 145612
                  srl          t1, tp, t6
                  slli         tp, s2, 21
                  auipc        a5, 119716
                  auipc        t3, 620938
                  auipc        zero, 396080
                  nop
                  slt          a7, a1, t4
                  slt          t4, a4, s4
                  ori          t5, s0, 1230
                  xor          s5, a2, tp
                  sltu         s6, s7, t6
                  sra          s2, s10, s6
                  lui          s2, 86597
                  sltiu        a4, a3, 1212
                  slli         t1, a2, 19
                  sltu         s3, a2, s2
                  xori         a0, a7, 715
                  andi         s6, s5, -1852
                  srl          a2, a6, s1
                  lui          a1, 999490
                  or           t2, s8, t5
                  lui          a1, 548671
                  sltu         sp, s9, s10
                  sll          s0, t5, sp
                  slt          a5, s6, ra
                  auipc        s11, 321924
                  and          s6, s5, s1
                  xor          s9, t6, a3
                  srai         ra, s0, 16
                  nop
                  and          a6, t5, s8
                  nop
                  slti         t2, s5, 854
                  srli         t2, s9, 5
                  slt          tp, zero, s10
                  or           t6, tp, a6
                  sub          a4, a0, t6
                  sltu         t2, s4, sp
                  lui          t3, 564443
                  slli         a7, s9, 0
                  or           a0, t2, gp
                  sll          s11, s9, s1
                  andi         s3, t1, -1470
                  slli         a0, s0, 28
                  slt          s11, t4, a3
                  slt          s6, a1, t5
                  auipc        s4, 524610
                  nop
                  xori         s11, t1, 571
                  addi         a7, zero, -1176
                  xori         t1, t3, -1068
                  or           zero, s11, a5
                  lui          tp, 248579
                  sltiu        s11, t2, -727
                  sra          a5, t6, s8
                  andi         a3, s4, 750
                  sll          a1, a1, gp
                  or           s11, t5, s1
                  nop
                  auipc        a4, 276464
                  sltiu        a0, s0, 649
                  slti         a5, a6, 475
                  lui          s4, 34074
                  sll          t1, s1, a0
                  xor          t4, ra, a7
                  slti         a0, a3, -1171
                  sltiu        t1, s4, -56
                  or           s7, s1, s3
                  srl          sp, t2, a2
                  sub          s3, t0, a6
                  lui          t5, 544300
                  slli         a5, s5, 18
                  xor          s7, s2, s9
                  slt          a4, t3, ra
                  sub          s5, a0, s1
                  addi         s7, s11, -552
                  slti         a0, s11, -783
                  auipc        a7, 694432
                  sll          t3, a3, t4
                  nop
                  slt          s10, a3, t0
                  andi         a3, s9, 432
                  xori         a1, tp, 1549
                  xor          a0, a1, t3
                  xori         a0, s3, -245
                  nop
                  xor          s5, t1, a2
                  lui          s5, 441542
                  ori          ra, a6, 117
                  slt          s10, s3, a6
                  nop
                  sll          s10, s1, sp
                  slt          s10, s1, s11
                  srl          a3, t0, a2
                  auipc        sp, 526123
                  srli         t5, t5, 14
                  addi         s0, s2, -1988
                  and          a2, a3, sp
                  sub          s5, t5, s1
                  sltiu        a2, s5, -816
                  auipc        ra, 288259
                  sub          s3, s8, a3
                  sll          a2, a4, t1
                  slti         a7, t1, 415
                  slti         s4, t6, -139
                  xori         s0, s3, 1990
                  xor          t6, t3, s4
                  ori          s0, s8, -985
                  xori         gp, t5, 340
                  add          s4, ra, a7
                  srai         a7, t0, 29
                  sltu         sp, s8, a7
                  lui          t1, 456347
                  xori         s10, t2, 35
                  xor          s0, a5, s6
                  ori          sp, t3, 630
                  sll          s5, a1, t3
                  slt          ra, s9, a3
                  sltiu        t4, a2, 330
                  la x24, test_done
                  jalr x0, x24, 0
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
                  add x9, x5, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_2:
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
                  add x9, x5, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_3:
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
                  add x9, x5, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_4:
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
                  add x9, x5, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_5:
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
                  add x9, x5, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_6:
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
                  add x9, x5, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_7:
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
                  add x9, x5, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_8:
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
                  add x9, x5, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_9:
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
                  add x9, x5, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_10:
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
                  add x9, x5, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_11:
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
                  add x9, x5, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_12:
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
                  add x9, x5, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_13:
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
                  add x9, x5, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_14:
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
                  add x9, x5, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_15:
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
                  add x9, x5, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

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
                  add x9, x5, zero
                  csrr x12, 0x341 # MEPC
                  csrr x12, 0x342 # MCAUSE
                  li x23, 0x3 # BREAKPOINT
                  beq x12, x23, ebreak_handler
                  li x23, 0x8 # ECALL_UMODE
                  beq x12, x23, ecall_handler
                  li x23, 0x9 # ECALL_SMODE
                  beq x12, x23, ecall_handler
                  li x23, 0xb # ECALL_MMODE
                  beq x12, x23, ecall_handler
                  li x23, 0x1
                  beq x12, x23, instr_fault_handler
                  li x23, 0x5
                  beq x12, x23, load_fault_handler
                  li x23, 0x7
                  beq x12, x23, store_fault_handler
                  li x23, 0xc
                  beq x12, x23, pt_fault_handler
                  li x23, 0xd
                  beq x12, x23, pt_fault_handler
                  li x23, 0xf
                  beq x12, x23, pt_fault_handler
                  li x23, 0x2 # ILLEGAL_INSTRUCTION
                  beq x12, x23, illegal_instr_handler
                  csrr x23, 0x343 # MTVAL
                  1: la x24, test_done
                  jalr x1, x24, 0

ecall_handler:    
                  la x12, _start
                  sw x0, 0(x12)
                  sw x1, 4(x12)
                  sw x2, 8(x12)
                  sw x3, 12(x12)
                  sw x4, 16(x12)
                  sw x5, 20(x12)
                  sw x6, 24(x12)
                  sw x7, 28(x12)
                  sw x8, 32(x12)
                  sw x9, 36(x12)
                  sw x10, 40(x12)
                  sw x11, 44(x12)
                  sw x12, 48(x12)
                  sw x13, 52(x12)
                  sw x14, 56(x12)
                  sw x15, 60(x12)
                  sw x16, 64(x12)
                  sw x17, 68(x12)
                  sw x18, 72(x12)
                  sw x19, 76(x12)
                  sw x20, 80(x12)
                  sw x21, 84(x12)
                  sw x22, 88(x12)
                  sw x23, 92(x12)
                  sw x24, 96(x12)
                  sw x25, 100(x12)
                  sw x26, 104(x12)
                  sw x27, 108(x12)
                  sw x28, 112(x12)
                  sw x29, 116(x12)
                  sw x30, 120(x12)
                  sw x31, 124(x12)
                  la x24, write_tohost
                  jalr x0, x24, 0

instr_fault_handler:
                  add x5, x9, zero
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
                  add x5, x9, zero
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
                  add x5, x9, zero
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
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x5, x9, zero
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
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x5, x9, zero
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
                  csrr  x12, 0x300 # MSTATUS;
                  csrr  x12, 0x304 # MIE;
                  csrr  x12, 0x344 # MIP;
                  csrrc x12, 0x344, x12 # MIP;
                  add x5, x9, zero
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
