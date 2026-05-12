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
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x24, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 0
                  csrw 0x305, x20 # MTVEC

mepc_setup:       
                  la x20, init
                  csrw 0x341, x20

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x20, 0x1800
                  csrw 0x300, x20 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x0
                  li x2, 0xb
                  li x3, 0x655382f4
                  li x4, 0x3
                  li x5, 0x80000000
                  li x6, 0x80000000
                  li x7, 0xcc15e897
                  li x8, 0x8624ee87
                  li x10, 0x69f1de57
                  li x11, 0xfd51b12e
                  li x12, 0x3
                  li x13, 0x80000000
                  li x14, 0x80000000
                  li x15, 0xf0d8c7fc
                  li x16, 0x0
                  li x17, 0x0
                  li x18, 0x9
                  li x19, 0xfc6b090b
                  li x20, 0xb
                  li x21, 0x0
                  li x22, 0x0
                  li x23, 0x0
                  li x25, 0x3357bf2
                  li x26, 0x0
                  li x27, 0xfbf3aa4b
                  li x28, 0x80000000
                  li x29, 0x5
                  li x30, 0x0
                  li x31, 0xff7eefd1
                  la x9, user_stack_end
main:             li           s3, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           t0, 0x0
                  li           a2, 0xb49dfca9
                  li           tp, 0x80000000
                  li           gp, 0x80000000
                  li           s5, 0xeb2be569
                  li           s7, 0x0
                  li           sp, 0x0
                  li           t4, 0x0
                  li           t1, 0x0
                  lui          t4, 196987
                  add          sp, t4, t1
                  lui          tp, 510728
                  add          sp, tp, t0
                  lui          s5, 625370
                  auipc        a2, 540284
                  auipc        a2, 406517
                  nop
                  nop
                  auipc        t0, 388165
                  nop
                  addi         t0, s5, -1710
                  auipc        sp, 257552
                  lui          s5, 512047
                  lui          a2, 933424
                  sub          s3, s7, s3
                  lui          t4, 644582
                  addi         s7, gp, -557
                  sub          t4, tp, a2
                  auipc        t0, 911954
                  auipc        a2, 476599 #end riscv_int_numeric_corner_stream_13
                  li           a3, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           gp, 0x0
                  li           t1, 0x67d98598
                  li           s10, 0xffffffff
                  li           t3, 0x80000000
                  li           s9, 0xffffffff
                  li           s11, 0x0
                  li           a2, 0xb31c39c7
                  li           ra, 0xffffffff
                  li           t0, 0x4db0d80b
                  add          s10, s10, a3
                  auipc        s9, 508727
                  add          s9, gp, ra
                  lui          gp, 129325
                  sub          a3, t0, t0
                  sub          ra, gp, s9
                  nop
                  nop
                  add          s10, s9, s11
                  lui          gp, 465057
                  add          a3, s10, a3
                  auipc        s9, 922882
                  addi         gp, gp, 454
                  add          s10, s11, ra
                  sub          a3, a2, a2
                  lui          gp, 549581
                  addi         s10, a2, 695
                  auipc        s9, 714397
                  add          a3, t1, s10
                  auipc        t0, 926686
                  addi         t0, s9, -709
                  sub          a3, s11, s9 #end riscv_int_numeric_corner_stream_4
                  li           t5, 0xffffffff #start riscv_int_numeric_corner_stream_18
                  li           a6, 0x0
                  li           a4, 0xffffffff
                  li           s7, 0x8f967cf0
                  li           s4, 0x80000000
                  li           a1, 0xffffffff
                  li           a2, 0x6987fda7
                  li           ra, 0xffffffff
                  li           gp, 0x80000000
                  li           t4, 0xffffffff
                  add          s4, t5, t5
                  add          t4, a4, a1
                  auipc        t5, 211447
                  addi         s4, a4, 19
                  lui          gp, 773683
                  auipc        s4, 338199
                  add          a2, ra, a6
                  sub          t5, a2, t4
                  nop
                  addi         a6, a2, 1707
                  lui          t5, 294624
                  auipc        a1, 262492
                  auipc        gp, 405538
                  nop
                  nop
                  addi         s7, t4, 1455
                  add          a1, ra, s7
                  sub          ra, gp, a6
                  add          a1, gp, ra
                  nop
                  nop
                  nop
                  add          gp, s7, ra
                  add          gp, a1, s4
                  auipc        s4, 642519
                  sub          s4, t5, a6 #end riscv_int_numeric_corner_stream_18
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           t4, 0x55d55161
                  li           t0, 0x80000000
                  li           a0, 0x80000000
                  li           a6, 0xa5924bb8
                  li           t3, 0xffffffff
                  li           s9, 0x0
                  li           s11, 0x80000000
                  li           a4, 0xffffffff
                  li           gp, 0x321f09a6
                  add          s9, s11, s9
                  auipc        a4, 145220
                  lui          t3, 387111
                  add          s9, t3, t3
                  auipc        t0, 1003590
                  nop
                  auipc        a0, 729854
                  lui          s9, 54579
                  sub          a0, t0, s11
                  nop
                  auipc        t0, 502681
                  add          gp, tp, a6
                  add          s9, tp, a0
                  addi         a0, a0, 2034
                  addi         a0, a6, -898 #end riscv_int_numeric_corner_stream_19
                  li           s4, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           a4, 0x80000000
                  li           a5, 0x0
                  li           gp, 0xb9fca3d7
                  li           t4, 0x80000000
                  li           s6, 0x80000000
                  li           s3, 0x92c4c183
                  li           s2, 0x77c6bda4
                  li           a3, 0xaf1e7315
                  li           a1, 0x4d4ad0d
                  auipc        gp, 334918
                  auipc        gp, 636360
                  add          gp, a4, a3
                  addi         a5, a5, 1694
                  lui          a3, 577048
                  add          t4, s3, a4
                  add          s6, a5, s4
                  addi         s2, s3, -1134
                  sub          a4, a3, t4
                  add          t4, t4, a4
                  nop
                  auipc        a3, 246813
                  add          s4, a5, a5
                  add          a5, s2, a3
                  addi         a5, t4, 1297
                  lui          a4, 397481
                  add          t4, a3, gp
                  auipc        a3, 789145
                  add          a5, s3, s6
                  addi         s6, gp, 1379
                  auipc        a3, 648996
                  add          gp, gp, a4
                  nop
                  lui          t4, 589128
                  lui          a3, 104891
                  nop
                  addi         a3, a1, 376
                  add          a5, a1, s2 #end riscv_int_numeric_corner_stream_5
                  li           t5, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           a1, 0xffffffff
                  li           gp, 0xba34f7e4
                  li           tp, 0xdc7df49f
                  li           t3, 0x80000000
                  li           t6, 0x80000000
                  li           s3, 0x80000000
                  li           sp, 0xfcacafde
                  li           a3, 0x1ae549d0
                  li           s11, 0xffffffff
                  add          gp, gp, a3
                  lui          s3, 285548
                  sub          a1, sp, s11
                  auipc        t3, 223903
                  addi         s3, tp, 8
                  addi         sp, t6, 657
                  nop
                  lui          sp, 38963
                  sub          s11, a3, sp
                  add          t3, sp, s3
                  add          sp, t3, t6
                  addi         t6, a1, 903
                  add          tp, t5, sp
                  auipc        t5, 733705
                  lui          gp, 104721
                  nop
                  add          tp, a3, t3 #end riscv_int_numeric_corner_stream_15
                  li           s2, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           s4, 0x0
                  li           s9, 0x80000000
                  li           s7, 0x80000000
                  li           a3, 0x80000000
                  li           tp, 0x80000000
                  li           s3, 0xffffffff
                  li           s11, 0x0
                  li           t2, 0x5ca4519b
                  li           s6, 0x80000000
                  add          t2, tp, s3
                  sub          s6, s4, s6
                  addi         tp, s4, 373
                  lui          a3, 246096
                  sub          s9, s6, t2
                  add          a3, s6, t2
                  addi         t2, s4, 1249
                  lui          tp, 194804
                  nop
                  add          s7, a3, a3
                  add          a3, tp, a3
                  addi         s3, a3, 1881
                  nop
                  sub          tp, s7, s9
                  addi         s3, s9, 790
                  lui          s2, 647794
                  nop
                  auipc        s3, 1009844
                  auipc        s4, 993265
                  add          s2, s9, s4
                  addi         a3, tp, -233
                  lui          s11, 955958
                  lui          s3, 134536
                  auipc        s2, 278784
                  sub          s2, a3, t2
                  add          s7, s9, t2
                  addi         a3, s3, -1139
                  add          a3, t2, s7 #end riscv_int_numeric_corner_stream_12
                  li           s3, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           a0, 0x8209197e
                  li           t1, 0x80000000
                  li           t0, 0x80000000
                  li           t5, 0x0
                  li           ra, 0x0
                  li           t6, 0x0
                  li           s11, 0x80000000
                  li           a6, 0x0
                  li           s0, 0xffffffff
                  auipc        t0, 723894
                  nop
                  auipc        s11, 1046448
                  lui          t5, 228009
                  sub          a6, t6, t1
                  auipc        a0, 528598
                  sub          t6, s0, t6
                  lui          a6, 896596
                  add          a6, t0, ra
                  sub          s0, s11, a6
                  add          t0, s11, a6
                  addi         t5, t1, -1712
                  addi         a6, t0, -1336
                  lui          ra, 555368
                  auipc        ra, 7254
                  nop
                  addi         t0, a6, -1506
                  add          a0, t5, t6
                  auipc        t6, 548097
                  lui          t1, 452436
                  auipc        a6, 777896
                  add          t0, s11, s11
                  sub          t5, t1, s0 #end riscv_int_numeric_corner_stream_17
                  li           a4, 0xd4bf4cf #start riscv_int_numeric_corner_stream_1
                  li           s4, 0x0
                  li           t6, 0x80000000
                  li           t1, 0x50691b7c
                  li           t2, 0xffffffff
                  li           t0, 0xffffffff
                  li           a0, 0xffffffff
                  li           t4, 0x80000000
                  li           s3, 0x80000000
                  li           s6, 0x0
                  auipc        t1, 170906
                  add          t6, t6, s6
                  sub          a0, t6, t2
                  nop
                  addi         t1, s3, 72
                  sub          t2, s3, s4
                  nop
                  add          t6, t2, t2
                  nop
                  sub          t2, t0, s3
                  lui          t2, 906616
                  lui          s6, 231704
                  add          s3, t4, s3
                  nop
                  add          t0, a0, t1
                  sub          a0, s4, t2
                  sub          t4, s4, t0
                  lui          a0, 138058
                  add          t0, t1, t0
                  add          t0, t1, t6
                  auipc        s3, 777072
                  nop #end riscv_int_numeric_corner_stream_1
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           t0, 0x0
                  li           s2, 0x0
                  li           s11, 0xd5fa417d
                  li           gp, 0x80000000
                  li           a5, 0xffffffff
                  li           sp, 0x80000000
                  li           t3, 0x0
                  li           ra, 0xffffffff
                  li           s6, 0xffffffff
                  sub          s2, ra, t0
                  addi         t0, a5, -624
                  lui          s6, 634970
                  auipc        sp, 715687
                  addi         t0, s10, 246
                  addi         gp, ra, 992
                  sub          t0, s2, t0
                  add          s11, s10, s11
                  sub          gp, s2, gp
                  addi         t0, t3, 398
                  add          gp, gp, s6
                  addi         s10, s6, -935
                  sub          t0, s11, gp
                  auipc        ra, 768528
                  sub          gp, s10, sp
                  add          gp, sp, s2
                  auipc        s6, 314886
                  nop
                  addi         t0, a5, -1759
                  lui          sp, 873859
                  lui          t3, 789914 #end riscv_int_numeric_corner_stream_3
                  sra          s2, a7, a2
                  xor          a3, s9, s10
                  srli         s5, t2, 27
                  xor          zero, t4, s11
                  add          s5, s8, gp
                  slli         a5, t5, 18
                  or           s5, t3, gp
                  xori         s2, s8, -1764
                  auipc        t4, 124115
                  srli         sp, t6, 16
                  slti         a0, a5, -217
                  xori         a5, a3, -1758
                  srli         ra, zero, 27
                  add          s7, s11, a3
                  sra          s11, s0, s7
                  slti         s9, s3, 1632
                  sub          a0, s6, t6
                  sltu         ra, s6, s2
                  slt          s2, a4, t3
                  slti         s7, s7, -333
                  or           a4, a2, a1
                  sll          t3, a4, s8
                  and          t3, t2, s11
                  sltu         t5, a5, t2
                  lui          a6, 539035
                  sll          a2, s10, s2
                  or           tp, a6, t3
                  sltu         t0, t4, a5
                  xori         s0, a0, -339
                  xori         a0, s2, 634
                  slli         a6, s9, 25
                  nop
                  nop
                  srli         s2, s5, 11
                  slt          t4, t5, t1
                  ori          s6, tp, -100
                  lui          t1, 348719
                  ori          s5, a7, 1123
                  sltu         a1, a3, s4
                  sll          a6, t2, s7
                  slt          t2, a5, s9
                  auipc        a4, 598589
                  srli         zero, t1, 27
                  xor          t1, s4, a3
                  nop
                  srli         gp, tp, 16
                  sub          s7, a2, a5
                  xori         t0, a6, -635
                  auipc        s5, 836889
                  srai         t5, a2, 0
                  or           s9, s2, s9
                  ori          tp, s5, -886
                  addi         t4, t4, 1337
                  xori         a1, sp, 839
                  ori          t6, s1, -711
                  srl          zero, a5, t1
                  xor          sp, s6, a7
                  ori          a4, t6, -1897
                  srli         a4, s9, 7
                  sltu         t4, t4, s4
                  ori          s10, t6, 1496
                  lui          s2, 407244
                  andi         t2, a3, 209
                  and          s9, t3, t2
                  sll          t3, ra, t2
                  xori         s4, a7, 772
                  or           s3, t1, a4
                  sll          gp, s5, s8
                  add          zero, zero, gp
                  and          tp, a2, s9
                  slt          t3, s5, s4
                  sra          a4, a1, s4
                  slt          tp, ra, t4
                  srl          s10, t5, t6
                  ori          a4, a5, 1263
                  srai         a6, ra, 9
                  nop
                  andi         s5, t3, 1159
                  slti         s10, gp, -926
                  sltiu        s5, s3, -1428
                  lui          s9, 568918
                  or           t3, t4, t4
                  sll          t5, s11, s0
                  andi         a1, sp, -2020
                  srai         s4, s11, 20
                  xor          s6, t3, t4
                  sltu         t5, a2, s10
                  sra          a4, t5, s2
                  auipc        s6, 997151
                  andi         a6, s8, 1184
                  nop
                  add          s5, t2, s0
                  andi         t3, tp, -381
                  sltiu        t4, a0, 1723
                  sra          s5, t0, a4
                  srai         a3, s3, 28
                  sll          sp, s11, t0
                  auipc        t3, 645312
                  sltiu        s7, t2, -1597
                  srl          a2, s11, a4
                  xori         s3, zero, 1408
                  or           a4, t2, t5
                  srai         a0, ra, 11
                  addi         t1, s1, -563
                  ori          t3, s7, 834
                  sra          s9, a1, s4
                  add          a2, t2, s6
                  sll          t0, s0, gp
                  addi         s5, t4, 1854
                  add          t1, t5, t1
                  slli         a3, s9, 1
                  nop
                  nop
                  auipc        s0, 125455
                  slli         s5, s9, 11
                  srai         s11, t1, 10
                  add          s0, s6, a4
                  nop
                  sltu         t3, s4, zero
                  sra          t3, sp, a6
                  srli         tp, a3, 4
                  sll          zero, s11, t0
                  xori         s2, s11, -250
                  srl          s9, s3, s6
                  auipc        s7, 133782
                  add          a2, a6, s1
                  sub          s9, s2, a1
                  lui          s3, 444364
                  andi         s9, sp, -437
                  sltiu        gp, zero, 121
                  slli         t1, s0, 21
                  sltu         a5, a3, s2
                  slt          a3, s10, s11
                  ori          s4, t5, 38
                  addi         a5, a5, 1833
                  lui          s6, 342468
                  lui          t4, 334928
                  auipc        s3, 513515
                  sra          ra, s11, t4
                  slli         t0, a4, 7
                  sltu         a5, a3, a0
                  srai         s0, a2, 10
                  sub          s6, s8, a0
                  sra          s2, t1, s4
                  sra          a6, s3, a0
                  xor          a0, s7, a3
                  sra          t5, t6, a5
                  xori         a3, s0, 1367
                  sra          tp, ra, gp
                  sltu         t3, s2, a2
                  srli         t0, ra, 19
                  or           a4, a5, t4
                  add          s2, s7, t0
                  ori          sp, t3, 449
                  lui          s3, 124428
                  srl          t6, s5, t5
                  sltu         a6, t0, s10
                  sltu         a3, s6, t0
                  ori          gp, a2, -952
                  slti         s0, s11, 595
                  addi         s3, t1, 828
                  ori          a5, a4, -322
                  slti         s11, t0, 372
                  auipc        a1, 1000784
                  sltiu        t5, a7, 875
                  sltiu        a6, t5, 544
                  and          t1, s4, s2
                  add          t0, s3, s0
                  slli         t4, a0, 6
                  sra          a3, s0, s10
                  sra          s5, s0, s11
                  sltu         a2, s9, t4
                  slli         s0, s4, 24
                  srli         gp, s4, 9
                  slt          a1, zero, tp
                  auipc        t2, 875077
                  and          gp, s4, a4
                  and          s9, s2, s10
                  addi         a3, t4, 1642
                  sub          s0, a3, s11
                  sra          s0, a5, ra
                  sll          a6, a7, s11
                  slt          s3, a6, s8
                  sltu         s6, s0, ra
                  sra          s3, a7, a7
                  slt          ra, s7, t6
                  and          t1, gp, a0
                  srai         s2, a4, 14
                  sll          s0, tp, a3
                  nop
                  sra          sp, t5, s8
                  and          s11, s0, t6
                  xor          t6, a7, a0
                  slt          t2, a6, s0
                  sra          s7, t3, s7
                  srli         s5, s8, 31
                  sub          t5, t3, a1
                  and          t3, s0, a5
                  or           ra, gp, s1
                  or           s10, s6, t4
                  andi         t0, a5, 1591
                  slt          a5, s7, a3
                  sltu         s6, a4, a7
                  slli         a1, s8, 22
                  srai         a2, sp, 22
                  srli         t3, t3, 3
                  slti         t2, s6, 5
                  and          a0, t5, a6
                  xori         t2, a5, -259
                  lui          t6, 445495
                  sll          t1, s7, t3
                  sltu         s0, s9, s0
                  addi         t4, t1, 991
                  ori          s2, s9, 1889
                  slt          a1, gp, s0
                  auipc        ra, 167138
                  sll          t1, a7, a7
                  and          s11, a2, t6
                  or           a1, s1, s11
                  srai         s6, a0, 2
                  sltu         tp, s11, a7
                  add          s10, t6, t0
                  srli         a1, s5, 31
                  or           t4, tp, t3
                  add          a3, a6, a5
                  or           s2, t4, s4
                  xori         a3, zero, -623
                  andi         t5, s7, 220
                  add          sp, sp, s4
                  srl          a4, s8, a7
                  sltu         s2, s8, s10
                  and          t5, ra, a7
                  sltiu        s6, a3, -1580
                  srai         t6, a1, 0
                  slt          s0, t6, t4
                  sltu         a5, t0, s0
                  add          t5, t1, s8
                  slli         a5, s2, 17
                  and          t2, t5, s11
                  and          gp, s8, s4
                  sltu         a6, t5, a1
                  srli         t5, gp, 21
                  xori         s7, s9, 980
                  srli         s5, s7, 12
                  slli         s10, a0, 26
                  slli         t3, a2, 23
                  xor          a2, a1, ra
                  sltu         ra, s3, a2
                  srai         a2, s9, 1
                  addi         ra, s11, -603
                  auipc        a0, 479069
                  slli         tp, t5, 14
                  sltiu        s4, s8, 369
                  sub          sp, a6, t4
                  slli         s10, s5, 13
                  and          a3, s4, zero
                  lui          s6, 808657
                  and          t2, sp, s10
                  xor          ra, a0, s9
                  slli         s2, gp, 22
                  slt          a6, t0, t4
                  xor          s10, s8, t0
                  xor          t0, s6, a1
                  ori          t3, s2, 1795
                  srl          s4, s7, gp
                  srai         a0, t3, 16
                  srai         s11, t0, 9
                  sra          gp, a0, s2
                  sra          ra, t4, s0
                  srai         a4, s1, 26
                  addi         s9, t2, -1657
                  srli         s11, s0, 14
                  slt          a6, t5, s4
                  sltiu        ra, a5, 1522
                  lui          s6, 341525
                  nop
                  nop
                  slli         t4, s5, 28
                  srai         t6, s3, 10
                  slli         t2, s3, 14
                  sltiu        a2, s5, 998
                  andi         s2, a7, 467
                  srl          s0, sp, s0
                  lui          s10, 219359
                  xori         s9, a2, -425
                  sub          s10, t6, s11
                  add          a1, s5, t3
                  xor          a0, t5, t3
                  andi         t3, t3, -888
                  srai         s11, t4, 23
                  or           a4, sp, s9
                  sra          t2, a1, t6
                  ori          s6, s8, -1586
                  andi         a5, a3, 1391
                  addi         ra, t4, -1159
                  slti         gp, s0, -1535
                  srl          t0, ra, a0
                  sltu         t5, t1, s7
                  slli         sp, a2, 18
                  sra          a2, a5, a4
                  slli         s2, s11, 2
                  xori         a1, t3, 1119
                  slti         t2, t5, -649
                  srai         a4, a6, 2
                  add          s3, s10, t0
                  sra          a6, a6, t5
                  sll          t2, a7, a6
                  ori          s6, t2, -547
                  sra          s9, a2, a6
                  srai         t2, t5, 28
                  xori         a0, s7, -1440
                  srli         a3, t1, 23
                  sltiu        zero, s1, 1164
                  sltiu        zero, t2, 816
                  slt          s3, a6, s8
                  sub          a2, ra, s5
                  or           sp, t6, s10
                  sll          s2, t4, a7
                  srl          ra, sp, gp
                  and          s11, t0, s3
                  sll          a5, s1, t3
                  or           ra, t5, t4
                  sra          t0, zero, t6
                  sll          ra, s8, tp
                  andi         a4, s0, -1611
                  sll          t6, t1, t1
                  slli         a3, t2, 5
                  or           s10, t2, a4
                  srli         t2, t2, 27
                  andi         s10, s5, -1205
                  sub          t5, t1, t5
                  or           a5, a4, s4
                  srai         s0, tp, 27
                  sub          gp, sp, s1
                  sltu         t2, a0, s1
                  sra          s6, s8, s4
                  ori          a4, a5, 480
                  xori         sp, a3, -107
                  nop
                  add          s7, s3, s1
                  xori         s6, a3, 65
                  sltiu        t6, a5, -1787
                  nop
                  sra          s9, s6, a2
                  sltiu        t3, a1, 624
                  auipc        s7, 627780
                  sll          s3, s4, s5
                  ori          a2, s9, -1903
                  srai         s2, t4, 3
                  sra          ra, s6, s9
                  slt          zero, tp, tp
                  andi         s4, s0, 552
                  add          a1, ra, t4
                  sltu         s3, s10, a2
                  ori          gp, zero, -1303
                  nop
                  lui          a3, 65794
                  addi         gp, s9, -439
                  slti         s9, t4, 687
                  slti         a3, s7, -149
                  slt          sp, a1, a3
                  srli         t0, s2, 17
                  add          a5, a4, tp
                  srai         ra, a6, 12
                  srai         t6, s7, 23
                  or           t2, s2, t6
                  lui          zero, 306613
                  auipc        t3, 58730
                  sra          a6, s6, sp
                  xori         t6, t0, -1840
                  sra          s0, t3, t6
                  slt          zero, s6, a2
                  slli         a1, t3, 12
                  addi         a1, s9, -438
                  slli         a0, ra, 5
                  andi         a4, s11, 86
                  addi         t6, a0, -563
                  srl          a4, ra, s0
                  slt          s5, t1, t0
                  srli         gp, a4, 25
                  slti         t3, a1, 294
                  sub          ra, s4, gp
                  srai         t3, s3, 4
                  and          a3, gp, gp
                  andi         t4, zero, -1567
                  andi         s4, a0, -1111
                  sll          t4, s5, a4
                  xor          s0, a7, s9
                  nop
                  slli         a5, t4, 0
                  sll          s3, t2, s8
                  xor          a3, t5, s4
                  sltu         t4, s5, ra
                  lui          s11, 416270
                  slli         s9, t2, 11
                  and          zero, t2, t0
                  addi         s7, ra, 581
                  sra          s5, t3, s6
                  add          a6, t2, a5
                  xor          t3, t4, s4
                  srli         a6, s2, 19
                  xor          a5, t6, s11
                  addi         a2, gp, -1544
                  slt          a2, t0, t6
                  and          s10, gp, a4
                  and          s11, zero, t2
                  lui          gp, 344220
                  addi         t1, a3, 1829
                  srl          s0, s6, a2
                  srli         s3, t1, 24
                  sra          s9, s6, tp
                  slt          s10, t2, a4
                  sll          t3, t4, a4
                  srai         t6, s7, 7
                  nop
                  and          ra, a0, a5
                  and          s5, sp, t6
                  slt          s4, t0, a1
                  slt          t2, t3, s8
                  sltu         t0, t2, s9
                  slti         t6, s3, -559
                  sltu         t2, s3, t5
                  slti         gp, t2, 1530
                  sltu         s7, a5, t3
                  add          a6, s1, s11
                  ori          s10, a5, -2042
                  srl          ra, a4, a7
                  xor          s4, a3, s0
                  srai         s10, t5, 23
                  or           gp, s9, t0
                  auipc        a4, 172256
                  sra          a4, ra, s11
                  lui          s5, 1016188
                  nop
                  lui          t3, 48507
                  slli         s9, t2, 31
                  srli         t6, s10, 7
                  add          t1, s5, a0
                  lui          t3, 751350
                  andi         t1, a1, 1816
                  xori         zero, s3, 1363
                  sra          a0, t2, sp
                  slti         a5, t4, -1510
                  lui          s3, 839198
                  sltu         a2, t5, tp
                  sltiu        gp, s1, 868
                  slt          t0, a1, a1
                  ori          s11, t0, -372
                  slt          s10, s9, s3
                  auipc        s11, 861816
                  nop
                  sltiu        zero, s10, 644
                  xori         s2, a2, -502
                  xor          gp, sp, gp
                  sll          s4, s8, t3
                  sra          s5, t4, s11
                  auipc        s6, 172366
                  xori         t4, s11, -1972
                  andi         s3, s2, 1907
                  ori          s6, s3, -756
                  srai         sp, s7, 11
                  sll          t5, s0, t6
                  srli         a6, a1, 7
                  or           s10, zero, t2
                  sltiu        a5, gp, -408
                  srai         a1, a4, 29
                  slli         a5, a3, 9
                  srli         a6, a4, 19
                  srai         t6, tp, 24
                  nop
                  sltu         s3, t1, t5
                  addi         a4, s11, 510
                  xori         s4, tp, -147
                  slli         t3, a7, 12
                  or           t1, s11, s5
                  sltiu        a3, s11, -107
                  sra          s0, t3, s10
                  srl          t3, a0, t2
                  or           gp, s9, s0
                  slt          zero, tp, s2
                  srai         t2, a3, 10
                  srli         sp, a3, 23
                  sltiu        s5, t5, 4
                  xori         s5, s4, -1452
                  li           s5, 0x0 #start riscv_int_numeric_corner_stream_10
                  li           s10, 0x0
                  li           a2, 0x80000000
                  li           t4, 0x80000000
                  li           tp, 0xd437ad94
                  li           a0, 0x0
                  li           s11, 0xffffffff
                  li           ra, 0x0
                  li           s7, 0x0
                  li           a5, 0xffffffff
                  addi         a2, s11, -720
                  add          a0, a0, s5
                  addi         a0, s5, -947
                  sub          s7, a0, a0
                  sub          a2, tp, t4
                  lui          t4, 118357
                  nop
                  nop
                  addi         a2, t4, -189
                  lui          a2, 99345
                  addi         tp, ra, -119
                  sub          tp, s7, s5
                  nop
                  sub          a5, s7, a5
                  add          s11, s7, s10
                  auipc        s7, 568695
                  auipc        s5, 888350
                  add          a0, t4, s11
                  auipc        t4, 927516
                  sub          tp, t4, t4 #end riscv_int_numeric_corner_stream_10
                  sub          s2, t6, s4
                  add          s9, a6, s10
                  and          a1, a1, t3
                  nop
                  ori          s11, tp, -184
                  xor          s11, s4, t5
                  auipc        a0, 412125
                  addi         s7, a1, -532
                  sub          t1, s5, s4
                  xor          t1, s10, t2
                  xori         s5, zero, -1851
                  slti         s10, a4, 1203
                  auipc        a1, 274726
                  slt          a6, a5, ra
                  or           a0, t3, s5
                  and          gp, s4, a1
                  addi         zero, s10, 565
                  and          sp, sp, a0
                  sll          ra, gp, s0
                  andi         gp, a4, 830
                  sltiu        a1, t0, -1643
                  srli         s11, s5, 26
                  ori          t0, t5, -570
                  srli         a5, a4, 17
                  slt          a6, gp, sp
                  add          t1, s5, t0
                  sra          t3, ra, a3
                  or           s9, t2, ra
                  sub          a4, t4, s9
                  sltu         s0, a2, s10
                  xori         s4, t2, 1124
                  sltiu        a2, t2, -878
                  auipc        s11, 283714
                  srli         sp, a0, 24
                  xori         t4, a4, -856
                  srai         s10, a5, 12
                  srl          a4, t2, a5
                  sll          a3, s8, a6
                  and          s11, ra, a0
                  lui          t2, 425212
                  nop
                  slti         a0, s9, -1118
                  sub          t1, t4, t2
                  or           t1, s9, a2
                  xori         t2, s2, -447
                  sltu         zero, t1, t3
                  xor          a0, s0, t4
                  xori         a2, t1, -675
                  add          t1, a6, s8
                  and          t4, t2, s11
                  srai         tp, s4, 12
                  sltiu        s11, a7, 1883
                  or           t4, s6, s3
                  sltu         a3, s3, s11
                  nop
                  xor          zero, s4, a4
                  addi         t4, a0, -1827
                  auipc        tp, 940376
                  sll          s5, t6, t5
                  or           t3, tp, s9
                  or           s2, s8, t2
                  sltu         t4, a6, s1
                  srai         tp, a2, 26
                  sltu         a5, gp, a2
                  sltiu        s4, s11, 1748
                  sub          s10, t1, ra
                  addi         s4, t3, 1494
                  lui          s6, 731949
                  or           tp, t3, t5
                  nop
                  andi         s11, s0, 468
                  xori         s10, t2, 1402
                  slti         a6, s4, 338
                  slt          sp, s3, t1
                  xori         a6, s5, -2048
                  xor          ra, ra, s6
                  sltu         a0, s11, s9
                  and          s6, a7, t4
                  srl          s10, zero, a3
                  srli         t1, s10, 6
                  srl          t2, t2, t1
                  andi         a0, a2, -791
                  lui          t6, 564672
                  xori         a0, s1, -492
                  lui          t2, 773410
                  sra          zero, ra, a4
                  xor          s5, a4, t6
                  srl          a2, ra, a2
                  lui          gp, 618278
                  sra          t4, t3, gp
                  nop
                  srl          s6, tp, a7
                  andi         a5, ra, 70
                  slli         s7, a5, 1
                  or           s11, a7, s4
                  ori          s6, s9, -478
                  lui          s5, 342255
                  xor          s10, s9, s0
                  slti         zero, t5, 1782
                  sub          a5, a4, zero
                  slti         s0, gp, 1147
                  slli         t2, t5, 30
                  nop
                  auipc        s3, 588240
                  slli         gp, s1, 4
                  addi         a5, zero, -1175
                  slli         s9, s1, 16
                  nop
                  slt          s6, a1, a4
                  xori         sp, s1, -628
                  srli         gp, a4, 12
                  srai         s0, t2, 22
                  sra          gp, a4, s7
                  and          t1, s6, a5
                  nop
                  sub          s0, t1, t2
                  and          s9, t5, a7
                  or           tp, a7, s4
                  sltu         t6, t6, a7
                  sltiu        s4, gp, 2003
                  slt          s3, s9, a7
                  sltu         t0, gp, t5
                  andi         t6, gp, -1872
                  and          tp, a2, a5
                  srli         s0, tp, 13
                  sra          t3, t3, tp
                  xor          a3, s7, s0
                  ori          t5, sp, -1035
                  auipc        t5, 542379
                  srli         t2, t5, 0
                  srl          s2, a1, a0
                  and          t0, gp, a3
                  nop
                  andi         a1, s11, -25
                  slt          s3, a7, gp
                  andi         a4, a4, 1694
                  sll          ra, a3, zero
                  sltu         a4, s8, zero
                  add          a0, s9, t4
                  sltu         a2, s5, s5
                  srai         s5, ra, 20
                  slli         s7, s7, 15
                  sltu         s2, s1, s10
                  slti         s11, t2, 1028
                  sltu         t6, a3, s0
                  addi         s11, a5, -1851
                  sltu         tp, s2, sp
                  xori         a6, a4, 975
                  addi         s11, t0, -1151
                  ori          sp, a7, 1890
                  srl          a5, s2, a6
                  or           a5, s1, t6
                  sll          t2, t0, t5
                  ori          tp, t2, 2032
                  slti         t4, a3, -1290
                  srli         t6, s9, 13
                  add          t4, s0, sp
                  sll          s9, a2, s8
                  add          a2, t5, a3
                  sub          a3, a0, a4
                  or           a0, a6, s10
                  nop
                  sll          zero, s5, a5
                  sub          t0, ra, s11
                  slli         s0, s8, 31
                  andi         s9, s6, -207
                  xor          a2, a3, s2
                  srli         gp, s3, 0
                  nop
                  auipc        a6, 241013
                  sltu         s0, s0, sp
                  slli         gp, t6, 7
                  ori          s5, ra, 439
                  andi         a3, t0, -455
                  xori         tp, t5, 1257
                  or           gp, t2, a7
                  srli         s5, t6, 29
                  slti         a3, s10, 515
                  sub          s6, a5, s1
                  sltu         a1, t3, t1
                  addi         a2, s2, 121
                  sll          s0, a1, t4
                  sltiu        a4, s1, 615
                  or           s0, a5, zero
                  slt          t4, s8, a6
                  xor          a4, t3, s1
                  nop
                  lui          gp, 36892
                  li           s10, 0xeaf325da #start riscv_int_numeric_corner_stream_6
                  li           a1, 0x0
                  li           tp, 0x3000661f
                  li           gp, 0x80000000
                  li           s6, 0xffffffff
                  li           t3, 0x0
                  li           a0, 0x80000000
                  li           s0, 0x0
                  li           a6, 0x36dfbd19
                  li           a2, 0xffffffff
                  add          s6, t3, a0
                  lui          t3, 584182
                  auipc        gp, 750705
                  addi         a1, gp, 5
                  add          s0, a0, a1
                  lui          gp, 673742
                  auipc        t3, 411658
                  lui          t3, 771358
                  sub          s0, s6, s10
                  auipc        s0, 113083
                  add          a6, s6, t3
                  nop
                  add          gp, a2, a0
                  addi         a2, tp, -1251
                  sub          a6, a6, tp #end riscv_int_numeric_corner_stream_6
                  slt          t6, s0, s0
                  sltu         s10, a0, a0
                  xori         s7, t3, 1309
                  auipc        sp, 20636
                  srli         a3, t1, 22
                  nop
                  xori         s9, s5, 1917
                  lui          s0, 582123
                  srli         a3, t0, 28
                  sltu         s5, a7, s8
                  xori         t2, a2, 1734
                  nop
                  and          s3, s9, s1
                  sltiu        s6, t0, -1653
                  sub          tp, s1, t1
                  andi         s3, t3, 1527
                  srli         a3, t6, 18
                  and          s0, s11, sp
                  srai         s4, t4, 23
                  ori          s9, s3, 40
                  xori         s5, ra, -1986
                  and          a2, t4, s0
                  sra          s4, a2, s2
                  xori         a0, gp, -79
                  auipc        s3, 472106
                  and          s4, t6, s1
                  and          s2, t4, s8
                  sub          s6, ra, a5
                  ori          s2, t2, -1290
                  andi         sp, t3, 429
                  auipc        s0, 974718
                  sra          t4, s10, t3
                  xori         a1, t4, -909
                  slt          a2, a6, a3
                  ori          s7, s11, 1816
                  sltiu        a2, t4, 289
                  lui          s3, 576406
                  srli         t3, t5, 18
                  ori          zero, ra, -718
                  slli         gp, a4, 4
                  slli         tp, s8, 23
                  sltu         zero, tp, t4
                  lui          t5, 440901
                  add          a3, s6, s1
                  li           a0, 0xfe4376fe #start riscv_int_numeric_corner_stream_7
                  li           s10, 0x80000000
                  li           s6, 0x0
                  li           t6, 0x5b699199
                  li           s11, 0x0
                  li           t3, 0xffffffff
                  li           gp, 0xffffffff
                  li           s3, 0x0
                  li           s2, 0x80000000
                  li           t5, 0xffffffff
                  lui          s2, 892553
                  nop
                  auipc        a0, 307630
                  lui          s3, 749711
                  addi         gp, s3, 510
                  nop
                  auipc        s3, 940956
                  lui          s2, 476600
                  nop
                  addi         t6, s10, 1889
                  nop
                  add          a0, s10, s6
                  sub          s11, a0, s11
                  auipc        gp, 627127
                  addi         s6, s2, -296
                  addi         s3, a0, -465
                  lui          s2, 965782
                  addi         t3, t3, 1390 #end riscv_int_numeric_corner_stream_7
                  slli         s2, a2, 2
                  sltu         s3, s3, a3
                  sll          a0, sp, s10
                  srli         a4, s6, 31
                  nop
                  add          gp, s3, s4
                  sll          s3, t4, t4
                  sltu         s3, a0, a7
                  andi         s2, a0, -436
                  addi         s3, a1, -1738
                  auipc        t6, 310429
                  add          t0, a1, a6
                  xor          s4, s11, s2
                  or           s2, t3, s8
                  slti         ra, s8, -294
                  sub          t0, a0, s11
                  sltu         a5, gp, s1
                  addi         a0, s1, 1893
                  sll          t6, s11, t1
                  add          zero, a1, s7
                  ori          t6, t6, 573
                  slt          zero, zero, t6
                  sub          s3, a1, s2
                  and          s3, t4, tp
                  slti         a2, s2, -1307
                  xor          sp, a7, s6
                  or           t5, t6, s6
                  or           t5, t3, s7
                  or           s4, a4, a7
                  lui          gp, 475536
                  add          s3, s7, a5
                  srai         t0, t2, 1
                  nop
                  sra          s7, a7, a6
                  lui          a6, 493791
                  and          a6, s7, t3
                  xori         zero, a1, 1071
                  srli         s2, s7, 23
                  srli         t0, t3, 9
                  slti         s6, zero, -959
                  add          gp, a2, t2
                  nop
                  srl          a1, gp, s4
                  srl          t0, s9, a4
                  sra          t1, s1, tp
                  andi         a5, s6, -162
                  sltiu        a5, a2, 929
                  addi         s10, ra, 1667
                  srl          s11, ra, s7
                  auipc        s9, 236997
                  auipc        s9, 153961
                  andi         a1, s3, 1799
                  sltiu        tp, t4, -1032
                  add          t0, t0, s0
                  addi         s2, sp, 333
                  sltu         t1, t1, s2
                  sltiu        t0, a2, -1386
                  sltiu        t1, a1, -519
                  nop
                  xori         a5, t2, 1798
                  xor          s9, a0, s11
                  slli         a6, gp, 4
                  addi         s6, t0, -1109
                  addi         gp, s6, -969
                  srl          sp, s4, t1
                  sll          a4, t6, a4
                  ori          a6, s2, 1985
                  lui          t5, 453268
                  ori          a2, t1, 1062
                  slti         s5, s8, -1534
                  srai         t5, t3, 9
                  slli         s6, t3, 5
                  xori         a5, t4, 765
                  andi         gp, s7, 1368
                  srli         a3, ra, 20
                  slli         t5, t0, 25
                  sltu         s5, s6, s0
                  sltu         s9, s1, s10
                  andi         s2, s4, 326
                  add          t4, sp, s7
                  slt          s4, sp, s4
                  slti         ra, t3, -624
                  andi         s7, a5, -540
                  slli         s0, t3, 25
                  nop
                  andi         s5, gp, 1966
                  srli         s10, s0, 10
                  srli         t1, s5, 29
                  sra          t2, s3, a0
                  slti         zero, a0, -1320
                  sltiu        t1, sp, 262
                  sub          t0, zero, gp
                  srli         t3, a1, 18
                  andi         zero, t3, 407
                  sltiu        a5, t3, 421
                  sll          s6, a0, t3
                  sra          s9, tp, a2
                  srl          a0, t2, s8
                  xori         s2, s8, 1600
                  or           s2, a7, t1
                  sltu         s2, t0, t6
                  or           s10, a2, s9
                  slti         ra, a4, 538
                  xori         t6, sp, -672
                  xor          t1, a4, t2
                  srl          s11, a6, s7
                  sltu         sp, tp, t0
                  lui          zero, 169997
                  srli         a5, a3, 13
                  sra          zero, t0, s9
                  or           a4, a5, s8
                  andi         t6, a7, 601
                  sltiu        s7, s5, 1554
                  srl          t0, a0, a0
                  ori          t0, s3, 217
                  and          s9, t6, s0
                  sll          a4, t4, a4
                  or           s2, s1, t5
                  auipc        s4, 312894
                  srai         a0, ra, 25
                  sltu         gp, s10, t3
                  ori          t5, t2, -984
                  addi         zero, a4, 1672
                  lui          a6, 220640
                  sll          gp, s10, t2
                  xor          zero, t5, t6
                  nop
                  nop
                  and          t5, t2, s8
                  lui          a6, 148617
                  slli         ra, a4, 28
                  slt          a4, s1, s0
                  srli         t3, ra, 0
                  srl          s4, s10, t4
                  ori          t5, a6, 684
                  or           s10, a7, s8
                  auipc        t6, 199275
                  slti         a3, t0, -1729
                  sltiu        t2, a3, 441
                  lui          t0, 815537
                  slli         s4, gp, 16
                  srl          s0, t5, s8
                  slt          s7, a2, s5
                  sltu         t2, a2, a0
                  ori          t1, gp, -1767
                  or           a5, t6, t6
                  nop
                  slli         zero, a5, 27
                  sub          a3, ra, sp
                  lui          s6, 588548
                  slti         a3, s4, 1006
                  sra          t6, s9, sp
                  sra          sp, sp, sp
                  add          t6, t1, a4
                  slli         t6, s0, 5
                  slti         s6, a4, 740
                  sll          tp, a3, t0
                  lui          t4, 109483
                  andi         t5, s5, -385
                  slt          t6, s7, a1
                  slti         a4, s11, 889
                  xori         zero, s2, 1993
                  sra          s5, t6, a3
                  slt          s7, t6, a3
                  xor          s0, t3, s9
                  xor          t2, s2, s11
                  sll          s4, s5, tp
                  and          sp, sp, a6
                  addi         s5, s1, -120
                  sub          s10, zero, s6
                  srli         tp, a7, 6
                  sltiu        s6, t2, 1589
                  sub          a1, a6, a1
                  slti         a5, s6, 52
                  nop
                  or           a4, a0, zero
                  and          s6, a2, a0
                  srl          s10, s6, a1
                  slt          a0, t4, a3
                  or           a4, s5, s11
                  addi         zero, s0, 1661
                  sltiu        s10, s4, -1597
                  sll          a1, a1, s3
                  slli         s5, s11, 19
                  addi         s9, t5, -106
                  sll          s10, ra, s10
                  srai         t4, s1, 25
                  slti         sp, a2, 517
                  srli         a5, a7, 1
                  slli         t2, s4, 28
                  or           a0, a7, zero
                  sltiu        s10, s11, -307
                  slt          a3, gp, gp
                  lui          t1, 325833
                  srli         t0, s4, 21
                  auipc        a2, 876040
                  add          a0, s9, a7
                  or           s7, a2, t2
                  slli         a0, s4, 13
                  andi         gp, t1, -1314
                  slli         t1, a2, 4
                  or           s4, s7, a6
                  nop
                  slt          t5, s2, a6
                  sltu         ra, s6, t5
                  xor          sp, zero, gp
                  srai         t4, a5, 23
                  xor          a5, s10, a3
                  auipc        s6, 91281
                  andi         a4, a3, 1056
                  sltiu        t0, s10, -256
                  or           a2, t4, a5
                  srl          a0, a7, tp
                  nop
                  xor          a2, a4, a1
                  sll          a0, s7, a6
                  srai         t3, gp, 21
                  nop
                  sltu         s7, s11, t0
                  sll          a3, ra, t4
                  slti         t3, a4, -1769
                  srli         t0, a4, 4
                  sra          t0, s4, s10
                  sra          t0, s0, sp
                  xor          t3, t3, t5
                  add          s3, t2, s9
                  srl          tp, ra, s1
                  xori         s0, a5, -163
                  add          t4, s1, s9
                  slli         a3, a4, 30
                  slli         sp, ra, 12
                  addi         ra, s2, 1941
                  and          t5, t0, s5
                  sltiu        a3, tp, 1688
                  sra          s6, s5, tp
                  xor          a2, t0, a4
                  slti         t2, zero, 168
                  ori          ra, t1, 202
                  xori         a2, s10, -1084
                  srai         a5, t0, 11
                  nop
                  srl          ra, t1, a7
                  slt          zero, a6, t3
                  srai         s5, s2, 31
                  srai         t2, t1, 8
                  sll          s6, s10, t5
                  xor          a1, t6, tp
                  lui          t6, 165094
                  slt          t0, s1, t4
                  andi         a0, t0, 646
                  addi         t3, s9, 329
                  slli         tp, t4, 7
                  srl          s10, t2, s0
                  lui          s3, 303074
                  slt          s5, a3, zero
                  addi         t5, s4, -454
                  xori         s2, a6, 1856
                  andi         a2, tp, 693
                  nop
                  xor          s11, s3, t3
                  or           s6, sp, t5
                  andi         t0, t6, -1832
                  add          t6, s0, a4
                  srli         a3, t3, 0
                  slt          zero, s2, s1
                  slli         s2, s10, 26
                  lui          s4, 580247
                  auipc        s9, 106670
                  slti         t4, s8, -558
                  nop
                  srai         t2, gp, 20
                  or           t1, s8, a6
                  slli         sp, a3, 8
                  srli         t2, t5, 8
                  add          t1, a3, s8
                  srl          sp, tp, s7
                  ori          t4, a4, 994
                  sltiu        s2, s10, 716
                  slti         s0, s3, -6
                  lui          a3, 808252
                  ori          s11, t2, 3
                  slti         a1, s6, -140
                  slti         a5, s5, 1099
                  srai         a0, t6, 14
                  xor          s6, a6, t5
                  or           gp, t1, s9
                  lui          a5, 873312
                  sub          s9, s0, t5
                  sltu         a3, s9, s10
                  addi         s10, a1, -1940
                  sra          t6, a0, t1
                  lui          a4, 188540
                  add          s11, t4, t5
                  or           gp, a6, s4
                  nop
                  xor          s4, t6, s8
                  xor          gp, a4, t6
                  xor          gp, t6, t2
                  auipc        s4, 46315
                  xor          t4, a4, s4
                  add          s0, gp, a1
                  sll          s5, gp, gp
                  auipc        a2, 522690
                  slti         t3, a3, -1543
                  sltu         tp, s0, t6
                  srai         s2, a7, 0
                  srai         s9, a3, 5
                  andi         s3, a0, -1128
                  xor          s6, a7, gp
                  srai         t5, a1, 12
                  xor          s3, s2, tp
                  addi         t4, s3, -321
                  srli         t2, t1, 16
                  andi         s4, s9, -996
                  srli         t4, a2, 5
                  sltiu        a4, s5, 827
                  nop
                  srli         t2, s10, 13
                  addi         t1, t2, 35
                  auipc        a0, 492833
                  slli         t5, a3, 31
                  sra          s2, a2, t0
                  slt          s6, gp, s11
                  auipc        t5, 888744
                  slli         a0, s4, 1
                  sltiu        a6, s2, -1892
                  slli         zero, s10, 26
                  slt          s3, s9, s8
                  sub          s2, a3, s7
                  auipc        gp, 965158
                  sub          s11, t3, s1
                  addi         a1, s2, 505
                  ori          a0, a0, 1142
                  slli         s10, t1, 8
                  ori          ra, a5, -1033
                  sll          t5, s5, t6
                  xor          a2, s2, t1
                  add          a2, sp, s1
                  srli         t4, a2, 21
                  or           sp, s3, tp
                  slti         a1, a4, 1115
                  srai         t2, s1, 30
                  sltiu        t5, a4, -1977
                  srl          s4, s2, s6
                  auipc        s10, 632968
                  add          ra, a5, s4
                  slti         gp, s9, -1136
                  sub          a1, s2, s0
                  slti         s2, zero, 309
                  sub          s0, s8, a7
                  addi         t3, sp, 982
                  srli         s2, a4, 19
                  add          t3, tp, a4
                  andi         s2, s0, -1292
                  sltu         a4, a2, s6
                  srli         t6, a7, 5
                  sll          s3, sp, zero
                  slti         s5, zero, -2048
                  sub          s7, s6, s9
                  sub          gp, s2, a7
                  addi         t0, a4, -1590
                  slli         t5, s0, 30
                  ori          t5, s2, 254
                  xori         t5, a1, -1442
                  sll          zero, s6, s6
                  srli         a0, s5, 1
                  sra          t5, a0, s10
                  slt          t5, s8, sp
                  sra          a6, t1, t2
                  auipc        s11, 206299
                  andi         s2, s2, 1199
                  addi         s7, s4, -1339
                  xor          t3, gp, a7
                  sub          t5, t5, a0
                  srai         s3, s1, 0
                  auipc        t1, 572449
                  xor          a4, s9, a6
                  sltiu        s11, tp, -1118
                  and          s10, a4, a0
                  andi         s9, s8, 919
                  slli         s10, s5, 19
                  add          a3, s10, s6
                  xori         sp, t4, -1870
                  srl          s4, s3, a3
                  sltiu        gp, a3, -524
                  nop
                  sll          t6, t3, s4
                  or           ra, a3, t4
                  xor          a4, a6, t6
                  slt          s10, sp, t0
                  sltu         a0, s10, t5
                  sltu         s4, t1, s10
                  srai         s4, a3, 17
                  sll          s3, s1, s10
                  nop
                  xori         sp, t0, 341
                  or           ra, ra, t0
                  sub          zero, a6, s2
                  and          a0, t0, t6
                  lui          tp, 99643
                  sub          t3, t4, s11
                  sltiu        s6, gp, -961
                  sll          s3, s9, a5
                  slti         t2, zero, -1640
                  srli         s7, s6, 2
                  srli         a5, tp, 7
                  lui          a2, 631018
                  or           t1, t1, a7
                  ori          s3, tp, -1665
                  slt          s11, a1, s8
                  sub          zero, s3, tp
                  slt          s5, t2, s5
                  sra          t6, ra, s7
                  lui          a4, 863011
                  lui          a4, 1018259
                  addi         s11, t5, -1809
                  xor          t6, s9, t5
                  sra          t5, s5, s6
                  or           gp, a3, a2
                  xori         t4, s3, -592
                  sll          s7, a0, a0
                  andi         a0, s8, -995
                  slli         a5, a5, 1
                  srl          ra, ra, sp
                  andi         t4, t1, -1282
                  srli         s3, s10, 25
                  nop
                  addi         s5, a5, 742
                  sltu         zero, a0, t2
                  andi         t4, a5, -1599
                  sra          s7, t2, s0
                  slti         s9, s7, 13
                  add          zero, s6, a6
                  and          s5, a5, sp
                  slti         t1, t3, 771
                  sltiu        t1, s0, -1580
                  slti         s3, a3, -1307
                  srl          t6, s11, sp
                  lui          t0, 256830
                  sltiu        a1, a5, -1869
                  add          t3, s4, s4
                  slt          s4, s2, s10
                  slt          a0, a6, a2
                  sltu         t3, sp, a4
                  xor          s11, gp, a0
                  ori          a4, ra, -1188
                  ori          t4, t4, 759
                  xori         a1, s10, -694
                  xori         s10, t5, -1067
                  slli         s3, t6, 27
                  auipc        t0, 588762
                  slti         s4, s2, 329
                  xori         sp, t5, -1812
                  srli         a4, a4, 15
                  sltiu        a4, s11, -558
                  srl          a1, s10, s3
                  andi         t4, s7, -1366
                  sltu         a4, s2, a2
                  lui          s3, 654681
                  srli         a4, s4, 10
                  sra          a5, a5, s8
                  or           a5, s5, zero
                  srli         sp, t6, 9
                  addi         s0, a6, -1191
                  addi         s3, s9, -47
                  or           ra, s8, t0
                  slt          a5, sp, t3
                  srl          s7, a0, s1
                  andi         tp, s7, 1542
                  or           a6, tp, t5
                  srli         a3, a3, 26
                  sub          t3, s2, gp
                  slli         t1, a3, 20
                  and          s0, s5, t1
                  slt          ra, s7, gp
                  or           s6, s9, s4
                  srl          s11, a5, a2
                  sltu         s11, s4, s11
                  xor          a0, s9, t4
                  srl          gp, s5, s3
                  srli         gp, a5, 13
                  slt          t4, a4, gp
                  sltiu        tp, t4, 1377
                  sub          s4, a4, t3
                  srl          t3, s9, s3
                  sll          s7, a2, s2
                  slt          s4, s10, s8
                  sltiu        t5, a0, 193
                  andi         a4, ra, -1928
                  sltu         s0, s3, s0
                  slli         a2, a4, 30
                  srl          zero, s9, a1
                  srl          a2, s7, a0
                  nop
                  addi         s0, s4, -1661
                  sltiu        a2, s0, -945
                  srli         sp, s9, 11
                  slt          t2, sp, s8
                  nop
                  lui          a0, 459439
                  and          t6, a3, s0
                  addi         s10, t1, -858
                  addi         a3, a3, 1550
                  auipc        s4, 864460
                  andi         s0, ra, 1556
                  or           t3, s11, t1
                  sub          t4, a0, a0
                  or           gp, t2, s11
                  addi         a2, s2, 1115
                  sub          s2, s9, s10
                  sltu         a5, s6, t4
                  srl          s11, a5, t0
                  xori         zero, a2, 710
                  and          s5, a5, a6
                  srl          s10, s0, ra
                  nop
                  sub          s10, s10, s11
                  slli         s10, t6, 9
                  nop
                  srai         s4, a1, 17
                  slli         t5, zero, 23
                  slti         t5, a3, -876
                  auipc        ra, 363880
                  xor          s11, a4, a1
                  srai         s10, s7, 26
                  sub          a0, s7, a2
                  ori          s9, tp, -747
                  slli         t3, tp, 29
                  add          a2, a3, gp
                  xori         s2, s9, 2010
                  xor          s4, a3, t3
                  sra          t0, s4, a0
                  addi         tp, s4, 1606
                  and          s9, ra, sp
                  slti         sp, t4, -36
                  lui          zero, 365806
                  slti         t0, tp, 1369
                  sll          s7, s1, t6
                  sra          ra, s5, s9
                  srl          t0, s4, a3
                  slti         t2, t0, -169
                  slt          s11, s0, s0
                  sltu         s0, t4, s7
                  sltu         t3, a5, a6
                  and          zero, a6, s4
                  ori          zero, a3, 1795
                  auipc        a4, 515564
                  sltu         ra, gp, t2
                  slti         t6, s2, -1591
                  andi         sp, t2, -178
                  srli         s3, a7, 11
                  lui          t0, 851437
                  sltu         t0, t4, a0
                  auipc        s10, 812333
                  add          s4, tp, s1
                  and          a0, s2, s2
                  sltu         sp, s7, s4
                  andi         zero, s1, -192
                  sll          ra, a1, gp
                  ori          s5, a6, -1650
                  or           a4, t2, s11
                  sub          s6, s1, t0
                  srli         tp, a7, 28
                  or           s4, t6, s6
                  sltu         zero, t4, t2
                  srai         a1, s0, 27
                  andi         a4, s1, -1917
                  auipc        s7, 824399
                  or           tp, s9, s2
                  addi         a2, a1, 1650
                  srli         s5, gp, 21
                  srai         t0, a0, 26
                  xor          t4, a0, gp
                  sltu         t1, a3, a2
                  addi         tp, s0, 1133
                  lui          gp, 920929
                  xor          t5, s4, gp
                  lui          tp, 394306
                  slt          a6, s6, t3
                  andi         s9, s9, -1706
                  sra          t2, a3, s9
                  sltiu        t0, a2, 1066
                  add          a3, a4, s2
                  xor          s2, t4, gp
                  and          s5, t4, gp
                  sub          s2, s0, s0
                  add          a2, t6, gp
                  add          s10, s0, t0
                  slt          gp, s3, gp
                  srli         t2, s0, 28
                  ori          s11, s4, 1105
                  sll          s2, s10, sp
                  or           s2, s8, a2
                  andi         a2, tp, 1511
                  addi         t4, s3, 308
                  sra          s5, s2, t5
                  lui          s3, 206962
                  and          s6, t1, s11
                  sub          s11, s6, t3
                  sub          t6, s9, t5
                  slli         s9, gp, 5
                  addi         a3, s5, 1118
                  srai         t3, a0, 22
                  andi         ra, a7, -1446
                  sra          a2, s0, a7
                  srai         a3, a2, 13
                  sub          t2, s7, t1
                  sltu         t6, s4, t2
                  auipc        t1, 945483
                  xori         s4, t3, 764
                  addi         t3, s2, 1080
                  sltiu        a1, t1, 1792
                  andi         t2, sp, -841
                  sub          gp, s7, sp
                  or           s0, a0, a4
                  slt          t0, gp, a1
                  srli         s11, a3, 17
                  slti         s2, gp, 687
                  nop
                  sll          zero, t5, s9
                  sltiu        s10, s5, 635
                  or           a2, s7, zero
                  add          ra, s11, s8
                  slti         sp, s3, -381
                  add          a2, s2, s4
                  srli         s6, t4, 8
                  sra          a6, a4, s4
                  and          s3, s10, tp
                  addi         s11, s8, -939
                  or           t5, tp, a7
                  or           a5, t3, a7
                  add          s2, a5, s11
                  add          s11, a6, s2
                  sub          s2, zero, a5
                  li           t0, 0x5b578dcf #start riscv_int_numeric_corner_stream_8
                  li           s3, 0x80000000
                  li           s0, 0xf0915be3
                  li           s2, 0x9d021c3
                  li           s9, 0xf9b2e8e3
                  li           s11, 0x80000000
                  li           s10, 0x80000000
                  li           a5, 0xffffffff
                  li           gp, 0xffffffff
                  li           s7, 0x0
                  lui          t0, 49957
                  sub          s9, s9, s2
                  lui          a5, 9144
                  lui          s2, 1031015
                  addi         s0, s2, 951
                  add          s10, gp, s3
                  sub          s2, s2, s7
                  add          s11, t0, s10
                  add          s3, s7, s9
                  sub          s11, a5, s0
                  addi         s0, s10, -1290
                  auipc        s0, 555194
                  sub          s10, s9, gp
                  addi         s0, s10, -1014
                  nop
                  addi         s2, a5, -2043
                  add          s10, s11, gp
                  sub          s2, s7, gp
                  auipc        s7, 417680
                  auipc        s0, 941752
                  lui          s9, 9486
                  sub          s11, s10, s3
                  auipc        s9, 773406
                  sub          s7, s3, s7 #end riscv_int_numeric_corner_stream_8
                  add          t5, tp, zero
                  xor          s11, t2, a2
                  sra          sp, a4, s11
                  slli         a1, t0, 19
                  sll          s5, t0, t0
                  xori         t5, s2, 1485
                  lui          t6, 634741
                  srli         a6, a2, 30
                  ori          zero, s4, -733
                  ori          s6, a4, 1041
                  nop
                  addi         ra, a1, -5
                  srl          s5, s7, s5
                  sub          s4, sp, t4
                  slti         t5, t5, -1126
                  sub          t2, a2, t6
                  lui          s10, 748333
                  ori          s2, s11, -180
                  sra          a4, gp, a7
                  sltu         t2, s10, zero
                  lui          s7, 992186
                  sltiu        t1, t3, 1475
                  srl          a3, t2, s1
                  lui          t0, 739939
                  sltiu        s0, a3, 963
                  andi         a0, zero, -222
                  srl          s5, a4, tp
                  sll          t4, sp, s0
                  srli         a3, t3, 31
                  sra          s7, t5, t6
                  and          a1, a6, a3
                  sltiu        a3, a0, 1124
                  sltiu        ra, a1, -2002
                  nop
                  auipc        s4, 698007
                  slt          s6, t6, s8
                  srl          a5, a0, s1
                  srli         gp, t0, 3
                  slt          a0, ra, ra
                  sub          sp, t2, s6
                  nop
                  add          a2, t4, sp
                  ori          ra, s7, 1567
                  xori         a5, t3, -133
                  sltiu        tp, t2, 1155
                  and          a1, s7, ra
                  sra          a3, zero, s4
                  sra          gp, ra, t2
                  sub          a6, t4, t6
                  slt          s11, s7, a7
                  addi         s3, a0, 767
                  srai         s10, t6, 18
                  lui          t6, 283910
                  srai         s9, sp, 10
                  lui          s6, 427845
                  slli         s9, t3, 18
                  srai         t6, s11, 30
                  xor          s2, s8, a3
                  auipc        tp, 323070
                  add          s9, s10, a6
                  sll          t2, s4, s5
                  addi         t1, a3, -882
                  ori          a2, a5, 1144
                  auipc        gp, 289731
                  add          s6, s10, s6
                  slt          t6, ra, s2
                  sltu         t2, a5, s2
                  lui          s9, 638809
                  sll          t0, t1, t2
                  slli         t0, a5, 8
                  srl          s0, t3, s5
                  addi         gp, s11, 1618
                  sltu         t4, s11, a0
                  auipc        ra, 580066
                  and          s3, s5, a6
                  addi         a1, a4, -1132
                  srl          zero, s5, a0
                  slt          t0, a7, s5
                  nop
                  srli         tp, s1, 0
                  ori          t1, a2, 1805
                  ori          a3, a2, -303
                  or           a2, t1, tp
                  lui          s11, 416455
                  srli         s9, s6, 30
                  slti         tp, a2, 332
                  xori         s4, s1, -649
                  sltiu        t5, s5, 515
                  slt          a1, t5, a6
                  xor          a0, a0, s3
                  addi         s11, s10, 752
                  xori         s2, a7, -330
                  slti         t0, a2, -828
                  sltiu        s5, t1, 6
                  srai         t2, s10, 3
                  sltiu        a2, s9, 842
                  sra          sp, sp, a0
                  slli         t3, sp, 3
                  andi         t0, s9, -1104
                  srli         s4, s1, 6
                  slt          s0, a5, s8
                  sltiu        zero, a6, -949
                  auipc        s6, 813826
                  srli         s2, s5, 31
                  xori         a3, t0, -660
                  addi         t4, a4, -1044
                  srai         t6, a3, 31
                  slt          t0, s2, t1
                  and          a2, s3, a4
                  xor          gp, s0, t5
                  lui          s11, 284834
                  nop
                  auipc        t5, 440141
                  sra          sp, s9, a3
                  addi         a0, t0, -1930
                  slli         s9, t2, 6
                  lui          s3, 109275
                  sub          a2, t0, s2
                  slli         t2, t6, 17
                  and          ra, s4, s11
                  srli         ra, a6, 6
                  sltu         s4, t4, a6
                  addi         zero, s7, 16
                  sltu         s2, t4, a1
                  srai         gp, s9, 19
                  sra          s2, s11, t0
                  xori         s0, gp, -769
                  srli         a4, s1, 3
                  sub          t4, t4, s5
                  sub          s0, s9, a0
                  srl          zero, t0, s1
                  or           t3, ra, s3
                  and          s0, a3, s4
                  or           gp, ra, s1
                  or           sp, s8, s3
                  srai         s6, s10, 30
                  sltiu        gp, s10, 1952
                  slt          t6, s6, t3
                  srai         a2, s1, 15
                  slti         t0, t1, 696
                  srli         a1, a3, 16
                  srl          s2, t3, t0
                  andi         ra, a3, 876
                  sltiu        gp, a6, -1861
                  nop
                  ori          t3, t6, -662
                  sltu         s4, s5, s10
                  srai         t4, t0, 24
                  srai         t2, a3, 10
                  nop
                  slli         s2, t6, 5
                  srl          zero, a7, s4
                  ori          a6, a2, 206
                  sll          s11, t6, t1
                  slt          s7, a1, sp
                  and          t5, a5, s1
                  sra          t4, a4, a2
                  addi         s7, s9, 1039
                  sltiu        tp, s11, -1955
                  nop
                  sub          s7, t5, s1
                  sub          t3, a5, a3
                  sub          s0, s4, a0
                  and          s10, s2, a7
                  sra          t2, ra, a7
                  sra          s7, s5, a7
                  sll          s3, a5, t1
                  and          s9, a2, s6
                  ori          s2, a6, -687
                  lui          a5, 744806
                  or           t3, s2, t0
                  lui          sp, 645323
                  and          s6, a0, s7
                  sll          s6, t2, zero
                  auipc        ra, 352551
                  srli         ra, a3, 25
                  or           s3, s6, ra
                  sub          t0, s9, t3
                  add          t2, s3, tp
                  ori          s10, s8, 108
                  addi         s5, s9, 403
                  ori          t6, a5, -108
                  ori          ra, t6, -1229
                  and          a3, tp, s3
                  add          a4, s9, s5
                  xori         s6, t0, -1012
                  sltu         a2, a2, a7
                  sra          a3, t0, a7
                  and          sp, s1, s10
                  addi         s0, s7, -1309
                  sub          t1, s10, a0
                  xor          s11, a2, t5
                  add          t5, gp, t5
                  slt          a5, t6, s5
                  sll          s2, s10, s9
                  or           a1, s3, s0
                  add          t1, tp, s2
                  sub          gp, s9, s5
                  add          t2, s5, s10
                  sltu         s9, t2, a7
                  srai         a5, s6, 18
                  slli         t2, t2, 7
                  addi         s11, s4, -1443
                  sltu         s4, a5, a4
                  sltu         s0, t1, t4
                  sub          t2, a7, sp
                  addi         s7, a4, -996
                  sra          t0, s7, s9
                  andi         s10, t6, -766
                  sub          gp, a7, a6
                  srl          a4, s1, a7
                  nop
                  lui          a5, 934338
                  auipc        t4, 168111
                  ori          s0, zero, -569
                  sll          t6, t2, a4
                  sub          s4, s0, a2
                  slt          a2, s8, zero
                  slti         t0, a3, 1199
                  sltiu        s4, s3, 1629
                  sra          a1, zero, a3
                  xor          s9, s11, s1
                  and          s10, sp, t6
                  addi         s4, a0, 1120
                  add          s0, a4, a3
                  srai         s11, gp, 12
                  ori          a4, s5, -10
                  srli         a1, s1, 14
                  srl          t0, s10, sp
                  add          s9, a6, tp
                  sra          s4, s3, t3
                  xor          sp, a0, t4
                  sll          a0, s2, a4
                  slt          a1, t4, a7
                  andi         a6, tp, -458
                  srai         s2, a3, 3
                  xor          t6, s1, s1
                  slt          a1, a1, gp
                  andi         t3, a2, 817
                  nop
                  srai         tp, zero, 19
                  and          a3, s3, t3
                  xori         s11, t1, -816
                  nop
                  sra          tp, s4, s7
                  xori         ra, t1, -1771
                  andi         t6, sp, 1881
                  or           s0, s9, tp
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           a3, 0x0
                  li           s10, 0x80000000
                  li           t4, 0x80000000
                  li           s7, 0x45dc025d
                  li           s6, 0x10039920
                  li           gp, 0x0
                  li           s11, 0xffffffff
                  li           s0, 0x80000000
                  li           s3, 0xffffffff
                  nop
                  nop
                  addi         s0, s0, -110
                  nop
                  auipc        s7, 319689
                  add          s6, s10, s6
                  addi         a3, s6, -1936
                  nop
                  lui          gp, 940339
                  add          s7, s6, s3
                  nop
                  auipc        t4, 350233
                  sub          a3, a3, s10
                  sub          a3, s6, a3
                  auipc        t4, 874641
                  lui          s10, 117732
                  sub          s9, gp, t4
                  add          gp, t4, s0
                  addi         t4, s7, 851
                  addi         s7, s3, 1999
                  add          s9, s0, s9
                  auipc        s3, 196630
                  nop #end riscv_int_numeric_corner_stream_14
                  srl          t5, a4, a4
                  srai         a0, t2, 18
                  sll          t4, s7, a1
                  srai         s6, s8, 19
                  slti         s11, t1, 593
                  nop
                  addi         t4, s3, 403
                  srai         gp, s11, 4
                  nop
                  slt          gp, a1, tp
                  or           t1, tp, s9
                  slli         s0, a1, 4
                  slli         a4, s6, 3
                  sltiu        t1, t6, -683
                  srli         t2, a4, 13
                  xori         t5, a3, 855
                  xori         t4, tp, 1917
                  slli         t4, s4, 2
                  xor          s11, a4, s11
                  sub          a4, s1, t5
                  add          t2, s1, gp
                  andi         a5, t4, 1963
                  nop
                  slli         tp, s9, 0
                  lui          s11, 278827
                  ori          s10, a7, 426
                  auipc        tp, 132702
                  addi         t4, a3, 1618
                  srai         t1, sp, 17
                  xori         s4, t1, 1000
                  ori          t6, a0, -1065
                  and          a3, zero, tp
                  addi         s3, s2, 565
                  sra          t3, s10, s8
                  sltu         a0, t4, t3
                  auipc        s7, 482444
                  ori          a4, t2, 874
                  nop
                  and          sp, zero, s10
                  slli         t3, s11, 27
                  xori         s9, t6, -607
                  auipc        ra, 312228
                  andi         s7, s7, -657
                  xor          a6, s1, s8
                  add          a1, s1, s9
                  sltu         zero, s4, a4
                  xori         s9, ra, -300
                  xori         ra, s0, -776
                  sub          s6, s9, a5
                  sltu         gp, a6, s9
                  xor          s0, a0, s2
                  sltiu        s10, s10, -631
                  ori          gp, s11, 885
                  slt          sp, t2, s4
                  slti         a2, a7, -1726
                  xori         a0, t3, -277
                  or           ra, s9, t5
                  srli         tp, a4, 21
                  add          a5, s7, a3
                  addi         t3, t0, 1021
                  or           s11, tp, zero
                  and          t5, s8, a0
                  slt          s6, s5, s4
                  and          gp, s3, zero
                  sltiu        t6, t2, -1709
                  slti         s2, s6, -1617
                  or           t0, ra, s10
                  sll          t2, t1, t4
                  addi         s9, t4, -462
                  nop
                  slti         gp, a3, 1452
                  andi         a6, s2, 1769
                  srl          t0, t6, s4
                  xori         a1, t1, 135
                  slli         a5, a6, 25
                  or           a1, t0, t3
                  or           a5, t0, a6
                  or           s2, t2, tp
                  lui          t5, 828462
                  slti         s0, t6, 848
                  sra          t2, a2, a2
                  auipc        a3, 737993
                  auipc        a6, 65891
                  sll          a6, s1, tp
                  add          t4, t3, s5
                  lui          t0, 780158
                  srai         s11, gp, 18
                  sll          a5, s10, a1
                  srai         t0, s9, 26
                  add          a1, s11, t5
                  slli         ra, a4, 21
                  slt          s6, t4, a5
                  slti         s11, t2, 576
                  add          a3, s7, gp
                  srli         t1, a2, 19
                  slti         s10, gp, -660
                  srli         a5, ra, 5
                  xor          gp, sp, s10
                  addi         t1, s9, -827
                  or           s2, s6, a4
                  slli         s0, s4, 11
                  auipc        zero, 1024918
                  sll          ra, t4, t6
                  lui          t6, 285102
                  lui          a2, 1007130
                  sub          t3, s3, s11
                  auipc        tp, 905843
                  slli         ra, a6, 21
                  and          a4, t5, s7
                  auipc        s9, 709006
                  slt          t6, t4, a5
                  add          s0, s1, a0
                  srli         t6, a3, 14
                  slli         s2, a5, 25
                  or           t2, a0, t2
                  add          a4, s0, s6
                  slli         s10, s3, 7
                  lui          a4, 940048
                  or           s10, gp, a3
                  auipc        s9, 845267
                  sra          t3, t6, s11
                  addi         s9, s11, -321
                  lui          a4, 259062
                  or           s2, s4, t1
                  auipc        s5, 525658
                  addi         a4, s6, 1853
                  srli         t0, a0, 26
                  nop
                  or           a6, s7, s9
                  auipc        a3, 680378
                  srl          ra, gp, s6
                  or           a3, s0, a0
                  or           t4, a4, t6
                  addi         t4, gp, -1300
                  slt          a4, s10, tp
                  xori         t6, t3, -119
                  srl          s7, s2, a0
                  slti         tp, a6, 1981
                  andi         zero, a7, -1322
                  addi         s2, ra, 280
                  sra          s5, s2, a3
                  slti         s10, a4, 1056
                  slti         t2, s6, 1069
                  sltiu        t2, s6, -812
                  xor          ra, s1, a7
                  addi         tp, a3, 700
                  lui          t2, 536317
                  slli         s7, a4, 19
                  and          a3, s1, s0
                  sub          t3, s5, t3
                  lui          s11, 156036
                  srli         s10, t3, 24
                  add          sp, s2, s0
                  auipc        a5, 946223
                  sltiu        a6, s9, 1736
                  auipc        t2, 390230
                  sltu         s9, t4, s3
                  lui          s11, 919764
                  andi         ra, s5, 1261
                  sub          s2, a0, s5
                  sltu         t4, s2, a0
                  lui          tp, 513924
                  add          a1, s10, s11
                  sltiu        a0, t4, -635
                  andi         gp, a0, 848
                  and          sp, s3, t4
                  sub          a2, a4, a0
                  sll          s9, t3, s1
                  srai         t2, t0, 5
                  sub          t0, a7, s4
                  auipc        a5, 422182
                  sub          s6, sp, t2
                  slli         gp, a0, 10
                  srli         t3, s7, 12
                  xori         t3, a7, 93
                  slt          t0, t1, a3
                  auipc        zero, 834590
                  sra          s6, a4, a0
                  auipc        t0, 946742
                  or           a5, a3, t0
                  andi         t2, ra, 187
                  or           sp, t4, s6
                  slt          s0, s8, s4
                  slli         s2, t6, 5
                  xori         a1, a1, 1003
                  srl          s6, s7, a4
                  sltiu        a3, t2, -1775
                  sra          ra, s1, s8
                  xori         t3, a7, -1242
                  slt          tp, a5, s2
                  xori         tp, a4, -1998
                  sub          s10, s7, s5
                  and          t4, zero, s10
                  sub          s5, a3, a1
                  srli         ra, zero, 30
                  srl          a0, s9, s3
                  xor          gp, t3, ra
                  nop
                  srai         s6, gp, 11
                  sltiu        zero, a2, -500
                  ori          t0, s7, 1499
                  xori         sp, t1, -1925
                  sll          a0, s7, t6
                  slli         s9, s1, 21
                  srli         t6, a7, 3
                  srai         s9, t5, 17
                  slli         a4, a6, 25
                  auipc        a3, 252976
                  srai         s6, s3, 8
                  ori          a4, zero, -919
                  sub          a2, t1, t5
                  ori          s11, s2, -1643
                  auipc        a3, 208072
                  or           t5, t6, s5
                  lui          s11, 475132
                  and          s6, t2, s10
                  srl          s7, s11, s1
                  lui          t4, 492890
                  andi         ra, a5, 1913
                  slti         t6, zero, 447
                  andi         t2, t4, -534
                  or           a5, sp, s10
                  srl          a2, t3, t0
                  sll          t4, a3, sp
                  auipc        t2, 728872
                  srai         s9, gp, 12
                  srl          s0, t0, t6
                  add          t4, t4, ra
                  and          ra, a1, a4
                  sll          t2, s9, t6
                  sltiu        t6, a3, -1107
                  auipc        s11, 790327
                  slti         a3, s7, 1194
                  andi         a3, s8, -240
                  sll          s11, t5, s10
                  addi         s2, sp, 1899
                  srl          a4, a2, a5
                  addi         a1, gp, 1673
                  srli         s7, t4, 11
                  sub          t0, t1, t0
                  auipc        t2, 935132
                  or           a1, s0, gp
                  and          gp, zero, s0
                  andi         sp, t4, -1078
                  sltu         s11, a7, s5
                  slti         tp, a7, 535
                  slli         s4, s6, 20
                  sra          s7, a1, s7
                  xori         s3, tp, -358
                  xor          sp, sp, s3
                  srai         t2, gp, 3
                  nop
                  xor          t4, a7, a5
                  or           ra, s3, s10
                  slt          s3, s7, t5
                  add          zero, s0, ra
                  sltiu        tp, s4, 519
                  slti         s5, tp, -1166
                  ori          a6, t1, -1180
                  srl          a6, t3, s1
                  auipc        a5, 447524
                  andi         t5, a7, -1079
                  slt          a2, t3, a4
                  add          t5, s11, a4
                  or           s3, a4, gp
                  xori         s9, t5, -342
                  srai         a3, s10, 20
                  auipc        t2, 641382
                  ori          s2, t0, 1914
                  lui          s4, 468193
                  addi         t0, s9, -1022
                  andi         t2, a5, 339
                  or           s9, s8, s3
                  nop
                  sra          t1, s5, a7
                  ori          t5, t2, 1323
                  sltu         s11, s7, t4
                  nop
                  srli         s7, s1, 8
                  sub          a6, t4, s5
                  sra          t0, a2, a7
                  or           sp, a7, s10
                  sra          t0, t4, s2
                  xor          s10, a2, s0
                  sub          gp, t6, s8
                  xor          tp, s4, s3
                  or           s7, s11, a2
                  lui          s7, 852318
                  or           zero, t2, s3
                  sub          t3, t2, s1
                  add          t5, t5, gp
                  add          s6, gp, t6
                  addi         a6, s10, 1053
                  slti         a1, sp, -1999
                  sub          zero, sp, t1
                  sra          s5, sp, sp
                  nop
                  xor          ra, a3, s10
                  xori         a5, s4, 588
                  andi         s5, a7, -169
                  and          s7, a7, a6
                  srai         t5, s1, 14
                  ori          t3, s8, 334
                  srai         a4, s6, 12
                  nop
                  addi         a4, s6, 1053
                  add          gp, s2, a1
                  srai         ra, a2, 16
                  srai         a2, s3, 3
                  slt          t4, s6, t2
                  andi         t0, sp, -906
                  or           t1, s10, s0
                  xori         t3, s11, 1951
                  xor          s2, a2, s2
                  addi         t5, t0, 313
                  xor          t5, s8, s11
                  sll          t6, s1, a7
                  lui          zero, 722203
                  sltu         s4, gp, a2
                  add          sp, s3, a6
                  xori         s9, a4, -155
                  slli         zero, s4, 14
                  sltu         a0, a7, t2
                  sltiu        s7, s6, 1453
                  andi         s9, s9, 1792
                  slli         t2, s1, 17
                  or           sp, s0, t0
                  xori         s3, s0, -516
                  sll          a0, s1, a4
                  andi         t6, a4, -1005
                  srli         s11, s0, 26
                  slli         t5, s7, 12
                  sltiu        t0, s11, 325
                  and          tp, t0, tp
                  sll          s0, s6, a0
                  sltu         sp, s4, sp
                  slli         s2, a2, 24
                  or           a0, t3, gp
                  lui          t1, 650914
                  add          ra, a4, s6
                  sll          a3, s5, t5
                  srli         a2, s6, 29
                  slti         t0, a1, -1162
                  and          t2, s2, s5
                  add          s7, s4, s6
                  addi         t1, s10, 1501
                  xor          s7, a4, s7
                  slti         t0, s4, -1323
                  sub          s9, t6, s9
                  auipc        s11, 303088
                  sll          s10, sp, s11
                  xori         a2, sp, 874
                  ori          s10, sp, 1751
                  and          s11, t6, t2
                  lui          a6, 124065
                  sra          t1, ra, gp
                  ori          s2, t4, 1338
                  slli         ra, a4, 4
                  sll          sp, s2, s3
                  nop
                  xori         a4, a4, 1970
                  sll          s10, sp, s11
                  slt          gp, s2, t5
                  slli         s6, a2, 7
                  andi         a4, s4, 1806
                  andi         t0, s7, 631
                  srai         s2, s0, 15
                  slt          a4, t5, t0
                  xori         t6, s5, -238
                  sub          s0, tp, t6
                  addi         t4, s3, 1849
                  and          a5, t2, t3
                  ori          s7, t0, -1814
                  slli         zero, s1, 7
                  ori          ra, tp, -459
                  srl          sp, s10, s10
                  and          ra, s1, a4
                  and          s6, t0, s0
                  addi         s11, s3, 650
                  sll          a0, t1, s11
                  srai         s9, a5, 18
                  slt          t6, ra, s4
                  andi         zero, t6, 1099
                  lui          s0, 183092
                  addi         zero, a7, 907
                  xori         s9, a7, -1879
                  ori          a5, sp, -1377
                  srai         t5, tp, 28
                  lui          t3, 453285
                  or           a6, s2, s5
                  and          s5, s2, a2
                  nop
                  xor          s10, s8, s11
                  sltiu        sp, sp, -1045
                  slt          s7, t3, t6
                  and          s10, ra, a2
                  sub          a1, a7, s11
                  lui          zero, 873471
                  ori          s10, zero, -821
                  srl          a2, t1, zero
                  xori         t4, s0, -750
                  nop
                  nop
                  add          a2, s4, a4
                  slt          a2, s7, sp
                  srli         s10, a5, 21
                  sub          s0, t3, s7
                  srl          a5, a1, s4
                  or           s2, gp, s8
                  sra          tp, s5, a7
                  auipc        gp, 1027885
                  auipc        s7, 1020396
                  slli         s9, s4, 18
                  lui          s7, 883022
                  addi         a2, t4, -1907
                  sltiu        t5, tp, 942
                  slti         s0, a3, 1993
                  sltu         a2, a7, s5
                  slti         s11, t6, 759
                  slt          s5, a0, a4
                  sll          s5, t4, s5
                  srl          zero, a3, s2
                  srai         s11, t0, 28
                  sra          s10, ra, a1
                  slt          t5, t4, s6
                  addi         t5, t3, -804
                  xor          s10, a5, a1
                  srai         s5, a5, 4
                  xor          t4, a1, s6
                  xori         t5, s7, -887
                  srai         a2, sp, 11
                  lui          a3, 618930
                  slt          zero, t6, s1
                  nop
                  slti         s5, sp, -1369
                  slt          a1, s8, zero
                  sltiu        a2, ra, 923
                  slt          s6, a1, ra
                  addi         zero, gp, 1442
                  slli         sp, t1, 17
                  add          t1, a1, sp
                  xor          a4, t3, s4
                  sra          t4, s5, s7
                  slti         t5, s10, -1067
                  nop
                  sltu         a4, gp, s5
                  nop
                  addi         a4, s9, 72
                  xor          t1, a5, a3
                  slli         a4, s2, 19
                  slti         a4, t3, -1131
                  srl          t2, tp, tp
                  addi         a3, s7, -1793
                  add          a0, t6, s1
                  sub          a2, s4, t6
                  auipc        gp, 1027328
                  sltu         t3, a6, t5
                  sltiu        ra, a6, 1261
                  sll          s4, a0, s10
                  nop
                  srl          s3, s11, t5
                  add          ra, t2, a2
                  sltu         a0, t5, t0
                  sra          t5, zero, t2
                  sltiu        s3, zero, 610
                  and          s6, t2, s2
                  sll          s10, zero, s6
                  xori         zero, s7, 1860
                  addi         a3, t2, -161
                  sra          zero, s11, s9
                  nop
                  auipc        s6, 734744
                  xori         s6, a6, 1439
                  addi         s4, tp, -1233
                  srli         gp, zero, 20
                  xor          zero, s2, zero
                  sll          s0, t5, t2
                  slt          t5, s9, s7
                  slt          a6, ra, s8
                  sub          a0, a6, s2
                  addi         sp, a4, 1656
                  add          ra, a5, s7
                  or           a2, t5, s5
                  srai         a1, s10, 14
                  sra          s2, tp, t6
                  add          s11, a4, a1
                  srli         t4, a2, 3
                  srli         a4, s3, 26
                  sll          t3, s2, s2
                  srai         s9, a3, 31
                  or           t4, a6, s0
                  xori         s2, s11, -1066
                  and          t2, s4, t4
                  andi         s7, a4, 1633
                  sra          s3, a2, a4
                  ori          tp, sp, 1125
                  slt          s0, s2, s0
                  sltu         t6, s10, a7
                  srli         s6, s3, 28
                  srai         t2, a6, 8
                  add          a4, t5, t5
                  sra          t1, a6, sp
                  addi         gp, a3, -321
                  auipc        t3, 957174
                  sll          s2, t3, a1
                  nop
                  slli         s10, s8, 0
                  sll          a0, t2, t4
                  sltiu        zero, gp, -1468
                  xor          a6, t1, sp
                  add          a4, ra, t1
                  sra          s10, a7, ra
                  srl          tp, sp, a2
                  slt          a3, sp, s4
                  sub          a0, s3, t3
                  slt          s0, a6, s0
                  addi         zero, a0, -1284
                  add          a5, ra, gp
                  sub          sp, s11, t1
                  xori         a6, a6, 650
                  slli         s2, a2, 28
                  srli         a5, a4, 22
                  lui          a4, 908755
                  xor          ra, a3, s10
                  and          tp, t0, s4
                  slt          s6, a6, s0
                  xori         a5, a7, 27
                  andi         a3, t1, 1658
                  or           t1, t2, a1
                  sll          t5, s5, s10
                  slti         t6, t0, -195
                  ori          s9, s10, 514
                  sra          s3, s9, s10
                  sll          t0, t6, s3
                  sll          s7, s4, s4
                  lui          t6, 727577
                  add          a2, sp, a7
                  sub          ra, s2, a0
                  srai         a6, sp, 8
                  slli         s4, a0, 25
                  andi         ra, t3, -963
                  andi         t2, sp, 1441
                  srli         a4, zero, 18
                  slt          a4, s9, a4
                  slli         a4, s8, 24
                  sll          s5, s0, a7
                  addi         sp, sp, 1867
                  xori         s9, a1, 1730
                  sltiu        s2, t1, 1244
                  srli         t0, a4, 28
                  srl          s9, t6, tp
                  sub          a6, s3, a7
                  slti         s5, s10, 862
                  slli         t5, a4, 5
                  addi         t2, a4, 7
                  sltu         sp, t1, s3
                  srli         a0, a5, 20
                  sra          a4, s7, a7
                  srai         zero, zero, 1
                  srl          t1, a4, s9
                  ori          a3, a0, 449
                  auipc        a2, 413248
                  srai         a2, s4, 22
                  srli         t1, s0, 10
                  and          s6, a5, s11
                  addi         gp, zero, 199
                  add          s0, t0, t5
                  lui          a6, 342231
                  sltu         a0, s7, s6
                  xori         t6, s11, 1893
                  sltiu        s5, a1, 1511
                  xori         a1, t2, -1430
                  xori         a6, tp, 1633
                  slli         a5, t5, 31
                  ori          zero, a0, 907
                  and          s0, t2, a5
                  srl          a5, t6, gp
                  addi         t3, s10, 1666
                  ori          s9, a0, -1190
                  slti         a3, tp, 1324
                  sltu         t1, s8, a6
                  sll          t5, a2, s11
                  add          t4, a7, a5
                  srl          a4, a2, t5
                  srai         s3, s9, 11
                  nop
                  add          s5, ra, a3
                  xori         sp, a5, 1245
                  lui          a5, 764694
                  sltu         t6, ra, a4
                  add          t5, s8, s5
                  srl          a4, zero, t2
                  xori         gp, s5, -264
                  and          s0, s9, s11
                  and          t4, s2, s3
                  auipc        tp, 869621
                  lui          a0, 135345
                  xor          t3, s11, a2
                  andi         s6, a5, -1431
                  auipc        a1, 33776
                  and          a2, tp, a0
                  nop
                  or           s5, a1, t4
                  sra          t0, t6, s2
                  sltiu        zero, s5, 1977
                  addi         ra, s2, -404
                  and          tp, a7, a2
                  sltu         a1, s1, t2
                  lui          a0, 963814
                  lui          s7, 336204
                  lui          a1, 759989
                  srai         a1, sp, 2
                  sltiu        ra, t1, -1811
                  slt          a0, t5, s10
                  slli         a0, s2, 17
                  srai         s5, t5, 1
                  sub          sp, s7, s2
                  slt          zero, a1, tp
                  slli         t3, gp, 28
                  slli         a6, s2, 12
                  auipc        ra, 1005902
                  sub          a3, t3, a6
                  srai         sp, gp, 0
                  srl          ra, sp, a6
                  xor          sp, s11, s1
                  xor          a4, s9, a3
                  sltiu        a2, sp, -1789
                  srl          s4, a1, s6
                  andi         s6, s8, -888
                  add          a2, s11, s2
                  add          t4, s6, a4
                  andi         s5, a0, 895
                  nop
                  srai         t3, t4, 18
                  ori          s7, gp, -1596
                  sltiu        s0, t5, -1042
                  slli         t2, s8, 25
                  sltiu        t5, t4, 1111
                  sra          gp, s4, gp
                  sll          tp, a1, tp
                  srl          zero, t5, ra
                  sltiu        zero, s3, -1024
                  andi         tp, s6, 1938
                  sub          s9, s2, tp
                  add          a3, tp, a7
                  andi         t5, s2, 392
                  sll          t4, s5, s11
                  and          a2, s8, s4
                  auipc        zero, 1000872
                  slt          ra, a0, s5
                  slli         a1, t2, 16
                  auipc        t5, 880241
                  addi         tp, a3, 304
                  xori         s4, s7, 498
                  addi         ra, s2, 616
                  andi         s2, s3, 602
                  sra          t5, t0, s0
                  ori          a6, tp, 1260
                  auipc        tp, 132061
                  xori         s2, t3, -1326
                  auipc        t6, 890887
                  lui          a5, 189265
                  srai         s7, a1, 12
                  nop
                  srli         t6, gp, 8
                  xor          t6, sp, s10
                  add          t3, s4, a1
                  and          t5, a6, s1
                  sra          a4, s8, s3
                  srl          s2, a0, s2
                  addi         s0, s11, 1056
                  sltiu        gp, t6, -696
                  addi         t4, gp, -421
                  and          s6, a0, s5
                  srai         gp, s1, 27
                  sub          a2, t2, a4
                  andi         a6, a1, 1382
                  add          sp, a1, zero
                  and          t1, a6, sp
                  slti         a2, s6, 258
                  sub          t5, t1, a7
                  srl          a6, a5, t4
                  lui          t2, 796434
                  slt          s9, s2, gp
                  or           t1, a7, t3
                  srl          s4, s3, a5
                  xori         a1, s4, -1626
                  sltiu        t6, t2, -1179
                  srli         a0, a7, 29
                  sltiu        s3, gp, 1071
                  and          t5, s10, s1
                  slti         ra, ra, -1482
                  nop
                  add          a2, a6, s3
                  or           s7, a5, s5
                  addi         a6, a0, 1326
                  srai         t6, t6, 4
                  or           s9, ra, a0
                  andi         t5, sp, -1681
                  or           t2, t1, a5
                  slti         t1, t5, 472
                  srl          t2, a0, zero
                  lui          t1, 712411
                  sra          t4, t1, t5
                  slt          s5, gp, s9
                  auipc        a1, 747966
                  srai         a6, s8, 18
                  lui          zero, 515255
                  lui          a4, 809935
                  slti         s3, s7, -1043
                  srli         s3, ra, 7
                  ori          a5, s7, 212
                  or           sp, t6, s0
                  auipc        a0, 493853
                  sltiu        t6, tp, 1731
                  srli         t4, a4, 27
                  slli         a2, t4, 28
                  andi         a2, t3, -1986
                  srl          a3, t3, s8
                  or           s9, gp, a2
                  sra          t2, s7, t1
                  addi         t4, s8, 730
                  sltu         s6, gp, t1
                  sub          a0, t6, a1
                  sltiu        t1, s2, -1974
                  srli         ra, t0, 22
                  sltiu        t0, a6, -548
                  srli         s6, gp, 8
                  xor          t1, t0, t0
                  andi         a4, a0, 1131
                  andi         s6, s9, 813
                  slti         a4, s5, -1455
                  slt          s0, s11, tp
                  xori         a0, s5, -262
                  sra          s6, a0, a0
                  slti         a1, s10, 1821
                  srai         ra, s5, 11
                  srai         a6, gp, 17
                  srl          t4, t2, gp
                  slti         a0, a3, -1489
                  add          t1, s1, t1
                  andi         s6, gp, 379
                  sltiu        t0, a4, -547
                  andi         a1, s4, 1964
                  ori          a5, a0, -295
                  srli         t2, a4, 18
                  andi         t2, t3, 1907
                  and          a3, a5, t3
                  sltiu        sp, s2, 1200
                  andi         s5, s7, 1127
                  add          a0, zero, s2
                  lui          t3, 56390
                  slt          s9, s2, a3
                  lui          tp, 202694
                  xori         a4, a4, 385
                  slli         a4, t6, 25
                  li           t2, 0x5f064661 #start riscv_int_numeric_corner_stream_16
                  li           s9, 0x80000000
                  li           gp, 0x18474c04
                  li           s11, 0x0
                  li           t0, 0x80000000
                  li           a0, 0xa6ea56c7
                  li           ra, 0x0
                  li           s2, 0xffffffff
                  li           s7, 0xffffffff
                  li           s3, 0xffffffff
                  auipc        a0, 542307
                  addi         t0, s2, 1285
                  nop
                  add          a0, gp, s3
                  addi         s9, gp, 200
                  sub          ra, a0, s7
                  lui          s7, 828632
                  auipc        ra, 578895
                  sub          t2, a0, s9
                  add          gp, s11, t2
                  sub          s9, s9, s9
                  add          a0, t0, s3
                  add          t0, s3, s11
                  add          a0, s7, s7
                  lui          t2, 775050
                  add          a0, s9, a0
                  lui          ra, 70591
                  add          gp, s3, t2
                  sub          s7, t2, t0 #end riscv_int_numeric_corner_stream_16
                  xori         a1, s4, 1933
                  srli         t2, s4, 2
                  srl          t6, t0, zero
                  sltiu        s3, s4, -237
                  sltu         gp, a5, a7
                  slti         s4, t0, 881
                  add          a1, a0, t1
                  sltiu        ra, s10, 1242
                  lui          s7, 935332
                  srl          a2, s3, s9
                  srai         a4, zero, 25
                  srai         a3, a1, 31
                  addi         s11, t5, -650
                  or           zero, s6, a6
                  sltu         s3, s10, a4
                  sll          a0, s10, ra
                  andi         s5, s6, 311
                  xor          a0, zero, s10
                  xor          ra, s1, ra
                  xor          gp, t5, s1
                  srli         zero, s3, 25
                  and          tp, s3, t0
                  sltiu        a0, s10, 1284
                  srai         s0, t4, 9
                  slt          a5, a1, s9
                  xor          t4, s6, s6
                  sltu         t0, ra, s7
                  xori         s10, s4, -484
                  andi         a4, a3, 173
                  xor          s0, zero, s1
                  xor          gp, a5, ra
                  sll          s0, a6, ra
                  xori         a4, t1, -634
                  sltu         a4, sp, s11
                  lui          s2, 995600
                  nop
                  nop
                  nop
                  sub          t5, s11, a3
                  srli         s2, zero, 28
                  slti         a1, t4, -38
                  xori         a5, a5, -246
                  slli         s10, a5, 0
                  lui          s3, 127824
                  lui          t4, 476510
                  xor          t1, s10, a5
                  or           t4, t5, s6
                  lui          s0, 788329
                  or           s2, s2, gp
                  srli         t2, s8, 17
                  srl          t0, a5, s0
                  sltu         ra, a4, t3
                  xori         a6, zero, 1172
                  slti         s4, s11, 157
                  or           s7, a2, s5
                  or           t6, a1, gp
                  xori         a0, s4, -671
                  andi         tp, a0, -149
                  sra          tp, a5, a3
                  sltu         a4, tp, s10
                  xori         s0, a7, -1809
                  lui          s7, 146170
                  add          s2, s7, sp
                  xor          s0, s3, a5
                  sub          a3, a5, t0
                  nop
                  ori          gp, s1, -104
                  andi         a6, a2, -1237
                  srli         a6, s5, 31
                  lui          s9, 990802
                  sub          s7, s5, t3
                  ori          a0, t2, -510
                  srai         a2, s5, 24
                  and          t3, s3, s1
                  sltiu        a0, a2, -867
                  andi         s9, a0, 441
                  sll          a4, gp, s2
                  xori         s5, a7, -589
                  and          a2, tp, s2
                  sll          a1, s6, zero
                  sll          s5, s3, a3
                  sll          s10, a3, t2
                  add          a3, s3, s4
                  sra          gp, s0, t1
                  nop
                  sll          t6, s10, s8
                  add          a3, t2, t4
                  sra          t0, a6, a4
                  slli         t3, t1, 4
                  add          a6, s5, t2
                  sll          ra, a0, s10
                  xor          s2, s0, s9
                  or           t6, t3, t0
                  or           s10, gp, s2
                  sltu         s6, s0, s0
                  addi         s5, a5, 100
                  and          tp, s3, a4
                  addi         a4, a4, -779
                  slt          t1, s1, a1
                  srl          ra, t6, ra
                  add          s9, t5, s9
                  addi         t6, a4, 974
                  sub          s0, s7, s9
                  sll          s6, s2, s7
                  andi         s3, s8, 1641
                  or           s10, s3, a0
                  add          a0, a0, sp
                  or           t3, t3, a6
                  andi         a3, t5, 1061
                  slt          s5, t4, t6
                  sltu         a6, a3, a0
                  slli         tp, ra, 17
                  or           s4, t6, s5
                  xori         s11, a5, -1492
                  sltu         s4, s9, s6
                  srl          a0, zero, ra
                  slti         a3, a5, -527
                  and          s6, t5, s9
                  sub          t3, s9, s9
                  srai         a1, s3, 23
                  srl          a1, s9, s4
                  srl          t3, tp, t5
                  srai         sp, s3, 27
                  nop
                  addi         t0, s10, -1367
                  slt          s0, gp, a4
                  srai         s10, sp, 5
                  add          t2, t2, t6
                  slti         s7, s4, -452
                  andi         t5, t2, 1600
                  slli         t4, s7, 1
                  ori          tp, s1, -1414
                  sll          gp, t5, s8
                  srai         s5, a6, 11
                  lui          a6, 307989
                  slt          s10, s6, s3
                  or           sp, sp, a6
                  slti         s10, t0, -660
                  and          t1, a4, a5
                  or           gp, sp, s7
                  slli         a6, zero, 11
                  sltu         a0, a5, t1
                  slti         a1, ra, -883
                  sra          sp, a3, t1
                  xori         ra, s0, -386
                  addi         a1, s9, -593
                  sll          t3, a0, s3
                  slti         t4, s3, 1593
                  srli         s5, a7, 23
                  xor          t2, s10, t5
                  srl          s4, t4, s4
                  lui          a0, 412735
                  xori         t5, t2, 1939
                  slt          a2, t5, a5
                  xori         a5, tp, -123
                  sra          gp, s3, sp
                  nop
                  slti         t2, a1, 1920
                  auipc        s3, 844916
                  sll          a0, a2, zero
                  srl          s9, s9, s6
                  addi         t6, a6, 236
                  lui          t5, 196984
                  nop
                  sltiu        tp, a2, 1512
                  slt          s5, s8, s6
                  sll          gp, ra, s1
                  slti         a0, gp, -1187
                  srai         t2, a5, 31
                  sltiu        s3, tp, -558
                  slti         s10, a0, -1694
                  addi         gp, a2, -317
                  sra          s7, s10, s10
                  ori          a1, sp, -1611
                  sra          t6, a6, s3
                  srli         sp, t0, 18
                  ori          ra, s2, 1386
                  lui          t3, 171581
                  xori         ra, s8, -1601
                  sub          t1, s6, s10
                  auipc        t6, 326426
                  slti         t5, a4, 1638
                  srai         s7, s11, 26
                  lui          t3, 1027051
                  slt          s11, a3, t3
                  or           sp, t5, s5
                  sltiu        a0, gp, -1475
                  lui          s5, 103369
                  sltu         a1, a1, ra
                  sll          s11, t3, s2
                  sltu         t4, s5, s11
                  xori         s6, s2, 343
                  sub          t6, a1, s1
                  slt          s2, t1, a5
                  sll          a5, t2, t3
                  add          s5, a1, gp
                  sltiu        gp, tp, 886
                  slti         t2, a3, 1968
                  slli         t2, a1, 4
                  or           s7, s6, a3
                  lui          tp, 111597
                  srl          a1, t0, gp
                  andi         tp, tp, 1952
                  xor          s0, s4, s0
                  srl          s6, a0, a0
                  addi         a1, s3, -1265
                  srl          tp, zero, s8
                  srai         t4, sp, 1
                  andi         t5, s2, -332
                  and          a4, s9, t6
                  andi         s10, t6, -100
                  sltiu        t3, s0, -1939
                  srl          a5, a2, s1
                  sltiu        gp, s1, -1418
                  srl          t5, s6, t2
                  sltu         t1, s5, s9
                  srli         a2, t6, 13
                  or           ra, s9, s0
                  sltu         s11, s9, ra
                  addi         t3, s9, -69
                  xori         s6, a2, 623
                  add          t1, a0, t5
                  sll          a5, t5, s1
                  add          tp, s9, ra
                  xori         a2, s0, -1046
                  slt          t6, a7, s5
                  xori         t1, s11, -956
                  and          a1, s9, s3
                  and          t0, tp, a0
                  and          a5, s10, tp
                  auipc        t1, 962022
                  lui          s7, 966641
                  add          s2, gp, ra
                  slli         a6, s1, 27
                  ori          a0, ra, -1844
                  sll          s10, a0, ra
                  srai         s0, zero, 19
                  addi         a4, a3, 1161
                  and          t3, t1, s9
                  srl          t4, s2, t5
                  nop
                  ori          s7, s10, -952
                  andi         t5, s6, -1127
                  and          t3, ra, t0
                  sltu         zero, a0, ra
                  srli         t1, t1, 28
                  sltu         t3, a7, s0
                  addi         s9, a1, -1911
                  xori         ra, t6, 426
                  and          a1, ra, s2
                  auipc        a0, 37581
                  srl          a0, a2, s4
                  addi         gp, s3, -715
                  andi         t2, a7, -132
                  auipc        a5, 606379
                  and          s3, t5, a7
                  add          a6, a6, s0
                  andi         ra, gp, -193
                  srli         ra, s0, 18
                  nop
                  lui          sp, 481622
                  lui          s4, 987396
                  lui          s7, 1009207
                  xor          ra, s2, t2
                  auipc        s7, 278182
                  slli         s6, s5, 21
                  slti         s7, sp, -1139
                  slli         a6, s5, 9
                  srl          t2, a5, ra
                  xor          s5, s1, t0
                  ori          t4, a7, -1886
                  addi         s4, a2, -1074
                  sltu         a4, s1, a6
                  andi         s5, t3, -1561
                  nop
                  xori         t4, a4, -501
                  lui          s10, 172297
                  slt          a3, a6, a6
                  or           s0, s3, tp
                  lui          a4, 180691
                  srl          s3, t0, s1
                  nop
                  srli         gp, gp, 3
                  lui          a3, 425131
                  sltiu        s0, s3, -1069
                  slli         a1, s3, 7
                  andi         a0, a0, -1636
                  add          t2, s8, t1
                  slli         s7, a4, 0
                  auipc        sp, 193715
                  lui          zero, 444795
                  or           t3, a2, a3
                  slli         s7, t4, 2
                  xori         s11, t3, -1600
                  srl          a5, s9, a6
                  srli         t0, a4, 24
                  sltiu        gp, t4, -325
                  and          t3, s3, a6
                  slt          t0, t6, sp
                  and          a2, gp, a5
                  xori         s6, s0, 1256
                  srai         s7, gp, 25
                  sltiu        sp, s4, -1601
                  srli         s4, s4, 29
                  slt          a0, a6, a4
                  srl          t5, a2, ra
                  srai         a2, a3, 0
                  srl          t2, s2, a2
                  add          a0, gp, a1
                  lui          gp, 394426
                  sltiu        a1, zero, -1532
                  addi         ra, s6, 1252
                  xori         a5, s6, 1441
                  srai         s6, zero, 23
                  sub          t3, t0, s10
                  nop
                  andi         a4, t4, -403
                  sra          a5, t2, s6
                  xori         zero, s5, 241
                  slt          t4, tp, a5
                  sub          s3, s1, s7
                  and          tp, t5, gp
                  srai         s11, s8, 26
                  sll          a3, s4, a2
                  lui          zero, 580395
                  slti         s0, t2, -1915
                  slt          tp, s2, t1
                  sltiu        s6, a6, 519
                  slli         ra, tp, 25
                  add          sp, s4, s11
                  sltiu        a2, s7, -656
                  srl          t2, s6, a7
                  nop
                  sltiu        t5, s4, 1605
                  srli         t5, s0, 25
                  or           a5, t1, s11
                  xori         s6, s3, 1593
                  sltu         s4, s6, t0
                  auipc        a5, 583510
                  auipc        a1, 734416
                  sub          a5, s5, a5
                  sltiu        s9, s9, 1460
                  xori         a0, t4, -574
                  sra          a2, s9, t0
                  lui          tp, 767809
                  slt          s4, gp, t6
                  slt          s9, s9, a5
                  xor          a2, a7, s0
                  andi         s10, t1, 242
                  sll          ra, a4, t3
                  slti         t2, a7, -609
                  srl          t4, t4, t5
                  xori         a1, t3, -581
                  slli         t4, t4, 20
                  srai         gp, a5, 30
                  slli         s9, zero, 18
                  ori          a0, a6, 1836
                  srli         s6, a4, 1
                  xori         s9, a1, 1952
                  srli         s9, s3, 21
                  sra          t1, tp, a6
                  nop
                  lui          s0, 950169
                  lui          t2, 660973
                  sll          s7, tp, s5
                  ori          t2, s3, -826
                  andi         s6, s5, 1926
                  ori          t3, a2, -819
                  srl          t1, s2, t5
                  lui          s5, 353368
                  srai         a6, s0, 12
                  add          t1, gp, sp
                  or           s0, sp, t4
                  sltiu        s6, ra, -765
                  or           t2, s3, a3
                  srl          s0, a1, a2
                  xor          gp, s7, zero
                  or           s2, a4, t2
                  auipc        a6, 765143
                  andi         a5, ra, 356
                  sub          a4, s0, t6
                  srl          s9, a5, s9
                  nop
                  srli         ra, sp, 22
                  sltiu        s4, a6, 1563
                  andi         s9, s10, -1503
                  xor          a4, t4, t0
                  add          t4, a1, s3
                  add          t0, t1, ra
                  andi         s0, s2, -444
                  or           a3, s2, s8
                  xori         t3, ra, 884
                  nop
                  sll          sp, s10, s3
                  sra          a3, ra, s6
                  slli         s7, s2, 27
                  ori          sp, zero, 1560
                  nop
                  lui          a5, 21688
                  sltu         a0, a0, s10
                  or           s11, a6, t3
                  ori          t5, a7, -730
                  nop
                  slt          s9, a1, s1
                  sltiu        ra, s8, 850
                  xor          gp, s4, ra
                  srli         a4, s10, 27
                  srai         s7, sp, 7
                  andi         a0, a4, 112
                  or           s5, s7, s5
                  add          t4, s4, t5
                  xori         a0, s8, 1572
                  and          s0, s6, t6
                  ori          s10, s8, 1602
                  add          s2, s1, t4
                  auipc        s5, 40113
                  lui          t6, 200381
                  and          t5, s5, s11
                  add          s5, gp, a4
                  nop
                  add          tp, s6, a5
                  slti         a4, tp, -1616
                  lui          s11, 103225
                  sub          s4, s1, tp
                  addi         s3, a4, -1366
                  slti         a5, t2, 61
                  sra          t5, s10, gp
                  andi         s5, tp, 991
                  sll          s3, tp, s4
                  srl          t6, s11, s9
                  srli         a1, t2, 21
                  slli         s6, a5, 16
                  sltiu        a3, t2, -1556
                  and          ra, t4, a5
                  lui          a3, 614939
                  andi         t4, s8, 374
                  sltiu        t6, a7, -106
                  add          s9, gp, s8
                  sra          t4, s11, t4
                  sub          s11, t5, t1
                  add          t3, s11, s11
                  slti         t0, zero, -2014
                  sltu         tp, t6, ra
                  auipc        a1, 54372
                  sll          s3, t1, t5
                  srai         s3, a1, 7
                  slt          t1, a0, s6
                  nop
                  sra          s10, t4, s4
                  sltiu        t3, t1, -1451
                  srl          t5, t2, s11
                  slt          t2, t5, s1
                  sra          a6, a0, s5
                  slti         s0, s6, 576
                  addi         s7, s2, -563
                  slti         s0, t6, -1958
                  ori          s11, s2, 1010
                  ori          s11, t3, 1821
                  ori          s0, t0, 188
                  sltiu        s3, t0, -716
                  andi         t5, s8, -605
                  andi         t4, s3, -1558
                  sltu         t6, a7, s3
                  sra          s9, s0, s2
                  nop
                  slt          a0, a3, s9
                  srai         s4, a6, 25
                  sll          t1, tp, a1
                  srl          t3, a6, gp
                  addi         t1, a7, 978
                  addi         t3, t5, 451
                  slti         t5, a4, 477
                  srli         s10, tp, 29
                  srli         s2, a7, 7
                  sltiu        a1, s10, 1266
                  sll          a4, s11, s1
                  xori         a0, a1, 527
                  xor          a4, a3, a0
                  srai         gp, s11, 16
                  lui          a3, 22888
                  xori         t6, t1, 1272
                  addi         a2, a1, 566
                  add          tp, a4, zero
                  sll          gp, s4, s3
                  lui          a1, 261347
                  sll          s4, s7, a1
                  andi         a5, s2, 1485
                  andi         zero, t4, 1364
                  add          a3, t4, a5
                  addi         a2, s11, 1301
                  ori          t5, tp, -125
                  auipc        t0, 1015460
                  srl          t5, s6, s6
                  and          s5, a0, t2
                  sub          a2, t6, t3
                  srli         sp, s9, 5
                  srli         s7, t4, 3
                  or           tp, zero, s7
                  ori          t2, t6, -668
                  srli         t4, s7, 18
                  nop
                  sltiu        s11, s4, 1526
                  or           tp, s8, gp
                  ori          a5, t1, 284
                  sub          s4, gp, s10
                  ori          zero, t0, 2018
                  xori         t2, a2, 1064
                  auipc        zero, 883802
                  lui          gp, 209728
                  auipc        t1, 527527
                  srai         s0, a2, 17
                  slli         a2, a5, 8
                  add          s6, sp, gp
                  srl          t2, t3, t6
                  srai         tp, s6, 15
                  sra          a0, t3, tp
                  slt          a3, a6, s8
                  lui          zero, 318550
                  sll          zero, t1, ra
                  srli         t1, t3, 1
                  xori         t6, s0, -278
                  slt          s11, a6, gp
                  slt          tp, ra, sp
                  slt          s9, a4, t6
                  or           t1, s7, t5
                  srai         a4, a1, 5
                  and          a0, gp, t4
                  slt          a6, s10, zero
                  sll          t1, t1, a7
                  srai         s3, s5, 11
                  srli         a0, s2, 14
                  sll          sp, a2, a4
                  sll          s9, t6, a2
                  slt          s2, tp, a7
                  slli         s4, s1, 27
                  add          s11, s10, s11
                  ori          ra, s11, 1227
                  slt          sp, s0, a0
                  addi         t5, s2, -1736
                  xor          s11, t4, t6
                  auipc        s6, 750070
                  srli         s2, t2, 2
                  srli         s5, s7, 7
                  sll          s6, t2, s7
                  sra          s9, t0, s10
                  addi         a1, s0, -721
                  slt          ra, s10, t4
                  sltu         a6, a6, s2
                  and          t2, zero, ra
                  sra          s7, s3, t6
                  lui          s3, 391525
                  srl          s7, s5, s7
                  or           s5, t6, t0
                  slli         ra, s8, 25
                  xori         t6, t3, -1380
                  sra          s0, s1, gp
                  sub          t2, s4, s3
                  sltu         a1, zero, gp
                  sub          t6, s9, a1
                  nop
                  xori         s5, a4, -288
                  sra          t0, t3, a4
                  sra          a2, a4, a5
                  lui          t4, 451247
                  srl          a1, t1, t3
                  auipc        a2, 645080
                  andi         a1, t5, -1182
                  xor          s6, s7, gp
                  add          s11, s7, gp
                  auipc        ra, 617143
                  add          s11, a4, sp
                  addi         s11, a0, 1098
                  sltiu        t5, s8, -1601
                  sltiu        s11, s4, 1530
                  srai         t4, a3, 6
                  slt          a2, zero, s11
                  add          s9, s8, a0
                  sra          t1, a1, gp
                  nop
                  or           a0, zero, s1
                  nop
                  auipc        s3, 460541
                  addi         s11, a3, 688
                  auipc        s11, 859829
                  auipc        s11, 55380
                  lui          zero, 447151
                  sub          s2, s2, s1
                  srli         s3, zero, 30
                  sll          t4, s8, t1
                  srli         t5, s11, 9
                  slli         s2, zero, 29
                  srl          s11, a0, s2
                  and          s4, t3, t2
                  sltiu        a1, a6, -705
                  srai         t1, t2, 15
                  auipc        t0, 862770
                  and          s5, s2, s1
                  nop
                  auipc        t2, 287222
                  and          a3, a0, t1
                  auipc        s4, 954191
                  addi         t6, s9, 27
                  sll          t3, a6, t3
                  slli         zero, ra, 4
                  or           s0, t1, tp
                  or           ra, t2, s0
                  slli         s7, a6, 4
                  slli         s11, s11, 2
                  nop
                  nop
                  sub          sp, a4, t2
                  slti         s11, tp, -109
                  slli         a2, a0, 3
                  nop
                  xor          a2, a5, zero
                  sll          t5, s1, s9
                  ori          s0, t4, 237
                  slli         a5, s3, 28
                  srl          a5, zero, s3
                  sltiu        a1, a5, -1789
                  slli         t1, s5, 7
                  srl          t4, a4, t4
                  sub          s3, a6, s0
                  sub          gp, a4, t0
                  slti         s2, ra, 207
                  sltiu        s6, a4, -1578
                  sltiu        a1, t6, -565
                  lui          sp, 1046413
                  slt          t1, a3, a1
                  nop
                  andi         a3, s1, 1963
                  sra          a3, a7, t3
                  andi         a2, s4, -724
                  slt          t0, t0, ra
                  sra          t2, t5, s2
                  ori          s9, a2, -1092
                  sltiu        t2, a3, 91
                  nop
                  srli         a4, tp, 25
                  and          s5, ra, s3
                  ori          t1, s6, 1628
                  xori         a1, a3, 58
                  auipc        s2, 759654
                  srai         s7, a3, 22
                  ori          a3, s11, -114
                  ori          a1, s5, -617
                  ori          s9, s8, 152
                  srli         ra, s8, 5
                  add          s9, t3, s1
                  and          gp, s11, s10
                  xor          t2, t4, s9
                  and          s10, t5, t6
                  sra          a2, a0, s0
                  auipc        a6, 844744
                  slt          zero, s10, a3
                  add          s6, s9, s10
                  sltiu        s3, s11, 1394
                  xori         t1, s7, -786
                  nop
                  auipc        a1, 48906
                  sub          t5, sp, sp
                  add          t3, s7, a7
                  ori          ra, s11, 1736
                  srli         s5, s2, 19
                  slli         s4, gp, 29
                  sub          a3, t6, t1
                  addi         s9, t3, 682
                  sra          ra, s5, a6
                  ori          s5, a0, 1679
                  lui          s6, 734439
                  addi         s0, a1, 1993
                  addi         t2, t0, 1906
                  slti         s3, s6, -254
                  sltiu        t0, s7, -946
                  slti         t1, s0, -1943
                  nop
                  lui          s4, 656625
                  nop
                  sra          a2, s2, s8
                  ori          s11, t4, -245
                  addi         s3, a6, 2017
                  lui          s9, 1048172
                  or           gp, t6, a5
                  add          t5, a5, t5
                  add          s0, t5, s0
                  xori         t5, sp, -79
                  slli         a0, a1, 14
                  sll          s6, s2, s5
                  lui          t1, 376278
                  sub          s11, t4, s6
                  addi         t4, tp, 1543
                  slli         a0, a4, 24
                  sltu         a4, t4, t1
                  and          s0, t6, s6
                  srli         s6, gp, 27
                  sub          a3, t4, sp
                  sll          t0, a0, t4
                  or           t0, t5, t1
                  slli         zero, a1, 28
                  or           s6, t2, t4
                  srli         gp, t0, 2
                  xori         a6, t5, 1173
                  slti         s6, t0, 1583
                  sub          s9, tp, a6
                  slli         s5, t5, 17
                  srai         tp, a6, 9
                  ori          t0, s10, 1415
                  andi         s2, a4, 1700
                  ori          t6, a1, 77
                  li           s2, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           t5, 0xcc8ed174
                  li           a1, 0x80000000
                  li           tp, 0xffffffff
                  li           s4, 0x66e90c5a
                  li           s10, 0xffffffff
                  li           s9, 0x0
                  li           t0, 0x80000000
                  li           t6, 0x947602b7
                  li           t3, 0xf4b2d509
                  addi         s2, tp, 664
                  addi         t0, s10, -1924
                  add          t0, t3, s10
                  add          tp, t5, t3
                  sub          s4, t0, s2
                  nop
                  addi         s10, s10, -730
                  add          s2, t3, t0
                  add          a1, tp, t0
                  addi         t5, tp, 158
                  sub          t6, t0, s4
                  addi         s2, tp, 546
                  addi         s9, t0, 173
                  auipc        s4, 686375
                  add          s2, s10, s4
                  sub          s4, s9, s2
                  addi         s2, tp, -1602
                  auipc        t3, 325607
                  sub          s4, s2, s2
                  auipc        t5, 871653
                  add          t0, t0, s10
                  auipc        t0, 56312
                  sub          t6, a1, s10
                  auipc        t0, 586687
                  addi         t5, t0, 1941
                  auipc        t0, 408939
                  nop
                  nop
                  addi         a1, tp, 1066 #end riscv_int_numeric_corner_stream_0
                  auipc        s0, 704253
                  add          ra, s7, t0
                  xor          a6, a3, t1
                  srli         t3, t1, 7
                  srl          t1, t1, t2
                  or           t1, a4, t6
                  andi         s4, a2, -1875
                  auipc        t6, 428378
                  slti         s2, s1, 1995
                  or           s11, s10, s4
                  slli         s0, t5, 21
                  nop
                  nop
                  andi         t5, a0, 1681
                  sltu         s11, a6, s9
                  andi         ra, s0, 1451
                  lui          t5, 875575
                  slti         a4, s10, -1114
                  nop
                  auipc        s0, 358237
                  add          t4, ra, a0
                  xori         t2, s6, 705
                  lui          s3, 210736
                  xor          gp, a7, s11
                  srl          a4, s4, t5
                  add          t4, s6, a2
                  slti         s10, a4, -940
                  sub          t0, s7, t6
                  sltiu        s2, s0, 47
                  sltu         s5, t0, s7
                  sltu         a1, s7, t1
                  sra          gp, s10, ra
                  add          a1, zero, s0
                  srl          s11, a4, s2
                  add          s2, s3, tp
                  and          sp, s9, a1
                  xori         s4, a0, 1053
                  auipc        s10, 487857
                  xor          tp, t2, a2
                  addi         t0, t4, -282
                  xori         s5, t0, 368
                  sltiu        a5, zero, -1073
                  slt          t6, s6, s0
                  sltiu        t4, t4, 55
                  nop
                  and          t0, t3, s11
                  slli         ra, s5, 2
                  slli         t6, a6, 29
                  lui          a2, 821189
                  lui          s4, 156147
                  slt          zero, t1, t4
                  or           a5, s1, s5
                  slli         s4, s11, 11
                  andi         t6, t4, -1630
                  andi         sp, tp, 1410
                  andi         sp, a2, -355
                  ori          s9, a5, -1007
                  sltiu        s6, a6, 230
                  sra          a3, a2, a0
                  lui          a0, 984598
                  xor          s6, t3, t3
                  add          t2, a6, t3
                  sltu         a4, a1, t2
                  xori         sp, t0, -910
                  and          ra, a5, s4
                  srl          s11, a1, s2
                  sub          s10, t6, s5
                  sra          s11, s8, s11
                  nop
                  sll          ra, t2, a2
                  slt          gp, a1, a2
                  ori          tp, s0, -1922
                  sll          s9, t5, t0
                  lui          s9, 316251
                  nop
                  lui          t2, 939076
                  andi         t5, s1, -179
                  slt          t3, t2, a2
                  sra          a0, s11, s11
                  ori          a1, s5, 771
                  sub          a6, a2, t0
                  and          a1, t4, a2
                  xori         sp, t2, -642
                  slli         s2, t0, 11
                  slli         gp, s0, 9
                  srl          s5, t1, s7
                  nop
                  ori          s10, a7, 1204
                  srl          sp, gp, a3
                  srli         zero, s6, 6
                  srl          gp, s1, a7
                  slt          a6, sp, s6
                  sll          zero, t1, gp
                  slli         s11, t3, 20
                  nop
                  srli         s11, t3, 15
                  slt          a0, sp, s10
                  sltiu        a6, gp, 465
                  xor          a6, ra, t0
                  addi         t1, t1, 752
                  nop
                  sra          a4, a0, s1
                  ori          a6, t6, -763
                  slti         s10, s5, 72
                  sub          t5, a3, t0
                  srl          t5, ra, a5
                  srai         s4, s3, 30
                  srl          s2, a2, ra
                  addi         s2, s10, 1399
                  and          t6, s3, t4
                  sll          tp, tp, tp
                  sub          a1, s3, t4
                  and          sp, s9, s7
                  srai         sp, ra, 12
                  srl          s5, s9, tp
                  and          s5, s3, gp
                  slti         s4, a1, 934
                  nop
                  sra          a1, t4, tp
                  andi         a6, t6, 743
                  srai         s4, t5, 7
                  xor          s11, a1, s2
                  add          t1, gp, a6
                  sltiu        s10, s0, 263
                  ori          a4, s6, -1755
                  slti         a2, s3, -1716
                  xor          s0, a4, s5
                  slt          a1, tp, t5
                  lui          s10, 948828
                  and          a6, s1, t1
                  ori          s4, t3, 1630
                  andi         a0, t6, -285
                  srai         s5, s3, 15
                  srai         a6, a2, 11
                  andi         s0, s9, 2007
                  srl          gp, s11, s3
                  srl          a1, s0, s9
                  srl          ra, a4, s3
                  lui          s9, 364649
                  slli         t3, s6, 1
                  sltu         s10, sp, t2
                  srli         s9, t1, 25
                  or           ra, t4, a6
                  srl          s2, s3, t5
                  sub          a4, s11, zero
                  nop
                  and          s3, ra, tp
                  srli         sp, a5, 25
                  andi         t1, t0, -345
                  xori         t5, a3, 508
                  lui          t4, 912283
                  and          s10, a3, sp
                  sll          s9, sp, s0
                  nop
                  nop
                  slt          gp, a7, t5
                  sra          s9, sp, s7
                  slti         a5, a1, 764
                  srai         s2, s9, 24
                  xor          t1, gp, t6
                  xori         s5, t3, 1732
                  slt          t3, s6, s9
                  sll          t5, t5, s4
                  and          tp, ra, t1
                  sub          a2, a6, sp
                  sltiu        s7, s5, -1335
                  sltiu        sp, gp, -119
                  sra          s10, s2, t3
                  srli         t6, s11, 22
                  slti         s4, a1, 1910
                  andi         t6, s1, 1437
                  srai         s3, tp, 9
                  xor          ra, s4, t2
                  sra          t0, t0, a3
                  auipc        a4, 844437
                  add          s9, s9, a4
                  slt          ra, t3, a6
                  xor          sp, s1, s6
                  sltiu        s11, ra, 2037
                  srli         t1, t0, 7
                  srl          a5, a6, t0
                  srai         sp, tp, 29
                  auipc        t4, 394779
                  srai         s7, gp, 28
                  nop
                  add          t4, tp, t5
                  ori          a2, s2, -1658
                  or           a2, a6, ra
                  srai         sp, sp, 14
                  srai         s11, t6, 7
                  sub          a1, a7, t5
                  sra          s3, t4, a0
                  sra          t5, a5, s3
                  slli         a1, t4, 1
                  and          a5, s6, a1
                  andi         t1, a0, 279
                  xori         s5, a5, -1893
                  srli         a0, s1, 14
                  slt          a6, s5, a2
                  sra          a3, a7, s9
                  ori          sp, t1, -1641
                  sltu         s10, t5, a5
                  auipc        t3, 824861
                  lui          t5, 552456
                  sll          a3, t2, s6
                  xori         t6, t5, 429
                  lui          t5, 796853
                  sltu         t5, zero, s2
                  sltiu        s2, a1, 458
                  lui          ra, 310521
                  andi         a3, sp, -1873
                  lui          gp, 395496
                  sra          t5, s0, s0
                  srl          tp, s11, s7
                  and          s4, t3, a4
                  add          a3, a5, t6
                  sra          s3, s7, a2
                  nop
                  srl          s9, sp, s9
                  srli         t5, t2, 12
                  xor          a6, a5, a6
                  slli         t1, s1, 9
                  sltu         s9, s2, sp
                  xor          s10, s5, s7
                  and          s2, zero, s8
                  ori          s6, s9, 1277
                  xor          sp, t1, s11
                  nop
                  sra          a4, gp, t0
                  srli         t2, a4, 7
                  nop
                  xori         tp, s6, 27
                  sra          s7, a2, a7
                  srl          s4, t3, a7
                  or           sp, a3, s1
                  andi         s6, s11, 944
                  xor          t6, s4, t0
                  slli         a0, t1, 13
                  andi         a0, tp, 617
                  sll          gp, s0, a1
                  nop
                  lui          tp, 465863
                  lui          s0, 600248
                  andi         s10, zero, 540
                  srai         ra, t0, 14
                  xor          t6, s0, s3
                  xori         t6, a5, -146
                  sll          s7, zero, t3
                  or           tp, a6, t4
                  or           s4, s3, s1
                  srl          a6, s6, a3
                  sltu         t6, t2, a2
                  lui          s2, 535587
                  lui          t5, 83238
                  srai         s5, s4, 8
                  sub          s11, t5, s10
                  andi         t1, a2, -593
                  sltiu        tp, t5, 368
                  and          s0, a4, a2
                  xor          s6, t1, ra
                  sltiu        s4, s11, 880
                  sra          s11, s0, t6
                  nop
                  add          t4, s5, s0
                  sltu         zero, s2, a5
                  xori         t5, s3, -1678
                  srai         s10, s6, 24
                  and          s5, s6, t5
                  add          t6, s1, t3
                  ori          sp, a7, -236
                  xor          a3, a0, tp
                  srai         t6, a3, 22
                  slti         a0, s2, 843
                  xor          s10, t5, a7
                  sltiu        t6, a1, 1601
                  srli         t3, s2, 7
                  xor          zero, ra, s3
                  slt          sp, t4, tp
                  sltu         t2, s8, s2
                  slti         sp, a3, -190
                  lui          gp, 219525
                  slti         t3, s9, 972
                  and          a1, zero, t5
                  lui          s2, 491728
                  add          a5, a5, a5
                  sll          t5, s10, sp
                  slti         a3, a2, -1294
                  sra          s9, t0, a3
                  slti         a0, s7, 802
                  slti         t2, tp, -318
                  and          s11, s2, s2
                  slti         sp, s0, -950
                  or           t5, s9, s10
                  or           a6, t0, a2
                  slli         s3, t6, 30
                  xori         s0, gp, 1428
                  auipc        t2, 193451
                  lui          a5, 395794
                  andi         a5, sp, -1893
                  slti         s3, a2, 330
                  auipc        s2, 1029584
                  sltu         a2, t6, zero
                  sltu         s0, a4, a0
                  sltiu        t2, a3, -309
                  add          sp, t1, s1
                  srl          a0, t1, a5
                  lui          a6, 192372
                  add          tp, ra, s11
                  slli         t2, t3, 0
                  sltu         t2, t3, t2
                  xor          t2, a3, sp
                  sltu         t6, t0, ra
                  xori         a1, gp, 546
                  add          s5, a0, s10
                  sra          t5, s1, s4
                  auipc        s2, 862466
                  sltiu        a6, a6, -33
                  nop
                  sra          s2, tp, t2
                  andi         ra, t4, 1710
                  sll          s9, t0, a1
                  add          s11, t5, t5
                  and          t1, s1, a4
                  sltiu        t1, t2, 837
                  and          s10, gp, t1
                  auipc        t0, 659622
                  addi         t1, t3, 1706
                  and          t3, t2, a1
                  slli         s11, t6, 27
                  srl          t3, t0, s11
                  or           s6, a5, a2
                  slt          t0, a3, t1
                  lui          zero, 546092
                  sltu         a3, t4, a4
                  slt          s9, gp, a6
                  lui          zero, 817557
                  sltu         a3, ra, a5
                  srai         s11, a1, 10
                  nop
                  ori          s11, t3, 1983
                  add          s4, ra, a3
                  add          gp, s9, a6
                  nop
                  srai         a3, s9, 4
                  xor          a6, s10, tp
                  andi         s10, s2, -1776
                  auipc        s2, 993293
                  srli         a5, s10, 6
                  slt          a4, t0, s0
                  andi         gp, a3, -725
                  srai         t2, t1, 26
                  or           t1, t3, t3
                  nop
                  nop
                  sltu         s7, a5, s0
                  auipc        zero, 416339
                  sub          tp, s11, ra
                  xor          t4, a6, t6
                  auipc        a1, 49239
                  addi         t1, a7, -750
                  or           s4, t3, s6
                  sltu         a3, s10, s5
                  srai         s5, s9, 14
                  slti         s5, s7, 1458
                  sll          t2, t4, s11
                  nop
                  xori         t1, a4, 1399
                  srai         a1, sp, 3
                  add          s2, a0, a1
                  auipc        ra, 241028
                  xori         s9, s10, 1165
                  xor          s4, a5, t4
                  slti         t0, a4, 1830
                  slli         a1, s1, 7
                  xori         ra, zero, 531
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           t0, 0x80000000
                  li           t2, 0xffffffff
                  li           a0, 0xffffffff
                  li           s11, 0x80000000
                  li           a6, 0x80000000
                  li           t4, 0x80000000
                  li           a1, 0xffffffff
                  li           s2, 0x0
                  li           t3, 0x80000000
                  nop
                  sub          a6, t4, t3
                  add          t0, t0, t4
                  lui          a6, 949238
                  nop
                  lui          s11, 1002804
                  nop
                  add          a0, a6, t2
                  sub          s11, s2, t0
                  auipc        a1, 923152
                  lui          a1, 160012
                  nop
                  lui          tp, 506947
                  addi         a1, tp, 917
                  add          t4, a0, tp
                  addi         s2, s11, 1462
                  addi         tp, a1, 1227
                  sub          tp, s11, t3
                  nop
                  addi         a1, a6, 1018
                  lui          a0, 1027320
                  sub          a6, t2, a1
                  lui          s2, 630504
                  lui          t2, 565790
                  sub          s2, a1, t4
                  addi         s2, a1, -302 #end riscv_int_numeric_corner_stream_9
                  ori          s3, tp, 1192
                  slti         t5, t0, 1174
                  sll          tp, s7, zero
                  or           a0, t3, t4
                  nop
                  srli         zero, a5, 4
                  slt          s11, s1, s1
                  slt          a6, a6, s6
                  slt          t1, a6, t4
                  or           s3, t2, s11
                  addi         t6, ra, 981
                  or           a3, a2, s6
                  slli         a1, a6, 3
                  srli         a3, a0, 22
                  slli         sp, s3, 22
                  srai         gp, a3, 30
                  and          s5, a3, a1
                  add          t2, ra, tp
                  add          sp, s2, zero
                  sra          s5, t6, s10
                  sra          tp, a6, t5
                  sltiu        s2, a0, 540
                  sll          s9, zero, s2
                  sra          a3, a2, s9
                  sll          t3, t2, s1
                  sub          s2, s11, s6
                  sra          zero, sp, s6
                  or           ra, s4, s2
                  and          a5, s3, s3
                  add          sp, a5, sp
                  xori         s10, s2, 1937
                  sub          a5, tp, s0
                  andi         t4, s6, -889
                  lui          t1, 955785
                  add          sp, s3, s6
                  slti         a6, s6, -448
                  xor          a3, a0, tp
                  slli         s9, tp, 17
                  and          t0, s3, s5
                  auipc        s5, 442133
                  ori          a0, t4, 1952
                  sra          t1, a2, gp
                  xor          t6, a4, t6
                  lui          s3, 947992
                  or           s6, s9, s4
                  xori         a3, s1, 1696
                  sll          t2, s11, s4
                  sll          s10, tp, s3
                  srli         s9, s10, 15
                  slt          s5, s0, a3
                  slli         t3, a4, 27
                  xor          t6, s4, s3
                  or           tp, t4, s0
                  lui          gp, 341163
                  slli         s9, s3, 10
                  slli         s5, zero, 31
                  and          a2, s4, s9
                  lui          t6, 94800
                  sub          a4, t0, s2
                  lui          s2, 400490
                  nop
                  xori         t3, s10, -58
                  sub          t3, s5, s3
                  slli         a1, a3, 28
                  srai         t5, t0, 16
                  sltiu        s6, s1, 345
                  sra          t5, zero, tp
                  xor          t2, t0, gp
                  slti         gp, s5, -1919
                  slli         s7, t2, 3
                  nop
                  xori         a4, s5, -2005
                  xori         t4, t0, 821
                  slt          t2, t6, t1
                  slti         a3, t3, 384
                  srai         gp, a4, 3
                  sll          tp, s3, s6
                  and          s2, a1, a0
                  andi         t5, s1, -1484
                  add          t2, tp, s8
                  slti         a0, t6, 57
                  slti         t4, s5, -1695
                  lui          a2, 884024
                  sra          t2, s7, sp
                  sra          a4, a6, a2
                  auipc        zero, 373632
                  xor          s9, a5, s2
                  lui          s4, 17653
                  sll          a2, s3, a1
                  sll          s0, a1, s0
                  auipc        ra, 212018
                  slli         a4, s4, 11
                  ori          s3, t5, 199
                  srai         s0, a2, 6
                  and          a6, s3, a7
                  addi         s6, t2, 1999
                  andi         t2, s10, -1868
                  and          s4, s8, s4
                  sub          gp, s4, a4
                  sra          s7, a4, s11
                  sub          s9, a5, s5
                  sub          sp, t0, s2
                  xor          s2, s6, s3
                  auipc        s6, 62420
                  sub          t6, t0, s10
                  sll          s5, s5, a2
                  add          a2, tp, s8
                  addi         a3, a2, 825
                  srl          a3, s7, a3
                  sub          a3, s5, gp
                  sll          t5, ra, a4
                  xori         t1, ra, -1535
                  slt          s7, a7, sp
                  xor          ra, t2, s8
                  slt          a3, t6, s11
                  add          a5, a0, a2
                  add          t6, a2, a6
                  sub          s6, tp, zero
                  slli         s3, s4, 14
                  addi         a0, s11, -187
                  nop
                  xori         a2, t2, 1600
                  srai         s11, a2, 29
                  sll          tp, s1, t4
                  and          a0, a7, t2
                  ori          t4, t3, -699
                  ori          s9, s4, 1740
                  xori         ra, s0, 1421
                  sll          tp, s4, sp
                  srai         a1, a7, 4
                  sltu         s5, gp, s7
                  xori         gp, s9, 19
                  sltiu        a6, ra, -2037
                  sub          s10, s2, s10
                  andi         s11, s3, -1573
                  xori         a1, s3, 503
                  nop
                  andi         t5, t3, 1751
                  auipc        t0, 792796
                  addi         a5, a4, -1791
                  sltiu        tp, a2, -42
                  srli         s2, a0, 16
                  or           s3, s7, a2
                  lui          s3, 333061
                  srl          s6, s2, s1
                  slti         s7, a0, -842
                  addi         a6, t4, 1014
                  auipc        t0, 238742
                  srli         t3, a4, 12
                  auipc        a6, 510122
                  sltiu        s0, s5, 655
                  xori         t4, a7, -1788
                  sltiu        t4, t2, -887
                  nop
                  sltu         s11, t3, s11
                  sra          s11, a2, s7
                  sll          a6, s7, a2
                  slli         gp, a2, 22
                  ori          gp, t5, 414
                  auipc        s6, 972919
                  slt          gp, s7, ra
                  sltiu        s4, t2, -1546
                  srl          s9, a7, t6
                  sra          zero, a2, s8
                  nop
                  andi         a2, a4, 1631
                  sra          t3, ra, ra
                  xori         s7, t4, -620
                  auipc        a2, 720838
                  auipc        t5, 265701
                  sltu         a2, a1, gp
                  srl          s7, ra, a4
                  sltu         t0, gp, a3
                  sll          a5, t3, zero
                  srli         s3, t2, 14
                  nop
                  auipc        s3, 837243
                  nop
                  slti         a4, a3, 158
                  sll          s6, s1, s3
                  and          t2, t0, t5
                  sltiu        s3, s0, -868
                  srli         s10, a4, 28
                  sltiu        a3, s8, 1863
                  sltu         s9, zero, a4
                  sra          a0, s11, s11
                  auipc        s3, 821241
                  xor          s7, a0, s4
                  sll          t4, s3, s8
                  sra          s10, t4, s9
                  slli         a0, t4, 24
                  lui          zero, 15389
                  sltiu        s5, t6, 2029
                  sltu         t4, a6, a1
                  sub          s4, s6, s9
                  ori          s2, ra, 179
                  sll          a6, a1, a5
                  and          t0, t2, a3
                  ori          s2, s3, -1490
                  addi         a2, s6, 804
                  andi         sp, s8, -82
                  or           a2, a5, s1
                  slt          s7, s6, zero
                  addi         t1, s1, 779
                  auipc        a3, 447908
                  slli         s11, s2, 26
                  sltu         t4, s6, a6
                  ori          t1, s4, 1904
                  slt          s9, gp, s3
                  nop
                  or           s0, t4, a2
                  slt          t6, s8, zero
                  sltu         s11, s5, gp
                  sub          zero, t2, t1
                  sll          s11, a2, s4
                  and          zero, s3, s8
                  sub          s7, t0, a2
                  srli         s5, a2, 26
                  slli         s4, a5, 31
                  and          a1, s11, t3
                  xori         s10, s3, 119
                  srl          gp, t4, sp
                  or           t0, zero, sp
                  srli         t1, ra, 13
                  srli         s6, t3, 28
                  and          ra, t0, t2
                  sll          s11, s9, s8
                  sltiu        t3, s10, 1946
                  lui          t1, 838758
                  sltu         s0, t6, a1
                  sltiu        s3, tp, -1580
                  sra          t3, s1, a4
                  xor          t6, s5, s8
                  auipc        t2, 234544
                  sub          a6, sp, s1
                  sltu         s9, s11, s4
                  slti         a1, zero, -1816
                  sltiu        a5, t4, -1047
                  and          t4, s0, gp
                  sltu         ra, a1, a5
                  sra          a4, s7, s4
                  slt          s9, sp, t4
                  slli         t2, s7, 15
                  slli         a3, s9, 7
                  addi         s2, a0, 1820
                  and          s0, s6, s11
                  sra          t0, s7, s3
                  addi         a0, a3, 3
                  srli         s4, t2, 22
                  slli         a1, s3, 11
                  andi         sp, s1, -1890
                  sltu         a5, a5, s1
                  srli         t5, t4, 31
                  slt          tp, ra, s4
                  nop
                  lui          zero, 581905
                  slli         gp, s6, 19
                  ori          t0, s5, 344
                  sltiu        s3, s9, -666
                  srl          s5, s4, s4
                  xor          a0, tp, zero
                  srai         a0, t4, 9
                  auipc        t5, 77675
                  or           s2, t0, a3
                  srai         a5, t1, 30
                  slli         s10, s7, 25
                  lui          a6, 924124
                  xori         s0, s1, -149
                  sltiu        t0, a5, -1208
                  add          a6, t5, s5
                  srli         a6, a5, 10
                  xori         s10, t0, -73
                  and          a3, s8, s5
                  and          t6, s9, t1
                  ori          s0, tp, 28
                  srli         t5, s5, 30
                  or           s5, s10, t3
                  sltiu        zero, s5, 638
                  sltu         zero, s4, s0
                  srl          t2, sp, a5
                  and          s10, s10, ra
                  andi         s2, a5, -429
                  sltiu        ra, s5, 1382
                  sltiu        ra, t5, -810
                  ori          s7, a5, -1988
                  xor          s0, a5, s0
                  sll          t5, t6, t0
                  sltiu        a6, s2, -213
                  or           s0, s0, s2
                  andi         tp, t5, 1675
                  auipc        t1, 856909
                  andi         t0, a7, 1473
                  slli         a6, s4, 24
                  srl          s11, s3, zero
                  nop
                  xori         t4, a1, -728
                  srai         tp, a1, 8
                  xori         s4, s4, -1238
                  srai         ra, a1, 30
                  slti         s11, s5, -190
                  srli         t2, zero, 19
                  nop
                  xor          t5, a0, s11
                  srl          tp, a2, s1
                  sltiu        gp, sp, 1293
                  srli         t1, t5, 18
                  sll          s0, a7, t4
                  srli         s11, s1, 11
                  slt          t0, s7, a0
                  ori          a1, a4, 276
                  auipc        a2, 280103
                  sltiu        s3, a4, -1036
                  sra          t5, sp, gp
                  srli         t6, s1, 17
                  srai         s7, t0, 11
                  sltiu        t0, t6, 288
                  lui          s11, 224716
                  lui          a1, 545936
                  sltiu        t5, s9, 2036
                  sltiu        tp, t5, 1401
                  slti         t4, a0, -993
                  lui          t1, 639024
                  xor          a5, s3, t3
                  xori         sp, a2, -1691
                  lui          ra, 256223
                  slti         a1, t1, 1957
                  ori          s6, t2, -1146
                  and          t5, t3, s11
                  or           ra, t4, a0
                  srl          s3, a0, gp
                  ori          t0, s5, -57
                  andi         gp, a4, -1758
                  sra          t2, a3, t6
                  sll          s2, s5, a2
                  srli         t6, zero, 26
                  srl          s0, a6, s4
                  lui          t3, 733277
                  sll          t5, t1, s2
                  slli         s11, s5, 21
                  nop
                  srli         s3, a1, 20
                  srai         sp, s0, 6
                  sll          a3, tp, s1
                  slli         s4, s3, 29
                  srl          s11, a6, a0
                  xor          a6, s1, t5
                  or           s6, ra, a1
                  srl          a5, a5, s11
                  srai         a2, t6, 5
                  xor          s11, s3, s5
                  ori          s9, t5, -1161
                  ori          s10, s2, -276
                  add          zero, t0, zero
                  srli         sp, t1, 2
                  addi         s5, s4, -1049
                  slt          a6, t5, s9
                  nop
                  sra          a1, a0, s9
                  xor          s0, a7, zero
                  slti         a2, s10, -1214
                  andi         a1, s8, -1711
                  sltiu        s2, a0, -143
                  xori         s6, t4, -1700
                  sll          t2, a0, s11
                  sub          t6, t4, s10
                  slt          s3, s6, a3
                  sltiu        s6, t0, -1341
                  xori         a1, a7, -2016
                  nop
                  ori          a5, s2, -1134
                  srai         t1, a3, 30
                  sltiu        a1, s1, -1255
                  sltiu        t0, gp, -633
                  andi         s6, a0, -832
                  sltu         t0, gp, s5
                  slti         a4, t6, 85
                  sll          tp, zero, s11
                  or           s3, sp, a3
                  slt          a3, t6, t0
                  srai         s9, s0, 11
                  sltiu        s3, tp, -1195
                  auipc        gp, 828040
                  nop
                  srli         a3, a6, 12
                  addi         zero, s10, -613
                  sll          a1, t6, s2
                  xori         s0, a4, 2037
                  sltu         t5, t4, t1
                  andi         s2, zero, -321
                  andi         t3, a6, 238
                  lui          s4, 754160
                  srai         s7, s8, 0
                  xor          s6, s10, s8
                  sltu         s9, s1, a7
                  srl          a4, t6, s3
                  srai         s9, t3, 16
                  auipc        t5, 599469
                  slti         s4, t5, -1380
                  and          sp, t2, a2
                  srai         t5, a3, 27
                  auipc        a6, 238500
                  andi         a4, t5, 867
                  auipc        a4, 990064
                  xor          tp, s1, s1
                  sltiu        s0, sp, 1196
                  sll          t1, s11, s6
                  sra          gp, a7, s7
                  srl          s6, t0, a3
                  lui          a4, 872127
                  slti         tp, t5, 1849
                  srl          tp, zero, t2
                  andi         sp, s8, 1957
                  sltiu        s3, a7, -527
                  and          tp, t2, s6
                  slli         s0, a7, 14
                  slti         t1, s0, -1863
                  or           s4, s4, s4
                  sltiu        s7, ra, 893
                  slti         t4, tp, 1856
                  slli         s6, t4, 9
                  and          s5, s4, a1
                  nop
                  srl          t6, t4, a3
                  auipc        gp, 655368
                  srai         s7, s9, 27
                  sltiu        tp, a2, -1832
                  lui          t5, 74703
                  xori         t4, t3, 723
                  and          gp, s10, a4
                  add          a3, ra, a2
                  srli         t0, s9, 23
                  andi         a5, a5, 705
                  and          t3, s9, tp
                  add          s9, t1, s2
                  add          t1, t4, a2
                  sll          zero, a6, a7
                  srai         s4, a6, 7
                  slti         t0, s5, 1212
                  srl          a0, s2, sp
                  addi         tp, t0, -2028
                  or           t3, zero, sp
                  srl          sp, s0, a2
                  auipc        s10, 627187
                  ori          t0, gp, -1315
                  sll          a5, t6, s10
                  xor          s0, zero, s7
                  slli         gp, s1, 27
                  srai         a3, t4, 14
                  ori          s4, ra, 1038
                  auipc        ra, 88719
                  slli         s10, a4, 26
                  slt          s5, s10, s9
                  sltu         t4, s3, s5
                  auipc        s6, 586569
                  add          t5, ra, a4
                  srli         t5, t1, 15
                  sltiu        s5, t2, -1207
                  lui          t0, 696571
                  slti         s3, s1, -701
                  or           t6, tp, a4
                  auipc        a1, 44438
                  srai         t4, s2, 16
                  srai         a6, sp, 6
                  sltu         t3, s6, ra
                  slt          s3, t6, s9
                  slti         s11, tp, -1512
                  sltiu        s2, a2, -245
                  auipc        tp, 352255
                  sll          a1, s4, t4
                  sltiu        a1, s1, -1423
                  slt          gp, a7, s4
                  srli         t6, t1, 28
                  xori         s2, s7, 1195
                  xori         t3, t2, -706
                  nop
                  xori         s10, s2, -1606
                  sub          s0, s0, s7
                  sub          s9, s10, t6
                  xor          tp, a7, s9
                  andi         ra, a4, 1981
                  addi         s4, a7, 1957
                  auipc        t2, 62226
                  xor          sp, a0, s1
                  lui          zero, 1039340
                  auipc        sp, 265376
                  sll          s0, t1, s10
                  sub          s11, s3, a4
                  sltu         t3, s3, a5
                  sll          tp, s8, t2
                  sra          t6, s11, s10
                  add          ra, s10, ra
                  sra          s6, a1, s0
                  slli         s4, t4, 27
                  srli         a6, t1, 24
                  xor          s7, gp, t2
                  ori          a5, a4, -1446
                  add          t3, t1, t6
                  and          a5, s4, a6
                  sra          tp, a6, gp
                  srai         t2, sp, 22
                  andi         s4, a6, -407
                  sra          a3, s10, tp
                  lui          a5, 525413
                  sub          s0, sp, t4
                  add          t3, s11, sp
                  slli         s4, s8, 22
                  and          gp, a7, a5
                  lui          a5, 75127
                  andi         s4, s7, 1445
                  srli         s11, s9, 9
                  srli         t6, sp, 2
                  slti         s4, a3, 1555
                  nop
                  sub          s7, s3, t6
                  nop
                  andi         s0, s11, 2030
                  srl          s4, a7, s6
                  xor          s7, s0, s3
                  addi         s9, s1, -666
                  slli         t2, sp, 21
                  and          a5, tp, s5
                  srli         a4, t3, 2
                  addi         tp, sp, 425
                  andi         s2, sp, 1560
                  andi         tp, s0, -862
                  andi         a4, s11, 1766
                  sll          gp, t1, s0
                  add          s6, s4, s9
                  slli         t2, s1, 20
                  lui          t0, 898241
                  xori         t4, s0, -1680
                  andi         zero, t6, -1041
                  sra          s4, s4, zero
                  sub          a2, a7, s7
                  lui          t0, 573734
                  ori          s9, s4, -903
                  xor          zero, s4, t6
                  srli         sp, s1, 22
                  add          t0, t4, t2
                  andi         s10, t2, -1923
                  sltiu        s0, gp, -1772
                  srai         s6, s8, 23
                  add          s9, sp, s4
                  sltiu        zero, s8, -234
                  lui          s9, 822585
                  lui          a0, 46544
                  xor          s10, sp, a2
                  nop
                  add          zero, a3, s0
                  nop
                  andi         a3, zero, 1202
                  auipc        s6, 254967
                  sll          a2, s10, s6
                  xori         s2, a6, -296
                  srai         sp, a1, 18
                  slli         s9, ra, 3
                  slti         a0, zero, 19
                  slti         tp, s10, 720
                  xor          s5, a6, a0
                  srli         s2, t2, 6
                  add          s10, s8, gp
                  srli         t6, sp, 8
                  add          tp, ra, t6
                  srl          s3, s4, a2
                  add          a3, a2, sp
                  ori          s3, t2, -917
                  xor          gp, gp, a2
                  slli         s3, t3, 27
                  andi         s7, s9, -779
                  sltu         s9, s9, t6
                  lui          t4, 728782
                  sltu         t5, s10, t5
                  slti         a0, a2, -936
                  srai         ra, s2, 0
                  add          s3, s7, s0
                  nop
                  auipc        a2, 13891
                  srli         s2, s9, 7
                  xor          s7, s3, t3
                  slli         s11, sp, 10
                  addi         s7, t6, -1581
                  lui          s9, 1031218
                  and          s4, s11, a7
                  and          t3, t6, s4
                  srli         s11, a7, 14
                  andi         sp, sp, 1376
                  addi         t1, t5, 1376
                  sltiu        t4, a0, -1070
                  slt          t6, s7, a4
                  addi         a5, a7, -1315
                  srai         ra, s4, 21
                  slti         s4, s0, -714
                  slli         s4, s11, 0
                  sltiu        s11, s8, 1288
                  andi         s5, s11, -1722
                  and          t2, t4, s6
                  sub          a2, t0, ra
                  sra          a1, s2, s11
                  and          t5, t3, t5
                  andi         a0, s11, 706
                  sltu         a5, s9, ra
                  add          s0, t2, s1
                  auipc        t3, 474813
                  ori          t5, s5, -1238
                  add          s4, a4, a2
                  sub          a6, s5, a3
                  srl          a1, s4, ra
                  auipc        a2, 280822
                  srl          s11, s6, a3
                  sll          a1, t0, a6
                  addi         a5, t2, -2034
                  or           a1, s1, t2
                  ori          a6, s8, -1695
                  and          a3, s4, zero
                  sll          a6, s1, zero
                  andi         s3, s8, -1295
                  sra          a6, s5, a0
                  sltu         sp, s6, t5
                  nop
                  add          s4, a1, a0
                  sll          a2, s9, s3
                  addi         s5, s8, 1352
                  andi         ra, s3, 796
                  and          a0, s5, s6
                  add          s7, s7, sp
                  srai         s5, t6, 3
                  ori          ra, s10, 1625
                  sll          t3, s8, ra
                  sra          t5, s9, a6
                  addi         t4, s3, -1142
                  lui          gp, 452245
                  sub          tp, s0, s2
                  and          s9, s8, sp
                  or           s3, a7, t4
                  sltu         t4, s7, a7
                  sltu         a4, a1, s1
                  slli         s6, tp, 26
                  sltu         t3, t2, t5
                  srl          t1, s0, tp
                  sub          t1, s0, s5
                  sll          a5, s8, t1
                  nop
                  add          a6, a7, a1
                  andi         a5, s9, 1146
                  srl          s10, a1, s0
                  slli         ra, a2, 14
                  xor          s2, s9, s11
                  ori          a3, tp, -42
                  srl          sp, a5, s2
                  xor          s7, tp, sp
                  sub          tp, t6, s7
                  xori         s2, zero, -1642
                  xori         s9, t1, -809
                  sra          s3, t5, s4
                  sll          gp, a7, sp
                  auipc        s0, 892484
                  sltiu        t3, gp, -2005
                  sub          s3, s3, a1
                  sltu         a5, zero, t3
                  andi         a6, s3, -1664
                  lui          a1, 933685
                  slt          s4, t2, s9
                  ori          gp, a1, -180
                  add          a5, s1, s4
                  slt          s7, s2, a4
                  auipc        a6, 104786
                  addi         t1, a5, -1727
                  xor          t2, s2, a3
                  sra          zero, a7, a4
                  or           a4, t0, s11
                  slli         t5, a3, 8
                  nop
                  sltiu        s4, s2, 512
                  xor          s4, t0, s2
                  nop
                  xori         a0, a3, -699
                  slt          a5, a1, t4
                  slti         s6, s7, -422
                  and          s11, s5, t2
                  sll          a0, s11, s1
                  sltiu        sp, a2, 1904
                  sltu         t5, s6, t5
                  sll          s0, s2, s0
                  andi         t2, a2, -199
                  slt          s3, t6, a2
                  and          s2, s1, t0
                  sub          s3, tp, t1
                  and          a6, ra, s0
                  and          s5, s10, s7
                  srl          s5, s5, a3
                  or           ra, s2, a7
                  sub          tp, s5, s8
                  srai         t3, s5, 14
                  sra          a5, gp, s5
                  sra          t1, s5, s5
                  sub          s11, a7, a1
                  sra          s6, s9, s9
                  srl          s2, s0, gp
                  or           t2, t2, s8
                  lui          t4, 418798
                  auipc        a4, 657974
                  xor          t1, s11, gp
                  auipc        a2, 753509
                  add          a1, s2, tp
                  nop
                  sra          sp, s11, s5
                  and          t2, s7, a2
                  ori          a1, s4, 1193
                  lui          a1, 155884
                  slt          gp, t5, ra
                  andi         gp, t5, -1011
                  auipc        t6, 551555
                  sub          t5, a2, s6
                  addi         t4, t4, 1721
                  lui          s10, 702669
                  auipc        s2, 537432
                  or           a0, s10, t4
                  or           a6, s9, t0
                  sltiu        s11, s1, -1760
                  sltiu        s10, s4, 1668
                  addi         a1, gp, -1941
                  sltiu        t5, zero, -1654
                  andi         a4, a2, 1314
                  addi         a5, gp, 372
                  and          s7, s4, s0
                  xor          t3, zero, a5
                  or           t3, tp, a6
                  add          s5, gp, t4
                  li           s6, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           a4, 0x7f0581a0
                  li           s11, 0xb516141c
                  li           s3, 0x0
                  li           s2, 0xffffffff
                  li           gp, 0x80000000
                  li           t4, 0xffffffff
                  li           t5, 0xffffffff
                  li           a0, 0x0
                  li           s9, 0x0
                  auipc        gp, 342375
                  addi         s6, a4, 965
                  nop
                  add          t4, s2, a0
                  lui          s3, 153896
                  add          gp, a4, s3
                  add          gp, t4, t5
                  lui          gp, 811253
                  add          t5, s2, s6
                  sub          s2, t5, a0
                  sub          a4, s6, t4
                  sub          s3, gp, a4
                  nop
                  nop
                  addi         s9, s6, 1057
                  nop
                  sub          t4, a0, s2
                  auipc        s9, 413814
                  lui          gp, 701754
                  lui          s3, 907364 #end riscv_int_numeric_corner_stream_11
                  sra          t1, s0, a5
                  or           t2, a3, a6
                  sra          a6, t0, a5
                  addi         s9, s3, 1048
                  lui          s10, 951283
                  srai         s5, gp, 25
                  srl          t0, t6, s0
                  srai         a1, a5, 1
                  addi         a5, a2, 503
                  srai         a4, s8, 10
                  srai         t3, a0, 30
                  slti         s9, t0, -1242
                  sltiu        s9, s10, -248
                  add          a5, a3, a2
                  ori          t1, a6, 1236
                  ori          a3, s3, 164
                  or           a6, a3, s1
                  srai         t3, s0, 6
                  sltu         s2, s1, s8
                  slt          a5, s9, sp
                  sub          s2, s8, t3
                  sub          s4, s0, a0
                  srl          s10, ra, s1
                  srai         s6, s11, 10
                  sltiu        t6, s5, -228
                  srli         s6, a1, 12
                  nop
                  slti         a2, s1, 484
                  xor          s4, s11, s10
                  andi         t0, a5, -57
                  sll          a2, a6, s10
                  sub          zero, s9, t6
                  add          t5, sp, t6
                  add          a0, a1, s6
                  add          sp, t2, t4
                  xor          a3, a5, sp
                  sll          s0, s6, zero
                  and          a0, s2, t4
                  or           t6, a1, s1
                  xor          tp, a7, t5
                  add          a3, s1, tp
                  ori          a3, s11, 1078
                  slti         a0, gp, -1996
                  or           t5, a1, t0
                  slt          s0, s4, a7
                  srai         a6, zero, 14
                  addi         s6, a2, -1007
                  andi         a0, s11, -253
                  sll          ra, t5, a7
                  xor          a0, a6, s1
                  andi         t0, s2, -1309
                  ori          a1, tp, -436
                  add          a3, s6, s8
                  or           s2, s8, gp
                  sra          t1, ra, a1
                  slli         t2, a3, 15
                  slli         s3, a5, 22
                  sltu         s2, gp, s1
                  sra          s11, s3, s7
                  or           s2, s6, a2
                  ori          sp, s9, -1442
                  or           a3, a1, s9
                  lui          t6, 519263
                  sub          s2, s9, s3
                  and          s10, a7, t1
                  and          ra, tp, s8
                  nop
                  auipc        ra, 558941
                  srli         s2, s10, 27
                  srli         s9, a7, 2
                  sra          s7, t3, s4
                  sltu         s9, t3, s6
                  slli         sp, s0, 19
                  lui          s9, 956264
                  or           s9, tp, s1
                  ori          a6, s0, 1625
                  srli         t2, s6, 24
                  or           t3, t0, zero
                  auipc        sp, 548036
                  andi         s5, t6, 1953
                  andi         t6, s4, 1227
                  ori          s0, s3, -158
                  andi         t6, t2, 1120
                  slti         a2, a3, 1007
                  srai         s0, t2, 23
                  slli         tp, s10, 12
                  slli         a6, t2, 2
                  nop
                  srai         s0, s11, 4
                  slli         a3, s10, 23
                  slti         a4, s2, -1912
                  srli         t0, t6, 1
                  add          s10, a7, t1
                  srai         a6, s0, 10
                  srli         a6, a7, 14
                  slti         t5, s0, -414
                  auipc        t1, 970222
                  slti         s11, t3, 198
                  auipc        s7, 926264
                  slti         a4, s4, -569
                  xor          t4, a5, a0
                  sra          a1, ra, s8
                  slti         t1, t3, -193
                  sll          zero, a1, s6
                  ori          gp, s2, 42
                  slli         a4, a4, 9
                  sll          t6, gp, a7
                  add          a4, a4, t3
                  xor          s5, t2, gp
                  sltu         tp, t5, a4
                  slli         s6, s3, 15
                  sltu         s3, t1, a3
                  xori         t6, a6, -644
                  sll          s7, s1, t0
                  andi         t2, s0, -187
                  srai         a6, a7, 19
                  srai         s4, s7, 30
                  auipc        s10, 911273
                  srli         zero, s0, 9
                  or           a0, t4, t3
                  and          t0, tp, s11
                  sub          zero, t6, t3
                  sltiu        s2, t0, -1319
                  and          t0, t2, t5
                  srai         s10, s0, 1
                  sra          t1, sp, a6
                  ori          s9, gp, 488
                  srli         a3, gp, 20
                  andi         t0, a5, -919
                  xor          zero, s4, a3
                  auipc        t5, 579512
                  nop
                  srai         s10, ra, 22
                  sltiu        tp, s7, -6
                  addi         t6, t1, 1812
                  and          a0, s3, a4
                  slli         t5, t6, 19
                  xori         a4, s0, 849
                  xori         s10, s2, -633
                  slli         sp, a2, 20
                  lui          s0, 1046878
                  sltu         a5, t0, zero
                  xor          gp, s1, s6
                  ori          s11, s5, 1823
                  auipc        gp, 37003
                  nop
                  slti         s9, sp, 395
                  and          a4, s9, gp
                  sub          ra, s4, t6
                  lui          s7, 200243
                  auipc        s10, 927170
                  sub          s2, zero, s3
                  auipc        t4, 197004
                  sra          t6, sp, s9
                  slti         s9, s4, 769
                  nop
                  or           tp, gp, s4
                  ori          t0, tp, 1638
                  srl          t6, s6, s4
                  xor          zero, gp, gp
                  sll          t2, zero, t2
                  sltiu        zero, a5, 1534
                  slti         s4, s11, 1774
                  sub          a2, a1, zero
                  slt          s2, s10, zero
                  srl          t6, t0, t1
                  xor          t4, t1, s1
                  sltu         t3, s7, s2
                  sltiu        a4, gp, 676
                  sltu         a4, t6, a6
                  and          a1, gp, tp
                  ori          tp, t4, -362
                  slti         s6, a3, 1342
                  nop
                  add          a5, gp, a3
                  and          s7, a2, t4
                  ori          sp, sp, -1253
                  sltu         s7, s5, s9
                  ori          a4, s1, 19
                  auipc        ra, 261668
                  sra          s2, s2, s9
                  xor          a1, t0, a3
                  addi         a4, a2, 467
                  addi         a0, s1, 902
                  srl          s9, t6, s1
                  sll          t4, t2, s4
                  slti         a1, sp, -646
                  and          tp, t5, a0
                  srai         s5, s4, 21
                  auipc        a4, 907826
                  andi         a3, s6, 1367
                  sltu         s0, t0, s10
                  slli         t2, s5, 11
                  ori          a5, gp, -849
                  nop
                  sll          s7, s9, zero
                  and          s2, t5, a5
                  and          s3, t3, s0
                  ori          t5, s2, -1176
                  sll          a1, s6, t6
                  srli         s6, t0, 14
                  lui          t2, 916763
                  or           a3, gp, s6
                  srl          s5, a5, s6
                  sll          t0, t1, s5
                  nop
                  ori          s9, t5, -663
                  slt          t2, a5, sp
                  slli         t1, a0, 16
                  sub          t5, t6, s4
                  ori          t2, s2, 633
                  sra          s4, s7, t2
                  add          s2, a3, tp
                  sll          t6, a4, s0
                  xor          zero, s6, a1
                  addi         s5, t3, -229
                  sltu         s10, a1, s4
                  srai         s2, t4, 28
                  xor          ra, zero, s9
                  auipc        s3, 206007
                  sub          s11, gp, a6
                  auipc        s2, 501524
                  add          a0, a7, a2
                  srli         a1, t5, 24
                  andi         s9, sp, -119
                  nop
                  add          s2, s1, s7
                  xor          zero, t3, t0
                  srl          a5, t1, t2
                  xori         s0, a7, 824
                  add          sp, t5, a2
                  or           a6, s8, s4
                  or           s11, sp, gp
                  addi         t1, s0, -2044
                  and          a1, s2, t2
                  sra          s11, a0, a7
                  xori         a5, a6, -1012
                  srli         t1, s11, 2
                  srl          sp, a1, zero
                  sltiu        s11, a5, -380
                  srl          t4, ra, s5
                  sra          gp, s11, s5
                  slli         s5, s7, 7
                  ori          sp, s4, -1881
                  or           t5, s5, a3
                  add          s4, s4, t0
                  slt          t3, sp, s1
                  nop
                  slt          t5, sp, s8
                  slti         a4, sp, 1952
                  sll          sp, t5, zero
                  or           a0, zero, s9
                  slti         t4, s2, 276
                  and          s3, s3, s8
                  slli         tp, a1, 28
                  slli         s11, a3, 27
                  srli         t1, a4, 26
                  and          gp, sp, gp
                  srai         t5, s0, 3
                  ori          a1, s11, -1922
                  slti         zero, s1, 676
                  sub          a6, t6, a6
                  and          a2, s7, s7
                  srl          a0, s10, s1
                  lui          t6, 487219
                  sra          a4, a6, a6
                  or           a2, s7, s9
                  andi         s5, s7, 454
                  nop
                  slt          a2, a1, a0
                  srl          s0, t6, a0
                  andi         s7, ra, -332
                  and          t4, gp, a7
                  and          s6, zero, t2
                  andi         a1, sp, -1214
                  and          s3, t1, a3
                  sltiu        s10, s3, 1278
                  srli         t2, tp, 21
                  slli         s9, s11, 31
                  or           s9, sp, zero
                  srai         a6, a2, 10
                  addi         a0, tp, -1205
                  slt          t5, zero, s7
                  andi         ra, t3, 268
                  slt          s2, s6, gp
                  sltu         s4, t6, t1
                  sltiu        s11, t6, 1326
                  slti         s5, s6, 1625
                  addi         s2, zero, -1950
                  sra          t4, s11, a4
                  addi         ra, t4, 234
                  sll          a2, s9, a1
                  auipc        a2, 284323
                  and          a4, a4, a4
                  and          s3, t2, t2
                  xor          t6, zero, s0
                  or           t3, s9, a1
                  sll          zero, s10, a0
                  and          a5, s11, s6
                  add          s10, t1, t2
                  addi         t5, gp, 1666
                  auipc        s9, 149673
                  srai         s0, a0, 17
                  andi         a4, s5, 465
                  srli         sp, tp, 0
                  srli         t3, s4, 13
                  sll          s2, t2, s6
                  sltiu        s10, t0, 1524
                  sll          a0, s6, t6
                  and          a5, t5, s9
                  or           s2, s3, s11
                  slt          s3, sp, t2
                  add          sp, t5, s0
                  ori          s9, s3, 351
                  sll          s10, t4, a5
                  xor          t0, t5, a2
                  add          a2, s11, s3
                  slli         s9, s6, 18
                  ori          s11, a2, -716
                  sra          s3, s6, a0
                  sra          t6, a5, a4
                  srl          t6, tp, t0
                  or           ra, s10, a4
                  srai         s2, t1, 16
                  lui          tp, 774205
                  andi         t4, s5, -223
                  xori         s3, s7, -408
                  srli         ra, t0, 11
                  srai         s6, a0, 18
                  srl          s9, s5, tp
                  nop
                  slt          s2, a1, a1
                  slti         s7, gp, 238
                  nop
                  sltiu        t3, t1, 148
                  srl          zero, s6, t0
                  sltu         a5, s7, s3
                  sltiu        s11, t0, 1084
                  sltu         t2, a4, a2
                  srli         t3, s3, 12
                  andi         a0, t0, 2041
                  xori         s4, zero, -166
                  lui          zero, 596977
                  auipc        a3, 170179
                  auipc        s5, 866068
                  addi         t2, a2, -1110
                  srai         s2, t6, 2
                  slli         s0, a0, 19
                  add          s11, t1, t5
                  srli         s5, s11, 5
                  nop
                  sra          s5, s9, s1
                  xor          s7, ra, t2
                  nop
                  sub          a4, s0, s1
                  xor          a2, t6, s8
                  slt          t5, a1, tp
                  slli         s9, s4, 17
                  srai         s10, tp, 7
                  and          t2, s1, s0
                  addi         s5, s4, -527
                  slli         t0, a2, 5
                  and          a6, a4, zero
                  xor          s11, a0, s11
                  auipc        a6, 922684
                  srl          a3, a0, gp
                  sub          tp, s5, s0
                  xor          a5, s8, s2
                  lui          ra, 721993
                  ori          gp, a1, 729
                  xori         s0, t2, -254
                  lui          s10, 241298
                  andi         a0, s5, -1969
                  slli         a4, s9, 5
                  lui          t4, 482482
                  andi         s0, a3, -884
                  sltiu        zero, t4, 1328
                  srli         s11, t6, 5
                  and          sp, a7, a2
                  srli         s5, a5, 15
                  lui          s0, 191399
                  slli         s5, a3, 30
                  sra          s6, s3, a6
                  add          t2, a5, s0
                  addi         s11, a6, 846
                  andi         s7, a7, 885
                  ori          tp, s10, -267
                  lui          s0, 9797
                  sltiu        s4, s2, 942
                  sll          t2, s2, s7
                  sll          ra, t5, t5
                  ori          t4, t4, -935
                  sll          t2, s10, t0
                  slli         t0, s10, 9
                  lui          tp, 537191
                  srai         s11, s9, 24
                  sltu         s0, s1, s10
                  sub          t3, zero, s10
                  add          s2, s6, t0
                  slli         s7, a4, 30
                  slt          a4, tp, s9
                  slt          ra, t4, t2
                  auipc        a1, 187464
                  or           t0, t1, a7
                  auipc        tp, 991117
                  xor          s10, t2, t4
                  sll          t3, t3, t0
                  or           t4, t0, gp
                  lui          t6, 608985
                  nop
                  add          t3, s1, a5
                  sra          s6, a0, s9
                  sub          s3, s10, t3
                  srli         s11, s6, 23
                  nop
                  ori          t4, a3, 1033
                  addi         t3, s7, -449
                  srl          s6, a7, gp
                  auipc        t2, 591142
                  and          s9, sp, ra
                  lui          s5, 509191
                  andi         ra, t6, 568
                  sll          s2, t2, s3
                  srl          t4, s0, s0
                  slli         s5, s3, 8
                  and          tp, s3, s4
                  sll          a2, s2, a2
                  srli         gp, t2, 23
                  lui          s2, 457667
                  sll          a0, gp, a6
                  nop
                  sltu         s5, t4, t4
                  slti         s11, s5, -225
                  andi         s9, s9, -1433
                  lui          a3, 793160
                  sltiu        t0, sp, 1296
                  sub          s10, ra, tp
                  sltiu        s9, a5, 1863
                  addi         a4, s11, -841
                  sltu         s10, a6, s3
                  auipc        s3, 37469
                  ori          a3, t4, -1058
                  srl          s11, t4, s2
                  sltu         t0, t3, t0
                  nop
                  andi         t3, sp, 530
                  sub          t0, t0, s3
                  sra          s5, a0, s2
                  slti         t0, a0, -1066
                  nop
                  or           ra, s7, a5
                  addi         t1, a2, -559
                  srli         a3, s10, 1
                  srai         a5, s2, 26
                  sub          a5, s5, s1
                  sltiu        a2, a5, -567
                  xor          a5, s5, s11
                  or           s7, s6, s11
                  or           s5, s4, a6
                  srai         tp, a1, 16
                  and          s10, a4, s8
                  nop
                  auipc        s9, 204289
                  nop
                  slli         a2, s3, 12
                  add          a1, t3, s8
                  srl          t2, ra, a5
                  xor          s4, t0, sp
                  sltiu        a4, s0, 1553
                  sll          s10, s8, s3
                  xor          s9, ra, sp
                  sll          sp, t4, t6
                  lui          a4, 273756
                  ori          ra, s11, 1212
                  sra          s5, t0, t5
                  sra          gp, s11, s9
                  srai         t6, t4, 2
                  lui          s5, 381919
                  srl          s5, t1, a6
                  srli         s2, t0, 15
                  nop
                  xori         t5, t4, -924
                  xori         ra, s8, -473
                  andi         s9, a4, 1760
                  sltiu        s11, s0, -256
                  xori         s9, t1, -1978
                  srli         s0, s11, 27
                  ori          s5, a7, -2033
                  srl          s2, a4, gp
                  sltu         s11, a4, a7
                  sra          gp, s5, t3
                  and          a2, t2, s11
                  sra          s3, s11, zero
                  and          t0, s9, tp
                  srl          a5, zero, t3
                  srl          t5, s8, s3
                  lui          a5, 311561
                  sub          s3, gp, s6
                  lui          t6, 922651
                  andi         a3, s4, -1200
                  sra          s11, a2, t2
                  srli         s10, s3, 4
                  sltiu        a3, s1, -927
                  slt          a3, tp, a6
                  andi         t1, t3, -789
                  srai         t6, s11, 12
                  sltu         t5, t4, s7
                  sltiu        t6, s5, -1556
                  auipc        a5, 139189
                  addi         gp, a2, -1922
                  andi         s6, gp, -590
                  add          ra, t3, t3
                  sltu         gp, t5, a1
                  srl          s5, t5, s8
                  srai         tp, t1, 21
                  andi         t1, s8, 127
                  slli         sp, ra, 3
                  auipc        s7, 820272
                  or           s2, sp, s0
                  or           t0, s1, t0
                  slt          t1, s5, a0
                  andi         s2, s7, 589
                  auipc        ra, 452389
                  slti         s4, ra, -1906
                  nop
                  sll          s11, t0, a6
                  lui          a2, 946021
                  lui          s2, 658517
                  or           t1, t6, tp
                  or           s11, s0, a0
                  addi         s4, gp, 92
                  or           t3, a4, s7
                  sll          a1, a4, gp
                  srai         a4, t2, 5
                  sra          t6, s9, a3
                  xori         t2, a3, 283
                  nop
                  andi         gp, s6, -1299
                  add          t4, a3, a4
                  slti         a3, zero, 891
                  slt          s0, a4, s5
                  sltu         s7, s3, s2
                  sltiu        a0, s5, 257
                  sll          t5, s6, t4
                  and          t6, zero, s6
                  sltiu        tp, s3, -22
                  sll          t4, s4, s10
                  sltu         s5, sp, s2
                  sltiu        t0, s1, -280
                  or           t1, a0, t3
                  slt          t6, t4, t0
                  xor          t2, s10, s6
                  sll          s2, a4, zero
                  and          s3, s8, s1
                  srai         s2, ra, 29
                  sltiu        s6, zero, -552
                  and          ra, a4, a4
                  srai         s10, ra, 15
                  addi         ra, t0, 498
                  ori          a3, ra, -1726
                  sltiu        s9, a6, 1222
                  nop
                  andi         sp, s2, -921
                  sra          s3, s5, t3
                  lui          zero, 340770
                  srl          a6, s1, s4
                  addi         a6, ra, 191
                  nop
                  srl          ra, zero, a4
                  srai         sp, a1, 5
                  and          sp, t5, t4
                  sll          s11, s2, a3
                  sub          a1, a3, t6
                  addi         t4, t3, 776
                  auipc        s11, 321886
                  andi         s2, zero, 97
                  slti         gp, s10, 896
                  addi         s7, t5, 1927
                  andi         ra, t6, -375
                  sra          s5, s8, t4
                  sra          gp, s2, s11
                  srai         a3, t5, 31
                  lui          s6, 385124
                  sra          s2, a0, s10
                  lui          s9, 824178
                  sll          s9, s11, s1
                  sltu         s5, ra, s4
                  and          a5, t5, tp
                  ori          tp, a5, -297
                  lui          gp, 269640
                  addi         t4, t0, 144
                  sra          t2, t3, s8
                  sub          a5, t4, t0
                  sll          a6, s5, t6
                  or           t1, s4, sp
                  lui          t0, 44783
                  sra          s4, a7, t6
                  xori         t2, t4, 1594
                  addi         s5, s7, -1632
                  and          a4, s4, s0
                  slt          a4, t1, s2
                  slt          gp, s11, s8
                  or           t1, s11, s7
                  slt          s2, s4, s11
                  srli         t1, t0, 10
                  srli         a6, a6, 19
                  and          a4, t0, a4
                  add          s5, a6, a3
                  srai         a6, s3, 7
                  srai         s5, a6, 0
                  srli         ra, s10, 26
                  lui          t0, 549126
                  and          t2, s0, t4
                  or           a2, a3, t4
                  addi         t6, a3, 1828
                  srl          s7, t1, s1
                  sub          t6, s10, a6
                  srl          sp, t5, a7
                  slti         a1, a5, 1101
                  slli         s11, s9, 7
                  slt          a5, s10, a5
                  nop
                  ori          t1, a3, 260
                  srli         tp, t5, 4
                  sltu         t0, a5, a7
                  xori         ra, s1, 1326
                  and          gp, s11, ra
                  sll          a0, a7, a5
                  add          zero, s10, s4
                  nop
                  sltiu        a0, s6, -372
                  andi         a6, s10, 1201
                  xori         t1, t4, -32
                  andi         s2, s2, -1023
                  or           a4, a6, a6
                  auipc        tp, 126012
                  xori         sp, a6, -1084
                  ori          a6, a1, 1070
                  xori         t2, a5, 1784
                  auipc        s11, 127049
                  slli         s6, t2, 31
                  add          s6, s4, s1
                  sub          ra, s1, a6
                  or           s6, t1, zero
                  slt          s4, tp, s7
                  srl          s7, a6, t5
                  sll          t2, s1, s8
                  sltu         s6, s8, tp
                  slli         s9, t2, 31
                  nop
                  slti         sp, s6, -852
                  srl          s4, s4, s8
                  sltu         a6, s0, s5
                  slt          sp, t6, s8
                  slt          s3, a5, a6
                  xor          s9, s0, t5
                  addi         t3, gp, -1219
                  slt          s0, a6, s1
                  xori         a0, a3, -593
                  sltu         s9, gp, t5
                  xori         a1, a1, -629
                  xori         s10, tp, 918
                  or           gp, s10, t1
                  lui          tp, 870920
                  sub          a3, s9, s8
                  andi         a6, t3, -1931
                  sra          s5, t2, t0
                  ori          sp, zero, -1203
                  sub          t0, a2, ra
                  sltu         s2, a6, t6
                  addi         s10, t4, 406
                  sltiu        ra, tp, -802
                  slti         ra, s0, 1400
                  or           s7, s8, s4
                  or           s3, sp, t1
                  auipc        t3, 418300
                  sltu         s0, a4, s5
                  andi         a3, t2, 1098
                  li           a3, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           s0, 0xffffffff
                  li           sp, 0x80000000
                  li           s2, 0x80000000
                  li           a1, 0x80000000
                  li           a6, 0x80000000
                  li           s6, 0xe866e247
                  li           t4, 0x7bb928a5
                  li           ra, 0x0
                  li           s5, 0x0
                  auipc        a1, 867789
                  sub          s2, t4, sp
                  auipc        a1, 440238
                  lui          s5, 142112
                  add          s0, t4, a1
                  auipc        s0, 640938
                  addi         sp, a6, -1575
                  auipc        s0, 420092
                  nop
                  lui          s2, 588805
                  addi         a3, a6, 136
                  lui          s0, 284056
                  auipc        s2, 215976
                  add          a6, sp, t4
                  lui          s6, 596099
                  sub          s2, a3, ra
                  sub          s2, a3, a3
                  auipc        a1, 812873
                  nop
                  addi         s0, a1, -82
                  lui          s5, 950984
                  add          ra, s5, t4 #end riscv_int_numeric_corner_stream_2
                  addi         s4, tp, 1359
                  sltiu        s2, s7, 1279
                  nop
                  or           s11, a2, s3
                  srai         s5, ra, 15
                  and          s6, t1, s11
                  andi         a2, a2, -301
                  add          s10, t5, s4
                  sltiu        a6, s6, 29
                  and          t2, a3, t6
                  slti         t3, a3, 403
                  auipc        t2, 867236
                  sltiu        t2, a7, 491
                  addi         t0, s9, -970
                  lui          s2, 728384
                  slti         t2, t6, -1391
                  xori         t0, sp, -1290
                  lui          a3, 559321
                  slli         t4, s0, 10
                  slt          a6, s7, a3
                  and          t5, t4, s6
                  ori          t0, s2, -927
                  xor          sp, s0, a7
                  sltu         s4, t6, sp
                  ori          s10, a2, -76
                  auipc        s11, 980379
                  xor          s10, gp, s7
                  sll          a4, s0, s11
                  sltu         t2, t4, ra
                  add          a6, a1, s8
                  sll          s7, gp, s3
                  addi         s6, t3, -342
                  sltiu        gp, s11, 579
                  srai         ra, s3, 2
                  or           s6, s7, a1
                  sltiu        s3, ra, -638
                  auipc        s4, 982051
                  srl          gp, a1, s3
                  srli         s6, tp, 13
                  slti         s4, t6, -1114
                  srl          tp, gp, s3
                  or           zero, s2, ra
                  andi         t6, a7, -568
                  lui          ra, 933333
                  or           s11, s3, t5
                  ori          s4, a3, -793
                  srl          t1, t2, s9
                  add          a2, t1, s1
                  or           s10, s3, t2
                  sra          t5, a5, ra
                  slt          a4, a3, t5
                  sltiu        a4, s9, 1323
                  slli         s3, s10, 28
                  or           t1, a4, t6
                  slti         zero, s6, 1917
                  sub          t2, a2, s10
                  lui          s10, 12536
                  srli         s9, s4, 9
                  srai         s3, s0, 5
                  slti         ra, a7, -440
                  add          s0, s8, t5
                  nop
                  slli         s4, t5, 11
                  sub          a5, a3, s6
                  slli         s11, t6, 7
                  srl          tp, gp, t1
                  auipc        a6, 292841
                  auipc        t2, 919640
                  sltu         ra, s6, t2
                  xori         t2, s9, 1299
                  sltu         t2, a4, sp
                  srl          s2, s3, s4
                  srli         a1, s5, 23
                  auipc        s6, 372991
                  slti         s0, gp, -356
                  srai         s10, s11, 15
                  ori          a2, s3, 561
                  addi         t6, sp, -1019
                  xor          ra, t5, s3
                  ori          s7, s4, 524
                  xori         t4, a6, 1587
                  srai         s0, a5, 25
                  lui          t1, 414737
                  andi         a4, s2, -1747
                  srl          t6, s6, s9
                  srli         s3, t1, 20
                  or           a6, t2, t4
                  xor          s4, gp, t5
                  sub          s10, s7, s7
                  andi         s10, a4, 117
                  sll          t4, t1, t2
                  xor          s2, t2, s3
                  sltiu        s0, a4, 1403
                  srli         s6, a1, 22
                  slt          s3, t5, a4
                  add          s4, a1, s10
                  xor          gp, s4, t6
                  srli         s7, a7, 24
                  sra          t5, s6, s0
                  and          s10, t5, a3
                  lui          s7, 298829
                  xori         a6, s2, -1677
                  sub          t3, zero, tp
                  sub          t5, s0, ra
                  sll          t2, a7, gp
                  sltiu        t5, tp, 613
                  slli         s4, a6, 15
                  lui          s6, 242478
                  and          s9, t6, a2
                  slli         sp, s5, 14
                  srai         gp, s3, 10
                  nop
                  srai         t2, ra, 4
                  srai         s3, s6, 20
                  ori          s0, s2, -447
                  addi         s10, a6, 1894
                  slt          sp, s3, a0
                  slti         s4, ra, 1748
                  slli         a4, a3, 25
                  add          sp, a2, s9
                  addi         a3, s11, 1796
                  auipc        s6, 948882
                  add          gp, t2, t3
                  sltiu        t5, a7, 921
                  srli         s0, s3, 19
                  srai         a2, s8, 14
                  srl          s0, t6, s8
                  sltiu        ra, a1, -109
                  sltu         a1, t0, a2
                  addi         a2, s8, -1329
                  srl          s9, a4, a7
                  ori          zero, a3, -932
                  srl          zero, ra, t6
                  slti         a3, s10, 745
                  srli         a6, zero, 10
                  or           s7, s9, a3
                  auipc        a5, 226741
                  sll          ra, t6, s8
                  sra          t3, sp, s7
                  sll          s11, zero, tp
                  andi         a3, s1, 253
                  sub          a0, t5, t1
                  srl          s6, a3, s5
                  srl          s7, s0, a0
                  slli         a2, s8, 26
                  xor          t1, a2, a2
                  srai         s2, sp, 22
                  and          a3, s1, s7
                  slt          s6, a1, t0
                  lui          t0, 73560
                  xor          s2, t4, a2
                  slli         a3, t5, 28
                  andi         s10, tp, 622
                  addi         gp, t3, 130
                  sll          s3, s8, s3
                  add          s10, s11, gp
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
.align           2
mtvec_handler:    
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x24, x9, zero
                  csrr x20, 0x300 # MSTATUS
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 31
                  bne x20, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x26, 0x3 # BREAKPOINT
                  beq x20, x26, ebreak_handler
                  li x26, 0x8 # ECALL_UMODE
                  beq x20, x26, ecall_handler
                  li x26, 0x9 # ECALL_SMODE
                  beq x20, x26, ecall_handler
                  li x26, 0xb # ECALL_MMODE
                  beq x20, x26, ecall_handler
                  li x26, 0x1
                  beq x20, x26, instr_fault_handler
                  li x26, 0x5
                  beq x20, x26, load_fault_handler
                  li x26, 0x7
                  beq x20, x26, store_fault_handler
                  li x26, 0xc
                  beq x20, x26, pt_fault_handler
                  li x26, 0xd
                  beq x20, x26, pt_fault_handler
                  li x26, 0xf
                  beq x20, x26, pt_fault_handler
                  li x26, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x26, illegal_instr_handler
                  csrr x26, 0x343 # MTVAL
                  1: la x17, test_done
                  jalr x1, x17, 0

