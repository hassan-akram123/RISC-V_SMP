.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x9, h0_start
jalr x0, x9, 0
h0_start:
                  li x12, 0x40000100
                  csrw 0x301, x12
kernel_sp:        
                  la x8, kernel_stack_end

trap_vec_init:    
                  la x12, mtvec_handler
                  ori x12, x12, 0
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
                  li x0, 0xb
                  li x1, 0x7
                  li x2, 0x35e2c89e
                  li x3, 0xfdf095bd
                  li x4, 0x7be28bcc
                  li x5, 0xf23279fc
                  li x6, 0x0
                  li x7, 0x80000000
                  li x9, 0x7
                  li x10, 0xf01a3036
                  li x11, 0x0
                  li x12, 0xa44fa855
                  li x13, 0x9745ce46
                  li x14, 0x80000000
                  li x15, 0x80000000
                  li x16, 0x0
                  li x17, 0xff81b58d
                  li x18, 0x3b0548a
                  li x19, 0xe
                  li x20, 0xf
                  li x21, 0x16095e51
                  li x22, 0xde9072bc
                  li x23, 0xec01cd0b
                  li x24, 0x80000000
                  li x26, 0x0
                  li x27, 0xe45b84cd
                  li x28, 0xdd3db0e3
                  li x29, 0xf0712df5
                  li x30, 0x9e9ff1dd
                  li x31, 0xc
                  la x25, user_stack_end
