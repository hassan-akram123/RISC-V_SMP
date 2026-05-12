.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x31, h0_start
jalr x0, x31, 0
h0_start:
                  li x19, 0x40000100
                  csrw 0x301, x19
kernel_sp:        
                  la x30, kernel_stack_end

trap_vec_init:    
                  la x19, mtvec_handler
                  ori x19, x19, 0
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
                  li x0, 0x51836b0c
                  li x1, 0xe
                  li x2, 0x3
                  li x3, 0x667eb953
                  li x4, 0xe99b4e60
                  li x5, 0x5c16f4e9
                  li x6, 0x0
                  li x7, 0xf71ef707
                  li x8, 0x0
                  li x9, 0xc
                  li x10, 0x27eab4ee
                  li x11, 0xf
                  li x12, 0x869451a8
                  li x13, 0x0
                  li x14, 0xd34392e9
                  li x15, 0x80000000
                  li x16, 0x0
                  li x18, 0x0
                  li x19, 0xe
                  li x20, 0x0
                  li x21, 0xfa002385
                  li x22, 0x7
                  li x23, 0x5
                  li x24, 0x9fcde0ce
                  li x25, 0x0
                  li x26, 0xfcdd7753
                  li x27, 0x3d011e36
                  li x28, 0x80000000
                  li x29, 0x0
                  li x31, 0x8
                  la x17, user_stack_end
