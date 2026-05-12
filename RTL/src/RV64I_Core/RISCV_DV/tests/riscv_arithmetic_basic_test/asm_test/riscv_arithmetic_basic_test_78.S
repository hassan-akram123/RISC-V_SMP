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
                  li x7, 0x40000100
                  csrw 0x301, x7
kernel_sp:        
                  la x9, kernel_stack_end

trap_vec_init:    
                  la x7, mtvec_handler
                  ori x7, x7, 1
                  csrw 0x305, x7 # MTVEC

mepc_setup:       
                  la x7, init
                  csrw 0x341, x7

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x7, 0x1800
                  csrw 0x300, x7 # MSTATUS
                  mret
init:             
                  li x0, 0xf641c39b
                  li x1, 0xc3310b4f
                  li x2, 0xf8f19392
                  li x3, 0x88298c5e
                  li x4, 0x80000000
                  li x5, 0xf
                  li x6, 0x0
                  li x7, 0xf78609e5
                  li x8, 0xa
                  li x11, 0xf3e17acb
                  li x12, 0xfe03aa01
                  li x13, 0x6
                  li x14, 0x354d7ead
                  li x15, 0xf088c44b
                  li x16, 0x0
                  li x17, 0xf684c9d9
                  li x18, 0xf2cc2cf3
                  li x19, 0x0
                  li x20, 0x0
                  li x21, 0x80000000
                  li x22, 0x5
                  li x23, 0x80000000
                  li x24, 0xd
                  li x25, 0xfc079fec
                  li x26, 0x80000000
                  li x27, 0x9
                  li x28, 0x0
                  li x29, 0xa
                  li x30, 0x35dc5db4
                  li x31, 0x1de3fe9b
                  la x10, user_stack_end
