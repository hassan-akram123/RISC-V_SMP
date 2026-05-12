.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x23, h0_start
jalr x0, x23, 0
h0_start:
                  li x24, 0x40000100
                  csrw 0x301, x24
kernel_sp:        
                  la x8, kernel_stack_end

trap_vec_init:    
                  la x24, mtvec_handler
                  ori x24, x24, 0
                  csrw 0x305, x24 # MTVEC

mepc_setup:       
                  la x24, init
                  csrw 0x341, x24

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x24, 0x1800
                  csrw 0x300, x24 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xff20d5fa
                  li x2, 0x80000000
                  li x3, 0x0
                  li x5, 0x80000000
                  li x6, 0xf3e9acde
                  li x7, 0x0
                  li x9, 0x80000000
                  li x10, 0x0
                  li x11, 0x80000000
                  li x12, 0x80000000
                  li x13, 0x80000000
                  li x14, 0x0
                  li x15, 0x80000000
                  li x16, 0xf5ab948f
                  li x17, 0x80000000
                  li x18, 0xa
                  li x19, 0x80000000
                  li x20, 0x1
                  li x21, 0x12215517
                  li x22, 0x77914a77
                  li x23, 0xf1d1e669
                  li x24, 0x2
                  li x25, 0x414bfddf
                  li x26, 0xf53eb7e3
                  li x27, 0xf58c8d1d
                  li x28, 0xed62ec47
                  li x29, 0x3
                  li x30, 0xfbccee68
                  li x31, 0x80000000
                  la x4, user_stack_end
