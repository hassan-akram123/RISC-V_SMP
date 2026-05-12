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
                  li x19, 0x40000100
                  csrw 0x301, x19
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x19, mtvec_handler
                  ori x19, x19, 1
                  csrw 0x305, x19 # MTVEC

mepc_setup:       
                  la x19, init
                  csrw 0x341, x19

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x19, 0x1800
                  csrw 0x300, x19 # MSTATUS
                  mret
init:             
                  li x0, 0x2
                  li x1, 0xf1eb53ed
                  li x2, 0xd
                  li x3, 0xfed67c8d
                  li x4, 0x9
                  li x5, 0xc
                  li x6, 0xd
                  li x7, 0xc
                  li x8, 0xf77c9812
                  li x9, 0xf7ac4f40
                  li x11, 0xfa5b5b20
                  li x12, 0x80000000
                  li x13, 0xff7d5513
                  li x14, 0xfabdecb9
                  li x15, 0x80000000
                  li x16, 0x0
                  li x17, 0x80000000
                  li x18, 0xc4ab44f4
                  li x19, 0x84ba3688
                  li x20, 0x0
                  li x21, 0xf9dad6a2
                  li x22, 0xf45ec1f1
                  li x23, 0xf13ec6b8
                  li x24, 0x80000000
                  li x25, 0xc43d5d75
                  li x26, 0xf23d9ddc
                  li x27, 0xf9355bf6
                  li x28, 0x80000000
                  li x29, 0xfcc47740
                  li x30, 0x0
                  la x10, user_stack_end