main:             li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_6
                  li           s8, 0x0
                  li           a5, 0x797f61b7
                  li           s3, 0x80000000
                  li           s5, 0x0
                  li           s9, 0x80000000
                  li           s11, 0x80000000
                  li           a1, 0x454afd36
                  li           s2, 0x377af12c
                  li           a3, 0x0
                  lui          a3, 351261
                  auipc        s5, 1040725
                  lui          s5, 68926
                  auipc        a5, 751507
                  lui          s11, 837359
                  add          s5, ra, a5
                  lui          s5, 211012
                  auipc        s5, 1023116
                  add          a5, s9, s11
                  lui          a1, 131868
                  nop
                  add          s3, s5, s5
                  nop
                  nop
                  sub          s9, s5, ra
                  auipc        s2, 297195
                  addi         a5, s8, -639
                  add          a3, a5, s9
                  nop #end riscv_int_numeric_corner_stream_6
                  li           a3, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           a7, 0xffffffff
                  li           t0, 0x0
                  li           t5, 0x59809396
                  li           gp, 0xf42069a3
                  li           a4, 0x80000000
                  li           s11, 0x0
                  li           t1, 0x80000000
                  li           s4, 0x80000000
                  li           t6, 0x80000000
                  nop
                  auipc        t5, 164482
                  addi         s11, gp, 822
                  nop
                  add          t0, s11, t6
                  add          t0, t5, gp
                  sub          a4, s4, t0
                  auipc        t5, 794701
                  lui          a7, 767304
                  sub          s4, t5, t5
                  nop
                  add          t0, t6, a4
                  auipc        s11, 269523
                  auipc        a3, 202810
                  sub          a3, t0, a4
                  lui          t0, 68224
                  add          a7, s4, s11
                  sub          a4, t0, a3
                  sub          a4, t5, t5
                  sub          s11, a7, a7
                  sub          t6, t1, a4
                  add          t1, t5, t0 #end riscv_int_numeric_corner_stream_5
                  li           a2, 0xb7ea4855 #start riscv_int_numeric_corner_stream_12
                  li           t4, 0x0
                  li           t2, 0x87795520
                  li           s4, 0x80000000
                  li           t1, 0xffffffff
                  li           sp, 0x80000000
                  li           t6, 0x80000000
                  li           s8, 0x80000000
                  li           s11, 0x0
                  li           t0, 0x80000000
                  lui          s11, 648041
                  auipc        a2, 734788
                  sub          t1, t0, t1
                  auipc        t6, 581461
                  sub          a2, t2, t2
                  lui          sp, 733258
                  sub          s4, sp, t6
                  auipc        t1, 435882
                  lui          s11, 453873
                  addi         t4, s4, -1961
                  addi         a2, t0, -2005
                  auipc        t2, 414172
                  auipc        t4, 372964
                  lui          t6, 702887
                  nop
                  addi         t4, t1, 194
                  sub          t6, t2, s8
                  nop
                  auipc        t2, 495907
                  lui          t1, 692120
                  add          t6, s4, s11
                  lui          t4, 923617
                  nop
                  auipc        s4, 900293 #end riscv_int_numeric_corner_stream_12
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           t1, 0xffffffff
                  li           a4, 0x574a55b4
                  li           gp, 0x0
                  li           s6, 0x4541e136
                  li           s11, 0x80000000
                  li           s4, 0xffffffff
                  li           ra, 0xffffffff
                  li           a3, 0xffffffff
                  li           s0, 0x80000000
                  add          s2, s2, s4
                  sub          s11, s6, a3
                  sub          t1, s4, s0
                  auipc        gp, 687554
                  add          t1, s11, a3
                  auipc        s6, 155221
                  sub          s6, s2, s11
                  lui          t1, 172187
                  sub          s11, ra, gp
                  nop
                  add          s0, ra, t1
                  sub          s2, s4, a3
                  add          gp, s4, a4
                  addi         a3, s2, 1756
                  addi         gp, ra, -1924
                  add          a3, gp, gp
                  nop
                  add          s6, s11, t1
                  lui          ra, 987000
                  sub          s11, ra, s11
                  addi         gp, t1, -131
                  sub          s6, gp, a4
                  lui          ra, 810279 #end riscv_int_numeric_corner_stream_1
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           a4, 0xf681cbd4
                  li           t3, 0x0
                  li           s6, 0x80000000
                  li           gp, 0x0
                  li           s10, 0x0
                  li           a6, 0x80000000
                  li           s5, 0x80000000
                  li           t6, 0x80000000
                  li           t0, 0x3351dca3
                  add          s6, s2, gp
                  auipc        t6, 363240
                  add          s6, t3, s5
                  addi         s10, s6, 365
                  nop
                  lui          s5, 592804
                  addi         a6, t6, 1350
                  addi         s5, t3, -1692
                  lui          a6, 640909
                  addi         a6, s5, 313
                  auipc        t3, 858315
                  sub          t3, a4, t0
                  sub          s5, t6, a4
                  nop
                  lui          t6, 366196
                  addi         a6, s2, -1739
                  nop
                  auipc        gp, 1021923
                  auipc        t3, 392676
                  addi         t6, a4, -430 #end riscv_int_numeric_corner_stream_11
                  li           t5, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           t2, 0x0
                  li           s2, 0x52503a22
                  li           t6, 0xdadfb32d
                  li           s5, 0x80000000
                  li           a2, 0xf8188325
                  li           s3, 0x0
                  li           s9, 0x80000000
                  li           ra, 0x9d6795af
                  li           a4, 0xffffffff
                  add          ra, a4, t6
                  addi         s3, s3, -1541
                  sub          s5, t5, s2
                  sub          s2, a4, s9
                  nop
                  add          s5, ra, t5
                  sub          a4, s9, s2
                  sub          s9, t2, s3
                  sub          t6, a4, a2
                  add          t5, s3, s9
                  add          a2, a4, t6
                  lui          t2, 329414
                  addi         t2, a4, -936
                  auipc        ra, 413474
                  lui          s3, 44565
                  auipc        t5, 6928
                  nop
                  add          s9, t2, ra
                  auipc        s2, 678043
                  sub          s3, s9, s3
                  add          t5, a4, a2
                  sub          s9, a2, t2
                  auipc        s3, 185196
                  lui          t2, 762675
                  sub          a2, s9, a4
                  addi         a4, t6, -47 #end riscv_int_numeric_corner_stream_0
                  li           t1, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           a5, 0xc6b78bb2
                  li           s2, 0xc5e1229f
                  li           a1, 0x80000000
                  li           t5, 0x1cd77b69
                  li           a2, 0xffffffff
                  li           tp, 0xffffffff
                  li           t3, 0x0
                  li           t0, 0xffffffff
                  li           s4, 0x80000000
                  nop
                  auipc        a1, 988078
                  lui          t1, 289521
                  lui          s2, 215864
                  nop
                  add          t0, s2, a2
                  sub          a2, t3, t0
                  addi         s4, t3, 259
                  nop
                  sub          t3, tp, t1
                  lui          a5, 290923
                  auipc        t3, 965337
                  addi         a1, tp, -916
                  lui          a5, 184
                  lui          a5, 116671
                  lui          s4, 455268
                  sub          t5, a5, a5
                  sub          a2, s4, s2
                  nop
                  add          tp, a2, tp
                  nop
                  add          s2, a5, tp #end riscv_int_numeric_corner_stream_16
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_7
                  li           s4, 0x2f6d8ddb
                  li           t3, 0xab4d33c6
                  li           s5, 0x0
                  li           a7, 0xffffffff
                  li           t4, 0xffffffff
                  li           s3, 0x0
                  li           a4, 0xffffffff
                  li           s9, 0x80000000
                  li           s2, 0xffffffff
                  nop
                  addi         a4, s3, -1580
                  auipc        s9, 332752
                  addi         a4, t3, 597
                  lui          a4, 957809
                  auipc        t3, 275223
                  lui          a4, 1010563
                  addi         t4, s3, -216
                  add          t3, s5, s3
                  sub          t4, a7, a4
                  sub          s4, s5, t3
                  lui          t4, 700260
                  addi         a7, s4, -878
                  addi         s3, a7, -1968
                  nop
                  addi         a7, t2, 1683
                  lui          a4, 799504
                  addi         t2, t3, -1745
                  addi         s5, s4, -1194
                  auipc        s4, 236381
                  sub          t3, s4, s9 #end riscv_int_numeric_corner_stream_7
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           s2, 0xffffffff
                  li           t1, 0xc70e8968
                  li           s6, 0xffffffff
                  li           t4, 0xffffffff
                  li           s4, 0x0
                  li           a5, 0x0
                  li           tp, 0xffffffff
                  li           s9, 0xffffffff
                  li           gp, 0xffffffff
                  sub          a5, gp, gp
                  lui          tp, 692880
                  add          s9, s2, tp
                  auipc        s2, 761415
                  sub          s9, s6, t4
                  nop
                  addi         gp, tp, 169
                  lui          t1, 962474
                  sub          s2, gp, t2
                  auipc        s6, 522308
                  auipc        t1, 545577
                  addi         s6, gp, 1081
                  sub          a5, s6, t4
                  lui          a5, 629699
                  auipc        t2, 196378
                  lui          gp, 157633
                  auipc        t2, 86973
                  add          t4, t4, gp
                  auipc        s6, 948198
                  addi         t4, s4, 1854
                  addi         s9, s6, 1358
                  lui          s4, 850399 #end riscv_int_numeric_corner_stream_13
                  srli         t3, s11, 7
                  sub          a6, s10, t1
                  sra          t4, a5, ra
                  or           s0, t3, a7
                  lui          t4, 188578
                  addi         a1, s6, 955
                  sub          tp, t0, a7
                  or           s4, s3, s1
                  and          t2, t2, s3
                  sltu         t3, s9, s0
                  sra          a6, t1, t0
                  srai         a3, zero, 13
                  xori         s8, s3, -799
                  srli         tp, s1, 21
                  or           t2, t5, s4
                  lui          ra, 271158
                  andi         sp, s4, -578
                  slli         tp, zero, 18
                  or           a5, s9, a2
                  add          t5, s6, s2
                  add          t4, s6, s0
                  sltu         s8, t4, sp
                  slt          s2, a1, a1
                  srli         a7, s9, 12
                  and          s3, t5, a0
                  slt          s11, t2, s4
                  andi         a3, s6, -270
                  srai         s2, a5, 13
                  sltiu        s9, t2, 1508
                  sltiu        a3, t3, -621
                  sltu         s11, s8, s8
                  xori         t3, t5, 144
                  srl          s8, t2, sp
                  slli         ra, s0, 4
                  add          t0, sp, t5
                  andi         s6, a2, 912
                  sll          s6, s2, s10
                  slli         zero, s3, 29
                  sll          a4, t3, ra
                  andi         zero, a3, -404
                  slli         tp, tp, 23
                  xori         tp, a2, 1217
                  xori         s11, t0, -1432
                  srli         tp, a2, 13
                  srl          s4, s9, tp
                  lui          t0, 690023
                  andi         t4, t0, 708
                  slti         s10, a3, 762
                  srl          s8, s4, t2
                  slt          t6, a2, a2
                  sltu         t6, a0, sp
                  sub          s6, a4, s11
                  ori          s2, s5, -1244
                  slt          s0, a1, t5
                  sltu         a1, t1, s8
                  addi         a4, sp, 1422
                  addi         ra, a3, 974
                  srli         a7, s3, 17
                  xori         s0, a0, -1111
                  ori          s6, a5, -1760
                  nop
                  addi         t0, a7, -1838
                  andi         a3, ra, 1288
                  ori          s4, a3, -130
                  sll          s10, a7, sp
                  sub          s4, s11, t2
                  and          s2, gp, s5
                  sltu         s9, s8, a6
                  auipc        a4, 751150
                  and          s6, s1, s10
                  andi         tp, s11, 685
                  slti         s2, s6, 808
                  sltiu        s6, t1, -2026
                  slt          s4, s2, tp
                  sltiu        t6, t5, -710
                  add          t3, a5, t6
                  andi         ra, a1, 214
                  slli         s3, s0, 20
                  or           s3, t3, s8
                  slti         a7, a5, 391
                  slti         a7, s1, 614
                  slti         s8, s1, 778
                  srli         a5, a4, 8
                  slt          t0, t2, s4
                  auipc        t6, 386861
                  sub          a1, a2, t5
                  xori         s8, a0, -1341
                  sub          a4, a5, sp
                  sra          t4, t0, a6
                  sltu         s9, s10, s6
                  sll          a6, a6, t6
                  auipc        t6, 499493
                  slti         a5, s2, 1857
                  andi         t3, t3, 727
                  auipc        s5, 847394
                  slti         a2, s10, 287
                  sltu         s11, s4, zero
                  slti         t5, a5, 1564
                  xori         s4, sp, 42
                  or           s0, s4, ra
                  andi         s10, s0, 791
                  auipc        ra, 732906
                  srai         t4, s4, 29
                  sra          s9, a7, a3
                  sltiu        s6, gp, 1431
                  srli         zero, gp, 8
                  and          s6, t1, a7
                  sra          t5, a6, gp
                  ori          zero, ra, -886
                  xori         t2, s3, 1389
                  xor          s8, tp, a6
                  srli         a7, a0, 9
                  nop
                  srl          s8, t5, ra
                  sltiu        t4, t6, -1287
                  andi         s8, s10, 50
                  xori         s4, s4, -1013
                  slli         ra, s2, 18
                  srli         a4, tp, 5
                  sltu         t6, t2, s1
                  nop
                  slt          ra, s8, gp
                  xori         t5, s10, 1416
                  sltiu        zero, a0, -1702
                  ori          s4, a7, 147
                  xor          ra, gp, s3
                  ori          a1, gp, -1731
                  or           gp, tp, s4
                  sll          ra, s5, t4
                  addi         t5, t1, 378
                  srli         zero, s7, 31
                  sub          a3, s6, a3
                  srli         tp, a4, 27
                  andi         s4, s11, -1313
                  add          s0, zero, s5
                  srai         a5, a4, 28
                  addi         t4, a1, -462
                  auipc        a5, 659707
                  slli         a7, s2, 1
                  ori          a7, t6, -734
                  srai         tp, s1, 6
                  ori          t1, a3, -144
                  lui          t3, 71999
                  srl          a7, t3, gp
                  and          s5, s0, t1
                  sltiu        s11, s5, -1557
                  xori         s11, s2, -280
                  or           s3, t0, s11
                  ori          s11, tp, -1123
                  sub          s3, s5, t3
                  srai         t1, t2, 15
                  xori         s3, tp, 667
                  xori         a7, s0, -7
                  and          a1, t5, s1
                  lui          t6, 151496
                  sltiu        tp, gp, 31
                  sll          s0, a7, sp
                  nop
                  auipc        t6, 307661
                  sra          a4, s8, gp
                  sltu         s10, a1, tp
                  sub          t3, s5, a7
                  sra          t3, t2, sp
                  andi         gp, s0, -101
                  xori         s2, a6, -318
                  auipc        s6, 101224
                  srl          a5, s5, t6
                  andi         t3, s6, 932
                  sltu         s10, s10, s8
                  ori          s10, s7, 899
                  xori         zero, s0, -193
                  lui          ra, 283217
                  nop
                  nop
                  slli         t4, s7, 14
                  lui          a1, 924626
                  slli         a7, s4, 6
                  srl          a2, s1, s2
                  auipc        s0, 545182
                  xori         ra, s8, -611
                  xori         a3, a6, -240
                  andi         a2, t1, -589
                  slli         s8, s6, 28
                  srl          s4, s7, sp
                  lui          s0, 716085
                  slt          zero, s3, t0
                  srl          a7, a0, t2
                  slli         s11, a0, 5
                  addi         a1, t0, -409
                  nop
                  auipc        gp, 210080
                  lui          a3, 613377
                  lui          a2, 733318
                  slt          t0, a1, a1
                  sub          s10, t0, gp
                  or           a1, s1, a3
                  ori          a2, tp, -793
                  and          s4, s7, a4
                  addi         gp, t4, 1816
                  andi         sp, ra, -1437
                  slt          a6, a7, t1
                  srli         gp, a0, 23
                  or           t4, t1, t5
                  srli         a5, t5, 22
                  auipc        t5, 953067
                  ori          t5, a1, 1230
                  andi         s9, s1, 283
                  sll          t1, s4, gp
                  andi         s2, gp, -1981
                  andi         t5, a5, -825
                  srai         sp, s9, 7
                  slt          a5, s6, s2
                  xor          s5, s1, a4
                  add          s5, t6, a1
                  srai         t5, a0, 25
                  and          a1, sp, t0
                  sltiu        t2, t1, 1027
                  sll          t1, sp, t4
                  xor          t4, s5, t5
                  sll          t2, zero, s11
                  slt          s0, a4, s7
                  or           t3, zero, s7
                  sra          t1, gp, s3
                  sll          sp, s8, s0
                  srli         a6, a4, 12
                  sltiu        s11, s10, -727
                  addi         a4, t1, -1398
                  nop
                  ori          s0, a2, -1899
                  srl          s2, s3, s10
                  andi         a4, a5, 338
                  sra          s6, a4, t5
                  add          a1, s8, a7
                  xor          a2, t4, s1
                  srli         s3, s0, 7
                  slt          a5, s0, t2
                  lui          t2, 631149
                  or           t4, t4, a0
                  and          gp, a7, t6
                  sltiu        a2, s3, -2001
                  addi         s8, s3, 1327
                  sltu         a6, s10, s2
                  sra          sp, s3, gp
                  and          a2, sp, a4
                  add          a3, s3, t5
                  auipc        s0, 830052
                  sub          s9, s7, a0
                  nop
                  nop
                  add          zero, t2, t0
                  andi         sp, t4, -1526
                  slli         s5, s7, 13
                  slt          gp, t1, s0
                  slt          a5, a0, ra
                  slti         a4, a0, -1509
                  sll          t1, a6, a5
                  andi         s10, zero, 1736
                  slli         ra, a2, 27
                  slti         zero, s7, -91
                  sra          a1, zero, s9
                  sltu         t4, sp, a3
                  add          tp, s9, s9
                  auipc        t0, 886608
                  slt          s0, a3, t1
                  sub          ra, t3, s0
                  andi         s0, a1, -842
                  or           t4, s6, a4
                  add          t6, a1, ra
                  nop
                  srl          s11, a6, s10
                  sra          a4, s5, s0
                  auipc        tp, 791032
                  srai         t0, t1, 2
                  or           t2, s10, s4
                  and          s9, s5, s5
                  lui          a5, 215887
                  slli         t2, ra, 1
                  and          a2, t4, t0
                  slli         t0, s10, 18
                  srl          t5, t1, s10
                  lui          a5, 455108
                  sub          tp, gp, a5
                  nop
                  and          s2, gp, t3
                  xor          zero, a6, gp
                  auipc        a1, 3654
                  nop
                  srli         sp, t4, 3
                  slt          a1, t0, a5
                  ori          t3, s7, -1892
                  slli         a5, s4, 23
                  addi         s10, ra, 797
                  auipc        ra, 746726
                  xori         s5, t4, -82
                  add          t6, zero, zero
                  sub          a5, a6, s4
                  srli         a4, zero, 14
                  sltu         t4, s3, s10
                  sll          zero, zero, t5
                  andi         s8, s7, -156
                  add          zero, t1, t3
                  srai         a6, a5, 12
                  slti         s6, t6, 1186
                  xori         s4, t1, -1958
                  or           s2, s11, t4
                  ori          t5, a2, 808
                  srai         a3, a4, 1
                  sll          t6, t4, t4
                  sub          a6, tp, s0
                  nop
                  sll          s8, zero, s11
                  slli         t0, s11, 6
                  nop
                  srli         s9, s9, 27
                  xor          a4, a4, s10
                  or           tp, gp, a4
                  sll          a3, t4, s1
                  lui          a2, 111671
                  or           t4, s6, s11
                  lui          s6, 514217
                  andi         s4, s11, 1353
                  sra          s2, s3, s0
                  srli         s4, s9, 4
                  lui          gp, 31070
                  sra          t0, s4, s3
                  add          a1, gp, a3
                  auipc        s0, 57471
                  sub          a1, a5, a1
                  sltu         s8, a7, a3
                  sltiu        s11, sp, -260
                  addi         s3, t4, -398
                  srli         s5, s10, 6
                  slti         t2, t4, 1500
                  sub          s4, a6, t2
                  srai         t1, s7, 11
                  slt          s10, t3, t4
                  or           a1, a4, t4
                  add          s6, s7, a5
                  addi         s4, s4, 869
                  or           a6, s4, t0
                  li           t5, 0x80000000 #start riscv_int_numeric_corner_stream_2
                  li           s0, 0x43961ba5
                  li           gp, 0xffffffff
                  li           a7, 0x80000000
                  li           s5, 0x0
                  li           s8, 0x80000000
                  li           s9, 0x80000000
                  li           s3, 0x3d8324b3
                  li           a4, 0x80000000
                  li           t3, 0xffffffff
                  lui          s9, 473616
                  sub          a7, s5, s0
                  add          t3, gp, s8
                  nop
                  auipc        s8, 815953
                  sub          s3, s5, s0
                  auipc        s8, 432927
                  lui          s3, 397085
                  lui          s5, 107701
                  add          s5, s8, gp
                  nop
                  auipc        a7, 915414
                  nop
                  add          a4, s8, a4
                  sub          a4, a7, s0
                  add          s3, t3, t3
                  lui          s3, 654671
                  auipc        a4, 384049
                  addi         t5, a4, 502
                  auipc        s5, 249964
                  nop
                  nop
                  lui          s8, 781712
                  addi         s5, s8, 1884
                  sub          s5, t3, a7
                  nop
                  addi         a7, s0, -567
                  auipc        s9, 470062
                  lui          t5, 476748 #end riscv_int_numeric_corner_stream_2
                  add          s3, s8, t2
                  slt          s3, s1, s7
                  and          s9, a6, a2
                  srli         tp, t4, 22
                  andi         a3, sp, -1752
                  sra          t3, t2, t2
                  sra          s5, s2, a0
                  or           s10, s3, ra
                  slti         s9, zero, -1848
                  lui          s3, 677462
                  nop
                  sltiu        zero, s11, -263
                  andi         a6, s0, -334
                  sltiu        s2, s0, -1980
                  sub          a3, s10, ra
                  add          s3, a4, a1
                  and          t5, zero, a3
                  srl          s10, a3, a2
                  lui          zero, 360329
                  sra          s3, s5, t0
                  slli         t5, t6, 24
                  andi         s8, t4, 597
                  ori          t0, s11, 1011
                  lui          sp, 528699
                  slt          s9, zero, s7
                  auipc        t6, 900657
                  lui          s9, 282801
                  ori          ra, tp, -1669
                  xor          s0, a7, s9
                  and          a2, sp, a2
                  sltiu        a3, a6, -1636
                  sltu         zero, s8, s3
                  andi         a4, a3, 1216
                  sltu         a2, t1, t5
                  xori         zero, a3, 580
                  srai         a5, t6, 7
                  lui          gp, 321330
                  add          gp, s0, a7
                  xor          t1, t1, a1
                  srai         s6, t4, 13
                  and          a6, zero, s7
                  srl          tp, a3, s10
                  xori         ra, t2, -723
                  sltiu        s9, a7, -352
                  sra          s9, zero, s2
                  slt          a6, a4, s10
                  nop
                  slti         zero, s4, -1847
                  srl          t3, s7, s5
                  sra          s6, s0, s11
                  and          a3, gp, t0
                  xori         s0, a3, -1330
                  andi         sp, t5, 1850
                  slt          s9, sp, a1
                  xori         s9, ra, 1794
                  andi         s6, t4, 1537
                  andi         t4, t1, 358
                  sltiu        t5, a4, 2044
                  sltiu        s9, s2, -1139
                  xor          a4, s2, a2
                  lui          t1, 354931
                  sra          s9, t0, ra
                  sll          a3, a3, a2
                  srl          s5, s3, s5
                  lui          t0, 498187
                  slli         t6, t5, 4
                  xor          t4, s7, s11
                  sll          sp, a4, t5
                  slti         sp, s11, 1010
                  slli         t1, t1, 30
                  xor          t2, t1, s1
                  srl          s6, a7, sp
                  sub          s9, s3, a1
                  or           s5, s1, s8
                  xori         a4, a3, -1683
                  sub          s3, a6, tp
                  andi         a6, t0, -75
                  nop
                  sltiu        gp, a6, 152
                  sra          sp, t4, t5
                  and          t4, ra, s6
                  srli         a4, t0, 25
                  sra          t3, a0, t5
                  slti         a4, a1, -1756
                  slti         t1, s4, 131
                  sra          a2, s10, s6
                  ori          s11, s2, 862
                  srl          s9, zero, a7
                  nop
                  sltu         a2, a5, s11
                  lui          s8, 652984
                  srl          s5, t2, zero
                  auipc        s10, 483606
                  add          t5, t4, a1
                  nop
                  slli         t4, a3, 19
                  and          sp, ra, t6
                  addi         sp, t4, -75
                  sub          t2, s11, t0
                  auipc        a1, 900305
                  nop
                  sub          t0, a2, a3
                  or           s9, s4, a4
                  xori         zero, a5, -1680
                  or           sp, s9, a6
                  sra          t5, a2, s10
                  or           t2, gp, a7
                  andi         s6, a1, -970
                  add          ra, zero, t4
                  nop
                  sltu         a3, t2, t1
                  sltiu        s9, s2, 487
                  slti         t2, sp, 1234
                  and          t4, a2, s2
                  xor          a6, a7, t5
                  srai         tp, t4, 21
                  nop
                  sltu         t3, s5, a0
                  sltu         gp, s7, s5
                  sll          t5, a4, zero
                  sub          s9, s2, t4
                  srai         zero, s4, 12
                  slli         a7, s8, 20
                  srli         s8, ra, 31
                  andi         t3, ra, -1401
                  sra          ra, s7, t3
                  andi         ra, a6, -1855
                  srli         t5, a3, 3
                  ori          a2, a1, 1732
                  slti         s11, s4, 1961
                  and          a2, s6, s4
                  add          a1, s4, ra
                  add          t1, t4, a1
                  sltiu        s4, sp, 889
                  andi         a7, gp, -1267
                  slti         s0, a3, -1601
                  srai         zero, t6, 21
                  auipc        a5, 414050
                  sll          t6, a3, zero
                  addi         gp, s0, 130
                  ori          s3, s6, 1629
                  auipc        a2, 278371
                  srl          t5, s11, s1
                  addi         s11, a7, 1658
                  or           t1, t5, a4
                  ori          a5, a3, 199
                  srli         t0, s5, 5
                  or           t4, a5, s3
                  andi         a3, sp, 1461
                  sltiu        s4, s11, 24
                  sltu         s2, t4, t1
                  ori          t3, a1, 2011
                  sub          t2, s1, a6
                  srl          s3, tp, t4
                  srli         t2, s6, 20
                  addi         gp, s3, 1289
                  add          a6, s3, s11
                  auipc        t4, 377405
                  ori          zero, t0, 1584
                  addi         a7, s0, 659
                  sll          t1, t5, a3
                  or           a6, s9, a2
                  sll          s8, s10, t1
                  srl          t4, t4, a5
                  lui          s10, 807375
                  or           t3, s8, s8
                  auipc        gp, 195561
                  slli         a6, s3, 31
                  slt          s6, ra, t5
                  lui          t2, 842469
                  nop
                  addi         ra, sp, -98
                  auipc        sp, 141056
                  slti         s11, s11, -1148
                  sltu         s9, a7, a5
                  sltiu        a5, s6, 674
                  xor          s8, s4, t0
                  sltiu        t5, s0, -507
                  lui          s11, 196738
                  lui          a4, 379676
                  slt          s9, t3, s9
                  srl          s8, s1, s3
                  or           s6, s4, a2
                  xor          a6, t5, sp
                  sll          t2, s11, s10
                  xori         gp, gp, -1188
                  nop
                  sll          s11, s6, a4
                  andi         s6, s7, -213
                  lui          t5, 413242
                  srai         sp, zero, 26
                  sltiu        t5, s7, -102
                  slti         t0, t0, -932
                  or           a6, sp, ra
                  xor          ra, s6, zero
                  lui          a4, 667904
                  xori         a6, s1, 137
                  ori          t2, a4, 932
                  sltiu        s10, s10, -1629
                  add          t6, s8, t1
                  and          tp, a1, s7
                  xori         s5, a2, 202
                  slti         t4, s6, -1856
                  and          s2, s4, a6
                  srai         s8, a3, 0
                  sub          s3, s11, a2
                  andi         s2, gp, 220
                  and          a7, zero, s6
                  slt          sp, a3, s4
                  sll          s4, s8, a6
                  nop
                  ori          sp, t2, 382
                  slli         a6, t0, 11
                  nop
                  xori         a7, s6, -1736
                  auipc        t2, 913403
                  srl          a3, s9, t6
                  slli         a6, sp, 0
                  sub          s6, ra, s10
                  andi         t3, a1, -379
                  srai         s9, s7, 28
                  slli         gp, a3, 10
                  xori         s10, a1, -2042
                  srai         t3, ra, 9
                  slti         s5, t2, 697
                  or           a7, a6, s11
                  slti         t2, s6, -1817
                  srl          t4, s7, s7
                  xori         t4, s11, 528
                  addi         sp, a0, 997
                  sltiu        a4, tp, -1320
                  add          t4, s4, s3
                  lui          tp, 702291
                  or           a4, s3, a3
                  sub          a3, s6, a7
                  sub          a1, a0, t5
                  lui          a7, 924368
                  add          t1, t5, sp
                  sltu         t4, s5, a7
                  xori         s6, s11, -960
                  slli         s11, s10, 29
                  slli         t0, ra, 31
                  sll          s8, s9, t6
                  slti         a6, ra, 491
                  auipc        a3, 170327
                  srli         a5, t3, 14
                  sll          a2, tp, t5
                  lui          a6, 962568
                  srli         s0, ra, 9
                  slt          a7, a2, t6
                  slti         s10, a0, -500
                  slti         t3, a4, -255
                  srl          gp, a6, t1
                  xori         t2, a4, 529
                  sra          a1, a4, t0
                  sltu         a1, s2, s10
                  andi         s6, s1, -127
                  sltu         sp, s11, s9
                  or           t1, t5, t3
                  lui          a7, 192096
                  sll          t3, a4, s0
                  slti         a5, a3, -1073
                  andi         s9, s5, 419
                  srli         s0, a7, 13
                  or           s6, s0, zero
                  sll          s5, s8, gp
                  ori          s0, t3, 1129
                  and          s9, a0, gp
                  auipc        s2, 487800
                  andi         t2, s9, -1937
                  auipc        t3, 223534
                  nop
                  or           s0, ra, a0
                  slti         s9, s1, -762
                  xori         t3, gp, -1242
                  srai         t1, s4, 5
                  sltiu        gp, a2, -1179
                  addi         a6, a6, 1356
                  or           s3, s4, a2
                  slli         a7, zero, 14
                  slli         s11, s2, 0
                  sra          tp, sp, t6
                  or           s4, tp, t0
                  srl          s2, s4, s5
                  andi         a2, gp, -581
                  lui          a5, 836172
                  srli         s3, t0, 0
                  auipc        s8, 999339
                  srai         ra, t3, 2
                  sra          t5, a5, s7
                  sltiu        s4, t0, -1008
                  srli         a3, s0, 27
                  srli         t0, t2, 4
                  or           t4, tp, sp
                  addi         a1, s3, 1426
                  sltu         s9, a0, t0
                  slt          a4, a6, a3
                  addi         t1, a5, -1827
                  add          s6, t6, t1
                  auipc        t0, 529414
                  slli         s6, a2, 27
                  nop
                  slti         a7, s1, 227
                  srai         s8, a2, 21
                  xor          a2, tp, s6
                  sub          s9, sp, ra
                  or           s0, s6, s10
                  slli         a2, t3, 29
                  andi         sp, t1, -1694
                  and          t3, t5, s4
                  xor          s10, t5, s11
                  srai         a4, a2, 15
                  srl          a3, s9, t2
                  sra          a2, zero, a4
                  nop
                  sltu         s6, s9, sp
                  slt          t5, a2, t4
                  ori          a4, t3, 359
                  sltu         s2, t4, s4
                  auipc        s3, 427345
                  andi         s5, a4, 656
                  sub          ra, sp, t0
                  xor          a2, s3, sp
                  srli         gp, gp, 0
                  xor          s0, a7, s4
                  sll          t2, s9, a1
                  sltiu        tp, a6, 1324
                  lui          s5, 232630
                  addi         tp, t0, 1636
                  slli         ra, s9, 10
                  sltiu        a1, t5, -1753
                  addi         t6, zero, 420
                  auipc        s0, 469427
                  andi         a2, a5, 1724
                  auipc        s4, 226708
                  srli         t1, a0, 29
                  ori          a4, a1, -939
                  sub          s5, s11, t1
                  sub          gp, s2, a5
                  auipc        a3, 757819
                  srli         t2, s3, 1
                  xori         sp, a1, 342
                  srl          tp, t3, s0
                  slt          a5, s3, a7
                  nop
                  slti         a3, a1, 1645
                  sra          a2, s3, t0
                  nop
                  lui          t1, 729547
                  and          ra, s8, s9
                  srli         a2, s3, 8
                  xor          t1, sp, a3
                  auipc        ra, 361058
                  andi         s5, a2, -63
                  and          t1, s7, t4
                  xori         ra, t2, 631
                  nop
                  sltu         t6, t6, a7
                  sra          s3, t4, t2
                  addi         t2, s10, 938
                  slti         s5, a4, 1510
                  slt          s9, s3, s8
                  srai         a1, s5, 28
                  sub          t5, a4, t2
                  and          a4, s3, s4
                  add          tp, t6, s8
                  or           s8, s6, tp
                  sra          a1, a0, t4
                  sltiu        a6, sp, -215
                  lui          a6, 171282
                  andi         a2, a2, 339
                  slti         s6, t2, 912
                  add          t5, t5, a4
                  nop
                  andi         s2, t4, -1913
                  slt          s0, s10, a0
                  slti         s11, a3, -209
                  srli         a4, a3, 18
                  sltiu        s3, t2, -1451
                  slti         s10, s4, 1868
                  nop
                  srl          s11, t2, sp
                  ori          s5, t3, 695
                  srli         gp, s8, 9
                  sra          a7, a2, a6
                  srl          zero, t2, s0
                  lui          t0, 221597
                  srai         s9, s6, 24
                  auipc        zero, 620650
                  and          a5, ra, sp
                  and          t5, a7, s11
                  srli         s10, a6, 13
                  srai         s11, a7, 12
                  andi         t5, a3, -1546
                  addi         a4, zero, -941
                  nop
                  addi         s8, s9, 812
                  andi         a2, zero, 199
                  sub          s11, zero, s6
                  xori         t6, t2, 538
                  slt          a5, s0, t3
                  sltu         s0, t3, a0
                  or           gp, s8, sp
                  nop
                  nop
                  slli         t6, t4, 30
                  andi         s11, s4, 1112
                  sltiu        a3, s2, 1589
                  and          s10, t2, s8
                  sltiu        s3, a1, 381
                  srl          t0, s11, s11
                  srai         t3, s3, 31
                  srai         gp, a5, 29
                  andi         a7, a6, -1874
                  sltiu        a1, tp, 2031
                  addi         s2, s0, -1925
                  addi         s4, a4, 616
                  sltu         t5, s3, s1
                  andi         s3, s2, -1140
                  sltu         s6, s10, s10
                  xor          a1, gp, t0
                  xori         a5, t5, -1817
                  sra          t4, t4, a1
                  sub          gp, t1, s7
                  slli         zero, t1, 28
                  slt          s11, s1, s6
                  slli         t5, t2, 27
                  sub          gp, zero, a7
                  addi         a7, s0, -401
                  lui          t1, 467085
                  xor          s3, s9, s2
                  slti         a2, t5, 658
                  srl          t3, s2, s11
                  and          gp, s11, t2
                  addi         t4, s2, 348
                  ori          ra, s5, 1291
                  sra          t2, s6, s10
                  srl          t1, s11, a7
                  add          s3, a4, t0
                  addi         ra, a7, 1286
                  srl          a1, a2, t6
                  sll          t2, zero, s8
                  lui          s10, 467803
                  lui          a6, 898042
                  lui          t2, 368652
                  sub          s2, a7, s11
                  xor          s6, a0, s8
                  sub          t2, t2, t5
                  srai         t0, t4, 24
                  ori          a5, t4, 1857
                  srli         t2, a5, 3
                  ori          zero, t6, -775
                  li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           a2, 0xffffffff
                  li           a7, 0x0
                  li           s3, 0xdf983988
                  li           s4, 0x80000000
                  li           t0, 0xc6c2e243
                  li           t4, 0xffffffff
                  li           s10, 0xffffffff
                  li           gp, 0x80000000
                  li           ra, 0xffffffff
                  nop
                  nop
                  auipc        a7, 612095
                  addi         a1, s4, 1159
                  sub          s3, a7, t0
                  auipc        a7, 591622
                  addi         ra, t0, 2033
                  auipc        a7, 170300
                  auipc        t0, 908412
                  lui          t4, 708894
                  auipc        s10, 542097
                  auipc        a1, 1018872
                  auipc        t0, 89917
                  add          t4, t4, a7
                  sub          ra, a2, a1
                  nop #end riscv_int_numeric_corner_stream_8
                  xor          t3, t1, a2
                  sltu         t4, s9, zero
                  sltiu        t1, s1, -762
                  sltu         ra, t1, s11
                  or           s11, t1, s10
                  slli         t4, a5, 11
                  addi         s0, s11, -1733
                  xori         a6, t3, -1334
                  sltiu        s9, s9, 961
                  slti         s9, s0, -2014
                  andi         ra, a5, -853
                  or           s3, a5, a5
                  srai         t0, s1, 3
                  sltu         s3, gp, t5
                  xor          a5, a7, s11
                  nop
                  lui          s11, 89607
                  slt          t5, a0, a6
                  slt          t5, sp, t5
                  and          s10, t3, s6
                  andi         a3, a0, -473
                  srl          a3, s3, a0
                  add          a4, tp, s10
                  nop
                  srl          sp, s5, a4
                  addi         t6, tp, 1512
                  srl          s11, t0, a4
                  sll          s2, s3, t1
                  srai         a2, t4, 23
                  srai         a1, a4, 3
                  lui          s6, 850654
                  slti         a7, t5, 920
                  or           s2, t6, s6
                  xori         s0, s8, 1471
                  sltiu        a2, a5, 1149
                  nop
                  slt          gp, s4, gp
                  sltu         s0, s4, s4
                  srl          sp, tp, t3
                  srli         s6, s2, 8
                  slli         a6, a6, 12
                  slti         tp, s5, -1940
                  ori          a3, t0, -1060
                  sra          a5, s8, a6
                  slli         s9, zero, 7
                  add          gp, s7, s5
                  sub          s5, s9, a6
                  xor          s3, a1, s1
                  add          zero, t6, t0
                  auipc        s4, 105305
                  srai         t4, t2, 29
                  srl          zero, a7, t0
                  sll          s2, a0, gp
                  lui          t3, 221891
                  sra          a2, gp, s8
                  srl          ra, ra, t2
                  xor          gp, t5, s3
                  sltiu        s4, s3, 891
                  sltiu        s5, s8, 308
                  andi         t4, t3, 1404
                  sra          t0, s3, t2
                  addi         s2, s3, -1947
                  addi         a1, s3, 891
                  andi         a6, s1, 965
                  li           a3, 0x984e8d45 #start riscv_int_numeric_corner_stream_15
                  li           a5, 0x0
                  li           t0, 0xffffffff
                  li           s5, 0x80000000
                  li           t2, 0xffffffff
                  li           t5, 0x0
                  li           s6, 0xffffffff
                  li           gp, 0xffffffff
                  li           t3, 0x0
                  li           ra, 0x0
                  add          gp, gp, t2
                  nop
                  add          a5, t5, t0
                  lui          a3, 247115
                  sub          t5, t5, t2
                  addi         t2, gp, -611
                  sub          a5, ra, gp
                  add          ra, s5, gp
                  auipc        ra, 886954
                  addi         s6, t0, 226
                  add          t5, t5, t0
                  add          s6, t3, a3
                  sub          t3, t3, t5
                  auipc        t5, 1017701
                  nop #end riscv_int_numeric_corner_stream_15
                  xor          a3, a3, s10
                  sltiu        s6, t6, 593
                  ori          s5, s2, 898
                  srai         t2, s9, 29
                  slli         s9, s3, 29
                  addi         s8, s0, 221
                  or           a3, s6, s10
                  addi         t0, a3, -1462
                  sltu         ra, a5, s10
                  ori          s0, s9, 437
                  addi         a1, t1, 1530
                  xori         t2, s2, -862
                  sub          a1, a0, zero
                  or           gp, s5, s11
                  ori          s8, s5, 1043
                  addi         s6, a2, -1998
                  addi         a7, s5, -1050
                  nop
                  slti         t3, tp, -1920
                  addi         t0, s8, 1365
                  auipc        t3, 987794
                  or           ra, a7, s1
                  sltiu        sp, s8, 650
                  xor          t1, s3, a1
                  add          t6, a6, t2
                  nop
                  andi         t1, s2, 537
                  srai         a2, s2, 9
                  xor          s4, t2, t4
                  srl          a3, s8, t5
                  srai         s4, s7, 27
                  nop
                  or           t3, s3, a4
                  or           gp, a3, t3
                  srl          s8, t6, s7
                  slti         a7, s1, 458
                  nop
                  and          s4, s2, s5
                  xor          s2, t4, t1
                  add          sp, t3, ra
                  slti         t6, s9, -1724
                  slt          t2, s1, s0
                  addi         s3, s11, -1486
                  xor          t6, s2, s9
                  sltu         s0, s3, zero
                  sub          s6, t4, tp
                  and          a2, a4, s2
                  slt          s3, ra, s10
                  and          zero, ra, a0
                  slt          t5, t4, t1
                  sll          t3, ra, s4
                  auipc        a5, 620574
                  and          t2, a4, ra
                  sll          zero, gp, sp
                  lui          t6, 577726
                  andi         zero, s9, 1475
                  slli         a3, sp, 2
                  or           a6, s10, gp
                  ori          t5, a2, 1164
                  srli         t2, s8, 6
                  sltu         t5, a7, a7
                  sll          s2, sp, t1
                  and          s2, s11, s6
                  or           s8, s3, a6
                  andi         t0, a5, -648
                  slli         t5, a0, 18
                  slt          a4, t1, t3
                  nop
                  auipc        a4, 568965
                  slli         t3, gp, 0
                  srli         ra, zero, 20
                  xor          sp, t1, t6
                  lui          zero, 887867
                  sltiu        a4, a7, -1694
                  addi         a4, a7, 1404
                  sll          s0, t1, s8
                  slt          a7, sp, s7
                  nop
                  andi         tp, tp, 209
                  srl          s4, s0, a3
                  sub          s9, s1, s5
                  and          zero, t2, t4
                  srai         zero, a6, 21
                  sltu         s11, a2, s11
                  lui          s4, 343598
                  and          t4, t1, s9
                  lui          s10, 403079
                  slt          a7, s1, a7
                  sub          a7, a5, s11
                  srl          tp, a2, a5
                  slti         t0, s9, -314
                  sltu         t4, a4, a5
                  auipc        s4, 704867
                  xor          s4, t6, tp
                  sra          t5, s6, zero
                  slli         a5, s3, 2
                  addi         a2, s6, -770
                  xor          s11, ra, t5
                  xor          t1, s7, a6
                  auipc        tp, 368952
                  addi         a1, s5, 1264
                  xori         s8, s3, -1053
                  sra          s3, t5, s6
                  sll          ra, t3, s1
                  sll          t5, zero, s7
                  sra          a4, s2, s7
                  sub          sp, a7, a3
                  srl          s5, s9, t1
                  slti         a6, a2, -886
                  srai         a3, s1, 20
                  slt          s2, s3, a4
                  srai         s4, s3, 12
                  sub          s5, sp, zero
                  slt          sp, t4, t4
                  lui          t1, 720002
                  srai         s9, tp, 2
                  srai         t5, zero, 18
                  srl          s2, s1, a2
                  srl          s2, s11, s4
                  sra          a1, gp, gp
                  sll          s6, s4, a4
                  slli         t2, ra, 30
                  lui          t5, 155928
                  srai         a4, tp, 29
                  ori          zero, a6, -1345
                  auipc        zero, 384878
                  srl          s2, t1, gp
                  xor          t1, a4, a5
                  slt          ra, s7, t0
                  add          t2, t0, s7
                  auipc        t1, 730894
                  srai         t0, tp, 20
                  sra          s10, a4, s7
                  ori          s5, a4, -206
                  sltu         a7, t4, s10
                  sra          s9, s9, s2
                  andi         tp, zero, -1790
                  sll          t6, t2, gp
                  slli         a6, s10, 18
                  or           s11, t5, a0
                  slti         s8, a2, -1364
                  sltiu        a4, sp, -1476
                  xor          tp, s7, a4
                  addi         a4, s8, 1215
                  sub          t4, a3, t5
                  auipc        t2, 565373
                  sub          s11, gp, t2
                  auipc        ra, 999006
                  sub          t0, s3, gp
                  andi         zero, gp, -997
                  or           a4, s7, s4
                  add          sp, s1, t4
                  auipc        t0, 593774
                  sra          s4, t6, s6
                  slt          t2, t4, t5
                  srl          s2, a7, a2
                  srai         t4, t4, 12
                  srli         zero, t0, 9
                  or           t1, tp, s11
                  lui          t3, 278462
                  slti         s11, t2, -749
                  sltiu        a1, s5, -1278
                  andi         t6, a3, 490
                  sub          t5, s11, t6
                  and          s6, sp, s9
                  xori         a3, t5, -1139
                  slt          s8, a2, sp
                  xor          a1, tp, s9
                  srl          s9, sp, a5
                  xori         t0, sp, -327
                  auipc        t5, 31040
                  sra          s3, a6, t4
                  slli         s4, t3, 30
                  add          tp, sp, t3
                  slt          a1, sp, s4
                  ori          t1, a3, -1196
                  addi         t4, s1, -549
                  slti         a2, a2, -1261
                  ori          s0, zero, -1457
                  addi         s9, a7, 933
                  and          s10, a3, t3
                  lui          t1, 117468
                  add          a2, t0, s4
                  lui          a7, 1026318
                  srl          a1, a3, a4
                  slti         s5, s4, 1865
                  xor          a5, ra, s10
                  sltiu        s8, gp, -1234
                  xor          a3, t5, zero
                  slli         a6, t0, 27
                  lui          s5, 551631
                  ori          zero, t1, 1183
                  slt          a6, ra, a1
                  slli         a6, t0, 27
                  srai         t5, sp, 15
                  or           t6, s3, t2
                  or           a7, t3, t5
                  sltiu        s5, t1, 1973
                  or           s0, s5, a6
                  sll          t1, a6, ra
                  ori          s2, tp, -1383
                  andi         t2, a2, 1438
                  srli         s6, s3, 30
                  sltu         t0, a3, s4
                  sltu         s11, s3, s11
                  andi         a2, t2, 1643
                  sub          s11, a6, s2
                  sra          s2, a5, sp
                  or           t2, s2, a1
                  andi         s4, s2, 1417
                  ori          t2, s10, 1116
                  slt          a1, s11, s0
                  addi         t6, s7, 1592
                  and          s0, s9, a7
                  ori          s10, s7, 712
                  sltiu        a1, a7, -1033
                  xor          s0, a1, t2
                  sub          s10, s8, s10
                  slli         a7, s6, 12
                  sub          gp, a2, s8
                  sub          a5, t1, s11
                  addi         s9, a3, 1100
                  slti         t5, t0, -741
                  sub          a7, t2, a6
                  slli         s11, s3, 2
                  lui          a4, 913865
                  auipc        s5, 198222
                  xori         s11, a1, -25
                  addi         a2, s1, -842
                  slt          s2, t6, t5
                  sra          t1, s11, s8
                  xor          s11, t5, t2
                  srl          a3, s6, s4
                  and          s9, s3, a5
                  sra          s0, a3, a2
                  add          a6, s9, t3
                  srli         t2, a1, 22
                  sra          s0, t0, t0
                  sll          s5, s7, s2
                  and          t5, a5, s5
                  lui          a1, 673227
                  sub          a1, t4, zero
                  lui          gp, 96299
                  sub          t0, s11, ra
                  slti         t6, t1, -970
                  sub          t1, zero, s1
                  slt          t5, ra, a3
                  slti         s6, s8, -1055
                  xor          s6, zero, t4
                  slt          s0, ra, t2
                  srli         s5, a5, 26
                  srai         a1, a6, 11
                  slli         s9, s10, 20
                  srl          a7, s9, s3
                  slti         s0, zero, -1213
                  and          sp, s10, s8
                  add          s6, s5, s1
                  sltiu        s8, a0, 1998
                  srai         zero, s0, 11
                  slt          t1, a4, t4
                  sltiu        a4, a3, -879
                  addi         a5, s4, -556
                  add          a5, sp, a3
                  sltu         s11, a6, s7
                  ori          t6, s4, 1264
                  srli         s0, ra, 21
                  sltiu        a2, t4, 1255
                  xori         t1, tp, -1970
                  xor          s10, a2, t1
                  add          a2, s6, s0
                  sub          t2, t4, a3
                  auipc        s0, 464634
                  and          t5, t6, s2
                  andi         t0, ra, 1476
                  sltu         a6, s3, s11
                  andi         t5, t3, 1060
                  srli         t0, s2, 16
                  addi         a4, s11, 1700
                  nop
                  or           t0, a1, t3
                  and          t5, t0, a7
                  lui          s4, 773866
                  srai         a1, sp, 16
                  slli         t0, t1, 30
                  ori          tp, t4, -361
                  and          a6, a4, s9
                  add          a5, t6, t6
                  nop
                  auipc        s5, 127963
                  sra          s3, s5, gp
                  ori          a7, tp, -1974
                  add          a3, t2, ra
                  sltiu        t1, t5, 1773
                  slli         t6, a0, 18
                  sub          s0, zero, s5
                  sra          s0, a5, s9
                  sltu         a1, tp, t0
                  lui          s0, 64247
                  sra          a7, s4, a3
                  add          s3, t3, t5
                  srli         s8, a5, 6
                  add          s0, a6, t3
                  add          s10, s5, s5
                  sltiu        a4, a3, -4
                  lui          a4, 315849
                  sltu         a7, s3, t3
                  slt          s8, s5, a0
                  nop
                  xori         a4, s9, 1487
                  srai         t5, s3, 24
                  slti         t1, t2, -529
                  srli         s5, a5, 27
                  and          a4, t5, t5
                  srai         gp, zero, 6
                  andi         a4, a1, -533
                  sll          s6, sp, s1
                  sll          s3, s3, s6
                  srai         t2, s11, 1
                  sltu         a3, t3, s11
                  slli         sp, s2, 23
                  sltu         s4, t0, tp
                  srl          tp, t6, s4
                  srl          a1, s10, a6
                  and          ra, a6, a3
                  xori         ra, s3, -1861
                  sub          t0, zero, a7
                  add          s6, s9, t0
                  slt          zero, s10, a3
                  xor          zero, s5, s3
                  srli         tp, tp, 26
                  and          a5, sp, s8
                  sltiu        s8, s9, 1754
                  xor          s10, s5, s4
                  sll          gp, a5, t0
                  slt          s10, s3, t1
                  ori          t2, s1, 179
                  add          tp, ra, s6
                  auipc        t3, 1014854
                  slti         a5, s9, -501
                  srl          s0, s10, tp
                  sra          s8, s6, t3
                  slti         s9, t0, -1736
                  slti         s9, a2, -331
                  srl          a3, gp, t4
                  sltu         t5, a4, a0
                  nop
                  sub          t6, s0, a6
                  sltu         s6, t6, s5
                  sltu         gp, s4, zero
                  add          t5, s5, a2
                  ori          a1, t0, 1016
                  srli         t5, s2, 26
                  and          t5, sp, s0
                  or           t6, t2, t3
                  sltiu        t3, s8, 756
                  and          t1, t4, s9
                  or           ra, s10, a5
                  sll          s2, tp, zero
                  xor          s0, a2, t6
                  nop
                  srai         a1, s2, 18
                  ori          s9, a0, -1254
                  sltu         a7, t0, a7
                  sra          a2, zero, a3
                  slti         sp, ra, -1578
                  xori         ra, a5, -683
                  auipc        a6, 546836
                  ori          t6, sp, 3
                  addi         a1, s3, -1861
                  ori          s5, tp, -1735
                  xori         gp, tp, -1146
                  srl          s2, s6, t0
                  ori          s10, a6, 863
                  lui          t3, 189673
                  add          s3, t6, t2
                  srl          a7, t0, a6
                  srai         a6, s10, 5
                  andi         gp, ra, 987
                  ori          s2, tp, 1174
                  sll          s5, a5, s3
                  slt          s8, s4, a6
                  slti         t2, s0, 1467
                  nop
                  xor          s2, a7, a4
                  andi         a7, t4, -1081
                  sub          s8, a5, s1
                  lui          t2, 799355
                  slt          a4, a3, t6
                  addi         s0, a5, 1757
                  srl          a3, a4, s6
                  srai         t0, s10, 10
                  sltu         gp, s10, a5
                  sra          zero, s2, a1
                  slti         s3, s1, -1925
                  srli         a2, s5, 17
                  slti         s9, s8, -1936
                  andi         a1, s0, 1858
                  addi         s10, zero, -1121
                  srl          zero, t5, s1
                  srl          t0, s8, s0
                  lui          t1, 603184
                  nop
                  srli         a5, t3, 1
                  sub          s9, s1, a0
                  or           s8, s4, t5
                  and          ra, s4, sp
                  srli         a6, t6, 13
                  addi         t0, a4, 1583
                  sub          a6, s4, s7
                  slt          sp, s8, t0
                  add          a4, s8, a3
                  srai         s0, s0, 25
                  xor          a3, zero, s11
                  andi         s3, sp, 1213
                  or           s5, a1, tp
                  auipc        a7, 595233
                  or           t5, s3, t6
                  sub          zero, a7, gp
                  nop
                  srai         s4, s3, 11
                  sll          s0, t6, s6
                  lui          a3, 189775
                  slt          s5, gp, s7
                  srli         s2, t3, 7
                  sltu         s0, s6, t3
                  xor          s2, t4, s7
                  sltiu        a1, s10, -1537
                  xori         a2, a4, 1177
                  or           s8, t1, t3
                  addi         zero, a5, -1620
                  auipc        s6, 720540
                  srai         s10, tp, 7
                  and          zero, s0, a4
                  sra          s0, a4, t6
                  slti         a3, sp, -1287
                  and          s5, a4, s10
                  slt          s8, s7, tp
                  sll          s6, t4, a0
                  andi         t4, t6, 1363
                  nop
                  add          t1, t2, t1
                  auipc        s5, 47284
                  addi         a2, t6, -1363
                  srli         a2, tp, 31
                  auipc        s9, 881492
                  sra          s10, s9, s1
                  srai         sp, a6, 4
                  xor          s0, t3, s7
                  srai         s2, s0, 12
                  sltu         s11, s11, t2
                  lui          a4, 385370
                  srli         a3, tp, 5
                  sub          s2, s1, s5
                  xor          s0, a6, s7
                  and          s0, s6, s6
                  sltu         tp, s5, s8
                  add          t5, s2, a4
                  slt          t3, t0, s1
                  auipc        a4, 581984
                  slt          t3, t2, s10
                  srli         s3, ra, 19
                  slt          s0, t6, sp
                  xori         sp, s10, -1566
                  srai         a6, a5, 9
                  srl          t2, s7, a3
                  ori          t5, s8, -680
                  addi         s0, s11, 69
                  add          t6, zero, s6
                  sub          tp, t3, s10
                  sll          s5, a7, zero
                  xori         gp, t2, 928
                  sra          sp, zero, a3
                  srai         tp, t6, 21
                  or           t2, a1, t0
                  sltu         ra, s8, t5
                  lui          ra, 432758
                  slli         t5, s2, 14
                  xori         t5, gp, 1977
                  sub          s2, s7, t6
                  sra          t3, t5, gp
                  srai         a7, s9, 7
                  auipc        t1, 1027342
                  sltiu        t4, s1, -1335
                  sltu         zero, a3, s7
                  andi         t5, a0, 1745
                  andi         s4, t4, -818
                  sll          s3, s10, a1
                  nop
                  xor          s2, s7, s10
                  andi         t4, t5, -1193
                  srai         a7, s10, 1
                  xori         t6, s0, 1515
                  and          a2, a4, s9
                  slti         a1, t2, 96
                  xor          s11, tp, t0
                  auipc        s2, 475066
                  nop
                  andi         gp, s5, 1198
                  sll          a1, ra, s10
                  srl          s9, s4, s10
                  srli         t3, t6, 20
                  sltiu        t4, a7, -1875
                  addi         a7, s7, -1437
                  sub          t6, a7, gp
                  and          s6, s2, t0
                  slti         t1, s3, 1874
                  slti         a7, s2, -353
                  lui          s4, 83251
                  sra          a4, s3, t3
                  sltiu        s3, s1, 687
                  sltiu        sp, zero, -455
                  addi         s2, t5, 1524
                  lui          a1, 188709
                  andi         s5, t1, 1702
                  addi         s8, t1, 1901
                  sltiu        sp, a7, -939
                  xori         s10, s2, 394
                  sub          a6, a5, s8
                  and          a5, s2, t3
                  addi         tp, t1, 1027
                  slti         s11, s8, 1726
                  srl          t2, s10, t6
                  ori          a1, s11, -131
                  andi         t0, a7, -1479
                  slt          a4, s8, a3
                  slli         t3, s7, 26
                  or           t1, s6, s1
                  nop
                  and          s10, ra, a0
                  or           s2, s2, a3
                  add          s11, s9, gp
                  sra          s0, sp, s9
                  sra          a7, t3, s8
                  srli         s2, a5, 25
                  srai         zero, a4, 30
                  nop
                  srai         ra, a6, 24
                  lui          a6, 161068
                  srli         t2, s9, 16
                  or           a2, t5, a4
                  srai         sp, a3, 1
                  lui          a2, 603262
                  or           t3, s8, s0
                  xor          a3, t6, s11
                  and          a7, t1, s4
                  sll          a4, zero, t5
                  nop
                  sub          s8, zero, t1
                  and          s3, t0, s8
                  lui          t6, 163145
                  sra          sp, s4, t6
                  nop
                  ori          sp, a0, -867
                  lui          a7, 205701
                  add          a1, s1, s1
                  andi         s4, s11, 1174
                  slti         a7, sp, -952
                  nop
                  and          a3, a7, s4
                  addi         s4, a2, 678
                  sub          t6, t6, s8
                  srai         sp, zero, 30
                  slt          t0, a2, s11
                  sltiu        t2, t4, 648
                  sub          a4, s9, s6
                  sltu         s4, sp, tp
                  ori          t2, s8, 589
                  addi         a5, a0, 471
                  srai         s8, t4, 14
                  lui          tp, 406710
                  slti         t4, t2, 1175
                  addi         tp, s4, -419
                  or           s6, t5, s0
                  sltiu        s3, s6, 686
                  slli         gp, ra, 16
                  sra          s11, t3, s5
                  srli         s11, s10, 7
                  andi         a7, a6, 565
                  or           gp, a2, t1
                  sra          s9, a5, a4
                  nop
                  xor          a1, a4, a3
                  lui          t0, 158785
                  xor          a1, t6, a2
                  slti         s9, s0, -1156
                  and          zero, s11, t1
                  slti         sp, t6, 514
                  sra          s10, sp, sp
                  auipc        a4, 482168
                  sra          t6, a6, tp
                  srli         t1, ra, 30
                  srli         s3, s4, 15
                  sra          a5, s7, t5
                  sra          s10, a2, a1
                  xor          zero, s6, a4
                  andi         sp, a4, 957
                  xor          s4, s4, a0
                  xor          s11, s8, sp
                  andi         a7, s10, 38
                  and          gp, a6, s3
                  ori          t6, s8, -538
                  sltu         t1, s1, a2
                  xor          a7, zero, a1
                  sra          a4, a1, a4
                  add          a3, t0, t6
                  srli         a1, a0, 4
                  xori         s8, a1, 311
                  xor          s9, t2, s4
                  sll          a6, s11, gp
                  or           a2, s7, a7
                  nop
                  srli         a7, s7, 17
                  xori         a3, s1, -622
                  lui          a3, 726820
                  add          a5, s4, s9
                  ori          t2, a4, -1573
                  slti         a2, s1, 808
                  slt          t4, t0, tp
                  and          t5, s4, t1
                  sll          a1, s9, t3
                  srli         t4, t5, 28
                  add          sp, t6, t5
                  and          t3, ra, s6
                  sltiu        a3, s6, -948
                  add          t6, s5, s5
                  slti         s0, t4, 947
                  addi         s4, s6, -217
                  add          s4, t0, a0
                  slt          s3, zero, t5
                  sltu         t6, s5, tp
                  slt          s11, ra, a2
                  lui          a7, 234157
                  srai         gp, t2, 26
                  srl          s6, zero, sp
                  slt          a5, ra, a7
                  add          tp, t5, t0
                  xori         s3, s10, 1214
                  sltiu        s8, a6, -1009
                  auipc        a4, 513866
                  sll          sp, a2, t4
                  nop
                  xor          a1, gp, s10
                  sub          t1, zero, a7
                  srl          tp, sp, gp
                  sub          ra, t4, a3
                  sltiu        a4, s2, 1746
                  srli         s9, gp, 1
                  sub          zero, t3, t1
                  ori          a1, ra, -1126
                  sltu         tp, sp, s4
                  sll          s5, s1, s8
                  slti         a6, gp, 752
                  xori         t5, a6, 1992
                  auipc        s8, 258326
                  sll          s9, t6, t5
                  slt          gp, s11, t6
                  srai         t3, t2, 28
                  sltu         s5, sp, s2
                  or           zero, s2, s11
                  srl          gp, s2, ra
                  sltiu        s4, s4, 1552
                  srli         s10, t5, 11
                  and          a5, t2, s3
                  or           t4, a4, ra
                  add          a6, s7, zero
                  slt          a6, tp, a5
                  sra          t3, s10, s8
                  sltiu        t6, a1, -818
                  xori         s11, a7, 533
                  sltu         a1, a4, t6
                  ori          t3, a6, -1710
                  lui          t6, 258733
                  slti         t5, s8, 935
                  nop
                  auipc        sp, 248321
                  srl          t0, a7, a7
                  sltu         t2, t3, t2
                  sltu         s9, t4, t0
                  andi         s8, zero, -1270
                  andi         a4, s7, -345
                  sll          s6, a7, s4
                  xor          t1, a1, s11
                  and          s0, gp, t6
                  sltiu        gp, t6, -353
                  or           s8, gp, s8
                  slt          t6, a2, a0
                  and          sp, s7, t0
                  ori          a5, a6, 1465
                  srli         a6, a6, 17
                  slt          zero, s3, s9
                  sra          gp, t5, s3
                  xor          tp, ra, s1
                  or           s5, a1, a0
                  slti         s4, t4, -1602
                  lui          zero, 956683
                  srli         s6, a5, 11
                  sltiu        t5, s0, 231
                  addi         s2, s1, -35
                  addi         s11, s9, -1688
                  auipc        a5, 120830
                  slti         a1, t0, -1520
                  andi         t4, a1, -392
                  slli         a5, a4, 12
                  ori          sp, a5, 489
                  slti         t2, t5, -1423
                  sra          s8, t3, s11
                  srai         a7, s2, 27
                  add          t3, t5, t6
                  slli         tp, s7, 21
                  and          a4, a2, t5
                  auipc        t0, 774798
                  nop
                  sltiu        t1, tp, 679
                  auipc        s5, 151463
                  and          tp, t4, t5
                  nop
                  add          s3, s10, s2
                  and          s3, s6, s10
                  and          a2, zero, s11
                  lui          s11, 780020
                  addi         s10, t1, 68
                  srl          t2, s2, t4
                  add          ra, a5, sp
                  sltu         sp, s0, a5
                  addi         a3, s8, -755
                  sll          t1, s11, a0
                  sra          a4, t4, t4
                  slti         s3, s2, -1625
                  sra          t5, ra, t5
                  srai         t5, a7, 16
                  or           t6, s1, s4
                  nop
                  srli         t2, t3, 11
                  or           s8, a1, s3
                  sra          s10, s6, s5
                  ori          s3, s0, 418
                  sll          t3, s7, s8
                  xor          t2, a6, t5
                  sra          a6, t5, s5
                  srli         t3, a5, 8
                  or           t6, a7, t0
                  auipc        s6, 557388
                  lui          s6, 368503
                  xor          a6, a5, s4
                  slt          a1, a5, a6
                  sltiu        s6, s9, 99
                  add          a7, a2, s11
                  ori          a1, t3, -18
                  andi         a2, s3, 809
                  nop
                  srl          a6, t6, s7
                  and          s0, zero, a4
                  xor          gp, t6, gp
                  auipc        s8, 661562
                  ori          a6, zero, -1499
                  and          s11, s10, s2
                  slti         gp, s5, -1670
                  nop
                  or           s11, t2, t4
                  lui          t4, 213002
                  addi         a5, a4, -441
                  andi         s10, a5, -1624
                  srai         a7, s9, 17
                  sltiu        s6, zero, -206
                  auipc        s5, 465475
                  or           a4, a4, s6
                  lui          s6, 143655
                  slt          t4, t4, a2
                  addi         a2, t6, -27
                  sra          s11, t5, s5
                  ori          s8, s3, 277
                  sltu         a5, t6, s0
                  and          t6, t6, s11
                  sltiu        s11, zero, 1670
                  add          s10, t3, a3
                  xor          a3, s11, gp
                  nop
                  sltiu        s4, gp, 313
                  ori          t0, tp, -580
                  andi         s10, s0, -1938
                  add          a2, ra, sp
                  xor          t2, t0, t6
                  sltu         s5, s11, gp
                  auipc        t4, 540568
                  ori          s9, s2, 742
                  sub          s0, t4, a7
                  slt          t5, zero, s9
                  slti         s3, sp, 1446
                  slti         a3, zero, 1849
                  slti         sp, sp, -1466
                  auipc        s0, 131351
                  auipc        ra, 760618
                  sll          s2, a6, t1
                  sub          a4, sp, s5
                  ori          s6, a7, 1958
                  nop
                  sll          sp, s3, a3
                  xori         s8, sp, -907
                  slt          s9, s4, tp
                  auipc        t1, 1018115
                  sltiu        s6, s10, 523
                  lui          s2, 443905
                  add          t4, t1, s5
                  sltu         zero, zero, s0
                  sll          a2, s4, s4
                  srli         a7, a3, 3
                  ori          s8, a1, 290
                  lui          a3, 620909
                  ori          s9, a1, -230
                  andi         a1, t3, -619
                  slli         t1, s9, 23
                  nop
                  nop
                  slti         s3, a1, 171
                  nop
                  slli         s8, gp, 28
                  sub          zero, a6, a3
                  ori          s11, s10, -1041
                  sltiu        sp, gp, -324
                  or           s4, a3, a4
                  sltu         a7, s10, s7
                  srai         t1, t1, 7
                  sll          ra, s6, s3
                  add          s2, a3, a5
                  slt          s3, a6, t2
                  ori          a3, gp, -602
                  slli         a6, a3, 11
                  slti         zero, s2, 533
                  andi         s4, s8, -683
                  andi         s0, s0, -1345
                  srli         s9, zero, 4
                  sltu         s3, t2, s7
                  sltiu        s2, t3, -87
                  sll          t6, tp, a5
                  srl          t1, s10, s0
                  xori         s6, zero, -914
                  andi         s11, sp, -157
                  slti         a5, s3, -696
                  sltiu        t1, s2, -324
                  add          tp, t2, tp
                  ori          s2, zero, -362
                  auipc        s3, 514226
                  sll          s3, s1, sp
                  sub          a7, a3, a5
                  auipc        a4, 416707
                  auipc        ra, 1004378
                  lui          sp, 334486
                  xor          a4, zero, s9
                  srai         s2, a3, 11
                  auipc        s4, 474535
                  sub          t3, s0, a1
                  xori         t4, a5, 1807
                  xori         s10, s4, 86
                  or           a1, a3, s2
                  sra          s5, a4, sp
                  nop
                  xor          s5, s8, sp
                  srl          a7, a3, a1
                  slli         t6, s0, 20
                  or           t5, t3, s7
                  sub          t2, s11, s10
                  xor          s5, s0, s10
                  srai         a4, t3, 7
                  xori         a5, s2, 316
                  xori         a1, t6, -1572
                  andi         a5, a6, -1042
                  auipc        s2, 467084
                  sltiu        t4, a5, 614
                  lui          t0, 891830
                  srl          t0, a7, s1
                  nop
                  srl          s8, t5, s11
                  sltiu        a3, t3, -868
                  add          tp, a7, s10
                  slti         s5, ra, 598
                  auipc        s0, 500758
                  sub          t0, tp, s2
                  sltu         a1, t2, s11
                  nop
                  andi         t6, a0, 500
                  xori         s10, sp, -620
                  slli         a3, t5, 13
                  srli         t4, s1, 17
                  or           gp, s7, t3
                  ori          s2, ra, 1194
                  slt          ra, s10, s11
                  add          t5, t4, s4
                  ori          s4, t4, 1618
                  xor          s6, a6, s0
                  sltiu        s2, s5, -263
                  sra          gp, s0, t2
                  xori         s3, s5, 1352
                  add          ra, s7, a4
                  sll          s4, s7, a6
                  srl          s9, tp, s3
                  xori         zero, s3, 263
                  addi         s2, t6, 1264
                  andi         s2, a2, 536
                  slli         a2, t6, 5
                  slti         s5, zero, 941
                  slt          t0, t3, a1
                  add          t6, s6, s8
                  sub          t1, t0, t2
                  lui          sp, 766340
                  slt          t6, a4, s9
                  sltiu        t1, s0, 130
                  addi         a2, s5, -1793
                  sra          a7, a7, a7
                  slti         t4, s2, 1451
                  nop
                  auipc        s2, 552554
                  nop
                  sltu         t0, t1, tp
                  and          a6, sp, t3
                  auipc        s9, 317323
                  and          a3, s5, s5
                  sll          a6, t4, a5
                  ori          zero, a7, -1679
                  sltiu        t6, a6, 1601
                  sra          t3, a6, t3
                  xori         ra, a7, 1744
                  or           a6, t5, s6
                  slti         t0, s7, -1771
                  srl          a5, zero, a3
                  sra          a4, tp, a1
                  srai         ra, s1, 3
                  andi         zero, a3, -1879
                  lui          tp, 684007
                  add          t1, a7, t3
                  slli         s4, t2, 11
                  srli         s6, s1, 13
                  or           t5, tp, s0
                  slli         zero, t6, 25
                  andi         s9, s7, 817
                  ori          sp, a5, 1026
                  and          t6, ra, s0
                  lui          s9, 614442
                  sra          s6, t6, a1
                  sub          a6, a6, a4
                  lui          t4, 668748
                  sltu         t6, t3, a7
                  srai         a3, s0, 2
                  srli         a4, s10, 11
                  slti         a1, ra, 1834
                  add          t4, t5, s10
                  add          t3, s5, t4
                  slli         a7, t4, 26
                  sll          s9, zero, t6
                  srl          a4, a6, s3
                  srl          zero, s11, tp
                  nop
                  sltiu        a1, s0, -1558
                  srai         a3, tp, 27
                  xor          zero, s6, s6
                  nop
                  xori         s11, a3, -1636
                  slti         sp, a7, 775
                  xori         a5, t6, -1759
                  addi         s5, s0, 123
                  sra          s10, gp, a0
                  nop
                  srli         gp, a6, 30
                  add          a5, t2, s4
                  andi         s9, s2, -1278
                  slt          tp, t6, s8
                  slti         ra, s3, 862
                  and          gp, t1, sp
                  sltiu        t2, t4, -238
                  srl          a2, s2, s2
                  andi         sp, t5, 905
                  sltiu        t4, a7, -1811
                  and          sp, a7, sp
                  or           s5, t0, t2
                  add          t5, a0, a3
                  lui          s9, 726591
                  auipc        s8, 801351
                  add          s0, sp, s4
                  slli         t4, s6, 5
                  ori          a2, ra, -1145
                  sra          t5, s1, s11
                  sll          s2, s11, s0
                  andi         a6, tp, 706
                  and          s5, a2, gp
                  srli         a2, t3, 21
                  and          s6, s11, s3
                  sra          t0, a5, s0
                  nop
                  srai         t0, s11, 15
                  ori          a6, s2, -457
                  slt          zero, s10, a0
                  and          gp, a6, t1
                  xori         a4, a1, 301
                  lui          t5, 426629
                  slti         gp, s1, -1881
                  srai         a1, s2, 30
                  slli         a5, s0, 10
                  and          t3, a5, t6
                  li           s6, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           s8, 0x0
                  li           s3, 0x13cc9286
                  li           s4, 0xf4fc3627
                  li           a3, 0x39909b56
                  li           a5, 0x80000000
                  li           gp, 0x0
                  li           a2, 0xffffffff
                  li           a1, 0x0
                  li           tp, 0x48d76383
                  lui          s4, 38605
                  sub          gp, s8, a5
                  addi         a3, a2, -943
                  lui          gp, 840374
                  addi         s8, s6, 514
                  sub          a3, a2, s4
                  nop
                  add          gp, tp, s3
                  auipc        gp, 629730
                  sub          s8, a2, s6
                  add          a5, a2, s4
                  auipc        a2, 378372
                  auipc        a3, 873660
                  addi         tp, s3, 1960
                  lui          a3, 602929
                  nop #end riscv_int_numeric_corner_stream_19
                  ori          a1, a0, -668
                  srl          t0, t1, s7
                  andi         a7, a0, 1200
                  add          t0, s8, a7
                  xor          s8, s1, s9
                  slt          a6, ra, s9
                  sltiu        tp, a5, 1112
                  ori          t4, a4, 1485
                  ori          a5, s10, 1391
                  srl          s5, tp, s5
                  slti         s0, s4, 1245
                  sub          s3, t5, sp
                  nop
                  sltu         a5, sp, s2
                  add          t6, t5, zero
                  srl          s11, s2, t6
                  slli         gp, t1, 22
                  srai         s6, a0, 2
                  ori          a6, a7, -681
                  xor          t3, tp, a1
                  ori          a1, a1, 510
                  slt          s2, s0, s8
                  or           a2, t1, gp
                  xor          t4, s8, a7
                  and          s6, s4, t1
                  sltiu        s10, t5, 1127
                  addi         a5, a7, -198
                  sra          s9, t5, s1
                  srai         t6, s2, 5
                  auipc        sp, 361719
                  xor          t1, t3, zero
                  and          a6, a2, a5
                  slt          s0, s2, t5
                  slt          t6, a2, a4
                  ori          s11, a6, 713
                  andi         sp, a1, 140
                  sll          a3, s6, t3
                  srli         a6, a5, 22
                  sll          s3, t3, a6
                  xor          tp, t6, s1
                  add          s3, tp, a7
                  sll          s3, a1, s9
                  slt          a1, a0, s9
                  auipc        s9, 89760
                  slti         s10, s6, -1455
                  slti         gp, a1, -1281
                  slli         s2, zero, 30
                  andi         t3, t1, -630
                  srai         s9, s6, 3
                  or           s8, a3, t6
                  or           s9, a2, a6
                  slt          t1, t5, t1
                  sltu         sp, t0, s6
                  ori          a5, s5, 845
                  ori          a3, t3, -2023
                  srl          a2, t6, t3
                  sltiu        t6, s6, 358
                  srli         s0, s10, 20
                  sltiu        a7, s8, 1866
                  slti         s11, t1, 1365
                  srl          t5, a4, s1
                  sub          s10, t4, s1
                  xori         s9, sp, -245
                  or           a5, zero, ra
                  and          t5, a1, a3
                  xori         s9, a0, 1523
                  add          t4, a4, t4
                  sra          a7, gp, t0
                  addi         s9, s0, 1242
                  xor          t6, s2, s9
                  srli         t6, a7, 16
                  sub          s3, t3, a3
                  and          a7, a1, s1
                  nop
                  slt          s8, t4, gp
                  nop
                  add          a7, a1, ra
                  sll          s11, a5, s2
                  addi         t5, s2, -1194
                  slti         t5, t6, 812
                  sltu         t1, s4, a1
                  sll          sp, s4, t3
                  and          s6, a1, s7
                  sra          a4, s9, a5
                  addi         s9, t0, 758
                  sra          s2, s5, t6
                  sltiu        tp, t4, -356
                  and          s10, ra, s6
                  sltiu        t1, gp, 696
                  lui          a1, 811769
                  sltu         s2, gp, tp
                  srli         s11, s1, 7
                  srl          s9, t1, s3
                  lui          a5, 462896
                  srai         s9, zero, 17
                  sltu         s5, a5, tp
                  lui          zero, 423113
                  andi         s10, s10, 380
                  add          s9, s1, a6
                  sll          t0, t0, s2
                  slti         t2, ra, -1357
                  sra          s4, a6, a5
                  srai         tp, t5, 28
                  srl          t1, tp, t6
                  sltiu        s8, s5, -416
                  nop
                  andi         s11, s7, 1554
                  xor          s11, s9, t0
                  sll          ra, s11, s3
                  xor          s10, s9, gp
                  xori         sp, tp, 943
                  ori          a6, t6, -1311
                  addi         a6, a2, -1043
                  nop
                  addi         s2, sp, -775
                  andi         s10, t2, -182
                  slt          ra, a1, t2
                  srai         a6, gp, 13
                  sltiu        a6, a3, 245
                  andi         a2, gp, 311
                  xor          s0, tp, a6
                  slli         s10, sp, 16
                  sltiu        t0, s7, -1254
                  sra          t1, s10, a4
                  nop
                  slli         s2, s6, 9
                  srai         t5, a4, 2
                  slti         s2, s7, 180
                  or           zero, s11, s6
                  sltiu        gp, s1, -831
                  sltiu        s10, s3, -186
                  andi         gp, t5, -705
                  ori          s10, t3, -459
                  slti         s4, a6, -1255
                  andi         s8, zero, -1010
                  sltiu        t1, s3, 1927
                  slti         s10, t3, -482
                  ori          gp, t4, 885
                  ori          ra, a0, 102
                  slli         s3, t5, 31
                  slt          a2, sp, gp
                  slti         t1, tp, 1677
                  and          sp, t3, s5
                  ori          s3, t4, -354
                  srli         tp, s11, 30
                  or           a5, gp, a5
                  xor          a5, t4, a1
                  slli         s4, a4, 28
                  andi         s10, s11, 386
                  xori         t3, a4, -24
                  and          zero, t5, s11
                  lui          sp, 107440
                  srai         a2, ra, 0
                  sltiu        sp, ra, -1448
                  sltiu        a4, s0, 674
                  slt          a3, s5, a3
                  xor          a3, sp, s7
                  sra          s0, a2, a2
                  addi         s0, s7, 989
                  slli         s6, s6, 4
                  slt          ra, s8, s5
                  sra          a6, s0, a7
                  sltu         s5, s0, t4
                  xori         s0, a7, 85
                  or           s9, a7, ra
                  or           s10, s5, s10
                  and          t0, a3, s1
                  sra          sp, s2, t0
                  sltu         a1, t2, s6
                  xor          ra, sp, t2
                  slti         t2, s1, -224
                  xori         t4, s5, 580
                  sltiu        s5, s0, -1050
                  slt          t1, s9, a5
                  auipc        gp, 182273
                  sub          s3, t3, a2
                  sub          a4, a5, s2
                  andi         a7, s4, 1576
                  slt          s6, ra, t1
                  sltu         a5, t2, s2
                  addi         a2, zero, -247
                  addi         t3, gp, 798
                  sll          a2, a1, a5
                  ori          s4, s5, 1050
                  srl          t5, t5, s11
                  lui          t0, 707431
                  nop
                  nop
                  slt          s0, t6, t5
                  ori          s8, zero, 402
                  slli         ra, a4, 26
                  srai         s6, t0, 3
                  sra          s3, t6, s7
                  xori         s9, a0, -1094
                  sra          a6, t1, sp
                  addi         a4, t5, -1522
                  lui          t2, 243159
                  slli         t0, t4, 15
                  add          s11, gp, s1
                  nop
                  slt          a3, t4, s6
                  andi         s4, s4, 1918
                  slli         s0, a3, 30
                  sltu         s10, t6, s6
                  slt          s9, t6, t1
                  sll          a7, a7, t2
                  andi         a5, s4, -1469
                  sub          t2, sp, a0
                  ori          s8, a3, 1008
                  nop
                  srl          s10, a1, sp
                  xor          t2, s6, t1
                  slti         a3, a6, -536
                  slli         gp, a4, 18
                  srli         t3, s2, 8
                  srl          t4, gp, a0
                  xori         a4, a6, -1709
                  sll          s8, t1, gp
                  xor          t5, ra, a5
                  sub          t4, s11, a1
                  srli         s9, sp, 21
                  sra          t0, s1, t0
                  ori          t1, a1, 313
                  sra          a3, gp, s8
                  slt          t0, t0, s2
                  or           s10, s6, sp
                  xori         a3, a1, -641
                  sra          a7, s6, a1
                  srli         tp, zero, 30
                  srai         a2, a6, 18
                  xori         s5, a5, -1687
                  auipc        s6, 259495
                  srl          t1, gp, tp
                  sll          a7, a1, s1
                  auipc        tp, 524769
                  sll          t0, ra, s0
                  xori         t5, a7, 1287
                  srli         ra, a2, 13
                  add          s9, a5, s10
                  ori          a1, s5, -454
                  slli         t3, s1, 25
                  auipc        zero, 666271
                  sltu         t4, a4, s6
                  ori          tp, s3, -145
                  nop
                  slt          sp, s2, s1
                  srai         s4, zero, 17
                  srai         a6, s0, 7
                  addi         a3, s8, 255
                  addi         gp, s10, 398
                  sub          zero, s2, s2
                  ori          s2, s10, -1780
                  add          tp, ra, a2
                  lui          s9, 134778
                  srl          s0, s8, gp
                  or           a3, s2, tp
                  lui          t1, 485982
                  sub          s4, sp, t1
                  sltu         t6, sp, s4
                  ori          a3, sp, 1980
                  slti         t1, s4, -351
                  slt          a2, a5, t1
                  xor          a2, s4, t4
                  srl          t5, t6, t6
                  srli         a6, s10, 17
                  addi         t2, sp, 561
                  slli         a7, s8, 6
                  lui          s5, 320012
                  sll          t4, a6, s5
                  ori          s0, a2, -1396
                  srli         s6, t0, 13
                  lui          t1, 1002241
                  auipc        a7, 128893
                  ori          a2, s8, 1698
                  or           s10, s5, s11
                  xori         t2, tp, -489
                  auipc        a4, 609197
                  ori          s6, s6, 1650
                  slt          tp, a5, t6
                  srai         t2, a4, 14
                  sub          t5, a2, t2
                  slti         s10, t1, -150
                  xori         gp, s9, -740
                  auipc        s0, 974826
                  auipc        s11, 472974
                  srli         gp, a7, 5
                  slli         t5, a6, 8
                  and          t6, a5, s4
                  slt          t1, a5, s3
                  sll          s9, a6, zero
                  and          a3, t4, a0
                  srl          tp, s11, s5
                  sll          a3, s1, t1
                  sra          t0, zero, t6
                  slt          sp, a0, s2
                  srli         zero, gp, 23
                  lui          s3, 578333
                  srl          s8, s7, zero
                  ori          a3, s10, 591
                  slli         s9, sp, 6
                  ori          a4, gp, 1805
                  addi         a2, s11, 1988
                  xor          a1, s6, a6
                  andi         t3, t5, 214
                  sll          tp, s1, t5
                  sltu         s2, s4, a6
                  srai         t3, a7, 10
                  slti         s2, s8, -1026
                  srl          s5, a0, s9
                  addi         s9, s0, -355
                  sltu         tp, tp, s1
                  slti         s0, s9, 566
                  sltu         s5, s8, zero
                  add          zero, a5, s10
                  sra          a5, s4, t4
                  lui          t0, 821572
                  srli         t1, t0, 27
                  slt          s9, gp, t6
                  srli         ra, t3, 10
                  sra          a1, t3, s4
                  auipc        s10, 781292
                  or           t6, s7, t5
                  sub          a7, s11, t4
                  sub          a4, s6, tp
                  or           gp, s8, s1
                  lui          s0, 572615
                  sub          t2, t0, a0
                  xori         t0, t2, -1371
                  srl          s10, s1, s4
                  lui          s8, 876668
                  andi         tp, t2, 800
                  slt          t4, s0, a3
                  add          s5, s10, t1
                  addi         s6, a3, -589
                  slt          s8, t6, s8
                  addi         s10, t2, -125
                  sub          s2, s8, tp
                  sll          t2, s6, s6
                  andi         a1, s10, -1854
                  andi         a6, s2, 981
                  nop
                  sltu         a1, a5, tp
                  andi         sp, s5, -1759
                  srli         s10, s2, 19
                  and          a6, t2, a5
                  lui          s3, 674428
                  xori         s3, s4, 1135
                  sll          t5, ra, ra
                  sltiu        s4, t2, -1377
                  xor          ra, s3, a6
                  sra          s10, a6, a4
                  auipc        a2, 814688
                  slli         a5, s10, 13
                  and          s4, tp, a3
                  xori         t4, a3, 1118
                  sra          t3, s3, s11
                  xor          t2, s8, t3
                  auipc        a2, 923335
                  srli         gp, s11, 13
                  andi         gp, s5, 950
                  lui          t2, 391783
                  slti         tp, tp, 1097
                  andi         s9, s6, -1051
                  andi         a3, t4, 86
                  xori         s4, s1, 2017
                  slli         s5, a6, 22
                  sub          a7, t2, t6
                  nop
                  xori         s0, a6, 231
                  xori         s11, t1, -1186
                  addi         tp, s1, 912
                  sub          t5, s6, s6
                  xori         s8, t4, 961
                  andi         t1, s9, -1040
                  sll          s0, s9, s4
                  lui          t2, 354183
                  sub          s6, a6, s1
                  slt          s3, t1, s8
                  slli         a2, zero, 9
                  or           a4, a1, a0
                  sra          a3, a0, s4
                  sra          t2, s0, a5
                  slti         a3, t5, 1520
                  srl          a3, s5, zero
                  addi         a5, a5, -305
                  nop
                  lui          t4, 886308
                  srai         s6, t5, 3
                  srl          zero, s8, t4
                  slli         s11, s0, 26
                  nop
                  slli         t0, tp, 2
                  slli         a2, t0, 27
                  lui          t6, 883086
                  andi         s6, a4, -1491
                  nop
                  slli         s2, s4, 19
                  sra          s5, tp, s7
                  lui          s5, 48706
                  lui          s8, 996086
                  slli         a3, t5, 16
                  sltiu        gp, t1, 1137
                  ori          sp, t5, -1098
                  srai         t2, a2, 20
                  and          t0, s2, s1
                  srl          a3, zero, s4
                  auipc        a6, 259765
                  slt          ra, s1, t4
                  nop
                  lui          s3, 811452
                  slti         s5, gp, 515
                  slti         t1, t4, -631
                  sra          s0, a0, a4
                  srl          t2, t1, s2
                  addi         s10, s5, -134
                  sltiu        gp, tp, 1056
                  xori         a6, a5, -1407
                  slt          zero, s10, s11
                  srli         s6, a3, 27
                  slti         t0, a3, 1861
                  sltiu        t0, a6, 706
                  slti         t4, zero, 335
                  add          gp, s2, s7
                  sra          tp, a4, t1
                  sltu         s6, a1, a0
                  slt          t4, s10, t3
                  andi         s6, t3, 1736
                  sub          s8, a7, s8
                  nop
                  slli         tp, s1, 13
                  nop
                  slt          s11, a5, a6
                  xori         a3, s2, 449
                  add          ra, s0, s4
                  ori          s2, a5, -1917
                  sra          gp, s1, s4
                  xori         s0, t0, 1136
                  sll          a1, a6, s7
                  or           a3, gp, t2
                  ori          s8, gp, 624
                  sltiu        t6, a7, 1682
                  sltiu        s0, gp, 1518
                  sub          a7, s8, t6
                  auipc        s3, 834620
                  sltiu        s9, s9, 1246
                  andi         s9, s7, -261
                  sub          t3, t0, a6
                  ori          a3, gp, 97
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           t4, 0x6fc51298
                  li           t1, 0x80000000
                  li           a7, 0x0
                  li           s4, 0x80000000
                  li           t2, 0x0
                  li           s3, 0x7424ea25
                  li           s2, 0x2250141e
                  li           t0, 0xa4325e1
                  li           gp, 0xffffffff
                  sub          t0, t4, t2
                  lui          s2, 981190
                  addi         t4, t1, -1550
                  sub          t4, s4, s3
                  nop
                  lui          tp, 19720
                  auipc        t4, 349060
                  add          t4, tp, t4
                  lui          a7, 626393
                  addi         s3, s3, 354
                  lui          s3, 416798
                  addi         t2, s2, 1163
                  addi         gp, s3, -990
                  add          t2, a7, t4
                  auipc        s3, 241986
                  lui          s3, 688915
                  add          tp, s3, s2
                  sub          s2, s3, t2
                  auipc        gp, 284935
                  sub          t1, t0, a7
                  add          s2, t4, t4
                  nop
                  lui          s3, 112373
                  addi         gp, a7, -209
                  nop
                  sub          s4, a7, s3
                  lui          t4, 181595 #end riscv_int_numeric_corner_stream_18
                  sra          s6, t0, a6
                  ori          t4, a4, 180
                  addi         s0, s8, -1026
                  andi         s6, t1, -24
                  sltiu        ra, t1, 674
                  srli         s9, s0, 5
                  ori          a1, zero, -1188
                  ori          s6, a0, 1935
                  slt          t0, a4, t2
                  slli         s8, s8, 3
                  sltiu        t4, a6, -352
                  or           a5, sp, s3
                  srli         s2, a4, 30
                  or           ra, s6, t2
                  sltiu        a5, s7, -577
                  add          ra, sp, s7
                  sll          t3, gp, s9
                  srl          s10, t2, tp
                  andi         a5, s10, -1036
                  sll          t5, a0, a6
                  sub          a6, s10, a0
                  slt          sp, a3, t1
                  srl          t2, a0, sp
                  sra          a3, s6, s3
                  ori          sp, s7, -65
                  ori          s6, t3, -597
                  slli         ra, t4, 6
                  lui          a6, 933032
                  sll          s0, s4, zero
                  sra          t2, a7, s4
                  and          ra, a5, s1
                  slli         t3, a2, 12
                  slt          t2, a2, a6
                  srli         s5, s0, 9
                  auipc        a6, 414948
                  sub          s4, s6, gp
                  and          zero, t6, gp
                  andi         t6, s3, -1198
                  srli         s3, s5, 30
                  xori         a3, tp, 1077
                  sub          zero, a7, a5
                  slti         t5, sp, -646
                  sll          a7, s1, s7
                  lui          sp, 632106
                  addi         sp, s5, 969
                  slt          s2, s5, t0
                  or           a4, a4, gp
                  slti         s2, s0, 1044
                  sub          ra, t3, t6
                  lui          zero, 19756
                  srli         tp, s1, 17
                  sltu         a7, t0, a3
                  lui          s0, 920742
                  slt          a1, s9, s5
                  srai         s6, a6, 27
                  srl          s9, a4, t2
                  xor          zero, a2, a4
                  ori          t1, s5, 1430
                  sub          s3, s8, t4
                  ori          t3, s3, -1376
                  ori          zero, a5, -256
                  ori          a1, s7, 903
                  srl          a3, s6, s8
                  slt          s3, sp, s7
                  sra          s0, a6, t1
                  auipc        s9, 258178
                  sltu         t4, t4, ra
                  ori          s2, t1, 1032
                  slt          a5, a1, t5
                  srli         s5, s2, 7
                  or           t4, s1, t6
                  addi         s3, t6, -1075
                  add          a6, a6, a5
                  and          t0, a4, s9
                  nop
                  auipc        s8, 732195
                  srli         a6, s11, 0
                  sll          a5, a2, s8
                  add          a7, t0, s4
                  add          t0, t3, s10
                  xori         s4, t1, 1690
                  auipc        a6, 313522
                  slli         s2, gp, 22
                  slti         zero, t3, -1804
                  andi         a4, t6, 713
                  auipc        a5, 253361
                  sltiu        ra, gp, 1501
                  xori         t1, t1, -315
                  addi         sp, s11, -1967
                  ori          gp, a4, 1969
                  sltu         a6, t2, s4
                  sll          t6, t0, s10
                  addi         s5, t5, 1054
                  sltu         s5, t1, t6
                  and          a1, s7, s9
                  add          s9, t5, zero
                  xor          t3, s7, s9
                  slt          t1, s9, s6
                  andi         sp, s4, 569
                  slt          a7, s0, a7
                  sra          t4, s2, t3
                  ori          t6, t0, -582
                  lui          t3, 1035214
                  and          a3, sp, t4
                  slt          s8, s0, ra
                  xor          t3, s6, sp
                  sra          t1, a1, ra
                  sra          a7, gp, t1
                  slli         t3, zero, 10
                  slti         s10, a6, 1070
                  xori         s11, t0, 836
                  xor          s8, a2, a3
                  and          s3, t0, s4
                  or           s3, t3, t6
                  andi         s9, s6, 1527
                  nop
                  and          t2, t3, a5
                  srli         sp, a1, 12
                  and          t1, t0, s10
                  add          a3, t3, a6
                  or           t2, a7, sp
                  add          a1, a6, a2
                  slti         s4, s1, -763
                  srai         t4, s1, 19
                  srai         s10, a4, 10
                  sll          t3, sp, a0
                  xor          t1, a5, t5
                  srli         sp, s0, 8
                  srai         a4, t6, 12
                  sub          t5, a7, s2
                  srl          sp, s7, s4
                  srli         s3, a2, 10
                  slt          a4, sp, t2
                  addi         ra, a2, -241
                  slt          ra, tp, s10
                  ori          t4, s10, -1307
                  sra          tp, t5, ra
                  nop
                  and          s5, t5, t6
                  xori         s9, zero, 1463
                  slli         s6, a5, 22
                  srai         t0, s9, 25
                  ori          sp, s8, 1947
                  xor          t2, sp, sp
                  slli         t1, s8, 13
                  srl          s10, tp, a3
                  andi         s11, t2, 1139
                  srai         s6, s3, 4
                  slli         a4, s5, 23
                  slli         t2, s0, 15
                  nop
                  slti         a2, s8, 356
                  auipc        t0, 760083
                  auipc        a7, 279774
                  ori          t2, t1, 905
                  slli         t5, a0, 14
                  xor          a1, a2, s1
                  sltiu        ra, s11, 489
                  add          s4, s7, t0
                  srl          a5, a4, a7
                  lui          a2, 10902
                  srli         s5, t1, 12
                  srli         s10, t2, 23
                  ori          a4, s5, 1577
                  slti         t4, a2, 826
                  srli         t4, t0, 17
                  sll          t3, t2, a3
                  lui          s11, 88455
                  srl          a2, gp, ra
                  sub          s0, a5, s9
                  slti         t4, a1, 1487
                  or           s0, t5, s5
                  lui          s9, 581016
                  sll          s4, sp, ra
                  auipc        s9, 873110
                  ori          s9, s6, -70
                  add          s8, tp, a6
                  xor          a4, a0, t6
                  slti         t1, s7, 607
                  xori         s2, gp, 309
                  ori          s4, s7, -1638
                  lui          zero, 837547
                  lui          gp, 9563
                  addi         s0, t1, -1792
                  sltiu        sp, s4, 1875
                  srli         s2, s11, 1
                  slti         s2, tp, 939
                  nop
                  slli         a6, s10, 0
                  slli         s2, t6, 5
                  sltu         s4, s5, t6
                  sub          s4, s8, a6
                  sll          s3, a2, a1
                  sra          s8, s1, a2
                  xor          t6, a6, t3
                  slt          s0, a0, s6
                  srl          t4, a0, s10
                  srai         t0, s9, 3
                  lui          s3, 55160
                  lui          s0, 752583
                  addi         a7, s11, 1492
                  sltiu        s2, tp, 1100
                  srai         s9, t6, 10
                  lui          t5, 405421
                  srl          t1, s3, a3
                  srli         s10, s2, 9
                  sltu         t3, t4, t1
                  sub          t1, s7, s9
                  or           s10, t2, tp
                  slti         a2, s3, 1038
                  sltiu        tp, t4, -2027
                  slti         tp, a6, 1533
                  auipc        s0, 536418
                  or           t5, t6, s6
                  and          a2, zero, t1
                  addi         s8, s10, -901
                  sub          s4, a6, a2
                  srl          tp, a7, s0
                  srli         sp, s11, 18
                  srl          t0, s9, sp
                  andi         a5, s0, -103
                  addi         s8, t3, 1889
                  auipc        a5, 729834
                  sltu         s6, sp, t0
                  sll          s4, gp, s7
                  slli         t0, s9, 15
                  sltiu        a4, tp, -1340
                  sltu         zero, t2, t3
                  srl          t1, a5, sp
                  xori         gp, a3, 1618
                  nop
                  and          s9, s7, a0
                  and          t4, s9, s11
                  slli         s11, a4, 9
                  slli         s5, s5, 12
                  lui          s2, 253471
                  xori         a3, a3, 601
                  sra          ra, ra, t1
                  addi         s11, a2, -1270
                  slti         a6, s6, 161
                  srl          t2, t4, t2
                  srl          tp, s7, a1
                  xor          s5, a7, s4
                  andi         tp, t6, -313
                  lui          s11, 70071
                  slti         s9, a4, -368
                  and          t5, a0, sp
                  and          sp, a3, a1
                  addi         t2, a6, 216
                  lui          t3, 395861
                  sltiu        a5, a2, 445
                  xor          s11, s0, ra
                  or           a1, t3, s9
                  sra          s6, t1, a4
                  addi         a6, t3, -1847
                  sra          s3, s7, t5
                  xor          s0, tp, s5
                  nop
                  andi         s10, t2, -1849
                  srl          s8, zero, gp
                  add          a1, a4, s1
                  srl          ra, s7, t3
                  lui          t6, 942512
                  auipc        s3, 345175
                  xor          s4, a6, s8
                  ori          tp, s0, 1018
                  auipc        t3, 487779
                  sll          a3, s2, s9
                  nop
                  sltu         tp, s6, t2
                  srai         s6, a6, 7
                  and          gp, s10, s9
                  slti         tp, a3, 678
                  addi         t6, s4, -927
                  slti         t4, zero, 886
                  or           s4, s3, s5
                  addi         tp, s4, 497
                  addi         t6, s3, -2022
                  srai         t2, t2, 8
                  auipc        zero, 561352
                  add          zero, s5, a2
                  lui          a1, 392174
                  add          a6, s3, ra
                  andi         sp, ra, 2003
                  auipc        a6, 188663
                  slt          a5, t0, s3
                  sll          t0, a0, a3
                  slt          t6, s5, s11
                  srai         s10, a1, 9
                  add          a1, a7, gp
                  sra          zero, s10, s9
                  sll          t1, a4, s6
                  xori         a7, t1, -1056
                  and          t2, a4, a0
                  lui          s5, 95709
                  li           t4, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           a6, 0xd2077214
                  li           a5, 0x80000000
                  li           a1, 0x0
                  li           a3, 0x165cb33a
                  li           a2, 0x80000000
                  li           s10, 0xc9a8d4e4
                  li           s6, 0x5fbf6274
                  li           s4, 0x80000000
                  li           ra, 0xffffffff
                  addi         a1, a3, 1519
                  addi         a5, a6, 263
                  addi         t4, a3, 543
                  auipc        a6, 132800
                  lui          s4, 258385
                  addi         a2, a2, -998
                  auipc        s4, 43565
                  lui          a3, 50465
                  auipc        a5, 64629
                  nop
                  add          a3, ra, a2
                  auipc        a1, 43654
                  lui          a3, 492269
                  nop
                  auipc        a6, 333553
                  add          a3, a1, ra
                  addi         a5, s4, 306 #end riscv_int_numeric_corner_stream_4
                  auipc        ra, 111815
                  or           s0, s4, t4
                  addi         a6, a4, -2035
                  and          t4, a4, s5
                  sub          s10, s8, s2
                  and          s10, s8, s9
                  xor          s3, s5, t3
                  and          t0, a0, sp
                  addi         t2, a0, 1624
                  and          t2, t2, s9
                  xori         a1, t3, 441
                  or           s3, t0, t2
                  addi         s3, t0, -1198
                  sll          s11, t4, a2
                  xori         s0, s1, 1245
                  nop
                  ori          a5, s3, 532
                  sub          a4, a4, t3
                  ori          s4, a0, 2022
                  srl          a1, s5, ra
                  or           t3, a0, s9
                  sub          a3, s7, s7
                  add          t0, t6, s9
                  xor          a6, a1, t3
                  slti         s9, gp, 1195
                  xori         sp, a2, -150
                  sra          t4, s10, t2
                  and          a1, a0, t5
                  sltiu        s9, a5, 619
                  xori         ra, s8, 1548
                  srai         s0, a3, 5
                  lui          t0, 90468
                  sltu         s0, t5, a7
                  ori          t6, a5, 599
                  sltu         s9, a2, tp
                  srli         s4, s4, 7
                  auipc        s5, 1000080
                  add          a2, t2, s4
                  sltu         t6, s10, s0
                  slt          s0, s2, tp
                  or           a5, s3, sp
                  srl          t3, s5, s10
                  srai         t3, tp, 19
                  auipc        t1, 713356
                  add          tp, s2, s0
                  sltu         a4, t2, a3
                  and          gp, zero, a1
                  xori         t2, s10, 1154
                  sra          s6, a6, t6
                  sub          sp, a6, s0
                  sra          s5, t4, s9
                  xor          s6, t6, s3
                  and          a5, s6, s5
                  or           t4, t1, s4
                  and          a4, a5, sp
                  srai         a6, t2, 4
                  and          s8, t1, s7
                  ori          a2, s4, 885
                  slti         a3, a7, -1601
                  srl          a4, t3, s5
                  addi         s8, t5, 608
                  andi         s11, t3, -720
                  sltiu        a2, s2, -1295
                  slti         t5, sp, 2021
                  srli         s0, s3, 26
                  slli         a6, a5, 0
                  srli         a3, a3, 25
                  or           t2, t1, t3
                  nop
                  sltiu        t2, s8, -1980
                  nop
                  sra          tp, t4, a1
                  sltiu        s10, s1, 966
                  xori         a2, t6, 281
                  slt          a2, a6, s0
                  and          ra, a6, s2
                  sltiu        a6, t0, 2042
                  sra          s10, s0, s7
                  sub          a6, a6, a6
                  sltiu        s2, a2, 1512
                  srai         s11, s11, 12
                  nop
                  xor          gp, a5, s8
                  auipc        s5, 754506
                  sub          s11, s8, tp
                  sll          t4, s6, s4
                  and          s11, t1, sp
                  sll          sp, s5, tp
                  auipc        t3, 858714
                  srli         s0, zero, 28
                  srli         a2, s11, 3
                  xori         s6, s9, -1968
                  sll          gp, a0, s2
                  sltiu        t6, s6, -1647
                  sltu         s5, t5, t1
                  addi         a2, a4, 233
                  andi         t4, s6, -528
                  sub          a4, s9, s7
                  sra          a2, a0, s0
                  slli         s9, t0, 20
                  ori          t2, s11, 1764
                  srai         t0, ra, 18
                  and          t1, s7, t0
                  lui          t6, 369746
                  andi         s2, zero, 1381
                  andi         s2, s11, 1358
                  sltiu        a4, ra, -1903
                  sltiu        s10, s9, 1733
                  ori          a1, s8, -182
                  lui          s5, 514556
                  sll          sp, s0, t3
                  sra          s8, s11, s0
                  nop
                  xor          t5, a2, t4
                  slti         s2, a5, 231
                  nop
                  nop
                  sltiu        zero, s5, -1562
                  nop
                  sra          t5, t6, s7
                  lui          a5, 509450
                  slli         t6, s4, 26
                  sll          a7, s6, t5
                  sra          s0, t3, tp
                  lui          a5, 764782
                  addi         a6, a7, 279
                  srli         t1, gp, 4
                  srl          s6, s2, a7
                  sltiu        t5, s4, 1818
                  srl          s6, t1, t3
                  slti         gp, ra, -775
                  sub          t4, s11, a6
                  lui          t6, 764731
                  ori          s10, s5, -1706
                  sltiu        s0, a5, 1554
                  xori         a2, ra, -1671
                  sltu         s9, s4, a6
                  sltiu        a3, a4, 1167
                  nop
                  xor          s2, s6, s0
                  sub          t0, t1, sp
                  addi         s8, s4, 1726
                  sltu         t2, s10, a0
                  add          ra, gp, t0
                  add          a4, t4, s8
                  srl          ra, sp, t0
                  xori         t4, a3, 790
                  slti         t0, a0, 974
                  or           t6, t6, s0
                  sltu         gp, a3, s6
                  sltu         s8, a5, s9
                  or           s0, a5, a5
                  lui          tp, 290903
                  slli         a5, a7, 12
                  nop
                  slti         t3, sp, 1453
                  sltiu        s4, t4, -165
                  addi         t1, t0, 1579
                  sra          t0, t1, t2
                  sra          s10, s5, ra
                  sll          s9, s10, t0
                  sub          s2, t0, sp
                  add          t5, a1, s3
                  lui          tp, 850781
                  nop
                  srl          s0, s5, s10
                  slli         s10, s0, 29
                  srai         gp, s9, 30
                  slt          t5, a4, t0
                  auipc        t3, 1017926
                  slli         s0, t6, 1
                  slt          s3, a4, s4
                  sltiu        a7, t0, -1132
                  add          s9, sp, gp
                  nop
                  xor          a1, a1, t3
                  auipc        t6, 772030
                  sltu         s3, t4, s2
                  srli         t2, t1, 8
                  xor          s11, s1, s3
                  andi         s3, t3, -1116
                  ori          a6, a2, 459
                  andi         t6, tp, -649
                  srli         a1, t5, 5
                  lui          a3, 120716
                  sltu         gp, s0, s3
                  ori          s9, t2, -1824
                  slt          zero, a2, s9
                  andi         s5, ra, 979
                  lui          tp, 546406
                  add          a7, s8, a7
                  lui          s2, 135440
                  nop
                  xori         a7, s3, 1910
                  slli         s4, a2, 30
                  slt          ra, s2, a0
                  xori         t2, t2, -1507
                  nop
                  sltu         ra, a1, tp
                  slli         t0, s8, 5
                  slt          a5, t2, t5
                  sltiu        a4, t1, 122
                  addi         ra, tp, 149
                  sltu         a4, t3, a0
                  xor          t1, s1, s10
                  sra          s11, t1, t4
                  sub          ra, t3, s8
                  or           gp, gp, gp
                  or           a4, t6, a7
                  sll          s0, s5, a7
                  andi         s8, t3, -440
                  slti         s9, t4, 1922
                  slli         s9, s9, 4
                  auipc        s9, 600712
                  srli         s9, a6, 14
                  srli         a2, tp, 18
                  slt          a5, s1, s4
                  addi         t5, a4, -1583
                  sra          s8, s0, t2
                  sltiu        a3, a3, 383
                  auipc        t1, 360296
                  slti         a2, t0, -26
                  slti         t1, s4, 1387
                  srai         s0, s6, 22
                  sll          zero, t4, s2
                  slti         s9, s0, -632
                  li           sp, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           s11, 0xf9586d01
                  li           t6, 0x80000000
                  li           gp, 0xffffffff
                  li           s6, 0x4530aea3
                  li           s8, 0xffffffff
                  li           s2, 0xffffffff
                  li           a4, 0xffffffff
                  li           t0, 0x80000000
                  li           a7, 0xffffffff
                  lui          a4, 186681
                  auipc        gp, 493744
                  sub          gp, t0, gp
                  sub          a4, t6, a7
                  addi         t6, t6, 1425
                  addi         t0, gp, -782
                  add          t6, gp, s2
                  add          a4, a7, s6
                  addi         t6, a7, -1935
                  sub          s11, a7, a4
                  addi         t0, a7, 446
                  lui          a7, 214886
                  nop
                  addi         s6, t0, -1697
                  add          s2, gp, s2
                  addi         s6, a7, -2
                  add          a4, gp, a7
                  addi         sp, sp, -595
                  add          sp, t0, s6
                  add          s6, t0, s6
                  add          a7, s6, sp
                  add          s8, s11, s6
                  auipc        t6, 697578
                  add          s8, a7, sp
                  nop
                  addi         s2, s11, -1415 #end riscv_int_numeric_corner_stream_14
                  sltiu        t5, a1, -571
                  sll          s11, s10, a4
                  andi         s10, s3, 1839
                  srli         s9, tp, 13
                  srl          gp, a6, ra
                  xor          tp, s9, t4
                  andi         t3, s10, 1423
                  lui          t4, 1017804
                  lui          s9, 925298
                  sra          t2, tp, s10
                  srli         s4, a4, 30
                  sra          s6, a4, a0
                  sra          a1, a6, tp
                  sltiu        t4, s7, -1111
                  srli         gp, s9, 21
                  sltiu        t2, tp, 304
                  and          s10, t6, sp
                  auipc        s11, 74619
                  slt          a3, s0, t5
                  addi         a7, s4, -1413
                  add          a5, s2, a7
                  auipc        a5, 834504
                  nop
                  xor          t2, zero, s8
                  lui          a6, 821754
                  srai         a6, a4, 3
                  lui          t4, 133786
                  slli         t5, a1, 19
                  xori         a3, s5, -1312
                  or           gp, s8, s8
                  srl          t6, s1, s3
                  slt          s3, s8, s5
                  ori          s11, s8, -670
                  sltiu        t2, a3, 154
                  slti         a1, s7, -1790
                  or           a6, a0, s6
                  srli         a2, a1, 6
                  add          s9, tp, t5
                  sltu         a5, s9, a2
                  add          a6, t2, a5
                  slti         s5, gp, 1399
                  sltiu        a7, a4, -551
                  xor          a1, a1, t0
                  auipc        ra, 517810
                  and          t2, s10, sp
                  xori         a5, a3, 1561
                  auipc        s0, 253461
                  sll          a4, s9, zero
                  ori          t0, a2, -98
                  xor          s10, s7, t2
                  srai         a3, s5, 2
                  addi         a2, a0, -1355
                  auipc        t4, 563916
                  add          t3, s1, s4
                  srai         tp, s1, 7
                  sll          zero, s5, s11
                  sltiu        t0, s3, -946
                  sltu         a5, s11, a1
                  sll          t4, s7, s11
                  srli         t2, a1, 0
                  slli         zero, ra, 10
                  srai         a6, s10, 26
                  addi         s2, s6, -149
                  nop
                  slli         s11, s0, 5
                  add          t2, s4, t4
                  xor          a4, a4, a5
                  sub          t6, a3, a5
                  sltiu        s9, t3, 692
                  sll          s5, s0, a1
                  srl          a2, s0, gp
                  li           a2, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           a6, 0x80000000
                  li           s8, 0x80000000
                  li           tp, 0xffffffff
                  li           s10, 0xffffffff
                  li           s4, 0x45dd152c
                  li           sp, 0x90e4e20f
                  li           a4, 0x0
                  li           a3, 0xffffffff
                  li           s11, 0x80000000
                  sub          a2, a3, a4
                  auipc        s8, 689440
                  auipc        s10, 312608
                  addi         a6, a2, 475
                  lui          s10, 10700
                  nop
                  nop
                  nop
                  nop
                  add          sp, tp, s4
                  lui          s11, 366607
                  auipc        s10, 188050
                  sub          a2, s11, a4
                  lui          s10, 744182
                  sub          s8, a4, s4
                  sub          s10, a6, s8
                  addi         s11, s4, -871
                  lui          a3, 795094
                  sub          sp, a4, a2
                  add          tp, s11, a3
                  add          a6, s4, s4
                  nop
                  add          tp, s4, s4
                  nop
                  nop
                  add          tp, s11, s11 #end riscv_int_numeric_corner_stream_9
                  nop
                  add          t5, tp, s9
                  add          tp, t2, a4
                  addi         a3, a0, 213
                  lui          a3, 712546
                  nop
                  or           s3, t4, a1
                  or           s8, s3, s7
                  sltiu        s6, a3, -1055
                  xor          a3, a0, s11
                  slt          t0, s0, t5
                  sltu         t2, zero, s5
                  sub          zero, s2, ra
                  xori         a3, s3, 1865
                  slli         t6, s8, 16
                  xor          a4, a2, s6
                  srli         s8, s2, 15
                  sra          sp, ra, a4
                  ori          s0, a3, 2033
                  slli         s2, t6, 13
                  lui          s11, 125954
                  xori         a7, s3, -680
                  sltu         a5, a6, s8
                  sltu         gp, s2, a4
                  nop
                  srli         s2, a4, 13
                  addi         s10, zero, -524
                  slti         s10, a0, 522
                  nop
                  sltiu        a6, a2, -37
                  lui          s9, 818950
                  nop
                  srai         a1, tp, 25
                  srli         tp, a5, 29
                  lui          s3, 1019715
                  auipc        s4, 210435
                  auipc        t1, 319657
                  slti         s4, a2, 814
                  andi         s0, a6, -524
                  sub          t1, gp, zero
                  and          a2, a3, s0
                  and          sp, s7, s10
                  nop
                  sra          s4, t0, a5
                  add          a3, s9, s1
                  andi         t5, t6, 1186
                  sra          s3, s0, s6
                  sub          t0, s6, s4
                  slt          s6, s5, t3
                  and          ra, t4, a0
                  sltiu        s9, s9, 152
                  xori         a3, t0, -1656
                  andi         tp, s10, -244
                  or           zero, tp, t1
                  and          s5, a2, a3
                  ori          a5, t5, 1000
                  and          s6, gp, ra
                  addi         t6, t3, -1666
                  sub          s8, a0, t2
                  andi         t6, s10, 1378
                  slli         s11, t3, 26
                  add          t3, s4, s1
                  slt          s10, a1, a7
                  lui          a5, 921164
                  add          s6, ra, t4
                  lui          tp, 521727
                  or           s2, s3, a3
                  ori          s10, s10, -740
                  slli         s0, s6, 13
                  slti         s4, tp, 801
                  sub          s0, gp, tp
                  or           s6, gp, t6
                  srli         a6, zero, 27
                  andi         zero, s2, -931
                  and          t3, t1, s7
                  sltu         s4, s4, a5
                  srl          t4, s11, s5
                  slt          s10, zero, s0
                  andi         a4, s7, -1366
                  slt          s9, ra, a4
                  sra          sp, a3, a4
                  nop
                  or           zero, t4, s5
                  srli         s6, t6, 14
                  sub          zero, s9, s3
                  srl          s11, t1, s8
                  sll          s6, s4, t1
                  ori          t4, s8, 1982
                  slti         t5, t3, 1412
                  sltiu        a3, a3, -857
                  nop
                  or           a4, s5, t4
                  or           a1, s11, t6
                  sub          s8, t6, t0
                  sltu         s8, t4, t3
                  or           t1, s0, tp
                  sub          t2, t1, t6
                  addi         s9, a0, -502
                  srai         t1, s1, 24
                  srl          ra, a2, s10
                  add          ra, t2, s1
                  lui          t4, 839439
                  andi         a5, a2, -785
                  and          s4, s3, s10
                  sltiu        t4, s11, -2023
                  sll          t3, zero, ra
                  ori          sp, t3, -87
                  nop
                  xori         s2, s2, -1833
                  nop
                  sltu         a7, a1, t1
                  srl          t3, ra, a1
                  xor          a6, s4, t6
                  slt          s3, zero, t0
                  sltiu        s0, s0, -1396
                  slt          a7, s2, a2
                  srl          s9, a6, a2
                  auipc        s9, 696545
                  sub          a7, s4, s4
                  sub          s6, zero, s8
                  sltu         t3, s2, a4
                  sltu         t6, s9, t4
                  sll          t5, a7, a1
                  sll          s0, a2, a6
                  sll          s6, s10, s11
                  lui          s8, 908166
                  sll          a2, s7, s2
                  xor          s8, zero, s5
                  srli         s0, a2, 9
                  srai         ra, s4, 28
                  srl          s6, sp, t1
                  add          s10, a4, s4
                  ori          a4, t0, -913
                  srl          t1, a5, t3
                  and          t4, a6, a1
                  sltiu        t6, t6, 419
                  sra          s10, s1, t0
                  addi         s0, s11, 1411
                  and          s6, s3, t5
                  xor          s2, s10, s7
                  slt          sp, s5, t3
                  or           sp, t4, sp
                  slti         t4, a2, -680
                  or           s0, t3, s6
                  sll          t4, a2, s3
                  sltiu        s11, s4, -735
                  or           s8, t5, a1
                  ori          gp, gp, -2031
                  sub          s8, s7, t3
                  sltu         t0, a0, tp
                  addi         s0, a2, -351
                  and          tp, s3, t1
                  and          a3, s1, t2
                  and          tp, t0, t6
                  xori         sp, a2, -319
                  lui          a7, 317134
                  lui          a6, 694715
                  sll          sp, s0, s1
                  sub          s5, t1, s4
                  sra          a1, t6, t6
                  addi         a3, s1, 1244
                  slt          a1, gp, s2
                  sra          zero, s7, s8
                  add          a4, gp, s10
                  slt          t2, t0, s0
                  add          t2, s4, s1
                  addi         s2, gp, -192
                  lui          ra, 664522
                  sll          tp, gp, t6
                  auipc        zero, 393110
                  srli         a3, t6, 20
                  slli         a3, a0, 29
                  slt          s3, s2, a3
                  slti         a6, s11, -161
                  slt          t5, a2, t5
                  sll          sp, a1, s2
                  or           t6, t1, t5
                  slti         a1, a6, -114
                  xor          s9, t1, s0
                  slli         a4, a6, 1
                  lui          a5, 66090
                  add          s4, a2, a1
                  sra          zero, s7, t3
                  or           a2, s8, s6
                  nop
                  nop
                  slli         a7, t4, 26
                  sltu         s8, s0, gp
                  sltu         s4, s11, t2
                  srai         s11, zero, 11
                  andi         tp, s1, 270
                  nop
                  sll          a2, a5, t1
                  slli         s11, a7, 2
                  sll          a3, t4, s0
                  ori          a6, s6, -1212
                  srai         a7, t5, 8
                  auipc        ra, 926407
                  slli         t1, t1, 23
                  sltiu        s11, sp, -1317
                  slt          s11, ra, ra
                  xori         s0, t1, -513
                  nop
                  xori         t3, a5, -1344
                  nop
                  addi         s11, t3, -173
                  srai         a5, t4, 24
                  addi         a7, a2, 1913
                  nop
                  slt          a6, zero, t0
                  srli         t4, t5, 10
                  sub          t6, t1, s6
                  ori          t6, s2, -502
                  add          s4, t5, a4
                  and          a7, ra, s10
                  srai         a7, s1, 22
                  lui          s2, 84746
                  sltiu        gp, s7, -862
                  sub          s6, gp, s10
                  ori          t1, s9, -1678
                  add          a1, zero, t6
                  sub          s8, s10, t5
                  slli         a3, ra, 21
                  add          a6, s4, s1
                  andi         a5, s0, -1327
                  xor          t1, a0, a1
                  and          a6, s9, s1
                  sra          s11, s2, a1
                  srl          a3, a1, a7
                  or           t3, ra, s6
                  srl          t0, t5, s6
                  nop
                  sltu         s10, s9, a2
                  slli         s8, a1, 20
                  sltu         t0, a2, a3
                  and          s3, s2, s8
                  lui          a1, 526612
                  srli         s8, a1, 0
                  srl          s11, t2, gp
                  srli         ra, t1, 25
                  slli         s3, t6, 9
                  sltu         s10, t3, s4
                  auipc        s3, 211651
                  auipc        s3, 823258
                  sltu         s6, a3, s11
                  sra          a1, s3, ra
                  auipc        t0, 447498
                  add          a3, s5, a6
                  xor          gp, s10, t2
                  slli         t6, sp, 5
                  slti         a7, a6, -727
                  sub          s10, ra, a7
                  sltiu        a2, s1, -1899
                  ori          t6, t6, -1776
                  sltiu        a4, s3, 831
                  sll          a3, t6, zero
                  andi         gp, t0, -810
                  sra          s6, s5, sp
                  nop
                  addi         t6, a2, -1971
                  slt          a7, a4, a5
                  auipc        t2, 474212
                  sltiu        s5, t5, -1858
                  sll          gp, gp, s7
                  ori          a7, t0, -1412
                  sra          s9, s1, t1
                  slt          t2, s4, a3
                  andi         a4, tp, 2002
                  add          t6, t6, s0
                  sll          gp, a4, s5
                  and          s5, a7, s9
                  srai         ra, a2, 22
                  lui          s3, 427585
                  slli         s3, t1, 25
                  andi         a1, s11, 1552
                  sll          t2, t0, tp
                  slli         s2, s0, 8
                  andi         s10, s6, -1326
                  add          sp, a0, s0
                  xori         t4, a5, 338
                  xor          zero, a0, t6
                  slli         a5, s8, 18
                  nop
                  addi         a2, t6, -1489
                  sub          t6, s3, t5
                  nop
                  andi         t0, a1, 474
                  sltiu        s4, s5, 431
                  andi         a7, s4, -413
                  srli         s2, tp, 0
                  sltu         s3, t0, a4
                  srai         a5, a5, 28
                  slt          t0, sp, t1
                  sra          a7, t6, a0
                  addi         t5, a1, 337
                  sltiu        t1, a6, 692
                  sra          s5, gp, gp
                  lui          gp, 648055
                  slti         tp, a6, 1922
                  slli         s10, a7, 12
                  sub          tp, s3, a3
                  sra          s6, ra, a4
                  addi         a4, s4, 1645
                  sltiu        t0, t2, -96
                  xor          t4, t3, t4
                  add          a2, a3, a7
                  slt          s0, gp, ra
                  sltu         t5, s4, a6
                  xori         s11, a3, -1863
                  sra          t6, a7, s0
                  sub          a4, a2, t3
                  slti         gp, t3, -881
                  srl          a1, a6, s8
                  lui          a5, 326628
                  sltiu        zero, t5, 252
                  slti         s8, t1, -644
                  lui          s2, 666514
                  xor          a4, a5, s7
                  ori          s6, tp, 393
                  sltiu        a4, s8, 2028
                  xori         sp, s10, 1021
                  slti         tp, t4, 289
                  sll          a1, s5, a3
                  ori          a5, s8, -227
                  nop
                  srli         a3, s9, 17
                  xor          s11, a5, gp
                  sltiu        s11, a3, -71
                  sra          s4, tp, sp
                  slli         s4, a3, 3
                  ori          t4, t6, -1768
                  ori          t3, a4, 1730
                  andi         s5, a5, 198
                  xor          t4, t3, t0
                  slli         s5, t1, 12
                  xor          a1, t5, t5
                  sltiu        s5, a5, 1691
                  and          t3, sp, s10
                  sll          s6, s3, zero
                  addi         a5, tp, 841
                  xor          a1, a1, a0
                  xori         a6, tp, 736
                  addi         t6, s7, 1352
                  auipc        s10, 925043
                  lui          s5, 372944
                  sll          s6, t0, a2
                  lui          s6, 282249
                  sltu         a1, gp, s0
                  sltiu        sp, t1, -1267
                  sll          s11, t0, t0
                  xor          t1, s6, tp
                  slli         s2, s5, 6
                  xor          s5, s11, t5
                  sra          t6, t1, s5
                  sra          s2, s6, s6
                  sltiu        a3, a1, -1719
                  srli         a1, s5, 12
                  srl          t3, sp, s1
                  xor          t1, s8, gp
                  xori         sp, t6, -1588
                  xori         s2, s5, 1222
                  xor          t4, a0, t1
                  sll          ra, t1, gp
                  srli         t3, s11, 12
                  slti         a4, a1, -1729
                  andi         t3, a3, -900
                  andi         a3, s7, -1245
                  lui          a5, 131515
                  srl          a1, a5, s2
                  srli         a6, t1, 26
                  sub          s9, t3, s0
                  auipc        t1, 248625
                  add          t1, a1, s10
                  add          s3, t4, s7
                  and          a6, s1, gp
                  srli         t6, s3, 20
                  auipc        t1, 144930
                  auipc        sp, 839046
                  sltiu        ra, a6, 1508
                  slti         t5, a1, -1016
                  add          a7, t4, a2
                  or           s10, a7, zero
                  add          a3, s7, t2
                  srai         gp, t5, 13
                  slli         s10, s9, 28
                  sub          a2, s2, t2
                  xor          gp, t0, a7
                  and          a4, s8, a7
                  or           t2, tp, sp
                  slti         ra, t0, -893
                  sra          a5, a2, gp
                  ori          tp, s9, 1352
                  or           s3, a7, t1
                  slt          sp, s3, sp
                  sra          t6, a1, s5
                  and          t3, sp, a7
                  slt          s9, a0, s1
                  sll          s9, t6, s3
                  or           t0, s11, a2
                  or           s10, s7, s7
                  sltiu        t6, a5, 936
                  slli         s6, s6, 6
                  slt          zero, a4, t2
                  srl          ra, s8, t0
                  srl          a3, gp, a1
                  sltu         s9, t5, s9
                  sub          sp, t1, t5
                  xori         s3, s2, 701
                  slti         tp, t2, -30
                  srl          s8, t6, s7
                  andi         a5, t1, -1107
                  sra          s10, s1, t1
                  sub          s4, s6, s7
                  addi         t0, t4, 647
                  sll          a7, a1, a3
                  addi         s0, zero, -1509
                  or           zero, a7, s3
                  andi         t1, s3, -2020
                  srai         s6, zero, 24
                  slli         t4, a6, 8
                  sltu         a5, a0, a4
                  srl          tp, s8, s0
                  slt          ra, s9, tp
                  or           s3, s8, zero
                  or           a6, t5, a3
                  or           s10, a0, s0
                  add          a4, a5, s2
                  and          s3, s2, s0
                  slli         a6, t5, 25
                  srli         s6, s1, 12
                  sub          s5, gp, gp
                  andi         a2, t0, 261
                  xor          ra, a7, t0
                  sltu         ra, s9, s5
                  and          s8, t6, s7
                  srli         t6, t2, 8
                  slli         t3, s4, 18
                  srai         t4, t2, 28
                  andi         tp, s5, 189
                  nop
                  srl          t5, a2, s4
                  sub          sp, a3, s11
                  nop
                  sltu         zero, a0, a4
                  nop
                  sltu         tp, tp, t1
                  sub          a4, a4, s1
                  slti         tp, s4, 240
                  slli         t0, tp, 27
                  or           s3, s11, s1
                  and          a4, tp, ra
                  slt          ra, a3, a2
                  lui          a7, 564545
                  srl          t2, s2, s1
                  nop
                  slli         s4, t4, 25
                  add          s2, t4, s11
                  srai         s9, a6, 25
                  lui          s0, 581437
                  sltu         s9, s4, t1
                  slti         t5, a3, -822
                  nop
                  srai         s0, s4, 22
                  addi         s9, s1, 1043
                  srai         s6, s2, 9
                  xor          a3, t3, s0
                  ori          a4, s6, -226
                  and          t2, t0, s11
                  auipc        a3, 619251
                  lui          zero, 325069
                  ori          t6, a7, -800
                  slti         s2, zero, -340
                  add          a3, a7, a1
                  and          zero, t4, ra
                  or           t3, a3, t3
                  andi         t6, t5, 687
                  srli         a2, a2, 14
                  sltu         a1, s10, s11
                  or           ra, s9, s6
                  and          s8, gp, t3
                  srli         s8, s3, 24
                  sub          sp, s0, s5
                  add          s9, a1, s1
                  xor          s11, ra, a1
                  slti         a3, s6, -502
                  andi         s2, s11, 1946
                  slt          a2, gp, a5
                  sra          a2, s9, s4
                  srai         a2, s8, 25
                  xor          s11, s5, s3
                  ori          s2, s1, -8
                  srli         a5, gp, 16
                  sll          a6, t0, s7
                  sub          t3, s11, t5
                  sra          s4, a5, s0
                  srli         s9, s2, 26
                  add          s6, a0, tp
                  sub          ra, s0, t6
                  srli         s0, s7, 16
                  slti         a4, ra, 1951
                  andi         t3, a2, 474
                  lui          s5, 438031
                  slli         a3, ra, 12
                  xori         tp, a1, 911
                  add          s5, s5, s8
                  auipc        tp, 67199
                  nop
                  srai         s6, t3, 6
                  andi         s9, a5, 966
                  xori         t6, t4, -621
                  sub          s0, t2, s5
                  addi         ra, t0, -1064
                  xor          a2, s4, t2
                  addi         gp, t1, -1935
                  xor          t1, a0, s9
                  sub          t6, s7, s5
                  xor          s8, a5, a2
                  nop
                  slli         s11, a4, 28
                  sltu         tp, s9, s8
                  xor          t5, s4, s11
                  srai         s4, sp, 18
                  andi         s5, a6, -1623
                  sltiu        s2, s7, 944
                  ori          tp, s10, 1304
                  addi         s5, ra, -1909
                  add          s4, s1, s4
                  slti         t2, s8, -783
                  and          s4, ra, s6
                  xor          sp, a6, s0
                  slti         a5, a3, -1092
                  nop
                  slt          ra, sp, a0
                  sltiu        t0, s3, -618
                  srai         sp, zero, 7
                  sltiu        s6, s3, 950
                  nop
                  srl          tp, sp, t2
                  xori         s6, t6, 1022
                  andi         ra, s9, 626
                  nop
                  srai         s11, gp, 25
                  nop
                  slli         s8, a4, 22
                  sll          s0, s3, s1
                  srai         t0, s0, 6
                  srli         s10, t2, 13
                  sltu         s6, s4, t0
                  xor          a1, ra, s1
                  auipc        t0, 883425
                  slt          a1, t1, a1
                  auipc        a2, 748982
                  addi         t4, t6, 904
                  lui          t4, 107830
                  nop
                  sltu         t6, t2, sp
                  srl          s5, sp, tp
                  sra          s8, a1, s5
                  and          sp, ra, s10
                  srli         t4, sp, 11
                  srai         s3, a5, 10
                  addi         a7, s5, 1345
                  slt          a3, t4, a0
                  lui          s3, 572026
                  nop
                  ori          t3, s7, -667
                  lui          sp, 757033
                  slti         t1, t3, -93
                  addi         a6, a0, -301
                  auipc        a3, 379156
                  lui          zero, 879474
                  ori          s11, s10, 1757
                  slti         a2, t4, 612
                  srai         s3, s5, 17
                  sub          gp, s4, ra
                  slt          tp, a7, t0
                  sll          sp, a7, tp
                  sra          s8, t2, s9
                  addi         s10, s11, 1060
                  srli         a1, s0, 7
                  sub          gp, s11, s0
                  sltu         s5, a3, s2
                  lui          s4, 197447
                  srli         t0, a4, 26
                  sub          t6, s10, a6
                  andi         t0, s3, 704
                  srl          t5, a2, s1
                  sltu         s9, t6, a1
                  slt          a2, sp, a3
                  sltu         s6, s9, a2
                  lui          a1, 327358
                  slli         a3, s2, 0
                  ori          s4, t0, -1800
                  srli         s5, t6, 31
                  srli         s0, s0, 19
                  lui          a7, 1031992
                  auipc        gp, 178973
                  xor          a3, s10, s2
                  srli         a2, tp, 31
                  and          ra, ra, a0
                  sll          a1, s8, a7
                  sll          sp, s7, a4
                  add          s10, s6, sp
                  nop
                  srl          gp, s10, t1
                  andi         t3, s1, -952
                  andi         tp, a7, 898
                  or           s10, t3, t0
                  xor          s9, s1, ra
                  andi         a3, a4, -267
                  sra          sp, gp, t1
                  sltiu        s2, a0, 1257
                  auipc        a5, 15257
                  lui          t4, 904645
                  xori         t3, s0, 1043
                  slt          t6, s0, s1
                  srli         t0, a1, 6
                  srai         sp, a6, 23
                  sltu         a2, s6, s8
                  nop
                  slt          s10, t4, s3
                  sltiu        sp, t6, -333
                  srl          sp, a2, s3
                  srai         s8, tp, 17
                  sll          s4, a6, s3
                  or           t5, tp, t1
                  and          s0, a2, t5
                  ori          zero, s10, 354
                  auipc        a2, 142537
                  addi         zero, ra, 553
                  addi         t0, t5, -1304
                  andi         t3, s10, 426
                  sltu         s4, t1, s2
                  andi         s5, s1, -578
                  sub          s11, a3, tp
                  ori          t4, s0, 139
                  slt          t4, t3, s6
                  xor          s10, s11, t0
                  sra          a4, s6, ra
                  slli         tp, s5, 16
                  srli         t5, t1, 0
                  or           s10, s7, s5
                  sra          s4, s1, ra
                  slt          s9, t3, s1
                  srai         t5, t5, 14
                  slt          t5, s9, t3
                  add          s9, s4, t2
                  sltu         s4, t2, s1
                  srai         t5, s0, 16
                  lui          s10, 679703
                  srl          s6, a6, sp
                  ori          s11, t4, 345
                  auipc        gp, 808405
                  xori         s4, s1, 1300
                  sltiu        t3, a6, -332
                  or           sp, s1, t0
                  sll          t0, s2, s6
                  srai         s9, t5, 5
                  or           t0, a3, zero
                  auipc        sp, 847809
                  add          s5, s9, s7
                  ori          s9, t6, 1351
                  or           s4, a1, a7
                  sub          a1, a6, t3
                  ori          t3, tp, -1981
                  sll          s4, a4, a1
                  xori         s0, t0, 1643
                  slti         t3, s5, 1697
                  xori         a6, a1, -1982
                  srli         t0, s0, 16
                  auipc        tp, 1035971
                  add          gp, tp, s1
                  nop
                  and          sp, zero, s0
                  and          t3, s10, t4
                  srl          s4, a4, ra
                  or           s9, s4, t6
                  and          tp, t3, t6
                  slli         s0, s6, 7
                  or           tp, tp, a0
                  slli         t0, zero, 14
                  srli         a1, a2, 2
                  srl          s8, zero, s2
                  srl          gp, tp, s8
                  ori          tp, tp, -789
                  srai         tp, s1, 7
                  add          a2, s0, sp
                  auipc        a7, 372645
                  ori          ra, s4, 869
                  nop
                  sub          s2, s2, gp
                  auipc        t0, 573596
                  addi         a7, s1, -403
                  add          a7, zero, a4
                  sll          a1, t3, a3
                  add          s8, t3, t5
                  nop
                  sll          s6, s4, t0
                  sltiu        t2, s5, 1826
                  slt          a6, a4, s10
                  and          a4, a4, zero
                  slti         a3, zero, -2019
                  andi         a1, tp, -1411
                  add          a6, s2, ra
                  lui          a3, 369576
                  srai         s8, t1, 26
                  sra          a5, zero, ra
                  ori          a6, a1, -254
                  add          s11, tp, t0
                  slti         s3, tp, -1471
                  srl          a4, gp, s9
                  lui          t4, 770768
                  sra          a5, a0, a7
                  srai         ra, a0, 19
                  xor          s8, s3, t4
                  srai         t5, a2, 11
                  and          s10, a7, t5
                  nop
                  and          a6, t1, s0
                  slt          s5, sp, a3
                  srl          t4, t0, s5
                  ori          s10, a2, -581
                  or           s0, s8, s3
                  srai         ra, a3, 9
                  slt          ra, s4, s4
                  slli         ra, sp, 27
                  slti         t6, s6, 1592
                  lui          a1, 573139
                  or           a2, t0, s10
                  addi         s0, a3, -1500
                  nop
                  srl          s6, s8, ra
                  srai         s6, s0, 19
                  and          s5, a5, t4
                  srli         t2, t6, 14
                  nop
                  sll          s2, a6, s7
                  addi         s3, t0, -949
                  nop
                  sub          ra, s11, t0
                  sll          s3, t0, t0
                  xor          t5, a6, t1
                  addi         s10, s6, -1246
                  sub          t4, s5, s10
                  sub          s6, s4, s9
                  nop
                  andi         s10, sp, -1673
                  sra          a6, t3, t1
                  srl          a3, s0, s7
                  sub          s5, t1, a0
                  srai         s6, s5, 6
                  ori          a3, s1, 490
                  srl          sp, a3, s4
                  auipc        a4, 762672
                  add          s8, s5, t2
                  sltiu        a3, a7, -1262
                  nop
                  sub          t0, t4, s8
                  sra          s2, s6, s7
                  slt          a2, s5, sp
                  srai         s4, t3, 15
                  add          zero, t2, s4
                  add          ra, t5, s11
                  or           s3, a3, t6
                  slti         s4, s1, -1355
                  and          t1, t2, a0
                  sub          s6, s11, t5
                  slti         t0, t2, 551
                  nop
                  addi         t4, s7, 1841
                  auipc        s2, 68201
                  slt          s8, sp, a0
                  addi         sp, gp, -20
                  srl          zero, s3, s1
                  nop
                  andi         s11, a1, 1830
                  ori          a3, s1, -948
                  slt          zero, s9, s1
                  andi         a4, s7, -632
                  slli         s0, sp, 6
                  andi         gp, s5, -767
                  andi         s11, t0, -373
                  sltu         zero, t6, a0
                  auipc        s8, 155205
                  andi         t5, sp, -173
                  sub          s10, t0, s9
                  addi         s3, a6, -1930
                  addi         a4, zero, -1302
                  sll          ra, a3, t1
                  xori         zero, t1, -1450
                  sub          t3, s10, s2
                  lui          t4, 169701
                  addi         t4, a0, 801
                  auipc        s6, 855151
                  srli         s8, gp, 20
                  sltu         s4, s1, a5
                  slti         t6, t4, -1346
                  srli         s4, s11, 3
                  andi         t1, s1, -187
                  nop
                  sll          sp, s4, a7
                  andi         a6, ra, -1472
                  lui          tp, 1009150
                  slli         a4, sp, 10
                  srl          s8, a1, s6
                  sra          s11, s0, sp
                  lui          a7, 484621
                  sltiu        s6, t4, -326
                  nop
                  sltu         t3, t2, a4
                  addi         a4, zero, 169
                  srl          a6, s10, a6
                  slti         a7, t2, 1920
                  srli         t4, a5, 15
                  lui          s6, 1022668
                  xor          a4, sp, s6
                  add          s8, a7, s11
                  sll          s2, s1, sp
                  srl          a7, a1, ra
                  addi         s3, a0, 1906
                  srl          t6, t5, a0
                  xori         s3, a1, -1219
                  sra          t5, s2, s1
                  sub          sp, t1, s5
                  sltu         a6, s10, t1
                  auipc        t4, 108273
                  sltu         t2, a2, s3
                  add          gp, t5, a4
                  or           t5, s3, gp
                  sra          ra, a1, ra
                  sll          a4, s3, s7
                  auipc        s10, 117808
                  ori          s5, t5, 1202
                  and          s0, t0, a7
                  srai         s2, t1, 18
                  ori          t4, s0, -20
                  slli         s0, a1, 17
                  ori          zero, a3, -1345
                  slli         s10, zero, 28
                  srli         s10, t1, 17
                  lui          s8, 244543
                  srli         t1, t6, 25
                  addi         ra, s6, 1615
                  slli         t3, gp, 25
                  nop
                  or           t4, a6, ra
                  lui          t0, 15293
                  add          s6, s9, t0
                  srai         s6, s2, 4
                  add          t5, s5, gp
                  sltu         s10, a2, t3
                  add          s10, sp, a3
                  slli         s0, s10, 17
                  auipc        s0, 118369
                  addi         sp, s7, -1721
                  and          a1, t3, s9
                  nop
                  sltu         s0, s5, ra
                  lui          a7, 718153
                  sltiu        a6, a6, 821
                  slti         t1, a6, 479
                  or           zero, tp, a4
                  nop
                  and          zero, ra, t5
                  sub          s5, t1, a0
                  sltiu        a1, s11, 1672
                  xor          s6, t2, t0
                  add          a5, s1, t3
                  slt          a1, s2, s0
                  slli         s2, gp, 21
                  addi         s6, a4, 757
                  sltu         s11, s3, s10
                  sltiu        s0, s8, -84
                  ori          a2, a5, -1918
                  sltiu        t0, s9, -187
                  sll          t4, t0, a3
                  lui          a6, 375364
                  sra          a1, s7, ra
                  sub          a1, t3, s7
                  ori          gp, s7, -1425
                  sll          t6, tp, s7
                  sll          t1, a7, zero
                  slli         ra, a1, 24
                  srl          a4, ra, a1
                  sra          a2, zero, t2
                  addi         s0, a7, -498
                  sltu         s8, a2, s4
                  and          t0, t2, s9
                  slti         gp, s6, 462
                  andi         t5, t2, -466
                  xor          gp, s3, a7
                  andi         zero, t6, -1270
                  lui          s6, 187322
                  sltiu        s6, a0, -1609
                  ori          tp, a1, -1514
                  srl          t3, s11, ra
                  lui          gp, 695802
                  addi         a2, a1, 580
                  addi         t6, t0, 659
                  xori         s6, a3, 1659
                  srl          a3, gp, a1
                  addi         t3, t4, -103
                  slt          s5, a0, s6
                  slli         s0, t4, 3
                  slli         s0, s6, 10
                  srli         s9, t1, 20
                  sub          s4, a3, sp
                  sll          s6, a5, t3
                  xori         t3, a3, -779
                  auipc        s9, 792638
                  add          s2, a6, t1
                  add          s0, t2, a4
                  sll          t4, s4, t5
                  or           s8, s10, s7
                  sub          t3, t3, t5
                  or           s3, t6, t4
                  srl          t1, a4, s2
                  ori          t5, t2, 601
                  or           gp, sp, a7
                  auipc        zero, 215690
                  sra          s8, s7, s4
                  auipc        a6, 575971
                  slt          a2, s1, t2
                  slli         gp, a4, 27
                  sltu         ra, t5, a0
                  or           a7, s2, tp
                  slti         t1, s10, -1431
                  addi         t2, s9, -52
                  ori          s2, t2, -884
                  slt          s0, ra, a0
                  or           gp, t5, tp
                  srai         sp, s2, 2
                  andi         t2, t6, 1481
                  andi         a1, ra, -1699
                  nop
                  auipc        s0, 336795
                  ori          s6, t3, -1169
                  slli         a2, tp, 29
                  xori         a7, t5, -2044
                  addi         a1, t0, -1475
                  srl          s8, t2, tp
                  sltu         s10, a1, t4
                  slti         gp, a0, 1469
                  auipc        a2, 613373
                  andi         s0, t2, 1171
                  srli         s10, s10, 12
                  xor          s4, a1, t6
                  add          t4, s8, a6
                  andi         s6, tp, 747
                  sltu         t5, t3, s7
                  sltiu        a3, ra, -1479
                  nop
                  xori         a7, gp, -1971
                  nop
                  sltiu        ra, t0, 61
                  srai         t0, t5, 8
                  sub          s9, t5, s5
                  addi         t3, a5, 1320
                  sll          zero, a4, t4
                  lui          s5, 283284
                  sub          t0, a6, a4
                  or           a2, t1, t0
                  srl          t2, s7, t6
                  srli         a5, s6, 12
                  add          s0, a1, gp
                  sra          s5, s3, s7
                  addi         t2, s3, -238
                  sub          a2, a3, s5
                  sub          s6, t5, s8
                  auipc        a5, 991094
                  auipc        t1, 243149
                  srli         ra, t0, 26
                  add          s10, s2, s3
                  lui          s5, 870742
                  ori          s5, t2, -374
                  and          t0, t2, t6
                  nop
                  add          t1, s0, t6
                  and          a1, tp, a6
                  sltiu        s10, a4, 1349
                  andi         t2, a6, -526
                  xori         t6, gp, -535
                  lui          t3, 310670
                  xor          s9, s11, a0
                  addi         a5, s11, 1424
                  srl          s11, a7, ra
                  lui          t4, 717479
                  xor          tp, gp, gp
                  and          s6, s1, s0
                  srli         s9, s4, 26
                  sub          gp, ra, a1
                  slli         ra, s4, 8
                  and          a4, s4, s0
                  andi         s0, zero, -870
                  addi         s5, tp, 1956
                  slli         gp, t3, 8
                  or           a2, ra, a5
                  srl          a5, s1, t3
                  xor          s2, sp, sp
                  slt          ra, t0, s4
                  andi         s2, s8, 1420
                  sltu         a2, a5, t6
                  or           a1, s4, s9
                  sll          s6, a5, ra
                  andi         sp, gp, 417
                  sltiu        ra, a1, 1624
                  sll          t5, s3, s7
                  xori         s6, s1, -1728
                  addi         t1, zero, 1175
                  ori          s0, t4, 1477
                  slt          s2, s0, sp
                  lui          t6, 1018824
                  add          s10, t2, a1
                  sll          s0, a3, gp
                  slti         s11, s10, 1203
                  sltiu        a5, a1, 79
                  xor          a4, a0, t1
                  xori         ra, zero, 1220
                  xori         a1, s9, -272
                  nop
                  slt          s11, s2, s3
                  slti         s4, s5, -1084
                  add          s5, t5, s4
                  lui          t0, 995163
                  lui          t3, 506437
                  slli         a2, ra, 20
                  addi         s11, s4, -1858
                  sll          a5, a0, s1
                  ori          s2, t2, 284
                  slli         t4, t6, 8
                  srli         a1, t1, 15
                  and          a7, t3, tp
                  and          s9, t2, a5
                  sub          s2, s6, t1
                  or           t0, s3, ra
                  and          a5, tp, s1
                  slli         s10, a0, 5
                  lui          gp, 963569
                  ori          s2, s11, 1588
                  slli         a5, t2, 26
                  sltiu        s5, s9, -971
                  ori          t5, s2, 1479
                  slti         a4, tp, 1181
                  srai         s9, a1, 29
                  srl          s3, t4, a2
                  auipc        s4, 370
                  sltiu        a7, s2, 1387
                  sltiu        a4, s7, 1365
                  add          a3, gp, gp
                  slli         a2, t4, 29
                  xori         a4, t5, 28
                  xori         s4, s9, -40
                  xori         t1, sp, -1617
                  andi         tp, t5, -601
                  andi         zero, t5, -1168
                  srai         gp, s8, 11
                  sltu         s8, zero, s6
                  sra          gp, s7, t3
                  sll          tp, t0, s2
                  andi         a3, a4, -956
                  add          t1, s10, t1
                  sra          t5, a7, s3
                  sra          s9, a5, s3
                  srli         s0, t0, 14
                  ori          s9, a7, -702
                  slt          t6, s2, zero
                  sltu         t2, t0, a6
                  ori          s2, s11, 147
                  nop
                  sra          ra, t3, t3
                  add          s9, t3, sp
                  nop
                  addi         t1, tp, -826
                  xor          s3, t3, s9
                  xori         s3, a6, -1911
                  ori          t6, t3, -1209
                  or           a5, s6, ra
                  ori          a2, a2, -425
                  slti         s8, zero, 242
                  xori         s0, s2, -1104
                  sll          a7, s7, s4
                  addi         sp, t3, 684
                  or           sp, s0, s5
                  xor          s8, a3, s0
                  slti         ra, t1, -479
                  sub          tp, s9, a0
                  auipc        zero, 211626
                  xor          t4, t1, t0
                  srai         a5, s3, 17
                  slli         sp, a0, 16
                  addi         t0, a3, 156
                  sltiu        a6, t6, 589
                  srl          gp, s3, a1
                  sub          t6, a5, a7
                  auipc        s10, 210030
                  auipc        tp, 597210
                  nop
                  srli         t2, s1, 29
                  sra          gp, a0, s0
                  slti         a6, s10, -1967
                  andi         s11, t0, 1996
                  addi         t5, t4, -23
                  slti         a4, a0, -907
                  srli         t0, s6, 21
                  auipc        t1, 500003
                  add          s2, sp, t1
                  slt          s6, a1, ra
                  sltu         t2, s5, a1
                  and          s11, s2, a6
                  xori         t3, a4, 1279
                  slti         t5, a3, 892
                  srai         a5, gp, 0
                  srli         a2, t0, 14
                  lui          t2, 130567
                  andi         a1, s0, -1452
                  srai         t5, t3, 6
                  srai         t2, s5, 7
                  sra          s3, t4, s5
                  lui          t3, 89560
                  and          a7, s3, s8
                  sltiu        s8, s10, -91
                  nop
                  xor          s9, zero, s7
                  sll          t6, t3, s2
                  sra          t2, a6, s6
                  srai         a1, s5, 20
                  add          s8, s11, s11
                  add          a4, a0, gp
                  add          s3, zero, a2
                  auipc        tp, 724977
                  sltiu        s5, s6, 1638
                  andi         s10, sp, -955
                  srai         gp, t1, 23
                  slti         t0, t6, -108
                  slt          s8, s1, s8
                  addi         s5, a3, -1822
                  srai         a3, s11, 17
                  sub          sp, s10, s9
                  srl          gp, s10, s5
                  sll          t3, a5, s10
                  slti         t5, t6, -1951
                  ori          t4, a0, -97
                  or           t3, a0, s2
                  add          a4, sp, t2
                  sra          tp, s6, s9
                  sll          s3, t5, t5
                  srai         s10, s3, 18
                  xor          s9, s8, a5
                  add          s9, t1, s4
                  slti         s11, s1, 188
                  ori          s3, s0, -1607
                  sll          s3, s6, zero
                  xor          t4, s6, s8
                  auipc        s5, 854762
                  slti         t5, s1, -1265
                  andi         a7, s1, 1455
                  sltiu        tp, a4, -55
                  sltiu        s5, a4, 1468
                  sra          t5, a3, s1
                  xori         s3, zero, 1768
                  slli         s5, s4, 13
                  slt          a2, zero, s10
                  addi         t6, s5, -780
                  sll          s6, t1, a3
                  srli         t4, ra, 5
                  srl          s0, s6, s10
                  xori         t4, t2, 683
                  xori         zero, a7, -157
                  nop
                  srai         sp, s1, 2
                  ori          s11, t4, 1256
                  add          ra, s4, s5
                  slli         s6, s11, 8
                  xori         t3, t3, -1421
                  auipc        a4, 360453
                  srai         s4, t6, 11
                  add          s5, t2, s4
                  xori         s11, a3, 862
                  add          zero, s0, s8
                  add          a1, s9, a3
                  xori         gp, ra, 1837
                  slti         gp, a2, -1874
                  lui          a5, 840778
                  slt          s6, s6, s11
                  auipc        t0, 138975
                  slt          t0, s6, tp
                  addi         a5, a2, -1855
                  xori         s2, t1, 1480
                  xori         s11, a1, -674
                  ori          tp, s6, -331
                  sra          tp, tp, t2
                  addi         sp, s5, 1418
                  slli         a4, s3, 23
                  sub          s5, s3, ra
                  slt          ra, a2, t5
                  ori          zero, zero, 578
                  sltiu        a7, s7, -964
                  srai         t4, s4, 4
                  addi         a3, s1, 1005
                  slli         tp, sp, 20
                  auipc        gp, 732832
                  sub          t1, s8, t1
                  srai         t5, s10, 30
                  ori          t4, gp, 429
                  xori         a2, a5, -2020
                  and          a7, gp, s6
                  or           t3, s0, s10
                  sll          s8, s4, t3
                  addi         a6, s6, 1530
                  sltu         s9, a6, a4
                  lui          s8, 982470
                  or           a2, s6, s0
                  srli         t4, s9, 9
                  sra          a3, tp, a5
                  sub          s2, t4, a1
                  ori          ra, t1, 340
                  and          t3, s5, s10
                  auipc        a2, 788456
                  lui          t2, 1002815
                  srli         a6, t3, 2
                  add          zero, t2, t0
                  srai         t5, gp, 7
                  lui          s5, 888557
                  nop
                  andi         a5, t3, 166
                  sll          s5, a0, s3
                  ori          t4, s6, -1093
                  andi         s9, t6, -1119
                  sub          a6, s2, t1
                  sll          zero, a6, s10
                  or           ra, t2, a2
                  sll          s11, t3, ra
                  lui          a2, 1022554
                  addi         t3, zero, 1063
                  auipc        s9, 37256
                  slli         zero, s2, 1
                  nop
                  xor          s3, a0, t3
                  sra          s8, s10, s4
                  slt          t2, s0, s2
                  sub          s9, a6, s11
                  slt          t2, ra, t4
                  sltiu        sp, s4, 58
                  nop
                  and          a7, s4, s2
                  xor          t4, s6, a0
                  sub          a2, s11, a3
                  sub          a4, s8, a5
                  addi         t1, a7, -1139
                  add          a4, s10, a4
                  or           s2, s11, zero
                  auipc        s9, 573198
                  add          a3, tp, t0
                  auipc        t1, 15673
                  addi         a4, s11, -1206
                  sltiu        a1, t2, -618
                  xori         s10, t4, 653
                  add          tp, t6, s10
                  srli         s11, s6, 30
                  sltiu        a4, a6, -1471
                  nop
                  andi         t4, a3, -1521
                  srai         s0, zero, 25
                  xor          t3, s2, s9
                  sll          ra, s9, gp
                  andi         gp, a2, 451
                  ori          t2, t0, 1618
                  or           t1, s6, a5
                  ori          s6, tp, -341
                  sra          t3, s6, s10
                  sra          ra, s3, tp
                  xor          a5, t6, t5
                  srli         sp, ra, 11
                  andi         s8, t4, -2003
                  nop
                  sra          t5, a4, a4
                  slli         a4, a2, 25
                  xori         s11, a6, -1681
                  auipc        t4, 882560
                  addi         a7, a4, -87
                  ori          s5, s5, -147
                  xori         a4, s10, -1013
                  lui          t6, 329860
                  sltu         s2, a0, gp
                  sltu         a6, a3, s7
                  andi         t4, tp, -1862
                  nop
                  sra          a4, a5, a4
                  sra          s4, s1, s11
                  or           a6, a4, s7
                  addi         s4, a1, -1267
                  andi         s3, t1, 566
                  slt          a1, a1, s3
                  and          sp, s9, a6
                  or           gp, a6, s4
                  sltu         s8, s4, s5
                  srli         s11, t6, 28
                  nop
                  nop
                  xor          s4, s3, t5
                  sra          a1, s1, t2
                  slli         s0, a2, 26
                  sltiu        t0, s9, -380
                  srl          s3, s5, a4
                  sll          s6, gp, a2
                  and          t0, t5, s6
                  srl          zero, a2, tp
                  sltu         tp, t2, t0
                  lui          ra, 1045990
                  srli         s9, gp, 16
                  sub          s11, a2, s8
                  sra          s6, a3, s6
                  srai         s2, gp, 21
                  sra          s5, a4, ra
                  xor          s4, s4, a2
                  lui          a6, 621889
                  andi         a3, s3, 739
                  sll          s9, a2, a4
                  nop
                  sltiu        t3, s11, -57
                  srai         s0, a2, 19
                  srli         t5, t5, 6
                  slt          t4, a4, ra
                  add          s0, a0, s3
                  ori          tp, a5, 176
                  xori         ra, zero, -386
                  sra          a1, a2, a3
                  and          s9, a7, s7
                  xor          a4, s8, zero
                  nop
                  sra          s6, tp, t4
                  lui          zero, 179965
                  srai         s0, a5, 24
                  lui          s4, 942846
                  xor          s8, t2, t4
                  sub          t5, s9, s0
                  srli         t3, sp, 21
                  slli         gp, a6, 22
                  sub          ra, t1, s2
                  srai         a1, s1, 19
                  nop
                  sub          s9, t5, gp
                  slti         a5, zero, 1652
                  xor          s10, tp, a3
                  addi         ra, gp, 1677
                  and          tp, a5, s3
                  lui          sp, 604256
                  and          t5, s10, a2
                  slti         a3, s2, 623
                  xor          a2, a1, s4
                  srai         s11, a2, 16
                  ori          s3, a2, -1322
                  andi         s8, ra, 921
                  xori         t3, s2, -1186
                  srai         t0, s4, 28
                  auipc        t4, 690206
                  srai         s6, a3, 4
                  auipc        s2, 618544
                  addi         s5, t5, -423
                  sub          s8, a3, s4
                  add          tp, a3, s8
                  xori         t4, tp, 91
                  slli         s3, a1, 7
                  nop
                  or           a3, t4, s11
                  and          t6, s10, a1
                  srl          a2, sp, a7
                  nop
                  xor          t2, s1, s4
                  srli         gp, a5, 20
                  slti         s0, s5, 1105
                  nop
                  xor          s11, t6, s4
                  addi         s6, t6, -1514
                  slti         sp, tp, -229
                  addi         t6, a1, 1919
                  srl          a1, s7, zero
                  ori          a2, a4, 1092
                  sltu         s10, ra, sp
                  nop
                  sll          t1, a4, t4
                  and          t4, tp, t3
                  ori          t1, s10, -1035
                  andi         a7, s6, 48
                  srli         s3, t6, 25
                  or           a2, t6, s1
                  lui          zero, 518171
                  xor          t4, s8, a3
                  add          sp, ra, a3
                  slti         gp, a4, 149
                  srli         s9, a3, 13
                  lui          s2, 903762
                  sub          t2, s6, s5
                  slli         zero, gp, 21
                  addi         s9, s7, 785
                  add          s0, s11, s6
                  sltiu        a6, tp, -1081
                  auipc        t4, 872248
                  lui          a1, 435442
                  xor          s4, t5, tp
                  ori          s2, a5, -198
                  and          s10, t1, s10
                  xor          a5, s6, a4
                  sub          a3, s6, tp
                  andi         s5, s0, -1949
                  add          t5, a5, zero
                  srl          a2, s1, a1
                  slt          t5, s1, sp
                  sltu         a1, a0, gp
                  xor          s6, t1, t0
                  auipc        a5, 339604
                  sltiu        t6, s2, 1552
                  sra          t1, a3, tp
                  andi         s3, t0, -259
                  srl          s0, t1, a6
                  add          a3, s5, a3
                  slt          s10, s4, s5
                  srli         s8, s4, 22
                  auipc        sp, 281492
                  srai         s3, s9, 27
                  add          t0, a6, zero
                  xori         s2, sp, 1932
                  sub          t2, s9, t0
                  xor          s4, a3, s1
                  add          sp, s4, s0
                  ori          a2, s6, -39
                  sra          tp, s3, s11
                  ori          a4, a1, -1786
                  sll          t4, s0, s1
                  addi         a6, s1, -953
                  sltiu        a1, s9, -808
                  addi         t3, ra, -1228
                  or           t6, s11, a1
                  andi         gp, s8, -1583
                  sub          ra, s1, zero
                  addi         s6, s7, -565
                  slli         s3, a0, 4
                  andi         a1, s9, -463
                  add          a1, s8, t4
                  ori          t3, a2, 1127
                  xor          t2, t5, a7
                  xori         t2, a6, -1493
                  add          t1, a2, s7
                  ori          t0, ra, -749
                  sll          s5, tp, s2
                  and          a2, a3, a6
                  xor          s3, ra, s6
                  nop
                  xori         gp, ra, -598
                  addi         t1, t4, 1684
                  or           t5, gp, s6
                  srli         s3, ra, 23
                  srai         s9, s10, 26
                  add          a4, s9, s4
                  slt          t3, tp, s9
                  ori          s3, a1, 1113
                  srl          s0, a2, s3
                  add          s4, t0, a1
                  sltiu        a7, s9, -1908
                  andi         gp, t0, -1499
                  srai         a3, sp, 19
                  sll          t0, a3, sp
                  srli         s8, t1, 25
                  sub          sp, a7, s5
                  slli         s4, a5, 17
                  slli         sp, t5, 27
                  sltu         s11, s8, s8
                  sll          zero, a4, s7
                  ori          s4, gp, 1753
                  nop
                  slti         a3, s2, -562
                  sltu         s5, a5, s7
                  and          s10, t3, s2
                  nop
                  sltiu        s10, s7, 1552
                  srai         t0, s1, 16
                  srai         sp, gp, 21
                  slti         sp, tp, -1224
                  and          t6, gp, a6
                  auipc        s9, 201748
                  auipc        s5, 450403
                  auipc        a2, 996429
                  slt          a7, a5, a4
                  xori         gp, a5, -809
                  srai         a7, a0, 15
                  xori         s9, t3, 2046
                  lui          s5, 142055
                  andi         t4, s10, -314
                  andi         zero, s11, -1227
                  slli         s2, t2, 28
                  addi         a1, a0, -478
                  sltu         a6, s0, s8
                  slt          gp, t3, t2
                  or           gp, s5, a7
                  sll          s10, t6, t5
                  sll          t4, s9, s6
                  srli         s6, t0, 30
                  addi         s2, s0, -599
                  and          s3, t1, t4
                  lui          t3, 409796
                  sltiu        t3, s7, -1402
                  sra          a4, tp, a7
                  add          a3, t5, gp
                  sub          tp, s5, a2
                  addi         t0, zero, 316
                  srl          t1, t5, sp
                  or           t4, a7, a5
                  srl          gp, a3, a3
                  srai         t0, s4, 29
                  sltiu        a6, sp, 1231
                  slli         t5, a2, 26
                  addi         s4, s10, 320
                  sll          t0, tp, t4
                  srli         s4, t3, 1
                  addi         a3, t1, -1895
                  srli         a4, a2, 2
                  slt          s8, t6, t4
                  srai         s4, s7, 21
                  andi         s8, s6, -1986
                  sll          s6, s8, t5
                  sra          ra, a4, a5
                  sll          a7, a6, t0
                  add          a7, t5, gp
                  add          s4, t2, t6
                  auipc        a1, 562810
                  srai         a3, s1, 29
                  or           t5, a3, ra
                  sltu         t4, t3, gp
                  slt          t2, sp, a4
                  sub          s8, gp, a7
                  sll          sp, t0, s7
                  sra          a3, t3, ra
                  nop
                  sub          s0, s6, a6
                  xori         s5, t5, -574
                  srl          ra, s9, t2
                  sltu         ra, a7, s9
                  srli         s4, s2, 9
                  xor          a3, zero, s11
                  sll          s5, s3, s11
                  sub          s6, t4, s0
                  sub          s0, s6, t3
                  sltu         t3, s8, s11
                  srli         a3, s10, 31
                  ori          s11, a0, 1447
                  xori         t5, s8, -1861
                  sub          s6, a3, tp
                  sra          a4, s11, t4
                  lui          s9, 12538
                  and          a4, a7, a3
                  sltiu        t1, t3, -1589
                  sltu         t1, t0, a1
                  sltu         a2, s7, s10
                  ori          a7, s1, 346
                  srl          t3, s11, s9
                  and          s3, s3, s1
                  sltiu        a1, s10, 1565
                  or           t1, s7, s6
                  xor          gp, s6, s9
                  auipc        gp, 762677
                  addi         a7, s6, 1878
                  srli         s10, a2, 21
                  lui          a2, 378159
                  ori          t6, t6, -1400
                  ori          t4, s11, -1492
                  nop
                  slt          t0, t2, s10
                  srai         a6, s7, 9
                  xor          sp, a6, t1
                  andi         s3, s10, -834
                  lui          s4, 573020
                  srli         t4, a6, 9
                  andi         s10, t1, 536
                  sra          a7, s3, a3
                  slli         a4, sp, 21
                  sra          s4, s8, s7
                  xori         a1, t1, -1389
                  sub          t2, s10, s9
                  slti         s4, s4, -761
                  xori         a2, ra, 283
                  and          a1, a1, s7
                  auipc        s11, 49286
                  lui          s11, 347958
                  auipc        a2, 1013327
                  slt          t0, a5, a2
                  sltiu        a2, t0, 978
                  auipc        s9, 681104
                  slli         s4, s4, 16
                  add          a4, s1, s8
                  slli         a2, a5, 26
                  andi         s6, a3, -289
                  nop
                  sub          s5, t4, a1
                  xori         s4, t1, -776
                  sltiu        s10, tp, 271
                  slli         t3, ra, 14
                  addi         tp, gp, -1625
                  sra          tp, a6, a5
                  sltiu        s3, sp, -182
                  andi         tp, s5, 513
                  addi         tp, tp, -759
                  ori          s4, t5, -1056
                  srai         a4, a7, 21
                  or           s4, a3, t2
                  sra          s3, a7, s1
                  auipc        a7, 137109
                  sll          s10, s1, a4
                  auipc        s5, 385116
                  xor          zero, s11, zero
                  srl          a3, a7, t6
                  slti         t6, a5, 193
                  sra          t0, s5, s0
                  or           a1, a1, s3
                  lui          s8, 265803
                  srl          t1, a4, t4
                  sra          a5, s10, t2
                  slli         s9, a7, 29
                  and          s0, s9, s3
                  addi         s4, s2, -591
                  and          s3, s3, s7
                  xori         a2, s10, 1319
                  slt          a5, ra, s8
                  srl          a6, s0, a3
                  add          t5, t6, s4
                  sll          s0, s0, tp
                  xor          a1, t0, a4
                  srai         t3, t3, 20
                  and          zero, s5, t0
                  sll          s9, t4, a7
                  sub          s2, s10, s2
                  xor          s4, s6, a4
                  and          t2, sp, t4
                  addi         s2, s10, -897
                  nop
                  or           s2, t4, a7
                  sltiu        s11, a7, 368
                  sll          ra, ra, s7
                  sltu         t5, s2, a7
                  nop
                  slti         a2, a0, 311
                  sub          s11, t3, zero
                  srai         s4, t0, 12
                  nop
                  ori          s3, t6, -471
                  xor          t3, sp, zero
                  srai         a2, t5, 4
                  add          s9, s10, s11
                  addi         t2, t1, 1964
                  sltu         s9, a0, zero
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           s11, 0xffffffff
                  li           s10, 0x80000000
                  li           t3, 0x80000000
                  li           sp, 0x80000000
                  li           s8, 0xb3702ac7
                  li           t6, 0xffffffff
                  li           a1, 0xffffffff
                  li           t2, 0xa23a2b07
                  li           s3, 0x80000000
                  nop
                  lui          t3, 920434
                  addi         s8, t6, 1473
                  sub          ra, ra, s3
                  sub          t3, s3, s11
                  add          s10, s3, t6
                  sub          t2, s11, t2
                  nop
                  addi         s11, ra, -850
                  add          sp, s8, t6
                  add          s3, sp, s3
                  addi         a1, s10, 316
                  nop
                  lui          t6, 412249
                  add          a1, a1, s8
                  lui          s3, 921233
                  add          ra, ra, a1
                  addi         t3, s10, -733
                  sub          s3, ra, s3
                  nop
                  addi         t3, a1, 1901
                  auipc        ra, 90976
                  addi         t6, t3, -926
                  sub          s10, s3, s10
                  sub          s10, a1, s8
                  sub          t3, t6, t3 #end riscv_int_numeric_corner_stream_17
                  xori         ra, a1, 373
                  srli         a2, gp, 16
                  sltu         a5, gp, a4
                  addi         s0, s4, -155
                  ori          t0, a1, 1051
                  srai         s5, s3, 26
                  srai         sp, t1, 30
                  andi         t3, s0, -896
                  sll          a5, s6, gp
                  sra          s9, a6, a4
                  srli         gp, sp, 24
                  sra          a2, ra, t1
                  sltiu        sp, s3, -923
                  sll          s3, s4, s3
                  srl          s6, a3, s11
                  slt          s9, a1, a1
                  xor          s4, s9, a5
                  slti         zero, ra, 2015
                  auipc        t3, 997027
                  slt          sp, s6, a4
                  auipc        t3, 829018
                  slli         s4, s9, 15
                  auipc        s10, 729615
                  slt          gp, s9, t6
                  xor          s2, t3, s1
                  or           a6, a4, a5
                  slli         s2, sp, 11
                  slti         a3, a7, -551
                  sltu         s5, tp, t6
                  xor          s6, a4, s2
                  sltu         a3, s7, t0
                  slli         t5, a3, 24
                  nop
                  ori          t1, s11, -427
                  xori         t4, a0, 1013
                  lui          gp, 431884
                  srli         s9, a7, 3
                  srli         t1, tp, 1
                  srl          s4, t0, s11
                  srai         s6, t4, 25
                  sub          s10, t6, a0
                  sub          tp, s10, a7
                  lui          s6, 785532
                  xor          s11, s11, s2
                  slli         t0, tp, 22
                  srl          s4, t4, s10
                  srli         s4, zero, 23
                  sra          a3, s5, s7
                  lui          s8, 287001
                  sltu         t4, tp, a1
                  sll          s0, t5, gp
                  andi         s11, s2, 1242
                  sll          t1, a5, a3
                  slli         a6, s6, 13
                  nop
                  slt          s11, s9, s4
                  sll          s0, a1, a0
                  xor          a5, a5, a4
                  srl          s6, s8, a1
                  xori         t1, s5, -1413
                  or           ra, s9, a4
                  sra          a5, tp, a4
                  auipc        ra, 821475
                  slt          t2, s4, s2
                  sra          s9, s11, s5
                  andi         s6, t1, 1418
                  sltiu        s4, t5, -1968
                  addi         zero, a3, 880
                  andi         s4, t0, 1282
                  slt          a4, a2, t3
                  and          a7, sp, a3
                  nop
                  slti         sp, a3, 239
                  ori          a3, a5, -1009
                  nop
                  slti         zero, t5, -129
                  sra          s0, s4, s10
                  srli         t0, a3, 17
                  xor          tp, s1, a7
                  slt          ra, ra, t3
                  lui          a4, 557574
                  slti         a6, t1, 1418
                  add          ra, sp, s5
                  xori         s8, s6, -768
                  sll          a7, a0, t1
                  sll          s2, s8, gp
                  srli         a1, a1, 31
                  lui          a7, 360815
                  lui          a4, 214313
                  slli         s8, zero, 11
                  add          gp, zero, s0
                  or           s2, a2, s4
                  or           s6, t0, t5
                  sltu         t2, s3, tp
                  srl          s11, t1, s11
                  srl          s5, a0, t5
                  addi         a1, s2, 1268
                  slti         sp, s10, 570
                  and          a4, a1, t1
                  sra          s3, t3, ra
                  nop
                  slli         s4, s5, 24
                  srai         s8, a4, 15
                  slti         ra, s9, -1825
                  addi         s0, s3, -441
                  or           s11, s5, s1
                  slli         s4, sp, 6
                  sra          s5, s3, s8
                  ori          t3, s8, 1117
                  slli         ra, a2, 31
                  nop
                  or           s4, s2, s0
                  slli         a7, s5, 16
                  slti         zero, gp, -1119
                  sub          s8, a6, s0
                  slli         a1, t0, 5
                  nop
                  and          t2, s11, gp
                  ori          s11, a0, 13
                  sub          s9, t1, t0
                  andi         s9, s9, 959
                  xor          t2, zero, s2
                  addi         t1, s10, -1217
                  srli         a4, tp, 4
                  sltu         s10, t5, t5
                  slli         a4, s7, 16
                  lui          a3, 235142
                  or           s10, a1, a2
                  lui          s9, 965405
                  sra          t6, s9, s8
                  slti         sp, s3, 337
                  lui          a5, 698012
                  sltu         t5, s8, s10
                  or           s11, t6, a0
                  andi         a2, a6, -1593
                  sub          a5, s7, t1
                  nop
                  sub          t5, s0, t3
                  srli         t5, t1, 25
                  srl          s11, a3, t4
                  sub          a1, s5, t3
                  sra          s11, a1, a4
                  or           s11, a6, t5
                  srli         a5, ra, 0
                  slt          s11, s7, a4
                  sll          a1, sp, s6
                  ori          s9, s10, 527
                  nop
                  or           a4, t1, t1
                  lui          t5, 111565
                  srli         ra, t5, 23
                  nop
                  lui          a2, 754910
                  sll          t0, s10, a6
                  xor          a1, a5, t5
                  srai         s4, gp, 31
                  sub          s2, t0, s1
                  xori         t2, t3, -738
                  slli         s6, a6, 20
                  and          s0, t5, ra
                  xori         s0, s4, -203
                  sltiu        a4, s11, -116
                  and          t3, t6, t4
                  srli         a3, s3, 24
                  addi         s5, a4, 1805
                  ori          s8, t5, -939
                  add          s0, s4, s7
                  auipc        a2, 15756
                  sltu         a5, sp, a1
                  slt          t4, a3, t1
                  sub          a6, a0, tp
                  sltiu        zero, s10, -517
                  sltu         zero, s3, a4
                  srai         s9, a4, 18
                  sltiu        t4, t4, -618
                  sltu         t5, t2, s1
                  sll          zero, ra, t6
                  srl          t3, s3, s5
                  srl          t4, s2, a5
                  add          a4, zero, zero
                  slti         t0, a0, 1075
                  sra          a7, s4, s7
                  slt          s10, sp, t2
                  xor          s10, a1, gp
                  slli         t0, t6, 13
                  slli         t3, sp, 22
                  slli         tp, a1, 11
                  or           a7, a7, s11
                  addi         s9, s3, 96
                  auipc        gp, 749671
                  srli         t2, tp, 30
                  slt          a7, s6, s10
                  srli         a7, s5, 23
                  or           s3, s6, s4
                  lui          a3, 771642
                  sltu         t0, tp, s2
                  srli         a4, s9, 1
                  nop
                  xor          t4, s9, s5
                  xori         s4, t4, -1687
                  slt          t6, a6, s4
                  xori         s9, s11, -658
                  and          a1, t6, s0
                  srli         a1, t6, 18
                  andi         s0, ra, 1932
                  sltiu        a2, s10, -372
                  or           t5, t4, a0
                  srai         t2, s6, 15
                  li           t4, 0xf8626ce #start riscv_int_numeric_corner_stream_3
                  li           tp, 0xffffffff
                  li           s0, 0x0
                  li           s9, 0x0
                  li           sp, 0xffffffff
                  li           a5, 0x0
                  li           t5, 0x0
                  li           s4, 0x0
                  li           t6, 0x80000000
                  li           t3, 0x0
                  lui          sp, 26837
                  lui          t3, 298452
                  sub          a5, t6, t6
                  addi         t5, s4, 251
                  lui          s4, 273830
                  lui          tp, 856705
                  sub          t6, s9, s4
                  auipc        tp, 245058
                  sub          s9, s4, t5
                  lui          a5, 553373
                  nop
                  add          t3, s9, t3
                  sub          s0, a5, tp
                  addi         s9, s4, 1396
                  sub          s4, tp, s0
                  sub          s9, a5, s4
                  sub          s9, s9, tp
                  auipc        t4, 166670
                  nop
                  lui          t3, 28009
                  sub          t4, a5, sp
                  auipc        tp, 501809
                  addi         s4, s9, 1283
                  nop
                  addi         a5, t4, -1943 #end riscv_int_numeric_corner_stream_3
                  srai         s6, s11, 22
                  srli         t1, s2, 16
                  and          a3, a6, a7
                  sltiu        a3, s8, -1245
                  ori          s0, s6, 393
                  andi         a4, s3, 1400
                  sra          s8, a4, s3
                  srli         t3, s2, 11
                  sltu         t1, t3, a0
                  andi         ra, sp, -377
                  slti         ra, s10, 181
                  sra          s10, t1, a3
                  ori          t5, t6, 622
                  or           t2, s2, tp
                  srli         t2, a0, 28
                  srl          tp, zero, s9
                  slti         t3, s4, -877
                  slti         ra, a6, 1589
                  xori         t5, s1, 1937
                  or           t4, t3, ra
                  add          a4, s7, s2
                  ori          s6, sp, 14
                  sub          a1, s11, a6
                  xor          gp, gp, s5
                  andi         a2, a6, 337
                  xor          a5, a7, t2
                  xor          t2, s11, s1
                  add          a4, t6, s1
                  xori         t0, a1, 1737
                  sll          a5, a2, a7
                  sltu         t3, t1, zero
                  sltiu        s4, ra, 941
                  slti         s2, sp, -1853
                  sltiu        s9, s9, -626
                  auipc        a7, 203416
                  srai         s3, t1, 2
                  xori         s4, s5, 463
                  slti         s8, t5, -594
                  sll          t3, a7, a2
                  slti         t6, s5, -876
                  addi         s4, s10, -1663
                  slli         t1, s10, 19
                  sll          sp, s8, t5
                  lui          tp, 974502
                  srl          a3, a6, s3
                  sll          a5, s0, a6
                  sll          s10, sp, s3
                  andi         s9, a0, 259
                  addi         s10, a6, 582
                  sll          t0, t4, t1
                  sltiu        s10, s3, 232
                  sll          s9, a1, t1
                  slti         s11, sp, -1757
                  srai         t6, s11, 12
                  addi         a5, t6, -905
                  auipc        s2, 61716
                  lui          t0, 739322
                  srai         ra, a4, 19
                  ori          a1, ra, 658
                  sub          gp, t6, sp
                  sra          s3, s8, ra
                  sltu         s9, s8, s10
                  andi         s4, s4, -1403
                  andi         sp, t1, -1453
                  srai         s5, a0, 15
                  nop
                  auipc        s5, 180583
                  xor          t3, s4, t5
                  ori          a5, a7, 1241
                  srli         s4, t1, 9
                  slti         zero, t1, -90
                  andi         a7, gp, 320
                  auipc        gp, 47435
                  nop
                  addi         a2, s3, -275
                  auipc        t4, 92861
                  ori          a3, t4, -2004
                  xor          s10, t1, s6
                  srli         a7, a7, 31
                  srai         a5, s7, 7
                  andi         ra, a6, 649
                  srl          t3, tp, s3
                  and          a2, t5, sp
                  slti         sp, s11, -1194
                  sra          zero, t1, zero
                  sra          t3, s1, t2
                  and          s0, gp, gp
                  sra          a7, tp, zero
                  srli         s4, s6, 11
                  or           s10, t0, ra
                  sll          s10, a4, a6
                  srl          a7, t6, t5
                  slt          t3, a2, s11
                  nop
                  sltu         s0, s6, a3
                  auipc        t6, 19008
                  lui          a5, 52042
                  srl          a3, a7, s7
                  xori         a1, a2, 764
                  lui          s0, 1032708
                  sltu         t2, a3, sp
                  srl          s9, s4, t4
                  slli         gp, sp, 23
                  or           t5, t1, s2
                  xori         a3, s0, -676
                  sltiu        a5, s10, 1822
                  add          gp, t2, t5
                  lui          s2, 216456
                  slt          t4, t3, s8
                  nop
                  slli         sp, a1, 0
                  andi         sp, a7, 758
                  addi         t0, gp, 716
                  auipc        t4, 155231
                  srai         a3, s10, 15
                  slti         s8, a3, -1788
                  ori          tp, s5, -478
                  and          a2, t5, a7
                  add          gp, s9, a7
                  addi         a4, s11, 975
                  sltu         a3, t5, t0
                  and          s3, s11, s10
                  xori         s8, gp, 1482
                  srli         s10, a6, 24
                  addi         s3, s7, 338
                  slti         s5, t6, 1217
                  xori         s3, s6, 1491
                  ori          s2, t6, -1154
                  srli         s2, t3, 25
                  sltiu        t3, s6, 2001
                  sra          t4, s6, a5
                  sub          s4, s2, a3
                  sll          s9, s1, t0
                  lui          a1, 111537
                  slt          a6, tp, ra
                  slt          s0, s0, tp
                  add          gp, tp, s7
                  and          s5, t5, t4
                  sra          s11, t3, t4
                  sll          s11, a0, s6
                  srl          s9, s10, a7
                  auipc        s2, 17936
                  srli         t0, a3, 3
                  sub          a7, s4, a5
                  srai         a6, s7, 3
                  slli         a6, s11, 24
                  xor          s8, s11, t6
                  and          s0, a1, t6
                  sll          t0, s8, s1
                  srli         zero, t0, 18
                  srai         sp, s5, 31
                  nop
                  lui          t4, 267569
                  srl          s8, tp, s10
                  slti         ra, t0, -950
                  sltiu        s9, s3, -1975
                  xori         a2, a5, 679
                  xori         t0, t3, 1366
                  xor          t6, ra, sp
                  slti         s2, a6, 256
                  xor          a5, s4, t4
                  or           s0, tp, t4
                  addi         s11, a4, 1404
                  auipc        t6, 486430
                  lui          a7, 673820
                  andi         t3, t6, 1607
                  srli         gp, s0, 13
                  sll          a5, t3, s7
                  srai         t6, s9, 31
                  slli         tp, s11, 22
                  sltu         zero, s0, t2
                  srli         a4, s10, 30
                  addi         t4, s1, 1177
                  sll          a1, t4, a6
                  slti         zero, s0, 1967
                  srli         a2, t3, 23
                  nop
                  sub          s11, t0, s2
                  sltiu        s3, t3, 113
                  sltiu        t3, t0, -1614
                  srl          s9, t3, s0
                  srli         s10, a5, 17
                  xor          a4, s2, t5
                  srli         sp, zero, 19
                  and          a6, sp, t5
                  slli         a1, s7, 21
                  or           ra, a1, s10
                  addi         a1, a3, 1303
                  srai         s0, a2, 24
                  srl          t1, zero, a5
                  sra          t2, t6, sp
                  xori         s5, sp, -1108
                  and          a4, s4, zero
                  addi         a1, s10, -1516
                  sub          a4, a4, s6
                  or           s4, s2, gp
                  slti         s5, t6, 404
                  auipc        a1, 867294
                  sll          t1, s6, t1
                  auipc        gp, 35934
                  sltiu        s5, sp, -1037
                  sra          s6, s9, t5
                  sltu         a2, s3, ra
                  lui          a6, 660788
                  srli         ra, a1, 6
                  andi         s10, tp, -950
                  sra          s10, s1, s3
                  slti         a6, s11, 656
                  or           a5, s5, s3
                  and          a4, s9, a0
                  srl          s5, a2, a4
                  addi         sp, zero, 361
                  xori         a7, a2, -1800
                  srl          a5, t1, t3
                  lui          ra, 917170
                  auipc        a4, 469205
                  sub          a5, s5, t5
                  auipc        s2, 1019907
                  and          t4, s0, a0
                  xor          t0, s10, a5
                  lui          a3, 418688
                  sltiu        s6, t4, -1100
                  xori         a3, s7, 341
                  sra          s5, s3, s3
                  xori         s5, a0, 1341
                  or           t4, sp, a3
                  sub          a1, a6, t5
                  and          s4, sp, ra
                  sltiu        a1, s9, -573
                  xori         s2, zero, -1953
                  li           a6, 0x0 #start riscv_int_numeric_corner_stream_10
                  li           s9, 0x80000000
                  li           s4, 0x0
                  li           a7, 0x0
                  li           t3, 0x80000000
                  li           t0, 0x0
                  li           t6, 0xffffffff
                  li           t4, 0x80000000
                  li           gp, 0x80000000
                  li           a5, 0xffffffff
                  addi         t0, t6, 279
                  lui          s4, 447487
                  add          s4, s9, gp
                  addi         gp, t6, 1639
                  sub          a5, a6, t6
                  addi         s4, a6, -1895
                  auipc        a7, 584582
                  addi         t6, t4, -1433
                  add          a5, t6, gp
                  nop
                  nop
                  sub          s9, a5, a5
                  lui          a6, 535863
                  lui          t4, 985885
                  sub          t4, a7, s4
                  add          t4, t4, t6
                  auipc        t0, 203276
                  lui          s4, 353032
                  lui          a7, 941822
                  add          s4, s4, t0
                  addi         t0, t0, -1119
                  nop
                  add          gp, s4, a7
                  addi         s9, a7, 952
                  addi         t6, t4, -862
                  nop
                  sub          gp, t6, t4
                  addi         t3, gp, -361
                  auipc        t0, 418350
                  sub          a6, t0, s4 #end riscv_int_numeric_corner_stream_10
                  sll          t3, s0, t6
                  slli         s8, zero, 27
                  slli         s10, s1, 13
                  nop
                  nop
                  nop
                  xori         ra, a6, -1169
                  lui          s8, 138482
                  and          s11, s4, t4
                  xori         t4, t1, 648
                  slli         a5, s3, 18
                  sub          a1, a5, s4
                  lui          s4, 234193
                  srli         a1, t6, 31
                  sll          s4, a5, s6
                  slli         s4, t4, 8
                  andi         s2, s8, -1025
                  srl          s0, s5, gp
                  xori         s4, t6, -1699
                  srai         s2, s6, 10
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
                  add x9, x10, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

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
                  add x9, x10, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

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
                  add x9, x10, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

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
                  add x9, x10, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

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
                  add x9, x10, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

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
                  add x9, x10, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

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
                  add x9, x10, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

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
                  add x9, x10, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

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
                  add x9, x10, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

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
                  add x9, x10, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

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
                  add x9, x10, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

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
                  add x9, x10, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

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
                  add x9, x10, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

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
                  add x9, x10, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

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
                  add x9, x10, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

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
                  add x9, x10, zero
                  csrr x7, 0x341 # MEPC
                  csrr x7, 0x342 # MCAUSE
                  li x5, 0x3 # BREAKPOINT
                  beq x7, x5, ebreak_handler
                  li x5, 0x8 # ECALL_UMODE
                  beq x7, x5, ecall_handler
                  li x5, 0x9 # ECALL_SMODE
                  beq x7, x5, ecall_handler
                  li x5, 0xb # ECALL_MMODE
                  beq x7, x5, ecall_handler
                  li x5, 0x1
                  beq x7, x5, instr_fault_handler
                  li x5, 0x5
                  beq x7, x5, load_fault_handler
                  li x5, 0x7
                  beq x7, x5, store_fault_handler
                  li x5, 0xc
                  beq x7, x5, pt_fault_handler
                  li x5, 0xd
                  beq x7, x5, pt_fault_handler
                  li x5, 0xf
                  beq x7, x5, pt_fault_handler
                  li x5, 0x2 # ILLEGAL_INSTRUCTION
                  beq x7, x5, illegal_instr_handler
                  csrr x5, 0x343 # MTVAL
                  1: la x23, test_done
                  jalr x1, x23, 0