main:             li           t6, 0x2b991ea1 #start riscv_int_numeric_corner_stream_12
                  li           s8, 0x0
                  li           s6, 0x0
                  li           s11, 0x80000000
                  li           t2, 0x0
                  li           s4, 0x0
                  li           a6, 0xa5fbe328
                  li           t5, 0x80000000
                  li           s2, 0xc9da1b43
                  li           t4, 0x0
                  nop
                  sub          a6, t6, s2
                  nop
                  nop
                  lui          s6, 524114
                  add          t2, t4, t5
                  auipc        a6, 386548
                  addi         t5, a6, -1958
                  addi         s4, t2, -173
                  lui          s4, 70835
                  addi         s11, t5, 791
                  add          s2, s2, s2
                  add          s8, s6, t2
                  add          a6, s2, s8
                  nop #end riscv_int_numeric_corner_stream_12
                  li           t6, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           a4, 0x746fb362
                  li           gp, 0xffffffff
                  li           t1, 0xb944234b
                  li           t4, 0x4ee806e4
                  li           s11, 0xffffffff
                  li           t2, 0x80000000
                  li           a5, 0xffffffff
                  li           sp, 0x80000000
                  li           s3, 0x0
                  lui          a4, 950235
                  addi         t6, t1, -766
                  nop
                  sub          t6, a4, a5
                  nop
                  add          t1, gp, s3
                  sub          t2, a4, a4
                  addi         t6, t4, 2012
                  addi         s11, t2, 37
                  auipc        sp, 707646
                  auipc        a4, 718434
                  sub          t6, gp, t2
                  lui          t2, 446860
                  nop
                  nop
                  addi         sp, t4, 671
                  sub          s3, t6, t2
                  add          a4, t4, s3
                  nop
                  addi         a4, a5, -589
                  addi         s3, t1, -486
                  lui          t1, 668877
                  auipc        s3, 378403
                  lui          a5, 740156
                  add          t4, t6, s11 #end riscv_int_numeric_corner_stream_10
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           a3, 0x80000000
                  li           t3, 0x0
                  li           s3, 0xffffffff
                  li           t4, 0x0
                  li           s5, 0x80000000
                  li           s10, 0x80000000
                  li           t0, 0xffffffff
                  li           s2, 0x80000000
                  li           s6, 0x0
                  addi         s2, t0, -579
                  nop
                  auipc        s3, 151662
                  auipc        s10, 356890
                  add          t3, s5, s10
                  addi         a4, t4, -346
                  addi         s6, s10, -92
                  sub          t3, s2, s2
                  sub          s3, s10, s6
                  add          s5, t0, s6
                  addi         t3, s3, -1428
                  addi         s6, t4, -1405
                  addi         s6, s3, 203
                  add          t4, a3, a3
                  sub          t3, s6, a4
                  auipc        s2, 844852
                  nop
                  sub          s5, s3, s10
                  auipc        s3, 573159
                  add          s10, s3, a3
                  sub          s5, t3, t0
                  addi         t0, s3, 1151
                  add          s2, s5, t0
                  auipc        s2, 705337 #end riscv_int_numeric_corner_stream_13
                  li           t2, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           s3, 0xffffffff
                  li           a5, 0xffffffff
                  li           a7, 0xffffffff
                  li           ra, 0x0
                  li           t6, 0x0
                  li           sp, 0x0
                  li           s9, 0x80000000
                  li           s4, 0xbf0cfc23
                  li           t3, 0x0
                  auipc        ra, 888640
                  lui          s9, 529854
                  nop
                  add          s3, a7, a5
                  auipc        s9, 696482
                  addi         s4, t6, -1467
                  nop
                  nop
                  nop
                  lui          t6, 272880
                  add          t2, s3, ra
                  lui          t2, 792534
                  nop
                  lui          a7, 746584
                  nop
                  nop
                  auipc        t3, 871939
                  auipc        s4, 891984
                  auipc        s9, 574363
                  nop #end riscv_int_numeric_corner_stream_3
                  li           t4, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           s4, 0x80000000
                  li           s5, 0xffffffff
                  li           t2, 0xffffffff
                  li           t1, 0xffffffff
                  li           a5, 0x23c70269
                  li           a4, 0xffffffff
                  li           sp, 0x0
                  li           t3, 0x0
                  li           s6, 0xffffffff
                  add          s4, s5, s6
                  add          a4, a4, s5
                  nop
                  sub          s6, s6, t4
                  sub          t1, a5, a5
                  add          a5, s4, t3
                  add          s4, t3, s5
                  nop
                  nop
                  sub          t2, a5, t2
                  add          s4, sp, t2
                  add          a4, t2, s4
                  addi         s4, s5, 1945
                  add          sp, t3, t3
                  auipc        s4, 956191
                  lui          s5, 942752
                  addi         t1, s4, -1521 #end riscv_int_numeric_corner_stream_1
                  li           t0, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           ra, 0xffffffff
                  li           s4, 0x1ffcadad
                  li           a7, 0x61058aa9
                  li           s3, 0x80000000
                  li           s1, 0xffffffff
                  li           s11, 0xe1dc989
                  li           s2, 0xffffffff
                  li           t3, 0x0
                  li           s9, 0x0
                  lui          s4, 482175
                  nop
                  add          s4, s11, a7
                  add          t3, s1, s1
                  auipc        s3, 546596
                  lui          s2, 46625
                  auipc        s9, 517653
                  auipc        s1, 316590
                  auipc        t0, 373284
                  sub          s3, ra, s11
                  nop
                  add          s2, s2, s1
                  lui          s11, 196486
                  lui          s9, 1007037
                  add          s4, t3, ra
                  addi         t3, s3, 401
                  auipc        s3, 787641
                  add          t0, ra, s2
                  sub          a7, s4, ra
                  sub          s11, s1, s1
                  addi         s1, a7, -1625
                  addi         t0, s1, -228
                  lui          s3, 618563 #end riscv_int_numeric_corner_stream_15
                  li           s9, 0xb8a0fc14 #start riscv_int_numeric_corner_stream_18
                  li           s1, 0x80000000
                  li           s10, 0x36c5389c
                  li           a1, 0xa825dd58
                  li           s11, 0x0
                  li           t2, 0xffffffff
                  li           s3, 0x80000000
                  li           a6, 0x80000000
                  li           t1, 0xe34d9fdd
                  li           a7, 0x99af92c8
                  nop
                  nop
                  nop
                  auipc        s1, 430062
                  nop
                  lui          s3, 292827
                  add          s1, a1, s1
                  nop
                  add          s3, s11, s3
                  addi         s3, a6, 778
                  sub          s10, s10, t2
                  addi         s11, a1, 434
                  addi         a1, a7, -2018
                  addi         a7, a7, 1197
                  add          a7, s3, s10
                  addi         s1, t2, 308
                  nop
                  addi         s1, s9, -1826 #end riscv_int_numeric_corner_stream_18
                  sltiu        zero, tp, -321
                  slli         s4, t5, 29
                  srl          a0, s5, a5
                  sltu         t4, a7, a6
                  srl          gp, s4, gp
                  ori          a0, s0, -1794
                  srli         a4, a0, 13
                  ori          a4, sp, 574
                  addi         s10, t1, -241
                  slt          t6, s4, s3
                  sra          zero, a1, zero
                  sltiu        t5, s6, -948
                  nop
                  sltu         s5, s11, tp
                  sltu         s9, s8, s7
                  sltu         s1, t3, s9
                  slti         s6, a0, 1860
                  auipc        a5, 820971
                  srli         s4, t1, 13
                  slti         t2, a5, -1199
                  slti         ra, ra, 1372
                  slli         t4, s9, 24
                  lui          t3, 651324
                  slli         a3, s0, 25
                  auipc        s3, 607444
                  sltiu        t3, a7, -706
                  andi         ra, t6, -929
                  srli         a0, s11, 26
                  and          t2, s11, sp
                  slti         s1, ra, -1729
                  xor          s4, t0, s2
                  slti         t4, s2, 1657
                  sub          a2, s6, s6
                  srl          ra, ra, a2
                  nop
                  sltu         s6, a7, sp
                  and          a1, a7, s7
                  addi         a5, s7, 120
                  sub          s3, a2, t4
                  sltu         sp, sp, s9
                  ori          a0, s7, 1881
                  slli         t5, s0, 31
                  xori         t5, s4, -721
                  andi         a5, t2, 1741
                  add          a5, sp, a2
                  lui          ra, 168725
                  srai         a5, t5, 15
                  sra          s10, a1, a3
                  auipc        a7, 634754
                  srai         s11, s0, 8
                  slti         gp, s4, -20
                  srli         s3, s1, 25
                  or           s6, s4, tp
                  or           t5, s3, ra
                  andi         t1, zero, -1904
                  and          s2, a6, s2
                  nop
                  slt          s10, a3, ra
                  nop
                  sub          a6, ra, t3
                  slt          t1, a2, s0
                  srli         s2, s11, 10
                  xori         a7, s9, -1914
                  sll          t6, s0, ra
                  lui          a1, 464449
                  xor          s2, a4, t2
                  slti         t0, zero, -1314
                  auipc        t0, 1043070
                  slli         zero, gp, 20
                  slti         t3, s9, -389
                  sltu         a0, a0, t6
                  sub          t2, a7, a5
                  srli         t1, s10, 11
                  nop
                  srl          a2, zero, t1
                  ori          s1, t6, 1253
                  auipc        ra, 285623
                  slti         ra, t6, 1560
                  and          gp, a5, a0
                  sub          a0, s6, ra
                  slti         t5, t5, 1569
                  xori         a3, a3, -1818
                  add          s5, s10, s6
                  or           s2, tp, t1
                  sltu         a7, zero, t5
                  addi         s3, tp, -1502
                  or           t5, s1, t5
                  xori         s6, a5, -1605
                  and          a4, gp, t6
                  lui          a6, 1045474
                  sub          a7, tp, s0
                  srl          s9, s2, a2
                  sll          a6, s5, a5
                  or           s8, t3, s9
                  sltiu        t4, s2, -1601
                  sra          a7, sp, s7
                  srli         t0, t5, 24
                  sub          s11, s8, s2
                  ori          s8, ra, 887
                  addi         a6, a6, -1592
                  andi         a6, sp, -1414
                  andi         t5, s5, -218
                  or           zero, a0, t1
                  sltu         t3, s8, s3
                  nop
                  srl          a0, s8, t5
                  sub          t3, a0, s0
                  xor          s3, a5, t3
                  xori         t4, t3, 2037
                  auipc        gp, 191106
                  add          s2, s8, s4
                  srli         t2, zero, 31
                  srl          sp, s6, a4
                  andi         a3, s11, 1701
                  srai         s8, s6, 31
                  ori          ra, sp, -605
                  slti         zero, s3, -1378
                  slti         s5, a2, -770
                  xor          t0, a1, t4
                  xor          s9, ra, a6
                  slt          s5, zero, s5
                  srai         s10, zero, 13
                  nop
                  lui          s8, 136756
                  sub          t5, a2, gp
                  andi         a1, s6, -1886
                  xori         t5, s1, -1656
                  xor          a5, a2, s0
                  xori         s3, s4, 1583
                  addi         ra, gp, -1819
                  and          a6, t5, t2
                  sll          a2, t6, t4
                  add          t0, a1, a5
                  addi         s1, s9, -1503
                  slti         t1, s6, -358
                  slti         a5, a6, -724
                  auipc        a4, 757405
                  slti         s10, a2, 159
                  srli         a2, a2, 10
                  auipc        s1, 212567
                  xor          ra, a0, t3
                  sll          t1, tp, zero
                  xor          s4, s3, t4
                  sltu         t0, s1, a5
                  srl          a0, a4, a7
                  addi         gp, s4, -240
                  slt          a1, s4, a0
                  and          a2, t2, s9
                  sra          a3, s6, gp
                  xori         s11, s6, 982
                  slti         gp, s6, 825
                  andi         a4, zero, -7
                  ori          t1, s6, 2037
                  sltiu        s8, a4, 1161
                  slli         sp, ra, 29
                  sra          t1, t3, a2
                  slt          sp, t3, s9
                  xori         a5, s9, -1410
                  srai         a2, t1, 30
                  ori          s4, s2, -1392
                  sll          sp, a2, s4
                  sll          t1, a1, a2
                  slti         a7, s7, -372
                  andi         t6, s4, 1921
                  or           s10, s0, a4
                  sltu         s6, s11, tp
                  sltu         s10, s6, s5
                  ori          zero, a5, 328
                  sltu         s2, s9, a3
                  slt          s10, s1, s4
                  andi         sp, a5, 792
                  or           zero, gp, t0
                  sll          sp, tp, s8
                  srl          t5, t5, s8
                  sll          t6, s10, t1
                  xor          t5, t1, zero
                  and          t2, a7, t6
                  sra          a7, s11, zero
                  xor          s1, a3, a3
                  auipc        s1, 337804
                  slt          a2, s10, s0
                  slli         a1, s11, 14
                  lui          a7, 75732
                  or           a4, s10, s8
                  lui          a6, 42435
                  andi         a1, a4, -822
                  sltu         s11, gp, t6
                  sll          a3, s0, a7
                  srli         t2, a7, 25
                  or           gp, gp, a3
                  or           a5, a1, s4
                  slt          s2, a7, a5
                  sub          a2, s5, tp
                  nop
                  sltu         s5, t0, sp
                  srai         s11, ra, 29
                  nop
                  xor          t3, a7, t6
                  auipc        s3, 471672
                  sltu         a0, ra, s1
                  srli         a6, a2, 20
                  andi         a0, t1, -2008
                  xor          s5, s10, a7
                  nop
                  andi         s3, ra, 1731
                  xori         t4, s3, 1686
                  slli         s5, s10, 20
                  slt          a3, a3, a6
                  auipc        t2, 919340
                  sltiu        s1, a3, 896
                  nop
                  sltu         s4, s5, s10
                  or           sp, a5, s4
                  srli         a4, tp, 8
                  sll          a6, tp, s7
                  sra          a0, a1, s5
                  add          gp, s4, s8
                  slli         s9, a7, 20
                  srl          t5, sp, sp
                  andi         t4, s1, 1594
                  lui          s3, 256632
                  ori          a5, s1, 24
                  andi         t4, a5, 656
                  srli         s11, t6, 27
                  addi         s1, s4, 1326
                  srli         s6, t5, 2
                  and          t0, s7, s8
                  or           a4, a0, t2
                  or           t0, ra, t2
                  xor          s6, sp, a0
                  auipc        t4, 816684
                  addi         s4, tp, -173
                  ori          s6, a6, 1379
                  xor          s6, tp, t5
                  sub          t2, s3, t6
                  srl          a6, a3, a2
                  addi         sp, s1, 1331
                  addi         s10, s2, -528
                  addi         s10, t4, 1745
                  sltiu        sp, a5, 670
                  sltu         s3, t4, tp
                  slti         s6, gp, 1603
                  xori         ra, a7, 1446
                  lui          zero, 477717
                  xori         s5, s8, 125
                  nop
                  srl          a1, zero, sp
                  ori          s8, s1, -473
                  ori          t3, t0, -198
                  slli         gp, s3, 7
                  addi         ra, sp, 451
                  slti         sp, a0, -1230
                  srl          t0, t0, tp
                  and          s11, a7, sp
                  sltiu        a0, sp, -1631
                  lui          a1, 1036876
                  nop
                  slti         s2, s1, 319
                  sra          a0, t4, s8
                  slt          a7, a0, t1
                  srl          s6, s10, s10
                  auipc        s1, 549334
                  auipc        s1, 25414
                  srai         t2, s2, 31
                  ori          s11, s11, -1868
                  sltu         t3, a2, s2
                  srli         s4, t0, 14
                  sltu         a2, t5, s9
                  nop
                  addi         s2, s4, -1304
                  addi         a6, s9, -658
                  or           t3, a0, t1
                  andi         s10, gp, 1443
                  or           t1, t3, a4
                  sll          s11, t6, t2
                  sub          a4, s9, s5
                  srli         sp, a0, 30
                  srli         t5, a4, 6
                  and          a6, t5, s8
                  srai         a7, zero, 30
                  sub          s8, sp, t4
                  and          s2, s4, t4
                  sra          t0, t2, s6
                  xori         a2, a5, 1306
                  nop
                  ori          s6, zero, -335
                  sra          s3, a1, gp
                  and          s5, tp, a5
                  and          s1, s4, a7
                  lui          s10, 789324
                  or           a1, a4, t4
                  add          t6, s9, s5
                  add          s10, s11, a2
                  sltu         t2, t6, s1
                  lui          a4, 367211
                  and          s1, s8, s8
                  add          s10, a0, s4
                  or           a1, s1, t3
                  slt          a0, s6, a6
                  and          s8, s3, a0
                  or           a5, s7, t0
                  lui          s4, 823692
                  xori         a1, a4, 11
                  auipc        a2, 336489
                  or           gp, a3, a3
                  sub          a6, ra, s11
                  addi         a2, gp, 1933
                  ori          a7, t1, -1422
                  addi         s11, s10, -597
                  sltu         s4, a2, t5
                  sra          s5, s1, a1
                  auipc        s4, 565833
                  srli         a6, s1, 13
                  xor          a4, s2, s1
                  sll          s1, s4, s4
                  srli         a6, ra, 6
                  addi         t1, ra, 1298
                  slt          zero, zero, t5
                  slti         s10, a1, 1687
                  nop
                  xori         a3, a2, -1965
                  lui          t4, 1026251
                  sub          a1, t5, a4
                  and          s1, t0, a0
                  sra          s1, s4, t4
                  or           t2, a4, t4
                  sltu         a0, s2, s6
                  srli         t2, t0, 8
                  slli         s9, s2, 9
                  auipc        s6, 516034
                  xor          a4, s4, s4
                  sra          a5, s9, a3
                  auipc        s4, 787294
                  xori         t1, s3, 760
                  slti         a7, s0, -1123
                  srli         zero, t2, 24
                  sll          t6, a6, t0
                  sub          gp, sp, s3
                  add          s11, zero, t2
                  addi         t5, s5, -1707
                  auipc        s8, 97367
                  ori          a0, s0, -1422
                  slli         a1, t4, 17
                  or           t6, a2, s0
                  srl          s5, s4, a6
                  lui          t0, 229496
                  srli         s11, t5, 31
                  add          s9, s3, a1
                  add          a2, a2, s11
                  sltiu        t0, t5, -596
                  slti         s6, t5, -95
                  srl          s9, s8, tp
                  add          a5, s9, a0
                  lui          s4, 697730
                  srai         s10, a5, 31
                  srai         gp, ra, 15
                  or           t3, t5, t1
                  srl          t4, a7, s9
                  andi         s11, a0, -342
                  nop
                  xor          s8, s11, zero
                  srl          a1, t0, a6
                  sltu         s6, s11, t0
                  xor          s3, s4, t5
                  ori          a2, t0, 1041
                  nop
                  sltu         s2, t3, ra
                  and          a1, tp, ra
                  ori          s2, a5, -1564
                  or           t4, a3, s11
                  auipc        a6, 1030056
                  or           s9, a4, s5
                  srai         a4, t0, 31
                  auipc        a6, 17678
                  addi         ra, tp, -752
                  sra          a2, s0, a0
                  auipc        t4, 529299
                  nop
                  sra          s5, a2, a1
                  sub          t4, tp, s7
                  or           t4, s4, a7
                  slli         ra, s9, 30
                  addi         s3, a3, 1225
                  addi         s4, a2, -1666
                  xor          s3, sp, s2
                  or           a6, t4, s11
                  xori         s4, s7, 1104
                  or           t3, t5, t5
                  srl          s6, zero, s6
                  sltiu        a6, sp, -1969
                  addi         s2, t4, -274
                  xor          s8, t6, t4
                  auipc        a0, 183953
                  sltu         s8, t1, a6
                  sra          a0, a2, s7
                  slti         t4, t4, 48
                  sltu         sp, s8, s3
                  slli         s11, sp, 2
                  slt          s1, tp, t4
                  srli         a0, a1, 27
                  addi         a3, t4, 569
                  srli         s11, s4, 1
                  srai         s10, s5, 9
                  sltu         s5, s8, t2
                  lui          s6, 42603
                  xor          a4, ra, s11
                  slli         t4, t0, 14
                  srai         t3, t5, 7
                  sra          t2, a7, a3
                  slti         a5, s5, 1811
                  sub          a7, t1, s9
                  or           s10, s5, a2
                  xor          s8, a0, t1
                  srl          s4, t2, s2
                  slli         ra, t0, 11
                  srli         s9, s6, 25
                  or           t1, a1, t5
                  and          s6, ra, s0
                  add          ra, sp, gp
                  lui          s5, 819887
                  li           a4, 0x0 #start riscv_int_numeric_corner_stream_2
                  li           t1, 0x80000000
                  li           t0, 0x43e94f5d
                  li           s9, 0x80000000
                  li           gp, 0xffffffff
                  li           s11, 0x80000000
                  li           s1, 0x80000000
                  li           ra, 0x80000000
                  li           a2, 0xffffffff
                  li           sp, 0x80000000
                  addi         t0, s1, -286
                  auipc        t0, 498957
                  lui          sp, 409624
                  auipc        s11, 662520
                  auipc        gp, 828220
                  sub          t1, a4, a2
                  sub          s1, sp, a2
                  nop
                  lui          a2, 932252
                  addi         sp, t0, 551
                  add          s11, s11, s11
                  lui          a2, 328984
                  nop
                  nop
                  sub          s1, s1, s1
                  lui          s9, 1041576
                  lui          sp, 97481
                  nop
                  lui          s11, 225220
                  sub          a4, a2, sp #end riscv_int_numeric_corner_stream_2
                  sll          a4, a4, s4
                  sll          s11, s11, t6
                  sltiu        s11, s7, 1418
                  sra          t4, t0, s8
                  or           t5, sp, a5
                  auipc        a3, 3548
                  nop
                  sltu         s9, s1, s9
                  srl          s4, a6, s4
                  or           a5, a7, s7
                  sll          s1, tp, a6
                  srli         a7, sp, 17
                  auipc        a1, 752260
                  sll          t4, s2, a3
                  sub          s1, s7, t4
                  sltu         a3, tp, a3
                  addi         sp, t0, -1820
                  sll          a0, t2, s11
                  nop
                  sll          t1, t2, a2
                  addi         t3, s11, 917
                  sltiu        a1, a1, 756
                  sltu         a1, s4, s4
                  lui          t3, 1001318
                  andi         a1, a4, -1477
                  sltiu        sp, t5, -1185
                  slti         s3, s4, -37
                  add          a3, a5, s7
                  xor          t5, s4, a2
                  nop
                  and          s4, s7, a1
                  xori         zero, ra, -1736
                  srl          s4, a6, sp
                  addi         a0, ra, 59
                  or           a7, s9, gp
                  lui          s11, 211555
                  add          s5, t5, s8
                  xori         t5, s10, 1687
                  srl          a6, s1, t1
                  sra          s8, a2, a6
                  sra          s1, s5, s6
                  srai         ra, t3, 24
                  addi         gp, sp, 889
                  sll          gp, s3, s1
                  srl          s3, t3, a2
                  sll          t6, s7, tp
                  slt          zero, s0, tp
                  srl          s9, s6, zero
                  addi         a1, tp, -580
                  srl          t3, t1, s10
                  sra          t5, s6, t4
                  srli         s5, a6, 28
                  srl          a1, t3, zero
                  slti         s9, s5, -1219
                  and          t6, t3, s8
                  srli         a3, s5, 9
                  lui          s4, 145934
                  sltiu        sp, s5, 1725
                  sltu         t2, gp, a2
                  slli         zero, s6, 19
                  slli         t0, zero, 14
                  or           s9, s8, a2
                  slti         s5, sp, -1517
                  sra          t0, a3, t4
                  auipc        t1, 901010
                  ori          t4, a1, -175
                  addi         a7, s7, -1148
                  srli         zero, a4, 14
                  slt          t3, a0, s2
                  slli         a0, s10, 25
                  srli         t5, a4, 25
                  sltu         s6, t0, sp
                  slt          s6, s11, a5
                  slti         s11, t0, 896
                  sll          a0, s3, a1
                  sltu         a7, a1, a1
                  add          s9, s4, a0
                  sub          s5, a4, t1
                  srl          a7, s8, a6
                  ori          s1, s6, 553
                  slt          a5, a3, ra
                  slti         a5, t0, 1433
                  srli         a0, a0, 16
                  slt          s3, gp, ra
                  sra          t6, t3, a6
                  auipc        s1, 717787
                  slti         a2, a5, -1579
                  sra          s5, a6, a0
                  slli         zero, a7, 26
                  lui          s5, 719137
                  and          a1, a3, a4
                  srl          t6, t0, t4
                  sltiu        t4, s11, -302
                  slli         sp, zero, 28
                  xori         sp, a2, 1652
                  sltu         t0, a6, t0
                  slti         zero, s7, -1233
                  sll          a4, a5, s11
                  sub          s3, t6, s0
                  ori          t0, tp, -1088
                  addi         s3, t6, -483
                  sub          s11, s10, a6
                  slt          t5, s10, s7
                  sll          a5, t0, gp
                  andi         s4, s0, -1035
                  slti         a3, a6, 570
                  slti         a5, a6, 912
                  addi         ra, gp, 675
                  slli         a5, s3, 20
                  srli         a1, s9, 18
                  slti         s4, s5, -2016
                  sll          gp, s9, s7
                  and          ra, zero, s0
                  srai         a7, t6, 23
                  sra          a1, s3, a1
                  and          a3, s3, s2
                  sll          ra, t2, a4
                  srli         a1, s2, 13
                  slt          zero, s1, a3
                  lui          t4, 527601
                  nop
                  srl          zero, a6, s7
                  sra          t5, a5, t2
                  nop
                  and          a4, t5, a3
                  sltu         s9, t4, a7
                  andi         t4, t4, 1695
                  nop
                  sltu         t4, a3, s8
                  sltu         zero, s0, s11
                  sra          ra, t1, s5
                  slli         a6, gp, 3
                  xor          gp, s10, tp
                  ori          s9, t6, -143
                  sra          t3, s0, a6
                  and          s1, a0, a7
                  sra          t0, s4, ra
                  andi         s10, t6, 1410
                  or           s9, a3, a6
                  lui          a2, 752170
                  andi         s11, a3, 696
                  srli         t2, tp, 0
                  lui          t1, 645455
                  slli         s4, t0, 31
                  add          sp, t0, s9
                  sltu         s1, t0, t5
                  sltu         t5, t1, s1
                  slli         a2, t5, 15
                  sll          s10, ra, s8
                  slt          s10, s3, t5
                  and          s1, t4, s5
                  or           t4, t6, a2
                  srli         s3, t1, 18
                  srl          t3, gp, s1
                  sra          a5, sp, s6
                  addi         s8, s3, -1779
                  slti         t6, s3, 1750
                  srli         ra, t5, 24
                  sltu         t3, sp, a3
                  and          s10, s6, s0
                  sltiu        s8, zero, 156
                  sra          s4, zero, t3
                  srl          t3, zero, s9
                  sltiu        s8, t1, -1918
                  sub          s4, t4, t6
                  sll          a2, t6, t3
                  lui          t0, 534319
                  add          a6, t3, s11
                  sltiu        s4, t0, 1738
                  auipc        s6, 354951
                  add          gp, s1, s10
                  srl          a5, t2, t3
                  auipc        t5, 354777
                  add          a3, t2, sp
                  andi         t2, s4, -1776
                  addi         t3, a3, 77
                  nop
                  auipc        a5, 117361
                  sub          s6, s10, s11
                  auipc        s10, 380779
                  ori          gp, t4, -220
                  sltu         s5, a3, t5
                  auipc        s1, 138666
                  xor          a2, t1, s11
                  addi         t6, a7, 1621
                  xor          s6, zero, t5
                  sltiu        a6, t5, -1007
                  sub          t2, s6, a5
                  andi         a1, t4, -1587
                  slt          zero, t1, t1
                  add          t1, s4, s2
                  xor          a4, s0, a2
                  slt          sp, a7, a3
                  srli         a2, ra, 5
                  add          sp, s11, a6
                  xori         s2, gp, -525
                  srl          s8, a5, sp
                  sltiu        a7, t3, 1497
                  sltiu        t4, t6, 28
                  slti         s11, t1, -2009
                  sra          a4, t2, t5
                  slti         a6, s0, -75
                  slti         t1, ra, 1644
                  and          s4, a6, tp
                  sra          t3, t5, s7
                  srl          gp, a3, a1
                  sll          s9, t3, s1
                  lui          zero, 10644
                  srli         s1, s9, 25
                  sltiu        s5, s7, 569
                  sll          s11, t2, tp
                  srai         t5, a3, 2
                  sltiu        s3, a4, 1220
                  slli         t0, s11, 10
                  add          s2, a7, t6
                  auipc        t4, 349716
                  sra          zero, s2, s1
                  slli         t3, t3, 25
                  slt          t4, s6, s5
                  ori          s8, s3, -14
                  xori         a5, s3, 1178
                  nop
                  slli         t4, a5, 26
                  sub          t5, s0, s6
                  or           t1, s11, t3
                  xor          s4, t3, a6
                  slli         s2, t3, 23
                  nop
                  srli         t6, s6, 12
                  xori         a2, a0, -1873
                  slti         ra, s2, 1673
                  sra          a3, s3, s8
                  sltiu        s2, t5, -177
                  auipc        a6, 128948
                  auipc        a0, 568305
                  andi         s9, a4, 977
                  sltu         a1, s4, s1
                  srli         t0, t2, 11
                  addi         t4, s9, 2012
                  or           t6, t6, s4
                  sll          a5, t4, s3
                  add          ra, a2, t6
                  slti         s1, s3, 971
                  sltu         a5, s4, a6
                  srai         ra, a3, 9
                  sltiu        s11, a1, -534
                  xori         t4, a4, 1193
                  srai         a2, s5, 0
                  and          s3, a1, t6
                  srli         gp, t3, 27
                  sltu         t4, s1, t3
                  slli         zero, s1, 4
                  slti         s9, t6, -321
                  ori          a2, t0, 1242
                  addi         sp, a3, 757
                  slti         s10, a0, -1167
                  or           s11, s5, s3
                  nop
                  srai         gp, a0, 27
                  slti         s4, s5, 278
                  sltiu        a0, a7, 124
                  lui          s3, 827503
                  slti         t4, t2, 1577
                  add          a6, t0, s8
                  slli         t2, tp, 16
                  slt          s1, s9, s1
                  andi         a5, a1, -1025
                  nop
                  srl          t1, t4, zero
                  xori         a5, t4, 723
                  slt          zero, a2, s8
                  srai         s10, s0, 25
                  or           a7, s11, a6
                  auipc        t0, 424867
                  sltu         s2, t6, a4
                  slti         a7, zero, 1877
                  sll          t4, s7, s8
                  sltiu        a4, s10, -37
                  srai         s8, zero, 27
                  sltu         a5, a7, a0
                  srli         s2, t4, 8
                  nop
                  slti         a6, s4, -1205
                  slti         s1, s10, -1178
                  and          s8, t2, s8
                  sub          t1, s0, s11
                  slt          s10, s8, a5
                  addi         a4, t3, -1400
                  srli         zero, s0, 18
                  xor          s4, a1, t6
                  andi         t6, tp, 397
                  slti         ra, ra, 690
                  slt          gp, a2, s4
                  xori         s4, t6, -1636
                  sltiu        sp, s7, 1827
                  xor          a4, gp, a7
                  xor          a0, a2, s10
                  sll          s8, s8, s9
                  slli         t1, s6, 12
                  slt          s9, a1, t6
                  sltiu        gp, tp, 380
                  sll          a7, s10, t1
                  srai         a0, s7, 27
                  auipc        s9, 312
                  sra          a1, s0, a4
                  and          s6, a7, gp
                  slli         a0, t6, 18
                  nop
                  sra          s8, t6, a2
                  xor          t6, s0, a4
                  andi         t2, a4, 878
                  sltu         ra, ra, zero
                  lui          a7, 1030058
                  slli         s4, s3, 2
                  xori         t4, s2, 997
                  addi         a0, t3, 2019
                  srai         a7, s8, 25
                  sltu         s8, a4, a3
                  sub          a2, gp, s1
                  slli         a7, a7, 22
                  lui          t4, 335151
                  srai         s3, t6, 3
                  ori          s9, t5, 1029
                  sra          gp, t6, s1
                  xor          s3, s9, s2
                  addi         t0, gp, 1596
                  sltiu        s5, s0, 1907
                  sll          s4, t0, s1
                  xor          a0, s0, t2
                  sll          ra, sp, ra
                  slli         a3, sp, 6
                  slli         s9, t2, 15
                  andi         s9, a4, 1099
                  sra          s6, s4, ra
                  slli         t6, s0, 19
                  slti         s8, a4, 352
                  xori         t6, t3, -1940
                  xor          t6, gp, s7
                  ori          s2, ra, -1153
                  sll          s5, a7, a0
                  sll          s4, a2, s11
                  srl          s8, a6, a1
                  nop
                  srl          a0, s7, a5
                  and          s2, s0, s0
                  slti         a0, s9, -1925
                  sub          a1, a2, s2
                  slli         s6, s3, 22
                  srai         a2, t6, 12
                  xor          s3, s8, t5
                  srli         t6, a4, 10
                  slti         a4, s3, -1906
                  nop
                  nop
                  sltiu        s8, s0, 1690
                  auipc        t4, 382029
                  slti         s2, a2, -1363
                  slti         zero, a3, -740
                  xori         s6, s5, -447
                  sub          s3, sp, t2
                  sub          a7, t0, t5
                  sll          sp, s8, s11
                  auipc        ra, 826090
                  ori          t3, t0, 514
                  or           t3, a3, s1
                  sra          zero, t3, s1
                  nop
                  srli         a7, a4, 18
                  and          a1, t6, t2
                  nop
                  slti         a2, a4, 273
                  ori          a5, t4, -1679
                  lui          a4, 694936
                  slti         a1, s6, -1162
                  lui          t3, 217074
                  sll          a3, t3, a6
                  xori         t5, t3, 467
                  sra          ra, a6, s5
                  sub          s2, a1, t2
                  xori         t0, s5, -1743
                  add          a7, a3, s9
                  auipc        s8, 77506
                  srl          t0, s8, s11
                  srai         s6, t5, 16
                  srl          t3, a0, t2
                  ori          a2, t3, -1489
                  sll          t3, a3, s11
                  andi         s11, sp, -1647
                  and          s10, s11, a3
                  slli         s6, t5, 11
                  andi         s5, zero, -123
                  srai         s4, s1, 27
                  nop
                  srli         t3, s3, 14
                  xor          t1, s11, s8
                  slti         a4, a2, 149
                  srl          s5, tp, t0
                  srli         t1, a1, 11
                  sub          t3, t1, s4
                  andi         sp, zero, 1661
                  sll          s3, s10, sp
                  xori         a5, sp, -183
                  or           t0, a2, t0
                  andi         a3, s9, 1498
                  sltu         a7, ra, s9
                  sub          s9, s5, a1
                  srai         t3, s8, 15
                  add          a7, zero, sp
                  nop
                  nop
                  and          t4, s1, s10
                  add          t5, s11, s8
                  ori          a0, s11, 921
                  sltiu        ra, a7, -102
                  srai         s1, s8, 8
                  auipc        t3, 727836
                  lui          a4, 135689
                  slti         t3, s10, 943
                  andi         a7, a6, -1828
                  sltu         s5, a2, t3
                  xori         a5, s10, 856
                  sltiu        zero, a4, 297
                  srl          a4, s8, t5
                  ori          a4, s11, -722
                  add          t0, gp, t4
                  srli         t2, a3, 8
                  srai         sp, s8, 17
                  srli         s10, s7, 4
                  srl          s4, gp, tp
                  sltiu        s5, s5, -630
                  or           t4, t5, s11
                  srli         t3, tp, 4
                  andi         ra, a6, -575
                  addi         a6, a2, 1434
                  slti         a0, s1, 603
                  and          s1, a2, s5
                  add          a3, s4, t2
                  sll          t4, a7, ra
                  auipc        s9, 665939
                  nop
                  xor          sp, t5, s2
                  or           s3, t4, s7
                  slt          s8, s0, a0
                  xor          zero, s1, sp
                  ori          a3, s1, 152
                  sra          s3, s7, a0
                  slti         a3, s7, 1605
                  andi         s9, s8, 613
                  add          t6, t4, a1
                  slli         s11, t6, 7
                  slt          s5, a2, s0
                  srli         s1, a0, 0
                  sra          a6, s0, a4
                  srai         s10, t5, 7
                  lui          a5, 958320
                  srli         s5, s10, 17
                  and          s1, s10, s8
                  ori          ra, s6, -1367
                  xor          gp, t5, s10
                  xor          s11, s3, s5
                  srli         s2, s8, 24
                  slli         t6, zero, 11
                  srai         zero, a4, 21
                  srai         t4, s7, 12
                  sll          t0, a5, sp
                  xori         s10, s11, -1289
                  xor          sp, tp, s10
                  sra          t6, tp, s2
                  and          s11, a0, t1
                  nop
                  slt          t4, sp, t2
                  sltiu        t4, a5, 132
                  srai         t6, t2, 1
                  addi         a5, s11, 752
                  auipc        t6, 222652
                  add          a5, s9, s4
                  srli         s3, zero, 27
                  addi         zero, s11, -1470
                  srai         s1, a6, 2
                  sltu         sp, t0, a3
                  add          s4, t4, a2
                  sll          zero, a1, s6
                  andi         s5, t1, -584
                  xor          a4, t2, s5
                  auipc        a1, 95221
                  slti         gp, s3, 716
                  xori         s3, s1, 1888
                  slli         s10, s5, 2
                  or           t2, s10, t5
                  sra          a4, a3, zero
                  add          a4, gp, t0
                  and          s9, a6, a7
                  srai         s11, a2, 5
                  xori         a2, s3, 512
                  srli         t5, s3, 13
                  xori         s10, gp, -1033
                  slti         s8, zero, -1110
                  sll          t5, s9, a7
                  andi         s10, a1, -1488
                  srli         a0, s0, 20
                  or           s6, t1, s9
                  andi         a5, s1, -1270
                  sltu         t5, s2, a5
                  xori         t4, t5, -1413
                  and          a3, a5, t1
                  sra          a4, a2, a6
                  lui          a3, 616162
                  sltiu        s1, s7, 547
                  slt          ra, a6, s6
                  sub          a3, a5, s1
                  srli         a6, s1, 21
                  addi         s4, a6, -513
                  slli         s11, a5, 18
                  or           a6, s9, t5
                  andi         a3, s1, -656
                  add          a4, s6, t4
                  srl          a5, t3, s2
                  sra          s10, t0, a1
                  xor          ra, s3, s6
                  sltiu        t6, gp, 1200
                  slti         ra, tp, -280
                  sltu         s8, s3, s0
                  sltiu        s4, t3, -700
                  auipc        t0, 498725
                  andi         t1, s2, 1311
                  xor          t4, s11, a4
                  addi         s4, a4, 800
                  slt          a1, t5, t3
                  srli         t4, t2, 28
                  andi         s8, a3, 556
                  sltu         t4, a6, s5
                  slli         s1, tp, 26
                  sltu         a7, s7, t3
                  addi         a3, t5, 327
                  addi         s3, s11, -753
                  sll          t2, a2, a4
                  andi         a7, a0, 1425
                  addi         zero, s7, -659
                  add          t2, a2, a2
                  ori          a3, a5, 755
                  xori         a7, s1, 1254
                  nop
                  srli         t5, sp, 1
                  addi         gp, t1, -937
                  lui          a0, 661729
                  sra          t5, t4, a6
                  sll          a5, s6, s5
                  sub          a4, t2, t0
                  xor          a0, a4, a0
                  srai         a3, s2, 4
                  srli         t4, s9, 10
                  srli         s6, s1, 30
                  nop
                  andi         t1, s0, -827
                  sra          sp, t1, a5
                  slli         s4, s6, 2
                  sltu         a5, s5, a6
                  sltiu        s6, s6, 286
                  srl          a0, ra, t5
                  sra          a1, s2, s1
                  lui          a0, 632433
                  sltu         a0, t5, s11
                  xor          sp, gp, s8
                  auipc        t0, 902957
                  xor          s3, sp, s4
                  ori          s1, t2, -1446
                  sra          s9, s0, a3
                  sra          sp, s6, t5
                  slli         s9, a0, 12
                  or           a2, ra, a7
                  and          ra, s0, s6
                  sra          t6, gp, t1
                  sltiu        a4, a7, -918
                  srl          a7, s11, tp
                  ori          s11, s4, 123
                  srli         s9, s11, 3
                  sub          s2, s11, sp
                  xori         t1, t1, 1062
                  srli         a4, sp, 8
                  xori         s10, a5, -1523
                  lui          s11, 348904
                  sub          s1, sp, t0
                  sltu         s3, a3, t1
                  xori         s1, s10, 141
                  add          a3, a4, t4
                  sll          a1, s2, tp
                  sra          a4, t3, s9
                  sra          s10, s10, s1
                  ori          a0, t6, -1331
                  andi         a5, a4, -1739
                  xori         a0, s9, -1345
                  sltu         s10, s3, s0
                  sltu         s8, t1, s3
                  lui          t2, 379390
                  auipc        s11, 710316
                  xori         t5, s9, 1690
                  slti         t6, s0, 352
                  srai         t3, a5, 26
                  lui          a6, 421347
                  addi         s1, t3, 1909
                  or           s11, s3, tp
                  or           ra, t0, t0
                  srai         t0, s1, 23
                  xor          sp, s8, s5
                  srl          s11, t3, gp
                  srli         a5, t1, 14
                  slli         s4, s10, 14
                  sltu         s1, a1, s11
                  auipc        a2, 162586
                  lui          s2, 43989
                  andi         a6, a4, -1748
                  slt          s4, t3, s2
                  lui          a3, 735268
                  slt          s6, s2, t0
                  srli         s11, s1, 29
                  sltiu        s6, gp, -1095
                  slli         a3, ra, 28
                  and          a2, t6, t1
                  andi         a0, t3, 115
                  andi         sp, s7, -1760
                  slli         s3, s10, 16
                  nop
                  or           t1, s8, a1
                  and          ra, a4, t1
                  lui          t5, 587418
                  slti         a5, s7, 1253
                  sra          t3, a7, t3
                  slti         a6, ra, 13
                  slti         s4, sp, 1689
                  xor          s8, t0, s5
                  add          a6, a3, s7
                  sub          s2, a7, s8
                  and          ra, zero, gp
                  nop
                  sltu         s6, a7, s11
                  slti         s8, s9, 1643
                  slt          a0, a4, a2
                  sra          s3, s3, s11
                  sltu         t0, a7, s5
                  sltiu        s2, s3, 1934
                  add          a2, a3, sp
                  slli         t3, a0, 12
                  srli         a3, ra, 24
                  auipc        s4, 370639
                  sra          ra, s3, s7
                  or           a1, s4, gp
                  lui          s9, 1017202
                  srai         s6, sp, 19
                  andi         t2, s7, -394
                  andi         s1, a7, -961
                  sll          a7, a7, t2
                  and          s10, s7, zero
                  addi         a7, a0, -199
                  slti         a3, a4, -1075
                  sub          t0, s5, a0
                  sll          s8, t5, s9
                  srl          s6, a2, t5
                  xor          a5, s1, a4
                  sltiu        a3, sp, -57
                  sltu         a1, t4, a1
                  slti         t1, tp, 635
                  srai         gp, a7, 27
                  srai         zero, s1, 21
                  xor          a2, s0, a2
                  andi         a6, ra, 427
                  or           zero, a2, s3
                  auipc        s2, 920872
                  slt          t4, s1, ra
                  srai         a0, s10, 29
                  xori         s6, s11, -848
                  sll          gp, s4, a5
                  slli         a7, s0, 5
                  slli         a0, s6, 23
                  auipc        s1, 68634
                  ori          a1, s6, -258
                  srli         s3, a2, 24
                  sub          s10, ra, t3
                  ori          s8, t6, -912
                  sltiu        t6, s6, -1032
                  xor          a3, a5, s0
                  sltu         a6, a2, s8
                  sll          s9, gp, a3
                  ori          a3, a1, -1871
                  sra          a3, a1, t3
                  xor          s6, s4, a5
                  addi         sp, s6, 559
                  ori          s5, s2, 583
                  and          s11, gp, s2
                  nop
                  auipc        sp, 800790
                  sltu         sp, zero, s5
                  slli         a2, s11, 27
                  slti         t1, s5, -1051
                  or           s1, a4, t3
                  slti         t6, s8, -1105
                  srl          sp, s5, t4
                  sll          s9, s1, a2
                  and          t4, sp, a7
                  srli         sp, t1, 6
                  slti         s9, a1, -444
                  xor          sp, a3, a2
                  auipc        s1, 719697
                  ori          t6, s3, -318
                  sltiu        a4, a5, -1192
                  srli         t6, a3, 18
                  sll          a7, a4, s0
                  sub          t0, s6, s7
                  sltiu        a4, a5, -1243
                  slli         s6, s8, 22
                  sll          t2, s1, a0
                  addi         t3, tp, -1013
                  sra          gp, t2, t3
                  srai         s2, s6, 18
                  xor          a2, s0, a3
                  sltu         t0, ra, t0
                  sub          t1, t2, a6
                  xor          s6, s10, gp
                  and          t6, s8, a4
                  lui          a5, 901571
                  or           t6, a0, a4
                  srl          s6, s9, ra
                  xor          t2, s11, a6
                  or           a0, ra, a2
                  sll          ra, s10, s1
                  li           a4, 0x80000000 #start riscv_int_numeric_corner_stream_16
                  li           t5, 0xffffffff
                  li           t3, 0x80000000
                  li           s5, 0x789adaeb
                  li           t4, 0x0
                  li           sp, 0x0
                  li           t6, 0x792e9a3
                  li           t1, 0x7c760ec6
                  li           s11, 0x3647a9dc
                  li           a6, 0x80000000
                  add          a6, s11, s11
                  sub          t1, t3, t5
                  sub          s11, s11, t5
                  nop
                  lui          t1, 86696
                  nop
                  lui          s11, 601266
                  nop
                  add          t6, a4, t1
                  nop
                  auipc        a6, 975340
                  nop
                  auipc        s5, 807244
                  addi         sp, t3, 1208
                  addi         s5, t4, -101
                  addi         sp, s5, -194
                  nop
                  sub          sp, t4, t1
                  sub          sp, s11, a6
                  addi         t3, t5, -262
                  sub          t6, sp, t4
                  sub          t4, t1, t6
                  add          sp, t4, s11
                  sub          t1, t5, a6
                  sub          t6, t4, t4 #end riscv_int_numeric_corner_stream_16
                  sub          s5, s1, a7
                  add          s5, a1, sp
                  and          a1, a7, t3
                  xori         s5, t2, -1161
                  srl          zero, a2, tp
                  addi         s6, gp, 666
                  nop
                  and          a7, s2, s1
                  slt          t2, zero, s7
                  addi         s9, tp, -1632
                  sra          s8, t0, t0
                  sltu         a6, t3, sp
                  andi         s8, s5, -138
                  sltiu        t1, s6, -1639
                  auipc        a6, 574113
                  xor          t6, a2, t2
                  andi         s5, t2, 823
                  sub          zero, a7, s7
                  ori          t1, s4, 771
                  xori         gp, t6, 1023
                  nop
                  xori         a2, a2, 696
                  sra          gp, s2, s11
                  sll          a6, s8, gp
                  addi         s10, gp, -1400
                  sra          zero, t1, a0
                  sltiu        gp, a0, -1821
                  sltiu        a6, s11, 617
                  nop
                  slt          a4, zero, s11
                  srai         a5, s8, 30
                  sltiu        s2, a2, -1639
                  slt          a6, a7, s4
                  slti         t3, s10, 1465
                  and          s3, tp, s9
                  sra          a0, s8, a0
                  xori         t5, gp, 444
                  srl          ra, a7, s10
                  sub          s8, sp, s5
                  slti         a5, a1, 605
                  or           s3, t3, sp
                  or           t1, a2, tp
                  nop
                  or           t1, a4, t1
                  lui          t2, 947783
                  xori         a2, s0, 1409
                  srli         a3, s2, 3
                  lui          zero, 551643
                  srl          s4, gp, t0
                  ori          s8, gp, 1146
                  ori          s8, s6, 1262
                  auipc        t0, 122902
                  slti         ra, s7, 18
                  sll          s11, a6, s0
                  sll          s2, s3, s0
                  and          zero, s1, a7
                  sub          s5, s10, a0
                  and          ra, s11, t1
                  sltu         t2, s4, s4
                  or           a3, t2, t5
                  slt          zero, t0, t4
                  nop
                  sra          s2, t6, a2
                  auipc        s8, 945386
                  lui          s5, 321620
                  andi         t1, s5, 1596
                  xori         t0, a6, -463
                  lui          s1, 698625
                  add          s10, s10, a7
                  or           s1, s5, s7
                  add          t0, t6, a2
                  srai         a6, a3, 14
                  and          s6, tp, s3
                  sltiu        t2, s11, -1945
                  andi         gp, s4, -805
                  and          s2, a0, zero
                  sra          a1, sp, s2
                  or           t5, a7, t0
                  andi         zero, tp, 263
                  xori         a0, t6, 1984
                  sra          a5, a5, a4
                  sltu         t1, t1, s2
                  add          ra, s0, s2
                  srli         a3, a5, 17
                  srl          s3, t4, t3
                  or           s6, t6, s6
                  sra          a4, s9, s4
                  sltiu        t0, a2, 169
                  sltu         s11, s8, s4
                  sltu         t5, t3, ra
                  or           a5, s7, s5
                  auipc        s1, 661813
                  sub          zero, gp, s11
                  srl          s5, s0, s6
                  sltiu        a2, a6, -1316
                  xor          s5, gp, t5
                  auipc        a0, 975572
                  slt          gp, s9, t3
                  sub          s10, t5, s10
                  auipc        t2, 376198
                  xor          a2, s7, a3
                  xor          t4, gp, s4
                  andi         s11, t5, 1949
                  auipc        a1, 393831
                  auipc        sp, 294383
                  srl          ra, s1, t4
                  slli         t6, t5, 19
                  lui          s9, 855651
                  sll          s1, a5, ra
                  xor          t2, t5, s9
                  slti         gp, t0, -516
                  auipc        a0, 553587
                  slli         a7, s1, 29
                  sltiu        t6, s5, 1835
                  ori          a6, s9, 1696
                  srai         s4, s3, 12
                  srai         sp, t1, 8
                  xori         s6, a4, 1133
                  srl          t3, a1, a4
                  or           a6, a0, t0
                  slt          s6, t5, s9
                  sltiu        ra, ra, 31
                  or           t5, a4, s8
                  sra          s3, gp, s6
                  slt          s9, s10, a2
                  sltiu        s10, s2, 898
                  add          s9, a7, s2
                  sub          a0, t2, s8
                  andi         a6, s8, 383
                  addi         a4, s6, -1578
                  ori          sp, a1, -349
                  or           a5, t1, s1
                  srl          s10, a4, tp
                  sra          s4, zero, s10
                  ori          gp, gp, 1468
                  sra          s5, sp, t1
                  slt          s5, s5, a1
                  andi         a4, s0, -1914
                  sltiu        s6, s5, -881
                  sra          ra, gp, s6
                  slt          a0, s8, a2
                  sra          a1, s1, s5
                  sltu         zero, s0, t1
                  sub          a4, a4, a2
                  slti         zero, s0, -1195
                  or           sp, a2, s8
                  srli         s3, s6, 8
                  auipc        s2, 156049
                  andi         a6, s2, 2007
                  add          s9, t0, tp
                  srai         t5, s4, 3
                  xor          s11, s2, a5
                  or           t6, ra, a3
                  auipc        a7, 852809
                  nop
                  ori          zero, s4, 430
                  sltu         s3, zero, a5
                  srl          t1, a5, ra
                  srl          a1, a1, a7
                  srl          s4, t6, s5
                  addi         gp, a0, -2016
                  slt          a7, a4, a3
                  slti         a0, gp, 341
                  slti         s8, zero, 1450
                  sub          s4, s5, gp
                  slt          a6, a5, tp
                  nop
                  andi         t1, a5, -377
                  xor          s9, a2, s1
                  sra          s11, t5, a0
                  sltu         gp, a1, t5
                  andi         s2, s1, 1917
                  slti         sp, s1, 1411
                  srli         t5, gp, 20
                  slti         s8, s6, -606
                  xori         a1, t3, -1585
                  and          s5, t1, s11
                  andi         a0, t0, -252
                  nop
                  sra          a1, s8, a5
                  auipc        s4, 524248
                  sltiu        s6, a0, -361
                  sltu         t2, s3, ra
                  or           s8, s2, s2
                  or           a0, s8, t6
                  srl          t3, s1, ra
                  slti         gp, s4, 1056
                  srli         s10, sp, 11
                  sltiu        sp, s0, 1240
                  ori          a1, s11, -1411
                  auipc        s5, 33696
                  srai         s1, s6, 18
                  auipc        s5, 196816
                  slli         s5, a5, 19
                  nop
                  nop
                  slti         zero, a4, -1632
                  xori         s9, s9, 1895
                  auipc        s10, 812770
                  or           zero, s11, tp
                  ori          s11, s9, -699
                  auipc        ra, 1014508
                  ori          s4, t0, -1389
                  andi         s10, t1, 1987
                  xori         s6, sp, -462
                  add          t2, t3, s5
                  sltu         t1, s2, ra
                  or           a6, zero, s2
                  lui          a1, 895199
                  and          s1, tp, t1
                  sll          a6, a6, t3
                  slt          gp, tp, tp
                  xor          a1, s8, s8
                  add          a4, s3, s9
                  lui          a7, 80052
                  xori         s4, s1, -2006
                  sltu         s8, s9, s2
                  srli         zero, s7, 13
                  addi         zero, a2, 127
                  addi         s11, s1, 826
                  xor          s3, s9, a0
                  sltu         a4, t0, tp
                  srai         a7, s7, 29
                  auipc        t0, 439382
                  slti         a3, a6, -34
                  slti         a0, a6, 493
                  and          a4, gp, s5
                  slti         t3, s4, -908
                  sub          zero, t5, t3
                  xor          s3, t0, s10
                  ori          sp, sp, -307
                  sub          s1, s5, t0
                  and          s2, s3, t1
                  slt          ra, a0, a6
                  xor          t6, t4, gp
                  srl          s10, tp, a6
                  xor          a5, s1, s11
                  auipc        s2, 464656
                  slli         t0, a4, 8
                  and          t5, s11, s7
                  sltu         t1, gp, t6
                  sltiu        ra, tp, -1692
                  xor          s3, s9, a3
                  xor          a5, a7, gp
                  ori          a1, zero, 1711
                  nop
                  nop
                  andi         a2, s11, -136
                  auipc        s2, 170451
                  addi         t6, a2, -1251
                  srai         s8, a2, 24
                  or           sp, a2, s10
                  srl          t6, a3, a6
                  slli         t2, s2, 26
                  ori          a1, s9, 1825
                  addi         s3, s8, 192
                  sub          s4, s6, t2
                  srli         a3, a6, 25
                  sll          a6, s4, s6
                  add          s9, s3, a5
                  srai         a5, s0, 5
                  sltu         s8, s2, s5
                  sltu         a5, t6, t2
                  auipc        a0, 650652
                  srai         s5, s7, 10
                  sll          t0, a3, s10
                  auipc        t4, 865279
                  slt          t5, a1, a3
                  sub          t4, a2, s3
                  nop
                  nop
                  auipc        t0, 948304
                  xor          s5, s6, t0
                  xor          t4, s3, a4
                  nop
                  nop
                  sltiu        a0, s0, 555
                  sub          s8, gp, ra
                  sll          t3, s8, zero
                  sra          s10, a3, t4
                  andi         gp, t0, 1326
                  sub          s2, s8, s1
                  lui          a5, 532086
                  sra          s5, s5, ra
                  auipc        a6, 405157
                  xori         s1, a5, -264
                  srl          s3, s1, s7
                  srl          t3, t5, a4
                  srli         a2, s10, 10
                  addi         t4, s6, 1540
                  li           gp, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           a5, 0x0
                  li           a1, 0x80000000
                  li           t3, 0x0
                  li           a4, 0xffffffff
                  li           t6, 0x0
                  li           s5, 0xffffffff
                  li           ra, 0x0
                  li           a6, 0xffffffff
                  li           s11, 0xffffffff
                  auipc        gp, 821023
                  lui          s11, 1025249
                  auipc        s5, 894852
                  auipc        a5, 447823
                  addi         s11, a6, -1796
                  sub          t6, a6, t6
                  lui          a4, 513295
                  auipc        a5, 285027
                  addi         a5, a6, 732
                  add          gp, gp, t6
                  nop
                  addi         ra, t3, -542
                  lui          a1, 64679
                  lui          a1, 933269
                  auipc        a6, 759074
                  nop
                  sub          t6, s11, a5
                  nop
                  addi         gp, a4, -1681
                  nop
                  lui          a5, 916628
                  nop
                  auipc        a6, 84583
                  lui          a4, 82425
                  nop #end riscv_int_numeric_corner_stream_6
                  srai         s2, s0, 31
                  sll          a4, t5, s6
                  or           a6, s6, t2
                  nop
                  andi         s1, s8, 1849
                  srai         s9, t4, 13
                  srl          t6, sp, s3
                  srl          a7, a0, a5
                  xori         s10, s3, -1348
                  and          t0, a5, a1
                  xor          s4, s6, s4
                  sltiu        t0, t0, -1152
                  srl          a0, a3, s11
                  andi         s6, s11, -1707
                  xori         s1, s11, 1775
                  sub          s3, s11, t5
                  addi         ra, s6, -18
                  srli         a5, s6, 25
                  srai         a6, s5, 2
                  andi         gp, a3, -104
                  slli         a6, a7, 31
                  add          a2, zero, s9
                  or           s1, a3, t4
                  srli         s9, t6, 17
                  sra          s2, t3, ra
                  slt          t0, a4, s6
                  sub          a4, s0, a2
                  addi         a3, s11, 315
                  sltiu        a7, t3, -988
                  addi         s6, t0, 1446
                  slti         s1, zero, -137
                  sub          gp, a7, tp
                  or           ra, a4, gp
                  xor          t5, s8, s5
                  lui          s6, 235681
                  addi         zero, s0, 803
                  slti         s9, a7, -1467
                  or           a0, t3, a6
                  or           s8, t0, s8
                  nop
                  srl          s10, zero, s10
                  sra          a0, a3, s3
                  srli         a5, s6, 18
                  or           a7, t0, a7
                  lui          a5, 686707
                  srli         a2, t6, 31
                  or           t5, s10, s3
                  ori          a7, a6, -504
                  xor          t3, s0, a2
                  sra          a4, s3, a2
                  srl          s4, a5, s5
                  sltiu        zero, t2, -1779
                  andi         t4, t5, -494
                  sltiu        a5, s4, -335
                  xori         a4, s0, 1852
                  addi         t0, s9, 1562
                  srl          t1, zero, a1
                  add          a3, s3, s3
                  srli         sp, a7, 27
                  slt          s5, s8, t0
                  srl          s10, a6, sp
                  slti         s11, t1, -1646
                  sltiu        t0, t4, 1996
                  srai         gp, t3, 13
                  add          t2, s5, a2
                  sll          t4, a3, s7
                  slt          s4, zero, t0
                  nop
                  xor          s10, s4, a7
                  slti         sp, sp, -165
                  slli         s3, s3, 27
                  sll          gp, s7, s5
                  add          s8, t0, s8
                  xor          s5, s11, s3
                  nop
                  add          sp, a6, t3
                  slti         a3, s1, 77
                  ori          t4, gp, -961
                  slti         a1, s11, 162
                  srli         s11, a7, 12
                  sltu         a0, s6, s1
                  auipc        t1, 131302
                  sub          s4, s7, a2
                  add          s4, a0, a4
                  slt          t0, a0, s6
                  srai         t1, s10, 24
                  and          a1, s11, s9
                  srl          t3, s0, gp
                  sub          s5, t1, a3
                  srli         s6, s4, 14
                  sltiu        t1, tp, 1895
                  sra          t0, t3, s3
                  xori         a6, t3, -1024
                  slli         s2, t3, 19
                  or           a0, t4, s2
                  sltu         a5, a1, ra
                  sra          gp, a1, a4
                  slti         a4, a3, -122
                  srl          s4, s7, s11
                  sra          s6, s3, s4
                  srli         s4, ra, 5
                  auipc        a6, 479490
                  slti         ra, t3, 584
                  sltu         ra, a3, s3
                  addi         sp, a6, 1246
                  sltu         a4, s2, s7
                  lui          s1, 393689
                  addi         sp, s11, -207
                  sub          ra, ra, a0
                  slt          t2, s2, s8
                  sltiu        gp, t6, 626
                  addi         t4, t5, 740
                  sll          s8, t1, a1
                  sub          a3, s11, s4
                  sll          a4, a0, s6
                  auipc        a2, 453035
                  sll          s9, a1, s1
                  ori          t2, a3, -1531
                  sltiu        s1, a4, -393
                  auipc        s8, 336569
                  srl          s2, s8, s5
                  xori         t6, a1, -1464
                  srai         a3, s7, 26
                  nop
                  and          ra, t6, t6
                  srli         s10, s9, 16
                  sltu         a7, t3, a1
                  addi         a5, a1, -1255
                  sltiu        t3, a2, 1857
                  srai         zero, t4, 3
                  nop
                  srli         a6, t3, 14
                  slli         t2, s0, 11
                  auipc        s6, 7017
                  add          s10, t6, a0
                  xori         a3, tp, -405
                  andi         a2, a2, 1755
                  xori         s6, s7, -1
                  sltiu        a5, s11, 173
                  andi         s5, s3, -1372
                  add          t4, a6, s2
                  xori         a6, s1, -242
                  sltu         t3, t0, s1
                  slti         t2, s3, 1711
                  slt          s1, a7, a2
                  sltiu        s1, a3, 592
                  lui          t3, 468259
                  slt          a1, a0, t3
                  slt          t5, s2, a0
                  addi         s4, s2, -263
                  slt          s8, s0, a6
                  lui          s10, 621271
                  sltiu        gp, s3, 1122
                  xor          t6, s5, s3
                  or           a5, s6, a1
                  or           s11, a4, s8
                  xori         a7, s5, -161
                  auipc        a4, 503637
                  add          a2, zero, tp
                  xor          t0, s8, gp
                  or           zero, s3, t3
                  sub          a1, a0, s9
                  xori         a1, s5, 2015
                  srl          zero, s6, s6
                  xor          s8, t6, a4
                  srli         a2, s4, 16
                  andi         a7, s9, -512
                  slt          s5, s8, tp
                  add          s1, s10, s6
                  lui          a3, 977508
                  and          a0, t5, s0
                  slt          t1, s7, a5
                  and          t0, a0, s3
                  auipc        s4, 755656
                  srl          a5, sp, s4
                  srli         s8, zero, 15
                  sra          a1, sp, s7
                  nop
                  lui          a5, 364563
                  auipc        a7, 660327
                  sltiu        a4, zero, -1742
                  sltiu        ra, a5, -702
                  sltiu        s11, sp, -290
                  nop
                  srli         a1, s8, 30
                  and          s6, a3, a1
                  xori         s4, zero, -942
                  addi         t5, s0, -1536
                  sll          s3, s4, s4
                  slti         s1, s2, 869
                  add          a5, s6, t5
                  slti         s6, a6, 1032
                  sltu         a5, s2, s3
                  auipc        a6, 423194
                  sra          s10, s8, a4
                  nop
                  sltu         s3, s7, tp
                  auipc        a6, 617575
                  slti         s10, s4, -53
                  sra          s8, a6, t6
                  or           s2, t2, t2
                  ori          s5, t4, 1804
                  slli         s8, a7, 31
                  srli         t3, t2, 5
                  ori          s11, s6, -120
                  or           sp, t2, s6
                  sll          s2, t6, s8
                  sra          a2, t5, s4
                  ori          s11, a7, 285
                  sll          t4, s1, t4
                  or           t2, a5, s1
                  srl          a4, s10, t5
                  sra          a2, t0, t2
                  nop
                  srl          a4, a2, a3
                  addi         t5, a1, 888
                  sub          t3, s5, t1
                  addi         s8, zero, -2048
                  ori          a6, a4, -89
                  sltiu        a6, t0, 317
                  sra          a0, s6, s4
                  sub          s6, tp, t3
                  slti         a7, tp, -1325
                  slli         a4, t2, 6
                  ori          zero, a5, 975
                  ori          s10, s8, -1834
                  slt          a0, ra, t3
                  addi         a4, s3, -289
                  auipc        t3, 78679
                  xor          t6, a4, s5
                  srai         s5, zero, 20
                  srl          a2, s9, t6
                  lui          s2, 467490
                  sra          a6, a5, s7
                  add          a0, t3, a3
                  sltiu        a4, s11, 174
                  srl          s1, s10, s1
                  srai         a4, s3, 3
                  slt          s2, s2, a6
                  slti         s5, t6, 1117
                  and          t6, zero, s2
                  xor          t4, a3, t6
                  auipc        t1, 902097
                  srai         sp, s1, 17
                  xor          s2, s7, s10
                  and          ra, a7, a5
                  xori         s11, t5, -827
                  addi         s9, a2, 88
                  slt          t0, gp, s4
                  ori          a7, sp, 2003
                  xori         sp, a3, 1237
                  sra          s9, s9, a6
                  slli         s3, zero, 2
                  slt          t5, t2, a3
                  xori         t0, gp, 1996
                  or           s6, s2, a3
                  ori          s4, s1, -437
                  sltu         a5, t3, zero
                  lui          t3, 232957
                  xori         s1, s2, -910
                  addi         a0, s11, -807
                  ori          s4, s10, 364
                  slti         t2, s3, -1228
                  srai         s5, a6, 7
                  srl          a2, a6, s11
                  ori          t5, s7, 555
                  slti         sp, t4, 1479
                  nop
                  add          s5, s1, s9
                  sll          t5, t2, s5
                  srli         a1, t5, 16
                  auipc        s6, 868359
                  srai         t2, s4, 5
                  slt          s6, s1, a3
                  xor          t0, a3, t1
                  addi         s1, s6, -852
                  addi         a5, s11, -1470
                  sltu         t4, a6, s8
                  lui          s2, 1035941
                  sll          s10, a0, a3
                  srl          s3, s5, t2
                  sra          s11, s10, a2
                  slt          gp, s11, s10
                  sub          s10, ra, t5
                  srl          a4, tp, a2
                  srai         s9, s2, 12
                  xori         t2, t3, 100
                  srli         a4, a1, 3
                  lui          s2, 578515
                  slli         s8, sp, 12
                  lui          zero, 555675
                  lui          s2, 430656
                  slt          t4, a0, a4
                  or           t4, a3, zero
                  add          s2, t0, s2
                  addi         s10, s4, -1310
                  xor          t5, s0, t3
                  auipc        t6, 533717
                  sltu         t5, a4, a2
                  ori          a1, ra, -192
                  and          a3, a7, t4
                  auipc        a2, 947351
                  sltiu        t1, s2, -1981
                  andi         s8, t2, -195
                  slti         a7, s2, -791
                  lui          s4, 11693
                  slt          s9, s11, s10
                  srl          a3, gp, s1
                  sltiu        s8, t4, -1652
                  add          sp, t6, s4
                  xori         t6, a2, 1059
                  ori          t2, s10, -1433
                  slt          s9, sp, zero
                  nop
                  srai         zero, s8, 7
                  xor          a6, t6, t4
                  sll          s4, a7, s0
                  sra          s3, s10, a1
                  lui          sp, 687753
                  sll          a1, s2, t5
                  slli         t5, tp, 18
                  sltiu        t2, s8, -725
                  slt          s8, s10, t5
                  sra          a7, a4, s6
                  sltu         s4, zero, a7
                  sub          s2, s4, s8
                  srl          s1, a3, a7
                  slt          a7, t5, s8
                  or           s6, t5, s7
                  and          a3, a6, s11
                  sltu         a7, t5, tp
                  sltu         t4, a5, a0
                  srli         a7, a2, 14
                  or           a2, t6, s7
                  sub          ra, s2, s7
                  sltiu        s1, a0, -569
                  auipc        a6, 541802
                  andi         t4, zero, 1402
                  slti         t5, a3, -1889
                  slli         s3, a1, 22
                  sub          a1, s4, sp
                  and          t0, a3, s8
                  nop
                  sll          s8, s9, a6
                  sll          s5, gp, t2
                  nop
                  srli         s5, t0, 25
                  srli         s1, a1, 21
                  xor          s2, s1, a4
                  slti         s8, t6, -624
                  sra          a3, a5, a7
                  slt          s1, t6, s0
                  and          t3, zero, s2
                  auipc        s10, 65063
                  sltiu        s1, t1, 657
                  srl          t2, t0, a5
                  sub          s11, s6, t4
                  sub          t1, s2, ra
                  and          sp, s6, s8
                  srai         sp, s7, 31
                  lui          t0, 485636
                  ori          a7, a2, -831
                  nop
                  srli         t0, s0, 9
                  auipc        a6, 746652
                  lui          s6, 654674
                  slti         t1, t0, 1184
                  srl          s3, a0, t0
                  sltiu        s10, a7, -49
                  xor          t1, s8, t6
                  and          a6, s0, a4
                  lui          s6, 894057
                  xori         a0, a3, -1580
                  addi         s3, t5, 245
                  sub          ra, s10, t3
                  slli         a2, s11, 18
                  lui          s11, 255932
                  slli         t2, ra, 8
                  sra          t4, a3, a2
                  srai         t4, s3, 10
                  xor          t3, a2, ra
                  srl          s8, a1, a4
                  xori         a2, t2, -1455
                  nop
                  addi         a7, gp, 1776
                  and          a7, s0, t1
                  xor          s5, a5, t3
                  srai         t3, a5, 15
                  or           a4, s1, t6
                  andi         t1, s6, -1904
                  srl          s2, gp, s7
                  sltiu        ra, t5, -1532
                  sltiu        t0, a0, -1753
                  sltu         a6, t1, tp
                  slt          a4, t5, ra
                  nop
                  ori          s3, sp, 1346
                  add          s8, a0, s3
                  slt          s10, zero, ra
                  sll          s8, gp, s3
                  sltiu        t6, sp, -1673
                  xor          s10, s3, s10
                  or           s11, s7, t6
                  andi         s1, s11, -1243
                  andi         t6, s8, 896
                  slt          s1, s4, t6
                  sub          t2, s6, s5
                  ori          t0, a3, 1932
                  sltu         a4, a3, a3
                  andi         s11, s10, 1975
                  sub          t3, t6, t4
                  srl          ra, s11, a0
                  sltu         zero, s1, s11
                  xori         t2, s5, -801
                  slt          ra, s2, a5
                  and          t0, s7, t6
                  srli         t0, a5, 11
                  srl          s2, gp, a1
                  slti         s5, a7, 599
                  ori          t1, t3, 1797
                  srli         a7, s11, 17
                  slti         s10, s4, 252
                  srl          a7, t3, a2
                  xori         a3, t6, -1569
                  andi         t1, s6, -1780
                  xori         t1, ra, 1211
                  or           a1, a5, a5
                  or           s5, t3, a2
                  sub          a7, t4, s5
                  slli         a0, zero, 22
                  andi         t4, s5, 787
                  slli         t5, s6, 7
                  sll          a7, a6, sp
                  and          s9, t0, a0
                  ori          zero, t5, 1455
                  add          a5, ra, t3
                  or           a2, a2, t3
                  ori          a2, a7, 847
                  sll          t1, ra, s0
                  xor          a2, s11, a3
                  xor          a2, a6, s11
                  and          ra, s9, t3
                  nop
                  slt          s8, t4, a2
                  nop
                  andi         a5, s7, 157
                  auipc        gp, 122488
                  nop
                  sra          a5, t2, s6
                  nop
                  and          s1, s0, t6
                  add          t1, ra, a7
                  sub          s6, s7, sp
                  ori          a7, s3, 1131
                  sltu         s5, zero, s3
                  srai         sp, s5, 29
                  or           ra, a5, s2
                  srl          s1, t4, s11
                  slt          s8, gp, t6
                  add          t3, a5, s3
                  slli         s6, s7, 11
                  nop
                  sltu         t3, s9, s8
                  srai         s2, zero, 12
                  slti         s9, s3, -1241
                  sub          a3, tp, a2
                  slli         s4, t6, 25
                  and          a4, a5, t2
                  srli         a6, zero, 31
                  srai         s5, t6, 30
                  slli         a1, ra, 14
                  auipc        s3, 1043737
                  xori         zero, a3, -1106
                  sltiu        s11, ra, 397
                  srli         t6, tp, 16
                  or           a5, s7, s6
                  auipc        s4, 406412
                  slli         s4, s11, 23
                  sltu         s6, a0, a7
                  nop
                  slt          s11, s10, s3
                  add          t4, tp, s11
                  sub          s11, s1, s3
                  sll          ra, t0, sp
                  slti         a4, s8, 372
                  or           t0, gp, t6
                  andi         zero, t0, 76
                  xor          s2, a5, s4
                  add          a3, t4, a4
                  srl          a6, t6, zero
                  auipc        s6, 178480
                  xor          t2, s4, s0
                  ori          s6, s8, -1454
                  sltiu        a7, s7, 1384
                  auipc        a0, 255331
                  addi         a5, tp, -728
                  srl          a3, s9, s3
                  srai         t6, t5, 26
                  sra          a7, s8, s6
                  xori         a5, s9, 410
                  sll          s9, t0, a6
                  slli         s10, a1, 2
                  xori         s10, ra, 1475
                  sra          t6, t4, a1
                  sub          ra, s5, a1
                  lui          t6, 866985
                  ori          s11, sp, 507
                  sll          a7, s5, s6
                  auipc        s8, 221696
                  auipc        a6, 551502
                  sll          sp, a1, a1
                  lui          t3, 505502
                  ori          a0, tp, 1455
                  slt          t6, a1, t5
                  slli         t5, a1, 5
                  or           s2, a6, s10
                  srai         t5, t6, 1
                  xor          t0, s6, s9
                  lui          s5, 265143
                  sltiu        a3, zero, 1118
                  or           a5, t1, gp
                  lui          s4, 929861
                  sltiu        s9, t3, 168
                  andi         gp, s8, -1033
                  srai         t1, s8, 31
                  sub          t5, sp, a4
                  lui          a3, 136850
                  srl          zero, t4, s3
                  sub          s5, a6, s5
                  slti         s8, ra, 1694
                  slt          t4, t4, t5
                  and          a7, t1, s0
                  sltu         a6, a5, gp
                  sltu         s10, a1, t1
                  and          ra, t1, t2
                  srli         t5, a7, 3
                  ori          s9, ra, 360
                  sub          a2, zero, t6
                  xor          a1, gp, a7
                  lui          s6, 993026
                  xor          a2, a3, zero
                  srli         gp, t1, 26
                  srli         s5, gp, 12
                  srl          t5, t6, s0
                  addi         gp, t2, -1276
                  ori          s1, s3, -191
                  srai         a7, t2, 4
                  sra          s11, tp, gp
                  ori          a4, t0, -234
                  xor          s3, a2, a4
                  sll          s8, s1, t1
                  lui          a5, 923613
                  slt          t6, s3, s3
                  slli         s10, s7, 17
                  srli         s3, s8, 2
                  auipc        t3, 818330
                  srl          t0, t4, s7
                  xor          t5, t5, s9
                  sll          s8, s11, t0
                  slt          t0, a5, t0
                  srai         s10, a7, 27
                  lui          zero, 289926
                  srl          s11, s2, a3
                  or           gp, s6, a4
                  sra          t1, s5, t1
                  srai         s3, t4, 12
                  ori          a7, a0, 188
                  or           s10, s6, a4
                  andi         s1, t4, -1814
                  or           t3, s0, zero
                  sra          s11, s4, t1
                  slti         sp, s9, 170
                  sub          a3, s4, s9
                  ori          t1, a7, 897
                  sub          s4, a6, t1
                  srli         s8, s8, 24
                  xori         zero, s2, 325
                  sltu         t1, t2, a4
                  addi         t2, sp, -1839
                  lui          t0, 5108
                  srai         t2, t2, 10
                  andi         s11, s4, 73
                  sltiu        s11, s9, 141
                  srai         a7, s11, 10
                  srli         a3, s1, 21
                  slt          a6, a3, a5
                  nop
                  sll          s2, s7, s2
                  andi         a7, s6, -1036
                  nop
                  sltiu        t2, s8, 113
                  nop
                  add          a0, zero, tp
                  slt          s10, s11, t2
                  lui          a4, 684642
                  sll          a6, a2, s8
                  add          a0, gp, a0
                  ori          t6, s6, -105
                  srai         s1, t4, 26
                  xor          ra, t4, a6
                  slli         t4, s3, 1
                  slti         zero, tp, -1014
                  srai         a5, gp, 13
                  add          s10, s6, tp
                  sltiu        a0, tp, -517
                  sll          s2, t3, sp
                  sra          t3, a2, s6
                  sll          sp, t5, t5
                  add          t1, s9, s10
                  xori         s9, t6, -1218
                  sltu         s6, s2, t5
                  sltiu        zero, a2, -1902
                  ori          s4, a1, -1661
                  sll          a5, s8, s8
                  slt          zero, s9, s11
                  sub          t5, s11, t4
                  sltu         a3, s0, t4
                  srl          a2, s10, a0
                  slt          s9, s6, t0
                  xori         t6, s4, 44
                  addi         t5, t4, -848
                  srli         s3, ra, 15
                  andi         a3, t1, -835
                  srai         t3, s4, 12
                  nop
                  add          a4, s11, a3
                  and          t5, s3, s10
                  auipc        a5, 883017
                  andi         a6, s7, 519
                  and          s8, ra, s10
                  nop
                  srli         s9, t6, 10
                  slli         t2, t2, 21
                  sll          s3, ra, t4
                  andi         a5, a2, 1765
                  srai         s10, t1, 25
                  slti         sp, t5, -1873
                  slt          t5, sp, gp
                  sra          sp, a0, a6
                  xori         gp, ra, 905
                  lui          s2, 954534
                  or           ra, t0, gp
                  xori         a5, t5, -691
                  slli         t6, a5, 17
                  ori          s2, s8, -2025
                  srl          sp, s8, a1
                  nop
                  add          s2, a6, s7
                  sub          s8, a4, t2
                  sra          a0, t1, s9
                  andi         a1, sp, 1353
                  andi         a0, t3, 1352
                  sll          a5, s7, s8
                  sltu         a4, a6, t3
                  srl          a2, a4, t0
                  and          s9, s5, a0
                  sll          a6, ra, gp
                  srl          s10, a0, s3
                  or           s6, t6, sp
                  sll          s2, t5, a4
                  auipc        s3, 486
                  sub          zero, t5, t6
                  srli         sp, zero, 9
                  auipc        s8, 774841
                  sltiu        s6, s4, -318
                  sra          a0, a3, a7
                  addi         s8, a3, -932
                  sra          a2, a2, t2
                  xor          zero, s2, a7
                  xor          s4, s2, t2
                  and          s4, s4, s9
                  srai         t1, s7, 19
                  andi         s5, s5, 418
                  srai         sp, s4, 12
                  sltu         t0, a7, t3
                  sltiu        t3, s0, -941
                  ori          t1, t1, -1053
                  srai         t0, sp, 19
                  srli         t3, t2, 0
                  sltiu        a1, s5, -319
                  srl          t5, zero, t1
                  sll          a7, s10, t1
                  ori          s5, a6, 54
                  srl          t3, a4, t6
                  ori          a7, s2, 784
                  slti         a1, t5, 493
                  srl          a6, s4, a1
                  add          a6, s4, t3
                  sra          ra, s10, t3
                  xori         s6, a1, -1227
                  srl          a6, a6, s6
                  sra          a1, a3, t2
                  srai         s6, t2, 29
                  sltiu        t5, gp, -1035
                  andi         t0, a4, 718
                  add          ra, s9, s2
                  lui          gp, 1023045
                  sll          s10, a3, t6
                  srai         ra, ra, 12
                  xor          a6, s6, s5
                  sltiu        s4, a0, -1951
                  srl          s3, a0, s7
                  nop
                  and          t1, sp, s2
                  and          t0, t0, s4
                  slti         a7, s4, 160
                  addi         gp, a7, 1305
                  slti         a2, a2, 1583
                  sll          s4, a6, s6
                  srl          a0, s8, s2
                  slti         t3, t2, 1571
                  add          zero, a4, a2
                  lui          s1, 904615
                  ori          a6, s3, -1135
                  srl          s5, ra, s4
                  xori         t5, s10, -498
                  nop
                  sltu         a3, t4, tp
                  sra          ra, a3, s2
                  addi         a3, s2, -283
                  auipc        a2, 93326
                  lui          s11, 822606
                  sra          s4, t6, t2
                  ori          zero, gp, 1873
                  sra          s3, a5, t3
                  xor          a4, t3, s0
                  sll          zero, s9, zero
                  srli         s10, s5, 17
                  srli         t2, tp, 1
                  sra          s6, s6, zero
                  lui          a0, 758199
                  srli         s11, sp, 17
                  sll          s2, s5, s0
                  and          t1, tp, a1
                  sltu         a0, s8, s3
                  slt          s1, s7, t5
                  and          t2, s1, s0
                  sltu         a1, s5, t6
                  li           s2, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           s9, 0xd72b8f7
                  li           s6, 0x0
                  li           t2, 0x80000000
                  li           t3, 0x80000000
                  li           t1, 0xffffffff
                  li           s4, 0xefa57d7e
                  li           a5, 0x80000000
                  li           a3, 0x24523db6
                  li           s11, 0xffffffff
                  auipc        s2, 697811
                  add          s4, s6, s4
                  auipc        a3, 53992
                  sub          s6, a5, s11
                  addi         t2, a3, -1094
                  nop
                  lui          a3, 314014
                  sub          s4, t2, s9
                  sub          s4, t1, s11
                  add          t1, a3, a5
                  auipc        s9, 417785
                  sub          s2, a3, a3
                  sub          t2, s9, s11
                  lui          t2, 466769
                  add          a3, s11, s11
                  addi         s9, a5, 1329
                  sub          t3, a5, t1
                  lui          a5, 721787
                  add          t1, s6, s9
                  add          a3, a3, a3
                  auipc        s2, 1294
                  add          a3, a3, a5
                  add          a5, s2, a3
                  add          s9, t2, s11
                  nop #end riscv_int_numeric_corner_stream_7
                  srli         a6, t3, 20
                  slt          a3, t2, t5
                  or           gp, t4, s2
                  and          a0, a0, a2
                  slli         s8, t5, 13
                  addi         sp, s4, 1035
                  and          zero, s9, s11
                  andi         s3, a3, -1593
                  srai         a4, s1, 30
                  ori          s4, t5, 483
                  or           a6, t2, t6
                  slti         a7, s10, 1024
                  lui          a4, 607991
                  sltu         t4, t1, sp
                  slli         t1, s7, 27
                  lui          a6, 662771
                  srai         s5, s9, 16
                  sltu         s5, s0, s11
                  slli         s9, zero, 30
                  ori          s6, a5, 939
                  and          sp, a2, s1
                  and          t2, a1, a5
                  slt          t6, a6, a5
                  slt          s11, s0, s0
                  slli         ra, t5, 10
                  xori         t3, a3, -242
                  xor          s8, gp, tp
                  srli         t3, s4, 9
                  sub          a7, zero, s7
                  sub          ra, a1, a2
                  sra          s11, tp, a0
                  slli         s10, s3, 20
                  sll          s1, a5, a0
                  addi         s10, t4, -1234
                  slt          s10, t5, a6
                  slti         t4, t4, 62
                  sub          s5, t1, a5
                  srai         t3, a7, 14
                  xori         zero, s5, -1607
                  lui          a1, 286891
                  srli         s10, s2, 24
                  nop
                  slli         s10, tp, 16
                  slli         gp, s9, 10
                  srli         t2, s7, 8
                  add          s4, a4, gp
                  xori         t3, t4, -1520
                  sltiu        t4, s5, 1743
                  sll          a7, a4, ra
                  slt          a6, a3, s11
                  nop
                  nop
                  xor          a5, t0, s1
                  ori          t3, t3, 1757
                  srl          s1, s1, gp
                  add          s2, s2, s8
                  srai         s4, tp, 21
                  lui          t0, 579636
                  xor          a0, s0, a3
                  slli         t1, a4, 7
                  andi         a5, s4, -382
                  srli         s6, zero, 17
                  sra          a0, t5, s11
                  ori          a1, s9, -1733
                  nop
                  slt          s3, s8, sp
                  ori          t6, tp, -1565
                  and          s5, s8, s5
                  or           sp, s10, a1
                  auipc        s6, 756897
                  add          s2, t5, gp
                  slti         s4, s0, 418
                  srl          a5, s0, s3
                  srl          a4, a2, s0
                  srli         s2, t0, 19
                  sll          s1, a0, a5
                  lui          a4, 383672
                  slli         t6, a2, 30
                  sltiu        zero, s11, 1188
                  slli         a7, s3, 31
                  and          a3, s8, s9
                  andi         s5, s1, 1369
                  add          t4, s11, s3
                  slli         t0, s7, 0
                  sra          a3, s2, a2
                  lui          s1, 631014
                  ori          a3, s11, -1942
                  srai         ra, t6, 12
                  slli         t5, tp, 3
                  lui          a6, 473504
                  auipc        a6, 938604
                  and          t1, s10, tp
                  add          a4, s5, t0
                  andi         a3, a7, 1415
                  and          a0, sp, tp
                  sll          t0, a5, s10
                  slt          s9, a2, sp
                  add          s4, tp, a5
                  srai         a4, a4, 3
                  sub          s5, a5, t6
                  add          s4, t5, s2
                  and          a7, t6, tp
                  addi         t1, a5, 1319
                  auipc        s1, 738036
                  andi         s6, a0, 1404
                  sra          s6, a7, t3
                  sltiu        a2, t6, 1761
                  xori         s3, s2, -492
                  slti         zero, t2, 1786
                  lui          s10, 783374
                  xori         t0, t6, -221
                  slti         a6, s5, 449
                  slt          a7, s7, zero
                  xori         ra, a6, 311
                  auipc        a6, 1017202
                  sll          s10, a1, a0
                  sltu         s11, a4, a1
                  and          s6, s0, s6
                  xori         s2, a0, 1179
                  or           s9, a2, t5
                  srai         s9, gp, 22
                  add          a0, a1, t1
                  ori          s11, t6, 274
                  srl          s10, a1, ra
                  ori          t4, a2, 1026
                  xori         a0, t4, 575
                  sltiu        a5, a5, -1356
                  sub          t4, a7, s11
                  add          a2, s5, a6
                  sra          s6, a7, s2
                  ori          t5, t2, -1975
                  ori          s11, zero, 857
                  ori          a6, t1, 1005
                  sltu         t0, a6, t1
                  addi         a5, s3, -129
                  sra          t0, zero, a7
                  or           s3, s7, a0
                  sltiu        t5, a5, 1897
                  or           s8, s7, s11
                  srai         sp, s1, 10
                  sra          s11, s2, t6
                  srli         t2, a1, 25
                  sll          t5, s0, a2
                  and          t5, s1, a0
                  slli         a2, s6, 17
                  add          t2, gp, tp
                  add          a6, s11, t3
                  srl          s1, s8, t1
                  sll          s6, t2, s4
                  slli         sp, t2, 14
                  addi         a5, s6, -26
                  sltu         s9, a3, tp
                  slt          a6, s3, zero
                  slli         a6, a2, 29
                  slti         s5, t1, -1890
                  add          zero, s4, a3
                  auipc        t5, 258395
                  andi         s9, s6, 1237
                  add          s6, t2, a1
                  slt          a3, t1, a0
                  srli         gp, a5, 25
                  or           t0, tp, s1
                  slli         s5, s6, 21
                  sub          t5, t1, a6
                  add          t2, sp, t4
                  srli         a0, a2, 26
                  and          a7, gp, t1
                  sll          a4, a6, a0
                  addi         t0, a2, -1959
                  slt          t3, a3, a6
                  sltiu        a2, t4, 464
                  xor          t0, t1, a4
                  sltiu        s6, s10, 600
                  srli         t6, t4, 13
                  xori         zero, t2, 249
                  slt          a3, s9, t6
                  sra          a6, s9, t4
                  ori          s5, s1, -68
                  or           s11, a0, a0
                  auipc        a0, 632766
                  srl          s1, t4, sp
                  ori          s1, s7, 1665
                  lui          a6, 932581
                  slli         a6, a5, 7
                  slt          a0, t4, a7
                  srli         t5, s2, 8
                  ori          a1, sp, 219
                  auipc        zero, 283697
                  sll          t4, zero, a2
                  andi         s2, s5, 196
                  nop
                  sub          s8, a6, s0
                  sra          s1, s11, s10
                  xori         a3, t2, 1170
                  srl          t1, s5, s0
                  and          s8, a2, s0
                  and          t2, a2, a0
                  sltiu        s1, a3, -1982
                  add          s6, t5, s3
                  srai         sp, s4, 5
                  xori         a3, t1, 597
                  slt          s11, gp, sp
                  auipc        s10, 558211
                  sltiu        sp, t4, 420
                  slti         t4, sp, 1782
                  add          s2, s8, t2
                  xor          a4, a4, a2
                  slti         a3, s9, -1792
                  addi         s10, s10, 240
                  auipc        t1, 525158
                  sltu         a1, s2, a6
                  srli         a2, t4, 10
                  or           s5, t4, s8
                  or           s11, s2, a0
                  addi         s9, s2, 519
                  sub          s11, s5, t5
                  or           a1, t6, t4
                  andi         zero, t5, -185
                  auipc        s4, 224289
                  slt          t3, t1, a6
                  ori          a3, s6, -478
                  xori         s4, s0, 275
                  andi         t6, s8, 1726
                  srl          a2, s3, a7
                  xor          s10, a3, a1
                  sub          s5, a5, t5
                  slli         a1, s11, 8
                  nop
                  or           s2, s4, t0
                  or           s10, sp, a3
                  srl          a4, s5, t1
                  ori          s3, ra, -275
                  sltu         s5, t2, a0
                  andi         a6, t0, 973
                  sra          s8, tp, t0
                  srli         a3, a5, 5
                  srli         gp, a0, 0
                  srli         t1, a7, 23
                  slli         sp, s2, 2
                  slt          a3, a2, s8
                  nop
                  srli         t5, a6, 22
                  auipc        t6, 88754
                  auipc        s1, 894129
                  sltiu        a2, tp, -410
                  nop
                  nop
                  sltu         s2, t3, s0
                  sll          a5, s6, sp
                  xor          a3, gp, a4
                  xori         zero, t2, -657
                  nop
                  slli         s4, s5, 4
                  xor          a0, a6, gp
                  ori          s4, a3, -1010
                  sltiu        t3, s3, -1657
                  or           s1, a2, s5
                  or           t5, t6, s10
                  nop
                  srai         zero, s3, 19
                  and          t5, a2, s2
                  add          s9, s7, a1
                  xor          t4, a4, t5
                  addi         s6, a3, -40
                  srli         t6, a4, 8
                  srl          a1, s7, s10
                  sltiu        a1, sp, 1162
                  sra          ra, s1, zero
                  sltiu        sp, s11, 1501
                  slli         a7, a2, 26
                  andi         a3, s7, -489
                  slli         t1, t6, 6
                  nop
                  sub          s2, a5, s8
                  sub          t6, t1, sp
                  srai         s3, a3, 31
                  sra          s4, s5, a4
                  slt          s8, t5, sp
                  srli         t3, ra, 4
                  add          ra, s4, s1
                  nop
                  slti         zero, s4, 1050
                  slli         a5, s0, 29
                  slli         t2, s11, 9
                  addi         t4, t3, -634
                  srli         a3, a7, 12
                  or           t2, s2, a2
                  srli         s5, s4, 29
                  add          s5, t1, a1
                  addi         s6, s9, 1376
                  slti         t2, t6, -314
                  nop
                  nop
                  sltu         s4, s4, a1
                  srli         s10, s3, 22
                  sltu         t1, a2, zero
                  addi         a1, a6, -1835
                  sra          a6, s11, a6
                  andi         a0, s8, 1553
                  srl          t3, a3, s4
                  xor          t4, ra, a2
                  slti         t0, s9, 27
                  lui          t6, 629798
                  srl          t1, a7, s6
                  sub          s10, t1, ra
                  slti         s2, zero, 1269
                  lui          s4, 915770
                  slt          t4, t2, t2
                  sltu         s4, a1, t0
                  slli         s4, tp, 5
                  srli         gp, ra, 2
                  srai         a1, s0, 12
                  lui          t4, 186691
                  sub          a0, a2, s7
                  slli         s1, t0, 23
                  sltiu        a1, gp, -1209
                  or           a0, a5, s6
                  auipc        s10, 436955
                  or           s8, tp, s9
                  xor          ra, s11, t5
                  add          s10, t2, a7
                  xori         a3, gp, 1855
                  sub          a6, t0, s3
                  sltu         t4, a5, t5
                  andi         zero, s9, -1853
                  sra          s8, s0, a2
                  srli         t0, s2, 10
                  and          zero, a1, a2
                  sltu         a0, zero, gp
                  or           s5, t5, s3
                  slt          t1, s3, a5
                  ori          s1, s11, -2005
                  or           t5, a0, a3
                  sltu         ra, s8, a4
                  nop
                  addi         t3, s2, -1121
                  sltiu        t5, a0, -1845
                  add          a0, s7, a4
                  add          s3, s2, t4
                  add          a7, s1, s9
                  slti         t0, a4, -908
                  andi         t1, s0, -1563
                  sltiu        s9, a3, 1049
                  xori         t4, a0, -967
                  srl          a1, tp, ra
                  nop
                  xor          t2, t1, s4
                  xor          gp, t4, s1
                  sltu         s11, t5, s6
                  addi         ra, ra, 1249
                  srli         t3, t4, 19
                  sltu         a6, a2, s2
                  sltiu        s8, t3, -1516
                  sub          a5, t4, a1
                  lui          a2, 393000
                  slti         s6, sp, -141
                  sra          t6, t2, s11
                  ori          s2, a4, 1537
                  srli         t6, gp, 3
                  sub          t1, s2, s6
                  xor          t0, gp, s1
                  nop
                  addi         a2, s11, -1767
                  xori         t0, s7, -641
                  nop
                  nop
                  srai         s5, t6, 11
                  and          sp, a4, s1
                  ori          t2, a4, 1971
                  andi         a6, t0, 1361
                  slli         a5, s7, 28
                  slti         s3, s4, 772
                  srl          sp, s2, s5
                  sub          a2, a6, s1
                  slt          s4, t0, t5
                  or           ra, t1, tp
                  or           s1, a3, a2
                  srli         a1, s7, 26
                  sll          t4, t2, gp
                  lui          gp, 597125
                  sll          t3, s7, a2
                  nop
                  ori          s2, a4, -402
                  xor          t5, a6, t4
                  andi         a7, s2, 851
                  slt          a3, t5, t3
                  srli         a2, s5, 6
                  add          a1, a3, a1
                  addi         a3, s10, 89
                  andi         s2, s0, -1427
                  sll          s11, s1, s11
                  sltiu        t1, gp, -1176
                  srai         s1, ra, 27
                  sub          sp, a4, s0
                  srai         t4, s11, 10
                  andi         t2, s1, -1333
                  sll          s8, s11, s0
                  sltu         a5, a3, s9
                  sra          zero, ra, s8
                  add          sp, a0, s5
                  sll          sp, a3, s3
                  auipc        t6, 53875
                  andi         gp, t4, -944
                  slt          s8, a5, s0
                  slli         t6, s8, 10
                  srli         gp, t2, 13
                  srai         a3, t2, 13
                  xori         a2, a1, -773
                  sra          gp, t3, s0
                  andi         s1, s4, -524
                  or           a1, a7, t2
                  sub          s11, t0, s1
                  xori         sp, zero, 167
                  add          a4, t2, t6
                  sltiu        s3, t4, 888
                  add          a2, s0, a6
                  sltiu        t0, t1, 942
                  sltu         a1, t3, s6
                  or           t1, a5, s10
                  auipc        a2, 257388
                  or           ra, sp, t1
                  srli         a3, t3, 17
                  addi         s2, s8, -1678
                  addi         sp, gp, 1462
                  srai         t3, s3, 16
                  sltiu        s5, a7, 296
                  sub          s5, a4, t6
                  nop
                  xori         a3, zero, 654
                  xori         s1, t4, -248
                  srli         t1, t6, 26
                  or           s11, a6, s2
                  nop
                  xori         t4, a0, 1497
                  xor          a7, a4, gp
                  srl          sp, a0, s10
                  sub          t2, s6, s10
                  sll          a6, t1, t6
                  sltiu        a4, t6, 298
                  srli         t0, s7, 31
                  ori          a0, s3, 147
                  and          a4, zero, t6
                  sltiu        t4, t4, 24
                  slli         t3, t5, 24
                  and          s11, s6, a7
                  slt          ra, a6, t4
                  sltiu        sp, s2, -1543
                  sltiu        s10, s11, 1121
                  or           s5, zero, t0
                  sub          sp, t0, a4
                  sub          t6, t4, a7
                  srai         s11, a4, 9
                  lui          a4, 842687
                  li           t4, 0x3cc6c7fc #start riscv_int_numeric_corner_stream_14
                  li           gp, 0xfb2a22db
                  li           t5, 0x0
                  li           t6, 0x1a028b47
                  li           a5, 0x0
                  li           a7, 0x61c4ac02
                  li           s1, 0x80000000
                  li           s2, 0x80000000
                  li           t3, 0x89ba4f33
                  li           s4, 0x80000000
                  addi         s1, gp, -2046
                  addi         s1, gp, 1622
                  auipc        t4, 354253
                  auipc        gp, 665416
                  nop
                  addi         s1, t5, 1198
                  sub          t6, s2, s1
                  sub          t5, s4, s4
                  nop
                  auipc        t5, 203087
                  add          gp, t5, s4
                  nop
                  lui          s1, 1044960
                  lui          t5, 792451
                  nop
                  add          t6, t6, t6
                  add          a7, t3, t6
                  addi         t4, s2, -902
                  lui          t6, 86881
                  nop
                  auipc        t6, 681676
                  add          s4, s2, gp #end riscv_int_numeric_corner_stream_14
                  lui          a2, 614288
                  slli         t0, a5, 7
                  srli         t5, a7, 20
                  xor          a2, a1, s7
                  srl          a0, s1, a6
                  sub          a5, tp, s11
                  sltiu        a5, t3, 1071
                  srai         a6, zero, 17
                  nop
                  xori         a5, zero, -447
                  sra          t3, zero, s7
                  sll          a5, s10, a6
                  slt          s10, s5, s7
                  slti         t0, a7, -1256
                  srai         a0, s9, 8
                  sltu         t6, s2, s10
                  slli         t0, a2, 3
                  slli         a5, a7, 9
                  addi         s3, a7, 917
                  nop
                  sll          s10, a3, s4
                  nop
                  addi         a6, s5, 125
                  addi         a7, s3, 1681
                  auipc        s2, 867647
                  and          a0, s9, s9
                  lui          s11, 1025607
                  sltu         s4, s11, a5
                  slti         s10, t5, 927
                  slti         s11, s2, 1779
                  lui          t0, 55194
                  lui          t4, 836215
                  lui          t1, 1012010
                  sub          t6, s1, s8
                  xor          s11, t3, t4
                  sltiu        a2, s0, -10
                  or           zero, a0, a7
                  srai         a2, t2, 2
                  ori          sp, s0, 288
                  xor          a0, s9, s11
                  nop
                  slt          s5, s2, sp
                  slt          ra, s6, ra
                  slli         a2, s0, 29
                  addi         t5, t6, -1926
                  srli         zero, s8, 0
                  add          t1, t0, s1
                  sub          zero, gp, s0
                  and          s2, gp, s7
                  auipc        t4, 732667
                  or           a6, t5, a0
                  addi         a0, s10, -1700
                  add          a5, a0, s10
                  slt          gp, a4, sp
                  xor          ra, sp, zero
                  auipc        a7, 404935
                  xori         a6, a3, -1649
                  sub          a2, s2, ra
                  lui          a5, 174548
                  addi         a0, tp, 1501
                  slt          s4, s6, zero
                  sra          t1, t0, s7
                  xori         a5, a6, 948
                  slt          a3, s5, t3
                  srl          t5, s3, a6
                  or           s3, t1, tp
                  auipc        t2, 419356
                  nop
                  andi         gp, s8, 992
                  add          a6, s3, t1
                  lui          t3, 747303
                  sll          t5, s9, t5
                  and          s4, a7, a7
                  sltiu        t4, s11, -670
                  xori         a4, t3, -1257
                  srai         a1, a2, 4
                  slli         a7, a1, 22
                  sub          a1, s9, a4
                  and          s8, a4, ra
                  sltu         s11, s3, s9
                  sra          t1, a3, a6
                  srl          s9, t6, s8
                  or           ra, t0, a2
                  and          a7, t4, a5
                  nop
                  sub          s6, a5, t5
                  sll          t0, s0, a2
                  slti         t4, a4, 1404
                  sll          t5, s10, tp
                  nop
                  sub          t4, t3, s10
                  auipc        s10, 378410
                  sub          a7, s4, a2
                  slli         a7, s11, 16
                  lui          a7, 916774
                  srli         a1, s7, 20
                  auipc        s11, 359517
                  nop
                  srli         s6, t0, 13
                  srai         s1, s8, 24
                  sll          gp, t2, a0
                  auipc        s5, 871417
                  auipc        a7, 674061
                  srai         a3, sp, 22
                  sra          a4, t3, a0
                  nop
                  srl          s3, t2, ra
                  or           s2, s0, t2
                  ori          s11, a3, -219
                  sltiu        a0, a7, 500
                  srli         a7, a7, 17
                  ori          t4, ra, -1704
                  srai         t1, s8, 27
                  add          t2, a0, t0
                  ori          zero, t6, -1182
                  sltiu        s10, a6, 757
                  addi         s2, t1, 46
                  sltiu        t6, s9, 1457
                  srai         gp, tp, 26
                  nop
                  add          s3, a2, a5
                  xori         s8, s1, -252
                  or           a2, s3, s11
                  slti         s10, t4, -1633
                  slti         zero, a3, -50
                  or           a1, s8, ra
                  sub          s1, t3, a1
                  slti         t2, ra, -370
                  and          s11, zero, t6
                  sra          a3, tp, s7
                  xor          s2, a7, a5
                  srl          s10, s6, a7
                  xori         gp, t1, -1697
                  addi         sp, a2, 528
                  slli         t6, a7, 3
                  sltu         a7, ra, a0
                  andi         zero, t3, 1335
                  xor          ra, a1, s5
                  srli         a4, s7, 6
                  slt          s5, s9, a0
                  sra          a7, s2, zero
                  srli         s10, s8, 8
                  sra          a0, a4, a7
                  xor          a2, s5, s7
                  xori         zero, gp, 1568
                  add          a6, t0, a4
                  srai         t6, s9, 18
                  slt          s9, t6, s9
                  andi         t2, s11, -185
                  or           s3, tp, s9
                  srl          a4, t5, t0
                  slti         a4, t5, 1243
                  or           a2, t1, t2
                  ori          a0, s0, -1995
                  andi         s11, s3, 1780
                  slli         s1, tp, 18
                  and          t2, a3, a6
                  add          a5, a6, t1
                  sub          a2, s3, s6
                  add          a7, s2, a4
                  ori          t1, t4, 1743
                  slli         a2, s0, 8
                  auipc        s9, 264506
                  sll          s4, a0, a5
                  sub          ra, t4, s6
                  addi         s10, a1, -752
                  slli         t3, t6, 24
                  slti         t3, a0, -814
                  slti         t6, a3, 990
                  sub          a2, a5, zero
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           s11, 0x80000000
                  li           s3, 0xffffffff
                  li           s5, 0xffffffff
                  li           a2, 0x80000000
                  li           t4, 0x80000000
                  li           s1, 0x0
                  li           a3, 0xffffffff
                  li           a4, 0xffffffff
                  li           a7, 0xffffffff
                  sub          a7, a2, s5
                  sub          a4, t4, s3
                  addi         s10, a7, -422
                  nop
                  addi         s11, a4, -541
                  nop
                  lui          a7, 1041560
                  addi         a3, s10, 473
                  addi         t4, a2, -163
                  lui          s5, 869748
                  sub          a2, a7, t4
                  lui          a3, 26502
                  nop
                  auipc        s11, 675640
                  addi         s10, s5, -619
                  sub          s3, s10, a7
                  sub          s11, s1, s3
                  add          s5, t4, t4
                  nop
                  addi         a3, a2, -325 #end riscv_int_numeric_corner_stream_0
                  xor          s3, a4, a1
                  sub          a7, t1, zero
                  xor          a0, a6, s6
                  lui          s8, 296676
                  sltu         sp, s11, s3
                  srl          s9, s8, s10
                  xor          ra, s4, tp
                  sra          t3, ra, s3
                  sra          a1, a2, t5
                  ori          s5, s3, -1035
                  slt          t3, s11, a7
                  sub          t0, s9, a1
                  and          a4, s6, t0
                  slt          a2, t0, zero
                  nop
                  add          t2, gp, a2
                  slt          s1, a4, s9
                  srai         a5, t1, 26
                  sll          t3, s6, s9
                  add          a4, zero, a3
                  xori         a0, t1, -440
                  xor          a6, s8, s9
                  sra          s9, a6, t3
                  nop
                  nop
                  lui          a7, 647298
                  andi         s8, s0, 1109
                  sll          sp, s0, s5
                  srli         gp, a2, 3
                  xor          s2, t5, s11
                  addi         s8, s6, -1410
                  sub          a7, a1, t1
                  slti         a4, tp, 457
                  addi         t6, s5, 405
                  sll          gp, s10, s1
                  sltu         t2, t0, s10
                  slt          s5, a2, t6
                  srl          a7, t2, s7
                  xor          s3, sp, a5
                  slti         gp, a2, -1155
                  srai         s6, t4, 20
                  sub          sp, s2, s8
                  xori         s5, s3, -1294
                  slt          a6, s8, ra
                  xor          s5, t2, s1
                  sll          a3, a4, a4
                  xor          t2, t0, s5
                  xori         s3, s1, 1145
                  sra          t4, a6, s5
                  slli         sp, t3, 1
                  sltu         a6, t0, a5
                  add          t6, s3, a1
                  add          a2, t4, a4
                  addi         t3, sp, 1327
                  xor          s8, s3, a2
                  lui          zero, 220796
                  xori         s10, ra, -1550
                  srli         a2, a3, 16
                  auipc        t5, 835141
                  and          t5, s3, s10
                  xor          sp, s4, a3
                  auipc        s3, 745756
                  add          a1, t2, s6
                  sltu         zero, t0, gp
                  slt          s8, a7, t4
                  slt          s8, s0, s2
                  srli         s4, gp, 20
                  auipc        s1, 629755
                  lui          a0, 112858
                  sltu         s5, gp, sp
                  lui          a5, 640553
                  nop
                  nop
                  sltu         t3, sp, a4
                  addi         gp, s0, 523
                  addi         a0, t4, -1025
                  nop
                  slti         s9, ra, 1967
                  sub          s11, a1, s0
                  xori         a5, a7, -2046
                  auipc        sp, 431597
                  sub          a4, a5, a1
                  or           a2, t5, t1
                  slti         s11, tp, 1411
                  sll          t3, a2, a5
                  add          s6, s7, s10
                  or           a5, sp, a3
                  sll          t4, t4, s3
                  andi         s10, s11, 1332
                  add          t6, s5, a2
                  srl          gp, t0, t2
                  xori         t5, s9, 44
                  xor          t2, s3, sp
                  addi         a0, a0, -902
                  and          a0, t6, a3
                  sra          t6, a5, a6
                  or           s10, s3, s8
                  addi         ra, s6, -992
                  slli         s6, ra, 8
                  xori         t2, s7, -1509
                  slli         s1, a0, 11
                  ori          a2, tp, -1183
                  sltu         s1, t5, t4
                  slli         s4, a3, 31
                  srl          a4, a3, t4
                  sll          a3, t1, t3
                  and          zero, t5, s8
                  or           t5, s7, s11
                  sltu         t3, t6, sp
                  ori          s1, t6, 1514
                  slli         s6, s11, 3
                  sra          zero, s6, s11
                  nop
                  addi         s5, s10, 1112
                  srai         t3, a5, 21
                  ori          s11, s1, -1523
                  slti         t4, t1, -1069
                  addi         s1, s3, 1108
                  sltiu        s10, s9, -356
                  sltu         a5, zero, zero
                  sltu         s5, s5, s6
                  slli         sp, t1, 2
                  slti         t6, s3, 147
                  sltu         a2, tp, t6
                  add          zero, a0, s2
                  addi         s10, s3, 1828
                  sub          sp, tp, s8
                  srli         s3, a5, 3
                  auipc        t2, 560681
                  srai         a6, a5, 17
                  or           t4, a2, a0
                  auipc        zero, 582239
                  sltu         a7, t3, t4
                  addi         a6, a1, -653
                  xor          s3, t3, a1
                  li           s9, 0x80000000 #start riscv_int_numeric_corner_stream_19
                  li           t4, 0x80000000
                  li           s2, 0xffffffff
                  li           a3, 0x0
                  li           s3, 0x0
                  li           a1, 0xd6792410
                  li           a4, 0x661e3032
                  li           ra, 0xffffffff
                  li           t2, 0x80000000
                  li           s1, 0x0
                  add          s9, s1, a1
                  addi         s2, s2, -2036
                  add          a4, t4, s3
                  add          t4, s3, a4
                  lui          t4, 311956
                  add          a1, a3, a3
                  lui          t4, 133543
                  nop
                  addi         s1, ra, 1032
                  nop
                  lui          ra, 415987
                  lui          ra, 249446
                  add          a1, a4, s1
                  lui          s9, 339982
                  auipc        t2, 427419
                  sub          s9, s1, s3 #end riscv_int_numeric_corner_stream_19
                  andi         s2, s0, 821
                  sll          a2, t2, s3
                  auipc        s9, 991203
                  auipc        sp, 676200
                  andi         gp, t3, 408
                  sll          a7, s5, t4
                  slt          t2, sp, s8
                  sra          gp, s9, s11
                  andi         t1, a3, 1278
                  xori         t4, t3, -1898
                  andi         s1, s7, -243
                  sltiu        s9, s7, -506
                  nop
                  xor          s5, a7, s11
                  sltiu        a6, t4, -1351
                  slli         t1, s2, 1
                  slt          a2, a4, s11
                  ori          a0, s2, -1089
                  slti         s6, s10, -94
                  ori          s6, s2, 1527
                  sltu         t5, s9, s7
                  andi         gp, a6, -955
                  auipc        s8, 59834
                  add          s2, a1, t0
                  lui          t3, 792934
                  srl          s9, a5, s8
                  srl          a2, t1, a4
                  srai         a6, s6, 6
                  andi         a6, s9, -1174
                  sltiu        s3, t1, 339
                  sub          s9, a4, s8
                  auipc        gp, 92710
                  andi         s5, a5, -1615
                  sltu         s3, a6, tp
                  slt          zero, a4, a1
                  slti         zero, zero, 2021
                  slt          a0, s11, s3
                  sll          s2, a3, a3
                  andi         s9, a0, 1140
                  sll          sp, gp, s1
                  sltiu        a6, s10, -1600
                  lui          a5, 304464
                  sltu         s8, a2, s3
                  xori         zero, s9, 718
                  andi         t2, t1, 815
                  srai         s9, a6, 9
                  auipc        zero, 525166
                  andi         s5, a7, 77
                  andi         a5, ra, 1462
                  slti         t4, a5, 1190
                  slt          a4, s1, gp
                  nop
                  slt          s11, s3, s3
                  srl          sp, a0, t1
                  sll          s8, s11, s1
                  nop
                  sltu         t0, s8, a1
                  sub          s4, t1, a7
                  slt          s6, t1, s7
                  nop
                  lui          a4, 931181
                  srl          s10, s2, s5
                  sub          gp, t1, t3
                  sra          ra, t2, s0
                  sra          t4, t5, a4
                  sub          s8, t5, a6
                  add          zero, s0, s9
                  or           a1, s1, a1
                  or           t3, s5, gp
                  and          s1, zero, sp
                  slt          a4, a5, s2
                  sltiu        s10, t1, 1666
                  sub          a3, a7, s10
                  ori          t2, sp, -1978
                  slli         a2, t2, 28
                  addi         a0, a0, 951
                  slt          a2, s8, t3
                  addi         a3, s3, -421
                  sra          a2, tp, a0
                  sra          zero, tp, a4
                  li           a7, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           t6, 0x99b5284a
                  li           s8, 0x0
                  li           s11, 0x363d2bf9
                  li           a2, 0xffffffff
                  li           s10, 0x80000000
                  li           a4, 0xffffffff
                  li           t4, 0x80000000
                  li           s1, 0xffffffff
                  li           a3, 0x80000000
                  add          a2, a3, t6
                  sub          a2, a4, s10
                  addi         t6, s8, -1648
                  nop
                  add          s10, s8, t6
                  nop
                  nop
                  sub          s1, a7, a4
                  lui          a3, 881861
                  lui          t6, 528877
                  auipc        a3, 952143
                  nop
                  nop
                  auipc        s10, 438112
                  auipc        s10, 556531
                  add          t4, t4, s11
                  sub          t4, s10, s8
                  add          s1, a2, t4
                  lui          a2, 768972
                  lui          s10, 22963
                  nop
                  auipc        s10, 703297
                  nop
                  sub          a7, s11, t4
                  addi         t6, a2, 1782
                  sub          t6, a7, a2
                  add          s1, s10, s10
                  lui          s11, 685698 #end riscv_int_numeric_corner_stream_5
                  sub          zero, t6, t2
                  addi         a2, t5, -142
                  slt          a0, t4, t2
                  srai         ra, s11, 6
                  and          a6, sp, tp
                  sra          zero, s9, t2
                  xori         a0, s9, 644
                  lui          s5, 158674
                  xor          t5, s10, t0
                  xori         s2, a3, 318
                  srai         s9, a2, 25
                  and          t3, t4, s7
                  sra          a1, s8, a5
                  and          a3, s4, s2
                  nop
                  andi         t3, a3, -977
                  ori          t6, s4, -825
                  addi         s2, zero, -2021
                  ori          s1, s11, 1834
                  slt          s10, a1, s9
                  sra          t5, s3, t6
                  slli         s6, t0, 31
                  srl          a0, s9, t3
                  srli         a2, sp, 26
                  slt          a3, t5, zero
                  slli         s9, t0, 12
                  sltu         gp, s8, gp
                  xori         a7, s2, 406
                  andi         zero, s0, -1066
                  and          s2, t4, a2
                  xori         s2, a5, -105
                  andi         ra, s11, -1313
                  sub          s6, t6, t6
                  sltu         s10, sp, a0
                  ori          t0, s8, -1589
                  auipc        ra, 242779
                  sltiu        t1, ra, 572
                  xor          a7, s10, s5
                  slli         a6, s6, 23
                  xor          s1, zero, t3
                  srl          a6, t6, a6
                  slt          t6, s5, s3
                  add          a7, a7, s8
                  lui          s10, 934594
                  auipc        a5, 459614
                  srl          a2, t6, sp
                  srl          a0, s2, a5
                  xori         t1, s5, 356
                  xor          a4, t4, ra
                  addi         a4, a1, -1465
                  srl          t3, t5, t0
                  slli         a6, s2, 16
                  andi         s9, a6, -1410
                  xori         a0, t4, 1866
                  lui          ra, 289690
                  nop
                  slt          ra, s5, t1
                  auipc        s11, 940524
                  srl          a3, s8, a2
                  auipc        gp, 798503
                  or           s1, t5, s10
                  sltiu        a2, s7, 2042
                  auipc        ra, 89084
                  ori          t5, sp, -1027
                  add          s8, tp, a6
                  and          s1, t0, a0
                  srai         t4, t3, 9
                  sltu         a5, zero, t1
                  slli         a1, s2, 30
                  srai         a0, s10, 5
                  addi         gp, a6, -1984
                  sub          s6, t4, a7
                  srl          a7, t3, s4
                  srai         s10, s4, 5
                  srl          s3, a4, s1
                  xori         a4, s5, 1442
                  xor          s1, t4, a3
                  slt          s2, t6, t4
                  and          a2, a6, a6
                  slli         ra, s5, 25
                  xor          sp, gp, s6
                  slli         a4, t4, 13
                  srl          a2, s5, t0
                  auipc        s10, 31709
                  srli         s2, a3, 31
                  srl          s5, s2, s10
                  sra          s11, a3, t6
                  addi         a1, s2, -1748
                  sltu         s5, t2, a5
                  sltu         t6, a7, ra
                  auipc        s1, 439897
                  srai         a5, s8, 7
                  xori         s9, t3, -1409
                  sltu         s3, tp, gp
                  nop
                  srai         s3, s10, 4
                  or           t1, a2, s6
                  and          a0, s4, zero
                  andi         a3, t0, 1600
                  sra          t6, a0, tp
                  slti         s5, t1, 876
                  nop
                  xor          t3, a3, s2
                  andi         a2, s4, 1032
                  sll          s1, a1, s6
                  srli         a7, a7, 28
                  sub          s5, s7, t3
                  xor          t2, a2, t6
                  sll          t5, s10, a4
                  andi         s10, s5, 439
                  srli         t0, t0, 20
                  or           s1, t3, gp
                  slli         a2, s11, 3
                  or           a2, a7, a2
                  srai         t6, a6, 16
                  sra          sp, zero, s4
                  add          s9, a0, s1
                  sra          s1, a4, zero
                  sll          a1, s8, t2
                  sll          a2, s9, a3
                  add          s5, s6, a1
                  lui          s10, 766678
                  srl          s4, s8, a3
                  andi         t5, s2, 1651
                  lui          a4, 873220
                  xor          t1, t4, s1
                  ori          gp, t1, 892
                  slli         t3, t2, 11
                  nop
                  andi         t5, s6, -1990
                  ori          gp, s0, -783
                  srai         s5, s1, 17
                  srli         a1, a3, 24
                  srli         gp, t2, 28
                  srai         t2, sp, 4
                  srli         a6, a2, 27
                  sltiu        t1, s10, -292
                  xori         s6, sp, -938
                  lui          t4, 576987
                  slti         s1, t0, -1509
                  xori         a0, s5, -1694
                  addi         a6, sp, -30
                  sra          s9, a4, a4
                  lui          s3, 514554
                  slti         s2, t0, -916
                  xori         s11, a1, -278
                  srli         s2, s1, 9
                  xor          sp, s3, t6
                  nop
                  li           t6, 0x65fad1e7 #start riscv_int_numeric_corner_stream_17
                  li           t5, 0x80000000
                  li           t4, 0x0
                  li           s1, 0x0
                  li           a0, 0x0
                  li           t0, 0x0
                  li           a6, 0x80000000
                  li           a5, 0x0
                  li           s3, 0x80000000
                  li           s6, 0x726b4109
                  auipc        t6, 811545
                  sub          t4, a6, t5
                  lui          s6, 679571
                  lui          s6, 457908
                  nop
                  nop
                  addi         s6, s6, 927
                  addi         a6, t6, 734
                  addi         t0, s6, -559
                  add          a0, s3, a6
                  lui          t0, 376866
                  auipc        a0, 296032
                  sub          s6, t5, s3
                  lui          s1, 1003730
                  auipc        t5, 141489
                  nop
                  lui          s3, 869936
                  sub          a6, t6, s1
                  sub          a6, a5, t0
                  sub          a5, a5, t5
                  addi         s6, s1, 1751
                  auipc        s6, 991801
                  lui          t5, 951023
                  nop #end riscv_int_numeric_corner_stream_17
                  sra          a6, s9, a6
                  or           s4, s4, a3
                  andi         t4, s6, -921
                  and          gp, ra, s8
                  addi         s8, t0, -652
                  nop
                  srli         t5, t2, 7
                  nop
                  xor          t3, s6, s9
                  slti         s4, tp, 1887
                  srli         t6, s2, 8
                  nop
                  and          s8, t5, s11
                  srai         ra, a4, 10
                  sra          s2, s4, a0
                  ori          s10, t6, -1947
                  ori          s8, zero, -1334
                  addi         a3, a6, -398
                  srl          a1, s7, s9
                  or           t6, a6, ra
                  and          zero, tp, t3
                  srli         t2, a3, 11
                  nop
                  or           a6, t1, a1
                  nop
                  sub          a2, gp, zero
                  andi         sp, a7, -1470
                  lui          t3, 543422
                  srl          t5, a7, t0
                  ori          a1, s11, 1359
                  lui          a2, 1027960
                  sra          sp, t1, t1
                  li           t1, 0x1a039fd1 #start riscv_int_numeric_corner_stream_4
                  li           s10, 0x0
                  li           t4, 0xffffffff
                  li           a7, 0xfc9ccb63
                  li           a3, 0xffffffff
                  li           s11, 0x8bb62927
                  li           gp, 0xffffffff
                  li           ra, 0x80000000
                  li           a0, 0x0
                  li           a6, 0x0
                  auipc        ra, 789654
                  addi         ra, s10, -475
                  lui          s11, 661833
                  add          a7, a7, a7
                  lui          gp, 504619
                  add          a0, a6, t1
                  lui          ra, 34842
                  nop
                  nop
                  sub          gp, gp, s11
                  addi         a3, s11, 1947
                  add          s11, a3, a0
                  addi         a0, a6, 588
                  sub          a7, a6, t1
                  nop #end riscv_int_numeric_corner_stream_4
                  srl          t2, a6, s9
                  slti         sp, a1, 832
                  or           t2, t0, s6
                  ori          gp, s0, -1588
                  xori         ra, a0, 2011
                  or           s2, a5, t3
                  slti         t3, s1, -1989
                  ori          t6, a3, -589
                  nop
                  addi         sp, zero, -1197
                  or           a6, t4, t2
                  auipc        s6, 565862
                  lui          s9, 174363
                  auipc        s2, 733312
                  srl          zero, zero, s3
                  or           s1, s4, t4
                  srai         a0, a6, 4
                  nop
                  xor          a5, zero, a6
                  and          a5, t4, s6
                  xor          a0, a0, s0
                  srai         a7, s1, 25
                  nop
                  xori         s9, s8, -1887
                  sub          t6, sp, s6
                  srai         s6, s0, 20
                  srl          s4, t5, s11
                  xori         t5, a6, 528
                  srl          s5, t6, gp
                  slli         s8, zero, 21
                  slt          gp, t6, t5
                  slli         a6, tp, 25
                  ori          s1, sp, -363
                  sll          a1, t0, s6
                  sra          zero, a7, gp
                  srl          zero, zero, s5
                  or           a4, t1, t6
                  sub          a6, t2, a4
                  srai         s10, a7, 14
                  srli         a4, a1, 6
                  addi         s2, a5, -1657
                  sra          zero, zero, t6
                  slt          ra, t0, a0
                  slt          t4, t1, s10
                  sltiu        a4, s2, 54
                  ori          s9, gp, 48
                  slt          a2, s5, a4
                  slt          t1, a5, s1
                  sll          a0, s8, zero
                  andi         a2, t2, 1658
                  add          s6, ra, sp
                  and          gp, ra, t5
                  sll          a7, tp, s1
                  xori         s5, sp, -1388
                  slti         s3, s0, 922
                  or           t3, a5, s0
                  sltiu        t0, s11, -345
                  slti         s9, a5, 148
                  ori          t0, s2, 1003
                  xori         t4, a7, 928
                  andi         s8, s6, 949
                  addi         s1, s7, -1874
                  sltu         t5, t1, t6
                  slli         a2, a5, 3
                  auipc        gp, 5151
                  auipc        t1, 642605
                  srai         a2, t5, 17
                  lui          s8, 418784
                  sltiu        s4, t3, -1290
                  xor          t1, a4, a6
                  xori         t2, t4, -263
                  srli         t5, a4, 25
                  slt          a6, t6, s10
                  slli         a0, s2, 5
                  sltu         s6, ra, a6
                  sll          s6, tp, s5
                  nop
                  andi         s2, tp, 1870
                  auipc        t0, 857628
                  srli         t3, t2, 26
                  lui          s4, 651295
                  sltu         a6, s5, s3
                  xori         a7, t3, 1962
                  xori         a1, t5, -476
                  sll          sp, a3, a2
                  addi         t3, s6, -1175
                  ori          a5, s5, -990
                  sltu         t5, s7, s7
                  srli         t6, a1, 1
                  and          s2, s10, tp
                  xori         a5, s3, -1183
                  xori         t6, s3, -252
                  slti         s9, s5, -970
                  sub          s8, s10, t5
                  srl          zero, t4, t4
                  nop
                  xori         t1, s8, -1218
                  sltu         s8, a7, sp
                  addi         a5, s10, 308
                  slli         sp, gp, 7
                  add          a3, a1, t1
                  nop
                  srai         t0, sp, 29
                  xor          s6, a1, a7
                  and          a4, s4, gp
                  lui          s3, 100443
                  lui          sp, 102894
                  srl          s8, s7, a3
                  or           s3, gp, zero
                  slti         s3, s9, 1547
                  sll          t0, s5, s7
                  ori          a3, t1, -392
                  and          a7, t4, a6
                  sub          s3, zero, t1
                  sra          t5, a5, zero
                  add          t6, a7, gp
                  ori          t2, a2, -1642
                  slli         a2, s8, 8
                  sub          a0, t3, t4
                  ori          a2, s0, -129
                  sltiu        s4, s8, -1478
                  sra          t3, s11, s1
                  sltiu        t6, a1, -690
                  xori         a5, s4, 1243
                  andi         ra, tp, -1414
                  xor          zero, t5, s0
                  sltiu        a0, ra, -259
                  xori         a6, a2, 783
                  sra          t3, a7, s11
                  add          ra, s11, ra
                  addi         ra, s9, -1745
                  sra          a4, t0, s8
                  sra          t4, s6, s6
                  or           s11, t2, a0
                  nop
                  sltu         s5, s2, s6
                  ori          ra, s9, -1356
                  srl          s5, s2, ra
                  ori          sp, a4, -1437
                  srl          s11, a0, a7
                  or           a0, a4, tp
                  ori          ra, a6, 231
                  andi         s9, sp, -846
                  sub          t4, t1, tp
                  nop
                  or           t2, s6, t3
                  slti         a5, a5, 153
                  auipc        t5, 23463
                  andi         a7, a4, -1983
                  sll          s3, s11, a4
                  slti         s5, sp, -994
                  sra          s3, t5, a7
                  sra          s6, a7, t3
                  slt          s3, s10, s6
                  sra          a0, a6, a4
                  sub          ra, a2, s1
                  xori         s6, t4, -2046
                  srl          a1, s3, s6
                  slt          a3, s10, a2
                  xori         a7, t2, 72
                  ori          t2, s9, 1576
                  and          s11, s10, s2
                  sra          s9, s9, t5
                  auipc        a5, 391551
                  sub          s8, s6, a6
                  sra          t5, s1, t1
                  auipc        gp, 569600
                  sltu         gp, s3, t1
                  srai         t0, t3, 30
                  slt          s3, s7, zero
                  ori          a6, zero, 1728
                  ori          a3, s2, 1580
                  and          t3, t2, t4
                  sll          s2, a2, s5
                  auipc        zero, 9754
                  or           t6, s10, s9
                  and          t6, s2, t2
                  nop
                  slti         t6, ra, 1662
                  sltiu        s4, t6, 911
                  sltu         t2, a4, tp
                  srl          s2, t0, a5
                  ori          ra, a6, -328
                  sub          t3, t6, t0
                  or           zero, s11, s4
                  lui          sp, 175146
                  srai         s2, s5, 20
                  andi         s8, t1, -357
                  slti         a7, a6, -821
                  xori         gp, zero, -1464
                  sltu         s5, s5, sp
                  add          s2, tp, a5
                  srl          s2, a7, a7
                  nop
                  sltu         t4, a2, s10
                  sltiu        a2, ra, 1040
                  sra          a3, s8, a7
                  lui          a6, 175070
                  or           zero, s2, s1
                  sub          s11, t6, s3
                  sll          s10, s0, a7
                  srl          a7, t3, sp
                  nop
                  sltu         s3, s2, t3
                  slti         t4, t2, 617
                  lui          s11, 894456
                  addi         t3, t1, -449
                  or           s11, t1, a0
                  lui          t5, 345613
                  add          t0, s4, t4
                  srl          sp, t0, s0
                  sll          s9, t3, s3
                  xori         s11, s10, -1620
                  srai         sp, s1, 5
                  srl          s11, s9, s1
                  srli         a0, a0, 4
                  slti         t5, s9, -1719
                  slti         s8, t2, -219
                  xor          s9, s9, s5
                  slti         s8, a1, -1367
                  slt          a0, t3, a5
                  auipc        s4, 961456
                  xori         s9, t6, 1071
                  nop
                  add          t4, s4, s1
                  sltu         a3, a5, s1
                  xori         s1, zero, -1728
                  or           a0, t6, t6
                  sltu         t1, tp, s0
                  ori          a4, a1, -1230
                  slti         zero, gp, -2014
                  slt          s5, zero, s0
                  lui          a7, 599170
                  slti         s3, zero, 101
                  sra          a1, t3, a1
                  and          zero, s7, s2
                  andi         t0, a6, 897
                  slli         zero, s8, 3
                  xor          s3, gp, s9
                  xor          s4, s4, a7
                  nop
                  add          s5, sp, s2
                  sltiu        sp, s11, -98
                  sltu         a6, a6, t6
                  slt          t1, s1, t5
                  or           t1, t4, a6
                  auipc        sp, 257939
                  or           t0, ra, tp
                  sra          a3, s2, s3
                  slti         a2, s7, -1924
                  andi         a5, a6, 379
                  or           a5, gp, s4
                  srli         a6, zero, 31
                  lui          t5, 92182
                  sltiu        a3, s7, -1860
                  sll          t0, s10, s7
                  sub          s10, a2, t2
                  addi         t4, s5, -316
                  sll          a3, sp, t5
                  sra          t1, t2, a6
                  slti         t3, s6, -1163
                  slti         a6, s4, -1114
                  nop
                  add          s8, a7, t3
                  lui          sp, 510957
                  and          a2, a4, s10
                  nop
                  andi         t1, ra, -254
                  slt          a3, s2, s7
                  xori         s1, s8, 906
                  sra          gp, t4, s2
                  sll          t5, sp, t3
                  ori          s4, s11, -813
                  xor          sp, s10, a4
                  srl          gp, ra, a1
                  nop
                  slli         s5, t2, 11
                  lui          a0, 653745
                  add          t0, a1, s5
                  srl          a6, s1, a2
                  srli         zero, s8, 25
                  sub          sp, sp, t4
                  xor          gp, s7, zero
                  sll          a1, s7, zero
                  sub          t6, s7, zero
                  srl          a7, t4, s10
                  xori         a2, zero, 1542
                  or           zero, t6, t1
                  andi         a1, a6, 1898
                  addi         a4, s10, -1889
                  sub          a5, s5, t4
                  srai         s3, a0, 30
                  slti         s1, t0, -390
                  srl          s9, t6, t3
                  lui          s4, 278729
                  sltiu        a3, a4, -1631
                  auipc        t4, 210178
                  sltu         a6, s3, s10
                  slti         s5, t3, 373
                  or           a1, s4, t1
                  sltiu        s10, t6, -1656
                  lui          s3, 670004
                  srli         s10, s11, 12
                  lui          s4, 185492
                  srl          t2, a7, a3
                  and          s2, t1, s2
                  nop
                  sll          t1, zero, t2
                  sub          gp, a5, a6
                  xori         a1, a0, 1771
                  srl          a0, s7, t6
                  srl          a5, s2, s6
                  auipc        t3, 239222
                  slli         s4, a6, 13
                  xor          a3, t4, a7
                  andi         a3, tp, -522
                  or           t1, gp, a3
                  auipc        t2, 567742
                  sltu         t2, s3, a1
                  slt          a7, a1, sp
                  srai         s3, a3, 12
                  andi         t3, t1, -607
                  andi         s9, t2, -1273
                  add          a4, s1, s11
                  sltu         zero, s7, a2
                  andi         s2, t6, 545
                  slti         t0, a1, 785
                  addi         s2, a4, 280
                  nop
                  andi         t6, tp, 1567
                  ori          zero, s2, 1056
                  xor          t0, t6, s10
                  slt          a6, s11, t2
                  sll          s11, a3, t0
                  srai         t1, t1, 22
                  nop
                  sltiu        s6, tp, -1227
                  add          s3, s4, s4
                  auipc        t0, 582096
                  slli         ra, s1, 6
                  slt          s3, sp, a7
                  xor          sp, s2, t6
                  auipc        gp, 876373
                  srl          t0, a3, s7
                  srli         sp, s2, 9
                  srai         s8, s4, 8
                  andi         s10, t3, -1624
                  ori          s5, s5, -767
                  andi         s4, t0, -215
                  and          s10, s3, a5
                  andi         sp, a6, 1164
                  and          t0, ra, t5
                  addi         a6, s1, -1510
                  or           a6, s6, t3
                  and          t2, s1, s2
                  sll          s11, s8, gp
                  nop
                  xori         t2, t1, -1626
                  xor          a5, s7, s5
                  sra          t2, a7, t1
                  sll          zero, s7, ra
                  auipc        s10, 128486
                  andi         s11, sp, 1215
                  sltiu        t6, s8, 610
                  or           a0, a0, a1
                  srl          a5, s5, a2
                  sltiu        s2, s2, -992
                  slt          a6, t5, a7
                  slt          t1, zero, s6
                  xor          a5, tp, t4
                  sll          zero, s6, s3
                  nop
                  srli         a5, a3, 19
                  xor          t0, t1, s6
                  sub          gp, a3, s5
                  lui          s9, 515471
                  srai         ra, ra, 26
                  auipc        zero, 99515
                  slt          sp, a2, s5
                  slti         a7, s2, -1562
                  auipc        sp, 573087
                  andi         a1, tp, 1241
                  sll          a3, a0, sp
                  lui          a3, 72593
                  xori         s8, sp, 910
                  add          a5, s2, s0
                  nop
                  or           a4, t6, a0
                  or           t4, s2, a6
                  lui          t2, 422241
                  slli         a0, s5, 15
                  addi         s9, s9, 1669
                  sra          s11, ra, a3
                  slt          ra, t0, s1
                  lui          s8, 736120
                  slt          t2, gp, t5
                  slt          s11, s6, s7
                  or           a1, s0, a7
                  andi         s1, a5, -85
                  sltiu        a5, t5, 1723
                  ori          s3, tp, -1582
                  addi         s1, s9, 781
                  xor          s10, gp, t2
                  add          a0, s0, t1
                  sll          gp, gp, gp
                  sub          t3, s2, s4
                  and          s6, t3, a7
                  sra          s6, a3, t6
                  xor          t3, tp, s6
                  srl          s3, a3, a3
                  and          s1, t2, s0
                  sll          s9, gp, a1
                  sltu         a5, a5, t1
                  xor          a7, ra, a6
                  sub          a3, a7, t4
                  nop
                  and          sp, sp, ra
                  sra          s9, s5, a4
                  slli         t6, tp, 31
                  srl          s1, t5, s11
                  and          a0, s2, a4
                  add          a0, t5, a4
                  auipc        a3, 50886
                  nop
                  sltu         a1, a4, sp
                  xor          t4, s9, s10
                  srl          s8, t6, t6
                  addi         s11, s6, 1237
                  addi         gp, t0, -1846
                  slti         s2, t4, 678
                  ori          t0, a7, -1292
                  and          t6, gp, s8
                  srai         a3, t3, 13
                  andi         s10, s4, -445
                  add          s5, s6, s5
                  or           t3, s11, a4
                  or           t5, t6, s4
                  srai         sp, sp, 8
                  srai         s2, a7, 22
                  slti         a3, s10, -1111
                  srai         a7, s10, 0
                  sltiu        s9, a6, 1186
                  xor          a3, s10, a7
                  sll          s11, a4, gp
                  slli         s5, t0, 29
                  xori         s5, a2, 1695
                  xor          t0, s3, gp
                  andi         s8, zero, -165
                  ori          a5, s1, -1293
                  slti         s8, s3, 1495
                  sra          s1, t1, t0
                  add          a3, tp, ra
                  sra          s3, s0, s1
                  xori         a1, s7, 1605
                  xori         a6, t4, 159
                  xori         sp, a6, -574
                  nop
                  slti         t6, s11, -207
                  xor          s3, a1, s3
                  addi         t1, s10, -1133
                  sra          sp, tp, t3
                  xori         s1, t1, -12
                  xori         s11, s1, 1025
                  srai         s8, t3, 26
                  andi         s2, t0, 58
                  nop
                  add          s11, t2, t4
                  auipc        t4, 1026388
                  xori         t5, s2, 894
                  ori          s6, s2, 1255
                  sltu         sp, s9, t0
                  xor          sp, a0, a1
                  sra          s5, a3, s9
                  slli         a4, s11, 13
                  lui          t0, 381455
                  addi         t5, a4, -1839
                  slli         zero, zero, 25
                  addi         ra, s7, 1737
                  addi         s10, s5, -1583
                  xor          a3, ra, s4
                  sll          s11, a4, a2
                  xor          s3, a3, a5
                  slt          ra, s6, s11
                  xor          sp, a5, s5
                  sltiu        t2, t4, 965
                  sub          s11, t6, t3
                  slti         t0, a4, -1352
                  sub          t4, t6, s4
                  slt          s1, gp, t4
                  sub          ra, ra, sp
                  addi         s3, s4, 877
                  sll          a1, t4, t2
                  andi         a3, a6, -1084
                  ori          t1, s4, -1775
                  xori         zero, a2, -497
                  sub          s1, a4, a0
                  sltiu        s11, t4, 898
                  addi         s9, s9, -1011
                  add          a1, s4, a3
                  sub          a2, gp, gp
                  add          t6, s8, s8
                  ori          t0, s2, 903
                  xor          s2, s8, t3
                  auipc        t4, 413217
                  srai         a3, a4, 7
                  sltiu        a0, a7, 708
                  sltiu        s4, s0, -970
                  xori         a7, s0, 1378
                  srai         t0, s1, 24
                  slli         a7, a1, 19
                  sltu         a2, s9, gp
                  slti         s8, s8, -1088
                  andi         s11, s5, 130
                  auipc        s2, 969497
                  sll          s5, s11, t5
                  add          a2, s1, a3
                  sltu         sp, s7, a7
                  srl          sp, a2, a5
                  sub          s2, gp, a0
                  lui          s11, 261407
                  slti         s8, zero, -1106
                  srai         s3, a2, 27
                  sll          a1, s3, a5
                  nop
                  xori         gp, zero, -1830
                  add          a7, a7, zero
                  sub          s1, gp, s8
                  slli         s8, t3, 20
                  sub          t1, a2, tp
                  srai         sp, s0, 4
                  andi         s10, zero, 1520
                  ori          a5, gp, -613
                  ori          s3, a1, -547
                  or           t5, tp, s3
                  nop
                  xori         s1, ra, -1607
                  sltiu        s6, a0, -443
                  srai         ra, a2, 0
                  addi         a7, t3, -1682
                  lui          t1, 897067
                  ori          t1, s1, 1068
                  and          a2, t1, t5
                  sltu         s1, a4, ra
                  lui          s1, 376808
                  addi         t3, sp, -1452
                  andi         a2, s0, -1616
                  addi         a7, s7, -1536
                  sll          s10, t3, t6
                  srl          t2, gp, s4
                  srai         a1, s3, 12
                  or           s2, t5, sp
                  add          s5, tp, ra
                  sra          ra, t1, a6
                  srl          a2, s1, s7
                  sll          a1, t0, s7
                  sra          s1, s2, tp
                  auipc        zero, 491308
                  or           s10, s0, t1
                  addi         a2, s11, 1316
                  add          t3, s1, s8
                  slli         s9, s0, 6
                  addi         s6, t1, 2035
                  and          t1, s8, a5
                  ori          a2, a1, -1980
                  sra          s3, s5, s8
                  and          s11, zero, t4
                  nop
                  slli         s5, zero, 16
                  srli         t6, a6, 29
                  srl          s4, t6, a3
                  and          s9, ra, s3
                  sltu         s2, s9, gp
                  nop
                  srl          a6, s10, s3
                  sll          t1, s3, zero
                  srl          s3, s3, s8
                  srl          s10, s3, gp
                  sra          ra, s4, s8
                  srli         s9, a3, 12
                  andi         a3, s3, 6
                  slt          a5, s0, t2
                  and          t4, t2, s10
                  sltiu        s6, s4, -1679
                  srli         s6, a1, 24
                  auipc        t4, 467946
                  ori          a6, t5, -1199
                  xor          a1, s11, a4
                  addi         s9, s8, -880
                  xor          a0, s7, a4
                  slti         sp, a2, 435
                  or           a5, s7, s3
                  srl          a1, s0, tp
                  slt          gp, s5, s8
                  lui          zero, 880449
                  slti         s2, s7, 477
                  sll          t3, s11, s7
                  andi         a7, t4, -1927
                  sll          a1, a2, t5
                  srai         gp, a3, 1
                  xor          a0, s9, s1
                  sltu         a6, t6, sp
                  sra          gp, s9, zero
                  auipc        a0, 72251
                  nop
                  auipc        s5, 145757
                  srai         s3, t0, 0
                  auipc        s8, 87644
                  srli         ra, s8, 6
                  or           a1, t6, t2
                  sra          t0, s10, sp
                  add          ra, a7, t0
                  sub          s9, a1, s7
                  and          a5, a3, ra
                  xori         s1, t5, -1381
                  sra          a1, t2, t3
                  or           t5, zero, a2
                  nop
                  srli         ra, s0, 23
                  sra          a3, s9, sp
                  sra          gp, s4, t3
                  ori          a1, ra, -571
                  and          t4, s8, t6
                  srl          s6, s10, sp
                  sll          s5, s5, s5
                  add          s2, t4, gp
                  nop
                  sltiu        t5, s3, -709
                  sra          a5, t1, s5
                  slti         ra, gp, 545
                  srli         t3, zero, 30
                  or           s9, s2, t2
                  nop
                  slli         a1, gp, 16
                  addi         s6, t1, -643
                  andi         s3, t4, 262
                  sra          a6, t4, t6
                  slt          ra, a3, t5
                  auipc        t4, 501570
                  sub          t6, t3, s1
                  addi         gp, s1, 745
                  sltiu        s5, t1, 829
                  ori          s1, s4, 2002
                  or           sp, s8, s6
                  addi         s8, s0, 1853
                  nop
                  sltu         t5, s10, s4
                  slti         t4, a4, -339
                  sub          t4, t6, t4
                  lui          s1, 489223
                  andi         s4, tp, -1417
                  srli         s8, t0, 10
                  srli         a5, s1, 11
                  ori          s4, zero, 741
                  slt          t5, s2, s10
                  add          t2, s5, t6
                  andi         s3, a0, -1382
                  slti         t6, s2, 524
                  sltiu        s8, s0, -1082
                  sra          t0, t6, s7
                  andi         a1, a4, 802
                  sra          t2, zero, s11
                  addi         t6, t1, 962
                  xor          a2, ra, t1
                  sra          a2, s8, t4
                  xor          a7, a1, a5
                  slti         s1, a2, 1124
                  xori         a7, s7, -2016
                  xori         s9, t5, -208
                  sub          t4, s2, a5
                  sra          s4, s7, t3
                  srli         s4, t3, 9
                  sub          t1, t4, a5
                  add          t2, s8, a2
                  sltiu        sp, a0, 392
                  sltu         a2, sp, sp
                  xori         a6, a6, 1119
                  srl          s4, s9, s7
                  or           ra, a4, a1
                  srl          t2, s9, a0
                  sltu         sp, s8, a6
                  xor          a0, t0, s10
                  sltu         a4, s9, s0
                  and          a6, sp, gp
                  sltiu        a6, s2, 310
                  slt          a5, s8, tp
                  andi         s10, t0, -1097
                  auipc        a0, 134530
                  addi         t1, ra, 124
                  sltiu        a0, s6, -797
                  or           s2, s8, t1
                  sra          a6, s7, a3
                  lui          s3, 649534
                  xor          a3, tp, s11
                  add          a0, s10, s11
                  slli         zero, zero, 21
                  slli         t3, s2, 29
                  auipc        s4, 475592
                  lui          a6, 1001690
                  sltu         s10, s3, a1
                  auipc        t2, 773422
                  ori          a0, s1, 149
                  auipc        t6, 158745
                  xori         sp, tp, 1547
                  srli         t3, a0, 5
                  or           s4, s6, s10
                  andi         a6, t1, 1008
                  slt          s10, s1, zero
                  slli         a6, s1, 18
                  slli         sp, s0, 12
                  xor          a2, tp, t3
                  xor          a0, t2, tp
                  sltu         t0, a5, s6
                  or           s6, s10, a7
                  ori          a5, a1, -530
                  sltu         a1, zero, s6
                  auipc        a5, 389331
                  slli         s10, t1, 4
                  nop
                  sra          s1, a4, ra
                  xori         t0, t0, 1190
                  xori         t5, a4, 181
                  sub          zero, s6, a2
                  slti         sp, s11, -1675
                  slli         t4, s0, 1
                  or           a3, s11, sp
                  and          a4, s6, a1
                  sub          t5, a1, s9
                  xor          s10, s10, sp
                  xor          a7, t0, tp
                  nop
                  sub          t3, s11, zero
                  addi         t1, a2, -1214
                  sll          a7, t0, t6
                  andi         a3, s3, -1238
                  add          gp, t3, t0
                  slli         s6, s2, 19
                  srai         a0, t3, 2
                  auipc        s9, 776543
                  addi         s2, s11, -234
                  srl          t1, s0, gp
                  auipc        a5, 300638
                  srai         a4, s11, 17
                  sub          a4, zero, s6
                  sltu         s2, t0, a6
                  nop
                  sll          t3, a5, t1
                  xor          a0, a2, t1
                  srl          a6, tp, a0
                  sub          s6, t5, s1
                  or           a0, s4, gp
                  srai         s1, a4, 22
                  slt          t3, s8, t1
                  addi         t3, t0, -2002
                  sub          a7, s7, s2
                  sra          s4, gp, a5
                  xor          s10, s11, sp
                  sltu         t3, t5, zero
                  sll          a3, a0, s4
                  lui          gp, 916728
                  andi         a2, sp, -833
                  nop
                  slt          a5, s5, a3
                  lui          gp, 298494
                  addi         s1, a2, -812
                  srli         s4, s2, 14
                  xor          ra, t3, a5
                  and          ra, s9, t1
                  sra          s4, t3, a4
                  or           a6, s4, a0
                  slt          t2, t3, a6
                  slli         zero, s2, 3
                  and          a1, s7, a0
                  sub          gp, a3, s1
                  and          s4, zero, tp
                  xor          a5, s5, a5
                  sltu         s2, s2, t0
                  sub          a2, s2, s0
                  andi         a0, s4, -2014
                  slt          a5, s7, t2
                  andi         s8, s8, 1412
                  xor          a4, s11, a4
                  slt          zero, s3, t0
                  lui          t1, 392609
                  srai         t4, a5, 0
                  lui          a2, 582735
                  auipc        t6, 225386
                  sltiu        t1, s2, 1357
                  ori          a2, t6, 1060
                  srli         a2, s8, 21
                  slli         s10, a1, 18
                  ori          s3, a4, 1479
                  xori         s8, s5, 449
                  srl          t0, s3, a4
                  sub          t6, a7, a4
                  slt          s9, s6, t5
                  sll          sp, a4, a7
                  sltu         s10, sp, zero
                  srli         a5, t6, 13
                  sll          t2, a6, a3
                  nop
                  slti         s10, zero, 321
                  sra          t5, gp, s1
                  ori          sp, a7, 266
                  addi         a2, s0, 1404
                  addi         s4, a6, 1338
                  sltu         s3, s4, s2
                  lui          s5, 972962
                  srli         t6, a6, 15
                  sltiu        a3, s2, 1036
                  xori         a3, tp, -241
                  sltiu        t4, a4, -390
                  addi         s3, s0, -835
                  lui          t0, 442475
                  xori         sp, s3, 57
                  add          t5, s9, s4
                  add          s8, t2, a7
                  addi         t0, s7, -362
                  nop
                  slt          a5, a1, a1
                  nop
                  srai         a1, sp, 2
                  ori          s3, s7, 162
                  nop
                  sltu         a6, tp, s6
                  srli         a4, t4, 5
                  lui          s8, 343138
                  sub          s4, t6, t0
                  xor          s11, s1, t3
                  srl          a0, t3, a1
                  xori         s10, s1, 317
                  slli         a3, s1, 13
                  srli         s6, a7, 18
                  nop
                  srai         s4, ra, 17
                  sub          s3, a4, a1
                  and          a6, t4, s0
                  srl          t1, a3, s11
                  slli         s9, s11, 20
                  or           a7, t2, s2
                  addi         a6, a2, -354
                  add          t6, zero, a1
                  and          s11, s7, s1
                  sra          t1, s3, s4
                  srli         s1, s10, 29
                  slt          s9, s0, t1
                  srai         t1, s5, 19
                  sltiu        t6, s3, -844
                  sub          s9, s2, a6
                  andi         t5, sp, -628
                  ori          zero, s10, 1111
                  lui          zero, 539405
                  sltu         a2, s0, t0
                  sra          zero, s10, t1
                  srl          s4, sp, s5
                  sra          a3, t4, a3
                  slli         t2, s8, 11
                  sub          s2, t1, a3
                  sll          s9, t3, s1
                  sltiu        t4, t1, -2005
                  slti         s9, s7, 309
                  li           t4, 0x84698d51 #start riscv_int_numeric_corner_stream_8
                  li           t0, 0xffffffff
                  li           a3, 0x0
                  li           a4, 0x0
                  li           s1, 0xffffffff
                  li           a5, 0x0
                  li           sp, 0xbcd7b441
                  li           a0, 0x0
                  li           s6, 0xffffffff
                  li           t1, 0x80000000
                  lui          a0, 829054
                  sub          a4, a0, t4
                  nop
                  nop
                  sub          a5, t4, t0
                  lui          a3, 902495
                  nop
                  auipc        a4, 807662
                  lui          a4, 459076
                  addi         a3, t1, 1190
                  lui          t1, 826799
                  auipc        t0, 674588
                  lui          t0, 753446
                  lui          s1, 716717
                  auipc        s1, 908054
                  add          a4, a4, a3
                  auipc        a5, 1014452
                  nop
                  lui          s6, 684162
                  lui          t4, 13402 #end riscv_int_numeric_corner_stream_8
                  and          t0, t4, s10
                  xori         gp, t2, 1355
                  slli         a6, a4, 28
                  add          s3, ra, t4
                  and          s11, t4, s6
                  and          a3, a2, a1
                  srli         s2, s4, 1
                  auipc        a1, 601948
                  xori         ra, s8, 1805
                  sra          s6, a6, s4
                  lui          ra, 250294
                  sltu         s3, s7, a3
                  or           a2, a3, t0
                  addi         s2, s4, 801
                  sltiu        s3, tp, 476
                  slli         gp, t3, 29
                  sltu         t6, s1, ra
                  slti         a5, t1, 994
                  and          a7, a4, s9
                  xor          zero, s11, s4
                  xor          s4, t2, tp
                  sll          t2, gp, t6
                  xori         s9, a0, 1294
                  slt          a1, a4, a1
                  ori          a2, s8, 1549
                  srli         s6, t1, 10
                  sra          a2, t5, t4
                  srai         t3, s0, 13
                  slt          zero, s8, gp
                  lui          a0, 817303
                  xori         a3, gp, 1251
                  or           zero, t5, s5
                  add          s4, s11, a2
                  add          s1, a5, s2
                  or           t2, t0, s7
                  xori         s8, t6, -1709
                  auipc        s4, 563521
                  nop
                  sub          a3, s0, s0
                  auipc        t2, 221628
                  slli         s1, a3, 23
                  lui          sp, 630769
                  addi         a0, t1, -1946
                  andi         t3, s1, 449
                  sltu         a4, a3, ra
                  srli         a6, t1, 11
                  srai         s2, s3, 3
                  sra          a3, t2, s0
                  addi         t0, s11, -1036
                  sltiu        s9, t6, -233
                  srl          t2, s8, s10
                  andi         t6, ra, 1976
                  slli         a7, t4, 6
                  srli         a2, a3, 16
                  sub          s6, s11, a4
                  sll          t6, a3, s1
                  andi         t1, t1, 351
                  sltu         t0, s8, a0
                  xor          t0, zero, s6
                  slli         a5, a4, 8
                  or           t1, a0, s4
                  sra          a2, zero, s2
                  srai         t6, a0, 25
                  addi         sp, s8, -1614
                  slli         a7, sp, 3
                  sll          sp, a1, s9
                  slli         s4, s6, 26
                  nop
                  xori         s2, t0, -24
                  xori         t6, a7, -1898
                  srai         ra, s1, 1
                  sub          s2, t1, s9
                  slli         s5, t0, 19
                  sll          gp, s5, a5
                  srli         s6, sp, 13
                  sltu         a1, s8, s4
                  sltu         s4, t1, a1
                  and          t0, s9, t3
                  xori         s4, t3, -2027
                  sub          a6, a1, t0
                  srli         t4, s8, 6
                  add          a0, a5, a6
                  lui          a7, 467049
                  sll          a1, s1, s1
                  sltiu        s3, s1, 564
                  slli         a1, a7, 14
                  and          t5, t1, t3
                  sltu         s10, t1, a4
                  add          s11, a0, s5
                  slti         s11, ra, -1400
                  or           t2, a0, s11
                  and          zero, s4, tp
                  slli         s5, t1, 19
                  slli         s9, s10, 7
                  sll          t6, s3, s1
                  srl          t1, s6, s8
                  sub          t6, t6, t0
                  andi         s3, s0, -542
                  add          sp, a4, a3
                  nop
                  add          t6, t0, a7
                  add          a5, t1, s10
                  slti         t2, a5, 1444
                  or           t4, t2, a4
                  xor          t3, t4, a4
                  sub          ra, a3, s6
                  sub          a4, a6, a1
                  and          s8, t1, tp
                  sll          a6, a6, s4
                  slli         t5, t1, 14
                  nop
                  sltiu        s6, s0, -749
                  srli         s6, s8, 28
                  and          sp, gp, zero
                  xori         a2, s6, 1715
                  slt          t3, ra, t6
                  slti         a6, s8, -1955
                  nop
                  slti         t4, zero, -1415
                  ori          t6, a4, 947
                  sltiu        gp, gp, -1229
                  sltu         s4, t4, t1
                  nop
                  auipc        s1, 550675
                  andi         t6, a6, -141
                  nop
                  srai         t3, t0, 8
                  or           ra, s8, t5
                  slli         t0, s5, 20
                  sub          t2, gp, a1
                  sll          t0, s10, s10
                  andi         s6, a2, 630
                  srai         s6, a1, 29
                  addi         s11, t1, 1144
                  ori          s3, s11, -1409
                  sra          gp, s4, tp
                  slt          s4, s2, s0
                  srl          t3, t1, s7
                  sltu         ra, s11, s11
                  or           a0, a0, t5
                  slti         s4, t6, 596
                  srl          a0, t2, t0
                  sra          s3, gp, s4
                  sub          s9, t2, t0
                  sltu         a1, tp, s8
                  slti         s5, t6, 1329
                  sub          s3, t2, t5
                  slt          t0, s7, s2
                  add          a2, s10, gp
                  sll          s3, t6, t3
                  sltiu        t6, t4, -140
                  andi         s10, s8, -1123
                  and          gp, ra, a0
                  ori          s9, s6, 589
                  xor          s2, ra, sp
                  slti         t6, a5, -106
                  and          t5, s7, gp
                  sltiu        s3, sp, 930
                  slli         gp, t3, 18
                  srl          a5, s5, a5
                  sra          a0, ra, s8
                  auipc        a2, 669844
                  nop
                  slti         s11, s11, -142
                  lui          t2, 347519
                  or           t0, t0, s6
                  add          t6, t6, ra
                  srai         s4, a1, 23
                  add          s2, t4, t0
                  sll          t2, a5, t0
                  sltu         gp, s7, tp
                  xori         s4, t3, 1707
                  sub          a6, a5, gp
                  slti         s9, t1, -1826
                  sltiu        s11, t6, 1274
                  sub          s10, t5, t5
                  sra          a7, a6, t2
                  andi         ra, a6, -303
                  xor          s1, a7, t3
                  sll          a0, t0, s8
                  slt          s10, s3, t6
                  srli         t2, a3, 30
                  srli         a7, a4, 27
                  andi         t4, s9, -1337
                  sra          t0, s7, s6
                  slt          s1, s5, s6
                  auipc        a7, 585767
                  sub          t6, s4, a0
                  srl          a4, s5, a5
                  ori          s9, a4, -1496
                  addi         ra, a1, 1264
                  andi         zero, tp, 179
                  srli         t4, s0, 8
                  andi         s8, a0, -672
                  and          a4, s10, ra
                  slli         a5, s2, 25
                  sub          t3, s0, zero
                  ori          t0, t5, 899
                  sra          t6, s8, s6
                  addi         a1, a4, -668
                  lui          s3, 631396
                  slt          a1, s9, t2
                  srli         t5, a0, 21
                  or           t1, ra, a2
                  slt          zero, s11, a0
                  srli         t2, s3, 29
                  addi         t6, t2, -1826
                  srai         a0, gp, 17
                  sra          a2, s4, s3
                  slt          s11, s0, s0
                  srl          a2, t2, zero
                  srl          t6, s6, s7
                  andi         t2, s6, 607
                  addi         a6, t1, -1365
                  or           a3, a4, t6
                  slti         t0, a5, 2044
                  sltu         t2, a1, t5
                  andi         t5, s6, -1091
                  slti         s6, gp, 647
                  srli         t1, s7, 7
                  nop
                  lui          s8, 815773
                  andi         a5, s1, 690
                  slli         zero, s7, 9
                  sra          a3, t3, s3
                  nop
                  addi         s5, s4, -1682
                  sltu         a1, s4, a2
                  sll          t2, gp, s9
                  srl          s3, a6, s8
                  add          s11, s6, s5
                  sll          t0, t0, gp
                  slli         s5, s3, 13
                  srai         a4, sp, 31
                  lui          t1, 221227
                  srai         gp, s10, 13
                  srl          s8, zero, s4
                  xor          s11, gp, s2
                  auipc        s2, 1036349
                  slt          a3, a0, t2
                  slti         a0, s3, -1731
                  and          s5, s9, s4
                  auipc        a7, 695955
                  xor          a4, ra, s7
                  xor          a5, s6, s2
                  add          s6, zero, s1
                  xori         a1, a3, -2045
                  srai         sp, s4, 27
                  auipc        s6, 924662
                  xor          ra, sp, a4
                  xori         a5, s8, 1699
                  addi         t0, t3, 563
                  auipc        s8, 177938
                  sub          t6, a2, a5
                  andi         s3, t0, -1035
                  slti         a2, a7, -2040
                  slli         a6, sp, 7
                  or           a1, s0, t4
                  srl          s8, s4, s5
                  sub          t6, s0, s6
                  slli         s2, zero, 6
                  sub          s6, t5, s10
                  xori         s2, t2, 1406
                  sltiu        a0, t6, 25
                  sll          a6, gp, a7
                  sll          zero, a0, s8
                  ori          a6, t3, -1140
                  xori         a1, s1, -822
                  addi         a6, a2, -1505
                  sltiu        s6, s1, -169
                  lui          a3, 894853
                  sub          s9, a6, s2
                  add          s4, s11, s8
                  sub          s9, s3, ra
                  addi         gp, t2, 1200
                  sra          a2, a3, t4
                  andi         s1, t5, 1772
                  slt          s4, t3, s2
                  addi         gp, sp, 471
                  sub          zero, t2, s0
                  srl          ra, s4, s2
                  srl          s10, a1, t2
                  auipc        a7, 510548
                  ori          s5, s1, -754
                  sra          t2, gp, t6
                  slti         t1, s10, 687
                  sll          a3, t0, sp
                  sltu         t3, tp, t5
                  nop
                  or           a4, a0, s8
                  sub          s6, t4, gp
                  sltu         a7, s1, s10
                  sra          s11, a3, sp
                  ori          s8, a4, 196
                  slt          s1, gp, t3
                  sra          s8, t1, t6
                  slti         zero, s3, -1433
                  sll          ra, s6, sp
                  add          s8, t3, tp
                  sra          a6, t0, s6
                  xor          a1, a7, s7
                  or           s8, t6, s3
                  nop
                  add          t2, zero, t4
                  or           zero, s11, s11
                  srl          a1, t1, t2
                  sltu         s6, a5, s6
                  lui          t2, 741869
                  auipc        s5, 768624
                  add          t1, a2, s7
                  slti         a7, t0, -1144
                  slli         s5, s2, 18
                  sltu         a3, t0, s11
                  sltiu        a5, a7, -963
                  sll          t4, a5, a3
                  srai         s4, s0, 0
                  addi         s2, a0, -1050
                  sltu         s11, s1, t4
                  xor          sp, s10, t0
                  add          a5, a5, zero
                  nop
                  xor          s4, s11, t0
                  xor          s4, a3, s7
                  lui          s5, 928803
                  and          t5, a6, s2
                  srai         a1, sp, 6
                  addi         sp, s3, 799
                  auipc        s9, 253432
                  andi         s6, a7, -849
                  sub          t1, s1, s7
                  or           gp, a6, gp
                  ori          s5, s10, 1184
                  xori         t1, t0, -406
                  or           a3, t1, t1
                  slti         t4, a7, -1233
                  srli         s11, zero, 9
                  slli         ra, t3, 5
                  sra          a3, ra, a5
                  or           s1, a4, a7
                  auipc        s3, 613859
                  xor          t6, ra, a1
                  srli         a1, sp, 8
                  sra          zero, zero, ra
                  and          s5, a6, s1
                  xori         s8, s10, 285
                  or           t6, a2, a3
                  addi         s6, s10, 760
                  xor          s8, s11, t3
                  addi         s5, s10, -1535
                  nop
                  xori         t0, gp, -1878
                  sll          a4, s11, s0
                  addi         s5, t2, 585
                  nop
                  xori         s9, tp, -6
                  or           t3, s10, t3
                  sub          s4, s5, ra
                  srl          s6, a3, s7
                  addi         a2, s8, 1215
                  srl          gp, s2, t5
                  lui          s1, 224401
                  sltu         s6, a0, s4
                  slt          a2, gp, s1
                  or           a4, s10, a6
                  ori          s4, s5, -1077
                  addi         s4, gp, -1498
                  ori          a2, gp, 1304
                  srai         s9, a5, 18
                  and          a6, t0, s5
                  ori          a6, s8, -21
                  andi         s2, s9, -118
                  ori          a2, tp, 887
                  auipc        t6, 608073
                  srai         s5, a7, 13
                  or           s5, a7, a6
                  xori         zero, t6, -446
                  and          a0, s5, t0
                  sltiu        a4, t2, -411
                  srai         s3, t6, 30
                  nop
                  sltu         t0, s10, t1
                  ori          s4, s10, -1180
                  add          s2, t5, ra
                  ori          sp, a6, 587
                  sltu         t4, s1, a1
                  auipc        a1, 293580
                  addi         s3, t2, -1124
                  srl          t6, a4, s0
                  sltu         s1, t5, s7
                  slt          t1, zero, s6
                  srli         a1, s4, 28
                  xori         a6, t2, -211
                  srl          t3, s11, tp
                  sltiu        a1, t4, -1102
                  auipc        s2, 33124
                  nop
                  srl          s5, a2, s3
                  and          s3, s1, a1
                  add          t1, s8, a6
                  auipc        t3, 384216
                  sltu         s11, s5, a0
                  ori          s3, s7, 1279
                  slli         t6, a5, 11
                  slli         t3, t6, 29
                  xor          s2, a3, s11
                  slli         a5, tp, 5
                  srl          s1, a5, tp
                  addi         a0, a2, -1402
                  sra          a2, s3, s8
                  xor          t4, t6, a6
                  lui          t0, 317707
                  srli         gp, a0, 0
                  nop
                  srl          a7, a3, s4
                  slt          t1, a4, t4
                  or           a4, a3, s7
                  slti         t5, s0, -1127
                  xori         ra, s1, -1610
                  nop
                  or           s11, tp, s9
                  sltiu        t4, t5, -1446
                  auipc        s8, 1010226
                  sub          zero, s11, a3
                  slti         t2, s1, 1302
                  srli         a4, t3, 11
                  sltu         t5, t0, a6
                  nop
                  slt          a7, sp, s3
                  ori          t1, t4, 1715
                  ori          a1, t2, -1327
                  xori         sp, sp, -88
                  sra          a6, tp, t6
                  srl          s8, zero, s8
                  addi         s2, a7, 567
                  srl          a3, a1, s4
                  slti         zero, t2, -2030
                  slti         a1, a3, -369
                  srl          t0, ra, s9
                  or           gp, t1, a1
                  srai         s2, t6, 28
                  xor          s1, a6, sp
                  xor          s8, s7, s4
                  sll          ra, a1, s1
                  sltiu        s11, s10, -2029
                  slti         s6, t0, -1100
                  andi         s3, t3, 642
                  slli         a5, s11, 10
                  or           a6, t6, s6
                  ori          ra, s10, 787
                  slt          s4, s1, a5
                  sra          s3, sp, t6
                  sltiu        s8, s2, -1516
                  andi         s9, gp, 316
                  slti         a0, t4, 659
                  andi         s4, a2, -1944
                  and          a3, s8, a3
                  andi         s9, ra, 942
                  auipc        ra, 253825
                  sltiu        a2, sp, 137
                  and          s9, a4, t3
                  sub          t0, s2, s8
                  xori         a4, a6, 512
                  addi         s2, s11, 1001
                  add          sp, t0, s9
                  auipc        s11, 946439
                  or           t4, a3, sp
                  ori          a1, a7, -95
                  sra          t3, t3, a0
                  slti         s11, ra, -342
                  addi         t0, s7, 1149
                  srai         a6, sp, 6
                  slli         zero, s9, 4
                  slti         s9, t5, 527
                  andi         t3, s6, 1183
                  srli         ra, tp, 18
                  srli         s8, gp, 5
                  slt          s4, s9, a1
                  slt          gp, tp, s4
                  or           t6, a0, a7
                  and          s5, sp, ra
                  xor          t0, sp, s9
                  ori          a4, t2, 345
                  slti         a7, a0, 862
                  srli         a6, a3, 6
                  slt          gp, s6, a1
                  xori         s9, zero, 1201
                  xori         s9, s5, 402
                  sltu         a5, t5, s11
                  sltu         s9, t2, t5
                  slti         s3, a1, 1919
                  sra          s3, a3, t5
                  addi         t1, t4, -2045
                  lui          s2, 848845
                  and          a6, gp, s8
                  auipc        a6, 252878
                  add          a1, a6, t3
                  xori         t6, s7, 556
                  sub          a6, s9, s2
                  addi         s10, a3, 286
                  addi         t0, s10, -1262
                  or           s8, s1, t4
                  nop
                  lui          s4, 550032
                  srai         a6, s1, 10
                  auipc        ra, 719369
                  srai         t3, s6, 9
                  and          a0, s8, gp
                  add          t0, a6, t0
                  slli         t5, s6, 12
                  add          t6, t1, ra
                  srai         sp, t5, 8
                  and          zero, s11, s11
                  ori          a1, a0, 272
                  addi         a2, a7, 227
                  addi         a5, t4, 1504
                  srli         a0, a1, 2
                  lui          s11, 398241
                  and          s10, tp, a2
                  sltu         s3, s5, a6
                  nop
                  srai         t4, a5, 31
                  nop
                  sltu         zero, tp, s10
                  add          t1, s5, a5
                  sub          ra, a6, s9
                  lui          t6, 244837
                  sub          a3, a3, t4
                  slti         gp, sp, -863
                  xor          t5, t2, s2
                  srai         s10, s1, 23
                  xor          s9, s4, t1
                  sub          a2, t1, s2
                  slti         t2, t1, 1464
                  nop
                  addi         t6, s11, 1801
                  srli         t1, s10, 24
                  srai         s9, s11, 20
                  nop
                  andi         ra, s8, 1166
                  slt          a6, ra, s4
                  xor          s5, t5, t0
                  xori         s9, a7, -1585
                  srl          s11, t1, a2
                  sltu         a6, s10, s5
                  andi         gp, s7, -663
                  auipc        sp, 617265
                  slti         a1, s6, 99
                  andi         a6, a1, -1236
                  xori         zero, s9, -1792
                  nop
                  sltiu        t4, a3, 546
                  xor          t1, t2, t4
                  xori         a1, a7, 153
                  nop
                  or           t0, s7, s8
                  sra          gp, s8, s10
                  slti         a4, a5, 1810
                  slti         a2, a4, -1149
                  auipc        s8, 558093
                  lui          zero, 810810
                  and          s4, s11, t2
                  srl          s4, a3, t1
                  xor          t0, s4, t6
                  sub          t1, a0, a5
                  andi         s1, s4, -195
                  or           s6, s10, a7
                  sra          s6, ra, s3
                  slli         s4, t4, 20
                  ori          s1, zero, -295
                  nop
                  andi         s8, s1, 216
                  sll          ra, a0, s1
                  slti         t0, s4, -1283
                  sra          a7, a6, s6
                  auipc        gp, 93809
                  sltu         s11, s6, a5
                  sltu         s5, t3, a1
                  srai         a4, t6, 31
                  nop
                  ori          t5, sp, 56
                  xor          a2, a6, s2
                  ori          gp, t5, 1870
                  slti         s4, t6, 561
                  andi         a5, t4, -1639
                  srl          t0, t6, a5
                  slli         s8, s7, 11
                  slli         s10, t2, 7
                  sra          t6, s5, s4
                  nop
                  sub          a1, t1, a5
                  or           s3, a0, s10
                  sub          s8, t1, zero
                  xori         zero, t4, 1030
                  xor          a3, s0, s9
                  sltu         a0, s4, a5
                  slt          t4, s10, tp
                  xori         sp, t3, -1702
                  xor          s3, s11, s5
                  srai         a1, s4, 5
                  xor          s6, t4, a4
                  nop
                  nop
                  srli         zero, a3, 14
                  or           ra, s11, t3
                  and          s11, s6, a0
                  andi         s1, t6, -314
                  and          s3, s10, t4
                  sll          t2, t3, s3
                  srai         a6, s7, 27
                  srl          a4, a4, s6
                  xori         s1, a0, -1813
                  lui          s3, 1013980
                  and          gp, a0, s4
                  sltiu        a6, s11, -1549
                  nop
                  ori          gp, t5, -1357
                  or           t1, s1, zero
                  srl          a5, ra, a3
                  nop
                  sltu         t3, t6, a4
                  slli         s2, t2, 31
                  lui          s5, 425274
                  andi         t4, a3, 486
                  xor          sp, t3, t1
                  srl          t3, a4, s7
                  auipc        t0, 1004513
                  sra          sp, a6, ra
                  sltiu        t4, s9, -409
                  auipc        s9, 203624
                  and          s3, a4, t3
                  and          a6, t1, zero
                  and          s10, t2, a2
                  slli         t5, s2, 2
                  xor          s4, a0, gp
                  xor          s2, a4, t1
                  add          t1, s2, t3
                  xori         t2, ra, 1559
                  sra          a5, s10, t0
                  sltu         t3, a1, a0
                  sll          s9, a0, s9
                  li           a3, 0x88b2b07b #start riscv_int_numeric_corner_stream_11
                  li           s3, 0x80000000
                  li           a4, 0x80000000
                  li           s5, 0x80000000
                  li           sp, 0xffffffff
                  li           t6, 0x2db2615c
                  li           t5, 0x80000000
                  li           s1, 0x0
                  li           ra, 0x80000000
                  li           t4, 0xe1af8f66
                  addi         sp, sp, -687
                  sub          a4, s1, t4
                  sub          t6, s1, s3
                  nop
                  add          a3, ra, ra
                  addi         sp, s3, -890
                  addi         s3, s3, 1552
                  lui          s3, 898324
                  add          s1, s1, t5
                  sub          t5, t6, t5
                  lui          s3, 638002
                  addi         a3, t5, 148
                  add          ra, t5, s1
                  add          s3, s3, ra
                  sub          sp, a4, sp
                  sub          t5, ra, sp
                  auipc        sp, 207145
                  addi         t5, s5, -106
                  nop
                  nop
                  sub          a3, t6, s3 #end riscv_int_numeric_corner_stream_11
                  xori         s11, ra, 1265
                  addi         s10, s9, -728
                  xori         a2, t1, -1947
                  srli         s2, a3, 31
                  nop
                  srai         s4, gp, 0
                  add          a2, t1, a2
                  slt          s6, s9, s11
                  slli         s5, s11, 2
                  or           a3, a3, a2
                  ori          s6, gp, -1492
                  addi         a3, s2, -1917
                  sltu         t4, s3, t5
                  xor          s10, s11, tp
                  ori          t5, gp, 188
                  sra          a1, a5, s9
                  sltu         a1, s1, a4
                  and          a6, t0, a4
                  srai         a2, s4, 30
                  add          t3, sp, ra
                  sra          t0, s9, tp
                  slt          s10, s8, a6
                  srli         s2, s10, 21
                  and          s2, s2, t2
                  sltiu        s10, s4, -1412
                  srl          a0, s0, gp
                  nop
                  xor          s5, s9, a7
                  sub          zero, a2, a5
                  slli         a6, sp, 21
                  xor          s6, t1, a0
                  sra          ra, a0, zero
                  and          s4, a5, gp
                  lui          s10, 251218
                  nop
                  ori          zero, s4, -1314
                  lui          s8, 106137
                  ori          s1, gp, 134
                  andi         s10, t3, -1839
                  sra          a6, zero, a7
                  srli         s3, s8, 7
                  and          s6, gp, s6
                  sra          s10, s7, t3
                  sltiu        a5, s5, 1463
                  andi         t1, t3, 1408
                  or           a5, a4, sp
                  lui          s4, 106922
                  ori          t5, t2, 1199
                  srli         a1, a2, 21
                  auipc        s3, 893829
                  sll          s10, gp, s5
                  ori          a6, t4, -711
                  srai         s4, s6, 6
                  slli         s11, s6, 30
                  andi         s10, s4, 1112
                  xori         a1, ra, -1314
                  and          a7, a7, sp
                  slli         s8, s10, 10
                  and          a2, a0, s3
                  sll          t4, a3, t3
                  andi         a5, a5, -1384
                  add          s5, t6, a5
                  srai         a6, s6, 25
                  srl          s10, sp, t6
                  srl          a7, t5, s0
                  slli         a7, a5, 9
                  auipc        s2, 967993
                  sltiu        sp, a5, 885
                  slli         a6, t6, 13
                  sltiu        sp, s3, 1615
                  auipc        a3, 41041
                  xori         t3, s6, 1880
                  srai         a3, s1, 5
                  sltiu        gp, t0, -1324
                  srai         t2, a0, 17
                  srl          a5, s3, t4
                  addi         s5, s8, 1541
                  auipc        s3, 230794
                  srli         t6, a5, 9
                  sll          s6, s1, t1
                  srl          ra, t2, t5
                  or           t1, a0, a4
                  or           gp, a4, a2
                  xor          a4, s7, s4
                  slti         s10, s10, -1482
                  addi         s6, s9, 281
                  srli         ra, a7, 23
                  lui          s10, 642225
                  auipc        s4, 373888
                  addi         a3, s1, 467
                  srl          a2, a3, a5
                  sltiu        s10, s9, -1622
                  slti         a0, t6, -1245
                  sltiu        s6, a5, -280
                  addi         t6, sp, 852
                  sll          s3, a1, t6
                  srli         a7, a3, 12
                  auipc        s10, 32455
                  and          a7, zero, a2
                  auipc        s11, 1030060
                  addi         s4, a0, -1994
                  srl          a0, a4, s10
                  srli         a6, t5, 21
                  slt          a3, a4, ra
                  slli         s11, t6, 4
                  srli         s1, t2, 8
                  ori          a6, a6, -1963
                  xor          s4, zero, s0
                  srl          t6, s2, ra
                  sltiu        a1, s8, -698
                  srli         a2, t3, 23
                  andi         s6, tp, 7
                  addi         t1, a2, -113
                  xori         a1, s6, 1253
                  add          sp, gp, t4
                  ori          s6, t1, 266
                  and          s11, s3, t1
                  srl          sp, t4, a1
                  nop
                  slli         a1, sp, 22
                  sltiu        s10, a0, -1512
                  andi         gp, t0, 467
                  slt          s5, t4, a5
                  sltu         t5, t2, s0
                  and          s10, a5, tp
                  andi         a0, s3, -1671
                  srli         a6, a0, 13
                  sltu         a0, ra, s5
                  addi         a4, s11, 1435
                  sll          a3, t0, t0
                  nop
                  sub          t4, t2, a3
                  srli         s3, s2, 25
                  slti         t0, s11, 1195
                  slt          gp, s11, a1
                  sra          a3, ra, s7
                  auipc        ra, 385726
                  sub          t6, t6, t0
                  sub          s10, t0, t2
                  ori          t1, a6, -181
                  ori          t3, a3, 808
                  sra          a0, gp, s6
                  xori         a3, a5, 1319
                  sll          gp, t3, a4
                  addi         t0, t4, 1115
                  addi         s1, s4, -1872
                  add          a5, a7, a2
                  srai         s9, s10, 24
                  auipc        a4, 348902
                  or           t1, s9, s8
                  sltiu        s3, a3, 1265
                  xor          a1, s4, a1
                  xori         t2, sp, -1854
                  sra          t0, s4, t1
                  sll          s11, zero, a4
                  srli         s9, a4, 18
                  srl          s3, ra, s3
                  slli         s10, s6, 0
                  and          a1, t5, t0
                  and          sp, s8, s11
                  add          s10, s1, a1
                  add          s11, a2, a7
                  sltu         a2, s1, t1
                  addi         t3, s9, 132
                  nop
                  slli         a0, a6, 1
                  auipc        zero, 108764
                  add          t0, s5, s2
                  add          sp, s1, a3
                  srli         s2, a7, 3
                  sltiu        t6, sp, 1492
                  add          t1, a3, s7
                  slt          t4, s3, s5
                  slti         s5, a4, 984
                  srai         s2, zero, 31
                  srl          ra, gp, s3
                  nop
                  ori          s4, s7, -1778
                  lui          a3, 1047662
                  addi         a4, a4, 217
                  nop
                  addi         s9, t3, -559
                  srli         zero, s10, 23
                  slt          gp, a6, ra
                  slt          zero, s11, t2
                  and          t1, s11, a1
                  xor          a0, tp, s10
                  slt          gp, t1, t6
                  slli         a4, s2, 28
                  slli         s1, s4, 21
                  sltu         s1, a6, s5
                  slti         t5, s9, -489
                  srl          sp, a2, tp
                  slt          s9, a3, s6
                  xori         s6, t5, -1354
                  add          a6, s11, s9
                  ori          s1, t5, 219
                  sltiu        s1, s5, 1254
                  xori         zero, s11, -442
                  li           t1, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           a7, 0x80000000
                  li           t2, 0x0
                  li           s3, 0x1b0c57b6
                  li           t5, 0x80000000
                  li           a6, 0xffffffff
                  li           sp, 0xffffffff
                  li           ra, 0xf6f0465d
                  li           t3, 0x1d4e00d6
                  li           t4, 0x0
                  add          t1, t5, ra
                  nop
                  auipc        t5, 726187
                  auipc        s3, 280630
                  add          t4, sp, t5
                  addi         t3, t2, -1282
                  lui          a6, 19829
                  nop
                  lui          t4, 480906
                  addi         t1, ra, 854
                  add          t2, t5, a6
                  addi         t3, t4, -1472
                  auipc        s3, 142987
                  sub          sp, ra, a7
                  lui          a6, 1018833
                  sub          t4, t3, s3
                  lui          sp, 39341
                  lui          ra, 885829 #end riscv_int_numeric_corner_stream_9
                  add          s6, s6, t0
                  sltu         s5, a5, s7
                  sltu         s9, tp, t2
                  sub          t2, s9, gp
                  sltu         s2, tp, gp
                  slli         gp, t3, 5
                  sra          s1, s3, ra
                  or           s3, s4, t3
                  srl          zero, s10, t5
                  andi         a6, s9, -1101
                  srl          s9, a7, ra
                  slti         a0, a1, 1472
                  auipc        s6, 817239
                  xor          s1, gp, s6
                  srli         ra, a2, 11
                  sltu         a5, t3, tp
                  auipc        a1, 436324
                  sll          s5, s2, s2
                  sltu         s11, sp, t6
                  sll          s11, t0, s4
                  sltu         a1, s4, s11
                  add          zero, ra, t3
                  auipc        s8, 537172
                  sub          s3, s10, a7
                  addi         s4, s4, 54
                  add          gp, s3, t2
                  sub          t6, tp, s10
                  sltiu        s8, ra, -420
                  sub          a4, t3, a1
                  addi         a0, s2, -42
                  srai         s10, t3, 3
                  sll          s4, t3, a0
                  nop
                  sra          a6, s3, s1
                  slti         s8, s5, -966
                  nop
                  andi         s10, a3, -1037
                  sll          ra, gp, t4
                  lui          t0, 731788
                  add          a2, s2, a5
                  slt          s1, a4, t0
                  srai         t4, a5, 4
                  sltu         t1, s4, s8
                  sltiu        s6, t6, 1981
                  auipc        s2, 213176
                  add          zero, a2, t0
                  sltiu        s8, a5, -1681
                  srl          t3, gp, s9
                  srl          s11, t4, a3
                  sll          t6, s5, s3
                  sra          t2, s10, a5
                  xori         s2, s11, 98
                  xori         s1, a2, 620
                  slli         t0, s10, 23
                  or           t4, ra, a0
                  sll          t0, a2, s9
                  auipc        s5, 785915
                  lui          s10, 894814
                  sub          t3, s2, t6
                  srli         gp, sp, 9
                  srai         a0, s5, 23
                  slli         a6, a6, 21
                  sltu         s8, a2, a3
                  add          a7, gp, s10
                  srli         a7, sp, 3
                  sra          t6, s3, sp
                  srl          ra, t0, s5
                  xor          s9, t5, a2
                  andi         t6, a1, 516
                  srl          s9, s3, t1
                  sll          s3, ra, a2
                  andi         a6, t1, 2014
                  sll          t4, t3, s7
                  auipc        a6, 165254
                  srai         t2, t4, 19
                  add          s11, t0, sp
                  auipc        s1, 891513
                  andi         s1, s11, 1391
                  add          s1, a5, s5
                  lui          s3, 442658
                  addi         a7, s6, -363
                  andi         s11, t0, -783
                  addi         s4, t3, -1421
                  nop
                  sll          zero, a0, tp
                  add          a1, a0, s1
                  slli         s1, s9, 28
                  srai         t0, s9, 20
                  nop
                  srli         s1, s7, 11
                  srai         s9, s10, 28
                  srli         zero, a2, 29
                  srl          a6, t6, a1
                  sltiu        zero, s1, -223
                  or           t5, t3, a3
                  addi         a3, a7, 1573
                  sltu         a0, a0, tp
                  andi         a7, a1, 975
                  addi         a7, a0, 783
                  srl          a4, s7, a3
                  sltu         s8, s9, t6
                  ori          a2, a0, -1658
                  xori         s10, s5, -349
                  and          s9, a5, s2
                  xori         s5, a2, 1465
                  sltiu        gp, t1, -430
                  add          sp, a5, a4
                  sra          s5, s4, s0
                  addi         t4, s4, 174
                  slli         s4, s10, 14
                  la x23, test_done
                  jalr x0, x23, 0
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
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x8, x4, zero
                  csrr x24, 0x300 # MSTATUS
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 31
                  bne x24, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x24, 0x341 # MEPC
                  csrr x24, 0x342 # MCAUSE
                  li x16, 0x3 # BREAKPOINT
                  beq x24, x16, ebreak_handler
                  li x16, 0x8 # ECALL_UMODE
                  beq x24, x16, ecall_handler
                  li x16, 0x9 # ECALL_SMODE
                  beq x24, x16, ecall_handler
                  li x16, 0xb # ECALL_MMODE
                  beq x24, x16, ecall_handler
                  li x16, 0x1
                  beq x24, x16, instr_fault_handler
                  li x16, 0x5
                  beq x24, x16, load_fault_handler
                  li x16, 0x7
                  beq x24, x16, store_fault_handler
                  li x16, 0xc
                  beq x24, x16, pt_fault_handler
                  li x16, 0xd
                  beq x24, x16, pt_fault_handler
                  li x16, 0xf
                  beq x24, x16, pt_fault_handler
                  li x16, 0x2 # ILLEGAL_INSTRUCTION
                  beq x24, x16, illegal_instr_handler
                  csrr x16, 0x343 # MTVAL
                  1: la x23, test_done
                  jalr x1, x23, 0