main:             li           ra, 0x8c1f7afb #start riscv_int_numeric_corner_stream_11
                  li           a1, 0x80000000
                  li           t3, 0x80000000
                  li           gp, 0xffffffff
                  li           s11, 0xc50fff5d
                  li           a5, 0x80000000
                  li           s1, 0x0
                  li           t0, 0x0
                  li           s5, 0x80000000
                  li           s2, 0x6d9588fa
                  addi         s1, s5, -74
                  lui          a1, 91494
                  sub          s2, t0, s5
                  nop
                  add          t3, t3, t3
                  addi         s1, s5, -863
                  auipc        s1, 7409
                  lui          a1, 675324
                  auipc        t3, 796271
                  sub          s11, s1, s2
                  nop
                  auipc        s11, 343146
                  nop
                  nop
                  auipc        t3, 866710
                  lui          a5, 1043411
                  add          t3, a1, s1
                  lui          a5, 287297
                  addi         a1, a1, 1199
                  sub          ra, s1, s1
                  addi         a5, t3, -1859
                  add          s11, a5, s1
                  lui          a1, 836876
                  sub          s11, t3, s5
                  addi         ra, t3, -347
                  lui          ra, 345905
                  addi         s5, s2, -995
                  add          t0, s5, s11
                  auipc        gp, 865400
                  lui          a1, 801699 #end riscv_int_numeric_corner_stream_11
                  li           a5, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           t3, 0x80000000
                  li           s3, 0x5dd9545c
                  li           ra, 0xffffffff
                  li           gp, 0x80000000
                  li           t1, 0x0
                  li           s0, 0xbc04607e
                  li           a3, 0x0
                  li           t0, 0xffffffff
                  li           t2, 0x0
                  nop
                  add          t3, s0, s3
                  auipc        ra, 254457
                  addi         ra, a5, -870
                  add          s3, t3, a5
                  sub          gp, t0, a3
                  sub          a3, t2, s0
                  lui          t0, 28254
                  add          s3, t3, t0
                  addi         a3, ra, -1417
                  auipc        s3, 710229
                  addi         t3, ra, 555
                  sub          a5, s3, ra
                  addi         gp, a5, -162
                  addi         a3, a3, 1764
                  add          s3, s0, t1
                  lui          s3, 482332
                  addi         t0, t0, 1557
                  add          ra, s3, t0
                  addi         t1, s3, -457 #end riscv_int_numeric_corner_stream_12
                  li           s11, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           t3, 0xffffffff
                  li           tp, 0x80000000
                  li           a1, 0x0
                  li           s7, 0x6c7ec675
                  li           t4, 0x0
                  li           s0, 0x0
                  li           t5, 0xffffffff
                  li           gp, 0xffffffff
                  li           s3, 0xf8306c62
                  nop
                  auipc        a1, 658944
                  sub          s3, s7, s3
                  addi         gp, s0, 1973
                  add          t4, t3, s0
                  sub          s0, s11, t4
                  nop
                  lui          gp, 647412
                  nop
                  nop
                  sub          t4, s0, s3
                  auipc        s11, 732274
                  auipc        s7, 77546
                  nop
                  nop
                  nop
                  nop
                  lui          t4, 685405
                  nop
                  sub          t3, s0, a1
                  auipc        s7, 207775
                  sub          s0, a1, t4
                  lui          t4, 36619
                  auipc        t5, 615088
                  addi         tp, s7, -35
                  auipc        t5, 961141
                  addi         t5, s0, 153
                  auipc        a1, 841269
                  lui          s0, 441076
                  addi         t5, s3, -697 #end riscv_int_numeric_corner_stream_2
                  li           a7, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           s1, 0xffffffff
                  li           s5, 0x3fd16317
                  li           ra, 0x7e4739a5
                  li           t1, 0xffffffff
                  li           s10, 0x0
                  li           t4, 0x80000000
                  li           s4, 0x80000000
                  li           tp, 0x0
                  li           a2, 0xffffffff
                  sub          s10, s1, t1
                  sub          t1, t1, s1
                  addi         s4, s4, 210
                  lui          ra, 924453
                  add          t1, s5, s4
                  auipc        s1, 101640
                  lui          s5, 766164
                  auipc        s10, 836514
                  lui          t4, 212616
                  sub          ra, t1, a7
                  sub          t4, a7, s5
                  addi         s5, a7, -1832
                  auipc        s1, 10718
                  lui          tp, 450753
                  auipc        ra, 997513
                  add          tp, tp, s10
                  lui          tp, 428358
                  sub          s1, t4, t1
                  auipc        s10, 274679
                  sub          tp, s5, s1
                  addi         a7, t4, 202 #end riscv_int_numeric_corner_stream_14
                  li           t3, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           ra, 0xffffffff
                  li           t5, 0xd71c8261
                  li           t1, 0xffffffff
                  li           a5, 0xafbfdd2d
                  li           t0, 0xffffffff
                  li           s0, 0xc6554fd9
                  li           s4, 0x80000000
                  li           a2, 0x80000000
                  li           s6, 0x0
                  nop
                  sub          t5, t1, s4
                  lui          t3, 461937
                  add          t1, t5, t5
                  lui          t3, 675933
                  addi         a2, t1, 630
                  auipc        t0, 1039520
                  lui          s4, 101265
                  add          t3, t1, s4
                  auipc        ra, 279093
                  lui          s4, 801889
                  add          t5, s4, a2
                  sub          s0, a2, t1
                  lui          ra, 286964
                  addi         t5, a2, 14
                  add          s0, t0, s0
                  lui          a2, 873729
                  auipc        a5, 936613
                  lui          a5, 462094
                  lui          s0, 38191
                  nop
                  addi         s4, s0, -879
                  auipc        t3, 358932
                  auipc        ra, 173770
                  lui          t3, 577382
                  nop #end riscv_int_numeric_corner_stream_10
                  li           gp, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           t1, 0xffffffff
                  li           tp, 0x0
                  li           t2, 0x0
                  li           s1, 0x4d49bc70
                  li           ra, 0x0
                  li           s2, 0x1c788b6f
                  li           s7, 0x0
                  li           a3, 0x80000000
                  li           s10, 0xd01efdce
                  auipc        t1, 884821
                  auipc        s2, 342116
                  add          t1, s2, s7
                  sub          s2, t2, s10
                  lui          s2, 959752
                  nop
                  addi         a3, tp, -1320
                  addi         s1, s2, -29
                  addi         a3, s2, -1022
                  addi         s7, tp, 172
                  nop
                  lui          s1, 660668
                  add          gp, s10, ra
                  addi         s2, t1, -101
                  sub          s7, a3, t2
                  auipc        t1, 908520
                  lui          tp, 181302
                  sub          t1, t1, t2
                  add          tp, gp, gp
                  auipc        gp, 888221
                  lui          a3, 233086
                  addi         t2, ra, -1713
                  auipc        s10, 877820
                  add          s7, t2, s2
                  lui          a3, 215500
                  sub          a3, t2, s10
                  nop
                  lui          a3, 111088 #end riscv_int_numeric_corner_stream_15
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           s4, 0x0
                  li           a5, 0xc97c2b3c
                  li           t0, 0x0
                  li           gp, 0xffffffff
                  li           a1, 0x80000000
                  li           s3, 0x80000000
                  li           s10, 0x80000000
                  li           s6, 0x80000000
                  li           a6, 0x32c40a84
                  addi         tp, a5, -489
                  nop
                  addi         a5, a6, -345
                  addi         a1, a1, -1395
                  nop
                  add          s6, tp, tp
                  addi         t0, s10, 558
                  sub          a1, t0, tp
                  nop
                  sub          s3, s10, a1
                  auipc        s3, 726775
                  addi         s10, gp, 867
                  addi         a1, a5, -1944
                  add          tp, s10, a6
                  add          a5, tp, a5
                  sub          gp, gp, s10
                  add          tp, s3, s10
                  sub          t0, tp, a6
                  auipc        s6, 443775
                  lui          a1, 462469
                  lui          s4, 482483
                  addi         s3, s3, 133 #end riscv_int_numeric_corner_stream_16
                  li           t4, 0xfa78701f #start riscv_int_numeric_corner_stream_9
                  li           t1, 0xc06cf39b
                  li           sp, 0x6d4d251e
                  li           a3, 0xffffffff
                  li           s11, 0xffffffff
                  li           s6, 0x80000000
                  li           t2, 0xa190ffe
                  li           s3, 0xffffffff
                  li           a6, 0x80000000
                  li           s1, 0xffffffff
                  sub          s11, a3, t2
                  sub          s1, t1, t4
                  auipc        a3, 979713
                  nop
                  nop
                  lui          s6, 132084
                  lui          sp, 87603
                  add          a6, sp, a3
                  addi         t4, s11, 801
                  addi         s1, s3, 2020
                  nop
                  nop
                  add          t2, s1, s6
                  sub          t4, a6, s1
                  nop
                  addi         t1, a6, -1290
                  nop
                  addi         t2, t1, 1299
                  sub          s6, a3, s11
                  addi         t2, s1, -697
                  add          t2, s1, a3
                  sub          sp, sp, sp
                  sub          s3, s1, s3
                  nop
                  sub          s6, a6, t2
                  auipc        sp, 290866
                  lui          a3, 455154
                  sub          t1, s1, sp
                  nop
                  auipc        a6, 216971 #end riscv_int_numeric_corner_stream_9
                  sub          t2, s5, s9
                  xor          t5, s8, s9
                  sltu         s2, s10, sp
                  nop
                  slli         s4, s6, 29
                  sub          tp, s6, t0
                  and          s9, a3, ra
                  and          s7, a6, a0
                  sub          t5, s5, a3
                  and          gp, t0, s6
                  xori         tp, t1, -1672
                  sra          a3, s3, a2
                  srai         ra, t5, 5
                  add          ra, s8, t4
                  or           a1, s5, s11
                  srli         sp, gp, 14
                  xori         tp, a5, 448
                  srai         t4, s7, 29
                  srl          t5, t3, a4
                  srl          s7, s5, t1
                  xor          s1, a4, t6
                  lui          s10, 573588
                  add          t3, ra, a1
                  auipc        s11, 25534
                  addi         a1, s6, -878
                  sltu         a7, a5, a1
                  sub          t2, t6, t0
                  srai         zero, a4, 19
                  srli         s7, a2, 31
                  srli         t0, s1, 1
                  sra          s7, s11, s7
                  xor          s4, s6, a2
                  sltu         s7, zero, tp
                  srl          a3, s4, a3
                  andi         t5, a7, -1771
                  slli         t4, tp, 13
                  srl          t4, sp, s10
                  xori         s5, t2, -177
                  srl          a7, t3, s8
                  sub          gp, t2, tp
                  xor          s4, t4, s11
                  and          s9, s10, s1
                  srai         a1, s8, 27
                  nop
                  nop
                  srl          s7, a6, a6
                  sub          t2, s4, s10
                  nop
                  slt          ra, a6, s10
                  and          s7, sp, t4
                  andi         s3, t3, 1929
                  and          ra, s10, t1
                  slli         a6, t2, 25
                  sll          t5, a1, a1
                  sra          a7, t2, zero
                  sll          sp, s10, t4
                  add          a7, s8, s1
                  sll          zero, s0, t5
                  slti         t5, gp, -620
                  slti         a4, sp, 1634
                  sub          a4, a1, s4
                  sltu         t4, a2, t0
                  sll          s6, t3, s5
                  sra          s2, t1, t5
                  slt          s5, t0, t2
                  sltiu        a5, gp, -801
                  srli         s7, a0, 20
                  add          t5, tp, t2
                  srl          s1, s3, a0
                  xor          t3, a0, a7
                  xor          s1, s3, s10
                  nop
                  auipc        t0, 715289
                  sltiu        s1, a3, 622
                  and          s7, s9, s9
                  slti         a2, s9, 1741
                  lui          t2, 72235
                  slt          a4, a6, s2
                  xor          sp, s8, s2
                  xori         s0, a1, -1927
                  slti         a6, s9, 927
                  slli         s2, gp, 23
                  slli         a3, a1, 15
                  ori          t4, s6, -1157
                  nop
                  sub          s4, t3, s5
                  lui          a4, 462090
                  srl          ra, s6, t0
                  nop
                  sltu         tp, a5, s1
                  slti         t3, s4, 230
                  slt          s7, sp, s0
                  add          a5, zero, zero
                  ori          gp, t0, 1604
                  auipc        s4, 5681
                  slt          s6, sp, t4
                  srl          s2, t3, gp
                  slti         s5, ra, 164
                  sll          s7, t4, s2
                  addi         tp, a5, -634
                  addi         s10, a4, -1092
                  slti         zero, zero, -857
                  addi         s9, gp, -667
                  addi         s10, t3, -1585
                  sltiu        s2, t4, 297
                  ori          a2, a1, -1638
                  sub          s10, s1, gp
                  addi         t4, zero, 51
                  xor          s5, s5, s4
                  or           ra, t3, t4
                  sra          t4, s11, ra
                  sltiu        tp, s0, -402
                  add          a4, a6, s10
                  add          zero, t2, zero
                  sub          tp, t2, tp
                  xor          t1, s8, t6
                  srai         s7, t0, 7
                  sltiu        a6, s4, 711
                  add          a7, a6, s11
                  srl          s11, a0, s1
                  addi         sp, a4, 864
                  xor          s7, t1, gp
                  andi         t4, t5, -448
                  lui          a5, 326742
                  lui          t3, 583970
                  srai         tp, t5, 29
                  slli         s2, t5, 20
                  srl          s2, s9, a1
                  andi         s4, a5, -105
                  sub          tp, s10, s9
                  sra          a1, t1, s9
                  xor          t3, t0, t6
                  sltu         s0, tp, ra
                  slti         t2, a4, -254
                  sra          s9, t6, a5
                  or           s10, a1, s11
                  and          gp, tp, t6
                  sra          a2, a0, sp
                  srli         tp, s4, 30
                  nop
                  xor          s5, t6, s8
                  sll          tp, a4, t3
                  nop
                  srli         s0, t5, 17
                  xori         tp, s4, -2042
                  andi         s5, s4, 2001
                  xori         sp, t4, 1877
                  xori         s6, s3, 1474
                  addi         sp, a6, 277
                  srai         a4, t0, 9
                  slli         s1, s0, 16
                  slli         a4, s3, 30
                  xori         s10, t2, 1263
                  slt          a5, t2, a1
                  lui          gp, 942538
                  and          s4, a4, t6
                  auipc        zero, 809714
                  lui          t2, 130816
                  and          gp, tp, zero
                  srli         gp, a4, 20
                  srl          a6, a5, t1
                  nop
                  ori          t1, s2, -1189
                  sltu         a2, s7, a3
                  and          sp, gp, ra
                  slt          s5, t6, t2
                  xori         s4, t2, 1267
                  ori          t0, a6, 851
                  slti         t5, t4, -288
                  and          t5, t1, t4
                  lui          s9, 822144
                  addi         zero, s0, 112
                  andi         s4, a0, -987
                  slti         t4, a1, 754
                  srl          s7, a4, s0
                  slli         s11, s9, 0
                  sltu         s0, a0, a4
                  slti         zero, a4, -831
                  sub          a6, a4, s2
                  add          s3, s10, s10
                  auipc        a6, 552116
                  addi         s0, a2, -1418
                  add          s5, a0, zero
                  nop
                  srl          a4, a3, ra
                  slti         a7, s5, -902
                  and          a4, s3, t4
                  add          a2, t0, s3
                  and          s0, a1, a4
                  xor          a5, a5, a4
                  xori         a5, t5, -1908
                  nop
                  slli         zero, a0, 3
                  sll          s0, s5, s6
                  or           sp, s5, t3
                  srl          gp, a3, s8
                  xori         a3, s6, -1325
                  srai         zero, a2, 7
                  sub          s5, t1, a4
                  addi         s11, zero, -138
                  srli         s2, gp, 7
                  nop
                  and          a5, tp, a7
                  add          s5, a2, a3
                  xori         tp, s4, 738
                  sltu         s1, t3, a1
                  or           t3, a0, s2
                  xor          t2, s8, s1
                  sltiu        s7, zero, 780
                  srli         a4, s8, 19
                  lui          s6, 222927
                  slli         tp, s3, 4
                  slti         s9, t0, 1541
                  add          s5, t6, t1
                  auipc        t3, 788536
                  addi         s0, a0, 1242
                  ori          t1, s0, -1716
                  slti         t4, a5, 2008
                  add          a3, a3, s5
                  sub          s0, t4, a7
                  add          ra, zero, a0
                  slti         s10, t3, 255
                  sub          s5, t4, t5
                  and          gp, a7, a4
                  addi         a7, s0, 1485
                  ori          s6, tp, -1278
                  or           gp, s4, t6
                  slt          gp, a7, zero
                  sltu         t5, s2, a3
                  or           s5, s1, ra
                  sra          a5, sp, s1
                  slt          sp, sp, t0
                  lui          a5, 594597
                  andi         s11, s7, -203
                  sll          s7, a5, s6
                  addi         s3, s3, 1335
                  srl          gp, s0, t0
                  and          s4, a5, s5
                  or           t3, gp, t6
                  nop
                  addi         zero, tp, -1971
                  srai         t4, a1, 18
                  sltu         gp, s1, a7
                  slti         t5, t6, -563
                  auipc        zero, 918186
                  nop
                  xor          a7, zero, t3
                  srli         sp, a7, 21
                  sub          a3, a7, a6
                  slli         gp, s0, 15
                  slti         t0, a4, 1287
                  slti         s2, s1, -1333
                  addi         t5, a1, -931
                  nop
                  slti         a6, s5, -412
                  srli         zero, a0, 24
                  or           s5, gp, t2
                  xor          a4, ra, s6
                  slti         a7, s8, -960
                  srli         s9, s2, 9
                  add          s7, s2, s7
                  and          t4, a5, s1
                  addi         s2, gp, -314
                  srai         t4, s4, 24
                  addi         s1, a0, -801
                  slt          s6, s1, gp
                  slli         s7, t6, 15
                  or           ra, s8, s4
                  srl          s1, s5, a3
                  ori          s9, a7, -1195
                  slt          zero, s1, a1
                  sra          gp, a1, t2
                  or           s6, a2, s9
                  srl          s1, s0, s7
                  or           s10, a7, a5
                  srai         a7, t6, 27
                  ori          tp, s7, 1727
                  slli         a5, t5, 21
                  ori          s5, s0, -1556
                  andi         a3, s3, 987
                  sub          t3, gp, gp
                  ori          t1, s6, 259
                  srl          t0, t3, a4
                  srai         sp, s5, 14
                  srl          a5, a6, a5
                  slli         s11, gp, 7
                  nop
                  or           a1, s5, s10
                  xori         a7, a6, -818
                  slli         t4, a7, 6
                  sltiu        a2, zero, 1723
                  and          tp, a4, s8
                  slt          ra, t6, s4
                  sra          a5, s0, s10
                  add          tp, s1, a2
                  and          t2, s0, sp
                  sll          t2, s6, a5
                  or           a3, s5, a6
                  sltu         t0, s4, s1
                  sub          t0, t4, s5
                  add          tp, t0, s9
                  slt          a3, s1, zero
                  xori         s2, tp, -2013
                  srai         a5, t6, 7
                  ori          s4, s6, 552
                  andi         tp, t5, 884
                  sll          sp, s0, t1
                  srli         s11, s5, 0
                  auipc        s3, 602195
                  and          s3, a5, s0
                  sub          s9, s9, t1
                  sub          t2, t4, s11
                  ori          s2, t2, 1204
                  xor          a5, a2, t3
                  slli         a2, sp, 6
                  srai         a2, s6, 13
                  sub          t4, t5, s11
                  sll          a1, s1, a3
                  sub          t0, a6, a2
                  srai         a6, t0, 27
                  slli         t1, t6, 0
                  lui          a6, 27955
                  slti         s3, s10, -881
                  slt          ra, a0, a6
                  xor          a4, a7, t2
                  xori         a2, tp, 1501
                  srli         s9, t5, 23
                  sra          tp, t4, ra
                  sltu         gp, gp, s10
                  addi         zero, s4, 777
                  slti         ra, zero, 430
                  ori          t0, s7, 1084
                  sltiu        t3, a1, -382
                  slti         a4, a6, -813
                  nop
                  xori         t3, s6, -1055
                  slti         ra, s8, 754
                  xor          sp, s1, s7
                  srli         s1, t6, 24
                  nop
                  slli         s1, t6, 11
                  xor          s6, s8, t5
                  srl          s7, a3, s2
                  sltiu        s2, t0, -317
                  slti         zero, s7, -1605
                  sra          s3, s1, t2
                  xori         s7, t5, -1859
                  slt          a4, t0, a1
                  add          s5, s3, s9
                  sltiu        a6, s3, -1631
                  slli         s6, s1, 19
                  sltu         s7, a2, a1
                  xor          a3, s2, a5
                  srl          a6, s5, a5
                  xori         t4, t6, -1827
                  and          t4, t6, t3
                  slt          tp, t5, t0
                  ori          zero, s5, -1207
                  addi         a5, a7, 1280
                  ori          s10, t4, 1536
                  xor          zero, a1, s2
                  slti         ra, s3, -193
                  sltiu        s11, zero, -227
                  ori          zero, ra, -1254
                  slti         s0, t5, -209
                  slti         s4, s10, 1043
                  and          s9, s10, s4
                  sltiu        a7, t4, -1135
                  add          ra, tp, t2
                  slt          s7, a3, s8
                  and          s6, t6, a5
                  srli         t1, a2, 3
                  xori         a2, t5, -1228
                  srl          zero, t5, zero
                  srl          tp, a6, s11
                  and          a2, t1, s2
                  andi         a2, tp, -1375
                  slt          t1, a0, tp
                  sra          t3, s9, s6
                  sll          ra, gp, s1
                  lui          s11, 298463
                  slti         a5, zero, 1599
                  slti         t1, gp, 313
                  sll          s10, s11, t2
                  lui          a7, 830880
                  or           s3, ra, s7
                  slt          s4, s4, a7
                  srli         a5, s8, 4
                  or           a3, zero, t5
                  srl          s6, a4, s6
                  sltu         t2, a2, sp
                  srai         a2, s11, 10
                  sub          t1, s9, a6
                  slt          a6, s2, t6
                  lui          zero, 895828
                  sll          s5, s8, gp
                  addi         a1, a4, -218
                  sra          s4, t1, a5
                  xori         s5, s1, 1341
                  addi         t1, s11, 1211
                  sll          t4, s7, s8
                  and          a6, tp, a0
                  lui          s4, 162496
                  xor          zero, t5, s1
                  and          t4, s1, s8
                  ori          t4, s11, 217
                  sltiu        ra, t4, -1642
                  add          a6, a2, a1
                  lui          t3, 280345
                  slt          a2, t0, s7
                  andi         t2, s2, -1714
                  ori          sp, t6, -165
                  sltu         s5, t1, s9
                  sra          s11, a3, t3
                  sltiu        a1, s10, -1952
                  slti         a7, t2, -217
                  srli         a4, t6, 26
                  sra          s4, a3, t3
                  auipc        zero, 131626
                  srai         t1, t5, 15
                  addi         a7, s5, -1419
                  auipc        tp, 588861
                  sub          s3, tp, gp
                  lui          t3, 755855
                  srli         s4, a2, 7
                  sra          s7, s8, s5
                  nop
                  addi         a3, s2, 929
                  slli         t0, t4, 12
                  slti         gp, s3, 535
                  and          s0, a7, s5
                  srl          t0, s3, t5
                  sltiu        s0, t4, -1870
                  add          s5, a6, s1
                  add          t1, a4, t4
                  sub          a3, t6, s4
                  auipc        t0, 1026422
                  or           a7, t1, t3
                  auipc        s6, 481966
                  and          t3, a5, t0
                  sra          a7, s0, s4
                  auipc        gp, 226569
                  lui          sp, 158370
                  sra          t0, gp, t2
                  sltu         s7, zero, s5
                  addi         a1, s3, 1169
                  sltiu        t2, s8, -695
                  lui          s9, 166389
                  auipc        a5, 302021
                  sltu         t5, t4, sp
                  andi         t1, a0, -43
                  slli         s5, gp, 19
                  add          t5, t3, a2
                  nop
                  sltiu        t3, tp, 1251
                  lui          a4, 515006
                  xori         s10, s2, 1864
                  andi         a5, gp, -1819
                  xor          a7, ra, s4
                  and          a1, s5, t3
                  andi         gp, s0, 1142
                  srai         t2, s11, 21
                  andi         s2, a7, 1120
                  lui          t5, 96385
                  slli         a4, s4, 11
                  srai         s9, a6, 0
                  add          a4, t4, s11
                  slli         a6, a2, 13
                  lui          a7, 234840
                  addi         s1, t6, 183
                  ori          zero, zero, -1152
                  slti         s3, gp, -239
                  andi         s3, zero, 1462
                  sub          a3, s1, a5
                  sltiu        a2, a0, -1852
                  auipc        s5, 233784
                  auipc        t5, 154315
                  xor          sp, t4, s1
                  sra          t3, t6, s6
                  xor          a1, s9, t1
                  auipc        s4, 746834
                  ori          zero, sp, 633
                  sub          a7, a1, t2
                  auipc        sp, 426062
                  srl          t0, t2, a7
                  slt          s6, s3, t4
                  xori         a4, t3, -895
                  auipc        s11, 65076
                  slti         t4, s9, 1992
                  sltiu        s9, a7, 923
                  or           a5, a0, tp
                  ori          t4, s9, -270
                  srai         s6, s4, 29
                  xor          s6, s0, ra
                  slli         s2, a3, 10
                  add          t4, s7, s1
                  xor          t1, s7, zero
                  sltu         sp, s11, a2
                  srai         zero, s1, 15
                  andi         a3, tp, 1570
                  and          t5, a0, tp
                  ori          s3, a6, 1341
                  slt          gp, t0, s8
                  slli         a1, a1, 0
                  auipc        a4, 642123
                  srl          s4, t2, t0
                  auipc        t2, 507189
                  andi         s2, s2, -997
                  and          s7, s11, s2
                  sltu         a2, s7, s9
                  xor          t4, a0, s10
                  srl          ra, s6, sp
                  add          t4, t0, s5
                  xori         t4, s3, -888
                  srl          s2, sp, zero
                  srai         t1, sp, 27
                  srli         gp, s0, 19
                  slt          gp, tp, s9
                  andi         s9, s5, -1358
                  andi         s7, s5, -1718
                  addi         a7, a7, -1010
                  addi         a1, a6, 1970
                  or           s2, s11, t1
                  slt          s11, s3, s9
                  andi         gp, s4, 1039
                  slt          a7, s8, s6
                  srai         zero, s0, 12
                  lui          s11, 170637
                  andi         tp, s3, -971
                  and          s0, s11, a1
                  or           a2, s6, gp
                  srai         s4, a5, 24
                  nop
                  or           t0, a0, s6
                  nop
                  sll          gp, s4, a0
                  srl          s11, s1, t3
                  andi         a6, t3, -471
                  sltiu        t5, t4, 1682
                  slli         t0, a2, 8
                  auipc        s6, 977599
                  add          s1, t4, s4
                  add          gp, a3, t2
                  slti         s11, a7, 816
                  addi         s10, a4, -14
                  xor          gp, a4, s1
                  nop
                  addi         a6, t5, -1689
                  sll          s11, s5, t4
                  or           t4, ra, s7
                  sltiu        tp, s1, -1927
                  slt          a6, tp, a0
                  sub          s9, s1, s7
                  ori          s4, s4, -56
                  sub          zero, t6, s6
                  xori         a2, s7, -1638
                  nop
                  srli         a6, s6, 0
                  sub          s9, a0, a0
                  and          tp, s3, t6
                  slti         sp, s3, 427
                  ori          t3, t3, -714
                  or           s4, s7, s6
                  and          a3, t1, a6
                  and          s3, s6, s3
                  sltiu        sp, tp, -1707
                  sltu         a3, t2, t1
                  slt          a3, ra, s8
                  and          sp, t6, tp
                  ori          tp, s5, -1283
                  xor          s6, tp, s2
                  nop
                  srli         ra, s2, 9
                  and          s6, a4, a1
                  and          gp, t3, s7
                  sub          s3, a6, t0
                  auipc        a1, 82520
                  lui          s11, 927713
                  sub          s9, s0, s10
                  andi         a2, t5, -1203
                  xor          sp, t3, s7
                  sltiu        s2, t0, 254
                  lui          t0, 535504
                  sltiu        a1, t5, -1174
                  auipc        tp, 143040
                  add          s7, s10, s9
                  or           a5, a1, s7
                  add          s9, s10, t5
                  lui          s9, 945277
                  addi         a4, s8, 7
                  add          sp, t0, ra
                  srli         s2, t3, 6
                  xor          a6, a0, s10
                  sub          s1, t6, gp
                  srli         tp, a6, 1
                  andi         a1, a0, -306
                  addi         t4, a3, -1028
                  add          s4, gp, a5
                  and          a6, a4, t0
                  addi         t0, sp, -68
                  sll          s3, t5, s0
                  xor          zero, t5, a2
                  xori         s9, s8, -1093
                  slti         t0, s1, -592
                  slt          s1, zero, s0
                  or           t0, t2, a4
                  sll          s0, a7, a5
                  ori          s7, a4, -1636
                  sra          t3, a0, a2
                  slti         s5, t2, -1543
                  nop
                  sltiu        tp, s10, -789
                  and          t3, t1, t5
                  add          a1, a5, s2
                  xori         s11, a2, 1422
                  slt          a2, a2, t4
                  sltiu        s9, s8, 1345
                  add          a4, s10, a3
                  or           a2, s7, a0
                  sub          s7, a6, s4
                  xori         zero, t6, -2023
                  auipc        s2, 168337
                  srl          zero, a7, t6
                  add          s6, t6, ra
                  lui          s9, 730386
                  sub          s0, t2, s6
                  addi         s5, ra, 1977
                  srl          t1, sp, t4
                  or           a2, tp, ra
                  xori         s10, t1, 210
                  add          t0, t0, s7
                  sll          a6, zero, s10
                  xor          zero, s2, a1
                  or           a3, tp, a1
                  sltiu        t4, s2, -662
                  and          s9, s5, t1
                  and          a2, t5, a7
                  addi         sp, s2, 1646
                  andi         s10, a2, -501
                  ori          t1, sp, 943
                  lui          a7, 854369
                  srli         s9, s6, 27
                  sll          tp, s0, s10
                  lui          t2, 257243
                  add          s2, t0, s5
                  sub          s3, sp, s11
                  add          a4, a5, s3
                  addi         a5, a2, 661
                  sra          a5, t4, s3
                  sra          ra, a0, a4
                  slli         s10, s7, 30
                  ori          gp, t6, -1877
                  sltiu        zero, a5, -1612
                  and          s5, t6, s1
                  slli         s11, s9, 12
                  slt          s1, t6, t4
                  ori          t5, a0, 963
                  sll          s10, s8, a7
                  and          a7, a2, a7
                  xori         a5, s2, -1477
                  and          t3, s2, tp
                  or           t2, t6, s7
                  srai         s5, s10, 26
                  xor          a5, zero, a4
                  slli         a6, s3, 25
                  srl          s7, tp, s6
                  srli         a7, tp, 4
                  andi         ra, a5, -234
                  and          a6, s8, a5
                  nop
                  nop
                  srai         s5, s1, 27
                  or           t3, t5, t1
                  sll          s5, sp, sp
                  add          s1, s7, s10
                  ori          a4, zero, 1971
                  sll          t2, a3, s1
                  ori          zero, sp, -1253
                  nop
                  ori          t0, t5, -972
                  xor          s10, s9, t5
                  slti         ra, t0, -1800
                  auipc        a4, 447121
                  addi         s9, sp, 1635
                  sra          sp, s4, zero
                  slti         t4, s9, 1034
                  or           zero, s4, s0
                  srli         s3, tp, 9
                  sltiu        a3, s3, 646
                  sll          a3, tp, s9
                  sra          t2, a4, a0
                  sub          s6, gp, t0
                  and          s10, t6, sp
                  slli         tp, s0, 10
                  sra          t0, s6, s1
                  xori         gp, a0, -328
                  xor          s0, s2, s9
                  nop
                  sra          t0, t0, t0
                  sra          a3, s11, t4
                  sltiu        a2, s4, 1224
                  sll          s0, s5, a5
                  lui          a7, 308186
                  addi         t5, a4, -695
                  slli         a2, t1, 23
                  lui          tp, 599406
                  and          s10, t6, s3
                  and          zero, s0, t6
                  sub          t2, sp, a7
                  slti         s0, sp, 268
                  add          a5, a3, s10
                  ori          s11, s5, -360
                  sltiu        a4, s5, -631
                  xor          s3, a7, t0
                  sltu         s0, gp, a6
                  sub          s0, s3, s10
                  slt          sp, t1, t1
                  addi         s10, a7, 1662
                  xor          s10, s8, a6
                  ori          s10, t1, -750
                  srli         s11, a3, 10
                  sra          s2, s8, zero
                  sra          a6, a5, s10
                  sltiu        a2, ra, 699
                  slti         a3, s8, 1600
                  auipc        a5, 902304
                  srli         gp, s8, 13
                  slti         tp, a1, -1110
                  xori         a3, s2, 557
                  and          a5, s8, a3
                  srai         t0, a4, 24
                  lui          gp, 97803
                  sra          t3, t2, s6
                  sll          a4, sp, gp
                  slli         ra, a0, 9
                  slti         a2, t4, 501
                  ori          t5, a2, 1447
                  or           t5, s4, s0
                  or           t5, s11, s6
                  nop
                  ori          s7, t2, -2035
                  sll          s9, a0, a7
                  add          a2, t4, a4
                  sltu         s7, a0, t1
                  ori          s3, a4, -1140
                  sub          t4, s7, t1
                  slt          a6, s5, s11
                  addi         s10, zero, -1050
                  addi         s2, a3, -1442
                  auipc        a3, 106204
                  nop
                  slti         zero, ra, -90
                  addi         s2, a7, 1877
                  srli         t3, t6, 28
                  addi         a3, gp, 197
                  xori         a6, t6, -1184
                  sll          s11, s9, t0
                  xor          a1, tp, zero
                  slli         s4, ra, 18
                  srl          a6, a4, s8
                  auipc        ra, 259427
                  slli         a5, t3, 18
                  nop
                  add          a6, s5, s8
                  sub          s0, s8, s1
                  lui          a6, 45794
                  addi         tp, s2, 391
                  auipc        s2, 528906
                  sltiu        t4, sp, -370
                  lui          a2, 485304
                  add          t2, s10, t4
                  xor          s2, s3, a3
                  sll          t0, s5, zero
                  xor          a2, s7, s8
                  nop
                  xori         ra, a5, 22
                  sltiu        t0, s1, 1442
                  xor          s1, a7, s2
                  slti         a4, s8, 23
                  and          a7, zero, a1
                  ori          ra, s7, 700
                  nop
                  srl          t3, a4, s4
                  andi         s10, a6, 1040
                  srli         zero, a3, 29
                  add          a1, t2, s8
                  sra          a2, t2, gp
                  nop
                  ori          s1, t2, 278
                  slti         a2, ra, -1729
                  xor          s7, s11, zero
                  slt          zero, s0, t3
                  slti         s3, tp, -831
                  andi         a3, a5, 313
                  addi         a4, sp, -1460
                  add          sp, a5, tp
                  srai         s3, s11, 19
                  slti         s7, ra, 1068
                  auipc        a5, 847216
                  and          tp, s4, tp
                  srai         s5, s7, 10
                  srl          a7, s2, tp
                  sub          a3, a1, t5
                  srl          s2, a0, s0
                  sll          t5, sp, a3
                  slt          s7, t0, a2
                  add          s7, a4, s0
                  slti         s7, s10, -153
                  or           s1, s0, t4
                  add          a1, s6, t2
                  srl          a1, s9, a0
                  ori          t2, t4, 615
                  auipc        s7, 941363
                  xor          t0, a6, a7
                  nop
                  slt          s5, zero, t3
                  slli         s3, t4, 1
                  srli         a3, a2, 18
                  and          tp, t6, tp
                  slli         s9, s7, 21
                  andi         s11, s5, -145
                  andi         gp, s1, 297
                  sltu         t5, s1, t0
                  and          a5, s0, s9
                  sltiu        t1, s0, 1929
                  or           s10, s2, s10
                  add          s0, s5, t6
                  xor          ra, s6, s4
                  addi         a4, s11, -1292
                  sltiu        a4, s4, 364
                  srli         tp, s10, 0
                  sll          sp, t6, t0
                  addi         t4, s9, 1916
                  xori         t5, s1, 666
                  sltu         a5, zero, gp
                  sll          s1, a4, a7
                  lui          s10, 932253
                  srl          a4, a0, a7
                  sub          t2, t4, tp
                  xori         t3, s11, 2003
                  sll          a5, s5, s6
                  sra          s3, t4, s11
                  add          s4, s3, s10
                  add          a4, a4, zero
                  xor          s6, s10, a1
                  and          s5, t6, a3
                  or           s4, s6, a7
                  srli         s2, a4, 14
                  add          a4, t6, gp
                  lui          s10, 576421
                  srl          t0, s7, t2
                  sra          ra, sp, a6
                  srl          s7, a3, a3
                  srl          s0, s11, s9
                  and          s10, a4, tp
                  or           a3, a4, a2
                  sra          a6, s6, t5
                  nop
                  srai         t5, a2, 17
                  srli         t2, s1, 2
                  srai         a3, gp, 25
                  slt          s2, t3, s4
                  slli         a3, a5, 15
                  addi         a3, a5, 1
                  slt          s0, s10, s2
                  sub          a4, gp, tp
                  slti         t2, t3, 1506
                  sltu         s0, t4, a5
                  srai         a1, t3, 1
                  srai         s0, s0, 1
                  slti         t0, t1, -1380
                  srai         s6, a2, 28
                  xor          s10, t3, t6
                  xor          a6, sp, t6
                  xor          t0, s6, s7
                  andi         t1, s1, 429
                  auipc        a2, 922407
                  add          a3, a5, s2
                  sra          t2, gp, s1
                  sra          ra, s8, a4
                  and          a6, s8, a1
                  lui          t5, 137438
                  add          a6, gp, s3
                  ori          a3, zero, 905
                  lui          a1, 547504
                  ori          a5, a4, 1687
                  xor          tp, t6, s3
                  lui          s7, 408679
                  and          s11, s1, zero
                  slti         s2, t2, -204
                  xori         t3, s8, 1928
                  srai         gp, ra, 7
                  sub          s2, s6, tp
                  srl          sp, tp, t6
                  slt          s7, s7, s2
                  and          s6, a0, s7
                  srai         s0, a4, 7
                  nop
                  and          a7, sp, s3
                  srl          s6, tp, s0
                  sra          s2, s10, gp
                  or           ra, s7, gp
                  sltu         a2, a0, a6
                  xori         s7, t1, 1311
                  xori         s3, s10, 962
                  and          s6, t1, a2
                  auipc        s0, 71007
                  slt          s5, t1, gp
                  nop
                  slti         t2, a6, 949
                  sltu         a7, s3, gp
                  slt          gp, a4, s9
                  addi         t3, s6, -414
                  srai         t1, s7, 13
                  srli         a1, s7, 8
                  sra          s4, tp, s6
                  slt          s0, s3, s3
                  srl          t1, t5, s0
                  addi         s7, s9, -1685
                  srai         s5, s2, 23
                  slti         a1, t3, 435
                  ori          t3, a6, 879
                  srli         ra, t1, 10
                  xor          s11, t0, a0
                  xori         s7, s9, 1947
                  lui          s3, 771120
                  ori          ra, gp, -61
                  sltiu        a1, a1, -1278
                  addi         s6, ra, 1187
                  srl          ra, s10, a0
                  nop
                  sra          a3, t1, s11
                  andi         t3, s6, -628
                  add          s2, t4, a5
                  lui          tp, 287288
                  sll          a5, s1, s11
                  sltu         a7, t0, s4
                  or           ra, t4, t5
                  ori          s6, s8, 1323
                  lui          a6, 165467
                  ori          s6, t6, -1310
                  or           t3, s7, gp
                  sra          a2, a5, a6
                  srl          t5, s9, t1
                  ori          zero, s4, 1177
                  sra          tp, zero, a0
                  sltiu        s5, t5, 1872
                  add          a2, s3, s0
                  srli         t4, a7, 15
                  slt          t0, t6, s2
                  nop
                  add          zero, s6, a4
                  srl          s4, t6, sp
                  or           a1, gp, a4
                  sltu         sp, t3, s1
                  srai         t0, s4, 2
                  slli         a6, t0, 2
                  sll          t1, t0, s2
                  or           tp, sp, s10
                  and          s9, tp, t2
                  srl          zero, s4, ra
                  lui          s9, 410439
                  sll          a7, s11, s2
                  sltiu        a7, t0, -1639
                  slli         zero, t6, 5
                  xori         a5, t5, -1539
                  sra          s3, s0, s9
                  srl          s2, s1, s9
                  auipc        a1, 579714
                  sltiu        s0, a7, 102
                  addi         s1, t5, 457
                  add          t4, s2, s4
                  xor          s3, s10, s10
                  srl          s9, a1, a6
                  auipc        s0, 599195
                  slti         s1, s1, -1302
                  srli         a7, a1, 30
                  ori          s2, s7, 1969
                  ori          s2, s6, 1200
                  sltu         t1, t1, t2
                  sltu         s9, s6, s2
                  sra          a5, s10, t5
                  add          t3, a3, a0
                  slli         t4, s9, 2
                  add          s7, t6, t6
                  xori         a4, zero, -1264
                  sltu         ra, a5, t4
                  sra          t5, s2, a4
                  sltu         a2, sp, ra
                  slti         t3, s6, -1327
                  slli         zero, s1, 8
                  ori          ra, s9, 1186
                  sltu         a4, t2, s9
                  sll          gp, s7, s7
                  sub          s5, a0, zero
                  sra          s4, s2, s8
                  auipc        tp, 218560
                  xor          s3, s11, ra
                  sltu         t5, t5, a1
                  sltu         s9, s9, ra
                  sltiu        gp, zero, -1826
                  or           s10, t3, t1
                  xori         t1, a4, -224
                  lui          s9, 341250
                  auipc        tp, 50170
                  or           s9, t0, t1
                  sltiu        s10, t6, -2006
                  add          a5, s11, s0
                  sll          s6, t3, gp
                  srl          t0, s6, t0
                  auipc        s1, 892842
                  srli         zero, t4, 7
                  sltiu        s4, t1, 3
                  srai         s9, a4, 6
                  sltiu        a6, a5, 209
                  sra          a3, s3, s7
                  srl          s9, t2, sp
                  sltiu        s4, zero, 1454
                  auipc        s9, 907984
                  addi         s3, t3, 1169
                  slti         a6, tp, 1877
                  sra          s3, t5, gp
                  slli         a1, s7, 8
                  xori         a7, s5, -1741
                  sll          t2, s11, a5
                  or           s11, s7, a3
                  slt          gp, s8, t3
                  nop
                  xor          s0, gp, s8
                  sub          s4, s7, s7
                  sltiu        zero, a1, 1701
                  srl          tp, ra, gp
                  sltu         a1, a5, t6
                  slli         s6, a0, 19
                  slti         a4, sp, -647
                  sra          s1, s1, t6
                  sltiu        s2, s3, 1592
                  add          tp, s5, a7
                  sltu         sp, a5, t6
                  or           s11, ra, ra
                  sra          t3, a6, tp
                  addi         zero, a0, -161
                  ori          t2, tp, -769
                  srl          t0, tp, t2
                  lui          a5, 792161
                  srli         s1, tp, 24
                  sltu         gp, a1, s10
                  sll          t4, s2, t6
                  auipc        sp, 516151
                  sltu         a5, gp, s5
                  slti         t5, s7, 1504
                  sltiu        a7, s4, -1600
                  or           t3, s6, a7
                  add          a3, s5, s6
                  srai         s6, a4, 14
                  slli         a6, ra, 2
                  or           t4, s2, s10
                  sub          t1, s4, t6
                  srl          s6, s9, s0
                  add          sp, s6, zero
                  slt          a2, t4, s6
                  and          ra, t3, s0
                  auipc        s4, 259389
                  add          s9, a3, s0
                  srli         t4, s8, 2
                  ori          t2, s8, -749
                  sltu         a4, a7, t1
                  srai         sp, t5, 21
                  sub          a3, a1, gp
                  srl          t3, a4, t1
                  add          s10, t0, t2
                  and          t3, a4, gp
                  srli         s7, a2, 29
                  slli         s11, a0, 21
                  srai         s6, s11, 16
                  ori          ra, s2, -1307
                  srli         ra, t2, 0
                  slt          a7, a6, s8
                  slt          t4, t1, gp
                  sltiu        t0, s9, 304
                  sra          a1, s5, t4
                  slli         s9, ra, 14
                  and          s1, s1, a6
                  or           s7, t3, t2
                  sub          tp, t1, sp
                  srli         tp, s2, 24
                  srl          zero, s6, s0
                  or           s6, a5, s6
                  sub          s4, s7, t6
                  ori          a4, ra, -845
                  sltiu        s10, t2, 1417
                  lui          t1, 629623
                  and          s7, s11, t6
                  nop
                  sra          gp, a7, s2
                  slti         a7, s0, 347
                  sra          zero, s5, t4
                  slti         t2, t3, -1984
                  sra          t2, s7, s6
                  auipc        s5, 263067
                  slli         t2, s4, 15
                  or           s1, a4, t4
                  sltu         s2, s1, s8
                  xor          a7, a0, t2
                  sltu         s3, s9, a3
                  srli         t0, t4, 22
                  sltu         t2, s1, s6
                  srli         s7, s11, 5
                  slti         s2, t4, 1295
                  sra          a4, s5, ra
                  lui          s11, 346939
                  slt          s6, s4, s9
                  ori          t4, a4, 1832
                  lui          t4, 401908
                  slli         gp, s6, 7
                  auipc        sp, 160016
                  slli         s10, a0, 7
                  add          s3, ra, s9
                  slli         a3, t2, 18
                  sltu         ra, s11, s9
                  srai         t0, s1, 20
                  slli         a6, tp, 10
                  add          tp, t1, s10
                  slti         a2, s2, -366
                  and          s0, t0, t6
                  lui          t0, 858925
                  auipc        a3, 272237
                  xori         s6, t6, 905
                  srl          s1, a0, s10
                  srl          s2, t0, s8
                  addi         t2, gp, 133
                  srl          a1, a4, s10
                  srli         s6, t3, 21
                  ori          tp, a3, 1602
                  sltu         t5, s3, a7
                  srl          a4, t2, a1
                  sra          zero, s7, s9
                  xor          s7, s1, s0
                  slli         s1, gp, 11
                  slti         t1, s11, -520
                  and          s3, s4, s9
                  sra          s4, zero, s1
                  xori         a1, s11, -1683
                  slt          s3, s8, gp
                  slli         gp, tp, 21
                  nop
                  nop
                  srl          s4, s7, s4
                  addi         t2, t1, -1962
                  srai         t2, t4, 20
                  sra          s6, a2, s0
                  lui          t4, 1038605
                  andi         t1, s2, -1068
                  xori         s9, s7, -432
                  slli         s11, sp, 22
                  and          a3, t4, t1
                  sub          t1, a0, s2
                  sltu         a6, t0, a0
                  sll          t5, a6, t6
                  srli         s1, s4, 19
                  srli         t5, a4, 27
                  and          s0, s7, gp
                  and          s7, a4, s1
                  ori          a4, a1, -1218
                  srli         t5, a4, 24
                  andi         a5, t2, -1820
                  nop
                  srl          t3, sp, s6
                  xor          s2, s4, s7
                  and          a1, t3, s11
                  nop
                  sltu         s9, s4, t1
                  or           a3, s0, s6
                  andi         s2, s10, 337
                  xor          t5, s11, t4
                  sll          t4, s7, tp
                  auipc        t4, 229604
                  ori          s10, a5, -1698
                  sra          s1, zero, a5
                  xor          s1, a5, s11
                  auipc        s1, 536952
                  lui          t1, 319673
                  xori         t2, s8, 553
                  xori         a6, tp, -1454
                  nop
                  slti         s2, t2, 1298
                  nop
                  add          a7, s10, a4
                  slt          s0, gp, t6
                  slti         s5, ra, -2024
                  srli         gp, zero, 13
                  srli         s10, a7, 13
                  sll          t4, sp, t2
                  nop
                  sll          s5, a2, s3
                  xor          gp, s5, s1
                  or           t5, a7, t0
                  and          t3, ra, a0
                  auipc        s11, 552926
                  slti         s7, a5, 1471
                  addi         t4, s11, 1482
                  sltu         s1, t1, t3
                  srli         a7, s3, 7
                  xor          a6, s1, tp
                  sub          tp, s10, a7
                  sltu         s1, ra, a2
                  addi         a2, gp, 1731
                  andi         t5, s10, -1662
                  slt          s4, t6, s1
                  srai         sp, s8, 6
                  slt          t3, t6, t1
                  auipc        s7, 412583
                  srli         s7, s0, 13
                  and          tp, s5, s7
                  srl          s4, t3, t3
                  lui          s9, 920450
                  slti         a7, s6, 2000
                  srl          s3, s9, ra
                  srai         t5, t1, 19
                  sub          a7, zero, s2
                  sltiu        s0, a0, -815
                  add          a7, s1, s3
                  slli         s6, gp, 9
                  srli         a1, sp, 12
                  and          t5, a2, a0
                  slt          t4, t0, a5
                  xor          t4, s7, a0
                  addi         s2, t6, 34
                  addi         s9, t1, -1211
                  or           gp, t6, s11
                  ori          a6, s9, 85
                  srl          s10, ra, a0
                  sltu         a4, s0, a4
                  addi         s7, ra, -892
                  lui          sp, 818616
                  sltu         t3, s10, zero
                  sltiu        gp, s9, 1273
                  add          t5, s1, a3
                  ori          s7, t2, -1546
                  and          t2, s10, s1
                  or           sp, s8, t1
                  slti         t1, s11, -1832
                  sll          t1, t0, a7
                  and          s3, gp, t4
                  or           a7, t6, s6
                  xor          s11, s7, s2
                  sltiu        t1, s1, -196
                  sub          a6, s5, s8
                  auipc        a6, 312845
                  sll          t0, gp, a0
                  nop
                  lui          t3, 976619
                  and          a5, ra, tp
                  and          s1, s9, a5
                  or           s10, tp, a3
                  sub          a3, a7, s7
                  sll          s11, a6, s8
                  sub          zero, ra, a3
                  sll          s2, a1, s9
                  or           a1, a7, t3
                  sub          a1, a6, s3
                  sra          a5, s10, a5
                  srl          a4, t5, s4
                  xor          s6, t2, ra
                  sub          s1, s6, s6
                  add          t5, s7, s1
                  srli         a1, a6, 23
                  slti         a4, t5, -1131
                  xor          tp, t1, s4
                  slli         s7, a6, 1
                  slti         a1, t0, -1763
                  add          s5, s9, gp
                  srli         t2, t2, 3
                  slti         a2, sp, -1262
                  sub          a3, sp, sp
                  sub          s3, a0, a0
                  add          t1, ra, s10
                  slt          zero, s7, t5
                  sll          gp, t5, t4
                  srl          s4, t1, t5
                  xori         a4, s5, -1572
                  sltu         a4, s10, s10
                  nop
                  sub          t2, a4, zero
                  lui          a5, 1035996
                  sltiu        a6, a6, -186
                  auipc        a3, 811777
                  sra          t4, sp, s7
                  srl          t4, s2, t1
                  nop
                  slt          a5, s0, s7
                  xori         s6, zero, -1689
                  xori         a4, s8, 452
                  srli         a7, a0, 0
                  slli         a6, s2, 6
                  srl          tp, s2, sp
                  ori          s11, s11, -1907
                  srli         t5, s9, 10
                  srl          s4, s7, s4
                  slt          t3, t4, ra
                  xor          s7, a5, s4
                  auipc        a6, 480301
                  slli         t5, gp, 12
                  auipc        s2, 118930
                  slt          a4, gp, s2
                  slli         a7, s8, 16
                  and          a5, a4, a4
                  sub          t4, a4, t6
                  srli         s2, s8, 3
                  nop
                  srai         a3, s1, 11
                  or           s7, t4, a2
                  xor          t0, t6, s5
                  and          tp, a3, t1
                  slti         a6, s6, 1826
                  sltu         a4, s7, a3
                  sltiu        a4, gp, 940
                  sra          s5, a6, t2
                  or           tp, t4, s9
                  xori         t4, t6, 773
                  add          tp, sp, s7
                  sra          a1, t6, t0
                  srli         a5, a3, 23
                  slt          t2, t4, s10
                  or           t2, tp, a7
                  ori          tp, tp, -1446
                  slti         a6, t4, 1397
                  slli         t1, a0, 31
                  addi         s11, tp, -721
                  nop
                  auipc        s0, 513815
                  add          t4, a3, t2
                  srai         tp, a7, 14
                  xor          t1, t0, sp
                  xori         s3, a7, -1721
                  and          a1, s1, a4
                  slt          s10, s10, s5
                  xor          a3, s11, sp
                  sll          a2, s3, s1
                  slti         t1, s9, 426
                  xori         s0, s2, 372
                  srli         sp, t2, 29
                  xor          s5, zero, a3
                  sra          t2, gp, a7
                  and          sp, a0, s5
                  andi         a3, t5, -1748
                  xori         gp, a1, 854
                  ori          a5, s2, -919
                  slti         s7, a1, 1065
                  srai         s5, s6, 12
                  add          gp, a5, a7
                  xor          a5, s4, s9
                  xori         t4, s7, -1185
                  nop
                  srai         a7, a1, 28
                  nop
                  auipc        s10, 831761
                  andi         t1, s11, -305
                  auipc        gp, 138110
                  xor          s1, gp, s6
                  xori         t4, t0, -1921
                  xori         tp, gp, -670
                  add          s6, a7, s11
                  lui          ra, 456014
                  sltu         t0, ra, t5
                  addi         a2, s5, -1204
                  slli         s2, s4, 11
                  or           s11, s5, t5
                  srli         a4, t3, 7
                  slti         s6, t3, 1584
                  xori         a6, tp, 1403
                  sltu         a4, gp, t0
                  sra          a2, s8, a7
                  srl          a4, zero, a3
                  slli         t5, s4, 31
                  srai         gp, s9, 15
                  srli         a2, s4, 11
                  auipc        s2, 807346
                  nop
                  srai         a5, a6, 15
                  srl          a1, s10, t2
                  addi         a7, s10, 1456
                  srai         a3, a0, 6
                  sltiu        t1, a1, 324
                  add          t4, sp, a6
                  srl          a4, s5, t3
                  slti         a3, s8, 2003
                  sll          s6, t5, t6
                  sll          t5, a2, gp
                  nop
                  srai         s11, t6, 19
                  sra          s11, s8, t3
                  ori          ra, sp, -1323
                  slt          a2, a6, s5
                  or           s4, gp, t4
                  lui          s11, 827869
                  auipc        s5, 254925
                  xor          s6, a7, a4
                  lui          a4, 588252
                  slli         sp, s6, 20
                  ori          t2, s8, -242
                  ori          s2, s2, -213
                  srli         t3, t0, 5
                  ori          t1, a2, 107
                  srl          s4, s6, a1
                  sltiu        s4, a5, 510
                  sra          ra, gp, a0
                  andi         s9, a3, 88
                  lui          s4, 612535
                  xori         tp, gp, 1291
                  slt          s7, s2, s1
                  xori         t2, tp, -200
                  auipc        s9, 455125
                  ori          t0, a7, -1616
                  xori         tp, t4, -1202
                  xor          a7, s3, a5
                  srai         s10, s9, 19
                  lui          a6, 517282
                  sltu         tp, s0, a0
                  andi         t2, sp, 1384
                  sub          a3, s7, a2
                  sltu         s10, t6, gp
                  sltu         s6, s10, s11
                  sltiu        a3, s10, 1418
                  slt          t3, a5, s1
                  xori         s0, t2, -1817
                  addi         t3, t5, -569
                  xori         tp, s2, -1034
                  slli         t3, s7, 31
                  sltiu        s2, s6, 1431
                  slli         a1, s2, 15
                  add          a7, s5, s5
                  slli         a2, t1, 12
                  ori          t0, a5, -998
                  srai         s9, a3, 1
                  srl          a2, s4, gp
                  auipc        s9, 361140
                  nop
                  sra          a6, s3, a3
                  sub          a7, t3, s6
                  lui          s0, 374592
                  slt          sp, a2, s7
                  or           a6, a3, a3
                  or           a6, t5, a1
                  nop
                  srai         s0, s1, 11
                  slti         gp, s4, -11
                  sub          t2, t3, s10
                  slt          a7, a4, a5
                  xori         s2, s2, 1698
                  xor          s11, gp, s6
                  srai         t0, a0, 8
                  lui          a3, 590473
                  srli         s6, s1, 30
                  addi         s5, s9, 1555
                  and          s6, s10, ra
                  auipc        a1, 189933
                  sltu         s10, a7, a6
                  xori         s1, s1, -530
                  xor          a1, gp, s6
                  addi         s3, a1, 1410
                  nop
                  addi         t4, t6, 1624
                  and          a2, s7, a3
                  srli         gp, a3, 18
                  ori          s1, a2, 746
                  lui          gp, 138479
                  and          s4, gp, t2
                  sub          s0, a7, s0
                  auipc        t3, 988790
                  or           zero, ra, zero
                  add          s10, s1, s6
                  add          s2, a0, gp
                  ori          s2, t6, -1600
                  auipc        a1, 917558
                  lui          t4, 268447
                  srai         s6, gp, 14
                  sra          s0, s3, a5
                  slli         ra, s11, 28
                  srai         t2, s9, 4
                  srai         ra, sp, 3
                  lui          ra, 636375
                  srl          t5, s9, s3
                  srl          t5, a3, s10
                  sltu         s0, s10, tp
                  srli         ra, a6, 12
                  sra          t3, t3, t6
                  sub          s7, t1, zero
                  slli         s6, t1, 18
                  slt          t5, a1, t1
                  slt          a4, t4, sp
                  xor          s9, t6, a4
                  xori         a3, t2, 1114
                  auipc        sp, 968604
                  xori         t5, t0, 688
                  slli         a4, s11, 19
                  xor          s1, s10, t0
                  nop
                  sltu         a2, gp, a5
                  ori          a5, s4, 711
                  sltiu        s11, s10, 1456
                  slti         t0, sp, 1151
                  sll          s6, s4, s7
                  slti         a4, s3, 1666
                  sub          sp, a0, a3
                  sll          t1, s1, s4
                  auipc        s5, 648377
                  lui          gp, 929559
                  xori         t1, s11, 249
                  sra          a5, t6, t0
                  srl          a1, t6, sp
                  andi         ra, s7, -1157
                  andi         a5, a6, -546
                  xori         ra, s10, -1356
                  lui          t0, 1016137
                  addi         a3, a2, -391
                  add          gp, s3, s2
                  sltu         s4, s0, t0
                  add          a5, a6, s0
                  ori          s4, a3, 508
                  and          ra, s4, gp
                  sra          tp, t5, t2
                  addi         a6, s2, -617
                  sub          s6, a5, t5
                  sltiu        ra, gp, 301
                  sll          a4, s2, s2
                  auipc        sp, 651639
                  sub          s2, t3, s8
                  and          zero, t1, t5
                  add          t3, s10, s0
                  sub          t0, sp, s8
                  slt          gp, a0, sp
                  sra          t1, s2, t2
                  lui          t4, 714077
                  sub          s0, gp, zero
                  srai         s3, t1, 24
                  slli         t3, s3, 11
                  addi         a3, s6, -496
                  srl          t3, t6, a4
                  sltu         s4, s1, sp
                  and          a7, s0, t3
                  and          a4, t0, ra
                  xor          gp, tp, zero
                  sll          t3, a2, t0
                  srli         a6, a4, 13
                  sll          s1, sp, a0
                  sub          a1, tp, s3
                  slti         s3, a1, 447
                  sra          s7, s9, a3
                  slli         t1, t0, 25
                  sltu         a7, t5, s2
                  slt          a3, s3, a4
                  sll          tp, gp, s8
                  slli         t0, t2, 8
                  slli         s11, a7, 14
                  srli         gp, t2, 25
                  sra          s0, t2, s10
                  sub          a2, s4, t5
                  nop
                  srli         t5, a6, 5
                  srli         t2, s8, 15
                  srl          t0, a6, s4
                  lui          s1, 66477
                  andi         gp, s1, -901
                  add          t2, sp, a3
                  or           s4, a5, t0
                  srl          t4, t6, a6
                  sltu         s9, a3, a4
                  ori          s4, sp, 1000
                  xor          t2, t2, t0
                  sltu         s1, a1, t1
                  add          s7, s2, s0
                  and          a7, t0, tp
                  sra          s1, t3, s6
                  li           s0, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           s4, 0xffffffff
                  li           s5, 0x80000000
                  li           a3, 0xffffffff
                  li           t4, 0xffffffff
                  li           a6, 0xffffffff
                  li           a1, 0x80000000
                  li           t3, 0x0
                  li           ra, 0xffffffff
                  li           a5, 0x80000000
                  lui          s5, 936896
                  nop
                  addi         a1, a5, -1055
                  addi         a3, a3, 725
                  auipc        a3, 592010
                  auipc        ra, 762105
                  lui          a3, 915581
                  nop
                  addi         a1, s5, -1766
                  nop
                  add          t3, s4, s4
                  sub          t3, a1, a3
                  lui          t3, 711751
                  add          ra, s5, t4
                  auipc        s4, 515378 #end riscv_int_numeric_corner_stream_5
                  ori          a5, a7, -1173
                  auipc        t5, 841956
                  slli         ra, zero, 14
                  lui          a4, 583654
                  nop
                  slli         s4, t5, 12
                  srl          a6, ra, s7
                  xori         a3, a3, -916
                  sub          a4, t6, t4
                  add          t5, tp, zero
                  add          s5, gp, s8
                  or           s10, s9, a3
                  nop
                  sub          a3, t0, s8
                  srl          s0, tp, a2
                  auipc        s0, 93891
                  nop
                  or           a1, a2, ra
                  sltu         t4, t1, s6
                  nop
                  and          t3, t3, gp
                  srai         s11, sp, 17
                  xor          s10, s1, a7
                  slti         t0, s10, 170
                  sll          a6, s9, s8
                  xori         a6, s2, -610
                  sub          t5, t4, t2
                  srai         s1, s5, 15
                  add          t1, t0, s8
                  sub          s11, s2, s0
                  sra          a7, a7, s11
                  slti         a7, t5, 644
                  and          t2, s0, s7
                  sltu         s4, a7, s0
                  add          s3, s1, s8
                  sltu         s5, tp, s0
                  sll          s11, zero, a1
                  sltiu        a6, zero, 626
                  xori         s6, t2, -156
                  srl          a7, a5, s11
                  sra          t4, s8, t1
                  addi         s11, gp, 1921
                  or           s5, s8, s3
                  sra          t2, a2, s9
                  auipc        a6, 790339
                  sub          a2, a5, t4
                  sub          s10, tp, a7
                  andi         a6, s11, -1738
                  xori         sp, sp, -1368
                  addi         zero, a4, -1546
                  sltiu        a3, a2, -1017
                  slt          zero, tp, s6
                  sltu         zero, t6, zero
                  xor          s10, a3, a6
                  xor          s9, a0, s1
                  sll          zero, s1, t5
                  addi         s6, a7, 223
                  auipc        s5, 311013
                  sltu         a2, s7, s6
                  slt          s6, t1, ra
                  slt          t5, t1, s7
                  sll          a5, s0, t6
                  andi         s0, a0, 1968
                  sra          t5, s8, s3
                  slti         s7, s10, 1759
                  xori         t1, s0, 1453
                  sll          t1, a4, s1
                  sra          s0, t3, t4
                  sll          a5, ra, gp
                  sll          a6, s9, a0
                  slt          t4, t4, a0
                  ori          zero, a3, -1020
                  lui          tp, 576337
                  xori         s3, s1, 1389
                  sltiu        gp, a5, -2032
                  slt          zero, a6, a6
                  ori          zero, ra, -480
                  addi         a1, a6, -1118
                  or           s9, a7, s3
                  or           gp, t0, s9
                  andi         a1, s6, -1485
                  lui          a7, 128799
                  sub          t1, a0, s8
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_7
                  li           s6, 0x0
                  li           sp, 0xffffffff
                  li           t3, 0xffffffff
                  li           t0, 0x80000000
                  li           a2, 0x80000000
                  li           s11, 0x80000000
                  li           a1, 0xffffffff
                  li           a7, 0xf13cf375
                  li           s7, 0x0
                  lui          s7, 1010613
                  add          s7, s11, a1
                  addi         a7, t3, 1801
                  add          a1, t0, s11
                  addi         a1, sp, 604
                  add          t3, sp, t0
                  addi         a2, t3, -1658
                  add          s7, a7, t2
                  add          s6, sp, a7
                  add          s11, a7, sp
                  nop
                  add          sp, s7, a7
                  auipc        sp, 293962
                  addi         a1, a1, -323
                  nop
                  add          s11, a7, a2
                  add          a1, sp, t0
                  add          a1, a7, t0
                  lui          t0, 110918 #end riscv_int_numeric_corner_stream_7
                  or           s7, t2, a1
                  slli         sp, s1, 5
                  addi         s6, s11, -1465
                  and          t5, gp, s10
                  sub          s7, a0, s6
                  add          t5, t2, t4
                  sll          s1, zero, s4
                  lui          s10, 210236
                  sra          s11, s8, gp
                  addi         t2, t6, 1844
                  sltu         zero, t6, s6
                  srai         s7, t2, 13
                  or           a4, a1, t6
                  slt          s1, a1, s4
                  xori         tp, a1, -210
                  addi         s4, s9, 1526
                  srli         ra, s1, 27
                  ori          t1, t4, 1466
                  xor          zero, a7, a7
                  sll          a4, t0, ra
                  srai         t4, s1, 11
                  xor          a1, s0, t2
                  or           s6, a3, a5
                  sll          t2, s9, t3
                  addi         s9, s4, -1203
                  sub          sp, s6, s6
                  srl          gp, a3, t4
                  xori         s0, s3, 1660
                  srai         t3, ra, 12
                  ori          t4, a5, -347
                  lui          sp, 235762
                  srl          zero, s5, ra
                  sltu         s9, s4, t5
                  srai         s9, s5, 18
                  srai         t4, s11, 31
                  xor          zero, t1, s5
                  and          a3, t4, gp
                  or           t0, s0, s8
                  slt          t4, a3, s0
                  sltu         t3, a2, s4
                  nop
                  slt          a6, t5, a6
                  slt          a5, t1, s2
                  lui          t1, 686805
                  xori         a6, s0, 1873
                  auipc        s0, 756052
                  slli         s11, a1, 30
                  sltiu        s11, a4, -1187
                  slti         a4, sp, -1465
                  ori          t1, t5, 730
                  srai         s9, sp, 16
                  andi         s9, t6, -792
                  sra          a3, s8, s7
                  srai         s2, s10, 29
                  sll          a1, s10, s4
                  srl          t0, a2, s1
                  xor          t2, tp, s2
                  srli         a3, a4, 20
                  sub          s1, s8, s2
                  sltu         tp, t5, s10
                  srai         t5, s10, 2
                  nop
                  xor          s6, tp, s2
                  srl          a4, a5, t6
                  xori         a3, t6, -1331
                  andi         s2, s9, 841
                  sll          s2, t3, a0
                  auipc        zero, 898670
                  addi         a4, s2, -1431
                  sltiu        sp, s0, -1620
                  lui          t4, 61990
                  sltu         zero, s5, s1
                  slt          a2, t3, a2
                  andi         sp, ra, -918
                  srli         gp, s8, 3
                  xor          s7, a7, t2
                  sltiu        t0, s6, 1428
                  and          a4, a6, a5
                  add          ra, s4, gp
                  lui          s1, 760532
                  xor          zero, gp, a2
                  xori         ra, t1, -2023
                  srl          a3, t2, s8
                  srli         t2, t3, 0
                  nop
                  or           s5, s11, a5
                  add          t0, a7, t2
                  sll          a2, s9, t3
                  sll          tp, s8, s4
                  sltiu        t5, t1, -1889
                  sll          a2, a0, a6
                  slli         s7, s5, 12
                  slt          a3, s0, t4
                  slt          t1, t2, s3
                  slt          gp, s1, s7
                  xori         sp, a5, 1068
                  or           a5, s8, a2
                  xor          a5, s0, t1
                  xor          a4, t4, sp
                  srai         s5, a2, 11
                  xori         s3, s4, -601
                  and          a7, s0, s10
                  sra          s11, s1, sp
                  add          t4, s10, t3
                  sub          s11, zero, s9
                  nop
                  auipc        s7, 105080
                  slt          s1, s6, s1
                  auipc        s2, 275482
                  add          s4, t0, a6
                  andi         ra, a1, -1344
                  sltiu        gp, a5, -276
                  sll          sp, s9, a3
                  srai         a2, t5, 15
                  add          t5, t3, gp
                  sra          s3, a4, ra
                  slli         a3, ra, 31
                  sll          gp, zero, s10
                  sltiu        s2, zero, 713
                  xor          s9, t2, t5
                  andi         sp, t5, 1714
                  sll          s7, t6, s0
                  sra          gp, s2, zero
                  slti         s1, a6, -1110
                  srli         t5, a0, 25
                  sub          t1, s4, sp
                  srai         a1, t3, 25
                  sra          s4, s4, s10
                  srli         tp, s5, 21
                  add          t1, zero, t6
                  slli         s7, s8, 21
                  or           s7, s11, s1
                  slli         a4, s4, 13
                  slli         a3, t1, 4
                  slt          zero, t6, a4
                  xori         a3, s4, 125
                  srai         t2, s9, 13
                  andi         a7, t6, -653
                  and          s1, gp, t5
                  srl          ra, s7, t4
                  srl          s5, zero, t3
                  sltiu        a7, s11, 979
                  andi         a6, t3, 1981
                  add          s1, t1, a2
                  and          s1, t0, a1
                  addi         t1, ra, -795
                  slt          t0, a2, s6
                  slti         zero, s1, 819
                  addi         sp, a6, -1451
                  sltu         s1, ra, t3
                  sub          a5, a7, s10
                  slt          sp, gp, t4
                  add          a2, t1, a6
                  auipc        t5, 872409
                  slli         s9, gp, 3
                  slti         sp, s7, 1687
                  sra          a4, a2, s3
                  slli         s9, s8, 6
                  sra          t2, t5, s2
                  add          ra, t3, t4
                  slti         s7, a4, -629
                  slti         s5, a2, 535
                  slt          s5, a5, s8
                  sltiu        a2, s7, 271
                  nop
                  sltu         s10, a0, s9
                  auipc        s7, 680674
                  xori         a7, a4, 335
                  xor          s0, t0, s0
                  sltu         a1, s0, tp
                  andi         a5, t4, 1994
                  sll          t2, tp, a3
                  auipc        sp, 71708
                  andi         t1, gp, 493
                  sltu         s2, s6, zero
                  srli         a6, t5, 26
                  andi         s3, s0, -666
                  auipc        t4, 701145
                  slt          gp, t1, t0
                  sll          a5, a0, t1
                  srai         s7, s1, 4
                  lui          s2, 851465
                  slli         a2, ra, 0
                  auipc        s2, 688111
                  sltu         tp, s8, a2
                  addi         s10, s7, 2020
                  srai         s11, gp, 0
                  slti         t0, a7, 1435
                  ori          a4, s9, -533
                  ori          s6, s11, 650
                  srli         a5, a2, 5
                  sub          gp, sp, a5
                  sltiu        a3, s4, -566
                  ori          a3, a3, 2001
                  ori          s1, s1, -431
                  sltu         gp, t5, t5
                  slli         a1, s8, 5
                  sll          t5, zero, s11
                  sltu         s5, s9, s0
                  sltu         s10, s0, a6
                  xori         sp, t1, -565
                  slli         s0, a2, 19
                  sll          t1, ra, s8
                  or           t5, s1, s4
                  sltiu        a6, a3, -1806
                  srai         sp, a4, 1
                  or           s7, ra, s1
                  sltiu        s7, a6, 1088
                  slti         s3, a1, -628
                  auipc        s3, 371662
                  sll          t0, s3, t5
                  slti         gp, a1, -1112
                  sub          a6, s11, tp
                  sltiu        ra, s3, 1718
                  sltiu        a3, a2, 312
                  sltiu        s10, t0, -1608
                  or           s1, a5, tp
                  sra          s5, gp, a0
                  addi         s10, ra, -1450
                  addi         t0, tp, -1781
                  nop
                  xor          a1, s4, zero
                  nop
                  and          ra, a4, a7
                  auipc        a7, 172296
                  sll          t2, tp, gp
                  sub          s4, a2, s8
                  xori         t5, a2, -1654
                  sub          s7, gp, t6
                  sub          a2, t6, a7
                  srl          a6, s10, s4
                  addi         t3, t5, -168
                  auipc        s7, 351942
                  slli         s2, s2, 27
                  srli         gp, t6, 8
                  srli         t1, s4, 26
                  xori         a1, t3, -649
                  and          a7, t1, tp
                  and          t1, s10, a6
                  sll          s3, s6, a2
                  srl          a3, s10, t3
                  lui          a5, 852984
                  lui          s5, 767288
                  ori          t2, t5, 896
                  xori         a1, sp, 1682
                  sll          t2, t3, s6
                  srli         t5, tp, 4
                  slt          s0, zero, s7
                  xori         s3, a2, -1427
                  andi         t5, s8, -1563
                  lui          s2, 210190
                  srl          t5, s1, s9
                  andi         s1, s9, 51
                  xor          s0, t1, t4
                  or           s1, tp, s0
                  lui          s2, 220002
                  sltiu        a6, t4, 1507
                  nop
                  slt          s7, s3, t6
                  srl          a5, t4, s0
                  and          s2, a3, sp
                  sll          s6, a1, s0
                  slt          s1, s5, a2
                  slli         t4, a1, 17
                  slt          a1, s5, t6
                  lui          s11, 405132
                  sra          a4, gp, s8
                  xor          t0, t2, a2
                  slt          a1, s9, t6
                  add          a1, s3, s0
                  sra          a7, a5, s3
                  xor          s11, t4, t2
                  sub          s11, a3, a2
                  sltiu        t2, gp, -1652
                  srl          s2, s9, s0
                  add          s9, t0, tp
                  addi         s0, s8, -647
                  slli         s10, t5, 13
                  slti         s9, t1, -1324
                  ori          t1, s2, -1063
                  auipc        t4, 348176
                  srli         t0, s4, 18
                  sra          a7, t3, s10
                  slli         t3, s8, 17
                  andi         a2, t4, -139
                  sltu         s10, gp, zero
                  add          s3, s8, ra
                  sll          s7, a3, s0
                  slli         s0, sp, 1
                  sltu         s7, s7, a0
                  and          t4, s2, s11
                  xori         sp, a7, 1268
                  srai         a2, a0, 1
                  xori         s5, gp, -587
                  add          s0, s6, s10
                  andi         s3, a7, -907
                  srl          s9, tp, a5
                  sub          sp, a7, ra
                  slti         a3, a2, -263
                  auipc        a3, 784675
                  nop
                  ori          a3, zero, 1118
                  sub          zero, a1, t6
                  auipc        t4, 467151
                  auipc        zero, 588435
                  auipc        zero, 30650
                  sub          t5, a5, zero
                  and          ra, t6, a5
                  lui          s9, 930017
                  or           t0, t0, s6
                  srli         a4, s2, 27
                  sub          s7, s7, s1
                  sll          a7, t4, a2
                  xor          s9, a0, a7
                  srli         a4, s0, 8
                  or           s6, t3, ra
                  and          ra, s8, t3
                  sltu         s10, s5, a2
                  or           t0, s9, s1
                  lui          s9, 339978
                  andi         s11, t6, -799
                  sltiu        s1, t1, 974
                  slti         s9, t2, -597
                  lui          a3, 275776
                  srai         a5, a5, 22
                  xori         a3, t5, 1887
                  and          a7, s1, s8
                  auipc        s7, 391862
                  lui          s2, 356525
                  xori         t4, s5, 1492
                  li           ra, 0x155f6667 #start riscv_int_numeric_corner_stream_8
                  li           s1, 0xffffffff
                  li           s7, 0xffffffff
                  li           tp, 0x0
                  li           s6, 0xffffffff
                  li           s3, 0x0
                  li           s10, 0xffffffff
                  li           s11, 0x0
                  li           gp, 0x80000000
                  li           a5, 0x0
                  sub          s10, tp, ra
                  nop
                  addi         tp, s3, -301
                  nop
                  addi         s7, s6, 41
                  sub          s10, gp, s1
                  lui          s1, 206988
                  add          s11, s10, a5
                  lui          ra, 454085
                  sub          s10, tp, s1
                  add          s10, s7, s3
                  auipc        s6, 730702
                  addi         s3, s3, -917
                  auipc        s10, 218121
                  nop
                  add          s3, gp, tp
                  addi         ra, s3, -1114
                  addi         s1, gp, -1400
                  lui          s1, 728357
                  sub          s7, tp, s7
                  lui          tp, 640327
                  auipc        ra, 916160
                  lui          s1, 827218
                  add          a5, s11, s1
                  auipc        s7, 672398
                  lui          s10, 958814
                  auipc        a5, 591775
                  sub          s1, s6, gp
                  auipc        gp, 324869
                  addi         ra, a5, 135 #end riscv_int_numeric_corner_stream_8
                  sub          s9, s4, a0
                  or           zero, a6, a3
                  slt          a4, s9, t2
                  nop
                  sra          s5, sp, s5
                  auipc        t1, 475063
                  sltu         a6, t2, tp
                  andi         s0, a4, -265
                  and          a7, t3, s0
                  lui          a1, 860100
                  lui          gp, 201603
                  sra          a5, s2, a7
                  andi         s3, a6, 282
                  lui          s0, 93768
                  ori          t1, s3, -1214
                  add          t0, gp, a2
                  sll          t5, sp, s11
                  srl          sp, a1, a0
                  and          a4, s1, a3
                  slti         s5, t0, 613
                  slt          s3, a6, s5
                  sll          a3, s3, zero
                  xori         s9, ra, -127
                  or           ra, zero, t3
                  and          t5, t4, s9
                  xori         t5, tp, -898
                  xori         sp, zero, 1795
                  xor          gp, s8, a2
                  sltiu        a4, t6, 1711
                  slli         t4, a2, 27
                  slti         a4, a5, 107
                  srai         zero, s10, 27
                  slti         a7, sp, -721
                  srl          a5, a4, t6
                  or           s11, s3, a5
                  sltu         a4, a2, s1
                  addi         t1, t4, 1268
                  slti         s9, a0, -1015
                  andi         t1, a0, -1135
                  and          a7, s10, s3
                  sub          a5, s2, a3
                  addi         t5, a2, -227
                  srl          s6, s11, t6
                  ori          s1, a5, -981
                  srai         zero, s1, 11
                  srai         tp, s4, 16
                  srl          a7, s11, t6
                  srli         a3, t6, 20
                  sltu         a1, gp, t4
                  andi         s10, s7, -1100
                  sra          ra, s11, s10
                  sltiu        s7, a5, -195
                  andi         s9, s9, 1274
                  ori          tp, s4, 1532
                  lui          zero, 587935
                  addi         sp, t2, 1786
                  or           s6, s2, a4
                  sltiu        t5, a4, 1592
                  slti         ra, t3, 1122
                  srai         t1, s0, 10
                  srl          a6, t6, a5
                  srai         s0, a1, 24
                  slli         t5, s0, 6
                  srl          s11, ra, s11
                  or           tp, s11, s2
                  sub          t1, s5, gp
                  slti         s7, s5, 292
                  sub          s3, t0, s9
                  auipc        t1, 419918
                  sra          a5, s6, s4
                  sltu         t1, t2, s3
                  xori         zero, t2, 1207
                  srl          a2, a5, a1
                  slli         s2, s8, 18
                  sltiu        t0, s0, 1491
                  srai         a4, t3, 7
                  xor          a2, s6, s3
                  srl          a1, t5, ra
                  addi         a1, s11, -345
                  srli         a7, t5, 28
                  andi         s1, t2, 1756
                  srl          t4, s2, t1
                  srli         gp, t4, 10
                  andi         s4, sp, 1703
                  sll          s6, s7, a4
                  or           sp, s3, t0
                  lui          s1, 157132
                  lui          t2, 914700
                  lui          a2, 798606
                  nop
                  sltiu        s10, s4, -1819
                  ori          a5, t3, -1958
                  add          gp, a7, s11
                  addi         s0, s2, -155
                  andi         a7, a1, -111
                  srl          a3, a2, s5
                  sra          a1, s3, t5
                  sll          t4, t1, gp
                  slli         t3, a3, 11
                  lui          s7, 607324
                  xori         sp, s2, 1765
                  addi         tp, gp, -1697
                  and          t5, a4, a1
                  nop
                  xori         a3, zero, 1579
                  slli         s5, s2, 31
                  auipc        ra, 553820
                  srli         s5, t0, 1
                  sltiu        a3, t2, -1088
                  sub          a2, s3, s6
                  slt          t0, s7, gp
                  or           s9, s4, a3
                  auipc        a4, 85797
                  lui          s9, 333134
                  ori          t0, zero, -1235
                  sltiu        a5, t1, -1663
                  and          s2, a7, t3
                  or           s5, a6, s4
                  sub          s5, tp, a5
                  ori          t1, a6, -571
                  and          a3, s7, t3
                  addi         s0, s5, 1217
                  sll          a1, a7, tp
                  nop
                  srli         a3, sp, 1
                  sll          s3, a6, s3
                  and          sp, a0, a5
                  andi         t1, t6, -1879
                  srl          a3, s3, a3
                  addi         sp, tp, -435
                  slt          a5, s7, t3
                  sra          t1, tp, s2
                  nop
                  addi         s10, t2, -1678
                  andi         s6, s5, -218
                  slt          s5, a4, tp
                  sra          zero, a1, tp
                  sltiu        sp, s9, -695
                  sra          s0, s11, s0
                  srli         s3, t4, 12
                  sltiu        s10, s11, -571
                  srai         a6, s4, 6
                  srl          gp, t4, a6
                  slli         t3, a3, 2
                  sll          s7, t5, s3
                  sltiu        a3, gp, -634
                  xor          t2, s8, t6
                  slti         s10, s2, -634
                  srai         t0, s1, 26
                  slli         s1, t1, 17
                  auipc        sp, 706001
                  andi         s0, s3, -161
                  auipc        ra, 318182
                  or           s5, t5, s5
                  srl          s4, tp, s6
                  sub          tp, s3, zero
                  srl          a1, tp, t3
                  or           ra, s3, a4
                  addi         s6, s8, -258
                  slti         s5, tp, -1477
                  and          gp, s8, s9
                  lui          a1, 796497
                  ori          s4, sp, 661
                  or           s5, t5, zero
                  auipc        sp, 663546
                  auipc        gp, 179480
                  slt          a4, a2, s9
                  addi         t3, gp, 1407
                  and          ra, s4, a2
                  slt          a3, tp, a3
                  ori          a5, a3, -675
                  xori         t5, a4, 1340
                  or           a1, a0, t0
                  and          t2, a7, a1
                  slt          s2, a2, a7
                  auipc        a5, 265006
                  slt          s7, s7, a2
                  lui          t1, 601449
                  xori         t3, s0, -1346
                  srl          s7, t4, s2
                  and          t1, s6, s7
                  or           s1, t5, sp
                  sltu         t3, ra, sp
                  slti         s7, s5, -813
                  andi         gp, s5, -1849
                  sltu         a6, a7, s3
                  xor          ra, t0, a0
                  slt          s4, s3, a1
                  srai         s5, s11, 19
                  ori          t0, s2, -9
                  nop
                  srli         a4, t5, 30
                  sll          s11, s1, a3
                  sll          s0, t0, s9
                  and          t3, a7, s3
                  sub          t1, a7, s9
                  srai         a7, a3, 23
                  xor          s6, t0, s0
                  xori         ra, a2, 1649
                  sll          a4, s7, s11
                  nop
                  sltiu        t3, t0, -717
                  srai         s11, s3, 4
                  auipc        sp, 273012
                  srli         s1, s8, 29
                  nop
                  sub          t5, zero, a1
                  nop
                  or           s6, s10, s10
                  add          s9, s11, t4
                  sra          s1, a6, a7
                  and          ra, s8, s9
                  slti         a7, t6, -1242
                  slli         a6, s11, 17
                  sltu         a2, zero, s3
                  andi         a6, s11, 1468
                  sub          gp, a3, a5
                  nop
                  or           t4, s10, t6
                  xori         t0, s0, -1982
                  xor          a5, s5, s6
                  addi         s3, t2, 106
                  auipc        zero, 335933
                  srai         t0, t2, 17
                  slli         zero, gp, 9
                  nop
                  xori         a1, a1, 608
                  ori          a5, tp, 100
                  sltiu        s5, a7, 1371
                  srli         zero, s8, 28
                  nop
                  xori         tp, a6, -81
                  or           s4, s6, s2
                  xor          s7, a2, a4
                  slti         a1, s7, -1723
                  sub          s1, sp, t4
                  xori         s9, s5, 1886
                  sltiu        s2, t4, 290
                  srai         s4, gp, 11
                  addi         s1, s5, -36
                  srl          s11, t1, s7
                  srli         a5, s11, 18
                  or           s9, t0, s9
                  xori         s4, a1, 837
                  srli         s4, s6, 16
                  and          s4, s5, s5
                  xori         a7, t1, 840
                  xor          t3, a1, a2
                  sll          a5, s0, a1
                  andi         tp, s5, 539
                  slti         s5, tp, -2009
                  slti         t3, sp, 1237
                  lui          s9, 1006303
                  sub          t0, s8, a5
                  sub          a4, s11, s3
                  and          ra, a6, a2
                  srai         a6, t6, 12
                  srl          s6, s1, s6
                  nop
                  srli         t0, a6, 11
                  srai         t2, s0, 30
                  xor          s10, a0, t2
                  sub          s2, s4, s0
                  sll          zero, s5, t5
                  addi         t3, a3, 1760
                  nop
                  nop
                  lui          sp, 610514
                  auipc        s11, 759797
                  or           s7, gp, sp
                  sll          t4, s1, t2
                  andi         ra, s11, 1354
                  sltiu        s3, a0, -1665
                  addi         t5, s8, -349
                  nop
                  add          s2, s4, a5
                  auipc        s1, 561687
                  sub          ra, sp, t0
                  sltu         t4, t6, a6
                  sltiu        a7, a0, -1474
                  xori         s6, gp, -1242
                  add          s1, t4, t5
                  xor          a5, gp, zero
                  srli         s10, sp, 10
                  srli         tp, s1, 31
                  ori          tp, gp, 558
                  sra          a7, s1, s11
                  xori         gp, gp, -306
                  sll          a7, s11, a1
                  lui          s4, 967915
                  auipc        s4, 217801
                  xor          ra, a0, a3
                  sltu         a6, a5, tp
                  slti         t4, t1, 1348
                  slt          sp, a3, a5
                  ori          s10, a4, -212
                  srl          s3, t4, a2
                  addi         ra, gp, 1521
                  slti         a6, s5, 1378
                  sra          t3, ra, tp
                  srl          t5, a3, s7
                  slti         s4, sp, 1092
                  srl          a7, t2, s8
                  or           tp, s7, a5
                  or           t1, s8, zero
                  slti         s7, a4, -467
                  sll          a3, a2, s5
                  slti         t4, gp, -1385
                  xor          s1, a7, s7
                  srli         a7, t1, 25
                  sub          s7, t0, s8
                  sltu         s11, t3, s8
                  or           a5, t4, s10
                  auipc        a7, 898308
                  sub          t1, a6, s10
                  xor          tp, s2, a3
                  sltu         s2, s2, t3
                  and          s4, s0, s8
                  or           tp, s5, a3
                  xor          a5, s4, a2
                  auipc        a3, 913094
                  addi         ra, s9, 692
                  ori          s6, a0, 776
                  add          t5, s4, zero
                  sltu         t2, t5, s5
                  sra          a1, ra, t5
                  add          s0, sp, ra
                  and          s11, a5, s7
                  add          ra, s3, t4
                  sra          a7, a1, t2
                  andi         s6, s5, 1026
                  ori          t3, s6, -844
                  srai         s5, t4, 31
                  add          tp, a7, t5
                  add          t2, s11, s7
                  auipc        s11, 243632
                  lui          s1, 817486
                  addi         a1, a1, 110
                  slt          a5, s11, t4
                  xor          a1, a3, s9
                  lui          t4, 106458
                  ori          t0, s5, 908
                  xori         gp, a0, 432
                  xor          a2, a6, a1
                  lui          tp, 645917
                  sub          t4, t6, s7
                  slti         s2, a6, 931
                  sra          zero, s9, t0
                  ori          t3, t1, 1445
                  add          a6, sp, s2
                  andi         t3, a3, -1611
                  lui          gp, 392364
                  and          s6, t1, s0
                  addi         a6, s1, -136
                  slli         a1, t3, 30
                  or           s9, tp, t1
                  sll          s11, zero, zero
                  lui          t1, 850364
                  slt          s2, s5, ra
                  sltu         a3, s10, a0
                  or           t3, s9, a5
                  sll          a4, zero, s7
                  xor          zero, a3, sp
                  srai         s5, t4, 7
                  sltu         gp, a3, s4
                  andi         s0, s0, 439
                  srai         t2, s8, 7
                  sltu         a1, t5, t6
                  sra          a7, a7, t4
                  srai         a6, a6, 7
                  srl          a1, s1, a5
                  ori          a1, t6, -1046
                  andi         a7, s10, 1823
                  nop
                  srl          t0, zero, t6
                  xor          s9, a0, s1
                  sra          a1, s9, s2
                  lui          s5, 629996
                  and          s7, s6, a7
                  srai         a7, s2, 23
                  srl          gp, t5, t0
                  ori          gp, s3, 591
                  sltiu        zero, a7, -1522
                  add          tp, gp, a7
                  ori          s5, a6, 199
                  sltu         s10, a2, s1
                  sub          a4, a3, s4
                  slt          s11, tp, a0
                  sltiu        a5, s2, 662
                  sll          gp, s6, s10
                  and          a1, s9, s2
                  xor          t0, t6, t3
                  sub          s6, t4, s2
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           s3, 0x0
                  li           a5, 0x77cef459
                  li           t1, 0xffffffff
                  li           a3, 0x0
                  li           t4, 0x80000000
                  li           s6, 0x9aa3c305
                  li           a2, 0x672f9e9b
                  li           s10, 0x80000000
                  li           t0, 0x0
                  lui          ra, 1006492
                  add          a2, t1, ra
                  auipc        a5, 58104
                  sub          ra, t4, s10
                  nop
                  nop
                  auipc        s10, 765776
                  add          ra, t4, ra
                  add          t0, a3, s3
                  nop
                  nop
                  add          a5, a3, a5
                  addi         a2, ra, -1264
                  lui          ra, 796347
                  nop
                  nop
                  sub          a2, a3, a2
                  nop
                  nop
                  auipc        t4, 625367
                  auipc        s3, 676916
                  add          s3, s3, s6
                  lui          s3, 1027201
                  nop
                  sub          t1, s3, a5
                  addi         a5, s3, -51
                  auipc        t4, 46519 #end riscv_int_numeric_corner_stream_3
                  srli         s1, gp, 14
                  ori          a2, s4, -1838
                  andi         gp, t3, 710
                  lui          a7, 163818
                  lui          t5, 184645
                  xori         t0, s3, 702
                  andi         a6, sp, -1770
                  and          t3, a4, tp
                  srl          s11, a4, sp
                  sltu         s7, a1, s8
                  sltu         t0, ra, t1
                  andi         zero, a0, 163
                  add          tp, a6, a0
                  slli         t0, ra, 0
                  xori         gp, s6, -1877
                  srl          s9, t6, s1
                  auipc        s6, 605483
                  auipc        s10, 63063
                  auipc        s10, 738065
                  srai         a6, t0, 3
                  andi         a3, s11, 1169
                  auipc        gp, 1017341
                  addi         t5, t6, 520
                  and          gp, s8, s2
                  sltiu        s11, t4, -1157
                  auipc        s6, 783353
                  sll          gp, t2, a4
                  srl          s3, s5, s8
                  slt          sp, a1, t1
                  add          s1, a0, t0
                  slli         a1, s0, 31
                  or           s2, a3, sp
                  xor          s1, t2, s10
                  andi         s10, a5, 188
                  xori         t4, tp, 355
                  srai         t4, t1, 20
                  srl          t0, t4, a1
                  srai         s4, a6, 12
                  srai         s9, s8, 25
                  and          a6, t3, s7
                  srl          a5, a6, t5
                  sub          ra, t0, a2
                  srl          ra, t2, s11
                  or           ra, t5, t0
                  and          tp, a2, s0
                  ori          s7, a2, 1949
                  srli         gp, a0, 2
                  slti         a1, a4, 1004
                  sll          tp, a0, t1
                  srai         s2, s8, 7
                  addi         a5, s8, -1771
                  slli         sp, s6, 11
                  slli         a6, t3, 26
                  ori          s7, s7, 969
                  andi         a1, s3, 1831
                  sll          s9, s8, t4
                  srli         zero, t6, 5
                  slti         s0, a6, 1572
                  or           t5, s0, a0
                  xori         gp, t4, 946
                  addi         t5, s7, -1554
                  nop
                  auipc        tp, 131678
                  auipc        tp, 388945
                  srli         s4, a2, 26
                  nop
                  ori          a4, s2, -1522
                  sltiu        a2, ra, -2006
                  slli         t1, t0, 7
                  sub          t4, s5, t0
                  or           a5, s5, a1
                  xori         t2, a1, -1945
                  slti         a6, s5, -1251
                  srli         t4, s9, 22
                  xori         s5, a2, 710
                  ori          a2, t0, -1077
                  nop
                  or           a7, tp, a1
                  add          s0, a7, a4
                  sltiu        s2, s6, -1643
                  auipc        a3, 576804
                  add          s6, a6, s9
                  sll          tp, s5, a4
                  addi         t3, s5, 680
                  or           s1, a5, a7
                  slti         tp, a6, -1637
                  sll          t5, a7, zero
                  sra          s2, s2, a0
                  xori         s4, s10, -1969
                  sub          s7, t2, a4
                  sub          s3, a1, a2
                  andi         ra, s0, -1213
                  sltiu        s2, s11, 1462
                  sub          s3, s10, t2
                  slt          s1, a2, t4
                  srli         t3, a6, 13
                  srli         sp, s1, 12
                  srli         a1, a4, 26
                  srli         sp, s5, 13
                  slli         a6, s1, 28
                  slli         s1, s9, 7
                  and          sp, a5, t6
                  add          s2, a0, t6
                  slti         s4, s11, 1020
                  nop
                  xor          s9, a1, a0
                  sltu         s9, a2, s8
                  or           a1, tp, t6
                  addi         s2, a6, -791
                  slli         s4, a0, 24
                  or           s0, zero, s6
                  srli         sp, s1, 20
                  lui          gp, 49870
                  sll          a2, a3, a2
                  addi         s0, a4, -2001
                  sltu         t0, a2, a2
                  srl          a6, a5, s6
                  sra          s0, s1, t5
                  andi         s6, a6, 1273
                  sra          s4, a1, a2
                  lui          s9, 841453
                  or           ra, t0, a2
                  srai         s5, s0, 27
                  lui          s1, 994668
                  or           gp, t3, a6
                  sra          s9, s9, sp
                  slli         s2, gp, 21
                  srai         t0, a5, 25
                  slt          s6, a2, s7
                  or           t3, t1, s5
                  slli         a3, s4, 6
                  sll          t5, a1, s8
                  sltiu        t5, t0, -1743
                  add          zero, t3, tp
                  srl          t4, s6, gp
                  slli         zero, s7, 18
                  auipc        a6, 888949
                  andi         t4, ra, 608
                  lui          a7, 913500
                  addi         t1, a3, -91
                  xor          a4, a6, a1
                  or           s2, a3, t1
                  slt          t4, s10, t2
                  addi         t4, t3, -1465
                  slt          t5, s11, a0
                  srai         s11, s10, 2
                  sltu         t0, s3, s7
                  auipc        a1, 381919
                  slt          s3, a1, s2
                  sra          gp, sp, s10
                  slti         a7, s9, -1229
                  andi         s4, a6, -840
                  or           gp, t6, a1
                  addi         t5, t3, -1438
                  or           s1, t2, s1
                  srai         s10, s7, 24
                  sll          s7, t0, s3
                  slli         s7, s6, 22
                  ori          a5, s2, -1006
                  andi         s9, a7, 1532
                  slli         s0, t4, 7
                  add          t2, zero, a3
                  and          s1, t3, a2
                  sub          s11, a4, a7
                  lui          t2, 596902
                  sra          a7, a1, t5
                  srl          zero, a4, s10
                  slt          a6, t0, t4
                  sll          s6, a0, ra
                  slti         a5, s7, -585
                  and          t0, s4, gp
                  srli         ra, s2, 20
                  xori         a3, s11, -384
                  auipc        a7, 471636
                  srli         s7, s1, 11
                  lui          s9, 958965
                  sub          t1, s8, t5
                  auipc        s9, 492697
                  or           sp, s10, s2
                  slt          s5, t3, tp
                  sra          s0, sp, t1
                  add          gp, ra, s2
                  srl          ra, t5, a0
                  srl          a1, a3, a5
                  sltu         t0, s8, a4
                  and          a3, s0, s10
                  slt          s2, s3, s1
                  sltu         s4, s1, a2
                  xori         t1, sp, 682
                  xori         ra, s1, 1605
                  sll          ra, s2, t5
                  nop
                  xor          t4, t6, t1
                  slti         t4, a0, -22
                  srai         a1, sp, 0
                  slti         ra, a2, -342
                  xori         a7, s3, 1692
                  srli         s10, a2, 21
                  or           a3, s5, sp
                  slti         s0, s9, -478
                  srli         s2, sp, 17
                  slli         a1, t1, 15
                  sub          tp, s7, t5
                  or           a7, zero, a2
                  auipc        t0, 139552
                  addi         s0, s0, -622
                  lui          s5, 454470
                  slt          s0, s5, t1
                  add          s7, t0, s7
                  lui          ra, 705649
                  auipc        s6, 457597
                  sub          a7, s5, s4
                  slti         tp, a3, -1939
                  slt          s4, a3, a6
                  srl          s5, s3, a6
                  slt          t0, s6, t2
                  sltiu        t1, s10, 1772
                  srai         a5, t1, 11
                  auipc        t4, 669965
                  nop
                  andi         t5, sp, 1804
                  srli         tp, s10, 12
                  add          tp, a4, t2
                  sltiu        t1, t6, 370
                  andi         s2, s4, 1599
                  and          t5, t2, zero
                  sra          s7, gp, s1
                  sll          t4, sp, t4
                  xori         s2, a6, 1483
                  ori          a7, t5, 227
                  ori          a4, tp, -1835
                  add          ra, s7, a3
                  sltiu        t4, a7, 2029
                  ori          a2, t5, -2043
                  andi         a1, a2, -837
                  sltu         s6, t4, s9
                  addi         tp, a7, 1595
                  sltiu        s4, zero, -676
                  sub          a4, t6, a5
                  nop
                  andi         s2, gp, 197
                  lui          s11, 350465
                  ori          ra, t0, 747
                  lui          s4, 869548
                  or           a4, a6, a4
                  xori         t0, a4, -1364
                  add          t2, s8, a6
                  add          zero, s9, a4
                  srl          s10, ra, t2
                  and          a2, t1, a3
                  nop
                  lui          tp, 441994
                  srli         zero, gp, 13
                  slli         s6, s6, 30
                  li           s7, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           t1, 0x0
                  li           a5, 0x80000000
                  li           a2, 0x80000000
                  li           t0, 0xffffffff
                  li           s9, 0xe1438506
                  li           a3, 0x0
                  li           a7, 0x8208bfd7
                  li           s11, 0x2db78a57
                  li           s4, 0xffffffff
                  auipc        t0, 795924
                  auipc        t0, 76225
                  addi         t0, t0, -692
                  sub          t0, a2, s7
                  auipc        t1, 947347
                  auipc        s11, 618692
                  lui          a2, 622680
                  add          a7, s4, a7
                  auipc        t1, 223999
                  addi         a7, t1, -192
                  add          a2, s9, a2
                  auipc        s7, 396479
                  nop
                  nop
                  nop
                  addi         s4, a3, 483
                  addi         s11, t0, -1253
                  lui          t1, 107088 #end riscv_int_numeric_corner_stream_17
                  lui          zero, 490078
                  xori         ra, a1, 1032
                  and          s3, s0, zero
                  andi         t0, s5, -274
                  sra          s6, s10, a6
                  ori          s11, s7, 1955
                  add          t0, a1, t4
                  xori         zero, sp, -1521
                  slti         s3, ra, -1780
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           s7, 0x2a49874e
                  li           gp, 0x2bd4d94e
                  li           tp, 0x0
                  li           s0, 0xffffffff
                  li           s4, 0x35ded52b
                  li           a3, 0xffffffff
                  li           s9, 0x0
                  li           s6, 0x0
                  li           t4, 0x80000000
                  addi         gp, gp, -118
                  nop
                  auipc        s7, 469180
                  lui          gp, 907857
                  nop
                  addi         s6, t2, -1937
                  lui          a3, 140785
                  auipc        s0, 413813
                  nop
                  auipc        s7, 603608
                  auipc        t2, 48197
                  lui          s9, 372018
                  add          t2, tp, a3
                  add          s7, tp, t4
                  lui          s4, 834582
                  nop
                  nop
                  add          s4, t4, t4
                  addi         t4, s4, 1930
                  auipc        t2, 998807
                  addi         s7, s6, -1985
                  lui          t4, 787594
                  sub          tp, s4, s7
                  nop
                  nop #end riscv_int_numeric_corner_stream_0
                  ori          s2, s9, -421
                  sra          a1, s8, gp
                  andi         ra, sp, 398
                  srai         s11, tp, 24
                  srai         a4, t4, 2
                  sltu         a5, t5, zero
                  slt          t2, s4, tp
                  sltiu        s3, s3, -293
                  sra          s10, a5, t6
                  addi         t5, s7, -1372
                  xori         gp, a7, -629
                  slti         a6, s2, 828
                  sra          s6, t2, s5
                  sltiu        s1, a5, -1673
                  srai         s5, s2, 4
                  sra          ra, tp, t5
                  slt          ra, t1, a5
                  xori         sp, s10, 1406
                  sltiu        s6, a6, 1343
                  srai         a4, s4, 5
                  and          a2, sp, s5
                  xori         s1, t1, 1370
                  nop
                  slt          s0, s5, zero
                  slli         s3, s3, 13
                  srl          t4, a0, a5
                  srl          s3, s4, a1
                  addi         t3, a6, -294
                  sll          ra, ra, s8
                  xori         tp, s0, 109
                  nop
                  sra          sp, t6, t2
                  slt          s6, a0, s0
                  slt          t1, s11, t4
                  ori          a5, s7, -192
                  slli         gp, a3, 13
                  slli         tp, s3, 27
                  srl          a1, t3, a5
                  srai         s4, t5, 8
                  ori          a4, a1, -1081
                  or           t2, a2, a5
                  andi         t1, sp, -532
                  lui          s1, 162308
                  nop
                  lui          t4, 266237
                  srl          s6, a5, a0
                  ori          s0, t4, 1320
                  slt          s3, s6, s6
                  add          s7, a5, s0
                  srl          t0, sp, ra
                  srli         a7, t6, 17
                  auipc        s10, 459157
                  slti         s10, a5, 1249
                  slt          t0, t3, s2
                  srl          ra, t4, tp
                  sltu         t0, gp, t3
                  sltiu        t3, sp, -1822
                  ori          t4, a4, 2024
                  lui          t1, 838250
                  xori         sp, a1, -1419
                  slli         gp, gp, 24
                  addi         a2, s9, -1246
                  add          a4, a4, s6
                  xor          a7, a4, a3
                  sub          s7, a2, tp
                  sltiu        s4, s1, 1812
                  and          s10, s7, a6
                  auipc        a2, 236491
                  add          t5, sp, ra
                  xor          a4, a1, s3
                  ori          a1, zero, 422
                  xor          s7, t6, sp
                  or           gp, a7, t0
                  srl          ra, t2, ra
                  addi         gp, tp, -205
                  addi         s1, a3, -1515
                  slt          s2, t5, a2
                  srai         s3, t5, 12
                  and          t3, s5, s4
                  sll          zero, s2, a0
                  srl          s6, a7, t6
                  slti         zero, s8, 1360
                  sltiu        t0, a7, 1674
                  addi         t0, t4, 227
                  sll          ra, s2, ra
                  add          s5, sp, ra
                  nop
                  auipc        a4, 418500
                  nop
                  or           s4, sp, t3
                  xor          t1, s10, t5
                  ori          t0, t0, 960
                  xor          sp, s8, s4
                  slti         a6, s3, -1685
                  sub          s11, sp, s3
                  slli         t4, a0, 15
                  srl          s0, t2, tp
                  sltiu        tp, gp, -1689
                  ori          s9, a2, -667
                  srli         a3, s5, 23
                  srli         t1, s7, 23
                  sll          s4, s8, a0
                  slli         t3, s2, 6
                  srl          a7, a6, s0
                  xor          a3, s6, s0
                  sll          ra, t5, a1
                  andi         a7, tp, 57
                  slti         t2, s7, 1686
                  sll          a4, gp, s1
                  srl          a7, sp, s1
                  or           a5, a0, a0
                  li           s2, 0x3c6ee1d2 #start riscv_int_numeric_corner_stream_6
                  li           t2, 0x0
                  li           a2, 0x670e9238
                  li           t4, 0xffffffff
                  li           a7, 0x5e945c0c
                  li           ra, 0xffffffff
                  li           s5, 0x0
                  li           s9, 0x0
                  li           t5, 0x0
                  li           s4, 0xffffffff
                  nop
                  addi         t4, t4, -54
                  nop
                  nop
                  add          ra, s9, s5
                  sub          s4, t4, ra
                  auipc        t4, 131811
                  lui          a2, 477535
                  nop
                  addi         s4, t5, 1714
                  add          a2, s9, s9
                  nop
                  add          a2, s4, t4
                  sub          s9, a7, t4
                  sub          s5, s4, ra
                  auipc        t5, 25149
                  lui          s2, 1016242
                  sub          s4, a2, a7
                  auipc        t2, 465934
                  add          s2, t5, s9 #end riscv_int_numeric_corner_stream_6
                  ori          a2, t6, 632
                  and          t3, t1, s9
                  sra          s4, s0, zero
                  slti         a2, zero, -1130
                  auipc        sp, 206518
                  slti         zero, a7, 2026
                  andi         t0, gp, -2008
                  srli         t5, s0, 1
                  srli         s5, a1, 27
                  xori         s4, ra, 1159
                  slt          gp, s2, zero
                  slt          s7, t3, s9
                  sltu         t2, sp, a1
                  sltu         t0, t5, gp
                  xor          s10, a4, s4
                  or           a7, a5, t2
                  xori         s9, s0, 772
                  auipc        t1, 889851
                  lui          s5, 478457
                  xor          a7, t6, tp
                  andi         s6, s0, -1561
                  add          s9, s1, a3
                  sltiu        a4, t5, -1441
                  srai         a4, t2, 28
                  nop
                  srl          s10, a4, t1
                  ori          t3, s4, -924
                  nop
                  nop
                  sltu         s2, s10, s4
                  srai         t2, a3, 18
                  sltu         a2, t0, s3
                  sll          a4, a5, t0
                  sra          s7, s9, tp
                  sub          gp, t4, s2
                  sltiu        s6, a3, 1091
                  slli         a4, s8, 22
                  sll          a3, s4, s11
                  srl          a2, a4, zero
                  ori          zero, zero, -262
                  andi         s5, t0, 582
                  lui          a4, 38164
                  sll          s11, t4, t6
                  ori          t5, t2, 1444
                  sll          s2, zero, a1
                  srai         ra, a5, 16
                  nop
                  srl          a4, gp, a3
                  sltiu        tp, t4, -1192
                  xori         sp, gp, -900
                  ori          s9, a6, 840
                  add          s5, a3, a3
                  and          t5, s2, a6
                  sll          s4, s11, a6
                  ori          ra, a4, 1900
                  slti         a1, s10, 1767
                  slti         a6, s7, -1492
                  srli         t5, a5, 28
                  srai         gp, t1, 0
                  slti         a1, s8, -1332
                  ori          a2, s6, -1858
                  sub          tp, s1, t1
                  srli         s3, zero, 24
                  slt          t5, a4, s0
                  srl          a5, s6, s0
                  addi         a2, a1, 1807
                  addi         s6, a4, 359
                  slli         sp, a1, 9
                  sra          t5, t0, s8
                  ori          a5, a7, -1180
                  sltu         s4, s3, a3
                  andi         s10, t5, 1228
                  sub          s4, t6, sp
                  slti         t2, s11, 1593
                  sra          a1, s5, s5
                  srli         tp, s10, 9
                  nop
                  nop
                  srli         s2, zero, 30
                  slti         a7, s4, 700
                  nop
                  xor          s1, s5, s9
                  sra          s10, a6, s4
                  sra          gp, t4, s9
                  sltu         s9, tp, t3
                  xori         a5, s5, -1844
                  srl          s7, s6, t4
                  nop
                  nop
                  add          s11, s8, s11
                  srli         s1, a3, 18
                  and          s3, t6, s5
                  slti         a5, s2, -1142
                  slli         zero, t5, 10
                  srli         a5, a0, 2
                  auipc        s11, 461075
                  sll          zero, a3, a0
                  addi         s11, t1, -639
                  addi         s5, t5, 1297
                  nop
                  andi         s7, s4, -1407
                  andi         zero, s2, 1710
                  sub          s6, a7, s4
                  auipc        zero, 631870
                  slt          s1, gp, a5
                  srai         s7, tp, 0
                  sltu         s0, t2, s4
                  slti         s2, t3, -986
                  nop
                  addi         s11, t1, 860
                  slli         s7, t3, 17
                  addi         s2, ra, -1401
                  add          a7, a6, t2
                  sra          t4, a5, s0
                  sltiu        gp, s5, -606
                  and          s1, t3, a6
                  sra          s5, s3, a3
                  xor          s11, s4, a6
                  sub          a7, gp, a0
                  sltu         s9, t2, a4
                  lui          s4, 296349
                  lui          s3, 337601
                  sll          a5, s8, s4
                  sltu         s10, a5, s10
                  lui          ra, 852758
                  sltu         a1, a1, s7
                  slt          s2, ra, ra
                  auipc        s9, 1010913
                  nop
                  lui          a6, 487712
                  sltiu        s0, a7, -281
                  slli         s7, ra, 0
                  sltiu        s3, s11, 865
                  addi         t0, s8, -666
                  and          tp, ra, a6
                  or           a1, t3, t4
                  lui          s7, 171642
                  sub          a7, a5, t3
                  xor          s11, t3, t1
                  srl          s6, a6, t0
                  slti         s7, a1, -604
                  addi         s3, s5, -1220
                  add          a7, s4, a1
                  sll          s6, a5, t6
                  srli         a3, a4, 2
                  slli         s0, a4, 24
                  ori          s5, s3, -2000
                  srl          s1, s10, s0
                  sltu         s10, a1, a0
                  and          a7, a4, t3
                  lui          s6, 179279
                  srai         a4, t3, 31
                  slli         t2, s11, 24
                  ori          a2, s8, -1314
                  ori          sp, t3, 1226
                  srli         t5, t4, 27
                  sra          zero, tp, a0
                  srai         s2, s1, 21
                  auipc        s9, 1018413
                  addi         t0, s2, -793
                  auipc        t5, 254812
                  sltu         t4, s2, t2
                  or           t4, s3, a3
                  srl          t4, s2, s10
                  auipc        ra, 352436
                  xor          s6, t2, a4
                  srli         s11, s1, 25
                  add          tp, a1, s5
                  lui          gp, 516797
                  slli         a6, s11, 15
                  srai         a5, s1, 16
                  sll          s2, a2, sp
                  srli         s4, a7, 18
                  srl          gp, s9, a6
                  lui          a5, 287127
                  sltiu        a6, sp, -1650
                  lui          s10, 706504
                  sltiu        s10, s4, 114
                  lui          s3, 960001
                  srli         a6, a3, 7
                  sltiu        s3, t3, -495
                  and          s2, s1, s3
                  slli         t5, a0, 28
                  addi         tp, t6, 1572
                  or           a6, s4, a3
                  srli         t5, a2, 8
                  and          zero, s3, a4
                  addi         a7, t2, 1235
                  andi         s6, a5, 629
                  srai         s9, t4, 26
                  xori         s0, s1, -953
                  srli         tp, s4, 3
                  ori          s4, t6, 347
                  auipc        s3, 276310
                  addi         s11, s7, 1876
                  xor          a7, s3, a1
                  srli         a1, a5, 3
                  xor          s1, a7, tp
                  xori         a3, s4, 43
                  xor          a5, a4, t6
                  srl          t4, s7, a1
                  sll          a1, t3, s7
                  or           s5, t2, a1
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_18
                  li           t5, 0x0
                  li           a1, 0x6bf58399
                  li           a4, 0x80000000
                  li           a5, 0x0
                  li           s9, 0x230c4c30
                  li           t3, 0x3d29f569
                  li           a7, 0xffffffff
                  li           t4, 0x58a17e6b
                  li           s7, 0xc06d9d92
                  add          t4, tp, a4
                  nop
                  addi         tp, a5, 1855
                  addi         a7, a1, 1683
                  addi         s9, a4, 343
                  auipc        a1, 805206
                  auipc        a4, 763532
                  auipc        tp, 841620
                  lui          s7, 1038650
                  add          t5, t3, t4
                  sub          a1, a4, a7
                  auipc        t4, 249349
                  add          t5, a7, t3
                  add          t4, t5, t3
                  auipc        t4, 527336 #end riscv_int_numeric_corner_stream_18
                  slt          a3, s10, s3
                  srai         s2, s11, 22
                  sub          zero, s1, s1
                  add          s7, tp, s10
                  sra          a1, tp, ra
                  sub          a4, a6, a6
                  nop
                  lui          a6, 645055
                  xori         sp, gp, 1618
                  xor          s3, a7, a0
                  xor          t1, t0, s3
                  sltu         s6, t0, a4
                  srli         s9, s9, 22
                  slti         a7, a0, 1055
                  slt          a1, gp, s3
                  and          ra, a2, t0
                  sra          s3, a7, s2
                  slti         a7, s10, -1169
                  xor          s3, s5, a7
                  ori          t3, ra, 341
                  addi         s0, s4, 604
                  sra          a7, tp, zero
                  sll          a7, tp, s1
                  slti         a2, a2, -1665
                  slt          s1, t5, s1
                  sltu         t5, s1, a3
                  lui          t4, 898244
                  xori         s0, t1, -1942
                  slt          a6, a4, s2
                  ori          a1, a2, -72
                  sra          s3, gp, t6
                  li           a5, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           a2, 0x22001f9e
                  li           s6, 0xffffffff
                  li           s3, 0x80000000
                  li           s9, 0xffffffff
                  li           t3, 0xc3fcddd2
                  li           a4, 0x11eef44e
                  li           a6, 0x0
                  li           s2, 0xf07c7b81
                  li           ra, 0xffffffff
                  nop
                  lui          a6, 577249
                  nop
                  auipc        s9, 628674
                  addi         t3, a5, 364
                  lui          ra, 707310
                  add          ra, s6, s6
                  add          a5, s9, a2
                  auipc        t3, 702051
                  lui          s2, 160375
                  auipc        a6, 478909
                  sub          a4, s9, s9
                  addi         a6, a6, 1393
                  auipc        ra, 866667
                  addi         s6, ra, 1651
                  nop #end riscv_int_numeric_corner_stream_4
                  sub          a7, a4, t5
                  sltu         a2, ra, s5
                  srai         s2, a3, 30
                  slt          t2, s9, gp
                  addi         s1, t1, -1344
                  sltu         s10, s5, zero
                  sub          s10, s9, s6
                  lui          s1, 485361
                  slti         t2, s6, -624
                  srli         s4, s7, 30
                  or           t5, sp, s10
                  lui          s5, 474200
                  add          a5, s0, a2
                  slt          tp, s7, zero
                  addi         s9, a0, 833
                  xor          a2, t5, a5
                  sll          gp, s5, s5
                  nop
                  sll          zero, a1, a6
                  lui          ra, 839940
                  xori         zero, a0, 1739
                  xori         t5, s9, 1400
                  or           a3, a3, a3
                  auipc        s2, 128269
                  sltu         sp, s0, t5
                  sltu         sp, a5, s11
                  lui          a6, 841139
                  sra          s5, s6, tp
                  sltu         s6, a1, s10
                  nop
                  andi         s11, s1, -289
                  sra          t5, a6, s6
                  lui          a6, 982103
                  srl          ra, s0, s3
                  ori          t2, t0, -947
                  sltu         s3, s3, a5
                  xor          s5, a0, t0
                  srai         s6, t2, 28
                  srli         ra, s8, 29
                  auipc        t4, 38599
                  ori          t2, sp, -577
                  addi         s11, t4, -1884
                  ori          t1, s10, 68
                  nop
                  slti         s0, t5, 1819
                  xor          t0, s1, s7
                  sra          s3, a4, t4
                  sub          s4, s9, ra
                  slti         tp, gp, -816
                  or           t0, s1, s4
                  srli         a4, s8, 11
                  srli         t3, s0, 1
                  sltu         zero, s5, s10
                  auipc        t5, 613462
                  xor          s7, ra, t4
                  xori         t1, s0, -500
                  srl          s9, s3, t0
                  sub          s2, t4, gp
                  slti         s4, s11, 858
                  srl          sp, s7, t2
                  slli         t5, ra, 26
                  ori          s2, s4, 1639
                  sltiu        s10, s10, 1286
                  andi         s6, zero, -1943
                  addi         t5, a5, 18
                  xori         a4, s9, -129
                  andi         a5, s5, 1319
                  slti         a7, s5, 1361
                  and          t4, t6, t5
                  slti         s4, a1, 112
                  auipc        s5, 955602
                  slti         t0, s9, 692
                  addi         a7, a4, -532
                  sltu         s11, s9, t4
                  sltu         s11, s5, a2
                  lui          a7, 986948
                  sub          t5, s4, a1
                  sltu         sp, s0, gp
                  andi         sp, s10, 1743
                  sll          s2, a6, s3
                  and          s9, t3, a6
                  srl          t2, gp, sp
                  sltiu        s9, t0, -12
                  add          t2, s4, a5
                  nop
                  sra          a6, s4, a7
                  srli         t3, t6, 29
                  add          s11, s3, a6
                  srli         sp, a4, 17
                  sra          sp, t4, ra
                  slti         gp, a5, 324
                  srl          s1, s9, s7
                  add          a1, t1, s9
                  xor          s4, t5, t6
                  nop
                  sra          ra, s2, ra
                  slli         s5, a0, 23
                  sll          t5, s1, gp
                  sltu         s1, s10, s2
                  sll          a2, t4, a6
                  xori         ra, t4, 417
                  xori         s10, zero, 1542
                  sra          a5, t3, t2
                  srai         s3, s5, 3
                  sltu         a6, a3, s2
                  slti         a2, s2, -609
                  andi         a4, a6, -1101
                  xor          a2, t1, tp
                  srl          tp, a0, s10
                  sra          t0, s2, t5
                  sltu         s10, t4, a2
                  srli         t0, s0, 25
                  nop
                  xori         t5, s2, -767
                  srli         s7, a7, 15
                  sll          a1, s6, s9
                  xori         s4, sp, -2004
                  addi         s3, a3, -1727
                  or           s6, s10, s4
                  srl          a3, t6, ra
                  slt          t5, s5, s0
                  sltiu        t0, s8, 1335
                  or           s3, s9, s8
                  srli         a3, s4, 13
                  sll          zero, a1, a0
                  andi         s5, sp, 1918
                  slti         a3, s0, -1052
                  ori          ra, s5, -829
                  and          s2, zero, zero
                  sltu         s9, t0, t0
                  xori         tp, s6, -1053
                  srai         a4, t4, 5
                  sltiu        t0, s9, -642
                  srl          s5, sp, a0
                  or           a5, s1, s11
                  addi         a6, t0, 861
                  nop
                  auipc        s7, 464915
                  ori          s3, tp, 1556
                  xori         s3, s7, -1247
                  sra          t4, s0, a7
                  xor          s0, s3, s4
                  sltiu        s11, s7, -796
                  srai         s9, sp, 9
                  or           s5, a1, a1
                  xor          s1, t1, a0
                  xor          t2, t3, gp
                  sra          t4, t4, s3
                  srai         gp, s8, 10
                  addi         a6, s3, 1319
                  and          t4, a7, sp
                  sltu         t5, t0, t5
                  slti         s2, a6, -1919
                  xori         t2, s8, 1618
                  slti         t5, s10, -1522
                  slti         t1, t2, 458
                  slti         s7, a3, -1752
                  ori          a2, s5, 822
                  nop
                  or           t2, a1, a1
                  lui          s9, 17292
                  slti         a1, t4, 1202
                  slli         s3, a6, 4
                  sra          s9, s3, a1
                  xori         s2, s11, 558
                  and          ra, a0, s3
                  slli         a6, s11, 26
                  slt          ra, t5, t5
                  slti         zero, t1, 632
                  sra          t3, s2, s11
                  auipc        sp, 349094
                  slt          s2, t2, s6
                  ori          zero, t0, 112
                  add          t5, a3, zero
                  srai         zero, a6, 24
                  and          t5, t3, s8
                  ori          s4, a1, 596
                  or           s3, s7, s10
                  sll          s11, a4, ra
                  add          t1, s6, s8
                  and          tp, s11, t5
                  ori          ra, s9, -950
                  srli         zero, sp, 7
                  sll          s4, s4, t3
                  andi         s2, s11, -105
                  sltiu        t5, a7, 431
                  sltu         s9, s2, s1
                  sltiu        t1, a0, -1578
                  and          s3, ra, a7
                  srai         a4, a7, 11
                  xor          a6, s11, s1
                  sltiu        a4, t0, 691
                  nop
                  sltiu        a3, s6, 87
                  or           a7, s10, t2
                  slli         s9, s3, 16
                  and          zero, s2, gp
                  auipc        s9, 159708
                  xori         a6, a5, -1327
                  srli         ra, zero, 13
                  srl          zero, s10, s7
                  sltiu        s4, tp, -1874
                  xor          s3, a2, a1
                  slli         s10, a2, 9
                  sltu         t2, a0, t2
                  xori         s3, s5, -48
                  srl          gp, s8, a5
                  addi         tp, t1, 173
                  and          tp, zero, s2
                  ori          s6, s9, 1507
                  and          s9, ra, a5
                  srai         s7, t2, 24
                  and          a7, t1, t5
                  srli         s5, s2, 12
                  sltiu        t5, a0, 1689
                  add          tp, s0, a4
                  add          s7, ra, s3
                  or           a2, s2, ra
                  addi         a6, s8, 136
                  srl          s11, s6, a1
                  srai         tp, s10, 14
                  slt          s0, s4, t5
                  sub          t5, s6, t3
                  sra          gp, s9, a6
                  srai         s6, a4, 21
                  srl          s7, s5, a1
                  or           t1, a3, s10
                  xori         s3, t3, -1991
                  andi         ra, t1, 1324
                  lui          a1, 910324
                  sltiu        a3, gp, 667
                  srai         t2, a6, 20
                  sll          sp, a3, s0
                  srli         s2, t5, 30
                  add          a5, gp, s11
                  sll          ra, a5, t0
                  sltu         t5, gp, s2
                  sll          a7, s4, a3
                  lui          ra, 224451
                  srai         t0, s2, 20
                  addi         s4, s4, 741
                  addi         t0, s6, 1585
                  slti         zero, a5, 1290
                  lui          s4, 175605
                  and          t3, tp, s6
                  srl          s1, t2, s5
                  addi         t1, s10, 196
                  and          a4, t1, a1
                  slt          t4, s6, a3
                  slli         zero, s0, 23
                  or           t4, s9, t5
                  ori          ra, a5, -2024
                  addi         a4, t2, -438
                  addi         s2, s3, 375
                  or           a6, s7, s6
                  sltu         a1, a3, tp
                  sll          t4, a2, a7
                  addi         zero, zero, -766
                  nop
                  addi         a4, a4, -1325
                  andi         s1, a2, 769
                  sltiu        s6, a7, 1651
                  andi         tp, s10, 955
                  sll          a5, sp, a6
                  srl          t4, a2, s10
                  xor          a1, tp, gp
                  lui          s4, 19574
                  sltu         t5, gp, s0
                  xor          s0, a3, t3
                  slt          s10, s11, s6
                  xori         gp, gp, 1313
                  srli         t2, s1, 30
                  or           a5, gp, s7
                  sltiu        t0, a3, 1068
                  sltu         s6, a6, a3
                  addi         s0, t1, -450
                  xor          s3, s9, ra
                  xori         s2, s3, 1371
                  or           a6, t6, s10
                  nop
                  sub          s3, a3, s2
                  sltiu        t2, t2, -740
                  xor          s2, s4, a5
                  srli         s6, gp, 3
                  auipc        sp, 750904
                  sub          t2, t4, s11
                  nop
                  srl          a2, ra, tp
                  or           s1, t1, a1
                  or           s10, s7, a5
                  sll          s1, t1, t0
                  auipc        a2, 769397
                  and          a1, tp, gp
                  sltiu        a7, ra, 418
                  andi         zero, t1, 1387
                  lui          a5, 933615
                  slti         s11, a2, 1728
                  andi         a7, s2, -1746
                  slti         s3, a5, 1820
                  srli         t2, t4, 22
                  ori          t2, s9, -1311
                  and          zero, t2, t0
                  xori         a6, t6, 1314
                  auipc        s6, 916723
                  andi         t5, gp, 1434
                  srl          s3, t0, s5
                  srai         s7, t1, 27
                  sltiu        s4, s1, -690
                  srli         tp, s11, 17
                  add          s4, s6, zero
                  or           ra, a1, s6
                  add          t1, s7, t1
                  slt          tp, t4, s6
                  and          t2, a3, s11
                  sll          s7, a2, a2
                  xor          t0, a1, a2
                  srl          t1, s2, s9
                  and          gp, a3, ra
                  and          sp, a1, zero
                  slli         t4, s6, 27
                  nop
                  auipc        a3, 660284
                  slti         ra, t1, 1201
                  sll          s3, s11, a4
                  slt          a7, t6, s11
                  sltiu        s0, a2, 110
                  sltu         s6, a6, s8
                  srl          t1, tp, s5
                  sll          t2, s4, a3
                  sltu         t1, t6, tp
                  xor          s10, t1, zero
                  srl          t3, s0, s7
                  and          s9, s6, a3
                  addi         s9, a2, -1010
                  and          s1, t0, a1
                  srli         t1, tp, 7
                  and          s3, a7, s8
                  xor          s5, gp, s1
                  srli         t2, a7, 10
                  slti         t0, s8, -767
                  srl          t4, gp, t1
                  add          sp, sp, ra
                  sltiu        s2, t3, -664
                  slt          zero, t3, s4
                  lui          a3, 804377
                  srl          s7, s2, t2
                  auipc        s6, 177629
                  slt          zero, t3, t6
                  lui          a5, 386880
                  andi         t4, t6, 252
                  sltu         a7, a4, s5
                  add          s3, a1, ra
                  sra          s1, s5, s1
                  srai         sp, t3, 10
                  add          ra, s0, s6
                  add          s3, a7, s5
                  sll          ra, s0, a4
                  srai         sp, s5, 0
                  lui          s3, 754304
                  sub          s0, s1, ra
                  or           a5, gp, a5
                  addi         t0, t5, 937
                  ori          s0, a3, -188
                  and          a3, s1, s6
                  nop
                  slti         t4, t1, -1110
                  xor          t1, a0, a3
                  addi         t4, s2, 395
                  xor          a3, s8, a2
                  auipc        s6, 940382
                  slli         s11, t2, 29
                  nop
                  xori         a7, a0, 818
                  sll          t3, zero, s11
                  slt          t2, s4, t3
                  nop
                  addi         s1, t1, 1035
                  sltiu        s6, a3, -1625
                  and          t1, t3, s5
                  xor          t0, s5, s3
                  lui          t4, 899470
                  srai         s11, a6, 31
                  sra          tp, t2, a5
                  ori          t5, a4, 1681
                  sltu         s6, t3, t2
                  xor          t0, s7, t1
                  sltiu        t2, t4, 1344
                  addi         t4, t6, -1498
                  slt          t1, tp, a2
                  sub          s2, a1, s9
                  slt          a1, s3, a4
                  auipc        t0, 268287
                  sll          a7, s6, ra
                  srai         s9, sp, 15
                  srl          a6, t3, t6
                  srai         s6, a5, 12
                  sltu         a1, t0, s9
                  slti         s4, t4, 1305
                  sll          t5, sp, a7
                  slli         s5, t0, 29
                  slli         s1, s1, 15
                  srai         s9, t6, 22
                  or           ra, s2, s9
                  srli         s10, a2, 18
                  slt          a5, ra, s2
                  andi         s11, s8, -1677
                  lui          s0, 448310
                  sltu         s7, s10, t3
                  nop
                  xori         s11, t3, 1268
                  sub          a7, s3, s4
                  nop
                  or           s5, a0, a3
                  sra          s7, t6, tp
                  and          s2, a6, a0
                  addi         s2, s9, 1830
                  slli         tp, s6, 24
                  sub          a4, a0, a2
                  xor          tp, a0, s11
                  xor          s9, a6, a4
                  srli         s1, zero, 18
                  lui          t5, 289995
                  srli         a5, t1, 20
                  add          t3, s10, t0
                  or           t2, sp, t3
                  nop
                  slt          a3, s7, a0
                  andi         s10, s3, 577
                  xori         t0, s4, 305
                  sltu         a3, sp, gp
                  xor          t2, a4, a5
                  ori          t3, t5, 943
                  srai         s10, a6, 28
                  sltiu        s1, a4, -1618
                  auipc        s6, 608011
                  sra          a4, tp, zero
                  srl          s2, s7, ra
                  slli         s11, a4, 3
                  or           a7, a5, tp
                  and          s3, zero, t4
                  slli         s9, s9, 31
                  nop
                  or           a6, a2, a5
                  nop
                  xor          s5, a3, zero
                  srai         t4, t5, 24
                  auipc        s6, 140947
                  sra          s11, tp, ra
                  xor          s9, a6, s1
                  addi         t2, sp, 1233
                  addi         a6, s11, -2013
                  slli         s4, a4, 30
                  slt          tp, ra, t2
                  srai         sp, zero, 30
                  ori          a6, s11, -25
                  xor          gp, a2, s6
                  lui          s10, 31611
                  add          a7, s0, a1
                  slti         t4, a0, -397
                  auipc        s1, 974017
                  ori          a6, s6, 1446
                  sra          a4, s2, s11
                  auipc        sp, 240336
                  auipc        t3, 235466
                  sub          gp, ra, a0
                  sra          a1, t4, t5
                  sltiu        zero, a4, -679
                  nop
                  sra          a7, s10, ra
                  lui          a6, 578277
                  srli         a7, t2, 3
                  sltu         s5, s0, t3
                  xori         sp, a5, 710
                  auipc        s7, 214797
                  sll          s10, a6, s10
                  slli         t4, t4, 13
                  sltu         s10, t5, a4
                  lui          s10, 489894
                  sra          s9, a1, s6
                  auipc        a3, 399317
                  auipc        a2, 780111
                  srli         tp, t2, 5
                  andi         s2, s11, 1397
                  xori         s4, a0, 1024
                  sll          a5, a1, t3
                  or           s0, a7, zero
                  srai         s10, a4, 11
                  and          t1, a6, a3
                  sra          ra, s5, gp
                  srai         a1, t1, 23
                  ori          t2, s4, 386
                  sra          s7, t3, s5
                  lui          s10, 199879
                  srl          t1, a3, a0
                  lui          a7, 79834
                  and          t1, a1, s7
                  or           a1, t2, s1
                  and          a5, s10, a5
                  andi         a1, t6, 907
                  andi         s2, t2, 1208
                  or           s4, a0, s11
                  srai         t1, t4, 1
                  sltiu        a2, tp, 1547
                  or           t3, s8, t6
                  addi         a2, s10, 2044
                  lui          t0, 252800
                  lui          t5, 65878
                  nop
                  sra          s4, s11, s1
                  srai         t0, t1, 21
                  lui          t2, 142038
                  auipc        a3, 997069
                  sra          zero, a5, gp
                  slti         s6, a7, 1948
                  lui          a7, 580418
                  sub          sp, t6, s3
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           s4, 0x0
                  li           a7, 0x80000000
                  li           gp, 0x0
                  li           a4, 0xffffffff
                  li           s10, 0xa6e73f8a
                  li           s1, 0xc83a4ca4
                  li           t2, 0x80000000
                  li           a2, 0xffffffff
                  li           a5, 0xa7ddc4e
                  auipc        a5, 225697
                  sub          s10, t2, s10
                  nop
                  lui          t2, 767752
                  addi         a6, s1, 1196
                  lui          s10, 1043191
                  sub          s1, a6, a6
                  lui          a6, 496529
                  lui          a5, 4400
                  auipc        a6, 49242
                  add          a6, a6, s4
                  auipc        s1, 169440
                  addi         a5, gp, 650
                  add          a7, s4, a7
                  add          s10, a6, s1 #end riscv_int_numeric_corner_stream_1
                  sltu         s2, a1, a1
                  addi         t5, t1, 1972
                  sltiu        ra, s4, 1338
                  ori          t0, s5, 1630
                  srli         s9, s0, 20
                  slli         s11, s6, 8
                  li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           s2, 0x0
                  li           s3, 0x0
                  li           ra, 0xffffffff
                  li           t1, 0x0
                  li           a5, 0x80000000
                  li           t5, 0x1e5c02f9
                  li           s0, 0xffffffff
                  li           s5, 0xd357f88b
                  li           a2, 0x0
                  auipc        a6, 913367
                  addi         s2, ra, 1861
                  lui          t5, 707485
                  lui          ra, 695548
                  nop
                  add          s2, t5, a5
                  addi         s5, a2, -1680
                  lui          a6, 745721
                  sub          a6, a2, a5
                  nop
                  nop
                  addi         ra, t1, 78
                  nop
                  add          s5, s2, s5
                  lui          s2, 971921
                  lui          ra, 528550 #end riscv_int_numeric_corner_stream_19
                  slli         t3, s3, 20
                  xori         t1, sp, -1423
                  sltiu        gp, s6, -774
                  slt          a7, a5, s10
                  auipc        s0, 468542
                  slli         t5, a0, 7
                  addi         s5, t4, 700
                  srai         s10, s0, 14
                  srl          s5, s3, gp
                  lui          s6, 416465
                  and          ra, s3, a2
                  srli         s3, t5, 7
                  andi         a4, s9, -1827
                  slli         t4, s9, 18
                  sltu         s7, a3, s3
                  sll          s0, s11, a1
                  sub          a4, a4, t0
                  addi         a6, s8, 312
                  nop
                  or           s2, a1, sp
                  or           sp, s4, a2
                  add          s7, zero, s9
                  slti         s0, t3, -859
                  auipc        s9, 893525
                  xor          tp, a6, a2
                  addi         a7, t4, 149
                  slti         a7, t6, 382
                  xor          zero, s1, s6
                  sltu         a1, t2, t6
                  srl          ra, t3, a5
                  sltu         sp, sp, s9
                  lui          a5, 215045
                  and          a6, s5, s8
                  xori         tp, t2, -1201
                  lui          ra, 39689
                  nop
                  and          a1, t0, s11
                  or           a5, a3, s10
                  srli         s6, a5, 7
                  srai         a3, gp, 23
                  lui          a4, 448772
                  sra          gp, a0, sp
                  ori          s2, s3, 57
                  andi         s4, s9, 90
                  sll          s7, tp, s9
                  addi         tp, s7, -36
                  nop
                  xor          s3, a7, a1
                  sltiu        s10, a6, 1735
                  slli         t5, t4, 28
                  sll          a5, s8, a1
                  sra          s6, s6, a4
                  srai         s6, s8, 28
                  nop
                  sltu         s2, ra, a6
                  srli         a4, a0, 18
                  xori         s5, s6, -388
                  xor          s3, s5, t6
                  slt          s3, t3, a5
                  add          t0, a4, s2
                  ori          s1, ra, -1695
                  add          s9, s5, a3
                  xor          t4, s11, sp
                  srai         tp, s4, 12
                  srli         a2, a4, 27
                  xor          gp, a3, s10
                  auipc        s9, 24308
                  srli         s7, s8, 24
                  auipc        s3, 798279
                  srai         tp, s11, 10
                  andi         a3, t6, -1571
                  lui          t2, 43586
                  lui          a3, 665779
                  nop
                  addi         t3, t0, 91
                  srl          t1, a1, t4
                  slt          s6, sp, a2
                  or           t1, a3, s3
                  lui          a3, 886530
                  ori          t4, s8, -2026
                  srl          a5, t5, t6
                  nop
                  srl          zero, ra, s0
                  slt          s0, t4, t0
                  sltiu        t0, a7, 112
                  lui          t1, 631528
                  xor          s7, t1, a3
                  sltu         s9, s8, s11
                  addi         gp, t0, -808
                  nop
                  sra          a3, s5, t3
                  srli         a3, s8, 2
                  sltiu        s2, t2, -1808
                  addi         s2, a6, -1923
                  nop
                  slli         s11, a1, 19
                  auipc        t1, 643094
                  srli         tp, t6, 11
                  srai         sp, s4, 21
                  auipc        s4, 663691
                  and          t4, a0, t4
                  sub          s1, t5, ra
                  slli         t3, s4, 21
                  srai         s2, t5, 20
                  sub          s4, t3, s9
                  or           a7, tp, a3
                  sltiu        t0, s10, 908
                  srl          gp, a4, t6
                  ori          a2, s11, -118
                  sub          s4, a2, t5
                  xori         a5, s7, -957
                  srli         t0, a4, 22
                  sll          ra, a4, zero
                  ori          sp, s7, -342
                  addi         a7, s4, 1728
                  lui          sp, 41888
                  xor          tp, a7, sp
                  lui          ra, 3503
                  srli         s0, t5, 31
                  srl          gp, t1, s6
                  slli         s4, ra, 8
                  xor          t1, zero, s11
                  srli         t0, t6, 21
                  lui          s6, 453334
                  add          sp, a5, tp
                  srli         s1, s0, 5
                  nop
                  add          t0, ra, s10
                  sll          s11, s0, s10
                  xori         s4, s11, -878
                  xor          s6, a2, a7
                  srli         gp, s4, 9
                  auipc        t1, 455403
                  xori         s7, s5, -1279
                  slti         s7, t6, 334
                  srli         t1, s6, 24
                  sra          s5, a6, t3
                  sll          s3, a5, t2
                  add          ra, a5, s6
                  slti         a2, s3, 214
                  add          a7, s3, tp
                  lui          t5, 502638
                  and          a3, t4, s2
                  xori         s4, s3, -533
                  sltiu        a3, s11, -1781
                  lui          s3, 106756
                  addi         zero, s1, 695
                  srai         a1, s2, 28
                  srai         s4, s11, 10
                  srli         sp, s1, 21
                  and          s4, s4, ra
                  sltiu        s6, tp, -1134
                  xori         s10, gp, 71
                  addi         s5, t5, -37
                  srai         gp, a0, 9
                  srl          tp, t0, gp
                  srli         ra, gp, 0
                  xori         tp, a3, -549
                  sra          s1, t0, tp
                  add          s10, s7, s11
                  sll          t3, ra, sp
                  ori          s10, s9, -1334
                  slti         a1, s10, -949
                  srl          t1, sp, t0
                  ori          a6, a1, 834
                  sltiu        gp, s11, 1718
                  or           a6, t6, t2
                  addi         tp, t3, -362
                  nop
                  and          a3, a2, sp
                  nop
                  xor          tp, ra, a5
                  sltu         tp, t3, t5
                  slli         s9, s8, 28
                  slt          a3, zero, t6
                  srli         t0, tp, 5
                  addi         s10, a0, -668
                  slti         a2, s11, 831
                  lui          t2, 248639
                  sll          s4, a7, s0
                  sub          s3, s9, tp
                  xori         gp, s9, -500
                  srli         s5, t5, 29
                  slli         t4, t6, 21
                  sltu         a7, a5, a1
                  lui          t1, 10255
                  sra          a7, s7, a0
                  xor          s2, s7, t1
                  srl          s10, gp, t6
                  slti         s5, a3, 805
                  sll          tp, t4, s4
                  xori         s3, a6, -1365
                  srai         s7, t4, 8
                  srli         s3, t3, 13
                  sra          s5, s6, a5
                  addi         s7, a4, 1736
                  or           s3, s10, t2
                  or           zero, a1, s11
                  or           tp, gp, a5
                  ori          s1, s1, 1259
                  addi         zero, a6, 533
                  addi         t1, a3, -1892
                  ori          s4, t4, 1057
                  and          t4, s6, s0
                  slti         a5, s9, -879
                  sra          sp, a4, a4
                  sub          a3, s10, tp
                  sltiu        s3, s2, -298
                  sll          a3, ra, s10
                  auipc        s5, 907714
                  addi         s2, tp, -43
                  slli         s2, t0, 5
                  xor          gp, ra, tp
                  sra          a2, s1, t1
                  srai         zero, t5, 4
                  sltiu        s10, s11, 441
                  addi         s2, a4, -1227
                  srli         t0, a1, 5
                  addi         a5, s9, 1612
                  lui          tp, 521390
                  sub          s4, s11, a1
                  andi         t5, ra, 573
                  slli         sp, t5, 13
                  or           sp, s1, a6
                  xori         s6, t3, -1804
                  sltu         s5, s5, a0
                  srl          a3, a3, a2
                  and          s5, a3, s8
                  sll          s2, a2, ra
                  lui          t3, 597454
                  sll          t2, s4, t0
                  srai         s11, t4, 1
                  sltiu        a2, t1, -1433
                  addi         s0, a1, -1449
                  slt          gp, a3, a5
                  slti         zero, s6, -1363
                  sltiu        a3, t0, -1282
                  srli         a5, s6, 3
                  sltu         s4, t3, a3
                  andi         gp, s7, 204
                  srl          s5, t4, a3
                  sra          s4, t3, t5
                  lui          a3, 638733
                  ori          s11, a1, -1555
                  or           a3, t3, sp
                  andi         gp, s9, -1371
                  nop
                  slli         tp, s10, 30
                  slti         s6, s4, -2015
                  sll          t0, t6, zero
                  and          s1, t2, s6
                  slli         s4, s2, 26
                  auipc        s6, 371137
                  srl          tp, s0, t6
                  nop
                  nop
                  nop
                  srl          tp, s3, a4
                  slli         s4, gp, 16
                  or           t0, a5, t2
                  xor          t1, s11, t1
                  srai         gp, t4, 25
                  and          t1, s0, s7
                  lui          t5, 572399
                  srl          t2, zero, a0
                  add          t0, s4, s7
                  and          zero, a7, s6
                  slt          s2, s8, a5
                  srl          a4, s1, a2
                  add          s11, s1, s11
                  sltiu        s7, a7, -740
                  add          a1, s1, t4
                  sll          t1, a2, s11
                  auipc        s2, 843571
                  slli         a4, gp, 10
                  sra          a1, a0, a6
                  sltiu        a7, a6, 1729
                  sltiu        a4, t0, 327
                  ori          a7, s4, -1389
                  nop
                  slti         tp, s7, -417
                  sltu         s6, a0, a2
                  sll          a4, a7, t2
                  lui          s3, 120618
                  sub          a1, s1, s10
                  srl          a7, s11, s0
                  ori          a7, t2, -1182
                  andi         tp, a0, -1545
                  srai         a1, zero, 7
                  slt          t5, a7, s4
                  srl          t2, tp, s5
                  slli         gp, tp, 19
                  lui          s4, 1012724
                  sltiu        t3, t3, 878
                  srai         s4, s8, 0
                  slt          s10, t5, s0
                  sltiu        s2, a0, -1275
                  slti         t3, a4, -887
                  xor          tp, t4, t6
                  sltiu        s9, s4, 1576
                  srl          s7, s2, a0
                  sltu         s10, s3, s1
                  xor          t3, a3, t0
                  sltiu        a2, t1, 999
                  andi         a1, a1, -953
                  lui          s3, 217739
                  srai         sp, s10, 2
                  xori         t1, t1, -1153
                  sltiu        zero, a3, -32
                  srli         a7, t1, 15
                  sll          t4, a3, gp
                  and          a7, t0, gp
                  xori         s9, s3, 732
                  xor          a5, s6, s9
                  li           a5, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           a4, 0xffffffff
                  li           a3, 0xffffffff
                  li           t0, 0x80000000
                  li           gp, 0x78eadd1c
                  li           tp, 0xffffffff
                  li           s3, 0x0
                  li           t5, 0xffffffff
                  li           a2, 0x0
                  li           s9, 0xc2a09681
                  lui          gp, 413708
                  lui          t5, 996373
                  sub          a5, s3, a5
                  nop
                  auipc        a5, 36675
                  sub          s9, t5, s9
                  add          gp, t5, s9
                  auipc        a5, 107750
                  lui          tp, 286463
                  sub          gp, t5, gp
                  nop
                  add          a4, a2, t0
                  lui          s3, 1000682
                  lui          t0, 925094
                  lui          s3, 557800
                  sub          t0, t5, s3
                  lui          a3, 855999
                  addi         t0, a4, -1351
                  sub          t0, tp, s3
                  nop
                  sub          gp, t0, a2
                  addi         t0, gp, -1861 #end riscv_int_numeric_corner_stream_13
                  srl          a6, a1, sp
                  sub          s1, a0, s0
                  xor          tp, s10, s10
                  addi         s4, t6, 1367
                  slti         s4, s1, -151
                  slt          t0, s9, gp
                  slti         sp, zero, -290
                  srl          a3, t3, t2
                  sra          s2, s7, t1
                  srli         s3, tp, 1
                  srai         ra, gp, 11
                  slli         zero, zero, 15
                  sub          s11, s5, a2
                  ori          t3, s7, 828
                  srl          t0, sp, gp
                  andi         t0, a3, 1054
                  sltiu        ra, s0, -883
                  sltu         t1, ra, s8
                  sltu         s0, s3, s10
                  nop
                  srli         a5, s7, 30
                  auipc        t3, 596325
                  auipc        a4, 715095
                  sltu         s11, t4, t6
                  nop
                  nop
                  lui          t5, 116685
                  sra          s2, zero, t1
                  auipc        a6, 196562
                  ori          tp, sp, 47
                  and          s0, s5, a6
                  sltiu        t5, a7, 193
                  addi         ra, t2, -1734
                  sub          s11, a4, s8
                  srli         t5, t4, 24
                  ori          t4, a6, -2007
                  xori         s10, s0, -647
                  xor          s10, a7, s7
                  sub          t5, s3, s8
                  andi         t5, s2, 726
                  sltu         s6, ra, t6
                  lui          s2, 1035183
                  sltiu        t0, t2, 1011
                  sub          s4, zero, a6
                  slti         t1, t6, 1851
                  or           s2, a7, a0
                  addi         t0, s6, -4
                  xori         t2, a3, 1283
                  sub          a4, a5, a0
                  slti         s7, s11, -1534
                  xor          s4, t1, s3
                  ori          a2, a0, 712
                  and          s5, s8, a3
                  slli         a1, s5, 31
                  slt          t1, a5, a5
                  nop
                  or           a2, t2, a6
                  srli         a3, s2, 18
                  add          t2, a2, t0
                  ori          s1, a5, -551
                  srli         s4, s2, 18
                  auipc        a3, 937294
                  sll          s0, s2, a5
                  slt          t3, tp, s5
                  andi         t1, s7, -1003
                  andi         tp, a1, 1892
                  slli         ra, zero, 13
                  srli         a4, s5, 5
                  lui          sp, 704110
                  or           s11, s4, zero
                  add          s2, a6, a2
                  addi         a4, t3, 376
                  slt          t3, t5, a1
                  slti         s2, t1, 1311
                  srl          a7, a2, s5
                  srli         t5, s2, 23
                  and          a3, t2, s4
                  addi         s9, t3, -601
                  xor          s9, s10, gp
                  slli         a6, s7, 1
                  sra          s4, tp, gp
                  sltu         t3, s4, s5
                  srli         ra, t5, 6
                  xor          s6, t1, ra
                  andi         gp, a6, 1332
                  sltiu        tp, s0, -1009
                  srai         s11, s1, 8
                  sltu         s11, s9, a4
                  sub          ra, s7, tp
                  lui          t0, 1006561
                  srl          s9, a6, s7
                  srli         s4, t5, 0
                  sltiu        tp, zero, -2031
                  sltu         gp, a3, tp
                  lui          a3, 41844
                  sra          a2, t0, zero
                  addi         s3, s5, 1649
                  slt          t0, s4, s2
                  lui          s5, 704824
                  sll          tp, s11, t4
                  nop
                  and          a6, tp, s3
                  and          a6, tp, s9
                  ori          a2, s0, -565
                  xor          ra, s1, zero
                  lui          t3, 726838
                  slt          t5, s9, a4
                  srli         a5, t0, 24
                  sltiu        s0, t5, -89
                  sltu         a6, s6, t1
                  andi         gp, t2, 1722
                  nop
                  sra          a4, a0, s4
                  ori          s3, t2, 1329
                  sll          s3, s1, a3
                  sltu         s11, a2, s3
                  srai         t1, s8, 13
                  srli         gp, t2, 29
                  ori          s2, a2, 1769
                  auipc        gp, 879063
                  sltu         s0, t5, ra
                  slti         tp, s6, 522
                  slli         a1, t5, 25
                  xor          a1, t3, s6
                  slt          s10, a6, zero
                  sra          s10, s7, a6
                  add          a5, tp, a6
                  sra          t2, t5, t0
                  sltu         s4, t0, t2
                  nop
                  addi         s7, s0, -1431
                  xor          s7, s6, s3
                  xori         a6, t4, -1210
                  or           t2, t1, t2
                  or           zero, t1, a1
                  sltiu        tp, tp, 659
                  nop
                  andi         s3, s9, 1019
                  ori          s3, sp, 1008
                  or           s9, t3, s2
                  xor          s3, t3, s8
                  sltiu        s0, a6, 762
                  addi         s4, t4, -1040
                  sra          zero, t4, t5
                  slt          s11, s4, t2
                  or           t2, gp, s11
                  slli         t1, s10, 23
                  and          s3, s3, t4
                  and          t5, s3, s6
                  sll          ra, a4, a6
                  nop
                  lui          zero, 592792
                  lui          ra, 700869
                  xori         s6, t5, -727
                  lui          tp, 753993
                  addi         ra, a2, 1018
                  slti         t3, s1, -676
                  sltu         a4, ra, a0
                  sub          t0, s11, s1
                  or           a1, a4, t1
                  lui          s5, 1017109
                  srl          s4, t4, s10
                  andi         s5, t6, 384
                  srli         s11, a5, 31
                  slt          a5, a5, a1
                  slt          gp, a5, s10
                  slt          s1, t4, s10
                  srai         a4, s7, 24
                  nop
                  sltu         a3, s4, s5
                  or           a7, t4, a6
                  andi         s3, a2, -1088
                  slli         a5, s4, 12
                  xori         tp, t3, -1125
                  srai         a3, zero, 29
                  sltu         s6, s5, t1
                  sltu         t0, t1, s1
                  slti         t1, a2, 127
                  sll          s3, a2, s7
                  sll          a7, s0, sp
                  srai         s5, s4, 26
                  sub          tp, s0, t3
                  nop
                  xor          s11, a2, a3
                  sltu         a5, sp, t3
                  sltiu        t1, s11, -92
                  auipc        a3, 417390
                  srl          t4, s2, t0
                  nop
                  xori         s6, ra, 956
                  srai         a7, s11, 15
                  srli         s6, s5, 25
                  xor          s5, t1, a0
                  slt          a5, t2, tp
                  ori          s5, s6, 1249
                  srli         a4, t4, 12
                  srli         s5, s10, 4
                  xor          t1, t4, t5
                  sll          tp, s6, t4
                  slti         s5, gp, 888
                  xori         s1, a6, 2034
                  xor          zero, a3, t2
                  slt          s1, s0, s10
                  nop
                  sll          sp, s0, s6
                  sub          tp, s4, t1
                  andi         zero, a5, 396
                  auipc        a6, 387759
                  srl          t2, a0, s0
                  srai         s7, s9, 10
                  sra          a6, t4, s4
                  slti         s10, s2, 2007
                  srl          tp, t6, a3
                  lui          tp, 470062
                  sll          a4, t6, s5
                  slli         a4, s5, 9
                  ori          a2, a4, -1529
                  lui          a6, 775863
                  add          a7, s2, a4
                  ori          s5, s1, 100
                  lui          t1, 136294
                  andi         t1, zero, 1275
                  srli         s0, t5, 24
                  auipc        a7, 1010809
                  slti         zero, s3, -742
                  xori         t0, a4, -68
                  sltiu        a1, a7, 154
                  nop
                  ori          s5, s4, -1643
                  sltiu        s10, s1, 813
                  xor          t0, a5, s9
                  andi         a2, t1, 710
                  auipc        a7, 436123
                  sll          a4, sp, s1
                  nop
                  srli         t1, s9, 14
                  add          t4, t3, sp
                  sub          a4, sp, zero
                  srli         a1, s10, 21
                  or           a6, t6, a0
                  sra          t1, a7, s11
                  and          a1, s10, t0
                  andi         ra, ra, 2037
                  xori         t5, zero, 8
                  srl          a2, s5, s0
                  or           a3, gp, s11
                  xori         s1, a2, -1708
                  srl          t4, t6, s3
                  srl          a5, s1, s11
                  sll          s1, tp, t0
                  sll          ra, s8, zero
                  nop
                  srl          s5, a5, s6
                  sltu         s7, a7, a3
                  or           s10, s10, a0
                  slli         t2, a6, 7
                  sub          s3, s8, s6
                  srli         a7, a5, 26
                  slti         s5, a7, -1194
                  sub          zero, zero, t6
                  lui          t3, 963844
                  addi         t1, t2, -1295
                  add          t2, t2, zero
                  sltu         ra, a5, s6
                  sra          t3, s8, s4
                  sltu         t2, t0, s10
                  addi         a2, t0, -931
                  add          s1, tp, s4
                  ori          a2, a5, 631
                  auipc        a4, 578942
                  nop
                  auipc        s7, 346762
                  ori          zero, s0, 1327
                  add          t1, s2, s6
                  sra          a3, s0, t4
                  lui          s3, 92814
                  srl          a2, s6, a5
                  slt          s3, t5, a2
                  andi         s7, a0, 898
                  sll          a3, s4, s9
                  addi         s10, t5, 1172
                  srl          s7, t3, a7
                  sra          s11, s2, t2
                  slt          s7, s9, s7
                  srli         a1, a6, 10
                  or           a2, zero, s3
                  srai         t2, t3, 8
                  lui          s6, 958785
                  xori         sp, s11, -1926
                  srli         s4, a5, 21
                  slli         t3, t1, 0
                  sll          s1, s10, s0
                  sltiu        a1, t1, 1268
                  lui          s11, 536624
                  addi         a3, s7, 72
                  xor          s9, s4, a5
                  slti         sp, a0, 693
                  xori         s6, zero, 1057
                  sltiu        s7, tp, 307
                  nop
                  add          a5, a1, a2
                  srai         a3, tp, 17
                  srl          s7, s9, zero
                  auipc        s5, 413591
                  add          s5, a3, t5
                  and          s1, s3, zero
                  sra          gp, ra, s8
                  slti         s6, tp, 989
                  and          s9, s0, s5
                  addi         s1, s1, 1067
                  sub          sp, s7, s0
                  sltu         s6, sp, zero
                  addi         s1, a2, -971
                  sltu         t5, s1, a5
                  sltiu        t1, s1, -1828
                  xori         t0, s8, -290
                  ori          s5, s9, -626
                  xor          s7, t5, t4
                  slt          s3, s10, zero
                  sub          t0, a7, t2
                  sra          s9, t2, s8
                  sll          s1, tp, t1
                  xori         t5, s3, 2021
                  addi         s9, a1, 210
                  sltu         t0, t4, a6
                  xori         a2, t4, 1063
                  nop
                  sltu         ra, a2, s9
                  nop
                  and          s11, t1, a5
                  slt          t0, gp, s8
                  auipc        s11, 138784
                  srl          gp, t5, tp
                  sltu         t0, a5, t3
                  xor          s6, a0, t0
                  srai         a5, t1, 3
                  sll          s4, tp, s11
                  xor          s7, s6, t2
                  slt          a2, ra, sp
                  srli         zero, t2, 21
                  srl          a2, t3, t2
                  sltiu        s6, ra, 87
                  srli         t4, s10, 29
                  sub          t5, sp, sp
                  slli         s5, t2, 10
                  slt          a5, zero, a6
                  sltu         s10, s9, t6
                  ori          t0, t6, 940
                  xor          t3, t0, s1
                  srli         s4, a4, 26
                  and          s2, tp, a6
                  srli         s9, t6, 15
                  sra          s5, t3, s1
                  andi         s5, s8, -1701
                  sltiu        t5, tp, -286
                  and          a5, t4, s1
                  xor          s11, s11, s2
                  srai         t4, s5, 4
                  srai         a5, s11, 25
                  ori          tp, a1, 1288
                  nop
                  slti         s3, a4, -1577
                  and          a7, zero, a3
                  sltu         t5, a6, tp
                  slti         a1, a1, 505
                  slli         s1, s1, 3
                  xori         a5, s2, -1956
                  xor          s10, ra, zero
                  and          t0, sp, tp
                  add          s4, s5, a6
                  add          s9, s6, ra
                  sltiu        a4, sp, -912
                  slli         s0, a7, 6
                  xori         a5, zero, 122
                  sll          t2, ra, a7
                  lui          s2, 371921
                  and          gp, tp, s9
                  xori         s4, sp, -849
                  or           s9, a2, s3
                  slli         a7, a1, 23
                  xori         t2, s1, -155
                  nop
                  slti         gp, s0, 35
                  auipc        a2, 187103
                  lui          a3, 297316
                  ori          zero, a6, 1536
                  andi         t4, a0, 1619
                  andi         s9, sp, -850
                  srl          t0, s11, zero
                  addi         a6, s5, -1348
                  slt          s7, t1, t4
                  lui          a3, 238873
                  srli         s2, s6, 5
                  sltiu        s7, s0, -179
                  or           s10, s5, s2
                  xor          t5, t6, s9
                  sra          a6, tp, s7
                  slt          a4, t1, s1
                  sub          s7, a4, t0
                  lui          a2, 533790
                  sll          a5, a3, a0
                  slt          s2, sp, a7
                  slli         a2, s3, 5
                  or           t0, a3, t6
                  slt          s9, a0, a5
                  sra          s5, s0, t1
                  slt          s7, s11, a4
                  xor          s10, tp, a3
                  srl          t3, s0, a1
                  auipc        zero, 295806
                  add          t2, tp, s11
                  add          s7, t5, sp
                  xori         t1, a2, 1266
                  ori          t5, s4, 380
                  xori         s6, tp, -390
                  andi         s2, t0, -1857
                  or           s3, tp, t2
                  andi         t0, a5, -1649
                  ori          t3, s3, -1797
                  sltiu        a4, a3, -581
                  slti         a7, s3, -1594
                  slli         t4, sp, 17
                  srli         s3, s3, 26
                  sub          s10, s8, gp
                  slti         t1, t3, 781
                  lui          zero, 722897
                  add          s6, s0, s9
                  lui          tp, 669735
                  xor          a6, gp, s8
                  srli         ra, t5, 9
                  sub          a7, t5, tp
                  andi         s2, a5, 1439
                  slti         sp, t1, -740
                  lui          s9, 936049
                  sltu         s6, t2, a2
                  addi         a1, s5, 985
                  or           s2, t2, s9
                  sub          s0, a1, s1
                  xor          s10, tp, s4
                  slt          t0, a3, t0
                  srli         s5, t6, 24
                  slt          s2, s0, s6
                  nop
                  sltu         s4, t3, s11
                  sll          zero, t3, s9
                  andi         ra, a4, 124
                  and          s6, a7, a0
                  and          t4, t0, a6
                  sltu         a3, a1, tp
                  lui          sp, 995001
                  xor          s11, ra, t1
                  lui          t4, 254044
                  xor          a7, s9, tp
                  srl          gp, gp, s10
                  xori         s11, gp, 174
                  sltiu        tp, t1, 1858
                  addi         s7, t0, -2009
                  add          a2, s6, s7
                  nop
                  sub          t5, zero, sp
                  slt          s10, a7, s2
                  xori         s11, a3, -1572
                  andi         s3, sp, 706
                  sra          t0, s0, s9
                  srl          s5, a0, a2
                  sltu         s10, t1, t0
                  lui          tp, 817413
                  sub          a5, s9, a4
                  sltiu        t4, a2, 754
                  slt          t4, s4, s2
                  slti         t2, s7, -1838
                  srai         a4, t0, 22
                  auipc        a7, 708659
                  xor          t2, s1, s11
                  sltiu        s0, t1, -489
                  sll          a1, t2, a1
                  add          s2, t2, t4
                  slti         s9, gp, 1831
                  sub          t1, s4, s11
                  addi         t4, a4, 738
                  nop
                  sra          t3, t6, a0
                  sra          s5, a6, a2
                  srli         t0, s6, 11
                  sltu         ra, s4, s7
                  auipc        s4, 991252
                  xor          s5, ra, a3
                  ori          a4, ra, -791
                  slt          a6, gp, a3
                  sra          a1, t5, t0
                  addi         a1, a0, 1819
                  slti         s5, s5, 1775
                  srai         s11, t0, 3
                  auipc        sp, 760626
                  or           a4, a0, a0
                  nop
                  srli         t5, s9, 18
                  nop
                  nop
                  sll          ra, t0, s2
                  lui          t5, 720818
                  sltiu        t4, a7, 311
                  or           s4, gp, zero
                  lui          t0, 57911
                  ori          s0, s2, -511
                  sltiu        t2, a5, -544
                  srli         tp, t4, 21
                  addi         s4, a3, 1774
                  sltu         tp, s5, gp
                  slli         t4, t3, 21
                  xor          a1, s6, s1
                  add          s2, a6, s11
                  sltu         t1, a7, t0
                  slt          s10, t6, s3
                  slt          s10, a6, gp
                  srli         a7, a0, 8
                  add          t0, a3, ra
                  xori         s4, a1, -2032
                  srli         s3, s4, 8
                  sub          s11, a5, a7
                  xori         s4, s5, -1157
                  srai         gp, s6, 18
                  xor          t5, zero, s10
                  nop
                  auipc        s1, 1007991
                  slti         gp, a0, -515
                  xor          s10, s8, s4
                  slli         s1, s3, 9
                  or           s10, s3, a3
                  andi         s0, gp, -1032
                  auipc        a1, 552211
                  sra          s4, a5, t6
                  ori          t4, a7, 1037
                  slti         ra, tp, 979
                  andi         t1, s6, -1111
                  nop
                  lui          s3, 322690
                  addi         t5, t0, -484
                  ori          ra, s8, 98
                  sltiu        s2, tp, -1113
                  nop
                  sub          t0, t2, t2
                  auipc        a4, 408407
                  srl          a1, s6, a7
                  lui          a1, 165822
                  sra          t0, ra, s5
                  auipc        s7, 84330
                  sltiu        t4, t3, -557
                  srl          t4, t3, s5
                  add          gp, t1, a7
                  xor          ra, s2, a0
                  srai         a1, a5, 12
                  ori          a5, a0, -1736
                  lui          t2, 748429
                  auipc        t1, 615478
                  srli         t1, ra, 25
                  sltiu        a6, s9, 72
                  sltiu        s3, a3, -104
                  xor          a6, s11, a6
                  sltiu        ra, t4, -881
                  srli         a2, t4, 29
                  slt          a3, s10, sp
                  srli         s0, s5, 22
                  sub          s10, t5, sp
                  slti         a6, t5, -463
                  srl          s4, a1, s2
                  ori          a1, a7, -1962
                  sltu         a7, s8, s6
                  or           ra, t1, s11
                  or           t0, s0, a7
                  sub          t4, ra, s1
                  nop
                  sra          s3, s9, s10
                  ori          a4, a7, 279
                  addi         gp, t1, -42
                  sra          zero, gp, a2
                  add          s2, a4, sp
                  slti         a6, zero, 1252
                  ori          tp, s0, 1088
                  andi         t3, sp, -1141
                  srl          s9, s8, a7
                  addi         s1, s10, 321
                  addi         s2, s2, -658
                  ori          a5, s3, 1366
                  srli         a4, tp, 29
                  sltu         ra, a4, t6
                  and          a4, s3, a2
                  andi         a1, s3, -753
                  slti         t3, a0, 1796
                  and          s10, t0, s4
                  sltiu        sp, t5, 486
                  slt          tp, s4, a3
                  lui          s2, 855455
                  xori         a7, s0, -261
                  nop
                  auipc        s0, 372715
                  srai         t2, a4, 16
                  add          ra, gp, t2
                  sub          a5, s3, s3
                  slt          a5, gp, s11
                  sltiu        s9, t5, 460
                  sub          s2, s5, s6
                  srli         t3, t4, 5
                  srai         s2, t0, 4
                  srai         s1, a3, 27
                  slt          s2, sp, t4
                  add          t2, s5, t2
                  sltu         a3, s4, a1
                  lui          t4, 791261
                  srl          t2, t2, gp
                  srl          t0, s9, a0
                  sll          s7, s6, gp
                  slt          s0, tp, s4
                  srli         a3, s3, 6
                  nop
                  and          s11, a6, gp
                  srl          s5, s6, a3
                  sll          a3, s9, a3
                  slli         a5, s2, 4
                  andi         a6, s5, -923
                  slti         a7, t3, -1951
                  addi         a6, t2, -79
                  srli         t2, a7, 0
                  slli         a3, a4, 21
                  sub          a3, a5, tp
                  xori         t0, s1, 601
                  xor          a2, tp, a0
                  sll          s3, t5, s7
                  auipc        a3, 171743
                  sra          s1, t6, sp
                  srai         a7, a2, 10
                  andi         s0, s11, 2037
                  andi         s4, a1, 1773
                  xori         s2, t6, 607
                  ori          s1, t6, 249
                  xor          t1, s10, s7
                  xori         t5, t4, -1340
                  addi         a2, s11, 426
                  xor          a7, a2, s8
                  srli         s4, s10, 0
                  and          s5, a4, tp
                  sltiu        s11, a6, -481
                  andi         tp, s0, 103
                  nop
                  auipc        s1, 513764
                  nop
                  auipc        tp, 138085
                  sra          s4, t4, t3
                  ori          t0, s7, 1325
                  srai         s11, t3, 9
                  add          ra, a1, t5
                  andi         s0, a3, 1703
                  auipc        s2, 207383
                  addi         s3, s1, -782
                  auipc        s4, 487564
                  sll          sp, s11, s3
                  sub          s10, s10, s10
                  srai         s3, a3, 1
                  xori         a3, s11, -175
                  srl          s9, s10, a6
                  sub          gp, tp, s0
                  nop
                  nop
                  sll          a2, t5, a4
                  lui          zero, 883346
                  sltu         s3, s10, s0
                  nop
                  slt          a5, a2, gp
                  auipc        tp, 440571
                  add          s2, t6, s7
                  lui          s5, 342687
                  sub          zero, zero, t4
                  auipc        t3, 534348
                  xori         a5, t1, -1421
                  slli         t5, a2, 5
                  sltu         s0, t0, s7
                  nop
                  nop
                  nop
                  add          a2, s0, ra
                  addi         s10, s8, -207
                  and          a2, sp, t0
                  xori         gp, a4, 1174
                  sltiu        s2, t6, -645
                  add          s0, a5, s4
                  sll          t2, s2, a5
                  xor          a2, s5, s9
                  auipc        s2, 532598
                  and          t1, t4, ra
                  sltu         t2, ra, a6
                  and          gp, a7, t6
                  srai         s0, ra, 10
                  addi         t3, s4, 1045
                  srli         t2, gp, 24
                  and          s3, a0, a7
                  add          t2, s1, s0
                  lui          t4, 63421
                  auipc        t0, 492838
                  sltu         tp, s2, s3
                  slt          t0, tp, s10
                  sltiu        tp, a0, -591
                  addi         a4, t0, -1453
                  srl          a3, s9, a6
                  srai         s5, s5, 15
                  lui          a3, 774439
                  sll          t3, s9, a3
                  slt          a1, s3, a3
                  auipc        s9, 47833
                  andi         t0, a1, 908
                  lui          t5, 379322
                  sll          s2, s5, s3
                  andi         a2, a3, -1872
                  xor          s6, tp, s11
                  srli         s9, t6, 0
                  nop
                  sltu         a3, a6, zero
                  ori          sp, t1, -969
                  sltu         sp, s0, s3
                  or           a3, t2, tp
                  ori          zero, tp, -1885
                  sltu         s7, a7, s5
                  andi         a7, tp, 778
                  xor          a3, ra, tp
                  addi         s10, a6, 1062
                  sll          s10, gp, a4
                  sub          a5, s8, s4
                  lui          s6, 948350
                  xor          s10, sp, a7
                  andi         s3, s2, 421
                  xor          s6, a7, t1
                  slt          s5, ra, s9
                  ori          zero, s5, -95
                  slt          t5, ra, t0
                  ori          s2, a5, 643
                  xori         s0, a1, -1811
                  srl          s1, t5, s7
                  srl          a3, ra, s10
                  sltu         zero, s3, tp
                  sltiu        s7, t0, -767
                  srl          a6, t5, t5
                  sra          s5, s6, t5
                  slti         gp, s3, -443
                  ori          sp, s8, 1317
                  ori          a2, s0, 1135
                  nop
                  or           t3, t5, a5
                  or           s10, s1, a2
                  add          s1, t6, s7
                  addi         tp, s10, -1718
                  slt          a2, s0, s9
                  srai         a4, a6, 20
                  xor          t4, a2, tp
                  sra          t4, s3, t6
                  nop
                  addi         a3, zero, -1328
                  lui          t1, 843868
                  add          s9, a6, a2
                  and          s1, t6, a0
                  lui          s5, 676403
                  xori         t1, s4, 1410
                  slli         a5, t3, 20
                  srl          t0, t2, gp
                  addi         a2, sp, -318
                  srli         s9, s8, 31
                  xori         s2, t6, 777
                  nop
                  ori          s5, a3, -390
                  andi         ra, s6, -429
                  sra          s5, a2, a0
                  sub          a5, s7, s10
                  sll          ra, s11, t5
                  lui          s5, 913206
                  sra          s5, t1, s8
                  lui          tp, 1003132
                  auipc        t4, 702922
                  slli         s0, s10, 2
                  lui          a1, 104758
                  slt          a3, s1, s9
                  and          a3, tp, t5
                  xori         s4, a0, 1108
                  addi         s7, tp, -1375
                  srl          zero, a3, s2
                  srli         sp, s8, 19
                  addi         t2, t3, 1557
                  srl          s0, s0, s2
                  auipc        s10, 595132
                  sltiu        s1, ra, -862
                  slli         a3, t6, 4
                  andi         s2, t6, -1164
                  srai         sp, ra, 4
                  slti         t2, sp, -1590
                  srl          s10, t0, s2
                  xor          s6, s11, s6
                  addi         t1, a7, 1334
                  sra          s11, s7, zero
                  xori         a4, a1, -1518
                  srai         s7, ra, 9
                  slt          s7, a0, s5
                  and          t0, s9, t6
                  slt          t0, s5, t6
                  xori         s3, t1, -1790
                  xor          t1, t0, t5
                  andi         t5, gp, 1030
                  slti         s0, t4, -154
                  lui          s4, 1001164
                  or           s4, a7, s3
                  sra          a1, zero, s9
                  sltiu        s7, s5, 1121
                  srli         s7, s9, 17
                  srli         t2, s4, 19
                  nop
                  sll          t4, t6, a4
                  nop
                  addi         a2, a5, -818
                  sltu         a4, s6, s0
                  slti         zero, s10, 1042
                  ori          s9, a5, -577
                  andi         a2, t3, 940
                  or           s4, zero, gp
                  andi         t4, a6, -995
                  xor          tp, s3, s5
                  xori         gp, s8, -400
                  sltu         t5, t2, tp
                  addi         a1, t0, 93
                  srli         a5, t6, 2
                  auipc        t1, 59181
                  sll          t3, sp, sp
                  slt          ra, s0, a5
                  sltu         s9, s1, a2
                  lui          sp, 373437
                  addi         a7, s11, -510
                  and          t5, s5, a7
                  lui          zero, 928614
                  slli         s7, s5, 3
                  sll          ra, sp, s2
                  addi         t5, s7, 1779
                  srli         t3, s7, 31
                  add          s10, s1, s10
                  srli         t3, gp, 20
                  nop
                  or           a1, a5, t4
                  slti         s2, a5, 2035
                  srai         sp, t6, 15
                  or           s4, t5, a4
                  sltu         t1, t1, a7
                  sra          a6, s11, t5
                  or           s10, a4, a7
                  sra          t5, t5, s4
                  xori         a7, s4, 1513
                  srli         t4, t1, 29
                  nop
                  slt          a2, s9, a1
                  add          t3, s5, t0
                  sltu         s1, t3, t6
                  nop
                  sra          a3, a6, s8
                  sra          s0, zero, a1
                  slt          a6, s4, a6
                  andi         s2, t2, 1662
                  lui          s4, 529149
                  add          t0, s7, t2
                  srli         ra, a3, 13
                  and          zero, s3, s0
                  sltu         t1, gp, a5
                  lui          s2, 577532
                  sltu         a5, s1, a5
                  slli         sp, s10, 14
                  lui          s4, 816652
                  lui          a1, 253414
                  slli         s7, gp, 14
                  add          t2, t1, s3
                  andi         tp, gp, -177
                  lui          a7, 833061
                  slli         s6, t2, 17
                  slli         t0, s1, 18
                  lui          s2, 257447
                  xor          a6, s3, gp
                  auipc        a6, 243443
                  andi         t1, s2, -451
                  lui          s4, 933405
                  slti         s10, a4, 1829
                  sll          tp, s0, s6
                  and          s4, zero, t4
                  sra          t1, tp, t6
                  and          zero, s5, s5
                  sltiu        sp, sp, -91
                  nop
                  andi         ra, gp, 620
                  and          a7, s10, t3
                  add          tp, s1, a1
                  srli         a1, s6, 1
                  andi         s6, a5, -1772
                  slt          sp, a1, s2
                  slt          s7, s3, s2
                  ori          gp, t5, 1920
                  or           t2, t0, s6
                  and          s6, s7, s1
                  addi         gp, a0, 1339
                  sub          s4, s10, s1
                  andi         zero, tp, 1640
                  sll          ra, tp, t0
                  xor          gp, a6, a3
                  addi         sp, s4, 1957
                  slli         tp, zero, 0
                  add          s0, a0, t6
                  andi         sp, tp, -1683
                  slli         zero, s5, 12
                  slti         s9, t3, 1504
                  srai         s0, t2, 1
                  srl          s2, s9, s6
                  sltiu        s6, a3, -521
                  sra          s2, s5, a5
                  and          s5, s8, zero
                  ori          s7, a0, -616
                  xor          t5, a4, s5
                  auipc        a1, 1013863
                  and          tp, t2, s6
                  addi         t4, ra, 1219
                  srai         s6, sp, 0
                  sltu         s0, s0, s10
                  srai         s3, s6, 2
                  sltiu        t2, a0, 602
                  ori          tp, tp, 735
                  sltiu        t5, s7, 159
                  sub          s7, tp, s3
                  ori          a7, tp, 1743
                  srl          s11, t2, s10
                  slt          zero, s11, a6
                  slt          t0, a0, s8
                  slli         sp, zero, 23
                  xor          s6, a6, s1
                  slti         tp, s5, -1348
                  add          a5, a6, s0
                  slti         s6, s9, 972
                  slt          sp, a0, s5
                  auipc        s3, 506776
                  xori         a7, a0, 1832
                  or           t4, s8, t5
                  ori          a6, s10, 1814
                  sra          a2, a6, sp
                  slt          a6, s3, t2
                  andi         s7, a3, 472
                  sltu         gp, a0, t1
                  sll          a1, s0, s9
                  sub          s9, a5, sp
                  lui          a3, 755996
                  addi         s3, t2, 1169
                  sltiu        tp, t0, -1342
                  and          a3, t6, a0
                  srai         a7, a2, 26
                  slti         s2, t3, -1963
                  nop
                  and          ra, sp, a7
                  srl          s10, a6, s5
                  sub          s4, t6, tp
                  auipc        a4, 999778
                  lui          s10, 480901
                  addi         s5, zero, -1234
                  slli         s4, sp, 27
                  and          t3, zero, s10
                  sub          s9, s3, t3
                  srai         s9, t4, 18
                  lui          t4, 385928
                  slti         ra, s3, -1759
                  addi         a4, s0, -776
                  sltu         t0, t1, t0
                  add          a2, a5, t0
                  sra          a4, s11, s0
                  and          zero, t6, a3
                  nop
                  srli         a7, s6, 17
                  xor          sp, t4, ra
                  srli         a6, t4, 1
                  srl          a6, s7, a7
                  sltiu        t1, s0, 826
                  srli         s4, a3, 16
                  nop
                  sll          a1, s0, a4
                  slti         s6, s8, -562
                  xori         a5, a6, -490
                  slti         ra, s10, 828
                  sra          s6, a6, a2
                  and          s6, t3, s2
                  ori          s7, s0, 2045
                  nop
                  sll          a7, s10, s7
                  nop
                  sll          s11, s8, s6
                  auipc        t2, 171089
                  sra          a1, a0, ra
                  and          a4, s10, s5
                  addi         t5, t1, -1947
                  add          t1, s2, s9
                  srl          tp, s0, a5
                  srai         a6, a5, 22
                  sra          t3, s8, t3
                  srl          t1, a0, t0
                  srai         s7, t6, 11
                  sltiu        s6, s2, 410
                  or           s9, a0, t0
                  andi         ra, s6, 1974
                  sltu         ra, s0, a1
                  sra          s2, s8, s3
                  sll          a6, s1, s5
                  or           t1, s10, s7
                  addi         t3, t0, -548
                  sub          s0, s1, a5
                  slt          s3, s6, t3
                  ori          a1, t0, 498
                  srl          t3, gp, t5
                  slti         s0, tp, 1638
                  sra          s9, s11, a2
                  ori          s11, a2, -347
                  srl          t0, a2, gp
                  sltiu        t4, s0, -884
                  sra          sp, zero, s0
                  andi         a6, a4, -334
                  addi         gp, t2, 1880
                  srli         s4, a6, 9
                  srli         t4, t5, 16
                  ori          s1, t2, -605
                  slt          tp, t0, gp
                  slti         s6, a2, 1806
                  slti         zero, a5, -1985
                  lui          sp, 41779
                  auipc        s1, 932682
                  sra          zero, sp, s10
                  sltiu        t4, t6, -586
                  sltu         a2, s1, a6
                  andi         s10, a7, 1209
                  sub          s1, a2, t2
                  and          s4, s11, t3
                  slti         zero, s3, 381
                  xori         s0, t1, -1337
                  nop
                  sltu         tp, a4, a2
                  sltiu        s5, tp, -840
                  sltu         a1, t0, gp
                  srli         s7, a4, 1
                  slti         s11, a0, 83
                  sra          zero, s1, a7
                  srai         s11, s1, 7
                  sub          tp, t4, a5
                  xor          s3, a2, t5
                  sltiu        ra, a2, -503
                  xori         s1, a0, -2048
                  sll          t0, a3, a6
                  srai         gp, gp, 10
                  slt          s4, a0, a7
                  slti         s9, s10, 1794
                  xor          a7, t3, a3
                  sll          sp, a4, s3
                  auipc        t5, 949522
                  srli         s7, zero, 3
                  srl          s2, a5, s1
                  srl          a6, zero, a0
                  xori         gp, a3, -734
                  add          s11, s11, s9
                  nop
                  lui          t1, 224185
                  srai         t0, a6, 15
                  nop
                  sub          s1, s0, s9
                  sll          a3, t4, s3
                  add          sp, tp, t2
                  sra          a5, s1, s8
                  slli         ra, s7, 10
                  slt          a6, ra, s7
                  andi         s6, a2, 33
                  slli         a5, s10, 26
                  lui          ra, 880467
                  nop
                  xor          t5, a7, s4
                  slt          t0, t5, s3
                  srli         t4, a5, 18
                  slli         s4, t1, 11
                  slli         a3, s1, 6
                  andi         a5, zero, 1334
                  xori         s11, t1, 1223
                  sll          s6, t3, t4
                  auipc        t2, 782493
                  sub          gp, t3, s5
                  xor          s2, tp, s4
                  ori          s1, s11, 1218
                  lui          a7, 664877
                  lui          a7, 771114
                  addi         a5, a6, -1900
                  sltiu        s5, a2, 504
                  slli         a2, a3, 16
                  add          s6, a3, s4
                  srai         a4, gp, 21
                  sra          t0, tp, a1
                  nop
                  ori          t1, a1, 1480
                  ori          s11, t2, 619
                  srai         t4, s4, 23
                  add          a7, s2, a2
                  slli         s3, s11, 15
                  srai         t0, tp, 27
                  xor          t2, gp, s7
                  add          ra, s6, gp
                  sll          s7, a0, s4
                  slli         a2, tp, 22
                  sll          s4, s10, ra
                  xor          sp, s2, s3
                  srl          t5, s8, s10
                  xori         s2, t6, 1902
                  or           t1, t0, a4
                  slt          a2, s0, t3
                  sltiu        s1, t2, -1028
                  and          s11, a7, s6
                  addi         t4, t3, -992
                  srli         s4, tp, 23
                  add          sp, t2, a3
                  slli         s5, a7, 5
                  andi         a4, s9, -378
                  sra          s6, a2, a4
                  srli         s0, tp, 2
                  sub          s0, s7, s9
                  addi         s2, s6, 124
                  xori         ra, a6, -1844
                  srli         t5, t6, 21
                  srli         tp, t6, 30
                  add          s6, t3, t4
                  xori         t4, a4, -1570
                  sub          s0, sp, s11
                  andi         t0, s10, -27
                  sltu         s10, t0, s5
                  ori          t0, a0, 708
                  and          t5, t5, t2
                  andi         s10, s1, -641
                  or           a4, t2, s1
                  and          t5, a5, sp
                  add          sp, a5, t5
                  sub          t3, ra, s2
                  sub          zero, t0, a7
                  srl          a3, t3, zero
                  slti         a4, t1, -845
                  lui          s0, 828780
                  sltiu        zero, a7, 1670
                  and          a7, t6, t6
                  ori          gp, s9, -1383
                  srli         a6, tp, 1
                  ori          s2, a7, 1663
                  sll          s0, a3, s0
                  sra          s2, t2, tp
                  or           s6, s2, a0
                  slli         s3, s7, 13
                  slt          a1, a5, t3
                  xor          tp, s8, s1
                  ori          s2, a0, 121
                  ori          a4, s10, 1411
                  srli         a1, s0, 15
                  sltu         s11, s1, s7
                  sltiu        s4, s3, -1927
                  xori         s10, s3, 766
                  slti         a6, s2, -2010
                  lui          s1, 304342
                  slli         t1, tp, 4
                  addi         t0, s6, -2045
                  sltiu        t0, s8, 1048
                  sltu         tp, a5, a3
                  srai         s7, a1, 19
                  and          s2, t0, s9
                  add          s10, s3, t5
                  slli         s11, a4, 14
                  slt          s0, a4, a5
                  auipc        s5, 534826
                  nop
                  lui          s6, 90106
                  slli         zero, zero, 26
                  slti         s6, t4, 1198
                  ori          zero, s4, -211
                  srai         a4, a5, 8
                  slli         s1, s3, 7
                  slti         s2, gp, -481
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
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x31, x10, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_2:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x31, x10, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_3:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x31, x10, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_4:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x31, x10, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_5:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x31, x10, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_6:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x31, x10, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_7:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x31, x10, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_8:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x31, x10, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_9:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x31, x10, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_10:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x31, x10, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_11:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x31, x10, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_12:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x31, x10, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_13:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x31, x10, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_14:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x31, x10, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x24, test_done
                  jalr x0, x24, 0

