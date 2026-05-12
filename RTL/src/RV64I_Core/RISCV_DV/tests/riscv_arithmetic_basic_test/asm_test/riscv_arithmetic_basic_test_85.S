.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x1, h0_start
jalr x0, x1, 0
h0_start:
                  li x25, 0x40000100
                  csrw 0x301, x25
kernel_sp:        
                  la x18, kernel_stack_end

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
                  li x0, 0x80000000
                  li x1, 0x99e36db9
                  li x2, 0x39c65598
                  li x3, 0x7
                  li x4, 0x80000000
                  li x5, 0x86c2c768
                  li x6, 0x80000000
                  li x7, 0xf7ac2a2b
                  li x8, 0x6
                  li x9, 0x3d092f18
                  li x10, 0x6
                  li x11, 0x80000000
                  li x12, 0x80000000
                  li x13, 0x0
                  li x14, 0x7ca53054
                  li x15, 0xa4be855b
                  li x16, 0x9
                  li x17, 0x0
                  li x19, 0xcafefd90
                  li x20, 0xfff31df0
                  li x21, 0x0
                  li x22, 0xf34e221a
                  li x23, 0x80000000
                  li x24, 0x0
                  li x25, 0x0
                  li x26, 0x0
                  li x27, 0xf9b8a5bc
                  li x28, 0x0
                  li x29, 0x80000000
                  li x31, 0xf
                  la x30, user_stack_end
