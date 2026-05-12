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
                  li x10, 0x40000100
                  csrw 0x301, x10
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x10, mtvec_handler
                  ori x10, x10, 0
                  csrw 0x305, x10 # MTVEC

mepc_setup:       
                  la x10, init
                  csrw 0x341, x10

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x10, 0x1800
                  csrw 0x300, x10 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x149a988f
                  li x2, 0xb
                  li x3, 0x80000000
                  li x4, 0xc
                  li x5, 0xf2185774
                  li x6, 0x80000000
                  li x7, 0x0
                  li x8, 0xfe5d94ce
                  li x9, 0x3a145941
                  li x10, 0x80000000
                  li x11, 0xffbd2720
                  li x12, 0x98156ab8
                  li x13, 0xf338909b
                  li x14, 0x4
                  li x15, 0x4
                  li x16, 0x0
                  li x17, 0x80000000
                  li x18, 0xc
                  li x19, 0xd3a13f94
                  li x20, 0x80000000
                  li x21, 0xf4f93e5d
                  li x23, 0x556bbec6
                  li x24, 0x2b2b5b06
                  li x25, 0x0
                  li x26, 0x0
                  li x27, 0x80000000
                  li x28, 0x0
                  li x29, 0xf5c28efb
                  li x30, 0xff97661b
                  la x22, user_stack_end