ecall_handler:    
                  la x20, _start
                  sw x0, 0(x20)
                  sw x1, 4(x20)
                  sw x2, 8(x20)
                  sw x3, 12(x20)
                  sw x4, 16(x20)
                  sw x5, 20(x20)
                  sw x6, 24(x20)
                  sw x7, 28(x20)
                  sw x8, 32(x20)
                  sw x9, 36(x20)
                  sw x10, 40(x20)
                  sw x11, 44(x20)
                  sw x12, 48(x20)
                  sw x13, 52(x20)
                  sw x14, 56(x20)
                  sw x15, 60(x20)
                  sw x16, 64(x20)
                  sw x17, 68(x20)
                  sw x18, 72(x20)
                  sw x19, 76(x20)
                  sw x20, 80(x20)
                  sw x21, 84(x20)
                  sw x22, 88(x20)
                  sw x23, 92(x20)
                  sw x24, 96(x20)
                  sw x25, 100(x20)
                  sw x26, 104(x20)
                  sw x27, 108(x20)
                  sw x28, 112(x20)
                  sw x29, 116(x20)
                  sw x30, 120(x20)
                  sw x31, 124(x20)
                  la x17, write_tohost
                  jalr x0, x17, 0

instr_fault_handler:
                  add x9, x24, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

load_fault_handler:
                  add x9, x24, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

store_fault_handler:
                  add x9, x24, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

ebreak_handler:   
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x9, x24, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

illegal_instr_handler:
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x9, x24, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x9, x24, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
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