main:             li           s5, 0x80000000 #start riscv_int_numeric_corner_stream_13
                  li           a0, 0xffffffff
                  li           a1, 0x0
                  li           a4, 0x8d0cb7f8
                  li           t6, 0xd324194c
                  li           s0, 0x80000000
                  li           s9, 0x13d14c4f
                  li           s7, 0xffffffff
                  li           tp, 0x80000000
                  li           t2, 0x93239a0c
                  addi         s0, s9, -358
                  lui          t6, 449751
                  addi         a0, s7, -1295
                  add          s0, t6, a4
                  addi         s9, s0, 453
                  auipc        s0, 145499
                  lui          a1, 861771
                  nop
                  lui          s9, 695021
                  add          a0, s7, s9
                  lui          t6, 253454
                  add          s9, s7, s5
                  add          a0, s0, s7
                  add          s7, a0, s5
                  auipc        a1, 994292
                  add          a0, tp, a0
                  sub          t2, a1, a1
                  nop
                  auipc        a4, 512449
                  add          s0, t6, a0
                  lui          a1, 887252
                  addi         a1, t6, -1461
                  nop
                  add          a1, t2, a4
                  add          s5, s7, t6
                  nop
                  sub          s7, t2, s5
                  add          a1, t6, s9
                  auipc        t2, 899878 #end riscv_int_numeric_corner_stream_13
                  li           s11, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           s4, 0x0
                  li           sp, 0x80000000
                  li           a2, 0xffffffff
                  li           t1, 0xffffffff
                  li           a0, 0x3f601546
                  li           t4, 0x80000000
                  li           s1, 0xffffffff
                  li           s0, 0xffffffff
                  li           s9, 0x46f6a90c
                  nop
                  nop
                  addi         s0, a0, 1316
                  sub          s4, s1, t4
                  auipc        t4, 608902
                  nop
                  auipc        t4, 156086
                  auipc        a2, 1022213
                  addi         s9, t1, 419
                  sub          a2, t4, s11
                  nop
                  addi         s9, s9, -1268
                  sub          t4, sp, t4
                  auipc        s1, 417849
                  addi         sp, s9, -1920
                  auipc        s11, 410720
                  nop
                  addi         s11, s4, 976
                  add          t4, s11, s4 #end riscv_int_numeric_corner_stream_17
                  li           t0, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           s8, 0x0
                  li           a2, 0x0
                  li           a4, 0x0
                  li           a1, 0x4a90b2a7
                  li           s10, 0x0
                  li           s6, 0xffffffff
                  li           s7, 0x88fcb3ad
                  li           t6, 0x0
                  li           a3, 0xffffffff
                  add          s10, a3, a1
                  nop
                  sub          s8, t0, s7
                  auipc        s10, 42885
                  auipc        s10, 414170
                  nop
                  addi         s8, a3, -284
                  add          s10, a3, t6
                  nop
                  lui          a4, 1006478
                  add          a2, s10, t6
                  auipc        a2, 341390
                  sub          s8, s6, a4
                  add          a1, s10, t6
                  sub          a1, s6, s10
                  addi         s6, a1, 999
                  lui          s8, 238535
                  lui          s8, 387251
                  nop
                  lui          s8, 371575
                  sub          s7, a4, t6
                  auipc        a1, 985043
                  nop
                  addi         a1, s10, -1167
                  add          a4, s6, a2 #end riscv_int_numeric_corner_stream_1
                  li           t3, 0x2fdb7019 #start riscv_int_numeric_corner_stream_18
                  li           s11, 0xffffffff
                  li           s10, 0xffffffff
                  li           a6, 0x80000000
                  li           s4, 0xffffffff
                  li           sp, 0x0
                  li           s9, 0x3b3d6039
                  li           a5, 0xd0d98fc9
                  li           s6, 0xecba292a
                  li           t1, 0xffffffff
                  lui          s9, 640915
                  add          s10, sp, sp
                  addi         s9, s9, 1828
                  nop
                  addi         s9, s9, 1191
                  lui          s9, 472374
                  addi         sp, a5, 1430
                  addi         t3, sp, -1016
                  lui          s9, 582445
                  addi         s9, a5, -1460
                  auipc        s4, 622290
                  addi         s6, t3, 1609
                  nop
                  lui          s4, 925928
                  addi         s4, s10, 821
                  add          t1, a6, s4
                  add          s6, s9, s6
                  auipc        s4, 971682
                  auipc        s10, 315696 #end riscv_int_numeric_corner_stream_18
                  li           t4, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           s0, 0x80000000
                  li           a6, 0xafaa7659
                  li           t2, 0xffffffff
                  li           tp, 0xffffffff
                  li           sp, 0x80000000
                  li           s7, 0xffffffff
                  li           t3, 0xbe2f7ef4
                  li           s3, 0xfadbb592
                  li           t0, 0xffffffff
                  nop
                  sub          t3, a6, t3
                  auipc        t2, 638370
                  sub          tp, t4, sp
                  nop
                  nop
                  addi         t3, t3, 1087
                  add          s3, t2, a6
                  addi         t2, s7, 1001
                  lui          t4, 264082
                  nop
                  add          sp, t2, t2
                  addi         t4, t2, 973
                  sub          a6, t3, s0
                  auipc        t4, 540086
                  sub          s3, t2, t2
                  auipc        t0, 495986
                  addi         s7, a6, 1490
                  addi         tp, t3, -1902
                  add          s7, a6, s0
                  sub          t4, t2, a6
                  addi         s0, a6, 1216
                  sub          s3, s7, s7 #end riscv_int_numeric_corner_stream_11
                  li           a2, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           t4, 0xffffffff
                  li           s10, 0xf730a8af
                  li           t0, 0xffffffff
                  li           s9, 0xabbcddb6
                  li           s3, 0x0
                  li           a4, 0x80000000
                  li           a7, 0x80000000
                  li           t2, 0xffffffff
                  li           a0, 0x0
                  nop
                  lui          a4, 230061
                  sub          a0, s9, t2
                  nop
                  add          a4, s10, t4
                  sub          s10, s9, t2
                  add          t4, t2, s9
                  add          a0, a7, t2
                  add          s3, s9, a2
                  lui          a4, 991626
                  add          s3, a7, t0
                  sub          a4, a0, t0
                  sub          s10, t4, t0
                  lui          t4, 447790
                  auipc        s3, 663006
                  auipc        a7, 1044666
                  addi         s3, t0, 1307
                  lui          a2, 874707 #end riscv_int_numeric_corner_stream_2
                  li           a5, 0x80000000 #start riscv_int_numeric_corner_stream_16
                  li           s6, 0x80000000
                  li           s0, 0x9406e854
                  li           s7, 0xffffffff
                  li           sp, 0x335900a8
                  li           s1, 0xffffffff
                  li           s10, 0xfafbf2ef
                  li           s4, 0xffffffff
                  li           s9, 0x80000000
                  li           t4, 0xbd134044
                  auipc        s4, 557169
                  auipc        s4, 490345
                  lui          s0, 932009
                  add          s4, s0, sp
                  auipc        sp, 135203
                  add          s6, s1, s1
                  lui          s4, 805678
                  auipc        a5, 708109
                  add          s4, t4, s7
                  nop
                  sub          sp, sp, sp
                  addi         s7, s4, -295
                  sub          s10, s1, s7
                  auipc        s6, 826134
                  lui          s0, 519928
                  lui          s6, 275773
                  auipc        s1, 358771
                  nop
                  sub          s9, t4, s9
                  lui          s7, 722270
                  add          s10, s0, s1
                  auipc        s7, 464945
                  lui          sp, 723222
                  addi         sp, t4, -384
                  auipc        a5, 639996
                  addi         s4, a5, 834
                  sub          s10, s9, t4
                  sub          t4, s4, a5
                  addi         a5, s10, 2023 #end riscv_int_numeric_corner_stream_16
                  li           s3, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           s4, 0x5398a42c
                  li           a3, 0x0
                  li           sp, 0xfbc2ceee
                  li           gp, 0x0
                  li           t3, 0xffffffff
                  li           t1, 0x909d3cea
                  li           tp, 0x0
                  li           t2, 0xb00b7b6b
                  li           a6, 0x2214ade0
                  add          s3, a3, s4
                  sub          s4, t3, t3
                  lui          s4, 885107
                  auipc        tp, 80479
                  add          gp, s4, a3
                  lui          a6, 727784
                  lui          s3, 70444
                  sub          sp, tp, t2
                  sub          gp, a6, t1
                  nop
                  nop
                  nop
                  auipc        gp, 511884
                  addi         t2, a3, 1434
                  add          t1, t2, t2
                  nop
                  addi         sp, tp, 983
                  add          gp, tp, gp #end riscv_int_numeric_corner_stream_7
                  li           s1, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           s3, 0x80000000
                  li           a2, 0x80000000
                  li           s10, 0x80000000
                  li           s8, 0x80000000
                  li           t6, 0x80000000
                  li           a0, 0x0
                  li           a3, 0xd141a754
                  li           s4, 0x0
                  li           s11, 0xa4feec8d
                  add          s3, t6, t6
                  lui          a2, 56164
                  lui          a3, 922741
                  add          s11, s10, s8
                  add          s11, s3, s11
                  nop
                  sub          s3, a2, s11
                  addi         s8, s10, 179
                  addi         s11, s11, 1799
                  sub          s10, s1, s10
                  lui          t6, 1024845
                  addi         s3, s10, -2009
                  lui          s3, 912748
                  addi         a3, s4, -1360
                  addi         s3, a0, -2025
                  nop
                  lui          s11, 626696
                  auipc        s3, 537532
                  add          a0, s4, s11
                  lui          s10, 1018134
                  lui          a2, 718813 #end riscv_int_numeric_corner_stream_6
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           s0, 0x0
                  li           sp, 0x0
                  li           s11, 0x3ae81f54
                  li           tp, 0xabe50da6
                  li           a4, 0x80000000
                  li           t1, 0x0
                  li           t4, 0xf2acc653
                  li           a1, 0x0
                  li           gp, 0xffffffff
                  addi         a1, s11, 1597
                  sub          gp, s10, tp
                  nop
                  add          gp, a4, a4
                  lui          a1, 557096
                  add          gp, s10, s0
                  lui          a1, 999858
                  auipc        gp, 889507
                  add          s11, s0, t1
                  auipc        gp, 868031
                  sub          a4, sp, a4
                  nop
                  sub          t4, a4, s10
                  add          a1, tp, tp
                  sub          s11, gp, tp
                  addi         s0, s0, 628
                  add          t1, s11, t4 #end riscv_int_numeric_corner_stream_19
                  sra          gp, a7, s4
                  andi         t1, s6, 456
                  nop
                  lui          s8, 761600
                  sltu         gp, a4, a0
                  xor          a5, t1, tp
                  lui          a6, 1013573
                  sltu         s5, gp, t2
                  xor          t2, tp, s8
                  srli         t0, a5, 5
                  srai         sp, t4, 7
                  slti         gp, s1, 1977
                  sltu         s5, s5, s7
                  add          s7, t5, s3
                  add          t3, a4, t0
                  xori         s0, t3, 862
                  xor          a7, t4, zero
                  sltu         s6, s2, a2
                  or           a6, s9, a3
                  sltu         s0, ra, s8
                  addi         sp, gp, 1133
                  ori          s6, t6, 1463
                  sra          s0, a5, zero
                  sltu         s0, a7, t6
                  srli         t2, a4, 8
                  sll          a0, s3, gp
                  andi         t6, sp, -1887
                  or           sp, a6, a6
                  nop
                  add          t3, t4, s9
                  lui          s9, 892719
                  sll          a5, a6, s6
                  srl          s6, s0, s3
                  slli         a6, gp, 25
                  auipc        s8, 625251
                  sub          gp, sp, ra
                  ori          s5, s8, 1975
                  sra          a5, s9, a7
                  andi         t3, s2, -277
                  sub          s6, ra, t5
                  add          gp, s9, s10
                  andi         s9, s9, -1339
                  srai         t3, t1, 2
                  srli         a6, t4, 18
                  nop
                  srl          a6, s7, a4
                  srl          s1, tp, tp
                  and          s10, s4, t5
                  sub          s8, zero, s2
                  slt          t1, s10, s4
                  sra          a7, a1, s3
                  add          t1, t2, t1
                  nop
                  sltu         a1, s4, a4
                  ori          a4, s8, 943
                  addi         s0, t1, 1510
                  andi         s7, tp, 1316
                  slt          s6, s9, s11
                  xori         zero, s0, 303
                  srl          s8, t3, gp
                  sub          zero, s3, a3
                  sub          tp, gp, ra
                  ori          s4, s5, -1919
                  or           sp, s1, a2
                  sltiu        zero, a6, 357
                  sll          s3, a6, s1
                  xori         s11, t0, 1944
                  nop
                  srli         s8, t0, 8
                  srli         tp, a3, 30
                  srli         t3, t6, 28
                  lui          t6, 677132
                  xor          tp, s5, s4
                  addi         t6, s10, 1197
                  auipc        s5, 425154
                  addi         zero, a2, 1014
                  addi         gp, s5, 375
                  slti         a0, s9, -1420
                  srl          s10, s3, s0
                  sra          s6, a3, t0
                  srli         t3, s2, 12
                  xor          a2, a7, s3
                  slti         s7, zero, -679
                  slt          a1, sp, a1
                  slli         t3, zero, 15
                  xori         s5, t6, 213
                  slli         t2, gp, 21
                  addi         s1, a3, -1663
                  ori          t1, t5, -65
                  and          s3, s10, t5
                  lui          s5, 716405
                  slli         zero, s8, 9
                  sltiu        a1, gp, 454
                  andi         s6, s3, -813
                  nop
                  slt          s0, s2, s4
                  slt          t4, tp, s6
                  and          t4, s8, a5
                  auipc        sp, 32355
                  slt          a5, gp, t4
                  and          sp, a6, t5
                  xor          t2, sp, gp
                  slli         a4, a7, 21
                  xori         t4, s9, -170
                  sra          t2, s3, s2
                  sra          tp, t1, tp
                  sra          a5, t2, tp
                  nop
                  and          t3, s5, a6
                  sltiu        s1, s3, -1530
                  sltu         a1, gp, a4
                  lui          a5, 104646
                  srli         s9, s5, 22
                  slli         sp, zero, 6
                  lui          zero, 1007260
                  add          t0, s6, sp
                  xori         t6, a4, -1835
                  and          gp, s1, s2
                  addi         s10, a4, 945
                  slt          t4, zero, s7
                  sltu         s6, t0, a6
                  sll          a1, a4, s0
                  sltu         t6, a1, s5
                  slt          a4, s4, t6
                  sra          gp, a0, t2
                  sub          s8, s8, a7
                  srl          s6, s6, zero
                  xori         s11, s3, 462
                  srl          a3, t1, s0
                  addi         s6, a5, 830
                  slli         t4, s11, 19
                  sltu         t3, t4, s10
                  and          t1, s8, s11
                  add          s10, t4, t5
                  xor          gp, gp, a3
                  sltiu        t2, t3, 1941
                  auipc        t6, 525776
                  slt          s4, s11, a3
                  slti         a2, t1, 1413
                  sltiu        s11, a6, 1687
                  sltiu        s8, s5, -901
                  addi         t1, t0, -1616
                  xori         s4, s4, 1421
                  srai         s0, s11, 4
                  srai         s9, tp, 19
                  xor          a4, a4, s4
                  andi         a6, s6, -710
                  or           t0, t2, a3
                  slti         a1, a2, 722
                  sll          a2, s11, zero
                  sltu         s1, a2, t6
                  srli         a5, s7, 2
                  sub          tp, s5, s4
                  and          s1, s6, a5
                  andi         s6, tp, -1713
                  slt          zero, s1, s2
                  addi         a7, zero, 91
                  slti         t6, s0, -1302
                  and          t3, zero, t2
                  xori         t2, s6, -705
                  sra          s5, a0, s5
                  srl          s8, a4, s3
                  sub          t2, t0, tp
                  xori         t4, a3, 562
                  xor          s11, t0, a7
                  nop
                  slli         a1, s2, 0
                  sltiu        a5, t1, 1262
                  auipc        t2, 953127
                  sltiu        a6, a3, 615
                  sll          a4, gp, t3
                  add          s7, s9, s1
                  xor          s5, t2, a5
                  nop
                  srai         s7, tp, 17
                  nop
                  add          gp, a4, s0
                  addi         t1, s7, 1658
                  srai         s6, gp, 4
                  lui          s5, 687371
                  srai         a5, s2, 28
                  ori          s3, a4, -1095
                  slt          s3, a5, s4
                  xori         s5, a5, 158
                  sra          t0, t3, t4
                  sltu         s9, s8, t0
                  lui          tp, 379856
                  sll          t4, a0, s4
                  slti         s4, s4, -502
                  sra          t6, s8, a3
                  sltiu        s5, t3, 910
                  add          s6, s2, tp
                  lui          s11, 1046211
                  srl          sp, a6, s2
                  or           a4, t4, s9
                  addi         s6, ra, -1698
                  srl          t3, s2, sp
                  srli         t6, t0, 26
                  nop
                  xor          t6, s1, s4
                  slt          s0, zero, a6
                  xori         t0, t2, -1106
                  auipc        s7, 602829
                  slt          t0, zero, s9
                  add          s10, zero, t3
                  srai         a1, tp, 16
                  and          s4, s4, t5
                  sltiu        zero, gp, 29
                  andi         gp, s3, -119
                  xor          t1, a6, a2
                  xor          t1, a6, a5
                  slti         sp, s4, 1378
                  srl          a2, t5, t2
                  srli         a3, t4, 28
                  sra          tp, s7, s0
                  addi         sp, a5, -1649
                  slli         t0, s2, 12
                  addi         s5, s10, 591
                  andi         s5, s5, 638
                  srai         a3, t5, 5
                  xor          s1, a7, t6
                  sra          t6, a3, t2
                  sll          gp, a6, s1
                  srl          s1, a7, sp
                  sub          t6, s8, gp
                  auipc        s8, 375721
                  slti         s7, s7, 314
                  sll          s3, s0, s9
                  xori         a0, s5, 1479
                  slti         s5, s3, -1643
                  ori          s0, ra, -346
                  slt          t4, gp, t6
                  add          s1, a1, a5
                  andi         s11, s10, 1870
                  add          a1, t5, t0
                  or           s5, s5, s0
                  lui          sp, 107673
                  slli         s1, s3, 15
                  and          sp, t5, t5
                  lui          a0, 39631
                  ori          t0, s8, 477
                  add          t1, t1, s2
                  andi         a6, t1, -503
                  slt          gp, s3, gp
                  addi         zero, a0, -812
                  sra          a1, sp, t4
                  slt          a3, zero, ra
                  add          s1, s6, s11
                  slt          s11, a2, s11
                  ori          a7, a7, -266
                  sub          t1, a6, a3
                  auipc        s3, 339681
                  xori         s3, zero, -1365
                  nop
                  addi         tp, s7, 1597
                  srli         s7, s8, 28
                  sltu         s4, s4, a7
                  add          a3, s5, s10
                  slt          s6, t4, t6
                  and          s11, a2, a1
                  and          a7, t5, a6
                  add          a3, s0, s4
                  lui          a3, 1029842
                  and          tp, tp, t4
                  andi         a0, a5, 1036
                  lui          s9, 210980
                  sltiu        a2, ra, -801
                  or           a5, s10, s0
                  srli         a7, a6, 3
                  sra          s3, tp, ra
                  auipc        a3, 961560
                  srl          t6, gp, a2
                  slt          s11, a7, s5
                  and          s11, s3, t2
                  or           a2, s6, sp
                  nop
                  add          a1, s9, zero
                  lui          s3, 247196
                  andi         t3, sp, -126
                  sltu         sp, ra, s7
                  li           s4, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           a7, 0x80000000
                  li           s9, 0x0
                  li           t0, 0xffffffff
                  li           t3, 0x0
                  li           sp, 0xffffffff
                  li           s5, 0x80000000
                  li           a4, 0x0
                  li           s1, 0xffffffff
                  li           gp, 0xffffffff
                  add          a7, gp, s1
                  addi         t3, t3, 877
                  add          t0, t0, t0
                  auipc        sp, 892023
                  nop
                  nop
                  nop
                  add          s1, a7, gp
                  addi         s1, t3, 923
                  sub          s4, sp, s1
                  addi         s1, t3, -780
                  auipc        s4, 80642
                  addi         s9, s9, 264
                  add          a7, sp, s4
                  auipc        a7, 57852
                  addi         a7, a4, -1221
                  addi         t0, gp, -182
                  sub          t0, a7, s1
                  addi         sp, t3, 1508
                  sub          s4, s1, t3
                  lui          a4, 851919
                  sub          s4, s5, t3
                  add          s4, s9, gp
                  lui          a4, 781858
                  sub          sp, a4, a7
                  auipc        gp, 841840
                  addi         sp, a4, -1706
                  addi         a7, s4, 1770 #end riscv_int_numeric_corner_stream_12
                  slli         t2, a4, 13
                  srli         sp, t0, 5
                  addi         a5, t3, -1401
                  srli         t6, t6, 27
                  xor          a2, t1, tp
                  srli         s0, t5, 16
                  add          gp, ra, a6
                  xor          s10, zero, s2
                  sra          a6, s2, t5
                  sltiu        a6, s1, -1330
                  or           a6, a4, s2
                  sltu         a2, s9, s11
                  xor          t3, s0, s11
                  sltiu        s0, t6, -1679
                  srai         s3, a1, 18
                  xori         a0, s1, 1735
                  addi         s6, a0, -1100
                  slli         s6, ra, 3
                  slti         s5, zero, -139
                  or           s8, a4, ra
                  ori          zero, s3, -1654
                  andi         t0, a0, 1912
                  addi         s6, s6, 1643
                  sll          a4, tp, s0
                  slti         a7, s6, -350
                  xori         a5, t1, -677
                  ori          a3, a7, -1014
                  andi         t4, t5, -1738
                  srli         a7, s9, 6
                  srai         gp, a3, 12
                  sltu         s4, s9, t0
                  addi         gp, a7, 1575
                  srl          s8, s2, t4
                  add          a3, s2, t4
                  sll          t2, s6, t5
                  sra          a2, t4, zero
                  sra          s10, s4, tp
                  sra          a5, s9, s6
                  sra          sp, t3, s7
                  slli         s9, gp, 14
                  ori          gp, t5, -1933
                  addi         s4, a0, -1466
                  auipc        t3, 168685
                  sltu         s1, a7, sp
                  lui          zero, 786758
                  xor          s1, a1, s10
                  and          s0, a2, s1
                  sltu         a5, a6, t0
                  srai         a3, a2, 12
                  andi         t3, s0, 1262
                  add          s10, a0, s5
                  sra          a2, a6, zero
                  andi         s5, t2, -751
                  sra          a2, a7, s1
                  srli         a2, s11, 27
                  add          a4, a6, s2
                  or           s11, a5, sp
                  xori         t2, s0, 1495
                  xori         s8, s7, -62
                  slli         a3, a2, 20
                  sub          t2, a5, a2
                  slli         t0, a3, 27
                  andi         t0, t1, -759
                  lui          a7, 180784
                  and          t3, gp, tp
                  srl          s3, s3, a1
                  srl          gp, t3, a6
                  srli         gp, s7, 11
                  lui          gp, 118184
                  srl          s0, s1, a4
                  sra          s11, s3, a5
                  add          a7, tp, t3
                  xori         gp, s8, 1368
                  auipc        a1, 810854
                  lui          t1, 335229
                  xori         a3, s7, 7
                  ori          a0, s7, 431
                  andi         s1, a3, -1404
                  addi         t3, s2, 300
                  addi         t2, a7, 871
                  srl          zero, s5, s0
                  slt          s3, t0, t2
                  or           s1, s5, a5
                  sub          a2, t1, a7
                  sub          a6, t1, s6
                  nop
                  slti         zero, t1, -1607
                  ori          t3, s7, -1521
                  add          s5, a2, a0
                  addi         a1, s7, -242
                  sub          t6, s3, s6
                  xor          s1, s8, s10
                  srai         zero, s3, 14
                  slt          a3, gp, a4
                  ori          s7, a0, -704
                  and          s5, s2, t1
                  slt          s7, s1, zero
                  srli         t6, s10, 31
                  xori         s8, s5, 809
                  or           t1, zero, t5
                  srl          a0, a6, sp
                  sll          a1, a3, s1
                  addi         t3, s5, 642
                  xori         sp, a6, -1803
                  nop
                  srai         t2, a6, 3
                  ori          a5, a3, 2043
                  srli         s8, s4, 16
                  sub          s9, s7, a6
                  xori         a2, t0, -447
                  srai         s4, a4, 2
                  srli         s9, s9, 30
                  sll          s5, gp, s5
                  srl          s10, s6, s8
                  or           t6, t2, ra
                  srl          s7, sp, s2
                  auipc        s7, 315951
                  addi         s6, a6, -1973
                  srai         a0, a4, 31
                  slt          a5, s7, s3
                  andi         s10, gp, 1782
                  andi         a4, t3, -2003
                  nop
                  srai         a2, s11, 26
                  sub          s9, a7, s9
                  slt          s7, t1, a2
                  srai         s4, s0, 17
                  addi         t0, s3, 1115
                  and          s4, t4, s8
                  sub          s7, a7, t2
                  sll          zero, t1, s2
                  sltiu        s6, s7, -1176
                  nop
                  or           t0, t4, s1
                  srli         a5, s6, 9
                  andi         a1, a2, -1000
                  and          s3, a1, s10
                  and          a7, s3, s11
                  slli         sp, tp, 23
                  slli         tp, s9, 2
                  slti         s7, ra, 959
                  auipc        t4, 899126
                  xor          s3, ra, a0
                  nop
                  sra          s6, s5, s4
                  xor          t4, tp, a4
                  srai         s0, s8, 9
                  ori          s6, a5, 1248
                  slti         zero, t5, -1840
                  or           s9, t2, gp
                  addi         zero, t2, 217
                  slli         sp, sp, 25
                  auipc        zero, 35967
                  sra          t6, gp, a3
                  nop
                  xor          a5, s9, zero
                  slt          t6, ra, s1
                  xor          zero, a3, t1
                  xor          t3, s11, s9
                  add          a2, a4, t2
                  and          s3, a1, s4
                  and          t6, s7, t2
                  lui          s1, 596446
                  srai         t6, s5, 24
                  and          t4, s2, gp
                  lui          s10, 1014265
                  addi         t3, a2, -648
                  nop
                  slti         t0, a3, 292
                  lui          t2, 631214
                  ori          sp, t6, 806
                  srli         s10, t0, 23
                  sub          s7, gp, s2
                  slt          s3, t0, t0
                  srai         s7, s3, 5
                  sltiu        t4, s2, 1595
                  sltu         s5, s8, s3
                  ori          s1, a5, -441
                  srai         a3, t3, 9
                  sra          a5, s1, a7
                  xori         tp, s3, 1563
                  slli         a0, sp, 28
                  and          t1, s11, gp
                  sra          zero, t3, ra
                  addi         a7, s1, -1528
                  auipc        s1, 774637
                  sra          t4, a7, s0
                  xori         t6, a0, -306
                  srai         t4, s4, 11
                  sra          gp, a7, ra
                  xor          s1, s10, gp
                  srai         s1, t3, 1
                  xor          a5, zero, s0
                  sub          a4, a3, t4
                  add          s10, a1, s6
                  ori          a4, t0, -220
                  andi         s9, t6, 759
                  xor          tp, tp, t0
                  add          a3, t0, t0
                  or           gp, s3, zero
                  nop
                  lui          t1, 756166
                  andi         s8, sp, 1013
                  sra          a1, a2, tp
                  ori          s6, s5, -247
                  or           s7, s2, t4
                  srli         s1, zero, 30
                  and          t3, s2, s8
                  add          s9, ra, a2
                  slt          s6, t6, zero
                  ori          sp, t6, -812
                  xori         t6, t6, -969
                  lui          gp, 623696
                  sll          a3, a3, s0
                  and          a5, tp, s8
                  slt          a6, tp, s11
                  nop
                  sltiu        s8, s2, -1233
                  or           tp, t0, s8
                  sltiu        s7, t3, 292
                  slti         s5, s2, -218
                  xori         a7, a1, -1235
                  srai         s9, a6, 30
                  slti         t3, s10, -122
                  xor          s4, a4, a5
                  auipc        s0, 886355
                  xori         s1, tp, -1128
                  sltu         s0, s0, s6
                  and          sp, s6, a7
                  and          s6, a5, s6
                  slt          a7, a5, s6
                  srli         a0, s3, 6
                  srai         a7, a1, 0
                  lui          a3, 528933
                  andi         s7, a7, 1436
                  srai         t2, a3, 18
                  nop
                  andi         s0, s5, -1697
                  add          gp, a3, s11
                  srai         t4, sp, 0
                  lui          t2, 495436
                  srai         zero, a0, 13
                  andi         zero, s9, 1597
                  and          s7, s11, a5
                  xori         a3, a2, 964
                  sltu         s9, s7, s4
                  sub          s4, s0, a6
                  auipc        gp, 193611
                  xor          t4, s11, t0
                  addi         gp, a0, -432
                  nop
                  or           s4, s10, a3
                  ori          s5, s3, -1378
                  xori         t6, t0, 657
                  ori          s11, s8, 1523
                  slt          t6, a1, a0
                  srai         s0, a2, 6
                  nop
                  srai         sp, s0, 17
                  srl          a2, s1, s4
                  lui          a1, 396133
                  slt          s0, s4, t5
                  or           tp, t4, s0
                  and          s3, s5, sp
                  add          a3, a7, s8
                  sll          s9, s11, s11
                  sll          zero, s9, s7
                  slti         tp, s0, 1151
                  slli         a3, s11, 21
                  sltu         s3, t3, a4
                  sltiu        t2, ra, 1449
                  sra          s6, s11, gp
                  srli         s1, a6, 1
                  srai         s11, s3, 28
                  auipc        t1, 916825
                  srli         t0, s9, 18
                  lui          t3, 522560
                  srai         a1, s0, 2
                  slli         s5, s10, 16
                  sub          a6, t6, s8
                  slt          t1, s1, a7
                  or           t0, s2, ra
                  srai         tp, t4, 16
                  sra          t1, s1, s11
                  ori          a5, t6, -1993
                  sra          a4, s10, s1
                  sub          t3, a4, ra
                  add          gp, s1, gp
                  slti         s7, sp, -307
                  lui          s9, 728515
                  xori         a6, t4, -230
                  addi         s10, s2, 312
                  ori          zero, t4, 1986
                  auipc        a1, 40526
                  ori          s5, a2, 236
                  add          a3, s7, t0
                  srli         s5, a5, 11
                  slli         a1, ra, 22
                  slti         a6, s8, -727
                  srli         s1, t2, 24
                  slti         s9, s1, 1533
                  addi         tp, a3, -609
                  sll          s11, s3, a7
                  xori         gp, zero, 506
                  sub          s11, a1, a6
                  lui          s11, 614493
                  sltiu        s10, s7, 8
                  sltiu        zero, a4, 1135
                  xori         t6, a4, -748
                  lui          s5, 518339
                  and          s1, s4, a3
                  xor          s4, s11, s7
                  nop
                  ori          t1, s2, 343
                  sltu         zero, s1, s8
                  srl          tp, ra, s3
                  andi         t3, t2, 2027
                  sll          s1, s4, gp
                  andi         a4, a2, 673
                  ori          a4, gp, 89
                  ori          s4, t0, -672
                  sltu         a2, a6, t0
                  and          a6, s2, s9
                  andi         s7, t3, -1785
                  sltiu        t3, t0, 1035
                  and          t0, s4, a7
                  sra          a4, s10, t6
                  sra          s9, s8, gp
                  sra          s9, a2, a4
                  srl          s0, a6, t3
                  lui          s7, 787236
                  xori         a5, s8, 886
                  nop
                  xori         s11, s9, 862
                  xori         a5, s9, -211
                  sra          a4, s9, a4
                  slti         a1, a4, -848
                  sra          gp, s6, ra
                  xori         a3, a6, -83
                  sltiu        t6, s1, 914
                  slti         t2, a1, -585
                  srli         a1, a3, 10
                  slti         t4, s7, -683
                  srai         t4, a6, 14
                  addi         s1, t0, 964
                  srl          s1, s10, s6
                  ori          t1, t6, 480
                  nop
                  andi         s6, s2, 1763
                  srl          a7, s7, t2
                  and          a5, gp, t4
                  xori         t2, a1, -1471
                  ori          t3, a6, 1800
                  srai         a6, t2, 25
                  slt          s10, a3, t1
                  sltiu        t2, a4, -408
                  and          a2, s6, s0
                  nop
                  srli         s10, s2, 24
                  srli         s3, s2, 13
                  add          t3, tp, s10
                  slti         a4, gp, 1533
                  auipc        s7, 1029995
                  xor          a4, t3, a6
                  auipc        s9, 621955
                  sub          a7, a1, t0
                  auipc        s6, 610206
                  srl          a1, zero, tp
                  or           gp, s2, s9
                  sll          a0, t3, s5
                  sub          gp, t0, t0
                  sra          a2, s1, s2
                  or           t2, s2, s1
                  sltiu        s0, a6, -1376
                  addi         s5, t0, -1901
                  auipc        a2, 82934
                  auipc        zero, 299230
                  ori          s8, s4, -769
                  sub          zero, t1, s4
                  and          s11, s3, s4
                  andi         s5, a5, 1681
                  sltiu        a2, gp, -266
                  lui          s8, 184262
                  and          t3, s2, s2
                  or           a7, s3, t5
                  and          a7, s2, zero
                  nop
                  addi         sp, t2, 701
                  ori          t3, a3, -806
                  nop
                  xor          a0, ra, s8
                  andi         s3, s6, -946
                  slti         s9, s3, 1457
                  ori          zero, s11, -1923
                  lui          s8, 1005804
                  sltu         sp, s10, s1
                  or           t6, s9, s5
                  and          a6, a5, t2
                  srai         zero, t5, 7
                  srai         a5, a5, 1
                  lui          t1, 73406
                  xori         s4, s6, 812
                  sub          a1, a2, s0
                  srl          s5, a4, t3
                  ori          t6, t2, -1789
                  sltiu        zero, zero, 18
                  xor          a6, a3, t4
                  slt          t6, t2, s0
                  slli         s3, t1, 23
                  sll          t2, a6, tp
                  sub          a3, a3, t0
                  nop
                  addi         gp, ra, 762
                  srli         a4, tp, 15
                  or           t0, s11, t0
                  lui          s4, 199099
                  slt          t2, t0, a5
                  andi         a7, sp, 492
                  slti         s10, t4, 2028
                  slti         zero, t6, 335
                  ori          t1, a1, -252
                  sra          s1, zero, s4
                  srai         s6, a5, 1
                  slli         s11, t2, 18
                  slt          a6, t0, a2
                  slti         s4, a7, -1709
                  or           t4, a3, t4
                  slt          s5, a3, t0
                  srli         a5, s10, 15
                  srli         sp, gp, 30
                  srai         s5, ra, 25
                  or           gp, sp, ra
                  nop
                  and          tp, t4, a6
                  auipc        sp, 150775
                  addi         s4, a0, -1522
                  lui          a1, 138954
                  and          s6, t2, s4
                  sra          zero, ra, gp
                  addi         t2, a1, 58
                  auipc        t0, 620835
                  srai         s0, sp, 26
                  and          s3, a0, a4
                  srli         a2, ra, 30
                  auipc        s1, 978031
                  sltiu        s4, s4, 1085
                  xori         s1, tp, 1982
                  sub          s4, a5, s8
                  slli         tp, a6, 29
                  auipc        a2, 364551
                  srli         s3, t5, 28
                  addi         sp, s0, -1562
                  sltiu        s10, s5, -1378
                  lui          s10, 263561
                  sltu         s3, s6, s9
                  andi         a2, s5, -725
                  xori         s0, gp, 1305
                  nop
                  sub          t2, a6, a0
                  xor          s9, s11, a1
                  slt          t0, tp, t6
                  xori         t2, gp, 1528
                  srli         a7, a4, 22
                  sll          s7, tp, a7
                  xor          gp, gp, t3
                  sltiu        t2, t1, -1130
                  slti         a7, a7, -1824
                  srl          sp, s11, s0
                  addi         t0, s7, 1421
                  sll          s0, s2, ra
                  sub          a2, t1, t2
                  sltiu        a7, a1, 1244
                  add          s0, t0, a6
                  sub          a6, s0, t2
                  sltiu        s11, t1, 3
                  xori         t2, a1, -798
                  srli         a7, a1, 15
                  slli         a0, s1, 5
                  sltu         s6, t5, s0
                  ori          a5, sp, 357
                  nop
                  nop
                  srai         s6, t6, 28
                  andi         a2, tp, -485
                  auipc        s0, 259094
                  sra          t2, sp, t6
                  srai         t2, t6, 17
                  sub          a6, t0, t3
                  sll          a2, s11, t5
                  ori          s10, t3, 136
                  srl          tp, a0, s10
                  add          s6, s6, a3
                  auipc        s0, 1012866
                  ori          t1, a1, -1605
                  sltu         a5, zero, a1
                  lui          a6, 960432
                  andi         s3, a1, -1310
                  xori         s0, s9, 307
                  addi         t0, a7, -499
                  nop
                  sra          sp, s8, gp
                  and          sp, a5, s6
                  sltu         s7, s3, a4
                  xor          a1, sp, s10
                  sltu         a0, a1, sp
                  sll          a1, s2, t0
                  lui          a3, 39541
                  auipc        a6, 224551
                  sltu         s1, s5, a7
                  andi         a1, s2, -1162
                  xori         t2, s2, -917
                  auipc        s10, 561100
                  srl          s7, s3, t2
                  slt          s4, s11, a6
                  xori         a0, s9, 1903
                  sll          s0, t5, t3
                  nop
                  sltu         s11, s9, s10
                  lui          a0, 1017933
                  auipc        a4, 368410
                  andi         gp, t2, 594
                  ori          t1, t1, -1012
                  srai         t4, s0, 20
                  ori          t6, t6, -496
                  auipc        a2, 111697
                  and          s0, a7, t6
                  sltiu        zero, s1, -1957
                  xori         s8, a4, 1214
                  or           t3, a1, s11
                  sub          t4, t1, s10
                  slli         a0, t4, 6
                  sltiu        a0, s8, 1092
                  lui          s8, 846956
                  slt          s0, s5, t5
                  srl          zero, a3, s3
                  srai         s0, s10, 21
                  slti         s6, s8, 1413
                  srai         s6, a1, 21
                  xor          s5, a5, a2
                  and          a2, s9, tp
                  slt          a7, a6, gp
                  sra          a6, gp, s0
                  xor          gp, s8, a1
                  sll          s6, s10, t0
                  srl          s5, a7, t0
                  sra          s5, s1, a2
                  sltu         s3, s4, s3
                  slti         s6, t0, -1507
                  add          gp, gp, a4
                  ori          a7, ra, -1909
                  xori         s5, t0, 1464
                  srai         a2, sp, 28
                  or           a2, ra, t3
                  xor          s4, s2, s2
                  sltiu        t1, zero, 1096
                  sltiu        a7, tp, -627
                  li           t2, 0x5cb11042 #start riscv_int_numeric_corner_stream_0
                  li           s1, 0x80000000
                  li           t3, 0x80000000
                  li           s0, 0xea167de4
                  li           s10, 0x0
                  li           tp, 0xfdfc37e7
                  li           a5, 0x80000000
                  li           t0, 0x80000000
                  li           s3, 0x77b1ff5a
                  li           a4, 0x80000000
                  nop
                  add          s0, s3, a5
                  sub          a4, tp, s1
                  nop
                  lui          s3, 154521
                  lui          s0, 694285
                  add          a5, t3, t3
                  add          a5, s1, a4
                  lui          a5, 137289
                  nop
                  addi         t2, t3, 1189
                  nop
                  lui          t3, 640278
                  sub          t0, a4, t2
                  auipc        t2, 138768
                  sub          s10, a5, s0
                  sub          t2, s10, t3 #end riscv_int_numeric_corner_stream_0
                  ori          a6, s4, 1163
                  nop
                  sltu         s11, gp, s4
                  lui          s1, 678045
                  nop
                  addi         zero, sp, 1225
                  sltiu        s0, s0, 1540
                  sltu         s6, t1, a7
                  sltu         s4, t5, a3
                  sll          tp, s0, a4
                  and          a5, t3, s10
                  auipc        s0, 565517
                  or           a3, s3, a0
                  sll          a6, a4, a6
                  andi         zero, t1, 227
                  auipc        s0, 97062
                  srai         gp, t3, 18
                  slt          s11, s8, s2
                  xori         s0, a3, 2040
                  srai         a7, a7, 12
                  addi         t6, s7, -862
                  srai         a6, tp, 9
                  add          s7, s11, s2
                  or           gp, zero, t0
                  srli         a7, s3, 8
                  srl          s3, t1, ra
                  slti         tp, gp, 1024
                  andi         s4, a0, -397
                  slli         sp, s7, 21
                  sub          t4, a4, t3
                  addi         gp, tp, -75
                  sra          s6, a7, a3
                  add          s1, s3, t0
                  xor          a1, s1, s3
                  lui          a2, 904955
                  srli         s10, tp, 2
                  sll          a5, s0, a7
                  or           gp, s0, a6
                  slli         t6, t5, 26
                  lui          t2, 604983
                  addi         s3, a0, 156
                  xor          s6, s11, s6
                  ori          t3, a1, -1582
                  slti         t6, a3, 1262
                  sub          zero, sp, a2
                  and          s7, a4, s0
                  sll          a3, s10, t6
                  slti         s5, a5, 266
                  sub          s5, a0, a6
                  auipc        t1, 329974
                  srai         s9, s5, 27
                  xor          a2, tp, s1
                  sltu         a0, s6, s8
                  xori         gp, a1, -1885
                  lui          s6, 285786
                  lui          a0, 909572
                  auipc        tp, 736619
                  srl          t2, sp, gp
                  ori          t3, t0, -1842
                  andi         s1, s0, 1733
                  slti         a0, zero, 953
                  sltu         t3, s0, t5
                  and          a4, a7, s6
                  auipc        s5, 311446
                  xor          t4, a1, s1
                  nop
                  sltiu        s7, a3, 43
                  addi         a0, s3, -1938
                  and          a0, a0, s7
                  sltiu        s11, gp, -590
                  srl          a4, t6, zero
                  lui          a3, 1020294
                  slt          t1, s0, t1
                  slt          s5, a5, a2
                  ori          gp, a0, -409
                  sll          s6, t0, tp
                  nop
                  slli         s0, t5, 6
                  slt          s11, t6, s6
                  auipc        t3, 195043
                  sll          gp, s3, tp
                  nop
                  sub          a3, t0, s8
                  sub          t4, s7, t3
                  srli         s3, s2, 28
                  sra          a6, t0, t0
                  and          a1, ra, s5
                  srai         gp, a7, 16
                  sub          s1, zero, tp
                  xor          a2, sp, tp
                  lui          gp, 160627
                  slti         t0, s2, 966
                  lui          zero, 1045729
                  and          s9, a4, a5
                  sra          a3, s4, a2
                  addi         t6, s8, 557
                  and          t3, a0, s1
                  xor          a2, a0, t2
                  sltu         t0, a7, a4
                  sub          t6, t4, t6
                  sltiu        a6, s10, 1946
                  sub          t1, a2, t6
                  andi         t2, s0, 116
                  auipc        s0, 700956
                  srli         tp, a4, 0
                  andi         t1, a0, 1057
                  addi         t2, tp, 1029
                  srl          s4, s4, t4
                  or           a6, zero, tp
                  sra          t0, s6, a5
                  nop
                  sub          s0, s10, s10
                  andi         a0, a2, -1922
                  addi         s9, gp, 241
                  sltu         a1, ra, t5
                  sltu         a6, s7, s10
                  add          t6, a3, a1
                  sltu         a4, a4, s2
                  sll          t3, s1, s6
                  lui          a6, 951165
                  sltu         s11, tp, s5
                  slli         zero, a4, 27
                  xor          a0, s9, s9
                  slti         gp, a7, -631
                  sltu         t2, a5, a7
                  andi         zero, a0, 189
                  srai         a1, t1, 12
                  srai         a7, a5, 16
                  addi         s3, a4, 177
                  slti         s8, s1, 801
                  sltiu        a0, s0, -191
                  add          a4, t1, t4
                  andi         s7, t0, -695
                  slti         t3, gp, -647
                  lui          tp, 134409
                  sll          a5, t4, a4
                  add          t4, a4, s4
                  slli         a5, s9, 27
                  slti         t6, a6, -1385
                  andi         s1, a1, 167
                  slti         a5, s2, -313
                  sub          sp, a4, a1
                  lui          a3, 486452
                  addi         s11, ra, 412
                  xor          a5, s11, s4
                  sll          s10, s5, a1
                  sll          a5, t5, ra
                  addi         s10, s5, -1234
                  srai         tp, s3, 12
                  slt          s11, tp, a4
                  slt          a6, a7, gp
                  lui          s7, 892082
                  xori         a3, gp, 1150
                  ori          a1, s1, 837
                  sra          s4, s4, s4
                  sltu         s11, a7, s5
                  sra          t2, zero, s8
                  ori          a7, s0, -2003
                  srai         s0, a4, 23
                  sra          s8, t3, t6
                  or           s5, s7, s6
                  nop
                  auipc        a7, 634151
                  slt          s0, a1, a4
                  addi         sp, a7, -802
                  add          a4, s10, t2
                  sll          t2, t1, s2
                  addi         s8, s0, -1891
                  xor          a2, zero, gp
                  srli         s1, a0, 21
                  srli         t4, s2, 21
                  andi         s9, t1, 1410
                  sltu         s5, t0, t4
                  srli         a3, sp, 25
                  auipc        a2, 671498
                  xor          s8, a1, s1
                  andi         t4, sp, -262
                  sltiu        s6, a2, 1964
                  sub          a1, a0, a7
                  nop
                  slli         s6, tp, 0
                  nop
                  xor          s5, t0, gp
                  slt          s11, s8, tp
                  sub          t3, s8, s10
                  nop
                  auipc        s7, 516692
                  slti         gp, a7, -890
                  srli         a0, s6, 7
                  sltu         s0, t3, a6
                  srai         t3, a6, 11
                  xor          a2, s7, a2
                  addi         s4, s3, -1195
                  srl          t1, t3, s7
                  and          s7, s7, t4
                  sltiu        sp, t3, 407
                  xor          zero, s3, s1
                  xori         s0, a3, 1347
                  addi         s11, s10, 1810
                  sltu         s6, s0, s4
                  xori         t2, s6, -971
                  addi         s9, gp, 1712
                  srai         tp, s8, 17
                  and          s11, s6, t1
                  sll          a0, t4, a5
                  sltiu        a6, s11, 563
                  sub          s11, t1, gp
                  ori          s9, s0, 1988
                  xori         t2, a5, -233
                  slt          s7, a5, s8
                  sub          gp, tp, tp
                  slti         a2, t0, 1786
                  slt          s11, s9, s2
                  sll          t3, t1, s5
                  add          s1, t5, a1
                  and          a7, tp, a4
                  add          s4, s9, s3
                  slli         s6, t4, 6
                  sltiu        t6, s4, 1221
                  addi         s5, t2, -1939
                  and          s3, s4, t5
                  sra          t1, t5, a4
                  and          s9, s11, s7
                  xor          s1, a5, s2
                  addi         s11, s8, 1978
                  addi         t0, s2, 92
                  srli         s11, a2, 25
                  sltiu        t0, ra, -1049
                  lui          a4, 635780
                  slt          t4, s11, tp
                  xor          s11, a4, a2
                  ori          t3, a6, -622
                  slti         s4, t6, 617
                  ori          a6, s1, 261
                  nop
                  srai         s0, a7, 5
                  add          s10, s2, a3
                  slti         a3, t5, 1880
                  sll          a7, s4, sp
                  andi         t4, a4, -1053
                  andi         a6, s9, 1005
                  xori         s6, s8, -1921
                  addi         s3, s10, -1254
                  sra          zero, s7, s0
                  xori         a0, a0, -520
                  add          zero, t5, s6
                  or           s7, s5, s3
                  sltiu        s1, sp, 1748
                  add          a1, tp, t2
                  slli         t1, s9, 28
                  sltu         a5, a1, s9
                  sub          a2, ra, tp
                  addi         a4, gp, 233
                  add          a1, s1, s9
                  or           s0, t2, t4
                  nop
                  addi         s9, s1, 1614
                  srai         tp, s2, 6
                  sltiu        s9, gp, -599
                  slt          s3, a1, tp
                  sub          t1, t3, t0
                  ori          s0, t4, -636
                  or           a4, t2, a4
                  xori         s4, t2, -10
                  sra          s7, a4, s7
                  slti         a2, s10, -525
                  xori         a6, t3, 682
                  sltu         s4, s9, t4
                  slti         a3, t6, 557
                  or           sp, ra, a3
                  srli         s3, s11, 6
                  ori          s8, a0, 704
                  nop
                  srai         s11, a0, 31
                  xor          s5, gp, gp
                  sub          t2, t3, t1
                  addi         s7, a5, -437
                  xor          s7, a2, s11
                  sub          sp, s0, t6
                  ori          s10, t4, 63
                  nop
                  srl          a7, t5, s5
                  or           s4, s5, t1
                  xori         s4, a6, 87
                  srli         t6, a3, 25
                  auipc        t0, 809839
                  nop
                  sltu         a2, s11, a6
                  slli         s5, s11, 3
                  or           a6, s8, ra
                  ori          a0, s2, -976
                  slt          a3, t0, s3
                  andi         s6, a6, -144
                  add          zero, t0, zero
                  slt          s11, t6, s9
                  addi         gp, s5, -1362
                  srli         s11, s6, 12
                  sub          s7, t6, a1
                  and          t2, t6, s8
                  ori          t3, s4, 1270
                  auipc        sp, 424066
                  addi         s3, s5, -1202
                  nop
                  slli         tp, a0, 11
                  sll          zero, s11, a5
                  auipc        s11, 972098
                  add          sp, t3, gp
                  slli         a2, gp, 24
                  slli         s4, s7, 28
                  slt          a4, t4, a7
                  auipc        s6, 816768
                  slti         s7, s0, 388
                  xori         sp, s6, 1459
                  sra          tp, sp, a7
                  or           t6, s2, t2
                  ori          s0, t5, -1245
                  ori          a6, zero, -1233
                  and          a0, a1, a2
                  ori          a6, a5, 1833
                  slti         s5, s8, 438
                  or           a3, a7, s0
                  slt          s7, ra, s7
                  sub          s3, t6, a7
                  auipc        s1, 937669
                  nop
                  and          a7, gp, s6
                  auipc        a5, 285300
                  srli         t1, a5, 28
                  slli         a2, s9, 11
                  xori         s1, s5, 29
                  slt          a0, s4, a2
                  srli         t6, t6, 31
                  slt          t0, sp, ra
                  srai         s7, t6, 27
                  srl          t6, a7, t3
                  xor          a3, tp, s5
                  lui          s4, 229364
                  slti         s9, zero, 349
                  sltiu        t2, sp, -636
                  slt          a6, t2, s7
                  andi         t3, t3, -796
                  sltiu        zero, tp, -1922
                  sra          s10, s1, a3
                  sub          a2, a6, a0
                  andi         t6, t4, 444
                  slt          t2, a6, sp
                  add          s4, s3, s3
                  slt          s3, s2, a4
                  ori          s1, s2, 705
                  sub          t3, ra, t3
                  srai         a6, zero, 31
                  ori          a6, s9, -1081
                  lui          t4, 645815
                  nop
                  sll          a0, s8, t5
                  sll          a7, s7, a3
                  sra          s1, tp, sp
                  xor          s10, a2, a5
                  nop
                  slt          s9, zero, s5
                  sltiu        s1, a7, 1412
                  xori         t0, t1, -1404
                  srli         a4, a3, 14
                  slti         t2, t5, 954
                  sub          zero, zero, s2
                  sub          s0, t6, s5
                  sltu         s8, s7, t4
                  add          t1, gp, t2
                  srai         t0, t0, 19
                  sltiu        a4, t0, -1806
                  slli         s0, tp, 12
                  nop
                  add          t6, t6, zero
                  sll          t3, s4, a1
                  ori          gp, a6, 2024
                  auipc        a6, 650340
                  sltu         s6, t4, t1
                  lui          s10, 897848
                  xori         s3, t6, 1844
                  xori         s3, sp, -2026
                  auipc        zero, 739888
                  and          s7, s6, a4
                  and          s1, a1, a6
                  srl          s0, s6, a2
                  slli         t4, zero, 5
                  srl          t1, s1, s3
                  sltu         s5, s2, s7
                  sub          a1, s6, t3
                  slt          s11, s3, a1
                  slti         a6, s7, 475
                  sll          s9, t2, s0
                  slli         a1, a2, 16
                  sll          t2, zero, gp
                  add          sp, gp, tp
                  auipc        a7, 362333
                  lui          s3, 539108
                  srli         a4, s2, 17
                  sltiu        zero, a1, 1394
                  xor          s4, s5, t2
                  ori          t4, zero, 9
                  add          zero, a0, s5
                  srli         s3, s6, 14
                  slli         s6, sp, 17
                  slt          a1, a7, tp
                  sra          s5, a2, a2
                  addi         t3, s4, 1336
                  slti         s7, s8, 1497
                  srl          a7, gp, s8
                  andi         s11, s0, -1313
                  addi         t4, s7, 462
                  srai         s6, s3, 16
                  slti         s9, t3, 948
                  sll          s3, t1, s9
                  ori          t6, gp, 594
                  srli         s6, a1, 13
                  and          t1, ra, s5
                  or           s8, a1, gp
                  lui          t0, 916417
                  addi         a5, s7, -1791
                  xor          t4, t4, sp
                  xori         s9, a7, -1339
                  addi         s8, tp, 1040
                  slt          a5, t6, t4
                  slli         s9, s7, 17
                  xori         s5, s5, -949
                  addi         s4, s6, -1851
                  slt          s0, ra, s4
                  nop
                  slti         a7, a0, 711
                  srl          a0, s1, sp
                  or           s3, sp, s3
                  add          s6, t1, tp
                  nop
                  slt          a1, t3, s5
                  srli         a4, a2, 9
                  or           a4, a1, s7
                  slt          t2, ra, s0
                  slli         s9, a6, 30
                  sltiu        a6, a3, -1581
                  andi         t3, s3, -1547
                  lui          t0, 10864
                  andi         t1, t6, -1272
                  slli         s3, gp, 7
                  srai         t6, s4, 24
                  xor          s3, s0, sp
                  xori         s6, gp, -380
                  nop
                  sltiu        s9, s7, -1975
                  nop
                  sub          t6, s11, s7
                  sub          s6, a0, s7
                  nop
                  xor          s3, s8, t6
                  sra          s10, zero, t2
                  add          s0, s4, a6
                  sll          s11, a1, t1
                  slt          a4, tp, a5
                  lui          tp, 748556
                  slti         s4, a5, 1185
                  and          t3, s4, s11
                  andi         a5, a3, -454
                  xori         a3, a1, 1682
                  srl          a5, a5, s4
                  or           s4, zero, s7
                  srli         a4, gp, 26
                  auipc        a2, 624103
                  slti         s4, tp, -1561
                  or           a5, s7, t4
                  ori          s0, s7, 1186
                  add          s10, s3, s2
                  auipc        a1, 798600
                  slti         s10, s11, 558
                  srl          zero, a1, t2
                  or           a5, t6, t2
                  and          a4, s2, s5
                  sltiu        t1, s9, 444
                  sltu         s6, a5, s4
                  addi         s4, t2, 431
                  sltiu        s6, t0, 2047
                  lui          a5, 888098
                  li           a0, 0xcd2e91d9 #start riscv_int_numeric_corner_stream_10
                  li           s1, 0x0
                  li           s8, 0x80000000
                  li           s6, 0x7c03df90
                  li           t3, 0x0
                  li           s0, 0xd45ca22
                  li           s3, 0x0
                  li           a5, 0x0
                  li           s7, 0xffffffff
                  li           a4, 0x0
                  addi         s7, s6, -331
                  add          s3, s8, s3
                  nop
                  lui          s8, 482000
                  sub          t3, s7, s1
                  nop
                  lui          s8, 981782
                  addi         a0, t3, -18
                  add          s0, a0, a4
                  add          s6, s1, s8
                  add          a5, s1, s1
                  addi         a4, s8, -1715
                  lui          s7, 734540
                  addi         s8, a5, 1342
                  add          s6, a5, a0
                  addi         t3, a0, -1315
                  addi         a0, s0, 1722
                  sub          s0, a4, s0
                  sub          s6, t3, s0
                  sub          a0, s8, s7
                  nop
                  add          s0, s7, s0
                  sub          s3, s1, s6
                  auipc        a0, 665269 #end riscv_int_numeric_corner_stream_10
                  sll          a5, gp, t3
                  lui          s6, 16953
                  or           a0, a0, a5
                  slli         s6, s4, 25
                  slti         t4, s2, 1461
                  andi         a2, s2, -1182
                  andi         gp, tp, 425
                  slt          a6, s7, s7
                  and          tp, s10, zero
                  srai         a2, ra, 28
                  sltu         s9, s5, tp
                  sra          s4, t0, s3
                  auipc        sp, 501656
                  slt          t1, t3, t5
                  srl          s3, a5, a5
                  slli         a6, s5, 5
                  srli         a4, s6, 4
                  and          zero, s5, a4
                  andi         s11, a1, -1291
                  add          t0, s1, a7
                  and          s6, s7, a3
                  srli         t4, a0, 5
                  addi         s7, a3, 891
                  add          a2, a0, a1
                  sra          a4, t5, s8
                  slti         a6, s6, 675
                  sll          s10, t5, s3
                  ori          s9, a7, -1367
                  andi         a7, s4, 607
                  slli         t1, a1, 23
                  sltu         s10, tp, s11
                  sltiu        s1, s8, 1368
                  ori          a7, a7, -359
                  ori          a1, t0, 574
                  sltiu        zero, t5, 575
                  or           s0, s8, t0
                  xori         s7, s4, -514
                  nop
                  auipc        s0, 373407
                  xor          s10, t5, a0
                  add          s8, t0, a2
                  sltu         s6, s5, t0
                  sll          a3, s11, tp
                  xor          gp, s11, a0
                  nop
                  and          s6, a3, zero
                  slt          zero, t0, s0
                  xori         s4, s3, -93
                  slt          sp, s4, a5
                  nop
                  auipc        gp, 83940
                  slt          s6, zero, s4
                  srli         a2, s8, 26
                  slli         s9, s4, 20
                  ori          s0, a4, -714
                  xor          s11, a3, t3
                  slt          t3, t2, t6
                  xori         a6, s0, 1055
                  slti         tp, t2, -1474
                  lui          a2, 56334
                  xor          s7, s10, a6
                  slti         s1, s9, 1338
                  and          t1, tp, s1
                  srl          gp, s8, tp
                  add          s11, s8, s7
                  sll          a0, s11, a2
                  add          a7, gp, ra
                  slti         s8, t1, 1761
                  xor          zero, a5, t5
                  sub          s0, a1, t3
                  auipc        s1, 102763
                  sub          a4, s7, a0
                  addi         t4, s10, -1641
                  and          s1, a4, gp
                  auipc        sp, 255001
                  auipc        a7, 428126
                  or           t2, ra, s9
                  andi         s10, s1, -1802
                  srai         a2, ra, 2
                  slli         t6, a2, 12
                  sll          a4, s9, t6
                  sll          a7, s2, sp
                  sltu         s8, s11, t6
                  add          a1, s10, t5
                  or           s0, a2, t6
                  nop
                  sltiu        a2, s4, -842
                  add          t6, a3, a2
                  xor          a5, t2, s4
                  andi         a6, a6, -487
                  xori         t4, ra, -610
                  srai         t4, s10, 8
                  addi         a3, s3, 1167
                  sltu         s6, t4, t6
                  sltu         t1, a5, s3
                  srai         s4, t6, 21
                  slli         s6, t5, 25
                  slti         t4, t3, 274
                  srl          t0, a4, s2
                  sltiu        t1, tp, 1807
                  sra          a3, s7, zero
                  sltu         s1, s1, a5
                  sltiu        a3, sp, -39
                  sltiu        t1, s9, 1852
                  sub          s0, a6, t4
                  andi         s7, t0, 1597
                  and          sp, sp, s5
                  srai         s4, a0, 18
                  slti         a7, s10, 1986
                  srl          a0, a3, t4
                  srl          s3, sp, t6
                  xor          a4, t1, s8
                  sll          s7, t0, gp
                  nop
                  sltu         t2, a7, a2
                  and          s4, a4, a1
                  ori          a6, a0, 689
                  slli         t6, sp, 25
                  ori          s7, t2, -1998
                  ori          t0, t5, -67
                  sltiu        a2, s7, 1898
                  or           t0, s1, s9
                  sltu         gp, t0, s8
                  sltiu        t6, a6, -1925
                  slti         s3, s0, 1304
                  sra          s8, a2, s2
                  sll          s11, t6, a1
                  ori          s10, a1, 431
                  sub          s5, s7, s5
                  slli         a4, a6, 15
                  auipc        a7, 17409
                  ori          s10, ra, -322
                  sub          t2, s8, a3
                  lui          a6, 418656
                  sltu         s3, s2, t4
                  sub          t4, a4, a4
                  lui          t0, 880621
                  slt          t1, a6, s0
                  slt          t0, a2, s5
                  sltiu        s1, s0, -625
                  addi         s3, tp, 268
                  slti         t6, t5, 1516
                  slli         s9, gp, 17
                  andi         sp, t5, 519
                  xor          t4, sp, s2
                  nop
                  sra          t0, a6, s9
                  sll          t3, s2, a7
                  sltu         gp, t6, t6
                  add          s6, a7, a2
                  and          s10, a4, s6
                  xori         zero, t1, 1791
                  andi         a3, s5, 1093
                  sll          s9, t6, s6
                  srli         s1, sp, 21
                  xori         gp, a7, -1489
                  srli         s6, zero, 21
                  srl          a2, s2, a2
                  lui          a7, 59177
                  xori         s6, a6, -1352
                  auipc        t1, 542012
                  and          a4, t2, a0
                  srl          a2, t5, s4
                  andi         t4, a0, 1499
                  srai         zero, zero, 13
                  and          a6, s2, t4
                  and          s10, t3, t2
                  slti         s5, t3, -291
                  sra          a6, a0, t1
                  xori         a5, s6, -1497
                  xor          s10, s3, s6
                  andi         a3, a6, 327
                  slli         s6, s10, 21
                  xori         s0, a3, 1578
                  addi         s1, s9, -1969
                  slli         a4, t4, 28
                  addi         a7, a0, 868
                  slti         a2, t6, -882
                  xor          s1, a4, s5
                  srli         s10, t1, 31
                  and          s11, s6, tp
                  nop
                  sub          s6, s4, a6
                  sltu         a2, a1, s7
                  addi         s5, ra, -452
                  srai         s8, gp, 24
                  slt          s9, s2, s4
                  srli         s9, a2, 0
                  sltiu        s4, s6, 1577
                  and          s7, t6, s7
                  sltu         a6, t5, s10
                  sll          s3, tp, a0
                  sra          s5, a4, s5
                  sltiu        tp, sp, -1617
                  andi         s3, ra, -1437
                  srl          a5, s11, s7
                  sltiu        a3, t3, 1217
                  lui          t2, 23257
                  srl          t0, ra, s9
                  add          a3, tp, s6
                  slli         a7, s9, 6
                  andi         s1, a7, 1433
                  ori          s1, a3, 407
                  slti         a2, sp, -167
                  slli         s10, a7, 1
                  sltiu        zero, t2, 520
                  and          gp, s7, t0
                  andi         s0, ra, 1084
                  srli         tp, a3, 1
                  nop
                  sltiu        a5, t0, -1364
                  lui          t4, 331730
                  srl          s9, t4, t1
                  lui          a1, 327796
                  xor          a0, t0, t0
                  andi         sp, s5, 1120
                  ori          t4, s1, 540
                  lui          a2, 161471
                  xori         s8, s7, 198
                  xori         s0, t3, -191
                  addi         a4, s6, 144
                  srl          a7, a7, s3
                  sltiu        t4, ra, -474
                  srli         t2, t4, 25
                  sltiu        gp, a4, 509
                  srl          s6, tp, s6
                  nop
                  xor          s5, a7, tp
                  slt          t6, a5, a6
                  srl          a4, s5, a4
                  slli         t3, s1, 15
                  andi         s0, a6, 874
                  sra          s4, a6, s3
                  andi         a3, s5, 580
                  srli         t1, a2, 20
                  andi         s1, a6, 1651
                  sll          gp, s6, ra
                  slt          s1, t2, ra
                  sll          tp, ra, s7
                  slti         a4, a3, 782
                  and          t2, s6, s6
                  and          s11, a2, a0
                  sub          t0, s10, a7
                  add          tp, s3, t6
                  lui          s8, 126119
                  sll          s5, s0, a0
                  sltiu        s1, zero, -1769
                  nop
                  slt          s5, zero, a3
                  or           a6, t3, s5
                  or           t4, t2, s2
                  or           t2, t5, a3
                  or           a2, ra, s8
                  lui          s0, 315178
                  slli         s4, s10, 9
                  nop
                  slli         s7, s1, 7
                  slt          gp, s0, a1
                  xor          t0, zero, a4
                  sra          s9, a5, t0
                  sub          s10, t3, s11
                  nop
                  sub          t2, s8, t0
                  srai         t0, a6, 31
                  auipc        a3, 409680
                  add          s4, tp, gp
                  srai         s0, t3, 28
                  srli         s6, s4, 9
                  auipc        t4, 181487
                  sub          t2, s3, t0
                  slli         s7, a6, 31
                  ori          s5, a0, 186
                  ori          s9, a1, 736
                  srai         t0, a0, 22
                  sltiu        sp, ra, -1485
                  slti         s6, t2, 1517
                  ori          s7, a2, 1734
                  ori          gp, ra, 581
                  xor          a0, s0, a1
                  slli         s4, s0, 12
                  ori          a1, tp, 1422
                  slti         t3, s10, -765
                  sltu         a2, a4, a5
                  auipc        s9, 976179
                  sra          s5, s9, s11
                  add          a5, a0, s5
                  sll          s11, a7, t2
                  auipc        s6, 195344
                  sltu         s0, t4, a3
                  or           s11, a0, s7
                  xor          s9, t0, s10
                  slt          t3, s3, t4
                  and          t3, sp, s4
                  xori         s4, s9, -786
                  slti         t1, t0, 1518
                  slti         gp, a3, -481
                  auipc        zero, 103243
                  xori         s1, t2, -417
                  srli         s11, a5, 0
                  sltu         tp, s6, s11
                  nop
                  auipc        s11, 373882
                  sltu         t4, t2, s10
                  srl          s10, t0, a3
                  nop
                  slli         t1, a3, 8
                  and          t0, s3, a2
                  auipc        a3, 810935
                  lui          s5, 966111
                  xori         s10, s11, -522
                  sltu         s9, t4, s1
                  or           s3, s11, s2
                  xor          s9, s0, s7
                  srli         a4, t3, 24
                  addi         t3, t0, 750
                  sltiu        s4, t6, -1769
                  add          a7, gp, t2
                  and          a2, ra, zero
                  slli         a5, a5, 10
                  slli         t2, s3, 11
                  nop
                  srli         s6, a2, 13
                  slt          tp, ra, t3
                  or           sp, zero, sp
                  nop
                  or           s1, s9, zero
                  or           a1, a1, a3
                  xor          s10, gp, s6
                  add          t3, s6, a4
                  xor          tp, a0, s2
                  xor          s8, gp, gp
                  sltiu        s9, t1, -1249
                  andi         s6, t6, -335
                  sub          s1, a5, t6
                  auipc        s10, 884153
                  xori         a1, sp, -1423
                  add          s9, s7, s8
                  slt          t4, a3, a7
                  sra          a2, s8, s10
                  slli         zero, zero, 20
                  slti         t2, a0, 714
                  auipc        s4, 910021
                  srli         zero, a0, 17
                  nop
                  and          t4, a4, t2
                  slti         t0, s1, -2047
                  lui          a3, 738007
                  andi         t2, a1, -436
                  or           a1, s3, a4
                  sub          s7, s0, a1
                  or           s5, s2, s0
                  sub          gp, a7, s11
                  slt          a4, s11, s3
                  sltu         s7, tp, t4
                  slli         t1, s2, 10
                  xori         tp, a0, 1334
                  srl          zero, s9, a5
                  auipc        a1, 181647
                  sub          s0, a3, a7
                  lui          t4, 1038707
                  slli         gp, gp, 7
                  xor          tp, tp, a7
                  sll          s1, s11, a6
                  sra          t2, a2, tp
                  andi         t1, tp, -1435
                  srl          s11, a1, s5
                  or           s11, a3, t6
                  slli         s3, s4, 8
                  sll          zero, a0, sp
                  slli         s7, s2, 29
                  addi         t6, t0, 1524
                  srl          gp, s9, t6
                  or           a3, a1, a2
                  nop
                  srl          s10, s2, s8
                  sub          s0, a2, t2
                  srai         tp, a3, 18
                  srli         t6, s6, 1
                  lui          s11, 582239
                  lui          s6, 131777
                  slli         a5, zero, 10
                  xor          s10, a2, a2
                  auipc        s7, 157858
                  srl          a4, a7, s11
                  lui          tp, 439997
                  srai         a7, s3, 21
                  sltu         s4, s6, s4
                  and          a0, zero, s5
                  slli         t1, t5, 20
                  add          t2, s4, s10
                  sltiu        s0, t6, 1063
                  and          s0, t3, t3
                  sub          s8, t5, gp
                  add          sp, t0, a7
                  xor          a2, s6, s0
                  auipc        t0, 505219
                  nop
                  auipc        a7, 15430
                  add          a6, t0, a3
                  slli         sp, s2, 24
                  ori          a6, t0, -938
                  add          s8, gp, a4
                  andi         s10, s6, 1310
                  addi         s6, a6, -672
                  slt          sp, sp, a6
                  lui          a3, 656922
                  slt          tp, tp, s5
                  and          t6, s0, a0
                  lui          zero, 98481
                  sub          t1, s0, t0
                  sll          t4, s2, s8
                  addi         t2, s10, 1150
                  xori         s7, s0, 116
                  lui          s1, 300225
                  lui          s3, 247651
                  srli         t0, a3, 22
                  nop
                  sltu         t4, s8, t2
                  sll          a6, zero, t1
                  ori          s0, s0, 511
                  sll          s6, t2, s2
                  or           s4, t3, s2
                  sll          a3, gp, a0
                  slti         sp, sp, 499
                  slli         t2, t4, 1
                  slti         s7, gp, -143
                  slti         s0, s6, -1823
                  or           s0, t1, a0
                  slti         t1, s5, 747
                  sra          a2, t6, s8
                  xor          a4, t0, sp
                  sll          a2, s0, a2
                  lui          t4, 723050
                  slti         a0, tp, -664
                  sra          tp, t2, s10
                  and          a7, s1, t4
                  srai         a3, a0, 6
                  or           t2, t2, s2
                  add          a0, s4, t1
                  and          a5, a4, s11
                  sltu         zero, sp, s7
                  srli         s7, s10, 14
                  srl          s7, a5, s8
                  add          t2, ra, tp
                  slt          a3, t6, s9
                  addi         t0, t4, 1718
                  srli         s11, a3, 3
                  auipc        s5, 406991
                  sub          a3, a0, a3
                  addi         s3, s0, 909
                  lui          s6, 862365
                  lui          a3, 632796
                  add          s9, t2, gp
                  sra          t4, a3, s0
                  ori          a5, t3, -1782
                  add          a3, gp, s9
                  slt          s3, t3, t4
                  slti         s11, t6, 1557
                  addi         s4, s10, -658
                  or           s3, s4, s4
                  sll          tp, tp, tp
                  andi         s11, t4, -1502
                  andi         t3, sp, -163
                  addi         a2, s8, 1547
                  slt          s5, a7, a6
                  add          s11, t2, t4
                  or           s1, s9, t1
                  sra          a4, s2, a6
                  srai         zero, s9, 15
                  andi         s4, sp, 1840
                  slti         t3, zero, -1397
                  or           s7, a3, a7
                  xor          t1, s7, a3
                  srl          a6, s4, s2
                  slti         a4, tp, 744
                  andi         s9, zero, -968
                  sltiu        a2, s0, 1978
                  sub          s10, s9, zero
                  ori          t2, s5, -228
                  sub          t0, t3, a3
                  ori          a0, s8, -2017
                  slti         a6, s9, 925
                  slt          a5, a6, a6
                  sltu         s11, t3, a1
                  xor          s1, t2, sp
                  add          a7, t3, s0
                  nop
                  xor          s5, zero, a0
                  auipc        t6, 339516
                  srl          a4, s0, s10
                  sll          a6, s4, a4
                  sub          gp, s8, sp
                  ori          s9, s7, -1423
                  xori         tp, t5, -761
                  and          a0, s5, s0
                  addi         a4, a3, -743
                  andi         a4, a0, -1541
                  xor          a4, t1, a3
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           s9, 0xffffffff
                  li           t4, 0xe6273e31
                  li           t0, 0x0
                  li           a7, 0x80000000
                  li           s3, 0x137785c2
                  li           a0, 0x6ffd33a4
                  li           a4, 0x80000000
                  li           t6, 0x80000000
                  li           gp, 0x0
                  add          s3, t6, gp
                  nop
                  lui          gp, 722101
                  nop
                  auipc        s9, 70595
                  add          sp, gp, a4
                  lui          a4, 326970
                  sub          a0, a7, a7
                  nop
                  lui          t0, 448400
                  sub          t6, t0, a7
                  auipc        sp, 856202
                  nop
                  sub          t0, a7, a0
                  lui          t4, 334261
                  lui          t0, 170178
                  sub          a0, t6, a0
                  add          t6, t4, sp
                  lui          a0, 522102
                  nop
                  lui          s3, 641591
                  lui          s3, 705988
                  auipc        a0, 709440
                  addi         gp, gp, -350
                  add          gp, s9, s9
                  sub          s9, sp, s9
                  nop
                  nop #end riscv_int_numeric_corner_stream_9
                  srai         s7, s7, 20
                  ori          t6, s7, 336
                  srli         s9, t3, 8
                  slti         t1, s0, -1208
                  nop
                  sra          t6, gp, t3
                  sll          t6, t2, t0
                  srli         t0, t2, 25
                  sltiu        tp, s7, -1876
                  slti         s8, s10, -2023
                  slti         sp, s3, 122
                  sra          gp, a1, gp
                  slti         zero, s11, 1321
                  auipc        s9, 209669
                  andi         s7, t0, 1129
                  srl          zero, t0, s4
                  addi         t0, t4, -953
                  ori          s8, t4, 620
                  auipc        s0, 250635
                  slli         s1, t4, 26
                  and          a3, s3, a5
                  add          s4, t1, gp
                  andi         a6, t1, 766
                  xori         a7, s1, 1966
                  sltu         zero, ra, a7
                  andi         tp, t1, -1848
                  or           a2, s11, t3
                  or           t0, a7, a1
                  add          s1, s1, s5
                  slti         tp, t3, -845
                  xori         s11, a1, 198
                  nop
                  xori         t2, s8, 634
                  slli         s3, t4, 2
                  addi         a2, gp, 638
                  sra          s0, t5, s8
                  and          t3, gp, s8
                  auipc        s0, 464938
                  slti         s11, t4, -722
                  srli         a6, t6, 4
                  slti         t1, s0, 165
                  xori         a6, s8, 789
                  srli         s0, a1, 11
                  ori          s5, s11, -1682
                  lui          s0, 964147
                  xori         t1, a0, 1807
                  sub          s0, s0, tp
                  xor          a3, a2, t5
                  add          s4, t4, a7
                  sltu         t6, t6, a5
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           a6, 0x80000000
                  li           t6, 0x80000000
                  li           t2, 0x0
                  li           t1, 0x80000000
                  li           tp, 0x0
                  li           s11, 0xb7f0b07c
                  li           s6, 0x744ef107
                  li           a1, 0x80000000
                  li           a7, 0xffffffff
                  auipc        a0, 334007
                  nop
                  add          t1, tp, t2
                  add          a0, tp, t2
                  lui          t2, 227126
                  nop
                  addi         t1, tp, 1903
                  auipc        a7, 976782
                  addi         t1, a1, -487
                  lui          tp, 474079
                  auipc        a7, 511713
                  auipc        a1, 64859
                  auipc        a6, 1025289
                  add          s6, a7, s6
                  nop
                  addi         s6, t2, 1485
                  sub          a1, s6, a0
                  addi         a6, t2, 1139
                  nop
                  auipc        a1, 628821
                  nop
                  addi         a7, s11, -1725
                  lui          t2, 1670 #end riscv_int_numeric_corner_stream_14
                  sll          a0, a2, zero
                  or           a6, s8, a6
                  xor          t3, a5, zero
                  auipc        s9, 424940
                  slli         a7, s0, 2
                  ori          a2, gp, 1737
                  srai         s1, a1, 25
                  sub          s9, s3, t4
                  slli         a2, s1, 20
                  slt          s3, s10, a4
                  auipc        a7, 1046728
                  xor          s7, a4, s1
                  ori          a4, s10, -279
                  xor          gp, t6, s4
                  auipc        a5, 131928
                  slli         a7, zero, 16
                  xori         a6, a5, -1918
                  andi         a6, s10, 1088
                  slti         a6, a3, -1577
                  slt          a6, a2, a7
                  slli         tp, t3, 12
                  addi         s9, gp, 1130
                  andi         s4, s6, 1993
                  ori          s4, t0, 1121
                  slti         t4, t5, -596
                  andi         t4, s4, -2015
                  ori          a2, zero, -1352
                  or           gp, s9, a1
                  or           a6, a1, s10
                  sra          s5, t4, s8
                  slli         t0, s11, 15
                  sltu         t0, t1, s9
                  srli         s0, zero, 19
                  sra          sp, s6, t6
                  or           t1, s11, a1
                  slli         t2, s6, 2
                  or           sp, s10, a6
                  auipc        tp, 561170
                  srai         t3, t1, 6
                  xori         s9, a5, 1232
                  auipc        s5, 369937
                  xori         t2, a0, 99
                  ori          t0, t4, -764
                  and          t1, t6, a6
                  xor          a6, a3, s8
                  addi         t3, t5, 139
                  xori         a3, gp, 1474
                  or           t4, a5, s11
                  andi         a1, s2, -1584
                  sll          s7, a2, a7
                  slli         s0, a3, 28
                  xori         a6, s11, 653
                  sll          s3, s2, s2
                  and          s3, zero, s4
                  sra          s3, s7, s6
                  ori          t2, t1, -249
                  sra          s3, t5, s4
                  sll          s10, t1, a7
                  sll          a1, a1, a4
                  sra          t1, a6, a7
                  sll          t0, a1, sp
                  auipc        s6, 1014286
                  srai         s4, t6, 28
                  sltu         a2, s0, s7
                  lui          sp, 25376
                  add          sp, a7, ra
                  srai         s6, s11, 14
                  lui          t0, 318120
                  slti         a7, a3, -1079
                  slti         zero, a4, -1364
                  sltu         a5, a1, s0
                  slli         a4, a4, 19
                  slli         t3, s5, 6
                  add          a7, sp, s2
                  or           s7, a3, s2
                  ori          s0, s10, 940
                  srai         a0, s4, 23
                  auipc        gp, 335697
                  and          s6, s4, s9
                  addi         zero, a3, 1452
                  srai         a5, a4, 26
                  slt          gp, t5, t3
                  slt          s0, ra, a1
                  add          t6, s7, a4
                  sub          zero, s4, t6
                  lui          s0, 268909
                  xori         s3, a7, 641
                  and          zero, s11, s11
                  andi         a4, tp, 155
                  sll          s4, t6, s5
                  lui          t3, 375503
                  lui          s1, 149279
                  slti         a4, a5, -52
                  addi         s10, a1, -1851
                  xor          s6, s11, t3
                  slli         tp, ra, 15
                  nop
                  and          s1, t5, s3
                  and          t6, s2, s7
                  nop
                  slti         s4, t2, -1772
                  srai         sp, sp, 22
                  andi         a2, a4, 25
                  xori         s6, a4, 1793
                  slti         s1, s0, -889
                  nop
                  or           gp, s3, ra
                  slt          a4, t1, s7
                  or           s6, s11, a4
                  srl          tp, t4, a0
                  sra          s0, s10, s1
                  sltu         t1, s5, s5
                  xori         t2, s3, -976
                  slti         s8, t5, 863
                  add          s9, a0, s1
                  andi         s4, s6, 966
                  sra          t3, a2, a7
                  nop
                  li           s9, 0xc93e01c6 #start riscv_int_numeric_corner_stream_5
                  li           s10, 0xfc4e1e8c
                  li           a2, 0xffffffff
                  li           s0, 0x80000000
                  li           a4, 0xffffffff
                  li           a0, 0xffffffff
                  li           a5, 0xad09f145
                  li           a1, 0x0
                  li           s4, 0xffffffff
                  li           a6, 0x0
                  add          s4, a6, a4
                  lui          a4, 173570
                  add          a6, s0, s9
                  addi         s9, s10, 1742
                  nop
                  auipc        s0, 135904
                  nop
                  auipc        s4, 905611
                  lui          a5, 1007379
                  auipc        a1, 91433
                  sub          s10, s4, a1
                  sub          a5, s10, a5
                  add          a4, a5, a5
                  nop
                  auipc        a1, 849890
                  auipc        s0, 429153
                  add          a1, s9, a6
                  addi         s0, a4, -924
                  lui          a1, 642684
                  addi         s4, s0, 507
                  lui          s10, 737072
                  sub          s9, s0, a0
                  lui          a4, 357972
                  auipc        a4, 1037195
                  addi         a5, s9, -1604
                  sub          s9, s0, s4
                  lui          a5, 79198 #end riscv_int_numeric_corner_stream_5
                  srl          t6, a0, a3
                  xori         sp, s10, 675
                  lui          a6, 453122
                  lui          t6, 856136
                  slt          a5, a3, a7
                  ori          sp, s0, -938
                  sltiu        gp, ra, 956
                  sll          a4, t1, s4
                  and          a4, t1, a0
                  lui          s5, 745729
                  auipc        s8, 643790
                  srai         a1, a3, 10
                  sub          s1, t5, a7
                  slt          s10, sp, a3
                  sltu         s6, s7, s7
                  sltiu        a2, s6, -432
                  lui          t3, 549591
                  srl          zero, a0, a7
                  andi         tp, s4, 1404
                  addi         s3, t3, 1427
                  andi         a6, s11, -1503
                  srl          s7, s1, s5
                  lui          a7, 856062
                  and          s10, zero, t5
                  nop
                  srl          t6, s2, s10
                  andi         s3, a0, 1740
                  auipc        a2, 71354
                  sltiu        s8, t1, -165
                  sub          a1, s6, a5
                  srl          t6, t1, a4
                  slti         a7, s2, -298
                  srli         s10, a2, 27
                  sll          s3, gp, a7
                  andi         s6, sp, -1807
                  ori          s1, s2, -1636
                  slli         a5, s10, 26
                  add          t2, s3, s10
                  slti         s9, a0, -1639
                  and          a0, a7, s5
                  sra          s10, a3, a1
                  ori          t2, t0, -1821
                  srl          zero, a4, sp
                  sub          s10, s6, s4
                  or           t2, t6, s10
                  sub          a0, s11, a2
                  ori          s6, zero, -566
                  slli         t0, sp, 16
                  or           s8, s1, s0
                  nop
                  srli         t3, sp, 24
                  auipc        s0, 607045
                  lui          s0, 105720
                  slti         a5, ra, 837
                  nop
                  ori          t4, ra, 533
                  or           s3, s4, s8
                  and          a0, t6, s11
                  srai         s7, t2, 18
                  sra          zero, t5, s8
                  or           s4, gp, s7
                  and          s7, s7, a1
                  slt          s5, a1, tp
                  sltiu        s4, s0, -201
                  slt          s1, t1, t3
                  slt          s6, s8, ra
                  sltu         t3, s10, ra
                  nop
                  and          s8, sp, sp
                  sltu         a0, s4, s0
                  sll          a0, a3, t3
                  srai         s10, t1, 16
                  xor          t2, s9, t2
                  xor          s0, s1, s7
                  sra          a1, s5, s4
                  auipc        t4, 406393
                  sll          zero, s11, a0
                  auipc        tp, 895277
                  srai         s6, t0, 8
                  sra          s4, s8, s9
                  xori         s3, t3, -1247
                  srl          s5, a0, t2
                  andi         a0, t2, -1864
                  add          t6, s8, tp
                  ori          s8, s10, -1330
                  or           s10, s2, ra
                  nop
                  slt          t3, s6, s8
                  and          a0, sp, s11
                  addi         a2, s1, 854
                  lui          s3, 678483
                  addi         s6, a4, 391
                  sll          a7, t6, a3
                  auipc        a0, 188669
                  sltiu        s7, t5, 1224
                  and          s8, ra, gp
                  sll          a6, s2, zero
                  add          s5, s0, t6
                  or           t1, a0, a1
                  or           s6, s10, gp
                  sra          t1, a0, s10
                  lui          s8, 151074
                  add          t4, t1, a4
                  srai         a1, s0, 21
                  sll          a3, s3, s1
                  xori         s9, t1, -1245
                  andi         a5, a0, -116
                  srai         s9, t0, 28
                  slli         s1, a4, 8
                  xori         a2, t3, 1282
                  xori         s11, s8, 1590
                  sra          s10, a1, s6
                  srai         s0, t2, 11
                  slli         s6, t3, 21
                  srli         s10, s1, 13
                  srai         s0, a4, 9
                  auipc        gp, 339281
                  sltu         a0, t5, s4
                  sltiu        sp, a2, -2010
                  ori          s0, t5, -1879
                  sltiu        tp, s7, 1179
                  or           a5, t0, a4
                  xori         t6, a3, -973
                  sll          t6, s3, a4
                  sltiu        s1, ra, 1072
                  sub          s3, a0, t4
                  srl          a6, ra, t5
                  auipc        tp, 10247
                  sra          s7, t5, t2
                  slli         s0, a7, 26
                  sltiu        a1, s5, 1704
                  srli         t2, t2, 13
                  srli         s0, a2, 22
                  sltu         gp, t0, a1
                  addi         s0, tp, 1288
                  srli         s7, a0, 16
                  sub          a3, sp, a6
                  and          s11, s3, t5
                  nop
                  auipc        t0, 803558
                  lui          s0, 344883
                  sub          a1, s8, s11
                  sltiu        a4, a2, 1631
                  lui          a1, 936211
                  sll          a5, ra, s0
                  or           s5, sp, sp
                  auipc        s4, 40833
                  slti         s1, a3, 809
                  ori          s8, s6, -1088
                  slt          s0, a5, a3
                  srli         a4, a3, 3
                  sltiu        t4, a2, 1397
                  auipc        a1, 707331
                  sltu         a6, a2, s2
                  srl          s5, t0, t3
                  srli         a5, s7, 23
                  and          t4, a7, s4
                  sra          s6, t1, a1
                  andi         a4, a4, 896
                  slti         a0, gp, -1002
                  xor          a4, a0, a6
                  andi         t2, a1, 699
                  sll          tp, tp, sp
                  lui          a1, 969872
                  srai         s11, s3, 28
                  and          s6, t4, a6
                  and          t4, s1, s9
                  auipc        t2, 454554
                  addi         t1, a0, -952
                  and          gp, a4, t5
                  sll          a7, a7, a4
                  xori         a2, s11, 1356
                  ori          sp, a5, 1186
                  srai         a6, s10, 18
                  sltu         a4, s5, t1
                  addi         s4, zero, -655
                  andi         t1, a5, 481
                  sub          a2, t0, t2
                  andi         t2, a7, 1568
                  sll          t3, t5, s4
                  and          s7, t1, gp
                  srl          a3, a2, tp
                  srli         tp, t2, 2
                  slti         s6, a3, -798
                  sra          t1, a4, a2
                  and          a6, s0, sp
                  srl          sp, s1, t0
                  auipc        a0, 809321
                  sltiu        s8, t6, 408
                  sltiu        a1, zero, -918
                  sltu         s8, ra, s7
                  srli         s4, a2, 2
                  sltu         s6, gp, s2
                  add          s3, s3, a1
                  and          gp, sp, ra
                  sub          s3, a1, s11
                  add          tp, ra, s11
                  sltu         a4, t0, a6
                  slti         a1, a4, 36
                  lui          a7, 843652
                  or           a0, a5, s9
                  slli         s1, s3, 19
                  sll          gp, s10, s7
                  srl          t1, s5, a1
                  auipc        sp, 165106
                  slt          a4, s5, a4
                  srl          t2, s7, a4
                  nop
                  srli         zero, a7, 30
                  and          s4, t6, gp
                  add          t0, t5, t6
                  sra          a1, t4, a1
                  slt          s0, s3, s10
                  sra          gp, t3, t6
                  xor          a3, a3, s6
                  slli         s9, s5, 27
                  slt          t3, s6, a0
                  auipc        s4, 827511
                  srli         zero, t2, 22
                  srai         a3, t1, 5
                  sltiu        sp, t4, -1678
                  slti         s3, a5, -967
                  ori          t2, a4, 710
                  srli         s11, t3, 29
                  andi         s5, t5, 1889
                  or           a4, gp, a0
                  add          a0, tp, ra
                  sra          a1, tp, tp
                  xor          t1, s1, ra
                  sub          a0, a1, t4
                  srl          s10, a0, tp
                  and          t4, s0, a7
                  lui          a4, 557401
                  slti         s8, t1, -1312
                  slli         t2, t4, 1
                  or           tp, s10, sp
                  and          gp, ra, t3
                  or           s4, a3, t0
                  srli         a7, s1, 2
                  srl          a1, sp, gp
                  auipc        a0, 472235
                  add          s1, a7, a2
                  nop
                  or           s6, a0, s3
                  add          a5, ra, t6
                  srai         sp, s11, 28
                  slti         tp, ra, 1740
                  slti         t4, s11, 1737
                  addi         s11, s5, 1768
                  srli         s4, t5, 18
                  addi         t6, a3, -1070
                  sll          t1, gp, s2
                  slli         s5, a3, 7
                  sll          t1, tp, s10
                  add          a7, s9, a3
                  sltiu        s8, t3, -1880
                  ori          t3, a6, 1493
                  srl          s8, t6, s4
                  slt          s9, t4, t2
                  or           s8, s9, t5
                  sltu         t6, s7, sp
                  srl          t1, a7, s7
                  sll          a0, s10, s2
                  andi         tp, s4, -1036
                  nop
                  xori         a2, t3, 240
                  slti         tp, t5, 709
                  xori         s7, t2, 2006
                  xor          t0, a1, s8
                  sltu         s8, s0, sp
                  sll          s10, s10, s9
                  sltu         a4, a3, s10
                  auipc        t3, 890622
                  sub          t4, tp, t5
                  nop
                  or           a0, tp, t2
                  srl          a3, t2, a1
                  xor          s7, tp, t6
                  slli         t6, s9, 12
                  ori          t2, a3, -1750
                  srai         s0, t5, 15
                  xor          s8, t2, s9
                  xori         t4, ra, -562
                  ori          s8, s9, -686
                  andi         s9, t3, -1629
                  lui          a7, 454650
                  slti         tp, a3, 1618
                  srai         s8, s3, 22
                  andi         a2, a4, 811
                  lui          tp, 939848
                  slti         s10, t4, -1688
                  sub          a1, t3, s1
                  sub          t4, a3, t5
                  srli         t0, s10, 25
                  xori         t1, t1, 63
                  xori         t6, t6, -1463
                  li           t4, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           a6, 0x80000000
                  li           a5, 0xffffffff
                  li           s6, 0xbb34c43a
                  li           s0, 0x0
                  li           a3, 0xd1d9946d
                  li           s1, 0xffffffff
                  li           s4, 0x0
                  li           a4, 0xd7ab812
                  li           s7, 0x0
                  sub          a5, s7, s4
                  addi         s6, a5, -533
                  sub          a3, a6, s6
                  sub          a5, s0, t4
                  addi         t4, a6, -688
                  nop
                  sub          s4, a4, s0
                  auipc        a4, 307983
                  lui          a6, 33120
                  lui          s1, 222065
                  lui          a4, 862545
                  sub          a4, a5, s6
                  addi         a4, s4, -343
                  add          s6, a3, s6
                  lui          s0, 941179
                  lui          a6, 20523
                  auipc        s0, 627261 #end riscv_int_numeric_corner_stream_3
                  xor          a3, s1, t4
                  or           s6, a2, t4
                  add          a3, s4, t1
                  srai         tp, t5, 31
                  sra          a3, a7, s8
                  slli         s9, s9, 0
                  slt          a1, zero, s11
                  sll          s11, a4, s5
                  add          t4, t5, a4
                  andi         s8, s3, -1228
                  auipc        a5, 545971
                  lui          a0, 273209
                  sll          s11, sp, s5
                  nop
                  add          s4, s11, s8
                  sll          zero, a7, t6
                  and          a0, s1, s7
                  slti         t6, s2, 1362
                  andi         t2, tp, 561
                  sltu         a3, a0, a6
                  sra          gp, a4, zero
                  srli         a3, gp, 31
                  srl          tp, t1, tp
                  sra          s11, s6, s3
                  andi         a6, tp, -90
                  sub          s5, a6, s7
                  xori         t2, s7, -991
                  srl          s8, s6, s1
                  andi         t2, zero, -46
                  slli         a7, sp, 23
                  ori          s8, a7, -290
                  slli         a5, ra, 12
                  slli         a0, ra, 7
                  lui          s10, 619589
                  ori          tp, t4, -1542
                  xori         s1, a3, -1743
                  sll          a1, s8, tp
                  add          s10, s1, sp
                  sltu         a1, a2, sp
                  addi         tp, s10, 232
                  add          a5, a1, a5
                  slti         s10, t5, 821
                  sll          a0, s9, a0
                  xor          a1, t1, ra
                  addi         s11, t4, 75
                  xor          t6, gp, s2
                  lui          zero, 23715
                  sltu         s7, s4, a3
                  and          a6, s5, s2
                  addi         s11, a4, -225
                  nop
                  or           t4, a5, t0
                  addi         s10, s4, -772
                  slti         s8, s0, -1163
                  lui          s5, 104188
                  sub          tp, s6, s11
                  lui          s11, 838514
                  slli         s8, s11, 22
                  xori         a2, s6, -504
                  xori         a2, s2, -1546
                  srli         a1, s10, 6
                  sltu         s9, a7, s2
                  srai         tp, t0, 22
                  or           zero, a6, t2
                  slt          s8, s9, a6
                  nop
                  slt          s11, t6, t1
                  sll          t0, s10, s8
                  sltu         s11, t2, a3
                  sub          t0, s3, t3
                  ori          s1, t5, 756
                  srli         s7, ra, 16
                  sll          t2, gp, t3
                  slli         s6, t0, 3
                  slti         s0, a3, -1970
                  slti         a1, s9, -1333
                  srl          a0, sp, a2
                  xor          s10, t0, zero
                  auipc        s9, 384164
                  nop
                  srli         a5, t5, 31
                  slt          a5, s8, t2
                  and          zero, s7, s10
                  srl          a1, s10, s10
                  sll          s6, a0, s11
                  ori          t2, a2, -749
                  sll          t1, s3, a4
                  andi         a4, s9, 941
                  ori          a1, a2, 877
                  add          a4, s5, a2
                  sll          tp, a1, a6
                  ori          s8, s0, 657
                  xori         s0, t5, 1085
                  srai         t4, a7, 12
                  sltu         t3, s8, a3
                  nop
                  sub          a7, a3, a0
                  srli         s9, s6, 22
                  xori         s1, s5, -1910
                  or           a0, a1, a3
                  or           a1, a1, s1
                  srli         s11, a6, 25
                  nop
                  and          a6, zero, a3
                  add          a3, t4, a7
                  addi         t0, ra, -1479
                  sltu         s11, s5, s6
                  and          tp, t0, t0
                  or           s7, s3, s8
                  srl          s7, s6, zero
                  sltu         sp, s11, gp
                  slt          t1, s8, a1
                  sra          a7, a4, tp
                  sltu         s5, a6, t5
                  sll          t4, a7, s2
                  sub          a3, gp, sp
                  auipc        a7, 396433
                  slli         s8, a3, 4
                  sra          a3, s6, s9
                  slti         t6, t3, -1645
                  sll          zero, ra, sp
                  nop
                  and          s6, sp, s4
                  and          gp, t0, a3
                  xori         a2, a2, -784
                  sltu         a2, t3, t1
                  auipc        s4, 222729
                  sub          a7, t2, a5
                  srli         s5, t1, 6
                  xor          tp, a5, a5
                  andi         a1, t2, 1031
                  slt          t3, a6, sp
                  slt          s6, a5, s8
                  sub          t2, a0, t6
                  srai         a7, a2, 8
                  xori         s11, a5, -1834
                  xor          sp, a0, a6
                  slli         t6, s6, 8
                  srli         zero, zero, 1
                  xori         s7, a3, -70
                  nop
                  andi         t1, s9, -667
                  nop
                  auipc        a2, 971669
                  addi         zero, a3, -1260
                  nop
                  lui          a3, 1011152
                  or           t6, s5, ra
                  sll          a7, t2, s10
                  nop
                  xori         a0, s9, -1829
                  slt          s6, s2, a7
                  slli         s11, s4, 16
                  ori          s1, a4, -1904
                  slti         a6, t1, 1588
                  sra          t1, gp, s4
                  slt          s6, s11, a7
                  sltiu        s3, a4, -1826
                  sra          a5, zero, t1
                  ori          a4, s1, 1787
                  and          a7, a6, s9
                  xor          a1, s10, t0
                  srl          t4, s4, a5
                  slti         t6, sp, 874
                  slt          s0, s0, t0
                  sltu         s8, t4, s4
                  add          a6, t0, t4
                  add          s9, a1, gp
                  sll          t2, gp, zero
                  sltiu        a0, sp, -88
                  ori          a7, s0, -1704
                  or           s0, a6, a6
                  sll          a7, t5, a1
                  slti         tp, s8, -653
                  or           a0, a3, t5
                  sltu         a2, a4, t2
                  and          s5, s4, a7
                  srli         a3, s11, 23
                  ori          s10, sp, 1374
                  sll          s0, a2, t2
                  slti         t2, t2, -1934
                  lui          t4, 485370
                  and          t0, a1, s6
                  sra          t6, s5, s0
                  sltu         s9, t1, s2
                  slti         a1, a6, 478
                  sra          a3, s3, zero
                  sll          t1, s9, s11
                  lui          gp, 281574
                  addi         s3, t2, 1268
                  sltiu        tp, s10, -657
                  slt          s7, s3, tp
                  sltu         s9, t5, a1
                  xori         t3, s5, -590
                  sltu         t3, t5, t6
                  or           s1, s2, s1
                  sltu         a7, a2, a2
                  lui          tp, 553234
                  xori         a3, s9, 1947
                  xor          s9, gp, s9
                  sltu         s8, t0, s3
                  sltu         a6, sp, a0
                  srli         s11, ra, 20
                  auipc        t6, 16519
                  and          s11, a7, t2
                  slti         a5, t6, -1677
                  srai         t4, s6, 0
                  addi         s11, a3, 1103
                  slli         s4, zero, 18
                  srl          sp, a4, t1
                  srli         s1, sp, 6
                  srli         s4, s8, 13
                  slt          s9, tp, ra
                  srli         s5, a5, 26
                  addi         a6, ra, -1836
                  add          t4, s2, s3
                  addi         s7, s4, 586
                  sltiu        a5, a1, -1769
                  srai         a7, s5, 26
                  slt          tp, t4, s1
                  sub          t1, a7, tp
                  sub          gp, s4, s8
                  srai         s3, a7, 10
                  or           a3, gp, s2
                  ori          t6, t0, 1930
                  slti         s0, t1, -1548
                  slli         a4, gp, 18
                  xori         sp, a5, -403
                  slli         gp, t6, 17
                  srli         a1, s3, 23
                  lui          s10, 265774
                  sll          s10, s11, a6
                  sra          a7, s3, a2
                  xori         a3, t0, 362
                  sltiu        s4, t2, -1741
                  srai         gp, s1, 7
                  xor          s10, s11, s8
                  slti         t0, gp, 537
                  sra          t2, s4, ra
                  slt          s11, t4, s6
                  srl          a0, a0, t0
                  nop
                  sltiu        s7, t3, 1085
                  addi         t4, s7, -492
                  lui          a0, 641338
                  xori         sp, ra, 312
                  srl          gp, s10, s11
                  add          zero, gp, a3
                  xor          t4, t0, zero
                  addi         sp, t0, 1380
                  sra          s7, s8, s4
                  slli         a0, t0, 7
                  slli         tp, a1, 13
                  xor          a0, a6, t2
                  lui          a0, 282080
                  or           a2, s3, a2
                  sra          t0, s4, a0
                  sll          a5, sp, a3
                  auipc        a2, 209098
                  srai         t3, a5, 25
                  auipc        s3, 165654
                  sub          t6, a7, tp
                  andi         t2, a5, -1864
                  sra          a1, s5, t4
                  sub          a7, s0, s3
                  auipc        t2, 260979
                  slli         a4, s2, 25
                  srl          s9, t5, s5
                  auipc        s6, 620172
                  add          a2, s8, s1
                  sltiu        t1, gp, 78
                  sra          t6, t5, s8
                  ori          s0, t6, -437
                  srai         t2, s8, 11
                  sll          a1, sp, a7
                  addi         sp, t0, 1796
                  slli         t1, s7, 3
                  nop
                  srli         a0, s5, 14
                  srai         gp, s0, 30
                  srai         a5, t3, 0
                  add          t2, a1, s0
                  add          a1, s8, s5
                  or           s11, a6, ra
                  sltu         gp, s2, a7
                  nop
                  addi         t1, s6, 1503
                  auipc        a7, 810053
                  add          s7, s1, t4
                  slli         s10, s10, 24
                  andi         a6, s0, -1955
                  sltiu        a4, t5, -898
                  srl          s0, s1, zero
                  auipc        s11, 53385
                  slli         a0, s4, 13
                  xor          a1, a3, a2
                  sub          s0, t4, tp
                  xor          s8, a6, a7
                  srl          a6, s7, a3
                  or           a2, t2, a6
                  sra          tp, t3, s1
                  or           sp, t2, t3
                  xori         a6, s8, 954
                  xori         t6, s2, -260
                  srai         s4, s3, 20
                  sll          t1, a1, a1
                  slli         a6, s5, 12
                  srai         tp, t3, 27
                  srl          a5, s6, t6
                  xor          s11, t6, t4
                  andi         a6, s4, -689
                  sltu         zero, a5, ra
                  auipc        t0, 896417
                  ori          a5, a4, -1819
                  sra          s10, s11, a7
                  sub          gp, t1, a3
                  sra          s3, a0, a3
                  andi         t6, t3, -262
                  xori         a6, t6, -573
                  addi         t4, t5, 389
                  auipc        a1, 218693
                  slt          tp, t6, s8
                  sltu         s8, s0, a4
                  xori         a7, sp, 427
                  xori         s7, s9, 1106
                  nop
                  slti         zero, a6, 576
                  slli         s0, s10, 8
                  srli         t6, s11, 4
                  srai         s4, t0, 8
                  lui          s0, 37387
                  addi         t6, a0, 55
                  add          s8, s0, s5
                  slti         a7, s1, 170
                  andi         t0, tp, -1395
                  slli         s0, s1, 24
                  auipc        sp, 346815
                  slti         a4, s9, -446
                  addi         t3, s11, -1150
                  addi         tp, s11, 1517
                  sll          t0, a5, t2
                  ori          s7, a3, 1348
                  add          a6, a1, t3
                  xori         t2, s1, -763
                  sll          a7, s7, s4
                  srl          zero, s4, s10
                  or           t2, t4, t6
                  andi         sp, t3, 923
                  sub          s8, a3, s11
                  auipc        s7, 346597
                  andi         t4, s9, 983
                  srl          t3, s11, t4
                  ori          s1, gp, 244
                  slli         a7, a3, 2
                  srai         s0, s8, 24
                  slli         tp, a5, 11
                  srli         a2, s8, 18
                  and          a4, a6, s1
                  andi         t2, s6, -1826
                  srai         gp, ra, 7
                  sll          a7, t2, s8
                  sltiu        a0, s11, 1901
                  sub          a7, t5, s1
                  andi         a3, t1, -1467
                  sra          s7, s4, s4
                  auipc        tp, 389056
                  srl          s4, s7, a7
                  sub          a1, s8, s0
                  sll          t1, ra, zero
                  sltiu        a1, sp, 987
                  sltiu        s11, t1, 921
                  ori          a2, t3, -1529
                  auipc        t1, 174458
                  sra          t0, s4, s10
                  srli         s0, t3, 21
                  xor          a6, t0, a5
                  nop
                  srai         s7, s10, 30
                  srli         s1, a6, 0
                  nop
                  or           s11, s6, a0
                  srai         zero, t6, 5
                  or           t0, t0, t3
                  nop
                  slt          s11, a7, s9
                  andi         s0, a2, -1237
                  srl          s7, s0, a2
                  srai         a6, s5, 13
                  lui          s5, 241204
                  ori          t3, s2, -268
                  srai         s8, s3, 24
                  ori          s7, gp, 360
                  sltu         a7, s0, a5
                  xori         s5, s7, -1543
                  ori          s4, gp, -492
                  sra          t4, ra, a1
                  nop
                  slt          s10, s2, t4
                  sltu         tp, t1, t5
                  srai         a2, tp, 24
                  sll          s10, s11, zero
                  sltiu        s5, a6, -1702
                  slli         a5, a3, 14
                  or           s4, s1, s0
                  ori          a3, a3, -1994
                  srai         a3, s9, 16
                  slti         s7, a3, 1639
                  addi         a7, t2, -392
                  nop
                  sub          s3, t1, s8
                  xor          a0, s2, s2
                  slli         s5, t3, 25
                  slli         s3, sp, 11
                  slti         a0, gp, -486
                  xor          a6, s1, sp
                  sltiu        t2, t1, 49
                  xori         s10, t2, -2030
                  srli         s10, s2, 8
                  lui          a5, 340449
                  srai         t3, s7, 31
                  lui          s5, 797282
                  slti         t1, ra, -382
                  srli         a7, t4, 8
                  or           a6, a5, s3
                  sub          s6, a3, a2
                  nop
                  slti         t3, tp, -1036
                  and          s6, t5, s3
                  auipc        t3, 733285
                  srl          s10, s1, s6
                  lui          s0, 718572
                  slt          a7, sp, s0
                  xori         t1, s3, 709
                  sltu         s9, tp, a4
                  xor          s3, s11, t3
                  nop
                  sub          a2, s5, s3
                  lui          s6, 45234
                  xori         sp, a1, 419
                  slti         t1, a6, -761
                  sub          a4, t3, ra
                  ori          s7, tp, 246
                  slti         a3, s2, 1865
                  sra          s5, s4, s8
                  srai         s3, a2, 2
                  sra          s4, sp, zero
                  addi         s5, s3, 90
                  srli         a3, s2, 4
                  srai         a0, t3, 8
                  lui          a0, 337997
                  srai         t4, t2, 20
                  nop
                  slli         sp, ra, 17
                  nop
                  addi         s9, s5, -1581
                  ori          t2, zero, -142
                  xori         s7, s8, -1127
                  auipc        t0, 958902
                  sltiu        s3, a2, 939
                  lui          t4, 209943
                  auipc        sp, 835868
                  auipc        t4, 628668
                  or           a4, t5, s5
                  slt          s6, s2, t3
                  sltiu        t4, s5, -102
                  or           s8, s2, tp
                  ori          gp, a5, 621
                  lui          s7, 14375
                  auipc        t1, 2929
                  auipc        sp, 496902
                  slli         s9, a2, 31
                  ori          s4, s3, 1656
                  and          s6, t6, a6
                  and          gp, s11, s0
                  nop
                  sub          a4, a5, t6
                  sltiu        s7, s3, -1162
                  sra          s11, a1, a1
                  slti         t3, s1, -1534
                  sub          t2, s1, t3
                  sra          zero, t1, a1
                  sub          s3, a3, a7
                  andi         a3, a0, 101
                  and          a1, t1, s1
                  nop
                  srli         a1, s5, 14
                  andi         sp, s9, 238
                  auipc        s7, 190831
                  auipc        s5, 388384
                  srai         s3, t1, 9
                  sltu         s10, t0, s1
                  sltiu        a2, a4, 486
                  andi         a6, zero, -1564
                  sub          a1, t0, tp
                  addi         s6, s2, 2038
                  lui          s5, 674849
                  sltiu        s1, a7, -1469
                  sll          t6, t5, s10
                  sll          s3, a3, sp
                  nop
                  lui          s5, 696433
                  nop
                  sra          sp, s2, t0
                  slti         gp, s4, 912
                  nop
                  and          a7, s3, t0
                  addi         t0, s8, -365
                  lui          t6, 990127
                  add          a7, a5, zero
                  auipc        a3, 221639
                  slt          s3, s2, s11
                  addi         s10, a3, -1477
                  sra          t3, s7, a1
                  add          a5, a6, t4
                  sll          s8, s5, s8
                  sll          t0, t1, t3
                  sll          a0, a1, t6
                  nop
                  andi         s11, a0, -597
                  sra          sp, s5, a0
                  andi         s3, s6, 334
                  sub          s4, t5, s11
                  xori         sp, a0, 986
                  or           a6, a0, zero
                  srl          s11, t5, a7
                  ori          a3, sp, -706
                  and          s11, s4, a4
                  auipc        s11, 602513
                  slli         a4, t5, 10
                  add          t4, s11, tp
                  xori         zero, s4, 1470
                  ori          a3, s0, -249
                  or           t1, a5, t2
                  andi         tp, a5, -479
                  slti         a0, tp, -188
                  ori          a5, s7, -1374
                  srl          s10, s2, s9
                  nop
                  xor          a0, a4, s10
                  andi         a3, a4, -688
                  and          t3, zero, gp
                  sub          s5, ra, t2
                  add          s8, s3, a6
                  nop
                  srai         a1, gp, 31
                  slli         a3, ra, 9
                  srl          t0, t2, s9
                  lui          t0, 285423
                  sll          zero, tp, gp
                  sll          a4, zero, s10
                  sub          a7, a6, a5
                  srai         zero, a6, 24
                  andi         s0, t1, 963
                  srai         t0, s3, 7
                  auipc        a6, 829441
                  sub          s5, a6, t1
                  sll          s10, s6, s9
                  slt          a4, s2, s8
                  slti         s7, s0, -442
                  slti         s10, a5, -1734
                  srl          s6, s7, s7
                  sra          t3, t1, s7
                  ori          sp, s1, -187
                  andi         a5, s6, -883
                  andi         t3, t6, -1503
                  sub          s10, s3, t3
                  or           a3, s9, s9
                  xor          s3, gp, s2
                  add          a6, t6, gp
                  slti         sp, t5, 1652
                  sll          t4, gp, a0
                  sra          s8, a7, t3
                  lui          s4, 844270
                  ori          s8, s1, -874
                  slti         t0, s3, 1163
                  sltiu        s5, a7, -333
                  slt          t6, a7, zero
                  lui          a2, 899448
                  add          a0, s7, s4
                  nop
                  or           gp, s0, t2
                  srli         s10, s4, 25
                  or           s9, t3, s1
                  xori         s6, a4, 1727
                  add          a5, s8, t5
                  or           sp, t6, s0
                  addi         zero, s5, -520
                  srai         s5, t1, 17
                  slli         a2, a6, 24
                  xor          t2, a6, tp
                  sub          s4, a0, t6
                  xori         zero, t5, -1902
                  nop
                  nop
                  slt          s11, s1, t4
                  and          zero, t1, s9
                  ori          t3, a4, 1111
                  slli         s11, t1, 2
                  ori          s7, zero, 220
                  sub          a2, t6, s0
                  slt          zero, zero, s5
                  srli         t0, gp, 28
                  slt          t2, s0, t6
                  srli         t6, a4, 20
                  andi         t2, s4, 2037
                  sll          zero, s10, t6
                  xori         s10, t6, -1166
                  slti         tp, s5, 278
                  sltiu        t2, s7, 1120
                  slti         a5, s8, 973
                  lui          a3, 618247
                  ori          a0, s8, -1555
                  sra          sp, a4, a2
                  or           sp, s10, t0
                  addi         t3, t5, -6
                  slt          a1, a1, t5
                  srai         t1, t3, 16
                  lui          s8, 1018531
                  sltiu        a4, t6, 1514
                  ori          a5, t5, -1578
                  sltiu        tp, a2, -1181
                  sra          a3, sp, tp
                  srai         t3, zero, 22
                  addi         a6, t3, -1464
                  slt          s10, zero, s7
                  sltu         gp, t6, s1
                  lui          a7, 289472
                  slt          s11, sp, t0
                  nop
                  sra          s1, a4, a0
                  sltu         t2, t1, a6
                  xor          a7, t5, s5
                  nop
                  slli         t6, a0, 0
                  or           t3, a5, t5
                  lui          s4, 231475
                  sra          a3, t2, s4
                  or           a1, t5, a2
                  nop
                  add          t4, t1, t2
                  andi         s7, s5, 513
                  or           a3, s1, s11
                  slt          s0, tp, s7
                  slti         a1, a4, 686
                  sra          a5, a7, gp
                  sltiu        a0, s1, -509
                  sra          s5, t6, s3
                  andi         t3, tp, 551
                  srl          s8, a3, t4
                  slli         s0, a7, 15
                  slli         t2, t6, 6
                  srli         s0, t0, 29
                  sra          t1, a3, a2
                  srl          s0, a7, a7
                  ori          s5, s2, 1581
                  xori         a1, zero, 1613
                  nop
                  sltu         tp, sp, s5
                  xori         a1, a4, 292
                  addi         a3, t0, -1958
                  sub          s6, s3, a2
                  sll          s7, a3, a7
                  addi         tp, s4, -586
                  sra          s0, s0, a3
                  sltiu        s4, a5, -392
                  slli         a5, t1, 1
                  nop
                  sll          s8, ra, s6
                  slti         s10, a3, 702
                  addi         s1, s9, -1086
                  srl          t3, s2, s8
                  nop
                  andi         s4, t6, 345
                  sll          a2, t1, tp
                  ori          a6, s11, -1986
                  nop
                  slti         s0, a7, -774
                  sltu         a1, s4, t5
                  and          a1, s7, a7
                  addi         s4, gp, -1158
                  slli         t6, s0, 3
                  ori          t1, s3, 1879
                  xor          a6, t2, s11
                  sub          a2, s3, s9
                  slli         a3, ra, 14
                  srli         s11, s3, 13
                  srai         s0, s3, 28
                  auipc        s8, 558770
                  add          t1, s9, a5
                  slti         sp, t0, 1808
                  addi         s5, s3, 156
                  lui          t3, 472753
                  xori         a6, a6, 1291
                  addi         a7, a0, -1356
                  slti         s5, t2, 1583
                  add          a7, ra, s0
                  sra          s3, s2, a5
                  or           s7, t0, s1
                  xor          s10, s8, a3
                  srai         s3, t2, 20
                  andi         a2, s1, -442
                  srai         s6, a4, 28
                  slt          s0, gp, s1
                  srli         s11, a3, 3
                  ori          t1, a6, 1623
                  and          t2, t4, sp
                  nop
                  xori         tp, t4, -274
                  xori         a4, gp, 1647
                  nop
                  sub          s11, a2, t0
                  slli         a2, t2, 0
                  sltiu        a1, a2, 883
                  addi         a3, s3, -681
                  lui          a1, 573176
                  sltu         s10, s8, s6
                  and          a3, t5, s11
                  and          gp, s6, s2
                  ori          t4, t0, -910
                  xori         zero, t6, -768
                  sll          sp, s7, t6
                  xori         a7, s4, -939
                  sltiu        t1, s4, 339
                  xor          a4, s1, a0
                  sll          t3, a6, s8
                  or           a7, s0, t5
                  xori         t2, t2, 1263
                  add          t2, s11, s0
                  or           s4, s11, t0
                  xori         t3, s11, 1214
                  srl          t0, a3, s10
                  slli         t6, a6, 19
                  andi         s10, t1, 1542
                  or           s5, zero, zero
                  srli         s9, gp, 12
                  srl          gp, ra, a2
                  srl          zero, s1, t0
                  xor          a2, a5, t0
                  ori          t6, a5, -1557
                  sll          t3, s2, a1
                  ori          s11, s9, 2039
                  or           a5, s2, tp
                  or           s10, a5, sp
                  srai         a3, a3, 6
                  slti         s5, a4, -228
                  ori          s10, t0, -642
                  or           s1, t0, zero
                  sra          gp, zero, s7
                  sll          sp, s8, s2
                  sub          t0, s7, t0
                  or           s0, t4, s0
                  srai         a0, t1, 31
                  and          zero, a1, s2
                  sltiu        gp, s1, -726
                  srai         s6, ra, 2
                  nop
                  sll          s9, sp, gp
                  xori         s11, ra, -1666
                  slt          a5, zero, a0
                  auipc        a1, 84743
                  slt          tp, ra, s11
                  slti         t1, t4, -1899
                  ori          s4, a2, 363
                  sltu         t4, s3, t2
                  slli         t6, s11, 14
                  slli         s1, s9, 28
                  addi         s0, a3, -1023
                  auipc        s0, 410632
                  sub          s11, t0, t4
                  slli         sp, a3, 19
                  addi         gp, s2, -1196
                  or           t4, a6, t2
                  ori          s11, a6, 667
                  add          a4, s4, sp
                  andi         a5, s6, 72
                  addi         a6, s3, -897
                  srl          a7, s5, t3
                  ori          zero, a1, 327
                  xor          s0, a4, s2
                  add          s5, a2, t6
                  add          a2, t2, t2
                  srl          t4, t4, t5
                  slti         a2, t3, -1829
                  nop
                  or           s5, s2, s6
                  srai         sp, a1, 29
                  srai         a7, t6, 7
                  sll          a2, a3, s1
                  xori         a6, a1, -1370
                  xori         s4, gp, 1941
                  nop
                  andi         s7, a2, -244
                  sll          a6, s2, s2
                  slti         a1, a0, 1740
                  nop
                  and          tp, s10, a4
                  sub          a2, t6, a5
                  sltu         s4, zero, s4
                  slt          zero, s6, tp
                  slt          t2, a6, gp
                  lui          t1, 506597
                  ori          zero, a0, -1172
                  srl          a1, s2, s4
                  and          tp, s1, a4
                  sll          a7, s11, s3
                  auipc        a4, 902195
                  xor          t2, s4, sp
                  sub          tp, t4, a6
                  srl          t4, s7, a3
                  srai         tp, s11, 16
                  srai         a3, t6, 23
                  lui          s5, 971669
                  or           zero, s4, t4
                  sra          s5, gp, t0
                  slli         sp, s7, 28
                  slti         t4, a3, 1269
                  slli         a1, a6, 22
                  auipc        t6, 928526
                  srai         zero, s4, 8
                  xori         a0, s1, -1976
                  nop
                  sra          sp, a4, sp
                  lui          t0, 52328
                  addi         a5, t1, -1286
                  xori         zero, t3, 1740
                  sll          a0, t2, sp
                  sltiu        s10, t5, -1648
                  slt          s8, tp, s0
                  lui          zero, 496476
                  sra          s9, s0, s0
                  sll          s1, s6, zero
                  srl          t3, s3, a2
                  srl          zero, t0, a2
                  lui          t2, 91438
                  or           s1, a6, s2
                  slli         s8, a6, 24
                  andi         a7, a1, 644
                  slti         s5, s2, -1827
                  sra          t2, t5, a6
                  andi         a3, s1, 69
                  lui          a5, 61604
                  lui          a2, 546926
                  andi         s5, t4, -1599
                  slt          t6, s5, s8
                  nop
                  andi         s6, s10, 1350
                  nop
                  sltu         t3, a5, s7
                  srai         t2, a6, 6
                  and          s10, t4, a6
                  or           t4, s0, s2
                  nop
                  lui          s6, 223042
                  and          s8, s4, s9
                  addi         t6, s11, -1674
                  sra          t2, t1, s5
                  andi         s8, ra, -370
                  nop
                  nop
                  slti         tp, zero, 73
                  srai         s6, tp, 18
                  srli         s1, a3, 21
                  srai         t2, a5, 9
                  sub          s10, gp, a6
                  srli         a2, t4, 18
                  sltiu        t2, s0, -1780
                  lui          a2, 141545
                  slti         t0, s2, -1020
                  addi         s10, gp, 1665
                  or           a0, sp, ra
                  xor          t6, sp, s5
                  xori         t6, sp, 627
                  slti         s4, t2, 1369
                  sltiu        a2, s8, -914
                  addi         t0, s10, 463
                  lui          s4, 712639
                  addi         a2, sp, -1445
                  xori         tp, s2, 224
                  xori         t2, a2, 259
                  and          tp, a0, a6
                  ori          s5, s10, 646
                  sll          a6, s4, tp
                  sltiu        s3, s5, -520
                  add          s7, s5, s10
                  xori         s7, a3, 1193
                  slt          tp, s7, s0
                  xori         s0, sp, -1529
                  auipc        gp, 903540
                  add          a1, t5, t0
                  sub          s6, s9, t6
                  slt          t2, s0, t1
                  lui          s8, 964453
                  slti         zero, a4, 97
                  sll          gp, s0, a3
                  and          s8, zero, a2
                  or           a5, s0, a7
                  slli         a5, s7, 29
                  sltu         t2, s8, a1
                  sub          s0, s10, s11
                  auipc        s7, 150482
                  srli         t2, a1, 26
                  slti         a5, t3, -165
                  ori          t2, a2, -413
                  and          s9, sp, tp
                  sll          a7, sp, tp
                  ori          t4, a0, 1561
                  srai         s6, a3, 29
                  or           a6, s1, t4
                  srli         t6, t1, 19
                  nop
                  sra          s10, t6, t5
                  sra          a3, tp, a6
                  slli         t0, gp, 3
                  srli         a0, a4, 28
                  and          t1, a6, tp
                  and          sp, s10, s0
                  xor          s11, sp, t5
                  sll          s6, zero, s5
                  xor          t0, t4, t5
                  slti         t2, t5, -163
                  sub          s3, sp, a1
                  lui          a3, 458895
                  slt          a3, s5, s2
                  sra          s8, t3, a7
                  xor          s7, t1, t6
                  sltiu        a3, t0, -1754
                  andi         s9, a3, -1929
                  nop
                  sll          s11, a3, s5
                  lui          s0, 1023490
                  srai         a7, s11, 24
                  slli         s8, a1, 28
                  addi         s4, s3, 937
                  slt          t0, s10, a5
                  xor          s3, s6, a7
                  xori         s3, s3, 29
                  xori         zero, t5, -957
                  and          s10, ra, s9
                  slti         s9, t4, 1834
                  slli         s10, a1, 4
                  slti         t6, t2, -1974
                  and          s5, s2, s11
                  or           s9, s9, t3
                  sra          a5, s6, ra
                  nop
                  auipc        gp, 144768
                  xori         a3, a4, -1951
                  and          s10, sp, s6
                  slt          a2, s2, t3
                  srl          a5, a4, t0
                  srl          a4, a0, t5
                  or           s10, t2, s10
                  xori         a6, a6, 1080
                  xori         s9, a5, -939
                  sra          s11, ra, a7
                  xori         s9, tp, -1116
                  sll          s10, ra, t5
                  addi         s11, s0, -1143
                  or           a3, t6, sp
                  sra          a3, t5, t4
                  ori          a3, a0, 667
                  addi         t4, s0, -1582
                  slt          a5, ra, a6
                  srai         s7, t6, 15
                  nop
                  sltiu        t1, t3, 1450
                  sub          t1, s10, ra
                  auipc        sp, 563520
                  xor          sp, a7, a7
                  and          t2, t5, t2
                  srl          s1, sp, gp
                  add          a3, tp, s8
                  nop
                  sub          gp, t5, a1
                  sltiu        gp, s0, -1236
                  srli         a0, t5, 26
                  sltiu        t0, a1, -1503
                  slli         t2, a1, 5
                  xori         a2, tp, 1453
                  slli         t2, s4, 17
                  addi         s1, s5, 1594
                  and          s8, zero, t3
                  add          t2, s4, a4
                  srli         a3, t5, 6
                  add          a3, s1, a4
                  add          s11, a0, a5
                  slti         s4, a1, -256
                  sub          s6, a7, a4
                  srli         s10, zero, 12
                  sub          tp, a1, t5
                  slli         a4, s3, 11
                  sub          t0, s8, t6
                  srai         s4, a2, 23
                  auipc        t0, 511181
                  slt          sp, t5, a7
                  xori         a2, s4, 1431
                  sltiu        a3, a3, -1545
                  sll          s8, a5, t6
                  slt          t0, a0, s2
                  sub          sp, a4, t4
                  sra          s4, a6, a1
                  sltu         a0, s2, s8
                  sltu         a6, a4, a2
                  add          a7, a0, gp
                  srl          s7, s9, s6
                  and          a3, a4, s8
                  addi         s4, a4, 1813
                  ori          a3, s2, -1128
                  slt          a1, s6, tp
                  sltu         gp, s11, s4
                  xor          s4, t2, s9
                  or           sp, t2, a7
                  lui          zero, 374974
                  ori          zero, a1, 1112
                  andi         s1, t2, -1486
                  slti         t3, s9, 362
                  sra          s9, s0, gp
                  lui          a4, 833262
                  slti         s1, t5, 1883
                  sll          zero, s9, a2
                  nop
                  lui          t2, 1004555
                  auipc        a1, 890581
                  auipc        s6, 402368
                  or           zero, ra, s9
                  and          zero, a0, a7
                  xor          a3, s4, s9
                  sub          a3, t6, a1
                  add          s10, t4, s9
                  addi         tp, t1, -269
                  and          s9, t2, ra
                  srli         a4, s6, 7
                  sra          a3, a2, s10
                  xor          a7, s4, a0
                  slti         s9, a1, -741
                  slli         a2, a4, 4
                  lui          s7, 196085
                  xor          s4, s10, s4
                  xori         a7, t0, -678
                  srai         t1, s2, 28
                  sub          s8, t2, s0
                  or           tp, a7, tp
                  lui          gp, 242338
                  lui          gp, 922237
                  addi         s0, t0, -1071
                  lui          s4, 665892
                  slti         s7, a6, 23
                  srli         t2, zero, 22
                  or           a0, a2, a4
                  xori         a1, t2, 903
                  slt          a5, a7, zero
                  or           a6, s10, t1
                  slti         a3, a1, 1787
                  xor          s7, s3, s1
                  srli         t3, a1, 7
                  srli         t6, a3, 19
                  xori         a5, s8, 1230
                  sltu         sp, sp, a7
                  xor          s7, sp, sp
                  sltiu        s11, t4, -1224
                  sra          s4, a3, s3
                  srl          s6, s2, t2
                  sltu         s11, t4, s11
                  addi         zero, s11, -709
                  sltu         tp, t5, t3
                  sltu         s9, a6, t0
                  add          s3, a4, t1
                  sltiu        s10, tp, 951
                  xor          s11, tp, zero
                  srl          t4, t2, a6
                  lui          a5, 157697
                  srai         s1, t3, 24
                  slt          tp, s7, a3
                  srli         zero, a7, 30
                  xor          zero, a7, sp
                  srl          a2, a1, t3
                  slli         a5, s0, 18
                  slti         a3, s4, 31
                  srl          sp, t0, ra
                  and          a1, s11, t2
                  andi         a2, a0, -1503
                  slti         s4, t2, -43
                  srl          a7, ra, s1
                  srai         s11, t4, 11
                  or           a4, sp, tp
                  slti         a7, a2, -1908
                  xori         t2, t3, -2031
                  nop
                  ori          t0, s3, -78
                  andi         zero, t0, -1703
                  nop
                  srli         s0, s8, 6
                  srai         s5, t2, 6
                  sra          s6, a7, s8
                  sltu         s5, s8, s9
                  sltiu        a6, a7, 942
                  sub          s11, s0, s2
                  xori         a3, s3, -556
                  and          s0, t1, gp
                  slli         a2, s2, 27
                  ori          t2, a4, -1570
                  sltiu        t6, a0, 1179
                  nop
                  sub          s8, sp, zero
                  addi         t2, s0, 1104
                  andi         t4, s0, -291
                  slt          t2, a1, a7
                  sltu         t4, s1, a0
                  slti         gp, a5, -1762
                  srl          gp, a0, a4
                  andi         s11, t1, 482
                  sub          a3, s3, t4
                  slli         s8, s9, 16
                  sra          s9, a2, s4
                  slli         s0, s7, 21
                  or           s6, gp, s7
                  add          t2, gp, s10
                  and          t0, t0, s5
                  nop
                  nop
                  add          t1, s10, s8
                  srli         s1, t6, 14
                  srai         tp, s6, 3
                  sra          a7, a1, a6
                  or           sp, a3, s5
                  auipc        a5, 79242
                  xori         s10, sp, -1877
                  auipc        a6, 888939
                  lui          t2, 949050
                  nop
                  sltiu        t1, t1, -291
                  addi         tp, s3, 1063
                  srai         t0, t0, 26
                  slli         gp, a2, 25
                  andi         s6, t4, -380
                  add          s11, a0, s3
                  srl          a4, s10, s4
                  sub          sp, s2, tp
                  sltiu        a7, s10, -85
                  slti         sp, a6, 1398
                  addi         s6, s11, -930
                  nop
                  xor          s6, s10, s7
                  addi         s9, a2, 1601
                  sltiu        s10, a4, -875
                  andi         sp, t0, 1827
                  xori         s6, s2, -849
                  and          a1, t5, a2
                  slt          a7, t4, sp
                  slt          t0, a7, tp
                  nop
                  sll          zero, tp, a5
                  and          s4, a2, s2
                  ori          t1, s8, 90
                  sltiu        t4, s0, -671
                  sub          s8, t0, a1
                  sltiu        t0, a4, 1735
                  srai         a6, a5, 0
                  sra          tp, t0, s0
                  nop
                  sub          s0, t1, t6
                  andi         a0, t5, -107
                  add          s5, s8, ra
                  slti         t1, gp, -824
                  slli         s11, gp, 2
                  add          tp, t3, s0
                  xori         a0, a0, -1643
                  sra          gp, s5, s2
                  srli         a3, s7, 10
                  sltiu        t2, s5, -1851
                  srl          s8, s0, ra
                  add          s6, ra, t5
                  addi         s3, s8, 186
                  xor          s1, a5, s9
                  xor          gp, t5, t6
                  srli         a4, tp, 7
                  sll          a1, zero, s3
                  xor          t6, s10, gp
                  addi         s5, a1, 1767
                  auipc        a7, 355929
                  sltu         s5, t1, a1
                  ori          a7, ra, -1470
                  auipc        t6, 334619
                  slli         t6, s3, 6
                  slti         a5, s6, 335
                  srl          s5, s10, s5
                  addi         t2, t3, 62
                  add          a7, s8, s2
                  sra          a1, t4, zero
                  sll          a6, s2, s8
                  addi         s5, a0, 965
                  nop
                  or           a0, a7, ra
                  and          s11, ra, a0
                  andi         a1, a2, 2013
                  slti         tp, s2, -1520
                  sub          s11, t2, s6
                  ori          a2, s7, 960
                  slli         gp, a2, 30
                  srai         a5, s2, 23
                  slti         tp, s2, 316
                  slli         a0, s3, 29
                  sltu         a6, zero, s8
                  andi         s3, t2, 230
                  addi         t3, s4, 307
                  and          a2, s0, a5
                  slli         t2, sp, 4
                  xor          t6, s4, a7
                  lui          s4, 531716
                  andi         a1, s5, 772
                  sra          a6, s10, a3
                  slti         s10, s10, -509
                  slli         a6, a3, 24
                  andi         s6, a5, -293
                  and          a5, a1, t4
                  nop
                  lui          t0, 938824
                  lui          zero, 201419
                  srl          a4, s3, zero
                  ori          a2, tp, -800
                  sltiu        s0, zero, -1248
                  slli         gp, t5, 23
                  sra          a5, t2, s2
                  ori          a3, s9, -62
                  srl          s4, t2, a7
                  lui          s11, 283491
                  and          s8, s7, a1
                  xori         s7, s7, -1173
                  slli         a1, s3, 29
                  srl          a3, s11, a1
                  srli         tp, a1, 16
                  auipc        s7, 628614
                  and          s5, gp, zero
                  andi         s7, zero, -776
                  and          a0, a4, s9
                  auipc        s6, 159417
                  sltiu        gp, gp, 531
                  srli         t3, a0, 25
                  sltu         t6, t3, t3
                  sub          a2, s8, t2
                  slti         s9, a6, 727
                  slli         a2, t4, 0
                  slti         a5, s6, 51
                  slt          s0, t4, s11
                  or           t6, s4, s7
                  srli         a2, a3, 21
                  addi         s6, t4, -159
                  slti         tp, t5, 249
                  slli         s1, gp, 18
                  ori          a5, sp, -941
                  ori          zero, t1, 231
                  ori          s4, s4, 1715
                  or           s5, a0, s2
                  sll          s7, s1, a2
                  or           t6, a5, a0
                  xori         t6, a4, -1466
                  ori          s10, s9, 1705
                  and          t2, t1, a4
                  srli         a5, zero, 5
                  nop
                  slli         t1, s5, 31
                  sra          s0, s2, a0
                  slt          gp, s9, ra
                  and          t3, t3, t3
                  srli         t2, t4, 23
                  srl          a4, t1, s0
                  addi         a6, s1, 1891
                  sll          t1, t0, s10
                  slli         s1, s9, 31
                  sltu         s11, t0, a7
                  sub          s6, t6, t5
                  slli         a6, tp, 30
                  srl          gp, s10, s6
                  slli         t6, a0, 30
                  or           a5, s3, s2
                  auipc        s5, 608634
                  srai         s10, t1, 5
                  xor          a6, zero, s8
                  sll          s10, t0, t0
                  lui          a3, 753102
                  and          a2, s9, t2
                  auipc        t3, 1030997
                  sra          a5, gp, a5
                  sltiu        s9, s6, 425
                  srli         tp, a4, 4
                  sub          a5, gp, a4
                  xori         a6, a5, -1778
                  srai         s6, a4, 5
                  addi         a6, s4, 105
                  or           a1, t3, t6
                  add          a6, a5, s7
                  sltiu        a5, sp, -357
                  auipc        tp, 94636
                  sll          s6, s2, t1
                  sltiu        s11, ra, 260
                  ori          sp, s7, 1227
                  srl          s3, a0, s0
                  addi         s5, a3, -1092
                  xor          a1, a0, t2
                  srl          sp, s6, t6
                  ori          a0, t5, -139
                  sltiu        s1, s9, -307
                  addi         t2, s5, 715
                  sub          s4, s9, s4
                  xori         s4, s0, -809
                  srli         s11, a4, 12
                  xori         s11, a2, -421
                  addi         s3, s10, -1028
                  sltiu        s7, a4, -1298
                  nop
                  nop
                  ori          a3, t5, -1470
                  slti         s5, t5, 1210
                  slt          t2, s3, t5
                  sltiu        zero, a5, -1795
                  sra          s6, a5, s1
                  nop
                  lui          tp, 317892
                  sll          sp, s1, t6
                  and          t0, a1, t3
                  xor          a7, s7, gp
                  addi         s4, s0, -206
                  sltiu        t6, s2, 1065
                  or           a7, s7, t5
                  sub          s10, tp, s6
                  ori          s5, a2, -93
                  add          sp, a1, ra
                  addi         sp, ra, -1586
                  ori          gp, a2, -947
                  and          s1, a4, a5
                  srli         sp, s0, 23
                  lui          s4, 368379
                  slt          s7, a4, a2
                  xori         s0, t6, -1975
                  sub          a4, s8, a0
                  srli         a1, t0, 26
                  ori          s7, tp, -1434
                  auipc        a2, 748578
                  slli         t6, a0, 2
                  xori         s5, zero, 86
                  srli         a1, s9, 9
                  andi         s5, t2, -1975
                  xor          s3, t5, a5
                  and          t6, tp, s1
                  sra          t6, s3, a0
                  addi         s6, s10, 1097
                  lui          a0, 733130
                  sltiu        s5, a6, -477
                  sra          a2, t2, t4
                  ori          a2, t6, 1767
                  auipc        t0, 254515
                  xor          s11, t6, tp
                  lui          s5, 173518
                  slli         a2, a7, 3
                  xori         a5, s8, 1788
                  srai         s10, t0, 29
                  slti         t6, a2, -14
                  sltu         t3, a5, zero
                  addi         gp, t6, -180
                  sra          s3, s9, s7
                  sub          t1, t0, a6
                  srl          s8, s4, a6
                  sltu         s5, s1, a2
                  addi         a5, t6, 563
                  auipc        s4, 641296
                  slt          a6, a0, s3
                  slti         a3, a6, 1119
                  sub          a2, a6, s5
                  auipc        t3, 14799
                  lui          s0, 957148
                  or           a7, a3, a0
                  srli         s1, s4, 30
                  sub          s11, s11, s5
                  sra          t3, s6, gp
                  xor          a4, t5, a1
                  sltiu        s3, t0, -112
                  ori          t6, t2, 729
                  lui          s11, 767918
                  or           t4, s6, zero
                  xori         a0, t6, 197
                  addi         a5, t4, -214
                  sltu         s9, s3, t2
                  add          s8, s9, zero
                  sra          t2, t4, tp
                  slli         a6, s7, 2
                  or           t2, s3, t4
                  slli         a0, ra, 23
                  sltu         s5, a2, a5
                  sll          s6, ra, a2
                  or           t2, s1, t1
                  slli         s3, t5, 19
                  sltu         s5, ra, s11
                  addi         t6, s5, 448
                  nop
                  add          s0, t4, t0
                  and          s6, s11, tp
                  or           a5, a5, t3
                  sra          s9, s5, tp
                  slt          a7, sp, t0
                  slli         a7, t1, 16
                  auipc        s9, 269932
                  andi         s9, t0, 820
                  srli         tp, sp, 14
                  sltu         s11, t4, a5
                  xori         t0, s2, -857
                  or           a1, t3, a2
                  xor          a0, t6, t5
                  srai         gp, a5, 28
                  sub          s10, sp, t1
                  nop
                  auipc        t1, 919361
                  sltu         s10, a1, s1
                  addi         a4, t0, 1810
                  and          a3, s9, gp
                  srai         a6, a4, 21
                  sll          zero, t0, s2
                  nop
                  lui          s3, 317783
                  slti         s9, zero, -1989
                  or           s1, s7, a6
                  xor          t2, s3, sp
                  or           sp, ra, t0
                  slt          t2, t0, t6
                  add          a2, t1, t0
                  or           a0, zero, tp
                  sra          s10, s0, t4
                  ori          t1, ra, 1739
                  addi         t1, t5, 1683
                  ori          a3, t0, -68
                  nop
                  auipc        a3, 253310
                  srai         s0, t2, 2
                  slli         tp, s3, 15
                  slti         t3, a0, 535
                  addi         a3, s11, 905
                  srli         s9, s3, 18
                  sltu         s3, s7, a4
                  sll          a3, s5, a4
                  slt          a4, zero, s9
                  sltu         t4, t2, tp
                  and          a0, s8, t4
                  slti         s6, zero, -1736
                  lui          zero, 843950
                  xori         t3, a6, 818
                  slli         s1, t1, 23
                  sll          t4, a1, s4
                  srli         s8, t6, 15
                  xor          t0, a5, s11
                  slli         t4, t1, 1
                  auipc        zero, 880344
                  sra          t0, t4, s11
                  sltu         s4, a5, a5
                  add          a3, t0, a3
                  slli         s4, t3, 2
                  slti         gp, s2, 1375
                  and          s8, s1, gp
                  sltu         a4, s7, s4
                  slt          s4, s7, t3
                  slt          s9, s2, s8
                  addi         s5, ra, 278
                  sub          t1, zero, t6
                  andi         s10, t1, 1670
                  slti         a3, a5, -1690
                  ori          s5, s2, 1440
                  sltu         s5, s5, a3
                  or           s6, a1, s4
                  add          a4, a0, t2
                  sub          s10, a5, zero
                  sll          s11, s8, a2
                  lui          s0, 616337
                  srl          a4, sp, gp
                  or           s7, s2, sp
                  slt          a6, ra, s2
                  auipc        s5, 1022011
                  lui          a3, 349472
                  add          zero, ra, a6
                  srli         a1, s2, 4
                  sltiu        s6, s0, -1689
                  srai         t4, t3, 20
                  sll          t6, t3, a3
                  and          t1, a1, s11
                  and          t3, t3, t3
                  sll          a7, s8, a2
                  lui          a6, 689174
                  auipc        sp, 428031
                  or           s9, s7, t5
                  sra          tp, t6, s6
                  ori          s9, s1, 2029
                  sub          s7, a6, a5
                  xor          zero, s3, a2
                  or           zero, s5, t1
                  srl          a1, gp, sp
                  slli         s6, a6, 19
                  add          s0, s6, t5
                  or           a6, a7, zero
                  xor          a6, sp, sp
                  add          s11, zero, s6
                  slt          a2, t5, s7
                  slti         s11, a0, -970
                  srl          s9, t5, s9
                  andi         t2, a0, 540
                  sltu         a5, t3, gp
                  nop
                  auipc        a1, 344865
                  sub          s7, s4, t4
                  slli         s10, s0, 30
                  and          a1, t0, s9
                  and          t3, zero, t5
                  srl          a7, ra, a5
                  slt          a1, s10, zero
                  sltiu        zero, s4, 1700
                  sll          t2, s0, s9
                  xor          s8, a5, a7
                  li           s6, 0x6cbc2538 #start riscv_int_numeric_corner_stream_15
                  li           s7, 0x0
                  li           s3, 0x80000000
                  li           s10, 0x80000000
                  li           s9, 0x0
                  li           tp, 0x80000000
                  li           a1, 0x80000000
                  li           s0, 0x80000000
                  li           a5, 0x80000000
                  li           t2, 0x93992c2b
                  add          s6, s7, s3
                  addi         s9, tp, -765
                  nop
                  addi         s9, s9, 748
                  auipc        t2, 570643
                  sub          s6, t2, a5
                  lui          tp, 653679
                  sub          s0, s6, tp
                  nop
                  add          s10, s6, s7
                  add          s0, t2, s3
                  nop
                  nop
                  sub          t2, s6, t2
                  nop
                  auipc        tp, 475136
                  add          s0, a5, s6
                  sub          s9, s10, a1
                  lui          s6, 1037925
                  auipc        s10, 963255
                  add          a1, s6, a5
                  lui          s3, 512014
                  add          s6, s0, t2
                  add          s9, t2, s7
                  auipc        s3, 766233
                  addi         s9, s10, -671
                  add          s10, s0, s9
                  auipc        s7, 473413
                  addi         s3, a5, 96
                  addi         t2, a5, -2037 #end riscv_int_numeric_corner_stream_15
                  xor          t1, a4, a6
                  srl          s4, a6, ra
                  nop
                  add          a0, t1, s2
                  slt          s8, t0, s3
                  sll          zero, s11, s6
                  and          s6, t1, t4
                  slli         t6, s10, 29
                  sll          a0, tp, a3
                  sra          a4, a0, s3
                  sub          gp, a7, s3
                  xori         t4, s10, 610
                  sltiu        s9, a1, -1265
                  sub          s9, s9, sp
                  andi         s1, s0, 1809
                  slli         s11, a2, 18
                  slli         gp, s11, 21
                  lui          t3, 140749
                  auipc        a2, 57807
                  sltu         a6, t0, gp
                  lui          tp, 315484
                  slli         sp, s11, 7
                  ori          a6, s4, -1111
                  and          a6, a7, sp
                  or           a3, t5, t2
                  xor          t1, t6, s8
                  or           zero, sp, s1
                  slti         t2, t0, 177
                  xor          s1, sp, sp
                  or           tp, a6, tp
                  sub          t4, zero, s1
                  nop
                  sltu         a2, sp, s8
                  srli         a4, a4, 17
                  and          t3, s1, a7
                  nop
                  addi         a2, a6, -876
                  and          t2, t6, s4
                  add          s5, a3, sp
                  srli         a6, s6, 7
                  slti         s9, a2, 1403
                  xori         t4, s0, -1702
                  srl          sp, s10, t0
                  srl          s5, ra, s3
                  xori         zero, a6, -463
                  slli         tp, s11, 7
                  xor          s4, a6, gp
                  xori         s0, s11, 233
                  srli         t1, ra, 4
                  sra          a2, t6, s3
                  sltu         t6, a6, t1
                  andi         s1, a3, -1248
                  sltiu        s1, a6, -1771
                  add          s9, a2, t4
                  srai         s0, s0, 27
                  add          a5, gp, s3
                  lui          tp, 968941
                  slli         t2, t3, 10
                  sll          s4, a3, a2
                  sltiu        s6, s8, 1586
                  sra          a5, zero, a0
                  xori         s4, s4, 1676
                  srli         a2, gp, 23
                  nop
                  or           s1, s2, a1
                  sra          a4, s7, s5
                  sltiu        s7, a3, 1958
                  ori          s11, a1, -1551
                  or           t6, a6, a0
                  slt          s10, s3, t3
                  slti         a0, t6, -1165
                  and          s3, gp, t6
                  srli         s9, ra, 8
                  or           a1, s3, s2
                  srl          s10, sp, gp
                  sra          zero, t0, t1
                  xori         s1, ra, 1947
                  and          t6, s8, t3
                  srli         s10, t6, 14
                  srli         a0, s5, 14
                  sltu         s11, s7, s6
                  li           t4, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           a3, 0x0
                  li           sp, 0x0
                  li           t1, 0x80000000
                  li           s11, 0xffffffff
                  li           t3, 0xffffffff
                  li           t6, 0xffffffff
                  li           s10, 0xffffffff
                  li           a7, 0x0
                  li           s8, 0xffffffff
                  add          s11, t6, t3
                  auipc        t4, 1025406
                  auipc        s11, 874160
                  auipc        t1, 229245
                  auipc        sp, 678859
                  sub          a7, s10, s8
                  nop
                  addi         t6, t1, 1843
                  auipc        t1, 772070
                  addi         a3, s8, -1030
                  addi         t6, sp, 726
                  lui          t4, 246689
                  sub          sp, t1, s11
                  auipc        sp, 49633
                  nop
                  sub          a7, s8, t3
                  auipc        sp, 708529 #end riscv_int_numeric_corner_stream_8
                  sub          t1, t2, s2
                  and          a6, s7, t4
                  sll          s1, a1, a5
                  slli         t2, s0, 6
                  addi         s1, tp, 1643
                  lui          a7, 654823
                  sll          t4, s11, t2
                  srai         s10, s0, 9
                  slli         a4, t5, 26
                  slti         gp, ra, -727
                  xor          gp, s8, s2
                  sub          a4, a4, s1
                  sltiu        tp, s8, -867
                  or           s10, a2, t2
                  sltiu        sp, t0, 1864
                  add          s6, ra, a4
                  andi         a2, t5, 1170
                  srli         s1, a2, 22
                  slli         a2, t0, 20
                  sll          s8, s1, a3
                  srli         a7, s11, 11
                  add          a6, tp, a6
                  ori          gp, s11, -422
                  auipc        s8, 974814
                  or           a3, t4, t0
                  sra          t6, t1, s7
                  nop
                  srl          a1, s5, s8
                  sltiu        sp, s2, 126
                  and          s10, s11, t0
                  slli         s11, s8, 29
                  andi         t6, t3, -1539
                  add          s10, s4, s0
                  sub          a5, s10, zero
                  addi         t6, t1, 1714
                  slt          s6, t2, s1
                  sll          a5, s9, t6
                  sltiu        t3, s8, -1807
                  slli         t2, a0, 21
                  sltu         s7, t4, t6
                  andi         a6, s9, 478
                  add          t4, s6, s6
                  xori         t6, ra, -777
                  sltu         a0, t4, a0
                  sll          t4, a4, s0
                  slt          a4, s1, ra
                  and          s3, a0, sp
                  add          s11, s5, s7
                  addi         sp, s10, -498
                  sub          s5, s9, s1
                  srli         a5, zero, 27
                  addi         a7, a4, 1749
                  sra          a2, t4, sp
                  lui          t3, 770465
                  srai         tp, t3, 1
                  srai         gp, s10, 15
                  nop
                  xori         sp, gp, -1329
                  slti         a5, ra, 526
                  sll          s9, s7, s1
                  nop
                  andi         t1, t6, -801
                  sltiu        a2, s2, -1278
                  srl          a4, a5, s8
                  andi         sp, s9, 1837
                  xori         s7, t1, -1825
                  add          a2, t6, a2
                  or           a7, t0, a3
                  sub          t3, a5, a3
                  xori         s1, t4, -630
                  srai         s1, s0, 16
                  sltu         t1, s7, a4
                  srl          t6, t2, a5
                  andi         s3, a0, 1464
                  sub          s10, t5, zero
                  andi         s4, s8, -1810
                  andi         t6, s3, -1330
                  xor          s9, s10, s3
                  sltu         s7, s0, a3
                  lui          a5, 691111
                  sub          t1, s6, t4
                  slli         t2, a5, 22
                  srli         a6, s10, 23
                  add          s10, a6, s0
                  lui          s10, 623060
                  or           s0, a4, a6
                  srl          t1, s11, a1
                  srl          a6, s8, ra
                  andi         t3, a7, -1768
                  auipc        sp, 116508
                  sra          s5, s11, s11
                  addi         a0, a2, -474
                  and          a5, a4, a4
                  ori          s1, t5, 495
                  sltiu        zero, s7, -273
                  slt          t4, zero, ra
                  andi         t2, a0, 957
                  xori         s8, sp, -1619
                  andi         t6, t1, -2003
                  sltiu        a5, zero, -1619
                  auipc        s10, 549121
                  auipc        a0, 229030
                  sll          t4, s8, s9
                  sltiu        s6, s2, 475
                  srl          a0, a7, s3
                  or           s1, s5, t2
                  slt          a0, t6, t0
                  auipc        s8, 435510
                  addi         t4, a2, 955
                  auipc        gp, 114012
                  ori          s3, t4, -1946
                  srli         a7, t1, 19
                  srli         t2, s11, 22
                  srli         s8, s4, 28
                  add          a3, a2, gp
                  or           tp, a7, tp
                  xori         zero, t5, -1016
                  xor          a3, t4, a2
                  sltiu        s8, tp, 510
                  addi         zero, gp, 1736
                  slti         sp, s6, 145
                  nop
                  sra          t6, zero, a0
                  sll          s0, gp, a3
                  nop
                  andi         sp, a5, 1399
                  and          gp, s1, s5
                  ori          s7, t3, 1964
                  xori         t2, t0, 1213
                  srl          zero, s8, s5
                  lui          a5, 158648
                  or           t2, s8, s7
                  nop
                  addi         s11, zero, 1116
                  lui          a0, 279537
                  slli         gp, ra, 10
                  slt          s8, t4, a3
                  and          s6, sp, a4
                  sll          a2, s1, gp
                  sra          s0, a0, a4
                  slt          t4, t1, s5
                  addi         s5, t3, 1364
                  xori         t6, a2, -1030
                  xor          s8, a5, ra
                  sra          s7, gp, s3
                  or           s5, s5, s4
                  and          t0, ra, a0
                  srli         t0, s5, 13
                  sltu         t2, a1, s8
                  add          t0, s5, s4
                  slli         s9, a2, 17
                  or           s3, a0, t4
                  add          gp, t3, ra
                  addi         gp, a1, -1458
                  sub          s0, s2, t3
                  sltiu        a5, a2, 1380
                  sltu         a5, s7, a3
                  nop
                  sll          s4, a7, t6
                  ori          t2, s0, -702
                  or           t1, s7, t4
                  and          t1, t0, a6
                  sltiu        zero, t5, 674
                  sltiu        a1, a6, 791
                  add          t0, a6, s11
                  lui          a4, 864600
                  auipc        s4, 122148
                  sra          s4, a4, ra
                  slti         sp, a6, 1521
                  andi         s9, a4, -547
                  or           s9, t2, s11
                  sra          a3, s8, gp
                  sltiu        s10, a3, -182
                  ori          a3, a5, -1757
                  andi         s8, gp, -1233
                  and          t1, a4, s0
                  andi         s5, s6, 565
                  srai         s3, gp, 14
                  sra          s11, s7, a2
                  and          a6, a5, zero
                  xor          a5, a7, a2
                  auipc        s5, 667192
                  ori          t1, s2, -662
                  slli         tp, a0, 21
                  ori          t1, t6, 1096
                  slli         s8, s4, 17
                  lui          a5, 767132
                  sub          s1, sp, a1
                  xori         s10, a6, -89
                  ori          s10, s4, 423
                  add          t0, a1, a3
                  srli         sp, t6, 31
                  srai         s0, t3, 2
                  slt          t1, s8, a1
                  sra          s8, s11, tp
                  xor          s11, ra, s0
                  nop
                  xor          a4, t2, s11
                  addi         a1, t3, 1447
                  slt          t4, a4, a3
                  sltu         a2, a0, s3
                  slli         s1, s8, 12
                  srl          s1, s11, s8
                  andi         s3, a0, -1218
                  addi         a7, a5, -1625
                  srli         s11, s6, 14
                  srai         t3, s6, 13
                  sll          s0, t4, s0
                  auipc        s1, 334660
                  srai         a7, t2, 27
                  sltu         a4, t0, s7
                  xori         a5, a0, -977
                  srl          a6, a0, s7
                  slli         s1, t4, 14
                  srai         a3, t3, 10
                  lui          tp, 47726
                  andi         t3, s4, -1138
                  sll          s9, s7, s11
                  srai         tp, s8, 17
                  sltiu        s9, ra, 213
                  ori          zero, s0, -982
                  nop
                  and          s9, s2, t1
                  andi         t0, t0, -1278
                  xori         t0, s11, -1681
                  and          s7, a6, sp
                  lui          a3, 124242
                  or           t1, t1, t0
                  sltu         gp, s5, t4
                  srl          s0, s6, t5
                  slli         zero, zero, 20
                  slli         s11, t0, 30
                  or           a3, t0, s7
                  sub          s7, s11, t0
                  nop
                  srl          a4, t4, s5
                  slli         a3, t4, 0
                  xori         s4, s8, -354
                  sub          tp, gp, a7
                  slli         s3, t6, 5
                  and          s9, s0, zero
                  sltu         a0, s2, t1
                  andi         a7, s2, -450
                  srl          s7, ra, s8
                  or           s1, s0, s6
                  lui          s7, 732564
                  xor          t4, gp, s10
                  nop
                  sub          t4, ra, a5
                  sll          gp, tp, a4
                  xori         t1, t5, 281
                  add          t6, s3, ra
                  lui          a5, 765865
                  sll          s0, s5, s0
                  sub          a3, s2, t2
                  ori          sp, tp, -1647
                  slti         s10, s10, 1517
                  add          a4, s2, ra
                  slti         s10, tp, 521
                  and          t3, t0, s3
                  srli         t2, s9, 16
                  andi         s5, s10, 776
                  srli         s11, s10, 8
                  auipc        a1, 828396
                  xor          s10, s1, s5
                  lui          tp, 627483
                  srli         s5, s6, 28
                  lui          a0, 323998
                  srli         s11, t0, 13
                  or           t4, a1, s5
                  srl          s10, ra, s4
                  ori          s3, s4, -1482
                  srai         a3, a4, 9
                  add          t3, s11, gp
                  srai         s11, s3, 24
                  slti         a0, a5, -431
                  sra          a0, s11, a2
                  sll          a7, ra, ra
                  sra          a4, a2, s2
                  slti         tp, s1, -1265
                  lui          t3, 596725
                  slli         t1, t6, 24
                  sub          t1, s9, t5
                  nop
                  sltu         t3, a6, sp
                  add          a4, s5, s4
                  addi         a2, a1, 28
                  sub          a7, a5, a3
                  sltu         s1, s4, gp
                  xori         s10, s11, -1184
                  slt          sp, s0, a0
                  lui          s10, 911543
                  sltiu        s0, ra, 1372
                  auipc        s10, 751713
                  add          s3, s8, t5
                  or           s9, a3, t2
                  lui          a7, 405848
                  slli         s4, tp, 21
                  srli         s4, a0, 4
                  slti         s3, s9, -1106
                  nop
                  xori         s0, s2, -1724
                  sltiu        a6, s9, -1930
                  sltu         tp, s11, t1
                  or           s6, s10, s8
                  or           t4, a7, s4
                  sll          t1, zero, s10
                  andi         s4, a7, 1839
                  nop
                  auipc        s3, 749082
                  ori          t6, s0, 1119
                  lui          a1, 388304
                  sub          s11, s5, a7
                  lui          a2, 206775
                  sltiu        a7, a5, 950
                  sub          s8, a5, s11
                  slti         s7, s8, -1040
                  sltu         s1, t6, t6
                  or           t4, a2, a7
                  auipc        s10, 967018
                  xori         t0, s11, -147
                  add          s8, s1, t0
                  nop
                  sltiu        t3, s6, -1525
                  auipc        s8, 145796
                  slli         s9, t5, 16
                  xor          tp, a0, gp
                  lui          s11, 415279
                  sub          a3, t3, t2
                  sub          t4, s11, s5
                  sra          s9, sp, zero
                  addi         s8, t4, 49
                  add          t3, gp, s5
                  srl          s5, zero, gp
                  slti         t0, s2, -378
                  xori         s4, tp, 52
                  slti         a5, a2, -1678
                  and          s0, t2, s1
                  sltu         t2, s1, gp
                  srai         a4, t4, 4
                  lui          s9, 37124
                  slt          s6, a0, zero
                  addi         t3, gp, -1295
                  xori         s9, s9, -1355
                  xor          a6, a3, a0
                  sra          t1, s1, a2
                  srli         s3, s10, 21
                  lui          zero, 917418
                  srli         s9, a7, 7
                  srl          t3, a5, s9
                  slti         a5, s0, 1990
                  add          s11, a7, t0
                  srli         a1, s8, 16
                  or           s4, ra, t4
                  sra          tp, s2, a1
                  and          gp, tp, s8
                  andi         s7, t3, -1450
                  xor          gp, t4, s9
                  xori         a0, s6, -805
                  slt          t0, a7, t6
                  nop
                  sltu         sp, s4, gp
                  sll          s5, tp, t2
                  srl          a0, s0, t6
                  ori          t4, s10, 83
                  xori         t6, a1, -1370
                  srai         t4, s11, 25
                  sltu         s1, s7, s0
                  xor          t6, gp, a4
                  srli         s3, s5, 0
                  andi         a5, s8, 1915
                  addi         t3, s5, 715
                  srai         gp, s10, 19
                  srai         t0, a5, 5
                  or           t2, zero, t5
                  sltiu        zero, t2, -946
                  sltiu        a6, s5, 1301
                  sra          a6, s0, s0
                  or           t2, t5, a0
                  add          sp, s1, zero
                  srli         zero, s9, 23
                  lui          t1, 427748
                  slt          s10, s3, s0
                  sltu         s5, s6, t6
                  lui          a2, 51782
                  addi         s10, a0, 1300
                  ori          s8, a0, 1063
                  srli         sp, a1, 13
                  add          s1, t3, a2
                  add          s10, t0, s3
                  or           t2, tp, a7
                  auipc        t2, 1029061
                  srli         t6, a1, 4
                  sltiu        s3, s10, 564
                  slti         a1, ra, 1894
                  xori         t0, ra, -1414
                  xori         t4, a3, 852
                  slli         t6, a4, 2
                  sll          t3, t5, s5
                  srli         sp, t3, 2
                  sltiu        t6, t1, 163
                  lui          a3, 320263
                  nop
                  andi         s0, s11, 730
                  and          a0, a1, a4
                  add          a4, t5, a3
                  srli         s3, t6, 9
                  slti         a4, s11, -1269
                  sltiu        t2, s2, 402
                  slti         s8, a2, 1654
                  sltu         a4, t1, t0
                  xor          tp, s4, s7
                  sra          a6, s5, s7
                  ori          zero, s11, 1259
                  srai         s9, s0, 20
                  sra          s1, s9, s2
                  lui          s4, 68171
                  slli         t2, a0, 14
                  sll          a2, t6, s3
                  xor          s8, s10, a1
                  add          gp, a3, a6
                  slli         s6, s11, 30
                  srl          s4, t1, s1
                  add          s7, a6, s0
                  sltu         s9, t4, a1
                  nop
                  srai         tp, tp, 14
                  nop
                  add          s0, s4, t5
                  or           s3, t2, a3
                  slt          s11, t4, s9
                  addi         s1, a0, -923
                  sltu         s9, a7, a0
                  ori          s4, s4, -1761
                  slli         s4, s0, 2
                  lui          zero, 363691
                  nop
                  auipc        t6, 208445
                  add          s9, a2, ra
                  slli         s6, a7, 25
                  add          s9, a6, t5
                  srli         s0, s1, 26
                  or           s8, t5, s0
                  srli         gp, s0, 27
                  srai         t2, s2, 12
                  andi         s3, a6, -917
                  sltu         gp, a1, s7
                  add          a0, t3, ra
                  addi         tp, gp, 699
                  sra          s11, a6, a4
                  sltu         t1, a7, ra
                  ori          a1, gp, 1660
                  sub          sp, a4, s1
                  slli         tp, a4, 19
                  sra          sp, a0, zero
                  xori         s5, s0, -1237
                  nop
                  addi         s1, tp, -2033
                  ori          s0, a5, -161
                  sltiu        s5, a3, 1357
                  ori          a6, s5, -705
                  add          t1, t3, t5
                  sltu         zero, t1, s1
                  slt          tp, s9, s2
                  slt          s10, zero, a5
                  sll          s6, s7, s9
                  slt          t4, a0, t0
                  or           a1, s4, t5
                  lui          sp, 693634
                  slli         s1, a4, 2
                  lui          sp, 632417
                  or           a6, t3, t5
                  ori          t2, tp, 1047
                  sll          a3, gp, tp
                  add          s7, s6, a2
                  sll          t2, s9, tp
                  xori         s9, s3, 1261
                  srli         t0, a4, 23
                  add          zero, s1, t2
                  slli         t1, t6, 3
                  sll          s0, ra, s10
                  slt          tp, t6, a2
                  add          a2, s6, t3
                  xor          s6, t0, a2
                  sra          t1, a4, a0
                  auipc        a5, 415329
                  nop
                  andi         t2, a2, -338
                  srl          s3, t5, s10
                  lui          s11, 593332
                  nop
                  srli         s6, s6, 21
                  srl          s11, zero, t3
                  sltiu        a0, t0, 1504
                  srai         t4, t6, 29
                  srli         a4, s3, 21
                  slli         s3, t2, 23
                  xor          t3, a4, s11
                  srli         sp, t2, 2
                  lui          t2, 477369
                  nop
                  sltiu        a2, s9, -1305
                  slli         a3, s4, 1
                  sll          a2, ra, t5
                  sltu         a1, s5, s0
                  srl          s4, a6, a1
                  lui          sp, 367176
                  slt          a3, s5, a1
                  sub          t0, t0, s7
                  xor          gp, s1, ra
                  sub          s3, tp, s8
                  slt          a4, a2, a0
                  sltiu        t0, s0, -977
                  srl          s10, t2, s6
                  slli         a1, s1, 22
                  andi         a4, s1, -1812
                  or           a5, tp, a6
                  lui          s3, 395461
                  lui          gp, 225327
                  sltiu        s10, tp, -1759
                  add          s1, s2, tp
                  auipc        s8, 616575
                  nop
                  sltu         t0, t1, a4
                  slti         s1, t0, -1497
                  sltu         tp, t6, gp
                  and          s7, a4, sp
                  slli         t0, a0, 8
                  sltu         zero, a4, s10
                  addi         a1, s9, -1574
                  and          a7, zero, a0
                  slti         s7, tp, -930
                  slt          s6, gp, t2
                  slt          gp, a1, gp
                  sub          a4, a7, a0
                  srai         s10, s6, 30
                  auipc        gp, 436853
                  sltiu        s5, a4, -845
                  sltiu        s9, s1, -78
                  sra          t6, a3, t1
                  or           s10, a1, tp
                  auipc        tp, 821143
                  slt          a1, t1, s8
                  lui          s1, 1023727
                  and          s10, a7, a7
                  auipc        tp, 503270
                  auipc        sp, 50631
                  slti         s11, s1, 1052
                  ori          t6, a2, 1557
                  sll          s0, t4, tp
                  ori          s7, s1, -1181
                  slt          a2, gp, s0
                  srai         s6, sp, 29
                  or           s4, t3, t4
                  sltu         a7, s1, ra
                  xor          s5, gp, a1
                  sll          s4, s3, s10
                  sra          t6, t3, t5
                  sltiu        t0, t1, 1909
                  auipc        s1, 615978
                  sub          s11, a1, s5
                  sltiu        a0, s0, -615
                  srl          a4, t1, a7
                  lui          t4, 993256
                  sub          s0, s11, s11
                  srai         s5, t1, 27
                  lui          gp, 996562
                  sll          a2, s3, a0
                  xor          s7, gp, s2
                  nop
                  lui          s8, 162502
                  and          gp, tp, s11
                  addi         t0, t1, 376
                  slti         s4, a5, 904
                  srai         a6, s4, 25
                  srli         t1, s8, 1
                  srl          a1, s9, s6
                  lui          a1, 635690
                  srai         a3, a4, 21
                  add          tp, s2, s6
                  xori         t0, t2, -1717
                  xor          s8, a3, s10
                  sll          a1, s7, a3
                  slti         tp, s11, -870
                  slli         a3, gp, 24
                  andi         s5, t6, -869
                  xori         t3, t1, -1962
                  nop
                  auipc        a1, 486228
                  slt          t0, a5, a4
                  nop
                  andi         t1, t5, 1315
                  xor          s10, a3, a4
                  lui          s4, 697838
                  xor          t1, s4, s3
                  srai         s1, gp, 28
                  or           a1, gp, a4
                  andi         zero, s2, -1510
                  and          s10, s4, zero
                  sub          a3, t6, s5
                  sltu         a1, t4, gp
                  sltiu        a5, a1, -60
                  and          s5, t1, s0
                  sub          s5, a7, a3
                  xor          zero, s0, zero
                  andi         a4, sp, -585
                  slli         s4, ra, 7
                  slt          t2, t0, s5
                  slti         t3, s2, -1146
                  andi         a4, sp, -994
                  slt          s11, s5, t1
                  or           s11, gp, t2
                  sll          zero, tp, s2
                  sll          zero, tp, s1
                  auipc        t0, 90173
                  slli         t3, s8, 12
                  xori         a0, a7, -1057
                  sltu         s9, t5, s10
                  addi         s5, a7, -1671
                  srli         s6, t5, 4
                  sltiu        a0, a2, 195
                  slt          a3, a1, s2
                  addi         s9, zero, -967
                  andi         s3, t0, 344
                  slt          a4, s8, s3
                  and          sp, s7, s11
                  xor          s7, s3, a7
                  sra          s3, a0, ra
                  auipc        a0, 848860
                  auipc        t0, 1006083
                  sltu         sp, a3, s3
                  ori          t4, ra, 744
                  slli         t4, s9, 23
                  addi         s10, t3, -1720
                  lui          t6, 195811
                  sub          gp, a1, s4
                  xor          s5, a0, s9
                  slt          t4, s3, s10
                  or           s9, a0, s2
                  srl          s1, t5, s4
                  or           sp, s0, a3
                  auipc        s3, 704007
                  andi         a4, t6, -1146
                  ori          s8, a6, -1568
                  slt          t2, a4, s1
                  srai         zero, a4, 1
                  xor          gp, s2, s5
                  and          s5, t3, t4
                  slli         s4, a7, 20
                  sll          tp, ra, s3
                  or           s1, s4, a1
                  sra          t1, s3, t4
                  addi         s1, a2, -1016
                  slt          s3, s0, s6
                  lui          t3, 191633
                  srl          a4, s7, tp
                  sltiu        gp, tp, 842
                  xori         tp, s3, -1523
                  ori          a1, s11, -1025
                  srai         t2, t5, 18
                  andi         a6, s5, -1234
                  srli         t3, s3, 20
                  srl          t1, a5, a6
                  slli         a7, a0, 8
                  or           a0, t5, s11
                  sra          tp, tp, t4
                  andi         s6, s5, 896
                  add          s0, s6, a2
                  or           tp, gp, s1
                  sltiu        t1, s8, -833
                  andi         s0, s1, -1568
                  slt          sp, s6, s2
                  srai         t1, s10, 25
                  and          s6, s2, t0
                  sltiu        s1, a2, 108
                  xori         a5, s9, -584
                  sltiu        sp, a6, -1334
                  sltu         tp, s0, s3
                  srli         s4, a7, 15
                  slti         a5, t2, -1879
                  xori         t2, tp, -974
                  slt          sp, a7, gp
                  srai         sp, t5, 31
                  srl          gp, a6, tp
                  srai         a2, a1, 28
                  and          t3, t3, s5
                  sub          a5, a4, a6
                  add          s5, t0, s5
                  lui          s10, 988854
                  sll          a7, t6, a4
                  srli         t3, a2, 29
                  sltu         s4, s9, t1
                  sub          t1, a2, s11
                  addi         t0, a0, -1599
                  and          s1, t1, s0
                  nop
                  lui          s5, 457259
                  xor          s0, s2, gp
                  slt          a7, a4, ra
                  slt          s6, ra, zero
                  srl          a2, s1, zero
                  xor          s4, t2, s0
                  auipc        a7, 776163
                  ori          s1, s10, 126
                  sltiu        a3, t5, -1527
                  addi         t2, s1, -574
                  slti         s3, tp, -326
                  sra          s0, a6, tp
                  sltu         a1, t1, s6
                  slt          a1, s11, s3
                  sltiu        s10, gp, -551
                  sltu         sp, a0, t6
                  lui          s3, 878997
                  add          a1, a5, a7
                  srai         s4, a2, 31
                  sra          s5, a7, t4
                  xor          a1, a3, s6
                  addi         a3, s7, -927
                  slti         gp, s3, -171
                  ori          a6, s8, -418
                  sll          zero, a7, s3
                  or           a5, a6, s11
                  srl          s0, t3, s5
                  sltiu        s10, a0, -655
                  sub          t2, s5, s3
                  srl          s0, s4, t0
                  ori          a0, a5, 1578
                  and          s0, s1, t2
                  sltu         tp, a1, t4
                  xori         t0, a6, 1747
                  addi         a2, s4, -232
                  ori          zero, gp, -1654
                  slti         a7, s7, -260
                  sub          t2, s9, t4
                  srli         s7, t2, 19
                  and          t4, s9, s3
                  sltiu        s4, a4, -313
                  add          a0, s3, s2
                  slli         s6, gp, 1
                  xor          t0, s6, t3
                  add          s7, a4, s5
                  srl          a3, t1, t3
                  slli         s3, ra, 12
                  srai         a3, t0, 26
                  slli         tp, s10, 5
                  add          tp, t3, s3
                  or           t4, s6, t3
                  xor          a3, t5, a4
                  sra          s4, a1, s7
                  slti         s8, a0, 668
                  slti         s4, s1, -337
                  sltu         a7, a5, t0
                  nop
                  sltu         a2, a0, s10
                  sub          a4, s1, s3
                  lui          s7, 1016728
                  auipc        a3, 996095
                  xori         a3, s0, 1616
                  lui          t0, 339274
                  srli         s0, a5, 1
                  xori         a7, a3, 77
                  ori          s5, t3, -1544
                  xor          a0, s5, s5
                  srl          a6, s11, a5
                  xor          s10, gp, s9
                  andi         a4, t5, -1753
                  sltiu        a5, t4, 1703
                  add          t1, a3, a1
                  sra          s1, s7, s8
                  slt          s10, s5, t4
                  slti         sp, s1, 903
                  srli         t0, s3, 15
                  srl          s4, s3, zero
                  slti         s3, a4, 173
                  slli         t3, a1, 13
                  sra          a4, t0, tp
                  sll          t1, tp, s11
                  sll          a1, a0, t0
                  add          t1, t2, ra
                  srai         s1, s10, 20
                  andi         a3, s7, -965
                  andi         a3, gp, 898
                  sub          a7, s8, t0
                  auipc        a4, 499067
                  ori          s0, s5, 1772
                  slli         t1, t1, 16
                  srli         zero, t5, 21
                  xori         sp, s3, 1751
                  andi         sp, t5, 1420
                  sra          t6, t1, a7
                  add          a5, s10, t1
                  andi         t3, a3, -1113
                  sltiu        zero, zero, 1626
                  slt          a5, s3, t0
                  sltiu        s7, a4, -234
                  lui          s8, 264093
                  lui          a3, 275317
                  sltiu        a3, a3, -1119
                  xori         s10, t6, 1284
                  addi         s5, sp, 134
                  slti         s0, t6, 166
                  srl          s6, zero, s5
                  srli         s1, a3, 12
                  slti         s11, a0, -815
                  or           a3, s0, s0
                  xor          s3, s0, s1
                  add          t0, zero, a0
                  nop
                  add          zero, s6, s0
                  addi         a4, s2, -1014
                  or           t3, t6, zero
                  srl          t1, t4, t1
                  slli         a4, sp, 22
                  slli         t6, s8, 27
                  addi         t4, s0, 588
                  sub          a7, s4, s11
                  sltu         a3, sp, t4
                  xori         t0, s8, 1019
                  sub          gp, t2, a1
                  sltu         sp, s1, s6
                  sub          s5, t1, a1
                  addi         s4, s3, -81
                  nop
                  sll          a6, s7, s11
                  sra          a7, zero, sp
                  xor          t1, t4, a1
                  srai         s11, s9, 27
                  slti         a5, t4, 980
                  ori          sp, s10, 1979
                  lui          a4, 51808
                  sltu         s4, t4, a3
                  srli         a3, s4, 20
                  slli         t0, a4, 22
                  sra          s9, ra, s1
                  srli         a5, sp, 22
                  auipc        a5, 564842
                  sll          s8, sp, s11
                  andi         a0, s0, 812
                  lui          t1, 774370
                  auipc        a2, 561382
                  ori          t6, s2, 1029
                  srli         s7, a2, 15
                  ori          zero, s4, 1804
                  addi         s1, t2, 185
                  addi         sp, s5, -553
                  addi         a2, a5, -1575
                  nop
                  nop
                  srai         t3, s11, 7
                  srl          zero, a7, s0
                  ori          s3, gp, -694
                  slt          s6, s5, a7
                  sll          a3, a4, s9
                  sra          t3, s1, s11
                  sltu         t0, a7, s8
                  andi         s10, a3, 152
                  andi         t1, s9, 439
                  sra          t0, ra, a3
                  slt          a4, s3, t1
                  sra          sp, a7, gp
                  auipc        t1, 435823
                  sra          s6, sp, s5
                  lui          s3, 326883
                  srl          s6, s3, t5
                  nop
                  slt          t6, ra, s3
                  addi         s4, a5, -1599
                  andi         s9, s2, -352
                  sltu         s9, t6, s10
                  sll          s3, s1, s3
                  sltiu        s1, a3, -1679
                  lui          s5, 363806
                  sltiu        a5, a2, -70
                  or           a7, s11, a1
                  sll          t6, t6, t3
                  xor          t2, t5, t5
                  sll          t4, s10, a0
                  sltu         sp, a3, a6
                  sub          t3, t0, s3
                  slti         t1, t6, 1675
                  auipc        tp, 402124
                  sra          s10, s2, a3
                  sltiu        a7, t5, 222
                  ori          t3, a2, -907
                  ori          tp, t0, 1924
                  add          s6, t5, a0
                  srli         a3, t1, 9
                  nop
                  slli         s11, zero, 28
                  slli         t1, t0, 1
                  slt          t2, t5, s2
                  addi         s9, a5, 1731
                  and          s0, t2, s0
                  srli         a0, t3, 0
                  slt          a1, t2, s2
                  sltu         zero, ra, s11
                  sll          t4, a4, ra
                  and          s4, a3, a0
                  sra          zero, t3, s7
                  ori          s7, t3, 1942
                  lui          s1, 775189
                  srai         s5, t4, 16
                  sltiu        s1, a7, 1372
                  add          t4, a7, a3
                  auipc        a5, 402582
                  andi         a5, t4, 1317
                  slt          s9, s11, a5
                  xori         a6, t0, 383
                  slti         a0, s7, -1583
                  sub          s5, t0, a7
                  xori         zero, sp, -871
                  sltu         t4, s6, a6
                  andi         t3, zero, -993
                  auipc        t2, 874275
                  andi         t6, t5, -679
                  xori         s10, s4, -1026
                  sub          s4, t4, s10
                  andi         gp, a1, -1091
                  slti         a3, t2, -1957
                  slti         t2, s5, 1534
                  auipc        s8, 892502
                  srai         a7, gp, 4
                  slt          tp, a7, t3
                  or           t2, a6, a6
                  addi         t0, s4, -1104
                  slli         t1, t2, 11
                  ori          t1, a6, -1175
                  nop
                  lui          s8, 647814
                  andi         s0, a4, 142
                  and          s3, t5, s9
                  auipc        zero, 659623
                  ori          s4, t2, 390
                  srli         t4, s5, 10
                  xor          s1, gp, s5
                  srl          t2, t0, s1
                  and          s4, ra, tp
                  nop
                  lui          sp, 652188
                  lui          t6, 695624
                  addi         s11, a6, -546
                  sub          zero, t6, a4
                  srai         s1, s7, 22
                  sra          a2, a5, tp
                  and          t1, t1, ra
                  slli         t0, a3, 5
                  add          a3, gp, t6
                  sub          t0, s1, a3
                  auipc        s10, 765902
                  add          a6, tp, s5
                  xori         sp, s2, 128
                  srl          s5, s3, gp
                  or           a4, gp, zero
                  auipc        t1, 311566
                  and          a6, s5, t3
                  or           a0, t5, s9
                  xor          t1, s11, s7
                  srli         t0, t5, 21
                  or           t4, s9, tp
                  add          s6, t3, s3
                  sra          a7, s6, s2
                  xor          gp, a5, t0
                  sra          t3, t6, s3
                  lui          t1, 1007338
                  nop
                  sll          t6, zero, s11
                  xori         s10, s8, -1714
                  li           tp, 0x8aaccbbb #start riscv_int_numeric_corner_stream_4
                  li           a7, 0x1b0a2ac3
                  li           a6, 0xffffffff
                  li           a5, 0xffffffff
                  li           sp, 0x24b6f19a
                  li           t3, 0x0
                  li           a1, 0x0
                  li           s9, 0x80000000
                  li           t0, 0xffffffff
                  li           s8, 0x80000000
                  lui          a7, 688587
                  nop
                  auipc        tp, 1020330
                  nop
                  nop
                  add          tp, sp, t3
                  lui          a7, 125030
                  nop
                  add          s8, t3, sp
                  add          t0, a6, a5
                  nop
                  nop
                  auipc        a7, 790383
                  sub          s8, a5, t0
                  sub          a1, sp, a6
                  nop
                  nop
                  sub          s9, a7, tp
                  auipc        t0, 1022121
                  auipc        s8, 302301
                  sub          a5, a5, tp
                  add          tp, a1, t0
                  auipc        s8, 928876 #end riscv_int_numeric_corner_stream_4
                  xor          a0, s11, s8
                  ori          t0, s0, 441
                  nop
                  lui          s0, 128897
                  srli         s1, gp, 12
                  srli         zero, a2, 8
                  sltu         a5, t1, tp
                  sltiu        t0, t5, 1876
                  slli         s0, a0, 17
                  slli         a6, sp, 8
                  xori         t6, s7, 1134
                  or           a7, ra, gp
                  srl          a7, s3, s3
                  xori         s1, a1, 52
                  sll          s11, s0, s6
                  lui          t3, 927104
                  slti         s11, t2, 1273
                  ori          t3, s2, -825
                  ori          s3, s6, 1195
                  sltu         s3, s7, t3
                  sra          s5, t0, a1
                  sra          a3, s1, a6
                  lui          a2, 799097
                  or           s9, s1, t4
                  auipc        s1, 1043476
                  and          t4, a6, s6
                  ori          a6, a6, -844
                  ori          s7, s0, -1008
                  lui          t0, 1016974
                  sub          a2, s1, s5
                  srli         a7, s8, 10
                  xor          zero, tp, t2
                  srli         tp, t0, 8
                  or           sp, t4, sp
                  lui          s9, 941035
                  sltiu        s5, s4, -1281
                  auipc        s1, 900182
                  and          a5, a0, s7
                  nop
                  or           a5, t4, a2
                  xori         t4, t5, 1816
                  add          zero, t6, s1
                  slt          t4, gp, a4
                  nop
                  slli         t1, s10, 23
                  add          s3, a4, ra
                  sltu         a0, tp, sp
                  srai         s6, t4, 11
                  nop
                  slti         t0, t4, -1848
                  xori         s1, gp, 601
                  addi         a1, t3, -620
                  xori         t4, a6, 1013
                  or           s7, t2, t5
                  sltiu        s11, tp, -553
                  srai         zero, t4, 19
                  auipc        s10, 479744
                  srli         a6, a5, 10
                  slt          s9, s9, zero
                  nop
                  sra          sp, s6, a3
                  sltiu        s8, s10, 960
                  srai         a7, tp, 30
                  srl          t1, s11, t1
                  srai         t4, s4, 31
                  srl          t0, t3, a6
                  or           gp, t0, tp
                  sll          s8, s6, t1
                  slli         t2, s8, 14
                  andi         s5, s10, 815
                  auipc        a5, 683877
                  srl          a4, a4, t5
                  xor          s9, a7, s3
                  addi         t3, a3, -248
                  ori          t3, s7, 561
                  slli         a6, s9, 29
                  srl          s7, a4, t4
                  xori         a1, s3, 873
                  sub          s7, a0, a5
                  sltu         a0, t6, t5
                  ori          s8, ra, -1325
                  slt          tp, s4, a2
                  slt          sp, a3, s5
                  slti         s0, s5, 792
                  srl          t1, a4, a1
                  addi         a0, s5, -796
                  sltiu        a4, t2, -244
                  slli         sp, a4, 2
                  nop
                  sltiu        a2, s7, 64
                  xori         s11, a7, -644
                  slli         s10, s10, 26
                  add          tp, gp, a7
                  srai         t1, a1, 8
                  sltiu        s0, a0, 394
                  auipc        s11, 1007315
                  sll          t6, a7, gp
                  sra          t0, a5, t5
                  and          a2, a3, t3
                  xori         a7, s4, -433
                  add          sp, t2, s11
                  lui          a4, 951537
                  sub          a3, t5, a3
                  slli         s8, s11, 14
                  sltu         a3, gp, s6
                  xori         t3, s9, -1198
                  ori          s6, t3, -755
                  lui          s11, 869149
                  auipc        t0, 367011
                  nop
                  lui          zero, 880903
                  srl          t6, a6, gp
                  sltu         t2, s11, s2
                  sll          t1, a4, t3
                  sltu         a2, a0, s3
                  srli         tp, a5, 15
                  xor          t1, a4, t4
                  slli         s1, a4, 14
                  andi         a2, t4, 1302
                  srl          s3, s8, a6
                  slli         zero, s4, 26
                  and          s4, a2, a7
                  addi         gp, s6, 1865
                  lui          s8, 645438
                  srli         a3, s10, 11
                  sub          sp, s4, s1
                  srli         tp, s1, 25
                  sltiu        t6, a2, 569
                  lui          a2, 1031480
                  xori         t4, tp, -951
                  ori          a6, s2, 1104
                  sll          s10, a0, s2
                  lui          t2, 137413
                  xori         t3, s10, -831
                  add          s3, t0, s6
                  nop
                  nop
                  add          s7, a4, t2
                  nop
                  lui          s9, 250862
                  or           sp, s5, t2
                  auipc        t4, 643091
                  or           s0, t5, a2
                  lui          gp, 1000233
                  lui          s10, 793386
                  andi         a6, s0, 942
                  slli         zero, s2, 25
                  slli         s7, a2, 30
                  srl          a6, s10, s4
                  srai         s8, gp, 21
                  xor          gp, s7, t2
                  srli         t6, t6, 17
                  and          a0, s7, a3
                  nop
                  slli         tp, a6, 29
                  srai         s0, tp, 20
                  ori          a2, t3, 677
                  and          gp, s1, s8
                  srl          s7, t3, a1
                  xor          s8, gp, t1
                  sltu         a3, t6, a2
                  la x1, test_done
                  jalr x0, x1, 0
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
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x18, x30, zero
                  csrr x25, 0x300 # MSTATUS
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 31
                  bne x25, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x23, 0x3 # BREAKPOINT
                  beq x25, x23, ebreak_handler
                  li x23, 0x8 # ECALL_UMODE
                  beq x25, x23, ecall_handler
                  li x23, 0x9 # ECALL_SMODE
                  beq x25, x23, ecall_handler
                  li x23, 0xb # ECALL_MMODE
                  beq x25, x23, ecall_handler
                  li x23, 0x1
                  beq x25, x23, instr_fault_handler
                  li x23, 0x5
                  beq x25, x23, load_fault_handler
                  li x23, 0x7
                  beq x25, x23, store_fault_handler
                  li x23, 0xc
                  beq x25, x23, pt_fault_handler
                  li x23, 0xd
                  beq x25, x23, pt_fault_handler
                  li x23, 0xf
                  beq x25, x23, pt_fault_handler
                  li x23, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x23, illegal_instr_handler
                  csrr x23, 0x343 # MTVAL
                  1: la x1, test_done
                  jalr x1, x1, 0

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
                  la x1, write_tohost
                  jalr x0, x1, 0

instr_fault_handler:
                  add x30, x18, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

load_fault_handler:
                  add x30, x18, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

store_fault_handler:
                  add x30, x18, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

ebreak_handler:   
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x30, x18, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

illegal_instr_handler:
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x30, x18, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x25, 0x300 # MSTATUS;
                  csrr  x25, 0x304 # MIE;
                  csrr  x25, 0x344 # MIP;
                  csrrc x25, 0x344, x25 # MIP;
                  add x30, x18, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
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