ecall_handler:    
                  la x24, _start
                  sw x0, 0(x24)
                  sw x1, 4(x24)
                  sw x2, 8(x24)
                  sw x3, 12(x24)
                  sw x4, 16(x24)
                  sw x5, 20(x24)
                  sw x6, 24(x24)
                  sw x7, 28(x24)
                  sw x8, 32(x24)
                  sw x9, 36(x24)
                  sw x10, 40(x24)
                  sw x11, 44(x24)
                  sw x12, 48(x24)
                  sw x13, 52(x24)
                  sw x14, 56(x24)
                  sw x15, 60(x24)
                  sw x16, 64(x24)
                  sw x17, 68(x24)
                  sw x18, 72(x24)
                  sw x19, 76(x24)
                  sw x20, 80(x24)
                  sw x21, 84(x24)
                  sw x22, 88(x24)
                  sw x23, 92(x24)
                  sw x24, 96(x24)
                  sw x25, 100(x24)
                  sw x26, 104(x24)
                  sw x27, 108(x24)
                  sw x28, 112(x24)
                  sw x29, 116(x24)
                  sw x30, 120(x24)
                  sw x31, 124(x24)
                  la x23, write_tohost
                  jalr x0, x23, 0

instr_fault_handler:
                  add x4, x8, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

load_fault_handler:
                  add x4, x8, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

store_fault_handler:
                  add x4, x8, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

ebreak_handler:   
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x4, x8, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

illegal_instr_handler:
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x4, x8, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x24, 0x300 # MSTATUS;
                  csrr  x24, 0x304 # MIE;
                  csrr  x24, 0x344 # MIP;
                  csrrc x24, 0x344, x24 # MIP;
                  add x4, x8, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
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