ecall_handler:    
                  la x7, _start
                  sw x0, 0(x7)
                  sw x1, 4(x7)
                  sw x2, 8(x7)
                  sw x3, 12(x7)
                  sw x4, 16(x7)
                  sw x5, 20(x7)
                  sw x6, 24(x7)
                  sw x7, 28(x7)
                  sw x8, 32(x7)
                  sw x9, 36(x7)
                  sw x10, 40(x7)
                  sw x11, 44(x7)
                  sw x12, 48(x7)
                  sw x13, 52(x7)
                  sw x14, 56(x7)
                  sw x15, 60(x7)
                  sw x16, 64(x7)
                  sw x17, 68(x7)
                  sw x18, 72(x7)
                  sw x19, 76(x7)
                  sw x20, 80(x7)
                  sw x21, 84(x7)
                  sw x22, 88(x7)
                  sw x23, 92(x7)
                  sw x24, 96(x7)
                  sw x25, 100(x7)
                  sw x26, 104(x7)
                  sw x27, 108(x7)
                  sw x28, 112(x7)
                  sw x29, 116(x7)
                  sw x30, 120(x7)
                  sw x31, 124(x7)
                  la x23, write_tohost
                  jalr x0, x23, 0

instr_fault_handler:
                  add x10, x9, zero
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
                  add x10, x9, zero
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
                  add x10, x9, zero
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
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x10, x9, zero
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
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x10, x9, zero
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
                  csrr  x7, 0x300 # MSTATUS;
                  csrr  x7, 0x304 # MIE;
                  csrr  x7, 0x344 # MIP;
                  csrrc x7, 0x344, x7 # MIP;
                  add x10, x9, zero
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