mmode_intr_vector_15:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x31, x10, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
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
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x31, x10, zero
                  csrr x19, 0x341 # MEPC
                  csrr x19, 0x342 # MCAUSE
                  li x15, 0x3 # BREAKPOINT
                  beq x19, x15, ebreak_handler
                  li x15, 0x8 # ECALL_UMODE
                  beq x19, x15, ecall_handler
                  li x15, 0x9 # ECALL_SMODE
                  beq x19, x15, ecall_handler
                  li x15, 0xb # ECALL_MMODE
                  beq x19, x15, ecall_handler
                  li x15, 0x1
                  beq x19, x15, instr_fault_handler
                  li x15, 0x5
                  beq x19, x15, load_fault_handler
                  li x15, 0x7
                  beq x19, x15, store_fault_handler
                  li x15, 0xc
                  beq x19, x15, pt_fault_handler
                  li x15, 0xd
                  beq x19, x15, pt_fault_handler
                  li x15, 0xf
                  beq x19, x15, pt_fault_handler
                  li x15, 0x2 # ILLEGAL_INSTRUCTION
                  beq x19, x15, illegal_instr_handler
                  csrr x15, 0x343 # MTVAL
                  1: la x24, test_done
                  jalr x1, x24, 0

ecall_handler:    
                  la x19, _start
                  sw x0, 0(x19)
                  sw x1, 4(x19)
                  sw x2, 8(x19)
                  sw x3, 12(x19)
                  sw x4, 16(x19)
                  sw x5, 20(x19)
                  sw x6, 24(x19)
                  sw x7, 28(x19)
                  sw x8, 32(x19)
                  sw x9, 36(x19)
                  sw x10, 40(x19)
                  sw x11, 44(x19)
                  sw x12, 48(x19)
                  sw x13, 52(x19)
                  sw x14, 56(x19)
                  sw x15, 60(x19)
                  sw x16, 64(x19)
                  sw x17, 68(x19)
                  sw x18, 72(x19)
                  sw x19, 76(x19)
                  sw x20, 80(x19)
                  sw x21, 84(x19)
                  sw x22, 88(x19)
                  sw x23, 92(x19)
                  sw x24, 96(x19)
                  sw x25, 100(x19)
                  sw x26, 104(x19)
                  sw x27, 108(x19)
                  sw x28, 112(x19)
                  sw x29, 116(x19)
                  sw x30, 120(x19)
                  sw x31, 124(x19)
                  la x24, write_tohost
                  jalr x0, x24, 0

instr_fault_handler:
                  add x10, x31, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

load_fault_handler:
                  add x10, x31, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

store_fault_handler:
                  add x10, x31, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

ebreak_handler:   
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x10, x31, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

illegal_instr_handler:
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x10, x31, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x19, 0x300 # MSTATUS;
                  csrr  x19, 0x304 # MIE;
                  csrr  x19, 0x344 # MIP;
                  csrrc x19, 0x344, x19 # MIP;
                  add x10, x31, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
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