main:             li           s0, 0x665de678 #start riscv_int_numeric_corner_stream_2
                  li           s10, 0x2320ec23
                  li           s3, 0xffffffff
                  li           s8, 0x80000000
                  li           s4, 0x80000000
                  li           s7, 0x0
                  li           ra, 0x0
                  li           t4, 0x80000000
                  li           a2, 0xffffffff
                  li           s5, 0xffffffff
                  auipc        s4, 436311
                  auipc        s5, 918235
                  add          a2, s4, s5
                  add          t4, s8, s10
                  nop
                  lui          s8, 806174
                  nop
                  lui          s7, 417679
                  addi         s7, ra, -372
                  addi         t4, s7, -1832
                  sub          s8, ra, a2
                  lui          s10, 302207
                  addi         s4, s7, -281
                  sub          s3, s8, s7
                  sub          s7, s7, s3
                  nop
                  auipc        s8, 459182
                  nop
                  auipc        s8, 886445
                  nop
                  sub          s4, a2, s3
                  addi         s4, s5, 1700
                  addi         s5, a2, -1588
                  auipc        s10, 613043
                  auipc        t4, 423279
                  nop
                  addi         s5, s8, -1164
                  add          s5, s0, s4
                  sub          s0, s4, s5
                  lui          s8, 329971 #end riscv_int_numeric_corner_stream_2
                  li           a2, 0xa47b08f4 #start riscv_int_numeric_corner_stream_14
                  li           t5, 0x80000000
                  li           t0, 0x0
                  li           a0, 0xffffffff
                  li           sp, 0xffffffff
                  li           s4, 0x73a201b2
                  li           t1, 0xffffffff
                  li           s10, 0xffffffff
                  li           ra, 0x80000000
                  li           a6, 0xb7678c52
                  auipc        sp, 376446
                  sub          a2, a0, s10
                  sub          a0, a2, a2
                  addi         t0, s4, -1135
                  sub          s4, a6, a6
                  auipc        t0, 824371
                  auipc        a6, 735068
                  auipc        ra, 307174
                  add          ra, s4, t0
                  nop
                  add          a0, sp, t0
                  auipc        a6, 832787
                  addi         s4, t5, -425
                  nop
                  addi         t0, t0, -1935
                  sub          t0, a6, t1
                  sub          t5, a2, a6
                  auipc        a0, 385579
                  sub          t0, t1, t1
                  add          a2, t0, a0
                  add          a0, t1, t0
                  lui          a2, 556466
                  add          a6, t0, sp
                  lui          s10, 33442
                  addi         a0, ra, -1611
                  lui          t0, 630854
                  nop
                  lui          t5, 436005
                  nop #end riscv_int_numeric_corner_stream_14
                  li           t0, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           a2, 0x86eea1bb
                  li           t3, 0x80000000
                  li           a1, 0x80000000
                  li           a3, 0x8c7046e6
                  li           t2, 0x4d7d813d
                  li           t5, 0x0
                  li           a5, 0xffffffff
                  li           sp, 0xffffffff
                  li           s3, 0xffffffff
                  auipc        t2, 105958
                  add          t2, t3, t0
                  addi         t3, s3, 537
                  nop
                  lui          t5, 467681
                  add          a3, t0, sp
                  sub          s3, a5, t0
                  addi         s3, a3, -1308
                  nop
                  add          t3, a2, t3
                  lui          a3, 996803
                  nop
                  nop
                  addi         t0, s3, 733
                  lui          a3, 78438
                  auipc        s3, 927138
                  add          t5, t0, t5
                  add          a1, sp, a2
                  lui          t5, 596383
                  lui          a5, 325335
                  add          a3, a2, t5
                  sub          t3, sp, a3
                  sub          s3, sp, a2
                  sub          a3, t0, sp
                  sub          a3, t5, t2
                  addi         s3, t3, -1609
                  nop
                  add          t0, t5, a3
                  add          t5, t2, t2
                  add          t2, s3, a2 #end riscv_int_numeric_corner_stream_18
                  li           s7, 0x0 #start riscv_int_numeric_corner_stream_10
                  li           ra, 0xb55e165d
                  li           t5, 0xffffffff
                  li           a2, 0x80000000
                  li           a4, 0x80000000
                  li           s8, 0xffffffff
                  li           s4, 0x0
                  li           s0, 0x0
                  li           s2, 0x80000000
                  li           gp, 0xffffffff
                  sub          s0, ra, s4
                  add          t5, ra, t5
                  auipc        a4, 731569
                  nop
                  sub          gp, a4, s4
                  auipc        a2, 1001576
                  add          gp, s0, gp
                  addi         ra, a2, 917
                  lui          gp, 101511
                  add          s7, t5, t5
                  auipc        s4, 844867
                  auipc        gp, 466138
                  nop
                  auipc        a4, 835889
                  lui          s2, 514171
                  add          s8, s7, gp
                  sub          s4, s4, s0
                  lui          s2, 786594
                  auipc        s7, 248671
                  auipc        s7, 977073 #end riscv_int_numeric_corner_stream_10
                  li           t2, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           a0, 0x0
                  li           s8, 0xfe606baa
                  li           t0, 0x80000000
                  li           s5, 0x80000000
                  li           s11, 0x746a3ef
                  li           gp, 0xffffffff
                  li           a7, 0xffffffff
                  li           s7, 0xffffffff
                  li           sp, 0x80000000
                  auipc        t0, 648517
                  nop
                  addi         s7, s5, 1813
                  sub          s8, gp, a7
                  nop
                  lui          a0, 536023
                  addi         s5, t2, 902
                  addi         s5, t2, -690
                  sub          s11, sp, s8
                  add          t0, sp, s8
                  sub          gp, a7, t0
                  add          t0, a7, a7
                  nop
                  addi         t2, s5, 258
                  add          s11, a0, a7
                  nop
                  nop
                  lui          a7, 889043
                  addi         t2, a0, 265 #end riscv_int_numeric_corner_stream_12
                  li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           tp, 0x0
                  li           a6, 0x0
                  li           s8, 0xffffffff
                  li           s11, 0xb34754f6
                  li           s4, 0x80000000
                  li           s0, 0x0
                  li           gp, 0x80000000
                  li           a4, 0x5bea268e
                  li           s3, 0x80000000
                  add          a4, s4, a4
                  nop
                  nop
                  addi         s11, s0, 1548
                  lui          a4, 398617
                  auipc        s4, 827698
                  nop
                  lui          s4, 296535
                  add          gp, s8, a4
                  addi         a4, s0, 475
                  addi         s4, ra, -1550
                  lui          s0, 893337
                  auipc        ra, 383220
                  sub          ra, s8, s0
                  add          a4, s8, ra
                  nop
                  auipc        s8, 930845 #end riscv_int_numeric_corner_stream_1
                  li           s4, 0x27bf4c2f #start riscv_int_numeric_corner_stream_9
                  li           t4, 0x0
                  li           a5, 0x9e4c03d9
                  li           t5, 0x178b1db7
                  li           a7, 0x80000000
                  li           a6, 0x80000000
                  li           a0, 0x80000000
                  li           s11, 0x0
                  li           gp, 0xffffffff
                  li           tp, 0x1356786a
                  lui          a0, 815937
                  addi         a6, a5, -574
                  addi         a6, tp, 636
                  sub          s4, gp, a0
                  add          a0, a7, a6
                  add          a5, a6, s11
                  addi         a0, t5, 1346
                  add          a6, gp, a7
                  addi         a6, a5, 1743
                  nop
                  add          a0, s4, a0
                  addi         s4, gp, -558
                  lui          s4, 512143
                  sub          a0, a5, s4
                  lui          tp, 567661
                  lui          s11, 926742
                  nop
                  nop #end riscv_int_numeric_corner_stream_9
                  li           s5, 0xb9e92fef #start riscv_int_numeric_corner_stream_0
                  li           s2, 0xffffffff
                  li           t1, 0x0
                  li           a3, 0xffffffff
                  li           gp, 0xd5dff71
                  li           s0, 0xe192afd8
                  li           a5, 0x80000000
                  li           s4, 0x0
                  li           a6, 0x80000000
                  li           s10, 0xffffffff
                  sub          a3, s5, s5
                  lui          t1, 396958
                  sub          a6, a6, s10
                  addi         s4, s4, -137
                  sub          s2, s0, a6
                  lui          s4, 59576
                  add          gp, a5, s5
                  sub          s5, s10, a5
                  lui          s5, 651683
                  auipc        s10, 840269
                  addi         a6, s0, 480
                  nop
                  nop
                  auipc        s5, 909225
                  add          s0, s10, a6
                  auipc        a3, 609823
                  auipc        a3, 826025
                  nop
                  nop
                  addi         s2, s4, 1528
                  lui          gp, 668300 #end riscv_int_numeric_corner_stream_0
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           t2, 0xffffffff
                  li           s3, 0x80000000
                  li           t1, 0x4b8a283d
                  li           t4, 0x80000000
                  li           a1, 0x0
                  li           a5, 0xf2c16239
                  li           gp, 0x80000000
                  li           a6, 0xffffffff
                  li           s10, 0x0
                  sub          a1, s3, t1
                  auipc        t1, 914015
                  addi         a1, s10, -1984
                  addi         s10, t1, 1975
                  lui          t1, 427019
                  add          gp, t2, s8
                  nop
                  add          s8, t4, t2
                  sub          t4, t4, t1
                  sub          gp, t2, t4
                  nop
                  nop
                  auipc        s10, 719794
                  addi         s3, t4, -924
                  add          s3, t1, a6
                  auipc        gp, 622950
                  sub          a6, a6, a1
                  add          t2, gp, gp
                  auipc        s3, 29530
                  add          s8, a1, s8
                  addi         t2, s3, -41
                  add          a6, t4, t2
                  add          t4, t1, t4
                  nop
                  auipc        a5, 730311
                  addi         s10, gp, 270
                  nop
                  sub          a5, a1, a5 #end riscv_int_numeric_corner_stream_6
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_19
                  li           a1, 0x0
                  li           s5, 0xac3dddeb
                  li           s0, 0x0
                  li           t2, 0x80000000
                  li           s10, 0xffffffff
                  li           t1, 0x80000000
                  li           s9, 0xffffffff
                  li           a7, 0xffffffff
                  li           ra, 0xffffffff
                  add          a7, s9, t2
                  auipc        t2, 797524
                  auipc        s0, 741483
                  nop
                  lui          t2, 769817
                  auipc        ra, 128367
                  nop
                  lui          s5, 912454
                  sub          s0, a7, t2
                  sub          s10, t2, a0
                  nop
                  addi         t1, a7, -1330
                  add          t1, a1, a1
                  lui          t2, 478113
                  sub          t1, t2, s10
                  nop
                  sub          a1, s9, t1
                  nop
                  lui          a1, 648928
                  auipc        s9, 69685
                  addi         s0, s10, -954
                  lui          a7, 295652
                  lui          s5, 736292
                  nop
                  auipc        s10, 85176
                  nop
                  lui          a0, 672432 #end riscv_int_numeric_corner_stream_19
                  li           a3, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           s7, 0x8194aea7
                  li           a5, 0x3da2c409
                  li           a2, 0x80000000
                  li           s4, 0xde6b4bf3
                  li           ra, 0x0
                  li           a1, 0x80000000
                  li           s2, 0x0
                  li           sp, 0x52dbf671
                  li           s11, 0xa6425bf9
                  nop
                  addi         a5, a2, 1605
                  sub          a2, a2, a2
                  nop
                  addi         a2, s4, -1210
                  add          a3, a5, s2
                  auipc        s7, 283795
                  add          a3, a1, s7
                  sub          s4, s2, sp
                  addi         s11, sp, -511
                  nop
                  nop
                  addi         a2, a3, -1375
                  sub          a3, a3, s4
                  addi         a3, a1, 301
                  auipc        a2, 723976
                  sub          s7, a5, sp
                  auipc        a5, 813321
                  auipc        a1, 214969
                  add          s7, s2, a2
                  nop
                  auipc        s4, 728533
                  nop
                  nop
                  auipc        s4, 713497 #end riscv_int_numeric_corner_stream_8
                  li           s4, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           a3, 0x66ef8c3d
                  li           t2, 0x80000000
                  li           t1, 0x9e8290d5
                  li           s7, 0x0
                  li           a2, 0x80000000
                  li           t4, 0x4fb959d5
                  li           tp, 0xffffffff
                  li           t5, 0xffffffff
                  li           a4, 0xe2139df6
                  sub          t1, t5, a2
                  nop
                  lui          t2, 982453
                  addi         a4, a4, -2015
                  lui          t4, 768808
                  sub          a4, tp, t1
                  nop
                  nop
                  lui          s7, 967188
                  add          t1, tp, s4
                  nop
                  nop
                  addi         s7, t4, 1324
                  lui          t5, 192526
                  auipc        t1, 995423
                  sub          a3, a3, t5
                  add          s4, t2, a4
                  lui          t1, 765586
                  nop
                  lui          t1, 560616
                  add          tp, t2, a3
                  sub          t5, t2, a4
                  lui          t1, 522670
                  add          a4, s7, t5 #end riscv_int_numeric_corner_stream_16
                  xori         tp, s4, 372
                  sll          a0, t2, s3
                  andi         s8, s7, -1136
                  or           a4, s4, a1
                  andi         a6, t3, -228
                  slti         t2, a2, 1386
                  xori         s7, sp, 225
                  sltu         t0, a2, a5
                  sltu         a2, t4, s8
                  lui          a4, 634076
                  xor          gp, a7, s11
                  slt          gp, s11, t3
                  sltu         t1, gp, t2
                  auipc        a2, 547539
                  sub          a0, s5, a4
                  auipc        zero, 69105
                  slti         t2, s2, -1418
                  lui          s8, 855785
                  nop
                  slli         t3, t1, 24
                  slti         a3, s4, 1717
                  slti         t2, s7, -118
                  and          s7, gp, ra
                  srai         sp, sp, 27
                  xor          gp, t6, sp
                  sltiu        a2, sp, 258
                  sra          t5, sp, t4
                  sub          s5, a7, s9
                  or           a3, a3, s10
                  sub          s3, s0, t1
                  slt          s10, s1, s3
                  srl          s5, a6, s8
                  or           s9, a3, t4
                  addi         a1, s11, 619
                  srai         s10, s5, 21
                  sra          a0, t5, s6
                  andi         t1, s6, -255
                  slti         s8, s8, -1449
                  lui          a5, 654822
                  slli         s7, a5, 18
                  ori          s9, a7, -336
                  lui          s7, 287101
                  andi         t2, s7, 697
                  slt          s3, zero, s11
                  auipc        t4, 928579
                  sll          t2, t6, s10
                  and          s4, gp, t4
                  sltiu        s7, s4, 599
                  xori         zero, tp, -1249
                  slt          s0, t2, s2
                  nop
                  sll          t2, a4, tp
                  xori         tp, a2, 827
                  add          sp, s0, s6
                  srl          t0, a7, s0
                  slli         t4, s4, 26
                  xor          tp, a0, a2
                  or           t5, s3, tp
                  andi         a7, t2, -714
                  srl          s2, t1, a3
                  nop
                  xor          s8, tp, sp
                  addi         t3, s5, -1433
                  slt          t4, zero, s11
                  sub          gp, s11, a3
                  auipc        a0, 809249
                  sltiu        s5, s7, 1793
                  slli         s5, t4, 10
                  lui          s10, 181510
                  add          a1, s11, s5
                  sll          s5, t6, t1
                  slt          t1, a5, s11
                  sll          zero, s4, a1
                  add          s0, t3, a0
                  slli         s5, gp, 7
                  or           s2, t4, a0
                  andi         a0, s3, 652
                  andi         a6, s1, 587
                  xor          a4, ra, s7
                  sltu         s8, a2, t2
                  lui          ra, 162377
                  srli         a1, a3, 18
                  nop
                  sub          gp, a6, s6
                  lui          a7, 101676
                  auipc        gp, 549897
                  auipc        zero, 90535
                  addi         sp, a5, -1573
                  auipc        t4, 764736
                  auipc        zero, 600642
                  sra          t4, t5, t1
                  srai         a4, a6, 31
                  sub          tp, tp, tp
                  srai         s3, s9, 11
                  and          zero, a2, a3
                  srli         a5, a1, 17
                  and          a5, t3, s3
                  slli         s11, zero, 20
                  sub          a2, gp, a3
                  nop
                  sltu         t0, s1, s3
                  slli         zero, a3, 19
                  sra          zero, s10, s5
                  sub          sp, s4, s8
                  slt          a1, s5, s8
                  nop
                  sll          a0, s2, s11
                  sll          s0, a7, s4
                  srli         s7, gp, 14
                  sra          s7, s6, s7
                  slli         s8, s7, 20
                  xori         s7, a6, 692
                  sltu         s4, t5, a5
                  sltiu        a5, s3, -508
                  sra          s10, s9, a6
                  nop
                  addi         s0, t4, -977
                  and          t0, s7, a3
                  sltu         a7, t6, a6
                  sltu         t2, gp, t2
                  ori          a5, t4, 1936
                  srai         sp, t4, 16
                  addi         t0, t5, 922
                  slti         s4, a6, 221
                  sltiu        t1, gp, 543
                  xori         a4, s3, -85
                  and          s10, a0, a1
                  sltu         tp, a4, s10
                  slti         a7, a2, -1352
                  xori         gp, s10, -679
                  auipc        s9, 372083
                  add          t2, t5, s0
                  ori          t0, t0, 896
                  auipc        t1, 111306
                  nop
                  andi         s4, a4, 146
                  or           t2, s10, s9
                  lui          a3, 1036369
                  srai         ra, sp, 1
                  srl          t5, a2, gp
                  xor          a0, s1, a5
                  srl          t4, ra, a2
                  xori         s3, t4, 460
                  sltiu        s10, s11, -1893
                  and          a1, a4, t3
                  sra          s5, s3, a6
                  srli         s2, a6, 21
                  slti         t0, s8, 1742
                  sltu         t2, s11, s2
                  sltiu        s2, t4, 1338
                  slt          s0, t4, sp
                  auipc        s9, 998400
                  xori         a0, a3, 1486
                  addi         gp, s1, 1094
                  xori         s9, t0, -1268
                  xor          t2, s0, a0
                  sub          t4, s9, s9
                  slti         a0, sp, 107
                  auipc        s8, 157735
                  add          s2, s1, s6
                  lui          t2, 520330
                  xor          s3, s11, t2
                  sll          a5, t3, t0
                  sltiu        s9, sp, 1012
                  srli         t3, t1, 11
                  sltiu        s3, a6, 421
                  sll          a3, zero, tp
                  or           a0, a3, a5
                  slt          tp, t2, a5
                  sltiu        t4, tp, -1527
                  and          s3, a5, t1
                  andi         s7, a1, 561
                  add          t2, a3, t0
                  srai         t1, a5, 21
                  lui          a0, 276610
                  auipc        sp, 994875
                  or           s4, s10, t4
                  addi         a3, s11, -1601
                  slli         s9, a6, 23
                  sub          a2, s6, s3
                  sll          t1, s0, a3
                  and          t3, t4, t5
                  srl          a1, ra, a7
                  sra          s2, t4, s5
                  srai         t0, sp, 18
                  addi         ra, t0, -127
                  slli         s7, s9, 8
                  add          t0, t6, t2
                  xor          a5, t3, a7
                  sra          s10, a1, s0
                  slli         tp, s11, 25
                  add          s10, t4, gp
                  sltiu        s9, t6, -158
                  or           s4, s11, s10
                  slti         s3, sp, -769
                  auipc        s9, 695212
                  slti         a2, zero, -1290
                  srl          a3, a1, tp
                  sltiu        ra, a0, -683
                  or           s4, s11, s9
                  slt          t0, ra, s2
                  srai         t4, a4, 11
                  andi         s2, sp, -1334
                  slti         s9, s5, 1101
                  nop
                  sll          gp, s2, t1
                  slli         a7, a0, 12
                  andi         t3, a7, 1583
                  xor          gp, t4, t2
                  srai         tp, s1, 6
                  sll          ra, s8, a0
                  nop
                  auipc        s11, 11169
                  nop
                  or           a1, s0, s1
                  srl          s5, t1, s0
                  and          a6, t4, zero
                  sltu         t5, s10, t4
                  auipc        s7, 311971
                  add          s5, s2, a2
                  sll          s4, s9, a2
                  nop
                  auipc        t5, 470181
                  sra          s10, a5, t5
                  xori         a2, gp, -511
                  sub          sp, s1, t2
                  sltiu        t0, s0, 1748
                  sub          a5, t0, s9
                  slli         a1, gp, 27
                  sll          s2, a1, s3
                  lui          a4, 270758
                  add          a7, a5, s5
                  andi         s8, a6, 1706
                  and          a1, a5, s7
                  srl          sp, s3, t3
                  ori          s0, s10, 123
                  sltu         t3, s11, s9
                  sra          t3, a7, s0
                  andi         s8, s5, 291
                  srli         a0, a2, 13
                  sltiu        a4, a3, 119
                  lui          tp, 822746
                  srl          s4, s6, s3
                  sll          t5, tp, s7
                  nop
                  xori         a5, s10, 731
                  lui          tp, 797584
                  nop
                  sll          a6, a2, t0
                  sltu         s9, t5, a0
                  slt          a6, a3, t4
                  and          a4, a1, zero
                  sll          a1, s2, gp
                  sra          t0, zero, a3
                  xor          a2, a6, s8
                  auipc        s8, 508660
                  and          a4, t2, t2
                  sll          a3, s2, t3
                  slli         zero, s9, 24
                  sll          a6, s3, a6
                  or           a1, t1, a2
                  ori          a7, t4, -1584
                  auipc        a6, 218801
                  sll          t3, a5, a3
                  and          a4, t5, t1
                  andi         s2, a0, 353
                  slt          s4, ra, zero
                  add          t4, s0, t4
                  srl          ra, t0, gp
                  xori         s2, ra, 1356
                  xor          sp, a0, s2
                  sub          ra, a1, a2
                  addi         t0, gp, -1731
                  nop
                  slti         a3, s7, 1090
                  nop
                  sra          s0, tp, sp
                  or           a2, a0, a4
                  slti         s2, a7, 640
                  sltiu        a1, sp, -832
                  sltiu        s5, s9, -466
                  srli         t3, t4, 5
                  andi         s5, a1, 1698
                  srli         a2, tp, 15
                  nop
                  nop
                  sra          zero, s8, s6
                  addi         a2, a6, 1057
                  srli         a1, s11, 2
                  sra          a2, a5, s2
                  xor          a0, s4, s6
                  slti         gp, s10, 2015
                  sub          s9, s0, gp
                  lui          s11, 69810
                  srli         a7, s8, 25
                  and          s0, sp, s0
                  and          a2, a6, a4
                  srl          a6, t5, s5
                  sltu         t5, t2, a6
                  slt          s8, sp, s1
                  xori         t2, t3, 1104
                  slli         t3, gp, 9
                  nop
                  ori          ra, s10, -979
                  sra          a6, t6, tp
                  xor          s2, t2, a5
                  ori          a4, a7, 1340
                  xori         a5, s1, 1387
                  add          a6, s10, a7
                  sub          zero, t2, ra
                  xori         s5, s11, -598
                  or           a5, a6, t4
                  sub          t3, s2, t4
                  sub          s10, s10, zero
                  nop
                  auipc        s3, 1048497
                  sra          a6, t5, a2
                  srl          t2, sp, t5
                  andi         s5, s4, -1464
                  add          s0, s6, t4
                  slli         a0, s6, 13
                  srl          t5, s6, t6
                  sra          t4, s10, s0
                  srli         s11, sp, 19
                  slt          s9, a4, a5
                  addi         ra, a6, -1944
                  auipc        a2, 886197
                  sra          s11, zero, t2
                  xor          ra, a7, s9
                  sltu         s5, s10, s11
                  sra          s4, s1, t4
                  andi         t1, gp, -114
                  sltu         a6, a3, s0
                  andi         a3, s10, -394
                  xor          ra, t3, s0
                  auipc        ra, 635046
                  slli         t4, t3, 1
                  srli         a6, a1, 11
                  xor          s7, zero, a5
                  srai         a6, zero, 15
                  lui          t4, 523313
                  srl          zero, ra, s3
                  srai         s10, zero, 30
                  slli         s4, s2, 27
                  andi         a7, s8, 611
                  srli         a1, t3, 18
                  auipc        a0, 891397
                  sltiu        s11, a0, 581
                  xor          t3, a5, s2
                  srai         zero, s11, 7
                  auipc        t4, 591056
                  add          a7, s1, a4
                  or           ra, t1, s8
                  or           t1, t5, a4
                  andi         gp, ra, 1682
                  sra          sp, s9, s6
                  or           s5, a0, t3
                  or           a0, t4, s10
                  ori          t2, s5, -1974
                  srl          s7, s3, a2
                  xor          a6, s1, t6
                  ori          t4, a3, 251
                  srli         a5, a3, 30
                  sll          tp, t5, s11
                  and          t0, t4, a2
                  nop
                  srai         a3, t4, 17
                  andi         a3, t4, -234
                  slli         t1, s8, 3
                  srli         a6, a1, 17
                  andi         a5, a4, 1984
                  slt          s2, s4, sp
                  sub          s0, a7, t0
                  xori         a6, a6, -1822
                  xor          s9, sp, a5
                  srl          a1, zero, t5
                  xor          a4, s6, sp
                  sra          t0, s9, a6
                  sll          s11, a7, tp
                  auipc        t2, 297519
                  srai         s7, gp, 26
                  srai         ra, s11, 20
                  srli         s0, t6, 8
                  srai         a6, s9, 0
                  srai         s3, s8, 1
                  slti         a7, s4, 678
                  or           t2, s0, s11
                  ori          a7, s8, -77
                  xori         a3, a6, 1218
                  slt          t1, a7, gp
                  xor          s10, s3, sp
                  ori          a7, a6, -492
                  slti         t4, t2, 1351
                  nop
                  auipc        ra, 463907
                  srl          a2, s4, a2
                  auipc        a0, 758824
                  slti         tp, s5, 1384
                  srl          s10, a4, gp
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           a3, 0x0
                  li           s9, 0x80000000
                  li           t4, 0x0
                  li           s7, 0x80000000
                  li           t1, 0x3edeb23d
                  li           ra, 0x1721b668
                  li           a0, 0x0
                  li           s0, 0x17e5bd23
                  li           gp, 0x80000000
                  addi         a0, s0, -730
                  addi         s0, tp, -418
                  sub          a0, gp, t1
                  lui          tp, 879830
                  add          s0, s0, t4
                  addi         t4, t1, -1459
                  lui          a0, 369067
                  lui          a3, 692546
                  addi         t1, s0, -638
                  addi         t1, a3, 1784
                  lui          t1, 219493
                  auipc        gp, 609102
                  lui          gp, 22275
                  nop
                  addi         s0, ra, -845
                  add          s0, s9, a0
                  auipc        t4, 694882
                  nop
                  auipc        tp, 545294
                  auipc        s9, 416366
                  auipc        s9, 410045
                  lui          a0, 713181
                  addi         t1, s9, -1212
                  lui          a0, 933383
                  add          a3, s7, a3
                  lui          t1, 297595
                  addi         a3, s0, 924
                  nop #end riscv_int_numeric_corner_stream_11
                  add          zero, t3, t4
                  sub          a0, t6, s9
                  xor          a6, s3, s4
                  andi         a3, a7, 723
                  or           a5, gp, s3
                  slli         s2, s9, 3
                  andi         a2, a4, -1622
                  slti         t3, t5, -1592
                  and          a6, t6, gp
                  sub          t0, a7, s2
                  sub          s5, t0, s3
                  xori         t1, s4, 1486
                  sltu         s11, s11, s4
                  or           t2, sp, s7
                  slli         s10, sp, 12
                  sub          s0, sp, s8
                  slli         s10, t4, 19
                  andi         t4, tp, -902
                  sll          s7, s0, s4
                  lui          a3, 851018
                  nop
                  sra          s2, t4, s5
                  slt          a0, t6, t1
                  ori          s8, a2, -903
                  sltu         a5, a1, s0
                  nop
                  nop
                  andi         zero, s3, 1369
                  add          t3, a1, t3
                  add          ra, a6, t5
                  sltu         t5, t1, a3
                  andi         tp, t1, 693
                  sltiu        t3, a3, -2037
                  slt          t5, zero, s8
                  srl          a1, a0, t4
                  nop
                  sltu         s7, s11, s10
                  sltiu        s8, a0, -1720
                  srai         a0, tp, 29
                  sub          a3, s7, s7
                  sra          s0, a2, s8
                  xor          a6, t0, gp
                  slt          s5, s8, s8
                  lui          a7, 492176
                  lui          a4, 917305
                  addi         ra, t0, -1423
                  srai         s2, t0, 28
                  slli         s7, a6, 16
                  srai         s0, t5, 21
                  lui          a7, 877731
                  lui          s3, 101394
                  add          a5, t4, a4
                  sra          a7, ra, s0
                  addi         t4, s3, -1355
                  srai         a4, t6, 29
                  slti         a7, s7, -941
                  sra          s5, t1, t4
                  andi         s9, tp, -919
                  sltu         s11, a4, a7
                  addi         s9, zero, 1370
                  srli         s0, s8, 16
                  lui          t1, 391083
                  sll          t5, a4, s6
                  or           t5, s9, a2
                  xori         sp, a1, 1358
                  and          s8, a2, s11
                  xor          t4, s11, gp
                  srai         s7, a6, 20
                  srai         a6, a1, 3
                  lui          zero, 912281
                  srli         a3, a0, 28
                  xori         s3, s10, 1997
                  sltiu        s10, s8, 1013
                  xori         gp, ra, 674
                  slt          s2, sp, t1
                  and          zero, t1, t4
                  slti         tp, t1, -493
                  xor          s11, sp, a0
                  slti         s2, s9, -1392
                  xor          s0, s4, a0
                  srai         s5, s7, 20
                  slli         s10, sp, 0
                  lui          s0, 1015867
                  sltiu        a7, a5, -365
                  sltu         s2, ra, sp
                  srli         s3, a0, 3
                  srl          a4, s7, t5
                  add          a5, gp, s8
                  srai         a7, s6, 7
                  srai         t2, s7, 6
                  srli         zero, s0, 29
                  sltiu        s3, s3, -2001
                  sltiu        t1, s2, 205
                  sll          t1, s10, s10
                  sra          a5, s1, t5
                  or           gp, s8, s0
                  lui          s5, 616666
                  sltiu        t2, a0, 761
                  srli         sp, a6, 3
                  sub          a6, ra, sp
                  xori         s10, s6, -1664
                  and          s11, s3, s4
                  xori         a6, s5, 1354
                  ori          s9, t1, -1824
                  sltiu        t3, a4, -85
                  slt          s5, zero, a0
                  srai         s10, s1, 23
                  ori          s9, s9, -1633
                  ori          t2, a3, 388
                  andi         t1, s5, -372
                  sub          s0, s2, a6
                  andi         a2, t5, 1973
                  sub          s2, a4, s6
                  slt          s9, s10, t4
                  srai         s7, a4, 22
                  add          s9, a4, a2
                  sra          t1, tp, a4
                  andi         s0, s1, -43
                  xori         t4, t6, -1749
                  add          s4, t2, t2
                  addi         t1, s6, 22
                  xori         a1, a4, -1007
                  xori         s10, t5, -412
                  srl          zero, s5, tp
                  add          s3, t0, s4
                  andi         t1, tp, -1149
                  addi         a2, a4, 967
                  srli         sp, a7, 11
                  or           s3, s1, s7
                  xor          s7, a4, s7
                  sltu         s5, s3, s6
                  lui          s10, 363527
                  srl          a5, t2, s1
                  xor          s3, a3, s8
                  sltu         gp, s8, sp
                  ori          gp, s0, -1817
                  srl          a6, ra, t6
                  sltiu        a3, s8, 1863
                  add          s7, a5, a1
                  slli         t3, a4, 25
                  srai         s11, s9, 3
                  xori         t1, a6, 1397
                  srai         s9, t0, 10
                  addi         a0, t3, -2011
                  ori          a0, s1, -1016
                  auipc        s2, 94309
                  sub          s9, s7, s5
                  srli         s11, s5, 10
                  xor          t2, a5, sp
                  xori         s5, a0, -489
                  andi         t5, gp, -64
                  sltu         a6, a1, ra
                  sub          a1, s9, ra
                  ori          a4, s7, -1333
                  auipc        a5, 478887
                  add          a7, s2, a3
                  sll          tp, s4, s5
                  lui          ra, 816253
                  sub          a1, s11, t5
                  sub          a2, s2, s8
                  sll          s10, s4, sp
                  slti         a2, s5, -1013
                  lui          a0, 145238
                  sub          zero, a4, s9
                  xori         s2, s5, 494
                  andi         t5, s4, 946
                  slti         s2, s0, -1758
                  xori         a5, a7, -805
                  add          a0, s6, s0
                  addi         s7, t6, -1637
                  srli         a6, t5, 8
                  slt          a6, a0, s6
                  auipc        s3, 707692
                  ori          t1, a0, -801
                  nop
                  xori         s11, a5, 959
                  sra          s3, t1, s4
                  sra          s5, gp, a2
                  or           t1, s10, s2
                  or           sp, s7, a3
                  sub          s5, s7, t2
                  sltiu        s2, s3, -1443
                  nop
                  srai         s3, s11, 11
                  xori         t0, a0, -950
                  nop
                  srai         s0, t0, 26
                  sltu         a6, s7, t2
                  sub          t5, s8, gp
                  slt          s2, s5, t4
                  sll          s0, s5, zero
                  nop
                  sltiu        t2, t2, -581
                  sltu         sp, s7, a6
                  slli         gp, s6, 8
                  sltiu        s5, t4, -1614
                  xor          t1, t0, tp
                  add          s4, s9, s4
                  sltu         t0, s6, t5
                  nop
                  ori          s2, a1, 1646
                  and          s8, t3, t6
                  xori         t1, t0, 1805
                  slti         s8, t4, 1572
                  sltu         a2, a0, s1
                  slt          ra, a7, s11
                  sltu         t3, sp, t3
                  andi         a4, t5, -8
                  sub          s5, s11, s10
                  sll          t5, a7, sp
                  addi         zero, t6, 950
                  sub          t1, s10, s0
                  add          s4, t2, s2
                  xori         a6, s8, 1409
                  xor          s5, tp, tp
                  srai         t0, a3, 29
                  addi         gp, ra, 591
                  xori         s11, s5, 2042
                  xor          zero, zero, s9
                  addi         t4, s9, -837
                  sll          s2, s6, s2
                  sub          a0, t4, t5
                  sltu         a1, s4, s0
                  slti         a3, a0, 566
                  addi         a6, a7, -1377
                  sub          s2, t3, a0
                  lui          t1, 416805
                  nop
                  add          s4, tp, gp
                  srai         s9, t1, 5
                  slti         sp, s7, 624
                  slti         ra, a4, 1654
                  auipc        t5, 651582
                  ori          t2, a6, 1884
                  sll          s11, s6, t1
                  xori         s2, s3, -642
                  andi         s4, zero, -1610
                  srl          t2, s7, a3
                  slt          a6, s7, s11
                  sltiu        tp, s11, -1728
                  slt          s0, t4, a4
                  xori         s2, a6, -1845
                  sub          a3, ra, a1
                  lui          t2, 305532
                  or           a7, s8, a6
                  sltiu        s5, a5, 1163
                  srai         t1, a4, 12
                  sra          t5, s3, ra
                  auipc        a5, 743021
                  xor          a7, s9, s7
                  srli         s7, a3, 24
                  srli         gp, a3, 9
                  srli         t1, ra, 25
                  srai         s4, a4, 5
                  nop
                  sra          ra, t0, t4
                  auipc        t5, 28746
                  auipc        gp, 290303
                  or           a0, s0, t2
                  srl          t0, s7, t3
                  xori         s0, s3, -219
                  lui          s4, 307791
                  andi         sp, t1, 271
                  andi         tp, tp, 2017
                  addi         a3, a0, 830
                  nop
                  sra          t5, t3, t1
                  slt          tp, t2, a1
                  and          ra, s8, t0
                  and          ra, a1, s6
                  srai         sp, a2, 18
                  xor          a0, a2, s8
                  slti         s8, a5, 388
                  ori          t3, t3, -689
                  xor          s8, t4, s3
                  addi         s10, s6, -178
                  slli         t2, a1, 25
                  srli         t1, s6, 10
                  slti         s2, s0, 853
                  sll          s9, s0, a6
                  sra          t3, s10, t2
                  add          s3, a7, a7
                  lui          s11, 259375
                  sra          a6, s5, t1
                  and          a5, t6, a3
                  addi         t0, s7, 79
                  addi         t2, s2, -96
                  sll          s5, t3, t6
                  and          a1, s11, t0
                  sltiu        s7, a6, 1968
                  addi         a6, t5, 1689
                  slli         s5, s6, 0
                  add          t1, sp, t0
                  xor          s4, s9, a5
                  srli         zero, t2, 20
                  add          s10, t0, sp
                  auipc        s10, 981282
                  ori          s3, t6, 1590
                  sra          s9, t1, s9
                  auipc        tp, 201434
                  sltiu        s0, s5, -961
                  sra          a0, s1, s3
                  sltu         a1, s6, s4
                  add          s3, s2, s10
                  sltiu        t1, a2, 81
                  nop
                  slli         s7, a1, 13
                  andi         gp, a2, 566
                  andi         a2, s7, 1974
                  srli         t3, a2, 19
                  slti         a5, s8, -823
                  ori          a4, s10, 76
                  nop
                  xori         t5, s11, -220
                  auipc        t0, 2907
                  sltiu        s5, t0, -1200
                  ori          a4, a2, -498
                  or           a1, a0, s5
                  ori          t1, a0, 582
                  xori         s4, zero, -1106
                  slt          ra, t4, s5
                  addi         s11, sp, 488
                  and          t4, s3, a7
                  addi         s4, a5, 1360
                  add          gp, a3, a0
                  and          s8, t6, s3
                  sub          t5, t5, t3
                  slt          s10, s0, t6
                  sub          s2, a0, s11
                  slti         t5, s10, 1465
                  sub          s11, t6, s0
                  sll          t3, s8, t2
                  sltiu        a2, a3, 1078
                  auipc        a1, 614060
                  srl          a3, s10, s3
                  nop
                  sra          t3, gp, a0
                  ori          s11, t4, 1713
                  srai         gp, a5, 18
                  xori         gp, a7, -692
                  addi         a7, a1, -972
                  xor          a5, s8, s9
                  andi         sp, a5, -452
                  nop
                  srli         zero, a5, 12
                  srai         sp, s7, 31
                  ori          a1, s5, -1631
                  srl          ra, s11, ra
                  sll          a3, a7, s3
                  srl          t0, s10, zero
                  slt          s4, s9, s5
                  srl          s5, s4, t6
                  ori          s8, s11, 1204
                  xor          s3, gp, s0
                  srl          s11, ra, a5
                  ori          t3, a6, 1421
                  xor          zero, s5, s3
                  sra          a7, s3, s3
                  add          s10, s3, a5
                  sra          ra, s1, s1
                  sll          a2, sp, ra
                  sltiu        a5, a4, 832
                  srai         s10, a2, 14
                  ori          t0, t4, -1010
                  and          tp, a3, ra
                  add          s2, t5, s2
                  srli         ra, tp, 8
                  sra          s3, s2, s5
                  addi         gp, t0, -255
                  srli         s2, t5, 2
                  slti         t3, t0, -1796
                  xori         ra, t5, 781
                  sltu         tp, t1, tp
                  slti         t4, zero, 74
                  srli         a0, s10, 4
                  xori         tp, t0, 738
                  slti         a1, t5, -1446
                  slt          zero, sp, t3
                  srai         s11, t2, 23
                  andi         s3, s7, 540
                  slt          s2, tp, t4
                  srli         a1, a3, 19
                  sll          a4, t2, s11
                  slt          s10, s0, s7
                  xor          s4, s8, s9
                  sub          ra, sp, zero
                  srai         s7, zero, 8
                  lui          a3, 201095
                  addi         a6, a1, -1771
                  sra          s7, a2, zero
                  srai         s5, zero, 21
                  or           a6, s8, s11
                  or           a6, s5, s4
                  ori          s5, a7, 1711
                  nop
                  slti         t5, s9, -114
                  addi         t4, s5, -1194
                  and          a0, a1, s1
                  addi         s9, s1, 1249
                  xor          s7, s3, tp
                  andi         a0, t3, -1338
                  nop
                  slti         zero, a5, 229
                  sltiu        t3, s5, 349
                  sll          s9, s1, s3
                  slli         s5, t2, 2
                  ori          a3, a2, 251
                  andi         s0, t6, 1505
                  sra          a5, s7, s0
                  or           s2, zero, s3
                  lui          t2, 885875
                  slt          s11, s3, t1
                  and          s10, s1, s7
                  sltiu        s3, a7, 1472
                  lui          a1, 927981
                  sra          gp, sp, a0
                  sll          t4, s1, s6
                  sltiu        t1, zero, 855
                  andi         a5, s4, -1285
                  or           a6, t0, t6
                  ori          a3, ra, -684
                  xor          t3, t2, a6
                  srli         a7, t4, 9
                  sltu         s2, t4, a5
                  or           s3, s3, a0
                  andi         a7, t6, -919
                  xor          s7, a5, ra
                  nop
                  sra          a5, s4, t4
                  sltiu        zero, t0, -651
                  ori          a2, s7, 511
                  auipc        t1, 440497
                  srl          t0, tp, s0
                  sltu         a5, t1, a6
                  and          t5, t5, a6
                  xori         s7, s3, 561
                  sltiu        s4, s9, -1773
                  nop
                  or           a0, s4, a2
                  add          s4, a6, t1
                  srl          a7, t0, a0
                  sltu         t2, gp, t5
                  sltu         tp, tp, tp
                  srl          a6, s7, a1
                  srl          t3, s9, gp
                  slti         s4, tp, 361
                  auipc        s0, 774069
                  srai         a4, t6, 26
                  xor          a4, s8, gp
                  and          a1, sp, a2
                  add          a3, t3, s2
                  add          s8, a5, s4
                  auipc        t3, 298027
                  srl          t5, ra, t5
                  sltiu        t1, s5, -231
                  sll          ra, t6, gp
                  sll          a2, s10, t0
                  auipc        t5, 624247
                  slti         s4, t6, -747
                  slt          a5, s5, t1
                  and          s10, a3, tp
                  auipc        a6, 258278
                  sltiu        s2, t5, -1942
                  slt          t0, t4, t4
                  slli         t4, t4, 30
                  sub          s7, a5, s4
                  slt          s4, s0, a7
                  add          s9, t0, a0
                  srli         t1, s1, 31
                  srli         s5, s4, 12
                  lui          a0, 126215
                  andi         s7, t0, 1776
                  xori         a5, a0, 486
                  addi         t4, a0, -1196
                  andi         s8, s5, -398
                  or           s10, s2, t2
                  andi         a3, s7, -190
                  slti         a4, s3, 746
                  auipc        a6, 188538
                  add          t1, s3, a3
                  sra          tp, t0, s6
                  xori         a3, t4, 1861
                  srai         s3, ra, 23
                  slti         t1, a4, -1847
                  sltu         s10, a3, a5
                  srli         sp, zero, 18
                  add          a6, a4, s11
                  andi         s9, sp, 2008
                  sltiu        a6, s10, -571
                  slt          t4, t4, t6
                  srai         s4, t4, 4
                  srli         zero, zero, 1
                  slt          s2, t2, s6
                  addi         s0, a7, -1877
                  auipc        zero, 885041
                  auipc        a0, 514327
                  auipc        gp, 551556
                  slti         s9, s5, 72
                  add          s9, s2, t4
                  xori         zero, tp, 1571
                  nop
                  srli         s4, t5, 2
                  srai         a1, a3, 28
                  srai         t4, s9, 18
                  slt          a1, t2, s10
                  nop
                  sltiu        s8, s9, 505
                  slli         tp, a6, 8
                  srai         t5, s2, 11
                  xori         ra, s0, -218
                  auipc        s9, 545363
                  sll          s11, a7, t1
                  xori         t1, t6, 1345
                  addi         s4, s11, -639
                  sll          t1, gp, s0
                  sltu         zero, s1, a7
                  xor          t4, a7, s3
                  srli         t2, t4, 11
                  slt          s7, t6, gp
                  sra          s3, s10, a5
                  and          t2, a7, a4
                  sltu         a1, s9, s3
                  slli         a2, s6, 0
                  xor          s4, a5, sp
                  slt          a7, s8, ra
                  slt          t3, a1, s9
                  sub          s9, gp, s8
                  auipc        t5, 414068
                  srli         s0, sp, 27
                  sltiu        t4, t5, -808
                  lui          sp, 581479
                  addi         t2, ra, 1070
                  andi         a6, t2, -1384
                  slli         t2, a4, 13
                  auipc        a2, 392997
                  slli         a3, s8, 15
                  or           s4, s0, t1
                  add          a4, sp, ra
                  sltu         t4, a5, gp
                  xori         zero, t1, 1492
                  sra          s8, sp, a3
                  auipc        a4, 122856
                  auipc        t0, 601337
                  sltiu        s4, t6, 1007
                  sub          a1, s1, ra
                  sra          t4, s0, a3
                  addi         t4, t0, 1744
                  sll          ra, s5, t0
                  slt          s9, s0, sp
                  slt          s2, s6, t6
                  auipc        zero, 1025190
                  srai         s7, a2, 31
                  addi         tp, a4, 1487
                  lui          s3, 134992
                  xor          s10, a7, s11
                  sra          t3, s0, t4
                  nop
                  slt          s0, s3, a0
                  srli         s2, a4, 14
                  slti         s3, s2, 1915
                  slt          s0, tp, s3
                  add          s2, tp, t4
                  srl          s8, s9, s4
                  slt          gp, s3, zero
                  nop
                  srl          s3, s0, s11
                  and          tp, s0, s8
                  srli         t2, s0, 9
                  addi         zero, s8, 948
                  lui          t4, 429363
                  xor          tp, s1, a2
                  add          a1, a3, ra
                  slli         a6, a7, 12
                  slli         a0, tp, 4
                  srai         t2, s4, 27
                  ori          s4, ra, -584
                  sltiu        a4, a3, 77
                  sltiu        a1, s1, -968
                  sltiu        t4, s0, -163
                  srli         s3, t6, 18
                  sub          s2, a6, s10
                  lui          t0, 56898
                  and          zero, t4, s3
                  sltiu        a4, t0, -944
                  slti         zero, a0, 1361
                  srl          s7, zero, sp
                  or           a1, s3, t0
                  and          t4, zero, s6
                  add          s2, zero, a2
                  slli         s3, t6, 15
                  sltu         s10, a3, s1
                  and          gp, t3, s8
                  add          zero, sp, t5
                  and          t0, s0, s5
                  sltu         t4, ra, a0
                  add          s11, a5, t2
                  addi         a2, t3, 548
                  add          s8, t0, s10
                  sltiu        t5, s5, -660
                  srli         a7, a6, 3
                  sra          s10, a0, s0
                  slt          t4, ra, t0
                  addi         zero, a2, -1108
                  ori          s3, zero, -533
                  lui          s5, 355474
                  ori          s7, s6, -1120
                  slli         s2, s0, 25
                  slli         s3, s4, 31
                  xori         s11, s8, 686
                  slt          s0, a4, s2
                  srai         t0, t0, 6
                  and          s7, t0, a3
                  lui          sp, 541383
                  slli         sp, s11, 16
                  srai         gp, a7, 5
                  and          tp, zero, gp
                  addi         zero, a4, 1603
                  sub          s2, s10, a0
                  xor          t4, t0, t6
                  sra          s3, a6, gp
                  slli         sp, s1, 6
                  sll          s11, t1, s10
                  sltiu        a0, a1, -1483
                  auipc        s7, 132433
                  slt          a0, a7, s6
                  lui          t5, 196524
                  lui          a6, 297107
                  add          a3, s1, s4
                  sra          a3, t5, t6
                  nop
                  slti         sp, s2, -435
                  auipc        a2, 46305
                  ori          s0, t3, -1174
                  and          t5, s1, t6
                  lui          s11, 761180
                  srai         t3, s11, 3
                  lui          s8, 34245
                  sub          ra, s4, t0
                  srl          s8, s4, s8
                  xori         s2, t6, -1368
                  slti         t2, sp, -574
                  and          a4, t1, s2
                  addi         a3, s5, -635
                  auipc        s8, 926505
                  slli         a0, a5, 20
                  sll          ra, a3, t0
                  sltu         s4, sp, ra
                  sra          t1, s5, a6
                  nop
                  sltiu        s9, s10, 1684
                  slti         s3, s2, 1440
                  lui          sp, 350283
                  sltu         a5, a0, s10
                  slt          a7, t2, t0
                  sll          s0, s3, a5
                  andi         t5, s7, -1743
                  slti         sp, t3, -1195
                  sltiu        t4, tp, -329
                  srli         s10, s11, 28
                  slti         s11, s10, 615
                  lui          s8, 674788
                  slt          a2, a6, a3
                  srai         s10, s8, 31
                  slti         s10, t3, 61
                  sra          a3, s3, s3
                  sltiu        t4, s3, 1900
                  srli         a5, a4, 12
                  sll          zero, a5, a2
                  srli         a3, a1, 26
                  ori          a7, zero, -825
                  and          s3, s2, t3
                  lui          t4, 651718
                  auipc        t4, 371960
                  add          s0, t0, s4
                  andi         a3, s10, 1928
                  sltiu        a3, a2, 1214
                  ori          tp, s2, 2012
                  or           s4, a6, s11
                  slt          ra, s4, a3
                  sll          s2, s2, s10
                  xor          s0, s9, s5
                  slti         a3, sp, 310
                  sltiu        a0, gp, -124
                  addi         sp, zero, -1151
                  sltiu        s9, a2, -2026
                  add          t3, a5, t5
                  slli         t1, s6, 16
                  ori          a0, s11, -1022
                  sub          t4, t5, s11
                  auipc        t3, 339839
                  sub          s5, s3, s0
                  and          s9, t5, s6
                  srli         s7, t5, 10
                  ori          t0, a4, -239
                  and          s9, a1, s2
                  add          s2, a7, s0
                  slti         t4, t1, -1203
                  srli         a7, s7, 2
                  sra          s5, s11, s1
                  or           a4, a3, a5
                  xori         a1, s1, -1435
                  srli         zero, t5, 3
                  ori          t3, s3, -129
                  addi         a5, s0, 1744
                  slti         s4, t1, -820
                  sra          s4, ra, gp
                  ori          s10, ra, -816
                  srli         s9, a2, 26
                  sltiu        t0, t4, -1530
                  slli         t3, t4, 29
                  sra          a3, s10, s10
                  slt          s5, s2, t4
                  nop
                  sltu         s7, t0, s4
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           sp, 0xa4da70ab
                  li           s2, 0x9c267d79
                  li           s7, 0x0
                  li           a4, 0x80000000
                  li           s11, 0xf863c5cc
                  li           gp, 0x0
                  li           s8, 0xdd0a0450
                  li           t3, 0xffffffff
                  li           s4, 0x0
                  sub          t3, tp, a4
                  lui          s2, 507329
                  addi         s11, sp, 651
                  auipc        s2, 964416
                  lui          tp, 213391
                  sub          s4, s4, gp
                  auipc        s8, 860327
                  sub          s7, sp, s11
                  lui          tp, 145833
                  add          s11, s7, t3
                  sub          s11, s8, s2
                  addi         t3, s7, -1852
                  sub          s4, a4, sp
                  auipc        gp, 26720
                  addi         s7, a4, 1744
                  auipc        a4, 435179
                  add          s2, a4, tp
                  addi         s4, tp, 517
                  sub          gp, sp, s2 #end riscv_int_numeric_corner_stream_4
                  auipc        s0, 442377
                  sub          s5, t4, a5
                  and          s9, t6, sp
                  xor          t4, s4, s3
                  xor          t1, t5, s3
                  addi         s2, zero, 19
                  sub          s7, a1, s11
                  add          s2, t1, a3
                  srli         t4, a0, 30
                  or           a4, a5, gp
                  slli         t3, t1, 13
                  srai         a1, s9, 21
                  slli         s8, s2, 24
                  andi         s11, t3, 1697
                  sltiu        s5, t4, 1690
                  auipc        s10, 565948
                  auipc        zero, 612178
                  nop
                  sltu         a1, s8, a5
                  ori          s2, t0, -38
                  sltiu        s5, s0, -214
                  andi         s3, s6, -41
                  xori         t3, zero, -413
                  auipc        s0, 367993
                  andi         a7, s5, 1746
                  and          a7, a4, s2
                  sll          a4, a6, a2
                  add          s9, gp, s7
                  auipc        t0, 379543
                  srai         s4, a7, 5
                  addi         a7, t3, 1305
                  nop
                  slti         a0, t5, -1167
                  addi         zero, t5, 236
                  auipc        a5, 527032
                  and          s3, t2, a4
                  and          a5, s2, s1
                  or           t5, s4, s6
                  and          zero, a7, gp
                  sltiu        t5, s6, -110
                  or           t0, t1, s5
                  slli         a2, s1, 20
                  sll          s5, a0, a2
                  nop
                  addi         a2, s1, -1573
                  nop
                  auipc        gp, 589966
                  slli         gp, t6, 17
                  sub          a0, t2, a4
                  xori         a3, s4, 1478
                  sra          t5, sp, t1
                  srli         s7, t0, 13
                  addi         s9, s0, -1462
                  xor          t0, t2, t2
                  andi         a5, tp, -2030
                  slt          a5, t3, a0
                  xori         a4, t2, -370
                  or           a2, a5, s0
                  add          a2, s10, s1
                  srai         a7, s8, 17
                  addi         s7, tp, -1946
                  auipc        gp, 363729
                  slli         s8, a2, 18
                  slt          s8, s8, a3
                  lui          a7, 698457
                  sltiu        s2, t5, 761
                  sll          s9, a2, a4
                  sra          s4, s9, a4
                  or           a0, s11, a5
                  sltu         tp, s11, a4
                  sltiu        a5, a2, 332
                  sra          s7, a6, s10
                  and          t5, s2, s8
                  srl          gp, s8, a4
                  slt          s4, s0, t1
                  sll          t5, a6, a3
                  srli         s11, s7, 25
                  xori         t4, a7, -1943
                  slti         gp, t3, -2000
                  xor          a0, a6, t0
                  srl          a4, t3, a3
                  slti         a3, a3, -1376
                  srli         sp, a6, 14
                  ori          s4, s5, 1674
                  xori         a6, s5, -881
                  xor          a5, t1, a4
                  auipc        a3, 74118
                  slt          tp, a6, s3
                  andi         s2, s7, -1683
                  sub          a3, s6, gp
                  xori         s9, s1, 1883
                  srli         s4, a7, 11
                  add          t5, a2, zero
                  slti         gp, s9, 1592
                  sra          t4, s4, a3
                  slt          a0, tp, s0
                  xori         a6, ra, -1609
                  slli         a0, s5, 1
                  ori          s8, a2, -1883
                  slli         s3, a2, 13
                  nop
                  and          a2, sp, t0
                  sltu         s7, s8, a2
                  slli         t1, t0, 6
                  sub          s7, a6, a4
                  slt          s11, t0, s2
                  slli         gp, t6, 22
                  srai         s8, s8, 7
                  srl          tp, a3, a7
                  sub          s2, s6, a1
                  sra          a0, s10, a3
                  srl          t3, tp, t1
                  lui          t3, 805897
                  or           sp, s9, t4
                  slti         ra, s3, -972
                  xori         s5, sp, 151
                  slti         s2, tp, -643
                  add          a4, gp, s8
                  sra          s3, s8, zero
                  lui          s9, 194183
                  add          t1, a3, t1
                  addi         a5, a7, 928
                  slli         a2, a6, 30
                  auipc        a5, 1019509
                  sll          ra, a3, s1
                  or           gp, s11, a6
                  or           t3, s9, sp
                  xori         s2, s3, -2023
                  nop
                  srl          s9, gp, t3
                  and          a3, a6, s5
                  or           s3, zero, s2
                  sra          a6, a5, s1
                  lui          a0, 925487
                  sltu         s8, s3, t5
                  sll          s0, t2, a5
                  sub          s10, s5, s1
                  xor          tp, ra, s8
                  or           t5, sp, s4
                  srli         gp, t0, 25
                  lui          t1, 663720
                  auipc        a4, 238612
                  andi         s10, a3, 291
                  sll          s9, a5, s2
                  sra          zero, t0, t4
                  xori         a3, s4, -1818
                  xor          s11, a3, s5
                  and          s7, a6, s2
                  lui          s7, 493137
                  slli         s8, t4, 19
                  or           s0, t3, s0
                  sra          s9, t3, zero
                  ori          ra, t0, -1493
                  lui          a2, 918184
                  sub          zero, a5, a4
                  add          gp, s9, s7
                  sra          a3, t1, s4
                  and          s5, s8, s10
                  xori         gp, s9, 688
                  or           s4, t4, a1
                  sra          zero, a4, gp
                  auipc        t1, 497930
                  addi         a7, a3, -827
                  slti         s7, t2, 887
                  srai         t0, t3, 25
                  xori         a6, sp, -969
                  ori          s5, a7, 922
                  auipc        s7, 428964
                  nop
                  ori          s0, t3, -1723
                  srai         s2, s4, 18
                  ori          ra, t2, 624
                  srai         a5, a2, 10
                  nop
                  add          s5, s6, a2
                  sub          s9, a2, a5
                  srli         a3, sp, 4
                  slli         s3, t6, 28
                  srai         s2, a1, 21
                  sra          gp, a3, t2
                  sll          s8, a4, s3
                  sub          s2, t4, t0
                  srl          a0, t0, s8
                  andi         t3, a2, -1418
                  ori          t2, tp, -1537
                  sra          s11, s4, s9
                  xor          a4, t5, t4
                  auipc        sp, 493908
                  srai         a6, t6, 10
                  lui          t0, 374893
                  srli         a1, a3, 1
                  ori          sp, s11, -1403
                  lui          t0, 964272
                  andi         s0, s8, -2031
                  sltu         s10, a0, sp
                  sub          t5, a1, a4
                  nop
                  xor          t5, zero, s11
                  slti         sp, s2, 1243
                  sltu         ra, a2, zero
                  lui          ra, 641891
                  srai         zero, t6, 14
                  sltiu        ra, a6, -1798
                  sltiu        a3, s1, -1565
                  sltiu        s8, s4, -1141
                  srli         a4, a6, 7
                  xori         s10, s1, -1505
                  sll          s5, t3, a2
                  sll          sp, s4, s6
                  sll          t4, a0, t0
                  slt          s9, a3, t0
                  srli         s0, s4, 19
                  ori          a7, s7, 1646
                  nop
                  srai         a4, s0, 3
                  add          a1, t5, a5
                  addi         gp, s8, 470
                  srl          s8, a2, a0
                  srli         gp, tp, 25
                  sub          sp, s8, s5
                  addi         s9, s10, 403
                  or           s7, ra, s11
                  slli         a4, a6, 17
                  andi         t4, a4, -229
                  add          a5, a4, a0
                  xor          s8, a5, a7
                  srl          t5, ra, s7
                  auipc        t5, 961283
                  srl          gp, a3, t6
                  ori          a2, t5, -1409
                  ori          sp, s3, 105
                  xori         s11, zero, 1796
                  sll          a6, s9, t5
                  ori          ra, s10, 1938
                  sltiu        s3, s1, -1076
                  slti         s0, tp, 1476
                  add          t5, s10, t5
                  nop
                  addi         a5, s4, 1618
                  slti         s4, s7, 1013
                  sub          a0, a5, s7
                  srai         a7, gp, 13
                  lui          s9, 734462
                  sll          t4, s4, ra
                  add          t0, s10, t3
                  ori          a3, s3, -1431
                  srl          a2, s11, s2
                  auipc        s8, 983082
                  slt          a5, s6, s2
                  slt          s2, t5, gp
                  add          s7, zero, a0
                  ori          s0, s1, 119
                  xori         a2, a4, 78
                  or           s5, t1, gp
                  slti         s0, a7, 863
                  srli         a6, s7, 18
                  addi         s11, gp, 1870
                  slli         s4, s10, 30
                  srai         gp, s7, 22
                  slti         a0, zero, 445
                  slti         s9, t1, -251
                  andi         t4, t0, 464
                  add          t1, t4, a1
                  xori         a1, a7, 1156
                  srli         a5, s9, 6
                  auipc        t1, 874551
                  sub          tp, a7, s4
                  addi         a5, s1, 720
                  sltu         a5, a2, a3
                  sub          s0, gp, t3
                  sra          s9, s3, sp
                  slti         a7, ra, -1656
                  auipc        tp, 979482
                  nop
                  ori          s4, s3, 1249
                  sll          gp, a5, t5
                  auipc        s11, 290562
                  slt          s2, a6, a1
                  srl          t5, a4, a0
                  sll          a5, a6, a6
                  addi         t0, s4, 717
                  slti         gp, s10, 386
                  addi         s2, sp, -1875
                  slti         s11, s11, 1961
                  ori          gp, a0, 1171
                  or           a7, gp, s10
                  sltu         gp, s9, s3
                  slli         a3, s1, 8
                  andi         s9, s6, -436
                  slti         t1, a2, -198
                  sll          s8, t3, s2
                  srl          t2, s1, tp
                  lui          zero, 916066
                  slt          a2, s1, s3
                  srl          s11, t0, t0
                  slti         s9, s5, 851
                  or           s11, a2, s9
                  ori          sp, a4, -553
                  slt          t5, s11, t1
                  srai         t2, a2, 31
                  sltiu        ra, s11, -1715
                  srl          s2, s8, t5
                  or           a7, s9, a2
                  ori          s0, tp, 1826
                  sub          t4, sp, t6
                  or           s0, a5, s6
                  sltu         gp, t4, s0
                  xori         s7, tp, 738
                  add          tp, sp, s4
                  and          s3, t0, ra
                  sll          zero, s11, a7
                  auipc        t4, 258875
                  sll          s10, t2, gp
                  lui          t1, 685773
                  xor          s10, s6, s11
                  sra          t0, ra, a3
                  xor          s7, a0, s2
                  srai         tp, t1, 6
                  auipc        a0, 982865
                  auipc        t0, 534177
                  nop
                  lui          t1, 249126
                  add          t0, tp, ra
                  andi         s7, s4, -917
                  sltiu        tp, a4, 188
                  srai         a1, ra, 20
                  or           t0, t3, a2
                  sra          s9, a7, a0
                  or           a0, a1, a6
                  xor          a5, tp, t1
                  nop
                  sltiu        a3, s0, 387
                  add          s5, a2, tp
                  addi         sp, t0, -1181
                  sra          s4, a6, s1
                  xor          t3, ra, a3
                  nop
                  addi         a4, tp, 551
                  slt          a2, t1, s6
                  sltu         t0, s3, a4
                  nop
                  slti         s8, t3, 1276
                  and          gp, tp, s3
                  sra          a7, a4, t0
                  addi         s4, a7, 1957
                  lui          t0, 781556
                  slt          s11, s3, t0
                  sll          t1, a4, t2
                  lui          a6, 273313
                  nop
                  xor          s8, s5, tp
                  slt          a1, a0, s10
                  xor          a3, s6, sp
                  xor          s4, s11, s4
                  andi         s5, s6, -404
                  srai         a5, tp, 22
                  slti         s4, a6, 1425
                  xor          a0, s7, tp
                  nop
                  andi         s2, a7, 14
                  ori          zero, t2, -1347
                  or           a4, ra, s0
                  slli         t2, gp, 9
                  andi         a2, tp, -539
                  sll          a4, s2, s3
                  slli         s7, s10, 28
                  slt          t3, a5, s6
                  xori         t0, a4, -1226
                  xori         s2, s1, -212
                  addi         tp, s2, 732
                  xor          s2, t5, t3
                  andi         a7, t1, -1091
                  xor          s0, a3, t6
                  slt          a6, s11, s7
                  or           a5, gp, sp
                  sltiu        t5, a5, 2012
                  or           s10, t5, t0
                  srai         a5, zero, 13
                  xori         t0, a6, 1603
                  addi         a1, s5, -822
                  srli         tp, t0, 22
                  sll          a7, a3, s7
                  lui          t3, 786014
                  sltu         t0, t3, a1
                  or           a1, t4, t1
                  sra          a1, s8, t0
                  slli         s8, zero, 14
                  sll          t2, t3, a2
                  lui          a7, 64048
                  ori          s2, a0, -730
                  or           t2, s8, s8
                  auipc        s2, 127136
                  xori         s10, a1, -293
                  slti         s11, t3, 1087
                  slti         gp, t5, 585
                  srli         a0, t0, 1
                  xor          a7, tp, s4
                  sll          s10, s2, zero
                  auipc        t3, 127683
                  slli         ra, s10, 16
                  and          a1, t6, a1
                  add          s11, s4, a5
                  slt          s11, a3, tp
                  srai         s5, t4, 4
                  sub          a1, s5, t2
                  sltiu        a6, zero, -138
                  add          t0, t0, a1
                  auipc        a7, 933507
                  srl          tp, t3, s4
                  and          a2, zero, s5
                  sll          ra, s6, t3
                  xor          a4, a5, s0
                  xori         s9, zero, 1325
                  sltiu        t2, s7, 478
                  xori         a7, s7, 488
                  sub          a7, s3, a2
                  xor          s9, s5, a5
                  sra          gp, t5, t5
                  sll          zero, t2, s7
                  sra          a6, zero, a5
                  ori          tp, s11, -1385
                  ori          a6, t5, -861
                  srai         s5, t3, 27
                  lui          t5, 319481
                  ori          t5, tp, -696
                  nop
                  sll          s11, t5, gp
                  andi         s2, a5, -597
                  sll          s9, t6, a3
                  slt          s11, t4, zero
                  nop
                  auipc        s9, 423116
                  andi         gp, t5, -746
                  slli         t5, s5, 0
                  sub          t4, zero, s10
                  sll          t4, s1, t6
                  slt          gp, t1, s6
                  auipc        a4, 346053
                  and          s0, a7, a4
                  andi         a1, s8, 896
                  or           t2, s5, s6
                  sltiu        s9, s7, 1688
                  lui          a6, 285315
                  nop
                  andi         s8, t1, 572
                  srl          s2, a6, a3
                  and          a7, a5, t6
                  add          s5, s6, s6
                  sub          t2, s5, a6
                  sltiu        s2, ra, 514
                  slti         s4, a0, -686
                  sub          s2, s7, a7
                  add          s3, sp, s7
                  andi         t2, s1, -1241
                  sltiu        sp, a6, 1984
                  nop
                  sub          a0, t3, a4
                  slt          tp, a0, t1
                  slli         s0, t0, 25
                  sltu         s2, a2, t6
                  srl          s8, a0, ra
                  slli         t4, s3, 30
                  srl          s9, t0, a5
                  xor          t3, zero, sp
                  slt          a3, a6, t3
                  nop
                  srai         t1, a6, 11
                  xor          t3, ra, t4
                  sltu         s4, zero, t3
                  sra          zero, t5, a3
                  slti         s2, sp, 1750
                  sra          sp, t4, t4
                  xori         a1, t1, -347
                  addi         ra, s1, 805
                  srl          tp, t2, t2
                  ori          a5, zero, 520
                  slli         s5, s8, 22
                  slt          s11, s5, a5
                  lui          ra, 803590
                  sltiu        s5, s6, -1397
                  andi         t5, t0, 1670
                  sra          s2, t6, s8
                  slti         a1, t6, 1513
                  srl          s3, s8, t1
                  and          t1, a3, a2
                  srli         a6, a2, 2
                  slti         zero, s3, 1775
                  srai         ra, a6, 16
                  sub          s4, t6, t6
                  srai         ra, zero, 18
                  srl          a6, a6, t4
                  auipc        s10, 45410
                  ori          sp, s2, 1960
                  sltiu        ra, a3, -282
                  or           a1, s10, a4
                  slti         s8, a6, -1164
                  slti         s3, a3, 1457
                  sltu         s5, s10, ra
                  sra          a5, a4, a0
                  sub          a5, s11, t2
                  and          a2, s1, s5
                  slli         tp, gp, 1
                  nop
                  slt          s5, ra, zero
                  slt          t5, t5, s2
                  sltiu        s5, t4, 1392
                  lui          ra, 469735
                  sltiu        a6, s2, -273
                  srai         s8, s9, 7
                  and          ra, a0, s0
                  auipc        s2, 1011157
                  srai         a0, zero, 0
                  srai         a3, a7, 0
                  or           a2, a3, s1
                  nop
                  addi         t5, s4, -1647
                  slti         s0, t3, -704
                  auipc        s11, 656040
                  xor          t5, t1, a0
                  sltiu        s9, s11, -878
                  sltu         s3, t5, a1
                  slti         tp, s6, 943
                  xor          a2, sp, t2
                  srai         t3, a6, 5
                  auipc        s11, 523850
                  sltiu        t4, a5, -1677
                  or           s2, s9, a6
                  srl          sp, s4, s8
                  nop
                  slt          a1, s9, a3
                  sltiu        sp, a6, 2042
                  xori         t4, s7, 2029
                  slti         s3, t5, -246
                  sra          a3, a0, a2
                  srl          s3, t2, s2
                  xori         t2, ra, 766
                  addi         t2, s11, -1588
                  auipc        a1, 91836
                  sub          s4, s1, t2
                  slt          a1, t1, s2
                  slt          s2, ra, zero
                  sub          s4, s2, gp
                  and          s8, s3, a3
                  auipc        tp, 349904
                  or           ra, s4, t5
                  ori          gp, s4, 1714
                  xor          a4, s0, ra
                  or           a6, tp, s4
                  srli         sp, a1, 22
                  xori         a7, t0, -256
                  lui          ra, 101369
                  sltiu        t5, s11, -1566
                  lui          sp, 343843
                  add          t3, t0, t4
                  sra          tp, t5, s3
                  or           a1, t0, s6
                  srl          a2, tp, s4
                  lui          s10, 373479
                  and          s0, a6, a3
                  ori          a4, a6, -1758
                  srai         a6, s10, 19
                  sub          a2, s8, a1
                  xor          a7, sp, a7
                  srli         t2, zero, 19
                  xori         s3, t1, -235
                  srl          t0, s8, tp
                  nop
                  srli         ra, sp, 27
                  slli         a7, gp, 29
                  addi         t1, s9, -1271
                  sub          s9, tp, t5
                  slti         t2, s2, -960
                  and          s11, t6, t6
                  slt          a0, sp, a3
                  sra          s2, sp, zero
                  srl          s10, s10, s3
                  slli         s0, ra, 18
                  lui          a0, 321565
                  or           a3, a3, s3
                  xor          s3, s7, t6
                  add          a4, s6, a6
                  sub          a3, a6, gp
                  addi         sp, s3, 1083
                  sltu         t1, a2, t0
                  srl          a7, tp, gp
                  slt          s8, s11, s11
                  xor          t0, t3, s2
                  xor          s10, s0, t3
                  ori          s3, s7, -1476
                  slt          a2, a7, a0
                  sub          a6, s8, zero
                  nop
                  or           zero, t6, sp
                  sra          s4, a1, a4
                  andi         s9, a7, 634
                  srai         a7, s2, 16
                  xor          s8, a0, t2
                  xori         s10, t0, -1888
                  auipc        s9, 1611
                  sub          ra, t5, t4
                  slti         a6, sp, 36
                  addi         sp, s6, -1923
                  slti         s7, t0, -1740
                  xor          gp, s5, a2
                  sra          s11, s4, s0
                  slt          a7, t6, tp
                  srl          s4, s1, s5
                  or           s9, a0, s3
                  lui          a5, 316253
                  srli         a4, a2, 18
                  lui          a2, 203207
                  srli         s9, t5, 7
                  sltiu        s10, s9, 371
                  nop
                  andi         t0, ra, -1688
                  xori         gp, a5, 821
                  sll          s11, a0, zero
                  slti         a5, s1, -1557
                  andi         t0, t3, 1495
                  sub          s7, s0, s1
                  sltiu        t5, s11, -2035
                  xor          a2, a2, t4
                  addi         zero, ra, 257
                  sub          t4, s6, s6
                  lui          s0, 76731
                  xor          a5, t4, s2
                  ori          zero, sp, -1859
                  sll          ra, a6, t5
                  andi         a5, a5, -967
                  sra          s0, s10, s5
                  addi         a6, gp, 122
                  slt          t5, t6, s3
                  auipc        t1, 600165
                  xor          ra, t6, a7
                  ori          s3, a4, -261
                  and          tp, t3, zero
                  addi         t4, a2, -628
                  slti         s10, s7, -1479
                  nop
                  or           a4, s3, t4
                  slti         s7, ra, -1002
                  nop
                  and          a2, t2, t2
                  nop
                  sra          a7, s2, s10
                  andi         gp, a0, -1322
                  slli         sp, tp, 4
                  srai         a0, a3, 30
                  addi         s10, a3, 1451
                  sltu         t5, t6, s5
                  sub          a4, s10, t4
                  srai         a1, s3, 15
                  sltu         s2, a5, t3
                  sll          a3, t2, t6
                  or           a1, a0, a5
                  sltiu        s11, s0, 723
                  sltiu        t2, t3, 1493
                  auipc        a6, 145666
                  sll          s5, s6, tp
                  slt          t1, s11, sp
                  xori         gp, s6, -202
                  slti         s3, a5, 471
                  nop
                  slti         s4, s7, -1640
                  xor          zero, s5, a7
                  srli         sp, a5, 12
                  xor          zero, t5, s9
                  and          a6, s10, t1
                  and          a1, t2, a0
                  srli         t5, t6, 6
                  sll          t1, a3, a2
                  or           t3, sp, s5
                  slt          s5, s0, a4
                  lui          s8, 751920
                  srli         tp, a6, 11
                  nop
                  sltiu        s3, ra, 1363
                  ori          a3, s1, 524
                  sub          s3, s4, a6
                  xori         t4, s3, 1755
                  slt          a5, t0, tp
                  sltu         s3, tp, a3
                  sra          tp, t4, tp
                  slti         sp, a2, -1969
                  and          t1, t2, s5
                  and          t4, a7, s7
                  sltiu        s10, t2, 47
                  nop
                  and          t2, a0, t3
                  sltu         t3, s0, t0
                  slli         t2, s8, 15
                  srl          ra, a7, a0
                  sltiu        s9, s1, -149
                  auipc        t1, 567269
                  srai         s4, a1, 23
                  nop
                  add          t0, a3, zero
                  auipc        a4, 1015999
                  addi         a4, a2, -820
                  andi         s10, s7, 1028
                  sltiu        t3, gp, 2006
                  slti         s4, s3, -394
                  slt          t1, t0, t0
                  srli         s3, a2, 1
                  addi         a5, s1, 280
                  slli         s8, a4, 7
                  sltiu        s8, a2, 202
                  sltiu        s8, zero, -526
                  lui          s5, 883241
                  and          a6, a6, a4
                  slt          s11, s5, t0
                  or           t0, a6, a3
                  auipc        gp, 79849
                  lui          a4, 121888
                  xor          s8, t5, s8
                  xori         s11, ra, 373
                  sltiu        a0, s9, -1579
                  add          a5, s2, a4
                  ori          t2, a2, 755
                  slli         tp, zero, 17
                  sltiu        s10, t6, 1363
                  ori          gp, s2, -1541
                  xori         a5, s11, -1292
                  or           a0, tp, s8
                  auipc        s0, 493827
                  nop
                  srl          s3, s11, t1
                  xori         a5, tp, 1320
                  sub          a6, zero, a0
                  lui          s11, 497230
                  or           s8, s11, t3
                  slli         s8, s2, 23
                  srli         s5, s10, 6
                  slli         s4, s3, 13
                  ori          s11, tp, 136
                  srai         t0, a2, 30
                  lui          zero, 513301
                  sra          a4, s10, s6
                  add          s8, a2, a5
                  or           s2, gp, s6
                  srli         s7, a6, 15
                  slli         a6, s1, 13
                  xori         s10, ra, 627
                  srl          a1, s8, s3
                  auipc        s9, 867786
                  sll          s0, sp, a3
                  slti         s9, a7, -1989
                  slt          t4, a2, t5
                  srli         t2, s10, 2
                  nop
                  srl          t0, a6, t6
                  nop
                  and          a3, s3, s10
                  andi         s4, s1, -1729
                  lui          s8, 401623
                  srl          sp, a2, t0
                  srai         gp, s1, 21
                  slti         ra, t6, -1257
                  add          t1, t4, s7
                  slt          a3, s9, s7
                  ori          t1, s0, -1627
                  andi         s10, zero, -1476
                  slt          s10, zero, s6
                  sub          gp, t3, s10
                  xori         t3, zero, -160
                  sra          s11, s2, a3
                  xori         t0, s10, 1207
                  sltiu        a4, t1, -1818
                  sra          t4, gp, ra
                  slti         s4, ra, -1365
                  lui          a2, 738254
                  xor          t0, t6, a5
                  xor          s2, t2, s9
                  addi         t1, s4, 1730
                  srai         ra, s2, 4
                  xor          s8, t5, a2
                  sll          s10, t2, a5
                  slti         s5, a5, 219
                  sltu         tp, t2, gp
                  xori         s8, s2, 2026
                  srl          a5, t3, t1
                  slt          tp, sp, s9
                  add          s3, s9, s9
                  srli         tp, gp, 20
                  sub          a4, a3, t3
                  lui          t5, 840356
                  sltu         s9, s3, s2
                  xori         t2, t1, 2005
                  srai         s3, s11, 24
                  xori         s3, s11, 1936
                  sra          gp, a2, t4
                  lui          t5, 259688
                  and          zero, s4, t3
                  slti         sp, s3, -939
                  lui          ra, 527570
                  sltu         gp, gp, t6
                  lui          s7, 408705
                  sltiu        a1, a0, -380
                  ori          t0, a1, -886
                  sra          a1, t5, a6
                  ori          s7, t6, 1148
                  srai         a6, s11, 20
                  addi         s5, t6, -1417
                  xor          t4, t3, t1
                  sll          a6, s9, a4
                  addi         a4, s9, 1459
                  sub          t4, s10, a0
                  ori          s11, zero, -1412
                  add          s5, gp, s11
                  sll          s8, t5, s6
                  slt          gp, t5, a3
                  lui          zero, 646791
                  or           gp, t3, a7
                  li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           gp, 0x80000000
                  li           s8, 0xffffffff
                  li           t2, 0x1d252771
                  li           a5, 0xddcb6992
                  li           s10, 0xc63dde5b
                  li           s4, 0x80000000
                  li           a0, 0x80000000
                  li           a1, 0x0
                  li           t4, 0x80000000
                  nop
                  addi         s10, a6, -556
                  auipc        s10, 977345
                  lui          a5, 728285
                  lui          s10, 950880
                  auipc        s4, 929807
                  auipc        t4, 635058
                  addi         a5, s4, 1862
                  lui          s4, 932369
                  add          t4, s10, s10
                  auipc        gp, 258853
                  nop
                  sub          t2, t2, a6
                  lui          s4, 261955
                  nop
                  add          t2, a6, gp
                  add          a0, s4, s10
                  nop
                  nop
                  addi         s4, gp, -1916
                  addi         a0, s10, -1689
                  sub          gp, a5, a0
                  addi         t4, a6, 1692
                  add          a6, t4, a6
                  auipc        a1, 476140
                  sub          gp, t2, gp #end riscv_int_numeric_corner_stream_3
                  or           a3, a1, a5
                  xori         s3, sp, 193
                  xor          t5, s10, s2
                  nop
                  xor          s0, s4, t3
                  sltu         s4, s1, t1
                  addi         a6, tp, 1436
                  xor          sp, a2, t3
                  slt          a1, s4, a7
                  xor          t1, t2, sp
                  and          sp, s7, gp
                  sub          a4, t4, t1
                  sltiu        ra, a5, -1343
                  srl          a2, a1, s8
                  sra          t5, t3, s1
                  add          a4, t4, ra
                  sub          a7, t1, s10
                  sub          ra, t4, a2
                  srai         t0, zero, 8
                  and          a5, s0, a0
                  xori         s7, a5, 1053
                  xori         s3, s11, 225
                  xor          s3, t4, gp
                  sra          s4, s11, a4
                  sltu         a7, ra, s5
                  sll          zero, t3, s2
                  srl          gp, a2, s1
                  sltu         t3, t1, t4
                  xori         tp, s1, -1421
                  slli         t2, s5, 27
                  sll          s0, s11, a2
                  srl          t3, t3, s3
                  slt          t0, t1, a1
                  sub          a7, t1, s0
                  slli         s3, a0, 16
                  and          s4, a0, gp
                  add          a1, tp, t4
                  slt          s8, s9, gp
                  or           t1, sp, t6
                  xor          tp, s9, s7
                  and          a5, s5, a2
                  and          t0, zero, s11
                  slt          ra, a5, s1
                  sub          s7, s9, sp
                  sll          s9, t5, t2
                  and          s0, t1, s1
                  xori         s5, a7, 929
                  sra          gp, a0, t3
                  and          s2, t2, zero
                  sub          sp, t6, a4
                  andi         t2, s2, -774
                  add          gp, s11, s7
                  andi         s2, a1, 2047
                  ori          s4, t5, 1207
                  xor          a7, s7, a3
                  andi         s11, a1, -1007
                  lui          s11, 734854
                  xori         s7, t1, -140
                  srai         a6, s11, 31
                  addi         ra, s3, 369
                  lui          a3, 678613
                  add          s11, a3, a2
                  sltu         s8, sp, t3
                  sltiu        t3, t6, -1189
                  sll          a6, s0, t5
                  sll          a3, s11, s8
                  srl          t1, t0, ra
                  and          sp, s10, t5
                  sub          a0, t6, s11
                  srli         t1, a2, 23
                  sub          t2, t1, s6
                  nop
                  nop
                  srli         s5, t1, 15
                  nop
                  nop
                  srai         s4, s2, 0
                  srli         s9, t2, 11
                  xor          t1, a3, t3
                  sub          t2, s10, a0
                  sltiu        s11, a6, 355
                  xor          tp, a0, ra
                  sltiu        t3, a4, 1929
                  srl          sp, t2, t4
                  srl          s0, a3, s4
                  andi         s7, t3, -1526
                  sltiu        a4, t4, 53
                  xori         t5, zero, -2038
                  auipc        t5, 555117
                  nop
                  nop
                  and          a3, s3, ra
                  andi         a0, t5, 1639
                  srli         s8, a5, 9
                  auipc        t2, 128590
                  slti         a0, a4, -152
                  lui          t5, 221690
                  sra          a1, a6, t6
                  lui          s3, 1029111
                  auipc        a6, 558030
                  lui          s4, 6533
                  xor          s3, s3, t6
                  srli         a7, s5, 31
                  srl          sp, a5, a4
                  sltiu        s11, t2, 20
                  sra          s2, t2, s5
                  sub          t3, a2, t6
                  addi         a4, s8, -84
                  sll          a6, t0, s10
                  slti         t3, t6, -1950
                  or           s4, zero, a2
                  auipc        a5, 391618
                  add          t2, a4, s9
                  or           t1, s11, a1
                  sltu         s4, s5, t2
                  xor          s2, sp, ra
                  and          a7, s8, s7
                  sub          t0, a0, s5
                  xori         a2, a3, 252
                  andi         ra, s0, -1229
                  auipc        a1, 689284
                  lui          s5, 90657
                  nop
                  ori          t4, ra, -1436
                  slt          t4, s3, a5
                  slt          sp, s11, t6
                  slti         s4, a0, 33
                  andi         sp, a4, -633
                  srli         a5, a1, 12
                  srli         a2, a0, 3
                  auipc        s9, 274794
                  sltu         a0, t4, s2
                  or           t4, s2, sp
                  sub          s10, s6, a4
                  srl          t0, t1, s2
                  slli         s3, t4, 15
                  srai         sp, s2, 25
                  xor          s2, sp, s6
                  slti         a6, ra, 838
                  srli         a6, zero, 29
                  or           a6, a0, s10
                  xor          s11, s5, s4
                  sltu         s8, s2, ra
                  slti         t5, t4, -831
                  xor          sp, t0, ra
                  andi         gp, t3, 450
                  xori         a1, s7, -1371
                  ori          ra, s10, 528
                  add          s8, s7, zero
                  slti         a7, a1, -461
                  andi         sp, s11, -1018
                  sub          s2, a0, s3
                  xor          gp, s7, s1
                  srl          t4, a4, t5
                  add          tp, s9, s1
                  sra          a5, s3, s0
                  slti         s9, a2, -326
                  add          s9, zero, t5
                  sra          zero, s3, s10
                  srai         s7, s10, 26
                  nop
                  add          s7, s8, t3
                  ori          tp, t5, -1708
                  nop
                  sra          s3, a5, a2
                  srl          s7, t6, s2
                  slli         t0, a3, 29
                  sub          s9, s3, a6
                  addi         s5, s9, -1015
                  slli         a0, a1, 6
                  slti         sp, s10, -1594
                  slli         s5, a4, 9
                  slti         s2, s5, -1092
                  sltu         sp, gp, s5
                  ori          s4, a2, 1751
                  auipc        a6, 107709
                  nop
                  slli         tp, a5, 13
                  or           s10, t5, t1
                  and          sp, a7, t0
                  xor          t2, ra, s1
                  slli         a2, s7, 25
                  xor          a7, s9, t6
                  sll          t1, a2, t3
                  sll          s7, a1, a4
                  ori          a1, a5, 1818
                  andi         s3, sp, -1667
                  xori         s0, a7, 860
                  srai         s4, s10, 0
                  sub          a0, zero, gp
                  slli         s7, s0, 2
                  slli         a3, s10, 8
                  slti         gp, s8, 394
                  slti         sp, t3, 142
                  sll          a5, ra, t2
                  sltiu        s4, gp, -1501
                  srl          t4, a1, t2
                  slt          t0, s5, s5
                  slt          t1, t0, t1
                  or           sp, s10, t4
                  sltu         a5, sp, s4
                  andi         s7, s11, -1550
                  sll          s10, t2, a3
                  lui          t2, 647170
                  slli         s3, t6, 5
                  ori          a0, a5, 909
                  lui          a4, 664906
                  slti         sp, a3, 1091
                  xor          a4, s6, a5
                  andi         s0, t6, -1764
                  srai         a3, a2, 21
                  andi         a4, t5, -2008
                  srai         a7, s10, 20
                  lui          a2, 65989
                  srl          tp, t0, s5
                  auipc        gp, 972503
                  sltu         s9, s6, s1
                  addi         s5, s5, -2031
                  sra          s4, t3, t2
                  xori         s4, s3, 866
                  sll          a7, t6, t1
                  nop
                  andi         a0, a2, 506
                  srai         a5, s11, 28
                  or           t0, tp, a4
                  nop
                  srai         zero, a2, 21
                  slti         a4, s2, -437
                  sltu         t1, s11, t3
                  xori         a4, ra, 340
                  sub          a2, s3, s7
                  addi         gp, a0, -964
                  srli         s5, ra, 27
                  slt          ra, s2, s8
                  sra          a3, a5, a2
                  sll          s3, t1, s6
                  auipc        a0, 732274
                  nop
                  sub          gp, s7, s0
                  slli         gp, s2, 18
                  or           a2, s9, sp
                  srai         a2, a4, 6
                  sra          ra, s2, a0
                  ori          zero, s3, -1213
                  addi         t4, s8, 1464
                  add          zero, s6, a0
                  lui          s11, 871026
                  sltiu        t2, tp, 228
                  xori         t0, a4, 675
                  addi         a0, a2, 488
                  sll          zero, a6, a3
                  and          t2, s5, s2
                  sub          s3, a5, a6
                  sll          s5, t1, t0
                  sltu         tp, s10, s8
                  lui          tp, 1026858
                  ori          tp, tp, -1477
                  sra          s9, s5, t3
                  sltu         a4, sp, a0
                  sltu         s9, a0, a4
                  nop
                  sltiu        s0, zero, -77
                  srai         s10, t2, 0
                  sltiu        a4, t3, -149
                  ori          s0, t1, 1505
                  slti         s10, a1, 1221
                  nop
                  or           a3, a0, t3
                  and          a4, a5, a6
                  addi         a6, s10, 318
                  lui          t4, 546493
                  ori          zero, s5, -1370
                  addi         a3, t1, 296
                  addi         s5, a3, 1392
                  auipc        t5, 339148
                  and          s3, sp, s7
                  sltiu        s9, t3, 847
                  and          s11, a7, t6
                  auipc        s2, 1021104
                  addi         tp, t5, -1481
                  sltu         a3, t5, t5
                  auipc        a3, 703371
                  or           s5, s1, t0
                  sll          sp, sp, t2
                  sltu         sp, gp, a2
                  srl          a6, s11, a0
                  sltu         s0, s9, a6
                  and          a1, sp, s1
                  sltiu        s4, s7, 1305
                  nop
                  and          s11, a0, a6
                  auipc        s11, 353936
                  sltiu        s8, a0, -1070
                  add          s0, s1, s0
                  sra          a4, a2, sp
                  sub          sp, s8, s7
                  auipc        a1, 384100
                  slt          s3, t2, zero
                  sub          s7, s9, t5
                  andi         sp, sp, 1524
                  xori         zero, zero, 1826
                  sra          t4, sp, ra
                  srl          a6, s6, s11
                  sltu         t2, gp, t3
                  lui          sp, 941747
                  lui          s9, 1003917
                  add          t5, s5, t5
                  ori          gp, s4, 819
                  nop
                  xor          tp, t6, t6
                  addi         tp, t2, 1344
                  xor          s4, t3, s10
                  sltiu        tp, s3, 471
                  slti         s3, t2, -663
                  slti         s8, t3, -1322
                  slti         s2, s7, 187
                  addi         a5, a3, 794
                  sltu         s3, a3, a7
                  sll          s0, tp, ra
                  sltu         gp, t4, s9
                  sll          s0, a5, s5
                  and          t2, a1, s0
                  nop
                  add          a0, s8, tp
                  or           s5, a1, s1
                  slli         s3, t2, 21
                  nop
                  sra          s4, t6, s3
                  sltu         t1, s1, tp
                  srli         s0, a4, 18
                  slt          a6, t5, s4
                  sub          sp, s11, gp
                  sltiu        a4, a4, -710
                  sub          a5, a1, a5
                  auipc        t2, 1038082
                  sll          a5, a1, s1
                  xori         sp, s3, 870
                  srl          sp, zero, t0
                  lui          s10, 399401
                  srai         s8, sp, 17
                  slt          zero, t1, t3
                  auipc        t5, 523487
                  nop
                  xor          t0, a6, s6
                  srli         s7, s0, 22
                  sll          s2, s2, t5
                  slti         sp, s2, 1614
                  srli         s0, s9, 5
                  andi         s4, sp, -1499
                  sll          s11, s2, t6
                  xor          sp, a2, s7
                  srai         tp, gp, 30
                  srli         sp, a0, 12
                  nop
                  sltiu        sp, s4, 1871
                  add          s2, zero, a2
                  srli         s0, t5, 30
                  sub          t4, s11, a5
                  xori         a2, t3, 2020
                  auipc        a2, 859769
                  sll          s3, a5, s3
                  sll          s8, zero, s7
                  slt          ra, s9, s10
                  slt          s3, a4, s7
                  sra          s5, sp, a1
                  srl          a0, t1, s5
                  xori         a1, a1, 262
                  srli         t2, s3, 28
                  xori         a1, a6, 1201
                  sltiu        s8, s6, 827
                  nop
                  sub          s2, s10, t3
                  srl          s0, a3, s3
                  slt          gp, s11, zero
                  or           s11, s1, s6
                  slti         s7, a2, 227
                  sll          t5, t0, a3
                  xor          s2, a5, s1
                  ori          gp, s7, -349
                  sltiu        t2, a7, -1082
                  srl          s11, gp, a2
                  or           gp, a6, s1
                  addi         a6, s9, -524
                  sub          gp, a5, gp
                  add          ra, s9, s10
                  sra          a2, s10, tp
                  xori         s7, s7, -1848
                  auipc        t2, 658932
                  sll          t5, s1, a0
                  add          t0, s4, ra
                  sll          t1, s9, t4
                  and          sp, a3, s3
                  srai         s5, a1, 25
                  addi         t0, s10, -1476
                  add          s5, s0, zero
                  slli         t2, s10, 21
                  sra          s11, t5, zero
                  sra          zero, gp, tp
                  xor          t0, t2, t3
                  sltiu        t1, s0, 1968
                  lui          t2, 269824
                  slt          s2, s1, s2
                  or           a4, sp, s2
                  addi         tp, s5, 1306
                  slt          s3, s10, s9
                  sltiu        s8, a0, -1386
                  xori         a6, s7, 1785
                  xori         s4, t1, -1107
                  slt          s9, s10, s6
                  sub          s10, a0, t0
                  sltiu        s5, a4, -1315
                  auipc        a5, 733181
                  sll          t1, s1, t5
                  srl          t3, t4, t1
                  sltiu        s8, s9, 1402
                  slli         t0, a7, 10
                  or           a1, s6, t1
                  auipc        s9, 764828
                  addi         a3, sp, -1847
                  xori         t2, t0, -198
                  sll          a0, s6, s4
                  xori         gp, a6, 1466
                  sra          t0, a7, s6
                  sll          a0, s9, t4
                  sltu         t2, s10, a3
                  ori          s4, s1, -596
                  add          t0, t5, a0
                  srai         t4, zero, 18
                  sra          zero, t1, s11
                  srai         t4, s7, 10
                  or           a4, s1, t1
                  nop
                  sll          s5, s7, s6
                  addi         t0, s4, -189
                  auipc        a1, 795882
                  auipc        a2, 964461
                  xor          a7, s5, t4
                  or           t0, t5, a6
                  slli         a3, a7, 3
                  sub          a4, t4, ra
                  andi         s7, t4, 255
                  lui          t3, 465079
                  sltiu        s2, s7, -657
                  addi         a0, a2, 1796
                  nop
                  slti         s0, a5, 353
                  srai         s9, s5, 26
                  sltu         tp, s2, tp
                  add          s10, a3, s1
                  ori          t3, s9, 1579
                  sltu         t5, zero, sp
                  addi         a6, sp, 1439
                  xor          s7, a3, s10
                  auipc        t4, 513410
                  sltiu        s5, zero, 1172
                  slt          s3, gp, a6
                  srai         s11, sp, 5
                  srli         s11, gp, 11
                  sltu         zero, t4, a6
                  xor          a6, t3, t3
                  srli         a4, t6, 10
                  lui          s7, 743619
                  slt          s9, s10, s6
                  srai         a1, s2, 12
                  slli         sp, a0, 29
                  addi         a5, s3, 699
                  or           s11, t0, s3
                  srl          a4, t2, s6
                  xori         a2, s0, 1940
                  xor          a4, ra, a6
                  sltiu        s8, s4, 340
                  srli         s2, t5, 4
                  sub          a1, s0, a3
                  sll          t5, t1, s5
                  slti         a7, s1, -753
                  ori          t5, t5, 1219
                  li           s11, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           tp, 0xffffffff
                  li           t5, 0x80000000
                  li           a3, 0x0
                  li           a7, 0x9ad92e2c
                  li           t3, 0xffffffff
                  li           a4, 0x0
                  li           t2, 0x80000000
                  li           t0, 0x0
                  li           a5, 0x0
                  auipc        t2, 91101
                  addi         a4, t0, -48
                  lui          t2, 862397
                  add          s11, a3, t2
                  add          t0, t5, a4
                  auipc        a3, 359893
                  addi         t0, s11, 173
                  add          s11, a7, t3
                  auipc        s11, 137341
                  nop
                  lui          a3, 226069
                  addi         tp, a3, -895
                  addi         a4, a4, -917
                  addi         a4, t3, -892
                  add          a5, t2, a4
                  add          t5, tp, a4
                  add          t2, t3, t3
                  auipc        a7, 529191
                  nop
                  addi         t3, t5, -242
                  nop
                  sub          a5, a7, a3
                  auipc        t3, 955845
                  nop
                  nop
                  auipc        tp, 992091
                  auipc        tp, 313396 #end riscv_int_numeric_corner_stream_7
                  or           t3, s8, a6
                  srl          ra, s8, s4
                  sll          t2, ra, a4
                  andi         zero, a4, -659
                  or           a0, s11, s11
                  srl          sp, s1, t0
                  ori          t3, s11, 1789
                  slli         t5, a2, 15
                  addi         a0, s11, -1574
                  addi         sp, s0, -951
                  sra          zero, tp, zero
                  auipc        a3, 141121
                  sll          t0, a2, s5
                  srai         a1, a2, 0
                  or           s8, s5, t2
                  sll          t4, sp, t4
                  ori          ra, a5, 870
                  or           t4, t4, t2
                  addi         zero, t4, -91
                  slt          s5, zero, t6
                  srli         gp, ra, 5
                  xor          a3, a5, s3
                  sub          t0, a4, a6
                  srl          gp, a2, a1
                  auipc        t5, 151542
                  sltiu        t5, t3, 1709
                  sltu         sp, s4, s0
                  auipc        tp, 556674
                  sub          t2, a1, s7
                  and          ra, a0, zero
                  and          sp, ra, a1
                  xor          s8, s10, s7
                  sub          t1, s7, s11
                  xori         a1, s10, -954
                  addi         a7, t0, -380
                  sltu         s0, a6, ra
                  slt          a1, s6, a2
                  ori          s4, s9, 809
                  lui          s2, 696527
                  xori         a3, s1, 1829
                  slt          s2, s7, ra
                  sll          zero, t4, t0
                  addi         a2, sp, 801
                  auipc        t3, 1018168
                  andi         tp, a5, -453
                  lui          s9, 893203
                  sltiu        s8, s6, 809
                  xori         a7, sp, -1832
                  ori          t1, tp, -239
                  xor          a5, s0, a1
                  and          a4, sp, t6
                  xori         t4, sp, -1631
                  slti         s4, s3, -1482
                  or           t4, zero, s10
                  slli         t5, gp, 9
                  or           a2, a0, s6
                  sra          zero, t1, t0
                  srli         gp, a0, 23
                  or           s5, s5, zero
                  xor          s10, sp, s10
                  add          sp, s1, s2
                  slti         t5, s4, -1195
                  xor          s4, t3, a3
                  xori         s9, s5, 1269
                  auipc        s11, 209711
                  xori         ra, s8, -1102
                  add          t4, s0, zero
                  sltiu        t3, t3, 1912
                  ori          a3, s4, -823
                  sll          t4, zero, t1
                  and          s4, ra, a2
                  add          t4, sp, s5
                  auipc        zero, 883980
                  and          s7, t0, sp
                  and          t5, tp, s9
                  slti         s3, s10, -932
                  slti         tp, s4, 1759
                  sltiu        a7, s8, -1755
                  nop
                  nop
                  add          s11, s4, s7
                  andi         t3, tp, 1162
                  andi         t4, s3, 704
                  nop
                  slli         t0, t3, 19
                  slt          t2, s1, t3
                  sltiu        s0, t0, 1192
                  sub          t5, s2, t1
                  ori          a1, s4, 346
                  srli         ra, s0, 21
                  slt          sp, ra, s4
                  ori          a1, s3, 384
                  ori          t4, s6, -433
                  srai         s7, s3, 0
                  xori         a1, a6, -1165
                  lui          s10, 983302
                  addi         s10, a0, -1770
                  ori          s0, a3, -656
                  andi         t4, t1, 1915
                  nop
                  auipc        s5, 858031
                  slli         a6, s6, 30
                  xor          a1, t3, s6
                  xori         t2, s2, 437
                  xor          s8, s3, s5
                  nop
                  slt          s2, s4, s10
                  slt          a3, s0, s4
                  xori         a4, t0, -1283
                  srl          s3, a3, a1
                  addi         t2, t4, -184
                  lui          t0, 826549
                  srl          s7, t3, t3
                  sub          a7, a0, s6
                  slt          a2, sp, t1
                  sltiu        s2, a6, -1948
                  sltu         gp, s7, ra
                  sltiu        a7, a0, -1846
                  andi         s5, zero, -1213
                  srai         a7, s5, 18
                  slt          sp, tp, s8
                  or           a0, t3, t2
                  addi         t0, zero, -820
                  slt          a2, a6, s8
                  sltiu        a7, s3, 30
                  sll          a6, a6, s5
                  nop
                  auipc        t5, 788386
                  sltiu        a0, s0, -1439
                  slti         s10, sp, 1391
                  lui          a1, 308476
                  xori         t4, t5, 1831
                  nop
                  nop
                  srl          s4, s11, t2
                  sra          tp, t6, t3
                  slti         t0, s1, 1517
                  slt          a7, a0, s11
                  sub          ra, t4, a2
                  sltiu        sp, s2, -286
                  srli         t4, s4, 10
                  add          t0, a0, s11
                  srl          s3, a7, s1
                  ori          a1, s10, -1913
                  sll          a0, s8, s7
                  sra          a5, a2, a1
                  lui          sp, 187137
                  xori         s9, ra, 467
                  slt          s11, ra, s11
                  slti         s7, t5, -1980
                  sltiu        t5, a1, -537
                  sltiu        t3, s11, 1422
                  srl          s10, t1, a4
                  srli         sp, s6, 28
                  lui          s9, 392094
                  sll          zero, s6, ra
                  srli         t0, gp, 6
                  sltiu        t4, a6, -1575
                  auipc        zero, 648867
                  srl          ra, ra, a6
                  lui          s7, 707768
                  sll          s2, t5, s4
                  nop
                  srai         t4, s3, 8
                  addi         gp, s2, -406
                  sub          t5, a5, a4
                  and          t3, s9, s2
                  lui          a6, 573965
                  auipc        s10, 298635
                  or           ra, s8, s0
                  nop
                  auipc        a1, 748977
                  auipc        a3, 762927
                  slt          s5, a5, s7
                  slli         a3, sp, 7
                  srli         t1, a2, 0
                  sltu         t0, s5, s11
                  xor          s10, a4, a7
                  auipc        a2, 736552
                  slt          t5, s7, tp
                  and          a4, s11, ra
                  slt          t5, t1, t5
                  sltiu        s9, s11, 440
                  andi         s2, s10, -1790
                  nop
                  slli         a4, s0, 30
                  addi         s0, a6, -886
                  sltu         ra, tp, a2
                  xori         s9, s1, 1622
                  srli         sp, t1, 3
                  slt          t2, a6, s6
                  andi         s10, s6, -733
                  nop
                  srai         a5, s6, 15
                  srai         t0, a0, 5
                  srai         s9, a0, 18
                  xor          tp, a2, a7
                  and          a5, tp, t2
                  lui          s3, 467988
                  slt          t5, s3, s0
                  srli         a6, zero, 25
                  auipc        s8, 804334
                  sra          sp, t0, a5
                  slti         a4, t4, -1382
                  and          a7, zero, s10
                  auipc        s7, 909085
                  srli         a2, s4, 17
                  ori          a7, a1, 938
                  srl          ra, t6, s5
                  slli         a0, a4, 31
                  and          s2, t5, s0
                  sra          a3, t5, s5
                  auipc        sp, 687136
                  auipc        s7, 148220
                  srl          s10, a7, tp
                  sltiu        t0, a0, -761
                  sub          s0, t3, s9
                  addi         a3, gp, 1690
                  srli         a5, s8, 18
                  ori          s5, a5, 1151
                  auipc        zero, 936810
                  slt          t0, a2, a5
                  xor          s2, a3, t2
                  slli         a3, a4, 1
                  slt          s11, a6, s2
                  and          gp, t4, a0
                  nop
                  or           a4, t0, t5
                  srai         a0, t2, 15
                  lui          s0, 497061
                  lui          a4, 1039655
                  sll          ra, s6, a1
                  xori         s4, s10, -667
                  sll          a1, t0, a5
                  xor          s7, zero, t6
                  and          a7, s2, a5
                  andi         s4, t2, -1289
                  nop
                  sltu         zero, s10, s6
                  srl          t1, t2, t4
                  slt          ra, a6, t2
                  xori         sp, a3, 1061
                  lui          t0, 1028060
                  and          tp, s5, t4
                  nop
                  lui          a2, 709560
                  sltiu        a1, s1, 1884
                  xori         t0, t5, 1964
                  xori         a0, gp, 587
                  srai         s11, a4, 3
                  sll          s8, t0, s3
                  slli         s9, s6, 0
                  or           a7, t4, s6
                  nop
                  lui          t3, 59947
                  slli         a4, s7, 0
                  andi         s3, s4, 1447
                  auipc        t1, 366851
                  sltu         a6, t4, s2
                  auipc        ra, 1474
                  add          t1, t5, s5
                  xori         gp, a2, 132
                  sra          s5, a5, s4
                  sltu         a7, a5, a5
                  sub          s10, a4, s11
                  srl          a0, t2, a6
                  sll          t1, s9, zero
                  ori          ra, s3, -377
                  sub          t2, t1, s7
                  lui          t2, 147070
                  srli         s2, s2, 27
                  sra          s4, s0, t0
                  sub          a1, s2, s3
                  nop
                  nop
                  addi         a3, s1, 1482
                  lui          s5, 863030
                  add          a0, a6, zero
                  srli         zero, t4, 17
                  sltiu        s0, a7, 1735
                  sra          a4, s10, s5
                  slti         s5, s2, -769
                  slli         zero, s11, 16
                  and          s10, t1, t4
                  addi         s7, a0, -1023
                  add          s3, a2, s5
                  xori         a5, s3, 611
                  sltiu        zero, a1, -274
                  lui          a1, 54852
                  srl          t5, s7, t1
                  lui          a3, 515075
                  nop
                  and          s0, s5, sp
                  sltu         t2, s9, t3
                  srl          s9, s2, t6
                  or           s10, t6, t3
                  sra          sp, a2, zero
                  slt          a6, gp, s9
                  sltu         t1, t5, sp
                  sub          ra, sp, s2
                  srl          t2, t4, a3
                  nop
                  xori         a3, s3, 671
                  slti         s4, s2, 1682
                  slt          s9, s7, t4
                  nop
                  slli         a5, s9, 31
                  slti         s4, sp, -971
                  xori         gp, ra, 286
                  auipc        s9, 687533
                  and          t4, t6, s6
                  lui          t0, 468126
                  xor          a6, a4, t6
                  sltu         a4, ra, s3
                  ori          tp, a7, -463
                  sltiu        a1, t1, 619
                  slti         s2, s2, 1793
                  slli         a4, a3, 7
                  sll          a6, t1, t2
                  sltiu        s2, a3, 362
                  srl          a4, a1, a1
                  slli         ra, t6, 19
                  sra          a7, a2, a3
                  slti         s3, s10, 1553
                  nop
                  xori         s2, s6, -1152
                  sltiu        s3, s9, -1808
                  addi         sp, t3, 906
                  and          s8, t4, t0
                  sltu         s3, a7, a7
                  slti         s9, s0, 620
                  auipc        t3, 202309
                  auipc        t1, 415910
                  auipc        s7, 497057
                  xor          t4, s2, ra
                  lui          a1, 87414
                  addi         a6, tp, -1987
                  slt          s3, a0, s0
                  xori         a2, a1, -872
                  add          t1, a2, a1
                  lui          s8, 120112
                  slli         zero, s0, 29
                  slti         t4, s0, 1808
                  add          t1, s9, gp
                  or           a7, zero, s6
                  andi         s0, a7, 763
                  slti         t0, a5, -623
                  sub          t0, s4, a5
                  srli         s10, sp, 25
                  ori          s10, t2, -1986
                  sltu         a4, gp, a1
                  srli         gp, t3, 13
                  addi         a0, sp, -1776
                  srli         t4, t4, 11
                  add          s8, s6, s8
                  srai         s11, zero, 14
                  ori          t3, a3, -1565
                  srai         t1, a0, 18
                  srl          s0, s0, a2
                  srai         a0, s1, 2
                  sltu         s4, t6, t1
                  srai         a7, t6, 19
                  andi         s8, gp, 327
                  sra          tp, t4, a6
                  andi         t1, s10, 281
                  slt          s10, s6, s10
                  add          gp, s9, a0
                  ori          sp, t0, -770
                  add          t3, a7, s10
                  xori         s4, a3, 831
                  srl          s3, s11, a1
                  srai         t4, s5, 19
                  or           t4, s5, t3
                  andi         a1, a5, -1052
                  sra          s2, t2, s5
                  slt          s7, t6, s2
                  slli         a1, s11, 3
                  xor          s3, s4, a6
                  and          a2, s4, ra
                  lui          a4, 245866
                  xor          s3, tp, s0
                  sub          gp, a5, t3
                  xor          a2, a1, t0
                  addi         a4, s8, -541
                  and          a7, t2, s9
                  slti         a7, a4, 697
                  xor          a1, t5, s0
                  slt          s0, a4, s2
                  auipc        a2, 700869
                  sltiu        s11, s1, -615
                  slli         s0, t2, 3
                  auipc        a2, 593593
                  sub          t1, t6, s5
                  sltiu        a0, a7, 58
                  add          a2, a6, s3
                  srl          a1, ra, s3
                  xori         s7, s2, 516
                  nop
                  lui          s4, 834406
                  slti         a2, a3, 966
                  slt          gp, t6, t1
                  and          a1, s4, t4
                  sltu         a0, s0, tp
                  addi         s0, s7, 1069
                  xor          zero, t1, t5
                  and          s3, t1, tp
                  sltiu        a7, s3, -1905
                  lui          sp, 938627
                  xor          a0, t6, s11
                  ori          zero, s11, -962
                  sra          a4, a4, ra
                  sra          a4, t1, t1
                  sra          a0, s9, a1
                  auipc        ra, 89854
                  slti         a1, a1, 720
                  and          a0, a6, s11
                  sltu         t5, a3, t5
                  srl          s2, zero, t0
                  sltu         gp, a6, t5
                  sub          a3, ra, a7
                  sub          a3, t2, s10
                  slti         a2, tp, -807
                  slli         a4, t2, 20
                  sll          zero, a3, s6
                  slli         s10, t2, 11
                  sltiu        s5, s2, 1173
                  sll          a0, zero, a2
                  and          sp, t5, s1
                  xori         s3, sp, 1227
                  slli         a5, t3, 1
                  auipc        sp, 306297
                  add          s5, s1, s5
                  slt          a0, t0, s7
                  slt          s0, ra, s11
                  and          a0, t1, s8
                  sltu         s11, s4, gp
                  srli         a3, zero, 0
                  xor          a5, s1, s6
                  sra          a3, a5, tp
                  andi         s5, zero, -905
                  xor          s0, tp, t4
                  and          tp, a3, a6
                  sltiu        s0, s0, 408
                  xor          s2, s1, s6
                  and          s11, t3, s11
                  slt          t5, a0, s9
                  xor          zero, s8, a6
                  and          s9, a0, a2
                  nop
                  sub          a7, t0, t4
                  xori         t1, t4, -228
                  slt          s7, t1, t0
                  slli         t5, tp, 20
                  sll          tp, t6, sp
                  lui          a3, 519723
                  and          ra, s5, t1
                  add          s10, t5, s11
                  addi         s5, a2, -1894
                  slli         a6, gp, 2
                  srl          s0, t0, s9
                  srli         a2, t2, 12
                  srai         a7, s2, 12
                  srli         s7, s4, 17
                  srai         t5, a6, 0
                  or           a4, a5, s5
                  srli         s0, s5, 31
                  nop
                  sra          s9, s10, t0
                  slti         s2, sp, 138
                  or           a6, s9, s0
                  slti         a5, a2, -725
                  slt          a6, s3, a2
                  addi         t0, a7, -1197
                  srl          s10, s11, t6
                  sll          t2, s7, s8
                  sub          sp, t2, t5
                  sub          a5, t4, a1
                  sltiu        gp, tp, -1783
                  sll          tp, a0, s0
                  nop
                  srai         t3, t2, 0
                  sltu         a5, s9, t0
                  slti         t2, sp, 181
                  and          t5, a5, a7
                  sra          a0, ra, s0
                  xor          s10, ra, s10
                  srl          a0, tp, s5
                  xori         t3, s6, 1598
                  or           a0, t0, t6
                  sltiu        gp, t6, 185
                  addi         s7, s8, -951
                  sub          s11, a5, tp
                  or           a7, a3, tp
                  sltiu        s10, s3, 1337
                  andi         s5, zero, -2002
                  slli         s3, s11, 22
                  slti         a6, s9, -1136
                  sll          a1, t0, t4
                  andi         s11, t5, -556
                  slli         a6, a5, 20
                  sub          s11, s1, s11
                  xori         tp, a1, -1289
                  srli         sp, t2, 3
                  add          s9, t0, s7
                  nop
                  xor          s10, a2, zero
                  sra          a5, ra, a3
                  sra          a7, t6, t3
                  add          a0, s2, t0
                  xori         s7, a3, -983
                  xor          t4, a1, t1
                  lui          s0, 425348
                  ori          t0, t2, 1001
                  xori         t3, t6, -1224
                  and          s0, s4, s8
                  auipc        a3, 301297
                  sra          s8, t2, s11
                  slt          s10, s3, t4
                  ori          a6, a4, -2012
                  slt          zero, a7, t4
                  slt          s0, zero, s1
                  sra          s5, s2, zero
                  sltu         s10, t2, s1
                  nop
                  lui          s10, 461186
                  auipc        s3, 443212
                  sub          a5, s3, s2
                  slli         s11, s0, 13
                  lui          t1, 908147
                  or           s3, a2, sp
                  or           s4, t3, s3
                  xori         s11, t6, -1687
                  slt          zero, s1, t2
                  or           t1, t2, a0
                  srai         zero, a1, 3
                  sll          s0, s11, s3
                  ori          s2, ra, -1449
                  ori          gp, a6, 1985
                  slti         a7, s6, 583
                  addi         s4, s7, 911
                  xor          tp, sp, s10
                  xor          a0, zero, s4
                  slti         a2, a4, -406
                  nop
                  srli         t0, s11, 3
                  slli         s9, t2, 7
                  sltiu        a2, a0, 1651
                  xor          t3, a0, t0
                  nop
                  add          a2, s8, a5
                  lui          t5, 985560
                  xori         s9, t3, 21
                  sra          s4, s3, s5
                  nop
                  srl          s0, t2, t4
                  sltu         a1, s1, a3
                  and          a0, t6, s3
                  sub          a0, ra, a0
                  or           s9, t0, t1
                  addi         ra, t1, -1124
                  or           a4, s5, a1
                  sltiu        t1, a0, -1257
                  sll          t3, a1, tp
                  slli         zero, zero, 2
                  slli         s7, s2, 7
                  slt          s0, s8, t6
                  srl          tp, s6, t0
                  lui          gp, 148725
                  ori          s10, s8, 157
                  and          t1, s1, a2
                  sltu         ra, s9, s11
                  sltu         a0, s8, s5
                  xor          a7, a0, tp
                  ori          a5, a1, -55
                  srl          s9, t0, s7
                  sltiu        a0, a1, 1127
                  slt          s11, gp, s6
                  slt          a4, ra, a3
                  xor          s9, t5, a2
                  ori          s0, s9, -698
                  auipc        ra, 64757
                  sll          s8, a3, a6
                  slti         s7, t3, 683
                  nop
                  andi         tp, s4, 1880
                  nop
                  addi         s3, s3, 1308
                  addi         tp, s1, 955
                  sll          s4, t2, gp
                  sll          ra, sp, sp
                  or           a2, s11, s7
                  lui          a5, 542338
                  sltiu        s8, a7, -636
                  ori          s7, a6, 1489
                  slt          a3, tp, t1
                  addi         s3, t5, -24
                  auipc        a3, 137934
                  xor          s4, a0, s4
                  srai         s10, t3, 30
                  or           zero, s1, t0
                  slli         s7, a5, 25
                  sltu         a4, t2, tp
                  srl          t2, s9, s2
                  sra          a3, sp, s9
                  lui          gp, 253378
                  sub          s9, sp, gp
                  add          sp, s4, a3
                  andi         a5, a7, -1714
                  slt          a4, s6, t6
                  sltiu        s4, a5, 1072
                  or           s0, t5, a1
                  sltu         a3, a6, a0
                  slli         a4, s10, 23
                  srai         a5, a5, 28
                  ori          s5, t0, 1172
                  sub          a3, gp, t4
                  and          t4, s2, t3
                  slt          a1, a2, s2
                  srai         s9, a2, 27
                  srl          s11, a3, s10
                  xori         a3, s10, 1078
                  srli         a5, s10, 15
                  or           a3, a2, s8
                  nop
                  srl          s10, t5, sp
                  srli         ra, t2, 6
                  srai         s9, ra, 3
                  lui          t1, 254721
                  sra          a3, s8, a7
                  sra          sp, a6, sp
                  sltu         ra, a4, s6
                  sra          s3, a2, sp
                  addi         s8, s6, -1051
                  srl          a1, s0, t4
                  ori          gp, t2, 1453
                  sra          a2, tp, ra
                  sra          tp, s1, sp
                  auipc        s11, 754937
                  and          a7, t5, gp
                  xor          t2, t0, tp
                  sltiu        a3, s7, -552
                  sltiu        a2, s10, 879
                  srl          s11, s8, a0
                  ori          gp, s2, -1938
                  sltu         t0, s4, s1
                  xor          a1, sp, t3
                  srl          gp, a3, zero
                  and          s7, s6, s6
                  sra          t3, s7, s1
                  add          a1, s9, t0
                  slti         gp, sp, -362
                  and          s4, s10, gp
                  sub          t0, tp, a1
                  addi         a7, t4, -1770
                  addi         s8, a1, -16
                  slt          a7, sp, a3
                  slt          a7, t5, s4
                  srl          t2, a6, t1
                  xor          t4, tp, a3
                  xor          s9, gp, a3
                  slti         a5, s3, 1468
                  slti         s8, a4, -1870
                  xor          a3, t0, zero
                  and          s0, a3, s9
                  slli         s8, s1, 23
                  srli         s4, t5, 6
                  sll          s9, zero, s7
                  add          a7, t1, s10
                  ori          t4, s9, -842
                  ori          t5, gp, -1625
                  sltu         s0, tp, sp
                  sll          s7, a1, a4
                  sltu         gp, s10, s9
                  add          s9, t1, ra
                  sll          s8, a3, t0
                  and          s3, a3, zero
                  slt          s10, s10, tp
                  andi         s7, a3, -1102
                  sra          a7, zero, t3
                  or           zero, s0, t6
                  add          ra, s2, a2
                  sra          s10, s8, a1
                  ori          a7, t3, 1753
                  xori         a1, t0, 1755
                  sub          zero, t1, s11
                  auipc        s0, 208392
                  sltu         s2, a0, tp
                  ori          zero, ra, 11
                  or           s9, s0, s10
                  or           t3, s5, s0
                  andi         a6, gp, 1621
                  xori         a0, a6, 1978
                  slli         a4, a7, 21
                  slti         s11, s0, -596
                  andi         s2, t1, 1124
                  sub          a7, zero, a4
                  auipc        t4, 718000
                  sra          s11, a1, s4
                  and          t0, zero, a0
                  sub          s0, s7, a3
                  srli         s4, s9, 24
                  and          t4, s1, a2
                  srli         gp, t5, 1
                  and          s0, t3, s5
                  auipc        a2, 111037
                  auipc        s5, 865620
                  and          a1, t6, a7
                  sltu         t2, a1, ra
                  srli         t1, s10, 2
                  sltu         t1, s2, t3
                  slt          s2, t1, s10
                  andi         s4, a0, 69
                  nop
                  sub          s11, t1, a2
                  auipc        s8, 335848
                  sltu         a3, t5, s10
                  srai         a3, t5, 17
                  srli         s10, gp, 15
                  add          s4, t0, a3
                  srai         s5, t0, 2
                  sub          t2, sp, s3
                  add          tp, a6, s5
                  xor          t3, s11, gp
                  srli         t5, tp, 4
                  sll          s11, s6, zero
                  srl          s10, a2, s1
                  add          s11, zero, s1
                  add          s0, t1, a4
                  and          a2, a5, t3
                  addi         s4, a3, 1507
                  srli         s7, tp, 0
                  slti         t1, a5, 58
                  add          s5, s1, a5
                  or           s5, gp, s6
                  slt          t2, s6, t5
                  lui          sp, 963073
                  addi         s0, a4, -1831
                  sltu         t5, s7, a3
                  ori          s8, t4, -1789
                  srl          a3, s8, gp
                  srai         tp, zero, 6
                  sltu         sp, tp, t5
                  ori          s10, t4, -1109
                  xori         s11, s10, -254
                  sltiu        t0, sp, 551
                  slt          t2, s8, s7
                  sub          s10, ra, s5
                  nop
                  slli         zero, sp, 15
                  auipc        tp, 768109
                  slti         t4, sp, 291
                  srli         ra, t6, 1
                  and          t5, zero, s11
                  srl          a0, s1, s2
                  slt          a7, t6, ra
                  lui          a2, 263163
                  sll          s3, a1, t5
                  lui          a7, 666970
                  slti         t2, s11, -1624
                  sll          s2, s11, s10
                  sltu         t5, t1, s10
                  srai         s3, s5, 23
                  slti         s4, t6, -1497
                  srli         s4, s8, 11
                  sub          s5, gp, tp
                  slt          a4, s1, t6
                  srai         s4, t3, 1
                  or           a4, a3, s4
                  srli         a6, s1, 13
                  or           t3, s9, ra
                  add          t3, t1, s2
                  xori         zero, t5, 954
                  and          t4, s10, a7
                  or           a3, t5, t1
                  srai         zero, s5, 14
                  sll          a7, a3, a2
                  srl          t2, s9, ra
                  nop
                  andi         a7, s5, -137
                  xori         s5, t1, -1675
                  sra          t5, t6, t5
                  xor          zero, s2, a5
                  srli         s8, a3, 16
                  ori          s5, t1, 1078
                  sra          t1, a5, s5
                  slti         a3, t3, -1620
                  nop
                  srli         s2, a1, 23
                  sltiu        a0, a3, -974
                  sll          sp, tp, t2
                  addi         a7, s10, -1215
                  srli         gp, a4, 4
                  auipc        tp, 858615
                  addi         a3, zero, 967
                  addi         gp, s10, -304
                  slt          a6, t4, t3
                  nop
                  srl          t2, a3, t2
                  slti         t3, tp, 22
                  andi         sp, s1, 190
                  auipc        s3, 172223
                  xor          a6, sp, a5
                  auipc        s7, 323595
                  lui          s2, 400207
                  xori         a7, s6, 1710
                  and          s8, s7, s8
                  andi         s10, t6, 1783
                  slli         a6, t0, 21
                  srl          s11, a5, t6
                  slti         s2, t2, -1796
                  xori         s2, a0, -1335
                  or           sp, s7, s10
                  and          zero, t5, s1
                  andi         t2, zero, -313
                  lui          s9, 814857
                  xori         s7, a0, -1955
                  sltu         s0, s8, s4
                  sltu         gp, s9, t2
                  and          t0, t0, a3
                  add          a0, s11, ra
                  andi         t4, s10, -1724
                  slti         t3, ra, 32
                  and          sp, s4, ra
                  sltiu        a3, t0, -1658
                  srl          tp, s4, sp
                  auipc        t2, 619988
                  add          t1, s5, ra
                  or           t2, s11, gp
                  auipc        a3, 512646
                  addi         s2, s5, -1029
                  or           s7, t1, zero
                  add          t0, s4, a5
                  slt          gp, s9, ra
                  or           s2, s9, t6
                  xor          sp, s11, t1
                  or           s3, a6, a1
                  lui          t0, 100286
                  lui          a7, 105671
                  xor          t3, a2, t2
                  sra          tp, t6, s9
                  sltiu        t3, s3, -1887
                  xor          s0, a6, gp
                  sra          t2, s7, tp
                  sltiu        a7, s11, 1408
                  auipc        s10, 792637
                  srl          a3, a4, a5
                  slli         a1, s2, 26
                  srli         a1, ra, 1
                  auipc        s10, 778010
                  and          t5, t1, s8
                  srli         s5, t6, 24
                  slli         s2, s7, 8
                  srli         a4, t1, 2
                  srai         a2, t2, 14
                  or           a7, t1, a1
                  srai         t5, a2, 21
                  sub          a5, tp, a0
                  and          s8, sp, a5
                  srli         a6, s5, 12
                  xori         a2, a5, -376
                  slli         a3, s9, 16
                  auipc        s3, 899344
                  or           s2, a4, s10
                  lui          s0, 742595
                  sltu         a4, t3, s7
                  nop
                  add          t1, s9, zero
                  andi         t1, s2, -167
                  addi         s11, t6, 46
                  or           s8, s5, s6
                  slt          s11, zero, s3
                  addi         a3, a3, 1929
                  sra          s5, t0, s5
                  slli         t3, a3, 20
                  or           t5, s2, a4
                  srl          s5, a6, s10
                  srl          a4, s1, s8
                  xor          s7, s7, s9
                  and          t3, a1, t1
                  slti         t1, ra, 145
                  srai         t3, t1, 2
                  xori         ra, a7, 1573
                  add          t3, sp, a0
                  lui          t0, 562047
                  sll          s8, a0, t1
                  xori         a1, a5, 985
                  or           s10, a3, a5
                  srai         s4, sp, 5
                  addi         t0, s4, -56
                  slt          s9, t3, s4
                  add          a2, a6, a3
                  andi         ra, s7, 209
                  sub          t4, t0, a1
                  xor          s2, s6, tp
                  sub          s7, a7, t2
                  xor          s3, s6, sp
                  slti         s2, s10, 1930
                  auipc        sp, 46527
                  sltiu        a6, zero, 1534
                  and          s7, s3, t5
                  srl          tp, t0, t2
                  slli         t1, tp, 13
                  slti         s2, a3, 2001
                  andi         t3, sp, -2012
                  and          s7, ra, a7
                  xor          sp, s8, a1
                  sra          a3, a7, t3
                  andi         a3, t0, 888
                  srli         a1, s5, 22
                  xori         s4, s5, -1630
                  auipc        s0, 361607
                  and          ra, t6, ra
                  nop
                  ori          a3, a5, 234
                  sub          t4, s3, zero
                  slt          s5, s0, t1
                  or           a5, t3, t0
                  sll          t4, s3, a0
                  xori         sp, a6, -966
                  slli         gp, tp, 26
                  sra          s11, a1, t5
                  nop
                  srai         a7, t5, 18
                  nop
                  slli         zero, s8, 4
                  ori          t4, a4, 1395
                  add          t2, t2, t1
                  and          s10, s9, s4
                  add          t5, zero, a1
                  sra          a5, a7, a4
                  ori          s10, gp, -55
                  slti         a0, a3, 1568
                  ori          tp, sp, -226
                  nop
                  xor          a3, a4, a5
                  srli         s11, a2, 18
                  sra          t2, s3, s2
                  or           s8, a2, ra
                  auipc        s2, 844607
                  sltiu        a1, t5, 558
                  nop
                  andi         zero, a3, 1736
                  sra          a2, sp, gp
                  sltiu        s4, t4, 1108
                  xori         a4, a5, -588
                  addi         s2, zero, -887
                  addi         t3, s6, 1165
                  auipc        s7, 12750
                  lui          tp, 370788
                  slli         ra, tp, 9
                  srl          s0, s3, s8
                  srli         a4, t3, 6
                  ori          zero, t6, -492
                  sub          t2, tp, s7
                  add          a0, s8, t6
                  sltiu        s9, a3, -1291
                  and          a3, s4, s7
                  auipc        s0, 647530
                  slt          s10, t5, t5
                  addi         s0, s9, 1861
                  ori          a7, a6, 1777
                  sltu         t0, s6, s9
                  lui          a3, 643507
                  or           t4, t3, s11
                  sra          zero, t4, a2
                  auipc        t2, 73596
                  sub          tp, gp, s9
                  auipc        ra, 250990
                  and          gp, s11, t2
                  add          s9, tp, a3
                  sll          t2, a1, s3
                  ori          s10, t2, -1670
                  slli         a2, tp, 5
                  and          a3, s0, ra
                  slli         t5, s4, 21
                  sra          t2, gp, s11
                  sll          t5, s8, a5
                  slti         s4, t2, -1868
                  sltiu        s3, s11, -1688
                  andi         a5, tp, -1585
                  andi         s8, t0, -1598
                  xori         a0, a4, -1319
                  sra          t3, t3, s2
                  slt          s8, a5, s6
                  nop
                  nop
                  srli         t4, t4, 1
                  auipc        a6, 948051
                  srai         s11, s9, 29
                  nop
                  sub          s7, t2, t5
                  slt          s4, s11, sp
                  srai         s9, a5, 24
                  sltu         t1, s1, a4
                  srai         zero, t0, 1
                  andi         s9, a4, 1554
                  xori         a5, a1, 753
                  sll          a4, ra, a1
                  lui          a5, 443773
                  srli         a5, t0, 18
                  add          t2, s0, a1
                  slt          a0, a0, t1
                  lui          s2, 796580
                  or           s10, s10, s7
                  sub          a7, t0, s9
                  or           a0, t4, a4
                  xori         s3, s7, 1422
                  slli         a7, t3, 31
                  srai         gp, a0, 25
                  add          t0, s5, zero
                  srli         t2, s11, 28
                  slli         s2, t4, 14
                  nop
                  auipc        t2, 7283
                  nop
                  srl          zero, s10, ra
                  sltiu        ra, s11, 1113
                  srai         t0, gp, 26
                  srl          t4, t2, gp
                  sltiu        s10, t3, -1088
                  xor          a3, s2, s7
                  andi         s10, a2, -494
                  xori         zero, s3, 1271
                  xor          t4, ra, t6
                  and          s7, s2, a7
                  sltiu        s8, a7, -1428
                  srl          s10, t5, a7
                  xor          s10, s4, s7
                  add          t1, s6, a2
                  srli         s2, s8, 1
                  lui          gp, 960243
                  xori         gp, tp, -872
                  and          t4, s7, t3
                  xor          t1, t1, a6
                  nop
                  slti         a5, a0, -228
                  srl          t3, s7, t1
                  ori          s4, tp, -1472
                  and          s4, s9, t1
                  xori         a3, a4, 158
                  slt          t1, s3, a6
                  and          ra, s4, s0
                  add          a6, tp, s0
                  ori          tp, a5, -222
                  srl          t1, t4, zero
                  sltu         sp, a7, tp
                  xor          a2, ra, s2
                  andi         a3, a5, -2044
                  lui          s0, 759151
                  sltu         a4, a4, s9
                  sltiu        a2, sp, -853
                  add          t2, a4, a3
                  srli         tp, a6, 14
                  sltu         a1, t4, gp
                  sltiu        a7, s6, -798
                  add          t2, a3, a0
                  auipc        a4, 457630
                  slti         a4, s9, -1939
                  lui          s11, 281092
                  xor          a1, s5, t4
                  srai         sp, s10, 11
                  sll          s7, a7, t6
                  srli         t2, t2, 20
                  add          s4, s10, t1
                  xori         t0, a5, -1132
                  nop
                  ori          t4, s8, -855
                  sltu         a0, s11, s9
                  ori          a3, zero, 3
                  auipc        t3, 104679
                  addi         a0, t6, -1595
                  srli         s0, s9, 2
                  add          a0, tp, s11
                  xor          a4, a1, s11
                  auipc        s8, 605258
                  add          s10, t4, s0
                  add          t2, a5, s10
                  or           tp, a7, s7
                  nop
                  slli         t4, s10, 12
                  xori         s2, gp, 1425
                  andi         s11, s1, -1259
                  slti         s10, s7, -1530
                  srai         zero, t6, 16
                  xor          a3, a4, zero
                  or           s10, s9, s2
                  sll          s5, s2, s1
                  add          s10, t2, s5
                  sltu         a7, sp, a5
                  lui          a6, 995426
                  nop
                  sltu         t1, s2, s6
                  xor          s11, s9, s10
                  addi         a7, s1, 1019
                  slti         s7, a4, -311
                  slli         s9, a4, 15
                  auipc        ra, 846966
                  sltu         s8, s3, tp
                  lui          a1, 72301
                  add          a4, t1, s11
                  andi         a3, a4, 749
                  slt          t2, a4, s7
                  lui          s4, 164314
                  slti         s0, a1, -85
                  srai         tp, tp, 12
                  sltu         t5, tp, s11
                  xor          t4, s3, a7
                  sll          t1, a3, t4
                  auipc        ra, 522769
                  slt          t2, s8, a2
                  nop
                  srl          a5, s4, t0
                  srai         gp, zero, 4
                  addi         gp, s2, 1636
                  sra          s5, a4, a2
                  sll          s9, t2, sp
                  sltu         t4, a1, zero
                  addi         s11, gp, -419
                  nop
                  ori          t1, a5, 838
                  sltiu        t1, s2, 1384
                  nop
                  slti         a7, s3, -792
                  srli         s8, s10, 14
                  srli         s3, s11, 22
                  sll          s5, t1, a5
                  and          tp, s0, tp
                  lui          t1, 566635
                  ori          a4, tp, 1558
                  nop
                  slti         zero, t5, -512
                  srli         gp, s3, 10
                  srli         a2, a6, 4
                  sub          zero, gp, t3
                  add          t1, t0, s2
                  auipc        t4, 593005
                  addi         a7, zero, -661
                  andi         sp, gp, -1128
                  srli         a0, a1, 22
                  sltiu        a0, t1, 1457
                  and          a3, s1, t5
                  add          a2, a0, sp
                  lui          a3, 805289
                  add          gp, gp, s9
                  srli         t5, a0, 13
                  srai         a4, ra, 29
                  sltiu        t3, ra, -1340
                  addi         t0, s9, -90
                  and          s0, s6, t6
                  addi         a1, t6, 1902
                  ori          ra, s9, 324
                  sll          a7, sp, s0
                  sub          a2, a2, a2
                  xor          a4, a1, tp
                  slti         a4, s6, 1903
                  ori          a0, sp, 16
                  andi         a0, a6, -587
                  or           sp, t2, s0
                  lui          t3, 190017
                  xori         s0, a6, -743
                  sltiu        s8, t3, -294
                  lui          gp, 768164
                  lui          a0, 423128
                  sltiu        a7, gp, -1890
                  slt          s4, s9, a2
                  or           a7, s3, s7
                  sltu         a1, t4, sp
                  auipc        gp, 607345
                  add          s0, a5, s10
                  sltu         s0, s10, t2
                  sltu         s0, t3, a5
                  auipc        t3, 865022
                  srl          zero, t6, t5
                  sltiu        s9, s2, 2042
                  slt          t0, s0, s0
                  sub          t1, a3, t3
                  srli         s7, s4, 21
                  srl          a3, t4, sp
                  xori         a2, t5, -966
                  srli         ra, tp, 3
                  sll          ra, s6, zero
                  or           s9, a5, a6
                  or           a5, s3, zero
                  or           a2, t0, a3
                  slt          t0, s0, s0
                  and          s8, s6, a7
                  sub          t0, a0, gp
                  addi         tp, sp, -1742
                  srli         a0, s11, 20
                  or           a2, a2, s6
                  sra          s9, s2, a5
                  nop
                  slt          s3, a0, t6
                  and          tp, s8, s6
                  and          a7, s6, s6
                  addi         zero, gp, -888
                  slti         t2, s0, -1879
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           a4, 0x80000000
                  li           sp, 0x80000000
                  li           a1, 0x0
                  li           a7, 0x0
                  li           t3, 0x80000000
                  li           s11, 0x0
                  li           s10, 0xeff38320
                  li           s9, 0x0
                  li           tp, 0xffffffff
                  nop
                  lui          a7, 519831
                  addi         a7, sp, 1582
                  lui          s9, 255207
                  auipc        s11, 652903
                  addi         a4, a1, -1777
                  auipc        s2, 945647
                  addi         tp, a7, -1539
                  sub          s9, s10, a7
                  sub          a7, s10, sp
                  addi         a4, a1, 1986
                  sub          a7, a1, t3
                  add          tp, s9, tp
                  addi         a4, sp, -1227
                  addi         a7, s9, -514
                  lui          a7, 1021307
                  addi         t3, t3, 1486
                  nop
                  add          tp, s11, s10
                  add          a1, t3, a1
                  lui          tp, 355605
                  addi         a4, t3, 851
                  addi         s9, t3, 1228
                  nop
                  add          s2, a4, s10
                  sub          a7, t3, s10
                  nop #end riscv_int_numeric_corner_stream_15
                  sra          a7, a4, a4
                  ori          sp, a1, -154
                  xor          zero, a0, s6
                  add          tp, s9, s11
                  addi         s10, s0, 475
                  srli         t5, s11, 12
                  sltu         s10, zero, gp
                  xori         s9, t5, 1440
                  nop
                  nop
                  slti         t2, t4, -1854
                  ori          s10, s11, 750
                  slli         t4, sp, 26
                  addi         a1, t1, 198
                  sll          s0, zero, s4
                  add          s9, ra, s11
                  addi         s10, s1, 1639
                  add          s10, s10, a3
                  andi         s0, a2, 1997
                  sra          s2, a0, a4
                  or           t5, t0, s0
                  srai         a0, zero, 30
                  sll          a1, t4, a2
                  ori          t3, tp, -262
                  nop
                  xor          s2, zero, s3
                  sub          s9, sp, a2
                  srli         a3, s4, 2
                  lui          gp, 817994
                  andi         s10, a5, -735
                  sub          zero, s6, s3
                  sll          t3, t2, s5
                  auipc        a3, 685064
                  and          tp, a6, t4
                  slli         s2, s8, 22
                  andi         sp, t6, -617
                  and          tp, s8, a3
                  srli         t5, a2, 17
                  add          a2, gp, s11
                  and          s10, s1, s0
                  slli         s0, t6, 13
                  slti         a1, a3, -1288
                  sltu         s4, s11, tp
                  auipc        gp, 825785
                  slti         t4, t4, -1146
                  nop
                  slt          gp, a6, t6
                  and          a5, s5, s11
                  sll          zero, t3, t5
                  ori          a5, t0, -868
                  andi         gp, gp, -1376
                  nop
                  slti         a5, s0, -1840
                  nop
                  nop
                  slti         t4, t6, -1841
                  sll          s3, s7, ra
                  slli         s3, tp, 19
                  and          s5, s9, s8
                  sra          a4, tp, ra
                  or           s11, gp, a0
                  xori         s9, t1, -288
                  sra          zero, a0, s11
                  sub          a3, t5, s11
                  ori          t4, tp, -1350
                  lui          a2, 472787
                  xor          zero, t0, s3
                  andi         a6, s11, -491
                  srai         t5, a2, 31
                  srai         s0, a0, 31
                  sra          a0, s3, gp
                  xor          s3, t1, t6
                  sra          t3, a6, a0
                  addi         ra, a3, 413
                  sltiu        t2, gp, 957
                  nop
                  sra          a7, a7, a5
                  nop
                  nop
                  and          ra, t6, t5
                  xori         a2, ra, -378
                  xori         a6, a5, 1682
                  nop
                  add          s10, a4, zero
                  sll          s11, t6, tp
                  auipc        a3, 544545
                  slt          t0, s7, sp
                  andi         t2, s3, -35
                  lui          t1, 572079
                  sub          a7, s7, s9
                  xor          t3, s10, t1
                  srl          s11, a3, s1
                  srai         s4, s5, 5
                  sra          s10, s3, a7
                  slli         s10, s0, 8
                  add          t5, a3, zero
                  add          s0, tp, s5
                  sll          a2, a7, s10
                  nop
                  slt          zero, t2, t5
                  andi         a7, t6, -1888
                  sltu         t3, s0, s8
                  auipc        a6, 884699
                  addi         s8, s8, -967
                  xori         sp, t2, -34
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           s11, 0x0
                  li           gp, 0x0
                  li           a7, 0x0
                  li           s8, 0xece76a8b
                  li           s5, 0x7c667557
                  li           a4, 0x80000000
                  li           s10, 0xffffffff
                  li           sp, 0xffffffff
                  li           s0, 0x80000000
                  lui          a4, 313626
                  lui          a7, 439541
                  addi         sp, gp, 1344
                  sub          s10, tp, s8
                  add          tp, sp, a4
                  addi         a4, gp, -1545
                  auipc        gp, 481561
                  nop
                  addi         s10, a4, 1757
                  auipc        s5, 750708
                  lui          a4, 821305
                  add          s8, s11, gp
                  lui          s0, 775762
                  nop
                  auipc        a4, 748299
                  add          sp, s11, s11
                  add          s5, s5, s10
                  sub          a7, sp, tp
                  nop
                  addi         s5, tp, 935
                  nop
                  nop
                  sub          s10, s0, s5
                  add          a4, s8, tp
                  lui          s10, 529954 #end riscv_int_numeric_corner_stream_13
                  andi         s8, a1, -1247
                  or           t0, a7, a2
                  srl          a2, sp, t6
                  lui          t4, 352361
                  srli         t1, a1, 29
                  sltu         a2, s5, a2
                  xori         t0, a5, 1016
                  or           a1, s5, a4
                  sra          t5, s1, s7
                  slt          sp, s6, a6
                  sub          a1, tp, ra
                  nop
                  xor          t2, s7, a5
                  and          s2, s0, a5
                  andi         t4, a6, -2010
                  sll          zero, a3, t6
                  srai         t2, tp, 25
                  ori          t5, s4, 1119
                  srli         t4, gp, 24
                  sll          t1, t1, s9
                  slt          t5, s9, a7
                  srli         ra, s4, 3
                  sltiu        a6, a5, 2011
                  slti         sp, a7, -287
                  slti         s8, s8, 800
                  sltiu        zero, s5, 1371
                  auipc        s8, 721541
                  nop
                  addi         s2, s0, -548
                  addi         t3, tp, 1218
                  add          s3, s1, tp
                  srai         a7, s11, 10
                  add          s3, a6, s2
                  nop
                  xori         a7, gp, 1222
                  sll          t3, a1, gp
                  ori          zero, tp, 446
                  ori          a1, t1, 2044
                  ori          t3, t3, 299
                  srli         s3, s3, 25
                  xori         s10, s1, -1868
                  srl          t1, t4, ra
                  slli         a7, s9, 30
                  ori          a0, a0, -949
                  and          zero, s10, a5
                  sub          s2, t3, t3
                  slti         gp, t5, 235
                  srai         t3, ra, 1
                  srl          a7, s8, a0
                  slt          s0, tp, a1
                  sltiu        t5, t4, 919
                  xori         a6, s8, -310
                  sltu         sp, t3, a0
                  sltiu        t5, t0, -48
                  addi         a2, s8, 1208
                  and          s0, s9, t4
                  slli         s3, a5, 5
                  nop
                  and          t2, s7, s9
                  sltu         a1, t1, s1
                  add          t3, zero, t2
                  srai         a0, s4, 7
                  auipc        a0, 38443
                  nop
                  and          t0, t0, s2
                  and          sp, a5, s3
                  slti         a6, t1, -752
                  srli         zero, t0, 3
                  slt          s10, a5, t3
                  nop
                  sltiu        s8, s6, -630
                  srai         a5, sp, 18
                  slli         a7, a4, 26
                  sll          a5, a6, a7
                  slli         t4, a7, 8
                  srli         a3, s2, 7
                  sra          a2, s11, a4
                  srli         gp, s1, 15
                  addi         t0, s11, 237
                  lui          a1, 894917
                  slti         t2, s7, 1149
                  addi         t0, t2, 707
                  add          t0, s10, gp
                  sltu         a3, t3, a5
                  srli         a0, tp, 31
                  xor          ra, s5, s11
                  sub          s3, a4, s0
                  xor          t4, s11, s6
                  andi         s5, gp, -1750
                  ori          a6, t6, -151
                  lui          zero, 507446
                  and          t3, a6, s9
                  sub          zero, a4, gp
                  ori          a6, s10, -892
                  sub          s9, s5, t3
                  addi         sp, t3, -19
                  srli         t3, t3, 13
                  addi         t4, a7, -100
                  slli         a0, a2, 1
                  srli         s5, a3, 4
                  nop
                  ori          t2, gp, 755
                  xori         gp, s8, 1212
                  slti         s10, s10, -1813
                  andi         t2, a1, -164
                  srli         a6, s1, 25
                  slli         s7, s2, 14
                  xori         a7, ra, 1487
                  and          a3, ra, s2
                  and          s5, ra, gp
                  and          t5, a4, t2
                  ori          gp, ra, -778
                  xori         s2, t3, -191
                  and          s0, s6, s0
                  slti         t0, s10, 1327
                  sub          zero, s11, s2
                  slti         a2, zero, -1080
                  sltu         a7, t2, t4
                  slti         a0, a1, -220
                  or           t3, s8, s5
                  lui          t4, 924521
                  lui          zero, 293169
                  srai         t4, s6, 19
                  slti         s2, t2, -268
                  andi         s0, t2, 1168
                  or           gp, s7, s7
                  xor          t2, a1, t1
                  or           a6, s3, s11
                  or           sp, t4, s5
                  sll          a1, s3, zero
                  or           a1, a2, a1
                  srai         a0, s4, 13
                  srai         s10, a2, 5
                  or           t1, s3, a2
                  sltiu        a3, t5, 975
                  lui          s2, 198977
                  add          a1, s3, s0
                  srai         a3, zero, 7
                  andi         a1, a1, 48
                  srai         t5, t5, 31
                  slti         s3, tp, 615
                  andi         s9, t1, -770
                  slt          a5, t5, s7
                  xori         a5, t6, 706
                  sltu         a7, zero, a4
                  sub          tp, t5, a4
                  srl          s7, s5, t1
                  slt          s0, t2, s4
                  lui          s4, 643088
                  sub          s0, t1, a0
                  andi         a0, tp, 1532
                  addi         s11, a3, 1471
                  or           s0, t5, s10
                  ori          s10, t3, -610
                  nop
                  srl          s3, t6, s3
                  srli         a2, a3, 22
                  sltu         s2, a6, s3
                  lui          a7, 754311
                  sll          a4, gp, gp
                  nop
                  sll          s4, s0, zero
                  lui          a6, 599220
                  sltiu        s10, a6, 1633
                  ori          s0, t0, 71
                  sltu         s10, a1, t5
                  sub          t4, sp, t4
                  srl          a4, t6, ra
                  srli         t5, t6, 3
                  add          a0, a4, a5
                  srai         a2, zero, 31
                  sub          s9, s9, gp
                  add          s11, a6, s8
                  add          t5, t2, s5
                  xor          ra, a7, t5
                  nop
                  slli         a0, a4, 1
                  xori         s7, s0, -672
                  nop
                  srli         tp, a4, 14
                  auipc        s8, 903921
                  ori          t4, a0, 1928
                  add          s2, a0, sp
                  or           s4, t2, a5
                  nop
                  srl          t4, s11, s5
                  andi         a5, a1, -1168
                  xor          a5, a4, s8
                  nop
                  sll          t1, s3, s0
                  lui          t5, 808044
                  andi         s11, a0, -1039
                  andi         sp, t1, 1658
                  lui          s10, 616811
                  slti         t5, t1, 1666
                  andi         t4, s3, -226
                  nop
                  slt          t3, s6, a5
                  andi         s9, s10, -422
                  xor          t4, a2, t5
                  srli         s11, t3, 7
                  sltiu        a6, t1, -1781
                  xori         s4, s1, -995
                  sub          a3, a6, s0
                  andi         s9, s2, -1945
                  sltiu        s2, a5, -835
                  xori         t0, t1, 1606
                  auipc        sp, 549463
                  sub          a4, s11, ra
                  sltu         t4, s6, t6
                  sltiu        gp, s10, 1614
                  nop
                  lui          a0, 1001000
                  sll          s7, s3, s0
                  srli         gp, a6, 30
                  slti         a1, sp, -1712
                  andi         a5, t2, -1930
                  sltiu        t5, gp, 1268
                  slt          s0, s8, t6
                  auipc        zero, 160411
                  lui          a4, 425141
                  lui          s4, 504183
                  sltu         zero, t2, s10
                  srai         s8, s3, 27
                  auipc        s9, 416567
                  srai         tp, t2, 28
                  andi         t2, s3, -585
                  slli         a5, s8, 10
                  and          s9, a3, s11
                  ori          t3, s2, 101
                  sub          a1, t6, tp
                  addi         s7, t2, 434
                  andi         s8, a1, -1181
                  addi         s7, zero, 1600
                  slt          a6, t1, t2
                  lui          gp, 698539
                  ori          a5, s4, -1086
                  lui          s5, 327063
                  andi         t2, a5, 1616
                  sltiu        a1, s9, -735
                  lui          s4, 351801
                  nop
                  sub          t0, s4, a3
                  slt          a0, ra, t1
                  srli         ra, a7, 0
                  auipc        t2, 673685
                  slti         tp, gp, 1053
                  srli         tp, s3, 24
                  sltu         a5, ra, ra
                  andi         a1, zero, 444
                  ori          a4, a1, -355
                  xor          a4, t4, ra
                  addi         t2, s3, -1845
                  srli         tp, s8, 9
                  slti         a4, sp, -165
                  sltiu        ra, t4, -1305
                  xor          s10, s7, s6
                  srai         gp, a7, 25
                  slt          a6, sp, tp
                  srl          s3, s10, s7
                  andi         t1, sp, -1351
                  xor          s9, zero, t5
                  sltiu        a7, t0, 292
                  sltu         zero, s10, s0
                  xori         t4, s5, -244
                  sltu         s7, a7, a1
                  nop
                  nop
                  nop
                  addi         gp, s8, -1805
                  srl          s2, s3, s1
                  and          s0, a1, t4
                  or           t3, t6, t2
                  srai         s9, s0, 7
                  add          s5, s10, t0
                  auipc        a1, 255673
                  srai         s10, a6, 27
                  srli         t3, s0, 5
                  slti         s0, t3, -8
                  srli         gp, a0, 25
                  xor          s4, t5, a0
                  lui          a4, 220732
                  addi         s0, t6, -333
                  slti         zero, a2, -1663
                  addi         t0, s1, -444
                  sll          a7, s5, t5
                  sltiu        a7, a2, 954
                  srai         t1, t4, 30
                  or           t3, t0, tp
                  sltu         s0, s5, t2
                  sltu         t2, t6, a3
                  srl          s9, s7, t1
                  nop
                  sll          a7, s0, s4
                  slt          a1, a7, t6
                  xor          s5, s7, s5
                  sltu         t1, t6, a7
                  lui          s11, 965150
                  addi         s7, s9, -420
                  srli         a0, gp, 11
                  sltu         s2, s8, a7
                  nop
                  or           a2, s2, a4
                  sra          a4, a4, sp
                  sra          s5, s7, a1
                  sra          a1, a5, a4
                  xor          t0, a4, t2
                  and          a0, ra, s1
                  srli         s4, gp, 1
                  auipc        s8, 24722
                  nop
                  slli         t1, a7, 20
                  sll          s8, s6, a5
                  andi         s7, s4, 364
                  auipc        a4, 285358
                  sra          t5, zero, a2
                  nop
                  xor          tp, s0, a6
                  xori         sp, s8, 1255
                  auipc        s5, 711337
                  addi         a5, t2, -1290
                  slli         gp, a0, 6
                  slti         a2, t0, -748
                  xori         t4, s6, 967
                  sltiu        a5, a7, -1800
                  auipc        zero, 946067
                  srli         a3, zero, 15
                  sra          a4, t5, s11
                  add          sp, t2, s11
                  xori         s8, ra, -1967
                  srli         s10, s6, 17
                  xor          s11, t1, s10
                  andi         t5, s8, 542
                  andi         a6, s9, 785
                  or           a4, a7, a6
                  or           a7, ra, s4
                  xor          a5, s2, a3
                  and          s11, zero, t0
                  or           tp, s2, t0
                  nop
                  sll          t3, s10, s6
                  auipc        a0, 62398
                  lui          s3, 472467
                  sll          s2, s11, t5
                  addi         s3, s9, -1302
                  addi         s9, t5, -285
                  nop
                  srl          s7, t6, t4
                  sll          s11, zero, s8
                  nop
                  lui          a5, 401298
                  nop
                  sra          s2, s10, t2
                  sltu         s9, s10, s3
                  slli         s9, a2, 16
                  sra          s2, a1, s8
                  and          s0, t4, zero
                  srli         t0, a0, 16
                  sll          a6, a3, ra
                  or           tp, t6, s3
                  slli         t4, s1, 20
                  sltu         a1, s1, a2
                  auipc        s7, 717414
                  ori          s2, a0, 1359
                  sra          zero, s5, s6
                  sll          ra, zero, s2
                  xor          s11, s6, a4
                  slli         t0, s3, 17
                  sltiu        tp, zero, -108
                  slli         a4, ra, 29
                  srl          ra, a2, s8
                  lui          t4, 398609
                  nop
                  andi         a4, tp, -199
                  srai         a6, a2, 23
                  sltiu        a3, s7, 1294
                  xori         a3, s8, 1258
                  add          gp, t2, t2
                  sll          a0, a1, t3
                  slti         a4, s8, 1654
                  nop
                  sll          s4, s3, s0
                  xor          gp, t6, a7
                  or           s11, a1, s11
                  sub          s10, a5, t3
                  slt          s0, s9, a7
                  xori         s8, a4, 1431
                  lui          s9, 904376
                  lui          s11, 971086
                  srli         s8, gp, 12
                  srai         a4, a5, 10
                  addi         a7, s3, -1565
                  slli         t1, s8, 10
                  slt          s3, ra, a6
                  ori          a3, a1, 220
                  srai         a7, ra, 17
                  ori          a7, a6, -846
                  andi         a2, s10, 298
                  ori          t0, s9, -35
                  andi         t1, ra, -435
                  srl          a1, t4, s4
                  xori         ra, a6, 72
                  auipc        a6, 1044833
                  slt          s9, s7, s2
                  nop
                  nop
                  xori         s5, s0, -1857
                  sltu         s0, t0, a4
                  xori         t3, tp, -1585
                  nop
                  auipc        s3, 549594
                  srli         a3, s3, 15
                  addi         s10, a1, 705
                  sra          s7, gp, s9
                  addi         t0, a5, -683
                  sub          a4, s10, s4
                  sra          zero, s4, t5
                  addi         a4, a7, -1624
                  sub          a3, a0, a2
                  lui          t5, 1045970
                  add          sp, s0, t1
                  addi         s8, s8, 913
                  li           a3, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           tp, 0xffffffff
                  li           s11, 0x0
                  li           sp, 0xffffffff
                  li           s2, 0x4b2cb304
                  li           s5, 0x0
                  li           t0, 0x0
                  li           t1, 0x0
                  li           s7, 0xffffffff
                  li           a1, 0x80000000
                  auipc        s2, 695830
                  auipc        a3, 373385
                  auipc        a3, 542395
                  auipc        tp, 940325
                  nop
                  sub          t0, s5, s2
                  lui          s7, 321347
                  add          a3, s7, s11
                  add          t0, s11, sp
                  sub          s11, s11, t0
                  nop
                  auipc        s7, 557879
                  add          sp, t0, t0
                  sub          tp, tp, a1
                  addi         s5, sp, 1788 #end riscv_int_numeric_corner_stream_5
                  sra          a7, gp, s2
                  and          s3, s3, t4
                  add          t4, s4, t3
                  sll          a7, s11, s5
                  auipc        zero, 164621
                  sltu         a7, a7, s3
                  ori          s10, ra, -2002
                  slti         ra, a5, 1336
                  and          a3, t6, s10
                  slli         s4, s9, 5
                  sltu         t0, s8, a0
                  sub          a4, t4, t0
                  ori          s4, s8, -1251
                  lui          s9, 660326
                  sll          t4, tp, t5
                  slti         zero, tp, 1585
                  slt          a3, a4, a3
                  add          a1, s6, s7
                  and          t2, a3, s8
                  auipc        s0, 245264
                  sra          t0, t0, s9
                  nop
                  auipc        s7, 553564
                  sub          s11, s5, a4
                  andi         t3, t3, -1852
                  srli         s2, a5, 10
                  ori          s8, a3, -870
                  sltu         a6, a0, zero
                  nop
                  slt          tp, s4, a6
                  sra          t1, s7, a3
                  auipc        s7, 75026
                  srl          t4, a5, gp
                  nop
                  addi         s9, tp, -423
                  and          a1, a2, zero
                  sll          a0, zero, s5
                  sra          s10, s4, t1
                  nop
                  sra          tp, zero, t3
                  xor          s0, s3, s4
                  or           a2, t2, t4
                  ori          t3, t4, -508
                  auipc        tp, 263417
                  slti         s3, a6, -391
                  srl          sp, ra, s10
                  andi         s8, ra, -772
                  xor          t5, gp, t4
                  xor          t1, s11, zero
                  xor          t4, t2, a6
                  slli         t5, zero, 12
                  addi         zero, t6, -1320
                  slli         a4, s10, 6
                  slli         a7, gp, 30
                  sltiu        s5, t2, -773
                  slli         a4, s8, 25
                  andi         a0, zero, 437
                  addi         sp, s10, -1519
                  lui          a7, 339208
                  srai         zero, s4, 25
                  auipc        t3, 472252
                  slti         t0, s10, 1665
                  xori         tp, s8, 1492
                  slt          s10, s7, s4
                  slt          t4, t5, t6
                  andi         s0, tp, -970
                  sll          a7, s1, s5
                  slt          gp, s9, t3
                  andi         t2, s10, -1232
                  sra          sp, a6, t2
                  srl          t1, t1, a6
                  auipc        s9, 858318
                  add          t2, t5, a5
                  sra          a5, t6, s0
                  or           gp, s9, s8
                  slti         a4, t5, -527
                  sra          a1, a7, zero
                  andi         a2, t1, 373
                  ori          s10, a5, -1923
                  xori         s9, ra, 1363
                  slti         t2, t2, 130
                  srai         s5, t2, 21
                  xori         ra, s8, -1605
                  sra          t0, ra, s7
                  auipc        a1, 736730
                  lui          t3, 398283
                  xor          a2, a4, s2
                  sub          t3, zero, t4
                  or           t2, a5, t4
                  or           a7, s10, t4
                  ori          a5, sp, 1192
                  auipc        a5, 606193
                  slti         t3, zero, 1334
                  slli         zero, s8, 11
                  ori          s8, s2, -1245
                  li           t5, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           tp, 0xb4a9ad8a
                  li           a1, 0x0
                  li           a3, 0x1eec0878
                  li           s2, 0x0
                  li           s0, 0xb7e24635
                  li           a5, 0xded871f0
                  li           s5, 0x80000000
                  li           t4, 0xffffffff
                  li           s11, 0x7e7b68b5
                  nop
                  sub          a1, t5, s0
                  lui          tp, 601208
                  lui          s0, 749084
                  addi         s2, a3, -807
                  addi         a3, s5, -919
                  nop
                  sub          s2, a1, a3
                  sub          a3, tp, s11
                  sub          a5, s11, s5
                  addi         tp, a3, -579
                  nop
                  lui          t5, 391403
                  nop
                  lui          a1, 365720
                  add          s11, t5, s2
                  addi         t5, tp, 547
                  nop
                  add          t4, s2, s5
                  nop
                  addi         s0, s11, -972
                  add          t4, t4, t5
                  lui          a3, 957385
                  sub          a3, a1, s5
                  addi         a5, s11, 44
                  auipc        t4, 244020
                  add          s5, t4, s11
                  auipc        a3, 832281
                  sub          s2, a5, s5 #end riscv_int_numeric_corner_stream_17
                  addi         a4, ra, 1340
                  sra          t4, t6, s0
                  slt          t5, s10, a0
                  auipc        ra, 527493
                  or           s4, a1, t0
                  ori          a3, s1, 310
                  sltu         zero, s4, sp
                  srai         gp, tp, 23
                  slli         t0, a6, 18
                  slli         a4, s8, 21
                  add          t1, s4, a1
                  andi         s9, a3, 421
                  andi         a1, t3, 1612
                  and          a7, t2, gp
                  xor          t3, sp, t5
                  slli         t5, t6, 8
                  sub          ra, a1, s1
                  srli         t0, s8, 6
                  sub          s10, t3, s9
                  slli         s10, ra, 3
                  lui          zero, 868417
                  srl          a5, zero, t5
                  sra          zero, gp, a3
                  add          ra, a2, s5
                  lui          s2, 206713
                  andi         t2, tp, 108
                  sub          a5, s4, gp
                  slti         a5, a7, 1636
                  addi         zero, a7, -1573
                  slli         s11, a5, 11
                  sub          zero, a5, gp
                  slti         t1, t6, -14
                  lui          s10, 511994
                  sll          a1, s0, s9
                  sra          ra, t6, zero
                  xor          t2, s3, tp
                  auipc        t4, 808912
                  sltiu        t2, s0, 1252
                  nop
                  sra          s0, a0, s8
                  sub          a4, a1, s3
                  slt          gp, ra, a7
                  addi         a0, t4, 1678
                  srl          t3, gp, t6
                  slli         s8, a6, 10
                  addi         s8, s3, -1945
                  lui          s0, 911150
                  addi         ra, t6, 1450
                  srli         s4, ra, 18
                  xor          s7, s4, a4
                  or           s3, t5, t2
                  add          s8, s8, sp
                  auipc        a3, 588863
                  add          s11, s10, a1
                  nop
                  srai         ra, a4, 6
                  slli         s2, a5, 20
                  srl          a5, t5, ra
                  sra          s2, s9, t5
                  sub          a4, a3, t3
                  sltiu        t5, a7, 264
                  add          s3, zero, sp
                  auipc        s11, 416440
                  lui          s2, 298929
                  sltiu        s11, a3, 845
                  auipc        zero, 683459
                  srli         tp, ra, 5
                  xor          t2, s7, t4
                  ori          t4, s1, 53
                  nop
                  xor          t2, t0, s3
                  andi         a6, s3, 1918
                  slt          gp, a0, s11
                  auipc        a2, 326818
                  srai         s11, s11, 26
                  srli         a5, s10, 12
                  sltu         s7, s8, s8
                  nop
                  xori         s2, t0, 741
                  andi         a7, s7, -2011
                  auipc        a7, 878198
                  slti         a5, s8, -704
                  nop
                  xor          a7, a7, a5
                  srai         s7, t2, 3
                  auipc        gp, 462594
                  and          tp, a7, tp
                  and          t1, s7, s11
                  srli         t2, a3, 0
                  and          s4, gp, a2
                  sll          a3, ra, t5
                  slt          s0, a1, s11
                  ori          s4, s10, 489
                  addi         a4, zero, 362
                  srli         a7, s3, 19
                  addi         a3, t6, 614
                  slli         t0, s1, 3
                  andi         ra, a4, -1485
                  sra          s5, a1, t5
                  srai         t1, a4, 4
                  srli         t0, t4, 29
                  sub          t3, a7, ra
                  sltiu        zero, a2, 1891
                  slti         s5, t4, -307
                  auipc        a6, 225059
                  ori          t2, t1, -888
                  addi         a7, ra, 381
                  andi         zero, s5, 266
                  or           t2, t2, gp
                  sltiu        t2, s6, -1560
                  sll          tp, s3, a7
                  sub          a3, s11, t4
                  addi         ra, s10, 385
                  srai         s4, s2, 13
                  or           a6, s9, s7
                  lui          a7, 112705
                  andi         a2, zero, -1828
                  ori          t4, t5, -720
                  slti         a7, t4, 1480
                  slt          s2, ra, t1
                  srli         ra, t6, 16
                  sltu         t3, s5, gp
                  ori          s4, t0, 2014
                  addi         a1, t4, -1955
                  and          t3, t5, t5
                  sltiu        sp, s4, 1687
                  add          a1, ra, s4
                  xori         sp, t4, -785
                  and          s4, a6, s10
                  add          t1, ra, a2
                  sll          s2, a0, a7
                  lui          s0, 969382
                  auipc        s3, 941462
                  sra          s2, s5, sp
                  nop
                  xor          a0, a3, s6
                  slt          s4, t6, t5
                  andi         t1, a2, -1248
                  and          a1, t0, s5
                  sra          ra, tp, tp
                  xori         a0, s0, 972
                  nop
                  auipc        a1, 870543
                  xor          a2, t0, t2
                  srli         t4, a5, 0
                  nop
                  sltiu        s3, s4, -1018
                  slti         zero, t1, 375
                  sltu         tp, s3, t6
                  add          s5, a7, a3
                  slt          t2, tp, tp
                  sll          s9, s10, s1
                  sltu         t1, s7, a0
                  nop
                  and          t1, t5, a2
                  sub          a7, gp, a4
                  xori         s2, s10, -1657
                  add          s2, a5, s11
                  sra          t5, t1, s4
                  slli         t2, t4, 30
                  xori         t4, tp, -152
                  sra          s11, s5, s0
                  srl          s8, a2, s10
                  or           zero, a1, t4
                  and          s5, s0, t6
                  sll          s9, a6, ra
                  sub          zero, s0, a5
                  slli         s2, a7, 21
                  sltiu        s4, a5, 954
                  slt          s11, s4, t5
                  auipc        sp, 51422
                  nop
                  addi         ra, a7, -347
                  lui          t3, 588781
                  slti         a5, s8, 1663
                  or           zero, t0, tp
                  slt          s7, t5, s11
                  ori          s10, sp, -132
                  ori          a3, s10, -1369
                  slli         s11, a4, 6
                  auipc        s5, 278305
                  xori         a5, a1, 1381
                  ori          t1, a5, -340
                  slti         a1, s4, -1440
                  auipc        a7, 694200
                  addi         a5, s7, -366
                  addi         t1, tp, -1893
                  sub          s10, s0, zero
                  or           ra, s11, t6
                  add          a7, s3, t2
                  sub          t5, s5, t2
                  sra          s11, s6, ra
                  auipc        tp, 228412
                  sra          a6, a2, a6
                  auipc        s10, 1015114
                  slti         t3, s11, -1547
                  nop
                  sltu         s7, t0, a7
                  srli         sp, tp, 14
                  srl          s7, s6, tp
                  ori          a6, s11, 1751
                  slli         s3, a7, 8
                  nop
                  add          a3, s8, s1
                  lui          s8, 80203
                  sra          t0, s0, t2
                  slli         t0, t5, 1
                  srli         a7, a5, 8
                  sub          t3, s10, t0
                  and          s8, s8, s3
                  or           ra, s10, t0
                  srai         t0, t2, 8
                  slti         s8, t1, 1927
                  srli         t3, t6, 15
                  srli         s7, a2, 20
                  sub          s9, a0, s10
                  slt          s8, t4, s9
                  nop
                  sltu         t2, s5, a3
                  and          s4, a1, s11
                  xori         a5, a1, 1630
                  lui          a5, 313723
                  ori          a3, s8, 1987
                  nop
                  ori          a1, t1, 1127
                  sltiu        s8, s3, 1839
                  sll          s3, s4, s1
                  slti         s11, t3, 1454
                  ori          s4, s2, 1007
                  or           tp, s3, t6
                  slti         sp, t5, 1841
                  or           s10, s8, s10
                  srai         t0, s5, 14
                  and          s9, gp, s5
                  srli         s11, t1, 3
                  slti         s2, zero, 4
                  srai         t1, s7, 14
                  or           a4, a4, t6
                  ori          t2, tp, 177
                  auipc        t1, 576198
                  srli         a2, zero, 13
                  auipc        zero, 642370
                  xor          t1, t4, t5
                  and          t2, a4, a6
                  andi         s8, t4, -1472
                  sltiu        a1, t2, -1142
                  srl          t3, a0, a4
                  sub          s7, s7, tp
                  sra          a1, s7, a6
                  srl          s8, s0, s5
                  slti         s8, gp, 897
                  nop
                  sll          s7, t6, a1
                  srl          t5, a1, a6
                  or           s4, s7, gp
                  sra          s3, s6, t1
                  srli         t3, s5, 1
                  srl          t0, a6, t6
                  addi         a4, t2, -650
                  xori         t3, gp, 1634
                  srai         a0, t1, 9
                  sltiu        t0, t6, -389
                  nop
                  srl          zero, s1, s7
                  andi         t2, zero, -1193
                  and          a2, t3, t2
                  sltiu        a2, t2, 833
                  and          a6, a2, t4
                  ori          a0, t5, -1560
                  and          zero, s3, t3
                  sll          t4, s9, s2
                  srli         s4, s0, 13
                  xor          a4, tp, s6
                  srl          t4, s10, ra
                  slli         a7, a4, 9
                  srai         t1, t6, 22
                  srli         s2, gp, 12
                  lui          a6, 246992
                  slti         s0, t2, 2011
                  addi         gp, tp, 91
                  or           s11, t4, gp
                  lui          a1, 106736
                  sltu         t2, a0, a0
                  sltiu        a3, s2, 1970
                  srli         a0, s5, 27
                  xor          s7, s5, t6
                  sltiu        gp, a0, 1628
                  slt          a2, a6, s6
                  slt          tp, s3, a3
                  sll          t2, zero, gp
                  xor          gp, ra, t1
                  and          t0, a5, a3
                  or           s0, a3, t3
                  srli         s11, gp, 1
                  nop
                  slti         gp, a1, 537
                  and          t3, s10, a2
                  or           t2, s5, t5
                  slli         t5, s3, 23
                  srai         a4, a5, 19
                  ori          ra, t0, -47
                  auipc        a4, 271162
                  slli         s3, a0, 26
                  addi         t2, s4, 1765
                  auipc        t0, 283816
                  sltu         t4, s9, a7
                  addi         t1, s3, 317
                  sra          t4, t3, a2
                  srai         a0, t6, 22
                  sra          s7, s0, s4
                  addi         s5, t3, -713
                  srai         s11, a0, 8
                  addi         zero, s2, -1347
                  sub          s2, tp, a7
                  lui          a0, 426988
                  srli         a7, s2, 31
                  or           s5, tp, a5
                  addi         t3, s4, -1626
                  or           a7, gp, a0
                  srl          a2, ra, s0
                  andi         s9, sp, 252
                  sra          t4, t4, t4
                  sltu         s11, a2, s6
                  srai         a0, s6, 12
                  xor          s0, a0, tp
                  ori          a0, t0, -356
                  or           t2, a0, a4
                  slt          t2, zero, zero
                  slli         s5, s3, 6
                  sltiu        gp, t5, -1920
                  xor          t5, s4, t1
                  add          gp, a0, a6
                  srai         s4, t3, 26
                  lui          s2, 962790
                  sltu         a3, s9, zero
                  xori         tp, sp, 1209
                  auipc        a4, 938972
                  and          s5, a3, zero
                  srl          t1, s4, s9
                  slli         s7, a2, 5
                  slti         tp, a6, -548
                  xor          a6, a2, t2
                  slli         t1, s11, 21
                  auipc        t1, 177416
                  srai         gp, t2, 23
                  sll          a6, t4, sp
                  srai         a4, a0, 12
                  addi         t0, t2, 576
                  andi         s2, s1, 411
                  sra          tp, s3, s5
                  ori          t0, s0, -405
                  sra          a1, s3, t4
                  srli         a7, t6, 11
                  ori          s3, s1, 1338
                  sltu         t2, sp, a6
                  auipc        s4, 573758
                  auipc        t5, 143847
                  lui          ra, 46913
                  addi         a3, s3, -819
                  srl          s4, a4, t3
                  slli         zero, t2, 9
                  slli         t5, s9, 8
                  or           s3, s6, t5
                  sll          t3, a0, a6
                  slti         a5, s8, 73
                  srli         a0, t5, 11
                  sll          a0, s10, a5
                  or           s5, t5, t2
                  ori          s2, s7, 33
                  or           s10, t0, t6
                  and          a4, tp, a2
                  sra          s0, gp, s5
                  add          s10, zero, s11
                  or           sp, s6, sp
                  nop
                  slli         s8, a0, 7
                  xor          sp, s2, s0
                  nop
                  addi         a6, a0, 952
                  slli         s11, ra, 15
                  sltu         a6, t6, s10
                  xori         t0, s5, -1900
                  sra          s3, a3, a3
                  srai         t2, t2, 17
                  sltiu        ra, t6, -203
                  sltiu        t1, s3, -2047
                  or           s2, t1, s11
                  sltu         tp, a5, a5
                  nop
                  addi         s2, t3, 1140
                  sltiu        ra, s8, 941
                  addi         a5, t6, 1888
                  andi         s10, s10, -1030
                  xor          a2, s0, t1
                  nop
                  slti         s3, s2, 41
                  sub          a3, a2, s6
                  sltu         s0, t2, s8
                  xori         sp, a4, -1922
                  slti         a6, a6, 692
                  sltu         s0, ra, a7
                  add          t0, a7, tp
                  andi         s8, s0, 228
                  ori          t4, s2, 1248
                  xori         s5, t3, 222
                  srai         a7, a6, 28
                  andi         t1, t5, -892
                  add          a5, s3, t5
                  sll          s11, s10, zero
                  xor          a6, s4, a3
                  xor          s5, tp, s5
                  slti         t2, a0, 1032
                  srli         ra, t2, 20
                  and          s9, s0, a7
                  srli         a0, s10, 6
                  sltiu        t1, s1, -1246
                  or           a2, t3, t1
                  xori         s2, a3, -1794
                  auipc        s2, 1036629
                  sltiu        gp, t1, 961
                  lui          s3, 1001284
                  andi         a0, a5, 1928
                  nop
                  srai         s8, a5, 0
                  slti         s9, a6, 212
                  xor          t2, gp, s8
                  sltu         zero, t1, a1
                  add          s10, s2, t1
                  ori          a3, t6, -915
                  sra          t4, t5, sp
                  add          a2, t5, tp
                  slti         a7, s0, 1346
                  and          t3, s4, s5
                  add          s0, s5, t4
                  srl          t5, t6, s1
                  andi         s11, a6, -838
                  xori         s3, t1, -856
                  srai         gp, s6, 9
                  srl          gp, s9, s5
                  or           s11, sp, t1
                  slt          zero, t3, a5
                  nop
                  or           s3, a2, a3
                  or           a5, s5, s9
                  xor          s7, s7, s1
                  srli         t4, t3, 24
                  ori          a0, zero, 149
                  sub          a6, a5, s8
                  or           t1, tp, a1
                  sltu         a1, sp, s3
                  xor          a7, s6, s4
                  slt          zero, s9, t6
                  nop
                  addi         a0, t4, 1701
                  nop
                  slti         sp, s11, -1757
                  sltu         a6, zero, s2
                  sub          s2, a0, t0
                  sll          t1, t1, sp
                  sll          s3, a3, t0
                  nop
                  xori         s3, s7, -1900
                  and          t0, t0, sp
                  srl          a2, ra, tp
                  xor          a6, ra, t3
                  slli         s11, zero, 7
                  slli         a0, s2, 4
                  slti         s9, t6, 119
                  add          a0, a5, s8
                  add          t4, t4, s11
                  srai         s9, s5, 29
                  sra          a5, s4, zero
                  and          t2, a1, s4
                  xori         t4, t3, 561
                  xori         sp, s1, 1328
                  srai         a7, t0, 25
                  slli         t1, s9, 23
                  srli         a6, zero, 10
                  ori          s11, a6, -65
                  and          t4, ra, a6
                  auipc        t4, 1007735
                  slt          t1, s7, s8
                  add          a6, s0, s6
                  lui          t5, 248148
                  sltiu        t4, s11, -55
                  auipc        ra, 304971
                  xor          ra, a5, t4
                  addi         t0, a6, 1414
                  slli         s2, t6, 19
                  slt          s8, a2, s7
                  xor          s3, s4, a6
                  slti         s4, s5, 365
                  addi         a7, s0, 345
                  nop
                  slli         s8, s4, 7
                  and          t1, a3, a2
                  slti         t4, gp, -1264
                  slt          a7, a5, ra
                  sltiu        a6, t5, 1307
                  nop
                  or           s10, t5, zero
                  sltiu        a5, s5, 694
                  ori          a1, s1, 1362
                  sltiu        s0, s5, 1033
                  sub          t0, a7, s9
                  xori         t1, s6, 1253
                  addi         s3, t0, -109
                  sltu         s7, t2, a5
                  slli         a4, s0, 1
                  add          a7, s6, s4
                  lui          s9, 386630
                  andi         t5, s9, 1358
                  srli         sp, ra, 9
                  nop
                  andi         s5, a6, 452
                  srl          a0, a6, t2
                  andi         a1, zero, -1716
                  sra          a3, s1, t3
                  slt          ra, s0, a0
                  sub          a4, sp, a3
                  andi         s4, t1, 783
                  addi         s8, s11, 1161
                  slt          s4, s6, t1
                  andi         a2, a6, -1131
                  xor          s9, s5, t4
                  sub          s8, s0, a7
                  slli         t3, s5, 9
                  xori         gp, s10, -400
                  slt          s7, a4, zero
                  srl          a0, a1, sp
                  andi         s7, s9, -1311
                  srli         a2, sp, 24
                  add          s11, a7, a2
                  nop
                  auipc        s3, 332634
                  sra          a0, a3, t2
                  slt          t3, sp, t5
                  srl          a3, a6, s1
                  slt          zero, t1, s4
                  sltiu        t2, s2, 1853
                  xori         t3, t6, 1443
                  add          s8, a1, t5
                  and          s3, s3, t2
                  andi         gp, s11, -1675
                  srai         t1, a4, 31
                  slti         t2, s7, -439
                  addi         t0, t2, 1752
                  sra          t5, sp, t6
                  slli         a4, s7, 18
                  addi         t5, s2, 717
                  auipc        s4, 176590
                  slli         s7, s4, 9
                  add          tp, s11, a1
                  nop
                  sra          a0, s3, a6
                  sra          s0, zero, s0
                  and          ra, s8, a1
                  addi         sp, t4, -813
                  and          a1, s4, t4
                  addi         t5, s9, 877
                  and          sp, t0, zero
                  slt          s0, t1, t6
                  sub          a1, gp, tp
                  addi         a7, tp, 1770
                  and          t1, s5, a0
                  xori         t5, ra, -599
                  xor          s5, a2, s3
                  nop
                  xor          s3, s10, s11
                  xor          t3, gp, a7
                  auipc        s8, 216473
                  addi         s0, s2, -1863
                  slt          a1, a2, a1
                  add          t5, tp, t4
                  xor          t5, zero, s3
                  sub          s3, ra, s1
                  xor          a7, sp, a6
                  srai         zero, s11, 29
                  or           t1, t6, s8
                  slt          tp, a5, a3
                  sub          tp, t2, s6
                  lui          s7, 1002878
                  xori         s9, s6, 408
                  addi         a2, a6, 1265
                  srai         t1, t4, 2
                  xori         ra, s7, 1876
                  srl          zero, s8, a1
                  sub          a2, ra, s1
                  slt          zero, a4, a3
                  srai         s3, a5, 6
                  add          a2, a1, t1
                  ori          a7, s11, -246
                  and          t2, s4, s5
                  lui          s4, 438059
                  sll          a0, s0, sp
                  srai         a1, t5, 13
                  slli         t0, t1, 27
                  andi         a0, s4, 1899
                  sll          a4, t3, s5
                  lui          s8, 542695
                  sub          s11, s9, s0
                  srli         s4, a5, 10
                  addi         a6, a0, -1828
                  and          s10, t2, a3
                  addi         t5, s3, 709
                  sra          zero, s11, s10
                  slt          a4, tp, a2
                  addi         a5, sp, -1345
                  sltu         zero, s9, t6
                  slli         s9, s6, 27
                  sll          s3, t1, a7
                  slti         s2, s11, 16
                  lui          t3, 326883
                  ori          s9, s2, 407
                  sltu         s5, s2, s0
                  or           a2, s4, s0
                  and          gp, t6, s8
                  srai         s11, s1, 20
                  xor          t2, t5, t1
                  andi         s5, a1, -1636
                  add          tp, a6, t3
                  xori         a3, t1, 767
                  lui          t4, 743864
                  lui          gp, 727679
                  srli         zero, s11, 23
                  auipc        s5, 981265
                  slti         a5, s2, -920
                  slt          tp, s10, t1
                  auipc        a7, 639908
                  slli         t5, t6, 29
                  add          a0, s4, gp
                  or           ra, zero, s3
                  slli         t4, a2, 16
                  nop
                  slt          s3, s9, sp
                  sltu         a7, a5, a3
                  sltiu        s10, t5, 302
                  slli         a3, t0, 15
                  addi         tp, s4, 1954
                  add          s2, zero, s7
                  lui          a3, 1013641
                  srl          s4, s6, a1
                  srli         sp, a1, 7
                  and          s11, t2, a0
                  xori         a6, t4, 270
                  and          t1, s8, a0
                  ori          s4, s4, 164
                  slt          t0, t6, s1
                  sub          gp, a0, a2
                  slti         t4, sp, 1052
                  auipc        sp, 16928
                  sltiu        t1, s8, -881
                  nop
                  xori         sp, a5, -1236
                  sltu         ra, s2, s8
                  slli         gp, a3, 1
                  srai         a6, t5, 9
                  slti         s11, s8, -292
                  ori          a2, a6, 1839
                  auipc        t2, 160806
                  srl          s4, t1, a2
                  ori          s8, a1, -179
                  slli         s9, s9, 30
                  xor          s0, s10, s6
                  slt          a7, a1, a4
                  xor          zero, s4, t3
                  slt          s8, gp, t0
                  slli         t1, a6, 3
                  sltu         sp, t4, s0
                  lui          a0, 434996
                  nop
                  sra          s11, a7, s11
                  addi         s2, s0, -611
                  addi         zero, t2, 1326
                  slt          t4, a0, sp
                  sltiu        s9, tp, -655
                  slti         t1, t5, 1531
                  addi         a4, s1, 1117
                  addi         s7, s10, -1903
                  add          s9, a2, a2
                  lui          a7, 676987
                  xori         a4, t1, -44
                  slti         s4, a1, 1176
                  sra          s10, a0, s2
                  sra          s8, t5, zero
                  xori         a7, t3, -1603
                  xor          a6, s2, s3
                  srli         a7, s11, 17
                  and          s9, t5, s2
                  add          a2, t6, s9
                  slti         t5, s4, 1804
                  addi         t1, s8, 1301
                  auipc        ra, 260648
                  srai         s2, a5, 6
                  andi         t1, s10, -1356
                  andi         t0, t6, 1427
                  add          s0, a5, s11
                  sltiu        a5, s11, 266
                  slli         t3, s7, 25
                  addi         gp, ra, -1108
                  andi         a3, a6, 2017
                  xori         a6, s10, 365
                  srl          t2, gp, a2
                  ori          s7, s5, -1980
                  auipc        s10, 782561
                  ori          a7, a7, 378
                  auipc        t3, 161748
                  xori         t1, s2, 1369
                  ori          s2, a7, -2020
                  nop
                  xori         a4, a1, 1183
                  srl          a4, t2, ra
                  add          a7, t1, gp
                  slt          ra, s3, a3
                  srli         t3, t3, 5
                  sltu         s4, a7, t2
                  xor          s0, t3, t6
                  sra          s10, t1, sp
                  slti         s11, s9, -2013
                  srai         s8, a6, 25
                  slli         s0, sp, 1
                  slti         a2, s3, -1040
                  xor          t2, tp, a3
                  srai         t2, gp, 11
                  srli         s2, t4, 1
                  srli         t5, ra, 30
                  srai         s5, tp, 1
                  nop
                  add          tp, s3, a4
                  xor          a0, s4, a4
                  or           t0, a6, s3
                  slti         a1, s3, 1829
                  srli         a6, s3, 2
                  sra          a5, a2, t6
                  sltiu        s4, s10, 685
                  srl          s9, a4, a6
                  lui          t3, 889892
                  or           a7, a3, s8
                  auipc        t4, 987827
                  addi         a0, s2, 1133
                  ori          tp, t6, 709
                  add          t1, t0, s10
                  slti         t0, a7, 264
                  sltu         s9, s8, t1
                  srli         gp, s1, 26
                  slli         tp, t1, 21
                  srl          s11, s10, a2
                  andi         s4, a7, -701
                  or           a1, s10, a6
                  andi         a2, a4, -891
                  sltu         a3, a4, a4
                  xori         s2, a4, -449
                  andi         tp, s6, -1186
                  nop
                  add          a6, s7, t3
                  ori          s8, a5, -1071
                  sltu         t1, a1, s7
                  auipc        s7, 402175
                  add          t0, t0, a6
                  sra          a3, a5, s9
                  sltu         sp, s5, t0
                  andi         s8, t3, -326
                  and          zero, s10, s10
                  sub          s0, tp, t2
                  and          s8, a1, s2
                  ori          sp, s4, -1648
                  and          s10, s3, ra
                  lui          sp, 366051
                  nop
                  sub          a1, a1, t3
                  sltiu        s7, s10, -820
                  sltiu        s9, s8, 1297
                  slt          t0, gp, a0
                  add          s8, s6, s9
                  add          s5, ra, s11
                  slt          tp, tp, ra
                  sub          s9, gp, a4
                  lui          t1, 237050
                  lui          sp, 505520
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
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x31, x22, zero
                  csrr x10, 0x300 # MSTATUS
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 31
                  bne x10, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x10, 0x341 # MEPC
                  csrr x10, 0x342 # MCAUSE
                  li x8, 0x3 # BREAKPOINT
                  beq x10, x8, ebreak_handler
                  li x8, 0x8 # ECALL_UMODE
                  beq x10, x8, ecall_handler
                  li x8, 0x9 # ECALL_SMODE
                  beq x10, x8, ecall_handler
                  li x8, 0xb # ECALL_MMODE
                  beq x10, x8, ecall_handler
                  li x8, 0x1
                  beq x10, x8, instr_fault_handler
                  li x8, 0x5
                  beq x10, x8, load_fault_handler
                  li x8, 0x7
                  beq x10, x8, store_fault_handler
                  li x8, 0xc
                  beq x10, x8, pt_fault_handler
                  li x8, 0xd
                  beq x10, x8, pt_fault_handler
                  li x8, 0xf
                  beq x10, x8, pt_fault_handler
                  li x8, 0x2 # ILLEGAL_INSTRUCTION
                  beq x10, x8, illegal_instr_handler
                  csrr x8, 0x343 # MTVAL
                  1: la x9, test_done
                  jalr x1, x9, 0

