.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x5, h0_start
jalr x0, x5, 0
h0_start:
                  li x25, 0x40000100
                  csrw 0x301, x25
kernel_sp:        
                  la x6, kernel_stack_end

trap_vec_init:    
                  la x25, mtvec_handler
                  ori x25, x25, 0
                  csrw 0x305, x25 # MTVEC

mepc_setup:       
                  la x25, init
                  csrw 0x341, x25

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x25, 0x1800
                  csrw 0x300, x25 # MSTATUS
                  mret
init:             
                  li x0, 0x605df626
                  li x1, 0x4290c4d1
                  li x2, 0xf99e704e
                  li x3, 0x83a13a0e
                  li x4, 0x0
                  li x5, 0x80000000
                  li x7, 0x6
                  li x8, 0x80000000
                  li x9, 0xffadb956
                  li x10, 0xd9046188
                  li x11, 0x0
                  li x12, 0x9
                  li x13, 0xf3d8e7fe
                  li x14, 0x1d747175
                  li x15, 0x80000000
                  li x16, 0x258cd9d5
                  li x17, 0x5
                  li x18, 0x4
                  li x19, 0xe351824e
                  li x20, 0xfc1160b4
                  li x21, 0xfffa0346
                  li x22, 0x80000000
                  li x23, 0x6b3dfd0
                  li x24, 0xfb5e3c8e
                  li x25, 0x4ad2e75
                  li x26, 0x0
                  li x27, 0x1db76a6
                  li x28, 0x80000000
                  li x30, 0xf6a354ac
                  li x31, 0x1
                  la x29, user_stack_end