main:             li           a4, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           s10, 0x80000000
                  li           t2, 0xa332d46b
                  li           ra, 0xffffffff
                  li           sp, 0x0
                  li           t4, 0xffffffff
                  li           a3, 0xc5258b81
                  li           s11, 0x80000000
                  li           s6, 0x9bfff348
                  li           a7, 0xeea2df3
                  sub          sp, a4, s10
                  add          s10, s10, t2
                  addi         ra, a3, -1869
                  nop
                  auipc        a7, 845442
                  sub          ra, t4, s6
                  auipc        s6, 786588
                  addi         t4, ra, -1790
                  auipc        sp, 830866
                  lui          a7, 843859
                  add          a3, t2, sp
                  addi         s11, sp, 186
                  nop
                  nop
                  sub          sp, sp, s10
                  nop
                  add          t2, a3, s11
                  lui          s11, 229554 #end riscv_int_numeric_corner_stream_9
                  li           s7, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           t4, 0x0
                  li           a2, 0x80000000
                  li           s6, 0x80000000
                  li           s3, 0x0
                  li           t6, 0x0
                  li           tp, 0xffffffff
                  li           a0, 0x80000000
                  li           gp, 0x0
                  li           a1, 0x0
                  auipc        a0, 418636
                  add          t6, a2, s7
                  sub          tp, a2, t4
                  sub          a0, tp, a1
                  addi         a0, a2, 1793
                  auipc        gp, 891551
                  add          gp, gp, s3
                  auipc        t6, 490714
                  lui          s7, 238356
                  lui          gp, 386300
                  addi         s3, gp, 1999
                  nop
                  lui          s6, 842465
                  auipc        a1, 906651
                  add          t4, a2, tp
                  nop #end riscv_int_numeric_corner_stream_2
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           t2, 0x329d9adb
                  li           a3, 0x8f7775bc
                  li           a2, 0x77e4332e
                  li           sp, 0xbb86bdd4
                  li           t6, 0x80000000
                  li           s2, 0xffffffff
                  li           a1, 0x0
                  li           a5, 0x80000000
                  li           s10, 0xb1da7394
                  auipc        sp, 264602
                  sub          s2, a5, a0
                  addi         a1, s10, -1625
                  auipc        a2, 582225
                  nop
                  nop
                  nop
                  sub          a2, sp, sp
                  nop
                  auipc        a1, 357574
                  lui          s2, 466377
                  sub          s10, a3, sp
                  sub          a1, a5, t2
                  sub          s2, s2, s2
                  sub          a0, t6, s2
                  lui          t2, 935516
                  lui          a0, 154392
                  add          t6, sp, s10
                  nop
                  nop
                  add          a1, a5, t6
                  addi         sp, t2, 1909
                  addi         a3, s10, -1857
                  auipc        sp, 982246
                  add          t2, s10, a0 #end riscv_int_numeric_corner_stream_0
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           t1, 0x0
                  li           t6, 0xd2851ae0
                  li           t2, 0x0
                  li           t0, 0x0
                  li           gp, 0xffffffff
                  li           a3, 0x0
                  li           a2, 0x11bcd676
                  li           a5, 0x48274a5f
                  li           s11, 0x3c9b7483
                  lui          t1, 534885
                  sub          a2, a3, a2
                  addi         s11, a2, -1806
                  nop
                  add          s11, t2, gp
                  addi         t2, t2, 541
                  add          a4, a5, a2
                  addi         t2, gp, 1032
                  nop
                  add          t1, t6, a5
                  addi         t1, a3, 1499
                  sub          s11, t6, t0
                  add          gp, a4, t6
                  nop
                  add          s11, t6, a3
                  nop
                  nop
                  nop
                  addi         t2, a5, -1814
                  auipc        gp, 233825
                  nop
                  sub          a3, a2, t6
                  sub          s11, a5, s11
                  auipc        t2, 12787
                  addi         t6, a3, 467
                  add          gp, a3, s11
                  sub          a5, a4, a5
                  auipc        t6, 411990
                  nop
                  auipc        t0, 351628 #end riscv_int_numeric_corner_stream_1
                  li           t1, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           t4, 0x80000000
                  li           s5, 0xe7bc4225
                  li           tp, 0x0
                  li           a7, 0x80000000
                  li           s7, 0x59e461fd
                  li           t6, 0xffffffff
                  li           s2, 0x9c3cc08f
                  li           gp, 0xffffffff
                  li           s4, 0x0
                  auipc        t6, 654187
                  addi         s5, s7, -1734
                  nop
                  nop
                  lui          t6, 738342
                  addi         t4, t4, 888
                  sub          s2, t6, t4
                  sub          t1, t4, s5
                  addi         t4, gp, -1154
                  addi         t4, s5, 1844
                  addi         t6, s5, 496
                  add          tp, gp, s4
                  addi         s4, s4, -46
                  lui          s5, 18573
                  nop
                  addi         t6, s2, -1138
                  lui          t4, 466681
                  lui          s4, 75701
                  auipc        gp, 682763
                  add          tp, tp, t1
                  nop #end riscv_int_numeric_corner_stream_6
                  li           t4, 0x80000000 #start riscv_int_numeric_corner_stream_16
                  li           t1, 0x80000000
                  li           s4, 0xffffffff
                  li           gp, 0xffffffff
                  li           a7, 0xee08c205
                  li           s6, 0x0
                  li           t3, 0xffffffff
                  li           a0, 0x0
                  li           a2, 0x80000000
                  li           t0, 0x80000000
                  addi         s6, a0, -1495
                  addi         t3, t3, 474
                  add          a2, gp, t4
                  addi         t0, a0, 594
                  auipc        s4, 912520
                  lui          s6, 339163
                  nop
                  addi         a7, t0, -1893
                  addi         t0, t0, 8
                  nop
                  auipc        a0, 392090
                  sub          t0, t1, gp
                  lui          gp, 950313
                  sub          s4, t3, s6
                  nop
                  nop
                  add          t4, s4, gp
                  addi         a2, a0, -1613
                  nop
                  auipc        a7, 779359
                  add          s4, s6, gp
                  nop
                  auipc        gp, 892225 #end riscv_int_numeric_corner_stream_16
                  li           t4, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           s6, 0xffffffff
                  li           s5, 0x80000000
                  li           t6, 0x0
                  li           a2, 0xbb0845a9
                  li           a5, 0xffffffff
                  li           t2, 0x0
                  li           sp, 0x0
                  li           t1, 0x0
                  li           ra, 0x47ddb2d7
                  addi         sp, sp, -1979
                  sub          s5, t1, ra
                  sub          t6, sp, s5
                  addi         a2, t1, -1559
                  addi         t6, t6, 437
                  addi         s5, ra, -190
                  addi         t1, s5, 1331
                  nop
                  nop
                  add          t1, a5, sp
                  sub          s6, t1, t4
                  nop
                  sub          t4, t2, t4
                  sub          t1, ra, t1
                  addi         sp, sp, -179
                  addi         s6, a2, -935
                  nop
                  add          s5, t4, ra
                  addi         s5, t4, -542
                  lui          a2, 275362
                  add          a5, a2, t2
                  nop
                  lui          s5, 917571
                  sub          s6, t6, a5 #end riscv_int_numeric_corner_stream_8
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           sp, 0xffffffff
                  li           s7, 0x0
                  li           s10, 0xf548a8b0
                  li           t2, 0xdc0181df
                  li           t1, 0x0
                  li           t3, 0xffffffff
                  li           a5, 0x0
                  li           s3, 0x8ad7149d
                  li           a1, 0x80000000
                  auipc        s3, 280754
                  sub          t6, t2, t6
                  auipc        t3, 437257
                  auipc        t6, 153654
                  add          a1, s3, t3
                  sub          a1, t2, s7
                  nop
                  nop
                  addi         a1, s7, -1525
                  sub          sp, s10, s7
                  add          s3, a5, s10
                  sub          t2, t6, a5
                  add          t3, s7, t6
                  nop
                  nop
                  sub          t6, s3, t3
                  lui          s7, 129758
                  auipc        t1, 790337
                  addi         s10, s3, -1998
                  auipc        a1, 131476
                  nop
                  nop
                  auipc        t6, 142176
                  lui          t2, 808483
                  lui          t6, 998259
                  lui          t3, 306920
                  lui          t6, 395088 #end riscv_int_numeric_corner_stream_5
                  li           t0, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           a3, 0x80000000
                  li           a4, 0x80000000
                  li           t3, 0x598f1243
                  li           a2, 0x80000000
                  li           t2, 0xffffffff
                  li           ra, 0x80000000
                  li           t5, 0x80000000
                  li           s5, 0xffffffff
                  li           a7, 0x3c45dd6f
                  sub          a4, a2, a2
                  lui          a3, 2324
                  add          s5, t3, t5
                  nop
                  nop
                  sub          a2, t2, t0
                  lui          s5, 44527
                  add          t2, t2, t2
                  addi         t2, ra, -805
                  addi         t2, a4, -158
                  addi         a7, a4, -177
                  addi         a3, s5, 75
                  nop
                  add          a3, a4, s5
                  nop
                  addi         s5, t2, 1512
                  add          a4, t0, s5
                  addi         a2, t2, -1834
                  nop
                  sub          t3, a7, a4 #end riscv_int_numeric_corner_stream_12
                  srai         a0, s10, 11
                  slt          a7, t0, s9
                  sltu         s8, s7, a4
                  auipc        t0, 436503
                  or           s2, t0, a0
                  xor          sp, s7, tp
                  sltu         s11, s0, s3
                  xor          gp, s10, a4
                  or           s11, s7, a2
                  xori         a7, s2, -960
                  slli         a1, gp, 24
                  andi         s5, a7, 1029
                  sra          a4, a1, s2
                  or           s8, s4, s0
                  nop
                  srai         a7, s6, 3
                  ori          s6, s2, 1703
                  sub          t2, a5, s5
                  and          t5, s6, s6
                  srai         t4, zero, 2
                  slti         zero, tp, 558
                  xori         zero, s0, -238
                  add          s4, s2, s11
                  addi         s2, t3, -1035
                  sltiu        s7, a3, 1202
                  srli         a4, tp, 30
                  slt          s4, a0, a5
                  addi         a6, s7, 881
                  and          sp, a1, s8
                  lui          tp, 651859
                  sll          s5, s7, t0
                  addi         ra, s4, 1736
                  or           t2, t2, a2
                  or           a1, s0, tp
                  sltu         a1, s6, a6
                  srli         s11, s5, 29
                  lui          t1, 83406
                  sra          a0, a7, s4
                  slli         s3, a1, 23
                  or           s7, t0, a4
                  addi         a0, a6, -1676
                  srl          t1, a6, t4
                  and          a7, t5, a6
                  add          t2, a0, s11
                  ori          s5, a0, 1107
                  xor          a7, t2, t6
                  lui          a2, 68446
                  srai         a3, s0, 18
                  add          gp, s7, s10
                  xor          ra, t5, a2
                  lui          sp, 551882
                  sra          s6, gp, a7
                  ori          t3, ra, -1981
                  ori          s8, t6, -2018
                  sll          a5, s2, s5
                  srai         gp, s0, 15
                  slli         t5, s4, 22
                  srli         s3, a0, 22
                  add          s10, a2, s2
                  slti         a1, gp, 705
                  nop
                  andi         t5, s10, -968
                  slt          t4, a2, sp
                  add          t1, a4, s9
                  ori          t2, a7, 1580
                  sltiu        a7, t3, 1985
                  slt          a3, a1, t0
                  add          a3, a2, s4
                  add          t5, s3, tp
                  sltiu        ra, s9, 1552
                  srai         s11, a4, 29
                  sltiu        a3, zero, 214
                  sub          zero, s1, t5
                  addi         ra, s0, -1559
                  add          t5, s3, t4
                  auipc        a0, 664253
                  andi         a1, a5, -1574
                  xor          ra, s4, a0
                  addi         s2, t2, 1320
                  srl          s7, a1, s8
                  sltu         t3, s1, s10
                  nop
                  xori         s6, a3, 1673
                  nop
                  sltiu        a2, t4, -1376
                  sltiu        t1, t2, -1043
                  xor          s10, t6, t4
                  sub          a5, t2, s10
                  sltiu        s8, t6, -1753
                  srl          a3, a4, t1
                  srai         s10, a5, 20
                  slt          a6, a2, s11
                  sltu         sp, a5, t5
                  srl          a2, t2, t0
                  xori         t3, a4, 1757
                  srl          t6, a3, a1
                  andi         s7, s5, 206
                  ori          s7, t3, -1811
                  srli         t0, gp, 29
                  slt          s5, a4, a1
                  slt          gp, s3, t6
                  sltiu        s10, s6, -775
                  sub          zero, a3, zero
                  addi         s2, s4, -1167
                  srl          gp, t5, zero
                  add          a1, a3, t5
                  xor          a0, a0, a6
                  sub          t2, sp, a7
                  sltu         a6, a3, s6
                  sll          s3, a2, sp
                  and          a0, s1, t2
                  lui          a7, 210641
                  srl          s8, zero, s3
                  lui          t2, 874071
                  sll          s10, a3, s9
                  xor          t0, s6, a7
                  sub          a1, t5, a1
                  srai         s6, zero, 3
                  or           a4, a2, t4
                  sltiu        s4, a0, 678
                  andi         s8, s1, 1417
                  sltu         a4, s7, s9
                  sll          sp, a0, a0
                  xori         s7, s2, -1060
                  and          s2, a2, ra
                  andi         a2, tp, -3
                  srli         a5, a4, 7
                  and          sp, s0, s6
                  or           s3, ra, t0
                  srai         t6, s3, 31
                  xor          sp, a0, a1
                  sll          s7, s8, s1
                  sub          a1, s3, t4
                  ori          a3, zero, 2032
                  sra          t6, s4, a0
                  slti         s4, ra, 1176
                  sltu         tp, zero, a1
                  srli         zero, zero, 5
                  slli         s10, s3, 18
                  sll          a4, a3, t4
                  slti         t1, s6, -1074
                  srli         sp, t1, 29
                  xor          t0, a4, t6
                  sltu         s2, s11, t0
                  sub          t4, a4, s6
                  and          a5, s8, s10
                  sll          t5, t1, t5
                  slli         gp, s0, 23
                  xor          s5, a4, s4
                  sra          s11, a1, t4
                  xori         t3, s5, -687
                  sll          a6, t5, ra
                  xori         tp, t1, -654
                  sltu         tp, s7, t1
                  slli         s4, s8, 8
                  nop
                  srli         a3, sp, 17
                  addi         ra, t4, -2005
                  slti         t3, s0, -171
                  ori          t4, t0, 1516
                  sll          s6, s10, s0
                  or           t0, a7, a7
                  sub          s7, gp, s8
                  add          t5, s5, t6
                  sub          t2, s8, ra
                  addi         t6, s7, 182
                  slt          a5, s1, s10
                  sll          a4, s10, s0
                  and          t6, a0, t1
                  addi         t3, t1, 132
                  sra          s11, t6, a5
                  sltu         s2, a5, t0
                  nop
                  srai         a3, t3, 25
                  nop
                  slt          a4, a4, a4
                  sra          s6, a3, tp
                  xori         t2, ra, 1913
                  sub          s11, s1, s10
                  addi         a3, a0, -700
                  and          t6, sp, a6
                  nop
                  sll          t5, s1, s8
                  and          a4, s8, s3
                  addi         s5, a6, 499
                  sub          tp, a1, a5
                  add          s4, t4, s0
                  add          gp, s2, t1
                  andi         t1, a4, 805
                  lui          s8, 928875
                  lui          a5, 232171
                  or           s2, s0, s6
                  ori          s4, s5, -1343
                  or           s7, a6, a7
                  sltu         a2, a1, a3
                  srl          s8, s5, t2
                  auipc        a4, 350487
                  addi         t2, a6, -91
                  srai         a4, t4, 18
                  srai         s8, s1, 10
                  add          t0, t5, tp
                  sra          a1, a5, s6
                  slti         t2, a3, 189
                  addi         zero, t1, 335
                  sltu         sp, s4, a3
                  andi         t1, s8, 403
                  slt          t3, zero, a5
                  or           t0, a0, s4
                  addi         s2, s3, 1818
                  sra          s2, t6, a7
                  sub          t1, s11, s0
                  sub          s3, s11, s1
                  auipc        a1, 609848
                  srai         t6, s4, 13
                  and          a3, s9, a6
                  slti         a0, s6, 488
                  and          a4, s9, gp
                  sltu         a6, a0, s8
                  sra          a6, s6, tp
                  andi         a1, t6, -349
                  slli         tp, a5, 12
                  sub          t2, s1, t2
                  and          s7, s0, s2
                  sub          a7, s6, a2
                  ori          a2, a4, 102
                  xor          s5, a3, s3
                  srli         t6, a2, 18
                  slt          tp, tp, t0
                  srli         a7, t5, 6
                  slt          a3, gp, t5
                  slli         a5, s7, 12
                  addi         t5, t5, 1001
                  srai         s7, zero, 29
                  sra          s3, a7, a1
                  sll          s10, gp, s8
                  sll          gp, a6, t6
                  or           a3, s11, s9
                  sltiu        a1, s7, 1298
                  addi         a4, sp, 1763
                  sra          t3, a5, ra
                  sltiu        a4, s1, 1981
                  ori          a2, s7, 1203
                  srl          t0, s7, sp
                  or           t5, a5, tp
                  sll          t0, a7, s8
                  addi         tp, s6, 893
                  slt          a0, a5, zero
                  xor          s11, ra, a5
                  sll          sp, t0, s2
                  lui          t4, 176529
                  srai         s7, s4, 3
                  xori         a1, a4, 2027
                  xori         t3, s9, -1335
                  slt          a0, s2, s7
                  lui          t6, 28562
                  auipc        s3, 339816
                  and          s2, s8, s3
                  andi         s6, a4, 6
                  addi         s2, s9, 584
                  slt          s10, s3, t5
                  lui          s10, 500742
                  nop
                  sub          s11, a6, s9
                  sra          a1, a2, a5
                  sll          gp, a7, s6
                  or           t4, t3, a1
                  slt          a6, s3, a7
                  sltu         t0, a2, t1
                  add          t0, s10, sp
                  slt          t6, t3, s4
                  xor          t6, t5, s8
                  srai         a5, t5, 29
                  and          t0, s5, s9
                  sltu         t3, tp, a1
                  srai         s2, s7, 28
                  slt          zero, s11, t5
                  addi         a7, a7, 1221
                  srl          s10, a6, a5
                  andi         s5, s10, 753
                  srli         s7, a6, 7
                  andi         s11, t3, -453
                  sub          a6, s9, a6
                  sltu         t0, a4, t6
                  sltu         s3, a0, t1
                  and          t1, s6, a0
                  sra          t2, t6, tp
                  sll          gp, s3, s3
                  xori         a1, s6, -1935
                  sub          s6, sp, s11
                  sltu         s7, a2, s3
                  sltiu        s7, t0, 1507
                  andi         a4, s9, -1896
                  xor          zero, a7, s2
                  srl          s2, t0, t2
                  or           sp, gp, zero
                  sll          t6, s5, a2
                  xori         a1, s6, 1188
                  lui          s7, 894815
                  add          s8, a0, s6
                  addi         t2, tp, 900
                  auipc        s7, 747741
                  andi         a4, a2, -130
                  andi         a0, t3, 1378
                  nop
                  addi         a6, sp, 1347
                  nop
                  sub          s8, a4, a5
                  sltiu        s10, s3, 2040
                  xori         a7, s4, 1077
                  addi         t6, s5, -1984
                  nop
                  and          a2, s6, s5
                  slli         a7, s1, 13
                  auipc        a4, 219438
                  srl          a3, a4, t3
                  xor          s11, s5, s3
                  sll          s3, a2, t6
                  slti         s11, a5, -483
                  sltu         t4, a0, a6
                  sltu         gp, s1, s10
                  andi         t1, s6, -669
                  and          s2, sp, t0
                  auipc        t3, 356226
                  nop
                  nop
                  xori         t0, s5, -171
                  xor          s4, t0, s4
                  lui          t0, 710598
                  ori          t4, t6, -68
                  ori          s4, a0, 1913
                  xor          t2, s1, s5
                  sltiu        t2, ra, 676
                  auipc        t1, 283457
                  sra          s7, ra, s3
                  xor          a5, a4, s8
                  slli         a3, s11, 25
                  or           sp, s8, s5
                  sub          t4, sp, s4
                  auipc        a5, 952960
                  andi         a5, s8, 609
                  auipc        s7, 275997
                  sltu         s7, s7, sp
                  and          s5, gp, t6
                  or           t2, gp, s6
                  add          zero, t5, a6
                  auipc        s5, 84106
                  sub          a7, s1, zero
                  lui          a2, 710468
                  sra          s2, t3, s6
                  srl          s6, s11, a6
                  sltu         a1, a6, a0
                  sll          zero, s6, a5
                  ori          s8, s10, 956
                  or           a0, zero, t0
                  or           sp, tp, s1
                  sub          t1, s0, a3
                  srai         ra, a3, 11
                  slli         t6, s1, 4
                  slti         ra, tp, 221
                  or           zero, t0, s5
                  nop
                  and          a3, tp, a6
                  xor          a5, t6, s11
                  or           a2, s0, tp
                  or           t3, a1, s9
                  sltu         a2, s6, s0
                  xor          t0, s10, s4
                  sub          t1, a5, t2
                  xori         tp, a4, 1125
                  ori          s11, s3, -326
                  nop
                  sltu         t6, s7, a1
                  or           t6, a2, zero
                  or           t6, s2, ra
                  ori          ra, tp, -1911
                  slt          gp, a7, a5
                  and          s7, s3, zero
                  or           s4, s5, tp
                  sltu         s4, t2, s9
                  srl          s11, t5, s7
                  andi         a6, gp, 1448
                  and          s6, t3, s6
                  xori         t6, s4, -706
                  sltu         t2, ra, zero
                  slti         s2, s11, -1141
                  nop
                  addi         s10, s4, -924
                  nop
                  slt          s8, tp, gp
                  srli         a2, s9, 18
                  or           a7, gp, a6
                  slti         t1, a7, 1482
                  sub          t3, s2, t2
                  ori          s11, t5, 2005
                  slt          s8, s3, s10
                  add          a5, ra, t2
                  add          a1, s11, s11
                  sll          t1, s4, s1
                  sltiu        s2, a4, -586
                  slli         s6, t3, 22
                  xori         a7, s9, -502
                  srli         tp, sp, 19
                  sub          tp, s6, zero
                  ori          s7, s0, -925
                  srli         t3, t1, 12
                  or           s10, s1, s7
                  ori          a1, t0, 972
                  nop
                  srl          a0, s4, a1
                  add          s4, tp, t2
                  sltu         s4, a2, s2
                  sltu         a1, a1, s9
                  lui          a3, 305025
                  sra          t4, s6, t5
                  slt          a1, ra, s9
                  nop
                  slli         t1, a6, 25
                  sll          gp, zero, ra
                  lui          s7, 508623
                  add          s2, t2, tp
                  ori          s6, s11, -741
                  sltu         s10, s8, t6
                  slti         zero, a7, -625
                  slli         s5, a5, 7
                  slt          t3, s7, a5
                  sltiu        t1, s6, 1653
                  slli         t2, s8, 16
                  xor          sp, s4, s4
                  slt          t1, a4, t3
                  slt          t1, a1, s7
                  auipc        sp, 226830
                  sll          t2, a3, gp
                  xor          a4, s6, a6
                  slti         t3, t5, -1198
                  sltiu        s4, t1, 490
                  slti         s7, a4, 1766
                  sra          t0, s5, s2
                  nop
                  srl          a2, s0, zero
                  slli         a5, a4, 15
                  add          a5, a7, t6
                  slli         s10, s5, 8
                  sub          t3, s8, a7
                  add          a4, s6, s5
                  ori          gp, a2, -1492
                  slli         t0, a2, 1
                  addi         zero, a4, -941
                  sltu         s7, a2, ra
                  srli         a5, t6, 7
                  srl          a2, s9, s0
                  slli         s7, t4, 0
                  lui          s3, 525847
                  sltu         t0, s0, a3
                  add          a4, t2, s3
                  auipc        s10, 890532
                  srai         a2, a2, 5
                  or           a6, s4, s0
                  and          s3, ra, t0
                  and          sp, a1, t3
                  addi         t4, t2, -450
                  and          t0, a2, t1
                  srai         zero, t5, 13
                  srli         gp, sp, 11
                  sltiu        t2, s2, -1487
                  xor          t0, sp, t4
                  slti         a3, s8, -1120
                  slli         t5, t0, 19
                  nop
                  xor          zero, t1, gp
                  auipc        s10, 333621
                  slt          s7, t6, s2
                  srai         s5, t0, 14
                  xor          s11, a3, s10
                  xori         s7, s6, 549
                  sra          t4, s10, a3
                  addi         t4, s8, 2036
                  slt          a4, s0, s8
                  sltu         a7, a3, t2
                  ori          a1, a3, 851
                  nop
                  addi         s10, t5, -487
                  or           s4, a6, s8
                  xor          s2, a3, a2
                  sltu         zero, a0, a4
                  sltiu        a5, tp, -641
                  andi         a6, s2, -326
                  ori          a6, s9, 995
                  sub          t5, s5, ra
                  srl          t6, s8, s0
                  srli         s3, s0, 5
                  add          a0, s11, s9
                  xor          t2, s1, sp
                  add          s6, zero, a3
                  nop
                  slti         sp, s7, 2029
                  srli         t4, s0, 17
                  sra          s10, tp, s9
                  sltiu        gp, a4, 2003
                  or           a1, s11, s1
                  ori          t5, s11, 948
                  sra          s2, a2, s7
                  addi         t6, t2, 172
                  lui          s10, 265559
                  xor          t4, a0, a3
                  auipc        t3, 987617
                  slti         t2, t0, 1665
                  srli         a3, s6, 2
                  auipc        ra, 256937
                  addi         ra, zero, -574
                  xor          t6, s11, a4
                  auipc        t1, 913331
                  sltiu        s5, s11, -51
                  srai         a6, a3, 9
                  srli         t2, s3, 7
                  auipc        s8, 561517
                  xor          s8, s1, t1
                  and          ra, s5, tp
                  xor          a2, ra, a3
                  nop
                  nop
                  ori          s3, t1, -1463
                  sra          t4, s3, sp
                  xori         a4, a3, 1117
                  xori         sp, s5, -220
                  add          sp, a5, s7
                  sltiu        a3, s11, -1358
                  slti         a6, s5, -398
                  xor          a0, tp, s11
                  lui          a1, 992725
                  ori          t4, t0, -833
                  ori          t5, s6, -416
                  sll          t5, t0, s7
                  srl          t1, s8, a3
                  sltu         a1, s8, a2
                  slt          t5, tp, a6
                  slli         tp, s6, 22
                  sltu         t6, a1, a3
                  or           a4, a2, a5
                  sll          t3, t5, s11
                  sra          a7, t3, s8
                  add          s4, a6, s8
                  or           a5, a1, a4
                  and          zero, t1, a0
                  sra          ra, t0, t3
                  auipc        s11, 730548
                  and          t0, tp, a7
                  addi         a6, s5, -870
                  sub          t3, a5, s3
                  add          a3, t2, a0
                  sra          sp, s5, t2
                  sltu         t2, gp, t5
                  ori          t2, s0, -1483
                  addi         s3, t1, 702
                  or           ra, t0, gp
                  sltu         s5, s6, s11
                  sll          s11, a1, t0
                  slt          s2, a7, a5
                  sra          a0, s1, s5
                  andi         a5, t0, -1390
                  srai         a3, gp, 9
                  auipc        a3, 933986
                  srl          s8, a5, a7
                  sltiu        t3, t0, 102
                  sll          ra, s5, a5
                  slli         a5, s10, 14
                  slti         a2, s9, 1454
                  xor          a3, a4, s10
                  andi         a3, a4, -1443
                  sub          t3, a1, a3
                  slt          t1, s2, s1
                  slli         a4, s3, 14
                  ori          a1, a0, -610
                  xor          t2, a7, t2
                  sltu         t6, gp, t2
                  sub          a4, s5, s6
                  addi         ra, s5, -233
                  srli         zero, s11, 5
                  nop
                  sub          t3, s7, s4
                  srl          t6, t6, a7
                  add          a7, t6, zero
                  sltu         a1, s7, t6
                  sltiu        t4, s6, -1321
                  sltu         a6, s2, a5
                  add          a4, s0, a2
                  srai         a3, a0, 28
                  and          s8, s1, zero
                  slli         a6, a6, 14
                  auipc        t2, 827254
                  sub          gp, t6, a2
                  or           t3, tp, sp
                  addi         t5, t1, -657
                  sltu         s5, s4, a0
                  xori         a7, t6, 445
                  addi         a1, t4, 1971
                  xor          a0, s7, t6
                  lui          s8, 43006
                  sll          s3, a7, s0
                  sll          s8, s10, s7
                  srai         sp, zero, 22
                  andi         a4, sp, -730
                  or           s11, a1, t6
                  auipc        a2, 577847
                  andi         tp, s9, 241
                  srai         s3, s1, 17
                  sltiu        t5, sp, -433
                  lui          tp, 613180
                  and          t1, s8, s7
                  srai         s10, a2, 6
                  srai         s7, a0, 23
                  srai         t5, s11, 10
                  ori          a3, a2, -447
                  add          a4, s11, s6
                  srai         s6, a7, 26
                  sll          s10, s7, t0
                  lui          t6, 623350
                  lui          a3, 496791
                  srli         s4, t1, 11
                  auipc        t1, 431840
                  sltu         a4, t0, a1
                  sll          a2, s6, s9
                  add          t4, a4, s0
                  slt          s6, s3, tp
                  sub          a7, a4, a5
                  addi         t5, s10, 2009
                  addi         t4, t5, -1139
                  ori          a2, t4, -730
                  sra          a4, s2, sp
                  andi         sp, t1, -420
                  sub          gp, t6, ra
                  slt          a4, gp, t3
                  addi         s7, sp, 455
                  slli         t3, s7, 21
                  and          gp, gp, s5
                  and          s3, a2, s2
                  andi         tp, t0, -1629
                  srli         sp, t1, 10
                  ori          t3, a5, -1038
                  addi         s4, s2, -1172
                  slti         zero, s6, -1190
                  auipc        t2, 758261
                  ori          a3, t6, -1582
                  ori          s8, a3, 1628
                  sub          a0, s7, t2
                  or           t3, s0, s7
                  addi         ra, s10, 1192
                  sltiu        a5, zero, 259
                  sll          a3, s2, a5
                  addi         t1, t1, 1773
                  ori          a5, t2, 858
                  xori         t1, s1, -703
                  sll          a0, s4, gp
                  slti         a4, s2, 1607
                  slli         t2, t3, 3
                  or           s6, ra, t5
                  sra          gp, a0, s10
                  slt          s6, a0, t2
                  or           s6, sp, a5
                  slti         s5, s1, -610
                  slti         s8, a4, -1766
                  slt          t4, a5, ra
                  sub          a3, s1, a5
                  sll          a7, s8, s4
                  lui          t4, 436068
                  sltiu        sp, a0, -760
                  ori          a5, s2, 540
                  nop
                  srli         t6, t1, 23
                  srl          t2, s3, t0
                  ori          s3, s9, 1442
                  srl          s10, s7, t2
                  sll          ra, a2, s3
                  srli         gp, gp, 27
                  sub          t5, s4, a6
                  slli         a6, s8, 20
                  sltiu        s7, a3, -1996
                  lui          s6, 523050
                  xor          s6, a7, s2
                  ori          t1, s6, -617
                  xori         t2, tp, 633
                  ori          ra, a0, -387
                  ori          t2, a0, -786
                  addi         s11, s7, -1100
                  srl          t0, a7, tp
                  srli         a7, t4, 4
                  slli         gp, s2, 14
                  slli         s6, t1, 11
                  andi         ra, s7, -1720
                  srli         s7, a3, 24
                  nop
                  or           a2, a2, t2
                  add          a4, t1, sp
                  addi         s4, s4, 945
                  xori         sp, a2, 1857
                  auipc        a4, 559509
                  sltiu        t4, s1, -982
                  slt          s5, s7, s2
                  ori          s10, a2, 756
                  andi         a1, s4, 676
                  sltu         s3, t1, t0
                  sltiu        a6, t1, 1141
                  srai         a4, a0, 27
                  sra          s2, a1, zero
                  slt          t2, a2, s4
                  or           tp, s11, s11
                  and          s10, s2, ra
                  andi         a1, a2, -963
                  sll          t2, s9, a4
                  sra          tp, s2, a0
                  sra          s5, a1, t4
                  srai         s8, a3, 3
                  auipc        t5, 87247
                  auipc        t1, 641238
                  sub          a4, t1, t4
                  or           s2, s6, a1
                  xori         s3, t5, 283
                  addi         s3, s3, 1946
                  and          s6, gp, a2
                  sll          a4, a6, gp
                  srli         ra, s10, 23
                  sub          a0, a7, a3
                  add          t5, sp, a3
                  xor          s2, ra, sp
                  xor          t4, t3, a6
                  slti         s6, t3, -1710
                  auipc        s2, 801770
                  and          t1, s9, t6
                  auipc        a1, 1043816
                  sltu         a1, s4, a3
                  sll          t2, s9, gp
                  sub          ra, s1, t1
                  xor          t3, a4, s0
                  xori         a0, s3, 1622
                  srl          t0, s3, t2
                  xor          s5, t4, s11
                  sltiu        a3, s1, 380
                  or           s2, a5, zero
                  slti         gp, t6, 778
                  srl          t3, tp, a4
                  add          t6, s11, gp
                  sltu         s10, a0, t5
                  andi         a1, s8, 1524
                  sll          gp, ra, a6
                  lui          a6, 5194
                  andi         t2, s2, -1222
                  andi         s8, a0, 1383
                  xor          a2, s11, a1
                  slti         s11, a3, 751
                  sll          t2, s6, s3
                  or           sp, a2, s11
                  sub          s6, ra, t6
                  sltiu        t6, t3, 995
                  sub          t5, a3, t5
                  lui          gp, 303518
                  lui          a1, 484692
                  srli         tp, t5, 1
                  lui          ra, 351061
                  sltu         ra, a1, t3
                  or           s10, t1, tp
                  sub          s10, s7, gp
                  sll          s7, s4, s11
                  slti         a5, s3, 1544
                  andi         a7, s9, 377
                  sll          s2, tp, a5
                  sra          t1, a6, t2
                  add          a6, a1, t3
                  xori         s8, t4, 1278
                  sltiu        s3, a0, -486
                  addi         a4, s7, 160
                  addi         t6, s7, -1092
                  lui          s11, 299306
                  srl          a0, s2, s9
                  slti         a6, tp, -1576
                  slti         s2, ra, -1090
                  sra          sp, t5, s3
                  srli         tp, s5, 9
                  slti         tp, t3, -123
                  sltiu        s5, a3, -1203
                  nop
                  addi         t0, zero, -1948
                  ori          t0, s11, -463
                  sltu         s4, s0, a3
                  lui          s11, 910706
                  andi         a1, sp, 1186
                  nop
                  srai         s5, a2, 16
                  addi         t6, a2, 1995
                  srli         s6, sp, 0
                  or           t1, t0, a5
                  xor          tp, a6, t5
                  lui          a3, 505694
                  and          gp, s7, tp
                  sltiu        s2, s1, -2017
                  sll          a4, a6, s1
                  slti         s6, s3, 1498
                  srl          s11, t5, s5
                  srai         t4, t3, 28
                  auipc        t3, 280300
                  sra          s2, zero, s2
                  sub          a1, s5, a6
                  nop
                  lui          a3, 803154
                  andi         t2, ra, 1467
                  srli         t3, a2, 19
                  sra          tp, t2, s0
                  and          t4, t5, a4
                  slti         t1, a2, 1598
                  sll          s5, s8, s10
                  sltiu        s11, s6, -1743
                  sltu         zero, zero, ra
                  sra          a5, t2, s0
                  lui          t6, 889525
                  ori          t6, s11, 534
                  sltiu        a5, t5, -640
                  srai         t0, s9, 23
                  srli         s11, gp, 5
                  slli         s4, t4, 30
                  sltiu        a5, a6, 1969
                  or           s3, t5, ra
                  andi         s7, s10, -1152
                  and          sp, s2, s0
                  sll          s5, a7, gp
                  and          a4, t2, ra
                  lui          s7, 86584
                  sll          s6, zero, t2
                  ori          t2, s6, 1692
                  or           ra, s5, s2
                  or           a0, t5, a7
                  slt          a3, s11, zero
                  andi         a2, gp, -1697
                  or           ra, a7, t4
                  auipc        s11, 101933
                  andi         tp, s1, -1316
                  auipc        t3, 731092
                  srai         s6, t5, 26
                  addi         s11, s4, -426
                  auipc        t6, 422928
                  lui          a6, 504792
                  sltu         a3, a6, a6
                  slli         t1, t1, 5
                  ori          t0, a2, -713
                  sub          a4, gp, t1
                  or           s11, t5, a6
                  lui          a2, 47873
                  xor          t2, sp, t2
                  add          t2, t1, s9
                  sll          t2, a6, a1
                  and          a4, s4, t6
                  slli         t1, s4, 14
                  sub          t5, s3, s2
                  sub          t6, ra, a0
                  andi         t1, t5, 1938
                  srai         t0, s5, 4
                  srli         a3, s1, 1
                  and          a6, t2, t0
                  lui          t5, 862499
                  slti         a2, t3, -1739
                  add          t2, s2, s6
                  and          ra, a7, a7
                  srai         a1, sp, 30
                  sltiu        t1, ra, 1749
                  sub          t1, a1, s4
                  sltiu        t6, tp, -937
                  xor          sp, zero, s10
                  or           gp, a0, t0
                  nop
                  srl          a4, s5, a7
                  srl          s4, zero, a5
                  sltiu        s11, t5, 215
                  sll          s6, s10, gp
                  slt          a4, s2, a2
                  addi         t1, a2, 88
                  srai         a1, s9, 14
                  auipc        s4, 710949
                  add          gp, t3, a0
                  srai         a0, tp, 31
                  slt          t1, a0, s2
                  sub          a4, a5, s11
                  xori         a2, s11, -901
                  slt          s10, s2, s6
                  ori          a4, s4, 389
                  srl          t6, t3, s4
                  auipc        a0, 64115
                  andi         t0, a3, -1379
                  sltiu        s8, a7, -1139
                  add          sp, a6, a0
                  ori          a1, s3, -2028
                  or           s11, t2, gp
                  srai         tp, ra, 19
                  xor          s11, s11, ra
                  slli         ra, a0, 28
                  sub          ra, s1, tp
                  srai         a6, a5, 14
                  add          s8, a4, s9
                  and          s2, s8, a7
                  sltu         a4, gp, t0
                  add          a5, s0, a7
                  or           a4, a7, a5
                  slt          s3, a3, a5
                  nop
                  addi         s3, zero, -1281
                  or           t0, t1, sp
                  sll          a1, s3, t2
                  srli         t1, s4, 23
                  sltu         t4, a5, zero
                  nop
                  sra          zero, a2, s4
                  addi         a7, t4, -951
                  sub          gp, a3, s9
                  sra          ra, zero, a0
                  add          s4, a2, t0
                  or           sp, t1, s9
                  srl          a4, a0, ra
                  slt          gp, a7, s6
                  xori         a1, t0, 1940
                  sltiu        t6, a3, 29
                  srai         a7, tp, 16
                  andi         s11, t6, -1238
                  lui          s8, 823551
                  add          ra, s7, t2
                  slti         s8, gp, -983
                  sltu         t5, a3, s5
                  sltu         s10, sp, a1
                  sub          t5, t5, t4
                  lui          s11, 184150
                  add          a2, t4, s8
                  or           ra, s9, s6
                  sll          t0, t4, t5
                  andi         t1, s4, 366
                  xor          s8, t6, s8
                  xori         t0, a2, -1361
                  and          tp, t4, s10
                  nop
                  slli         a3, a5, 0
                  srl          t6, a4, a1
                  ori          a6, a0, 1256
                  sra          t6, ra, a4
                  or           a3, s2, s2
                  slt          a0, t3, t2
                  andi         t5, s3, 1947
                  sltiu        s5, s3, -1742
                  srai         sp, s2, 25
                  slt          tp, a3, a7
                  and          a4, zero, sp
                  srai         t3, gp, 20
                  srli         t2, a0, 25
                  add          sp, a3, t3
                  xor          a5, zero, s3
                  srl          s2, t4, s4
                  slti         s11, t3, -1185
                  srl          a2, a2, s5
                  srli         a6, s7, 1
                  sll          t0, zero, t3
                  and          s8, a7, t3
                  slti         a1, ra, -632
                  sra          a5, t1, s10
                  auipc        gp, 691225
                  xori         a2, t5, -1186
                  sll          t6, a5, a3
                  and          s4, a4, t2
                  lui          a3, 98524
                  andi         a4, sp, -1978
                  sll          s4, a3, s3
                  xori         a4, s8, -1769
                  andi         s10, zero, 545
                  andi         zero, t5, 501
                  sll          gp, s7, s3
                  sll          a0, s7, zero
                  sub          s11, gp, s2
                  slt          t6, t4, ra
                  xori         a1, a6, -908
                  sra          t3, t2, a5
                  srl          s4, s9, zero
                  slli         s5, a1, 16
                  slti         a6, a5, 1760
                  or           t1, a5, a1
                  ori          t2, s6, -98
                  ori          a0, sp, 119
                  slti         s10, t2, -532
                  sltu         s6, t5, zero
                  slli         zero, s9, 17
                  slli         a4, a2, 28
                  sra          s5, a4, s11
                  slt          gp, a6, tp
                  slti         a3, t1, -1559
                  add          s4, a7, s9
                  sub          s7, a4, t3
                  or           s5, t1, s7
                  sltiu        tp, s3, 927
                  xor          s6, s11, s4
                  auipc        zero, 37513
                  addi         a5, t6, -16
                  srl          s8, sp, s2
                  sub          a1, a4, tp
                  srai         s7, sp, 14
                  lui          s4, 297397
                  and          s11, t2, a3
                  addi         t5, s1, 711
                  slt          s5, t3, t0
                  slt          t1, a0, s7
                  slt          s3, a3, t5
                  andi         a6, s7, 569
                  srli         s5, a3, 20
                  xor          t3, s3, a1
                  nop
                  ori          s4, a6, -1054
                  slli         s2, t4, 0
                  slli         t5, s10, 23
                  sltu         s5, s7, s11
                  add          a7, a6, t6
                  xor          t5, t1, t5
                  andi         t4, s4, 1781
                  sltu         t1, s11, t0
                  srl          s7, s10, s5
                  sub          t3, gp, s1
                  sltiu        a1, s6, 1294
                  sltu         a7, a1, a2
                  andi         gp, a3, -109
                  sltiu        a3, t1, 1427
                  slti         t0, s9, -990
                  or           a4, a6, t0
                  xori         s8, a1, 933
                  and          s3, s11, a2
                  or           s2, a6, a2
                  addi         t6, a6, -744
                  add          t1, a4, a7
                  andi         a7, tp, 1673
                  andi         a0, zero, -1018
                  auipc        a7, 971562
                  slli         s3, zero, 3
                  srl          gp, t2, t2
                  srai         t2, s0, 26
                  srli         t4, s6, 0
                  auipc        s4, 137638
                  slti         a0, t5, -1646
                  andi         a0, t4, -456
                  slt          zero, a3, a6
                  or           zero, t1, t5
                  srai         t2, s10, 15
                  sub          a1, a3, sp
                  sltiu        sp, s3, -826
                  slt          a1, a1, a0
                  srai         s10, s2, 4
                  auipc        t6, 397842
                  slli         a3, ra, 22
                  auipc        t2, 106997
                  sltiu        a6, s9, 1563
                  andi         t3, a2, 1475
                  xor          s3, a1, a3
                  sll          a3, t5, ra
                  sra          t1, s3, s9
                  sra          s2, a2, a5
                  slti         t0, t0, -1098
                  ori          a6, a3, -1072
                  auipc        s11, 208969
                  sltu         t3, tp, zero
                  srai         s8, t5, 19
                  sub          a5, sp, a1
                  sltu         ra, s11, gp
                  addi         a5, zero, -290
                  sltu         t0, s4, s8
                  nop
                  srai         s6, t5, 14
                  sra          a7, s2, gp
                  sll          zero, a7, s10
                  lui          t1, 469359
                  auipc        s3, 464542
                  andi         tp, t3, 180
                  slti         t0, s1, -1981
                  srli         s6, a4, 15
                  sltu         t1, t4, s1
                  lui          sp, 553915
                  slt          t0, t4, a2
                  addi         a4, t0, -1491
                  sub          s10, s0, t2
                  auipc        ra, 959184
                  addi         sp, a3, -982
                  ori          s3, s6, -441
                  auipc        s4, 383089
                  ori          tp, a4, 395
                  srli         s7, s11, 2
                  lui          t3, 619272
                  xor          a4, s10, gp
                  add          t2, t3, a0
                  srl          tp, a2, a6
                  sltiu        gp, ra, -1264
                  srl          sp, t5, s6
                  nop
                  sub          a6, t0, ra
                  ori          ra, sp, 1471
                  srai         s5, tp, 28
                  or           a7, s8, a3
                  slli         a7, sp, 4
                  srli         a0, s1, 27
                  andi         s4, a0, 1555
                  or           s10, s0, s6
                  add          t3, sp, s4
                  slti         s7, s7, -1412
                  slti         s8, s4, 1736
                  lui          tp, 478027
                  auipc        a7, 177675
                  and          sp, t3, s5
                  sltu         s10, s4, t3
                  andi         a2, s7, 1612
                  andi         s10, s5, 1268
                  srl          t4, s1, zero
                  xori         a5, t5, -1710
                  and          sp, a6, s3
                  auipc        a1, 505617
                  sltiu        s10, s1, 1082
                  srl          s7, a6, s0
                  andi         a2, s1, 203
                  sub          a0, gp, s7
                  srli         s3, zero, 28
                  andi         a6, t0, -1883
                  or           s4, ra, s0
                  srl          t5, a2, t4
                  srl          a2, s8, s8
                  srai         a3, zero, 28
                  auipc        a0, 207577
                  sltu         s6, a7, sp
                  srli         tp, s8, 31
                  addi         s10, t1, 226
                  xori         s6, s0, -662
                  ori          s11, t5, -173
                  or           t2, a1, tp
                  xor          a6, t6, a0
                  srl          t0, a2, t2
                  nop
                  xori         a4, a3, 1140
                  srl          s11, a5, s3
                  srai         a7, s1, 27
                  xori         a0, gp, -940
                  srl          a7, s8, t3
                  lui          sp, 172642
                  add          a5, s1, a2
                  xor          s4, zero, s8
                  sltiu        s10, zero, -1625
                  sll          tp, sp, t3
                  slti         a6, a0, 424
                  slt          tp, ra, s6
                  addi         a1, s9, 477
                  srli         ra, s8, 24
                  add          t1, s3, s7
                  nop
                  ori          a7, a2, -1599
                  srai         a1, tp, 4
                  and          s5, s1, t5
                  add          a1, s3, t1
                  srl          t6, s4, s3
                  add          s2, t6, s4
                  sra          t6, a3, t1
                  ori          s11, t3, 115
                  xori         s11, t1, 492
                  sltu         tp, a6, a7
                  sub          t3, s2, tp
                  xor          a7, s4, a7
                  xor          s4, t2, s1
                  sra          a6, s1, t5
                  xori         a6, s1, 1637
                  andi         a3, a3, -2016
                  lui          s11, 348723
                  srli         a1, a0, 8
                  sra          s5, s8, gp
                  xori         a3, s7, -1265
                  sltiu        s7, ra, 267
                  ori          a2, gp, 1223
                  auipc        a2, 422021
                  lui          t3, 21048
                  addi         a3, a6, -619
                  auipc        s8, 577091
                  sra          tp, a6, a7
                  sltu         s5, a3, gp
                  sub          s5, s11, a1
                  lui          t5, 653188
                  slti         t1, t6, -194
                  and          gp, s0, t3
                  andi         s5, tp, -191
                  slli         tp, s10, 16
                  addi         t4, s1, 1230
                  sub          s8, zero, tp
                  nop
                  sltu         a2, sp, t3
                  slt          s3, s0, s9
                  srli         s8, t6, 7
                  ori          a6, a6, -1215
                  sra          s8, t4, sp
                  slti         tp, a7, -1266
                  ori          sp, s7, -483
                  xor          s11, s11, a7
                  sub          a3, a7, ra
                  sll          s4, t3, s0
                  srai         a0, s7, 16
                  slli         t1, t0, 9
                  auipc        s10, 913905
                  slli         s2, gp, 27
                  xor          s6, s2, s4
                  lui          a1, 556853
                  sltu         s8, gp, s4
                  sra          a1, a4, s10
                  or           a0, s5, t3
                  nop
                  ori          s11, s4, -1059
                  add          a0, s10, tp
                  xori         t4, t1, -104
                  sub          s6, a1, a0
                  andi         t3, s11, -1738
                  auipc        s3, 173991
                  srl          t4, gp, s5
                  and          t3, a4, s5
                  sltu         ra, t5, zero
                  sub          sp, s6, s2
                  slti         a4, a7, 129
                  sltiu        sp, a4, 945
                  andi         tp, a4, 1869
                  add          s11, t2, s3
                  slt          s4, s9, a5
                  xor          s2, t1, zero
                  auipc        s7, 182120
                  srai         zero, s4, 5
                  and          tp, t5, s6
                  add          s5, s8, s6
                  sra          t4, a4, t6
                  sltu         a2, s7, s0
                  slli         a5, s10, 12
                  srai         gp, t0, 18
                  sll          s3, a3, s8
                  and          t6, a0, t0
                  nop
                  slt          t2, s5, s0
                  nop
                  auipc        s8, 623907
                  and          a3, ra, t1
                  sll          s8, t3, a3
                  or           s6, t4, a0
                  andi         a2, s10, 1471
                  and          a5, s9, s7
                  lui          a4, 447449
                  ori          t4, s4, -394
                  xor          a7, s11, s5
                  andi         zero, t0, -573
                  slti         a0, tp, -701
                  slli         ra, s6, 20
                  srai         s11, s0, 25
                  or           s11, a1, s3
                  xor          zero, s8, t6
                  sra          t1, a1, s4
                  and          s4, sp, s11
                  slti         a1, s3, 161
                  add          t1, s0, ra
                  lui          t1, 790758
                  andi         t4, a4, -377
                  slti         a3, s11, -327
                  or           t6, t2, t1
                  srl          s4, s1, s10
                  lui          a5, 784288
                  sll          s5, t4, s1
                  lui          tp, 386856
                  sra          s2, t4, s10
                  addi         tp, s4, -146
                  and          zero, gp, s5
                  slli         a6, a1, 16
                  and          s8, s1, t6
                  and          s10, a0, a6
                  andi         s7, s6, -1143
                  slt          s6, a5, t1
                  ori          a2, t3, 1302
                  sra          t4, gp, zero
                  slli         tp, a2, 21
                  add          s7, a6, s8
                  sltiu        s7, a7, 164
                  slti         s6, s10, -905
                  slt          t6, a3, s9
                  or           s5, a3, s3
                  srli         s7, t3, 8
                  sltu         a6, sp, a2
                  nop
                  or           t6, s5, a0
                  slt          t0, t6, s1
                  sra          a6, s9, a3
                  sll          a6, s3, t6
                  auipc        t6, 512651
                  addi         t1, ra, 1749
                  srai         t1, s4, 17
                  lui          s3, 859269
                  li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_19
                  li           s7, 0x80000000
                  li           s5, 0x0
                  li           t4, 0xffffffff
                  li           a5, 0x80000000
                  li           t6, 0xffffffff
                  li           a6, 0xffffffff
                  li           s2, 0x0
                  li           t0, 0xffffffff
                  li           a7, 0xffffffff
                  sub          t0, t0, s7
                  addi         t4, a6, 1623
                  sub          a7, a7, a6
                  add          a6, s2, t4
                  nop
                  sub          t4, a1, a6
                  auipc        t6, 644418
                  lui          a5, 114035
                  lui          a6, 663196
                  add          a7, a6, a5
                  auipc        a7, 925497
                  add          a7, a5, t0
                  add          a6, s5, a1
                  addi         t6, a7, -2014
                  add          t4, s7, t4
                  nop
                  addi         a6, a7, -879
                  auipc        a7, 634836
                  nop
                  sub          s7, a6, t0
                  auipc        a1, 98764
                  add          a5, a7, s2
                  lui          s2, 400235
                  nop #end riscv_int_numeric_corner_stream_19
                  srl          t3, s7, s4
                  auipc        tp, 641963
                  ori          s10, s4, 1129
                  srli         t0, a3, 28
                  slti         s5, s9, 766
                  sll          t3, t2, a4
                  slti         t1, t0, 1994
                  sltiu        s11, s10, 1312
                  slt          a3, ra, zero
                  sub          zero, s9, sp
                  nop
                  sll          gp, t5, s2
                  xor          a0, a6, t5
                  add          a4, s3, a6
                  lui          ra, 548873
                  srl          s6, s8, t1
                  auipc        t3, 179653
                  nop
                  sltiu        a4, zero, 1941
                  slli         zero, s11, 19
                  auipc        a2, 741107
                  auipc        t5, 995837
                  xori         s8, t2, 694
                  srai         t1, sp, 27
                  sltu         a5, s3, t3
                  addi         s11, a7, 732
                  andi         t0, a5, -1422
                  add          a2, s2, s1
                  and          s4, s9, s3
                  or           s2, a5, t5
                  slli         s6, s2, 23
                  lui          a3, 954396
                  sltu         s6, a3, a6
                  sltiu        a0, t4, 1911
                  slt          a1, a7, t3
                  srl          s8, t4, s1
                  xor          s8, sp, t1
                  ori          t5, a5, -212
                  xori         t0, s3, -1407
                  slt          s10, zero, s11
                  slli         a3, a0, 7
                  srl          a7, sp, tp
                  or           a0, a1, t5
                  and          t6, zero, s8
                  sltu         s10, zero, a1
                  nop
                  lui          a3, 794742
                  slli         sp, s9, 8
                  auipc        s6, 90201
                  addi         s8, s5, 1297
                  ori          a3, s1, -1295
                  slti         s6, s5, -1583
                  srai         sp, s6, 3
                  lui          sp, 1047104
                  xor          a3, ra, a1
                  xor          sp, a4, a7
                  sub          t4, zero, a5
                  lui          s3, 848652
                  add          sp, s6, s7
                  srl          t6, t4, a4
                  sltiu        t3, s0, -812
                  and          a4, a7, ra
                  sltiu        t1, s10, -474
                  sltu         s7, s6, zero
                  slli         s4, ra, 6
                  sll          t5, a3, a1
                  ori          tp, s0, -375
                  srl          s11, s7, s9
                  or           s4, a0, t2
                  slli         s8, a5, 11
                  xori         s5, ra, -1379
                  sll          s6, s6, sp
                  slli         s10, a7, 27
                  xor          t0, t4, t5
                  slli         gp, gp, 15
                  slti         t4, a0, -1149
                  xori         a0, sp, -406
                  lui          t4, 515842
                  lui          a1, 259602
                  xori         s5, a2, -976
                  addi         zero, gp, -558
                  srli         t5, t6, 27
                  sll          a3, s1, tp
                  sltiu        a0, s9, 919
                  sub          a7, t1, a6
                  or           s8, s10, s6
                  ori          a2, a2, -1651
                  auipc        a7, 968231
                  sltu         a6, a0, a0
                  sltu         a7, a7, s9
                  or           s3, s8, a5
                  or           s6, a2, t1
                  addi         ra, t3, 1286
                  xori         s4, a2, -1057
                  ori          s11, s7, -1255
                  slli         s11, t5, 2
                  slti         s5, t5, -1176
                  lui          sp, 326167
                  slli         a3, t1, 14
                  or           s8, s7, s9
                  slti         zero, t2, 1128
                  auipc        t1, 421524
                  slt          sp, s3, s2
                  nop
                  sltiu        t0, t2, -1827
                  srai         s4, ra, 9
                  srli         t1, ra, 5
                  sltiu        tp, t3, 1890
                  nop
                  sltiu        t6, a2, 1647
                  and          t5, ra, s0
                  sltu         s11, t1, a0
                  andi         gp, a6, -1167
                  slli         a7, s6, 29
                  xor          a2, s9, a7
                  or           tp, s2, a1
                  auipc        s11, 561704
                  srai         zero, a1, 23
                  sltu         s3, s0, a5
                  auipc        a0, 258278
                  srai         s7, t2, 11
                  sltu         s3, s5, gp
                  srai         t3, a7, 6
                  lui          s8, 84411
                  sll          s8, a7, t5
                  and          s3, sp, t3
                  sll          sp, t2, t6
                  xori         a6, a7, 513
                  slt          gp, a3, a4
                  slti         ra, a7, 1818
                  xori         t3, a7, -1257
                  nop
                  srai         t4, t2, 19
                  slli         a5, tp, 19
                  and          s5, a0, s1
                  sltiu        t1, sp, 1971
                  xor          s8, t6, a2
                  ori          a6, s5, -1152
                  ori          tp, s3, 562
                  sltu         s11, a0, a6
                  slt          t1, s5, a1
                  and          s8, s10, t1
                  and          t6, s10, zero
                  add          a6, t4, a4
                  addi         a3, a1, 236
                  xori         t5, t0, -1817
                  sltiu        ra, a1, -1758
                  or           sp, s5, t6
                  sll          t0, a1, t3
                  srai         a1, a3, 29
                  add          s6, s3, s6
                  slli         a1, s8, 6
                  slti         a3, s0, -558
                  xor          a0, t1, a6
                  add          sp, zero, t3
                  srli         s10, s10, 31
                  slli         gp, s4, 19
                  xor          s3, s8, t3
                  andi         s10, a4, -1936
                  srl          s6, s1, s1
                  slli         s2, a1, 20
                  srl          t2, t3, t2
                  srl          zero, t6, t4
                  and          ra, s5, t0
                  addi         tp, t6, -1523
                  auipc        t2, 626464
                  auipc        tp, 461097
                  addi         a6, a4, -305
                  and          a3, s0, a5
                  srl          s6, t2, t6
                  sltu         a7, a4, a0
                  andi         s5, s4, -1093
                  addi         a4, a6, 684
                  nop
                  or           t6, s2, s8
                  xori         s5, t5, -1475
                  and          s11, s1, t3
                  addi         s11, s3, -180
                  srl          s6, s1, zero
                  sra          zero, a7, s1
                  andi         t3, s10, 2025
                  ori          a7, a3, -4
                  and          ra, s3, t3
                  ori          zero, s8, 555
                  lui          s5, 102539
                  sub          s3, a5, s0
                  srl          s10, s3, s2
                  sll          a3, s10, a7
                  xor          s4, t2, t1
                  sltiu        sp, t2, 650
                  auipc        t6, 775174
                  and          s4, s4, s5
                  srai         a7, a1, 8
                  add          s4, a1, t5
                  xor          zero, s3, s1
                  add          a0, s10, t4
                  slti         a5, s3, -1852
                  sra          t3, t0, s9
                  slli         t3, a2, 30
                  or           t2, a6, s6
                  xori         t0, t5, 44
                  nop
                  sra          ra, s9, a5
                  srl          a3, s8, t2
                  xori         t1, a3, -2010
                  slti         t0, s9, -1079
                  and          t1, s9, s8
                  sltu         s10, a0, s9
                  or           gp, s3, s0
                  xori         s10, s7, 425
                  slli         s11, t5, 13
                  slt          s6, t6, a0
                  slli         s6, a7, 4
                  addi         s6, s1, -1925
                  add          t4, sp, a0
                  xor          a7, a4, s5
                  li           s8, 0xe180d9e0 #start riscv_int_numeric_corner_stream_7
                  li           s3, 0x0
                  li           a1, 0x80000000
                  li           tp, 0xffffffff
                  li           s10, 0xffffffff
                  li           t1, 0x7774d93e
                  li           a7, 0x0
                  li           s7, 0xffffffff
                  li           a4, 0x80000000
                  li           t2, 0xffffffff
                  auipc        a1, 636718
                  add          s8, s3, tp
                  add          a1, s8, t1
                  nop
                  nop
                  add          a1, s10, t1
                  nop
                  sub          t1, a4, s8
                  addi         s7, s8, 324
                  addi         s3, t2, 280
                  lui          s10, 250707
                  auipc        s3, 477679
                  add          s7, a1, t2
                  nop
                  addi         s8, a4, 938
                  lui          s8, 244082
                  add          s8, s3, a7
                  nop
                  nop
                  nop
                  add          s8, t2, s3
                  nop #end riscv_int_numeric_corner_stream_7
                  sltiu        a0, a1, 120
                  slt          zero, a1, t6
                  slli         gp, s5, 20
                  and          t0, s11, t4
                  sltu         s8, s3, sp
                  ori          s6, t0, 1584
                  ori          s6, s0, -926
                  andi         ra, s9, 1990
                  srl          s3, a0, a7
                  xor          tp, t4, s9
                  andi         t0, gp, 1074
                  srai         a2, tp, 12
                  sltu         s7, a4, t1
                  nop
                  nop
                  slli         t5, s0, 4
                  nop
                  or           zero, t2, s11
                  lui          t3, 214247
                  slli         s7, s1, 13
                  sltiu        s10, t4, -867
                  sll          a3, ra, t2
                  andi         a7, s4, 1017
                  sltu         t0, s3, s6
                  addi         t6, s6, 396
                  addi         t0, a7, 596
                  addi         t5, t3, -1375
                  slti         s4, t2, 1334
                  or           s5, tp, t4
                  sltu         ra, a3, s0
                  sltiu        t4, s3, -772
                  srli         a1, a6, 14
                  sltu         a0, s2, s3
                  lui          a4, 129912
                  srai         t0, s2, 18
                  andi         zero, s0, 105
                  srl          tp, t5, a2
                  slti         ra, s0, -61
                  xori         a1, t3, -664
                  ori          s7, a7, 661
                  nop
                  sub          s3, s6, s4
                  srai         ra, a0, 16
                  sltu         s7, s8, gp
                  lui          a5, 228229
                  addi         s11, t2, -1274
                  srl          s4, a7, t6
                  srl          s10, t2, s4
                  or           s3, a7, s8
                  xor          a0, t5, t5
                  sra          t6, s2, s5
                  sra          s6, s8, tp
                  addi         s3, t0, -894
                  auipc        t0, 149544
                  add          t1, zero, t3
                  nop
                  or           s11, s10, a2
                  slt          s10, s9, t4
                  xor          s7, t1, sp
                  srai         s6, t1, 30
                  lui          s5, 544023
                  srli         a4, a5, 21
                  sra          s7, s1, s8
                  sra          s6, a7, s7
                  sltiu        a1, t6, 998
                  xor          a3, t1, s10
                  add          s2, a2, s0
                  sltu         s11, s9, s2
                  nop
                  srl          t5, a3, s2
                  sub          t3, a5, s8
                  xori         t2, tp, -1973
                  ori          t2, t4, 920
                  andi         t1, s2, 140
                  lui          a3, 692588
                  sra          s10, s11, t0
                  auipc        t5, 680255
                  slli         s6, t3, 11
                  xor          t5, zero, a7
                  xor          gp, s0, s9
                  and          a6, t2, gp
                  ori          a4, tp, -21
                  or           s11, s3, gp
                  sltu         t5, s1, t3
                  srli         a4, a5, 12
                  nop
                  xori         gp, s7, 959
                  sltiu        t3, a0, -1972
                  srl          a2, a1, s1
                  slli         a1, sp, 26
                  auipc        t3, 14832
                  sltiu        a7, a3, 1287
                  sll          gp, t3, s10
                  slt          s7, t3, s9
                  slli         s8, a7, 17
                  sltu         s5, t1, t4
                  andi         a5, gp, 438
                  add          tp, s9, t6
                  sltiu        tp, a0, -418
                  sra          s4, s10, a0
                  ori          t4, sp, -1043
                  and          t5, a4, sp
                  and          s10, t1, t2
                  andi         a0, s6, 1301
                  slti         s11, a0, 1624
                  sra          s3, s2, s6
                  nop
                  and          t0, t1, t4
                  addi         s6, zero, 177
                  slli         t2, s11, 9
                  slti         t6, s7, -1699
                  or           s11, t2, a5
                  sltiu        s5, s11, -478
                  xori         a2, s8, 439
                  sll          s6, s9, gp
                  sltu         a4, s11, t6
                  auipc        t2, 686907
                  sll          a1, a3, a2
                  slt          ra, a4, s11
                  addi         a3, s10, 252
                  or           ra, t5, gp
                  sll          s7, a5, a0
                  or           s11, t4, ra
                  slt          s5, a3, gp
                  sll          s7, s5, a0
                  addi         a5, s0, -1016
                  slli         s3, a4, 17
                  slli         s7, a6, 24
                  or           s8, t5, zero
                  srl          t2, a7, a5
                  lui          s7, 421786
                  addi         a0, s7, -481
                  xor          a7, s10, s0
                  srl          t0, s7, s4
                  sub          gp, ra, s2
                  xori         t3, s10, -1320
                  slti         a6, a3, -269
                  lui          a5, 557072
                  sltiu        a6, t0, 167
                  slti         a7, t4, 1477
                  sub          ra, s11, tp
                  srai         t2, a7, 29
                  and          zero, a4, a4
                  slli         t0, s11, 14
                  slli         s3, t2, 26
                  nop
                  slt          s4, a7, a6
                  slli         tp, a2, 14
                  sra          a1, zero, s0
                  sltiu        t0, a3, -2032
                  sra          a1, t1, s2
                  slli         s4, s7, 15
                  addi         t1, t3, 290
                  slti         a4, a2, 43
                  sll          a2, gp, t3
                  sltu         s3, a6, a7
                  srli         t4, s0, 7
                  srl          s5, s3, t3
                  auipc        s5, 438980
                  lui          s2, 161051
                  addi         t0, a1, -283
                  andi         a7, s8, -918
                  nop
                  addi         gp, a7, -1555
                  auipc        t0, 571602
                  auipc        s11, 484179
                  slti         s4, t0, -335
                  sltiu        s10, sp, -698
                  and          a6, s3, a1
                  slti         s11, t3, 1309
                  add          a6, ra, s1
                  xor          a0, tp, s6
                  sll          t3, s10, ra
                  xor          a6, zero, gp
                  srai         t5, a6, 6
                  ori          tp, t2, 1000
                  andi         tp, s1, -577
                  lui          a6, 897081
                  sltu         tp, s5, a5
                  nop
                  or           s10, s11, s1
                  xori         t6, t0, 1637
                  srli         t0, t5, 9
                  lui          s4, 1007115
                  xori         a3, a6, 920
                  and          sp, gp, t4
                  auipc        s5, 826115
                  slti         a2, ra, 1478
                  srl          a4, a4, s4
                  sltiu        zero, a5, -1404
                  sra          tp, t3, s11
                  auipc        tp, 854106
                  srl          s4, t3, s7
                  lui          s6, 652490
                  sltu         a2, s0, a5
                  srai         t4, gp, 28
                  sll          s2, t1, s6
                  sltiu        s3, t6, -697
                  sll          a0, t6, s5
                  addi         zero, ra, -263
                  sub          a6, s7, s10
                  srl          t4, a7, t0
                  xori         t6, s5, -1566
                  slt          t3, s8, s7
                  nop
                  xori         a7, a6, 382
                  sltu         s5, t5, tp
                  slti         t6, a5, -1238
                  srl          t3, a4, a4
                  srai         s11, ra, 2
                  srai         gp, s0, 10
                  sltu         t3, t6, a1
                  andi         s4, a1, -576
                  and          t4, s6, t0
                  and          t3, s7, t5
                  sll          sp, s7, a2
                  srli         s10, s7, 9
                  sra          s2, gp, ra
                  lui          s2, 27144
                  slli         t6, s10, 10
                  sll          a6, a4, t5
                  srl          sp, a6, s10
                  srli         a0, t0, 28
                  srli         t5, s6, 13
                  srai         t4, s4, 30
                  andi         s6, a1, 2029
                  sltiu        a5, s6, 988
                  sltu         s5, s6, s4
                  add          s11, s2, s9
                  addi         s2, a6, -657
                  srai         gp, ra, 5
                  and          t0, a0, s1
                  srl          t4, a3, s10
                  lui          s6, 103158
                  and          t1, s3, gp
                  addi         s3, s0, -874
                  lui          a6, 251594
                  add          t3, tp, s4
                  nop
                  slli         s6, s7, 15
                  srli         t3, s6, 20
                  srl          gp, s10, gp
                  slti         t3, a6, -1120
                  sll          a1, a5, a2
                  andi         tp, s9, 1510
                  lui          s8, 258040
                  sltiu        t4, zero, -522
                  sltiu        sp, s4, -1024
                  sub          s6, zero, a2
                  or           s5, a0, ra
                  sltiu        t1, tp, 1216
                  and          a6, tp, a3
                  srl          s6, t1, s3
                  ori          zero, tp, 1678
                  srl          t1, s2, s11
                  add          s6, t5, s3
                  sltiu        t5, s0, 262
                  slt          a5, tp, ra
                  sltiu        gp, s6, 197
                  or           t2, t1, a6
                  ori          t6, s3, 1596
                  addi         s8, a4, 29
                  or           s6, a1, a5
                  sra          a1, s8, s1
                  sltiu        s5, a1, -1112
                  slli         s11, s0, 2
                  nop
                  add          a2, s4, s7
                  or           t0, s2, s9
                  andi         t6, a6, -475
                  nop
                  and          t1, t6, t0
                  srl          t4, s1, s7
                  slt          t5, t6, a5
                  srai         t0, tp, 25
                  or           a5, s9, s1
                  xor          s11, a4, s6
                  andi         s2, s7, 899
                  srl          s6, s0, zero
                  xor          s4, a4, s9
                  srli         s4, t2, 28
                  slt          a4, a2, s1
                  nop
                  lui          t6, 814133
                  add          t6, gp, a6
                  auipc        t0, 367848
                  nop
                  srai         gp, s7, 18
                  sra          a2, tp, ra
                  nop
                  addi         s2, s5, 462
                  sub          s6, s6, t5
                  sub          a5, a5, s9
                  srai         sp, a4, 6
                  sra          sp, t1, t4
                  nop
                  andi         t1, a3, -732
                  andi         s2, s7, 968
                  nop
                  add          zero, s3, s11
                  xor          s6, t4, s11
                  slti         t4, a3, 560
                  sub          t1, a4, a1
                  add          s4, a0, a2
                  andi         s5, s2, -1318
                  slli         ra, s3, 8
                  addi         s2, s2, -1513
                  andi         t0, s5, -1803
                  slli         a6, s3, 31
                  andi         s4, t0, -1169
                  addi         t3, a1, 1728
                  xor          s5, s10, s10
                  or           t3, t2, s9
                  srli         sp, t4, 17
                  slt          s11, s0, a5
                  srl          s8, s10, s5
                  sub          t2, s5, a1
                  sltiu        a5, s9, -119
                  ori          s8, t3, -96
                  add          a6, a5, s8
                  nop
                  xori         t2, a0, 1747
                  and          sp, s0, a0
                  sltiu        a7, s9, 330
                  addi         tp, a5, -1868
                  xor          s10, t2, s7
                  addi         tp, t1, -4
                  srli         t3, s10, 2
                  sltiu        a5, t4, 416
                  ori          t2, a2, -1570
                  addi         s10, a7, -421
                  slt          zero, s10, t1
                  sltu         s10, a0, t6
                  sltu         a4, t5, a4
                  xor          t0, t4, t6
                  lui          ra, 913496
                  slli         s5, a1, 24
                  sub          ra, a0, t2
                  slli         s7, t2, 10
                  sub          s5, s8, s8
                  andi         a5, s5, 1852
                  sra          s10, s2, s5
                  auipc        a0, 17270
                  slti         t0, s6, 1513
                  sltu         a5, a5, t4
                  slli         t1, t2, 14
                  xori         s7, s1, -512
                  xor          tp, t5, a0
                  sll          t2, a4, a4
                  xor          a3, s0, s4
                  add          a0, a6, s9
                  addi         a5, s8, -1696
                  add          s4, zero, s1
                  auipc        s3, 800459
                  xor          a1, a5, s10
                  srl          t2, s0, s9
                  slli         t0, a2, 16
                  nop
                  lui          s6, 844517
                  xori         s4, a3, 987
                  slt          s10, s3, s0
                  lui          a5, 981126
                  srai         s11, s5, 0
                  sub          s7, s1, t1
                  slt          a2, t0, a3
                  slti         t1, s2, 1966
                  sltiu        t1, a3, -1160
                  or           s3, t3, t2
                  slt          s7, s4, t1
                  lui          s6, 276330
                  nop
                  slli         t5, sp, 8
                  slt          t3, t0, s4
                  auipc        a2, 261025
                  slti         t3, t5, 843
                  slt          t5, t5, s6
                  sub          s4, t3, t4
                  srai         s3, tp, 22
                  add          a3, a3, s9
                  xor          a7, t6, t3
                  lui          a0, 802572
                  sltiu        s2, a3, 1014
                  srli         zero, a4, 26
                  xor          t2, a4, a0
                  srli         a0, sp, 18
                  nop
                  sltiu        s7, t0, -937
                  add          sp, s6, t3
                  sub          s7, s11, s8
                  srl          s11, a7, sp
                  sll          a4, a6, t6
                  ori          t6, t6, -1645
                  ori          a1, t2, -1655
                  andi         s2, a6, -1747
                  lui          a5, 840096
                  srl          a6, s11, s1
                  and          a7, s8, s9
                  nop
                  srl          s7, a6, t6
                  lui          a1, 780975
                  auipc        a4, 936303
                  or           t4, tp, a7
                  or           ra, s7, a0
                  slli         a6, s0, 10
                  andi         a2, s11, -1119
                  nop
                  slti         zero, a4, -1531
                  and          s7, a2, t1
                  addi         a5, s3, 1752
                  sub          t3, a0, a4
                  nop
                  nop
                  sltu         t4, t3, s0
                  andi         s5, s4, -1354
                  auipc        s5, 455110
                  andi         t6, s6, 147
                  nop
                  xor          s7, sp, s4
                  addi         s8, a0, 542
                  ori          tp, s8, 7
                  slti         s11, s7, -1502
                  slti         a6, t5, -831
                  srai         s5, tp, 25
                  slt          s11, a3, s10
                  srl          tp, t2, zero
                  srli         a6, s7, 17
                  add          s7, s6, a1
                  auipc        s7, 205327
                  xor          s2, a3, s8
                  srli         t0, a1, 15
                  and          a0, sp, tp
                  sltiu        gp, t5, 70
                  auipc        t0, 406410
                  sltu         t1, a2, s5
                  ori          s10, s0, -311
                  slti         a6, t6, -1995
                  sra          t1, t3, ra
                  srl          tp, ra, s8
                  sra          s7, tp, ra
                  slti         s2, sp, 648
                  andi         a4, s9, -999
                  lui          a3, 778081
                  sub          sp, s3, a1
                  xor          a1, s0, a0
                  addi         t6, s0, -1019
                  auipc        a0, 545870
                  sltiu        s8, a3, -1755
                  slli         zero, sp, 7
                  xor          t0, s3, s7
                  srl          s8, s10, t5
                  srl          s11, s8, a2
                  add          ra, s11, a4
                  or           t2, s7, t5
                  sltu         a5, ra, a5
                  add          s5, ra, ra
                  add          t3, s3, s11
                  sra          s11, s11, s1
                  sra          a3, tp, t1
                  sra          tp, s7, t0
                  auipc        a1, 687627
                  and          s10, a7, a7
                  and          t4, a6, s5
                  sll          t5, s8, s11
                  ori          a4, a2, 929
                  sll          tp, gp, s1
                  srli         t1, a3, 23
                  sll          ra, s11, t0
                  srl          a0, s9, a1
                  andi         a1, t3, 523
                  srli         sp, s1, 30
                  xori         s10, t5, 1785
                  sltu         s7, t5, a5
                  slt          t3, s4, zero
                  slt          zero, s0, s7
                  slti         t5, t5, -1622
                  add          s8, s10, t2
                  slli         t2, a5, 9
                  xor          a2, a1, s5
                  xori         a5, t0, 2003
                  sra          a1, s3, gp
                  xori         a1, zero, -1825
                  slt          a3, s0, s0
                  slli         s7, t1, 26
                  xori         s10, gp, -313
                  xor          t1, s9, ra
                  and          t4, a7, t0
                  slli         s10, s5, 11
                  add          a4, s0, s3
                  lui          s5, 466239
                  slt          s4, tp, s11
                  sltiu        a7, t5, -1629
                  xori         a6, s10, 1551
                  sll          s5, s0, t1
                  srli         s4, a3, 8
                  ori          s8, s2, 640
                  ori          s3, zero, -1257
                  slli         a1, s3, 28
                  slt          gp, a7, t6
                  srli         a5, tp, 31
                  lui          a0, 773019
                  addi         gp, t1, 622
                  sltiu        s10, s5, -1597
                  sra          a1, a5, t2
                  slti         t4, t4, 1968
                  sltiu        t3, t5, -386
                  and          s10, a5, t6
                  ori          zero, t4, -1130
                  slt          zero, s5, s11
                  sltiu        a1, s5, 11
                  srai         s4, a4, 17
                  or           s8, gp, s4
                  or           a2, gp, gp
                  sltu         gp, a0, a4
                  sll          a0, s8, t4
                  lui          ra, 672999
                  sub          t0, s5, a3
                  or           ra, zero, a1
                  ori          a4, t4, 1173
                  srli         tp, t2, 18
                  addi         a3, t1, -1193
                  slt          t5, s11, s7
                  lui          gp, 271535
                  lui          s10, 494670
                  xor          a1, tp, s2
                  sltiu        s2, a5, -951
                  sltiu        tp, t1, -2002
                  lui          t3, 876110
                  sltu         s6, a1, t1
                  xori         s5, a0, -1348
                  ori          t4, s11, 338
                  sltiu        a5, s7, 1720
                  slti         t4, t1, 1168
                  add          a0, gp, a5
                  add          s4, a6, t3
                  slli         t0, zero, 22
                  sub          t1, a6, s0
                  addi         a3, a2, -1376
                  sltiu        ra, s3, 1249
                  srli         s10, t6, 2
                  slt          t5, t1, t2
                  andi         a0, s7, 715
                  srai         t3, s1, 15
                  add          t6, a7, t1
                  or           a1, t6, a7
                  sltu         t5, gp, s1
                  srl          s2, s6, a6
                  lui          t2, 1004536
                  slti         t5, zero, -1719
                  slt          t4, a6, sp
                  auipc        s5, 856185
                  add          a7, s8, s2
                  srai         s2, s4, 30
                  srli         a3, zero, 10
                  sltu         s2, t3, t1
                  sra          ra, tp, a7
                  sll          t0, s8, s7
                  lui          s7, 451385
                  and          gp, s6, s0
                  sltiu        t4, t1, 584
                  sltiu        s11, a4, -1482
                  and          s7, a0, t4
                  or           a6, a1, a7
                  andi         s6, zero, -1890
                  slt          s11, a1, s4
                  addi         tp, a3, 1950
                  sra          s8, s3, a6
                  xori         s2, a4, -379
                  sub          a4, s0, t3
                  auipc        a4, 916241
                  or           tp, t3, t1
                  srl          tp, t6, s3
                  srl          s2, gp, t6
                  addi         s8, s2, 1926
                  srli         s8, s0, 9
                  xor          s2, a4, t1
                  ori          s2, gp, -1467
                  xori         a5, a1, 1906
                  andi         a7, s0, -739
                  srl          s5, t0, t6
                  nop
                  sra          zero, s10, a0
                  add          zero, a7, gp
                  and          s2, t1, s9
                  or           a3, t3, t3
                  andi         s10, s10, -1816
                  srli         s8, gp, 29
                  addi         a7, t1, -1930
                  slt          tp, s7, t1
                  lui          tp, 239950
                  slt          t6, t0, a3
                  andi         t3, s0, -305
                  sll          s8, a7, s5
                  lui          a3, 340096
                  xori         t5, gp, 889
                  srai         t3, a4, 16
                  andi         gp, s0, -1105
                  li           ra, 0x9c8917e5 #start riscv_int_numeric_corner_stream_18
                  li           a7, 0x0
                  li           a5, 0x0
                  li           s7, 0x0
                  li           t4, 0x842b1abc
                  li           t5, 0xffffffff
                  li           t1, 0x80000000
                  li           t3, 0x60eb88b6
                  li           t0, 0x0
                  li           s10, 0xfe7cbf4c
                  addi         s7, t1, -658
                  auipc        t5, 48728
                  addi         t0, t5, -1285
                  add          a5, t1, t1
                  nop
                  lui          a5, 989794
                  nop
                  lui          ra, 953994
                  nop
                  sub          s7, t4, t4
                  add          t0, t1, s10
                  lui          t3, 482112
                  nop
                  sub          s7, t4, ra
                  nop
                  add          ra, a7, ra
                  addi         t4, a5, 502
                  lui          t1, 604720
                  nop
                  nop
                  nop
                  lui          s10, 942069
                  addi         a5, a7, 126
                  sub          s10, s7, t0 #end riscv_int_numeric_corner_stream_18
                  add          s4, a7, sp
                  nop
                  sltiu        a0, a3, 471
                  addi         ra, s7, -1182
                  srai         s10, sp, 0
                  andi         a5, s3, 1200
                  slti         s8, a7, 704
                  sra          a6, s0, t5
                  sltiu        s2, s1, 633
                  addi         a6, t6, 1611
                  auipc        ra, 759452
                  andi         sp, a2, 1937
                  srai         zero, a2, 14
                  and          s3, t1, t0
                  addi         zero, t1, 1704
                  xor          a5, s8, s4
                  auipc        tp, 620450
                  andi         t3, sp, -1820
                  srli         t0, s3, 18
                  xori         t6, t5, -387
                  and          t2, s0, t2
                  xor          a0, s9, t3
                  addi         t0, a4, 825
                  sra          a7, s9, s3
                  slti         a2, s8, 874
                  sra          s8, a3, s3
                  xori         a0, a7, 585
                  slli         s7, t0, 15
                  sltiu        t4, a0, -406
                  srli         a1, t2, 6
                  sll          tp, s0, s0
                  or           a2, s6, s5
                  sra          t3, gp, a3
                  srai         s5, s9, 22
                  addi         tp, s8, -1760
                  or           t4, a5, a2
                  nop
                  sll          tp, a6, s10
                  slti         a5, a7, 1406
                  srl          a7, a1, s2
                  andi         a0, a1, -147
                  srl          sp, s6, gp
                  sra          s11, s0, t3
                  srl          ra, s2, a7
                  srli         t4, t2, 25
                  add          a6, s9, s4
                  ori          t3, t3, -497
                  addi         t4, gp, 1279
                  addi         a2, a3, 222
                  sltiu        a0, a3, 1032
                  srai         s4, s11, 28
                  xor          gp, s0, t6
                  addi         a6, sp, -1502
                  lui          a4, 157223
                  sub          a5, s11, s6
                  sra          a2, s1, a1
                  xor          a6, sp, a1
                  or           a1, a5, a6
                  xori         s2, t5, -829
                  sltu         s11, a6, a1
                  nop
                  nop
                  or           tp, a4, t3
                  srli         a1, s6, 10
                  srli         t1, s5, 23
                  and          a7, t3, s8
                  srli         sp, zero, 17
                  ori          a1, s4, -1543
                  andi         s6, a4, 1378
                  xor          t3, s4, a3
                  xori         a7, t6, -1930
                  xori         s2, s4, -60
                  slt          s2, s2, t5
                  sltiu        s11, t3, 271
                  sltu         t6, s4, a1
                  and          t1, t3, s4
                  xori         s3, gp, 1076
                  srl          t0, s3, tp
                  sra          s2, s2, t0
                  xori         t1, zero, -1765
                  sltiu        t4, a7, 1610
                  srl          s3, s3, a2
                  slt          t4, gp, s9
                  lui          t0, 972897
                  sltiu        a0, ra, -1898
                  srl          a4, a0, t2
                  xor          a7, s1, t1
                  slti         tp, s1, 294
                  or           a1, a4, s5
                  slli         a1, s11, 8
                  sltiu        a4, tp, -546
                  auipc        zero, 379480
                  lui          gp, 9345
                  slli         zero, ra, 27
                  add          t1, s8, a7
                  sra          ra, a0, s4
                  sltu         s10, t5, t0
                  or           t3, t6, s8
                  sltiu        sp, s9, -2048
                  nop
                  slli         zero, t6, 0
                  auipc        s4, 143596
                  nop
                  sltiu        s6, t0, -69
                  addi         a1, zero, -579
                  or           a7, s8, s11
                  add          s8, s8, a1
                  srai         s2, zero, 30
                  or           gp, zero, t4
                  addi         t6, a2, 660
                  sra          s8, s9, tp
                  sltu         s4, a1, s3
                  auipc        t0, 1035452
                  sra          a0, ra, t3
                  sub          a4, a2, sp
                  slti         a3, s7, -1317
                  add          a5, s2, s4
                  auipc        a3, 914175
                  sll          gp, tp, s0
                  srl          ra, s10, a4
                  srai         ra, s9, 11
                  and          a5, t5, t4
                  slli         s3, s7, 6
                  add          a4, gp, a5
                  add          a2, t1, a2
                  sub          ra, a6, s1
                  sra          s7, s1, a4
                  sltu         t6, gp, a1
                  srai         s6, s3, 23
                  ori          a4, s6, 1964
                  andi         t4, s6, 103
                  add          s7, s9, t5
                  ori          s7, a3, -975
                  slti         gp, a2, -1391
                  slt          t2, s11, t4
                  slt          a0, s3, gp
                  sra          a7, s8, tp
                  sltiu        a5, s10, 1449
                  addi         a3, s10, -960
                  sra          zero, s11, s2
                  slt          gp, t2, t2
                  andi         t3, t6, 660
                  nop
                  sltu         s2, a2, t2
                  add          tp, a5, s0
                  and          s8, zero, s6
                  sltiu        zero, zero, -978
                  xor          s2, a2, s1
                  sltiu        s7, s0, -659
                  auipc        s6, 309272
                  sltu         s10, s11, s6
                  slt          ra, ra, s4
                  lui          t3, 461144
                  sll          s10, s4, s11
                  xor          t5, s6, t4
                  nop
                  auipc        s4, 73731
                  sltiu        s6, tp, 2042
                  sub          t4, a2, t4
                  sub          a6, t0, a2
                  xor          gp, ra, gp
                  slli         tp, s1, 23
                  slli         t4, s1, 27
                  xori         s5, tp, 1404
                  and          a7, zero, a4
                  ori          t3, t6, 957
                  auipc        a4, 199307
                  srl          s3, s3, t3
                  add          gp, s0, s10
                  or           t1, a6, s9
                  andi         t5, s2, -1497
                  srli         t2, s0, 21
                  or           s7, s5, t6
                  xori         t1, a4, 1643
                  slti         s8, s2, -1191
                  lui          s10, 717805
                  add          gp, tp, s3
                  sra          t6, s3, tp
                  ori          a7, s2, -1631
                  or           a7, s5, t4
                  andi         s7, s9, -1002
                  lui          s7, 768632
                  sltu         s11, a3, t3
                  nop
                  slt          t4, t0, s7
                  sub          s11, a2, a5
                  xori         a5, s8, -1202
                  xor          a3, tp, a3
                  ori          s11, sp, -1481
                  slli         t5, t5, 3
                  slt          a1, t5, a7
                  andi         s11, s3, -1440
                  sll          t4, s6, gp
                  addi         tp, tp, -1187
                  and          t1, gp, a3
                  xori         a5, a3, -1055
                  nop
                  xor          s4, s10, s11
                  and          t6, t1, t2
                  add          zero, a1, s1
                  ori          s8, s10, -1160
                  sll          s10, a1, s1
                  sra          zero, s8, a4
                  srai         s6, sp, 4
                  sll          s8, t0, t1
                  add          s4, t3, s10
                  or           zero, s6, zero
                  ori          t0, sp, -1415
                  sll          a4, t6, s1
                  and          s7, t0, a4
                  srai         t1, a6, 20
                  add          s5, a2, a1
                  slli         t3, a2, 28
                  nop
                  add          t5, s6, t6
                  nop
                  lui          s11, 365656
                  srai         a6, gp, 22
                  sub          s2, zero, a1
                  andi         gp, sp, -998
                  srl          s10, a4, t0
                  slli         s5, t2, 27
                  slti         s5, a2, 1512
                  andi         t6, zero, 1700
                  slti         a6, s2, -1140
                  sltu         zero, a4, a7
                  ori          a7, s7, 21
                  sra          a0, a6, s8
                  lui          s8, 435206
                  sra          sp, s2, s0
                  sub          s6, zero, s7
                  srli         t6, s7, 17
                  lui          s6, 913464
                  xor          t4, s5, zero
                  addi         gp, s4, 1201
                  and          a7, a3, t1
                  add          t1, a7, s11
                  sltiu        a2, tp, 1402
                  sra          s2, s6, a1
                  auipc        t5, 637114
                  add          a5, a6, s0
                  sltiu        tp, a0, -290
                  addi         s6, s10, -944
                  xori         gp, a2, -990
                  add          t4, s0, a3
                  slt          s10, t6, s5
                  srl          t5, a7, s4
                  or           s6, s0, s9
                  sub          s8, s2, a3
                  addi         t4, t4, -1822
                  sub          a7, s5, a4
                  xor          s5, s8, a4
                  or           sp, a7, s4
                  srl          a5, tp, t0
                  sub          s7, a4, a2
                  sltiu        a0, t4, -1159
                  sltiu        gp, s5, -1888
                  xor          a4, s7, s3
                  srli         s4, t4, 23
                  lui          s2, 627264
                  andi         s11, a1, 357
                  srli         a2, sp, 29
                  or           s8, t5, s9
                  sltiu        s8, s9, -838
                  sltu         a2, sp, s5
                  xor          t4, s11, a1
                  lui          s2, 1036145
                  sub          a4, s10, ra
                  slli         ra, t3, 13
                  slt          t0, t3, s0
                  auipc        zero, 28335
                  srli         sp, s8, 0
                  addi         s10, s5, 1323
                  add          s6, s10, a6
                  sll          s8, a3, s3
                  srli         t1, a3, 10
                  or           sp, gp, s0
                  addi         sp, s7, 529
                  sltu         s10, a3, s0
                  sra          a6, a0, s4
                  addi         a3, s4, 1918
                  sltiu        a4, t4, 1922
                  sltu         a7, a0, gp
                  nop
                  lui          s8, 599849
                  xor          ra, a1, t3
                  srl          a7, tp, a3
                  slt          t1, a3, s6
                  addi         zero, sp, -1366
                  sltiu        gp, sp, -1896
                  slt          zero, s4, a6
                  add          tp, s4, gp
                  sltiu        s11, a7, -328
                  lui          tp, 905976
                  or           t5, s8, a4
                  or           t3, s11, s0
                  xor          sp, s0, zero
                  add          gp, a4, s10
                  or           sp, s6, a1
                  lui          a5, 414217
                  andi         s8, t3, -448
                  sra          s2, t1, s4
                  lui          a1, 217127
                  andi         s4, t1, -1409
                  sltu         s10, s2, s6
                  slt          zero, s0, t6
                  sub          a0, a0, t5
                  and          s4, s0, a2
                  srai         gp, a0, 17
                  sub          t1, s11, a0
                  srai         s8, gp, 23
                  slli         a0, s9, 31
                  add          a4, s6, s10
                  slt          s8, a7, s10
                  srl          a0, a3, s2
                  sra          s7, s6, t4
                  nop
                  sltu         t0, a2, s5
                  add          t1, gp, s7
                  sltu         a2, tp, a1
                  sltu         s10, s1, a0
                  srl          s10, sp, t6
                  sll          a1, a5, s4
                  andi         a1, s8, -173
                  slli         t5, a7, 25
                  srai         sp, s5, 18
                  slti         a6, zero, 923
                  srli         zero, t5, 10
                  srai         a6, s11, 5
                  or           a2, a6, zero
                  sltiu        t2, s2, -2003
                  andi         t5, t6, 60
                  sltu         s3, zero, a7
                  ori          a0, t0, -1430
                  addi         ra, zero, -829
                  auipc        t3, 832793
                  nop
                  xor          s10, t5, s5
                  lui          t4, 123888
                  sltiu        t6, sp, -1656
                  sll          t3, t5, ra
                  sll          s4, a5, s0
                  sub          a2, s10, t2
                  srl          a5, zero, t1
                  or           zero, t2, tp
                  lui          s8, 56983
                  xor          sp, s4, s0
                  andi         zero, a5, 1599
                  slti         a0, tp, 1426
                  srli         t2, a7, 15
                  or           t2, t0, a4
                  ori          a4, s2, 1126
                  ori          s4, s0, -1007
                  slli         s6, ra, 5
                  sll          t1, t2, t5
                  andi         s5, gp, 1178
                  sub          a3, t6, a0
                  addi         s11, t6, 415
                  or           t0, a0, s4
                  srli         a5, a5, 30
                  xori         t0, t1, -815
                  slt          t1, s1, a0
                  ori          tp, t5, -1825
                  sra          t5, s6, a5
                  and          a3, t4, s4
                  slti         t5, a5, 623
                  sltiu        zero, t3, 1510
                  srl          a5, s0, a7
                  xori         a7, s7, 1472
                  xor          a2, t4, zero
                  add          t4, a4, t6
                  slt          t0, a6, a1
                  and          t6, s9, a4
                  add          s3, s1, gp
                  ori          t0, t6, -1863
                  srli         ra, s2, 18
                  and          s5, s6, s4
                  sltu         t6, s0, s2
                  and          ra, tp, a6
                  sra          a3, s11, a2
                  srl          s8, t6, a3
                  or           t3, s11, tp
                  ori          a4, s0, -1837
                  ori          t0, sp, -1908
                  sra          a4, s9, t5
                  sltiu        a4, tp, 1287
                  nop
                  srai         t1, a4, 4
                  and          s6, s11, s8
                  sra          s7, s1, s1
                  srli         t1, s3, 8
                  ori          a3, s0, -378
                  srl          s2, a7, ra
                  or           s6, t2, a2
                  slt          s3, s9, s3
                  slt          zero, t3, a5
                  slti         tp, a7, 885
                  and          s7, a1, a7
                  add          a7, gp, ra
                  slli         s4, t3, 9
                  sll          s4, s3, a0
                  sub          t2, a2, a3
                  xori         gp, t3, -1934
                  sll          t3, t3, s11
                  addi         s5, t3, 1222
                  and          t5, s11, t1
                  xor          gp, gp, s0
                  xori         s7, a5, 1298
                  srl          s10, a2, t2
                  nop
                  slt          s6, a5, a0
                  and          t5, tp, a6
                  xori         t1, s0, -781
                  or           t1, sp, t1
                  sll          a4, t6, t0
                  or           gp, s8, a5
                  srl          a4, s9, s9
                  slti         t3, sp, -680
                  sub          s2, s9, a4
                  add          t0, t4, a3
                  sltiu        s5, s8, -650
                  sra          a6, t3, s1
                  addi         a7, ra, -737
                  lui          s3, 835212
                  lui          s2, 349780
                  slli         s6, a3, 29
                  and          a1, a4, s4
                  slt          sp, s5, t6
                  auipc        gp, 71723
                  lui          s7, 676740
                  addi         t2, gp, 1951
                  and          s3, zero, a0
                  slli         a4, t2, 22
                  andi         t1, a5, 1619
                  slt          a0, s0, t6
                  sltu         ra, zero, s7
                  srl          a2, ra, t6
                  slli         t6, s5, 22
                  add          a4, a3, t4
                  xori         a0, t2, 1266
                  andi         sp, s7, 1159
                  slti         t0, s11, 1381
                  lui          sp, 255434
                  srl          s5, a3, t1
                  addi         s8, s4, 1288
                  slt          a0, s2, a5
                  sltiu        a7, s2, 571
                  xori         tp, t0, -1019
                  srl          s2, t2, a3
                  ori          s7, t3, 1101
                  sll          a6, a5, t2
                  and          s3, a1, s9
                  xori         t4, t4, 1335
                  sra          t3, t3, t0
                  sll          zero, s6, a1
                  sltiu        t6, s7, 1083
                  sra          s3, a3, a7
                  or           a4, zero, s10
                  srai         t4, t2, 13
                  sltiu        s6, a0, -99
                  addi         t3, t4, -95
                  xori         zero, zero, 1667
                  addi         s11, t1, 1831
                  slli         s4, s11, 12
                  sub          s11, t5, s2
                  xori         t6, s10, 1503
                  andi         tp, t2, -269
                  add          a6, t4, s10
                  sll          t2, s2, sp
                  or           s2, tp, s5
                  slli         t3, t3, 18
                  srl          tp, gp, t6
                  srli         s10, zero, 3
                  ori          tp, s3, 925
                  addi         gp, t1, -1496
                  and          t3, a2, zero
                  addi         s11, s4, 1255
                  xor          ra, a0, a3
                  sub          t1, t3, gp
                  auipc        t2, 513027
                  add          s3, gp, t5
                  xori         t1, s5, -1975
                  srli         t5, t1, 21
                  sltiu        s4, s7, -750
                  srli         s4, s8, 23
                  srl          t6, s4, zero
                  addi         t4, a2, 1771
                  xor          a0, s9, t1
                  and          s4, a5, s4
                  slti         t6, a7, 1694
                  andi         zero, s3, -497
                  or           t2, s3, ra
                  andi         a1, a3, -626
                  addi         s7, s8, 50
                  nop
                  addi         s5, s2, 1242
                  srai         t6, tp, 10
                  and          a6, zero, t0
                  lui          sp, 409612
                  srl          a6, s11, t6
                  add          zero, s10, a3
                  sll          sp, s6, tp
                  auipc        t2, 813718
                  auipc        zero, 724741
                  sltu         t1, a0, tp
                  slt          t4, ra, t4
                  andi         a5, s2, -1804
                  srl          gp, s7, zero
                  srl          sp, sp, t3
                  nop
                  xor          gp, s11, t4
                  xori         s4, s9, 36
                  ori          s6, t0, -84
                  srai         a4, s7, 19
                  xor          t1, s0, s9
                  andi         t1, s2, 612
                  sub          t4, a6, gp
                  xor          s2, zero, s3
                  srai         sp, t0, 24
                  andi         s6, tp, 135
                  srai         s5, s4, 9
                  xori         a4, s4, -308
                  slli         a7, t1, 7
                  sra          t3, t6, a5
                  andi         a6, a1, 1115
                  slti         s8, a3, 1289
                  slti         zero, s5, 1645
                  sll          a6, s0, a4
                  andi         a2, t1, 78
                  srl          sp, sp, t3
                  sub          a4, s6, t2
                  add          zero, a6, s7
                  or           a0, a4, a4
                  xori         s3, s2, 2003
                  addi         t6, s4, 1264
                  srli         a0, s9, 18
                  auipc        t5, 791386
                  xori         a4, s2, 1210
                  sra          gp, s1, t3
                  sub          gp, s8, s2
                  sll          a2, s5, s6
                  sltiu        sp, t2, -729
                  srli         gp, s1, 13
                  lui          a4, 892005
                  sll          a2, gp, s10
                  ori          t4, a7, 362
                  lui          sp, 862142
                  srl          ra, s9, s5
                  xor          a6, s0, s7
                  sll          t6, t5, s3
                  srai         s7, s2, 21
                  sltu         s8, zero, t0
                  ori          a4, t2, -1367
                  slt          a7, a6, gp
                  addi         s4, ra, -1223
                  sltu         a1, s0, s10
                  andi         t3, gp, -917
                  sltu         sp, s6, s3
                  or           zero, a1, s2
                  sltu         s6, t3, a6
                  slli         s7, a5, 27
                  sra          a5, s5, s6
                  nop
                  sub          s11, s1, s11
                  xor          a7, a5, a4
                  sra          s10, sp, t6
                  addi         a0, a4, -1891
                  srl          t3, t0, a5
                  srl          s10, s10, s0
                  sub          t4, tp, a4
                  and          a1, a4, a5
                  slt          s2, t5, a5
                  sltu         a1, t5, t2
                  ori          s11, a6, -1996
                  slli         s11, s11, 13
                  srai         a0, t3, 12
                  addi         a7, a4, -916
                  ori          tp, a3, -1665
                  addi         t1, a3, -1411
                  srl          a3, a4, a7
                  andi         tp, t1, -1814
                  auipc        t6, 773598
                  or           s11, a0, s0
                  sra          a6, t0, a0
                  slt          s7, t1, s8
                  li           s2, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           a6, 0xe1340d3
                  li           sp, 0x0
                  li           s4, 0x300b1139
                  li           s6, 0x80000000
                  li           s5, 0xffffffff
                  li           a7, 0x80000000
                  li           s8, 0x0
                  li           t4, 0x0
                  li           a3, 0x0
                  add          a7, a6, s5
                  auipc        a7, 603584
                  nop
                  lui          a3, 21716
                  addi         s2, a6, 850
                  nop
                  sub          t4, s6, s6
                  auipc        s8, 800719
                  nop
                  lui          a7, 1043527
                  add          s6, s4, s8
                  nop
                  auipc        a3, 629360
                  add          s5, t4, a6
                  auipc        s2, 613801
                  nop
                  lui          s8, 282804 #end riscv_int_numeric_corner_stream_3
                  sltiu        a4, s3, -1539
                  sltiu        t2, t4, -1940
                  sra          s5, t5, a0
                  nop
                  and          sp, s9, a7
                  slti         t6, a5, -849
                  slti         s8, s1, -1184
                  sub          a7, s2, t1
                  ori          a1, t1, 371
                  slt          t5, s11, a0
                  slti         s4, t6, -1409
                  nop
                  auipc        gp, 870445
                  add          a7, s8, t6
                  nop
                  or           t2, t1, s11
                  srli         a1, a0, 20
                  srl          tp, s7, a6
                  sub          s7, zero, s11
                  ori          s2, s0, 1725
                  sltu         a5, s8, a2
                  slt          s10, a1, a4
                  sll          s2, a2, s6
                  slti         s3, tp, 703
                  slti         t5, a7, 786
                  xori         t6, s11, -1001
                  andi         a1, s10, 1695
                  srli         s4, t0, 23
                  sra          t1, a0, gp
                  ori          s6, s3, -748
                  addi         s11, a7, -1696
                  sra          t2, tp, t1
                  srai         ra, t6, 28
                  sra          s4, tp, a3
                  and          t2, t2, s7
                  sltiu        t6, s9, 1456
                  slt          s3, s4, s8
                  sub          a4, s7, a7
                  addi         s6, t3, 1194
                  srl          sp, s8, a5
                  sltu         s10, s10, s6
                  slti         sp, s9, 1998
                  sltu         sp, t5, s6
                  xor          gp, a7, s5
                  sltiu        gp, ra, -1836
                  srl          tp, s8, s9
                  srli         a7, t4, 11
                  addi         a2, s11, -720
                  nop
                  srai         zero, zero, 6
                  sltu         t3, t6, t2
                  lui          sp, 483395
                  sltiu        s3, a6, 2039
                  xori         ra, a2, -1858
                  srai         a3, s4, 24
                  addi         a6, s4, 1250
                  andi         s5, tp, 1670
                  slli         a3, t1, 13
                  srli         a4, t4, 22
                  xor          t6, s0, a2
                  srl          a7, s8, s7
                  lui          t4, 442676
                  slti         zero, s4, 1700
                  srl          t1, a6, s0
                  slt          s8, a0, a4
                  xori         s2, s4, 1910
                  sll          gp, t5, a0
                  auipc        t3, 912522
                  slt          a7, s6, t6
                  slli         a3, s1, 28
                  srai         s6, a7, 15
                  or           t6, s2, t3
                  or           t5, a7, s2
                  lui          s7, 348275
                  slli         s3, s11, 11
                  lui          zero, 700770
                  add          a2, t2, s5
                  addi         t3, s2, -6
                  sra          s10, s11, s1
                  srli         t6, s7, 29
                  slt          t2, zero, s7
                  slti         s10, s6, -694
                  slt          t4, tp, a7
                  sra          t0, s0, gp
                  andi         s8, a5, 2014
                  sltiu        a4, a7, -1500
                  lui          s8, 319090
                  and          s3, a5, gp
                  add          s3, gp, a6
                  xori         t1, t2, -923
                  sra          t3, t6, t0
                  sltiu        a0, gp, 1491
                  lui          s5, 221543
                  xor          s5, t1, a1
                  andi         t2, a3, -1997
                  xori         a4, t3, -1233
                  srai         s2, zero, 12
                  add          t4, t4, s11
                  auipc        t0, 831053
                  sra          s8, a6, a3
                  add          t6, t4, a1
                  andi         t5, t6, -1578
                  auipc        sp, 94721
                  srai         t0, a5, 20
                  sltu         gp, t2, s4
                  and          zero, t3, s9
                  xori         s2, t5, -801
                  slli         s10, s7, 15
                  auipc        t0, 722370
                  xori         s7, t4, -702
                  sltiu        s8, s9, -707
                  or           t0, a3, a5
                  sub          s8, zero, gp
                  sll          s5, s5, t3
                  lui          s6, 477062
                  slt          t1, ra, zero
                  addi         t2, s5, 93
                  ori          t4, s6, -1422
                  sub          s3, s9, s1
                  add          ra, a5, s11
                  sll          tp, a1, t4
                  slt          s2, gp, sp
                  slt          a5, a6, t6
                  slti         a5, s2, 142
                  slt          gp, a3, t3
                  auipc        a6, 371714
                  xor          s5, a4, zero
                  and          s5, s4, s11
                  xori         s10, t5, -1915
                  add          a7, s2, s5
                  sltu         ra, s4, t4
                  sra          s8, a3, t4
                  sltiu        a3, tp, -1713
                  addi         a6, a4, -205
                  slti         s3, tp, -391
                  nop
                  xori         a4, a7, -1303
                  and          sp, s9, a5
                  sra          zero, a2, a0
                  srli         a5, s11, 6
                  sub          t5, s4, a3
                  xori         zero, s7, 559
                  slli         s10, s10, 10
                  add          a7, a6, gp
                  nop
                  andi         a3, s10, 260
                  sltu         a0, s1, t3
                  sll          a2, a7, t5
                  auipc        gp, 479857
                  sra          s8, sp, zero
                  ori          s4, s5, -124
                  andi         ra, a0, -1594
                  sub          a3, gp, t1
                  xori         a6, s9, 1946
                  nop
                  slti         t5, a1, -952
                  xor          a4, s7, s8
                  slt          a5, t6, zero
                  slli         a0, s0, 19
                  lui          a7, 777523
                  sra          t6, s1, s1
                  and          s8, s8, t1
                  sra          s11, s1, a3
                  sub          zero, t4, s4
                  xor          sp, zero, ra
                  slti         s10, a4, 2016
                  slli         gp, s7, 0
                  sltiu        s10, s3, 224
                  nop
                  sltu         s7, a2, t2
                  add          a3, s1, s8
                  srai         s7, a4, 27
                  srai         a5, s10, 13
                  xor          s7, gp, s1
                  auipc        t6, 149229
                  lui          a5, 76758
                  sltiu        s3, a0, 1169
                  nop
                  nop
                  xor          a1, a4, s11
                  sra          sp, s2, s3
                  slti         s11, t0, -541
                  srl          s11, a6, sp
                  andi         a0, s1, 318
                  srl          t2, t0, a0
                  xori         a0, s7, -587
                  addi         t4, a5, -453
                  and          s6, a3, s11
                  sub          t4, s10, a1
                  sll          a3, s1, a0
                  auipc        a6, 179619
                  xor          s4, s3, t6
                  sra          tp, a2, s5
                  sub          t4, s9, zero
                  andi         t4, s0, 1658
                  sltu         t1, a3, a3
                  auipc        a5, 35037
                  ori          t6, s5, -1165
                  or           a1, t5, a4
                  sltiu        s4, s3, 917
                  srl          t4, s8, s10
                  slt          s5, zero, t6
                  sub          s10, s0, t6
                  ori          s7, t6, 339
                  slt          gp, gp, s0
                  and          a6, s4, s1
                  auipc        t0, 415831
                  ori          a7, s5, -1910
                  andi         t3, a5, -458
                  srl          a4, a3, a0
                  sub          t0, ra, t4
                  sltu         t5, gp, s6
                  slt          a3, a4, s9
                  slti         a0, tp, -480
                  auipc        t5, 649773
                  or           s10, a6, a4
                  sltu         t1, s6, s0
                  srai         t5, s4, 11
                  srli         t6, gp, 15
                  and          t2, t6, t5
                  sub          s2, t6, s7
                  srl          s10, a1, s5
                  sub          s3, s1, a3
                  xori         s8, a3, 709
                  addi         s4, s3, -1724
                  nop
                  auipc        t2, 275369
                  slli         a7, tp, 21
                  sll          s6, s9, t0
                  slt          gp, a0, a0
                  sll          a1, a1, s2
                  slli         sp, s1, 25
                  sltiu        a2, s2, 108
                  nop
                  slt          s6, a3, a7
                  or           a1, t5, a2
                  sra          t2, a1, s11
                  slli         t6, a6, 14
                  andi         a0, a0, 1873
                  andi         a3, t1, 537
                  sltiu        tp, s3, -1906
                  add          tp, s10, a1
                  or           a1, t3, a6
                  sltu         s10, t5, s0
                  nop
                  slt          t3, s0, t1
                  sra          t4, a1, t5
                  sltiu        s11, s3, -139
                  and          a4, s8, a3
                  xor          gp, s1, a5
                  ori          a1, t5, 1773
                  slti         s3, t3, -537
                  addi         a0, s6, -293
                  sll          a1, t0, t6
                  nop
                  sra          t4, a0, ra
                  xori         a6, s2, 1508
                  slti         a2, s9, 674
                  auipc        a3, 84667
                  srli         t0, a1, 3
                  srai         a6, s4, 14
                  sll          tp, tp, t1
                  addi         s7, a2, -1965
                  sra          a6, gp, a4
                  andi         s8, a4, 771
                  add          a0, s5, s11
                  srl          a5, s5, a2
                  sltiu        s5, s8, 1633
                  xor          gp, s6, s10
                  andi         zero, ra, 1809
                  srli         s4, s2, 13
                  lui          s7, 1004293
                  and          s8, tp, t4
                  sub          a4, ra, s10
                  auipc        tp, 709180
                  slli         sp, a0, 10
                  slli         sp, t4, 5
                  slti         s3, zero, 579
                  or           zero, a6, s5
                  or           t3, ra, a5
                  sub          ra, s8, s0
                  srli         s11, t3, 21
                  sub          s8, s7, t3
                  nop
                  slt          a5, t2, t4
                  sltu         s11, a0, s8
                  andi         t4, t2, 13
                  slt          s11, a0, s4
                  or           a6, t1, s0
                  nop
                  and          s8, s8, s0
                  auipc        a0, 1029529
                  andi         tp, gp, -5
                  sltu         s5, t1, s1
                  lui          s7, 13376
                  sub          gp, t2, a5
                  lui          s7, 52382
                  or           s5, t4, gp
                  sub          s10, t2, tp
                  xor          a2, s4, t1
                  xor          a7, a1, s6
                  srl          a2, s2, a5
                  andi         zero, s4, 928
                  add          a3, t5, sp
                  addi         t4, s4, -422
                  sll          a3, tp, t0
                  lui          a2, 908481
                  slt          s4, t1, ra
                  nop
                  and          tp, s9, s4
                  addi         t1, t0, 1784
                  slli         zero, s2, 5
                  add          t3, s10, ra
                  nop
                  xor          s5, s8, a2
                  slti         zero, t5, 61
                  lui          a4, 836564
                  sll          t3, s3, a5
                  auipc        a4, 838853
                  and          t3, a2, a7
                  slt          s7, t0, s4
                  addi         zero, tp, -1570
                  sll          a0, t1, a4
                  lui          a7, 980511
                  srli         s8, gp, 31
                  ori          t1, a3, -532
                  auipc        a7, 1003660
                  lui          t6, 702789
                  sra          s11, s10, t4
                  xori         t1, a7, -1930
                  or           ra, a2, a4
                  sra          a5, zero, a0
                  srl          s2, t5, s6
                  slt          a7, s8, a4
                  srl          a4, s3, s9
                  addi         a5, a5, -264
                  xor          zero, a0, s11
                  nop
                  lui          a6, 644810
                  srli         t1, a2, 11
                  xori         t3, s8, -510
                  nop
                  and          s10, s11, sp
                  or           s5, zero, t2
                  ori          a6, s11, 152
                  auipc        a3, 77776
                  auipc        s11, 920521
                  addi         s7, s1, -444
                  add          t3, a1, sp
                  slt          a4, s7, s9
                  addi         a1, a1, -1546
                  andi         a0, s6, 1649
                  add          s11, t3, t5
                  lui          t6, 400331
                  srl          a4, s0, t1
                  srl          a4, t6, a3
                  nop
                  sltiu        ra, s2, 267
                  sll          a2, s7, t1
                  sltiu        t5, a5, 1761
                  sra          ra, a6, t0
                  or           s7, s8, tp
                  slti         t4, a4, 1849
                  srli         tp, t3, 19
                  ori          zero, s5, 1414
                  lui          s3, 672917
                  slli         t5, t4, 4
                  auipc        a0, 1006088
                  lui          s8, 1041967
                  or           a2, s2, zero
                  srai         a7, ra, 2
                  sll          t5, t2, s3
                  xor          s7, s0, a0
                  srl          s3, zero, a0
                  slt          a7, s2, s4
                  xor          s5, s3, s0
                  srli         s11, zero, 13
                  slt          tp, s11, t0
                  auipc        t3, 435895
                  and          t2, s7, t6
                  or           a3, s9, sp
                  sltiu        gp, s11, -326
                  slt          a4, s9, s6
                  sll          t5, a5, t6
                  xori         s7, s11, -492
                  srai         s11, t2, 19
                  sltu         zero, t2, s9
                  slt          a1, a3, a3
                  slli         s8, a2, 8
                  sll          a1, s11, sp
                  slt          a0, s1, s5
                  andi         s6, s5, -543
                  lui          a0, 273723
                  sltiu        t2, zero, 497
                  auipc        s6, 570704
                  slt          s2, a2, s4
                  slti         gp, s7, 631
                  sll          t0, s7, s3
                  xor          t5, t4, s1
                  sra          a3, s7, t5
                  slti         s2, ra, -1062
                  srli         ra, t1, 2
                  srli         s6, s1, 20
                  srli         s3, sp, 0
                  add          a4, tp, a6
                  sll          t5, t3, zero
                  and          a1, a5, a2
                  sra          t1, s0, s11
                  xor          sp, t6, a2
                  srli         a1, s0, 31
                  slti         s11, a1, 475
                  srli         a1, t0, 18
                  lui          s6, 561220
                  srl          s2, a2, t5
                  lui          ra, 989463
                  sltu         a0, zero, t2
                  ori          sp, s7, -510
                  srli         a4, s0, 6
                  xori         s6, a4, 995
                  sltiu        s3, s7, -244
                  or           s4, t2, s0
                  srli         t6, a2, 16
                  xor          s5, zero, s2
                  ori          zero, s11, -1120
                  srl          tp, s0, s7
                  sra          s7, s6, s3
                  li           t2, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           gp, 0x0
                  li           a4, 0x5ef342f7
                  li           tp, 0x80000000
                  li           s7, 0x80000000
                  li           s10, 0x0
                  li           t4, 0x19a54503
                  li           t0, 0x138e19a2
                  li           s8, 0x0
                  li           t5, 0x80000000
                  nop
                  sub          t4, t4, s8
                  add          s10, gp, a4
                  auipc        t0, 1022747
                  nop
                  addi         s8, tp, -1497
                  add          t4, gp, gp
                  auipc        gp, 338626
                  sub          a4, s8, gp
                  nop
                  nop
                  addi         t4, t0, -1317
                  nop
                  lui          s10, 722739
                  lui          gp, 1003256
                  nop #end riscv_int_numeric_corner_stream_15
                  xor          a6, gp, s11
                  srli         a1, s6, 23
                  sub          t1, s11, t0
                  srai         t6, a3, 23
                  lui          t5, 3874
                  sltiu        t4, a4, -843
                  slli         a5, t5, 15
                  srai         t3, s1, 22
                  sltu         s10, a6, s8
                  srl          s10, s1, a1
                  add          a3, t1, s6
                  slt          t0, s5, zero
                  xor          t0, t2, t4
                  and          s2, s5, t0
                  and          s7, s1, t4
                  xori         zero, a5, -892
                  sub          t4, s8, a1
                  lui          sp, 433141
                  auipc        s3, 263314
                  lui          a2, 911417
                  srli         zero, a1, 9
                  addi         ra, t0, -148
                  xor          a7, a2, zero
                  sll          s8, s6, t3
                  or           t4, s10, t2
                  sltiu        a3, zero, -712
                  sltu         s10, s1, a3
                  slti         zero, a4, 1328
                  srli         a1, s6, 8
                  auipc        s11, 883049
                  andi         a7, t2, 1415
                  lui          a5, 601234
                  and          t5, a6, a2
                  ori          s11, t2, 1557
                  and          a7, a5, ra
                  slt          a6, a0, t6
                  sra          t6, a2, a4
                  lui          t0, 500089
                  srai         s3, a2, 27
                  srli         t2, s2, 17
                  addi         t3, s5, -976
                  lui          t0, 89224
                  sltiu        a3, s9, 74
                  andi         gp, s4, 1162
                  xori         a3, s11, 551
                  nop
                  sll          zero, t0, a3
                  xor          t2, a7, t4
                  andi         s11, s11, 1301
                  and          t5, a0, a1
                  add          s3, t1, t4
                  and          s2, t1, s11
                  slli         t4, s2, 1
                  xor          s11, s11, a5
                  xor          s2, s3, a4
                  andi         zero, s2, 1359
                  srli         t2, s10, 2
                  srli         a6, t1, 12
                  and          a7, t6, s2
                  xori         a5, tp, -222
                  srli         s6, a4, 25
                  ori          t4, s5, -641
                  sub          tp, s3, zero
                  slli         sp, t1, 31
                  sub          a6, t3, t4
                  sll          t1, a1, s3
                  srli         zero, sp, 10
                  srai         s8, s0, 5
                  and          t6, a4, tp
                  lui          a0, 73396
                  auipc        a6, 326906
                  nop
                  andi         t0, s6, 1978
                  sltiu        s4, a0, 1185
                  sltiu        t1, t4, 1600
                  srl          ra, s4, t4
                  xor          sp, s5, s9
                  lui          a4, 799533
                  slt          s6, s3, s2
                  sltiu        s7, a7, 862
                  or           a4, t3, s6
                  and          ra, t3, s4
                  sub          t2, t0, s4
                  srai         t2, zero, 12
                  srli         s11, t3, 12
                  slli         s4, a5, 19
                  lui          t3, 726648
                  sub          a5, tp, a3
                  andi         a0, a1, 1496
                  or           tp, s1, a1
                  andi         s4, s5, -1541
                  xor          a3, ra, a6
                  srli         t5, s0, 25
                  slti         a6, a1, -1812
                  sll          a5, t0, a6
                  srl          a6, s2, s2
                  addi         t3, a5, -927
                  nop
                  ori          ra, s4, -330
                  srai         a0, zero, 8
                  nop
                  sub          a2, gp, s0
                  srai         s3, t3, 29
                  sll          a5, s0, s9
                  add          t0, t2, s0
                  nop
                  srli         s8, s9, 15
                  or           t3, a4, s11
                  nop
                  slli         a6, a0, 18
                  lui          s5, 659768
                  slt          t1, s11, s10
                  ori          zero, a7, 1528
                  lui          s4, 712611
                  sub          s8, a1, t2
                  sltu         s7, s1, s9
                  andi         s5, zero, 17
                  or           a1, t4, a4
                  xori         a2, s7, 21
                  ori          a4, tp, 561
                  slt          s6, s10, s5
                  srli         s5, t4, 23
                  lui          a0, 317653
                  sltu         t3, s3, s11
                  slt          t1, a1, s4
                  srli         s3, a4, 11
                  lui          a3, 796269
                  slt          s11, t5, s1
                  slti         t6, tp, -1992
                  slli         s8, s2, 6
                  slti         a1, t0, -1528
                  auipc        s7, 803202
                  auipc        s2, 1009698
                  slt          a2, t2, s6
                  slti         t1, t3, 235
                  srai         a1, s4, 26
                  auipc        s4, 486174
                  slti         s3, ra, 2019
                  sra          a1, sp, s8
                  slti         a1, a6, 1782
                  slti         t6, s11, 1239
                  xori         s2, s0, -1289
                  and          s6, gp, s10
                  srli         t6, ra, 18
                  srl          s6, s6, s8
                  slli         a1, zero, 14
                  slti         sp, t3, 2013
                  ori          a2, t4, -575
                  slli         s10, a2, 20
                  sra          s4, ra, a6
                  sub          zero, s11, s6
                  and          s10, t5, tp
                  sub          tp, a5, a0
                  sra          t2, a4, s3
                  xori         tp, a0, -866
                  ori          s5, s0, 350
                  slli         s5, a3, 3
                  xori         t6, a2, 1108
                  ori          a6, s6, -453
                  sll          a2, a6, a7
                  auipc        t5, 167945
                  slli         t5, t2, 24
                  lui          a0, 993873
                  srl          s6, t4, s2
                  or           a5, a7, s8
                  sra          s5, s5, s5
                  sltiu        s10, s1, 1820
                  xor          tp, sp, t1
                  slli         s2, s10, 0
                  sub          t0, tp, s10
                  slti         zero, t2, -688
                  sltiu        a0, a2, 1517
                  srli         s7, s2, 11
                  srl          s11, s11, s5
                  or           gp, a5, t4
                  sll          a7, s8, s1
                  sra          a4, a1, s9
                  sub          t2, s3, t5
                  sra          sp, a1, t1
                  or           s6, t6, tp
                  srl          s6, a5, s4
                  auipc        a2, 1038996
                  nop
                  slt          t4, tp, s0
                  nop
                  lui          t2, 741325
                  srli         a3, sp, 8
                  sltiu        a3, ra, -1903
                  sltu         a1, t3, s9
                  auipc        a5, 67212
                  srl          t2, gp, a5
                  sra          gp, s5, s10
                  xori         a4, s3, 12
                  or           a6, t0, t0
                  addi         gp, t6, 1692
                  slli         s8, t3, 13
                  sub          a4, s6, s10
                  add          s3, s7, t5
                  sltiu        t5, a0, 429
                  srai         s3, a1, 27
                  sltu         s7, s2, s7
                  slti         gp, s8, -462
                  sra          a4, a6, s3
                  srai         t5, s10, 13
                  auipc        a7, 437999
                  srli         a0, a4, 31
                  auipc        t5, 329651
                  slti         a2, a2, -1587
                  srli         t6, zero, 7
                  and          gp, tp, s3
                  li           tp, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           a5, 0xffffffff
                  li           t3, 0xffffffff
                  li           t6, 0xffffffff
                  li           t1, 0xf44ea42
                  li           a2, 0x80000000
                  li           s3, 0x80000000
                  li           a6, 0x80000000
                  li           gp, 0x0
                  li           t2, 0x542a627e
                  auipc        t1, 973646
                  auipc        t3, 258714
                  sub          t1, t1, a2
                  sub          a6, t6, t6
                  nop
                  lui          t6, 223814
                  sub          a2, a2, tp
                  add          tp, gp, t2
                  lui          tp, 542821
                  nop
                  auipc        t1, 600207
                  addi         tp, tp, 1844
                  addi         t2, t2, 1394
                  nop
                  addi         t1, a5, 774
                  sub          t3, t1, gp
                  addi         t2, tp, -1462
                  lui          t6, 846230
                  sub          a5, a2, s3
                  sub          t3, s3, t3
                  nop
                  addi         t6, a6, 1498
                  nop
                  sub          a2, t1, a2
                  add          t2, a6, t1
                  nop
                  nop
                  lui          a5, 651458
                  addi         a5, t1, 1388 #end riscv_int_numeric_corner_stream_11
                  slti         gp, t5, -1780
                  sub          s5, a6, t6
                  slti         s8, s4, -13
                  srai         a2, a0, 31
                  sra          a6, s3, a2
                  sltiu        a5, s9, 955
                  and          zero, ra, zero
                  add          a6, a1, t5
                  sub          s7, s6, s4
                  and          t5, sp, a3
                  add          s8, a5, s2
                  sltu         s3, s4, gp
                  srli         t4, s2, 9
                  add          s4, a4, a1
                  lui          a2, 666129
                  sltiu        a2, a7, 422
                  auipc        s3, 168899
                  srai         s8, tp, 12
                  srli         t6, a7, 29
                  sll          t1, s3, zero
                  lui          sp, 498605
                  slt          sp, s0, t5
                  ori          s8, t2, -1684
                  sra          t3, gp, t0
                  sra          s11, ra, t5
                  andi         t0, a6, -275
                  andi         a0, s9, -1448
                  sra          gp, t1, t3
                  slti         sp, s11, -1881
                  sra          a2, t3, t4
                  andi         a3, a4, 395
                  slt          sp, t0, ra
                  addi         t5, t4, 276
                  ori          tp, t6, 154
                  xori         s5, sp, -1852
                  srl          s8, t2, t5
                  xori         zero, s2, 1348
                  sll          a4, s7, tp
                  add          s8, a1, s1
                  sll          ra, t1, s10
                  addi         s8, s11, 1849
                  srai         t0, t6, 6
                  or           gp, t6, t2
                  slt          s3, s0, s7
                  sra          s6, s4, s11
                  sltu         t4, a6, ra
                  auipc        a2, 438171
                  auipc        a5, 301435
                  slli         s5, s11, 4
                  ori          sp, s0, 615
                  sra          s6, t0, t3
                  sra          t6, s0, t3
                  srl          a3, s9, a3
                  ori          s6, t0, -851
                  nop
                  andi         ra, a6, -736
                  xor          sp, t4, t2
                  xor          ra, a5, s2
                  or           t6, gp, t5
                  slt          s6, s6, s11
                  xori         a3, t3, -2043
                  xor          t5, a0, a6
                  srl          s7, s0, s5
                  add          a2, a4, a3
                  srl          t6, t3, s9
                  srli         a1, a4, 24
                  sra          t5, t6, t2
                  srai         a4, a5, 9
                  sll          s7, t6, t2
                  ori          sp, s8, -447
                  srai         a0, t2, 3
                  srai         s4, s8, 17
                  or           t2, a7, t2
                  add          tp, s3, ra
                  addi         s7, t4, 1088
                  auipc        t4, 1001798
                  andi         ra, a7, 282
                  add          t5, s11, a4
                  auipc        t0, 710389
                  or           a7, a2, a0
                  andi         s10, gp, 896
                  nop
                  sub          s7, s8, t4
                  srli         ra, t6, 22
                  sub          a3, a3, s3
                  add          s4, a4, s9
                  sltiu        s4, t0, 1100
                  slti         t2, t2, -422
                  and          s10, s8, s0
                  add          t3, gp, a2
                  slt          s11, tp, s3
                  or           a6, s7, s1
                  or           a7, t5, a7
                  slti         s3, s9, -370
                  and          a1, t0, t1
                  add          s11, zero, a3
                  and          gp, a2, ra
                  sll          a1, s11, a1
                  andi         a5, s1, 289
                  slt          a3, a7, s5
                  sltiu        ra, t1, 491
                  srl          a4, t6, t4
                  sll          s11, s6, ra
                  srl          s6, s10, a0
                  addi         t4, s3, 1971
                  and          s6, a0, t5
                  or           s4, t3, ra
                  or           s10, a0, s0
                  sra          a0, a3, a4
                  sra          a5, t3, s4
                  sltu         a7, zero, a4
                  addi         t4, s10, 1521
                  srli         t6, s8, 0
                  xor          sp, t4, s8
                  add          s4, s6, t2
                  auipc        s10, 744155
                  sub          s8, t1, t1
                  sub          zero, t3, a6
                  ori          a7, t5, -639
                  andi         s4, s2, -1666
                  slli         zero, a6, 18
                  srli         s11, s9, 13
                  ori          sp, s2, 44
                  xori         s4, a6, 952
                  auipc        sp, 58018
                  srl          a6, a4, t0
                  sltiu        a7, a3, -1443
                  srai         a4, t6, 15
                  sll          gp, tp, a6
                  add          a1, t2, t6
                  and          a6, s0, s5
                  slli         a6, s6, 31
                  slti         a6, sp, -374
                  slt          s6, sp, sp
                  srli         s3, a0, 23
                  or           t6, t3, a0
                  addi         s10, t1, -1923
                  srl          s6, t0, tp
                  srai         t6, a0, 6
                  ori          sp, ra, 488
                  slt          gp, a4, zero
                  add          a5, t1, a2
                  srli         s4, a1, 4
                  slt          s7, s9, ra
                  slti         ra, s8, -993
                  sra          tp, t6, s5
                  xor          gp, t5, t2
                  auipc        s2, 126976
                  slt          t6, t3, s0
                  lui          t3, 652201
                  auipc        sp, 788591
                  sltiu        s4, s10, -971
                  ori          a7, tp, -792
                  ori          t1, s0, 316
                  srl          zero, s8, sp
                  ori          tp, tp, -365
                  srli         s7, a1, 7
                  xor          t3, a3, t2
                  sra          s10, t4, s10
                  andi         a5, s0, -1306
                  and          a5, s6, s9
                  and          s11, a6, s3
                  slti         t3, s5, 596
                  xori         t5, s4, 1172
                  ori          t5, a1, 1816
                  sltiu        t5, s6, -1040
                  or           t3, sp, zero
                  slt          s11, s9, ra
                  nop
                  nop
                  sub          s8, a6, t0
                  srli         sp, t6, 7
                  nop
                  sltiu        a7, a5, 458
                  nop
                  sll          t6, a0, a0
                  addi         s3, t2, -1888
                  slli         s5, tp, 22
                  ori          a3, t3, -838
                  add          t4, t1, s1
                  slti         a2, t1, -723
                  addi         s3, gp, -2029
                  xori         s7, s10, -129
                  xori         gp, sp, 820
                  lui          s2, 877582
                  srl          s10, a5, s7
                  add          t5, s6, s10
                  addi         s10, a4, -1485
                  ori          s7, s2, -1407
                  srli         a1, a0, 4
                  slti         zero, a3, -1614
                  sll          t3, s9, t0
                  ori          s3, a6, -774
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           t0, 0x0
                  li           s8, 0xffffffff
                  li           ra, 0x0
                  li           s4, 0x80000000
                  li           s11, 0x80000000
                  li           s3, 0x0
                  li           t6, 0x691249c8
                  li           tp, 0xffffffff
                  li           t3, 0x0
                  add          s4, s11, t0
                  auipc        t3, 567138
                  auipc        t6, 525613
                  add          tp, ra, tp
                  lui          s2, 106112
                  sub          ra, ra, t6
                  addi         t6, s3, -705
                  add          s11, s3, s11
                  lui          t0, 720518
                  sub          t0, s2, tp
                  nop
                  lui          tp, 1029376
                  auipc        s3, 241010
                  auipc        s3, 68032
                  auipc        s11, 809260
                  add          s11, s3, s4
                  auipc        s11, 862126
                  addi         s4, s11, 1237
                  sub          t3, t0, s4
                  lui          s8, 685117
                  lui          tp, 447853
                  lui          s8, 910256
                  addi         t6, tp, -963
                  nop
                  addi         tp, s4, 793 #end riscv_int_numeric_corner_stream_10
                  add          a2, t5, a7
                  auipc        gp, 912561
                  or           sp, a3, s0
                  add          gp, s11, t2
                  sra          s7, t4, s4
                  sll          s10, t5, t4
                  sub          tp, t6, s4
                  sub          s4, a7, zero
                  sltu         t3, s3, a3
                  sll          s5, s8, tp
                  srl          a0, t5, a0
                  auipc        s3, 1038205
                  srl          s7, a6, gp
                  addi         s11, sp, 697
                  srai         t0, t3, 8
                  srli         a4, a7, 4
                  sltu         s7, a4, s6
                  xori         s10, ra, -1428
                  addi         t3, gp, -87
                  andi         a7, s5, 928
                  slli         a0, a2, 10
                  sltiu        s7, sp, 1829
                  andi         a7, s0, 1567
                  srl          t5, a6, t4
                  or           t2, tp, t2
                  xori         t5, t2, -204
                  ori          t1, t1, -1427
                  or           s8, s0, s5
                  auipc        a4, 991215
                  sltiu        a4, ra, -1008
                  and          s4, s9, s4
                  li           s7, 0xd878f219 #start riscv_int_numeric_corner_stream_14
                  li           a6, 0x80000000
                  li           a1, 0x3686fd8
                  li           a5, 0xffffffff
                  li           t3, 0xffffffff
                  li           a4, 0xa493ff42
                  li           t0, 0x0
                  li           s8, 0xb58bb258
                  li           ra, 0x80000000
                  li           s10, 0x0
                  nop
                  addi         a4, t0, -515
                  nop
                  sub          a4, a5, s10
                  auipc        a6, 123097
                  nop
                  sub          a6, s10, a4
                  nop
                  auipc        a1, 672249
                  auipc        s8, 139813
                  add          s8, a6, a4
                  add          a4, a1, s7
                  lui          s7, 408282
                  lui          s8, 560119
                  add          s10, a5, a4
                  auipc        a4, 1010965
                  nop
                  lui          a1, 913711
                  add          t3, a5, a1
                  sub          a6, s10, s10
                  nop
                  auipc        t0, 217724
                  auipc        s8, 617108
                  nop
                  addi         t3, a5, 1850
                  addi         a6, a5, 967
                  add          s10, ra, s7
                  add          a1, s8, a4 #end riscv_int_numeric_corner_stream_14
                  nop
                  sra          sp, s1, a3
                  nop
                  auipc        tp, 3688
                  or           s3, a2, t5
                  auipc        s5, 145954
                  add          t6, a5, s10
                  nop
                  sltiu        t5, a4, 703
                  add          ra, s10, a2
                  sltiu        s10, a7, 1988
                  xori         s7, s7, -294
                  sltu         a5, s8, s2
                  andi         s5, s9, -1097
                  auipc        a7, 79567
                  lui          s5, 643745
                  slti         a3, s0, 1695
                  sltiu        sp, tp, -936
                  auipc        s4, 284705
                  auipc        s11, 537026
                  auipc        s6, 201021
                  slt          s4, t5, tp
                  srl          a7, s9, s11
                  and          zero, tp, s5
                  sra          a7, a5, t1
                  slt          t2, s3, a0
                  nop
                  ori          ra, t0, -877
                  sltu         s11, a1, s2
                  srai         ra, ra, 5
                  slli         s3, t3, 16
                  slt          a5, s8, tp
                  or           s11, a7, ra
                  slt          t5, ra, a7
                  xor          a0, t4, t2
                  lui          s3, 767680
                  lui          s6, 157201
                  or           a7, a0, s2
                  auipc        a1, 636563
                  sltiu        a5, a4, -1260
                  auipc        t6, 480737
                  slti         tp, t5, 823
                  andi         ra, ra, -1567
                  xori         a2, t3, 583
                  add          a3, a2, zero
                  or           sp, s6, a2
                  sltiu        gp, t0, 16
                  andi         s2, s5, -214
                  addi         t2, t4, 1566
                  addi         t1, sp, 1559
                  ori          t5, a5, 1729
                  xor          s6, s5, gp
                  addi         a5, s7, 553
                  slli         s4, s11, 24
                  andi         t3, a2, 1545
                  and          t0, zero, s10
                  sltiu        a7, tp, 2026
                  nop
                  sub          t5, t1, s9
                  lui          s5, 845483
                  sra          s6, a5, s8
                  slli         ra, a0, 23
                  srli         s11, t0, 0
                  srai         a7, a0, 27
                  sra          s3, a1, sp
                  nop
                  sub          a1, t3, s8
                  and          s7, t0, s6
                  nop
                  sltiu        a6, a7, 1262
                  lui          a4, 612468
                  srli         a3, a0, 27
                  sra          a1, a7, s9
                  xor          ra, s10, a6
                  auipc        zero, 188299
                  slli         a1, a6, 14
                  sll          t5, ra, s11
                  lui          a3, 95946
                  auipc        ra, 1043355
                  slt          a5, s10, ra
                  srli         sp, s5, 3
                  add          ra, t0, t6
                  auipc        s2, 385506
                  xor          zero, zero, s9
                  add          a0, ra, t5
                  srai         a1, s7, 9
                  and          s2, t2, a6
                  srli         a4, t0, 11
                  lui          s5, 976265
                  xor          s8, s6, s6
                  or           s7, s5, a7
                  andi         t0, tp, -401
                  xor          a3, s7, gp
                  nop
                  sra          s4, a3, a0
                  srli         a5, t1, 15
                  ori          t3, tp, -1689
                  sltu         t0, a7, t4
                  add          s5, tp, t1
                  lui          a1, 875650
                  sltiu        a3, t6, 1213
                  srai         s4, a0, 4
                  slli         a5, s4, 28
                  addi         a5, s9, 589
                  nop
                  nop
                  sltiu        a2, t6, 1481
                  xori         a5, s8, 1349
                  sll          s6, a0, s7
                  xori         s8, sp, 273
                  andi         t2, zero, 1890
                  sra          a1, s0, a2
                  slt          a1, s9, t5
                  sltiu        t2, s1, 1551
                  slli         t4, s5, 7
                  addi         a5, s4, -1978
                  xori         a0, s3, -539
                  srl          tp, t3, t4
                  srl          s10, tp, t6
                  slt          t5, tp, s2
                  slli         s6, gp, 26
                  slt          t4, a5, t1
                  sub          s3, s11, a7
                  sltu         a6, a1, s0
                  srai         a5, a2, 13
                  sll          t6, t2, a1
                  lui          a1, 690016
                  ori          a5, a2, 804
                  sltu         zero, t2, s9
                  addi         a3, s9, 1914
                  sub          a1, t2, t6
                  xori         s2, s5, 24
                  sll          s8, s6, a6
                  slt          tp, t3, ra
                  srli         tp, t6, 13
                  sll          tp, t6, s8
                  or           t0, s7, s8
                  addi         s4, ra, -1104
                  addi         a0, s5, 647
                  srli         s3, s1, 14
                  srai         a5, s8, 24
                  sltu         a1, t3, s0
                  xori         a2, ra, -1576
                  ori          a5, t1, -1342
                  xori         t3, zero, 1303
                  slt          s11, a6, s9
                  auipc        s8, 73084
                  sra          zero, s2, ra
                  xori         a2, t1, 828
                  ori          s6, t2, 1883
                  sub          s4, a3, t5
                  xor          t1, t5, s11
                  srli         a3, t5, 25
                  sub          tp, s5, t2
                  xor          a6, s4, tp
                  slti         s10, t3, 55
                  sltu         s6, a5, t6
                  sltiu        s7, t1, -738
                  sltiu        tp, ra, 694
                  add          gp, s3, s0
                  srai         s11, t0, 1
                  ori          sp, t5, -3
                  slti         ra, s1, -380
                  sltu         t1, zero, t1
                  andi         s8, a0, -1422
                  lui          t0, 649910
                  xor          s6, t5, s7
                  sra          a7, a6, t5
                  sra          t1, t1, s7
                  nop
                  ori          s11, s11, 785
                  nop
                  sltiu        t6, s3, -1839
                  slti         t5, t0, -548
                  slt          t3, s2, s6
                  srli         t4, t0, 0
                  and          s3, s8, s4
                  and          a2, tp, zero
                  sra          s8, a5, s0
                  srli         a7, t4, 5
                  auipc        a6, 605725
                  add          ra, a7, s8
                  ori          s11, t2, 1020
                  addi         a0, gp, 1129
                  or           a6, s6, s6
                  ori          gp, ra, -1483
                  auipc        s2, 298641
                  nop
                  lui          a7, 447290
                  sra          zero, t1, s1
                  and          t6, t1, a3
                  sltiu        s10, t1, -195
                  slt          t4, s3, s4
                  sra          gp, a5, s7
                  lui          t2, 420633
                  xori         s7, s6, -1881
                  sub          s3, s3, gp
                  nop
                  xor          tp, s4, a7
                  addi         sp, t6, -2019
                  srli         t0, s0, 2
                  and          a0, ra, t0
                  or           tp, t4, tp
                  auipc        t6, 842851
                  andi         ra, s8, -160
                  xori         s2, s2, 1705
                  srli         t4, t5, 19
                  and          sp, a1, s9
                  srai         a4, s2, 21
                  slt          a6, t6, a1
                  slli         t3, a7, 25
                  add          zero, a7, zero
                  sra          sp, gp, s9
                  ori          a5, t2, 543
                  auipc        t6, 697375
                  sra          sp, tp, t5
                  or           a3, a6, s11
                  xor          t2, ra, ra
                  srli         s5, a4, 23
                  auipc        a4, 479585
                  sltu         a7, s5, s6
                  nop
                  sub          t6, gp, a3
                  xori         s7, sp, 1345
                  srai         tp, a5, 3
                  sltiu        t0, a3, 579
                  or           t3, t1, s3
                  slli         s4, s1, 13
                  sltu         a5, s3, a7
                  srli         a6, s10, 18
                  and          t6, s7, s9
                  or           a4, a7, a2
                  andi         a3, s4, 1095
                  lui          a6, 162299
                  nop
                  sub          t2, a7, t5
                  lui          a4, 431259
                  sra          t1, t1, s3
                  andi         s10, sp, -1231
                  sltu         s8, s6, t1
                  srli         a7, a5, 21
                  ori          t5, s4, 1922
                  slli         t6, s1, 23
                  srli         a0, s9, 7
                  srli         a3, a7, 31
                  xori         s11, ra, -968
                  nop
                  sltu         s8, s6, s4
                  sra          a7, ra, a4
                  auipc        zero, 1000265
                  slti         a1, s6, 989
                  add          ra, t5, s11
                  nop
                  slli         s11, s5, 22
                  sltiu        a5, sp, -330
                  slli         s4, zero, 3
                  sra          s8, t2, t1
                  xori         s6, tp, 1092
                  sltiu        s6, s11, -1036
                  add          a0, s2, s11
                  xori         t1, t3, -1706
                  or           ra, s4, t2
                  nop
                  ori          a2, t5, -1839
                  or           t1, ra, zero
                  sltu         s8, a7, s3
                  auipc        t0, 623065
                  srai         a6, t5, 27
                  and          a5, s2, s8
                  sub          t0, s9, a3
                  srli         a0, s2, 27
                  add          a5, s8, gp
                  or           sp, t4, t3
                  slt          zero, a7, gp
                  xori         a7, t1, 1914
                  auipc        a0, 686637
                  auipc        sp, 709687
                  sltiu        t4, sp, 542
                  sltu         a2, zero, sp
                  xor          s5, s0, a3
                  xori         s5, t1, -1716
                  sltiu        gp, sp, 1367
                  slli         a0, s5, 27
                  or           a6, a2, t0
                  slli         t2, s7, 9
                  srai         t5, zero, 30
                  or           a1, s7, s3
                  srl          t0, s10, a3
                  and          a5, s6, t3
                  slt          a2, gp, t1
                  sltu         a5, t1, t1
                  sltu         a1, s4, a5
                  srli         s11, a4, 11
                  sltiu        t1, a6, -1899
                  nop
                  lui          a2, 164648
                  sra          gp, t4, s6
                  add          a1, s4, s4
                  srli         gp, s0, 10
                  sra          a4, s1, s3
                  slli         a5, t4, 24
                  sll          sp, s8, t2
                  sll          s5, s0, s10
                  xor          s7, ra, a7
                  srl          zero, a4, a0
                  sltu         a0, tp, t3
                  sltu         t1, sp, zero
                  nop
                  srl          s4, t6, a2
                  auipc        ra, 234993
                  sltu         zero, gp, s4
                  nop
                  sub          t4, s4, t0
                  nop
                  auipc        s8, 408417
                  or           s11, a3, t1
                  nop
                  addi         a2, gp, -178
                  auipc        t1, 220645
                  and          ra, t6, a1
                  slt          ra, ra, t0
                  and          t5, a6, t5
                  andi         s10, s1, 905
                  srli         a6, s10, 21
                  xori         t4, s0, 1755
                  andi         sp, t2, 1142
                  xor          s7, s8, a4
                  srai         s2, tp, 4
                  and          a3, t1, s1
                  slli         gp, sp, 2
                  srai         sp, t5, 4
                  sub          zero, t0, s9
                  sub          t2, s8, t6
                  ori          t1, s2, -763
                  add          a0, a6, t4
                  add          s3, zero, t6
                  sra          sp, tp, t4
                  ori          s11, a4, -126
                  xori         s2, t5, -1805
                  auipc        s5, 546850
                  sll          zero, ra, t0
                  slt          a4, t3, zero
                  andi         sp, a2, 1813
                  nop
                  slti         gp, t3, -339
                  sra          s2, s2, a1
                  sltu         t0, a0, a1
                  sltiu        t6, t2, 138
                  addi         a4, s6, 1571
                  sltu         s4, gp, s7
                  slt          a3, s7, a5
                  ori          zero, a1, 642
                  srli         t4, s0, 23
                  xor          t2, a1, s8
                  srai         t0, s3, 20
                  lui          sp, 477166
                  srai         t0, sp, 22
                  lui          t2, 612978
                  andi         s8, t4, -212
                  addi         tp, s8, 2026
                  sltiu        a6, a0, 34
                  xor          s2, s5, a7
                  sra          a4, t0, s8
                  srai         s2, t3, 24
                  ori          s6, s9, -1124
                  nop
                  srai         t2, zero, 29
                  sltiu        gp, s7, 681
                  xor          a7, sp, a2
                  sll          s7, t1, t5
                  srl          t4, t2, t3
                  sltiu        gp, a6, 144
                  ori          s3, s9, -43
                  or           t2, a4, s9
                  slt          t3, zero, a1
                  slt          s2, a2, t2
                  ori          t3, a1, 1573
                  xori         sp, a5, -438
                  srai         tp, s6, 10
                  slti         t4, s11, -224
                  srli         sp, t6, 16
                  auipc        a2, 66323
                  sltu         a4, s6, zero
                  sltiu        zero, gp, 1979
                  xor          a3, zero, s7
                  sltiu        a5, s5, 1527
                  addi         s7, t1, 1594
                  andi         a2, s1, 555
                  xori         a0, s8, -50
                  srai         s6, s11, 13
                  srai         s10, t0, 29
                  auipc        s10, 509243
                  lui          a3, 497757
                  ori          a4, sp, -1148
                  add          t3, a3, s0
                  xor          a3, zero, a7
                  auipc        t6, 883174
                  sll          a2, a5, a7
                  or           s10, t3, t5
                  srl          t6, s11, t1
                  srl          t2, t0, t4
                  srl          a7, s7, s4
                  xor          s3, s10, sp
                  andi         s10, a1, 1376
                  sltiu        a6, s6, 998
                  srli         ra, t5, 27
                  srli         t2, a0, 7
                  auipc        a1, 91215
                  xori         s4, a0, 1461
                  sltu         t1, s5, t0
                  slt          a6, s6, t1
                  xor          sp, t4, gp
                  xor          a5, a3, ra
                  srai         t0, gp, 15
                  lui          t4, 670202
                  sltu         a2, s4, t2
                  xori         t0, t0, -545
                  slt          a0, a6, t5
                  lui          t6, 87403
                  and          t0, s8, s11
                  sra          t1, a5, a5
                  srai         s5, t3, 2
                  auipc        t6, 973926
                  slt          t0, s2, sp
                  nop
                  sltu         s6, s7, sp
                  nop
                  xor          s10, a6, ra
                  nop
                  xori         s8, gp, -1703
                  ori          zero, s5, -724
                  and          t0, t0, a0
                  xor          t6, s11, s7
                  or           s5, t6, a6
                  add          a2, s7, sp
                  sra          a1, s4, a0
                  and          t0, s1, s4
                  lui          s11, 610624
                  slt          s11, t5, gp
                  sltu         t4, s5, s0
                  ori          a7, ra, 612
                  xori         a0, t6, 1021
                  xori         a2, s0, 999
                  nop
                  add          zero, a6, t0
                  xori         s7, s7, 764
                  sltu         t0, a1, a3
                  sltu         s3, gp, tp
                  auipc        t2, 516712
                  sub          a1, a4, s1
                  or           sp, a7, a7
                  nop
                  or           s11, s10, t6
                  xori         a6, a3, -849
                  sll          gp, s5, a1
                  xori         a7, a5, 252
                  slli         s3, t0, 14
                  slti         s10, t3, 392
                  xori         t5, a0, -331
                  slt          a3, a5, s10
                  addi         a7, a3, -622
                  ori          zero, s3, 1698
                  xori         zero, a3, 840
                  andi         t0, t0, 1338
                  sll          a6, t3, s6
                  andi         s6, t2, 511
                  sltu         s5, a5, t3
                  sltiu        a1, s11, 1583
                  sub          s7, t0, a1
                  srai         t2, t5, 18
                  ori          a2, t0, -624
                  sltu         s3, s3, sp
                  addi         s11, s11, 280
                  xori         s7, t5, 919
                  slti         a1, gp, 1438
                  auipc        s6, 65142
                  ori          a7, t0, -1825
                  sll          s6, s10, a7
                  or           t1, a6, t0
                  xor          a0, a5, s11
                  srli         s3, s6, 4
                  addi         a0, a6, 900
                  auipc        s11, 141254
                  sll          a7, a3, s7
                  srl          ra, a0, a1
                  andi         s6, s2, 1895
                  srl          a7, t5, t5
                  add          sp, gp, s3
                  add          t3, sp, a7
                  and          s3, a7, ra
                  sra          t3, s2, a2
                  lui          t0, 423010
                  andi         t5, s5, 1127
                  and          t6, s4, sp
                  sll          s6, s10, t5
                  nop
                  sub          s4, a5, s4
                  sltu         t5, a2, s8
                  sub          ra, s5, s11
                  xori         ra, t2, -981
                  and          s10, gp, tp
                  add          a3, s5, a0
                  srl          s5, t5, t4
                  sra          t1, s11, ra
                  srl          t1, a1, t0
                  lui          a2, 896240
                  sltiu        ra, a7, -97
                  nop
                  andi         t6, s7, -1444
                  sltu         tp, t1, s7
                  auipc        s8, 770833
                  andi         s10, t6, 1638
                  sub          a7, t0, s7
                  and          a0, s1, zero
                  sra          a7, a6, s2
                  auipc        t3, 612044
                  andi         a0, a1, 1880
                  slti         s6, t6, -694
                  xori         a0, tp, 1302
                  sltu         t5, s6, s3
                  xori         ra, zero, 634
                  slt          s6, s11, s0
                  srai         s2, t5, 18
                  slli         a6, t1, 21
                  srli         s3, a5, 14
                  sra          zero, s0, s3
                  and          sp, a2, s1
                  add          t3, gp, ra
                  add          t5, a4, a7
                  xori         s3, s4, -1977
                  sltiu        a5, t0, -1444
                  addi         a6, t6, -652
                  addi         a6, s4, -2036
                  slti         s8, t6, 1057
                  slt          a0, s8, s4
                  slli         a0, tp, 28
                  addi         s5, s6, 1369
                  sll          s5, t5, ra
                  ori          t3, s3, 1674
                  srl          s11, t3, zero
                  srl          a1, s10, s9
                  sub          s7, s7, t5
                  or           a5, t3, t2
                  slti         t0, tp, 1148
                  ori          t5, t4, 1947
                  sra          t3, s2, a3
                  andi         a3, t3, -1793
                  srli         tp, tp, 13
                  andi         a5, a0, -887
                  or           ra, s9, t1
                  sub          t0, t5, s1
                  srli         t2, s3, 31
                  slt          s3, t6, t6
                  sra          t0, zero, s1
                  sltu         t3, t4, s1
                  xor          a6, t2, a0
                  srl          a7, a2, s8
                  sra          a0, a2, a6
                  sub          s4, a1, s10
                  andi         s7, gp, 1676
                  nop
                  slt          s11, s8, s8
                  nop
                  slli         s11, s0, 30
                  sltu         s2, t5, t1
                  auipc        a6, 418293
                  xori         t3, sp, 793
                  slli         a2, a1, 5
                  sltu         s10, a6, s8
                  nop
                  auipc        a3, 306920
                  addi         s6, a4, -1245
                  slti         s4, tp, 800
                  xori         t1, t0, 1564
                  or           a6, sp, t2
                  lui          s5, 817827
                  add          s8, s7, s8
                  or           a7, tp, s2
                  sltiu        a2, t5, 2045
                  sltu         s8, a0, a1
                  slli         s3, s9, 10
                  sltu         t5, s8, a0
                  sltu         t5, s0, s7
                  nop
                  or           s8, s4, t2
                  add          a3, t6, s3
                  ori          tp, s7, -447
                  slt          a2, a2, tp
                  auipc        s8, 710333
                  slt          s11, a1, s5
                  and          a7, s7, s2
                  sll          s7, s6, t3
                  nop
                  ori          a4, gp, -803
                  or           t3, ra, t6
                  ori          t4, a1, -1899
                  slti         sp, s6, 771
                  sub          zero, t0, s6
                  xori         t2, a7, 1630
                  auipc        t1, 859586
                  andi         s10, t3, 1399
                  sra          tp, tp, t3
                  sll          a2, s2, s8
                  xor          s6, a7, s3
                  sra          a7, s7, t2
                  slti         zero, a7, 313
                  sltu         a6, a5, a6
                  or           gp, s3, zero
                  slt          a2, t2, s9
                  srai         s5, s1, 1
                  auipc        t5, 1030842
                  sll          ra, t5, a5
                  lui          a7, 199496
                  or           s11, s7, gp
                  xori         t6, s9, 993
                  sltiu        s5, t6, -425
                  nop
                  addi         s2, tp, -564
                  srl          s6, a2, s11
                  xor          a3, a5, a0
                  nop
                  auipc        t3, 458697
                  srl          s8, s5, s10
                  nop
                  srai         t5, t2, 13
                  sub          s2, t1, a2
                  and          a3, t1, t3
                  andi         s7, tp, -144
                  sub          s6, a6, s2
                  add          a2, s10, ra
                  srl          a3, s10, s7
                  nop
                  add          a2, a4, t0
                  sll          gp, s0, s10
                  addi         a2, s11, 481
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           a7, 0xffffffff
                  li           a4, 0xffffffff
                  li           a0, 0x0
                  li           s3, 0xffffffff
                  li           a3, 0x0
                  li           ra, 0x8b1f12b4
                  li           s10, 0x80000000
                  li           t1, 0x80000000
                  li           s5, 0x80000000
                  add          t1, a0, tp
                  nop
                  auipc        tp, 685322
                  sub          a0, s10, tp
                  auipc        ra, 297517
                  add          a0, s10, a4
                  lui          s3, 301295
                  auipc        a0, 940047
                  nop
                  sub          a7, a4, s3
                  lui          a0, 3213
                  auipc        s5, 739795
                  auipc        a4, 57225
                  sub          ra, tp, ra
                  addi         a0, tp, -461
                  add          s3, s3, tp
                  auipc        tp, 630091
                  auipc        s3, 528038
                  lui          ra, 689174
                  add          s10, a7, s3
                  lui          a3, 397992
                  sub          t1, a3, s10
                  addi         t1, a0, -1485
                  sub          s10, a7, a3
                  sub          tp, a4, a0
                  lui          a0, 115862
                  add          a4, ra, a3
                  add          s3, s3, a0
                  sub          a4, s10, s10
                  add          s5, a4, a0 #end riscv_int_numeric_corner_stream_17
                  xor          s4, s10, s6
                  srai         s8, s10, 11
                  auipc        a2, 520081
                  sll          ra, t5, a2
                  xori         a4, a2, -80
                  sub          s2, s10, a3
                  addi         t1, a0, -730
                  xor          a1, s10, s10
                  auipc        a6, 592049
                  lui          t6, 858283
                  addi         t5, s4, -1396
                  sub          a5, a0, s1
                  xor          s6, tp, s3
                  lui          sp, 67878
                  sll          a0, gp, zero
                  add          gp, s11, a4
                  sll          a0, s11, s0
                  slli         s3, s9, 27
                  or           t1, a1, s0
                  sra          a1, s6, t3
                  srai         t6, t6, 4
                  and          a0, a0, t5
                  lui          gp, 154386
                  slti         tp, t2, -481
                  and          s2, gp, s0
                  or           s10, t2, s10
                  lui          s10, 549885
                  xori         sp, a2, 1258
                  xori         a5, a2, -1361
                  xor          a1, s10, ra
                  auipc        s2, 341387
                  andi         s11, s8, -112
                  sra          s11, t5, a4
                  sra          t0, t0, t6
                  sltu         gp, a5, s11
                  andi         s2, t0, 2019
                  and          a6, gp, s8
                  sltu         a1, a3, sp
                  srl          t6, t5, zero
                  auipc        t2, 703793
                  or           s7, s6, a3
                  sltu         a1, s3, s6
                  ori          zero, t2, -224
                  and          a4, t2, s6
                  sll          a5, sp, gp
                  lui          s11, 527794
                  slti         a0, s7, -117
                  ori          a7, t3, -50
                  sltu         tp, t6, tp
                  nop
                  slt          s8, a7, tp
                  lui          a7, 456168
                  xori         s2, a1, -2000
                  sltiu        a0, gp, -1072
                  nop
                  andi         a6, a7, -162
                  sra          a3, a6, t0
                  addi         a3, t3, -1129
                  and          s4, ra, s5
                  and          s11, tp, a5
                  sll          a3, s5, sp
                  li           s2, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           a7, 0xffffffff
                  li           s11, 0x80000000
                  li           t5, 0xffffffff
                  li           a2, 0xffffffff
                  li           a5, 0x0
                  li           t0, 0xffffffff
                  li           a1, 0xb3a01309
                  li           t2, 0x0
                  li           s10, 0xffffffff
                  lui          a1, 797456
                  add          a2, a5, t0
                  add          a7, t5, a2
                  add          a2, t2, t5
                  sub          s11, s10, t0
                  sub          t0, s10, t5
                  sub          a2, a2, a1
                  auipc        s2, 73985
                  add          a5, a7, a5
                  auipc        s11, 883965
                  add          t5, a7, s11
                  lui          a1, 526718
                  add          a2, s11, s10
                  auipc        s10, 985530
                  sub          t0, t5, a2
                  sub          s11, s11, a2
                  sub          t0, s10, s10
                  auipc        a2, 719921 #end riscv_int_numeric_corner_stream_13
                  andi         t6, s5, 814
                  sra          t1, ra, t5
                  slt          t5, a3, a1
                  andi         t6, zero, 1441
                  or           ra, a5, s4
                  lui          a2, 912095
                  and          s8, a4, tp
                  srl          a1, tp, s3
                  addi         a2, a3, -1283
                  ori          zero, t4, 219
                  add          t5, s3, zero
                  add          s10, s8, tp
                  xor          t5, s7, s9
                  sub          t0, s6, a2
                  auipc        t6, 253157
                  srl          t3, a5, s1
                  sub          s11, a7, t2
                  sub          t0, tp, s5
                  ori          t4, t1, 425
                  srli         t0, t1, 9
                  addi         t4, a1, -758
                  srai         sp, a0, 18
                  ori          gp, s8, -1123
                  add          a1, s1, s2
                  sltu         s10, a1, s8
                  slti         s6, a7, 278
                  or           t2, a5, a5
                  srli         t1, a1, 24
                  add          zero, t5, s1
                  xor          s3, a5, t0
                  or           t0, s10, s6
                  srl          a7, a2, s1
                  slti         a7, t0, -864
                  ori          zero, s7, 351
                  sltiu        a6, s1, -1523
                  add          a0, a7, a2
                  slli         gp, a3, 6
                  srli         s6, a1, 11
                  xori         s7, sp, -1625
                  nop
                  srli         ra, s5, 4
                  sra          ra, t1, s8
                  slli         a1, ra, 17
                  sltiu        a7, a2, 1490
                  srai         tp, a3, 19
                  lui          a6, 64675
                  srai         s6, a7, 15
                  srai         a0, t3, 1
                  nop
                  addi         sp, a7, -147
                  srli         a0, sp, 29
                  slli         t2, t3, 13
                  add          gp, a7, t6
                  nop
                  nop
                  ori          a4, s6, 1724
                  and          sp, a3, s11
                  sub          a6, t2, a6
                  and          s4, s11, t5
                  add          tp, s9, s3
                  and          t1, s7, s3
                  andi         s3, t2, 605
                  xor          s7, t6, a0
                  sra          ra, t6, a6
                  sltu         a6, a2, t1
                  lui          s8, 484938
                  sltiu        s11, t4, 131
                  sltiu        s8, t6, -979
                  slti         s7, t1, -1172
                  sltiu        gp, a6, 52
                  slli         s10, t2, 2
                  slt          a2, t5, a4
                  or           zero, tp, s9
                  lui          a7, 403953
                  nop
                  nop
                  and          t2, s0, a1
                  add          t5, a7, t5
                  ori          s10, t1, -1630
                  xori         t6, t0, -617
                  nop
                  xori         a5, s5, -1574
                  and          s2, s11, zero
                  sll          t1, s1, a4
                  xor          s11, s4, s8
                  sub          sp, s3, tp
                  sub          a6, s3, s8
                  srai         a7, t4, 12
                  srli         s7, a2, 23
                  add          s6, a3, gp
                  slli         s11, a2, 2
                  addi         s8, s6, -23
                  xori         a5, t4, 1670
                  xori         a6, zero, 763
                  sra          s10, ra, a5
                  and          s7, sp, t4
                  nop
                  addi         a0, a6, 1512
                  sltu         t3, s7, t1
                  sltiu        a1, tp, 1866
                  sra          s5, t3, a7
                  slt          t6, s8, s5
                  slti         gp, a0, -1956
                  sltiu        s11, t3, -25
                  slli         sp, t0, 22
                  sra          a4, zero, t5
                  sra          t5, t6, s8
                  srli         a0, a5, 31
                  andi         a1, t2, -465
                  xor          tp, a5, s10
                  slt          a3, a1, gp
                  sltu         a5, s2, a1
                  lui          a4, 296372
                  and          tp, sp, a1
                  slt          s11, t1, t4
                  sra          a3, a7, s4
                  addi         a6, a5, 651
                  xori         sp, zero, 1381
                  sltu         a4, sp, sp
                  xori         ra, s11, 1203
                  sll          s5, a4, s1
                  sltu         s2, s7, s11
                  lui          a2, 116797
                  slli         a1, s9, 18
                  sub          a1, a2, a4
                  xori         a6, a0, 1949
                  sll          t6, a0, s7
                  slli         s6, t5, 14
                  auipc        a6, 324738
                  andi         a1, s2, -772
                  srai         s10, s8, 16
                  sra          gp, t3, a6
                  sltu         a7, t5, zero
                  or           a3, s4, ra
                  add          s3, t6, t3
                  addi         s3, t4, -1597
                  addi         t2, gp, -1876
                  sll          s10, a3, t0
                  add          s10, zero, s1
                  andi         s4, a3, 1186
                  srai         a1, s2, 14
                  srl          s11, t1, s5
                  auipc        a0, 351896
                  sltu         a3, t1, s3
                  srl          s4, s9, t1
                  slti         s4, t4, -1945
                  xor          s5, a5, ra
                  srai         a1, t2, 27
                  sltu         sp, a7, s4
                  sltiu        t5, s2, -923
                  slt          t3, a1, s0
                  add          a6, t5, zero
                  nop
                  slti         tp, a7, 1804
                  sltu         s10, t3, t6
                  ori          t3, a2, -438
                  sra          t3, s5, ra
                  nop
                  slli         s4, t4, 2
                  xori         a0, a5, -1679
                  or           s2, t2, s2
                  lui          t2, 598265
                  sll          s2, s0, s6
                  and          s10, a7, s6
                  slti         s6, t0, 1300
                  lui          a4, 945815
                  xor          a4, s0, t6
                  or           a3, t2, a4
                  auipc        s7, 57628
                  srli         s5, a0, 27
                  slli         a2, a2, 8
                  slt          tp, s3, t0
                  auipc        a6, 1024154
                  slli         tp, s5, 11
                  and          a6, t6, t4
                  xor          sp, a3, t2
                  lui          a2, 41669
                  slt          a2, s2, a5
                  ori          s7, a3, 1740
                  ori          t5, ra, -933
                  srli         t1, s3, 5
                  sltiu        t4, t1, 551
                  slti         gp, s5, -1662
                  ori          tp, tp, -213
                  sra          s3, t6, a1
                  nop
                  sra          a7, s1, s11
                  and          s8, s6, t0
                  add          a7, t1, zero
                  sub          a5, t5, a3
                  sltu         s2, t1, s8
                  ori          t2, t2, 17
                  sltu         ra, s7, a2
                  srli         t1, t2, 18
                  sra          a0, t1, a3
                  srai         s6, s3, 4
                  andi         a4, s6, -446
                  srli         s7, s6, 0
                  srai         ra, s6, 30
                  auipc        ra, 50693
                  slti         t2, s11, -987
                  nop
                  addi         t1, s5, -1878
                  slli         s5, s3, 25
                  srl          tp, s10, t1
                  nop
                  sra          a3, s2, t1
                  sltu         s5, s3, a7
                  sltu         s4, a0, s1
                  nop
                  nop
                  addi         a3, s2, 586
                  add          a0, a3, s11
                  xori         zero, a1, 182
                  sub          a5, s1, s9
                  or           t6, a4, gp
                  srl          a0, s1, t5
                  lui          a1, 818176
                  slt          t1, a3, t0
                  sll          ra, a3, sp
                  auipc        t2, 29048
                  sll          t5, s11, gp
                  andi         a7, s2, 448
                  xori         gp, t4, 53
                  xor          t3, gp, t6
                  sltu         s4, a0, s3
                  andi         gp, tp, 927
                  slli         s7, s11, 8
                  sub          tp, ra, s4
                  sltu         s8, s9, s6
                  addi         a4, s1, -1834
                  slti         t6, tp, 1665
                  srl          tp, a3, sp
                  slti         a2, tp, 1652
                  sltu         s4, t6, s10
                  srai         a7, a6, 28
                  auipc        a4, 283576
                  ori          a3, a1, 437
                  sll          a7, a2, s9
                  sub          t1, s6, s2
                  slti         a2, s3, -1156
                  lui          t5, 398064
                  ori          t3, s11, 662
                  add          t4, s6, a6
                  srai         s11, tp, 18
                  sub          a7, s10, s0
                  and          s10, sp, s6
                  srai         t1, s10, 0
                  sltiu        a5, t0, -676
                  slti         a6, ra, -114
                  sltu         t2, t4, s3
                  and          s7, s0, s1
                  auipc        a1, 493345
                  ori          t3, a6, -837
                  srli         a0, s8, 7
                  addi         ra, a2, -1757
                  or           ra, s7, a5
                  and          a0, s4, a4
                  srai         a3, s11, 21
                  nop
                  srl          s10, s4, zero
                  sub          t4, s2, t1
                  auipc        t4, 329791
                  andi         s3, t5, 387
                  sra          t3, s10, t6
                  auipc        gp, 950751
                  sra          tp, s5, s6
                  sra          s7, s11, s2
                  sltiu        s6, s6, -1054
                  sra          t1, a1, a4
                  or           s2, a1, s1
                  slti         tp, zero, 1012
                  xor          t1, gp, a4
                  xori         s4, a7, -1903
                  nop
                  slli         s5, t1, 19
                  slt          a2, t3, t4
                  slti         a0, a2, 683
                  xori         t0, s5, 594
                  srl          t2, a3, s7
                  sltu         a0, s8, a3
                  lui          s2, 844488
                  add          t1, gp, s0
                  slti         ra, s0, 132
                  slli         sp, a1, 16
                  ori          ra, gp, -831
                  srl          s5, ra, s2
                  xori         t1, s2, 148
                  slti         s8, t1, 270
                  xor          a3, s7, a1
                  slli         tp, t2, 13
                  auipc        t2, 1042691
                  add          a6, t1, s11
                  srai         s7, t6, 21
                  sltu         t5, t6, s10
                  nop
                  add          s5, tp, s1
                  lui          a6, 390979
                  sltu         s7, s0, s10
                  sra          a4, t2, s8
                  sra          tp, t1, t4
                  srl          s10, a2, s8
                  sltu         s8, t6, s4
                  andi         t4, a5, 453
                  or           gp, sp, zero
                  and          s6, s3, s5
                  srli         t0, s3, 23
                  xori         t2, a2, -1117
                  nop
                  add          a0, s11, s2
                  slt          sp, t3, s10
                  ori          t5, a7, 1004
                  add          a6, a0, t3
                  auipc        a3, 754550
                  srl          s11, s0, s2
                  or           tp, a6, tp
                  lui          gp, 946608
                  xor          t0, t3, s10
                  sll          ra, t1, t6
                  and          a1, a5, t6
                  and          gp, a2, s0
                  slti         t0, t2, -1246
                  addi         a6, a4, 1085
                  sll          s2, t6, a2
                  xori         s11, ra, 366
                  andi         t2, s9, 1374
                  slti         a0, s3, -987
                  add          ra, a6, gp
                  srl          s7, zero, t5
                  slti         t0, s8, -1600
                  or           s5, s11, a7
                  sub          a1, s1, s2
                  sll          t3, a3, a4
                  and          a5, tp, s9
                  or           t5, ra, a2
                  or           t5, ra, t5
                  srai         ra, gp, 1
                  and          gp, a0, s6
                  nop
                  auipc        s4, 413336
                  addi         tp, t1, 715
                  sltiu        a1, gp, 938
                  nop
                  slli         t0, s4, 17
                  andi         a5, a3, -1574
                  slt          t5, s9, a7
                  sltiu        s2, s9, -1172
                  slt          a1, tp, s6
                  lui          t2, 647405
                  xori         t6, a5, 649
                  sltu         t3, s9, s10
                  xori         s11, s8, 772
                  andi         t4, a6, -1752
                  lui          t0, 538903
                  sltu         ra, t0, s9
                  xori         s7, t5, -1623
                  xor          s11, s6, t0
                  auipc        t1, 280179
                  slti         s11, a7, 1210
                  sll          t0, s5, s8
                  auipc        t4, 369623
                  sll          t6, t3, t3
                  ori          t6, s0, -2020
                  nop
                  and          t0, a5, s6
                  or           s2, s3, s4
                  andi         a3, s6, 1650
                  addi         a6, t5, -1089
                  slt          a7, s9, a6
                  slt          a1, s10, a4
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           t0, 0xffffffff
                  li           t3, 0xc47e96c
                  li           t4, 0x0
                  li           a3, 0x80000000
                  li           ra, 0x80000000
                  li           s5, 0xa370054d
                  li           a4, 0x80000000
                  li           a6, 0x3a173d90
                  li           a5, 0xffffffff
                  add          t4, a5, ra
                  addi         a5, t3, -678
                  sub          a4, t0, a3
                  auipc        ra, 14361
                  sub          s10, t4, a5
                  sub          t0, ra, a3
                  lui          ra, 412067
                  auipc        ra, 487492
                  nop
                  addi         ra, t3, -514
                  sub          a6, t3, a5
                  addi         ra, t0, 188
                  sub          s10, s5, a4
                  add          s5, t0, a3
                  nop
                  auipc        a4, 922370
                  sub          t0, a4, a6 #end riscv_int_numeric_corner_stream_4
                  addi         a5, t4, 215
                  sll          s10, ra, s7
                  slli         tp, s7, 16
                  sltu         sp, a7, s1
                  xori         tp, t2, 1221
                  xori         zero, a4, 991
                  addi         ra, s3, -376
                  xori         tp, a7, -568
                  xori         s2, a4, 1312
                  auipc        t5, 143878
                  slt          s5, s0, sp
                  sltu         a5, s4, tp
                  srl          t2, t2, gp
                  slti         sp, a5, -1316
                  nop
                  and          a5, t6, s0
                  srl          a5, a4, sp
                  nop
                  sll          a5, t0, a7
                  addi         s10, t1, -607
                  slt          s2, gp, s2
                  and          t0, s7, ra
                  add          ra, a4, a2
                  sra          s2, a4, sp
                  srai         a5, t4, 17
                  and          a1, s5, t0
                  or           s2, sp, s5
                  lui          a6, 550917
                  slti         a1, t1, -1060
                  nop
                  addi         s4, tp, 1539
                  xori         a6, s7, 1101
                  slt          tp, a4, t0
                  sltu         tp, t4, s5
                  srl          s7, tp, s9
                  nop
                  sub          gp, s7, s0
                  addi         a3, a0, 1071
                  sltiu        t1, a1, 746
                  or           tp, s7, s5
                  add          s3, s9, s4
                  lui          a5, 1018174
                  srli         s7, t4, 28
                  sltu         a5, s5, s3
                  and          ra, a1, s11
                  addi         zero, zero, -409
                  xor          a7, t5, tp
                  lui          s3, 14785
                  sltiu        t2, s2, 1179
                  or           s3, a5, t1
                  xori         t0, t1, -609
                  nop
                  or           s10, s6, s5
                  and          gp, sp, s6
                  sub          s4, t0, sp
                  auipc        a4, 321519
                  sltiu        a2, s11, 1839
                  addi         tp, s9, 252
                  slt          t0, s0, gp
                  slt          s6, sp, s3
                  srli         a2, gp, 20
                  add          t0, s0, t5
                  andi         t6, s10, 1233
                  xor          t0, a6, sp
                  xor          s8, a4, ra
                  slt          t3, s1, s2
                  or           zero, ra, t3
                  lui          tp, 458393
                  or           a0, s9, s10
                  ori          t6, s9, 869
                  slt          t6, gp, ra
                  slli         s7, t2, 7
                  slti         s10, a6, -1311
                  or           s2, gp, s1
                  srli         s7, t2, 1
                  xori         s8, s6, -1021
                  srl          a6, s2, s11
                  sltu         t2, t4, a4
                  srl          a7, gp, gp
                  sra          a2, a2, s10
                  slli         ra, s9, 27
                  ori          t1, gp, -651
                  srl          s8, gp, t0
                  xori         zero, a6, -1753
                  slli         a7, s7, 13
                  slli         a6, s1, 7
                  srl          t1, s10, s0
                  or           t6, a2, zero
                  or           a5, s3, t0
                  auipc        t5, 498361
                  addi         sp, t1, -514
                  andi         t4, a6, 1128
                  sltu         s3, a1, s0
                  slli         s8, a5, 5
                  auipc        a6, 189429
                  sub          a1, a0, a5
                  slt          t0, s11, t2
                  addi         gp, t6, -1814
                  auipc        a3, 701014
                  sltiu        s3, a4, 1898
                  xori         a0, s8, -163
                  xori         t1, s9, 833
                  auipc        s7, 819843
                  sra          s4, a7, s4
                  sltiu        s6, t3, -1332
                  srli         gp, sp, 16
                  and          t1, t6, a5
                  and          s8, s3, s11
                  or           s4, ra, t0
                  slt          s10, t5, s7
                  andi         tp, t3, -1829
                  and          s2, s0, t2
                  xori         t1, a1, -677
                  xori         t0, s7, 1882
                  slti         tp, s10, -71
                  auipc        s8, 511758
                  srai         s10, s5, 31
                  srl          a1, s6, t6
                  sltu         t0, s11, sp
                  slti         s2, s9, 899
                  lui          ra, 805864
                  nop
                  addi         a1, s2, 1607
                  auipc        s2, 467274
                  srai         s5, s9, 0
                  xori         a7, t6, 439
                  addi         s10, s3, 1903
                  sltiu        t1, t2, -1776
                  slti         s10, s11, -104
                  lui          s3, 9379
                  slti         a0, s10, -77
                  add          a1, s6, s10
                  srai         s2, t4, 20
                  xori         ra, gp, -1207
                  sltiu        s8, tp, -1197
                  and          t6, tp, s5
                  add          a5, t5, t3
                  sltiu        t4, ra, 1029
                  auipc        t3, 211716
                  sll          t3, s0, s5
                  lui          a2, 922968
                  slli         t4, a6, 16
                  and          gp, s8, t0
                  ori          a0, s4, 1812
                  srai         s4, a4, 10
                  andi         s7, s9, -1502
                  srli         s7, t5, 14
                  add          s3, s5, s3
                  xor          a7, t4, a7
                  xori         s6, t0, 1760
                  ori          s4, s5, -1148
                  xor          a4, a4, s10
                  or           s8, s7, t0
                  add          a5, a1, s1
                  auipc        a2, 14455
                  lui          ra, 429010
                  sltiu        s2, t0, 1471
                  andi         a5, a7, -1759
                  sltu         s2, a0, a4
                  and          a5, t5, s2
                  lui          tp, 968913
                  sub          t6, s8, tp
                  slli         s5, sp, 28
                  slt          a2, s1, t4
                  sll          t6, s5, s0
                  nop
                  slti         t1, zero, -504
                  and          s6, s1, gp
                  srl          a1, s11, a4
                  sra          a3, s10, s5
                  slt          t6, ra, sp
                  sltu         tp, a1, s6
                  srai         a3, s8, 5
                  and          a4, s4, a0
                  andi         a1, a4, 1352
                  sub          a0, s2, a3
                  sra          t0, t2, t3
                  xor          t1, s10, t3
                  and          t2, a4, s9
                  sub          s10, s5, s9
                  srli         t2, a5, 26
                  sll          s6, t6, sp
                  slt          a0, t6, s10
                  add          a3, a3, s6
                  slt          tp, s9, s11
                  xori         a1, s10, -1513
                  xor          s5, s2, s4
                  and          t6, t6, s0
                  nop
                  slti         tp, t5, -50
                  srai         a0, a3, 7
                  slti         t5, a5, -189
                  srai         t1, a7, 5
                  lui          t6, 184491
                  slli         s11, t5, 4
                  sll          s10, t3, s11
                  slt          s11, s0, a2
                  sll          t5, s7, s2
                  sll          s5, t3, a6
                  sll          t0, s2, a5
                  ori          zero, s5, 783
                  slli         zero, s6, 6
                  nop
                  xori         s5, s10, 320
                  lui          ra, 481152
                  sll          t0, sp, t4
                  or           s10, a6, sp
                  slli         a2, zero, 24
                  sll          s6, t4, s9
                  srl          t6, s4, t4
                  or           a7, s1, a2
                  auipc        s5, 815523
                  nop
                  addi         zero, t1, 766
                  sltu         s11, a6, ra
                  and          t3, s2, t0
                  add          s2, s9, t0
                  sub          a7, t4, a0
                  or           s7, a2, t5
                  lui          zero, 705384
                  xori         a2, t2, 1706
                  or           t4, t4, s6
                  add          t1, gp, tp
                  addi         a3, s11, 1330
                  sltiu        a3, a2, -1072
                  andi         sp, s7, -1598
                  xori         tp, t1, -2019
                  xor          tp, t6, s11
                  nop
                  xor          s11, s5, s6
                  or           t3, tp, a0
                  xor          t1, t6, t5
                  lui          sp, 804326
                  addi         s3, t5, -1207
                  or           gp, s1, s3
                  addi         gp, a0, -1918
                  srl          tp, s6, t6
                  slli         a2, s5, 25
                  or           sp, a7, a0
                  addi         s7, a3, 822
                  srl          t0, s9, gp
                  addi         s7, t2, 1099
                  slli         s6, s0, 9
                  sub          t0, t5, s1
                  sra          t4, tp, t4
                  or           a3, a7, t3
                  nop
                  andi         zero, s5, -1596
                  slti         s11, t0, 180
                  sra          a6, t6, a7
                  slti         s4, a1, -224
                  sra          t5, t6, a4
                  addi         s7, s3, -691
                  sub          ra, zero, s9
                  sub          tp, a4, tp
                  add          t1, s8, s10
                  sltu         sp, s7, s3
                  add          zero, t2, s2
                  xor          a7, s8, a7
                  srli         t3, s6, 8
                  srai         t1, s6, 26
                  auipc        a3, 17279
                  srl          t5, s7, t4
                  sub          sp, sp, s9
                  slli         s11, a5, 2
                  sltiu        s5, s8, 976
                  sub          ra, s7, a0
                  add          s7, s3, s10
                  and          s8, s2, s2
                  add          sp, s4, s10
                  slti         a7, s3, 383
                  andi         a5, a1, 158
                  and          t5, s7, s3
                  xori         s11, a2, -1038
                  sltu         s7, t3, s1
                  addi         t2, s3, 1579
                  and          s8, a6, a0
                  sltiu        s2, t3, 1061
                  auipc        ra, 451535
                  sltiu        a6, tp, -834
                  xor          sp, t6, s0
                  or           a4, s6, a6
                  sra          zero, s7, s9
                  slti         t1, a4, 570
                  andi         t6, s6, 442
                  add          a6, gp, s9
                  lui          a2, 218434
                  sll          t5, a7, s8
                  and          gp, s6, t0
                  xori         s8, s7, 269
                  ori          tp, zero, 1625
                  sra          t4, t3, s1
                  addi         a1, gp, 886
                  add          t4, t2, a4
                  auipc        gp, 33934
                  andi         t4, s9, -169
                  xor          ra, a0, a2
                  addi         a1, s3, -115
                  slti         s7, gp, -687
                  add          tp, s6, s6
                  addi         s5, t1, -803
                  auipc        sp, 252527
                  add          a5, a4, s7
                  srl          gp, a1, s11
                  ori          s2, a5, -1523
                  srli         s4, a3, 0
                  ori          t0, t4, -62
                  lui          s10, 591571
                  add          t2, a1, s8
                  srl          a1, a4, a1
                  or           a2, t1, s4
                  srl          t6, s5, a2
                  sltu         s5, s3, s3
                  ori          a5, a7, -1526
                  addi         s3, s1, 845
                  sra          s5, s3, t2
                  sll          s6, s6, s10
                  srli         t5, a5, 28
                  xori         a4, t4, 1458
                  nop
                  sltu         tp, zero, s5
                  xor          tp, zero, s1
                  sra          zero, s6, t1
                  sub          s6, a5, s5
                  auipc        s2, 30442
                  sll          sp, sp, s9
                  or           t1, s11, s1
                  andi         t4, tp, 1964
                  sra          tp, s6, t2
                  xori         s2, a2, 1829
                  slti         a3, s3, 1988
                  sll          s4, s8, t6
                  nop
                  slli         t5, a4, 9
                  srl          s3, a4, s3
                  andi         s2, t4, 1363
                  ori          a4, a2, -1873
                  slti         s3, s6, -2019
                  sltu         sp, t5, tp
                  srli         s5, tp, 18
                  auipc        a0, 610985
                  sltiu        a2, s2, 977
                  add          s2, s11, a3
                  ori          a5, s11, -1293
                  and          t5, a1, zero
                  slli         t1, a0, 6
                  addi         s8, s9, -905
                  slli         tp, s11, 8
                  or           a4, s5, s4
                  slli         t2, a7, 25
                  xor          a6, s3, s10
                  slt          ra, zero, s5
                  xori         s2, a2, 843
                  lui          a5, 954284
                  xori         s6, a0, -1044
                  slli         a5, a6, 20
                  srli         t0, tp, 13
                  slti         a6, s5, 823
                  sub          a1, s4, t0
                  sltiu        s2, s3, -1489
                  slli         s5, s0, 27
                  auipc        s7, 200259
                  srai         a1, s3, 14
                  andi         zero, s5, 631
                  lui          t3, 94867
                  addi         a5, s3, 69
                  xor          a1, a0, a1
                  andi         a3, ra, -1809
                  andi         a6, s9, -1062
                  sltiu        t4, a5, 1615
                  addi         t1, s9, -1652
                  sub          t1, s11, tp
                  andi         s3, t2, -153
                  slli         s5, tp, 12
                  add          s11, s5, s2
                  add          t3, s10, tp
                  sll          s11, s6, zero
                  andi         a0, s7, -1769
                  nop
                  slli         s4, a6, 9
                  sltiu        t1, s7, -1748
                  slli         t0, a3, 1
                  addi         s3, t3, -1194
                  and          a0, t6, s7
                  srli         t6, s3, 31
                  add          s6, s3, sp
                  sltiu        ra, s4, -1715
                  sra          t1, s5, zero
                  srai         t0, sp, 8
                  sltiu        a5, s5, -753
                  srli         a3, ra, 8
                  nop
                  la x9, test_done
                  jalr x0, x9, 0
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
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x8, x25, zero
                  csrr x12, 0x300 # MSTATUS
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 31
                  bne x12, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x12, 0x341 # MEPC
                  csrr x12, 0x342 # MCAUSE
                  li x26, 0x3 # BREAKPOINT
                  beq x12, x26, ebreak_handler
                  li x26, 0x8 # ECALL_UMODE
                  beq x12, x26, ecall_handler
                  li x26, 0x9 # ECALL_SMODE
                  beq x12, x26, ecall_handler
                  li x26, 0xb # ECALL_MMODE
                  beq x12, x26, ecall_handler
                  li x26, 0x1
                  beq x12, x26, instr_fault_handler
                  li x26, 0x5
                  beq x12, x26, load_fault_handler
                  li x26, 0x7
                  beq x12, x26, store_fault_handler
                  li x26, 0xc
                  beq x12, x26, pt_fault_handler
                  li x26, 0xd
                  beq x12, x26, pt_fault_handler
                  li x26, 0xf
                  beq x12, x26, pt_fault_handler
                  li x26, 0x2 # ILLEGAL_INSTRUCTION
                  beq x12, x26, illegal_instr_handler
                  csrr x26, 0x343 # MTVAL
                  1: la x9, test_done
                  jalr x1, x9, 0

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
                  la x9, write_tohost
                  jalr x0, x9, 0

instr_fault_handler:
                  add x25, x8, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

load_fault_handler:
                  add x25, x8, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

store_fault_handler:
                  add x25, x8, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

ebreak_handler:   
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x25, x8, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

illegal_instr_handler:
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x25, x8, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x12, 0x300 # MSTATUS;
                  csrr  x12, 0x304 # MIE;
                  csrr  x12, 0x344 # MIP;
                  csrrc x12, 0x344, x12 # MIP;
                  add x25, x8, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
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