ecall_handler:    
                  la x10, _start
                  sw x0, 0(x10)
                  sw x1, 4(x10)
                  sw x2, 8(x10)
                  sw x3, 12(x10)
                  sw x4, 16(x10)
                  sw x5, 20(x10)
                  sw x6, 24(x10)
                  sw x7, 28(x10)
                  sw x8, 32(x10)
                  sw x9, 36(x10)
                  sw x10, 40(x10)
                  sw x11, 44(x10)
                  sw x12, 48(x10)
                  sw x13, 52(x10)
                  sw x14, 56(x10)
                  sw x15, 60(x10)
                  sw x16, 64(x10)
                  sw x17, 68(x10)
                  sw x18, 72(x10)
                  sw x19, 76(x10)
                  sw x20, 80(x10)
                  sw x21, 84(x10)
                  sw x22, 88(x10)
                  sw x23, 92(x10)
                  sw x24, 96(x10)
                  sw x25, 100(x10)
                  sw x26, 104(x10)
                  sw x27, 108(x10)
                  sw x28, 112(x10)
                  sw x29, 116(x10)
                  sw x30, 120(x10)
                  sw x31, 124(x10)
                  la x9, write_tohost
                  jalr x0, x9, 0

instr_fault_handler:
                  add x22, x31, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

load_fault_handler:
                  add x22, x31, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

store_fault_handler:
                  add x22, x31, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

ebreak_handler:   
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x22, x31, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

illegal_instr_handler:
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x22, x31, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x10, 0x300 # MSTATUS;
                  csrr  x10, 0x304 # MIE;
                  csrr  x10, 0x344 # MIP;
                  csrrc x10, 0x344, x10 # MIP;
                  add x22, x31, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
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