main:             li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           t3, 0xffffffff
                  li           s1, 0x0
                  li           s2, 0x35f3522a
                  li           tp, 0x967e922b
                  li           s9, 0x80000000
                  li           a5, 0x80000000
                  li           s10, 0x80000000
                  li           ra, 0x80000000
                  li           a2, 0x0
                  add          s9, a2, t3
                  auipc        s2, 599394
                  nop
                  add          s9, a2, a0
                  sub          s10, tp, s10
                  auipc        t3, 510329
                  addi         s9, s1, 318
                  lui          a0, 665313
                  auipc        a5, 195543
                  nop
                  lui          s2, 116764
                  sub          tp, a0, s9
                  nop
                  addi         ra, ra, -721
                  addi         t3, a5, 231
                  addi         tp, ra, 1681
                  addi         tp, s9, 1340
                  auipc        t3, 415432
                  lui          tp, 773714
                  sub          ra, tp, a0
                  auipc        tp, 678776
                  nop
                  auipc        a2, 633648
                  lui          s10, 265814
                  sub          s9, a0, s1
                  add          s10, tp, s2
                  auipc        a0, 157813
                  sub          tp, s1, a0 #end riscv_int_numeric_corner_stream_0
                  li           a4, 0x83a1e8d2 #start riscv_int_numeric_corner_stream_1
                  li           a2, 0xffffffff
                  li           s6, 0x80000000
                  li           a1, 0x1c71ece4
                  li           a3, 0x80000000
                  li           gp, 0xbc3ff85e
                  li           s11, 0x80000000
                  li           a6, 0x80000000
                  li           s8, 0xf0304e07
                  li           t3, 0x0
                  nop
                  auipc        s6, 1025408
                  addi         a3, gp, 918
                  lui          a3, 152079
                  lui          s8, 993996
                  nop
                  add          t3, a4, a3
                  add          a2, s11, s6
                  auipc        gp, 315480
                  lui          t3, 514797
                  add          a4, s8, s11
                  add          a1, a6, a3
                  lui          gp, 446597
                  nop
                  sub          a6, s8, a4 #end riscv_int_numeric_corner_stream_1
                  li           s1, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           a0, 0x0
                  li           t3, 0x0
                  li           s5, 0xffffffff
                  li           a1, 0xf8469824
                  li           a4, 0xffffffff
                  li           a7, 0x94342504
                  li           s7, 0x80000000
                  li           s3, 0x5ebdf2ed
                  li           t5, 0x80000000
                  addi         t3, s5, -19
                  lui          s7, 275497
                  addi         s7, s7, -553
                  auipc        a1, 467306
                  add          a1, t3, a0
                  addi         s3, s3, 1828
                  auipc        s5, 517901
                  addi         a1, t3, -370
                  lui          s1, 954581
                  add          s3, s3, a0
                  add          a0, s7, a7
                  sub          s3, t3, a0
                  sub          s7, t5, s5
                  addi         t3, s5, -697
                  sub          t5, a1, t5
                  sub          a0, a1, s3
                  add          t3, t3, a0
                  nop
                  add          s5, s3, t5
                  addi         t3, t5, -1737
                  nop
                  nop #end riscv_int_numeric_corner_stream_3
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           s9, 0x80000000
                  li           sp, 0x0
                  li           s0, 0x0
                  li           s4, 0x0
                  li           a3, 0x0
                  li           s6, 0x80000000
                  li           a7, 0xe0ebf07d
                  li           s10, 0xffffffff
                  li           a6, 0x80000000
                  lui          s9, 85099
                  addi         a3, s10, -476
                  lui          t6, 101789
                  sub          a3, s0, s0
                  addi         s0, t6, 637
                  sub          s0, s6, s9
                  add          a7, t6, s0
                  auipc        t6, 181353
                  lui          t6, 338524
                  lui          s0, 290699
                  nop
                  nop
                  sub          s6, sp, s0
                  lui          a3, 42401
                  sub          a7, s4, s9
                  nop
                  addi         s10, s9, -1824
                  addi         s0, s6, 1771
                  addi         a7, s6, -433
                  sub          a6, a7, s0
                  auipc        a7, 842301
                  add          s0, sp, s10
                  add          a6, a7, s10 #end riscv_int_numeric_corner_stream_13
                  li           a7, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           t2, 0x80000000
                  li           s0, 0xffffffff
                  li           s10, 0xffffffff
                  li           t3, 0x21bed0fa
                  li           s3, 0x0
                  li           s9, 0x0
                  li           a5, 0x0
                  li           s8, 0xffffffff
                  li           t6, 0xffffffff
                  add          s10, s3, s10
                  nop
                  nop
                  nop
                  auipc        a5, 106239
                  lui          s0, 341363
                  addi         a5, a5, 41
                  add          s0, t6, s8
                  auipc        s10, 810771
                  sub          a5, s0, a7
                  lui          s9, 667722
                  lui          s0, 176658
                  auipc        t2, 586824
                  auipc        t2, 907363
                  addi         s9, a5, -1240
                  add          t3, t6, t3
                  nop #end riscv_int_numeric_corner_stream_16
                  li           a6, 0x0 #start riscv_int_numeric_corner_stream_8
                  li           s8, 0x0
                  li           a5, 0xffffffff
                  li           s7, 0x80000000
                  li           t5, 0x0
                  li           s0, 0x80000000
                  li           ra, 0xffffffff
                  li           t3, 0x0
                  li           t6, 0x80000000
                  li           a7, 0xd6bd3ed1
                  auipc        s8, 518494
                  sub          s0, t6, ra
                  auipc        t5, 193140
                  add          a6, s8, s8
                  sub          t5, a6, a7
                  sub          t6, t6, ra
                  addi         a7, ra, -1135
                  auipc        a6, 156095
                  add          t5, s0, t6
                  addi         t6, t6, 1829
                  lui          t6, 721770
                  sub          t6, s0, t5
                  lui          s0, 85313
                  add          s8, a5, a7
                  nop
                  add          s8, t3, a6
                  sub          t6, t5, a5
                  auipc        t5, 827477 #end riscv_int_numeric_corner_stream_8
                  li           s11, 0x395e6054 #start riscv_int_numeric_corner_stream_4
                  li           sp, 0x0
                  li           s3, 0xe07f21ce
                  li           t5, 0x80000000
                  li           a7, 0x387e6355
                  li           s7, 0x80000000
                  li           a2, 0x0
                  li           s4, 0x80000000
                  li           t6, 0x80000000
                  li           s10, 0x0
                  sub          s3, s7, s4
                  auipc        sp, 336510
                  sub          t5, a7, t5
                  add          t6, a7, a2
                  auipc        a2, 128507
                  lui          s11, 828753
                  lui          a7, 444248
                  sub          a2, s10, a7
                  nop
                  auipc        s7, 298255
                  add          t5, t6, a2
                  add          s7, s11, t6
                  addi         s4, t5, -1359
                  addi         s10, a7, -841
                  lui          a2, 916446
                  add          s4, s7, s7
                  addi         sp, s7, 1546
                  auipc        s3, 518743
                  auipc        s7, 674488
                  nop
                  add          a2, s11, t6
                  auipc        s11, 551885
                  sub          sp, s4, sp
                  add          s3, a7, a7
                  add          t5, s4, t5
                  lui          s4, 586732
                  lui          a2, 305034
                  auipc        s10, 674885
                  sub          t6, t6, t5
                  add          s3, a7, a7 #end riscv_int_numeric_corner_stream_4
                  li           t6, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           s2, 0xc9a01581
                  li           s11, 0xffffffff
                  li           a3, 0x80000000
                  li           s7, 0xffffffff
                  li           s10, 0x80000000
                  li           a5, 0xffffffff
                  li           s4, 0x0
                  li           gp, 0xfd276bdf
                  li           s3, 0x80000000
                  sub          s11, t6, s10
                  addi         gp, a3, 1644
                  nop
                  lui          gp, 964157
                  addi         s4, t6, -364
                  add          gp, s2, s10
                  lui          gp, 331117
                  addi         s4, a3, 598
                  sub          s2, s2, s4
                  addi         s7, t6, -1573
                  auipc        s2, 332182
                  sub          s2, s4, gp
                  auipc        s10, 230871
                  addi         s3, t6, 515
                  sub          gp, s3, s2
                  sub          s2, s10, s7
                  auipc        a3, 734203
                  lui          s10, 526692
                  sub          s2, gp, s11
                  addi         a5, a5, -528
                  add          a3, t6, gp
                  lui          gp, 72651
                  add          gp, s2, s3
                  lui          a3, 42216
                  lui          t6, 250655
                  auipc        s3, 575812 #end riscv_int_numeric_corner_stream_15
                  li           s7, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           t6, 0xffffffff
                  li           a2, 0x0
                  li           a5, 0x0
                  li           s2, 0xffffffff
                  li           t2, 0xe5de7bc7
                  li           a4, 0xffffffff
                  li           a6, 0x80000000
                  li           gp, 0xffffffff
                  li           sp, 0x0
                  addi         s2, a6, -1306
                  addi         gp, t2, -1809
                  addi         s2, a2, 1492
                  add          t2, gp, s2
                  auipc        s2, 686751
                  auipc        s7, 273103
                  sub          t2, t2, a6
                  nop
                  add          t6, a4, gp
                  auipc        a5, 568822
                  addi         t6, s2, 384
                  auipc        s7, 1038740
                  sub          s2, a4, sp
                  nop
                  nop
                  addi         t2, s7, -316
                  add          a6, gp, s7
                  addi         a2, sp, -1470
                  add          s2, sp, sp #end riscv_int_numeric_corner_stream_12
                  li           a1, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           gp, 0xffffffff
                  li           t6, 0x0
                  li           a6, 0xffffffff
                  li           s11, 0xffffffff
                  li           s3, 0x0
                  li           tp, 0xf62d9c33
                  li           a7, 0x0
                  li           ra, 0x80000000
                  li           s10, 0x0
                  addi         gp, s10, 76
                  lui          a6, 561365
                  sub          s3, t6, s11
                  nop
                  auipc        a7, 520427
                  lui          ra, 777161
                  auipc        ra, 425662
                  lui          s11, 730231
                  lui          t6, 1040515
                  auipc        s10, 129285
                  lui          s10, 1018792
                  addi         s10, tp, 24
                  lui          s3, 231826
                  lui          ra, 937217
                  nop
                  sub          s3, a6, ra
                  auipc        t6, 487858
                  nop
                  addi         a1, a6, -1822 #end riscv_int_numeric_corner_stream_6
                  andi         a3, s9, -1838
                  sra          s2, s3, a0
                  slli         t5, t2, 26
                  ori          a6, a4, 1813
                  sub          s4, gp, s4
                  sll          s8, a6, ra
                  srai         s10, s7, 17
                  slli         s1, s1, 8
                  sub          s0, s3, a2
                  xori         t5, s2, 438
                  sltu         s10, a5, s7
                  sltu         s6, s5, a6
                  andi         a7, s11, 1147
                  lui          s4, 373889
                  sra          s4, s10, a1
                  or           s10, s1, s8
                  slti         s5, s8, -918
                  sra          a0, t3, s5
                  ori          s5, s7, 1364
                  sra          s11, t3, t2
                  slt          a0, s7, a0
                  and          s0, s6, s7
                  ori          s5, t1, -1805
                  addi         ra, s0, 1966
                  srai         s4, t2, 12
                  xor          s8, t5, ra
                  sra          a0, a1, sp
                  add          tp, t6, a6
                  srl          sp, t4, t2
                  nop
                  srli         a7, s3, 24
                  sltiu        s1, s9, -1133
                  sra          zero, a1, s4
                  xori         s1, s9, 504
                  sll          s10, s9, t4
                  srli         a1, s0, 28
                  srli         sp, s8, 3
                  sltu         s8, a2, s6
                  or           sp, zero, ra
                  slti         zero, s5, -81
                  srli         s1, tp, 20
                  and          a2, t3, s3
                  ori          a4, t3, 387
                  addi         s8, t1, 731
                  slli         s9, t3, 22
                  addi         s3, a3, 372
                  and          a4, s2, t2
                  andi         s7, t5, -972
                  andi         s10, a0, 439
                  ori          a1, t3, -459
                  add          t3, t5, s3
                  andi         t2, tp, 981
                  sltu         tp, s7, t5
                  or           s10, t4, t1
                  xori         s1, s11, 20
                  add          ra, gp, s1
                  lui          ra, 898458
                  addi         s6, t3, -1531
                  addi         zero, s5, -928
                  srai         tp, zero, 3
                  srli         a0, a7, 22
                  slti         gp, gp, 1370
                  lui          zero, 814769
                  sltiu        ra, a1, 209
                  sub          a0, t1, a5
                  add          tp, a5, s9
                  sub          s5, s7, s11
                  slli         s8, s7, 12
                  ori          s6, t5, -215
                  and          s7, s8, s2
                  lui          a3, 1020749
                  andi         s5, a5, -1977
                  sll          s7, t0, a2
                  sra          s3, t2, a7
                  or           a0, s1, s0
                  xori         a4, s7, -552
                  sll          s6, s6, t5
                  srli         a5, t5, 13
                  sra          s0, t0, a2
                  sltu         s4, s1, t2
                  lui          s9, 850916
                  sltu         a2, s7, s0
                  sltu         s3, s6, t0
                  srli         s10, sp, 20
                  lui          tp, 155320
                  xori         tp, t0, -2024
                  sub          a0, s7, t6
                  nop
                  and          s11, ra, a2
                  sll          s0, s0, s6
                  and          zero, t3, s5
                  nop
                  andi         a6, sp, -1810
                  and          s8, a6, s7
                  sub          t2, t3, s4
                  and          a7, s1, tp
                  xori         sp, a7, -1234
                  srli         t6, a6, 17
                  auipc        s11, 837877
                  slli         ra, a1, 25
                  addi         t6, a5, -649
                  sltiu        ra, t1, 1841
                  slt          a3, t5, sp
                  srli         s7, s10, 26
                  sub          zero, t2, s9
                  lui          a7, 480073
                  sltu         s9, t5, t1
                  slli         s11, t3, 4
                  auipc        tp, 879641
                  lui          s8, 1005047
                  slt          a3, sp, ra
                  xor          ra, s7, gp
                  sltu         s5, t5, s10
                  srl          s1, a3, a7
                  srl          t6, s2, a6
                  add          s6, a6, t3
                  add          a5, a4, t5
                  srli         t5, s6, 30
                  slt          a0, s6, a5
                  or           a2, a4, a1
                  nop
                  sll          s8, a7, s11
                  auipc        t5, 374309
                  sub          s5, s10, s6
                  add          a4, t3, s11
                  slt          s10, t1, s9
                  lui          s5, 1000182
                  sltu         sp, t4, s6
                  and          a5, tp, a2
                  sra          zero, a2, s8
                  slti         s6, s9, -1036
                  sll          s8, t4, a2
                  lui          s6, 511676
                  or           s4, t0, t2
                  xori         a4, s2, 1794
                  slli         s2, s9, 15
                  sltu         s4, s5, s10
                  or           s5, s4, a6
                  slli         s7, t5, 14
                  lui          s8, 1007856
                  xori         s1, t2, 12
                  xor          s0, t1, a1
                  slt          t5, s10, t2
                  addi         a1, a1, 1019
                  slli         s11, s5, 26
                  add          a5, s11, s3
                  or           s6, s8, t1
                  srli         s4, t3, 10
                  srli         t2, a7, 25
                  slli         s9, s6, 20
                  sll          ra, s0, a0
                  or           s0, s10, a0
                  srl          s1, zero, s3
                  ori          gp, t1, 1644
                  sltu         t6, s1, sp
                  srli         zero, s11, 24
                  andi         s4, tp, -1189
                  or           s9, a0, t0
                  xori         t3, t0, -30
                  sll          a3, s5, s6
                  xori         t2, s2, -1453
                  slli         s7, s5, 16
                  sltu         a1, a0, t4
                  or           a3, a4, a2
                  ori          t5, s2, 1963
                  sra          s3, t6, s8
                  auipc        s7, 199595
                  nop
                  srli         s0, s1, 31
                  sltiu        s2, sp, 1744
                  ori          t3, s1, 960
                  slt          a1, s5, t0
                  srl          a4, a3, s7
                  slt          s6, a2, t5
                  srai         s8, a4, 22
                  ori          a0, ra, -1996
                  sll          s0, s3, t6
                  lui          zero, 513267
                  lui          s7, 565541
                  sub          s5, tp, t1
                  slti         a7, ra, 620
                  sub          s2, s9, a3
                  or           a1, t5, ra
                  addi         a7, a1, -1804
                  add          a0, s6, zero
                  andi         s4, a0, -450
                  srai         a4, gp, 0
                  sra          t2, a7, t5
                  sll          gp, t6, s4
                  auipc        s1, 34866
                  sub          s0, s8, gp
                  addi         a7, s3, -1652
                  slti         s4, a4, -49
                  addi         a7, s6, -234
                  ori          s10, sp, 203
                  srli         s11, s4, 24
                  srli         gp, a6, 22
                  nop
                  add          s5, s5, s0
                  auipc        s6, 340546
                  addi         s4, s5, -891
                  srli         sp, sp, 11
                  sra          a7, t6, gp
                  nop
                  sub          tp, s9, zero
                  xori         a1, t6, -1443
                  auipc        a2, 615874
                  slti         s4, s1, -259
                  nop
                  sltiu        s5, t0, -198
                  xori         s2, a5, 841
                  and          ra, t3, t0
                  nop
                  or           t2, t1, sp
                  sll          a3, s0, sp
                  and          t2, t5, s10
                  srai         s7, t1, 17
                  add          sp, t6, a2
                  xor          t2, s8, t2
                  slti         a5, a7, 615
                  andi         t3, a7, 646
                  lui          a7, 731245
                  andi         a3, a5, 1618
                  and          t5, s5, a1
                  and          s5, a3, a3
                  xor          sp, a7, s11
                  srli         s4, a4, 30
                  sll          t6, s3, a3
                  slt          s10, a2, a1
                  sltiu        zero, t0, 610
                  slli         a3, t4, 9
                  slt          s11, a0, s8
                  sra          t2, t4, a7
                  slt          a4, s4, zero
                  andi         s9, t4, -1652
                  srl          s8, s0, a0
                  sltu         s0, sp, a0
                  slli         s6, t5, 20
                  srai         a4, s10, 13
                  auipc        s8, 15399
                  addi         a7, s7, -1923
                  srai         a0, t1, 17
                  sub          tp, t0, ra
                  slt          s10, t6, s10
                  addi         s2, t5, 1312
                  addi         t5, s2, 752
                  sll          a2, a0, t5
                  sltiu        t6, s6, 1534
                  sltu         s6, s6, sp
                  nop
                  sltu         s11, s5, tp
                  and          a2, a2, ra
                  and          a0, s8, a1
                  and          a3, ra, tp
                  add          s10, t5, sp
                  lui          s3, 115687
                  srli         sp, t6, 17
                  srai         a0, t6, 31
                  slti         a2, s9, -1200
                  sub          s5, s3, t3
                  srli         t3, s1, 25
                  sltiu        s7, t1, 1010
                  or           a1, t1, a6
                  xor          s9, s9, s7
                  srli         a3, s11, 9
                  sra          t6, t4, t0
                  slti         a4, zero, -234
                  sltu         s1, s10, s2
                  auipc        a0, 937968
                  srli         t6, a4, 4
                  auipc        a2, 551373
                  lui          a6, 209584
                  srai         ra, s2, 5
                  nop
                  srli         a1, s1, 26
                  sltiu        t6, ra, 1643
                  srli         s8, s7, 3
                  add          s7, t0, a3
                  xor          tp, s6, t2
                  srli         a6, s3, 7
                  add          a5, t6, s1
                  auipc        s0, 374669
                  srli         a7, sp, 13
                  slt          s4, a0, s7
                  srl          s9, s9, s11
                  sub          a4, t3, s4
                  xor          s0, s7, a3
                  sll          s1, a2, tp
                  sll          t6, t2, sp
                  sll          s10, s6, t5
                  sltu         s6, a7, s4
                  sll          a0, t6, t1
                  sra          a4, a5, t6
                  sll          a3, t4, s11
                  ori          tp, s2, -1157
                  srli         a6, t2, 28
                  slt          sp, sp, t6
                  sll          t3, a2, t4
                  slt          s0, s6, a7
                  sltu         a7, s9, s4
                  ori          gp, t2, -823
                  ori          s7, a0, -1535
                  slt          s2, t5, gp
                  slti         tp, gp, 1987
                  ori          ra, a6, 838
                  slli         gp, t2, 9
                  nop
                  sll          s10, a3, t2
                  addi         s3, s4, 78
                  slt          s7, s11, t2
                  lui          s6, 994438
                  sltu         s11, s7, s11
                  slti         s1, a7, 1126
                  slti         s7, a7, -1362
                  lui          a3, 486779
                  sub          s5, t3, s3
                  sltiu        a2, s4, 1163
                  add          s3, t6, s3
                  sltiu        zero, s6, -162
                  andi         a4, a7, -424
                  srli         s10, t6, 9
                  srl          t6, a3, s0
                  addi         t2, s3, 1047
                  slt          a2, a2, zero
                  slt          a4, s6, gp
                  sltiu        zero, t2, 1637
                  ori          a3, s10, -658
                  srai         s8, t5, 15
                  and          s2, t4, sp
                  sltiu        s10, a2, -93
                  ori          a1, t5, -1083
                  sltiu        s11, a2, -1740
                  slt          zero, s0, s5
                  xori         ra, a2, -1704
                  andi         gp, t1, -213
                  add          a4, sp, s1
                  auipc        t2, 320530
                  slli         s8, a5, 30
                  and          s11, a7, t0
                  slli         sp, a7, 27
                  sltiu        s7, t2, -623
                  ori          a1, tp, -827
                  andi         s10, s2, 258
                  sltiu        gp, s3, 82
                  slli         gp, t5, 23
                  auipc        t5, 979129
                  slli         a3, a6, 23
                  andi         t5, zero, 1132
                  sra          t5, t6, a6
                  srli         sp, t3, 3
                  and          tp, a2, s3
                  and          a7, t5, a2
                  xori         t3, a5, -894
                  srli         s1, a4, 27
                  xori         a2, a4, 1981
                  sub          a0, gp, s2
                  sra          s8, a5, s4
                  and          t6, s5, s2
                  sltu         s5, sp, s10
                  sll          a7, gp, a1
                  nop
                  sub          tp, gp, s0
                  add          s11, s6, s7
                  srai         a6, gp, 0
                  or           s2, s1, s6
                  andi         a2, t1, 474
                  xori         t2, t1, 1481
                  srl          s11, sp, s3
                  srl          s10, a7, gp
                  nop
                  sub          tp, s1, sp
                  sltu         t5, s0, t4
                  sltu         s11, s10, a5
                  slli         a4, s9, 25
                  and          ra, s10, s4
                  addi         a5, s4, -987
                  xor          gp, s11, a4
                  ori          gp, s0, -235
                  srai         s4, s2, 26
                  addi         a2, t5, 1871
                  srli         a2, a1, 7
                  ori          s4, a3, -553
                  add          tp, s7, s3
                  slt          s4, a7, sp
                  andi         gp, s11, 1053
                  auipc        a0, 556112
                  xor          s0, t2, gp
                  ori          s3, s9, 1957
                  srl          t5, t5, gp
                  xor          a1, sp, s7
                  sltu         a2, tp, a1
                  xori         a1, a1, 708
                  slti         s6, a1, 1459
                  nop
                  slli         s0, a0, 14
                  addi         a2, t0, 1108
                  sll          s4, s5, s1
                  add          s8, s0, s4
                  addi         a4, t2, -1251
                  slti         ra, t1, -1650
                  andi         tp, gp, 114
                  sub          s0, gp, a7
                  srl          a1, a5, a1
                  srl          s4, t0, gp
                  slti         a0, gp, 940
                  addi         t6, a5, -1653
                  ori          s7, s7, -1678
                  or           a6, s3, zero
                  andi         s11, tp, 2001
                  srai         s3, zero, 2
                  and          a3, t0, t0
                  add          s6, s8, tp
                  and          s4, s9, s11
                  xori         ra, t0, 39
                  xori         sp, s1, 1688
                  sub          s2, t0, s9
                  lui          s3, 336640
                  add          t6, a5, s1
                  xori         s0, t1, 844
                  srli         a1, t1, 3
                  slti         t6, t2, -1440
                  slli         a6, tp, 3
                  srli         gp, s1, 15
                  srl          gp, a2, tp
                  and          s3, a7, s10
                  srai         s4, zero, 3
                  lui          s0, 61415
                  srai         s3, a7, 20
                  andi         tp, a4, 335
                  auipc        a1, 654754
                  xori         sp, t6, 1673
                  or           s6, s4, s2
                  lui          a6, 567976
                  nop
                  sltiu        s9, s0, -1599
                  slt          a7, s8, t2
                  andi         s1, ra, 644
                  srai         s8, s5, 23
                  sll          t3, t5, a6
                  slli         a3, s0, 4
                  lui          t5, 905736
                  and          zero, a1, s4
                  slli         s9, sp, 24
                  ori          gp, s0, -1679
                  or           a3, gp, a4
                  add          s3, s9, s1
                  srli         a0, t5, 7
                  slli         t6, s0, 7
                  or           s3, s8, sp
                  add          s9, gp, t4
                  add          s3, a0, a1
                  slti         sp, t6, 1313
                  auipc        ra, 870181
                  sll          a7, sp, a0
                  sltiu        a0, s8, 898
                  nop
                  slli         s0, s5, 4
                  lui          tp, 607017
                  sll          a2, s0, gp
                  auipc        t6, 110529
                  auipc        tp, 716087
                  sltu         s11, t2, a6
                  srai         a4, s4, 23
                  addi         s0, zero, -1379
                  addi         a5, s5, 1227
                  slt          t3, s1, t5
                  sltu         s2, a4, t1
                  slti         t2, s0, 1464
                  lui          a1, 971373
                  slt          gp, s3, s4
                  ori          s3, s6, 326
                  and          s3, s6, a2
                  sll          s2, s7, a7
                  xor          a3, t4, a3
                  lui          a1, 458123
                  sltu         t2, s1, a0
                  ori          s9, t2, 1172
                  sltu         a0, s5, gp
                  sra          tp, a4, a0
                  and          s10, a2, a6
                  sub          s1, zero, zero
                  sltiu        a4, s6, 1609
                  sub          a6, a2, sp
                  ori          zero, s1, -393
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           t5, 0xffffffff
                  li           s11, 0x80000000
                  li           tp, 0xffffffff
                  li           gp, 0xffffffff
                  li           t3, 0x0
                  li           a4, 0x7009bf8f
                  li           s4, 0xffffffff
                  li           s0, 0x0
                  li           sp, 0xffffffff
                  sub          gp, s0, a4
                  lui          sp, 139320
                  auipc        s4, 639293
                  lui          t5, 395846
                  sub          tp, s11, s0
                  lui          s0, 727334
                  addi         t3, s11, 1465
                  add          s9, s9, tp
                  lui          s11, 374261
                  sub          t3, s11, sp
                  lui          s4, 19350
                  lui          gp, 603939
                  add          sp, s11, tp
                  sub          t3, s4, sp
                  auipc        s0, 653454
                  add          t3, tp, s9
                  lui          t5, 252495
                  auipc        s9, 741400
                  nop
                  add          s4, tp, s4
                  add          s11, a4, t5
                  lui          t3, 957281
                  lui          t3, 316987
                  lui          t3, 877787
                  add          t3, a4, sp
                  auipc        s9, 816415 #end riscv_int_numeric_corner_stream_5
                  sll          zero, s1, t5
                  srai         s11, s2, 22
                  addi         zero, s1, -826
                  slt          t5, a1, a4
                  sltiu        s9, s8, 814
                  srl          ra, a0, s7
                  sub          s6, zero, a2
                  nop
                  sltiu        gp, s3, 1739
                  lui          t3, 276739
                  sltiu        sp, s8, -1441
                  sra          t2, t3, t1
                  ori          s10, zero, 904
                  srli         s10, a4, 3
                  srl          s0, t2, s4
                  ori          a5, t5, -924
                  srl          s7, a2, s4
                  slti         s1, s2, 1913
                  or           a0, s10, s4
                  auipc        s7, 997841
                  ori          a0, s7, -1391
                  sll          sp, t3, s0
                  sll          s7, sp, s11
                  sra          t2, s0, s3
                  sltu         sp, s3, tp
                  sub          s6, t6, t0
                  slti         s6, t5, 1393
                  addi         t2, tp, -5
                  nop
                  sltu         s10, s4, s8
                  slti         s8, s11, 1112
                  sll          s0, s7, a4
                  lui          sp, 928496
                  sra          a3, s2, s7
                  slti         t2, ra, 29
                  srli         a0, a0, 27
                  ori          s8, a1, -1239
                  srli         a5, s5, 18
                  xori         a1, s11, -177
                  and          a0, t5, s1
                  nop
                  sll          ra, s1, gp
                  xor          s6, t2, t2
                  slti         tp, s2, 1097
                  sltiu        a0, zero, -188
                  nop
                  sll          s9, s0, s0
                  slli         t3, a5, 29
                  srli         a0, t0, 13
                  xori         gp, s9, -283
                  sra          a6, a7, s2
                  sub          s4, s5, s5
                  sltiu        s11, t2, -1981
                  sltiu        s6, a2, 2031
                  slli         s0, t2, 16
                  sltiu        s9, t3, 1351
                  srl          t6, s2, sp
                  slli         tp, a1, 11
                  sltu         s7, gp, s8
                  andi         gp, t0, -1460
                  sltu         gp, s7, t5
                  andi         s4, s3, 1139
                  nop
                  lui          s3, 968644
                  or           s9, gp, sp
                  lui          sp, 123107
                  ori          s7, s1, 816
                  xor          a4, a0, a2
                  sltiu        a5, s7, -878
                  sub          t3, gp, t6
                  lui          sp, 722155
                  and          s8, t5, gp
                  slti         sp, t0, -142
                  auipc        a5, 20549
                  add          a5, t5, a2
                  xori         a6, t2, 476
                  srai         s10, t5, 27
                  sltiu        a2, t1, 757
                  xor          s9, ra, t4
                  sra          a2, s5, s8
                  andi         a1, a5, -100
                  auipc        s6, 56273
                  nop
                  nop
                  or           ra, t0, s2
                  xori         a6, t2, -18
                  xor          zero, ra, s0
                  sub          a5, a5, tp
                  srl          t5, t6, a4
                  xori         a1, a5, 1086
                  srai         a5, t5, 14
                  nop
                  sltiu        ra, s0, 873
                  slli         s2, t2, 29
                  srli         a3, s7, 10
                  addi         t5, s11, 1372
                  xor          s10, s4, s3
                  xori         s0, a5, -699
                  srl          ra, a6, a2
                  srl          zero, t5, a7
                  srli         s4, s9, 21
                  addi         a2, a6, -1846
                  nop
                  nop
                  and          a1, t2, s0
                  lui          t5, 27290
                  slt          a6, s9, a2
                  sra          s9, tp, s1
                  lui          s9, 220955
                  auipc        sp, 1034836
                  sra          a1, a3, a6
                  srl          s10, ra, s1
                  add          s6, a1, a1
                  or           t2, s9, t5
                  and          sp, tp, s1
                  xori         s8, s9, 525
                  sra          t6, t4, s3
                  addi         t5, s5, 993
                  slti         s3, s2, -964
                  lui          zero, 503111
                  slt          a5, gp, t1
                  nop
                  srl          s1, a4, s3
                  add          t6, t1, t5
                  andi         a3, t3, -800
                  srai         zero, s3, 30
                  and          gp, t5, a6
                  slti         sp, gp, 1423
                  andi         gp, s8, 905
                  andi         s10, s1, 528
                  lui          a3, 995014
                  srli         a7, s11, 13
                  andi         a0, s9, 1313
                  sltiu        tp, s7, -259
                  slli         a3, a0, 19
                  ori          a1, s11, 1460
                  slti         s10, a1, -617
                  sra          a7, s9, zero
                  add          ra, s11, gp
                  srl          t6, a4, s7
                  xori         a6, zero, 980
                  xori         t5, t0, -1569
                  andi         s9, a7, -1632
                  andi         s4, a5, -337
                  nop
                  andi         s0, a6, 910
                  sltiu        a1, s1, 1252
                  sltiu        s1, a5, -80
                  xori         s2, s5, -1764
                  sra          s3, t5, t1
                  slti         s7, s5, -1938
                  andi         t6, a4, -58
                  ori          a6, a3, -715
                  sub          t5, s10, a0
                  xor          s0, t3, zero
                  auipc        gp, 456722
                  add          s10, gp, s2
                  or           t6, s5, a2
                  srai         sp, s2, 23
                  slt          s2, t1, s8
                  andi         s6, s10, -679
                  srl          s0, s1, s4
                  srai         sp, s10, 10
                  nop
                  and          a5, a2, s10
                  srai         t6, gp, 17
                  sltu         s7, t3, a3
                  srl          a1, s4, t1
                  nop
                  sll          s5, t5, s10
                  slti         a0, s5, 1403
                  ori          sp, s6, -1709
                  addi         a0, t0, -357
                  xori         s5, a6, -235
                  slt          sp, s2, t4
                  sltiu        s9, t0, -1730
                  sltiu        a6, a5, -664
                  sll          a0, t3, s6
                  slti         t5, a5, -1531
                  andi         a5, sp, -1108
                  addi         s9, s2, -1413
                  nop
                  srli         t2, s6, 4
                  or           s5, ra, a2
                  srli         ra, s1, 20
                  sll          t3, gp, a6
                  add          s7, a5, s7
                  nop
                  sra          s5, s7, t2
                  add          gp, t2, t3
                  andi         t6, s8, 6
                  slli         s2, a4, 11
                  andi         a6, a1, -659
                  srai         t6, a5, 17
                  add          gp, a6, ra
                  or           t3, s9, s6
                  slti         gp, a2, -1378
                  ori          tp, s6, -1289
                  sub          t6, s2, ra
                  sub          s5, t4, s4
                  slli         t5, t2, 22
                  srli         s11, t0, 16
                  ori          s8, t4, 1564
                  ori          s7, a1, -1357
                  sltu         s2, s5, t3
                  auipc        ra, 786736
                  and          ra, t2, t1
                  srl          t3, ra, a4
                  srl          s7, a4, s7
                  nop
                  sll          s8, s4, s9
                  slti         s9, a2, -996
                  srli         t2, zero, 27
                  or           ra, s8, a5
                  slt          a5, t3, t0
                  sll          tp, a7, s1
                  sub          a6, s5, ra
                  sub          a4, t2, s9
                  srli         sp, t2, 24
                  srl          s6, a1, tp
                  andi         a2, a1, -1966
                  slt          a6, a1, s7
                  slli         s3, a5, 2
                  xor          sp, s8, tp
                  lui          ra, 234413
                  andi         s3, s6, 1858
                  slt          a7, t3, sp
                  and          a5, t2, t4
                  auipc        ra, 634241
                  srl          sp, t5, s6
                  xori         s7, a3, 1472
                  lui          s2, 181927
                  auipc        a4, 25463
                  slt          sp, s11, t2
                  sub          s0, sp, s0
                  xori         sp, t4, -1780
                  or           zero, ra, tp
                  srai         sp, zero, 2
                  andi         s3, a1, 1671
                  lui          s3, 368893
                  or           s9, a2, t6
                  xori         s2, a1, -1046
                  nop
                  sra          s10, t5, s10
                  srli         s4, s6, 8
                  srl          a0, s5, t5
                  lui          s4, 1033940
                  slt          zero, a0, a4
                  auipc        a2, 144269
                  sra          t6, t2, a5
                  srli         a3, s1, 19
                  nop
                  slt          t3, s0, t6
                  ori          s1, a3, 350
                  nop
                  sra          s4, s5, s8
                  addi         zero, s1, 244
                  nop
                  sll          s8, sp, s9
                  slti         sp, t5, -1867
                  lui          t6, 325621
                  sltiu        s7, t0, 1825
                  andi         s4, s9, -743
                  and          t6, t1, a7
                  xori         s9, s1, 1254
                  sub          s2, ra, t1
                  srl          s0, s4, s2
                  srai         gp, s10, 3
                  lui          s7, 650157
                  nop
                  sltiu        s0, s5, 1468
                  ori          ra, s5, -636
                  sltiu        a6, zero, 1164
                  srli         gp, a2, 11
                  sra          a4, s7, sp
                  sltiu        s4, t3, -1194
                  auipc        a5, 326172
                  sub          s9, s11, a1
                  auipc        s2, 702016
                  sra          zero, t6, a6
                  sra          s11, gp, s10
                  sltu         a2, s1, s4
                  slt          s5, a4, t4
                  auipc        a6, 309786
                  slli         s2, t6, 14
                  xori         sp, tp, 812
                  sltiu        s10, t3, -1905
                  nop
                  slt          s2, s10, s6
                  sub          s5, a1, a7
                  sub          zero, t1, t4
                  srai         ra, a2, 1
                  sub          a2, s3, a2
                  andi         s2, zero, 1434
                  andi         a2, s9, 1816
                  sub          tp, a4, sp
                  lui          s1, 829268
                  addi         s5, s1, 1994
                  or           sp, a3, t0
                  or           a4, s9, t0
                  sltu         a6, t4, gp
                  slti         t5, gp, -1985
                  ori          gp, s6, -1067
                  lui          s8, 236566
                  ori          a1, zero, 1169
                  xor          s1, ra, s10
                  slt          s2, t1, ra
                  lui          a5, 901289
                  srai         gp, s10, 4
                  lui          s1, 400113
                  srli         t3, zero, 27
                  or           sp, t6, ra
                  slti         t6, a6, 1584
                  xor          s4, s10, s7
                  add          a0, a2, s9
                  srli         ra, t4, 10
                  nop
                  srli         a1, s8, 25
                  ori          zero, t4, -653
                  sll          ra, t1, a2
                  sub          gp, s9, t5
                  andi         sp, a5, -1334
                  auipc        s11, 392113
                  addi         a6, s3, 14
                  and          s1, t1, s3
                  slt          gp, a0, s7
                  and          t2, s0, a6
                  sra          s1, ra, t5
                  sll          tp, a6, s11
                  xor          s7, s4, s9
                  sra          ra, s9, a3
                  ori          s8, s3, -1059
                  srai         a7, a2, 19
                  auipc        s3, 812631
                  add          t5, t4, gp
                  srl          s3, t6, ra
                  lui          s2, 119740
                  sll          t6, s8, a3
                  and          s9, tp, s6
                  xor          a6, t0, a7
                  sub          s8, s7, tp
                  andi         a1, a5, 961
                  and          a7, a6, s8
                  addi         s5, t2, -835
                  srl          a7, zero, a0
                  andi         s0, s5, 1150
                  sub          a3, a0, t4
                  andi         s10, sp, -747
                  andi         gp, zero, 1755
                  xor          s2, t5, s3
                  andi         a4, t2, -1273
                  xori         s7, t5, 2004
                  auipc        gp, 669064
                  srli         s4, a7, 22
                  sltiu        s2, a4, 1099
                  xor          s9, s5, t5
                  slti         s2, a5, 82
                  add          s9, a6, s2
                  slti         a0, s6, -2027
                  slli         t5, t3, 29
                  andi         a4, t4, -1557
                  auipc        a4, 356555
                  lui          zero, 837252
                  ori          s0, s5, 1010
                  slti         s4, s8, -30
                  and          t2, s5, a3
                  slli         t6, t1, 7
                  ori          sp, ra, -2031
                  and          s10, s7, s7
                  slt          s11, s7, t0
                  and          ra, t6, ra
                  sra          t3, s9, t5
                  sltiu        s9, s1, -670
                  slti         a0, s7, 1436
                  srli         t6, s10, 31
                  sltu         tp, t3, s4
                  andi         s2, s5, -1076
                  srl          t2, t1, a7
                  sltiu        a0, gp, 1787
                  xor          a3, t1, a2
                  slli         tp, t5, 14
                  xori         s0, s11, 1653
                  sra          s2, s7, a2
                  srai         t6, s9, 3
                  ori          sp, t3, -342
                  andi         s8, s11, -1794
                  slli         s0, ra, 29
                  xori         s10, zero, -1765
                  add          s8, a3, s5
                  srli         s11, s4, 3
                  srli         t3, s2, 4
                  addi         s11, s6, 1584
                  sra          s4, t2, a4
                  nop
                  slt          s4, a3, sp
                  ori          a0, a5, 1568
                  slt          s3, t0, a5
                  auipc        s8, 1012313
                  auipc        a7, 299716
                  xor          a3, s0, a0
                  lui          s3, 1012067
                  sub          s1, s11, a4
                  sltiu        a0, s1, -1909
                  and          s3, t3, t5
                  ori          s3, s6, 1568
                  sub          s8, s0, a7
                  sub          zero, s3, a3
                  slli         tp, ra, 23
                  slli         t2, t2, 16
                  sub          t6, t1, t0
                  srai         s10, s11, 27
                  srai         s0, s1, 22
                  xori         a3, a1, -474
                  lui          s10, 179959
                  srli         a0, s5, 23
                  or           a6, ra, s5
                  ori          ra, a4, -863
                  or           zero, s5, t0
                  sltu         tp, s1, a6
                  slt          s1, a7, s3
                  srai         a1, t2, 21
                  nop
                  slt          a1, t3, a1
                  srli         a4, gp, 24
                  sll          s3, t5, t0
                  or           a5, s11, a4
                  nop
                  andi         s6, s10, -982
                  sltiu        t5, a0, -901
                  lui          t3, 698259
                  xor          a4, t1, s2
                  xor          s7, t4, s3
                  nop
                  slti         s6, t5, -546
                  srli         s0, s0, 27
                  sltiu        a7, s11, 1381
                  addi         s3, a6, 179
                  sll          s11, a5, a4
                  andi         a5, a4, -934
                  ori          s11, t5, 1366
                  srai         t3, t2, 30
                  slt          s0, t2, t4
                  andi         t5, s8, -461
                  andi         s11, sp, 30
                  slli         a5, s5, 20
                  slti         tp, tp, -1634
                  srli         s8, a7, 4
                  lui          ra, 298483
                  and          s3, t1, t4
                  or           t6, t6, t0
                  xori         gp, t0, 1032
                  xor          a0, gp, t4
                  srai         t3, a4, 29
                  srli         sp, s5, 5
                  srai         s5, s4, 4
                  auipc        s2, 748144
                  xor          s2, a7, t6
                  ori          t5, t1, 121
                  xori         sp, t6, -957
                  slli         gp, a0, 18
                  slt          a0, t0, a4
                  auipc        s8, 296922
                  auipc        a6, 755752
                  sub          t3, s8, s4
                  and          a4, zero, s0
                  slt          s6, s9, s11
                  srli         t2, t4, 4
                  xori         s0, a1, 1547
                  ori          s6, s5, -274
                  or           ra, s9, gp
                  addi         gp, zero, -1094
                  sltu         s9, t5, s0
                  sub          t5, zero, a3
                  slti         s8, t1, -1281
                  or           a5, ra, s0
                  sll          s7, t5, ra
                  auipc        s2, 9951
                  nop
                  andi         s1, s7, -1224
                  slt          a4, s2, a5
                  srli         s4, a2, 29
                  sltiu        t6, s5, 1297
                  addi         t2, t6, 184
                  slti         s6, t5, -1525
                  auipc        s9, 873601
                  sra          s2, ra, a5
                  srai         ra, s9, 28
                  sra          s6, gp, s9
                  auipc        s8, 228205
                  and          s9, t4, t2
                  srli         s3, s8, 1
                  xori         a5, t0, -1177
                  lui          t6, 863272
                  xori         t3, s10, -1169
                  addi         zero, s5, -18
                  xori         ra, a5, -814
                  auipc        a7, 936236
                  sra          s2, a7, s1
                  sll          gp, a4, s3
                  or           s7, t5, a4
                  xor          a3, s11, s1
                  slt          zero, s7, s0
                  ori          t6, s7, -246
                  xor          s2, s0, t3
                  nop
                  or           a5, s2, t1
                  sub          t3, t3, a2
                  slli         s1, a1, 27
                  andi         a5, a4, -1636
                  sltiu        a5, s11, -1146
                  srl          s2, s3, s2
                  nop
                  auipc        a2, 189887
                  sltiu        t6, zero, 13
                  sub          sp, t6, gp
                  sra          s5, s1, s11
                  srl          a0, a7, a4
                  nop
                  add          s3, t5, a5
                  nop
                  addi         t5, s6, -1061
                  sub          s10, s9, a2
                  sll          zero, s1, s8
                  srai         s8, s4, 30
                  slti         t3, a1, -1662
                  xor          a2, s6, a7
                  add          a1, s8, a0
                  sll          s2, a7, s6
                  slli         s3, t3, 13
                  auipc        s3, 739789
                  srai         s1, a1, 3
                  srli         a7, ra, 4
                  nop
                  nop
                  nop
                  nop
                  srl          a4, a4, s0
                  sra          a3, t5, a4
                  andi         gp, s9, 963
                  sra          s0, s2, s3
                  lui          t2, 1010380
                  and          s7, t5, s7
                  slt          s0, t6, s1
                  add          s2, t3, t6
                  sll          s4, s2, s2
                  or           t5, s11, a6
                  slti         s0, a1, -1629
                  sra          a6, s3, t0
                  xor          gp, a1, gp
                  srai         s8, tp, 0
                  or           a5, t0, t1
                  slli         s6, gp, 6
                  sra          s4, sp, gp
                  sub          tp, s3, t0
                  srl          a3, s8, s3
                  andi         gp, s6, 951
                  auipc        t6, 924617
                  nop
                  slli         t6, s8, 3
                  andi         a7, t4, 1778
                  lui          s3, 757050
                  sltiu        s8, t3, 1221
                  sra          s3, s8, a5
                  slt          s0, t4, a4
                  ori          s6, a3, -652
                  srli         s11, s2, 31
                  and          a0, t3, a2
                  and          a7, s7, a2
                  slli         t3, s4, 17
                  xor          t3, t6, t0
                  and          a5, s4, gp
                  slli         s1, s3, 14
                  addi         a1, s7, 672
                  srai         s6, s3, 23
                  nop
                  sltiu        s3, s2, 1807
                  or           s9, gp, ra
                  xori         gp, s5, 1118
                  andi         tp, t1, 1744
                  addi         s8, s0, -1844
                  sub          s11, tp, t3
                  auipc        ra, 926241
                  slt          t3, t2, ra
                  nop
                  srai         a0, gp, 25
                  slt          s0, t5, s10
                  sll          a4, s5, s4
                  xori         s7, t5, 897
                  sra          s2, s5, s2
                  andi         s5, ra, -781
                  or           gp, sp, a0
                  sltu         s7, s5, zero
                  addi         a5, s10, -11
                  xor          s5, ra, a1
                  slli         s0, sp, 2
                  lui          zero, 868095
                  or           a3, ra, a4
                  sra          a4, a2, zero
                  or           s9, t3, a1
                  nop
                  sra          a3, zero, s5
                  srai         t2, s7, 19
                  slli         a0, a7, 29
                  sub          s3, s1, zero
                  sltu         s6, a5, s3
                  sra          t3, s8, a1
                  srl          s8, s10, t6
                  sltiu        s3, s7, 827
                  sltu         a5, tp, s0
                  sra          t6, a6, tp
                  sll          t3, s7, a5
                  srl          s0, s3, s0
                  srl          a4, tp, sp
                  srl          s6, gp, a3
                  ori          tp, s6, 684
                  andi         a0, s11, 1132
                  slli         s8, t1, 12
                  and          s1, s5, a0
                  slti         s9, s1, -172
                  xor          zero, a0, a0
                  xori         s9, a6, 36
                  slli         s5, gp, 17
                  or           a2, a7, sp
                  add          t3, s8, t5
                  sra          t3, s2, gp
                  addi         a6, t4, 1664
                  ori          a5, a1, -249
                  sub          s8, zero, s3
                  lui          a3, 543698
                  sub          s3, s0, t5
                  srl          s1, gp, ra
                  sltu         s5, sp, gp
                  and          a7, zero, a3
                  auipc        t2, 673638
                  addi         s6, sp, 36
                  sra          s4, gp, t5
                  sub          sp, s0, t2
                  addi         s4, s6, 1747
                  and          a7, a5, a6
                  sub          s0, t3, t4
                  slli         s9, a1, 5
                  sra          s10, a7, a0
                  or           s11, a7, a4
                  xor          s6, s7, zero
                  lui          t3, 368214
                  andi         gp, s7, -1557
                  sll          s1, t3, s6
                  slti         a4, sp, 1289
                  slli         s7, s9, 8
                  slt          a1, sp, s3
                  slli         s8, ra, 20
                  srli         s10, a4, 7
                  srli         s2, a6, 9
                  srai         s0, a2, 2
                  ori          sp, ra, -1402
                  xori         a1, s2, 379
                  slti         t6, t5, -1791
                  nop
                  andi         zero, a7, -540
                  lui          gp, 54174
                  lui          t5, 314717
                  or           a1, s5, ra
                  ori          t2, tp, -1850
                  srli         s7, t3, 6
                  slti         gp, a5, -1152
                  srai         a1, a7, 21
                  add          s6, ra, s8
                  addi         t6, ra, -1709
                  addi         s1, s1, 614
                  add          t2, t2, s5
                  andi         a4, ra, 1935
                  srli         s3, a2, 13
                  auipc        sp, 510454
                  lui          s8, 1013829
                  auipc        s3, 410641
                  xor          sp, t6, s0
                  slli         s1, a1, 15
                  sltu         s2, zero, t4
                  sub          t5, s2, a5
                  srl          s3, s8, s2
                  lui          s2, 693804
                  srli         s7, t6, 13
                  add          zero, s2, s7
                  add          s8, a1, s6
                  auipc        t5, 368344
                  slti         tp, t2, -1476
                  andi         s11, t0, 1325
                  sra          a3, a2, s10
                  xori         s4, t6, 615
                  auipc        sp, 817854
                  andi         s11, s2, -1318
                  and          s9, a5, s11
                  slti         a4, a1, 864
                  sltu         tp, a7, s3
                  lui          tp, 252857
                  addi         a2, t6, 819
                  slt          s0, s11, zero
                  srai         s2, s1, 16
                  srli         s11, t4, 19
                  sll          s7, t0, s6
                  slli         t3, t2, 22
                  sra          t6, ra, t4
                  slli         s5, gp, 27
                  slli         s2, t5, 6
                  xori         a1, a1, 1277
                  and          a4, t6, a7
                  xori         s7, a0, -881
                  add          t5, gp, tp
                  lui          a1, 933652
                  sltu         s5, t0, s6
                  auipc        s1, 216350
                  slli         a4, t1, 25
                  sll          a0, s11, gp
                  addi         zero, s3, -485
                  nop
                  srli         a2, s8, 30
                  sltu         a3, gp, a2
                  sltiu        t3, s4, -1995
                  sltu         tp, s10, s11
                  sltu         zero, a4, s3
                  or           s5, s1, zero
                  add          ra, t6, s6
                  add          t5, s2, s6
                  andi         s5, ra, -77
                  nop
                  sra          tp, a6, s10
                  srl          s2, s4, gp
                  slti         tp, s2, -429
                  sll          t2, s8, s4
                  auipc        s1, 48294
                  and          gp, a1, a2
                  slti         s7, a7, 2004
                  slli         s0, a1, 20
                  slt          a0, a5, t5
                  xori         tp, s10, 15
                  sltiu        a6, ra, -1056
                  auipc        a7, 216997
                  srli         s5, gp, 26
                  add          gp, s2, a7
                  srai         a7, s9, 9
                  sll          ra, s7, a7
                  srl          zero, s11, s1
                  sll          t6, s10, s9
                  addi         s4, t6, 2030
                  ori          t2, t1, 1124
                  srli         s10, s6, 25
                  lui          s0, 576760
                  addi         a6, a2, 883
                  srl          s0, a1, s11
                  srl          s7, s1, a5
                  addi         s1, a7, -1228
                  srai         a4, a5, 31
                  or           s6, a1, a1
                  xor          s5, t4, s3
                  sltiu        a1, s2, 1446
                  ori          s9, s11, -875
                  xor          s11, t3, s11
                  slt          tp, t4, s5
                  auipc        s6, 180251
                  sltu         s7, t2, ra
                  andi         a0, s0, -1689
                  or           a1, t1, t2
                  auipc        s8, 704557
                  xori         t5, s8, 1565
                  ori          s10, t1, -1298
                  or           t6, a0, tp
                  srl          s3, s8, a0
                  slti         a0, t1, 851
                  srl          s2, zero, t6
                  and          t6, a2, tp
                  xori         a4, t4, -677
                  slt          s11, s10, t0
                  or           a2, t1, s1
                  sltiu        t2, a6, 93
                  sub          s7, s9, s11
                  srli         s2, s2, 10
                  nop
                  nop
                  srai         t6, s6, 11
                  xori         t5, s3, 10
                  li           a5, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           a4, 0x0
                  li           s5, 0xffffffff
                  li           s7, 0xbf8f2f06
                  li           tp, 0xffffffff
                  li           a0, 0x0
                  li           a2, 0xdc4e792b
                  li           a7, 0x80000000
                  li           s2, 0xffffffff
                  li           t3, 0xfc087163
                  addi         tp, s7, -192
                  add          a7, t3, a0
                  auipc        s5, 232482
                  nop
                  auipc        tp, 166646
                  lui          s2, 1035793
                  auipc        s5, 89642
                  lui          s2, 119445
                  auipc        tp, 380202
                  add          a5, a0, tp
                  auipc        s7, 742481
                  auipc        tp, 905230
                  addi         t3, s5, 250
                  lui          a7, 140835
                  lui          a7, 96286
                  auipc        a5, 719581
                  lui          a5, 238535
                  nop #end riscv_int_numeric_corner_stream_7
                  and          s1, a7, t4
                  ori          a7, zero, 1663
                  sra          s6, a1, tp
                  srai         a4, s1, 6
                  ori          s10, a4, 1023
                  andi         s3, ra, 35
                  sltiu        t6, gp, 1384
                  or           zero, s10, a7
                  slli         a2, t6, 2
                  srli         t6, t3, 31
                  slt          s9, s3, s2
                  andi         s5, a2, 1642
                  lui          a0, 956144
                  srli         sp, s10, 15
                  xori         a7, t6, -135
                  add          s2, gp, t3
                  andi         s3, t1, 1648
                  lui          t3, 602560
                  srl          a0, s11, s8
                  add          t5, a2, a3
                  sltu         s11, a3, a5
                  auipc        sp, 490751
                  auipc        a7, 530527
                  slti         s4, t5, -1808
                  sub          tp, gp, a0
                  slli         a6, s3, 7
                  sll          s10, a2, t5
                  addi         s11, s1, -1849
                  srli         a1, tp, 14
                  ori          t6, s0, -525
                  slli         s6, s1, 8
                  andi         t5, t5, 1718
                  add          a2, t2, sp
                  xor          gp, s7, s4
                  sra          s2, a6, s3
                  addi         a7, tp, -22
                  srl          a5, s7, s2
                  nop
                  add          tp, s9, a4
                  xori         s6, s7, -1369
                  andi         ra, a1, 690
                  nop
                  nop
                  and          s10, t4, s8
                  addi         s1, s11, 1316
                  sltiu        t3, ra, -186
                  ori          s10, s10, -665
                  xor          ra, s10, a0
                  lui          a0, 337488
                  addi         s11, t1, 692
                  andi         zero, a6, -141
                  slli         s1, t2, 20
                  or           tp, a3, tp
                  slti         zero, s7, -714
                  xori         a3, s5, 1807
                  andi         s4, a7, 951
                  andi         tp, gp, 934
                  sltu         s6, s4, s2
                  sltu         a4, a4, gp
                  lui          s0, 403094
                  sltiu        s0, gp, 659
                  sub          a4, s1, s5
                  srai         a0, s0, 11
                  add          s3, t0, t4
                  srl          s11, s0, a1
                  srli         zero, t0, 16
                  slti         s10, s6, 919
                  or           zero, a0, s5
                  slti         a4, a2, -1106
                  xori         s7, s3, -181
                  andi         s8, a1, -945
                  addi         s0, s10, -352
                  srl          t5, tp, gp
                  andi         a7, s2, -1045
                  srl          a6, s8, a7
                  xori         t5, a6, 855
                  or           tp, t1, s8
                  and          gp, zero, t0
                  li           t5, 0x2e0b2ccf #start riscv_int_numeric_corner_stream_10
                  li           s6, 0x80000000
                  li           a5, 0x80000000
                  li           s0, 0xf715893b
                  li           s9, 0xffffffff
                  li           a7, 0x0
                  li           t2, 0x80000000
                  li           s1, 0x80000000
                  li           ra, 0xffffffff
                  li           s2, 0xb797b7bb
                  nop
                  lui          a7, 904426
                  lui          a5, 678690
                  nop
                  auipc        s1, 402385
                  lui          s1, 151345
                  nop
                  addi         s6, a5, 566
                  nop
                  sub          s0, s1, s1
                  auipc        s9, 775249
                  sub          t5, t5, s6
                  lui          s9, 464138
                  lui          s1, 692
                  sub          a5, a7, s0
                  nop
                  nop
                  lui          a5, 4040
                  lui          s6, 805742 #end riscv_int_numeric_corner_stream_10
                  and          s9, t1, a4
                  srl          s6, s10, s0
                  sub          t5, sp, s2
                  xor          s5, t0, a4
                  and          s4, zero, a3
                  addi         a4, s10, 963
                  srli         a1, t5, 16
                  or           a3, a5, s9
                  lui          t2, 426513
                  srli         ra, a1, 1
                  xori         a5, s4, -713
                  add          a6, t0, s3
                  slti         s5, gp, 750
                  nop
                  lui          ra, 688718
                  srai         s1, t5, 5
                  andi         a1, a4, -630
                  slli         a5, s11, 1
                  srl          s1, ra, s2
                  ori          s11, zero, 986
                  and          s10, zero, s0
                  slli         gp, s6, 4
                  srai         t5, zero, 17
                  sltu         s5, s11, t5
                  slti         s2, gp, -841
                  ori          a4, t5, -1781
                  sub          s1, t5, t3
                  or           t2, a0, s6
                  li           a3, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           s9, 0x3c4a74e9
                  li           s6, 0x80000000
                  li           t2, 0x80000000
                  li           ra, 0x3df1c610
                  li           s5, 0x8dda0078
                  li           s0, 0xc59e48a0
                  li           a4, 0x80000000
                  li           a7, 0x80000000
                  li           a6, 0x0
                  nop
                  auipc        s5, 801320
                  addi         s5, a3, 1459
                  auipc        a3, 1006189
                  nop
                  auipc        a4, 886081
                  addi         a3, a6, -1781
                  auipc        t2, 928023
                  lui          s9, 484075
                  addi         s6, ra, -777
                  auipc        a7, 382070
                  addi         a3, s0, -987
                  nop
                  lui          t2, 831066
                  lui          a6, 745611 #end riscv_int_numeric_corner_stream_9
                  addi         a1, s8, -540
                  slt          ra, s1, s8
                  auipc        sp, 748346
                  slli         a4, s11, 5
                  slti         a5, tp, 1746
                  xori         zero, a4, 1719
                  srli         s3, t3, 15
                  srai         a1, a0, 5
                  srli         a4, ra, 4
                  lui          a6, 165897
                  nop
                  slt          t6, ra, s0
                  addi         a5, t6, 201
                  addi         s10, a3, 227
                  sltu         a2, a1, t6
                  auipc        t6, 726288
                  xori         a6, sp, -234
                  xori         a3, s6, 1327
                  addi         a3, a5, -198
                  sub          zero, t2, t2
                  sra          a4, sp, a4
                  addi         t5, gp, -1226
                  xor          zero, s2, s8
                  addi         s10, s5, -690
                  nop
                  sltiu        s5, a7, -986
                  add          s9, s6, t1
                  srl          s10, a7, s11
                  slli         t2, t5, 30
                  sub          t2, a5, t4
                  or           a3, s9, t4
                  srl          zero, s9, a3
                  ori          gp, s4, -993
                  sub          a4, s6, s9
                  sub          s4, s1, t1
                  auipc        s8, 303280
                  or           a7, a2, s10
                  slli         a1, zero, 24
                  xori         a3, zero, 1104
                  lui          s5, 366364
                  srli         s7, gp, 11
                  sltu         s3, s1, s2
                  srli         s10, s7, 19
                  sltu         s9, s8, s1
                  nop
                  ori          zero, zero, 940
                  nop
                  add          s2, a6, a0
                  slt          gp, sp, s2
                  xori         a4, a3, 623
                  sltiu        a3, a2, -2008
                  sltiu        a6, a4, -324
                  lui          t3, 828317
                  srai         a1, tp, 24
                  slti         a2, s6, -2000
                  sra          s7, t5, zero
                  auipc        t6, 34538
                  sll          a1, zero, t2
                  auipc        s10, 718152
                  lui          t6, 994211
                  sltu         s2, s2, a6
                  and          t6, s9, t0
                  slt          tp, t5, a7
                  add          a3, t5, a2
                  or           a4, a2, a4
                  auipc        sp, 117522
                  lui          a5, 513943
                  sltiu        s6, t6, 1498
                  slt          t2, t6, s8
                  srli         a5, a6, 22
                  slti         gp, zero, -836
                  sltiu        s11, a3, 455
                  addi         t3, a3, -1773
                  srai         s11, t4, 28
                  li           t2, 0xfcfd71e3 #start riscv_int_numeric_corner_stream_19
                  li           sp, 0x0
                  li           a1, 0x0
                  li           a0, 0x0
                  li           s4, 0x80000000
                  li           ra, 0x80000000
                  li           a5, 0x80000000
                  li           s11, 0xffffffff
                  li           s7, 0x13432b54
                  li           a3, 0x0
                  addi         t2, a5, -385
                  auipc        a5, 888222
                  lui          s4, 1016793
                  lui          a3, 571448
                  sub          s7, a1, a3
                  addi         a1, s4, -692
                  addi         a3, s11, -195
                  sub          s7, a1, s4
                  auipc        s11, 226930
                  add          a5, a0, sp
                  addi         s11, a5, -994
                  nop
                  sub          t2, a5, s11
                  add          t2, s4, a3
                  add          s4, s7, a5
                  addi         a0, ra, -1703
                  lui          a3, 433067
                  auipc        s11, 36388
                  sub          a1, a5, t2
                  sub          a0, a5, s7
                  auipc        s7, 555208
                  addi         t2, a1, -40
                  auipc        t2, 822017
                  auipc        a1, 942628
                  add          s4, sp, a0
                  sub          ra, ra, s11
                  sub          a3, s4, sp
                  auipc        t2, 565276
                  addi         a1, a3, -979
                  nop #end riscv_int_numeric_corner_stream_19
                  andi         s1, s9, -113
                  srl          a5, a2, sp
                  auipc        a2, 143264
                  and          s1, s0, s2
                  andi         s5, t3, 416
                  xori         a1, a0, -336
                  nop
                  and          s8, s9, a6
                  sltu         s4, a6, s6
                  slt          a6, gp, s3
                  sub          s9, s3, s8
                  sra          s9, t4, a4
                  slli         s0, s9, 8
                  sll          s7, zero, t0
                  slli         t3, a0, 23
                  sltu         s9, a3, t0
                  and          a2, s2, s6
                  xor          a7, a5, s4
                  slt          s6, a4, sp
                  auipc        t5, 51686
                  xori         s6, s1, 1250
                  add          t6, s9, a1
                  xori         s2, s7, 879
                  srli         t5, tp, 19
                  sra          s1, t3, s4
                  xor          a3, s2, a1
                  or           t3, zero, a0
                  slli         t2, t4, 9
                  nop
                  andi         tp, s1, 1553
                  auipc        tp, 119366
                  andi         s8, t2, -76
                  slli         a1, a4, 14
                  and          tp, a5, a7
                  slli         s4, zero, 19
                  sll          a4, t2, a1
                  sra          s11, s3, s4
                  nop
                  lui          t3, 557218
                  srai         a7, t3, 14
                  srl          s7, ra, s8
                  slli         a0, a5, 7
                  srai         a4, t5, 22
                  srli         a0, t4, 4
                  xor          s5, tp, s8
                  srai         a5, t3, 20
                  sub          a3, s5, a1
                  slti         a2, t5, 122
                  andi         a0, tp, -745
                  and          t5, s3, s8
                  lui          a1, 386116
                  addi         sp, s10, -1320
                  and          s8, s10, s0
                  ori          s0, s2, 149
                  srl          s1, s5, tp
                  srl          zero, a5, s10
                  ori          s1, s11, -1093
                  srli         a2, a6, 2
                  or           a4, s0, t6
                  auipc        t5, 812732
                  andi         s6, a1, 590
                  andi         a1, a7, 295
                  lui          ra, 976706
                  sltu         s2, t4, s1
                  slt          zero, s1, s9
                  slti         t3, s5, -1205
                  srai         gp, s7, 27
                  ori          a4, s10, -1590
                  sra          a3, tp, s3
                  sltiu        s1, t0, 1899
                  slli         t3, t5, 7
                  ori          sp, t2, -184
                  srli         zero, zero, 10
                  and          a4, s4, s6
                  andi         a2, a3, 1449
                  sra          zero, a0, tp
                  srai         s3, sp, 11
                  xor          s0, zero, a1
                  add          s6, a5, a1
                  sll          s9, s0, t0
                  add          s4, s0, s10
                  sll          s10, s2, a6
                  nop
                  add          s4, s0, s0
                  or           sp, s9, s8
                  srl          s9, s7, a2
                  sltiu        ra, t2, -110
                  lui          a3, 314685
                  srli         s8, s9, 6
                  sltu         a1, zero, sp
                  srai         t2, a3, 20
                  nop
                  lui          a6, 80848
                  xori         s7, s4, 93
                  andi         s6, t6, -288
                  or           a4, s1, a1
                  srli         a4, s6, 7
                  sll          s2, t6, s11
                  sra          ra, t1, t2
                  xor          zero, s3, s3
                  andi         t6, a0, -1119
                  lui          t3, 606531
                  xori         zero, a5, 579
                  xor          s1, zero, gp
                  or           gp, a6, a0
                  srai         a6, s6, 30
                  addi         a2, t4, -1437
                  sltu         a2, s11, t6
                  sltiu        s6, t0, -1076
                  sltu         s10, s0, t0
                  srli         a4, t0, 28
                  srli         a4, s4, 19
                  or           t3, s10, t0
                  nop
                  andi         a6, a5, 395
                  andi         ra, a3, 1629
                  ori          a4, a0, -1318
                  sll          a2, s11, tp
                  auipc        a6, 815568
                  slli         s8, t3, 13
                  srai         gp, s1, 28
                  slti         a4, t3, -194
                  sltu         s4, s11, gp
                  add          t6, s11, s4
                  slt          tp, s3, s3
                  sra          a6, ra, s2
                  andi         a1, a3, -1913
                  lui          gp, 535759
                  xor          t2, a3, a3
                  sll          s3, a5, ra
                  srai         s0, a5, 28
                  nop
                  sltiu        t6, t4, 1305
                  or           a6, a1, a1
                  sra          s6, s4, t5
                  auipc        s2, 576502
                  slt          a5, t3, tp
                  nop
                  slt          s7, s2, sp
                  sltiu        s6, t5, -1599
                  add          s10, t1, s2
                  xor          a2, s5, tp
                  sltiu        t2, t4, -731
                  andi         a2, t4, 955
                  sub          s4, s1, a6
                  ori          s10, a4, -546
                  slt          a2, s3, s1
                  lui          tp, 634439
                  or           s4, s5, gp
                  srli         t3, t1, 25
                  sra          s10, a1, a6
                  sra          tp, s1, s2
                  sltu         a1, s5, t4
                  or           sp, s11, ra
                  srl          s10, s11, t0
                  andi         a1, a2, 1781
                  auipc        a3, 659154
                  auipc        a1, 577758
                  nop
                  addi         a3, a2, 1136
                  sltu         a7, s9, zero
                  nop
                  nop
                  lui          gp, 569051
                  srl          zero, t0, t3
                  sub          a2, a1, t2
                  sra          s10, a2, a6
                  slt          t6, tp, t6
                  slti         gp, s10, 1997
                  slli         gp, s9, 12
                  addi         a2, ra, 639
                  xori         t5, a1, 1542
                  auipc        s11, 202428
                  slti         s4, sp, -622
                  andi         s5, t2, -816
                  nop
                  and          sp, t4, a5
                  or           s10, a3, tp
                  add          a5, s9, s9
                  and          s6, s11, gp
                  lui          s7, 913294
                  or           s0, a1, s7
                  xor          tp, t5, ra
                  slti         s1, zero, -1744
                  lui          gp, 656291
                  addi         gp, a7, -466
                  sll          a6, s1, s2
                  slti         a1, s5, -905
                  slt          s3, t6, s8
                  ori          a0, s9, 709
                  ori          a2, s8, -1111
                  ori          s9, a1, -288
                  xori         sp, s10, -1443
                  sub          s3, zero, a4
                  sra          sp, s8, s11
                  slli         t6, s1, 29
                  nop
                  slt          s0, t0, t4
                  xori         a4, s6, 1326
                  add          s11, t5, s3
                  xori         a2, t4, -1564
                  slli         sp, ra, 1
                  nop
                  and          a4, a4, a6
                  sra          tp, a7, s7
                  nop
                  sll          a3, a6, a0
                  sra          t3, s9, a2
                  sltiu        a0, a5, 1156
                  nop
                  xori         a0, s11, -469
                  slli         s7, sp, 30
                  andi         a6, s7, 672
                  sltu         s7, s8, tp
                  add          a6, t3, t0
                  xor          tp, t6, s1
                  addi         s9, ra, 2040
                  srli         a2, a1, 17
                  addi         s10, sp, 1401
                  sub          t5, s2, s0
                  sltu         tp, t1, t4
                  slt          a0, s1, s0
                  xor          s10, a5, a5
                  srai         a7, t6, 4
                  lui          s5, 115922
                  add          s6, gp, s6
                  sltu         a4, t3, s9
                  or           t2, t4, zero
                  sra          a6, a7, a5
                  nop
                  sltiu        a5, s7, 2019
                  srli         tp, gp, 25
                  lui          sp, 908395
                  nop
                  lui          s0, 1019167
                  xor          s6, t5, a1
                  sltu         a1, a4, s4
                  nop
                  sra          t5, gp, a4
                  add          a5, tp, s0
                  auipc        a1, 533929
                  slt          sp, t6, t6
                  xori         t6, a5, -1205
                  addi         a4, s5, -1385
                  add          s3, t3, t0
                  or           zero, s1, s2
                  lui          t3, 130973
                  sll          a0, sp, s8
                  xor          a5, ra, s8
                  sll          s1, t0, gp
                  srai         a2, t0, 30
                  sltu         t2, s3, t6
                  sltiu        s0, a7, 1247
                  add          s4, gp, t3
                  sra          a4, gp, zero
                  ori          a7, s5, 95
                  slli         t5, s5, 27
                  slt          a4, a5, s3
                  and          a0, t0, a6
                  sra          sp, t1, t5
                  or           gp, t5, t5
                  sra          tp, t3, s1
                  sra          s4, s10, s7
                  nop
                  sra          a0, a6, s9
                  srli         s9, t3, 25
                  sll          t6, a2, t4
                  add          sp, t0, t5
                  addi         a4, a4, -143
                  or           a7, zero, a0
                  add          a1, s6, a3
                  nop
                  srai         s4, a5, 4
                  andi         sp, a1, -1204
                  xori         t3, a3, -808
                  srai         s5, t5, 12
                  xor          s3, s10, t5
                  or           t3, t1, s8
                  xori         a3, s3, 1367
                  add          s4, t5, gp
                  xori         s6, t0, -464
                  or           ra, t2, s4
                  auipc        ra, 785919
                  sll          s9, a1, gp
                  srl          a4, s2, s10
                  slt          s0, s5, a4
                  slt          s11, t4, s1
                  and          a3, s7, s0
                  sltu         s5, sp, ra
                  lui          s2, 1038638
                  lui          a5, 500605
                  addi         t3, t6, -1477
                  or           s10, t2, sp
                  sltiu        gp, s5, -1896
                  nop
                  xor          a7, a0, s10
                  ori          a5, sp, -1410
                  srai         sp, s5, 27
                  lui          t2, 42893
                  sltiu        a2, t3, 1656
                  slli         s4, s9, 5
                  add          a3, sp, a6
                  srli         tp, s10, 0
                  sltu         s2, sp, s3
                  sub          sp, s1, a1
                  srl          a7, s3, a6
                  sra          s4, a2, a5
                  srl          s0, s11, s6
                  sub          a2, t0, sp
                  xor          a4, s1, s3
                  or           s9, s0, zero
                  srl          ra, a5, a3
                  slti         ra, a7, -472
                  add          s4, s1, a1
                  sltu         s9, a1, a3
                  sra          gp, a2, a7
                  or           a7, a6, a6
                  nop
                  ori          s3, t0, -1969
                  sll          a1, s10, s8
                  srai         s2, a0, 18
                  sra          s11, a7, s7
                  addi         a0, a2, 341
                  andi         t3, a4, 550
                  srli         t3, gp, 5
                  lui          s5, 695353
                  slt          a0, s3, t0
                  or           s9, zero, s8
                  sra          s5, s7, t2
                  andi         ra, t4, -410
                  add          a4, t6, s11
                  ori          s3, s6, 1452
                  sub          gp, t4, t0
                  xor          a3, s10, s10
                  add          a6, t4, s0
                  slt          s2, a0, s8
                  xor          sp, t1, s1
                  ori          s2, s4, 1274
                  nop
                  xori         s7, s5, 1858
                  xori         a6, s2, -151
                  slti         s5, s5, 148
                  slli         s7, sp, 24
                  slti         t3, s8, 313
                  slt          s8, t6, gp
                  slt          s5, s9, ra
                  sltiu        s8, s5, -433
                  and          t5, t2, s11
                  sltiu        s4, tp, -1824
                  ori          s8, s11, -531
                  xori         s5, zero, -1561
                  xori         s2, a1, -1065
                  slli         ra, gp, 2
                  auipc        tp, 925963
                  sltiu        tp, a1, 1074
                  sll          a1, a0, ra
                  addi         a5, t4, -2008
                  xori         t6, t3, -598
                  srl          sp, sp, a5
                  xor          s6, a6, a2
                  or           s7, a0, s9
                  sltiu        a3, s1, 895
                  slt          s0, s6, s10
                  lui          s1, 73402
                  xori         a3, ra, -980
                  and          gp, a6, a6
                  sra          s9, s3, t6
                  and          s3, s10, s5
                  sll          a7, a6, s11
                  xor          a2, a4, s0
                  and          a7, t6, a5
                  nop
                  andi         s7, s5, -1543
                  lui          s8, 964537
                  sll          ra, a2, t5
                  srli         s5, a2, 28
                  xor          s3, s0, t0
                  auipc        s6, 668379
                  sltiu        a0, s1, 209
                  srli         s1, s11, 22
                  ori          a0, tp, -373
                  srli         a7, t2, 14
                  sra          a7, zero, tp
                  nop
                  sltu         a0, s2, s7
                  sll          s10, s6, a0
                  slli         s9, s5, 11
                  and          s6, s8, s3
                  nop
                  srli         s8, t6, 12
                  sltiu        zero, tp, 1077
                  slli         ra, zero, 22
                  sltiu        s8, s11, 1520
                  slt          ra, a5, t3
                  slt          s7, s3, s5
                  ori          a3, s1, 1984
                  sll          s4, t6, ra
                  xori         t3, s9, -955
                  and          gp, a4, t0
                  sll          sp, a0, ra
                  xor          s2, sp, t3
                  slti         s11, ra, 1435
                  nop
                  nop
                  slti         ra, s11, 1363
                  srai         t5, ra, 21
                  and          a4, zero, a3
                  sra          a5, t2, t1
                  add          t6, a3, sp
                  sra          s6, t1, s8
                  sll          zero, a1, a1
                  nop
                  slli         s7, t1, 17
                  slli         s11, t3, 11
                  slti         t6, s7, 1554
                  sra          s3, s5, s9
                  andi         t2, t2, 460
                  xor          s8, s6, t0
                  or           s5, a7, t4
                  andi         a5, s4, -527
                  slt          s5, s6, a5
                  auipc        s8, 56763
                  slt          a7, s4, a7
                  xori         a5, s0, -1270
                  and          s5, s5, a0
                  sra          a1, ra, a4
                  sra          a7, a6, s11
                  nop
                  auipc        a6, 606936
                  srai         tp, t1, 8
                  sltiu        a4, t4, -1592
                  or           tp, a2, s1
                  sltu         a2, s11, t6
                  slti         s4, a5, -411
                  or           t3, a1, a5
                  srli         a6, a5, 30
                  or           a0, s3, s6
                  nop
                  sra          t3, t0, a4
                  sra          s2, ra, t3
                  addi         t2, t0, -399
                  addi         s5, gp, 1779
                  addi         s1, a4, 1853
                  srli         s5, a2, 18
                  or           a4, a7, s3
                  srai         s9, sp, 12
                  xori         zero, a4, 1619
                  srai         s4, s8, 2
                  nop
                  ori          a7, s7, -457
                  nop
                  andi         a2, t6, -143
                  or           a3, tp, t4
                  slt          s4, s10, s7
                  add          a6, a6, s4
                  xori         s8, s4, 1266
                  and          tp, a2, sp
                  slti         a0, s3, -820
                  sltu         s11, a7, a7
                  sll          s10, s11, t2
                  sltu         sp, sp, s3
                  sll          a7, s6, s6
                  auipc        gp, 822425
                  and          s3, s7, a4
                  srai         s5, s3, 13
                  slti         s7, a7, -1461
                  srl          s3, a7, t4
                  sll          a2, zero, s2
                  add          t2, a4, t2
                  ori          t5, tp, -2010
                  nop
                  srl          s8, t5, s0
                  lui          a4, 415642
                  srli         a2, tp, 7
                  lui          s6, 787019
                  sltiu        s1, s9, 659
                  sltiu        s6, s1, -711
                  sub          ra, s3, s6
                  srli         a4, s0, 13
                  or           a5, ra, t3
                  sltu         s8, tp, t4
                  nop
                  sltiu        s4, a5, -1363
                  slli         s11, s10, 29
                  andi         a3, a1, -1212
                  slt          t2, s6, s3
                  srai         zero, gp, 26
                  addi         tp, zero, -1422
                  and          a4, a6, a6
                  or           s0, a0, s0
                  sra          ra, t4, s2
                  slti         a6, s5, -480
                  andi         a3, s6, 2038
                  srli         zero, s8, 0
                  sra          a6, gp, t2
                  or           s8, a3, s2
                  sltu         s11, s11, sp
                  srli         s0, s10, 9
                  sltiu        zero, s8, -105
                  addi         a5, ra, 133
                  srai         t2, a6, 26
                  srai         a7, sp, 6
                  slti         s4, t0, -1345
                  srli         s2, t2, 18
                  add          gp, s3, s2
                  sra          a6, s6, s10
                  slli         s6, a3, 31
                  andi         tp, s6, 390
                  xori         a0, a2, 386
                  or           ra, a0, t0
                  srl          s7, t6, a5
                  nop
                  sll          s6, t6, s1
                  lui          s3, 557863
                  andi         sp, t6, -1361
                  slti         t5, a0, -994
                  srli         ra, t1, 20
                  slli         t6, s11, 12
                  lui          a2, 813540
                  addi         zero, a1, 103
                  sltu         t6, a1, t5
                  nop
                  addi         a7, ra, -389
                  slli         ra, a6, 18
                  srli         s10, s11, 19
                  srai         a2, s1, 18
                  sub          a3, t2, t3
                  sltiu        a1, tp, -1936
                  ori          t2, s6, 970
                  xor          a7, a5, s4
                  auipc        s8, 528081
                  andi         t2, t3, 824
                  slli         a3, ra, 1
                  slli         s1, s5, 18
                  srl          s11, s3, a6
                  srli         a0, t2, 14
                  or           a0, a3, a3
                  srl          s10, t5, a5
                  andi         a4, s9, -599
                  slli         sp, a5, 29
                  or           s4, t1, a4
                  sub          a5, a5, t1
                  srl          ra, s11, tp
                  or           zero, a0, a1
                  srl          zero, s9, s7
                  sltiu        s4, s5, 1376
                  andi         sp, s5, 1710
                  lui          a5, 723920
                  xori         a7, a0, 1092
                  auipc        a7, 480317
                  add          s2, s1, a3
                  addi         s5, a0, 1169
                  sltu         a2, ra, t3
                  lui          s7, 164913
                  slt          a5, t4, a5
                  and          s2, a5, s8
                  ori          a7, t6, -1023
                  lui          s3, 982941
                  lui          tp, 81714
                  sltiu        s11, sp, -1351
                  slti         a0, zero, -274
                  lui          t3, 431222
                  xori         s4, s5, 359
                  srai         t3, t5, 18
                  auipc        a3, 630904
                  nop
                  sll          s7, t6, s5
                  slli         t2, a0, 26
                  and          a1, t2, t1
                  sltu         s10, s11, s7
                  sra          s7, s0, ra
                  srai         zero, s0, 16
                  xor          a7, a2, s7
                  sll          a5, t4, gp
                  and          s3, t6, zero
                  srl          gp, t1, s0
                  xor          a3, a5, a1
                  sltu         a2, t1, s2
                  sra          a2, zero, s3
                  xor          zero, s4, t0
                  srl          gp, sp, s7
                  ori          t6, t2, -891
                  sll          t3, s1, s9
                  lui          a1, 633457
                  or           s0, a2, s4
                  srai         s1, s0, 1
                  or           a1, a0, a0
                  add          s4, t1, s0
                  srl          s0, s4, s6
                  andi         a6, t0, 40
                  srl          s7, a4, s1
                  sra          gp, t4, s2
                  slti         t3, a6, -395
                  srl          s3, s5, gp
                  auipc        a1, 1041152
                  add          a1, a4, a6
                  sltiu        s1, gp, 234
                  srli         s4, a5, 25
                  srai         s10, s2, 7
                  ori          s3, tp, -125
                  ori          s2, gp, 681
                  slti         s3, sp, 626
                  sra          s9, t1, s10
                  ori          s9, t3, 1113
                  and          a5, s5, a4
                  sltu         a5, t6, tp
                  ori          t6, a7, -276
                  lui          s11, 770898
                  sltiu        s1, t3, 825
                  auipc        s6, 881244
                  sra          a0, zero, a6
                  slti         t5, s3, 569
                  slli         s3, t6, 26
                  auipc        s7, 554694
                  addi         a2, a5, 2007
                  sub          s11, s7, t2
                  auipc        a6, 1013003
                  nop
                  sltu         t3, a1, s1
                  xori         s6, a5, -1282
                  sltiu        a2, t0, -1343
                  sll          ra, s3, s6
                  slti         t6, s9, -618
                  slti         s3, t0, 625
                  and          s2, t1, t3
                  sltu         a0, t0, a4
                  sltu         t6, s1, tp
                  or           s7, a2, s4
                  ori          t2, t4, 1849
                  srai         zero, s9, 13
                  or           s2, s2, gp
                  xor          ra, s4, s8
                  or           t6, a4, s0
                  slli         a1, tp, 28
                  xori         a6, ra, 1167
                  sltu         gp, t0, s10
                  sltiu        s0, ra, -1596
                  srai         s3, t2, 24
                  slt          ra, a3, s1
                  and          a5, ra, s0
                  srli         s10, s6, 29
                  sltiu        gp, t1, -154
                  xori         a6, a1, 278
                  sra          a2, t3, t6
                  sll          a3, s8, t0
                  ori          t5, zero, 488
                  addi         s3, a3, 22
                  auipc        s7, 182475
                  slt          s4, ra, s5
                  srai         a2, a2, 16
                  srli         t5, zero, 29
                  sll          ra, a4, s11
                  sll          a1, s5, s5
                  andi         gp, s0, -434
                  add          s3, zero, a6
                  and          t2, s4, zero
                  add          a1, s1, t4
                  sra          t2, t2, a3
                  or           a2, t4, a5
                  sll          s5, s8, s9
                  srli         a4, a0, 25
                  srli         s11, gp, 20
                  sra          a7, zero, s11
                  sltiu        s6, tp, 862
                  ori          s9, t3, -1592
                  sub          gp, a6, s5
                  andi         s6, t6, 845
                  sub          t6, zero, t3
                  srli         s8, t2, 29
                  xor          a1, t5, t2
                  srl          s4, t5, s1
                  slli         a6, t1, 21
                  sltiu        s7, t3, 393
                  and          s1, a3, a3
                  and          zero, s3, s2
                  nop
                  sra          s2, t6, a4
                  nop
                  addi         s4, s8, 966
                  or           a0, s8, s9
                  slli         t6, s3, 15
                  slt          a6, t4, zero
                  srli         s9, t5, 5
                  sra          s10, tp, a6
                  or           t6, a4, s9
                  srl          a6, a7, s6
                  slt          s7, a5, s7
                  slt          gp, t0, t5
                  auipc        a7, 37023
                  auipc        tp, 601731
                  andi         t2, t0, -1155
                  srl          ra, a0, ra
                  slli         a6, a2, 21
                  andi         s4, t4, -1675
                  slt          s2, a3, a1
                  slli         t6, s10, 6
                  andi         s7, s8, 1380
                  or           tp, s10, ra
                  xor          a5, s6, s5
                  sltiu        a5, s7, -1453
                  sra          s0, s7, a0
                  xori         a1, ra, 1196
                  srai         a3, s1, 11
                  xor          sp, a1, ra
                  add          sp, t3, s5
                  ori          s8, t4, -1441
                  nop
                  sltu         a7, tp, sp
                  addi         s3, s9, -1715
                  slli         s4, s8, 21
                  slt          s11, a7, s5
                  nop
                  xor          sp, t3, t2
                  sltiu        s3, a6, -571
                  srai         a7, t1, 4
                  xori         s6, tp, -982
                  xor          s4, s10, s2
                  auipc        s7, 425193
                  slti         a6, s8, -1222
                  or           s11, s10, s7
                  sltiu        t3, tp, -1870
                  ori          s1, a7, 16
                  auipc        s11, 324577
                  ori          a7, ra, -816
                  slt          a0, ra, t0
                  xori         gp, s3, -352
                  sub          a4, t6, s7
                  andi         t5, s6, 1647
                  srli         ra, ra, 0
                  add          a7, sp, s8
                  srli         s4, gp, 4
                  xori         s8, sp, -1568
                  auipc        gp, 568193
                  slti         a3, a1, 361
                  and          t2, s7, s5
                  slti         s4, a6, -39
                  sltiu        a3, a0, 1836
                  sra          t5, s1, s0
                  addi         t3, t2, -395
                  slt          tp, a0, s5
                  lui          tp, 669583
                  andi         s6, t0, 941
                  addi         a7, a6, -293
                  sub          a1, tp, t5
                  sll          s2, a5, t0
                  sub          s6, t5, a6
                  lui          s4, 702458
                  addi         sp, zero, -83
                  sra          gp, t6, s6
                  sub          s1, s0, t2
                  sra          s2, tp, gp
                  srai         s4, t0, 25
                  nop
                  addi         sp, ra, 951
                  sll          tp, a4, s7
                  srai         a1, t3, 31
                  xori         tp, s11, -1522
                  sub          sp, t3, s2
                  add          a4, s6, t4
                  slti         a5, a1, 1843
                  srl          sp, a2, a1
                  sra          a4, tp, s11
                  add          a3, s9, s7
                  srli         sp, a2, 30
                  srli         s3, t2, 25
                  slti         s11, s9, 508
                  ori          s5, tp, -248
                  sltu         ra, s1, s10
                  sltiu        a7, zero, -224
                  xor          s6, a5, gp
                  and          s7, s4, tp
                  addi         s7, s11, 394
                  sltiu        a7, tp, 1799
                  srli         ra, s11, 15
                  add          a2, a1, a2
                  xori         a3, sp, -1908
                  slli         s6, s1, 22
                  add          t5, a1, s3
                  or           s10, s7, t5
                  sra          t6, t0, s4
                  xori         t3, t4, 1858
                  sltu         a6, t5, s7
                  andi         a1, s3, -697
                  slt          a0, s10, s4
                  and          s3, a5, a2
                  sra          s8, s7, t1
                  srl          zero, s2, s6
                  lui          s9, 464543
                  andi         zero, a6, -1321
                  slli         s2, s11, 3
                  addi         t3, a1, -500
                  xor          a5, a0, a4
                  addi         s0, s5, 1991
                  xor          s10, zero, s7
                  and          s10, s1, s4
                  and          s7, a6, s1
                  slli         a6, s4, 21
                  sub          sp, a4, s4
                  sra          s5, a7, s6
                  add          t2, a0, a0
                  sra          s11, sp, t1
                  sltiu        ra, gp, 1986
                  lui          a5, 970345
                  sll          s11, s11, zero
                  srli         a0, t5, 17
                  andi         s10, t0, 375
                  srli         t2, s6, 13
                  srl          sp, t3, a2
                  srli         s3, sp, 31
                  sltu         a6, zero, zero
                  ori          s8, t4, -834
                  srli         t3, s5, 12
                  srli         t6, a0, 8
                  xor          a4, t3, t1
                  srli         tp, a2, 10
                  and          a3, sp, a7
                  and          a4, t2, gp
                  srai         s3, t1, 16
                  srai         ra, s11, 2
                  andi         a0, s11, -189
                  slti         t3, zero, 1391
                  sub          a3, t0, s8
                  srli         gp, s2, 9
                  sub          tp, t2, t4
                  slt          tp, a1, t5
                  xor          a6, s3, t4
                  or           s2, t6, a6
                  xor          a5, t1, s10
                  slli         a0, a6, 13
                  lui          s3, 424636
                  lui          t5, 634199
                  sltiu        s3, s4, 260
                  addi         a6, a7, -1510
                  sltiu        t3, t2, -1088
                  andi         s6, a4, -1583
                  andi         s4, t2, 1770
                  srai         s4, s10, 24
                  and          s6, s1, t1
                  slti         s4, a6, -1174
                  ori          gp, tp, -1669
                  andi         a3, t4, -1070
                  srai         s6, sp, 17
                  add          s7, ra, s11
                  auipc        ra, 876046
                  slt          t5, s11, sp
                  srl          a0, s3, s2
                  sll          a0, s11, gp
                  sltu         s2, zero, s7
                  sltiu        s1, t5, -933
                  slli         tp, t1, 22
                  srli         t6, s9, 17
                  sra          a1, s5, sp
                  lui          s10, 231160
                  srl          s8, t2, a0
                  auipc        s9, 567505
                  srl          a1, s3, s3
                  auipc        s2, 1007694
                  add          t5, t6, a1
                  sll          a7, a0, sp
                  andi         t5, s3, 850
                  andi         a1, a1, 797
                  addi         ra, gp, -1830
                  andi         zero, a4, -1762
                  xori         s9, t2, -171
                  sub          a2, s10, a3
                  add          tp, s6, a3
                  srl          s6, s3, t6
                  addi         zero, t5, -405
                  sltu         a1, t2, s3
                  srl          s2, a7, ra
                  sll          s9, zero, a2
                  sub          zero, s5, s4
                  sub          a2, a1, s11
                  xori         s4, t1, 1988
                  lui          zero, 953885
                  sub          s6, s3, s4
                  nop
                  sra          t5, t6, s5
                  xor          s6, a2, gp
                  and          s3, s8, s2
                  srl          a0, s10, a7
                  and          t6, ra, t2
                  andi         s2, t4, -525
                  auipc        t3, 720588
                  addi         s6, tp, -543
                  xor          a4, s2, s7
                  slti         a2, zero, -294
                  and          a4, s4, ra
                  auipc        s3, 801266
                  slti         s6, a0, 1225
                  xori         gp, s11, -386
                  slti         s2, zero, 1032
                  sll          t5, t6, s7
                  xori         t5, t6, -1750
                  nop
                  nop
                  slt          s6, t6, s0
                  and          a7, s3, s0
                  sub          s1, s3, a4
                  sll          a2, a0, t2
                  srli         s8, a0, 8
                  srai         s1, a2, 4
                  sll          s2, s11, tp
                  slli         a4, s5, 18
                  sll          a6, s5, t2
                  srli         s3, s1, 14
                  slt          zero, t1, tp
                  nop
                  slli         s10, a2, 20
                  sra          a0, sp, a3
                  srai         a5, s2, 23
                  sltu         s4, a3, s9
                  ori          s1, t6, -295
                  xor          s11, s7, t4
                  addi         a2, gp, -1755
                  auipc        tp, 895356
                  xor          tp, t3, a3
                  srli         t6, s9, 30
                  slt          sp, t6, s5
                  srl          a3, s8, s11
                  sltiu        t2, s8, 758
                  slti         s8, t1, 408
                  lui          s9, 804695
                  srli         zero, s2, 8
                  lui          t2, 824454
                  or           t2, s6, t4
                  ori          s0, s1, 909
                  slt          a0, gp, t5
                  sltu         s11, a4, ra
                  slli         a2, s2, 18
                  slti         zero, s3, -1959
                  slti         s4, t3, 1926
                  srl          s3, gp, s10
                  srl          s5, s11, s3
                  slli         s10, a2, 12
                  sltu         zero, zero, ra
                  srai         s3, zero, 31
                  ori          s8, s3, -1003
                  xori         s9, gp, 225
                  xor          a6, t0, ra
                  sltu         s8, s7, t6
                  auipc        s6, 583905
                  and          s2, t5, s4
                  addi         gp, s2, -1334
                  srli         s11, s6, 29
                  sltiu        t3, s3, -1124
                  srli         t5, t6, 30
                  and          a3, t4, t1
                  addi         t2, a6, -730
                  xori         gp, t5, -1195
                  slt          tp, tp, s7
                  lui          sp, 893059
                  slt          s4, t5, t3
                  xori         s5, t1, -767
                  addi         t3, t0, 101
                  ori          s2, t5, 1197
                  sra          s5, s3, a7
                  slli         sp, s4, 14
                  slti         s3, tp, 1323
                  slti         a2, s10, 1661
                  slli         s2, s1, 15
                  or           s5, s11, s5
                  or           a3, a5, gp
                  slli         s5, tp, 1
                  srl          gp, a1, t6
                  srai         a1, s1, 10
                  srl          a1, gp, s8
                  or           a4, s1, s0
                  lui          s0, 663326
                  sltiu        a2, tp, -104
                  nop
                  srai         a6, s7, 2
                  xori         a6, s0, -398
                  or           s6, s1, s6
                  sltiu        t6, a5, 1317
                  slti         a0, a6, -302
                  sub          zero, ra, a0
                  sra          a5, ra, s5
                  or           s5, t5, s6
                  or           gp, t4, a6
                  xori         s7, t6, -373
                  slli         s1, s4, 1
                  andi         sp, a6, 1372
                  srl          a1, s9, t4
                  slti         a5, s10, -1646
                  sltu         t6, tp, sp
                  nop
                  slti         s11, s0, -1986
                  addi         s4, s5, -1862
                  ori          a7, t3, -667
                  nop
                  ori          s8, s0, -720
                  sub          s4, a7, t4
                  lui          t2, 561089
                  slli         tp, s2, 18
                  sltu         sp, zero, s10
                  slt          s2, a1, zero
                  add          a5, zero, tp
                  xor          s7, t6, a3
                  ori          ra, s3, -1104
                  nop
                  slt          zero, a1, s0
                  sltu         zero, a2, s6
                  slli         a2, s3, 10
                  nop
                  sll          tp, a7, s5
                  sltiu        a5, s1, 1196
                  sra          s8, s1, t2
                  xor          s7, a1, s2
                  sltu         a3, s1, s3
                  slti         s2, t4, -36
                  slti         s0, t4, -1259
                  ori          ra, t1, -819
                  and          t6, a5, a7
                  slli         tp, ra, 6
                  srli         gp, s9, 17
                  srai         t6, zero, 16
                  sltu         a3, t0, s4
                  srl          a0, s0, t0
                  slli         a4, t4, 13
                  srai         t6, ra, 29
                  ori          t6, a5, -1125
                  sll          zero, a3, s3
                  slt          a5, t2, s11
                  and          s6, a0, ra
                  andi         s11, a2, -1680
                  slti         a6, gp, -1281
                  xor          zero, zero, sp
                  slli         sp, t3, 6
                  sltiu        s8, s6, -305
                  srli         s5, a7, 27
                  sra          s5, s2, s2
                  sltu         s11, s6, s4
                  add          tp, s2, t2
                  sltiu        s2, t4, -1020
                  lui          a0, 391611
                  sra          s11, ra, t5
                  slt          t3, t2, a0
                  andi         a7, a7, 800
                  xor          s11, s11, s1
                  sra          s1, a7, t4
                  xor          a6, a0, ra
                  slt          t2, t0, t4
                  sltiu        ra, sp, 1450
                  ori          s4, s1, -2007
                  sltiu        tp, a0, 538
                  sltiu        t5, a3, 1734
                  lui          s7, 760936
                  srai         s5, a1, 4
                  sub          s10, t5, sp
                  sub          a2, t6, s4
                  and          s1, tp, a0
                  slt          a2, a1, a5
                  sltiu        a7, ra, -972
                  xori         sp, ra, -1416
                  sub          s9, a7, t2
                  and          s8, s9, s7
                  add          s0, sp, ra
                  auipc        s2, 832271
                  xor          s9, a3, t6
                  add          a0, a3, a0
                  auipc        s10, 731728
                  xori         s3, t2, 1069
                  slti         s3, s1, -2039
                  slt          s4, s1, t0
                  slli         s0, a0, 0
                  slti         s9, ra, -1134
                  srai         s10, s0, 6
                  slt          a7, a4, a4
                  add          a3, s11, s9
                  add          s7, s4, s11
                  xori         s11, a3, 992
                  slt          gp, t3, ra
                  slt          s2, a2, t1
                  srli         zero, s6, 27
                  srli         s11, s5, 18
                  srl          s3, s11, a0
                  srli         a0, a5, 0
                  xor          s0, t2, a0
                  andi         a0, s10, -1771
                  add          s8, s2, s6
                  sll          s1, a1, a2
                  xori         s7, s10, -1714
                  sltu         s3, ra, s0
                  srl          s0, s1, gp
                  srli         zero, s9, 14
                  sub          a5, s7, s1
                  srai         ra, gp, 27
                  xor          a4, a7, s11
                  xor          s4, t5, t0
                  sltu         s4, s7, s6
                  nop
                  and          ra, t5, s1
                  sll          a4, s7, t3
                  or           s3, gp, t6
                  sltu         gp, t2, a5
                  ori          s2, s3, -1165
                  or           zero, t5, t5
                  srli         t3, sp, 2
                  sltiu        zero, gp, -1649
                  srai         s7, s0, 1
                  sra          a7, s10, t5
                  auipc        a4, 899423
                  ori          a6, s0, 1612
                  and          s0, gp, a5
                  andi         s9, t4, -1476
                  and          s2, a4, t0
                  or           s7, t1, a3
                  slli         s11, a4, 1
                  srl          t5, a7, tp
                  xori         t3, a3, -1144
                  sltu         s3, s4, s8
                  sll          zero, t3, t0
                  auipc        s5, 770236
                  sll          a2, tp, s5
                  ori          a5, t6, -1790
                  slli         zero, t3, 27
                  slt          a4, s8, sp
                  add          zero, s8, a6
                  auipc        t5, 11182
                  nop
                  slti         s1, s4, 1284
                  srli         a3, a6, 26
                  slli         s0, ra, 5
                  slti         a0, ra, -1094
                  slt          s8, s5, ra
                  sltiu        s0, s10, -1027
                  lui          s2, 536587
                  add          s0, a4, s3
                  xori         s3, s1, -753
                  or           t3, t2, zero
                  xori         a5, s5, 453
                  or           a6, a3, tp
                  srai         a3, s6, 13
                  slt          gp, s6, s9
                  sub          a2, t6, t4
                  sra          a0, a3, s9
                  srli         sp, tp, 0
                  add          t5, t0, t5
                  lui          s10, 869238
                  sra          s6, a1, s9
                  srl          s3, s6, a2
                  sub          ra, t2, t0
                  srai         a1, s11, 20
                  xori         s9, a2, 653
                  slli         t2, a3, 29
                  auipc        t5, 619905
                  srai         a7, s4, 20
                  xori         t5, gp, 2007
                  xori         s11, s8, -1201
                  slti         s3, a5, -1981
                  xor          t6, gp, t5
                  addi         a7, a3, -1484
                  lui          t5, 781311
                  srai         s2, s11, 2
                  srai         t2, s1, 27
                  srai         a0, a1, 27
                  sll          a2, a4, s4
                  sub          s9, a1, s3
                  sra          t2, a5, t1
                  sltiu        t5, s10, -293
                  sra          t6, t6, s11
                  addi         s10, s0, -464
                  nop
                  auipc        s1, 1044263
                  or           a2, t6, gp
                  addi         s3, a6, 709
                  slti         s5, gp, 600
                  srai         a4, ra, 10
                  addi         a1, a6, 1385
                  ori          tp, t1, -407
                  sltu         s4, s5, t3
                  and          tp, a1, s2
                  andi         s5, s3, -1467
                  sltu         t2, s9, a6
                  srai         t2, a1, 12
                  xor          ra, t4, t2
                  auipc        a7, 444275
                  sltiu        a0, t3, 280
                  srli         s1, gp, 16
                  slti         t5, t1, -470
                  sub          a5, a0, t2
                  andi         ra, a0, -1469
                  sub          zero, s2, t5
                  slli         gp, s4, 1
                  sub          s11, t0, a2
                  lui          a7, 900734
                  slti         sp, a7, -613
                  slt          t6, t1, t6
                  sll          sp, zero, s6
                  add          s3, s7, s6
                  slti         s11, a3, 911
                  slli         tp, a7, 21
                  add          s3, t3, a1
                  srli         t6, a4, 16
                  add          t2, ra, t2
                  srli         a2, a6, 19
                  sltiu        a0, s6, 147
                  slti         a7, a0, 675
                  andi         t6, s2, 1899
                  sll          s1, gp, s6
                  addi         a7, s6, -559
                  andi         s6, a7, -1449
                  auipc        a1, 422836
                  slti         zero, a7, -1577
                  sltu         tp, s4, a2
                  xori         a1, a3, 900
                  xor          a2, s4, s1
                  srai         s7, t0, 10
                  srli         a3, s7, 18
                  slli         s11, s7, 28
                  xor          a5, t3, t3
                  slli         s11, s2, 24
                  slli         s8, s7, 20
                  sll          zero, t3, a7
                  and          s10, s5, s3
                  srl          s0, t3, s8
                  addi         t5, a1, 781
                  add          s6, s0, a2
                  sub          a6, tp, s2
                  srai         s10, s3, 8
                  xor          s2, s6, t4
                  slli         s9, tp, 2
                  ori          a0, t3, 31
                  srli         s8, a3, 3
                  and          t5, s2, s0
                  slti         zero, a0, -303
                  srl          s9, a7, zero
                  xori         s0, a1, -869
                  slt          t2, a5, a6
                  andi         gp, t6, 658
                  slti         s4, zero, -1072
                  slt          gp, a2, t1
                  sll          t2, a0, tp
                  lui          a7, 973046
                  slti         s6, ra, -1513
                  sll          ra, a1, tp
                  sub          s0, a2, tp
                  add          gp, s11, s3
                  auipc        a4, 164390
                  andi         tp, a6, -994
                  xor          a6, sp, t0
                  add          tp, t2, s11
                  slt          s4, a6, s0
                  slli         s3, t3, 20
                  or           s8, t1, a7
                  sub          a0, a2, s8
                  ori          s2, gp, -1873
                  sltiu        gp, t1, -923
                  add          s9, t5, ra
                  slti         s11, t3, 1725
                  andi         s9, s0, -1142
                  lui          a5, 355883
                  lui          tp, 131765
                  sltu         s8, a6, s7
                  srli         s4, s10, 24
                  ori          tp, t5, 1545
                  sll          ra, t2, a0
                  auipc        s11, 845068
                  xori         s11, t6, 265
                  srli         a0, s11, 14
                  sltu         sp, zero, tp
                  sra          a0, a1, t2
                  xor          s9, a3, t2
                  sra          a2, s9, t6
                  nop
                  slt          a6, tp, s4
                  sub          s5, t5, s2
                  sltiu        t6, tp, -1156
                  xori         tp, s9, -948
                  sra          s9, s3, zero
                  auipc        s4, 1044575
                  srai         a3, ra, 0
                  sub          a5, gp, t6
                  ori          ra, t2, -598
                  add          s9, t1, zero
                  sltu         t5, t4, s9
                  nop
                  xori         s1, s1, 1323
                  slt          a7, s4, a1
                  slt          a7, sp, t2
                  sub          a0, t2, s11
                  sub          t6, s0, a2
                  srli         a7, sp, 29
                  or           s4, s2, t4
                  andi         sp, a3, 663
                  srai         s5, t6, 17
                  xori         s7, a5, -1617
                  slt          s11, s3, t1
                  sll          t6, s5, t4
                  or           a0, ra, s7
                  sltiu        s0, s4, -1913
                  sltu         s7, s0, a0
                  or           s4, tp, zero
                  sll          sp, s11, s9
                  or           s10, t4, s6
                  sra          s5, tp, t4
                  nop
                  slt          a7, s10, s5
                  xori         s10, t3, -1643
                  slli         s9, s11, 31
                  andi         a3, a7, -941
                  sltiu        t6, zero, 1529
                  srl          s9, zero, a3
                  auipc        s3, 163624
                  sub          s9, t2, s11
                  nop
                  slti         a3, gp, -1257
                  lui          s6, 529182
                  sll          s3, a1, s3
                  srai         s8, s10, 5
                  and          a2, t1, a5
                  xori         s2, s9, -1415
                  sltiu        s8, t0, -1645
                  sltu         s3, s9, s1
                  sltiu        a7, ra, -1548
                  slt          t5, a5, zero
                  srai         s3, a5, 4
                  slt          zero, a2, a7
                  slt          a3, s2, s6
                  or           s5, s6, s6
                  auipc        zero, 249805
                  sltiu        a4, a7, 359
                  sll          s8, t5, s8
                  srl          s10, a3, s8
                  srl          zero, a2, a1
                  addi         s4, t3, -1842
                  add          s11, sp, t4
                  xori         t6, s11, 281
                  ori          s10, t5, -1895
                  srl          s0, zero, s0
                  sll          tp, t5, a6
                  or           s9, s8, a4
                  and          gp, a4, s10
                  lui          a6, 25258
                  sra          a4, s9, t6
                  add          sp, t3, s6
                  xori         s3, s2, -1498
                  srli         a0, s10, 24
                  slt          s9, s4, tp
                  sra          s11, t5, a3
                  sra          tp, s1, s10
                  sll          s5, sp, a3
                  andi         sp, t6, 615
                  srl          s7, s10, t0
                  sll          t3, s5, a6
                  slt          tp, a5, a5
                  addi         a6, a1, 316
                  sltiu        a1, ra, -1545
                  sra          a6, s3, s8
                  slli         s5, s10, 4
                  sll          s9, t6, t6
                  auipc        a4, 900884
                  sub          tp, a3, s2
                  lui          a3, 858027
                  ori          s11, a0, 108
                  srli         s4, s0, 6
                  andi         a2, zero, -448
                  sltiu        ra, s4, -122
                  slli         gp, a3, 14
                  sub          a5, a3, s1
                  nop
                  srli         a5, s5, 6
                  xori         ra, s1, -1492
                  sltu         s6, t0, a0
                  sltiu        ra, s11, -1016
                  addi         tp, t0, 932
                  sub          sp, s0, a2
                  sra          s10, tp, s11
                  srli         zero, s0, 3
                  sra          s9, t0, t5
                  and          s1, t5, s9
                  addi         t6, s2, -1671
                  and          gp, t2, s7
                  xor          s8, s4, s1
                  sub          s6, t2, t1
                  add          s5, a0, zero
                  and          s4, a4, t2
                  auipc        t6, 948365
                  srli         a0, a5, 23
                  xori         s11, s10, -1396
                  sra          a2, s3, s3
                  srli         a1, s7, 12
                  srai         t6, s7, 1
                  add          t6, a2, a2
                  nop
                  srli         zero, s1, 21
                  xori         s6, a6, 1065
                  srai         gp, zero, 13
                  or           t2, s4, t5
                  andi         t3, t0, -204
                  sltiu        t6, s10, -1789
                  slli         s2, a6, 7
                  ori          s1, a6, 1278
                  sltiu        a4, s4, 1085
                  auipc        a1, 1009799
                  sll          s9, t0, a3
                  sltu         t3, t3, s7
                  slli         a1, a6, 31
                  xori         s5, s4, 0
                  srli         a7, s1, 19
                  xor          s6, a6, s3
                  sltu         s0, t6, a5
                  srai         a1, a3, 11
                  xor          a7, s3, a4
                  or           s6, s7, s11
                  sltu         sp, a6, t4
                  sltiu        a0, s2, 1874
                  slt          tp, s9, s1
                  and          t6, s2, a2
                  sll          s1, s9, t3
                  ori          ra, t0, 1324
                  ori          a7, sp, -1131
                  srl          s11, t4, s11
                  or           t2, t2, t5
                  lui          s1, 923258
                  slti         s8, sp, -1067
                  sra          a0, s10, gp
                  slt          s4, tp, gp
                  srai         a6, t1, 14
                  add          s10, t0, t0
                  and          s0, a0, ra
                  add          s8, a6, s8
                  srl          t6, s3, s1
                  andi         t6, a2, -15
                  nop
                  auipc        t5, 58798
                  and          sp, s9, a2
                  srli         a7, a7, 28
                  sra          s9, s7, sp
                  srli         s5, t6, 4
                  xor          ra, a5, a7
                  nop
                  sltiu        s5, s6, -949
                  slli         a6, a3, 12
                  andi         t3, a3, 220
                  sub          s10, zero, a4
                  srl          a1, s8, s2
                  auipc        t2, 1036714
                  slt          t6, t0, a1
                  and          s11, s8, s4
                  sra          s9, t6, t1
                  slt          zero, t6, a2
                  sltiu        a2, zero, -684
                  addi         ra, s8, 1467
                  sub          t2, sp, s3
                  sub          a7, s9, t4
                  and          a0, t1, t6
                  auipc        zero, 1016854
                  slt          s1, t1, a3
                  sltu         t2, s5, sp
                  auipc        t5, 794544
                  slli         s8, a7, 14
                  sltu         tp, a3, ra
                  lui          s0, 830588
                  or           s3, s0, t0
                  srl          t6, t1, s9
                  sra          s4, s11, sp
                  or           sp, s5, ra
                  addi         s6, a2, 578
                  add          s4, s3, a1
                  auipc        t3, 708509
                  slti         s3, sp, 1270
                  sltiu        a5, a1, 353
                  addi         t2, gp, 1395
                  slli         a7, a2, 23
                  slti         t6, a4, -511
                  addi         tp, a3, 1346
                  srai         t5, s5, 17
                  lui          s0, 862255
                  auipc        a6, 604712
                  srl          s0, a5, t2
                  sltu         a0, s7, sp
                  auipc        s6, 850750
                  auipc        a3, 735128
                  ori          s1, a3, 1476
                  sltiu        ra, a3, -1021
                  ori          s7, s0, -1191
                  srl          t3, s0, tp
                  srli         gp, ra, 8
                  srli         a4, tp, 4
                  and          a5, t5, t0
                  srl          a1, tp, t0
                  xor          s3, t3, s6
                  sltiu        s2, tp, -189
                  addi         a2, t5, 757
                  slti         a4, s4, -1048
                  srli         s4, t0, 15
                  lui          ra, 133472
                  sltiu        s11, t0, 227
                  or           s5, a0, s1
                  sll          gp, a7, a0
                  sltiu        s1, t5, -103
                  andi         s11, sp, -216
                  slt          t5, s2, s0
                  xori         a6, s11, 648
                  slt          a6, s8, s7
                  srli         s0, s4, 29
                  nop
                  auipc        s2, 1022258
                  sra          s5, s6, t6
                  andi         sp, a3, -1034
                  srl          a5, a3, a7
                  lui          s8, 647182
                  sra          a3, a4, a3
                  andi         s6, t4, 50
                  sltu         a3, a4, a1
                  slli         s5, t5, 13
                  lui          s6, 448418
                  andi         gp, a1, 458
                  or           a2, a2, s9
                  slli         s8, s5, 6
                  sltu         s5, a7, a4
                  or           s0, ra, s7
                  andi         t6, a7, 686
                  nop
                  sub          a5, a5, a5
                  sltu         s9, t0, ra
                  sltu         s11, s5, t2
                  slt          s0, a7, tp
                  addi         s1, s1, -1292
                  sub          a1, t5, a2
                  sltu         a7, sp, t2
                  add          a3, s0, a2
                  slt          s10, s2, t0
                  xor          zero, a2, s10
                  sltu         s10, s7, a3
                  sltiu        s10, s8, -394
                  ori          s2, a0, -1886
                  srli         a4, t5, 27
                  lui          t3, 992052
                  sll          s7, s8, t6
                  sll          t3, t4, sp
                  srli         ra, s1, 5
                  sll          sp, s11, s8
                  sra          ra, t5, s3
                  and          t2, zero, s11
                  xori         s7, t1, -950
                  srl          s2, gp, a1
                  slt          t2, zero, t3
                  slti         ra, a7, 1522
                  ori          s5, t5, -1396
                  li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           s11, 0x80000000
                  li           s4, 0x80000000
                  li           s9, 0x80000000
                  li           a2, 0xffffffff
                  li           a7, 0x0
                  li           s10, 0x80000000
                  li           a3, 0x0
                  li           s7, 0x80000000
                  li           t5, 0x19d47d72
                  sub          s11, s9, s7
                  lui          a3, 1006741
                  addi         s7, t5, -2041
                  sub          a7, s10, s11
                  lui          s7, 965558
                  add          a2, a2, s4
                  lui          a3, 655039
                  auipc        a7, 979913
                  addi         s10, t5, -1787
                  auipc        a2, 743096
                  auipc        a3, 769307
                  sub          a2, a1, a7
                  lui          s10, 268624
                  lui          a1, 879833
                  add          a3, a7, s11
                  addi         a2, s11, -1752
                  auipc        s4, 52126
                  sub          a1, s10, a2
                  sub          s10, s11, s10
                  add          t5, a2, s9
                  addi         a2, a7, -358
                  auipc        s11, 655312
                  lui          a1, 549839
                  lui          a3, 937217
                  auipc        s4, 999119 #end riscv_int_numeric_corner_stream_14
                  sub          a1, t2, s9
                  or           t5, s10, t5
                  or           s8, s0, s7
                  srai         t2, s10, 0
                  nop
                  lui          s5, 324550
                  ori          a7, t5, -1897
                  auipc        a7, 521330
                  srai         a3, sp, 27
                  srai         t3, s0, 29
                  slti         s3, t0, -1709
                  addi         t5, t0, -359
                  slti         a1, s4, 416
                  ori          s9, s0, -901
                  sll          t2, s8, a5
                  sra          s0, t5, s9
                  lui          a7, 506892
                  xor          ra, a3, t5
                  andi         t2, sp, 1803
                  sra          s9, sp, zero
                  sll          a0, s9, s2
                  nop
                  addi         a6, t1, -1723
                  or           t6, s5, t4
                  auipc        a5, 504422
                  sll          a4, gp, t6
                  xori         s6, t4, 143
                  sltu         ra, t5, a3
                  sltu         ra, a3, a1
                  add          s1, a6, a2
                  srl          s6, s6, s5
                  auipc        s10, 2806
                  srai         s5, t4, 16
                  and          zero, t6, t1
                  lui          s0, 1004842
                  sltu         a1, s1, tp
                  sub          a1, a3, t0
                  add          tp, t5, s4
                  slti         s3, s7, -1273
                  slti         t6, s5, 913
                  xori         s10, tp, 741
                  lui          a4, 920774
                  sra          zero, zero, a7
                  slti         a3, s2, -1588
                  slli         ra, a3, 4
                  slt          t6, s1, zero
                  xori         ra, t1, 1281
                  slli         s0, a2, 7
                  or           t2, a5, a0
                  sra          a4, s6, a2
                  srl          s2, t6, a4
                  and          s1, s9, a1
                  xor          ra, zero, s9
                  sll          a6, s0, a7
                  add          a1, sp, ra
                  srai         zero, s3, 7
                  srli         a6, t5, 4
                  addi         s8, t1, -1765
                  srl          gp, ra, ra
                  add          tp, t4, s5
                  slt          a2, s10, t4
                  slti         a1, a4, -1246
                  srli         s7, a1, 8
                  sub          s3, a0, sp
                  nop
                  nop
                  sub          ra, t2, s0
                  sll          a5, s7, a3
                  slt          s8, a1, s4
                  nop
                  addi         s9, a3, -1581
                  srli         a1, t6, 10
                  addi         zero, t0, -349
                  sll          s4, s8, t1
                  slt          s7, t4, t1
                  or           a6, t6, sp
                  srai         s3, s4, 4
                  or           s5, s3, s1
                  slli         s6, t5, 24
                  and          ra, a6, t6
                  srl          a2, s3, s6
                  sltiu        s10, s9, 320
                  ori          s8, s3, -1220
                  sub          s9, zero, zero
                  slti         s1, a0, 439
                  slt          a6, sp, t2
                  slli         s10, s11, 6
                  xori         s3, s7, 1495
                  slt          s6, a4, t2
                  nop
                  nop
                  and          s9, a2, s3
                  srai         s11, s5, 13
                  slt          s4, ra, a2
                  nop
                  xor          a5, t6, gp
                  slli         s3, t0, 27
                  sll          zero, s4, zero
                  sub          s8, s9, zero
                  srli         tp, s2, 27
                  xori         s3, a7, 1559
                  slli         s1, s2, 28
                  xor          a0, t1, a2
                  and          ra, t6, t5
                  add          sp, ra, a3
                  add          a5, gp, t5
                  sltiu        t3, t0, 1949
                  slti         s9, zero, 624
                  srai         s6, t3, 28
                  xori         a2, s3, 624
                  sltiu        ra, t5, -1231
                  srai         a6, s8, 14
                  slti         s8, s8, -1250
                  slti         t6, t0, -1197
                  and          s5, a2, s1
                  sltu         t6, s8, s1
                  or           s7, s9, zero
                  addi         a2, a5, 449
                  srai         s1, a2, 12
                  auipc        tp, 217287
                  sltiu        a7, a6, 1974
                  sub          s2, t5, a6
                  sub          a6, a7, t3
                  srli         t5, s5, 28
                  sltiu        s0, a1, -795
                  slt          t5, s4, s9
                  auipc        t2, 329642
                  ori          tp, tp, 1424
                  xor          gp, zero, a5
                  or           a3, s7, s3
                  sltu         s6, s6, a3
                  add          sp, zero, s9
                  sll          a3, s0, s2
                  xori         tp, s7, 809
                  addi         t2, ra, -1120
                  sll          s7, s3, t0
                  sltu         a0, tp, s10
                  sltu         t6, a4, a3
                  and          sp, s11, s5
                  sltiu        s7, t4, -550
                  sub          s10, t6, t3
                  sltu         t6, t5, a1
                  add          a0, t1, a4
                  andi         a5, t4, -1784
                  lui          s5, 525939
                  and          t5, a5, a0
                  sll          ra, zero, sp
                  ori          s2, s4, -1911
                  auipc        sp, 378350
                  andi         s2, tp, 1342
                  sltu         a6, a6, gp
                  sll          t6, t3, a3
                  sltu         a3, sp, t6
                  ori          a7, s7, -694
                  xor          s4, t1, gp
                  auipc        tp, 901330
                  srli         s7, t2, 26
                  slt          s9, s1, s8
                  lui          sp, 902254
                  addi         t6, s1, 71
                  lui          a0, 301173
                  or           s1, s0, ra
                  srai         s7, s3, 21
                  slt          t6, t3, a0
                  add          s5, s7, a2
                  ori          s10, gp, -2033
                  andi         t6, s8, 415
                  slt          s8, t2, s4
                  and          s10, ra, tp
                  nop
                  addi         s7, s8, 1689
                  lui          s0, 99008
                  slli         sp, ra, 0
                  srli         a5, s9, 17
                  sub          s9, a0, ra
                  slt          gp, t0, t6
                  sll          a5, a5, s4
                  andi         a4, a3, -767
                  srai         s2, t4, 26
                  srl          s0, t0, a7
                  auipc        s0, 748933
                  srai         s7, t5, 7
                  add          a1, gp, t5
                  nop
                  sltiu        s3, ra, 1336
                  addi         s6, t3, -915
                  srl          a3, s10, zero
                  and          s11, a7, a5
                  slli         s8, a7, 1
                  sll          a7, t3, a3
                  nop
                  and          zero, t4, s0
                  sra          s6, a0, s8
                  sub          t2, a0, t2
                  xori         s1, tp, -1419
                  addi         sp, tp, 219
                  slti         ra, s2, 1947
                  srli         a3, s7, 0
                  sub          s7, gp, t6
                  srli         t2, s5, 3
                  and          t3, s10, t2
                  sra          sp, a5, a4
                  add          t2, a6, a0
                  sltiu        s7, s4, -1195
                  sra          s11, t0, a2
                  and          zero, a7, s9
                  xori         s6, t2, 1959
                  xori         zero, zero, -1154
                  srli         a1, s5, 0
                  xori         s7, s8, -347
                  ori          a0, t4, -1574
                  slli         s3, a5, 17
                  sub          s5, a7, a3
                  sltu         a5, s0, a5
                  xor          s0, a0, s9
                  srai         s6, s3, 26
                  sll          a5, a6, s11
                  addi         s10, s1, -1162
                  andi         a7, t3, 880
                  lui          a0, 321327
                  xori         sp, s3, -1680
                  or           s9, a3, t5
                  or           s9, s4, s10
                  slt          t3, t6, t6
                  add          gp, t3, t6
                  srl          tp, s2, s2
                  lui          zero, 454127
                  slt          s0, t4, s10
                  nop
                  add          a2, t2, t0
                  srli         s0, sp, 0
                  slt          t3, t1, s8
                  sll          s0, s11, a7
                  sra          a5, t5, sp
                  xor          s0, t0, a0
                  sub          ra, s5, s3
                  or           a6, s5, a4
                  xor          a5, s10, gp
                  or           s7, s2, s8
                  or           ra, s9, s6
                  sra          s5, ra, a7
                  slti         s1, s9, -1785
                  and          a6, s10, a4
                  xori         t6, zero, 2001
                  slli         s5, a2, 28
                  sub          s9, t5, gp
                  add          gp, s6, t0
                  nop
                  srli         s0, a4, 27
                  slti         a6, s3, 412
                  or           s7, t4, s4
                  slli         s5, t3, 21
                  lui          a0, 813583
                  andi         zero, t1, 676
                  and          s11, s3, tp
                  slli         s3, t1, 25
                  add          gp, s7, s6
                  sltu         s0, s9, t5
                  slli         tp, a5, 9
                  slli         t5, t1, 8
                  sltiu        s4, s3, 1951
                  ori          t6, sp, 1808
                  or           a6, t6, t2
                  andi         s5, a4, 383
                  xori         s11, t3, -1174
                  xor          a2, s0, a6
                  add          s7, a0, a6
                  srai         s9, s0, 20
                  and          s7, gp, a2
                  or           s1, t6, a4
                  srai         t3, ra, 30
                  or           t5, a1, sp
                  sll          a2, t6, s6
                  andi         s5, s11, 1857
                  xori         s5, t2, -673
                  slti         s10, s7, -993
                  andi         a1, s6, 1073
                  sub          a0, s0, t3
                  xor          a0, zero, a0
                  addi         s2, a6, 1878
                  or           ra, tp, s7
                  srai         t3, s8, 3
                  sll          a0, a4, a5
                  nop
                  xori         a0, t1, 1506
                  xor          a7, s8, s3
                  sltu         s2, s3, t2
                  srl          s11, s9, s7
                  srli         a4, t1, 23
                  srl          s9, a5, t3
                  xor          s7, sp, t2
                  and          s7, s1, s6
                  srai         t6, tp, 28
                  sll          sp, s0, a6
                  sra          zero, a5, t3
                  lui          t5, 394498
                  sra          s6, t2, t6
                  add          a6, a7, s1
                  nop
                  sra          s7, s11, s2
                  sra          s5, a3, a2
                  slti         a2, s10, 1951
                  sltiu        tp, s3, 475
                  sll          s7, t3, a1
                  srl          s8, t6, s9
                  srai         s9, sp, 24
                  slt          s1, ra, t2
                  slli         s8, t0, 2
                  lui          s11, 997986
                  nop
                  sra          a5, s4, t2
                  nop
                  srai         s6, a6, 7
                  add          t6, t0, s11
                  xor          s5, s3, sp
                  lui          a4, 753966
                  nop
                  auipc        t6, 373939
                  srl          s8, t0, a2
                  xor          s7, s10, sp
                  and          s4, a4, a6
                  lui          gp, 1004919
                  sll          s6, sp, s9
                  srl          s2, t2, a6
                  srli         a1, s4, 30
                  nop
                  andi         s9, s11, 1424
                  xori         a4, a4, 813
                  andi         gp, a6, -1326
                  or           s1, s4, t0
                  ori          s11, a7, -664
                  addi         s9, gp, 324
                  auipc        ra, 607493
                  auipc        zero, 398363
                  sll          t3, t4, t5
                  xor          a1, a7, s5
                  sub          a5, s11, s3
                  nop
                  slli         s4, tp, 6
                  xori         sp, zero, 9
                  sll          s5, a0, a1
                  sltu         s4, a2, a4
                  sra          t5, t5, s3
                  srai         s6, t5, 0
                  sltiu        t5, a6, -1314
                  lui          s3, 306828
                  sltiu        s2, s5, 993
                  andi         ra, a7, -1242
                  xori         a7, a2, -396
                  add          a5, gp, gp
                  nop
                  srli         t3, s1, 10
                  slti         ra, a2, -254
                  lui          s8, 351796
                  ori          zero, tp, -1486
                  srl          s0, t6, gp
                  srai         t2, t1, 26
                  nop
                  srai         s3, s3, 3
                  andi         sp, a4, -72
                  srai         gp, t5, 26
                  add          a6, s11, ra
                  srli         a6, a3, 11
                  sltiu        t6, s0, 317
                  srli         a2, t4, 26
                  srli         sp, ra, 7
                  or           s2, s8, t2
                  sub          s7, a2, tp
                  sltu         s3, a7, a1
                  xor          s1, a2, t0
                  xori         a2, s1, 1215
                  addi         s0, t0, -1798
                  sltiu        s6, a5, 884
                  slt          s9, tp, s3
                  or           s7, s10, s9
                  slt          zero, a0, s2
                  slli         s6, s4, 25
                  slti         s6, t4, 255
                  xor          tp, zero, t3
                  srli         a5, a0, 18
                  slt          s3, t2, t6
                  or           a1, t1, gp
                  slt          sp, s8, a4
                  nop
                  srli         a4, t6, 19
                  xor          a4, a7, s1
                  slli         s10, a2, 2
                  add          s1, s5, s6
                  andi         t3, t0, 1
                  auipc        s9, 1033317
                  slli         s10, s0, 17
                  slti         s5, s2, 393
                  srl          s11, s0, a2
                  ori          t3, s3, 1949
                  sll          a6, s8, s0
                  andi         a7, a1, -1092
                  sll          a1, t5, t6
                  add          s2, a0, s7
                  xor          t6, s0, s4
                  sltiu        s0, s11, 666
                  andi         a0, a5, -1936
                  sltu         s1, s4, a3
                  sub          ra, sp, tp
                  nop
                  addi         gp, gp, 204
                  sll          s3, s3, sp
                  sltiu        a4, s9, 2020
                  srl          s2, s7, gp
                  auipc        a1, 928655
                  addi         s2, t5, 1635
                  ori          t2, s8, -786
                  and          a2, a3, a5
                  andi         a4, zero, 1709
                  slli         a6, a2, 3
                  ori          tp, gp, -1616
                  xor          t3, s8, a6
                  srai         s5, a7, 4
                  addi         tp, zero, 42
                  and          s8, s7, t3
                  sub          s2, s2, s10
                  auipc        s9, 177875
                  sltiu        s10, a0, -1484
                  xori         s5, s8, 1020
                  and          s10, s1, a1
                  slli         t2, s11, 0
                  and          a0, a1, a1
                  and          sp, t5, a6
                  lui          s11, 765298
                  andi         a7, t6, 1353
                  andi         s4, s5, 365
                  sra          s8, t6, gp
                  or           s8, t2, a3
                  sll          s9, zero, t6
                  xori         s4, s9, -202
                  slli         s9, s4, 24
                  srli         a4, t6, 0
                  andi         a0, t4, -1926
                  sra          sp, s7, s3
                  addi         a5, a4, -786
                  and          s4, s1, s6
                  slti         tp, s1, 1566
                  auipc        a6, 1041560
                  sub          s0, s3, a5
                  slti         s1, a7, -452
                  ori          a5, s9, 459
                  slli         a4, t4, 11
                  sub          tp, s8, tp
                  srl          s0, a2, tp
                  sltiu        s7, a6, 12
                  xori         a2, sp, 362
                  ori          s1, a4, -542
                  auipc        s4, 1006305
                  sub          a7, a5, sp
                  sra          t5, s3, t6
                  slti         s9, s2, 1090
                  sltu         sp, zero, t5
                  auipc        a5, 463260
                  nop
                  auipc        ra, 156403
                  lui          s6, 693052
                  sub          t3, ra, t1
                  sll          s3, a7, t5
                  srli         a4, s4, 26
                  ori          a3, gp, 317
                  and          s2, t3, t5
                  srli         t6, a6, 6
                  srai         s1, s0, 17
                  sltiu        s0, t2, -1630
                  sll          s9, a5, gp
                  nop
                  slli         s4, a0, 27
                  ori          sp, t1, 15
                  addi         a4, a6, -1057
                  slt          ra, a6, ra
                  sub          a4, a0, s9
                  sub          s2, a2, s4
                  slti         s9, s9, -163
                  srl          a0, a6, s10
                  andi         s3, a4, -426
                  sub          a3, t6, a7
                  xori         s4, a1, -523
                  srl          tp, ra, s2
                  sltiu        ra, a0, 1635
                  xori         a5, ra, -1694
                  slti         s7, sp, 480
                  xor          a7, s9, a6
                  addi         a1, s3, -2036
                  srli         s1, s2, 8
                  sltu         a5, t0, s1
                  slt          t3, t6, a0
                  srli         s0, t2, 24
                  add          s8, s10, s9
                  nop
                  srl          tp, a6, s4
                  andi         s2, s3, 1131
                  lui          a0, 328440
                  addi         s7, a7, 2001
                  andi         a6, tp, -16
                  sll          a7, sp, s8
                  auipc        a0, 538578
                  add          s10, s8, t6
                  nop
                  auipc        sp, 732534
                  sll          s4, s11, a1
                  sub          sp, s10, a4
                  srl          a1, a1, s11
                  nop
                  auipc        tp, 601876
                  sltu         a1, a6, s7
                  slt          s8, s6, t3
                  auipc        a0, 124557
                  nop
                  srai         t3, s0, 13
                  lui          s8, 405032
                  srai         s4, a4, 30
                  srl          s1, s7, t5
                  srai         ra, t5, 8
                  auipc        tp, 329267
                  sltu         gp, a3, a7
                  sub          a1, s6, zero
                  sll          a0, t0, zero
                  lui          s4, 176038
                  sltu         s4, t3, a2
                  or           t3, s0, s3
                  srli         s11, a6, 21
                  slti         t5, t5, -1472
                  slli         s1, t3, 14
                  sll          tp, a1, t5
                  xor          s10, t4, a5
                  addi         a5, ra, 1204
                  sub          a1, s4, t6
                  slt          s9, gp, a1
                  sra          s6, s6, t1
                  sltiu        t5, s3, 714
                  slli         a2, s11, 4
                  slti         s4, a2, 1458
                  slt          s0, a0, a5
                  lui          s5, 865173
                  slti         ra, s6, 738
                  andi         a3, a7, -1812
                  srai         s0, s0, 21
                  add          zero, t0, a6
                  li           t5, 0x80000000 #start riscv_int_numeric_corner_stream_2
                  li           s0, 0xb7d304e3
                  li           t2, 0x80000000
                  li           a1, 0x9e4b690f
                  li           s5, 0xffffffff
                  li           sp, 0x0
                  li           s8, 0xb566d755
                  li           t6, 0x0
                  li           s9, 0x80000000
                  li           a6, 0x80000000
                  auipc        a6, 761187
                  addi         sp, t5, 996
                  add          s8, s9, sp
                  lui          t5, 997107
                  auipc        t6, 665841
                  auipc        s8, 617473
                  add          s9, s0, t6
                  lui          t6, 112866
                  nop
                  nop
                  lui          a1, 915276
                  lui          sp, 377475
                  sub          s8, sp, a6
                  lui          a6, 95702
                  lui          s9, 724970
                  auipc        s8, 629141
                  nop
                  lui          s5, 832133
                  nop
                  auipc        t2, 693541
                  add          s0, t6, t2
                  nop
                  addi         a1, s9, -882
                  sub          a1, a1, sp
                  nop
                  lui          s0, 363957
                  lui          t6, 54614 #end riscv_int_numeric_corner_stream_2
                  add          s1, s9, s8
                  nop
                  sltiu        s2, s2, 886
                  lui          a5, 126381
                  addi         a3, t5, -816
                  nop
                  slt          t6, s11, zero
                  nop
                  sra          t3, a4, sp
                  slt          s5, s5, a4
                  auipc        s3, 657471
                  lui          a1, 973364
                  lui          s0, 487225
                  sub          s3, t0, t1
                  slti         a2, a4, -1408
                  sll          tp, a3, a1
                  and          t6, ra, ra
                  ori          t5, t4, -1672
                  srli         ra, a6, 22
                  srli         tp, s9, 10
                  or           gp, t0, t6
                  ori          s11, a5, 867
                  addi         s11, t5, 396
                  addi         s11, ra, 326
                  sltiu        a3, s2, -1626
                  sub          s1, sp, t3
                  lui          t6, 33855
                  xor          s10, t5, a0
                  sltiu        sp, s9, -1186
                  slt          a7, a2, s3
                  srl          sp, ra, t1
                  auipc        sp, 410445
                  sltu         t3, gp, a1
                  sra          s8, tp, t0
                  or           t6, s7, a0
                  sll          s11, s6, t2
                  srli         s10, a0, 29
                  xor          s11, a6, t6
                  add          s6, ra, s2
                  andi         t2, a6, 781
                  srai         s1, t3, 20
                  sltu         ra, t4, a7
                  add          a4, zero, s11
                  slt          t6, s7, s7
                  nop
                  auipc        gp, 365699
                  sra          s6, ra, a7
                  lui          sp, 685727
                  sll          a0, a0, a5
                  sltu         a6, a3, gp
                  or           s6, s1, t0
                  xor          a0, s5, s4
                  lui          a4, 273114
                  sltu         a7, s2, a2
                  sub          s6, s6, s11
                  ori          t2, a5, 1405
                  xor          s10, t5, a7
                  ori          a2, s2, 1244
                  slt          s8, tp, s9
                  srli         a5, s5, 15
                  srli         s3, zero, 18
                  slt          s0, s9, t1
                  sltu         a1, t1, a1
                  sltiu        a4, a0, 849
                  sll          zero, a5, s10
                  andi         s8, s7, -623
                  slti         s1, a0, -1957
                  slt          tp, s3, sp
                  andi         s11, s7, -381
                  andi         a1, a1, -379
                  sll          t3, t6, a1
                  lui          t6, 849275
                  sra          s6, t5, s9
                  auipc        a2, 771126
                  srl          a2, a1, s10
                  nop
                  slti         s2, t2, 1103
                  or           t3, t1, a4
                  xori         s2, s4, 55
                  lui          zero, 235221
                  lui          s0, 415427
                  sll          s3, t3, t6
                  addi         a3, t1, -1100
                  srli         s0, a6, 10
                  addi         a3, t4, 776
                  and          a0, t5, a4
                  sltu         ra, t4, a2
                  xori         a6, s4, -1700
                  ori          tp, t6, 989
                  sll          s11, t0, a6
                  sll          s7, zero, s0
                  slti         a0, a5, 749
                  sltu         sp, t4, a5
                  ori          a0, t6, -138
                  sra          s5, a2, s7
                  srl          sp, t0, s10
                  addi         t2, s8, 561
                  or           s2, a5, t0
                  slt          t2, a5, s10
                  addi         a0, t6, 1469
                  slt          ra, a1, a7
                  sra          a6, s8, a3
                  sub          a4, t2, t1
                  srli         t5, t4, 26
                  or           a1, s0, ra
                  slli         a3, s3, 9
                  auipc        s3, 597334
                  andi         s11, s2, -1196
                  sub          t5, t4, a7
                  srli         a6, tp, 24
                  ori          t6, t1, 1409
                  add          a2, s9, s0
                  andi         s7, sp, -1784
                  or           a4, s7, a7
                  srli         tp, a2, 27
                  and          s4, t5, gp
                  andi         s11, s8, 1125
                  srli         s0, t0, 9
                  add          s10, s5, s6
                  slti         s3, a2, -1342
                  auipc        t2, 447732
                  sltiu        sp, s6, 227
                  sltiu        a5, a1, -1459
                  addi         s4, a7, -813
                  srl          s4, a2, s8
                  sub          a0, s2, ra
                  sub          s5, s1, ra
                  add          s8, t0, s10
                  ori          s11, t4, -384
                  xori         a1, s10, 757
                  xor          a7, s3, s2
                  slt          t2, gp, t4
                  sra          a4, zero, s11
                  srli         s4, s9, 24
                  sltu         s8, t4, s3
                  slti         s6, t3, 197
                  slti         s2, sp, 1967
                  srai         gp, a7, 1
                  and          a5, s11, s3
                  add          t6, sp, t0
                  xor          a2, s0, a6
                  slti         a4, zero, 310
                  addi         s1, a3, 1265
                  lui          sp, 745300
                  andi         s5, s8, -1517
                  lui          s3, 820115
                  sra          sp, t5, s9
                  addi         s9, tp, 2026
                  addi         a6, s11, -1161
                  auipc        a5, 757667
                  slti         s11, t1, 1666
                  sll          t5, tp, t0
                  auipc        s11, 886043
                  sll          a1, t4, s7
                  andi         s7, t3, -31
                  sll          tp, t3, zero
                  srai         t2, s8, 24
                  slt          a7, s8, a0
                  slt          s0, s8, s10
                  nop
                  sltu         t6, s8, t1
                  auipc        t5, 547440
                  sra          s7, s5, a2
                  auipc        a4, 193459
                  slt          a2, a6, s7
                  sra          s11, sp, a5
                  xor          gp, s9, s8
                  ori          a7, s3, 2025
                  sll          a3, s1, t5
                  srl          a4, s9, t4
                  ori          a6, a0, -569
                  sll          s8, s4, s10
                  andi         a3, zero, -643
                  srl          s0, t3, t5
                  srai         a0, s1, 15
                  or           s5, s11, s1
                  slt          gp, a5, ra
                  andi         s0, t5, 1751
                  add          s8, s7, s11
                  sra          a7, zero, t4
                  sll          a6, gp, a3
                  slti         a5, a2, 751
                  xori         s11, a7, 199
                  and          s0, s1, s1
                  ori          a6, a2, -845
                  slt          t6, s6, s10
                  nop
                  and          s1, zero, s2
                  sra          s1, sp, s3
                  srli         a5, s1, 7
                  add          s0, a7, s3
                  xori         tp, t4, -1754
                  srli         a2, s6, 18
                  srai         s2, t1, 28
                  xor          t3, s2, s6
                  add          s5, a5, s0
                  andi         s8, ra, 1262
                  or           t6, t5, s0
                  nop
                  nop
                  slt          s1, a1, gp
                  sll          s4, t4, s1
                  srai         s8, t0, 5
                  slti         s3, t1, -921
                  sltu         s2, t5, s7
                  srai         a1, s0, 23
                  or           t5, s9, a5
                  sll          a0, s0, s5
                  slt          sp, tp, s4
                  addi         t5, t3, -789
                  srl          a0, t0, t6
                  xor          s7, a5, t3
                  slli         s8, zero, 2
                  srai         t6, s8, 26
                  nop
                  slti         s6, a4, -802
                  lui          tp, 9514
                  sra          a7, t3, s3
                  andi         a7, s8, -382
                  andi         a1, a1, 1696
                  andi         s10, t2, 1202
                  and          s8, s11, a6
                  sltu         s6, a4, a7
                  nop
                  slt          t6, s2, s4
                  slt          t5, t0, s2
                  sltu         a1, t4, s3
                  slli         gp, tp, 20
                  auipc        a4, 993968
                  slti         a1, t6, 762
                  slli         s5, t4, 27
                  lui          s4, 1047258
                  and          t3, gp, t2
                  srli         t2, t0, 12
                  sll          a1, a7, zero
                  slt          t3, zero, s1
                  sll          t5, a6, a7
                  xor          zero, t3, s6
                  slt          ra, t0, ra
                  ori          a3, s11, -1816
                  auipc        a6, 854460
                  lui          s10, 42308
                  srl          s10, a5, s10
                  xor          t6, s8, s4
                  srl          s10, s11, a4
                  nop
                  xori         a7, s11, -569
                  addi         s7, a3, 1277
                  sll          t5, t0, a0
                  sra          gp, a4, a1
                  srai         s7, a6, 16
                  srli         a3, t6, 13
                  nop
                  add          s1, s2, t4
                  slli         a4, s7, 11
                  slli         s5, gp, 21
                  addi         zero, a0, 1339
                  xori         t5, sp, -496
                  srli         a1, a7, 17
                  addi         s3, s4, -252
                  nop
                  srai         t5, a6, 4
                  nop
                  xori         s1, t3, -398
                  xor          zero, ra, zero
                  lui          a3, 211363
                  slli         s10, t0, 1
                  and          sp, s6, s5
                  srli         s11, a2, 31
                  sra          a7, a7, a0
                  srai         s0, a1, 25
                  lui          s0, 636306
                  sll          t3, t2, a6
                  srl          t3, s6, s8
                  sra          t2, a4, a5
                  slt          a4, s6, s3
                  srli         s5, s0, 0
                  sltiu        a0, a3, 913
                  addi         a4, tp, -392
                  andi         zero, s6, 407
                  auipc        a5, 628599
                  slt          s1, a6, sp
                  slt          t3, s1, t6
                  add          s7, s10, t5
                  sll          s0, a0, t0
                  andi         t3, s0, -1915
                  xori         s8, t3, 262
                  andi         a2, a7, 539
                  slli         tp, s5, 11
                  xor          gp, s4, s9
                  lui          s10, 908349
                  add          sp, a3, a1
                  sltu         s11, t3, a2
                  srai         a2, zero, 12
                  andi         s6, t6, 949
                  srai         a3, a7, 24
                  xor          s1, s8, a1
                  srl          s5, s1, t2
                  xor          a7, t3, a3
                  sltu         a4, ra, t0
                  lui          s1, 858397
                  and          a6, s2, t5
                  xori         s2, gp, 495
                  addi         s0, s11, 1044
                  nop
                  addi         s1, a7, -950
                  sub          t5, t4, s1
                  xor          s3, s0, t0
                  and          s10, t1, s10
                  nop
                  nop
                  and          s8, t2, zero
                  sra          a7, a6, t0
                  srai         a3, s2, 4
                  slt          t3, t6, a0
                  sltu         t3, s2, s0
                  addi         sp, t4, 1024
                  lui          t2, 212669
                  auipc        s10, 11209
                  sll          s9, a2, t6
                  slt          gp, s1, t2
                  or           s5, a5, zero
                  auipc        a2, 841842
                  sltiu        s6, s9, -1284
                  auipc        a2, 882468
                  sra          s1, t6, a0
                  slti         a7, a2, -1684
                  srl          s8, a5, s3
                  slli         sp, s5, 3
                  ori          a5, t3, 1605
                  andi         t3, t1, 1718
                  andi         gp, t3, 1136
                  sra          a1, tp, t0
                  and          s7, a0, s7
                  sub          s11, t2, gp
                  sra          s3, sp, t1
                  and          tp, tp, tp
                  sll          zero, s7, s8
                  nop
                  slti         s5, a5, -1664
                  srli         a3, s5, 11
                  srli         s9, t4, 23
                  slt          s1, a7, a2
                  slti         gp, s10, -367
                  sll          s5, gp, a4
                  xori         t6, a0, 1189
                  sra          zero, a6, ra
                  slli         s6, s5, 15
                  sltu         s4, t3, t1
                  srl          a0, t3, s4
                  xori         s10, s1, 222
                  srli         a2, a7, 31
                  add          s2, s7, gp
                  add          a5, a5, a2
                  lui          tp, 921944
                  addi         gp, a7, -1277
                  slti         a4, s5, 1073
                  or           a5, a6, a1
                  xor          sp, s3, s3
                  andi         t2, t1, -118
                  slli         t3, s4, 20
                  xor          s3, s2, gp
                  andi         zero, a0, 1781
                  xor          a5, t3, s3
                  sltiu        a4, tp, -1498
                  slti         sp, t6, 1471
                  sra          tp, tp, s7
                  nop
                  lui          s5, 711200
                  sltu         t5, t2, t1
                  slt          s10, t2, a5
                  andi         a6, a0, 761
                  xori         s3, a1, 582
                  sltu         a1, a3, zero
                  slti         s6, a2, -538
                  srl          s3, t3, s4
                  slti         s2, s7, 207
                  xori         s8, zero, 1241
                  srli         s11, t5, 6
                  nop
                  xor          sp, a4, s10
                  add          s10, ra, a3
                  sltu         t2, s6, t3
                  add          a6, s3, s9
                  srl          s1, a2, s9
                  slt          ra, a4, a7
                  slt          a6, t1, t4
                  add          gp, s8, a1
                  addi         s8, a7, 1985
                  sltiu        s6, t6, 568
                  srli         s9, a2, 2
                  sll          s1, tp, a0
                  nop
                  sub          s0, s3, sp
                  srai         s11, s6, 23
                  slti         s7, s2, 386
                  sra          a2, gp, s9
                  srli         s6, s4, 27
                  lui          t3, 69181
                  slli         a4, a1, 24
                  lui          s6, 748733
                  ori          a2, t5, 1405
                  slli         a5, a2, 1
                  sll          a6, s1, gp
                  srl          s0, s9, s6
                  xor          tp, s6, a5
                  add          a3, t2, gp
                  lui          s1, 426708
                  slti         a0, sp, 1576
                  and          s3, t6, s8
                  and          s0, t1, s11
                  li           a2, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           s8, 0xffffffff
                  li           s3, 0x17319ba1
                  li           t2, 0x80000000
                  li           t5, 0xe7b99cdd
                  li           ra, 0x0
                  li           s9, 0x80000000
                  li           s11, 0xffffffff
                  li           s10, 0x0
                  li           a5, 0x0
                  add          s9, s9, ra
                  sub          t5, a2, ra
                  nop
                  nop
                  addi         a5, s10, -111
                  nop
                  nop
                  nop
                  add          t2, s9, s8
                  nop
                  auipc        t2, 361226
                  auipc        s3, 243722
                  add          s3, t2, ra
                  addi         a2, s10, 1431
                  lui          s3, 657566
                  lui          s9, 64619
                  addi         s3, t2, 98
                  sub          t2, s11, s10
                  auipc        s10, 297625
                  add          s9, s11, ra #end riscv_int_numeric_corner_stream_17
                  andi         t6, t5, -1983
                  xor          s2, gp, t6
                  slt          a7, s11, gp
                  add          s4, t3, s5
                  and          t5, t2, s9
                  sltiu        a0, gp, -1600
                  and          s7, s4, a0
                  srli         sp, t4, 26
                  sltu         ra, t6, sp
                  sub          s2, t3, t2
                  andi         a7, t6, -890
                  andi         s0, a7, 1705
                  srl          s1, tp, s10
                  auipc        s3, 196698
                  andi         s0, a3, -1302
                  and          a3, s6, a6
                  addi         s7, s0, 752
                  and          s2, s3, t1
                  srli         s0, a4, 19
                  slt          s3, s0, t2
                  auipc        a7, 451967
                  add          s6, t3, t6
                  nop
                  and          tp, t5, a1
                  nop
                  lui          ra, 531168
                  slt          a5, s5, s3
                  nop
                  xori         t6, a3, -1688
                  slt          s0, s8, s0
                  ori          a2, s6, 1571
                  slt          s4, tp, s2
                  xori         a1, s4, -1882
                  sll          s8, t6, zero
                  slti         a1, t1, 377
                  sub          s7, a4, ra
                  auipc        tp, 220494
                  slli         s3, t1, 8
                  lui          s11, 74328
                  or           a2, s8, a4
                  slt          s8, t0, t6
                  add          s1, a4, s7
                  sll          a0, t4, s6
                  nop
                  auipc        zero, 897278
                  nop
                  andi         s11, ra, -1554
                  auipc        a3, 578364
                  xor          t3, s0, t0
                  andi         a1, s1, -1733
                  slti         s8, t4, -2034
                  andi         sp, s9, 957
                  srl          t5, tp, a2
                  lui          t6, 794351
                  srli         s6, t3, 6
                  slli         a4, t5, 6
                  sll          s3, t2, a3
                  sltu         a6, s7, a6
                  sltiu        s9, s9, 194
                  and          a6, s2, zero
                  ori          s1, a3, -151
                  sltu         s6, a5, ra
                  srl          s5, t5, a0
                  lui          s6, 980676
                  srai         a3, s2, 3
                  ori          t2, s10, 775
                  sll          tp, a3, sp
                  sltu         s9, a6, t5
                  auipc        s10, 605782
                  andi         a2, a7, 969
                  xor          s10, t4, t3
                  slt          t6, s8, a4
                  xor          s6, s2, s1
                  lui          a4, 611678
                  slti         s0, s10, 423
                  sltu         t2, s5, s2
                  srl          tp, s11, s7
                  srl          t6, a1, a0
                  srai         s10, s10, 1
                  sra          a0, t1, t0
                  nop
                  lui          t3, 1046943
                  auipc        t6, 733847
                  andi         a7, s8, -1871
                  sub          a4, ra, a0
                  srli         s1, s11, 28
                  lui          a3, 446961
                  ori          s10, a5, -1796
                  auipc        s6, 755361
                  nop
                  lui          t3, 345214
                  srli         a5, s10, 21
                  slti         a0, s1, 28
                  sub          sp, sp, s2
                  addi         s10, a7, 189
                  lui          s4, 397503
                  sub          s3, s0, sp
                  ori          s10, tp, -1880
                  srli         t3, t3, 12
                  slti         zero, t3, -549
                  slt          a1, s10, s3
                  srai         a0, s8, 12
                  xor          s9, t3, s3
                  auipc        s4, 55005
                  srli         s8, a2, 31
                  add          s2, a5, t4
                  or           a4, s9, zero
                  addi         t5, a1, -334
                  andi         s7, a0, 1615
                  add          s3, zero, t3
                  sll          t3, a3, a5
                  auipc        zero, 922971
                  slt          a3, a5, t5
                  slti         zero, t4, 528
                  ori          s7, t0, -1515
                  lui          a7, 223755
                  sll          a0, t3, tp
                  xori         s11, t1, 1342
                  nop
                  or           a0, t5, s2
                  slt          t5, t2, s5
                  and          a7, t2, a2
                  add          a0, sp, a3
                  slti         a3, sp, -1854
                  add          t3, s11, s6
                  add          zero, a6, t0
                  srl          s9, a4, s9
                  nop
                  sltu         s0, a1, s4
                  or           t2, s2, s8
                  ori          ra, a4, 1781
                  srai         t2, a6, 20
                  slli         t3, zero, 18
                  slt          s2, s6, s3
                  nop
                  addi         a3, t1, 1230
                  xor          s11, t1, s3
                  nop
                  sub          s11, s5, ra
                  nop
                  srai         s6, a0, 21
                  slli         t3, s8, 20
                  andi         s5, a6, -2038
                  andi         s9, a4, -495
                  sra          s1, s9, s3
                  auipc        tp, 928752
                  lui          a2, 234378
                  sra          a4, a3, tp
                  or           zero, zero, tp
                  xor          a2, s1, s4
                  and          a1, s3, gp
                  addi         a1, gp, -244
                  slli         a2, a2, 12
                  xor          t3, t4, a4
                  slti         t5, s0, -919
                  sll          s2, a1, sp
                  srli         ra, a4, 19
                  nop
                  slti         sp, a0, -1756
                  slli         tp, t1, 28
                  slti         t5, s5, 387
                  srl          t2, s0, a4
                  lui          s7, 739229
                  sll          a3, s9, t5
                  and          a2, a2, a6
                  sra          a4, gp, s0
                  xori         s2, gp, 586
                  ori          a0, s0, 86
                  srl          a7, s10, tp
                  and          s3, a7, s11
                  xori         zero, s9, -624
                  slti         s11, tp, -606
                  sltu         tp, s9, a2
                  auipc        a4, 645993
                  srl          a3, a7, zero
                  slt          a0, s5, a7
                  sub          a5, s7, t4
                  add          a6, s1, s10
                  xori         tp, a6, -231
                  sltiu        s1, t3, 1615
                  srli         s0, gp, 18
                  lui          ra, 886705
                  nop
                  sll          tp, s6, a7
                  slt          s3, t2, a7
                  sub          a6, s3, t3
                  addi         s2, s7, 1832
                  sltu         s4, a5, t3
                  sra          gp, a3, a4
                  sltu         a4, a2, s4
                  slt          s5, gp, sp
                  sll          t6, t0, ra
                  or           t5, a4, t2
                  lui          gp, 550504
                  slt          t3, gp, a6
                  sltu         s8, s2, s11
                  ori          a7, a3, 1164
                  and          s4, a3, a3
                  sra          a3, a7, t0
                  lui          gp, 901663
                  sltiu        s11, a0, 843
                  add          t3, zero, s3
                  sltiu        s7, zero, -680
                  sltiu        s11, t4, 469
                  xor          sp, tp, s7
                  add          s3, a0, t3
                  sltu         s9, t1, tp
                  sll          a3, a7, s6
                  sub          a1, a7, t5
                  sltu         s4, s1, s3
                  lui          t2, 802371
                  xori         sp, a1, 1765
                  addi         s9, gp, -335
                  xor          a6, a4, s6
                  andi         a3, s3, 1082
                  auipc        a1, 9610
                  srli         s3, s2, 17
                  slt          a4, t2, ra
                  slli         s1, a4, 14
                  srai         a2, t1, 26
                  andi         a2, s1, -1885
                  ori          tp, a7, 1346
                  andi         a7, t0, 1284
                  srai         s11, t3, 28
                  and          t2, zero, a4
                  sltiu        s3, a1, -1261
                  add          a1, tp, s1
                  sra          t6, t1, s9
                  sltiu        s11, a2, -1223
                  srli         s3, t3, 27
                  sltiu        t6, a4, -1944
                  slt          s9, a6, s7
                  sltiu        a0, ra, -1177
                  srli         a6, t6, 27
                  and          a1, t2, a7
                  srl          zero, a3, t4
                  sltiu        s1, s5, -1675
                  sltiu        s6, t3, 1957
                  sub          t5, t2, s5
                  sll          a6, s11, tp
                  lui          s1, 223249
                  slli         s11, t4, 9
                  slti         s4, s11, -1893
                  srl          s7, t5, s4
                  or           s8, gp, s4
                  add          sp, t1, s2
                  sltu         s7, a3, sp
                  sll          s10, s11, s2
                  nop
                  auipc        a1, 432803
                  slli         s3, a7, 26
                  or           a1, sp, a4
                  srl          s3, a7, t4
                  auipc        s1, 194075
                  srli         s4, zero, 28
                  auipc        s8, 47193
                  ori          s10, s2, -680
                  slt          gp, s3, sp
                  srl          t3, a0, gp
                  slti         s9, s6, 1873
                  xori         a6, s3, -830
                  slli         sp, s2, 21
                  slt          s6, s8, tp
                  lui          s10, 470997
                  xor          t2, s2, s4
                  sra          s0, s10, s10
                  srai         s6, s9, 13
                  andi         ra, t3, -1270
                  srli         s5, t6, 7
                  nop
                  add          zero, a1, t0
                  or           a5, s1, s6
                  and          gp, tp, a0
                  ori          s5, a5, -1898
                  ori          a3, a0, 1480
                  addi         s2, s6, 1574
                  ori          s10, t5, -1276
                  srl          sp, s11, s1
                  li           t3, 0x498e592e #start riscv_int_numeric_corner_stream_18
                  li           a0, 0x88cb4a53
                  li           s5, 0xffffffff
                  li           s1, 0xffffffff
                  li           a3, 0x80000000
                  li           ra, 0xfd2918bf
                  li           t6, 0x0
                  li           a1, 0xaa4968dc
                  li           a5, 0xde92c9da
                  li           a4, 0x0
                  lui          s5, 849845
                  nop
                  nop
                  lui          ra, 841259
                  addi         a1, ra, 1885
                  nop
                  lui          a5, 830006
                  nop
                  add          a4, s1, a0
                  sub          a1, a0, t3
                  add          s5, s1, t3
                  addi         ra, ra, 222
                  nop
                  nop
                  auipc        t3, 748111
                  nop
                  add          t6, s5, a0
                  lui          a3, 846842
                  addi         a5, s1, -422
                  lui          ra, 736475
                  sub          s1, t6, ra
                  nop
                  sub          ra, t3, t3
                  auipc        s5, 102929
                  nop
                  auipc        a4, 652981 #end riscv_int_numeric_corner_stream_18
                  sltiu        s7, s6, 1400
                  sub          s1, zero, t1
                  xori         s0, sp, -166
                  nop
                  or           t5, s3, a0
                  and          a6, sp, s10
                  slti         t3, gp, 1010
                  add          t2, s10, s11
                  slti         a5, a7, -428
                  sltiu        s5, ra, -68
                  slt          ra, a3, t4
                  sll          s9, s6, a6
                  srai         a0, a6, 6
                  auipc        s7, 328185
                  andi         a2, a7, 2042
                  addi         s10, t0, 1940
                  nop
                  nop
                  and          s2, s11, a7
                  lui          a1, 737839
                  nop
                  sll          tp, s5, a6
                  sltu         a3, a3, t1
                  slti         a0, t3, -1929
                  and          t5, a3, ra
                  andi         a3, a4, -1065
                  add          s9, s2, ra
                  xor          t6, ra, zero
                  addi         s10, s3, 801
                  auipc        ra, 571758
                  addi         a7, s6, -1249
                  and          sp, zero, a5
                  sra          s6, t5, t4
                  xori         s7, t2, -1770
                  addi         s1, t5, 748
                  slt          s5, s7, t0
                  sltiu        gp, s6, 427
                  sub          s6, s9, a1
                  andi         a1, s11, -1952
                  addi         a1, a7, 716
                  srai         t3, s0, 10
                  xor          s3, sp, zero
                  add          ra, sp, a7
                  srli         a3, a3, 4
                  nop
                  and          sp, a5, a3
                  sltu         a3, s5, t4
                  xori         sp, s5, 725
                  sra          t2, s5, s2
                  xori         ra, gp, -1743
                  sub          a7, t3, a1
                  addi         a5, s9, -801
                  add          s0, a0, tp
                  sltu         tp, tp, s8
                  auipc        s11, 697533
                  slti         a0, a2, 856
                  and          a7, tp, a0
                  ori          a0, s8, 652
                  andi         a3, s1, -213
                  srai         a0, a2, 18
                  or           s9, s5, t1
                  sra          a1, s10, t4
                  sltu         s9, t0, t2
                  srli         a7, a3, 23
                  or           t6, a3, s8
                  ori          t5, s7, -1421
                  srli         s3, s11, 24
                  sra          s6, a5, zero
                  sll          t5, t4, sp
                  ori          s6, a7, -1847
                  add          s5, s2, ra
                  add          a6, s3, t2
                  sub          s11, a7, s0
                  andi         ra, a5, -1914
                  srai         s11, s3, 20
                  ori          s10, t0, 555
                  addi         s3, s0, -488
                  sltu         s9, t5, s4
                  sra          s2, a1, t4
                  lui          zero, 614894
                  sub          s7, gp, ra
                  nop
                  srai         a1, t6, 30
                  slti         zero, ra, 614
                  andi         a7, s1, 698
                  slli         s7, t2, 16
                  xor          s4, s4, ra
                  sra          s10, ra, s7
                  sub          a5, s6, s4
                  srl          s6, zero, s11
                  sll          s0, s7, s6
                  andi         a6, a3, -1133
                  lui          s5, 903196
                  auipc        s7, 529906
                  nop
                  xori         s8, t4, -879
                  slti         ra, a6, 178
                  srl          s5, s4, tp
                  add          a4, s9, s6
                  sll          s5, a3, a6
                  sltiu        t2, ra, -1700
                  lui          a3, 273242
                  srl          t3, zero, s4
                  xori         s7, s9, 1896
                  lui          a3, 418814
                  slt          a3, s10, t2
                  or           zero, s2, t0
                  add          s4, s2, s5
                  or           a0, t0, t5
                  slt          zero, s4, sp
                  or           t6, a4, t1
                  srai         t3, t1, 6
                  sra          zero, s6, zero
                  lui          s8, 921739
                  xori         s4, s0, 376
                  auipc        t5, 159747
                  lui          a6, 697432
                  sltiu        a5, t6, -1774
                  and          s5, s5, sp
                  slli         s1, a6, 25
                  sll          s6, s11, s11
                  sub          a6, t4, a7
                  lui          sp, 875857
                  sltu         s8, s1, a5
                  addi         tp, gp, -424
                  sltiu        tp, t3, -872
                  xor          a2, a5, a2
                  ori          zero, a7, 1764
                  nop
                  addi         s8, ra, -1066
                  add          s9, a0, t2
                  nop
                  auipc        a1, 952819
                  slti         s9, t3, -1703
                  slt          t6, s10, s5
                  and          s10, sp, a7
                  sra          a6, a6, t2
                  sltu         s3, s3, a5
                  nop
                  addi         gp, gp, 1605
                  sltiu        a1, a2, 968
                  sltu         sp, t3, s8
                  xor          t5, s8, sp
                  slli         a3, s0, 10
                  srl          a0, s5, t3
                  sra          s3, t2, a3
                  xori         s3, a4, -966
                  auipc        zero, 759507
                  sltu         s2, gp, s7
                  and          a3, gp, t2
                  or           a0, t4, a6
                  andi         a7, s7, -442
                  auipc        t5, 1029553
                  slti         s4, ra, 1288
                  sub          ra, s1, s9
                  addi         gp, t4, 1471
                  sll          s8, a7, a5
                  slti         s8, s0, 1750
                  sll          a6, s6, s10
                  add          ra, sp, s10
                  nop
                  slti         s9, ra, 405
                  sll          a3, a1, s6
                  slt          sp, tp, a4
                  and          s4, s0, s10
                  andi         a2, a4, 174
                  lui          tp, 652415
                  lui          gp, 698964
                  or           a7, t5, s9
                  slti         t3, s1, 1841
                  xori         s4, sp, -578
                  lui          zero, 128991
                  or           s2, t2, a7
                  nop
                  slti         a2, s9, 782
                  srl          zero, s4, s2
                  add          s5, t0, tp
                  andi         s10, sp, 561
                  slt          a1, s6, a0
                  sll          t2, zero, s8
                  sltiu        sp, t1, -1234
                  auipc        s3, 780036
                  xori         s10, s1, 2015
                  sra          s10, t3, t0
                  lui          s11, 603375
                  srl          gp, a6, t3
                  add          t6, a5, a7
                  sub          s1, s3, zero
                  srli         t6, s3, 12
                  add          s2, s11, t2
                  ori          s8, a4, -1482
                  srli         s2, a3, 15
                  nop
                  nop
                  xori         s2, t0, 1276
                  srli         s0, tp, 6
                  srli         s6, a1, 3
                  sll          s1, ra, a6
                  srl          s6, a7, s5
                  ori          gp, a1, 82
                  nop
                  add          s6, s3, a1
                  or           t6, s3, a7
                  sltiu        s0, s10, -353
                  sub          s0, s10, a7
                  sll          s6, gp, a4
                  xor          s1, s4, a7
                  sltiu        s1, s2, -699
                  xor          s5, a1, s7
                  xori         s11, a4, 222
                  ori          t5, s10, -1335
                  slti         s9, a4, 19
                  nop
                  nop
                  lui          zero, 488690
                  sltu         sp, s10, s8
                  xori         a6, t3, -254
                  sra          a7, t5, a3
                  srai         a2, s6, 16
                  add          sp, a4, t2
                  or           s5, t2, a1
                  andi         t5, a5, -1270
                  sltu         s11, tp, a6
                  addi         t2, a7, -1554
                  ori          s0, a0, 835
                  xor          s2, a4, s1
                  lui          s6, 831171
                  srli         ra, a7, 22
                  add          gp, s6, a7
                  and          a7, a0, s10
                  slti         s7, a1, -386
                  nop
                  or           a0, s4, s4
                  sltiu        a5, s3, 1337
                  ori          s5, a4, 722
                  sltu         s5, t5, t1
                  slli         t3, t1, 28
                  srli         ra, s3, 4
                  or           zero, s2, sp
                  or           a3, s10, a3
                  sra          tp, s7, s5
                  srl          zero, a1, t3
                  slt          a3, t3, s10
                  sltiu        sp, t4, 187
                  srl          s7, t5, s5
                  and          s6, s8, t2
                  xor          t3, zero, s5
                  slli         s3, s4, 0
                  sll          s7, s5, tp
                  slti         s3, a2, 936
                  addi         a3, s8, 1270
                  andi         s0, s8, -1713
                  or           s11, t6, a0
                  add          s4, zero, t6
                  lui          ra, 397498
                  ori          s11, s10, 877
                  xori         a7, s6, 1329
                  slt          ra, a0, t1
                  slt          ra, tp, s10
                  auipc        s6, 293503
                  srl          s11, zero, s3
                  xor          t5, gp, t5
                  srai         sp, t6, 14
                  sltu         a7, ra, ra
                  or           s8, t3, s0
                  auipc        s7, 1001190
                  sltiu        a4, a7, 1046
                  srl          s0, t5, a0
                  sub          zero, tp, s6
                  sll          s10, ra, t2
                  slli         sp, t0, 3
                  srai         gp, a0, 2
                  slti         zero, t1, 740
                  slt          a3, zero, s2
                  auipc        s7, 73268
                  srl          gp, s3, t5
                  slti         a6, ra, 274
                  srl          gp, s3, s4
                  srli         s10, t6, 10
                  lui          s7, 682520
                  ori          a1, a7, 590
                  lui          a4, 608993
                  lui          a0, 663031
                  srl          a2, s1, s11
                  srl          a4, t5, gp
                  srl          ra, s9, s1
                  sra          t6, a5, sp
                  slt          sp, a0, s0
                  ori          ra, a3, -560
                  addi         s9, s6, -809
                  xor          gp, t3, s3
                  ori          s6, t1, -15
                  slt          s0, t4, t6
                  ori          s10, s3, 764
                  add          s11, a4, s9
                  xor          s9, s5, s3
                  sll          s2, s6, s9
                  srli         s5, t6, 4
                  sltu         s10, s7, s5
                  slti         s2, a7, 2006
                  srli         t2, a3, 16
                  sll          t2, gp, s2
                  xor          gp, s5, sp
                  andi         t3, s2, -510
                  srl          a6, tp, a1
                  slti         t6, s2, -509
                  xori         s10, tp, 1623
                  srl          gp, zero, t1
                  srli         zero, gp, 28
                  ori          a7, gp, 1677
                  sra          a7, s2, s10
                  and          a1, s6, t4
                  slli         s6, t1, 0
                  sltiu        s9, s0, -1903
                  sra          s6, t1, a4
                  andi         s8, s6, -141
                  slli         s11, ra, 10
                  sltiu        s2, s8, -1033
                  sll          a1, a3, a3
                  xor          s7, gp, a2
                  add          t2, s1, a1
                  add          s7, s3, s5
                  srl          a3, a1, t1
                  srai         a0, ra, 10
                  sltiu        a4, s0, 1593
                  xori         a6, s5, -1731
                  sll          a1, a4, t1
                  xori         s2, a0, -1024
                  sll          s9, a1, s3
                  sltu         a1, s2, s2
                  slti         a2, sp, -568
                  add          a3, a3, s0
                  sra          t6, t1, t4
                  srl          ra, a4, s0
                  srai         t5, s3, 18
                  ori          gp, s4, -882
                  addi         s8, s5, 135
                  ori          zero, s2, 1696
                  xori         sp, s2, -390
                  srli         gp, a4, 22
                  slti         t3, a5, -297
                  slt          t3, a1, t5
                  slt          s7, s1, a2
                  srli         s7, a4, 11
                  sub          a3, a7, t5
                  sra          s1, t6, t2
                  xori         s5, s8, 1123
                  xor          t5, ra, s8
                  srai         s4, s7, 19
                  ori          t2, a1, -1812
                  srl          a5, s1, ra
                  srli         s1, a5, 13
                  srai         t6, ra, 6
                  addi         tp, s9, 1413
                  slti         a1, t2, -928
                  slti         t2, t3, -1717
                  srl          a4, t5, t1
                  sltu         s5, s4, gp
                  sra          t3, s9, t6
                  and          s3, a3, s7
                  and          t5, s1, sp
                  slt          sp, s8, t2
                  sub          s10, tp, s10
                  add          t5, s2, t5
                  or           s4, a4, ra
                  srai         a2, a2, 28
                  auipc        a4, 349299
                  nop
                  sub          a0, t4, tp
                  sltiu        s3, a6, 1129
                  slti         s10, s11, -905
                  andi         a3, s5, 785
                  slli         s11, t2, 16
                  and          sp, zero, a4
                  slti         zero, gp, 1864
                  slt          a0, t6, sp
                  ori          t2, a2, 118
                  srli         s1, t3, 22
                  addi         a1, a1, -1703
                  slli         gp, t5, 29
                  and          t5, t3, a1
                  sll          s1, t0, s11
                  or           s4, s4, a2
                  or           a3, a6, s6
                  slt          a4, s2, t5
                  lui          zero, 569634
                  or           t3, t0, a0
                  xori         s2, a1, 572
                  xor          s3, t3, s7
                  slli         s3, s7, 14
                  and          gp, s6, s3
                  slti         a0, s0, 1539
                  slt          a1, t5, s5
                  sltu         s8, s7, s4
                  xori         a1, t3, 1986
                  sub          t3, a5, zero
                  srai         tp, s5, 10
                  sll          t2, a0, s2
                  ori          t6, ra, -1209
                  andi         a6, t5, 55
                  xor          s0, gp, t0
                  slti         a4, a7, -968
                  lui          s5, 724370
                  slti         s5, ra, 731
                  ori          tp, t5, 2014
                  sltiu        a6, s7, -470
                  srl          a7, t4, t4
                  auipc        a6, 653663
                  or           t3, s3, s0
                  addi         s9, t0, -720
                  sra          t2, s8, t4
                  sub          ra, a7, s6
                  auipc        s9, 328128
                  lui          t6, 821052
                  ori          a7, a6, -1106
                  srli         s6, s6, 5
                  srli         a2, tp, 2
                  sltu         t5, s5, s7
                  slt          a4, t3, s0
                  slti         a1, a1, -2047
                  ori          a6, s3, -326
                  auipc        a2, 62972
                  sra          t6, s0, a6
                  sltiu        t6, t0, 1804
                  sll          t5, s6, a2
                  sra          s3, a4, t4
                  slti         s8, t6, 1762
                  srli         s1, s11, 23
                  sub          s1, s7, t3
                  or           a2, a0, t0
                  xor          s5, t4, s6
                  slti         s0, sp, -1460
                  nop
                  srli         ra, a4, 16
                  xori         s11, gp, -1088
                  sll          t6, a6, ra
                  auipc        gp, 3521
                  xori         zero, s5, -1030
                  ori          t2, s1, -103
                  auipc        s5, 149138
                  nop
                  lui          gp, 319292
                  srai         gp, s9, 20
                  sltiu        a0, s7, 420
                  srli         s7, gp, 7
                  add          s3, a5, s11
                  or           s5, s4, t3
                  sll          t2, a6, sp
                  andi         a6, tp, 1367
                  add          zero, a6, sp
                  xor          tp, gp, a2
                  slt          s5, sp, t4
                  nop
                  andi         tp, s11, -295
                  auipc        a2, 402004
                  xor          zero, t3, a5
                  xori         s5, a5, 963
                  nop
                  srai         a1, s3, 31
                  and          s5, a0, s8
                  and          s3, s0, t0
                  sra          s5, gp, s6
                  nop
                  sra          a7, s6, s10
                  add          t6, s2, sp
                  and          t6, a0, zero
                  xori         ra, zero, 441
                  slt          a0, zero, a4
                  xor          t6, a4, s5
                  lui          s7, 195781
                  sltu         tp, s9, t4
                  xor          ra, t0, s5
                  srai         s8, gp, 8
                  sltiu        s9, zero, -40
                  andi         t2, a4, 1375
                  srl          s9, t2, a7
                  addi         gp, a2, -2029
                  nop
                  nop
                  sub          s8, t0, t2
                  add          a1, a1, t2
                  addi         s11, tp, -1066
                  ori          s10, a3, -468
                  xor          t5, s10, s10
                  nop
                  addi         s3, gp, -677
                  sll          zero, s0, a3
                  add          a1, t1, zero
                  sll          s4, a4, tp
                  andi         s0, t1, -912
                  slli         s9, a1, 16
                  sll          s8, s6, a5
                  andi         tp, a1, -696
                  sll          s7, s6, a0
                  nop
                  sub          s1, gp, a0
                  and          t3, t2, t4
                  srai         s4, a6, 0
                  sra          s6, s4, t5
                  ori          a4, gp, 863
                  and          a3, gp, a3
                  auipc        a0, 894289
                  xor          zero, s9, s2
                  sltu         s5, sp, a6
                  andi         s11, tp, 1313
                  slt          s2, a3, s0
                  sltu         a0, s7, s0
                  xori         a6, s4, -1718
                  addi         a6, a7, 1655
                  slti         a4, tp, -1437
                  sltu         s6, t1, a1
                  slti         a7, t2, -816
                  and          s3, t1, a6
                  sltiu        s5, gp, -551
                  slti         a4, gp, 299
                  auipc        s8, 382554
                  srai         s4, t6, 18
                  slli         s7, s8, 29
                  xori         t2, s3, 14
                  srl          a4, t2, s1
                  ori          t6, sp, -473
                  nop
                  srai         s9, s7, 10
                  slt          tp, s3, a0
                  slt          s0, s11, t2
                  add          s4, s1, s4
                  nop
                  sll          s0, t5, a6
                  xor          t6, a6, s9
                  add          s3, s8, s7
                  andi         s10, ra, -1091
                  slti         t2, a6, -125
                  srl          s1, gp, ra
                  nop
                  or           s3, s7, ra
                  sltu         a4, s7, t0
                  sll          t5, s6, s7
                  ori          s3, s10, -62
                  lui          a5, 468636
                  slti         a0, t1, 762
                  andi         a6, a3, 554
                  add          a4, s1, s9
                  auipc        a7, 519930
                  nop
                  lui          s11, 94227
                  slti         a1, t6, 114
                  andi         s5, a0, -910
                  sra          s9, a2, s9
                  srai         s5, a5, 4
                  or           tp, s11, a7
                  and          t3, t3, sp
                  add          s2, a1, tp
                  nop
                  add          t3, a4, s0
                  xori         t3, ra, 2010
                  lui          zero, 22708
                  sra          t3, zero, sp
                  lui          a2, 885628
                  slti         tp, s6, -378
                  nop
                  add          t6, s11, gp
                  sltu         t5, zero, a2
                  srli         t6, s4, 14
                  li           a2, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           t6, 0xf2d2c83a
                  li           s0, 0x80000000
                  li           a0, 0x0
                  li           a4, 0xffffffff
                  li           s7, 0xffffffff
                  li           t2, 0xffffffff
                  li           gp, 0xd9f6ee20
                  li           a7, 0x3982c2f9
                  li           s1, 0xf7531f5d
                  sub          s0, t6, s1
                  add          a2, t6, s0
                  add          s0, t2, s0
                  nop
                  auipc        s0, 276049
                  addi         a2, a4, -1051
                  auipc        a0, 435838
                  add          s1, s0, s7
                  nop
                  nop
                  auipc        s1, 874596
                  auipc        s1, 330140
                  nop
                  sub          a0, s1, a0
                  addi         s7, a0, 889
                  sub          a7, t6, a0
                  sub          s0, a2, t2
                  add          s1, t2, gp
                  nop
                  sub          t2, s1, t2
                  lui          t2, 144537
                  lui          a4, 906473
                  lui          t2, 472308
                  add          t6, a0, s0
                  nop #end riscv_int_numeric_corner_stream_11
                  sub          s6, t4, s1
                  sll          t2, s6, t5
                  sub          a6, a4, t0
                  andi         tp, t6, 1196
                  xori         s8, gp, 1934
                  srai         s0, a6, 29
                  or           tp, s3, gp
                  sll          s9, t1, s2
                  sra          a3, s0, s5
                  or           s10, t0, t5
                  srli         t6, s2, 22
                  srli         s8, s7, 2
                  srli         a5, a1, 17
                  xor          t2, gp, s11
                  sra          t5, tp, t1
                  andi         t3, a2, -1223
                  or           gp, a7, tp
                  srl          a2, s1, gp
                  slt          a6, t2, t4
                  xor          t6, s2, s2
                  sll          a0, t2, a5
                  andi         a4, zero, -1626
                  auipc        a5, 392135
                  srai         s11, s7, 18
                  addi         a7, t2, -604
                  slli         sp, s9, 16
                  auipc        s3, 818714
                  slti         t3, a4, -1523
                  sltu         sp, t3, t0
                  andi         s5, s4, -747
                  lui          tp, 456199
                  auipc        gp, 849699
                  xor          s3, s9, a3
                  lui          sp, 240426
                  auipc        ra, 389984
                  or           s9, s11, ra
                  nop
                  sub          s2, t2, s4
                  xor          s5, a7, s1
                  xor          s4, s11, t6
                  sra          a4, tp, t5
                  auipc        s7, 218239
                  sub          a6, ra, s5
                  or           a2, s7, t3
                  slli         ra, s7, 25
                  andi         s4, s8, 74
                  xori         a5, s3, -1034
                  sltiu        t2, tp, 1221
                  srai         a0, a6, 22
                  add          a4, s1, s3
                  lui          s8, 837002
                  andi         sp, s7, 1813
                  and          s11, a2, zero
                  sll          s0, t2, t0
                  sltiu        a1, ra, -1076
                  slti         s5, t1, 1275
                  and          s11, a1, s10
                  slti         a2, a7, 1534
                  and          a2, s4, a6
                  slti         t3, a7, -745
                  sltu         a4, s8, a0
                  slti         a1, s6, 12
                  nop
                  lui          a2, 756383
                  srli         t6, s11, 14
                  sltiu        a4, a6, 163
                  srl          s6, s11, zero
                  auipc        s5, 152538
                  sub          tp, a0, a2
                  srl          s2, a5, gp
                  xor          a1, a2, s2
                  lui          sp, 996409
                  srli         a6, s8, 26
                  nop
                  sltu         s9, s1, a0
                  srli         tp, t0, 26
                  addi         a1, s11, -725
                  add          s11, sp, gp
                  srl          s10, s11, t3
                  srl          s6, s1, a6
                  slli         a4, s2, 22
                  sra          t2, a5, gp
                  ori          s1, t2, 1571
                  and          a7, t0, zero
                  auipc        s5, 65248
                  sll          a6, t4, s2
                  or           a3, a5, s10
                  ori          a1, gp, -245
                  srai         s2, t3, 1
                  and          s2, s6, t0
                  srli         zero, a5, 31
                  slli         a5, t3, 27
                  or           s2, s2, sp
                  slti         gp, s8, -908
                  slt          a5, t3, zero
                  or           a0, s10, s3
                  sltu         s1, a4, s3
                  xor          gp, a4, s6
                  srai         s3, ra, 2
                  slli         s4, a6, 4
                  slli         a0, t4, 7
                  add          zero, t2, t3
                  sub          s0, a3, t5
                  sub          a7, s6, a4
                  sra          t3, s7, sp
                  or           a1, a4, t5
                  ori          s5, s2, 591
                  addi         s5, a1, -908
                  sub          s2, t6, s6
                  sltiu        t6, s4, -1583
                  srl          a1, gp, t3
                  nop
                  slti         s0, s1, 717
                  add          t5, sp, s11
                  xor          s3, a4, s9
                  addi         t3, a2, 681
                  xor          s5, a2, t1
                  sltiu        a0, s3, 278
                  sltiu        a4, t3, 323
                  andi         t2, t3, 357
                  and          a3, s11, s1
                  sltiu        zero, s0, 589
                  sub          t5, sp, s0
                  slli         a4, s1, 18
                  xori         a4, t1, -1658
                  auipc        s7, 468966
                  addi         tp, s7, 1062
                  sltu         s5, s3, s2
                  sll          s10, ra, gp
                  sltiu        tp, ra, 52
                  slli         s8, t3, 26
                  srli         s11, s1, 9
                  srli         a7, gp, 8
                  sub          t3, s4, s8
                  and          s5, s9, t1
                  sll          s8, t5, a7
                  sltiu        a4, a2, 1588
                  srli         s6, s4, 9
                  slli         zero, s1, 24
                  sll          s9, a3, sp
                  auipc        a2, 945909
                  sub          a0, gp, s11
                  slli         a4, tp, 28
                  slli         s2, a2, 1
                  xor          a2, a4, t1
                  srli         a1, a0, 27
                  lui          s2, 1036812
                  andi         s8, sp, -1744
                  srli         s1, s3, 10
                  auipc        gp, 206314
                  and          a0, gp, sp
                  ori          t2, s1, 275
                  xori         t2, s1, 29
                  xori         tp, s6, 1659
                  sltiu        a4, a7, 399
                  nop
                  sll          s0, s9, s3
                  sltiu        gp, t0, 1196
                  add          sp, t1, s11
                  srli         ra, a5, 14
                  slti         s9, s1, -98
                  addi         s10, t0, -19
                  xor          s3, s1, s6
                  srl          s10, t0, a1
                  srl          s7, s2, a3
                  sll          a0, s2, gp
                  sll          a0, a3, a6
                  lui          s10, 842281
                  addi         a0, tp, 144
                  sltiu        t2, a0, 943
                  or           s2, gp, t6
                  xori         s9, t0, -297
                  sltiu        s0, s6, 761
                  xori         s4, a3, 1761
                  srl          a6, a0, a4
                  xor          t6, s4, a1
                  slti         a4, t5, 1845
                  srai         tp, tp, 12
                  or           s1, a0, s4
                  sll          s10, s10, t3
                  srli         gp, a4, 8
                  srli         s8, gp, 14
                  srai         s2, s3, 25
                  sltu         s0, s4, t3
                  ori          s3, t6, 776
                  lui          s1, 647026
                  and          a3, s2, s0
                  add          s10, gp, a2
                  xor          s5, s5, s6
                  ori          s8, s4, -1400
                  xor          sp, s2, a6
                  nop
                  srli         a6, sp, 20
                  sltiu        a3, s7, -1144
                  and          s9, t4, s11
                  or           tp, s2, t4
                  ori          s10, s4, 1312
                  ori          s6, s1, 1695
                  nop
                  and          a5, s4, s3
                  add          t6, s6, s3
                  lui          s6, 856937
                  add          s11, s8, a2
                  lui          a3, 180257
                  addi         t3, a0, -28
                  sra          t3, s6, t2
                  addi         t5, a2, -1582
                  sltu         tp, a6, t4
                  auipc        gp, 952902
                  sub          a6, s6, s8
                  ori          s8, t3, -787
                  nop
                  andi         a6, s0, -319
                  xor          tp, t3, a7
                  sltiu        ra, a5, 1833
                  xor          s11, a6, s10
                  lui          t2, 190061
                  sra          s3, gp, s11
                  slli         s3, tp, 24
                  srli         t3, a6, 4
                  la x5, test_done
                  jalr x0, x5, 0
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
                  csrr x25, 0x300 # MSTATUS
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 31
                  bne x25, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x21, 0x3 # BREAKPOINT
                  beq x25, x21, ebreak_handler
                  li x21, 0x8 # ECALL_UMODE
                  beq x25, x21, ecall_handler
                  li x21, 0x9 # ECALL_SMODE
                  beq x25, x21, ecall_handler
                  li x21, 0xb # ECALL_MMODE
                  beq x25, x21, ecall_handler
                  li x21, 0x1
                  beq x25, x21, instr_fault_handler
                  li x21, 0x5
                  beq x25, x21, load_fault_handler
                  li x21, 0x7
                  beq x25, x21, store_fault_handler
                  li x21, 0xc
                  beq x25, x21, pt_fault_handler
                  li x21, 0xd
                  beq x25, x21, pt_fault_handler
                  li x21, 0xf
                  beq x25, x21, pt_fault_handler
                  li x21, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x21, illegal_instr_handler
                  csrr x21, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