main:             li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           a6, 0x0
                  li           sp, 0x0
                  li           tp, 0xffffffff
                  li           s4, 0x446c8d68
                  li           t1, 0x36fa6f14
                  li           s0, 0xffffffff
                  li           s7, 0x33178b4f
                  li           a5, 0xffffffff
                  li           s9, 0x80000000
                  auipc        s8, 838475
                  addi         a5, a5, 112
                  sub          s7, sp, a6
                  nop
                  lui          tp, 818349
                  addi         s7, s8, -923
                  nop
                  auipc        a6, 94620
                  add          t1, tp, tp
                  lui          sp, 657806
                  addi         t1, s8, -1724
                  lui          sp, 817482
                  addi         s0, s8, 1052
                  addi         s7, a5, 937
                  auipc        s8, 669131
                  add          s0, sp, a5 #end riscv_int_numeric_corner_stream_15
                  li           s10, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           s0, 0x0
                  li           a0, 0x109b32d6
                  li           a4, 0x0
                  li           s5, 0xffffffff
                  li           s2, 0xccca7b63
                  li           s7, 0x4b040966
                  li           s9, 0x80000000
                  li           sp, 0xffffffff
                  li           s4, 0x80000000
                  nop
                  nop
                  auipc        s2, 704014
                  add          s5, s9, s5
                  auipc        sp, 961533
                  addi         s2, s9, -1816
                  auipc        s9, 688746
                  nop
                  sub          s2, s9, s9
                  add          s2, a4, s9
                  auipc        s4, 559652
                  nop
                  add          s4, a4, s4
                  auipc        s5, 303027
                  add          a4, sp, sp
                  addi         s4, s0, 609
                  addi         s5, s5, 1800
                  nop
                  addi         a4, a0, 1645
                  sub          sp, s10, s7
                  sub          a0, a0, s5
                  nop
                  nop
                  auipc        a4, 792028
                  add          s4, a4, s4 #end riscv_int_numeric_corner_stream_8
                  li           s9, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           s2, 0xffffffff
                  li           a0, 0x9a93ff54
                  li           sp, 0xa1658445
                  li           s1, 0x724d26e5
                  li           t1, 0x80000000
                  li           a3, 0xffffffff
                  li           s10, 0x907182b3
                  li           a6, 0x0
                  li           tp, 0x0
                  auipc        s9, 834453
                  sub          s9, s9, sp
                  auipc        s2, 414036
                  sub          t1, a6, s2
                  lui          a3, 298112
                  addi         t1, s9, 1832
                  lui          s2, 766958
                  sub          t1, s10, s10
                  nop
                  auipc        s2, 446695
                  sub          s9, a0, a6
                  add          s1, s9, a0
                  sub          s9, s10, a6
                  addi         a0, s2, 428
                  auipc        a0, 125662
                  auipc        s10, 910852
                  add          s10, s1, s2
                  auipc        a6, 915725
                  addi         sp, t1, -232
                  nop
                  add          s10, s10, a0
                  nop
                  auipc        a3, 27666
                  sub          s1, a3, sp
                  add          a6, s10, s9
                  addi         sp, s2, 181
                  sub          a3, tp, tp #end riscv_int_numeric_corner_stream_18
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           s0, 0x80000000
                  li           s7, 0xffffffff
                  li           a0, 0x80000000
                  li           t1, 0x0
                  li           s6, 0x80000000
                  li           a5, 0x17441937
                  li           s9, 0x80000000
                  li           s3, 0x80000000
                  li           gp, 0xba2b55f6
                  add          a5, a0, gp
                  sub          a5, s6, s6
                  addi         sp, t1, -262
                  add          s7, gp, a5
                  sub          s7, s3, s9
                  sub          gp, s3, a0
                  lui          a0, 92745
                  addi         t1, t1, 1725
                  auipc        a5, 13735
                  auipc        gp, 59117
                  lui          s3, 548488
                  lui          s9, 733472
                  nop
                  lui          gp, 98618
                  lui          gp, 541486
                  lui          gp, 685281
                  add          s9, s0, a0
                  lui          s6, 524879
                  nop
                  sub          s6, s9, s7
                  nop
                  add          a5, s6, a5
                  add          s7, s3, s0
                  nop
                  add          s7, a0, s9
                  add          s0, s3, s6
                  lui          gp, 908107 #end riscv_int_numeric_corner_stream_3
                  li           a1, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           s9, 0x981595de
                  li           s6, 0xc218240
                  li           t4, 0xffffffff
                  li           gp, 0x0
                  li           s10, 0x0
                  li           a2, 0x80000000
                  li           t1, 0x80000000
                  li           tp, 0xffffffff
                  li           s1, 0xffffffff
                  sub          s10, a1, s6
                  sub          gp, tp, a2
                  auipc        s9, 716704
                  sub          tp, s10, s9
                  lui          s9, 307023
                  addi         tp, t1, 21
                  sub          t4, s9, s10
                  lui          tp, 656282
                  lui          s9, 605292
                  nop
                  addi         s10, t1, -1058
                  addi         t1, a1, 1081
                  lui          s1, 1019898
                  auipc        a1, 626211
                  addi         a1, t1, -1946
                  addi         gp, gp, 708
                  sub          s9, tp, t4
                  auipc        tp, 459021 #end riscv_int_numeric_corner_stream_16
                  sltu         a6, s8, a6
                  sub          t0, s1, t1
                  xor          s4, t6, s0
                  li           a1, 0x13b93bcb #start riscv_int_numeric_corner_stream_0
                  li           a4, 0x80000000
                  li           s3, 0x80000000
                  li           s5, 0x556212a6
                  li           s4, 0x38baab10
                  li           tp, 0x928f6754
                  li           s11, 0xa66df8ed
                  li           a6, 0x0
                  li           s9, 0xffffffff
                  li           a0, 0x0
                  addi         s5, s5, 977
                  add          s3, a1, tp
                  auipc        s5, 214502
                  auipc        a6, 344983
                  auipc        tp, 334477
                  sub          tp, tp, s9
                  nop
                  addi         tp, s4, 1057
                  sub          s3, s3, a4
                  addi         s4, a0, -451
                  auipc        s5, 444559
                  sub          s3, s3, s9
                  lui          s9, 106835
                  lui          s11, 426238
                  add          s3, tp, a4
                  auipc        s5, 199568
                  sub          s11, a6, a6
                  lui          s5, 142225
                  add          tp, a1, s3
                  sub          a4, s9, s4
                  addi         tp, s4, 1287
                  auipc        tp, 89588
                  auipc        s3, 147880
                  sub          a1, s3, s5
                  auipc        s9, 438648
                  auipc        a1, 132406
                  lui          s3, 519030 #end riscv_int_numeric_corner_stream_0
                  addi         s1, a4, -1256
                  srai         s10, a5, 7
                  or           a6, a7, t6
                  and          a6, s5, sp
                  nop
                  slt          s4, s4, s6
                  andi         a6, s3, 900
                  xori         t3, a3, -625
                  nop
                  sltiu        t1, a7, -424
                  xori         s11, a6, -2044
                  slti         gp, s11, 1687
                  add          s0, a3, a5
                  lui          t4, 523926
                  add          t4, s3, t5
                  auipc        a2, 6176
                  xor          a3, t0, s0
                  or           s7, a0, s6
                  xor          s10, sp, a7
                  slti         t3, a5, 1112
                  slli         a3, s1, 8
                  and          a1, s7, t6
                  sub          ra, t1, s1
                  or           t2, s3, a1
                  srli         t2, s1, 24
                  srai         t1, t2, 22
                  srli         tp, gp, 6
                  add          a5, s3, s2
                  addi         s2, s0, 684
                  nop
                  slli         tp, zero, 14
                  srli         s3, s2, 23
                  nop
                  slli         s0, a0, 31
                  or           s1, a7, t2
                  slt          s10, t2, tp
                  srli         s4, a6, 26
                  and          tp, a1, t3
                  sra          gp, a0, a2
                  sll          a1, s11, sp
                  and          s2, s10, s11
                  or           s7, t1, t0
                  sll          s9, s10, tp
                  lui          tp, 157715
                  lui          s2, 831582
                  or           a5, s9, ra
                  xori         t4, s2, -159
                  xori         s2, ra, -1209
                  srl          a0, a2, t6
                  lui          s9, 147028
                  ori          tp, s10, 1182
                  sra          a5, s0, s11
                  nop
                  addi         a3, t3, -1105
                  lui          s2, 175266
                  slli         sp, s11, 29
                  xori         a0, sp, 1818
                  addi         s2, t0, -1661
                  add          t0, zero, tp
                  lui          t2, 804110
                  lui          s4, 694957
                  srl          a6, s2, sp
                  xori         t3, tp, -1043
                  srli         ra, s11, 14
                  slti         t1, a6, -574
                  nop
                  sltu         t4, s8, s9
                  sra          t0, a0, tp
                  sub          a1, s2, a7
                  sltu         s5, t5, a4
                  slti         tp, a6, -1097
                  add          a1, t4, s5
                  slti         tp, a2, -285
                  addi         s0, t4, 706
                  add          t2, t1, s6
                  sra          s1, gp, s3
                  lui          t3, 195101
                  sltiu        a1, t2, 1469
                  sra          tp, t3, s6
                  andi         s1, s2, -1994
                  slt          t0, a6, s1
                  slli         s1, s6, 16
                  slt          t1, a3, t1
                  auipc        t2, 694977
                  add          s4, a7, a2
                  sll          s0, t3, s11
                  addi         a2, s1, -1722
                  andi         ra, a7, -1511
                  xor          ra, s1, s3
                  sltu         s10, a7, s2
                  ori          a0, t2, 136
                  slti         a6, s10, -75
                  nop
                  and          a6, s6, t1
                  sltu         a4, s6, a3
                  sltiu        s8, t4, -666
                  nop
                  srli         s10, t0, 8
                  lui          sp, 455046
                  and          s6, s2, a0
                  srai         a6, zero, 2
                  andi         t4, s2, 1239
                  srli         zero, t0, 24
                  xor          t2, sp, t0
                  sra          ra, t0, s6
                  or           s9, a2, s8
                  srli         s4, a4, 10
                  sra          a1, gp, s3
                  and          s6, t0, t1
                  xori         s1, a0, -1641
                  lui          s7, 240975
                  slti         t4, gp, -1191
                  and          s4, s2, sp
                  xor          a1, sp, t5
                  add          s5, t4, s7
                  and          tp, zero, t2
                  sra          a5, s7, a3
                  slt          ra, t0, t1
                  sltiu        t4, s7, 411
                  srl          s7, a6, s4
                  srl          a4, s7, t6
                  srli         ra, s3, 6
                  nop
                  sub          s11, s5, zero
                  addi         s7, t4, -1076
                  slli         s11, s10, 27
                  sub          s6, s0, t4
                  lui          t2, 425892
                  nop
                  srai         a4, zero, 16
                  auipc        s10, 886284
                  lui          s6, 462635
                  sltu         a1, s9, s10
                  andi         s8, sp, 1872
                  ori          gp, t6, 1285
                  or           s7, t3, a3
                  xori         t4, t5, 368
                  sltiu        a2, sp, -1370
                  srl          s11, s4, a5
                  srl          s11, s9, s6
                  add          t4, a1, t4
                  nop
                  sra          ra, t1, a0
                  lui          t4, 967626
                  slt          a4, a3, s5
                  and          s8, a5, s11
                  sltiu        tp, t5, -1537
                  sra          ra, t1, a0
                  xori         a4, ra, 798
                  or           a5, ra, s2
                  xori         a0, ra, -671
                  sll          s0, t6, s10
                  lui          s1, 17384
                  xori         gp, t2, -542
                  nop
                  sltiu        s4, s7, 185
                  lui          zero, 244229
                  srl          gp, zero, a5
                  xori         s8, t1, -1492
                  sltiu        s0, s11, -1854
                  srli         s7, zero, 13
                  slt          s7, a7, s5
                  andi         s1, s9, -57
                  ori          a6, t1, 158
                  slli         s1, t0, 8
                  sll          t3, a0, s7
                  andi         a5, t1, 2019
                  sltiu        sp, t0, 1193
                  slti         s7, a7, -1141
                  slti         a2, s0, -54
                  and          s4, gp, s4
                  add          ra, s0, s0
                  sltiu        zero, s7, -406
                  or           t2, t2, s7
                  sltu         a3, tp, s1
                  and          s6, a1, ra
                  ori          a2, s6, -883
                  slti         t2, t6, -472
                  add          s4, s5, s2
                  slli         t3, t6, 27
                  slt          gp, gp, s1
                  xor          t4, s10, a4
                  xori         a4, zero, -789
                  sll          sp, a0, t4
                  sra          s4, t2, s10
                  andi         a2, s2, 1324
                  nop
                  slli         s2, a5, 20
                  xori         s6, t5, 1081
                  ori          s2, zero, -746
                  xori         ra, a5, -1835
                  sll          s8, t5, a3
                  andi         s10, t3, -2020
                  sra          t0, a1, s7
                  xori         s9, a6, 318
                  andi         sp, t4, 896
                  and          t0, s1, s11
                  xori         s10, s10, -958
                  sra          s8, a7, a6
                  addi         t0, a6, -1548
                  addi         a3, s8, 956
                  srl          s0, s10, a4
                  nop
                  srli         s6, a4, 28
                  add          gp, s3, s11
                  or           s11, t3, a1
                  slt          tp, s7, s4
                  sltiu        t2, a1, 1405
                  sll          t3, t4, t0
                  srai         zero, ra, 15
                  nop
                  slt          t1, t1, a7
                  add          t3, a1, t2
                  srli         a2, s7, 5
                  sll          ra, a0, s11
                  srli         s6, sp, 20
                  xori         t0, a1, 1176
                  xori         s3, a2, -229
                  nop
                  andi         ra, s5, 335
                  or           s8, tp, t2
                  lui          t3, 398517
                  li           a5, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           s6, 0x80000000
                  li           a0, 0x80000000
                  li           s9, 0xffffffff
                  li           t0, 0x95057312
                  li           tp, 0xd2f125f2
                  li           a4, 0x80000000
                  li           s4, 0x80000000
                  li           a3, 0xffffffff
                  li           t3, 0xdd154658
                  auipc        s6, 41830
                  auipc        a3, 525392
                  auipc        t3, 710707
                  lui          s4, 595171
                  sub          t0, s9, t3
                  lui          a0, 220603
                  lui          t3, 824708
                  lui          a5, 989809
                  addi         tp, a0, 300
                  add          t0, a5, s4
                  auipc        s4, 928533
                  sub          a4, s6, s4
                  addi         t3, s9, -430
                  add          a5, a5, a0
                  addi         s4, a5, -477
                  addi         tp, s4, -464
                  auipc        a0, 154006
                  addi         a4, a5, 155
                  nop
                  add          a0, s4, tp
                  nop
                  addi         t3, t0, 626
                  lui          a3, 630893
                  nop
                  auipc        s9, 1043227
                  addi         s6, tp, -1208
                  lui          a3, 59560
                  add          a4, tp, t0 #end riscv_int_numeric_corner_stream_4
                  srli         t1, ra, 11
                  srli         a0, tp, 16
                  sub          s11, tp, a5
                  ori          ra, a6, 1970
                  slti         a5, s7, 426
                  ori          t1, s11, -756
                  slt          gp, a7, a5
                  sltu         s6, t0, t2
                  lui          s5, 679910
                  ori          t4, s8, 1870
                  slt          s3, sp, zero
                  lui          a6, 463279
                  xor          t3, tp, s1
                  srai         t0, a0, 21
                  sltu         t2, a5, t3
                  ori          s11, a7, 1428
                  sra          a1, tp, ra
                  andi         s2, a0, 1818
                  or           s7, a1, tp
                  andi         a6, s9, -429
                  sll          a4, t0, s9
                  xori         s5, a4, -1970
                  and          t1, tp, a1
                  addi         s3, a2, -481
                  auipc        t1, 368832
                  nop
                  add          s9, s10, s5
                  sll          s2, t6, t1
                  auipc        t3, 601457
                  sltu         a2, a3, tp
                  sub          a6, s3, s3
                  andi         s2, gp, 1909
                  addi         zero, a5, -2023
                  ori          s1, sp, 1965
                  slti         a3, t6, 664
                  slti         s5, t6, -1429
                  srli         a0, s2, 13
                  ori          s8, t3, -5
                  nop
                  addi         gp, t5, 584
                  and          t0, t1, a1
                  sll          s1, s5, ra
                  srai         sp, s8, 5
                  andi         a2, s6, 799
                  xor          s7, t0, ra
                  nop
                  add          s1, t6, t0
                  xor          s11, s8, a7
                  or           s7, s1, t4
                  add          a3, a5, t6
                  xor          ra, s9, a1
                  srl          s2, t6, s5
                  xor          s1, s2, tp
                  sll          t0, ra, t2
                  add          ra, t4, s11
                  or           t2, s5, s8
                  sltiu        s11, zero, 1976
                  srl          a0, s3, a7
                  slti         s0, t4, 533
                  srai         s2, t3, 16
                  slli         s0, a6, 25
                  and          a3, t0, a7
                  sll          a0, a2, s8
                  auipc        a4, 745261
                  sub          a4, gp, s3
                  slli         zero, a7, 11
                  li           a3, 0x32555523 #start riscv_int_numeric_corner_stream_11
                  li           s6, 0x80000000
                  li           a2, 0x266c7ff0
                  li           t4, 0x0
                  li           tp, 0x2b780239
                  li           s1, 0x90e30d13
                  li           s11, 0x115f3581
                  li           a4, 0xda9dda34
                  li           t1, 0x0
                  li           gp, 0x94d15647
                  add          t4, s1, s1
                  nop
                  sub          s6, tp, t1
                  addi         s11, s1, 1435
                  lui          a2, 345781
                  nop
                  addi         s11, t4, 673
                  add          gp, a4, a4
                  auipc        t4, 620269
                  auipc        s6, 879103
                  nop
                  add          a4, a4, s1
                  addi         t4, a2, 598
                  add          t4, a3, a3
                  nop
                  add          t1, gp, s6
                  auipc        tp, 767744
                  lui          tp, 301780
                  add          s1, t1, gp
                  lui          tp, 178247
                  nop
                  nop
                  lui          s6, 747810
                  add          a2, s6, s1
                  auipc        s1, 761988
                  addi         a4, s11, 1190
                  add          t4, s1, a3
                  nop #end riscv_int_numeric_corner_stream_11
                  srl          gp, a1, s9
                  srai         ra, s7, 22
                  xor          a6, a7, s3
                  ori          a4, s8, 124
                  srl          s8, s6, s11
                  srl          sp, s8, tp
                  slli         t2, t6, 0
                  auipc        ra, 701140
                  slli         s5, a1, 31
                  lui          s0, 371701
                  ori          a5, s6, 1503
                  and          s3, s5, a1
                  slti         zero, t1, -907
                  lui          s11, 231271
                  srl          tp, tp, a6
                  addi         s2, t5, 1456
                  sltu         s10, t0, s5
                  and          tp, t4, zero
                  or           zero, s1, a0
                  sltu         t1, a4, s7
                  add          s1, sp, a6
                  sll          t4, s5, t2
                  ori          ra, ra, -210
                  sra          gp, s0, zero
                  sll          a3, a6, t4
                  sltiu        s10, t4, -1159
                  add          s10, s11, s5
                  add          s3, gp, s4
                  sltu         a5, a5, s3
                  ori          t2, s0, 250
                  ori          s5, t4, -191
                  andi         ra, a1, -318
                  nop
                  sra          s6, t0, ra
                  sll          sp, t5, a3
                  sub          a0, a2, t2
                  srl          a5, a6, s7
                  sll          s1, zero, zero
                  auipc        t2, 504885
                  srl          s7, s7, t5
                  sll          s3, a3, s5
                  sra          s10, a4, s1
                  and          zero, s6, zero
                  sra          zero, a6, s2
                  sltu         s9, t2, a5
                  and          s7, s11, a4
                  lui          s0, 196711
                  lui          s8, 514992
                  sub          gp, t1, gp
                  slti         s6, a5, 447
                  lui          s11, 622439
                  sltu         a1, s5, t3
                  add          a4, a0, a0
                  xori         a1, t4, 1964
                  addi         sp, t4, -1505
                  sra          a6, s5, t0
                  auipc        s10, 287992
                  slt          a3, a2, s10
                  addi         s8, t4, 407
                  sll          sp, t5, t5
                  sll          s11, t0, s7
                  lui          t3, 1036133
                  lui          s3, 535971
                  or           s8, s7, t4
                  xor          s3, a5, s5
                  slti         gp, t0, -1502
                  srai         s10, s2, 12
                  or           s11, t4, a3
                  add          a5, t6, s10
                  sra          s1, a5, a3
                  srl          a6, t6, a3
                  srli         gp, a6, 16
                  slt          a3, a3, t6
                  srli         s1, s11, 13
                  and          s10, sp, s2
                  andi         a6, s10, 1457
                  addi         s6, s7, 1762
                  srl          s5, s2, a5
                  add          s1, s10, a6
                  or           sp, s8, a0
                  or           gp, t2, ra
                  sll          ra, t2, s11
                  ori          s7, s11, -1892
                  lui          s9, 586624
                  auipc        s2, 268780
                  slti         a2, s8, -1418
                  srai         a6, s8, 13
                  andi         s2, sp, 1660
                  sltiu        a6, s9, 1766
                  lui          a2, 114546
                  srai         a4, s0, 28
                  sltu         zero, a1, t2
                  or           s0, s6, a3
                  sltiu        t1, t6, -1307
                  srai         t3, s4, 2
                  sltu         s7, t4, s2
                  and          a0, t5, s2
                  sltu         ra, s2, a4
                  sltu         a2, t1, a2
                  nop
                  sltu         s3, a0, t0
                  andi         ra, zero, -1585
                  auipc        s11, 680098
                  add          gp, sp, s9
                  slti         a5, s11, 1121
                  slt          s10, ra, s1
                  sltu         a4, ra, s1
                  andi         tp, a7, 887
                  add          s7, t0, s9
                  sra          ra, s8, a6
                  sll          tp, s8, s4
                  slt          a0, t1, s3
                  add          a0, t6, s0
                  auipc        t1, 527830
                  or           s8, zero, t2
                  xor          a1, s11, a4
                  slti         s3, sp, -802
                  slti         a0, t6, 386
                  sra          sp, s9, s1
                  and          zero, s5, s2
                  andi         ra, s10, -1069
                  sll          gp, ra, s3
                  slt          a1, tp, a0
                  nop
                  srai         s9, s8, 5
                  sll          a4, a4, a5
                  addi         gp, s7, -1448
                  xor          sp, a2, a6
                  addi         gp, t3, -26
                  sra          a0, s1, t2
                  xori         s9, s8, -1490
                  xor          t0, t6, t4
                  srai         a1, s5, 23
                  auipc        s0, 109474
                  xori         s2, s8, 1614
                  and          t3, t5, s2
                  slti         s11, s2, -752
                  and          t2, s5, s10
                  sltiu        s7, a5, 588
                  sltiu        gp, sp, 1434
                  andi         ra, a7, -743
                  addi         t0, s5, -1953
                  sub          t1, a0, s6
                  and          t3, s3, s10
                  srli         a0, s1, 20
                  srli         s11, ra, 31
                  sll          a1, s0, s8
                  lui          s9, 1042212
                  sltu         zero, t3, a7
                  sltu         s6, a0, s8
                  slti         s2, t3, 964
                  sltu         s1, a0, s0
                  srl          s3, a1, t4
                  slti         s11, a0, -307
                  srl          s0, s1, zero
                  srl          s8, ra, t5
                  srli         a0, s1, 31
                  add          sp, s2, s2
                  srli         t3, a2, 20
                  slt          s3, s4, a2
                  sltiu        a0, gp, 1979
                  andi         s3, t6, -1630
                  lui          zero, 1038310
                  xor          a3, t5, a3
                  and          t1, s4, a1
                  sll          a4, s1, s5
                  slli         s8, s7, 31
                  ori          s1, a5, -11
                  sub          tp, s8, a0
                  add          a5, t6, s0
                  slt          ra, ra, t5
                  srli         a3, s4, 28
                  sltiu        s8, gp, -1538
                  sra          a0, tp, s0
                  sltu         zero, t3, a4
                  sub          t2, s1, s7
                  slti         a5, a5, 1966
                  sub          s10, s8, s11
                  srl          s5, s6, s6
                  sll          a3, t4, t3
                  xor          a0, t0, t2
                  auipc        s0, 211776
                  sub          a0, s0, s4
                  auipc        a2, 949531
                  xor          sp, s4, a1
                  sltiu        t3, t2, -693
                  auipc        a4, 281297
                  sltiu        a5, t3, -1738
                  ori          a1, t1, -1767
                  andi         a6, a4, -345
                  srli         s5, ra, 31
                  xor          sp, s4, a2
                  auipc        t4, 613914
                  slt          t1, t3, s8
                  and          a0, s6, t1
                  sra          t0, s7, s3
                  xori         a3, t4, 442
                  addi         gp, t1, -1818
                  ori          a1, s9, 645
                  addi         a5, s3, 509
                  slti         a2, a3, -593
                  add          s5, t0, gp
                  slli         sp, a4, 11
                  or           s2, a2, t5
                  add          a4, t6, t5
                  add          sp, t2, a0
                  sltiu        sp, s6, -1346
                  sltu         t1, s2, zero
                  srl          tp, t4, a5
                  lui          s0, 625939
                  slli         s7, s9, 0
                  and          a4, t5, s3
                  xor          a2, s0, s5
                  nop
                  sltu         ra, s3, s3
                  addi         s0, t0, -254
                  sub          s7, a7, s7
                  ori          s6, s6, 1434
                  xor          s3, s4, tp
                  xori         a3, t0, 791
                  sra          sp, s0, t6
                  srai         s4, s3, 26
                  xori         s6, s1, -320
                  sltu         zero, s6, a2
                  sltu         a4, s7, s8
                  auipc        s2, 66423
                  add          s8, s11, a3
                  addi         s2, t6, -421
                  lui          a2, 988322
                  nop
                  add          s7, a0, s1
                  addi         gp, s6, 213
                  srl          s9, s7, t5
                  srli         a0, a6, 26
                  slt          s4, s5, s9
                  slti         t4, zero, -407
                  addi         a2, t2, 903
                  addi         a0, sp, 728
                  auipc        s4, 825281
                  slt          t2, s7, s8
                  or           s2, a2, a4
                  srl          a4, tp, s9
                  srl          s9, a3, a0
                  andi         ra, t4, 488
                  slti         a1, a1, -1651
                  and          a4, a7, t1
                  or           s0, t1, zero
                  srai         s2, s9, 10
                  auipc        s1, 1041589
                  and          s6, t4, s2
                  auipc        sp, 215601
                  xori         s5, t5, -1453
                  sub          a3, s1, t2
                  addi         zero, s8, 271
                  srai         a2, s7, 5
                  add          a4, t3, a3
                  sltiu        a4, sp, -1668
                  andi         s1, t2, -738
                  lui          t3, 258679
                  lui          t4, 125788
                  xor          s7, s6, s5
                  sltu         sp, s9, s2
                  or           s7, t2, zero
                  and          t4, s9, s4
                  or           t2, s9, s10
                  sltiu        s5, ra, 1334
                  ori          s1, a1, 1574
                  slti         s8, a1, -6
                  andi         a5, t5, -1768
                  slt          s7, s3, s10
                  sra          s11, s6, a1
                  slt          tp, tp, s7
                  or           t1, a4, t2
                  srl          s1, gp, zero
                  or           a3, a4, s9
                  sltiu        gp, s10, -1159
                  sltu         s4, s1, a5
                  sra          s4, tp, a7
                  srai         t3, t4, 20
                  and          sp, t2, t1
                  sll          s3, gp, a5
                  slti         a2, s7, -399
                  srai         s5, s0, 29
                  andi         t3, a6, -483
                  slt          s2, s9, t2
                  srl          s4, s7, s7
                  slti         t4, t2, -188
                  xori         a2, s2, -813
                  auipc        a4, 501518
                  sll          a0, a2, a5
                  srai         gp, a2, 29
                  xor          s3, a0, a2
                  sltu         t4, a1, a1
                  slt          s9, t1, t5
                  xori         a1, a2, 1074
                  xor          s11, a0, a6
                  sltu         s6, t6, t0
                  or           a6, s11, a0
                  andi         s4, s4, -233
                  sltiu        t0, s11, 1965
                  ori          s10, t6, 495
                  sub          s3, tp, a7
                  sub          s7, t6, t4
                  auipc        s1, 722842
                  ori          s6, t5, -1753
                  andi         a6, s3, -1544
                  auipc        gp, 242351
                  srli         tp, t6, 5
                  xori         s8, t5, -1072
                  ori          s11, t0, 1837
                  xor          s1, s10, s6
                  nop
                  sltiu        a3, s9, -306
                  andi         tp, t5, 751
                  sra          t0, s6, a4
                  andi         t0, t4, 508
                  auipc        gp, 183045
                  xor          a2, s2, s9
                  slti         s10, s9, 518
                  nop
                  sub          s3, a7, s2
                  add          s7, a5, s7
                  sltiu        t1, t3, 435
                  srli         tp, tp, 19
                  andi         t3, s1, -1414
                  xor          s10, s8, a3
                  addi         s2, a4, -1143
                  xor          a6, gp, t3
                  sub          s8, a4, s0
                  and          ra, s11, a0
                  add          s4, a2, a0
                  sub          s10, s7, t5
                  ori          a4, s10, -1707
                  srai         a5, a2, 17
                  or           gp, s1, a5
                  lui          s7, 768039
                  addi         s3, a2, 614
                  slli         a3, s9, 11
                  auipc        s8, 545432
                  nop
                  sltiu        t0, s10, 169
                  or           s1, t6, s3
                  sltu         t3, a4, gp
                  sltu         ra, t5, a6
                  ori          a4, tp, 1008
                  and          t0, s2, s8
                  slli         a3, s7, 2
                  slt          a0, a0, s4
                  or           t4, t1, s11
                  sltu         sp, sp, s8
                  sub          s8, t3, s3
                  slt          gp, tp, s4
                  sltu         a1, s2, t4
                  slti         a2, a1, -1208
                  slti         t3, a4, -1724
                  auipc        gp, 106343
                  sub          ra, s3, t4
                  addi         s2, t0, 373
                  sra          a6, s8, s8
                  ori          zero, a6, -1848
                  sltiu        tp, s4, -1944
                  auipc        s1, 29317
                  nop
                  srl          s3, s2, t5
                  xori         s0, sp, 767
                  auipc        sp, 799353
                  slt          t1, s1, gp
                  sub          a2, t0, t5
                  srl          sp, a4, s7
                  sra          s10, a0, s4
                  sltiu        gp, a7, 1607
                  sltiu        s7, t1, 1944
                  srl          gp, s9, s0
                  auipc        t0, 947547
                  lui          s8, 729945
                  slli         a4, t3, 5
                  sra          t4, a4, a6
                  xor          t3, t0, a6
                  and          t2, a7, s11
                  lui          tp, 517860
                  lui          a0, 241534
                  sltiu        s9, a7, -1098
                  srli         s11, s2, 30
                  xori         tp, a7, -1913
                  xor          t4, a2, a7
                  srli         s5, s5, 14
                  srai         a4, s5, 4
                  sltu         zero, s9, a7
                  or           sp, a6, a3
                  and          s2, sp, s9
                  and          s10, a6, s8
                  srl          t2, s11, s9
                  nop
                  add          a1, zero, a6
                  slti         a3, a0, -1680
                  or           s7, a7, s5
                  slt          s10, t2, s1
                  sra          t3, s3, s1
                  andi         s4, s3, 339
                  or           a6, a5, s5
                  sltiu        a1, s10, 1195
                  sltiu        s7, zero, 798
                  sltu         t3, sp, t0
                  sra          a3, a6, s0
                  slli         sp, a4, 24
                  xori         s11, t3, -1918
                  ori          tp, a4, 1405
                  ori          a3, t4, 1966
                  sub          s9, s5, a1
                  and          s10, s9, a3
                  slli         s10, s1, 0
                  srai         gp, a5, 20
                  srli         s6, a4, 19
                  andi         t4, t0, 79
                  lui          zero, 569262
                  lui          a5, 341046
                  srl          s1, sp, s7
                  srl          a6, a2, t2
                  srai         t2, a7, 23
                  slli         s0, s7, 28
                  addi         s0, a6, 1519
                  slti         a6, s1, 2035
                  sltiu        s0, s10, -2026
                  slti         s7, s1, -937
                  sra          tp, s6, tp
                  sltu         s6, t3, t3
                  sll          zero, t0, s2
                  auipc        s7, 547097
                  slli         a6, t0, 25
                  addi         s4, a6, 367
                  add          s9, t3, a1
                  ori          t3, a7, 320
                  sub          s3, s0, s11
                  sra          tp, s2, t3
                  and          s10, t2, gp
                  nop
                  sltu         t4, sp, s1
                  addi         sp, s11, 255
                  auipc        t4, 204990
                  slt          a2, t4, a5
                  nop
                  and          gp, t1, t4
                  sll          s5, a7, s3
                  sub          t1, s11, t0
                  srl          s6, a4, s4
                  add          a6, t1, s0
                  nop
                  or           s5, a0, tp
                  sub          a1, t3, t2
                  slti         a5, ra, 41
                  sltiu        t3, zero, -452
                  andi         zero, t3, 1927
                  nop
                  nop
                  sll          a5, a7, a2
                  lui          t3, 873051
                  sltiu        a5, a4, 339
                  lui          ra, 185253
                  nop
                  and          s8, sp, s0
                  sub          s10, a1, s5
                  sltiu        s7, a5, -1728
                  or           s9, sp, t0
                  sll          t1, s1, s3
                  andi         t0, s6, 760
                  andi         s3, s8, 135
                  addi         tp, s3, -1527
                  ori          sp, zero, -1603
                  slt          s2, t3, t4
                  and          t4, zero, a1
                  srli         t3, a4, 4
                  sltiu        a6, t5, 848
                  nop
                  xori         s10, t5, -978
                  addi         s9, t4, -624
                  andi         s7, s0, 1353
                  srli         s3, s3, 3
                  and          t2, s1, a5
                  srai         s9, s0, 14
                  slli         t2, s4, 9
                  xori         s4, a7, 678
                  slli         gp, s10, 12
                  srai         t3, t1, 22
                  addi         a4, s7, 60
                  sltiu        s5, s5, 540
                  xori         s9, t0, 1165
                  sltu         s6, a0, s6
                  lui          a6, 867782
                  slt          ra, a7, s8
                  addi         sp, t3, -1232
                  add          t4, s3, s1
                  add          t4, t6, s0
                  sub          s10, tp, a5
                  slli         tp, a3, 1
                  sll          a3, s0, a6
                  addi         t3, t0, -402
                  srl          s6, s7, s8
                  ori          s9, s1, 1669
                  sltiu        s0, s8, 941
                  sub          s9, s8, s2
                  lui          a4, 13674
                  andi         s3, s5, 1590
                  slli         ra, a7, 9
                  lui          s0, 363116
                  auipc        a5, 620975
                  auipc        a1, 418267
                  slli         s9, t5, 22
                  sltiu        s11, s7, -330
                  slt          a4, s6, a1
                  andi         a2, t3, 886
                  slt          s2, t1, s10
                  slli         s2, s8, 11
                  sltu         s5, s10, gp
                  sltiu        ra, t5, 1655
                  sra          s3, t4, a4
                  sltu         zero, gp, t4
                  slti         t4, s3, -1111
                  nop
                  andi         ra, s10, 519
                  sltu         t3, a7, sp
                  sub          a0, a2, a3
                  andi         s0, s10, -240
                  sltu         s2, s1, s10
                  srai         t0, t6, 9
                  sra          s10, a7, t5
                  and          s2, tp, s6
                  or           s10, t6, s0
                  srl          a5, zero, s0
                  sltu         s1, tp, a5
                  addi         s10, s2, 857
                  sub          s9, s8, gp
                  add          zero, t2, s0
                  srai         s6, t6, 30
                  xori         a2, s5, 1368
                  add          s7, ra, t5
                  xor          s3, ra, a2
                  or           tp, tp, t4
                  sltu         sp, t6, ra
                  nop
                  slli         a4, ra, 15
                  lui          s5, 46843
                  slti         s3, s4, -848
                  or           t3, t6, sp
                  sltiu        a1, s0, -1
                  sltiu        s4, a7, 1334
                  andi         s7, a7, -298
                  add          s9, s6, gp
                  sltu         s5, t6, t0
                  sub          s8, a1, s7
                  sll          ra, t1, gp
                  xor          s8, sp, t5
                  slt          zero, s6, s11
                  auipc        s9, 972733
                  sltiu        ra, s0, -785
                  sra          zero, s1, t0
                  srli         s10, a0, 9
                  sub          a3, a6, s3
                  andi         a1, a4, 736
                  srai         s2, tp, 1
                  sltu         s8, zero, a1
                  nop
                  srl          s6, s0, a1
                  andi         s4, s8, 436
                  ori          a5, s5, 334
                  auipc        zero, 697902
                  slti         s0, zero, -103
                  lui          t4, 402677
                  nop
                  srai         a3, s5, 8
                  slt          s0, s0, s2
                  srl          s10, s0, s10
                  sra          t3, a2, t5
                  srai         gp, a6, 19
                  sltiu        s11, s2, -1361
                  slli         t1, s2, 5
                  sltiu        s2, a5, -811
                  sltu         t3, s1, a2
                  and          a6, zero, s1
                  auipc        ra, 541763
                  srai         a2, zero, 28
                  xor          tp, t2, sp
                  or           t2, zero, t3
                  slti         s8, s3, 371
                  sra          s10, s2, a3
                  srl          t2, s6, a7
                  xori         s8, s3, -1754
                  andi         t2, a7, -1632
                  add          t0, a0, a6
                  srli         a4, t5, 3
                  sltiu        s5, s10, -1545
                  sra          tp, s7, t4
                  nop
                  slti         s5, s1, 1947
                  lui          a0, 173108
                  sltiu        a0, zero, -1094
                  srl          s9, sp, s0
                  slli         s9, s1, 11
                  nop
                  xor          a1, s8, a5
                  slt          t4, ra, t3
                  srai         t4, a0, 31
                  xor          t4, s0, s5
                  slli         t0, a3, 23
                  auipc        t3, 377688
                  slli         t3, t0, 27
                  ori          t0, sp, 2019
                  slli         s8, t3, 14
                  add          s8, s4, s10
                  xori         s7, t1, -1775
                  nop
                  nop
                  xor          a0, s8, s10
                  xori         t2, t2, -1562
                  auipc        s5, 376392
                  xori         s4, s3, -970
                  and          a1, tp, s11
                  slt          a6, t5, s9
                  slti         ra, a7, 637
                  sltiu        a5, t1, 2005
                  ori          a2, a6, -1551
                  sll          s8, a5, s6
                  lui          t3, 916263
                  xori         s11, s1, 1616
                  sltiu        a2, s5, -1229
                  srl          s5, ra, s7
                  sll          s2, s2, s9
                  andi         s5, s4, -1587
                  add          a1, zero, gp
                  slt          s7, s5, s0
                  or           s10, t5, sp
                  srli         s5, s7, 21
                  ori          a6, a6, 1658
                  slti         a1, s2, 1950
                  srli         s2, a4, 17
                  xori         a5, t0, -1670
                  slti         a5, sp, 1768
                  xor          t2, t5, s11
                  srli         s5, ra, 0
                  sub          a3, s3, s6
                  nop
                  add          s8, a2, a5
                  addi         a4, sp, 440
                  lui          t1, 511441
                  srli         a3, s0, 23
                  xor          s6, a5, s10
                  addi         a2, a0, -703
                  add          s7, a6, s5
                  and          s2, s4, a0
                  xor          ra, gp, t2
                  slti         s3, tp, -1860
                  srli         a1, t4, 10
                  lui          t3, 367794
                  auipc        a0, 571950
                  sll          s6, s2, s8
                  xori         s10, s9, -316
                  or           zero, s10, a1
                  xor          s8, s10, s5
                  and          t4, a3, t0
                  add          s3, s8, a6
                  sltiu        s6, s9, 224
                  xor          s0, s10, a7
                  srai         s0, t1, 10
                  addi         t4, s2, 1450
                  sll          s3, s2, s11
                  sltu         s2, t5, a5
                  xor          a1, a3, s7
                  lui          ra, 477315
                  auipc        t0, 1017793
                  nop
                  lui          s10, 317221
                  xori         a3, s10, -91
                  andi         zero, gp, 952
                  and          s11, a3, s2
                  andi         a1, gp, -2014
                  slt          s7, a1, sp
                  srli         s2, s7, 29
                  srli         sp, s11, 8
                  srl          zero, s3, t3
                  nop
                  slti         t3, t4, 1829
                  sltiu        a4, s5, 162
                  xori         s8, s0, -1515
                  slti         s10, ra, -1200
                  add          s5, s0, a5
                  srai         gp, a4, 4
                  srli         s3, s1, 25
                  and          t0, s8, tp
                  srl          s1, s7, t0
                  sra          t3, t0, s7
                  nop
                  xor          s5, t5, s0
                  andi         a6, s9, 283
                  srli         a1, s4, 25
                  andi         s9, s9, 1576
                  xor          a1, s6, t1
                  or           a5, ra, a2
                  auipc        a1, 453689
                  srli         a6, ra, 1
                  nop
                  sra          gp, s10, a3
                  sra          s5, a7, ra
                  slli         t3, t2, 21
                  xor          a2, a5, ra
                  lui          sp, 316718
                  sltiu        a2, a2, -2020
                  sub          a5, s2, t3
                  lui          a1, 953677
                  sub          a4, sp, ra
                  slli         t2, t2, 4
                  add          a0, a6, s3
                  xor          s4, tp, s3
                  slli         s7, a6, 9
                  and          s9, a3, t5
                  sltiu        a0, tp, -1558
                  sltu         a6, a6, a3
                  xori         s11, a3, -9
                  srai         s11, s2, 24
                  add          s7, t0, ra
                  li           a2, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           gp, 0xffffffff
                  li           t3, 0x80000000
                  li           s3, 0x0
                  li           t2, 0x135b9c53
                  li           a5, 0x80000000
                  li           s11, 0xb70fa1c0
                  li           s1, 0x0
                  li           s4, 0xffffffff
                  li           s7, 0xd6e92af4
                  addi         s7, gp, 1602
                  nop
                  add          s1, s11, a2
                  addi         a2, s11, -1482
                  addi         s4, gp, 48
                  lui          s11, 264107
                  add          s3, a2, a2
                  add          s3, t2, t2
                  sub          a5, t2, s1
                  addi         s11, gp, -938
                  auipc        a5, 395700
                  auipc        a2, 489289
                  sub          s1, s1, s7
                  addi         s7, s1, 405
                  add          s4, s11, s4
                  nop
                  addi         a2, s3, -143
                  add          t3, t3, s11
                  add          s7, s3, s7
                  auipc        gp, 647063 #end riscv_int_numeric_corner_stream_13
                  sltiu        t2, s3, 1962
                  addi         t2, t0, 1951
                  ori          s5, s1, 1322
                  srli         s5, t3, 10
                  xori         t2, a7, 424
                  sltu         s0, s10, s11
                  sltu         s0, s3, s9
                  nop
                  xori         t2, s5, 1611
                  slti         t3, gp, 102
                  sra          a3, a1, a6
                  and          t1, t4, t3
                  sltiu        s6, s5, 1413
                  sra          s5, a6, t0
                  sub          t4, t1, t0
                  srai         tp, a1, 0
                  slt          a6, s6, a4
                  nop
                  xor          s1, t2, a4
                  nop
                  xori         a3, t1, -698
                  nop
                  auipc        zero, 327348
                  srai         zero, s11, 29
                  sltiu        s5, t6, 826
                  srl          s3, sp, a0
                  sltiu        s2, a2, -1003
                  xori         t2, s5, -427
                  auipc        a6, 1030113
                  sltu         tp, sp, a1
                  srai         s10, s7, 18
                  and          s8, t3, s7
                  slli         zero, s6, 19
                  nop
                  lui          t4, 818319
                  sub          s3, s9, s1
                  ori          ra, a1, 1320
                  auipc        s8, 603718
                  xori         s9, t3, 2023
                  srai         s10, a2, 10
                  sub          s10, tp, t2
                  nop
                  srai         s10, sp, 29
                  and          s4, tp, sp
                  lui          a6, 149505
                  andi         t4, s7, 993
                  xori         a4, s7, -329
                  slti         s6, t5, -1652
                  andi         s4, s11, 1852
                  nop
                  addi         s4, s3, -1738
                  slli         t3, s7, 8
                  xor          a2, s4, s11
                  slli         t0, s8, 20
                  slt          a0, a6, s9
                  xor          tp, s0, a0
                  srl          t4, s5, s5
                  sll          s7, t1, s0
                  srai         s11, ra, 19
                  slt          zero, s3, s6
                  sltiu        s0, a1, 1414
                  and          s4, t0, a2
                  slt          t3, a7, tp
                  sltu         a4, t1, a7
                  sltu         a1, s0, t3
                  xor          t4, a5, s2
                  add          s2, a0, s11
                  lui          a4, 888583
                  srai         a6, s7, 16
                  xori         a5, t3, 1110
                  srai         a3, s0, 9
                  slli         a5, t5, 21
                  add          t4, a6, a1
                  and          tp, a6, t6
                  addi         a4, t1, 241
                  srl          a1, t2, t6
                  sll          a6, a3, t1
                  sltu         s1, s1, t3
                  xori         t1, s7, 1432
                  srl          a6, s0, ra
                  srai         s5, a0, 5
                  add          a2, s7, a0
                  and          t4, t3, t1
                  lui          s3, 182358
                  srai         s0, s10, 5
                  srai         s6, a2, 15
                  sll          a5, s3, s0
                  sltiu        s1, t0, -1855
                  auipc        s5, 742276
                  srai         tp, a3, 17
                  add          t3, t1, a4
                  or           s5, tp, s3
                  add          sp, t6, a0
                  sub          s5, s10, s10
                  auipc        a1, 385768
                  sltu         s11, s5, t6
                  sra          s4, t2, a4
                  ori          a2, zero, -1887
                  nop
                  sub          a0, t1, a1
                  xor          a5, a7, s8
                  sra          ra, t4, s9
                  srli         s8, gp, 5
                  sra          s10, ra, t1
                  srl          zero, tp, zero
                  or           s8, sp, s5
                  xori         tp, tp, 85
                  srai         t0, a4, 9
                  auipc        s7, 705027
                  andi         a4, t6, -440
                  srl          a5, s2, t1
                  slti         s9, t3, 382
                  srl          tp, a0, a5
                  sub          s5, a7, t0
                  srl          s2, t3, a7
                  slt          t3, s2, zero
                  sltiu        s6, a2, -1123
                  auipc        s10, 415289
                  srl          s2, t4, t0
                  sll          s2, a7, s3
                  lui          t1, 271905
                  sll          a0, s5, t5
                  srl          t1, t6, a7
                  xori         sp, a4, -369
                  xor          a4, t6, a4
                  slti         s11, a6, -42
                  xor          zero, ra, s11
                  xori         sp, s5, 2013
                  or           s8, s11, s5
                  srl          s9, gp, a7
                  sltiu        a4, a5, 472
                  srai         s5, a5, 3
                  lui          s10, 743924
                  addi         ra, s10, 526
                  xor          zero, s0, s8
                  nop
                  andi         a1, t2, -1211
                  sll          s6, tp, sp
                  sra          s0, tp, s8
                  lui          gp, 872136
                  sll          a6, gp, t1
                  slt          s10, s9, s2
                  ori          tp, gp, 294
                  addi         s9, a2, -764
                  auipc        s11, 488175
                  srli         a6, s6, 17
                  ori          t1, a7, 744
                  srl          a4, s9, s6
                  sll          s1, s1, a7
                  sltu         zero, gp, s8
                  sll          t0, a7, t6
                  nop
                  slti         a1, s5, 1440
                  sll          sp, ra, s6
                  sll          zero, a6, t5
                  slli         t0, s3, 26
                  srli         s9, t5, 16
                  add          zero, s8, s3
                  addi         s7, s0, 637
                  auipc        s5, 288823
                  add          gp, t5, tp
                  sltiu        a1, sp, -703
                  sltiu        gp, s6, -545
                  sra          s4, t5, t2
                  add          t4, t6, s9
                  sltu         s2, t0, s3
                  add          t4, tp, t2
                  add          s5, s0, s11
                  srli         a3, sp, 13
                  sra          sp, s11, s6
                  srli         a3, a4, 9
                  or           s9, s4, gp
                  auipc        a1, 255486
                  srl          s8, gp, s1
                  or           a4, t3, t6
                  lui          a0, 946681
                  sltu         a0, s1, t6
                  srli         ra, s10, 20
                  srli         s5, a5, 23
                  sltiu        s4, s10, -515
                  srli         s5, s9, 31
                  and          s2, s10, tp
                  ori          gp, s10, -1356
                  add          a0, s1, sp
                  addi         gp, t2, -1233
                  auipc        a2, 166513
                  srai         a1, a6, 22
                  srli         t3, gp, 31
                  or           s4, s6, a2
                  slti         s2, t2, -1113
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           s3, 0x421791a2
                  li           s7, 0xffffffff
                  li           t1, 0xa76ab194
                  li           t3, 0xbdf0922b
                  li           s6, 0xffffffff
                  li           s4, 0xffffffff
                  li           t2, 0x0
                  li           s11, 0x0
                  li           s1, 0xffffffff
                  add          t3, s6, s1
                  add          t1, s4, s11
                  sub          s7, s11, t1
                  add          tp, s1, s11
                  lui          s6, 771102
                  addi         s7, t1, -1653
                  addi         s3, t2, 696
                  sub          s7, t1, t1
                  auipc        t2, 246020
                  sub          s11, t1, t1
                  add          t1, tp, t1
                  lui          s1, 368424
                  nop
                  addi         s6, t3, 1935
                  lui          t1, 811979
                  add          s6, t1, s4
                  add          t3, s3, s4
                  auipc        tp, 951962
                  auipc        t3, 301224
                  add          s7, s4, s3
                  addi         s7, t3, 334
                  add          t1, t3, t1
                  add          s11, t1, s4
                  add          s11, s7, s7
                  lui          s4, 852311
                  lui          tp, 8726
                  auipc        s11, 295980
                  nop
                  addi         s3, t3, 1894 #end riscv_int_numeric_corner_stream_6
                  sltiu        t1, ra, -2008
                  slti         t3, a0, -247
                  sra          a2, s0, s10
                  sll          t1, zero, s2
                  lui          tp, 929206
                  slt          s11, s1, s11
                  add          t2, s10, s10
                  sltu         s5, s8, tp
                  auipc        t1, 415310
                  lui          s10, 681867
                  sltu         s9, t5, s2
                  sub          s6, zero, a7
                  srl          s4, s2, tp
                  srai         s6, t4, 20
                  sra          s0, s9, s1
                  sltu         tp, s2, s0
                  sll          s3, t1, s4
                  sll          s4, t3, ra
                  slli         t3, a4, 19
                  sra          s10, a1, gp
                  srai         a1, s8, 30
                  add          s4, a1, s11
                  sltiu        s1, s7, -978
                  ori          s1, sp, -49
                  sub          zero, s0, s10
                  ori          a6, t2, -1173
                  andi         t0, t1, 508
                  and          s9, t2, gp
                  srli         zero, s6, 0
                  xor          s8, t1, t5
                  slli         a5, s2, 17
                  or           s3, t6, a0
                  slli         s4, s0, 11
                  xori         s11, t2, -193
                  addi         a1, t5, -2038
                  sub          t0, a6, t1
                  sltiu        t4, zero, -1072
                  srl          t1, t4, t1
                  sll          s3, a3, s1
                  and          tp, s3, gp
                  srai         s6, a1, 18
                  nop
                  sltu         ra, ra, t4
                  sub          s5, s1, s10
                  addi         ra, ra, 1784
                  srli         s7, t6, 29
                  slt          s6, a7, s11
                  xor          s2, t2, s3
                  nop
                  srai         tp, t1, 21
                  xor          a3, a3, a0
                  sltu         zero, s7, a1
                  sll          a5, s5, tp
                  nop
                  andi         t1, t5, 553
                  slti         a6, gp, -205
                  slli         a6, gp, 6
                  xor          s0, zero, s1
                  slti         s2, t5, 2038
                  add          tp, a5, t4
                  xori         a4, s4, -1430
                  sub          sp, s8, t0
                  srli         a0, s0, 31
                  sra          a4, s9, a6
                  slt          t2, a2, a2
                  andi         s4, s4, -1614
                  and          a5, s8, a2
                  sra          t2, t1, s2
                  auipc        s9, 49072
                  slti         s3, tp, 1388
                  sra          tp, s10, s1
                  nop
                  sltu         s4, ra, s2
                  ori          s0, s7, -1717
                  sltu         s7, t6, sp
                  andi         t3, a3, 1846
                  add          s11, sp, t6
                  ori          tp, ra, -592
                  slt          s6, s11, a2
                  or           s10, gp, s3
                  and          s2, t3, s0
                  slt          a3, a1, s11
                  or           s11, t5, a4
                  auipc        a2, 472869
                  andi         s4, s11, 20
                  sltu         t4, t1, a3
                  sll          s10, s0, s10
                  xor          s9, s2, s11
                  sltu         s6, s9, s9
                  sll          sp, s11, a3
                  auipc        a0, 922379
                  auipc        tp, 110748
                  lui          sp, 589741
                  sra          a6, s2, s2
                  srl          t2, s4, t5
                  sra          a5, s6, s1
                  slti         t2, t2, 978
                  or           a0, a2, s11
                  ori          s7, gp, -1949
                  sll          a2, t1, sp
                  slt          s6, t3, a4
                  addi         s2, s4, 971
                  srai         s9, gp, 16
                  or           t2, t2, t6
                  andi         a5, a6, -1846
                  nop
                  slti         s9, s8, -270
                  slli         s10, sp, 30
                  srl          s5, s8, t1
                  auipc        s9, 522088
                  srli         a3, t3, 10
                  addi         s8, tp, -110
                  xor          a2, a7, s3
                  sub          a5, s10, s7
                  sra          a0, t6, s11
                  slt          s7, a2, a4
                  ori          s3, t3, 630
                  sub          s4, s6, s5
                  lui          t3, 324755
                  andi         sp, t3, -588
                  srl          a5, tp, t5
                  sub          a2, s8, t3
                  slt          a1, s4, s9
                  and          s5, s11, ra
                  addi         sp, a7, 431
                  ori          gp, s10, 614
                  sra          t0, t2, s3
                  sll          t4, tp, a0
                  xori         t4, t2, 1698
                  lui          s6, 962509
                  auipc        s0, 101864
                  ori          s7, t6, 871
                  lui          s8, 862578
                  nop
                  xor          sp, tp, a5
                  slli         tp, s6, 0
                  slli         s0, sp, 8
                  slt          s2, t0, zero
                  sub          a6, s7, s4
                  xor          s0, gp, sp
                  or           s8, t1, s0
                  or           tp, s3, t0
                  sra          t4, s1, t0
                  sltiu        a4, t2, -1222
                  xor          s0, a6, s7
                  auipc        a1, 252571
                  sltiu        gp, s2, 778
                  sll          s1, s9, s0
                  srli         t1, s10, 8
                  nop
                  add          a5, a4, a1
                  add          a3, s5, a0
                  slt          tp, a2, s2
                  auipc        t3, 746654
                  srai         sp, t6, 22
                  and          zero, a1, t5
                  srai         t4, s1, 4
                  sltiu        tp, tp, -1241
                  auipc        s9, 475658
                  add          s11, t5, s0
                  slli         t4, s4, 12
                  andi         a0, s6, 525
                  or           s4, s4, gp
                  and          a0, s1, tp
                  srai         gp, s0, 31
                  andi         s9, s3, -1835
                  srl          s11, t4, t1
                  sltu         tp, s9, a5
                  sra          tp, t1, s4
                  xor          tp, s10, s7
                  slt          s2, t1, a1
                  ori          t0, s6, -766
                  sra          a0, a2, t5
                  sll          s5, t1, zero
                  andi         s9, sp, -688
                  slt          a5, t3, s8
                  xori         s8, s0, -2031
                  add          tp, s6, s1
                  auipc        a1, 668549
                  srai         a1, a6, 5
                  sltiu        s6, t1, -1390
                  ori          s7, s6, -40
                  sub          ra, s4, t1
                  nop
                  srli         s3, t6, 16
                  srl          s3, s2, sp
                  sltu         s5, a3, s5
                  slli         sp, s1, 30
                  add          a5, s4, t0
                  andi         a1, sp, -199
                  sra          s0, s6, t4
                  add          tp, s8, a1
                  slti         a4, t0, 752
                  srai         ra, t1, 10
                  srli         s2, tp, 13
                  or           a6, s5, s4
                  srli         s6, a2, 20
                  sltiu        a4, s8, -62
                  andi         s8, t5, -359
                  srli         s4, s9, 26
                  sub          s0, s1, tp
                  slli         tp, t0, 16
                  xori         zero, s11, -1041
                  sll          s6, a2, tp
                  slti         s9, s4, -714
                  srl          t3, t3, tp
                  slli         s2, t6, 8
                  xori         sp, a5, -1285
                  srai         a6, a2, 1
                  addi         a1, gp, 972
                  addi         s2, t0, -1886
                  andi         s3, a2, 959
                  sltu         sp, s7, ra
                  sll          t1, a7, a3
                  auipc        s5, 1016164
                  xori         s6, t2, -771
                  lui          tp, 662372
                  slt          a2, t0, s3
                  or           t4, s10, a3
                  slli         s2, gp, 29
                  slt          a5, s5, t4
                  nop
                  sll          s1, a7, t2
                  xori         ra, t4, 1584
                  slt          s6, s2, ra
                  sub          t4, zero, a6
                  sltu         s11, s8, s4
                  slti         s6, s11, 1792
                  sll          s11, a2, a0
                  srli         s8, s10, 22
                  add          s4, t2, s3
                  srli         s3, s0, 0
                  andi         s1, a5, 244
                  and          s8, t5, s1
                  xor          a1, t6, t1
                  or           s6, t1, s4
                  nop
                  xori         s2, a0, 195
                  slli         s3, a7, 8
                  sll          s0, t0, t1
                  slti         gp, s10, 628
                  ori          t1, sp, -1522
                  srli         a6, t0, 7
                  srli         a4, tp, 14
                  auipc        a2, 225460
                  ori          a0, s7, 1303
                  add          s4, a4, a5
                  sll          t1, zero, s4
                  nop
                  slti         t3, t1, -790
                  auipc        a0, 89431
                  xor          a0, t4, s11
                  sub          s6, ra, zero
                  sra          s8, s1, s1
                  and          a4, a4, s6
                  or           a6, ra, s8
                  andi         t1, s3, -1974
                  xor          t2, tp, zero
                  andi         s4, s10, 1263
                  nop
                  ori          s4, s6, 7
                  sltu         a2, t4, t6
                  srai         zero, t5, 12
                  ori          zero, s3, -1468
                  sra          tp, a5, t6
                  andi         a5, s4, -1501
                  sra          t0, s4, s9
                  addi         s11, t2, -1857
                  slti         a3, a1, 1365
                  sltu         s2, t1, s7
                  add          s4, a4, ra
                  add          gp, zero, s8
                  nop
                  lui          s7, 317939
                  ori          a3, t2, 381
                  sra          t4, s0, gp
                  slti         s0, s4, -431
                  sra          a6, a2, a4
                  lui          t4, 531994
                  and          s3, s1, a0
                  ori          gp, s8, -28
                  sll          s7, t3, a7
                  sll          sp, t1, t3
                  andi         a4, a2, -417
                  sltu         a2, s3, s5
                  slti         a4, a5, -2026
                  sltu         tp, s3, s4
                  slli         s3, s9, 12
                  slli         zero, a6, 25
                  sltiu        s8, s5, -653
                  addi         s10, sp, 953
                  lui          t0, 461391
                  xori         a4, a7, 1766
                  addi         a3, t2, -1129
                  xor          a1, s10, s7
                  andi         a2, t0, -1014
                  sltiu        s0, a0, -385
                  sltiu        t3, s7, 1480
                  slli         s5, tp, 23
                  xor          s7, a4, s8
                  srai         s2, s10, 20
                  lui          s5, 382885
                  auipc        t1, 392175
                  add          s6, s5, tp
                  add          a3, a2, a4
                  sltu         s1, sp, t4
                  lui          t4, 406118
                  slti         zero, a2, -767
                  or           t1, t5, t6
                  srai         s1, s4, 4
                  andi         s2, zero, 1382
                  sll          s3, t6, zero
                  or           t4, s5, sp
                  auipc        s3, 204796
                  sltiu        a3, a4, 496
                  xori         s2, s1, 504
                  and          s4, a3, s4
                  sub          tp, a0, zero
                  xor          t1, a7, t6
                  sltu         s6, s11, s10
                  srli         a6, a0, 18
                  srli         s2, s5, 3
                  auipc        s4, 807938
                  sltiu        s5, a2, -32
                  sub          gp, ra, a5
                  auipc        s0, 464534
                  xor          s2, s3, t3
                  sltiu        a6, s6, 506
                  andi         a4, gp, -1541
                  srl          ra, s0, a2
                  slti         a6, t0, 1439
                  add          a6, s4, s6
                  and          s5, s11, a4
                  xor          t3, a5, s6
                  andi         s7, a7, -1775
                  sltu         s0, s11, t2
                  srli         a0, s11, 12
                  slti         a0, a7, -106
                  lui          a0, 655190
                  nop
                  sra          s3, a3, s8
                  sub          ra, a4, t2
                  xor          s2, a2, s9
                  sltu         s8, a4, a4
                  sll          a6, s11, t2
                  sltiu        a3, tp, 765
                  srl          gp, a2, tp
                  slti         a4, a4, -1500
                  sll          s10, a1, s2
                  ori          a6, a0, -990
                  ori          s4, zero, 1303
                  addi         a5, t1, -1549
                  nop
                  slti         a6, s11, -1678
                  addi         a5, t1, 155
                  lui          s8, 23838
                  add          zero, t1, s10
                  lui          t4, 779877
                  or           t3, a1, a2
                  ori          zero, t6, 977
                  srai         gp, s7, 24
                  ori          s8, a5, -1363
                  lui          s0, 507624
                  slti         s8, t3, 1764
                  slt          sp, a0, a7
                  slli         gp, s3, 12
                  ori          gp, s7, -217
                  nop
                  xor          a3, t1, s5
                  andi         s4, gp, 1139
                  sub          t2, a2, s2
                  xor          s6, t5, a0
                  add          s4, s10, a2
                  sll          s1, sp, a7
                  auipc        s1, 798072
                  sra          a3, s5, a3
                  sll          a3, s7, a1
                  slt          s11, gp, tp
                  add          s2, s5, a7
                  slti         a3, t1, -1710
                  andi         t1, s11, 111
                  sltu         t4, a3, s11
                  xor          sp, t3, a3
                  slti         a5, a2, 273
                  add          t0, t2, gp
                  xori         a1, sp, 1248
                  or           a4, s2, s0
                  andi         s11, s4, 36
                  andi         a3, t3, -1251
                  andi         t2, s11, -498
                  xori         s1, s11, -1303
                  srai         sp, a4, 27
                  xor          zero, s11, s9
                  slt          sp, a6, t2
                  xori         sp, s8, 1246
                  slti         s11, s1, -736
                  sra          a6, s8, s1
                  sltiu        t1, s6, -778
                  slt          s10, s11, s9
                  slt          gp, s5, s9
                  srai         zero, gp, 31
                  xor          t1, t1, a0
                  or           sp, t4, t3
                  nop
                  slti         a6, t0, -669
                  srli         s3, gp, 18
                  xori         s2, tp, 641
                  andi         a0, a3, 1836
                  sra          a3, a0, a1
                  sub          s11, s7, s6
                  addi         s6, a5, 317
                  sub          a6, zero, a2
                  lui          a4, 223510
                  sltiu        s5, ra, 1076
                  sub          a0, gp, s6
                  auipc        s0, 919207
                  srai         ra, s8, 6
                  ori          t2, a4, -1574
                  lui          a4, 846374
                  xori         s0, t4, -2008
                  srl          t3, a1, s11
                  srl          ra, s1, zero
                  and          sp, t6, t3
                  xori         t0, t2, -1363
                  or           ra, gp, zero
                  sub          a5, tp, a2
                  add          t4, t6, s10
                  auipc        sp, 721514
                  sll          gp, tp, tp
                  addi         ra, a6, 228
                  addi         s4, a3, 507
                  nop
                  sltiu        t4, a1, -65
                  nop
                  sll          t4, s6, a7
                  addi         s4, ra, -878
                  xor          a1, t0, t1
                  srli         s7, s5, 10
                  nop
                  xor          sp, s4, s2
                  srai         a1, s2, 17
                  sll          s2, a0, tp
                  auipc        ra, 675245
                  ori          s9, t6, -14
                  ori          s3, t5, 1781
                  sltiu        s5, t0, -1329
                  sltu         ra, s1, s2
                  slli         t2, t5, 16
                  auipc        s5, 410853
                  srai         s9, s8, 27
                  andi         a2, a1, -495
                  srai         s2, sp, 16
                  sltu         sp, a3, a1
                  slt          zero, s1, a1
                  srai         t0, s7, 13
                  nop
                  sltiu        a2, a5, -2006
                  ori          t0, sp, -1684
                  nop
                  auipc        t1, 676126
                  slt          s5, zero, s9
                  andi         s7, a0, -2032
                  srl          a1, a1, a6
                  sra          a4, a0, a2
                  slli         t1, a1, 13
                  sltiu        a2, a3, -309
                  xor          s1, t0, s3
                  sltiu        s9, t0, -372
                  sll          sp, s9, t0
                  and          t1, zero, a4
                  andi         s4, a1, -913
                  slti         s3, zero, 1694
                  or           s5, s2, a1
                  and          s3, s10, s0
                  srai         s4, s11, 22
                  or           s4, s2, t5
                  srli         gp, t2, 0
                  ori          s4, s6, 1009
                  or           a4, s2, t5
                  xor          s3, ra, a4
                  sltiu        a1, s7, 721
                  nop
                  srai         a2, s8, 29
                  slt          a1, s0, t1
                  add          s0, tp, s7
                  and          ra, a4, a0
                  sub          t3, zero, t5
                  slti         s3, t3, 216
                  sltiu        s7, tp, -395
                  srl          s6, zero, a0
                  sltiu        s5, sp, -983
                  addi         s11, t2, 1964
                  sltiu        a4, a5, 1807
                  auipc        s7, 561606
                  auipc        a1, 430923
                  xori         sp, sp, -1858
                  xori         a1, a6, 1326
                  sltiu        s9, s0, 1970
                  sll          a5, a7, a7
                  auipc        s7, 696717
                  sra          t2, a1, a7
                  srl          t1, s6, s9
                  xor          tp, a0, ra
                  xori         a2, gp, -1159
                  nop
                  srli         s8, s3, 8
                  add          s10, a3, s2
                  and          s6, a1, s9
                  xori         tp, a5, 1599
                  slli         t2, t2, 2
                  sltu         s3, s7, sp
                  auipc        t0, 364757
                  slli         a4, a1, 25
                  and          s4, ra, a6
                  slti         s2, a1, -1049
                  slt          s1, t6, t1
                  srl          t4, a7, a5
                  andi         gp, a2, -1945
                  sltiu        a5, zero, 1798
                  addi         s7, s6, 2000
                  add          s0, a1, s4
                  andi         s4, s7, 175
                  sub          a3, a7, t6
                  addi         s8, a6, 1910
                  auipc        s3, 168572
                  sub          s6, a4, sp
                  addi         s6, a0, -388
                  add          t0, gp, tp
                  sltiu        ra, s1, -1344
                  xor          a4, s7, s4
                  slti         t1, t1, 1040
                  sltiu        t3, s2, -1087
                  sltiu        t4, s4, 1523
                  nop
                  srli         t1, a6, 28
                  andi         ra, s1, -649
                  srai         t0, a3, 5
                  slt          a5, a0, a5
                  nop
                  li           s0, 0x0 #start riscv_int_numeric_corner_stream_10
                  li           t3, 0xffffffff
                  li           s8, 0x0
                  li           a2, 0xffffffff
                  li           a3, 0xffffffff
                  li           t4, 0xffffffff
                  li           a6, 0x0
                  li           s6, 0x80000000
                  li           s4, 0x0
                  li           s9, 0x4c55f109
                  lui          s4, 282421
                  nop
                  add          t4, t3, s6
                  lui          s8, 44780
                  add          s8, a6, s8
                  sub          s9, s8, t3
                  sub          s4, s8, s4
                  add          s8, a6, s4
                  addi         a2, t4, 893
                  sub          a2, t3, s6
                  addi         s9, s6, 1135
                  nop
                  addi         s8, s0, 668
                  nop
                  nop
                  addi         s6, a3, 1856
                  add          a2, s4, s4
                  sub          s9, s6, a6
                  nop
                  lui          s4, 683006
                  add          s4, t4, s4
                  nop
                  addi         a2, a6, -1933 #end riscv_int_numeric_corner_stream_10
                  ori          s2, s3, -553
                  xori         ra, a2, 260
                  or           a5, sp, zero
                  nop
                  xor          s10, t5, s10
                  sltiu        s4, a4, -1157
                  auipc        s0, 947796
                  srai         t2, s0, 20
                  auipc        s0, 176537
                  or           t0, s11, t1
                  ori          ra, s9, -631
                  slti         tp, s3, -1010
                  addi         tp, a5, 210
                  sub          t1, a4, t0
                  xori         t4, a7, -1561
                  auipc        s11, 624252
                  or           s1, t3, s0
                  slt          t0, gp, a7
                  andi         a0, a0, 1173
                  nop
                  andi         t4, t3, 1278
                  addi         a1, s9, -1068
                  xori         s4, a5, 805
                  srl          s1, tp, a6
                  slti         gp, zero, 806
                  srl          t0, a5, a0
                  xor          s2, s0, a7
                  auipc        s1, 452948
                  xori         tp, t5, 2004
                  sll          s4, t6, t6
                  and          gp, sp, s1
                  addi         a5, s2, -989
                  sub          s7, s2, t0
                  and          a5, a4, t2
                  nop
                  nop
                  srli         s0, zero, 16
                  lui          sp, 1023135
                  nop
                  or           s10, s7, t4
                  sub          s9, t2, t3
                  sltiu        t1, s9, -1486
                  xor          s5, zero, ra
                  or           s8, t5, s3
                  xor          t2, s2, a5
                  slt          zero, s2, a0
                  slli         ra, a6, 0
                  xori         a2, s8, -991
                  ori          s6, s7, -1058
                  sra          s6, a3, s5
                  xori         t2, t0, -1055
                  or           s10, s7, tp
                  slli         a0, t0, 7
                  andi         s7, s1, 1377
                  li           s7, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           s3, 0x0
                  li           s11, 0x80000000
                  li           s4, 0x0
                  li           a2, 0x197de7fc
                  li           gp, 0x80000000
                  li           a5, 0xffffffff
                  li           t4, 0x80000000
                  li           t2, 0x0
                  li           s0, 0xffffffff
                  addi         s4, s11, 2023
                  nop
                  add          s4, gp, s11
                  sub          s11, gp, t2
                  sub          s7, s11, gp
                  lui          a5, 962152
                  auipc        s0, 626266
                  addi         s11, s3, 1601
                  add          s0, t2, t4
                  addi         a2, t4, 1699
                  addi         s7, s4, 1960
                  add          s3, s7, t4
                  lui          t4, 739619
                  lui          s11, 28238
                  add          gp, a5, s4
                  lui          a2, 478602
                  nop
                  auipc        gp, 1046777
                  nop
                  add          s11, s7, t2
                  auipc        s7, 929609 #end riscv_int_numeric_corner_stream_12
                  lui          s5, 1032231
                  auipc        t4, 1029191
                  sll          t2, t4, s5
                  slt          s0, a0, zero
                  srl          t3, a4, t2
                  ori          s10, a5, -1447
                  andi         a6, a5, 1452
                  and          gp, a3, s11
                  sltu         s8, s5, a6
                  xori         a6, s8, 2046
                  xor          a5, s3, a4
                  slli         a0, a2, 10
                  or           zero, t4, s0
                  srl          s11, a1, s5
                  sra          t3, s7, zero
                  add          s9, s11, s11
                  and          a3, s4, a5
                  add          s5, s10, s5
                  srli         t0, ra, 18
                  andi         s1, t2, 1609
                  srai         s2, s8, 5
                  sub          ra, t1, t3
                  srai         a1, s5, 7
                  auipc        s8, 393935
                  auipc        s2, 833134
                  nop
                  slt          zero, tp, s11
                  sub          sp, a0, s1
                  slt          s4, a4, t3
                  xori         s2, s11, -38
                  andi         sp, s4, -1329
                  slt          s7, t3, a3
                  ori          gp, s3, 451
                  srl          a2, t4, tp
                  sll          s6, t0, a2
                  or           a0, a0, a6
                  xori         t1, s9, 1542
                  add          s0, a0, ra
                  srli         s2, t5, 10
                  slt          s5, a5, a7
                  or           tp, a5, s5
                  ori          t4, s11, -1913
                  andi         a2, s9, -1485
                  srli         t2, t1, 15
                  and          t2, a0, t2
                  ori          s10, s11, -962
                  lui          s7, 402479
                  andi         s6, t5, 2045
                  sll          s8, t0, gp
                  add          a4, s11, s9
                  xor          a5, sp, s9
                  ori          a0, s9, 1101
                  or           a0, t0, s10
                  sub          a3, t4, t3
                  nop
                  ori          s6, sp, 1826
                  sltiu        t4, a5, 1934
                  nop
                  slti         s2, s3, 1823
                  nop
                  sltiu        s3, a6, 1610
                  srli         s1, ra, 14
                  slt          t0, a3, s1
                  sub          sp, tp, sp
                  srli         s1, t5, 10
                  slli         t1, sp, 30
                  and          a1, a1, s6
                  slti         a6, a4, 449
                  xor          ra, s2, a2
                  srl          s9, ra, a1
                  slti         s0, a1, -985
                  add          zero, zero, ra
                  srli         t0, t1, 26
                  sltiu        a0, a2, -1740
                  sltiu        s8, t1, -1300
                  sltu         t1, s10, s4
                  slti         a5, a1, 1095
                  and          t3, s0, ra
                  nop
                  ori          t2, a2, -935
                  sub          a4, t4, t0
                  sra          s9, ra, t0
                  xori         ra, s10, -1757
                  srai         s3, t1, 12
                  xori         a4, t0, -1652
                  andi         a4, a3, -776
                  nop
                  lui          s2, 992025
                  xori         t4, t6, -1820
                  slli         s4, s9, 10
                  srai         ra, s6, 12
                  lui          sp, 197130
                  nop
                  xori         a4, t5, -107
                  slti         s10, s11, 1424
                  srai         a0, a3, 25
                  slti         a1, t3, 1673
                  sltu         a2, s8, a0
                  addi         s1, a2, -747
                  sltu         tp, gp, ra
                  add          s10, s8, a1
                  sra          ra, a5, a4
                  sltiu        s1, a7, 1849
                  sltiu        s2, a6, -424
                  srli         t3, a5, 4
                  andi         a3, s1, -1799
                  sra          t0, s4, t3
                  auipc        t2, 273446
                  slti         a0, ra, 1059
                  nop
                  ori          s6, s5, -797
                  sll          gp, zero, sp
                  srl          s2, gp, s0
                  srli         a0, s7, 23
                  sltiu        a0, a1, 1352
                  xori         s0, tp, 1504
                  srai         s6, s7, 24
                  slti         s2, zero, -2040
                  sub          sp, a1, s8
                  sltiu        a0, s2, 1508
                  xori         s3, a4, 1260
                  andi         s1, sp, 22
                  srai         tp, a0, 8
                  nop
                  slti         a0, s5, -779
                  slti         s4, s10, -90
                  srai         sp, t5, 6
                  addi         zero, s7, -728
                  andi         a0, t3, -1674
                  xor          s3, a1, t1
                  srai         a3, t3, 8
                  auipc        a3, 492860
                  slt          t4, t6, tp
                  slt          s2, t1, tp
                  sub          t1, zero, s0
                  xor          zero, a5, gp
                  xori         t2, ra, -1425
                  add          t0, s0, s7
                  slti         a2, a4, -995
                  and          t2, s4, s8
                  ori          s9, sp, 783
                  sltu         a0, t5, s4
                  slli         t2, a4, 31
                  nop
                  srai         s10, s5, 16
                  and          s2, t6, a0
                  add          s10, s4, s2
                  slli         a1, s0, 2
                  slli         s6, s8, 14
                  and          s11, s5, s3
                  auipc        zero, 351447
                  add          t4, s11, t5
                  slti         a5, t6, 792
                  slti         s9, t3, -740
                  and          s7, t2, s2
                  srl          s9, t3, tp
                  sll          a5, t4, ra
                  sub          sp, a6, a7
                  xori         s11, t0, -371
                  sltu         tp, t3, a0
                  srli         s6, gp, 22
                  xori         t4, t6, -1953
                  srli         t2, s6, 15
                  sra          t3, s5, gp
                  srai         t0, a2, 2
                  sra          s1, s0, s4
                  auipc        s3, 272582
                  and          s5, a3, ra
                  xori         ra, t2, 1337
                  sll          a3, gp, a5
                  srai         s7, s5, 19
                  xori         tp, s2, -1073
                  slt          a6, s11, a7
                  lui          a0, 394257
                  slli         s3, a1, 8
                  sra          s0, t2, s7
                  sub          zero, sp, s4
                  addi         s0, s0, -650
                  addi         t4, a7, 451
                  slli         a5, tp, 25
                  sra          s0, t4, ra
                  addi         s10, sp, -1859
                  addi         s11, t0, 92
                  srai         a5, s7, 9
                  sra          t1, t0, t3
                  nop
                  srli         t0, sp, 0
                  slli         a6, t6, 0
                  sub          a1, a4, gp
                  sub          a2, a7, gp
                  srl          tp, zero, t2
                  slt          tp, zero, t6
                  srl          t0, a5, t5
                  srli         t3, a1, 27
                  srl          s4, s1, s4
                  slt          gp, a3, s3
                  auipc        s9, 701672
                  sltu         s5, zero, t3
                  or           sp, gp, t4
                  ori          s7, tp, -705
                  andi         s1, ra, -304
                  srl          t2, t6, s9
                  slli         s11, gp, 15
                  sll          s1, a2, s10
                  xor          a6, t0, s7
                  srl          a5, a1, s0
                  addi         s6, gp, 951
                  srl          a3, a7, s11
                  addi         gp, a0, 615
                  or           a2, a0, s5
                  addi         s3, a0, 1737
                  srl          s10, zero, t0
                  xori         s10, a5, 815
                  add          s1, s0, t0
                  nop
                  andi         t1, t0, -1899
                  slli         s8, zero, 17
                  srli         s6, t6, 28
                  nop
                  sra          t0, s5, a0
                  sub          t2, t4, t1
                  addi         t1, zero, 889
                  add          s5, s3, sp
                  xori         s9, s0, -612
                  or           s4, a0, a7
                  srli         t1, s0, 14
                  addi         s11, s0, 233
                  slli         s6, a7, 28
                  nop
                  ori          a1, s6, 441
                  xor          tp, sp, a2
                  sltu         tp, s2, s8
                  and          a2, zero, t5
                  lui          s5, 884794
                  ori          a1, tp, 844
                  slti         t3, s8, -1617
                  sub          a6, s11, a5
                  andi         zero, s8, 401
                  sll          t3, t0, s9
                  andi         s6, a6, 967
                  addi         s3, a6, -1699
                  sra          a5, t1, s5
                  lui          a5, 184111
                  xor          s8, zero, s5
                  srai         tp, tp, 5
                  lui          s1, 766822
                  ori          s8, s7, -1729
                  sub          gp, gp, zero
                  slt          a2, s6, a6
                  auipc        a4, 575945
                  andi         ra, s1, 1870
                  srli         a6, s9, 5
                  slti         s10, s5, 1495
                  andi         s8, t1, 133
                  sub          s10, s3, ra
                  slt          a4, a2, s2
                  lui          a0, 492371
                  auipc        ra, 467105
                  sltiu        t0, a3, 1140
                  sltiu        a1, a2, 629
                  sra          s2, ra, ra
                  sll          a3, s11, s0
                  slli         s9, a2, 15
                  and          s1, s8, a6
                  nop
                  ori          s0, t4, -1645
                  and          s6, a1, s10
                  sll          t4, a6, t2
                  srai         a5, s9, 23
                  srai         a0, s2, 7
                  addi         t3, tp, 651
                  ori          a5, t1, -187
                  auipc        t2, 260045
                  add          a6, a7, s1
                  slti         t0, a1, 155
                  sub          s10, a0, a4
                  andi         s6, t3, 135
                  sra          t1, zero, s7
                  srl          a1, a5, a5
                  andi         s0, s5, 834
                  sltu         t1, s6, t0
                  xori         zero, t4, -1062
                  addi         a5, t1, -1327
                  sltu         s1, t6, t4
                  sltiu        s7, sp, -371
                  addi         t2, a0, 1622
                  sltu         t4, a0, a4
                  xor          t3, s10, s10
                  ori          s7, s4, 487
                  srai         t0, s8, 20
                  sub          t0, gp, t1
                  or           gp, t3, s9
                  lui          ra, 154334
                  ori          t1, t6, 1442
                  srl          zero, s10, s10
                  ori          gp, s2, 1283
                  sub          s1, s1, a0
                  srai         ra, a7, 12
                  sltiu        s4, a4, -1441
                  slt          s11, s5, s9
                  addi         zero, t1, -1136
                  and          t2, s11, a6
                  sltiu        s5, t3, 920
                  nop
                  srai         t0, t3, 18
                  xori         t1, zero, 1323
                  sltu         s10, s9, s1
                  sltiu        tp, t4, 1571
                  or           ra, s9, s0
                  xor          a4, t4, a6
                  add          s4, t0, s6
                  srl          t1, t4, a5
                  slt          zero, s2, ra
                  sltu         a6, t6, s9
                  sra          tp, s4, tp
                  slt          s7, a0, s2
                  andi         a5, a3, 133
                  add          s1, s10, a7
                  ori          a6, s9, -1422
                  nop
                  lui          s11, 916482
                  slt          t4, s0, s8
                  slli         t4, a4, 19
                  andi         a3, s0, -1620
                  add          tp, t4, s7
                  srai         t1, t0, 13
                  or           ra, a2, t4
                  srli         a1, a2, 18
                  lui          ra, 28343
                  addi         s7, t6, -1468
                  srl          s2, a5, a5
                  sltiu        a5, s11, -1268
                  or           s6, s10, s4
                  andi         s5, s7, 1477
                  sra          a1, s3, t2
                  auipc        s9, 363885
                  sltiu        a1, a3, 359
                  sltiu        a0, s3, -428
                  xor          t2, a4, s2
                  srl          a1, a2, a0
                  slli         a2, gp, 14
                  xori         s7, s3, 774
                  addi         s0, a7, -622
                  slli         sp, s11, 14
                  slli         t2, t4, 14
                  or           t1, s0, a1
                  addi         t4, a2, 264
                  xor          s9, t4, s10
                  nop
                  auipc        a4, 46354
                  slti         s0, a4, -1751
                  andi         s2, a0, 1559
                  nop
                  add          s9, t0, s5
                  srl          s6, ra, a5
                  sll          t4, a4, ra
                  xor          a0, s3, a0
                  nop
                  sub          gp, a3, s7
                  srl          t0, a3, t3
                  add          s0, s4, t4
                  xor          s0, a2, s5
                  auipc        t1, 542808
                  nop
                  auipc        s7, 204869
                  auipc        zero, 84625
                  sll          s9, s2, s10
                  sltiu        t4, s3, 544
                  andi         t4, s4, -51
                  sltu         a1, a6, s1
                  slt          s1, s2, a2
                  auipc        zero, 750997
                  slti         a3, t3, 1634
                  slli         t1, t0, 25
                  srl          t2, s3, gp
                  sltiu        s0, s0, -385
                  xori         a3, t3, 1476
                  sltiu        a5, s3, -393
                  addi         t4, s0, -1103
                  or           s0, s4, s0
                  xor          s4, tp, s9
                  slli         t1, t4, 15
                  auipc        zero, 814414
                  lui          t2, 717189
                  auipc        s5, 576088
                  auipc        s10, 584130
                  or           t2, t3, a4
                  slli         a1, s2, 13
                  addi         a4, zero, -1203
                  sltu         s6, sp, s6
                  sub          zero, ra, s6
                  slti         a2, t1, -1732
                  xori         a3, a3, -1669
                  slti         a3, s10, 854
                  slt          t1, s3, a7
                  sltiu        s8, sp, -1976
                  srai         a6, a1, 16
                  xor          s2, s9, s8
                  nop
                  slli         s0, s5, 8
                  andi         a6, ra, 1573
                  srli         a0, gp, 17
                  auipc        a2, 781407
                  andi         s1, a4, -991
                  xor          a6, s10, s3
                  addi         a0, a1, -783
                  sltu         t1, t4, gp
                  sub          t1, s11, t5
                  sltu         a0, a0, a5
                  sub          a0, t0, t6
                  or           t3, s10, s1
                  sll          a0, a4, a1
                  lui          s5, 776603
                  and          sp, t5, t4
                  slt          a1, s1, a3
                  andi         ra, t4, -1000
                  lui          a1, 686571
                  slti         s9, ra, -903
                  sub          a5, a6, a6
                  sub          s5, s9, a6
                  xor          s1, a1, gp
                  or           tp, t0, t6
                  slti         t0, s6, 953
                  slt          s3, gp, gp
                  and          t4, t5, s9
                  sra          s3, s10, s2
                  slti         t2, sp, -680
                  xori         zero, s0, -1279
                  ori          a4, a5, 1136
                  srli         gp, s5, 3
                  addi         sp, t1, 742
                  addi         s6, a0, -1232
                  addi         t1, t3, -426
                  andi         ra, a6, -1804
                  sltu         s1, s0, zero
                  slt          a1, s9, ra
                  andi         t4, s10, -865
                  andi         t1, s11, -1942
                  sub          tp, s2, t2
                  andi         a2, s7, -1506
                  nop
                  sll          a5, a1, gp
                  srli         ra, gp, 26
                  andi         s5, t3, -593
                  or           gp, t1, s0
                  auipc        s8, 18742
                  srli         tp, s9, 8
                  lui          zero, 118243
                  auipc        a0, 458184
                  srli         s7, s9, 10
                  sltu         zero, t4, s5
                  addi         s3, gp, 378
                  xori         sp, a2, 1224
                  nop
                  or           s4, s2, t5
                  slli         s8, s5, 11
                  xori         a6, t6, -655
                  add          s8, s4, t2
                  slli         zero, sp, 1
                  slti         a3, a1, 310
                  add          t2, s7, s1
                  srai         t4, a6, 30
                  sub          s5, a3, t1
                  auipc        s5, 991862
                  sll          s8, s4, a0
                  xori         tp, s10, -1871
                  addi         s11, t1, 1146
                  slt          tp, s5, s9
                  sll          tp, s11, s6
                  lui          a4, 964330
                  or           a0, a5, s5
                  auipc        zero, 556063
                  sltu         t3, t1, a7
                  and          t4, t2, a0
                  sltiu        a0, s0, -592
                  xori         s6, s5, 542
                  slt          s11, a2, a5
                  sra          a4, a5, s1
                  sltu         t0, a1, t6
                  xori         a0, tp, -150
                  ori          s10, sp, 1477
                  xori         s2, s8, -175
                  sub          a6, t1, a3
                  srai         s2, t5, 27
                  xori         t1, tp, -778
                  sltu         s8, t1, a4
                  add          s1, ra, a3
                  and          s3, a7, ra
                  auipc        a4, 676254
                  add          s5, tp, t6
                  xor          t0, s10, s9
                  sll          s3, a3, s0
                  srai         a1, s7, 0
                  srai         s0, s10, 14
                  srai         s10, a4, 3
                  srai         s5, s2, 10
                  srli         gp, s0, 8
                  add          t2, s3, s1
                  sll          sp, t6, t1
                  xori         s6, s0, 70
                  sltu         sp, t2, s6
                  sltiu        s9, t4, 1908
                  or           zero, s7, s6
                  sll          s11, a0, gp
                  srai         s9, s7, 6
                  sltiu        a0, s11, -1872
                  nop
                  slti         sp, s4, -30
                  auipc        s4, 976746
                  slti         s6, ra, 1502
                  sub          s11, ra, a3
                  slti         s11, a0, -1664
                  sltiu        s4, s2, -1246
                  sltiu        s2, a3, -171
                  xori         a2, s0, 1931
                  srai         s4, s9, 28
                  ori          a5, s4, 597
                  srli         t1, s4, 1
                  sub          t4, a1, s7
                  xori         s0, ra, -1607
                  slt          s8, a2, t4
                  slli         a2, s11, 0
                  or           t0, s6, a7
                  slt          a0, s11, zero
                  srl          a2, ra, t6
                  auipc        zero, 420077
                  nop
                  slli         s2, s4, 29
                  sra          t0, s3, a7
                  ori          t2, s1, 234
                  slt          a2, t3, s0
                  sub          s6, a7, t3
                  xori         s5, s9, 185
                  sub          a0, a3, a3
                  add          zero, t6, a4
                  srl          s3, t6, sp
                  add          s9, t5, s10
                  slti         a1, s2, -442
                  slt          a5, a2, zero
                  or           a2, t5, s1
                  srl          s1, a4, t4
                  sltiu        tp, t5, 636
                  ori          gp, sp, 267
                  slti         s3, t5, 1264
                  sltu         s3, s1, s6
                  and          t3, s6, a5
                  slli         s0, a6, 28
                  and          t1, s9, s5
                  lui          tp, 713570
                  srai         sp, a5, 25
                  and          gp, s7, t5
                  sub          s6, t1, s0
                  sub          s5, t2, a3
                  auipc        s9, 530738
                  sra          s2, s4, s6
                  slti         s9, a4, 1441
                  slti         s2, a1, -1229
                  auipc        s2, 429559
                  lui          s10, 410936
                  sltiu        a6, t6, 339
                  srl          a5, gp, a5
                  xori         s11, a3, -1963
                  srai         tp, a5, 12
                  srli         s7, s7, 1
                  add          t3, s6, s4
                  andi         s5, s2, 1048
                  sltiu        a1, s9, 1316
                  and          s10, t1, s2
                  nop
                  slt          s1, a3, s1
                  and          s5, zero, zero
                  srli         t0, a6, 8
                  add          t2, s3, a4
                  slt          a4, t2, t4
                  slli         ra, s8, 12
                  srai         s1, s2, 4
                  auipc        a3, 359040
                  nop
                  sltiu        a4, s5, 827
                  sll          tp, a1, t2
                  xori         t2, s1, 744
                  or           a1, s11, a4
                  sub          s3, gp, a1
                  slli         t2, t1, 16
                  slt          t4, a0, a0
                  lui          t0, 423457
                  slli         s1, zero, 23
                  nop
                  xor          t2, t3, t4
                  xori         a0, s6, 1231
                  ori          a4, s10, -1509
                  slti         s2, t1, 916
                  ori          s11, s1, -2015
                  sll          a6, s0, s6
                  slti         s10, s7, 524
                  slti         a4, t2, -2027
                  srai         a3, t1, 28
                  sll          s10, s9, a5
                  sltiu        s5, a2, 692
                  auipc        a0, 553721
                  sltu         zero, s6, a3
                  slti         s6, s1, -1305
                  and          s4, t4, a2
                  sub          t4, t0, zero
                  slli         sp, s6, 19
                  slti         a6, a4, -1457
                  srli         s5, t3, 25
                  auipc        gp, 204631
                  xor          s2, ra, t5
                  andi         s5, t5, -1240
                  xori         s0, gp, -275
                  sra          s0, a2, a2
                  lui          a3, 593939
                  xori         t2, t6, 668
                  srli         a2, s9, 1
                  srl          s7, a6, gp
                  slti         s2, s9, 1040
                  and          s0, a1, s8
                  xor          s2, t4, a2
                  ori          s7, s8, 1580
                  slli         s1, s6, 7
                  sra          s8, a2, a1
                  xor          t2, a3, t0
                  ori          s3, t0, -333
                  slli         a2, t6, 6
                  sra          ra, s7, s10
                  nop
                  srli         s2, t3, 22
                  xor          s3, a4, a3
                  sub          ra, s6, s11
                  lui          s7, 279159
                  sub          gp, s8, a7
                  and          t2, s0, t5
                  ori          a1, s9, 1360
                  srli         s7, sp, 27
                  srli         a6, t3, 23
                  slli         s3, t1, 30
                  sltu         t2, a7, t5
                  slti         s1, a0, 1125
                  slt          s8, s2, s10
                  auipc        a6, 184792
                  nop
                  srli         gp, ra, 7
                  nop
                  xor          t3, s11, a0
                  slt          s4, s7, t4
                  slti         t4, t2, 180
                  srl          s10, s2, t1
                  slt          s7, a6, t5
                  xori         s7, s4, 509
                  andi         t0, t2, 322
                  sub          s6, s7, s3
                  slli         t1, a4, 13
                  and          s7, gp, a3
                  lui          tp, 868546
                  nop
                  xor          a4, s7, a3
                  add          tp, s0, t0
                  lui          t4, 238241
                  sltiu        s2, a5, 385
                  nop
                  srl          zero, a5, a5
                  sub          t3, s5, a2
                  sll          a5, gp, sp
                  auipc        t2, 699558
                  nop
                  slt          a4, a2, t1
                  and          s4, s11, zero
                  sltiu        t0, s1, 118
                  sltu         zero, t5, t3
                  and          s1, s7, t0
                  ori          a5, s11, 1847
                  add          s6, a7, a2
                  slt          a3, a0, gp
                  xor          a4, t3, s6
                  and          s1, s1, s7
                  lui          s11, 47795
                  sll          a3, gp, s9
                  auipc        zero, 988974
                  xori         a3, s5, -784
                  xor          a1, a3, zero
                  xor          a0, a3, s3
                  slt          zero, s6, tp
                  auipc        a0, 21067
                  add          a5, ra, s0
                  srl          zero, sp, gp
                  and          s11, t6, a4
                  or           s9, t2, s7
                  sll          s2, t2, s4
                  slti         a3, a6, -1123
                  sltiu        s5, s3, -1887
                  lui          a6, 530844
                  xori         a2, s10, -644
                  add          gp, s1, a4
                  and          s8, a2, t2
                  sra          t0, s0, sp
                  slti         a3, ra, -1986
                  nop
                  auipc        t4, 648610
                  sub          t3, s0, t1
                  srli         a0, a3, 12
                  sltu         ra, a1, s2
                  sub          s7, s3, s10
                  xori         a1, s6, 1877
                  ori          s0, a2, -170
                  slti         a2, a0, -700
                  sltiu        s9, ra, 5
                  or           a5, gp, s10
                  sra          t2, a7, s6
                  slti         t0, s11, 1845
                  slli         a3, a5, 8
                  add          a5, s6, gp
                  add          a3, t0, t6
                  ori          s3, a5, 1167
                  ori          s3, a0, 24
                  add          a3, s11, s4
                  sll          s3, s11, t4
                  sltu         tp, sp, s6
                  sra          s11, t6, t4
                  sll          t0, a5, a4
                  srli         t3, gp, 7
                  sra          s6, a5, zero
                  nop
                  or           s0, t6, s9
                  auipc        t1, 784607
                  auipc        t1, 692770
                  xor          s6, a5, a3
                  slt          s10, s8, tp
                  xor          tp, s9, zero
                  and          s11, s6, s11
                  srli         s9, s8, 22
                  sltiu        t4, t5, -496
                  srai         a2, a2, 26
                  slt          s11, s9, t2
                  sub          t0, s1, s3
                  slt          t1, s4, s9
                  auipc        s1, 480961
                  xori         t1, s0, -119
                  and          s5, s6, a2
                  srl          s11, s6, s1
                  sra          s7, s9, s1
                  xori         a3, t2, 1432
                  lui          s3, 988261
                  nop
                  or           zero, t6, s2
                  or           s0, sp, t1
                  sltiu        gp, s9, -1897
                  sub          t0, s7, t2
                  slli         sp, t2, 4
                  xor          t3, sp, a6
                  and          s3, s6, s9
                  xor          a6, s7, a6
                  and          sp, a1, s4
                  or           a4, a0, a4
                  sll          s11, ra, a0
                  lui          t1, 659230
                  and          t4, s8, a4
                  or           t2, a7, t4
                  xori         tp, a3, 802
                  srl          s5, s11, ra
                  slti         t3, s2, -314
                  slli         s3, s9, 12
                  sll          a1, t6, a3
                  xor          t3, s3, s0
                  slli         t0, a4, 0
                  nop
                  auipc        t2, 98184
                  slt          s6, a6, t1
                  ori          ra, a4, -1590
                  slli         s0, a6, 8
                  slt          a0, s11, a7
                  sltu         a3, s4, s4
                  slli         a0, tp, 17
                  sltiu        gp, s10, -1262
                  nop
                  srai         s1, s4, 21
                  and          t0, sp, s7
                  slti         s10, s10, 855
                  auipc        t0, 611806
                  or           a2, ra, t6
                  srai         s4, a7, 26
                  ori          ra, a0, 170
                  srai         s10, sp, 6
                  addi         s4, s11, -17
                  add          a4, s11, gp
                  lui          s2, 343517
                  srli         s5, gp, 4
                  andi         t2, a2, 754
                  ori          s11, ra, -672
                  ori          a0, s10, 1307
                  sra          s3, t1, a7
                  sra          a1, t6, s7
                  or           s4, sp, a1
                  srai         s3, s6, 13
                  srai         a2, t4, 1
                  srai         s2, a3, 28
                  ori          a5, s9, -1184
                  andi         s5, s3, 2018
                  or           s3, s0, s1
                  ori          tp, gp, -755
                  sra          a0, t2, a6
                  nop
                  srli         zero, s10, 8
                  ori          s1, s4, 179
                  slti         s3, s1, 975
                  or           a0, a7, s5
                  sub          s2, a2, s8
                  srai         t2, s1, 8
                  nop
                  srli         s4, s7, 24
                  srl          s0, t3, s0
                  andi         t2, a7, 798
                  nop
                  srli         gp, zero, 23
                  or           s3, s5, s9
                  ori          zero, s2, -621
                  and          s1, s5, ra
                  sltu         s8, ra, t3
                  and          s10, t6, a2
                  xori         t4, ra, -1573
                  addi         t1, zero, -1382
                  srl          s2, gp, t5
                  slt          a0, s5, a4
                  sltu         t4, a3, a1
                  or           a6, s1, s5
                  nop
                  and          s5, zero, t5
                  or           a1, sp, t5
                  srl          a1, t1, s9
                  sub          s8, sp, s7
                  addi         s10, s1, 1283
                  andi         s0, t5, 1844
                  auipc        a6, 821457
                  or           ra, zero, s6
                  sltiu        t1, s10, -1108
                  srl          s7, sp, t1
                  slli         s3, s6, 30
                  slli         a2, t2, 22
                  andi         zero, t2, 325
                  andi         a5, a3, -1041
                  srl          s7, s1, a6
                  add          t2, s0, a3
                  sltiu        a2, a2, 926
                  and          t1, tp, s10
                  sub          t1, s7, s11
                  li           a0, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           s10, 0x0
                  li           s0, 0x80000000
                  li           s7, 0x80000000
                  li           s4, 0x0
                  li           s6, 0x80000000
                  li           s9, 0x80000000
                  li           t1, 0x56e443ff
                  li           a4, 0xc7c9633f
                  li           ra, 0xa2b58677
                  add          t1, a4, s4
                  lui          s0, 745678
                  addi         s7, s4, 1754
                  addi         s10, s9, -132
                  addi         s4, s9, 1661
                  auipc        s10, 579689
                  lui          s4, 624099
                  auipc        s9, 335974
                  auipc        s4, 58473
                  addi         a0, s0, -766
                  addi         s6, s0, 1375
                  auipc        t1, 495364
                  add          s6, s4, ra
                  lui          s6, 200820
                  add          s6, a0, a4
                  auipc        s0, 38042
                  nop
                  auipc        s0, 973501
                  lui          s10, 672061 #end riscv_int_numeric_corner_stream_5
                  sub          gp, s7, s4
                  sltiu        t3, a7, 826
                  or           a1, ra, gp
                  sub          s8, a0, ra
                  sltu         zero, s8, t2
                  xor          s2, a4, s0
                  auipc        t2, 90470
                  sub          a5, gp, s5
                  nop
                  xor          t0, tp, a5
                  or           a0, s2, s1
                  lui          sp, 940830
                  slli         s8, s10, 16
                  auipc        t2, 986284
                  sltiu        a3, a2, -17
                  sltu         gp, gp, tp
                  lui          a5, 573881
                  or           a2, s5, gp
                  addi         a2, s7, -926
                  slli         s1, gp, 29
                  srai         s4, s2, 14
                  srai         t1, s9, 31
                  lui          t0, 323084
                  slt          s10, s0, a5
                  slli         a2, a4, 1
                  ori          s7, a5, 1201
                  xori         s10, a3, -57
                  addi         a3, gp, 510
                  sub          tp, t0, sp
                  slti         a3, t1, 808
                  sra          a1, s11, a3
                  sltu         s1, a1, s7
                  slti         s1, a3, 1526
                  xor          s10, t1, s9
                  sub          s3, sp, a2
                  srl          s3, t3, gp
                  sltiu        s0, s11, 147
                  addi         s2, t6, -1193
                  xor          t3, a5, t4
                  nop
                  srl          s7, s5, a2
                  slt          s6, s7, sp
                  andi         tp, a0, -1295
                  nop
                  xori         t4, a3, -662
                  sltu         a3, t4, t5
                  sub          t0, a6, s4
                  srli         tp, a1, 13
                  sll          gp, s6, s8
                  and          zero, s2, zero
                  srai         s10, t0, 29
                  xor          s1, t1, a0
                  sra          s4, zero, a1
                  slti         a1, a7, 68
                  sub          s1, s0, a7
                  srl          s7, t2, a6
                  ori          a2, s10, -480
                  xori         s1, tp, 791
                  auipc        s1, 993510
                  xor          a6, s8, a5
                  slt          ra, t1, a5
                  xor          t0, gp, s11
                  slt          zero, gp, a1
                  srai         tp, s2, 21
                  slt          a2, s11, a3
                  srli         sp, a2, 4
                  xori         s5, a6, -1485
                  auipc        a3, 756942
                  auipc        s5, 241174
                  ori          s9, t0, 1555
                  srai         sp, sp, 23
                  xori         s2, a5, -656
                  lui          s2, 967288
                  sra          s7, a3, t1
                  nop
                  slti         s2, t2, 830
                  srai         s0, a0, 3
                  slt          t3, s10, s10
                  xori         s4, s10, 2016
                  addi         s3, s2, 1463
                  sll          tp, s11, a6
                  slt          t0, s7, s4
                  sub          a2, s11, t6
                  lui          s9, 948494
                  slli         s11, t4, 17
                  slli         s1, s9, 12
                  sra          s9, s9, s2
                  and          s11, a5, s0
                  slli         s10, s9, 28
                  srli         s9, t6, 5
                  srl          a4, a6, a6
                  xori         s1, gp, -747
                  sll          zero, a0, tp
                  slli         s10, s8, 19
                  srl          s8, s11, t2
                  srai         sp, s7, 25
                  slt          t0, t0, t1
                  ori          a2, t2, -1706
                  sltu         s9, a2, t5
                  slli         tp, t5, 12
                  andi         s7, a3, 1640
                  andi         a3, a5, 524
                  nop
                  sll          t3, gp, t5
                  auipc        s2, 741910
                  or           s9, s0, t1
                  and          gp, a5, s11
                  and          a6, a7, t6
                  sltu         s5, s11, a5
                  and          s6, s7, s7
                  slli         s9, s9, 2
                  slt          t2, s4, t0
                  xor          s2, a5, a7
                  nop
                  and          s2, a6, s6
                  slli         a1, s9, 4
                  sltu         gp, t0, a0
                  srai         ra, a2, 27
                  srai         s2, a0, 1
                  and          s3, s7, s0
                  ori          s0, s11, -519
                  srai         gp, a0, 25
                  add          s6, a7, zero
                  addi         a0, t2, -1085
                  lui          t0, 470634
                  sll          s9, tp, ra
                  and          t0, s8, s9
                  and          a0, s5, s7
                  andi         a6, s11, -1704
                  slt          a2, t4, ra
                  sltu         s1, a1, t6
                  srli         s3, s7, 19
                  and          s3, a3, a3
                  srl          s10, sp, s3
                  sub          s2, tp, tp
                  and          t4, s9, s4
                  sltiu        s11, a4, 1478
                  slti         tp, s10, 1749
                  srl          t3, s10, t1
                  sub          a0, s9, s10
                  slti         t4, s5, 1653
                  sra          s11, t0, t1
                  srli         a2, s8, 19
                  nop
                  sltiu        s5, t6, 837
                  sub          a3, s7, s10
                  sub          s4, gp, s10
                  add          a2, s6, s7
                  srli         s9, tp, 7
                  auipc        a2, 53158
                  or           ra, s3, a6
                  and          t2, s3, a7
                  srl          a2, t2, ra
                  slt          s5, t4, t6
                  srli         s9, tp, 17
                  addi         a5, s3, 1367
                  sra          s1, sp, t4
                  auipc        a3, 374058
                  or           s9, t5, t3
                  or           t4, a6, a3
                  sltiu        s11, t0, 1135
                  srli         s0, ra, 9
                  sra          a6, ra, tp
                  addi         s0, s3, -1474
                  andi         s4, t2, -1063
                  nop
                  srl          a0, gp, s8
                  andi         zero, tp, -1721
                  lui          a5, 576341
                  nop
                  xor          s9, s0, s2
                  and          t0, s4, s5
                  slli         t2, s6, 9
                  add          t0, a3, a3
                  ori          s0, t2, -256
                  xori         s5, gp, -1823
                  ori          s1, s1, 674
                  and          a4, s10, s10
                  and          s2, t5, s4
                  sra          s11, a3, s4
                  ori          s11, gp, -1234
                  xori         s6, a3, -824
                  auipc        ra, 663574
                  addi         s10, ra, -1200
                  nop
                  addi         a1, a7, 803
                  srai         s3, s8, 26
                  sltu         s5, t2, t5
                  sll          a6, t5, a0
                  srl          a0, s7, s9
                  srl          a3, s11, tp
                  addi         a4, s2, 737
                  srai         t4, s10, 21
                  srl          zero, s5, s1
                  slti         t4, tp, 1786
                  or           s3, a3, s5
                  or           a2, s1, sp
                  sll          s6, t4, s2
                  and          t0, ra, s4
                  and          s9, t1, a7
                  sltu         t1, a0, a1
                  srl          s8, s2, a4
                  auipc        a5, 391791
                  sltu         t3, s5, t3
                  nop
                  xori         s9, a6, 725
                  sub          s10, a2, tp
                  sltiu        a5, t4, 951
                  and          t2, a5, s4
                  sra          ra, t2, s3
                  sltiu        t3, t5, -1485
                  sltu         s7, s3, a7
                  xori         s9, zero, 372
                  srli         s10, gp, 15
                  add          t0, s11, a7
                  slti         s11, t6, 1961
                  sltu         s11, ra, s10
                  nop
                  ori          s0, a0, -676
                  srli         a6, t1, 0
                  nop
                  srli         s9, t2, 24
                  xori         a1, s4, 736
                  sra          s2, t6, s6
                  xor          t3, a2, t4
                  slt          s7, s6, a1
                  slti         s5, t5, -2038
                  ori          t2, s1, 1662
                  sltu         tp, zero, gp
                  andi         t4, ra, 1499
                  sra          a4, s9, s1
                  slti         s3, s4, 131
                  slli         s6, a4, 28
                  and          s2, a5, s10
                  srli         sp, s7, 1
                  addi         s6, a4, 1704
                  srli         s9, a7, 19
                  xor          s6, s6, ra
                  ori          s2, s4, -764
                  slli         s7, t4, 25
                  ori          a3, gp, -1534
                  lui          s3, 745743
                  andi         s6, t4, -311
                  auipc        s4, 992026
                  sub          a6, s7, s3
                  slli         tp, s11, 16
                  sub          s1, ra, t1
                  xori         s1, s0, 707
                  srai         a4, ra, 10
                  and          s7, sp, a6
                  xor          t0, t3, zero
                  sub          a6, s1, s5
                  srai         a5, t6, 20
                  xori         t4, s11, -1830
                  sltiu        a1, s11, -531
                  slli         s6, sp, 9
                  lui          t3, 1030689
                  sll          ra, ra, gp
                  ori          s7, tp, -1438
                  or           t2, s6, a6
                  xor          a6, t3, s7
                  srl          s8, zero, ra
                  lui          s5, 913465
                  auipc        s11, 459444
                  srai         s0, s8, 9
                  or           t0, t1, s6
                  xori         tp, s6, -1868
                  srl          s7, t3, t3
                  slti         t1, t6, 312
                  srl          s5, t3, s7
                  sltu         s5, s9, tp
                  xor          sp, zero, s5
                  addi         t1, sp, -1404
                  sra          a0, a4, t3
                  and          t0, sp, a5
                  sltiu        sp, s11, 607
                  sll          sp, t3, t1
                  sltiu        sp, s0, -1152
                  sub          t3, ra, t4
                  addi         s6, s0, 1876
                  add          a2, s3, a2
                  lui          s6, 968454
                  srl          a2, t0, t2
                  ori          gp, a7, -492
                  srl          s11, s1, a7
                  srai         s0, sp, 18
                  srai         s1, s4, 27
                  sub          s11, s4, s11
                  slli         a6, sp, 23
                  andi         s4, t4, 264
                  and          gp, a1, ra
                  slt          s7, s7, s1
                  nop
                  sltiu        s9, s9, -1946
                  sltu         s7, s11, gp
                  add          s1, t1, s1
                  or           zero, s1, a3
                  slt          s7, a2, s11
                  xor          s8, a2, tp
                  add          s4, t5, s10
                  auipc        zero, 994192
                  srl          a4, a0, a1
                  xori         a3, s5, 1025
                  sll          a2, t5, s11
                  sub          t3, a5, t2
                  srli         tp, t4, 26
                  srl          s10, a3, s11
                  or           t0, t6, a7
                  slti         s6, zero, 583
                  lui          a2, 998568
                  srai         s10, a4, 10
                  sltu         s0, a0, ra
                  xor          s5, a4, gp
                  srl          s2, s11, s7
                  sltu         a6, t5, s6
                  sltiu        t0, s0, 612
                  slti         zero, t1, -884
                  slli         t1, ra, 4
                  and          s3, s10, a6
                  sub          a2, ra, a5
                  and          s10, s2, s0
                  slt          t1, s8, s10
                  lui          a2, 882269
                  srl          s11, s1, t5
                  srli         t3, t4, 21
                  srli         t2, a7, 0
                  xori         sp, a6, -192
                  and          zero, t1, t3
                  andi         tp, a4, -414
                  auipc        s3, 917102
                  addi         s11, a0, -541
                  slti         a1, s9, -1501
                  xori         t1, tp, 1688
                  andi         a1, tp, -760
                  srli         tp, a6, 11
                  add          t3, a7, t3
                  sltiu        a5, t6, 1407
                  slli         zero, s11, 2
                  xori         s8, a5, 1659
                  auipc        s5, 940975
                  slt          s3, ra, t3
                  slli         zero, t5, 12
                  sltu         s6, t0, a2
                  addi         s2, s1, -458
                  srai         s9, ra, 21
                  slli         s6, s10, 1
                  srli         s2, a2, 22
                  sub          a2, t3, sp
                  sltiu        zero, s5, -1454
                  srli         ra, s3, 10
                  sltu         zero, t4, s7
                  or           t4, a2, a3
                  xor          s3, s8, t4
                  ori          sp, s7, -964
                  and          sp, a6, t1
                  slli         a3, s2, 6
                  sra          zero, a1, sp
                  and          s1, t6, a3
                  auipc        t4, 995466
                  and          t3, t6, s5
                  sra          s10, t5, s5
                  srai         tp, a1, 18
                  sra          s1, s10, t4
                  auipc        s7, 763741
                  slli         s5, s5, 13
                  sltu         sp, a5, t5
                  nop
                  sra          s9, sp, a1
                  addi         ra, t6, 962
                  auipc        s4, 782057
                  sltu         s4, tp, ra
                  and          ra, s7, t1
                  sub          s2, s10, s0
                  slli         a3, s7, 1
                  add          s5, t3, s11
                  xor          s1, s11, t4
                  addi         a6, t0, -1956
                  addi         s8, a6, 1939
                  srli         ra, s1, 30
                  sltiu        s0, zero, -1692
                  xor          a4, zero, t1
                  lui          a5, 732076
                  xor          s9, a1, s1
                  srl          a6, zero, a1
                  sub          s11, s9, a7
                  slt          a1, t0, t4
                  auipc        a3, 555765
                  slt          a5, s4, a5
                  add          s8, a0, t0
                  add          t3, a3, t2
                  addi         s3, s6, -664
                  sll          s9, s2, s4
                  srai         a5, t5, 7
                  slti         a4, s11, 563
                  slli         s5, tp, 7
                  sll          s3, s8, s7
                  xori         s3, t2, 1239
                  slti         t1, t3, 1233
                  addi         s2, s4, 275
                  or           a2, s9, a7
                  or           sp, s6, a4
                  slti         zero, t4, 1568
                  sub          a3, zero, t3
                  andi         zero, a2, 1807
                  auipc        a0, 887527
                  xori         a1, t3, 298
                  sra          a5, tp, a7
                  xori         a0, a6, 2044
                  slli         s9, t3, 25
                  andi         t2, a0, 537
                  sub          t4, s1, t6
                  or           a2, t6, t1
                  xori         s2, a0, 577
                  slt          t1, s3, s7
                  sra          t1, s10, s0
                  andi         gp, s3, -317
                  and          s1, a7, s7
                  addi         zero, s1, 347
                  sltu         s4, s4, s1
                  lui          s4, 603262
                  lui          t2, 935510
                  addi         s1, t5, 632
                  addi         a6, s1, 823
                  sltu         a3, s3, s3
                  srai         tp, t2, 9
                  slli         t3, t6, 20
                  xori         t1, s5, 962
                  addi         a0, s5, 711
                  ori          s6, s2, -34
                  xori         t4, s2, -1689
                  srli         s5, a4, 17
                  srli         s0, s7, 22
                  andi         s5, sp, 31
                  srli         a4, a3, 5
                  slt          a1, a4, sp
                  xor          s4, a6, a2
                  addi         s1, s1, 1937
                  sltu         t1, t5, a2
                  or           tp, s5, a4
                  slt          a6, a2, s5
                  add          s2, s11, s2
                  add          a5, s2, s6
                  sub          tp, a1, a1
                  xori         s10, a2, -750
                  sltiu        t0, s3, 1064
                  slli         a6, a4, 25
                  slti         t1, gp, -1726
                  andi         s7, s8, 943
                  lui          s4, 576379
                  ori          s1, t5, 785
                  ori          s7, s11, 1330
                  addi         sp, sp, -138
                  sra          t4, s10, s2
                  slt          t2, t4, sp
                  sll          a3, a0, sp
                  auipc        tp, 428670
                  sub          s5, a7, tp
                  slli         s1, t5, 19
                  slli         t2, gp, 23
                  add          gp, s3, zero
                  sltiu        s5, t2, -423
                  nop
                  and          a5, s10, s6
                  and          s10, s0, t4
                  auipc        zero, 173025
                  auipc        gp, 766506
                  ori          zero, s6, 1612
                  sltiu        s1, t3, -1667
                  slli         s7, s10, 3
                  addi         s10, a2, -514
                  lui          s8, 287120
                  and          s7, gp, a6
                  sub          s10, s4, a1
                  add          sp, s2, gp
                  nop
                  xor          s5, s0, a4
                  slt          s9, t1, s6
                  sll          t3, a2, s8
                  srai         t3, s6, 3
                  srl          t2, t0, s0
                  lui          zero, 343616
                  slt          s1, s7, s6
                  add          tp, t2, t1
                  or           s0, s10, s1
                  srl          s2, a3, s11
                  auipc        s1, 344147
                  slli         a3, s4, 7
                  addi         a6, t0, 1495
                  srl          s2, s3, a7
                  andi         s7, t3, -375
                  sll          t1, ra, a1
                  slt          s2, tp, t0
                  srai         gp, a4, 8
                  nop
                  sub          a0, t2, a0
                  xori         a1, s3, -1854
                  srai         s11, sp, 18
                  sltu         a6, tp, a1
                  sltiu        t4, gp, -75
                  and          a5, s7, t3
                  and          t0, a1, s4
                  srl          a1, t2, t0
                  and          s6, s3, s1
                  lui          a0, 827543
                  or           a0, s6, t0
                  sltu         s9, t5, s7
                  srai         t3, s11, 30
                  xori         s2, s5, 855
                  srli         t3, s8, 1
                  slti         t2, t1, -1816
                  slli         s2, t3, 20
                  slti         s10, t0, 583
                  and          gp, a6, a5
                  add          zero, t0, a2
                  srai         t1, s7, 20
                  andi         tp, s10, 407
                  slt          a4, s11, a5
                  auipc        s10, 537834
                  slt          a5, s11, ra
                  addi         a1, s2, -1985
                  srai         s8, a3, 24
                  slti         a4, s7, -1019
                  andi         tp, a1, -367
                  or           s6, s8, s11
                  ori          a3, t4, -553
                  sll          a0, t3, s10
                  srli         s0, a7, 28
                  addi         s0, t5, -1859
                  srl          t3, s11, a3
                  lui          a2, 727558
                  sltiu        s2, t3, -670
                  addi         s9, t5, 1418
                  srli         s8, a4, 14
                  slli         a4, sp, 25
                  and          s10, gp, a5
                  auipc        a0, 147540
                  srl          s9, a7, t2
                  sll          ra, s5, t4
                  auipc        a5, 804799
                  sra          a4, s8, a5
                  srl          a6, s6, a1
                  srli         a1, s1, 25
                  auipc        gp, 135316
                  andi         a5, a6, 2031
                  or           s11, t3, s3
                  sll          sp, s6, a7
                  sub          gp, a4, a1
                  xori         a3, a2, 1186
                  sltiu        a4, sp, 2007
                  sll          zero, s3, t1
                  auipc        s4, 101591
                  sra          gp, t0, a0
                  sltiu        a5, t3, -1041
                  slti         s5, s9, 1787
                  slt          gp, gp, ra
                  slli         a0, t4, 22
                  nop
                  or           s8, sp, s11
                  add          s3, a4, s7
                  xor          a4, s3, t0
                  addi         tp, a6, -1566
                  xori         zero, t5, -516
                  xori         t0, s2, -1338
                  auipc        s3, 913904
                  srl          a2, t2, s3
                  nop
                  sltu         ra, s0, s6
                  add          ra, a5, sp
                  srl          a4, s0, a0
                  and          gp, tp, t0
                  srai         s9, t3, 31
                  srai         t1, a1, 14
                  nop
                  xori         ra, s7, 519
                  addi         s5, s11, 775
                  nop
                  srai         s1, a2, 20
                  srli         sp, sp, 22
                  nop
                  srai         t3, s2, 14
                  and          sp, a7, a5
                  slli         a2, a5, 27
                  nop
                  srl          t4, s1, sp
                  sll          s6, s0, ra
                  srli         s6, s8, 31
                  xor          a4, s8, t1
                  sll          s5, tp, s4
                  lui          a5, 623141
                  auipc        s2, 81033
                  andi         t3, t1, -526
                  srl          a0, s11, a4
                  and          a6, s5, s3
                  and          s5, s2, s2
                  slli         t1, t5, 7
                  xor          a6, a1, t4
                  add          s1, sp, s0
                  sub          s1, s5, gp
                  ori          t1, a2, 340
                  lui          s3, 551412
                  lui          t2, 256171
                  slli         s9, t1, 31
                  slli         sp, a1, 5
                  srl          a3, a7, s7
                  sltu         a2, s10, s3
                  sltiu        s3, sp, -1963
                  slti         s0, s2, 125
                  slli         s3, s9, 4
                  slli         a0, tp, 8
                  xor          t1, t2, s9
                  and          a1, t2, a7
                  and          s5, a0, s7
                  lui          s0, 515602
                  addi         t3, a6, -1655
                  slt          s10, s1, gp
                  sltu         ra, ra, t4
                  auipc        s6, 484588
                  sll          t1, t0, a3
                  addi         sp, t3, 1330
                  slli         s6, ra, 19
                  srl          ra, s11, a4
                  and          s0, t6, t1
                  srl          s11, t5, a3
                  sltiu        a2, t3, 1914
                  srl          s0, zero, s0
                  add          s11, s11, s0
                  sll          zero, s6, s10
                  sub          s0, t1, s0
                  sltu         t0, s11, zero
                  srl          s1, s2, s11
                  srl          s9, t0, s0
                  ori          ra, sp, 521
                  sltiu        a5, s10, 1554
                  srai         s11, s6, 6
                  sltu         a4, a1, s3
                  srai         t4, sp, 24
                  addi         t3, a0, -1989
                  sltu         s6, t0, s7
                  xori         s11, a2, 1910
                  slti         s0, s11, 41
                  addi         s8, a7, -348
                  and          a1, a0, s8
                  li           s10, 0x80000000 #start riscv_int_numeric_corner_stream_2
                  li           s1, 0xffffffff
                  li           s5, 0x191fc6fa
                  li           s0, 0xffffffff
                  li           s2, 0x0
                  li           s7, 0x0
                  li           gp, 0x922e56b1
                  li           ra, 0x7f7c4bcf
                  li           a4, 0xcff0e7cb
                  li           t3, 0x49260f58
                  add          s0, s0, s1
                  lui          gp, 43922
                  nop
                  auipc        gp, 177133
                  auipc        s10, 53086
                  add          s2, t3, gp
                  addi         s10, t3, 162
                  addi         s10, ra, 85
                  addi         s5, s0, 1278
                  nop
                  auipc        s10, 803547
                  lui          s10, 669109
                  nop
                  auipc        s7, 983020
                  addi         s10, s1, -557
                  nop
                  add          t3, ra, s1
                  auipc        a4, 530694
                  lui          t3, 674131 #end riscv_int_numeric_corner_stream_2
                  srai         s11, s11, 26
                  slli         zero, gp, 2
                  sra          s9, a6, s6
                  sltu         t4, a7, s9
                  srl          s10, t3, a2
                  sll          a4, s4, a7
                  and          s6, ra, sp
                  srl          s1, t6, a1
                  sltu         s1, a5, a4
                  or           s8, ra, s2
                  auipc        s0, 315364
                  slt          sp, s10, t2
                  lui          s9, 650871
                  addi         s0, a1, -1295
                  nop
                  sll          ra, t2, sp
                  and          s11, a7, gp
                  slt          s4, s3, s0
                  slt          s11, s3, t1
                  slti         s7, s11, -1111
                  addi         s4, ra, 682
                  sub          s2, s6, s4
                  ori          a3, gp, -62
                  slli         s8, zero, 27
                  xori         a4, t5, -1566
                  or           s6, t4, s11
                  slt          a1, a5, s9
                  add          t1, tp, s0
                  lui          a4, 794799
                  sub          tp, s3, a7
                  srai         t3, t4, 29
                  xor          s4, gp, s5
                  add          s5, gp, gp
                  slli         t1, s10, 18
                  auipc        a4, 541480
                  srli         s6, a4, 27
                  slt          s3, t3, t1
                  xor          t0, s3, gp
                  slt          gp, a5, t1
                  nop
                  add          sp, s11, t3
                  slti         t3, s2, -2021
                  addi         s5, s0, -1088
                  slli         a0, a1, 1
                  slt          s6, t5, tp
                  srli         s7, t3, 31
                  srl          a6, t5, a3
                  xori         s2, gp, 1247
                  sltu         a1, s9, s7
                  ori          s8, s7, 216
                  and          s11, t3, s7
                  sltiu        a0, t1, 650
                  andi         s2, tp, 207
                  lui          s4, 859862
                  sub          t0, t2, a2
                  sra          a2, a5, a0
                  add          s9, s3, a3
                  and          t2, zero, tp
                  slt          a2, zero, s7
                  sltiu        s2, t2, 900
                  or           sp, t5, a1
                  ori          s11, s1, -585
                  add          s8, a2, a5
                  xor          a3, ra, s2
                  or           s2, a5, s9
                  add          t1, s1, t0
                  slti         s3, t2, -1055
                  slt          s0, t3, s6
                  nop
                  ori          s9, sp, -90
                  srai         gp, s3, 17
                  and          tp, s5, s10
                  ori          t4, a5, -1326
                  ori          s4, a5, -1014
                  xor          t3, s10, a5
                  sll          s10, s6, s8
                  srai         a4, s3, 8
                  xori         a4, tp, 1580
                  slli         tp, gp, 30
                  sltu         a0, t3, a7
                  sltiu        a4, t5, -922
                  slli         s5, a3, 0
                  sltiu        s1, s4, -1637
                  add          a3, a2, t5
                  sll          s7, t5, zero
                  sltiu        s6, gp, 1087
                  sltu         s7, s11, s2
                  addi         t1, a2, -659
                  xori         a6, zero, 719
                  nop
                  andi         s5, a3, 428
                  addi         a6, sp, 715
                  sltu         s6, a4, a5
                  ori          a0, s0, -406
                  andi         s0, s0, 1446
                  and          s11, s3, s1
                  sltiu        s5, t2, 1635
                  srai         a2, a0, 8
                  sra          s3, s1, s9
                  srai         a3, s5, 27
                  auipc        s5, 886554
                  ori          a6, gp, -915
                  sltiu        a4, t1, -1985
                  sub          a4, s4, a3
                  nop
                  and          a3, a4, sp
                  nop
                  srl          t0, ra, sp
                  slli         gp, s5, 15
                  lui          t1, 850200
                  sub          tp, s1, t1
                  addi         ra, s5, -860
                  andi         a4, t2, 651
                  ori          sp, ra, -1361
                  sra          s1, ra, s11
                  sll          sp, s8, t1
                  or           a2, a1, t3
                  sra          s5, gp, t1
                  addi         gp, s9, 250
                  andi         s2, a0, 1817
                  slt          a4, s2, zero
                  sltu         t0, a6, a3
                  slti         gp, s7, -1225
                  ori          a3, sp, 147
                  add          s6, s5, sp
                  ori          s2, s9, 1177
                  xor          a1, s7, a3
                  auipc        a6, 285177
                  srl          s8, s11, gp
                  addi         a4, s4, 469
                  slli         s10, s7, 4
                  or           tp, a7, sp
                  srl          s1, tp, s11
                  or           s0, a1, a7
                  add          t2, s7, ra
                  srai         s1, s0, 17
                  sub          a5, s5, t0
                  andi         s3, a6, 1415
                  andi         gp, s5, -740
                  sra          s4, s3, ra
                  sll          s0, s3, t4
                  slli         ra, tp, 4
                  sltu         t2, s0, t0
                  sltiu        s4, gp, 363
                  xori         a0, s7, 426
                  sra          s9, a3, t6
                  slt          sp, s0, s8
                  srai         sp, t6, 10
                  srai         t4, a3, 22
                  lui          s8, 213181
                  addi         s6, t1, -786
                  lui          t2, 452432
                  andi         a0, s8, -1042
                  sub          a4, t2, s10
                  and          tp, s0, tp
                  andi         s9, s8, 384
                  nop
                  slli         ra, s2, 3
                  sub          t2, t3, t1
                  xori         s1, t2, -1699
                  andi         a6, s8, -1735
                  sltiu        s10, tp, -1222
                  and          t2, sp, t5
                  sub          s8, s0, a1
                  xori         s8, ra, 182
                  xor          t4, tp, s11
                  slli         s11, s8, 15
                  addi         t0, s5, -1640
                  ori          s7, t3, -1282
                  lui          sp, 803975
                  xor          s1, t1, t3
                  srli         t4, t3, 19
                  or           s10, s7, s4
                  ori          a4, s2, 152
                  srai         a4, s8, 16
                  nop
                  sll          t3, s11, t4
                  srli         a4, t3, 21
                  sltiu        tp, s5, 1648
                  addi         t3, t5, 1450
                  srli         t2, s0, 27
                  srl          a6, a2, zero
                  sra          t3, t0, s0
                  or           s1, tp, a0
                  xor          t1, s5, t3
                  or           s7, s4, t6
                  sltiu        t0, s8, 1334
                  or           a1, a5, a0
                  slli         s0, s7, 25
                  add          a5, a5, s10
                  and          a4, t0, s11
                  srai         a6, s6, 23
                  srl          a2, s9, s0
                  add          a6, zero, a3
                  slt          a3, s11, a1
                  or           a0, t3, t6
                  slti         t4, s2, 1818
                  or           tp, gp, gp
                  sltu         s0, tp, t0
                  ori          a2, t3, 872
                  sll          t4, a0, s10
                  xor          s1, s5, ra
                  xori         s0, a2, 288
                  srl          sp, a2, s6
                  sub          s5, a5, a2
                  sltu         ra, ra, tp
                  slti         zero, t4, 1633
                  auipc        a5, 693356
                  sub          t2, s10, a5
                  sltu         s10, a3, s1
                  auipc        t0, 889912
                  and          sp, s1, s7
                  and          a6, s0, s1
                  xori         sp, s2, -959
                  xor          s10, s1, a5
                  srli         a6, a3, 28
                  li           a3, 0x64da5851 #start riscv_int_numeric_corner_stream_14
                  li           s5, 0x80000000
                  li           s11, 0x80000000
                  li           s6, 0x80000000
                  li           s8, 0x80000000
                  li           s3, 0x7bbf53c4
                  li           s1, 0x80000000
                  li           t0, 0xffffffff
                  li           gp, 0x80000000
                  li           s0, 0x80000000
                  sub          s11, gp, s6
                  add          s3, s1, s1
                  sub          s11, s1, t0
                  auipc        s5, 898190
                  addi         s5, gp, 228
                  add          s11, s8, s1
                  add          s1, s6, s11
                  nop
                  lui          gp, 266243
                  auipc        s0, 12320
                  lui          t0, 381358
                  add          s0, s6, t0
                  nop
                  sub          s11, s1, s6
                  auipc        gp, 108257
                  add          s8, s5, s3
                  nop
                  add          s6, t0, s0
                  addi         a3, s8, -351
                  addi         t0, t0, 1900
                  auipc        s11, 980971
                  auipc        s3, 652014
                  auipc        s6, 1025889
                  nop
                  sub          t0, s6, s0
                  addi         s3, s11, -1625
                  lui          a3, 668752 #end riscv_int_numeric_corner_stream_14
                  slli         s1, t0, 13
                  auipc        s0, 111395
                  slt          s0, a0, a7
                  ori          s0, tp, -1301
                  addi         s10, s8, -322
                  slti         ra, zero, 1389
                  or           t2, s0, a6
                  sra          s1, t4, a5
                  slt          s0, a4, a5
                  srl          ra, s6, a7
                  srai         s2, tp, 10
                  sltu         a5, a6, a4
                  sra          s8, s1, ra
                  or           s1, t3, t2
                  or           a6, t6, s11
                  srli         a1, s1, 29
                  srli         zero, s7, 25
                  slli         gp, a7, 7
                  nop
                  sltu         gp, s2, s0
                  xori         zero, s7, -1695
                  and          a2, s5, s3
                  srli         a3, s11, 29
                  srai         tp, t3, 26
                  xori         a0, s0, -777
                  or           s0, a0, a3
                  sltu         s1, sp, s1
                  ori          a2, s3, -728
                  auipc        t2, 875079
                  slt          a6, s9, s11
                  xori         a5, s10, 577
                  xori         s2, s5, -829
                  slt          a4, s10, a4
                  and          t3, s10, s9
                  srai         gp, s9, 6
                  nop
                  sltu         t4, s10, s6
                  auipc        s3, 436491
                  sub          s5, s2, s11
                  slli         s6, a3, 10
                  slti         sp, s1, -1271
                  srli         a4, s5, 16
                  sra          zero, a5, tp
                  srli         s0, s10, 1
                  slt          tp, s3, t5
                  nop
                  addi         a2, a5, 1798
                  sub          a1, t1, t0
                  slt          a2, a7, a0
                  srl          s10, s7, s2
                  addi         t2, s6, -749
                  slt          a6, tp, a3
                  auipc        tp, 231885
                  slli         s0, t4, 18
                  addi         s2, t3, 1527
                  sub          s0, s2, s9
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           sp, 0x80000000
                  li           a1, 0xffffffff
                  li           s10, 0x0
                  li           tp, 0x80000000
                  li           s9, 0x80000000
                  li           a4, 0x0
                  li           gp, 0x0
                  li           a3, 0x0
                  li           ra, 0x80000000
                  lui          tp, 281493
                  sub          a6, tp, a4
                  sub          sp, tp, a4
                  add          a6, a6, a4
                  auipc        a6, 245041
                  addi         ra, s9, -950
                  auipc        a3, 455965
                  add          sp, tp, sp
                  addi         a3, a4, -659
                  sub          s9, sp, a3
                  addi         a6, a1, 1791
                  sub          a6, a6, s9
                  addi         s9, ra, -45
                  add          s9, s10, s9
                  addi         a1, gp, -1245
                  lui          s10, 1039745
                  lui          ra, 52415
                  add          gp, a3, s10
                  auipc        gp, 593210
                  addi         a1, s10, 746
                  auipc        gp, 476186
                  lui          a6, 464617
                  nop
                  nop
                  sub          a6, a4, gp
                  sub          a1, s9, ra
                  nop
                  auipc        sp, 331215
                  nop
                  addi         a3, sp, -2044 #end riscv_int_numeric_corner_stream_9
                  auipc        s7, 877825
                  slt          s1, a5, t4
                  srli         t0, t5, 14
                  sltu         a4, a1, t2
                  auipc        t0, 490926
                  sra          s4, t6, t0
                  addi         s11, a6, 1995
                  nop
                  auipc        s10, 118465
                  sltiu        s2, s6, 779
                  srai         s4, s7, 14
                  srli         t1, zero, 4
                  srli         s9, tp, 4
                  srai         gp, s10, 0
                  sub          sp, t6, t5
                  ori          s8, a4, -1652
                  sra          s7, t2, a1
                  add          s9, s1, s11
                  sub          s2, ra, s8
                  nop
                  srl          t0, tp, a0
                  xori         a6, s5, 1938
                  srli         a2, t3, 0
                  or           s5, a6, t6
                  addi         s1, t5, -172
                  nop
                  srl          a6, a7, t2
                  srli         gp, t2, 1
                  addi         tp, t2, -1258
                  auipc        zero, 305064
                  xor          s10, zero, a5
                  or           sp, s4, a7
                  sltiu        s1, s9, 1497
                  slt          a4, s4, a1
                  or           t3, s3, a0
                  srai         gp, sp, 0
                  andi         s4, t3, -537
                  andi         s1, s8, -1535
                  nop
                  srai         s2, a5, 16
                  slti         t1, a4, -1799
                  lui          t2, 553531
                  slt          s4, s11, a4
                  sub          s1, t1, s11
                  nop
                  nop
                  nop
                  sltu         t3, s2, a7
                  or           s8, s2, a1
                  ori          a5, t4, -842
                  add          t2, tp, zero
                  sra          s0, t2, s7
                  addi         a5, s3, -1970
                  slli         ra, s10, 14
                  sltiu        s0, a2, -389
                  sltiu        a0, a2, 1364
                  andi         ra, a6, 449
                  sltu         s3, t0, sp
                  ori          t4, s2, 356
                  slli         t3, s0, 21
                  nop
                  sltiu        s7, a6, 1221
                  slt          s7, s6, s5
                  srl          s4, a0, gp
                  sra          s1, t3, s8
                  srl          ra, t5, a5
                  andi         s11, s1, 543
                  sra          s4, gp, a3
                  ori          s5, s2, 1260
                  andi         a3, s6, -413
                  sub          s11, a6, t1
                  lui          zero, 792974
                  srli         a5, a1, 7
                  srl          t0, a7, a0
                  ori          a6, t5, -1419
                  andi         tp, a1, -311
                  lui          a3, 505875
                  or           ra, s3, a3
                  xori         t4, s8, 164
                  nop
                  sltiu        zero, t3, 631
                  auipc        s6, 153314
                  sltu         a1, s9, gp
                  ori          s7, gp, 979
                  xor          a2, s11, a3
                  auipc        t2, 482925
                  srli         s11, a7, 25
                  xori         sp, t0, 492
                  srli         s10, zero, 12
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           gp, 0xcf6b0653
                  li           s8, 0x12c888e8
                  li           t3, 0x0
                  li           a0, 0xa6de011b
                  li           s6, 0xffffffff
                  li           s3, 0x80000000
                  li           a1, 0x6aa12d47
                  li           t0, 0xffffffff
                  li           s7, 0x0
                  addi         gp, s3, 1829
                  add          s9, s6, t0
                  add          gp, s8, t0
                  add          gp, s6, s9
                  sub          s9, s3, a0
                  nop
                  addi         s7, t3, -46
                  auipc        t3, 339992
                  nop
                  add          t0, s8, a1
                  auipc        s9, 490068
                  auipc        s7, 902333
                  lui          s9, 313410
                  sub          s7, s9, gp
                  add          a0, s9, t3
                  nop
                  addi         s3, a1, -1273
                  auipc        s6, 375860
                  addi         a1, s9, -1529
                  addi         gp, a1, 1384
                  sub          s8, t0, s7
                  sub          s9, s8, s9
                  lui          s7, 937787
                  add          s8, a1, a0 #end riscv_int_numeric_corner_stream_19
                  sltiu        sp, t0, -594
                  sltiu        t3, a3, 89
                  nop
                  auipc        sp, 360750
                  auipc        s5, 148422
                  lui          a5, 446793
                  auipc        t1, 650387
                  nop
                  auipc        s4, 512283
                  andi         a0, a6, 1858
                  or           tp, t6, a2
                  srl          t3, t0, a5
                  ori          a6, zero, -650
                  xor          s6, zero, a5
                  slti         s9, s7, 1850
                  sltu         t0, s10, a7
                  add          s9, t5, a6
                  and          s4, s2, t3
                  xor          s7, a2, t1
                  sltu         s1, t1, a1
                  slli         s1, sp, 30
                  srai         t3, a1, 14
                  or           a3, gp, s6
                  srai         zero, a0, 17
                  andi         s4, a3, -1067
                  add          a4, sp, s3
                  xori         a1, a4, 874
                  xor          gp, s1, a3
                  slli         s1, t5, 10
                  or           t0, t5, t4
                  lui          tp, 173864
                  auipc        a2, 964757
                  slt          zero, t2, s11
                  add          t4, a6, a0
                  sll          s9, a4, t2
                  sltu         zero, sp, s10
                  add          a3, s4, a7
                  addi         a2, a3, 1298
                  srai         t1, s2, 23
                  srl          t1, a3, s2
                  lui          s0, 488711
                  andi         s2, ra, 1545
                  sltiu        ra, t1, -46
                  lui          tp, 795828
                  sltu         a6, gp, ra
                  addi         s9, tp, 621
                  and          ra, sp, a1
                  nop
                  xor          sp, s9, s11
                  slli         sp, s2, 9
                  slti         s6, s0, 1811
                  lui          t3, 453819
                  auipc        a0, 742253
                  slli         a6, s6, 13
                  lui          s4, 252779
                  andi         s9, a5, 1215
                  sra          t2, t1, t1
                  addi         a0, t4, 1351
                  sll          gp, ra, t0
                  and          s0, a0, s0
                  lui          sp, 454364
                  addi         zero, s3, -638
                  add          tp, s6, t0
                  lui          s4, 417929
                  sltiu        ra, t4, 1069
                  srli         s3, a2, 0
                  ori          s7, s1, -1803
                  sll          s3, a0, s2
                  ori          s3, a5, 1361
                  slt          s5, s11, t5
                  slti         s5, s1, -1507
                  auipc        t0, 833686
                  slli         s1, a1, 28
                  andi         a0, s1, -1324
                  lui          s9, 48399
                  nop
                  sub          t0, tp, ra
                  srai         s8, a6, 26
                  addi         s7, s2, 1797
                  sll          a6, a2, t1
                  sltu         t3, s7, t6
                  and          t3, t5, a7
                  or           s4, s4, t0
                  addi         a2, s4, -314
                  slti         s0, s2, 1134
                  sra          s6, t6, a5
                  or           a2, s7, t3
                  slt          a2, tp, ra
                  sll          s3, s8, s4
                  or           t2, a0, t3
                  addi         zero, s3, -466
                  sltiu        a4, s7, -65
                  xor          s4, t0, s0
                  srli         a5, zero, 26
                  nop
                  lui          t2, 1013105
                  and          s5, s6, a3
                  xor          s0, t2, s2
                  srl          a1, a6, a2
                  sll          t4, a0, t5
                  add          t3, a3, a6
                  srl          a2, tp, s5
                  slli         s4, s8, 6
                  nop
                  sltu         ra, a0, s4
                  xori         t4, gp, 1242
                  andi         t0, tp, 1494
                  sub          sp, ra, s1
                  sll          a2, s4, t3
                  sub          t4, s0, a4
                  andi         s11, a7, -1622
                  slti         t1, s5, 53
                  sltiu        a0, zero, 778
                  andi         gp, t1, -188
                  addi         ra, a6, -1744
                  nop
                  sltu         s3, a5, tp
                  andi         s6, zero, 1003
                  srl          s11, s7, s3
                  sltiu        s7, t3, 835
                  lui          s6, 324596
                  srli         s4, t0, 22
                  xori         s9, s8, 1590
                  ori          s5, s11, 1430
                  srli         t4, gp, 25
                  andi         zero, a6, 1960
                  sltiu        t3, a4, 155
                  ori          s6, a4, -1831
                  addi         a3, s9, -484
                  sub          a2, tp, s11
                  sltu         ra, t2, t3
                  ori          t3, t6, -55
                  srli         a1, t1, 13
                  sll          a4, s4, t5
                  nop
                  slti         tp, s10, -1768
                  sltiu        s7, ra, 945
                  slt          t2, a5, t4
                  lui          t2, 411581
                  slli         t2, a6, 11
                  sub          a0, a3, t1
                  sltiu        a1, s1, -954
                  sltiu        a4, ra, 1567
                  slt          a2, a3, s1
                  xori         t2, s0, 343
                  xori         zero, s8, -1807
                  srli         a5, s6, 2
                  add          s0, zero, zero
                  and          a2, gp, zero
                  addi         a0, s0, 971
                  sltu         s4, t3, s10
                  addi         t4, s8, 411
                  srl          s4, s9, a2
                  srai         a6, a0, 14
                  sltiu        a5, s6, 290
                  sltiu        s11, s10, 160
                  slt          a6, t1, s3
                  lui          a5, 743397
                  slt          t4, a0, s10
                  andi         s1, a1, 506
                  slli         zero, t4, 30
                  sll          t2, s1, s8
                  sra          s1, s6, t6
                  and          s4, a2, t2
                  lui          a1, 814481
                  slti         s4, s9, 8
                  ori          a1, s6, -754
                  sltu         tp, t2, t3
                  nop
                  andi         sp, s11, 775
                  srli         a0, t5, 15
                  xor          sp, tp, s11
                  lui          t3, 819017
                  and          t0, a7, a7
                  sll          t1, s5, ra
                  nop
                  slti         s1, t5, 1438
                  andi         s8, t5, -1840
                  sub          a4, t3, s1
                  nop
                  and          s10, a4, s4
                  srli         s2, gp, 27
                  xori         gp, t6, 594
                  auipc        s4, 362093
                  srl          sp, s1, s11
                  sltiu        s11, t6, -1173
                  slt          s11, a4, t6
                  andi         s8, tp, -436
                  slti         gp, a3, 1372
                  srai         s0, a2, 0
                  auipc        sp, 702615
                  xori         a1, t4, -148
                  li           ra, 0x127d149f #start riscv_int_numeric_corner_stream_7
                  li           s1, 0xffffffff
                  li           a0, 0xffffffff
                  li           s6, 0x80000000
                  li           a5, 0xd05a2d49
                  li           tp, 0x0
                  li           sp, 0xffffffff
                  li           s11, 0x80000000
                  li           a2, 0x52c26eca
                  li           t2, 0xffffffff
                  addi         s1, sp, -869
                  auipc        s6, 638481
                  lui          a2, 160240
                  nop
                  add          s6, a2, s6
                  auipc        tp, 250448
                  add          t2, a0, tp
                  auipc        ra, 842476
                  add          tp, a0, s11
                  auipc        ra, 336327
                  addi         a5, s6, 1754
                  sub          s1, a5, s1
                  addi         a2, ra, 1650
                  nop
                  sub          t2, tp, sp
                  add          s6, a0, s1
                  lui          s1, 238222
                  nop
                  add          s1, a5, s1
                  nop
                  lui          sp, 126486
                  auipc        sp, 754017
                  lui          tp, 974808
                  add          t2, s11, tp #end riscv_int_numeric_corner_stream_7
                  sra          t1, a6, gp
                  and          t3, s4, ra
                  sra          t1, s10, a2
                  xori         a5, a4, 61
                  slt          s4, s8, a5
                  sub          s5, a7, s9
                  slti         s10, a5, -2034
                  slt          gp, t4, t3
                  and          s6, zero, s3
                  and          zero, a1, s8
                  auipc        s5, 544104
                  nop
                  addi         s9, a0, 1673
                  ori          ra, s8, 873
                  slli         t1, s9, 12
                  slli         t4, t6, 17
                  sltiu        tp, s5, -392
                  lui          s1, 676257
                  srl          s10, zero, t3
                  xori         a4, s7, -1129
                  xori         s0, s7, 532
                  addi         gp, zero, 764
                  sub          s9, t0, zero
                  sltu         s1, s10, s6
                  sltu         sp, a2, a5
                  ori          sp, a7, 1151
                  sub          s7, t4, s5
                  add          a1, t1, s9
                  and          a4, t1, zero
                  slti         a5, s5, -1938
                  andi         t3, s5, -1116
                  or           s2, t6, t5
                  ori          s7, sp, 226
                  add          s0, ra, t4
                  auipc        s2, 671029
                  slt          s0, s5, a0
                  sra          t0, t5, gp
                  sltu         tp, t3, gp
                  srai         sp, s4, 9
                  slti         s8, t3, 15
                  add          t1, a4, s10
                  or           a5, s0, s6
                  sra          t3, t3, s8
                  addi         s7, s7, 804
                  slt          s8, s9, a1
                  auipc        s3, 137903
                  sll          a2, a2, t1
                  srli         s8, zero, 18
                  lui          ra, 9471
                  slti         a3, t4, 120
                  srl          a1, s0, s5
                  xor          gp, s7, t1
                  sub          gp, a5, t6
                  slli         t3, s7, 6
                  auipc        sp, 998532
                  addi         s3, ra, -35
                  xori         sp, a7, -1495
                  ori          a2, a2, 273
                  ori          gp, s6, 2026
                  sll          ra, s10, a2
                  srli         s6, s2, 11
                  sltiu        s3, s11, 787
                  srai         zero, t1, 12
                  andi         s1, s2, -428
                  or           a0, t1, s6
                  srl          a1, t5, s2
                  srai         t2, t5, 12
                  sltu         s10, t5, a1
                  srl          ra, tp, s7
                  ori          s0, a4, 178
                  srli         sp, s2, 13
                  slli         a4, s3, 19
                  ori          tp, s8, 866
                  li           s3, 0x9c64341f #start riscv_int_numeric_corner_stream_1
                  li           a4, 0xffffffff
                  li           s7, 0xefe3e653
                  li           s10, 0xffffffff
                  li           t0, 0x0
                  li           a1, 0x59e5a19d
                  li           a2, 0xdecc53ac
                  li           t4, 0x0
                  li           a3, 0xffffffff
                  li           a6, 0x80000000
                  add          s7, a4, t0
                  nop
                  auipc        a4, 373525
                  nop
                  lui          a4, 606041
                  add          a4, t0, a6
                  auipc        s7, 162171
                  sub          a4, a3, a6
                  lui          a2, 191305
                  nop
                  add          a6, s3, a6
                  auipc        s7, 935471
                  nop
                  nop
                  add          a2, t0, a1
                  add          t4, s7, s3
                  nop
                  lui          t0, 816105
                  addi         s7, a1, 1439
                  nop
                  auipc        t4, 132078
                  auipc        s7, 312221
                  addi         t0, a1, 683
                  sub          a6, t4, a2 #end riscv_int_numeric_corner_stream_1
                  nop
                  or           s1, a4, s8
                  xori         a2, a6, -450
                  sll          a2, t6, t6
                  sub          a1, a6, s6
                  or           sp, t0, a1
                  sll          t0, a6, s1
                  slli         t4, t3, 13
                  sltiu        a1, gp, 770
                  add          a0, a3, a4
                  auipc        s10, 251554
                  sll          t4, sp, s9
                  slti         gp, a6, 1558
                  srl          s5, s7, t1
                  and          a1, s11, s7
                  lui          s3, 119146
                  xori         s4, a4, -1773
                  sub          s7, s2, zero
                  nop
                  sra          s11, sp, a2
                  sra          t4, t3, s0
                  sra          a3, a3, t6
                  srai         t3, a2, 11
                  sub          s0, s3, s11
                  xor          a0, s8, t4
                  lui          a3, 156438
                  auipc        s3, 47067
                  or           ra, s2, t4
                  xor          ra, s3, sp
                  sll          t0, a3, s0
                  ori          s0, sp, 1599
                  lui          s4, 8600
                  srl          a3, s7, ra
                  slti         tp, s2, 631
                  lui          s2, 863372
                  and          a1, a7, zero
                  add          s7, sp, s2
                  srl          gp, t2, t0
                  slti         s3, t3, 897
                  srl          a2, t5, s6
                  sra          s9, s3, a4
                  sltu         s2, zero, s5
                  or           s10, s0, t3
                  nop
                  sltiu        zero, t0, -1839
                  sltiu        a1, t5, -763
                  add          t3, a1, a4
                  srai         a5, t4, 31
                  sll          t2, t0, a4
                  addi         s2, a4, -250
                  xori         s11, s4, 882
                  sra          s11, t1, s9
                  sll          t3, gp, s0
                  ori          a6, zero, -448
                  sltiu        tp, s10, 192
                  auipc        a3, 421274
                  ori          t2, s10, -1298
                  addi         a4, t4, 1302
                  nop
                  lui          s7, 396948
                  srai         t1, ra, 22
                  add          s3, t1, t1
                  sub          s9, s7, ra
                  srli         s8, a0, 13
                  auipc        s4, 794206
                  slli         sp, s4, 28
                  srl          t2, a3, s0
                  add          a2, s11, s4
                  andi         s10, a7, 1845
                  sll          zero, t0, s10
                  sltu         zero, sp, s6
                  sltu         a4, t2, s3
                  andi         s10, s5, 1909
                  sub          s1, s4, s7
                  slli         s9, a3, 2
                  sltiu        s11, s5, -2025
                  add          sp, gp, s8
                  sltu         s8, a3, s8
                  xor          s7, t5, s2
                  sub          s0, t1, s8
                  srl          s9, s9, t5
                  sra          t1, s7, t2
                  lui          s11, 928116
                  ori          s5, t4, 1042
                  xori         a4, s8, 1438
                  slli         a1, t2, 30
                  sra          s3, s8, s0
                  auipc        s1, 964307
                  slt          a5, t3, sp
                  sltiu        t1, s2, 1516
                  sub          a6, a6, a4
                  nop
                  sltu         a5, s1, s3
                  or           tp, a7, sp
                  andi         t2, s10, 899
                  andi         s2, s7, 1846
                  and          s9, a2, s1
                  slti         t2, s4, 649
                  ori          s5, s9, -628
                  lui          a3, 399995
                  slli         sp, t2, 5
                  ori          a6, a0, 141
                  xor          tp, s3, a1
                  sltu         ra, s8, a6
                  or           ra, gp, t2
                  srl          s2, s9, a7
                  nop
                  slli         s1, a1, 11
                  auipc        ra, 649488
                  lui          a3, 425481
                  xori         a6, t5, 474
                  xori         s4, s2, 429
                  slli         s11, a2, 30
                  srl          t4, s10, t6
                  andi         s2, a5, 1201
                  and          zero, sp, a7
                  slti         s9, t5, -1460
                  srli         ra, s4, 6
                  add          a6, s8, sp
                  srai         a4, s9, 4
                  xori         zero, s3, -617
                  lui          s2, 89371
                  sll          tp, s4, s1
                  addi         s10, t6, -1882
                  nop
                  srl          tp, s11, t6
                  xori         t0, ra, -1086
                  slti         a0, a7, 163
                  nop
                  sub          s10, a4, t1
                  ori          a4, a5, -1314
                  sll          zero, t0, ra
                  auipc        s10, 471313
                  sll          s4, t2, s8
                  sltiu        a3, s6, -933
                  and          s1, a3, s3
                  sll          s6, s1, a5
                  xori         ra, s1, -281
                  slli         a6, s1, 14
                  nop
                  auipc        a4, 369988
                  andi         t3, a4, 553
                  sll          s1, s6, s2
                  xor          s6, s7, t3
                  addi         a5, t2, 1663
                  srli         a1, s11, 30
                  or           t2, a1, s0
                  addi         t2, s10, 66
                  ori          s2, a3, -1676
                  srl          s2, s5, s8
                  add          a5, t4, t4
                  andi         a4, s0, 112
                  ori          a1, ra, -781
                  and          s8, t3, s8
                  sll          s2, zero, s8
                  addi         s5, s1, -393
                  slti         a2, t4, 817
                  andi         s4, tp, -1544
                  srai         s7, s5, 8
                  addi         s11, s3, -395
                  slli         s10, a3, 3
                  add          a0, a1, t2
                  addi         tp, s9, 306
                  and          t0, a3, s1
                  add          a5, s7, a2
                  sll          a5, s10, s1
                  or           a1, t6, s5
                  auipc        a0, 232479
                  slt          a1, s10, s3
                  slli         t4, s9, 4
                  sll          a6, s11, s6
                  sll          s3, sp, t3
                  or           t3, a5, a4
                  andi         t4, a3, -654
                  slli         s9, s5, 22
                  nop
                  sll          a1, a3, s10
                  slti         s4, zero, 662
                  nop
                  add          s3, a6, s7
                  or           a1, gp, t5
                  srli         s3, s9, 24
                  slli         zero, t0, 12
                  slli         a4, s8, 23
                  srl          t0, t0, a5
                  srli         a3, s8, 24
                  ori          s8, s11, -1515
                  sra          sp, s4, s11
                  lui          s2, 584218
                  and          a3, t4, t6
                  add          s11, a2, s10
                  srai         tp, s7, 22
                  xor          a2, zero, t4
                  srl          a6, s2, a0
                  slti         t4, t3, 756
                  slli         a1, t3, 12
                  add          sp, t3, s6
                  sra          t3, a1, zero
                  add          s4, s4, ra
                  ori          a2, t1, -1582
                  srai         s8, a1, 31
                  slt          s1, a5, zero
                  sll          zero, t1, a4
                  sltu         a0, gp, ra
                  or           t2, t4, zero
                  addi         t4, s2, 465
                  ori          s2, s6, 1590
                  addi         s7, s10, -1781
                  or           s10, s3, t3
                  srl          ra, s8, t4
                  sltiu        s11, t3, 1663
                  sltu         ra, t0, s1
                  lui          t4, 323655
                  ori          s3, gp, -1293
                  sub          tp, s2, s11
                  xor          s2, s8, s0
                  srli         a2, s4, 15
                  sub          s3, a4, sp
                  add          s11, a2, t5
                  or           a5, t3, a4
                  slti         tp, a2, 1887
                  addi         t1, t4, 965
                  srai         t4, tp, 2
                  ori          a0, a3, -460
                  lui          a6, 805004
                  lui          s8, 174614
                  auipc        s9, 216482
                  sra          t1, a0, a1
                  lui          a1, 155456
                  add          gp, a0, t4
                  srli         a2, s1, 8
                  slli         s8, s8, 24
                  sra          a4, ra, gp
                  nop
                  sra          a5, s0, a2
                  sll          s0, s0, t3
                  auipc        a6, 63524
                  slti         s3, t4, -281
                  add          s5, t0, s10
                  or           s0, t3, s7
                  auipc        t0, 956333
                  srli         a6, sp, 4
                  auipc        ra, 485923
                  nop
                  auipc        ra, 983265
                  ori          a3, a1, 996
                  add          t4, s3, s4
                  or           s5, a0, a3
                  srli         s8, t6, 18
                  srai         sp, a3, 27
                  andi         s2, a1, 90
                  and          ra, s5, t0
                  srli         s1, gp, 26
                  sra          t4, a4, t2
                  sub          ra, s2, s0
                  srl          s1, t6, s3
                  slli         s10, t5, 28
                  auipc        tp, 55450
                  ori          s1, a3, 324
                  ori          s8, s0, -1883
                  slti         t0, a6, 1041
                  srl          zero, s7, a5
                  andi         t3, t5, 1106
                  slti         ra, a0, -1842
                  sub          a1, t1, s5
                  auipc        s8, 14622
                  srli         sp, a6, 20
                  srl          t3, s5, s3
                  and          s6, t5, t2
                  sra          t0, t3, gp
                  lui          a6, 442622
                  srl          s9, t5, t4
                  srai         s11, s11, 7
                  auipc        t1, 343372
                  xor          t3, s8, s2
                  add          a3, s0, s10
                  or           t2, s7, t3
                  xori         s0, a4, -294
                  addi         s1, t2, -1469
                  srli         a1, t2, 27
                  or           a3, s1, a6
                  xori         s5, s2, -1823
                  andi         s6, s2, 1208
                  slt          t2, zero, gp
                  slti         s6, s11, -1449
                  sltu         s0, tp, a0
                  sltiu        s1, a2, -219
                  sltiu        s3, a6, -724
                  slli         a4, a6, 19
                  nop
                  sltiu        s4, a2, 35
                  slt          s3, s1, zero
                  slti         a0, a4, -1327
                  sub          s5, t3, s2
                  and          a1, ra, t3
                  sub          t1, s2, t5
                  sltiu        t1, a2, 789
                  sub          zero, s7, t3
                  xor          s4, a7, s5
                  or           t2, s11, t6
                  lui          a3, 291169
                  and          a6, s4, a3
                  lui          t4, 558522
                  sub          t1, gp, s11
                  xor          s9, s6, s6
                  srai         s2, s2, 11
                  sra          sp, a4, s1
                  slt          s11, s7, t5
                  sll          gp, s7, a4
                  sltu         t0, t2, a3
                  slti         t3, a7, 132
                  slti         zero, t0, 1162
                  or           s5, t1, t6
                  add          a6, s3, tp
                  lui          a5, 602359
                  sra          a4, t4, t2
                  srl          s1, s7, a4
                  srli         ra, s2, 20
                  srl          s1, s9, s2
                  lui          s6, 231611
                  xori         gp, s9, 1378
                  srl          a6, zero, s8
                  srli         s0, gp, 29
                  slt          a3, s5, a2
                  sub          t4, a0, a4
                  sltu         ra, a0, a7
                  srai         sp, s8, 3
                  xori         a3, a7, -1599
                  addi         s4, s7, 1837
                  addi         t2, t1, -910
                  sra          s1, zero, s9
                  or           a3, ra, ra
                  sltiu        s3, a1, -1665
                  sub          s0, a7, a0
                  slt          s4, s6, s1
                  andi         a6, gp, 1756
                  sltiu        t2, sp, -1161
                  slli         t2, s7, 1
                  sra          zero, a4, tp
                  xori         s9, t0, -1188
                  slti         t3, ra, 104
                  or           t1, s5, t0
                  ori          s3, t1, -2009
                  xori         t0, s10, 339
                  xor          s0, t3, t4
                  srai         s6, s9, 13
                  nop
                  sub          s6, a7, s0
                  slti         a1, zero, 960
                  srli         s0, s3, 9
                  srli         s1, t0, 5
                  slti         s7, zero, 1804
                  srai         a2, s8, 21
                  srai         s5, a4, 17
                  slti         sp, s6, 1048
                  and          s1, t5, t4
                  and          s3, a3, ra
                  andi         s8, sp, 214
                  sltiu        s3, a1, -733
                  sltu         sp, a0, t3
                  srl          s0, s8, t4
                  sltu         s6, a0, s1
                  ori          s6, a6, 902
                  srli         a6, a2, 3
                  sra          a3, a3, s1
                  andi         t1, sp, -637
                  lui          s5, 808699
                  sltu         ra, a0, a3
                  and          s9, a7, t2
                  slti         s7, t1, -769
                  or           s7, a2, a4
                  addi         s7, s3, -1734
                  add          t3, s9, t2
                  and          t4, tp, t1
                  sltu         t3, t4, s6
                  sll          a3, s0, t4
                  or           ra, sp, a1
                  xori         a4, s9, 1000
                  sltu         s10, s9, zero
                  srai         sp, t1, 25
                  sltiu        s4, t1, 1879
                  lui          s5, 545597
                  nop
                  slli         s3, t2, 2
                  slt          s11, gp, gp
                  slti         s9, a7, -129
                  xori         ra, gp, -706
                  sltiu        s7, a3, 887
                  sltiu        s5, a0, 1070
                  sub          a0, tp, s8
                  ori          t4, s5, -861
                  nop
                  sra          a6, s6, t0
                  xor          s9, a4, t3
                  sltu         t1, s9, t6
                  nop
                  addi         s7, a6, 1761
                  auipc        s3, 310472
                  xori         s0, s8, 337
                  auipc        s3, 16966
                  xor          a2, s10, s7
                  andi         zero, zero, -1707
                  andi         s7, t1, -1633
                  sltiu        t1, a7, 118
                  nop
                  sra          s1, sp, a6
                  or           tp, t2, t2
                  sltu         tp, s1, s6
                  srli         tp, a0, 16
                  slli         a0, a4, 0
                  andi         a5, ra, 73
                  sltiu        s11, s9, 1579
                  addi         a6, s4, -1914
                  srli         zero, a5, 18
                  xor          a3, a4, a0
                  add          a0, a6, tp
                  sll          a4, t3, s6
                  and          s5, s0, s2
                  sll          a1, s5, s5
                  sll          s2, s8, a1
                  ori          s3, s10, 337
                  xor          s6, s6, s3
                  addi         s10, t0, 479
                  add          s8, s3, a7
                  andi         tp, a6, 811
                  slli         zero, a0, 3
                  srli         zero, a1, 17
                  sub          a4, t1, s5
                  auipc        t4, 781799
                  sltiu        s4, t5, 1581
                  sltu         s8, s5, s0
                  or           s0, s6, s6
                  sltiu        sp, t3, 650
                  ori          a2, a7, -1755
                  lui          t3, 815218
                  sra          tp, s7, s0
                  ori          s7, t0, 1370
                  srli         s11, s1, 18
                  xori         t4, s8, -1260
                  slli         a6, s5, 27
                  srai         t2, tp, 22
                  xori         s9, s3, 995
                  srl          t3, t4, s10
                  andi         s3, s5, 753
                  srai         a5, t3, 18
                  add          a3, s3, s3
                  slti         a4, s5, -1990
                  and          s0, t2, s8
                  nop
                  andi         t3, s2, -133
                  slli         s4, sp, 12
                  xor          t3, a7, s1
                  sll          s10, t2, s6
                  sltiu        s4, zero, -618
                  slti         s4, s7, -826
                  srli         sp, a3, 9
                  add          a5, a4, s6
                  slti         zero, a3, 2005
                  sltu         sp, t0, s11
                  srli         s6, a7, 19
                  slti         t4, t5, 915
                  sub          t2, s0, sp
                  addi         zero, a0, -1354
                  srl          ra, s2, t1
                  add          a1, s9, a1
                  addi         s0, t5, 149
                  srl          a2, t2, sp
                  slt          s4, a4, a4
                  addi         t0, a7, -1030
                  xori         s6, a0, -326
                  sltu         t2, t4, s10
                  nop
                  xori         t0, a5, -1948
                  ori          s1, s8, -657
                  andi         s10, s8, -371
                  ori          s10, t4, 414
                  or           a1, s9, zero
                  sra          t2, s1, s3
                  nop
                  sra          s9, a4, a4
                  slti         sp, s1, -785
                  xori         t4, t1, 1169
                  ori          s0, ra, 780
                  sll          t1, s10, t5
                  srli         s6, tp, 3
                  lui          s3, 258207
                  slt          t1, a5, a4
                  ori          s5, t0, -1572
                  add          a6, t0, t5
                  lui          a4, 184032
                  auipc        a4, 701895
                  srli         gp, a3, 19
                  or           s7, s9, s10
                  sub          a0, s10, s6
                  slti         t2, s8, 1146
                  slt          s7, s0, tp
                  auipc        s3, 395742
                  sra          s2, s2, s2
                  auipc        a5, 650641
                  srai         s7, t0, 26
                  auipc        zero, 306455
                  sub          s6, t2, s3
                  slli         a5, a7, 11
                  slt          sp, gp, t4
                  srli         gp, gp, 6
                  sltiu        t2, t5, -1260
                  auipc        zero, 1958
                  sltiu        s4, s9, 606
                  nop
                  sub          s4, a1, s8
                  andi         s11, a6, 1222
                  slli         s11, a4, 19
                  srl          s11, t5, s6
                  slti         a1, t2, 469
                  ori          tp, ra, 1568
                  lui          a0, 578294
                  and          s7, a7, s6
                  addi         a0, s6, 1929
                  srl          a0, s10, a5
                  sltu         s1, s6, s0
                  add          gp, a6, zero
                  sra          s6, s11, t6
                  and          s1, t4, a0
                  addi         a3, s3, 798
                  nop
                  srl          t1, a0, s10
                  lui          ra, 820690
                  nop
                  auipc        a1, 251550
                  andi         t4, t1, 1850
                  sub          s5, a7, s6
                  srl          s11, a3, s11
                  ori          s1, t4, -1371
                  nop
                  ori          zero, sp, 1875
                  sra          s10, t5, s7
                  xori         a4, t5, -83
                  ori          s4, s10, -72
                  srli         a6, s11, 3
                  add          s11, t6, a2
                  srl          a6, a4, zero
                  srl          a2, ra, s1
                  sltu         a5, a7, a2
                  srl          gp, s4, gp
                  nop
                  auipc        a1, 994292
                  ori          tp, s11, 1132
                  lui          gp, 978176
                  srai         s3, a7, 3
                  sll          tp, t3, a4
                  slt          t4, t2, t6
                  ori          t4, s4, -2033
                  xor          sp, a7, s4
                  sltu         gp, t1, t3
                  srli         s10, s0, 1
                  nop
                  xor          a1, s3, s8
                  sra          tp, ra, s5
                  or           gp, s10, a6
                  ori          gp, sp, -1908
                  sltiu        t4, a5, -130
                  sltu         t1, s0, a7
                  lui          s10, 197437
                  nop
                  sra          a4, t3, s2
                  slti         t0, a6, 1024
                  sub          a2, s5, a4
                  add          t4, s9, s2
                  xor          s0, t0, s9
                  xori         s4, a7, 701
                  sltiu        tp, a4, -1651
                  add          t2, a7, gp
                  nop
                  and          t0, t3, zero
                  srli         a1, s5, 8
                  sra          s11, s10, s10
                  srli         t0, a0, 17
                  lui          t4, 721661
                  and          s0, s2, s7
                  sub          s6, s0, s1
                  and          a3, t4, a2
                  andi         s8, a0, 18
                  ori          t2, a7, -325
                  sra          s2, t4, gp
                  srl          s0, s6, s3
                  srl          a0, s1, a3
                  srl          s3, a1, s0
                  slli         a1, a6, 28
                  slt          sp, ra, a6
                  andi         a5, s7, 2034
                  sltu         t3, s1, s9
                  sra          zero, a4, a1
                  sll          sp, zero, t2
                  slt          a2, t1, zero
                  ori          a4, s1, -1679
                  sltu         a1, ra, a4
                  srl          t0, a6, a6
                  auipc        zero, 328979
                  slti         s6, s7, 95
                  andi         s4, s8, -1904
                  srli         s0, gp, 15
                  nop
                  srl          s10, t5, t5
                  slt          s5, s10, a5
                  sltu         s2, a4, t3
                  slti         a6, a7, -1523
                  lui          s2, 217348
                  slli         s9, a4, 1
                  ori          s6, t6, -380
                  auipc        s10, 161027
                  addi         a0, a7, 1184
                  lui          s2, 216916
                  sll          ra, a4, a1
                  srli         s1, s11, 15
                  sra          zero, t3, s1
                  lui          a4, 878867
                  auipc        a1, 830059
                  sll          s5, s1, t3
                  ori          t4, a7, 1688
                  slli         s5, t6, 28
                  nop
                  srai         s7, t0, 10
                  sra          s8, t6, s1
                  or           s6, s1, t1
                  sll          s10, tp, s7
                  srai         gp, s6, 6
                  sll          a0, s7, zero
                  sll          s0, ra, a1
                  sltu         s5, s3, a6
                  sub          s3, s0, t3
                  andi         s2, a3, -343
                  and          t2, t0, tp
                  srl          s11, ra, t1
                  lui          s2, 987630
                  andi         a2, a5, 110
                  sll          t4, a0, t5
                  and          gp, a3, t3
                  srli         s0, sp, 8
                  or           a6, s1, a0
                  sltiu        s0, s11, 33
                  sll          a2, a7, t1
                  and          s4, t5, s1
                  nop
                  nop
                  addi         s11, a6, -1691
                  ori          t2, s11, 804
                  srl          s3, sp, s4
                  srai         s7, s7, 15
                  sub          zero, gp, t0
                  sra          t3, t4, s3
                  sub          a0, a2, s1
                  sltiu        s2, s6, -470
                  sll          t0, t2, a7
                  srl          s2, s5, t3
                  auipc        a3, 691396
                  add          t3, t2, a5
                  nop
                  slti         gp, zero, -1949
                  sltu         s9, tp, t4
                  sltiu        a2, s10, 306
                  xor          zero, a1, t4
                  xor          t4, gp, s2
                  ori          ra, s4, 663
                  sltiu        gp, a2, -1175
                  srai         t0, s1, 22
                  sub          s6, s6, s9
                  lui          a5, 221831
                  nop
                  and          t2, s4, a0
                  lui          t3, 131718
                  sltu         s0, tp, a1
                  sltiu        t4, a7, -432
                  ori          s2, t1, 1858
                  auipc        s9, 464847
                  auipc        s2, 827618
                  nop
                  or           gp, s4, t4
                  slli         tp, s4, 13
                  add          s9, a3, t1
                  auipc        ra, 95355
                  sltiu        a6, t4, 1086
                  lui          t3, 914233
                  srai         t3, s1, 15
                  slli         a2, t5, 10
                  slt          s3, a2, a6
                  srl          sp, sp, t3
                  slli         t3, s5, 30
                  sra          a6, ra, a6
                  sra          sp, s1, t2
                  sll          a6, s4, t3
                  sltiu        s1, t5, 1441
                  sra          a5, s5, a5
                  or           tp, t4, tp
                  addi         t3, s2, 1103
                  sra          t0, a2, a7
                  or           s11, sp, a3
                  sltiu        tp, a6, -331
                  sltu         s5, a0, a6
                  sltu         a4, t0, t1
                  slli         gp, t1, 6
                  sra          s8, a0, a1
                  srli         ra, sp, 16
                  auipc        a6, 250808
                  slli         t1, a2, 3
                  add          s8, s6, zero
                  auipc        a3, 62214
                  slli         a5, sp, 9
                  sub          s9, t4, a2
                  andi         t0, s9, -376
                  slli         t3, t3, 15
                  lui          s3, 36968
                  srli         t0, a1, 1
                  xor          s2, s11, s0
                  sra          sp, s2, zero
                  xor          s2, s2, a4
                  sub          a1, a7, s10
                  slt          t4, s4, a4
                  sll          t4, t1, s7
                  xori         gp, a4, 639
                  srli         sp, gp, 7
                  addi         s10, a4, 523
                  xor          s4, s7, s6
                  ori          t4, a2, 606
                  sltu         gp, s5, s2
                  srl          t3, a5, a7
                  and          t4, t0, a7
                  add          s3, a6, s5
                  srl          gp, t3, s2
                  slti         ra, s3, -1204
                  slt          s1, s11, sp
                  slli         t2, s1, 7
                  srl          t2, a3, t2
                  srai         a1, s7, 0
                  ori          t4, s5, 192
                  xori         s1, t4, 1762
                  ori          s1, s0, -1250
                  sll          t3, a1, a1
                  sltiu        a3, t5, 2029
                  sub          t0, s7, t3
                  sltiu        t0, s0, -649
                  sll          a6, t3, a1
                  srli         a5, s8, 31
                  sltu         s2, a5, a0
                  srl          sp, s10, a1
                  add          a1, s10, tp
                  srai         s4, a1, 31
                  sub          a0, t3, tp
                  nop
                  auipc        s4, 320735
                  xori         s6, gp, -424
                  and          zero, s10, ra
                  sub          s3, a5, s10
                  sra          s0, s11, s1
                  slti         a4, a1, -1299
                  andi         s0, s6, 1524
                  xor          gp, s3, gp
                  slli         t0, t4, 15
                  auipc        a2, 188913
                  srl          a2, a7, t3
                  srl          s2, s1, s10
                  andi         s7, a3, 135
                  xori         t2, s5, -1603
                  srli         a6, a2, 11
                  lui          t3, 64871
                  xor          s6, s10, s9
                  andi         s1, s1, -695
                  sll          gp, t5, t6
                  sra          a3, s6, a1
                  sll          s5, a0, s4
                  add          s8, a6, s6
                  srai         ra, s7, 17
                  andi         s3, gp, 236
                  andi         s11, t3, 519
                  auipc        a1, 780617
                  srl          t3, a2, gp
                  ori          a2, a2, 331
                  srl          ra, zero, s9
                  andi         s2, a3, 1164
                  sltu         a3, a2, s8
                  ori          t2, s10, 835
                  auipc        tp, 1040921
                  sra          tp, s4, s1
                  srli         a4, s3, 11
                  or           a1, a7, a2
                  xor          a6, s9, s4
                  srl          ra, a1, t1
                  slli         sp, s0, 13
                  slti         s9, t6, 1000
                  addi         s0, sp, -1651
                  srli         s4, a0, 18
                  addi         gp, gp, -490
                  add          a3, s0, ra
                  sub          s7, a1, tp
                  srl          sp, s2, a0
                  auipc        s9, 416256
                  lui          t1, 685299
                  slli         s1, t6, 20
                  or           s6, s1, s8
                  and          t1, s10, tp
                  sltu         sp, a7, s4
                  sltiu        s4, s2, -1242
                  add          s4, s11, s1
                  addi         s3, t0, -574
                  slt          s2, sp, t1
                  slt          s11, a7, s9
                  slti         t4, t2, 519
                  or           t4, t6, gp
                  or           sp, zero, a4
                  or           t2, s3, s7
                  srl          s1, a5, ra
                  ori          s11, a5, -438
                  srl          a6, a3, s10
                  andi         s5, s11, 756
                  andi         s7, s10, -1523
                  srl          a3, s11, ra
                  srl          s6, s1, s7
                  sll          a2, s2, ra
                  sll          t1, s8, ra
                  auipc        t3, 293239
                  sll          s8, a0, gp
                  slti         s2, a2, 526
                  sra          a1, s9, zero
                  andi         gp, t4, -453
                  lui          t4, 600252
                  or           a2, s9, a5
                  sub          gp, a0, s8
                  sll          s8, t6, s8
                  slli         a4, s3, 28
                  xor          tp, t0, t5
                  addi         a4, sp, -1744
                  nop
                  srli         s0, s8, 20
                  add          t4, t3, a0
                  sltu         s7, sp, t3
                  xor          s0, s1, s3
                  slli         s11, t2, 31
                  sltu         a4, s1, gp
                  slli         s6, tp, 2
                  xor          gp, s7, t1
                  xori         zero, t4, 2024
                  addi         s0, a5, -1803
                  lui          a0, 394104
                  sll          s1, a2, t4
                  or           s6, tp, s10
                  xori         sp, t2, 1136
                  add          s3, t2, t2
                  srli         s8, s10, 3
                  xor          a3, a5, s9
                  srli         t3, s11, 15
                  nop
                  addi         s4, s0, 705
                  andi         t0, a3, 1888
                  sltu         s3, s7, a4
                  lui          a3, 844257
                  sll          a4, a2, a7
                  xor          s0, s9, a2
                  xor          t3, a6, a2
                  sltiu        s2, a5, 1445
                  nop
                  sub          s3, s7, a3
                  sub          zero, s2, s8
                  sltiu        tp, t1, -199
                  and          s10, t5, zero
                  sltu         gp, tp, t5
                  sll          a3, zero, s0
                  sra          tp, t5, a3
                  and          gp, a0, t4
                  nop
                  slt          s2, a1, s1
                  sub          s10, ra, s0
                  sub          s4, t6, t6
                  ori          s1, s0, 95
                  srli         s0, t0, 12
                  slli         gp, s7, 28
                  sltu         t3, a2, t2
                  slt          tp, s8, s11
                  xor          a5, zero, s4
                  sll          t1, a2, zero
                  ori          s4, s7, -202
                  xori         s10, s8, -906
                  andi         s5, s0, 1043
                  add          s1, t5, t3
                  slt          s4, s8, zero
                  or           a0, s2, t6
                  sub          a2, a5, a7
                  andi         sp, t5, -994
                  slti         a3, t0, 1139
                  slli         t2, s7, 27
                  srai         s1, s0, 18
                  sltiu        zero, s11, 703
                  sub          a1, zero, sp
                  or           sp, s2, sp
                  addi         s9, s9, -1795
                  nop
                  andi         a2, s3, -838
                  sra          a3, t3, a0
                  add          s2, a5, s6
                  sra          t0, gp, s11
                  ori          s7, s7, 667
                  lui          s6, 1001831
                  sltiu        s10, t6, -635
                  andi         s4, a4, -1381
                  and          s2, s2, a1
                  or           t4, s5, s1
                  sltiu        t3, t1, -1204
                  slti         tp, a2, 738
                  slt          a0, s1, s1
                  srl          a2, a6, s9
                  srai         t3, s5, 28
                  slti         a4, s2, 566
                  slt          a5, s5, s6
                  srl          s1, a7, a6
                  slli         tp, zero, 29
                  addi         a1, a2, 72
                  sub          s11, s3, t4
                  xori         a4, a4, -1152
                  slt          s0, ra, s4
                  lui          a2, 571899
                  slli         s0, sp, 15
                  srai         a4, t6, 18
                  andi         s6, t1, 22
                  slti         s5, t5, -165
                  slti         t1, t6, -737
                  slti         s2, sp, 1196
                  sltiu        t2, a0, 883
                  srl          a3, a3, a3
                  sub          s10, t6, a7
                  xor          ra, sp, a7
                  auipc        a6, 484002
                  lui          t2, 412550
                  srai         a4, gp, 1
                  sub          a5, a4, a0
                  and          t0, tp, t3
                  sra          a1, a3, gp
                  and          a5, a4, s11
                  xor          t2, a6, t1
                  srai         s7, zero, 28
                  srai         gp, s9, 18
                  sub          s9, a2, a6
                  andi         t4, ra, -574
                  or           a2, t6, t6
                  sltiu        a5, t2, 1154
                  nop
                  slli         zero, t2, 30
                  slt          a0, a4, t2
                  slt          a4, s10, t2
                  xor          s8, a3, a1
                  andi         s0, a6, 1216
                  xori         s4, s9, -1741
                  ori          s2, s4, 70
                  srl          a0, a3, s3
                  srl          gp, gp, gp
                  slt          t3, t1, gp
                  sra          ra, t5, t2
                  auipc        a6, 831472
                  addi         s2, a0, 1272
                  sltu         tp, s9, a7
                  sltu         t3, t3, sp
                  slti         t4, s10, -315
                  xori         s4, t2, -131
                  auipc        s5, 445551
                  srl          t0, s4, zero
                  slt          t0, s7, s6
                  srl          gp, s2, t4
                  addi         s0, a7, 1509
                  lui          s1, 732320
                  ori          t2, t4, -1924
                  sltiu        s10, s5, 75
                  auipc        s10, 332256
                  sltu         s0, s8, a5
                  srli         s3, s9, 13
                  xor          a2, s5, a4
                  and          s11, s11, s1
                  sll          s4, zero, a2
                  ori          s9, t4, 1224
                  addi         s1, sp, -324
                  addi         s4, s7, 1312
                  srai         a3, a7, 22
                  slli         ra, a1, 4
                  srai         s3, s5, 5
                  xori         s11, a1, -544
                  andi         a3, s6, -764
                  ori          s1, s7, -1903
                  slti         s7, s5, -1992
                  and          tp, s6, t6
                  slli         s0, zero, 17
                  addi         a0, zero, -1084
                  xori         a5, gp, 261
                  srli         t1, s2, 24
                  sub          a4, s6, t3
                  slt          tp, s1, a1
                  or           a0, t4, a7
                  sub          gp, a7, ra
                  and          t0, a0, s1
                  slt          s1, t4, s9
                  auipc        t1, 449292
                  xori         a2, a1, -107
                  xori         ra, s3, 1069
                  srli         sp, s4, 18
                  li           s11, 0x58ca3556 #start riscv_int_numeric_corner_stream_17
                  li           t1, 0xffffffff
                  li           s5, 0x80000000
                  li           a1, 0x80000000
                  li           t4, 0xffffffff
                  li           s3, 0x0
                  li           t2, 0xf44ed287
                  li           s8, 0x80000000
                  li           a6, 0x1adcd271
                  li           a4, 0x6444dc24
                  addi         s8, t4, -2046
                  nop
                  sub          a1, a1, s3
                  add          a6, t2, s3
                  nop
                  lui          a1, 209326
                  nop
                  sub          t2, a1, a6
                  auipc        s5, 62511
                  addi         s5, t2, 1166
                  addi         t1, t2, -194
                  lui          s3, 70950
                  nop
                  nop
                  nop
                  sub          t4, t4, a6 #end riscv_int_numeric_corner_stream_17
                  sltu         a0, s6, a2
                  nop
                  addi         a0, t3, 715
                  sll          s1, a7, zero
                  sltu         a1, a5, sp
                  sub          s1, t5, s11
                  andi         ra, ra, -594
                  sub          s4, s4, s6
                  slti         t2, t0, -2025
                  srli         s6, s1, 27
                  slli         s8, tp, 0
                  auipc        a4, 429747
                  sra          s9, s6, s8
                  sltiu        s10, zero, -1302
                  or           s11, s10, s2
                  xor          ra, t2, s11
                  lui          s8, 748354
                  sra          a6, t3, a6
                  lui          gp, 615931
                  or           a4, zero, ra
                  sltu         s6, s5, s9
                  sub          t2, s6, t0
                  sll          s8, s4, s5
                  ori          t3, a0, 1214
                  srai         t4, a5, 11
                  sll          s2, s6, s3
                  srli         gp, ra, 13
                  auipc        s6, 645732
                  srl          a1, s10, gp
                  slli         t3, a5, 29
                  slli         a0, ra, 0
                  srli         a3, t2, 3
                  sltu         a1, a3, a7
                  slt          s9, tp, ra
                  sub          s0, a1, gp
                  andi         a2, ra, 1823
                  srli         t1, s9, 28
                  ori          zero, s10, 363
                  srl          s7, s5, zero
                  andi         t4, a1, 1660
                  slli         a2, s2, 21
                  sltu         a6, a7, s3
                  add          s11, a2, s2
                  auipc        s3, 179474
                  xori         s10, t2, 883
                  sub          a2, s2, s8
                  nop
                  slt          s3, gp, s5
                  srai         s2, t0, 31
                  sub          ra, t5, s9
                  addi         s7, a2, -1602
                  ori          s3, s0, 14
                  or           s5, s1, s5
                  srli         zero, s2, 24
                  nop
                  slti         zero, s5, -243
                  slti         a1, s6, -1577
                  srai         a4, s2, 22
                  slli         a6, a7, 29
                  ori          a0, s0, -1693
                  addi         a6, s8, 1795
                  srai         sp, s4, 26
                  srli         t2, s0, 5
                  ori          tp, s8, -1451
                  auipc        s5, 558863
                  srl          a4, s5, a7
                  srl          s4, a4, s7
                  srl          a6, s2, a3
                  xor          s4, s0, s1
                  auipc        s2, 152021
                  slli         a4, a3, 6
                  andi         t3, t3, 289
                  auipc        t1, 128054
                  sra          s0, a7, a6
                  ori          t0, t0, -1255
                  xor          s2, s2, a6
                  auipc        s1, 358030
                  slt          tp, s5, t2
                  srai         a4, t5, 12
                  lui          t0, 738006
                  ori          s6, a5, 2025
                  sra          tp, t0, ra
                  sll          zero, s10, t1
                  addi         a6, t2, 1427
                  add          s0, a0, gp
                  srai         s11, s1, 9
                  sltiu        s0, a6, 863
                  lui          a5, 950748
                  sll          t2, gp, a7
                  sub          s1, sp, gp
                  sltu         sp, a4, ra
                  nop
                  slt          a4, a0, a3
                  sll          s5, t4, tp
                  lui          s8, 833660
                  and          s4, s0, t1
                  la x31, test_done
                  jalr x0, x31, 0
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
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x30, x17, zero
                  csrr x19, 0x300 # MSTATUS
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 31
                  bne x19, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x19, 0x341 # MEPC
                  csrr x19, 0x342 # MCAUSE
                  li x9, 0x3 # BREAKPOINT
                  beq x19, x9, ebreak_handler
                  li x9, 0x8 # ECALL_UMODE
                  beq x19, x9, ecall_handler
                  li x9, 0x9 # ECALL_SMODE
                  beq x19, x9, ecall_handler
                  li x9, 0xb # ECALL_MMODE
                  beq x19, x9, ecall_handler
                  li x9, 0x1
                  beq x19, x9, instr_fault_handler
                  li x9, 0x5
                  beq x19, x9, load_fault_handler
                  li x9, 0x7
                  beq x19, x9, store_fault_handler
                  li x9, 0xc
                  beq x19, x9, pt_fault_handler
                  li x9, 0xd
                  beq x19, x9, pt_fault_handler
                  li x9, 0xf
                  beq x19, x9, pt_fault_handler
                  li x9, 0x2 # ILLEGAL_INSTRUCTION
                  beq x19, x9, illegal_instr_handler
                  csrr x9, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

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
                  la x31, write_tohost
                  jalr x0, x31, 0

instr_fault_handler:
                  add x17, x30, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

load_fault_handler:
                  add x17, x30, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

store_fault_handler:
                  add x17, x30, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

ebreak_handler:   
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x17, x30, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

illegal_instr_handler:
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x17, x30, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x19, 0x300 # MSTATUS;
                  csrr  x19, 0x304 # MIE;
                  csrr  x19, 0x344 # MIP;
                  csrrc x19, 0x344, x19 # MIP;
                  add x17, x30, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
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