ecall_handler:    
                  la x25, _start
                  sw x0, 0(x25)
                  sw x1, 4(x25)
                  sw x2, 8(x25)
                  sw x3, 12(x25)
                  sw x4, 16(x25)
                  sw x5, 20(x25)
                  sw x6, 24(x25)
                  sw x7, 28(x25)
                  sw x8, 32(x25)
                  sw x9, 36(x25)
                  sw x10, 40(x25)
                  sw x11, 44(x25)
                  sw x12, 48(x25)
                  sw x13, 52(x25)
                  sw x14, 56(x25)
                  sw x15, 60(x25)
                  sw x16, 64(x25)
                  sw x17, 68(x25)
                  sw x18, 72(x25)
                  sw x19, 76(x25)
                  sw x20, 80(x25)
                  sw x21, 84(x25)
                  sw x22, 88(x25)
                  sw x23, 92(x25)
                  sw x24, 96(x25)
                  sw x25, 100(x25)
                  sw x26, 104(x25)
                  sw x27, 108(x25)
                  sw x28, 112(x25)
                  sw x29, 116(x25)
                  sw x30, 120(x25)
                  sw x31, 124(x25)
                  la x5, write_tohost
                  jalr x0, x5, 0

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
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
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
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
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
                  csrr  x25, 0x300 # MSTATUS;
                  csrr  x25, 0x304 # MIE;
                  csrr  x25, 0x344 # MIP;
                  csrrc x25, 0x344, x25 # MIP;
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
