.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x26, h0_start
jalr x0, x26, 0
h0_start:
                  li x31, 0x40000100
                  csrw 0x301, x31
kernel_sp:        
                  la x29, kernel_stack_end

trap_vec_init:    
                  la x31, mtvec_handler
                  ori x31, x31, 1
                  csrw 0x305, x31 # MTVEC

mepc_setup:       
                  la x31, init
                  csrw 0x341, x31

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x31, 0x1800
                  csrw 0x300, x31 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x7
                  li x2, 0x80000000
                  li x3, 0x5
                  li x4, 0x0
                  li x5, 0x0
                  li x6, 0x0
                  li x8, 0x0
                  li x9, 0x2
                  li x10, 0x7
                  li x11, 0xe8580a06
                  li x12, 0xec48834c
                  li x13, 0x878acea1
                  li x14, 0x6095a564
                  li x15, 0xc
                  li x16, 0xf543b6bd
                  li x17, 0xbd21be7c
                  li x18, 0x986dfb6
                  li x19, 0x8ad722a4
                  li x20, 0xb98853c7
                  li x21, 0x80000000
                  li x22, 0xd
                  li x23, 0xa
                  li x24, 0xc
                  li x25, 0x80000000
                  li x26, 0x80000000
                  li x27, 0xd
                  li x28, 0x80000000
                  li x30, 0x0
                  li x31, 0x6
                  la x7, user_stack_end
main:             li           s4, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           s0, 0x0
                  li           a5, 0x80000000
                  li           a0, 0xffffffff
                  li           s9, 0x3c2c3324
                  li           s7, 0xc774e821
                  li           s5, 0x80000000
                  li           s8, 0xffffffff
                  li           sp, 0xffffffff
                  li           t0, 0x9dd5722a
                  addi         s4, s8, -85
                  add          a5, sp, s0
                  lui          s8, 276641
                  lui          s8, 365336
                  addi         s8, s5, -421
                  sub          s4, s9, s8
                  auipc        s8, 532964
                  sub          sp, a0, s5
                  lui          s5, 115243
                  lui          s8, 953670
                  auipc        a0, 582402
                  nop
                  sub          t0, s8, s7
                  lui          a5, 130883
                  lui          s9, 40603
                  sub          s5, a5, a5
                  sub          s7, a0, s4
                  sub          s7, s5, s5
                  add          a0, s5, s8
                  sub          s5, a5, s5
                  addi         a5, s0, 640
                  lui          s5, 738191 #end riscv_int_numeric_corner_stream_16
                  li           a1, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           t3, 0xffffffff
                  li           s1, 0xffffffff
                  li           s7, 0x80000000
                  li           s11, 0xffffffff
                  li           t5, 0x80000000
                  li           a7, 0xffffffff
                  li           tp, 0x0
                  li           a5, 0xfed4b482
                  li           sp, 0x6827af77
                  lui          sp, 661132
                  addi         s1, a1, 580
                  sub          sp, a1, a1
                  lui          sp, 309600
                  auipc        s7, 256856
                  sub          t5, tp, s1
                  addi         sp, a7, -445
                  auipc        tp, 723003
                  add          s1, tp, a1
                  addi         a1, t5, -41
                  add          a5, tp, s1
                  sub          tp, s1, sp
                  nop
                  sub          t3, s7, t3
                  auipc        sp, 35331
                  lui          t5, 389788
                  lui          s7, 759991
                  nop
                  addi         sp, a7, 748 #end riscv_int_numeric_corner_stream_14
                  li           a7, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           a1, 0x484dc8c0
                  li           s7, 0x80000000
                  li           a4, 0xbc9f38bd
                  li           t0, 0x0
                  li           s1, 0x80000000
                  li           s4, 0x0
                  li           a0, 0x80000000
                  li           t5, 0x80000000
                  li           a5, 0x80000000
                  addi         a0, a4, -458
                  nop
                  sub          a7, a4, a1
                  auipc        s1, 227000
                  lui          a1, 441871
                  addi         s4, s4, 1056
                  lui          s7, 658869
                  sub          a4, a5, t5
                  nop
                  add          s7, a5, a4
                  addi         t0, t0, -778
                  add          a4, s1, s7
                  addi         a0, t0, 191
                  addi         a1, s4, -1152
                  nop
                  auipc        t0, 598243
                  lui          s1, 124309
                  lui          a4, 106587
                  auipc        a5, 1023363
                  auipc        s7, 514423
                  auipc        a7, 757237
                  nop
                  addi         t0, t0, 1877 #end riscv_int_numeric_corner_stream_18
                  li           t0, 0xea0c0e40 #start riscv_int_numeric_corner_stream_8
                  li           s4, 0x0
                  li           a0, 0x0
                  li           t5, 0xffffffff
                  li           a4, 0x8e3c2e45
                  li           s7, 0x0
                  li           a2, 0xffffffff
                  li           gp, 0x80000000
                  li           a6, 0x80000000
                  li           t6, 0xd4425d23
                  addi         a0, gp, 784
                  sub          t0, a2, t6
                  lui          a6, 22756
                  sub          s7, t5, t5
                  nop
                  lui          gp, 651157
                  auipc        t5, 695911
                  nop
                  lui          a2, 892447
                  sub          s7, a4, a0
                  sub          a0, a0, a6
                  nop
                  lui          a4, 818331
                  addi         a6, s7, -1385
                  lui          t0, 890483
                  nop
                  sub          a2, s4, s4
                  lui          a0, 1043715
                  add          a6, t0, gp
                  addi         a4, a2, -1153
                  auipc        s4, 588837
                  auipc        s7, 476387
                  auipc        s4, 680670
                  auipc        a6, 947887
                  addi         a6, t0, -724
                  addi         a4, s4, -178
                  auipc        a4, 894443
                  nop
                  sub          s7, a2, a0 #end riscv_int_numeric_corner_stream_8
                  li           a1, 0x0 #start riscv_int_numeric_corner_stream_10
                  li           t5, 0xffffffff
                  li           tp, 0x989c5286
                  li           s3, 0x80000000
                  li           a6, 0x0
                  li           t6, 0xfa653c36
                  li           s11, 0xffffffff
                  li           s9, 0xffffffff
                  li           sp, 0x0
                  li           gp, 0xffffffff
                  nop
                  add          tp, t5, s11
                  nop
                  nop
                  auipc        t5, 720511
                  sub          sp, t6, s11
                  auipc        t6, 1010998
                  lui          s9, 12404
                  sub          s9, t6, s9
                  sub          tp, a1, t6
                  addi         a6, a1, -1956
                  sub          a6, t6, s9
                  add          a1, a1, s9
                  nop
                  add          s9, sp, a1
                  addi         gp, a1, -1852 #end riscv_int_numeric_corner_stream_10
                  li           a3, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           tp, 0x80000000
                  li           gp, 0xffffffff
                  li           sp, 0xbe269e9
                  li           a5, 0x0
                  li           ra, 0xffffffff
                  li           t6, 0x0
                  li           s9, 0xd345bfff
                  li           t1, 0x7a8e057f
                  li           s3, 0xffffffff
                  auipc        ra, 701719
                  add          a5, t1, s3
                  addi         s3, t6, -1009
                  lui          tp, 673359
                  lui          ra, 210378
                  sub          t1, t6, s3
                  sub          s3, a3, s3
                  add          ra, s9, sp
                  add          gp, ra, sp
                  auipc        tp, 586445
                  addi         t6, s9, -252
                  nop
                  nop
                  nop
                  add          tp, tp, sp
                  addi         a3, s9, -712
                  addi         ra, a3, 1529
                  lui          s3, 66899
                  addi         tp, gp, 863
                  sub          gp, a5, t1
                  auipc        t1, 814794
                  sub          s3, a3, a3
                  auipc        s9, 565130
                  sub          s9, a3, t1
                  auipc        sp, 455419
                  sub          s9, s3, t1
                  lui          sp, 372376
                  nop
                  nop #end riscv_int_numeric_corner_stream_2
                  li           t5, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           s11, 0xffffffff
                  li           t1, 0x80000000
                  li           s8, 0xd8d61b50
                  li           s9, 0x2efadbd6
                  li           ra, 0xffffffff
                  li           a5, 0xffffffff
                  li           tp, 0xffffffff
                  li           a2, 0x80000000
                  li           s7, 0x80000000
                  lui          s9, 846139
                  add          t5, s8, tp
                  add          t1, t5, a5
                  add          s8, s11, tp
                  addi         s9, s11, 554
                  sub          s11, s9, s7
                  lui          s11, 932207
                  sub          a5, t1, a2
                  auipc        a2, 847633
                  lui          t5, 779467
                  nop
                  sub          s11, s11, a2
                  sub          s11, t5, t5
                  sub          tp, a5, tp
                  sub          s7, t1, a5
                  sub          t5, ra, tp
                  add          a2, s7, s11 #end riscv_int_numeric_corner_stream_12
                  li           s7, 0xef55550 #start riscv_int_numeric_corner_stream_13
                  li           s3, 0x0
                  li           s1, 0x0
                  li           a1, 0x68661a3e
                  li           t1, 0xffffffff
                  li           a2, 0xffffffff
                  li           s0, 0xffffffff
                  li           s4, 0xeced3b2f
                  li           s5, 0x8b498ad8
                  li           a7, 0x80000000
                  sub          s3, s5, s3
                  auipc        s1, 707209
                  sub          a2, s0, t1
                  lui          s7, 695861
                  add          a2, t1, a7
                  nop
                  addi         s1, a1, -191
                  nop
                  add          s5, t1, a7
                  sub          s3, a1, s5
                  lui          a1, 540155
                  sub          s3, s0, s1
                  add          s7, s4, a7
                  sub          s1, a2, s0
                  auipc        s7, 72659
                  auipc        s7, 372938
                  auipc        t1, 109940
                  lui          s4, 401155
                  lui          s1, 439744
                  sub          a7, s4, s4
                  add          s7, s5, s1
                  auipc        s7, 872047
                  add          a7, a2, t1
                  auipc        s3, 94628
                  nop
                  nop
                  auipc        a2, 1028813
                  nop #end riscv_int_numeric_corner_stream_13
                  li           s9, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           s6, 0x80000000
                  li           s8, 0xf917cdd0
                  li           a7, 0x80000000
                  li           tp, 0x80000000
                  li           s1, 0x80000000
                  li           t3, 0x80000000
                  li           s3, 0xffffffff
                  li           t5, 0xffffffff
                  li           sp, 0xdc2a85dc
                  lui          tp, 993411
                  auipc        s3, 1032373
                  add          tp, s6, tp
                  nop
                  nop
                  auipc        tp, 369105
                  sub          s8, s9, a7
                  sub          sp, s9, t5
                  nop
                  auipc        s3, 946681
                  sub          s8, sp, s3
                  lui          sp, 885648
                  nop
                  auipc        s6, 747909
                  nop
                  addi         t5, tp, 1725
                  addi         sp, sp, -1565
                  addi         tp, a7, 2023
                  auipc        s3, 493917
                  nop
                  lui          s8, 904344
                  addi         s1, s9, -1833
                  auipc        s8, 536690 #end riscv_int_numeric_corner_stream_11
                  srl          t1, t5, s7
                  srai         a2, a7, 3
                  or           a7, sp, s8
                  add          ra, t1, s2
                  slt          s0, t4, a6
                  srl          a7, a1, t4
                  add          a6, s1, t6
                  sltu         t3, s1, s0
                  sltu         t6, s1, a4
                  slt          t3, a1, a0
                  add          sp, s11, t4
                  slti         a4, t5, -947
                  andi         a6, s8, -1661
                  srai         gp, a4, 9
                  xori         a1, sp, 1931
                  andi         s9, tp, 1858
                  sltu         s11, s7, tp
                  sra          s7, s11, a2
                  srl          t6, s0, s4
                  srai         a4, t1, 10
                  ori          a0, a3, 609
                  and          s5, s4, gp
                  and          t6, s11, s3
                  sub          s8, gp, s11
                  sltu         s1, s3, a3
                  sub          a5, a7, a5
                  slli         s5, s9, 19
                  slti         s0, t1, -1910
                  srli         gp, s8, 14
                  andi         ra, a2, 467
                  addi         t3, s10, 337
                  add          a1, t4, a2
                  srai         s1, s5, 2
                  or           a0, s5, t0
                  addi         t0, s7, 1938
                  srl          gp, s10, s3
                  lui          a3, 669657
                  xor          ra, s10, t6
                  sltiu        a4, gp, -61
                  ori          s1, ra, 147
                  sltiu        t0, s1, -120
                  nop
                  add          a2, a5, t4
                  or           a6, gp, s3
                  addi         a6, s5, -1734
                  xori         a7, a4, -2002
                  slt          s4, s1, a3
                  and          tp, sp, a4
                  sll          sp, s7, t3
                  and          s2, tp, a3
                  or           s9, a3, s10
                  sll          t5, s7, t3
                  sltiu        t5, t1, 1639
                  sltiu        t6, s11, -875
                  slt          a6, t5, t3
                  srai         a6, t0, 0
                  slli         s1, s2, 8
                  and          gp, a2, a4
                  slti         tp, t0, -932
                  ori          s2, a3, 803
                  sra          t0, ra, s5
                  lui          s8, 735196
                  auipc        a3, 456166
                  addi         a6, s6, 1585
                  srli         t3, a4, 17
                  or           a7, a4, sp
                  add          s3, t4, t6
                  slti         t3, s6, -1900
                  slti         a7, a7, -1461
                  nop
                  sub          sp, s1, t6
                  andi         gp, t2, 923
                  sll          t1, a7, s9
                  slli         s0, a4, 24
                  sra          ra, t6, t4
                  sltu         s3, s0, t0
                  sll          s2, t3, s0
                  andi         a0, t3, -1219
                  slti         s0, gp, -1489
                  lui          s5, 380535
                  nop
                  slt          a5, s6, t4
                  xori         s6, s9, -1696
                  srl          a2, s7, t1
                  slli         t1, s8, 4
                  srl          sp, s3, s2
                  add          a3, a5, t2
                  auipc        ra, 37837
                  or           s5, a3, s7
                  xori         a5, s9, -318
                  sltiu        sp, t1, 591
                  srl          a4, zero, s6
                  sltu         tp, a2, s2
                  and          zero, s4, tp
                  sll          s11, s8, a4
                  slt          tp, s6, a0
                  and          sp, a4, ra
                  xor          zero, s11, a1
                  and          a1, a0, s5
                  lui          a4, 449812
                  srli         t0, s1, 18
                  slti         a1, zero, -1107
                  lui          s5, 220870
                  srai         s8, a3, 20
                  sll          s11, t3, a3
                  sub          a0, s4, t1
                  slt          zero, sp, s11
                  nop
                  ori          t5, t2, 1341
                  srai         sp, sp, 22
                  srli         a3, ra, 12
                  slt          t5, a7, s4
                  slti         s8, tp, -1803
                  slt          t0, s4, t6
                  andi         a0, s4, -1867
                  lui          t0, 235951
                  sltu         a3, s7, s10
                  xor          s1, ra, s3
                  srai         t1, a1, 13
                  auipc        s8, 462232
                  or           s7, ra, t0
                  slti         t5, s4, -2002
                  srl          s2, a1, gp
                  slli         tp, t2, 22
                  nop
                  sltiu        t3, a4, 1264
                  and          gp, a0, a1
                  sltu         a3, zero, a5
                  sub          ra, t0, s7
                  sll          s2, a2, a0
                  slt          s11, a4, s3
                  ori          t0, ra, 348
                  srli         s1, s0, 9
                  xori         ra, a4, -1014
                  srl          a6, s2, gp
                  xor          s5, a2, t3
                  slli         a7, s2, 24
                  andi         s3, t6, 994
                  auipc        t3, 120494
                  slli         t3, a7, 29
                  sll          a0, s8, s10
                  sltu         t1, s10, tp
                  nop
                  nop
                  and          a4, a7, s2
                  ori          s4, s7, 312
                  xor          s11, t5, t3
                  or           a0, t6, zero
                  srai         zero, a3, 4
                  sub          s5, t0, t2
                  andi         a1, zero, 862
                  sltu         s4, sp, s10
                  srl          s5, a0, ra
                  auipc        s9, 432428
                  slli         zero, a1, 19
                  slt          s5, s1, t6
                  xor          s11, s5, s10
                  addi         a2, a0, -51
                  ori          s5, s9, -1697
                  auipc        a0, 691879
                  add          sp, a7, t2
                  and          t5, gp, s4
                  sra          tp, s9, s2
                  slti         s6, s10, -297
                  add          a0, gp, s4
                  sltu         a0, zero, a5
                  sltiu        gp, t3, 486
                  auipc        s11, 587099
                  srai         a1, ra, 0
                  sltu         t5, s8, a6
                  xor          s5, t2, a5
                  slt          tp, sp, zero
                  slti         gp, s3, 1430
                  slt          a3, a2, a3
                  sll          ra, a3, s5
                  and          s8, gp, a1
                  sltu         a7, a0, gp
                  sltu         s2, a3, s1
                  xori         a0, t0, -1162
                  add          a0, gp, a2
                  slt          t3, ra, a7
                  xor          s8, t6, s6
                  sra          s7, a5, s10
                  add          t6, s6, s6
                  li           s9, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           a5, 0x0
                  li           sp, 0x80000000
                  li           s8, 0x80000000
                  li           ra, 0x2d6e3838
                  li           a0, 0xfb769fc8
                  li           s1, 0xbfde3992
                  li           a7, 0x80000000
                  li           t3, 0xffffffff
                  li           s0, 0xffffffff
                  nop
                  nop
                  lui          a0, 932783
                  lui          ra, 615395
                  addi         a0, a0, 1566
                  addi         s0, a0, -860
                  add          ra, a5, s9
                  sub          sp, s0, s1
                  nop
                  auipc        s1, 646026
                  nop
                  add          a0, a0, a0
                  auipc        s1, 768778
                  add          s1, sp, ra
                  addi         t3, a0, -301
                  add          sp, s0, s8
                  sub          a0, sp, s9 #end riscv_int_numeric_corner_stream_1
                  addi         s11, s4, 1898
                  lui          s1, 548763
                  and          s2, s4, t5
                  slli         zero, gp, 23
                  slti         t3, t6, 733
                  sll          a1, s10, s3
                  sub          t1, s1, t0
                  lui          a6, 938181
                  ori          tp, a2, 1384
                  auipc        zero, 260595
                  or           s5, tp, t3
                  addi         s2, a6, -1624
                  sltu         a0, s8, gp
                  andi         t3, t0, 1257
                  sll          s6, a3, s11
                  sltu         t1, a7, a6
                  ori          t3, sp, -403
                  srai         a7, s10, 24
                  slti         sp, s3, -207
                  and          a5, a5, a4
                  srai         a2, a2, 27
                  sll          t0, a7, s7
                  nop
                  add          s7, zero, s9
                  sub          s5, s6, t3
                  sltu         s5, s8, s0
                  slt          s3, t3, t1
                  add          a5, zero, a2
                  slt          a4, a7, t0
                  or           s3, s4, s0
                  xor          a1, s0, ra
                  sltu         s8, a3, s2
                  slt          a5, a5, sp
                  andi         zero, s7, 46
                  slli         t3, t0, 15
                  slli         tp, a7, 4
                  sltiu        t1, a6, -499
                  srli         s2, a3, 7
                  sltu         s3, t5, s10
                  sra          s5, a1, zero
                  ori          gp, t3, -1561
                  srl          a4, zero, s6
                  or           s3, s3, t3
                  xor          s6, s1, tp
                  add          s5, t0, s9
                  and          s1, s3, t3
                  slt          t3, zero, s4
                  add          t0, a1, t4
                  srai         ra, s3, 7
                  auipc        s4, 674503
                  and          ra, t0, gp
                  xor          a3, a0, a7
                  sll          s2, t0, a0
                  sltu         s3, t3, t5
                  sub          s1, t4, s8
                  srl          s6, a4, s1
                  srl          s2, s8, sp
                  srli         t6, t0, 14
                  srai         s11, t3, 7
                  xor          t6, ra, s2
                  xori         a5, a7, 1987
                  srli         a7, s10, 31
                  slti         tp, a6, -357
                  sltiu        a0, s11, -190
                  lui          t6, 454798
                  srl          t0, t6, t4
                  xor          a5, a0, s10
                  srli         a6, s0, 11
                  or           t3, a0, s6
                  sll          a2, t1, a2
                  slti         t5, s1, 641
                  srai         s5, a5, 16
                  xori         a6, gp, -825
                  xor          t1, s0, a4
                  sltu         s3, s5, a4
                  slli         s7, a0, 18
                  sra          gp, s11, t3
                  auipc        gp, 321694
                  slti         a1, a5, -1996
                  xor          tp, a7, t1
                  xori         zero, s9, 709
                  srai         t6, a2, 11
                  sra          s5, t1, s7
                  auipc        s9, 92720
                  and          s8, t6, s2
                  auipc        a7, 243378
                  slt          a0, t0, t1
                  slt          s4, a3, s1
                  slt          a7, a4, t3
                  nop
                  auipc        s9, 902627
                  auipc        t1, 437349
                  sub          a3, a7, t6
                  srl          s1, t2, t3
                  lui          a1, 845207
                  sub          ra, s1, t2
                  xori         s4, t6, -1493
                  sub          s7, s9, t3
                  sltiu        a6, gp, 922
                  addi         t5, s2, -712
                  sub          a7, a1, zero
                  or           t5, tp, a0
                  sltiu        zero, a4, -796
                  slli         s4, s7, 8
                  nop
                  auipc        sp, 670308
                  ori          a7, a7, -1034
                  srai         s8, a7, 22
                  andi         t0, a5, -1388
                  addi         s2, t1, -1590
                  srai         gp, a1, 16
                  auipc        t6, 528493
                  sltiu        t1, t4, 1452
                  xor          ra, a6, t2
                  xori         sp, a1, 442
                  or           s3, s3, s11
                  or           t5, a7, a4
                  addi         gp, tp, -206
                  addi         t1, a0, 919
                  and          tp, t6, zero
                  ori          s4, tp, 781
                  lui          a6, 57196
                  sltu         t3, a3, gp
                  xor          a2, t0, t0
                  sltu         s11, s9, t3
                  sub          t1, a7, t4
                  slt          s7, s11, s10
                  add          a1, t5, sp
                  sltiu        s11, s2, 868
                  ori          t6, a0, 1214
                  sltu         s0, a4, s4
                  add          a3, t4, a4
                  andi         t5, s0, 919
                  or           s7, a1, a1
                  sra          zero, a7, a2
                  sltu         s0, sp, s7
                  slt          t1, t2, sp
                  and          s3, t4, s4
                  xori         a1, s5, -948
                  add          a5, a1, s0
                  addi         a5, s2, -329
                  slli         a1, a5, 24
                  sra          s7, a3, s11
                  sra          a0, s5, tp
                  srli         s8, t0, 27
                  addi         s2, s11, -589
                  srl          s8, s8, a7
                  addi         a4, zero, -284
                  sltiu        sp, t5, 1292
                  addi         a7, t6, 1055
                  srli         sp, t3, 14
                  slli         s0, s5, 10
                  sltu         s0, s10, s2
                  srli         s7, s8, 15
                  slli         tp, ra, 15
                  srli         a7, s2, 6
                  auipc        a0, 350816
                  srli         a5, s6, 18
                  sltu         ra, s9, s0
                  srl          s7, t0, t3
                  srli         a1, s7, 12
                  xor          zero, tp, s0
                  xor          a6, s3, s8
                  nop
                  srl          s8, a1, sp
                  ori          a4, t1, 528
                  and          t6, a3, a5
                  auipc        a0, 696909
                  srli         a5, s5, 21
                  or           s2, s7, t0
                  srli         s6, s10, 21
                  slti         zero, s10, -661
                  nop
                  sltiu        s2, a2, -128
                  and          s8, s6, s10
                  andi         a0, s1, -380
                  sub          t3, gp, a4
                  srai         s11, a4, 16
                  nop
                  slt          tp, a2, s1
                  sra          s8, a1, gp
                  add          s11, s4, s4
                  andi         t1, t6, 1287
                  xori         s9, s3, 331
                  sub          a4, gp, a0
                  srai         s6, s7, 22
                  auipc        a3, 1011009
                  srli         s9, t6, 27
                  sltiu        a3, s3, 735
                  sub          t1, t3, t4
                  sra          a7, a3, s0
                  addi         a5, t0, 1683
                  xor          a4, ra, a2
                  addi         a0, a0, 786
                  add          s9, tp, s4
                  ori          s5, t4, 1440
                  sll          a7, zero, t3
                  ori          s7, zero, -1118
                  sll          a5, gp, s10
                  sub          a1, s0, t0
                  nop
                  sll          t0, s8, a4
                  slti         t5, a2, -1050
                  ori          s7, s9, 1191
                  slt          s9, t3, s0
                  sra          s11, sp, t2
                  add          s0, a4, s10
                  sub          t3, t1, s1
                  and          s0, tp, gp
                  nop
                  addi         tp, tp, -1897
                  andi         a0, a2, 684
                  slti         s4, s2, -449
                  xor          t5, s7, a6
                  slli         t1, s6, 1
                  xor          s11, s10, a0
                  and          s6, s1, a3
                  sub          gp, a0, t5
                  sltu         t3, t2, s5
                  srai         s3, t5, 19
                  slli         zero, a1, 9
                  add          a2, a6, s0
                  sub          gp, t0, t3
                  sra          sp, t6, a7
                  and          s7, a7, t1
                  nop
                  and          gp, s8, s8
                  sll          ra, t5, s6
                  and          t0, s11, a1
                  srl          a6, a6, zero
                  sltu         a6, t3, a5
                  lui          s11, 733248
                  nop
                  xori         s9, sp, 1601
                  xor          t1, s1, a0
                  sltiu        s9, sp, -1461
                  xor          t6, a1, ra
                  sltu         s9, zero, t5
                  ori          a0, s5, -373
                  xori         a5, zero, 145
                  sub          t6, t3, s10
                  addi         s6, s7, -1156
                  addi         a4, s2, -580
                  and          t1, a3, t4
                  xori         s6, a4, -85
                  slli         t3, a3, 26
                  sra          s5, s8, s4
                  lui          tp, 807078
                  srl          s6, t5, a2
                  srl          s8, s10, a3
                  addi         s1, s1, 1572
                  xor          a3, s7, s8
                  slli         s0, s1, 14
                  sltu         sp, s6, s8
                  xori         s8, s5, -1705
                  lui          tp, 255945
                  li           t5, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           s2, 0x80000000
                  li           s3, 0xffffffff
                  li           t6, 0x0
                  li           a3, 0x80000000
                  li           s9, 0x80000000
                  li           t0, 0x0
                  li           a6, 0x0
                  li           s4, 0x80000000
                  li           a7, 0xffffffff
                  add          s9, t0, a3
                  nop
                  nop
                  auipc        s3, 16658
                  sub          a7, a6, a3
                  nop
                  auipc        s3, 855099
                  lui          t0, 927434
                  add          t6, a3, t5
                  add          s9, t5, s3
                  sub          t5, t0, s4
                  add          s2, t0, t6
                  sub          a3, s3, a7
                  auipc        t5, 877752
                  nop
                  sub          a3, t6, t6
                  nop
                  sub          a3, a3, a6
                  auipc        s2, 956969
                  sub          s4, t0, t6
                  nop #end riscv_int_numeric_corner_stream_5
                  sra          gp, t3, t4
                  slli         s8, t6, 17
                  andi         a5, s7, -1272
                  andi         s0, ra, -1239
                  auipc        a1, 228026
                  nop
                  xori         ra, t6, 197
                  xor          s3, a3, t3
                  andi         a2, t0, -405
                  lui          s6, 905764
                  srai         a1, a2, 0
                  slti         a3, a5, -1195
                  slt          tp, a2, s9
                  slt          s8, t3, t1
                  sltu         sp, s6, ra
                  or           t0, s10, s11
                  add          t6, s4, t6
                  xori         a5, s3, -1500
                  slli         a7, a1, 13
                  and          a6, t1, sp
                  xori         ra, a1, -1774
                  xori         t5, s11, 990
                  sltiu        ra, a5, 1010
                  slti         a7, s5, 744
                  and          s6, s1, a2
                  sltu         tp, s2, s10
                  slli         s1, a6, 4
                  lui          t0, 72195
                  addi         gp, s11, -1301
                  ori          s3, s4, 1664
                  or           t5, tp, ra
                  auipc        tp, 1033641
                  sub          gp, s2, t4
                  srli         t6, a4, 14
                  srl          s4, gp, a6
                  or           t1, s11, s1
                  sltiu        a3, a2, 2040
                  slt          a2, s1, s5
                  or           a4, t5, a3
                  andi         s6, ra, -1495
                  xor          a5, s11, t0
                  slt          a7, s0, s9
                  xor          ra, s3, s4
                  nop
                  sll          t0, t0, s6
                  or           t1, t0, s0
                  li           a3, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           t3, 0x0
                  li           s3, 0x0
                  li           a7, 0x12100640
                  li           a4, 0x0
                  li           a0, 0x80000000
                  li           sp, 0xffffffff
                  li           ra, 0xffffffff
                  li           s9, 0x80000000
                  li           a6, 0xdfb85040
                  addi         a0, a4, -638
                  sub          a7, ra, t3
                  addi         s3, s9, -1830
                  lui          sp, 180172
                  lui          t3, 915207
                  auipc        a7, 563387
                  addi         s3, a0, -715
                  nop
                  sub          sp, a7, a4
                  lui          a4, 650167
                  sub          s9, a7, a4
                  lui          a3, 161429
                  addi         t3, s9, -438
                  addi         a7, a3, -317
                  addi         ra, a6, -603
                  lui          a3, 844841
                  auipc        a6, 675148
                  sub          s3, a0, a7
                  lui          a0, 608527
                  nop
                  addi         s9, a6, 1863
                  nop
                  addi         a3, t3, -937
                  nop
                  addi         a4, a4, 1444
                  lui          a7, 972723 #end riscv_int_numeric_corner_stream_4
                  sltu         s2, s11, a2
                  sub          s0, gp, a7
                  and          a6, a2, s10
                  and          t0, s0, tp
                  slt          tp, s1, a4
                  or           a2, s10, t0
                  slt          s5, t0, s9
                  add          s9, a3, a5
                  sra          ra, sp, s0
                  srai         t6, t4, 28
                  auipc        a0, 636354
                  xori         a4, t5, 551
                  slt          gp, s10, a6
                  slti         s8, s7, -1867
                  srl          tp, a7, s1
                  auipc        a4, 905502
                  add          a6, s2, t6
                  nop
                  sra          s8, sp, s0
                  srli         ra, t6, 9
                  sub          ra, a7, t6
                  sra          t3, sp, gp
                  slti         a0, t6, 711
                  sltu         tp, a4, a7
                  sub          t6, t1, a5
                  add          t0, s0, a4
                  srli         a5, s0, 28
                  lui          ra, 41509
                  and          a2, a6, s9
                  slti         t6, t6, 1463
                  xori         s9, s0, -1237
                  ori          a1, a1, -230
                  auipc        t5, 390238
                  srli         ra, s6, 8
                  xor          s2, s9, gp
                  addi         zero, gp, -1771
                  sltiu        a6, t6, -329
                  sra          zero, t6, s10
                  auipc        s2, 804198
                  slti         a5, t1, -904
                  addi         s8, zero, 1907
                  sltiu        a3, s8, -1599
                  sltiu        a7, a7, -791
                  ori          a4, sp, -1006
                  slti         s2, s7, 836
                  xor          a0, a5, s8
                  sll          sp, s1, a0
                  sll          a3, s8, s9
                  andi         s1, a0, 1814
                  sll          a5, a5, t1
                  slti         s5, s4, 710
                  sltu         s4, t5, a0
                  nop
                  sub          zero, t3, a1
                  slli         s6, a1, 18
                  srl          a3, a6, sp
                  andi         t0, t1, -1137
                  sub          a2, t4, t1
                  and          a6, s10, s6
                  srli         s6, sp, 24
                  xori         a4, a5, -1333
                  sltiu        t0, gp, -618
                  andi         a5, s7, 1724
                  lui          a5, 661950
                  nop
                  sll          a0, gp, s2
                  lui          t0, 798063
                  addi         s1, t6, 1341
                  srl          t6, s3, s2
                  srli         sp, s7, 11
                  nop
                  auipc        tp, 271575
                  nop
                  and          s8, s3, s1
                  sltu         s2, s1, t4
                  slli         tp, a2, 20
                  srl          s11, s3, s6
                  lui          s6, 973185
                  sra          a7, t1, t3
                  andi         a5, zero, 1598
                  add          ra, s3, s11
                  srai         s8, t1, 5
                  sltiu        s2, s3, 1193
                  xori         s3, a3, -250
                  ori          gp, t5, -646
                  and          t1, a1, s2
                  auipc        s6, 844443
                  xor          zero, t6, a4
                  ori          t6, s11, 1302
                  and          t3, s11, a0
                  slti         a3, tp, -1103
                  ori          s9, gp, -859
                  auipc        a5, 705218
                  xori         a6, s6, -1675
                  sltiu        t6, s7, 1137
                  slti         a1, s5, -1862
                  sub          s8, s11, s7
                  andi         t5, a2, -366
                  xori         a4, a2, -402
                  or           a6, s3, t0
                  sltu         s1, t6, a6
                  ori          t6, s1, 1328
                  slt          a1, t2, s8
                  sltu         ra, s9, s1
                  nop
                  nop
                  sltu         a3, s7, t2
                  srl          a2, a2, t4
                  srli         t6, s2, 0
                  and          a1, t3, t6
                  andi         s1, a4, -421
                  sltiu        tp, a7, -1400
                  ori          t1, s1, -145
                  sltu         t1, t4, zero
                  lui          zero, 419706
                  addi         a7, sp, 1047
                  sltu         t5, s10, a0
                  sra          tp, sp, t1
                  and          a1, a2, zero
                  nop
                  nop
                  or           a6, tp, s8
                  slt          s8, t2, t0
                  lui          sp, 119615
                  slli         s9, s4, 10
                  slli         s0, a7, 27
                  slli         gp, a4, 17
                  slti         a1, a3, -915
                  auipc        s4, 372263
                  auipc        zero, 596193
                  add          s4, t1, t5
                  add          s11, gp, a0
                  slli         t3, gp, 4
                  sltu         t1, a7, s8
                  auipc        gp, 828926
                  sll          gp, t1, a3
                  sltiu        s9, s4, 1977
                  lui          s11, 758105
                  xor          t1, s9, s2
                  xori         t5, a4, -2020
                  slli         a6, t1, 30
                  xor          a2, t6, t6
                  slli         a6, s4, 10
                  lui          s9, 69780
                  srai         ra, s6, 18
                  sltu         s7, s0, t5
                  srli         t5, s7, 15
                  sub          t3, a3, s6
                  sub          t5, a6, t2
                  andi         tp, t6, 1249
                  add          t6, zero, a7
                  xor          t5, s6, a5
                  sltu         ra, s6, s4
                  sltiu        s0, s7, -1528
                  ori          s2, a1, 1715
                  sltu         a7, s5, s4
                  or           t5, t5, s2
                  slti         s4, s9, -1791
                  or           a6, t5, a2
                  sltu         t3, a1, gp
                  srai         zero, s6, 6
                  addi         t6, a3, 61
                  xori         s3, a5, 247
                  srli         zero, t5, 9
                  sub          a3, s1, s7
                  andi         a3, s3, 615
                  nop
                  nop
                  sltiu        zero, t0, 2028
                  slt          t1, s9, a6
                  sltu         a2, zero, t4
                  add          a7, a6, t3
                  andi         s1, a5, 1222
                  sra          a6, s0, a3
                  ori          s8, ra, 1355
                  or           s7, s9, zero
                  sra          a1, a3, a7
                  addi         ra, t2, -300
                  nop
                  xor          ra, s7, a5
                  srli         a5, t4, 25
                  sltiu        s9, t2, 1112
                  srl          s11, sp, a5
                  addi         s5, a0, 930
                  slt          s0, s5, s0
                  addi         a2, s5, 1271
                  sltiu        gp, t6, -1003
                  srai         t3, t6, 17
                  sra          s0, s6, a1
                  nop
                  sll          s3, s11, gp
                  auipc        a0, 450669
                  nop
                  sll          a5, s10, t3
                  srli         a5, s0, 9
                  ori          a7, a1, 1108
                  nop
                  xor          a5, t0, s6
                  slti         s5, s3, 739
                  sra          a4, a7, tp
                  slt          s5, s7, t5
                  srai         gp, s9, 7
                  srli         s4, t5, 1
                  srli         s11, sp, 9
                  lui          t0, 1017584
                  slli         a5, s3, 3
                  srl          t5, zero, a1
                  sll          a7, t0, s2
                  and          s4, t2, sp
                  slt          t0, a3, a4
                  sub          s6, s11, a6
                  addi         t1, t5, 837
                  sra          s3, sp, a6
                  srl          a5, t1, s3
                  sltu         t6, s5, a2
                  andi         s1, t2, -176
                  srli         a4, s8, 9
                  xor          s3, a1, t5
                  sub          a4, a2, s2
                  addi         s8, t4, -635
                  srl          s4, a6, a3
                  and          s7, s8, ra
                  srli         s0, t0, 11
                  auipc        a3, 106162
                  nop
                  and          tp, a2, a2
                  and          a1, t5, a0
                  andi         s8, a6, 1023
                  xor          t1, zero, s6
                  or           s1, tp, s1
                  slti         s8, a2, 1521
                  addi         s3, s5, -297
                  sub          s5, s6, s7
                  srai         gp, t0, 3
                  add          s4, t4, zero
                  xor          a5, s9, a5
                  slli         t1, t5, 30
                  or           a5, t4, s10
                  srl          s8, gp, ra
                  and          t5, a4, t2
                  and          s1, s4, s9
                  slti         t3, t0, -1382
                  or           s11, a0, s3
                  srl          s3, s2, a5
                  srl          t1, a4, s6
                  slt          s0, s0, a0
                  sll          t3, s2, a3
                  slt          t6, s0, s2
                  sltu         a1, t1, sp
                  slli         s7, a6, 4
                  ori          s4, a6, 1212
                  sll          t3, ra, s4
                  or           sp, a3, a2
                  sra          s6, s0, a6
                  and          t5, a5, a4
                  srl          s11, s11, s2
                  sra          zero, s8, s5
                  and          zero, zero, s9
                  and          t6, a1, s7
                  and          zero, t1, s1
                  addi         sp, s9, -1183
                  and          s7, s4, t2
                  sra          s6, s10, s7
                  auipc        s0, 73699
                  sll          s9, t0, a4
                  srli         s11, t6, 2
                  add          a0, a2, a7
                  sltiu        t1, ra, -825
                  nop
                  sra          s1, s0, a0
                  srai         tp, t0, 28
                  srl          a2, s8, s11
                  srl          s2, s0, s5
                  sub          a6, s10, ra
                  sltiu        s5, s11, -565
                  srl          s2, a6, s4
                  sub          a5, sp, t3
                  xori         s8, t4, 335
                  sub          tp, a6, s9
                  sll          a7, zero, sp
                  lui          gp, 712871
                  srli         t1, t0, 15
                  slti         t0, s3, 983
                  sltu         s11, s11, a6
                  lui          tp, 15400
                  srai         a5, s7, 26
                  lui          t6, 973397
                  auipc        s8, 467815
                  srl          t1, a3, s0
                  or           t0, t2, sp
                  slti         t5, a1, -704
                  or           t3, t0, s3
                  add          a3, a7, s7
                  addi         s2, s0, -1882
                  sltu         a2, t6, a6
                  nop
                  or           s5, zero, s9
                  xor          a0, a3, a1
                  sra          a4, a0, t1
                  sll          tp, a2, t1
                  sll          s3, s8, s2
                  auipc        s1, 574500
                  srl          s5, s1, sp
                  srai         a7, s2, 11
                  sra          a5, s6, s6
                  nop
                  or           s5, a1, a5
                  srl          s1, s5, a7
                  slli         a7, t4, 9
                  sra          zero, s6, t1
                  xor          s5, t4, s5
                  srai         s9, s8, 10
                  sltu         a1, a1, a7
                  li           gp, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           sp, 0x0
                  li           a6, 0xffffffff
                  li           a1, 0xffffffff
                  li           tp, 0xffffffff
                  li           t0, 0x80000000
                  li           t6, 0x7fa44a22
                  li           s8, 0xb44df1f9
                  li           s11, 0xffffffff
                  li           s6, 0x80000000
                  sub          a6, gp, gp
                  auipc        t0, 327366
                  sub          s8, tp, a1
                  add          gp, t0, a6
                  nop
                  sub          s8, a6, t6
                  nop
                  sub          sp, a1, a6
                  auipc        s8, 726175
                  auipc        t6, 1044751
                  auipc        s8, 802144
                  sub          s11, s6, s11
                  sub          a1, s8, s11
                  auipc        s6, 706011
                  add          sp, s6, s11
                  addi         t0, gp, 593
                  sub          a6, sp, sp
                  add          t6, tp, sp #end riscv_int_numeric_corner_stream_6
                  slt          gp, a7, s8
                  sra          a6, t3, s7
                  and          t0, s6, zero
                  add          ra, a1, ra
                  lui          t1, 293931
                  auipc        a2, 147929
                  sll          s11, s1, t4
                  nop
                  add          a5, tp, t0
                  sll          a0, s7, s5
                  slt          s7, ra, s10
                  sltu         s6, s11, t2
                  sltiu        a7, t0, -1185
                  srl          gp, s3, a5
                  slt          a6, a4, s8
                  srl          s11, s6, t3
                  slti         a4, s1, -1041
                  srai         s2, t4, 26
                  sll          tp, t6, s3
                  and          t3, s2, a2
                  sltu         s0, a2, s1
                  sltiu        sp, s9, -794
                  srl          s4, t2, a6
                  sra          tp, s1, t0
                  andi         s4, s8, -845
                  xori         s9, a0, 1712
                  sll          gp, s0, t2
                  andi         s2, s7, 597
                  sub          s1, s6, t6
                  slli         ra, t5, 9
                  sll          a7, a6, s11
                  sra          s7, tp, a0
                  sll          tp, s6, s3
                  addi         a7, a4, -666
                  srli         a7, gp, 22
                  or           t1, tp, a5
                  srai         tp, gp, 2
                  add          a6, sp, tp
                  ori          t6, s6, 308
                  and          a3, t5, s7
                  slt          s9, a3, s4
                  srl          a7, a5, ra
                  or           zero, a0, s0
                  xori         t6, a7, -1976
                  ori          s9, t6, 1766
                  add          t3, s11, s8
                  xor          s3, s8, s11
                  andi         zero, zero, 1290
                  srai         t1, gp, 9
                  add          s7, a5, zero
                  xor          a0, t4, s11
                  ori          a4, zero, -1389
                  slli         t1, s11, 5
                  andi         s2, sp, -1277
                  andi         t6, a1, -1346
                  lui          a5, 606341
                  ori          zero, t2, 552
                  ori          s11, s2, -1575
                  andi         gp, a4, 1261
                  srli         t6, a3, 28
                  andi         tp, t3, 1711
                  sra          sp, zero, s6
                  xor          s4, s2, t0
                  nop
                  addi         zero, s3, 196
                  sra          t5, t1, t2
                  srai         tp, a5, 6
                  slti         sp, s9, -438
                  ori          t5, s5, 1803
                  sll          s4, a1, s3
                  slt          tp, s11, sp
                  add          gp, s5, a6
                  slti         a0, a1, 59
                  sll          sp, s10, tp
                  and          t5, ra, t1
                  add          s5, s3, gp
                  andi         t1, a6, -655
                  xori         a0, s0, 1229
                  sltu         sp, s11, sp
                  srai         gp, t0, 6
                  add          a2, s11, s4
                  auipc        a6, 996091
                  addi         t0, zero, 919
                  addi         s9, t1, -174
                  sra          s8, s5, gp
                  addi         s8, a5, -782
                  xori         t1, s8, 498
                  sltiu        s1, s0, -70
                  sltiu        sp, t5, -1343
                  andi         s4, s0, 427
                  xor          t5, s6, a2
                  add          t3, a6, ra
                  slt          a6, s1, sp
                  srl          s8, s10, s9
                  slt          a4, s11, ra
                  auipc        a7, 597318
                  slli         sp, t5, 2
                  slti         s3, s8, 1185
                  auipc        a7, 325158
                  srli         t0, s7, 11
                  addi         t1, a5, 1147
                  addi         a2, s0, 1491
                  slti         a7, sp, -343
                  slti         s3, t2, 466
                  sub          a5, tp, a0
                  lui          gp, 799055
                  srai         a4, s4, 11
                  srli         gp, t4, 15
                  slti         a5, s1, 1135
                  and          s1, a3, t6
                  slti         t0, sp, -4
                  ori          gp, t3, 1853
                  sltiu        s4, s8, -979
                  srli         ra, sp, 23
                  srli         ra, s11, 27
                  sub          s5, tp, a2
                  sll          t6, s6, s5
                  ori          s8, s11, -1469
                  sra          t0, a5, s4
                  slli         a7, s11, 28
                  sub          a1, t6, s3
                  auipc        t0, 569468
                  sll          a0, s8, t1
                  xor          s9, s3, zero
                  nop
                  srli         gp, a6, 2
                  slti         a7, s7, 892
                  auipc        a6, 194041
                  addi         a2, s3, 659
                  or           s4, t0, s5
                  lui          a4, 107251
                  slli         s7, s5, 14
                  or           t6, t2, t1
                  addi         s8, s2, 1488
                  add          a7, tp, t3
                  sll          s9, t2, ra
                  add          s7, s8, s11
                  auipc        a7, 60180
                  slt          t5, s4, t0
                  sltiu        s3, s4, -1532
                  sll          s5, a1, a3
                  sltu         sp, s9, t0
                  andi         a0, t0, 8
                  addi         t5, a4, -1359
                  or           zero, t4, s11
                  sltu         a6, a3, a4
                  sra          s7, s6, t4
                  slli         s3, s2, 30
                  add          t6, tp, zero
                  sra          t0, s8, t4
                  slt          s2, t3, t2
                  xor          zero, s9, a7
                  auipc        a7, 272328
                  srl          s9, a4, s3
                  srl          t1, t2, gp
                  srl          t1, s9, t1
                  sltiu        s5, s3, -1110
                  andi         s9, s3, 1005
                  slti         s5, a4, -1595
                  srli         a2, a3, 10
                  or           a5, a1, s11
                  xor          t3, s8, a3
                  sub          a6, zero, a5
                  xori         s11, t2, -993
                  xor          gp, t2, s7
                  srl          s8, a2, t2
                  ori          ra, ra, 1899
                  or           s7, s2, a2
                  srai         a1, t0, 9
                  lui          a1, 393656
                  addi         t3, s8, -154
                  srai         s2, s7, 5
                  sltiu        s8, s10, 189
                  ori          t1, sp, -1739
                  auipc        t5, 967236
                  sltiu        a4, tp, -1868
                  ori          s1, a2, -185
                  or           a2, gp, ra
                  sltiu        s9, t1, -1740
                  slli         s7, t1, 8
                  sra          s9, a5, s10
                  sltu         a7, a5, s8
                  li           t1, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           s7, 0x0
                  li           s9, 0x80000000
                  li           t3, 0x0
                  li           ra, 0x80000000
                  li           a1, 0x80000000
                  li           tp, 0x80000000
                  li           t6, 0x0
                  li           a5, 0x80000000
                  li           s2, 0x80000000
                  lui          a5, 965970
                  sub          t1, s2, tp
                  add          ra, tp, t1
                  addi         t3, t1, -104
                  sub          tp, ra, t3
                  sub          s9, ra, s9
                  auipc        s7, 264407
                  auipc        a5, 1003188
                  sub          t6, s2, tp
                  add          s2, s2, t3
                  lui          a1, 975884
                  nop
                  lui          t1, 85785
                  auipc        s9, 114586
                  nop
                  sub          t1, t1, a1
                  lui          t6, 330591
                  sub          s7, ra, tp
                  sub          s7, t6, tp
                  addi         s9, t6, 1624
                  nop
                  nop
                  nop
                  nop
                  addi         s2, ra, -234
                  addi         s9, t6, -78
                  auipc        t6, 370901
                  add          a1, s7, s7
                  nop #end riscv_int_numeric_corner_stream_9
                  srli         s9, a2, 9
                  slt          s4, t2, a7
                  sub          s9, s11, a0
                  srai         sp, a1, 21
                  andi         s6, s6, -1566
                  lui          s11, 174329
                  srl          t0, s0, t0
                  sltu         a5, s9, sp
                  slt          a7, s10, a2
                  auipc        a5, 976776
                  sra          t3, t3, s3
                  nop
                  add          s8, s6, s9
                  add          s9, ra, s2
                  sltiu        a6, s1, -2009
                  addi         s9, s1, -1916
                  sub          s7, t4, a2
                  slt          t3, s1, a7
                  srai         t0, a4, 7
                  sub          t1, s10, t0
                  sll          s8, t5, a7
                  andi         a0, t3, -540
                  sltiu        s7, a5, 571
                  slt          s1, s6, t1
                  srl          s2, a2, gp
                  lui          s1, 991392
                  nop
                  sltiu        s11, a0, -579
                  ori          a1, a1, 492
                  auipc        s11, 118317
                  and          a3, a2, t6
                  sltiu        s8, s10, -219
                  sltu         s4, t0, s8
                  nop
                  slt          s9, s6, a7
                  or           tp, t4, a6
                  sltu         s5, a5, gp
                  xori         a7, t5, -736
                  andi         a1, t1, 1247
                  lui          zero, 162037
                  lui          a5, 522600
                  srli         a5, t5, 4
                  add          a5, s3, a3
                  andi         sp, t2, 963
                  srli         s6, t6, 24
                  andi         t6, a2, -1198
                  slt          s5, sp, gp
                  xor          s6, t2, s0
                  srai         t5, t5, 13
                  nop
                  sltiu        a7, s2, -1510
                  xor          t3, s2, s1
                  xori         s6, a6, -783
                  sltu         s7, t5, s2
                  slli         s9, a5, 27
                  xori         tp, sp, -1912
                  sub          t1, s10, a6
                  sltiu        a1, s5, 749
                  srli         a3, a6, 18
                  addi         a3, s9, -1455
                  ori          t0, t0, -7
                  ori          t1, t4, -427
                  addi         ra, s5, -1993
                  and          t5, t5, s8
                  sra          t6, s2, sp
                  slli         zero, a3, 11
                  sub          a1, a7, s8
                  xori         s0, s2, 1847
                  sll          s8, s10, s5
                  srli         a6, s6, 15
                  srl          s3, a1, a3
                  srli         tp, s4, 27
                  slt          a7, t2, s2
                  sub          gp, s4, zero
                  addi         a4, ra, 365
                  addi         tp, a0, -1039
                  sltu         s7, a3, t6
                  srli         t3, t4, 4
                  auipc        a4, 48290
                  and          t0, ra, s1
                  srai         t6, zero, 14
                  ori          a5, a7, 806
                  slti         tp, s6, 108
                  srl          ra, a3, s7
                  slti         s4, s7, 1574
                  sltiu        s8, t6, 1143
                  srai         s11, a7, 8
                  sra          tp, sp, t0
                  and          s0, s0, s4
                  andi         s5, t4, -322
                  or           t6, a7, s11
                  lui          s7, 1029429
                  add          s0, t1, t1
                  sub          s11, t3, s4
                  nop
                  xori         zero, s3, -1939
                  sltu         sp, a7, s6
                  ori          a0, tp, 1110
                  slti         s6, s6, 1835
                  sltu         s6, a5, zero
                  ori          a2, sp, 551
                  nop
                  srai         s3, s0, 24
                  sltiu        sp, sp, -1676
                  or           a0, tp, t0
                  slti         a3, a2, 1777
                  srl          t1, s10, t0
                  srl          a6, s10, s9
                  sra          s6, t3, t2
                  ori          s4, t0, 1376
                  add          t6, s0, a7
                  srl          gp, t2, t2
                  sltiu        t3, s2, -179
                  sltiu        a4, a4, 13
                  srl          a1, t1, t1
                  add          a1, a6, s9
                  ori          t6, t6, -330
                  sltiu        s5, t5, 1981
                  sub          a2, a0, s0
                  xori         t0, s5, 1017
                  auipc        s0, 926149
                  or           a4, s6, s7
                  or           s4, s7, s6
                  xor          s5, sp, a1
                  srl          a5, a4, a5
                  sub          s3, zero, a4
                  and          gp, sp, s3
                  slt          s8, sp, sp
                  sra          a1, s0, a5
                  slt          s8, t5, s9
                  sra          t1, s7, a7
                  srli         s0, s11, 16
                  srli         s9, s7, 5
                  srl          ra, tp, ra
                  slti         sp, s2, 398
                  sub          t5, a6, ra
                  and          s3, tp, s6
                  ori          s7, a4, -751
                  sra          a1, s8, s9
                  nop
                  srli         s7, tp, 9
                  xori         a3, a4, -354
                  slli         a3, s4, 21
                  andi         s8, t0, -1328
                  add          a6, s9, s6
                  ori          s6, t2, -109
                  ori          t3, t2, 863
                  sub          t5, s8, s9
                  add          t6, a7, a3
                  sll          a2, zero, t6
                  xor          s6, s9, sp
                  srai         s0, t3, 6
                  srai         t6, a4, 24
                  xor          s2, t2, a0
                  andi         t1, gp, 287
                  srli         sp, s2, 23
                  lui          gp, 493470
                  slli         a7, s10, 3
                  add          a6, gp, gp
                  srl          a3, s8, s1
                  nop
                  add          a2, s4, tp
                  srai         t0, s6, 28
                  add          a4, s7, t1
                  addi         sp, t5, 544
                  sltu         a0, s2, s10
                  and          a0, s5, s2
                  sltiu        a2, tp, -1666
                  addi         a2, s2, -1116
                  addi         a6, a6, 149
                  add          t0, s1, ra
                  sll          t3, a0, s4
                  and          a2, tp, a7
                  xori         s2, s3, -1936
                  sltu         s8, t6, t1
                  ori          zero, s7, -525
                  auipc        s2, 249288
                  nop
                  srl          a1, t3, a2
                  slti         zero, a2, -569
                  sll          s7, a1, s11
                  lui          s2, 1043434
                  sub          a2, a7, s0
                  andi         a1, s7, 1857
                  nop
                  xori         s8, s5, -1988
                  slt          s11, s0, a4
                  andi         s5, a1, -1809
                  auipc        s5, 103372
                  srl          s5, s6, s7
                  srl          t5, s6, s6
                  slt          a3, t6, a1
                  nop
                  sra          s6, t3, a6
                  slti         a0, a7, -1959
                  sltu         a6, t5, t0
                  and          s5, gp, a2
                  ori          zero, s1, 235
                  sra          s6, gp, gp
                  andi         s8, s10, -2040
                  xori         s1, a6, -1591
                  andi         a3, s11, -978
                  sltu         s11, a6, a3
                  srai         s5, gp, 0
                  sltu         s5, sp, a3
                  sltu         s2, s8, s5
                  ori          s1, s11, -711
                  sub          ra, a7, ra
                  sll          a0, a4, t3
                  sltu         s6, t0, a2
                  slt          s5, t3, a1
                  sub          a3, t5, s5
                  andi         a1, a5, -1278
                  add          a0, s4, ra
                  xori         a0, t3, 859
                  srl          s0, s5, s0
                  auipc        s2, 185080
                  add          t5, a0, s8
                  sltiu        a3, a3, -1582
                  sll          a6, t1, ra
                  nop
                  xori         s9, a1, 1814
                  slli         ra, s0, 10
                  sub          s6, a2, s11
                  and          s7, a2, a1
                  ori          s11, s10, 200
                  sltu         a0, s3, a1
                  auipc        s3, 26808
                  srl          a3, a4, a1
                  or           a7, s6, s4
                  and          s4, s8, gp
                  srli         s6, s7, 31
                  ori          s7, sp, -19
                  slli         a4, s10, 21
                  slt          t5, a7, a4
                  srai         a7, a4, 18
                  addi         a2, tp, 141
                  lui          a0, 907270
                  sra          t5, zero, s5
                  sltu         s9, s2, zero
                  and          t1, s5, s10
                  sra          s9, a7, s5
                  andi         a2, t0, 41
                  sltu         a5, tp, s10
                  slli         a6, a3, 19
                  slli         a5, s10, 19
                  ori          tp, a3, -1137
                  addi         s0, s4, 1956
                  xori         a3, t2, -266
                  sub          a3, a7, s9
                  sra          t6, s9, a7
                  sub          t3, s1, s9
                  add          a4, s11, t1
                  ori          a6, a0, -637
                  srl          a1, s7, s2
                  andi         s0, s2, 1786
                  sltiu        t0, t0, 1254
                  srli         zero, s8, 19
                  slti         zero, t0, 1183
                  addi         a7, s11, -1308
                  xori         t6, t2, 751
                  addi         s2, t1, 1506
                  slti         t6, s3, -1648
                  and          t6, s5, s8
                  slli         a3, t4, 24
                  xori         s3, s4, 783
                  add          sp, a5, s2
                  add          tp, s6, t3
                  slti         a6, a1, 1333
                  or           s6, tp, a5
                  srl          s3, s0, s11
                  or           s1, t2, a5
                  or           zero, t6, s2
                  slti         t1, zero, -627
                  srl          a5, s8, t0
                  srai         s4, a2, 15
                  and          sp, t2, s5
                  or           a0, a7, t6
                  auipc        ra, 652798
                  andi         s7, a0, -614
                  srl          a5, a6, a2
                  ori          a0, s5, -774
                  slt          s3, t5, t5
                  sltu         t5, s0, a7
                  sltu         t0, t6, a2
                  add          s7, s3, ra
                  xor          a7, gp, t4
                  slti         a2, s5, -1900
                  lui          t1, 30025
                  slti         t0, s6, 955
                  sll          t3, a7, s1
                  sra          s7, a1, a1
                  srl          a7, t1, t6
                  addi         t5, a6, -1057
                  xori         a5, t0, 1426
                  xori         s7, a7, -1067
                  srl          gp, s4, t3
                  addi         s0, s8, 1207
                  sll          s3, t5, s6
                  and          sp, s8, tp
                  add          a5, t5, s3
                  nop
                  srl          s0, a2, s11
                  lui          s3, 552266
                  srai         s2, s3, 15
                  srli         s5, t0, 26
                  slt          s5, t3, s8
                  sub          s7, s9, s8
                  sra          s7, a3, a1
                  lui          t6, 492598
                  slt          s8, t2, t0
                  srai         a5, s11, 28
                  slli         t0, s8, 30
                  sltiu        zero, s5, 1917
                  sub          a3, a3, a2
                  slli         s4, t6, 0
                  slli         a3, s4, 9
                  or           a4, t5, t3
                  addi         s8, a6, -1758
                  sll          gp, s0, t2
                  slli         t6, sp, 27
                  addi         t5, s9, 842
                  sltiu        t3, a2, -357
                  slt          sp, ra, s2
                  sll          s0, s4, t4
                  sltu         t0, s8, a3
                  srai         s9, s9, 28
                  slti         sp, t2, -143
                  sll          a1, a6, s4
                  xori         s4, t5, -111
                  xori         sp, s5, -1916
                  ori          a0, t2, 933
                  slti         a2, s10, 490
                  srai         zero, s10, 13
                  andi         ra, a3, -1240
                  sub          t3, t5, s4
                  slti         s11, a7, 156
                  srai         a2, s0, 31
                  nop
                  andi         t0, s6, -1615
                  sltiu        t3, s6, 993
                  slli         zero, a5, 2
                  andi         tp, s0, 1897
                  lui          a0, 163380
                  sra          t1, s1, s1
                  sltiu        a0, t5, 424
                  sll          gp, ra, s11
                  xor          a2, s9, s2
                  add          t3, a3, t6
                  slli         s11, a2, 11
                  srai         t5, s11, 24
                  addi         s4, t2, -1808
                  sltu         tp, s3, t1
                  and          zero, sp, s5
                  ori          a1, s8, 1885
                  ori          s6, a4, 1398
                  ori          a0, t0, -1902
                  sra          t0, a3, a0
                  srli         a6, a7, 25
                  add          a0, gp, s4
                  sll          a1, t3, s7
                  and          zero, s3, s4
                  lui          zero, 927487
                  xor          s5, tp, s8
                  andi         s2, t3, 1018
                  add          a6, s9, a4
                  add          tp, tp, a6
                  slt          s0, t5, t0
                  xor          s8, s8, a6
                  xori         t5, s5, 1881
                  sra          ra, a5, s8
                  and          a4, s5, a4
                  slti         a2, s7, 927
                  or           s0, a0, s9
                  ori          s4, t0, -749
                  sra          a3, a7, t1
                  or           a0, a6, a6
                  lui          s9, 675886
                  add          s5, s5, a4
                  sltu         a4, sp, s11
                  addi         a0, a5, 56
                  slti         a6, s4, 1609
                  slti         a6, gp, 428
                  slti         s4, s0, 475
                  xor          s4, s0, s9
                  lui          t6, 204609
                  and          gp, a1, t5
                  or           tp, s5, a0
                  slli         s5, zero, 26
                  slli         tp, s3, 2
                  sltu         sp, t2, t4
                  and          t6, a0, s3
                  xor          a4, t6, a4
                  srli         s2, t6, 8
                  srl          s8, t4, t5
                  slt          a6, a7, a2
                  and          zero, sp, a1
                  sll          a0, tp, a6
                  auipc        a3, 294897
                  slti         a0, s6, 398
                  or           s5, sp, s8
                  andi         s3, s7, -3
                  sub          a3, s11, t5
                  srai         s6, a5, 19
                  sra          s7, t6, s1
                  sub          s0, a0, t2
                  sra          s4, s7, s10
                  slti         a7, a2, -86
                  srai         s8, a3, 22
                  slt          a5, s5, zero
                  slli         s1, s2, 20
                  slt          a7, t6, t4
                  srai         a1, s9, 17
                  add          s7, a7, a7
                  or           s7, t1, s5
                  sra          a1, ra, s9
                  sra          t0, a3, t4
                  sra          a2, tp, s3
                  auipc        t5, 209738
                  srli         s4, a7, 19
                  addi         t6, s7, -682
                  slli         t5, t4, 9
                  auipc        t1, 583302
                  or           s7, s10, s1
                  srli         tp, s6, 7
                  slli         s2, a4, 12
                  srai         a4, s0, 17
                  sub          ra, gp, a2
                  andi         s11, a3, 1505
                  lui          a2, 744489
                  or           a0, s0, a3
                  add          t0, a6, a0
                  srai         s4, ra, 22
                  sltiu        a0, zero, -1063
                  slt          ra, sp, a0
                  srai         t0, t0, 3
                  or           s5, t6, s8
                  slli         t3, s1, 25
                  and          a3, s10, s9
                  sub          t5, t0, s5
                  andi         a7, s9, 1206
                  sub          s0, s4, s0
                  sltiu        s6, s2, -1634
                  xor          zero, t0, t6
                  slti         s4, a7, 682
                  sltu         s8, s2, t0
                  add          a5, t0, a7
                  srl          s2, t4, a1
                  auipc        s3, 331570
                  sra          s2, s11, s0
                  sra          a2, a6, s2
                  slli         a2, s4, 7
                  ori          t1, t3, -539
                  and          s0, t2, s6
                  andi         s8, a7, 709
                  or           s6, tp, t1
                  ori          s2, t0, -637
                  xor          a7, a6, s7
                  srai         sp, t6, 30
                  sra          a1, gp, s3
                  add          t3, s9, t4
                  add          ra, a3, s11
                  sltiu        s3, t3, 1211
                  srl          a1, t4, s5
                  or           t1, s1, s1
                  sll          s11, s7, s2
                  srli         sp, s0, 18
                  ori          ra, t3, -1316
                  and          s2, ra, tp
                  sltiu        ra, s2, 1499
                  srl          a4, t5, a5
                  ori          a5, s0, -135
                  sub          s5, t2, a2
                  xori         s2, s9, -1632
                  srl          a0, s3, s11
                  sra          a4, a4, ra
                  andi         s0, s6, 757
                  lui          t6, 506748
                  sll          s8, a2, s1
                  nop
                  xor          a1, s7, a3
                  srl          tp, tp, s5
                  sub          a1, t6, ra
                  add          zero, gp, t1
                  slli         s6, zero, 9
                  andi         a4, s4, 1631
                  xori         s9, s7, -1800
                  auipc        a3, 589852
                  sra          s8, s3, t4
                  srai         s5, s4, 18
                  or           s2, t5, s11
                  sll          zero, a1, s7
                  srai         s4, t0, 31
                  sub          a2, a5, s8
                  slti         s9, a3, -749
                  or           s5, a2, s9
                  sra          s11, a2, t6
                  addi         a4, t5, -1459
                  or           a4, t4, tp
                  lui          a3, 526051
                  slli         gp, s0, 28
                  and          s9, s3, s3
                  xor          s1, a7, t0
                  xori         s0, s3, -1134
                  nop
                  ori          a3, a2, 74
                  srl          tp, a0, a1
                  xori         s11, s4, 36
                  nop
                  or           s0, ra, tp
                  slt          t1, a6, t4
                  slli         s7, a2, 2
                  srai         sp, s8, 1
                  sltiu        s0, s1, -965
                  slti         s6, s8, -575
                  ori          s6, s11, -858
                  sra          t0, s9, a3
                  addi         s2, a5, 1228
                  sltiu        a7, a5, 189
                  lui          s11, 120168
                  ori          a0, s8, 541
                  srai         a7, a6, 11
                  slti         a2, s0, -680
                  sltiu        t3, t6, -1508
                  slt          s5, a3, a3
                  slti         s8, sp, 537
                  slli         s6, tp, 9
                  sltiu        a4, a3, -1107
                  ori          a6, s1, -166
                  sra          a4, a2, s4
                  auipc        gp, 821128
                  sra          a7, s10, a7
                  sltu         a5, t2, t6
                  sltu         a5, s8, s0
                  ori          s1, a3, 815
                  or           s8, s0, s7
                  xori         s9, s2, 135
                  and          s0, gp, tp
                  ori          s0, s11, 1170
                  srai         a4, s5, 7
                  ori          s3, a5, -1535
                  srl          t0, t6, s7
                  xor          s0, tp, s4
                  srl          zero, a5, t4
                  sub          s0, t6, s0
                  slt          s3, gp, sp
                  add          t3, t1, s2
                  sltu         s2, a2, a2
                  andi         a2, a7, 738
                  sltu         gp, s3, s4
                  sra          a2, a4, a6
                  lui          sp, 126095
                  sltiu        s0, s7, 1908
                  sub          s2, t6, s3
                  andi         s5, s1, -1945
                  sub          a3, t4, a2
                  sltiu        t5, tp, -114
                  or           a0, t0, s7
                  sltiu        t6, s8, 63
                  xori         s0, a5, -205
                  slti         tp, t1, -90
                  and          a5, s4, a3
                  sra          s0, gp, s11
                  or           a4, t2, a7
                  sltiu        s7, a5, -923
                  slli         t0, a1, 23
                  slti         a3, a4, -836
                  sltu         a1, s1, t1
                  ori          t3, s6, -814
                  lui          s6, 278510
                  addi         s4, a7, 977
                  sll          t1, tp, a5
                  auipc        t5, 772220
                  andi         s2, s9, -401
                  or           t1, s10, a6
                  auipc        s7, 415934
                  lui          s8, 918927
                  slti         s3, s5, 1053
                  slt          t3, s9, a2
                  slli         a4, s5, 13
                  xor          a4, t4, gp
                  slti         sp, t1, 1621
                  or           a2, t1, a5
                  sll          zero, t5, s1
                  sll          sp, a2, s2
                  srai         s2, a7, 10
                  slt          a0, tp, zero
                  xor          a0, tp, t3
                  and          t5, t5, sp
                  sltu         a5, t6, s0
                  srl          s11, s6, ra
                  sltu         a0, t2, zero
                  add          s9, s11, s10
                  sltiu        s8, a6, 1147
                  sub          t1, t1, s9
                  slt          a4, a6, sp
                  lui          s1, 743269
                  xori         a5, t3, 145
                  andi         a0, a5, 579
                  lui          s0, 520332
                  xor          a0, sp, a1
                  and          a7, a6, t1
                  srl          a7, s5, sp
                  sra          gp, s5, t0
                  ori          s4, a6, -103
                  slli         t3, s3, 26
                  slti         a2, s8, 163
                  auipc        s3, 592355
                  sltiu        tp, s9, -1150
                  sltu         s4, ra, s6
                  ori          sp, t3, -329
                  slli         gp, s1, 5
                  auipc        s8, 107590
                  sltiu        t5, t3, -1002
                  slli         a1, t6, 7
                  slli         t3, t5, 6
                  addi         t5, s6, 851
                  sltu         t0, t3, ra
                  slli         s3, a3, 12
                  andi         a6, s0, 399
                  sll          sp, a5, s5
                  srai         ra, s8, 15
                  addi         s6, s6, 1251
                  or           a1, t0, a5
                  sltu         s7, s9, t0
                  add          zero, a1, a5
                  and          s1, t2, t6
                  xor          s9, s3, a1
                  slli         t1, ra, 26
                  sub          a3, t2, s4
                  add          a2, s11, t3
                  nop
                  srai         a5, s4, 26
                  addi         s9, gp, -88
                  or           s8, t3, s7
                  slt          s11, s7, a1
                  andi         s1, a2, -717
                  sltu         s11, t6, s5
                  add          s11, zero, gp
                  xori         a2, s5, -1035
                  lui          s4, 444895
                  slt          a0, a5, a4
                  add          t1, a5, s8
                  srai         a1, s11, 12
                  or           sp, s2, a6
                  sub          s11, t4, s3
                  or           a5, tp, s9
                  slti         a3, a7, -96
                  auipc        a6, 422675
                  sll          s9, s8, t1
                  add          s8, t2, s3
                  sub          a6, gp, s1
                  nop
                  sra          a2, s6, gp
                  add          s1, tp, s7
                  srl          s4, s11, a0
                  auipc        zero, 141988
                  sltu         a0, t3, t5
                  sra          a3, s1, t5
                  srai         s9, t1, 1
                  srl          t5, tp, a5
                  xor          tp, s0, s0
                  add          s1, t5, a6
                  sltiu        a1, t6, -1326
                  lui          a3, 600446
                  slli         s8, a0, 17
                  slt          a7, tp, a6
                  sub          t5, a4, a2
                  sltu         t3, tp, a5
                  srli         s9, a6, 5
                  sltu         sp, t1, t3
                  srli         sp, s3, 0
                  sltu         a3, t5, s5
                  auipc        a0, 993486
                  lui          t5, 700816
                  andi         s9, a5, -192
                  xor          a4, a0, sp
                  nop
                  ori          a2, s9, -1838
                  xori         t6, s6, 93
                  addi         s3, a4, 1689
                  sltiu        t0, s3, 60
                  slli         a2, a3, 16
                  or           s9, s5, s8
                  sll          a5, a2, a4
                  srli         a7, a3, 20
                  ori          s4, s4, 86
                  xor          tp, s9, s8
                  ori          ra, s3, -782
                  sltu         s11, t4, t4
                  srai         s11, zero, 3
                  sub          a2, gp, s5
                  andi         s6, s3, 1546
                  andi         t3, s2, -1683
                  slli         zero, t2, 19
                  slli         a7, a5, 21
                  slli         a0, s6, 20
                  sll          s4, s5, a2
                  addi         s4, s7, 768
                  nop
                  srai         a6, s7, 18
                  sll          t0, t1, t5
                  xori         s8, s2, -1817
                  and          ra, ra, s11
                  slt          t3, s3, t5
                  sltu         t5, s0, t1
                  slli         sp, t6, 15
                  slt          a4, s5, s4
                  addi         sp, s8, 1231
                  nop
                  xori         s3, tp, 1073
                  add          t1, t1, t5
                  slli         a1, s8, 1
                  addi         s4, t5, -1670
                  xori         t0, a3, -1173
                  sra          s9, a3, a0
                  slli         t1, t2, 18
                  srl          a3, s8, a6
                  xor          tp, t3, a7
                  sltiu        s11, s11, 59
                  sltiu        s8, s4, 72
                  srli         ra, s11, 21
                  slt          s1, s7, a2
                  andi         s2, t0, 1207
                  sub          t6, s9, s10
                  ori          s9, s7, 784
                  sltu         s5, t6, s5
                  sub          gp, s6, t0
                  slti         t1, sp, -1123
                  add          a3, zero, t4
                  add          s0, zero, s11
                  xori         a7, s1, 1539
                  xor          t1, a0, t6
                  slti         t5, s10, 955
                  sra          s3, t3, ra
                  xor          t0, a3, s10
                  srli         a2, s3, 11
                  xori         sp, s9, 1675
                  andi         s11, s4, 964
                  srli         s6, tp, 4
                  or           t1, sp, t0
                  addi         gp, a3, -1533
                  sll          ra, tp, t3
                  sra          a6, t0, s9
                  slli         ra, s7, 13
                  nop
                  addi         s8, a0, 15
                  lui          s3, 199719
                  and          t1, s8, t3
                  slli         zero, s9, 12
                  add          t3, ra, a2
                  xor          t5, s7, t3
                  addi         tp, s0, 1883
                  slt          a4, a0, s0
                  and          gp, s7, s9
                  srai         s2, t5, 22
                  sltu         t5, tp, a1
                  add          t1, zero, tp
                  xori         s11, a4, 1991
                  and          a7, a3, t0
                  slli         sp, t3, 24
                  addi         a5, t2, -622
                  slti         s4, s2, -925
                  ori          a3, s3, 514
                  slt          a4, s11, s5
                  ori          s5, t2, -22
                  sra          sp, s4, a0
                  andi         s7, ra, 54
                  addi         s11, s11, 48
                  sll          s7, s6, zero
                  sra          a3, t2, a2
                  sltu         t0, s10, a3
                  sra          a2, zero, a5
                  srl          a3, a2, s5
                  add          a1, a7, t3
                  sltu         s9, t1, a1
                  auipc        t0, 156671
                  auipc        zero, 520593
                  sra          ra, s5, t4
                  sra          t1, s0, t0
                  addi         s5, t1, -308
                  addi         s9, t2, 968
                  nop
                  sltu         zero, a2, s0
                  ori          s6, tp, -532
                  sub          s8, t6, s11
                  sltu         a7, s0, t0
                  or           t5, a6, s10
                  srl          zero, tp, s9
                  sra          a2, zero, t0
                  slt          s5, s5, t2
                  sub          t6, sp, s10
                  sltu         ra, s1, zero
                  addi         tp, s3, 726
                  auipc        a7, 395033
                  sltu         s3, s10, s11
                  xori         sp, a4, -826
                  srl          a4, s7, a4
                  slt          s5, t0, s4
                  xor          s7, s11, t0
                  slt          t6, gp, s11
                  nop
                  slti         a6, s11, -2037
                  addi         s5, s9, -1596
                  auipc        s8, 780906
                  sltu         ra, s8, a6
                  sltu         zero, t3, sp
                  auipc        s3, 33359
                  auipc        s11, 161930
                  srli         s8, tp, 1
                  auipc        t0, 203934
                  slti         s11, a5, 1513
                  lui          s3, 33421
                  and          s8, a2, sp
                  srl          ra, t5, zero
                  addi         gp, t5, 1710
                  lui          t3, 436614
                  xor          t3, t2, s5
                  sra          s5, t5, s5
                  slt          t6, a2, gp
                  sltiu        sp, a7, -482
                  slti         s11, s0, 1785
                  and          a2, s9, a6
                  xori         s2, t0, 1837
                  lui          t1, 45553
                  and          a3, a5, s1
                  sll          gp, a0, a1
                  ori          a3, zero, -672
                  slt          tp, s6, t0
                  sll          t1, t0, ra
                  xor          s9, s7, s3
                  slli         s6, t1, 29
                  ori          t6, s5, 1527
                  xori         s3, s6, -977
                  auipc        sp, 93072
                  andi         a6, a4, 606
                  or           a1, t1, a3
                  slt          a6, t5, s7
                  slli         t0, a7, 3
                  srai         s0, a5, 6
                  auipc        s1, 159840
                  add          s8, t2, s7
                  andi         ra, t6, 87
                  lui          a4, 1564
                  lui          a1, 636480
                  sra          s0, a7, a1
                  slti         s2, a5, 190
                  sra          ra, s9, a3
                  auipc        sp, 848516
                  lui          a4, 957564
                  xor          s1, s5, a4
                  slli         s2, t0, 31
                  slt          a2, a7, a3
                  slti         tp, a0, 1122
                  srli         a6, s0, 18
                  slti         a5, s5, 185
                  nop
                  srl          s11, t3, t0
                  srl          a1, tp, s1
                  srai         s6, a5, 13
                  srai         t5, s1, 28
                  sll          s9, gp, s11
                  auipc        t5, 1036643
                  auipc        s5, 658573
                  xori         sp, s3, 880
                  nop
                  srl          s3, t2, s8
                  xori         t6, t0, 1121
                  add          s3, s1, s1
                  auipc        s4, 538878
                  add          ra, sp, a7
                  and          s11, s10, a5
                  srai         a0, gp, 4
                  sub          s11, s5, a0
                  auipc        sp, 306564
                  xori         t0, s5, 81
                  ori          s6, gp, -161
                  sltu         gp, a6, t6
                  xor          s4, sp, gp
                  nop
                  add          s6, t4, a4
                  xor          s7, s1, t4
                  slli         s3, s6, 3
                  slli         s3, t6, 25
                  sub          a0, gp, t5
                  auipc        s3, 935690
                  slti         gp, tp, 279
                  slli         t6, a7, 16
                  srl          s3, ra, t6
                  xori         a3, a3, 1613
                  sltu         s4, a0, s8
                  sra          t1, t0, a6
                  slli         ra, zero, 25
                  sltiu        a6, s10, 0
                  xori         a6, s8, -84
                  add          t5, tp, t5
                  sll          sp, t1, s10
                  nop
                  sub          s8, t3, ra
                  or           s1, s0, a5
                  srai         a1, a2, 24
                  and          t5, a2, a0
                  add          zero, s10, a3
                  andi         s8, gp, 303
                  srli         sp, a5, 18
                  sltu         sp, t1, s6
                  nop
                  srl          gp, a3, s3
                  slt          t1, a7, a3
                  addi         s9, s9, 1495
                  or           a3, a4, a6
                  addi         a5, s3, 116
                  slti         s9, zero, -1588
                  slti         s9, s5, 1675
                  lui          a3, 207868
                  ori          s2, a4, 1879
                  xor          ra, s4, s0
                  srai         a2, t2, 1
                  srli         a2, t0, 16
                  sub          a3, s6, s11
                  sra          a2, gp, s7
                  sltiu        a4, a7, -1229
                  slt          s0, s10, s10
                  xori         s2, t5, -911
                  sra          a7, a6, a1
                  srai         s0, s11, 1
                  addi         t1, a7, -1141
                  and          sp, a5, s10
                  slt          s0, t3, zero
                  or           s8, tp, s1
                  sra          a7, t0, s6
                  xori         a0, t6, -1164
                  slli         a2, a1, 25
                  sltiu        s1, a7, -1715
                  srai         s2, a7, 23
                  and          zero, t4, t0
                  and          a1, t6, a0
                  srai         s2, a2, 8
                  addi         s1, a3, -1942
                  srl          a0, t5, ra
                  nop
                  or           s7, a7, s11
                  sll          ra, gp, s5
                  sltu         a5, ra, t2
                  slli         a6, t2, 12
                  srli         s0, t3, 18
                  slti         t1, s4, 285
                  sltu         t5, s10, s11
                  nop
                  xor          s6, a4, a4
                  slt          s5, s0, a3
                  lui          s1, 306262
                  slli         s6, s5, 25
                  srl          a5, s8, a1
                  srli         a0, s4, 8
                  sub          a2, t1, s8
                  nop
                  ori          a4, s3, 524
                  andi         ra, s5, -1069
                  xor          s0, a1, a2
                  srai         s9, t0, 4
                  add          sp, ra, s9
                  or           t3, s5, t3
                  add          sp, s2, a3
                  xori         t3, a5, -1410
                  xor          s9, t6, a5
                  slti         s9, s4, 2033
                  slti         sp, tp, -1420
                  slti         s5, s7, 155
                  sltu         s5, gp, t6
                  sltiu        s6, t2, -1989
                  sltu         gp, s3, a2
                  or           a2, s8, t6
                  or           t5, s4, a7
                  sltiu        s4, s10, 174
                  slli         t5, s6, 19
                  sll          a1, a5, s6
                  lui          s6, 79461
                  ori          a2, gp, -1614
                  add          a7, sp, s1
                  andi         s6, s2, -817
                  sra          s2, gp, sp
                  nop
                  addi         s4, t0, 241
                  addi         t6, t4, -1616
                  andi         s9, a0, 1703
                  nop
                  nop
                  slti         ra, t3, 1545
                  srl          t6, s0, s9
                  ori          t5, s10, -627
                  sltiu        t0, a1, 1361
                  srai         a1, tp, 0
                  sll          sp, sp, t3
                  andi         t5, t0, -641
                  sltiu        s2, t1, 499
                  sll          t6, s8, s1
                  add          s4, s4, t2
                  nop
                  srl          s7, s2, s4
                  and          a7, a0, a1
                  sll          ra, a6, zero
                  srai         tp, a3, 29
                  srai         a7, gp, 23
                  srl          a5, t0, t4
                  xor          a6, t0, a2
                  andi         a5, s9, -847
                  sll          zero, t5, a3
                  auipc        t1, 260579
                  add          a5, sp, sp
                  slt          s11, a0, tp
                  sub          s3, sp, s6
                  andi         a4, gp, -1248
                  sltu         s2, t1, t4
                  slti         s9, t6, 2031
                  srli         a6, a1, 15
                  sra          s4, a7, s3
                  sltiu        s0, gp, 717
                  srl          t1, a4, sp
                  or           t0, t5, s2
                  sltiu        s8, t0, -1719
                  srl          s4, a5, gp
                  srai         s2, s6, 13
                  auipc        a3, 807200
                  sltu         a5, gp, s8
                  lui          s0, 1041060
                  srai         s0, s4, 17
                  xori         sp, s5, 1118
                  xor          t0, s0, gp
                  ori          s8, t2, 1927
                  slti         s8, t4, -1177
                  srl          s11, a2, s11
                  slt          a3, s2, s9
                  addi         a3, a5, -1336
                  xor          a3, s9, s0
                  lui          a5, 20802
                  sra          t6, s8, s8
                  or           t1, ra, a2
                  nop
                  slti         a2, s0, 1058
                  xor          sp, a2, s5
                  addi         s2, s0, 1443
                  ori          a6, s4, -1472
                  xori         tp, s7, -1786
                  slti         s4, ra, 467
                  slt          s0, s8, a7
                  slti         s3, tp, 650
                  and          s6, s9, s10
                  slt          t0, s11, a1
                  srli         s0, s5, 29
                  sub          s8, a0, t5
                  ori          a7, a5, 2020
                  addi         s8, tp, -377
                  nop
                  nop
                  andi         a5, t6, -1955
                  sltu         t3, s8, ra
                  sll          a4, t3, ra
                  ori          s5, s1, -1842
                  sll          a2, s8, a5
                  andi         s5, t1, 1853
                  slt          t1, s1, s0
                  xor          s2, sp, tp
                  srl          tp, s1, s10
                  sra          t0, t5, zero
                  sltiu        a6, a3, -450
                  xori         s6, a2, -686
                  addi         s0, sp, -1953
                  srli         s11, a6, 15
                  sub          s6, a3, ra
                  lui          s5, 962182
                  nop
                  nop
                  or           s4, a7, a4
                  sltiu        s8, t4, 2035
                  sra          s4, s0, a1
                  sltiu        s2, sp, 570
                  sltiu        s6, t0, 287
                  sra          s3, a2, sp
                  add          s1, s11, s10
                  auipc        zero, 528756
                  srai         a7, s3, 26
                  sltu         t1, a7, s8
                  nop
                  and          s5, a1, ra
                  srai         a4, a2, 17
                  sub          s4, s1, s6
                  xor          s3, s2, s6
                  sltiu        a7, a6, -888
                  sra          s1, s0, s5
                  slli         t3, a5, 21
                  srl          a2, s11, t4
                  and          zero, s1, t5
                  srai         gp, s7, 15
                  sub          a7, s7, t5
                  xor          a6, s2, t3
                  sltu         t0, a3, a7
                  nop
                  auipc        tp, 134523
                  slli         a7, a3, 25
                  sltu         sp, s10, gp
                  andi         t1, a4, -1209
                  lui          zero, 121126
                  slti         a7, t0, -1299
                  andi         a3, tp, -1211
                  slt          a4, s9, t1
                  srli         s2, a7, 16
                  xori         s4, a4, -622
                  sra          s9, t6, t6
                  lui          t6, 660408
                  nop
                  sub          s8, s4, t6
                  srai         s9, t2, 2
                  add          a3, s0, a2
                  sll          a6, sp, t3
                  slli         gp, s0, 28
                  sub          s5, s8, a0
                  srai         s9, s1, 27
                  sub          a1, zero, t3
                  auipc        s1, 500094
                  or           ra, sp, a6
                  sltu         s7, sp, a0
                  sub          s9, ra, s8
                  sub          a2, a0, zero
                  auipc        s2, 711170
                  slt          s7, t5, s2
                  or           a7, s4, s11
                  lui          a2, 634340
                  andi         s2, s10, 1217
                  sll          t3, s7, a3
                  andi         s6, sp, -231
                  lui          s6, 1015583
                  addi         s4, s3, 1734
                  slt          s11, s8, t6
                  slli         t6, s10, 22
                  slli         a4, t0, 0
                  srai         s7, a3, 31
                  sll          a3, a5, gp
                  slli         t5, s8, 23
                  and          s7, a5, s3
                  srl          tp, t4, s3
                  sll          t3, ra, tp
                  srai         s9, s1, 14
                  auipc        s4, 94270
                  sra          gp, s2, t0
                  addi         zero, ra, -277
                  nop
                  sltiu        zero, t2, 456
                  slti         s1, a3, -664
                  add          gp, t6, s5
                  srli         a2, t5, 8
                  slti         a2, a1, 901
                  sub          a3, zero, zero
                  xor          gp, s2, s2
                  add          s7, t1, t0
                  andi         s2, ra, 208
                  sll          a5, a4, t6
                  slt          s7, sp, s4
                  sra          s0, t4, t1
                  sll          a5, s10, a0
                  auipc        s9, 838033
                  sra          a5, a3, t4
                  ori          t1, a1, 471
                  nop
                  nop
                  nop
                  add          s2, s2, a5
                  sll          zero, s6, a0
                  sub          s0, s7, s0
                  srli         t5, s3, 2
                  lui          s6, 853912
                  lui          s8, 483994
                  and          t3, zero, s0
                  addi         t6, s5, -233
                  xori         s2, ra, 999
                  add          s2, s8, s7
                  srli         t1, s10, 18
                  sll          a6, s8, s2
                  nop
                  sltiu        a0, a3, 851
                  slt          a2, s2, t4
                  slti         a6, t3, 722
                  auipc        s2, 272505
                  xori         a3, a7, -982
                  or           s11, ra, s8
                  slti         s1, s2, -1713
                  xor          s11, s7, s2
                  andi         s5, zero, 204
                  nop
                  add          s7, t1, s11
                  slt          s2, s5, s3
                  andi         s1, s4, 1347
                  ori          s6, a5, 153
                  lui          s11, 8583
                  xori         s7, zero, -193
                  sltu         a4, s10, t2
                  lui          a6, 124016
                  sltiu        tp, zero, -1844
                  sra          a2, a5, ra
                  slti         tp, s5, 453
                  slti         s1, a2, -415
                  slli         tp, t4, 7
                  srai         a0, s1, 24
                  srl          ra, zero, s5
                  srli         tp, gp, 3
                  ori          zero, a7, -1392
                  add          t6, a6, s11
                  xori         s7, s6, 1190
                  srai         gp, sp, 14
                  sub          s8, sp, ra
                  add          s4, t3, t0
                  nop
                  sll          a6, t6, t5
                  srli         t3, a6, 2
                  srl          t1, t6, s6
                  srai         t1, s6, 15
                  srai         a6, t5, 15
                  auipc        a7, 731293
                  sltu         t5, zero, s9
                  sll          s9, a2, sp
                  lui          s0, 50082
                  srli         s3, s7, 7
                  slli         s11, s7, 26
                  sltiu        s3, s2, -1234
                  lui          t0, 483651
                  or           s2, s11, t4
                  slti         a2, t2, 969
                  nop
                  sltu         t0, s1, t6
                  srl          sp, s2, sp
                  srli         s8, a1, 29
                  add          a2, sp, ra
                  slt          s4, s7, gp
                  xor          s6, gp, a4
                  srli         t5, a1, 5
                  sltiu        a2, s5, -1189
                  or           ra, s6, tp
                  add          s5, t1, a0
                  slt          a2, gp, zero
                  ori          a2, a1, 933
                  andi         a2, zero, 129
                  xori         s8, a0, 1655
                  slti         s5, t0, -180
                  sll          t3, s1, t0
                  sll          t0, t4, s8
                  andi         s11, gp, 1267
                  sltu         ra, tp, a5
                  srli         s6, s0, 18
                  slli         s6, sp, 2
                  ori          a1, gp, 1977
                  or           s7, s10, a3
                  xori         s5, gp, -732
                  sll          tp, t6, zero
                  add          gp, a1, a3
                  sltiu        s6, tp, -1973
                  sll          s5, a5, a0
                  addi         s2, t2, 579
                  addi         s4, s9, 950
                  slli         s0, a3, 23
                  addi         s11, a5, 1374
                  ori          t3, s4, -1306
                  sra          a7, tp, s0
                  add          t0, a4, tp
                  srl          s8, a0, t5
                  slli         s8, zero, 22
                  add          s3, a0, s9
                  andi         s9, t0, 1967
                  add          t0, zero, t1
                  addi         t0, a4, 2031
                  sll          a7, zero, ra
                  slti         a7, s4, -1596
                  and          a0, zero, t4
                  slti         s9, s1, -61
                  and          s5, s9, a3
                  andi         zero, s0, -1767
                  and          a0, sp, a5
                  slti         ra, s10, 1573
                  sub          s5, a2, t3
                  or           t0, sp, s0
                  slt          tp, s8, a3
                  lui          gp, 296115
                  srl          a5, s1, t3
                  sll          gp, s7, s6
                  slli         sp, a2, 20
                  lui          gp, 76163
                  slli         s1, a2, 22
                  slli         a1, s4, 13
                  sltiu        t6, t1, -1972
                  lui          a6, 656889
                  add          a1, ra, t1
                  sltu         a6, zero, s11
                  add          a4, a3, s0
                  slt          s2, t4, s8
                  sll          s1, s9, a6
                  sll          s0, t0, tp
                  srli         t6, a3, 20
                  and          a6, a6, t3
                  and          s7, s0, zero
                  or           tp, ra, s4
                  slt          t6, s11, s8
                  sltu         a2, a5, s5
                  add          t1, a4, s5
                  srl          t5, s10, s5
                  sub          s2, a4, ra
                  ori          s0, a7, 164
                  andi         a0, sp, -1653
                  auipc        s3, 868207
                  xor          a6, t0, t0
                  slti         s9, zero, 1730
                  slt          t3, s0, s4
                  slti         s9, a2, 1526
                  or           s1, a1, a2
                  auipc        sp, 338862
                  xor          gp, sp, s8
                  or           t0, t6, s3
                  or           tp, s8, s11
                  and          s6, s11, s6
                  nop
                  slti         s2, sp, 1744
                  lui          a0, 757513
                  nop
                  srl          s2, t5, t1
                  srli         t0, ra, 22
                  slt          zero, s7, t2
                  sra          gp, a6, s9
                  slti         s2, a3, 1371
                  sltu         s0, a5, t5
                  xor          a5, t4, t5
                  sub          s9, s7, t3
                  and          a1, t5, a3
                  addi         zero, gp, 1153
                  auipc        a1, 1010792
                  sltu         sp, sp, a7
                  sltiu        a6, tp, -358
                  sub          s4, s7, a6
                  sltu         a1, s4, a7
                  sra          a6, s3, s11
                  or           a0, a7, tp
                  add          s9, ra, t0
                  add          gp, a5, a0
                  andi         s6, ra, 1895
                  sub          a4, t5, s8
                  ori          s11, gp, 526
                  slli         a6, a6, 12
                  slli         a1, s3, 18
                  srli         sp, s4, 10
                  nop
                  andi         ra, s1, -466
                  auipc        tp, 459238
                  and          s8, sp, a6
                  sll          s11, sp, s11
                  ori          a0, a7, -63
                  or           t5, t2, s4
                  srli         sp, t0, 22
                  or           s3, s6, a3
                  srai         tp, gp, 21
                  ori          tp, s2, -2021
                  sll          gp, a5, s3
                  slli         s2, s2, 5
                  ori          ra, t0, -566
                  srli         s1, s1, 30
                  xori         t1, s4, -1038
                  andi         tp, t5, -217
                  addi         a3, a5, -1138
                  srli         s7, a1, 22
                  ori          gp, a3, 695
                  lui          s7, 437981
                  slt          s4, s2, s6
                  srai         sp, s10, 0
                  andi         t6, a3, -493
                  auipc        a4, 166913
                  sltiu        t1, s6, -1861
                  sltiu        s0, t0, -73
                  sltu         sp, s0, a6
                  srl          s4, t5, a2
                  or           s11, s3, a1
                  xor          zero, a7, gp
                  auipc        a5, 943422
                  srai         s4, a4, 0
                  slti         s5, a7, 151
                  andi         s5, s7, -695
                  slli         s11, a7, 17
                  sltiu        a4, a1, -455
                  slti         s9, s8, -42
                  slli         s8, t1, 26
                  slti         s1, s11, -1640
                  nop
                  slli         s3, s6, 9
                  xori         s11, zero, -1545
                  sltu         s4, gp, s5
                  sltiu        s3, a7, -1081
                  andi         a2, t2, -1029
                  slt          s0, s2, a0
                  srai         zero, s11, 21
                  srai         ra, t3, 23
                  xori         s0, tp, 1807
                  sltu         s8, a6, a4
                  sltu         sp, t1, a0
                  sll          a7, a6, s9
                  nop
                  sll          s4, t3, ra
                  add          s3, t2, t1
                  auipc        t3, 233840
                  srai         s7, t1, 10
                  sll          gp, a2, a1
                  ori          sp, ra, 1311
                  sll          t3, s6, a6
                  xor          s11, s10, s11
                  sra          s3, s4, s3
                  slt          t5, s0, t4
                  andi         s7, tp, 860
                  srai         tp, t6, 31
                  xori         s11, t6, -1332
                  nop
                  srli         s7, s6, 1
                  sltu         s1, s4, s8
                  ori          a6, s1, 484
                  ori          a5, a5, 1069
                  nop
                  nop
                  or           t0, s6, s5
                  addi         t0, s10, -811
                  ori          tp, a5, 1217
                  slti         sp, t3, -409
                  slti         s8, s3, -6
                  nop
                  sub          s5, a3, a4
                  add          s9, t3, a0
                  sub          a5, t5, s7
                  slli         sp, a1, 8
                  srai         s8, s10, 7
                  slti         tp, ra, 1995
                  slli         s0, tp, 14
                  srai         gp, ra, 26
                  sub          a7, s2, t2
                  sltiu        a1, t1, -1514
                  nop
                  srl          s2, s10, a3
                  sub          s4, s10, s5
                  srai         s4, s10, 31
                  ori          sp, t6, 328
                  sll          t1, a6, a6
                  slli         s0, s0, 6
                  srli         s8, s2, 1
                  add          t6, s11, s6
                  and          s7, s7, s11
                  sll          s6, s7, t1
                  sub          s1, a5, a7
                  sub          a7, s11, a4
                  addi         a6, tp, -990
                  andi         s2, zero, -1967
                  slli         a1, a5, 17
                  and          s9, zero, s8
                  auipc        t0, 260567
                  xor          tp, s3, a2
                  sltu         a0, sp, a3
                  and          s2, s10, s5
                  srli         a2, s11, 30
                  slli         a2, s3, 5
                  andi         sp, s2, 739
                  slli         sp, ra, 16
                  nop
                  sltiu        s9, a6, 1096
                  sub          ra, a0, a6
                  add          s3, s10, t6
                  lui          t5, 42424
                  sra          ra, a3, sp
                  or           ra, a2, a1
                  ori          a3, s8, -730
                  xor          s0, a1, t4
                  add          s0, s8, t6
                  slli         s4, zero, 16
                  sub          s8, t0, a3
                  and          s1, a0, t2
                  srl          s5, s9, a6
                  slt          a5, s6, s11
                  srli         tp, a5, 20
                  or           a3, s6, t6
                  nop
                  srl          sp, a3, s3
                  xor          sp, t5, s10
                  srl          s5, t5, sp
                  srai         tp, a2, 31
                  srli         s6, a3, 29
                  ori          t1, tp, 984
                  srl          a7, s0, s1
                  sltiu        s0, gp, 1184
                  sltu         gp, t2, zero
                  srli         s8, t3, 18
                  xor          s3, t0, a5
                  sra          s5, s11, t2
                  sub          s7, t3, sp
                  srl          a3, s1, a1
                  srai         s9, t1, 5
                  srli         a0, t3, 15
                  xor          a6, a3, s0
                  lui          gp, 372489
                  sll          s4, tp, s3
                  and          a6, ra, s6
                  auipc        a6, 622654
                  nop
                  ori          tp, s8, -1463
                  sll          t6, s6, gp
                  sltiu        s9, a6, 321
                  addi         s0, gp, 1836
                  slli         t0, s9, 30
                  slli         a0, t1, 3
                  addi         s7, tp, -1565
                  slli         t6, zero, 2
                  auipc        ra, 942731
                  sub          gp, s1, a6
                  slti         sp, t1, -766
                  srl          a5, a2, gp
                  or           s5, tp, s2
                  xori         s5, a5, -155
                  or           s7, s9, t6
                  sltiu        gp, tp, -1411
                  add          s2, a0, s5
                  ori          t3, s9, -1089
                  and          sp, t1, s6
                  srai         s3, s0, 9
                  add          ra, s3, tp
                  add          s8, t2, t6
                  sltiu        a5, t6, -885
                  auipc        t3, 338647
                  sra          s7, a1, gp
                  or           t0, zero, t3
                  sll          a1, a5, s8
                  or           zero, ra, s5
                  auipc        s6, 703444
                  xori         s0, sp, -1514
                  slli         s5, gp, 25
                  sltiu        a4, a6, 1901
                  add          t6, a7, sp
                  or           s8, s2, s4
                  sll          t5, s10, a3
                  slli         s2, t0, 5
                  srai         s3, s9, 1
                  auipc        a6, 1008994
                  sll          a5, s10, a5
                  sra          s3, t4, t0
                  slli         s4, a1, 27
                  slt          s7, a3, t2
                  ori          ra, t5, 877
                  add          a1, s3, s4
                  sra          s5, s9, s10
                  add          a1, s0, s4
                  or           s1, a5, a3
                  slti         s4, a3, 1485
                  addi         t5, tp, -765
                  srli         t1, sp, 9
                  sltu         tp, s2, t4
                  sra          a4, a0, s3
                  add          s5, s4, s10
                  sltiu        sp, s5, -1541
                  sltu         s8, ra, s3
                  auipc        a3, 657477
                  sltiu        a1, a7, -328
                  sll          a5, a6, ra
                  add          ra, t1, a6
                  slt          s11, a3, s3
                  sltiu        a7, a7, -253
                  slt          tp, t1, s6
                  sltiu        s0, t3, 168
                  and          zero, zero, s1
                  lui          a4, 576552
                  sltu         a6, tp, s6
                  sltu         s9, t3, s5
                  xori         t3, ra, -128
                  addi         s6, t3, 1449
                  xor          a6, tp, s6
                  slli         a2, t0, 1
                  slti         a1, a5, 445
                  nop
                  srai         t1, s1, 3
                  srl          t3, s11, a1
                  lui          gp, 716323
                  addi         s1, t2, 344
                  slli         gp, t0, 25
                  srl          gp, t6, zero
                  and          s7, sp, a1
                  sra          a5, gp, t1
                  nop
                  andi         a7, a3, 1775
                  sub          a5, s3, s10
                  sltu         t3, s5, s11
                  slt          s0, s4, a0
                  slt          s1, a4, s10
                  sll          tp, s4, s7
                  slli         a5, a5, 7
                  and          t5, a0, t6
                  srli         s0, t2, 26
                  add          s2, s5, a4
                  or           tp, a0, sp
                  slti         t6, s1, 1901
                  srai         t3, t5, 12
                  sltu         a1, ra, t6
                  auipc        a2, 165425
                  sll          s2, s11, t3
                  nop
                  sra          t3, s11, a6
                  xori         t1, a4, 426
                  andi         s0, zero, -1002
                  add          a4, t4, a5
                  lui          sp, 573
                  slt          a5, a6, t1
                  sll          a5, s6, s11
                  and          s4, t2, t2
                  srai         t5, gp, 17
                  or           s6, a7, a3
                  add          a0, s2, t5
                  srli         a2, t0, 10
                  addi         s2, t5, -1523
                  srai         a7, t1, 23
                  andi         s3, sp, -1316
                  or           s4, a5, s6
                  xori         a0, a2, -1747
                  slli         a5, s1, 7
                  auipc        s4, 498406
                  addi         s4, s3, 1600
                  andi         a6, t4, 305
                  srl          a2, ra, a2
                  nop
                  slt          ra, t3, s2
                  li           s1, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           t6, 0xcec570d1
                  li           s11, 0xffffffff
                  li           a6, 0x80000000
                  li           s6, 0x0
                  li           s9, 0x521a1ce
                  li           a5, 0x0
                  li           ra, 0xbdabbc73
                  li           tp, 0x0
                  li           t0, 0xffffffff
                  lui          tp, 581869
                  lui          t0, 397372
                  addi         s6, ra, 1629
                  add          s6, s1, s1
                  sub          s6, s11, s1
                  auipc        s9, 536585
                  addi         a6, s6, 110
                  add          ra, s1, s6
                  lui          s9, 159592
                  lui          s6, 403767
                  nop
                  sub          a5, tp, a5
                  auipc        s11, 176757
                  addi         s1, tp, 917
                  nop
                  add          s9, a5, t0
                  lui          a5, 857214
                  add          tp, t0, s6
                  nop
                  lui          a6, 1043551
                  addi         t6, t0, 204
                  auipc        s6, 842869
                  nop
                  nop
                  auipc        t6, 667736
                  sub          s11, s11, t6
                  sub          s9, s9, a5
                  auipc        s6, 187063
                  lui          a5, 866877 #end riscv_int_numeric_corner_stream_15
                  srai         s0, a4, 31
                  auipc        t6, 986635
                  addi         t5, s6, 1693
                  sra          a0, a2, s4
                  xor          a3, t2, s9
                  sll          s4, a0, a5
                  sltu         a6, a1, a2
                  add          s7, t5, tp
                  slli         tp, a5, 20
                  and          a6, s5, t2
                  sub          s4, a4, a6
                  andi         s2, s3, 1735
                  srl          s7, t6, a3
                  sub          s0, a6, a4
                  and          t6, t3, s7
                  sll          t5, s2, s4
                  sll          s7, s6, a0
                  slli         a4, gp, 6
                  or           t6, a5, s5
                  ori          s0, sp, -1376
                  slt          s5, t3, t5
                  sub          a2, s4, t2
                  srli         s11, s4, 17
                  xor          s8, s7, s1
                  sub          s11, a2, tp
                  auipc        t6, 946991
                  slti         a4, s4, -292
                  srl          a2, ra, s5
                  ori          s2, s4, -1320
                  sll          s4, a3, s10
                  lui          sp, 462203
                  xor          sp, s11, s7
                  srl          gp, a3, t4
                  add          s2, a7, s4
                  or           a4, t6, s2
                  or           a3, t0, s6
                  ori          s2, s1, -664
                  slti         t3, t5, 1573
                  sltu         s11, sp, a7
                  sltiu        ra, tp, 1115
                  srl          a5, s4, t2
                  srli         s2, a3, 7
                  srai         s4, gp, 6
                  auipc        s8, 480972
                  sltiu        s11, a2, 563
                  or           s3, a4, s6
                  add          ra, a1, a1
                  and          s7, a5, s7
                  sltiu        a1, s8, -503
                  slli         s1, t3, 30
                  slt          a1, a6, t3
                  or           t6, s8, t4
                  lui          s0, 670552
                  srl          a3, sp, t3
                  xor          s7, s8, s10
                  xor          t6, s5, a7
                  sub          t0, t1, s9
                  sltiu        a3, ra, -1031
                  andi         s6, t0, -762
                  ori          s1, s4, 1486
                  sub          zero, t4, a0
                  slt          zero, tp, a6
                  srl          a2, s7, a6
                  auipc        s8, 759879
                  addi         s0, s4, 853
                  sll          t5, t3, s9
                  srai         s0, a1, 23
                  auipc        gp, 433793
                  or           s0, s2, s7
                  add          zero, a0, s5
                  sll          a7, s4, t3
                  srai         s8, a0, 7
                  slli         a5, a5, 23
                  slt          s8, a4, s7
                  lui          s11, 628903
                  andi         s5, a3, 1898
                  nop
                  sll          s6, gp, t6
                  or           a5, gp, tp
                  xor          a5, s0, s7
                  nop
                  sltu         gp, a3, s6
                  add          s4, a4, t2
                  slti         a6, a7, 330
                  auipc        s4, 657515
                  slt          s4, t2, s6
                  srl          s3, s1, a1
                  add          s4, s2, s7
                  xori         s3, s7, 1487
                  auipc        zero, 549474
                  lui          t6, 811259
                  sub          t3, a5, t4
                  srli         tp, s7, 5
                  nop
                  slli         sp, a2, 16
                  sltiu        s0, s7, 308
                  ori          a2, s8, 1873
                  auipc        s7, 236931
                  and          t3, a7, t6
                  slt          zero, s9, s3
                  sltiu        s1, t3, 1424
                  sltu         sp, t5, a1
                  srli         s6, gp, 19
                  slli         s6, s3, 0
                  xor          zero, t2, ra
                  sltu         s8, zero, t3
                  xori         s6, t4, 1253
                  addi         a5, t0, 1962
                  slti         s2, t4, -1802
                  srl          t5, tp, t0
                  andi         t5, a5, 1698
                  add          a6, t5, s2
                  slti         a2, a4, -749
                  sltu         s6, t6, a5
                  and          a0, a4, sp
                  xor          zero, a3, t3
                  sll          a4, t0, s5
                  nop
                  sltu         t3, t0, s1
                  srl          s3, a7, t5
                  addi         a4, a5, -689
                  lui          s8, 791747
                  sltiu        a3, s9, -411
                  sra          a0, s5, t4
                  sll          a2, t5, a3
                  xori         a2, t2, -391
                  sub          a2, a5, s7
                  xori         ra, gp, 1315
                  ori          a1, a2, 1119
                  ori          s0, t6, -1567
                  srai         t1, a0, 29
                  srl          t3, s10, a5
                  srl          s1, a3, a0
                  slli         s0, a3, 27
                  slli         s1, gp, 1
                  sub          s9, sp, a7
                  ori          s6, s5, 1894
                  addi         s5, a6, 480
                  sll          a5, a3, s6
                  andi         zero, ra, 1649
                  srl          tp, s7, t2
                  lui          s5, 959246
                  srai         a3, s6, 15
                  nop
                  andi         s8, t0, 1
                  andi         s11, a0, 1468
                  andi         s0, t3, -197
                  xor          a1, sp, t5
                  add          s4, a0, t2
                  sra          t3, t5, a1
                  nop
                  sra          a2, s10, s11
                  sra          t6, a6, tp
                  and          t6, a1, a3
                  sltiu        a7, s5, -2015
                  xori         zero, t4, 1048
                  xori         a6, t4, -846
                  add          s3, s11, t3
                  xor          a6, sp, s0
                  or           s5, s11, t4
                  addi         a7, s10, -1650
                  xori         tp, s10, -1748
                  and          s3, t1, a0
                  srl          a5, a1, s0
                  lui          s4, 818931
                  nop
                  slli         s6, s2, 20
                  xor          s3, a7, zero
                  slli         sp, t1, 17
                  sra          a6, ra, a3
                  xor          s7, a7, a3
                  nop
                  sltiu        t6, a3, -851
                  slti         s7, ra, 497
                  slti         s0, t6, 1090
                  and          t1, a0, zero
                  srai         s1, t0, 22
                  lui          a5, 740817
                  andi         t3, t1, 619
                  andi         s5, s4, 1272
                  sltiu        a1, t5, -76
                  slti         gp, s9, 1518
                  sltu         tp, gp, s0
                  lui          s3, 742291
                  sra          s5, a5, zero
                  add          a5, t6, t3
                  sll          sp, a5, a5
                  slt          s11, sp, s6
                  or           a2, a3, s2
                  or           t1, s7, t0
                  srai         s9, gp, 19
                  sub          a7, t5, t5
                  auipc        s8, 344932
                  xori         s0, gp, -1128
                  addi         t0, t3, 1338
                  auipc        a6, 717964
                  srai         ra, tp, 24
                  sltiu        a5, a3, 1693
                  or           zero, s10, gp
                  lui          a5, 639800
                  andi         gp, s10, -285
                  srli         t1, a7, 25
                  or           a5, gp, a6
                  lui          s1, 23280
                  addi         t1, s8, 206
                  and          a7, t5, a1
                  srai         a6, s7, 12
                  slt          s0, a7, zero
                  addi         s0, s7, -1407
                  srl          s11, a5, a6
                  addi         sp, t2, 205
                  auipc        a3, 432842
                  sub          a1, a4, s0
                  ori          t5, s1, -193
                  sltiu        t3, t4, -941
                  xori         a6, a2, 1320
                  sra          s11, ra, s2
                  sltiu        ra, t6, -1585
                  auipc        ra, 907423
                  andi         t3, tp, 1786
                  lui          t5, 412299
                  xori         a7, t6, 515
                  add          a5, tp, tp
                  srli         s5, t4, 5
                  auipc        t5, 44946
                  auipc        s6, 174843
                  xor          s5, a2, s2
                  or           s5, s10, s4
                  sub          s4, t2, t6
                  xori         zero, s5, 1822
                  xor          ra, t3, t2
                  srl          s1, t2, a0
                  addi         tp, a1, 158
                  lui          t5, 226883
                  sub          zero, a5, a7
                  srli         s9, sp, 7
                  slt          sp, gp, t1
                  andi         gp, gp, 1044
                  srl          ra, a4, t5
                  srai         t6, tp, 7
                  sll          s4, s5, s7
                  sub          a2, a5, a5
                  ori          tp, s10, 756
                  nop
                  xori         a6, sp, 1210
                  srli         a6, t4, 14
                  xor          a7, s4, t5
                  andi         s5, t3, 982
                  sltiu        s5, t2, 594
                  sll          a6, a7, t5
                  srl          sp, a7, s6
                  andi         s1, s6, -1249
                  andi         a0, s1, -38
                  slti         a4, a4, 1466
                  xori         t0, t1, -994
                  srl          a5, tp, s5
                  sll          s5, s4, a2
                  sll          s3, s4, gp
                  sll          t6, s9, t2
                  or           a3, t2, t5
                  slli         s7, t1, 15
                  slt          s9, gp, s5
                  sll          s6, tp, s8
                  srai         t0, t6, 21
                  lui          t0, 822759
                  add          a5, ra, t4
                  srli         s0, s4, 21
                  ori          s2, sp, 2045
                  xor          a1, a2, a2
                  sltu         a2, t5, a7
                  or           a3, s10, sp
                  xori         s1, t4, -10
                  xor          s7, a3, s2
                  lui          s1, 613328
                  slli         a7, s5, 8
                  andi         s7, s9, -682
                  xor          s1, sp, s5
                  sub          s1, s5, zero
                  sra          s3, a3, s8
                  slt          a6, s6, s8
                  ori          a6, s11, -1089
                  add          ra, a5, s0
                  sltiu        a5, a3, -77
                  ori          sp, s1, 911
                  ori          s3, t5, 1526
                  or           a3, a6, ra
                  slli         zero, sp, 18
                  sub          gp, a4, a3
                  andi         s0, s7, -1022
                  sltu         s1, tp, s0
                  xor          a4, s5, t2
                  add          s2, s2, s3
                  slli         a0, s8, 29
                  xor          a2, a5, zero
                  slt          a7, s1, t3
                  or           s5, a7, a2
                  lui          t0, 1027405
                  sltiu        s7, s6, 727
                  add          tp, s1, t4
                  xor          s0, s10, a2
                  srl          sp, gp, s3
                  slt          t0, s7, s11
                  sll          s6, t4, t0
                  slt          s1, zero, s4
                  xor          a3, t1, a6
                  and          s5, s1, s8
                  andi         s11, s7, 520
                  andi         s8, s4, 1950
                  auipc        s3, 449497
                  nop
                  sltiu        ra, t0, 1106
                  sra          s5, a5, tp
                  andi         s4, s5, 1353
                  srli         t1, s2, 17
                  or           a7, s7, s9
                  andi         tp, a4, 1754
                  nop
                  xori         t6, s8, -1602
                  sltiu        s7, sp, -328
                  xor          t3, sp, a4
                  xori         s1, t1, 1062
                  slti         s5, s7, -730
                  slt          s8, a2, s1
                  ori          a3, s6, 197
                  nop
                  nop
                  or           s8, a6, tp
                  nop
                  lui          t0, 476140
                  or           s6, s0, s6
                  sltu         s4, a1, s8
                  slt          s5, s4, a5
                  addi         s2, a3, 283
                  srl          a6, a5, t3
                  sltu         s8, a6, s2
                  andi         s6, s6, -1206
                  nop
                  li           s3, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           a1, 0x0
                  li           sp, 0x80000000
                  li           a2, 0x18d1ec15
                  li           s4, 0xd1b22da6
                  li           s7, 0xaa29d846
                  li           tp, 0x80000000
                  li           t5, 0xffffffff
                  li           s0, 0x1883c90f
                  li           a4, 0x80000000
                  lui          s0, 494051
                  add          s4, s0, s3
                  sub          s7, s0, s0
                  lui          s0, 703474
                  sub          a4, s7, s4
                  add          sp, s3, s4
                  lui          tp, 485876
                  auipc        s7, 646555
                  add          t5, t5, s4
                  lui          a1, 932926
                  auipc        a2, 157671
                  sub          s3, s3, s7
                  lui          s3, 644156
                  auipc        a4, 781737
                  lui          t5, 580313
                  sub          a4, tp, s4
                  sub          tp, sp, a1
                  nop
                  auipc        a2, 924384
                  nop
                  lui          sp, 535987
                  auipc        a1, 128761
                  sub          s0, tp, s3
                  addi         s7, s3, -1053
                  nop
                  auipc        a1, 235280
                  sub          s0, s3, a4
                  nop
                  lui          s3, 564250
                  auipc        a2, 188046 #end riscv_int_numeric_corner_stream_19
                  sll          s5, a3, sp
                  srai         s5, t4, 21
                  sltu         a4, s6, a4
                  sltu         a4, a6, zero
                  lui          s9, 1003113
                  ori          a5, gp, -120
                  srli         t0, s7, 26
                  sltu         s3, s10, a2
                  nop
                  and          s1, s9, t6
                  and          t3, s6, t4
                  slti         s3, s1, 1725
                  xor          a5, s1, s6
                  auipc        t0, 928373
                  xor          s7, s6, s8
                  sltiu        t3, t1, 1839
                  srai         a2, a3, 7
                  addi         s6, s0, -132
                  sltiu        a0, a5, -888
                  or           zero, t3, a0
                  srli         t6, t4, 8
                  add          a0, ra, t3
                  srai         s8, s8, 26
                  slli         t5, s6, 6
                  srl          sp, zero, t4
                  sll          sp, gp, tp
                  sll          s5, s4, sp
                  xor          a4, tp, t4
                  sltu         t5, tp, a3
                  srli         a7, s7, 16
                  sra          t1, t0, gp
                  nop
                  sub          s2, t4, ra
                  sub          a4, t3, zero
                  xor          a6, a6, t1
                  xor          gp, a6, sp
                  slli         a7, s7, 21
                  sltiu        t5, s7, 659
                  and          s9, zero, s8
                  ori          a6, t5, -1841
                  add          s5, t1, s2
                  sra          a5, t0, a1
                  nop
                  sll          t6, ra, a6
                  slli         t1, s0, 3
                  slli         a0, a0, 0
                  auipc        t6, 728262
                  slti         a2, s8, 1253
                  sra          s7, s2, s8
                  or           a2, a7, tp
                  addi         a3, zero, -1911
                  xori         a5, s5, 298
                  sll          ra, s9, t0
                  slti         tp, a1, 1699
                  sra          a2, t6, s10
                  slti         s4, a3, 1367
                  sltiu        ra, s8, 253
                  slli         s4, s9, 31
                  slli         ra, t1, 21
                  slti         t5, t1, 1466
                  slti         sp, s6, -22
                  sra          tp, s2, t0
                  sra          t1, ra, t0
                  add          a1, ra, a5
                  sub          t5, s0, tp
                  nop
                  and          tp, s3, a0
                  lui          s7, 686457
                  addi         s6, s5, -1262
                  slt          zero, a0, a0
                  srl          ra, s0, t2
                  ori          a7, a3, 1567
                  srl          a6, a0, s3
                  srli         ra, zero, 28
                  addi         s11, s2, -775
                  and          s8, tp, a1
                  slti         sp, s6, -212
                  and          sp, s8, a3
                  ori          a4, s7, 1871
                  lui          s9, 424458
                  srai         s0, tp, 11
                  slt          t0, t1, s0
                  srai         gp, t2, 29
                  xori         sp, s6, 179
                  andi         a7, s8, 177
                  andi         tp, ra, 885
                  slti         tp, a7, -1168
                  srai         s0, t3, 17
                  auipc        s5, 410973
                  andi         a7, s2, 1417
                  xori         a4, s8, -2033
                  addi         zero, t1, 1825
                  srl          s0, a4, s6
                  srai         s11, t5, 10
                  sltu         s1, s1, a7
                  sll          s1, a3, a5
                  srli         a0, t1, 16
                  slti         a2, a4, 1575
                  slli         s9, s7, 13
                  srai         tp, s2, 11
                  add          a4, zero, s4
                  srli         s8, a1, 15
                  sltu         a0, a5, gp
                  nop
                  lui          a0, 16460
                  lui          s3, 290036
                  nop
                  and          a7, s7, t3
                  slt          a7, s2, a3
                  sll          tp, ra, s0
                  srl          a6, s6, s6
                  srai         t3, s7, 18
                  sltiu        s8, s5, -106
                  nop
                  add          s1, a6, s11
                  sub          t6, t2, s11
                  xori         s5, t1, 388
                  srl          tp, ra, s10
                  sub          t6, t4, a7
                  andi         a7, a6, 1277
                  srli         s5, gp, 14
                  srl          s6, a3, a6
                  srai         a7, t6, 23
                  ori          s3, s2, 906
                  slt          t5, s4, gp
                  nop
                  slt          s3, t3, s8
                  sltiu        t6, a6, -894
                  slli         s4, a2, 6
                  sub          a0, tp, s7
                  xor          sp, a2, t2
                  and          s9, a4, t4
                  auipc        s4, 241454
                  slt          s5, tp, s2
                  srai         s6, zero, 26
                  xori         a6, zero, 1891
                  srl          s4, sp, t1
                  srai         a2, t5, 5
                  slt          a7, t4, s4
                  sltiu        s4, s8, 1508
                  xori         s8, a7, 1057
                  sub          a3, s0, s6
                  srl          a7, a4, t1
                  slli         s5, a1, 21
                  add          ra, gp, t4
                  xor          a3, a6, s11
                  sub          a4, s10, a1
                  sra          ra, s11, s7
                  lui          s9, 949163
                  addi         s1, s4, -1529
                  srai         a4, s2, 5
                  slti         t1, a6, 231
                  sltiu        a0, s0, 1831
                  auipc        s3, 527530
                  addi         t3, s6, 1960
                  add          ra, zero, zero
                  auipc        s2, 652021
                  auipc        s6, 272438
                  srli         t6, s5, 21
                  srai         a5, a7, 10
                  sltiu        s8, sp, -1185
                  xor          s3, t2, s4
                  sra          s7, s6, s11
                  slti         a4, t5, 1266
                  slli         tp, s2, 7
                  sll          zero, s2, s6
                  srli         s9, a2, 21
                  sra          gp, t2, t3
                  ori          a3, t3, -1255
                  or           s0, t1, a6
                  srai         zero, a1, 11
                  or           s8, s2, t1
                  add          a5, t3, s10
                  or           ra, ra, tp
                  slti         s4, s9, -1886
                  sltu         s4, t0, s10
                  srai         t6, a5, 14
                  or           s6, t1, a5
                  sll          s4, s5, s4
                  slti         s7, s4, 1682
                  slti         t1, a1, -558
                  nop
                  auipc        s2, 273276
                  add          s8, s9, s9
                  ori          s9, t1, -202
                  sra          s4, t5, a0
                  slt          s4, a7, zero
                  sll          zero, s10, a5
                  xor          s5, s1, a5
                  add          tp, t3, tp
                  lui          s11, 372372
                  srl          s2, a2, a4
                  lui          s0, 432558
                  xori         tp, t3, 1645
                  and          a5, t4, t3
                  sub          s8, s11, t0
                  slti         t5, a2, -843
                  sub          s9, t2, s2
                  slti         a5, t6, -712
                  sra          t5, a2, zero
                  auipc        t1, 852984
                  srai         s6, t0, 3
                  sra          a7, s0, s10
                  sltu         a3, s8, s11
                  slti         s9, s10, -1112
                  sltiu        s9, s4, 1447
                  sltiu        t0, ra, -120
                  add          s2, s5, t0
                  srai         s4, a5, 14
                  auipc        sp, 348827
                  ori          s1, s9, 2012
                  and          s2, ra, t0
                  ori          a5, t2, -177
                  srli         zero, gp, 6
                  auipc        s0, 184959
                  sltiu        s11, s1, -841
                  slli         t3, a0, 15
                  slli         a7, s0, 31
                  xori         t0, a3, -414
                  add          a3, t6, t6
                  sub          t1, s8, a4
                  andi         s7, t4, 943
                  add          s4, s5, s6
                  slti         s1, t3, 436
                  and          a2, a1, s9
                  srl          a1, s9, tp
                  sra          a1, s8, a5
                  andi         zero, zero, -2024
                  and          s6, s0, sp
                  slt          a6, t0, a6
                  sll          a2, a1, s6
                  add          ra, a4, a2
                  ori          t0, gp, -1708
                  add          s11, s5, zero
                  sltiu        s8, a3, -1451
                  nop
                  ori          gp, tp, -610
                  sra          s7, sp, s8
                  and          s0, a5, s0
                  sll          tp, ra, t1
                  xor          s7, t1, a3
                  nop
                  sltiu        s6, s9, 1902
                  sll          a0, zero, a4
                  andi         s2, s11, 2012
                  sll          a4, s11, t2
                  sra          t0, t3, s6
                  and          s9, s2, s7
                  sll          a2, t1, t4
                  sll          s3, s9, s2
                  andi         s3, s3, 621
                  slti         s8, sp, -670
                  sltiu        a5, a1, -1714
                  sub          a7, t6, s10
                  ori          t3, s11, 1497
                  nop
                  xori         t3, a6, 539
                  auipc        a7, 117261
                  sll          s0, s6, s2
                  xor          a7, a0, s6
                  or           a5, s4, a5
                  ori          a1, gp, 221
                  sltu         a2, s7, t2
                  nop
                  sll          t5, s4, ra
                  sll          a2, ra, t5
                  ori          t6, s0, -561
                  lui          t0, 568225
                  sll          t6, zero, a7
                  and          s1, a1, s3
                  srli         t0, a7, 2
                  slt          s9, t5, s9
                  and          a3, a1, t2
                  and          t1, t0, s9
                  slli         t1, t1, 12
                  ori          s11, s9, 1602
                  addi         s7, a5, 540
                  slti         t6, s10, -1203
                  sub          s11, s7, t6
                  slli         a0, s9, 4
                  slt          s7, t5, a5
                  and          s8, a3, t0
                  and          a0, t1, t3
                  and          s7, s6, tp
                  xor          s2, t1, t0
                  add          a6, a5, a0
                  auipc        a1, 844521
                  slti         sp, a1, 505
                  and          t0, a0, s6
                  srli         s4, a2, 0
                  slli         a7, a0, 14
                  or           t1, t4, a3
                  add          t3, t2, a6
                  srl          t5, t1, tp
                  srl          zero, a3, t1
                  and          tp, s1, t1
                  or           ra, t6, a1
                  xor          a7, t1, a0
                  auipc        ra, 741444
                  or           a6, t0, t0
                  or           a3, s5, a5
                  xori         t3, t5, -1616
                  sltiu        s1, zero, -1673
                  sltiu        zero, s5, 57
                  and          t5, t2, t4
                  sll          s8, s2, a4
                  sll          s2, t5, t6
                  sll          a5, gp, s11
                  lui          a7, 564673
                  add          sp, a1, s8
                  xor          s0, a0, s0
                  srl          t5, t3, s3
                  and          a4, a1, s11
                  addi         a5, t6, -1933
                  sltiu        a2, t5, 621
                  xor          s7, t0, tp
                  xor          a3, t3, t3
                  srai         s5, gp, 14
                  srl          s0, a1, s11
                  slli         t3, t0, 12
                  andi         a2, t4, -649
                  lui          a6, 121741
                  auipc        a7, 739350
                  sll          a0, s4, s10
                  xor          a5, s11, a5
                  sltu         a2, ra, s3
                  sub          t0, a4, a2
                  lui          s3, 852018
                  slt          t1, t4, s10
                  sltiu        t1, t4, -362
                  and          s7, t5, a3
                  slt          a1, a6, s0
                  nop
                  sltu         gp, a0, zero
                  srli         a4, gp, 16
                  or           a5, s0, sp
                  srl          s4, s1, s10
                  sltu         t3, ra, s4
                  xor          t5, sp, ra
                  ori          s9, a6, 1278
                  ori          zero, a7, -290
                  add          s3, t4, s10
                  slt          a7, a3, a1
                  xor          ra, s5, s1
                  and          s4, sp, a7
                  xor          s6, sp, t6
                  ori          a7, s1, -1295
                  add          s0, s7, s1
                  nop
                  srl          a7, sp, t5
                  auipc        s6, 395158
                  slti         s7, t6, -1070
                  xor          t1, a3, t6
                  xori         s6, t6, 416
                  srai         t0, a6, 3
                  sltu         t1, t3, t4
                  nop
                  add          s4, a3, a5
                  andi         s7, s1, 381
                  sltu         s8, t2, s0
                  sll          gp, gp, a6
                  sltiu        a6, a6, -2036
                  nop
                  lui          s4, 865921
                  or           s7, a2, a2
                  or           a6, a3, s10
                  sltu         ra, t1, s4
                  nop
                  srl          s0, a4, s5
                  and          t0, s10, s5
                  sll          a3, s3, gp
                  sltiu        a5, a4, -1268
                  addi         t1, gp, 1993
                  sll          a7, t5, a6
                  ori          a3, t4, -2031
                  lui          a7, 564563
                  xor          a6, a4, t1
                  slti         s4, t0, 887
                  slt          s8, s9, s0
                  nop
                  add          s9, t6, s6
                  sub          s4, s2, t2
                  xor          s5, gp, s2
                  and          a0, a6, t6
                  sltiu        ra, s8, -1037
                  srai         a0, t1, 8
                  sll          a4, gp, t1
                  srli         gp, s10, 28
                  addi         s6, s11, 1308
                  lui          s11, 57949
                  srai         a5, s3, 6
                  addi         s3, a7, 971
                  srli         a6, s11, 31
                  srl          a6, s1, a6
                  slti         a5, a3, -728
                  xor          a7, t4, s11
                  slt          t5, a4, s6
                  sra          sp, t5, sp
                  lui          a3, 98012
                  xor          t3, gp, ra
                  and          a0, ra, a4
                  and          s1, a0, a3
                  srai         s0, a3, 10
                  sltiu        a1, t2, -914
                  addi         a6, s6, 142
                  sltu         t0, a1, s3
                  add          a2, s0, a3
                  xor          t6, t3, sp
                  slt          s5, s2, t1
                  sltiu        sp, ra, 325
                  slti         a3, a1, -861
                  srli         s1, ra, 7
                  nop
                  srl          t0, s3, s2
                  add          ra, t6, a4
                  nop
                  slli         s9, t4, 9
                  sltu         t1, s10, a1
                  sra          s11, s0, a6
                  xori         s2, a6, 1689
                  sll          t3, sp, a7
                  slti         a3, t6, 1253
                  sub          s5, a4, s5
                  ori          a2, gp, 1861
                  andi         a0, t2, 673
                  nop
                  ori          a0, s10, 1843
                  sll          sp, a0, s7
                  auipc        zero, 637459
                  slt          tp, a1, t2
                  sltiu        a4, s4, 1525
                  slli         t3, a6, 22
                  ori          a3, s11, 460
                  sll          ra, tp, s9
                  srli         tp, s10, 21
                  lui          zero, 939317
                  or           s8, s0, t1
                  xori         t3, a4, 385
                  addi         s11, s11, -1875
                  or           zero, tp, gp
                  xori         s9, t4, -1143
                  slli         t1, s7, 1
                  sll          a3, t3, zero
                  sra          a3, ra, s4
                  slti         t0, ra, -768
                  sltu         s0, s6, zero
                  srli         s8, a5, 3
                  sltiu        s9, a7, -304
                  ori          t0, t0, -216
                  sll          t1, t2, a6
                  srl          s5, s3, t0
                  slt          s1, s3, s8
                  auipc        a2, 727026
                  auipc        t6, 926150
                  andi         a2, t5, -837
                  xor          a1, s7, s2
                  andi         tp, tp, -1487
                  srli         s3, a1, 28
                  srl          s6, sp, s5
                  sra          s11, s6, t3
                  and          s5, t4, s5
                  sub          s3, t0, gp
                  li           s11, 0x4e667dba #start riscv_int_numeric_corner_stream_0
                  li           s6, 0x80000000
                  li           ra, 0x0
                  li           t0, 0xffffffff
                  li           s8, 0xffffffff
                  li           s4, 0x80000000
                  li           s2, 0x0
                  li           gp, 0xffffffff
                  li           a3, 0x0
                  li           a7, 0x27a5c24e
                  add          a7, s4, a3
                  lui          gp, 1016802
                  lui          s6, 641185
                  addi         t0, a3, -385
                  sub          t0, gp, s2
                  lui          s11, 440014
                  auipc        s2, 831582
                  nop
                  sub          s4, ra, s6
                  add          s2, s4, s11
                  lui          s6, 281644
                  auipc        s6, 587044
                  addi         t0, ra, -808
                  add          s6, gp, s8
                  add          a3, a7, gp
                  addi         s2, t0, -1355
                  sub          ra, s4, a3
                  add          s6, s6, s11
                  sub          t0, a3, gp #end riscv_int_numeric_corner_stream_0
                  sltiu        s1, a2, 1215
                  andi         s0, s5, -1744
                  or           a6, s1, s2
                  xor          ra, s6, t2
                  srl          ra, a2, s3
                  ori          a6, a7, -447
                  xor          s1, a6, t0
                  and          a0, s2, t1
                  nop
                  auipc        s6, 359210
                  or           s9, s4, s0
                  sra          t3, s1, a5
                  sra          s11, gp, s5
                  sltiu        t3, a7, -728
                  add          s11, s10, t5
                  andi         tp, gp, -1770
                  xor          s1, s5, ra
                  srai         s3, t0, 8
                  nop
                  andi         a6, a4, 1261
                  add          gp, t0, a0
                  lui          s8, 812362
                  or           a4, t4, ra
                  sra          s2, s4, a3
                  add          gp, s0, a5
                  slti         s11, s3, -1585
                  sub          a7, t2, t2
                  xori         t3, s9, 261
                  xor          a0, zero, s5
                  sll          s7, s0, tp
                  srli         t5, a7, 15
                  andi         zero, s2, -546
                  or           s0, s9, a7
                  ori          a1, a5, -1388
                  addi         zero, t6, -1883
                  xor          a2, s11, a4
                  add          s2, a7, a1
                  sra          s5, a6, s10
                  lui          a7, 307409
                  srli         s2, s0, 17
                  slt          s4, ra, tp
                  xori         s2, t4, 165
                  andi         gp, t3, -664
                  sltiu        s6, s8, -2016
                  or           t3, s4, t1
                  add          s9, a2, a3
                  slli         a1, t5, 9
                  xor          t1, s3, s11
                  addi         s5, s6, 1658
                  andi         s1, s7, 324
                  srli         a0, tp, 30
                  sra          a4, s6, t1
                  ori          t6, s8, 1548
                  xori         a7, s6, -1888
                  sltu         t1, s1, s7
                  slli         a5, zero, 16
                  srl          s1, s5, a6
                  sra          a6, s11, t0
                  xori         t3, s6, -1478
                  auipc        s11, 609924
                  sltiu        t3, s2, -574
                  add          s0, a7, s2
                  sra          s1, a7, s6
                  slt          gp, a6, a5
                  andi         t0, a3, 130
                  srai         t5, s11, 25
                  slt          s1, ra, a6
                  addi         gp, a2, -1739
                  sra          t3, a7, a2
                  lui          s7, 817705
                  srl          t5, zero, a3
                  sltiu        a6, a3, 1781
                  sub          s9, tp, sp
                  sltiu        t3, a2, 251
                  or           a6, s2, t6
                  or           tp, t0, t4
                  ori          tp, a7, 201
                  add          s11, tp, gp
                  xor          s6, a4, a3
                  srai         a5, ra, 24
                  sll          s0, t0, s3
                  ori          a5, s2, -1041
                  sub          ra, tp, t5
                  xori         a5, a1, 1441
                  ori          s4, t1, 1021
                  srl          ra, s8, s10
                  nop
                  addi         tp, s8, -368
                  sra          s11, zero, s9
                  slli         s8, a3, 24
                  addi         a5, a3, 184
                  addi         zero, s7, -128
                  ori          s4, t6, -227
                  and          a0, sp, a1
                  sra          gp, s1, s3
                  andi         s6, s2, -682
                  auipc        a4, 395012
                  xori         s9, a0, 1515
                  add          s9, t5, t0
                  sll          t1, s7, ra
                  lui          ra, 785754
                  slli         s8, t6, 1
                  andi         a4, s11, -1940
                  sltu         a1, a2, s2
                  sra          s4, s3, s5
                  slt          t5, t5, a7
                  lui          s6, 421690
                  ori          s11, s4, 663
                  xor          s6, s8, s10
                  srli         s7, a0, 1
                  sra          a0, t6, s0
                  sltu         a3, tp, a4
                  sub          s4, zero, t5
                  srli         s7, a3, 11
                  ori          s8, s8, -1805
                  lui          zero, 92558
                  lui          a3, 298248
                  sub          a0, tp, s5
                  xori         a3, a5, 1045
                  nop
                  sltu         sp, a1, t3
                  ori          s2, a1, 1432
                  lui          s5, 29295
                  srai         a4, t6, 23
                  slt          s0, a7, s2
                  addi         s9, t3, -687
                  xor          t0, t0, a0
                  sltiu        a5, s0, -231
                  slti         s6, zero, 944
                  sll          tp, a4, s7
                  andi         s4, s3, 298
                  xor          s11, t3, s4
                  xori         s8, s3, 418
                  addi         s2, a1, 539
                  sra          t5, s6, zero
                  srl          s5, s4, a6
                  lui          s5, 658530
                  nop
                  slt          s9, s0, a4
                  xori         a6, s7, -1207
                  sltiu        t5, sp, 1028
                  sltiu        ra, s7, -1288
                  auipc        s8, 620975
                  auipc        a0, 351613
                  or           s3, s6, a3
                  sub          s3, t5, s10
                  addi         s5, sp, 1350
                  srl          s7, s3, s4
                  addi         a3, s1, 1339
                  and          s2, t5, s10
                  sltu         s7, s2, s9
                  xori         a1, zero, -1437
                  sltiu        zero, s4, 606
                  srl          a5, s0, s11
                  auipc        a3, 638734
                  srli         a2, s3, 28
                  sltiu        zero, zero, 1813
                  sll          s8, ra, s6
                  and          zero, sp, a6
                  sra          t0, s0, a3
                  slti         s7, a4, -1701
                  slt          a3, t4, s6
                  srl          zero, a0, t4
                  addi         ra, sp, 1326
                  srl          s11, s5, s10
                  or           s2, t1, a5
                  srli         a3, tp, 3
                  sra          a1, t2, s7
                  and          s7, tp, s1
                  sra          ra, a5, t5
                  slli         s7, s10, 26
                  sra          a5, s10, ra
                  slt          s7, ra, s5
                  srl          s3, s3, zero
                  andi         s6, s2, 1818
                  slli         s7, sp, 14
                  auipc        a6, 224529
                  or           s3, t0, gp
                  and          a4, s5, s3
                  xor          a0, t4, s3
                  and          a3, s9, t0
                  add          a7, ra, s8
                  and          a1, s10, t0
                  xor          t3, t4, t6
                  sltu         t6, s11, s6
                  lui          s11, 822484
                  auipc        a3, 827763
                  sltu         s5, s2, s3
                  srai         a2, ra, 12
                  sra          t1, tp, s3
                  addi         gp, s0, -871
                  xor          a1, t6, s9
                  or           s9, s4, t0
                  srli         s8, t4, 9
                  sltiu        a3, a0, 1549
                  srl          s1, t0, s5
                  auipc        t6, 324553
                  sra          tp, ra, a5
                  andi         t1, s7, -588
                  sra          s4, s3, a2
                  add          a1, t6, s10
                  srli         s5, s4, 11
                  li           s0, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           s6, 0x80000000
                  li           s5, 0x80000000
                  li           ra, 0x0
                  li           a7, 0x5edf03d5
                  li           a5, 0xffffffff
                  li           tp, 0x0
                  li           t0, 0x7b56afb7
                  li           s8, 0x2eece110
                  li           gp, 0xd40fdb12
                  nop
                  auipc        a7, 1042040
                  addi         s0, s8, -841
                  addi         gp, a5, 991
                  add          tp, a7, ra
                  sub          a5, gp, a7
                  nop
                  nop
                  lui          t0, 326916
                  lui          s0, 807081
                  nop
                  sub          a7, gp, ra
                  sub          gp, a7, s5
                  add          s0, tp, tp
                  addi         ra, s8, 1783
                  addi         gp, gp, 1408
                  addi         t0, s6, -1197
                  addi         s0, s5, -8
                  lui          s5, 565915
                  add          a7, s5, gp
                  addi         ra, t0, 397
                  nop
                  nop
                  add          s6, a5, gp
                  sub          tp, s6, s5
                  addi         s0, ra, 19
                  lui          s6, 272458
                  lui          ra, 565368 #end riscv_int_numeric_corner_stream_17
                  sub          t0, a2, t4
                  slti         a3, ra, -727
                  sltiu        a4, tp, 1676
                  lui          s1, 360934
                  srli         ra, t2, 15
                  srli         t3, ra, 11
                  slti         ra, sp, -413
                  sra          s4, s5, a3
                  sra          s6, t6, s5
                  sra          s0, s3, s10
                  add          s11, a2, zero
                  srli         ra, t5, 13
                  and          tp, t4, s0
                  sub          s0, t6, s8
                  add          s2, a2, a1
                  srl          s7, ra, a6
                  or           a2, s6, sp
                  srli         a7, a3, 2
                  sra          s3, t3, s11
                  lui          a7, 791717
                  xori         a6, s7, -1908
                  ori          s8, gp, -761
                  lui          s11, 264044
                  slli         a3, a1, 8
                  slti         a6, gp, 28
                  sra          a4, a3, t2
                  xori         s4, s11, 776
                  addi         s6, t3, -1705
                  sll          s8, t0, t1
                  xori         s8, t5, 715
                  andi         a4, s9, -905
                  nop
                  slt          ra, t1, s5
                  slli         a2, s6, 14
                  sltu         s8, ra, a5
                  xor          s11, s4, s7
                  nop
                  nop
                  lui          a6, 977706
                  or           s1, ra, a3
                  add          a3, ra, a5
                  sltiu        tp, s2, -3
                  and          s11, s6, t0
                  sltu         t5, t1, t4
                  sll          tp, s0, s9
                  srai         a1, s2, 12
                  srl          s4, t3, ra
                  slli         s2, a4, 30
                  auipc        a5, 618009
                  sra          s11, a6, s3
                  sra          s3, t2, sp
                  sll          zero, s11, sp
                  slti         a4, t2, -1590
                  slt          t5, gp, gp
                  and          t1, a3, s3
                  slt          s1, s1, t0
                  sltu         a2, s3, a7
                  sub          a2, a2, sp
                  nop
                  andi         ra, t2, 360
                  nop
                  srl          t3, tp, s11
                  sltu         a0, a0, s6
                  xor          s11, s2, sp
                  andi         s0, t0, -407
                  lui          a4, 414961
                  or           a1, a2, a0
                  slti         sp, s4, -970
                  and          a0, a6, s8
                  ori          a4, tp, -475
                  sltu         s5, s11, a7
                  and          zero, a4, s2
                  srli         tp, t4, 11
                  and          s11, s5, s0
                  slt          t0, a2, s0
                  sll          s3, a1, tp
                  xor          a6, a1, a3
                  lui          sp, 870377
                  slli         a5, a2, 31
                  srl          s11, t4, a6
                  andi         t6, t0, -55
                  sra          t6, a0, s4
                  xori         zero, gp, 1416
                  srli         s2, s10, 9
                  add          s2, s11, t1
                  lui          t5, 354457
                  auipc        a2, 647971
                  sra          s1, a0, tp
                  sltu         s4, s2, s2
                  lui          t1, 469339
                  or           s9, a0, a2
                  sra          a2, s7, s5
                  sra          t3, s1, ra
                  srl          sp, t2, t3
                  and          t5, gp, s6
                  ori          a7, s0, -912
                  lui          s4, 166300
                  srl          t5, t5, sp
                  addi         t6, s3, -807
                  nop
                  nop
                  srli         a7, tp, 16
                  xori         s0, s8, 272
                  and          s9, tp, a4
                  srli         a7, ra, 10
                  srai         a2, s11, 19
                  addi         s7, s6, -1350
                  sltiu        s9, t4, 866
                  nop
                  sltiu        s1, a4, -1917
                  and          s3, s8, s9
                  sltiu        t0, a1, -2009
                  xori         sp, a4, -1797
                  xori         s1, s1, -1313
                  add          s5, t1, t5
                  slti         a0, a4, -1750
                  slti         tp, gp, -599
                  sll          sp, ra, a5
                  ori          t0, s5, -1468
                  sltu         s6, t0, t0
                  slt          a5, a6, s4
                  srli         s3, zero, 25
                  xori         gp, s4, -680
                  slti         s3, zero, -644
                  addi         s1, a0, 388
                  srai         t5, s1, 21
                  addi         s7, a0, 442
                  and          a4, a0, sp
                  xor          sp, s2, t3
                  add          t3, t4, a6
                  srl          a1, s2, s0
                  sra          s7, t5, s3
                  xor          a1, a2, t1
                  sltiu        zero, t6, -792
                  srl          a1, a4, t6
                  and          s6, a1, s7
                  sltu         s0, t6, t2
                  ori          t3, s1, 117
                  lui          a6, 925041
                  ori          s8, a0, 1501
                  nop
                  sra          t5, tp, ra
                  sltiu        s8, a7, -609
                  sll          t6, a0, zero
                  add          s6, s8, a0
                  sltu         s2, a4, t0
                  slti         s1, s10, -1043
                  sll          ra, s4, s8
                  xori         a3, s5, 989
                  srl          t0, s0, a1
                  lui          t0, 29489
                  ori          a3, gp, -1052
                  auipc        t3, 409831
                  xori         s1, a3, -1278
                  lui          a5, 257175
                  srl          t3, s5, a5
                  nop
                  slti         s11, s8, -1162
                  andi         s5, s1, -476
                  addi         t5, t1, 375
                  sra          t5, s3, s6
                  lui          t5, 37141
                  and          a0, t2, s5
                  slt          s0, a7, a0
                  sll          t5, s8, s3
                  sltu         t5, t0, zero
                  sll          ra, a0, t5
                  srl          a5, s1, s2
                  xori         s8, tp, -1870
                  sltu         a0, s3, s7
                  slti         a7, gp, -687
                  sub          zero, s11, zero
                  and          s6, s2, a0
                  sltu         t6, s7, s10
                  auipc        zero, 783705
                  srai         s3, a6, 10
                  sltu         s9, a3, t2
                  sll          s9, t4, t5
                  xori         a0, t1, -479
                  srai         a7, s5, 0
                  andi         s2, a0, -400
                  sltiu        zero, a0, -149
                  and          zero, t6, a1
                  xor          s0, a2, s6
                  sub          s2, t0, tp
                  add          s11, a1, a3
                  slti         t6, a1, -372
                  slli         s5, s7, 3
                  lui          a5, 237473
                  and          s2, s0, a2
                  xori         ra, gp, -1822
                  slti         a4, t2, -36
                  slli         a2, s6, 9
                  srli         zero, t1, 14
                  nop
                  nop
                  srai         a0, t5, 1
                  xor          a7, gp, t0
                  or           a5, a4, t2
                  srai         s0, a4, 16
                  sll          s3, a6, ra
                  add          a6, s1, t3
                  xor          s3, tp, a5
                  lui          s6, 1028180
                  xor          s6, t3, s5
                  xori         s11, s11, 296
                  srli         a1, ra, 17
                  or           t1, a7, t3
                  andi         s2, a2, 375
                  slti         s8, a0, 991
                  lui          a3, 820388
                  auipc        ra, 872902
                  sltiu        t5, s0, 1329
                  lui          ra, 1037029
                  sltiu        s6, ra, -198
                  sll          a2, gp, t4
                  slli         tp, s11, 7
                  sltiu        s9, t5, 669
                  sra          a6, tp, t4
                  and          t5, t5, s4
                  slti         t6, a2, 140
                  and          ra, s11, s2
                  sltiu        t5, s3, -1104
                  ori          a1, a7, -1322
                  srli         s1, t5, 25
                  slt          s9, zero, sp
                  addi         t6, s5, 68
                  xori         s9, a0, -981
                  srai         s7, a5, 31
                  auipc        s7, 888666
                  sra          t5, a1, a1
                  andi         a3, a0, -1008
                  auipc        t5, 872932
                  srli         s0, s8, 1
                  srl          t1, s3, s6
                  lui          a3, 941772
                  slt          s11, s5, s6
                  andi         sp, zero, -1804
                  and          s9, s2, t4
                  xor          s5, t6, s1
                  addi         t1, s10, -1805
                  and          s7, ra, a0
                  slti         s5, s0, -1810
                  ori          s11, s1, -1840
                  xori         s2, t1, 1558
                  add          t1, a2, t3
                  addi         a1, a0, 679
                  ori          s3, t6, -825
                  auipc        s1, 620254
                  sltiu        a3, s4, -1460
                  sltu         s6, s1, t6
                  srl          s6, a1, s10
                  sra          a4, zero, t2
                  sra          tp, t1, t4
                  slli         t6, t6, 19
                  or           s8, s3, sp
                  srli         s6, t5, 29
                  lui          a3, 491969
                  ori          s6, t5, -1195
                  slti         s0, t5, 1183
                  xor          a2, s2, s6
                  slt          a3, t1, ra
                  srli         a1, a0, 24
                  slti         tp, a7, 1978
                  lui          s11, 670500
                  andi         sp, a1, -584
                  or           s9, s6, a2
                  ori          s2, s8, -1904
                  nop
                  sltiu        s6, s11, 1304
                  sra          s3, s3, s8
                  nop
                  ori          t3, s10, -919
                  srli         a7, t5, 2
                  nop
                  xori         t5, s11, 649
                  xor          gp, s11, t1
                  slli         s1, t3, 6
                  or           s9, s2, s0
                  add          s8, tp, a1
                  slt          a4, s10, s5
                  sll          s0, s8, a3
                  srai         tp, s5, 27
                  srl          t5, s9, t3
                  nop
                  sra          a6, t1, ra
                  slt          s2, s8, gp
                  or           a2, s7, a4
                  sll          s9, a0, sp
                  slti         t1, t6, 222
                  srl          a5, s8, t4
                  slt          a7, s0, s8
                  add          zero, s8, t0
                  sltu         a2, gp, t1
                  auipc        s6, 101872
                  ori          t1, t5, 584
                  or           t0, t4, sp
                  add          zero, s10, a3
                  add          t5, s3, s1
                  lui          s5, 681115
                  srli         t5, a2, 24
                  nop
                  slti         a5, s7, -1236
                  sub          gp, t6, a7
                  sltiu        ra, gp, 1235
                  add          a6, s9, s4
                  andi         a4, s11, -726
                  or           a6, s2, s8
                  andi         a6, gp, -474
                  sltu         s3, ra, s2
                  xori         s2, t0, 2019
                  slt          a5, ra, s4
                  sltiu        ra, s8, -446
                  add          t3, a5, s4
                  srli         s4, gp, 27
                  sll          tp, t6, tp
                  lui          s1, 668526
                  xori         a3, ra, -1558
                  or           t3, s2, s4
                  xori         a2, t0, -245
                  sra          s5, a6, t6
                  ori          s6, s9, -923
                  xor          s8, gp, t1
                  srli         zero, gp, 7
                  add          sp, t2, a5
                  sll          s1, t4, t6
                  sltiu        s4, gp, -270
                  sub          t0, a0, s2
                  slti         t6, tp, -1023
                  sll          zero, a2, t1
                  ori          t6, tp, -1068
                  slti         s8, t2, -1053
                  sltu         a0, t3, s11
                  slti         a7, s10, -325
                  slti         s8, s6, 183
                  sub          s11, s11, t1
                  ori          s3, s1, -792
                  nop
                  sra          t0, s1, t4
                  srli         s8, s11, 0
                  xori         s6, sp, -1177
                  or           s2, a6, gp
                  srli         ra, s1, 13
                  xori         a5, t4, -722
                  or           a5, s3, s11
                  sltiu        s4, a5, -467
                  andi         a4, ra, -1148
                  srl          s11, a2, s10
                  slti         s6, s2, 725
                  xori         a2, s1, 1859
                  srl          sp, t1, s7
                  andi         a0, s7, -1268
                  sub          s4, s0, s10
                  sltu         s2, t3, t2
                  slli         s0, t2, 10
                  or           t6, t3, s5
                  sltu         s3, a1, s9
                  xori         a0, t4, 260
                  xor          t1, s1, s0
                  auipc        a0, 76870
                  slti         a3, s10, -1563
                  srl          s3, s9, s10
                  srl          s0, t0, zero
                  slli         gp, a4, 28
                  addi         a4, s2, -72
                  lui          s3, 146942
                  add          t3, t0, t6
                  sltiu        t3, a1, 147
                  lui          s7, 228136
                  addi         s1, s9, -219
                  addi         s7, s6, 97
                  or           s9, a1, s5
                  sltu         s4, t1, a1
                  addi         a2, s7, 939
                  or           t5, t3, a4
                  lui          zero, 136034
                  or           s3, s5, zero
                  auipc        sp, 325627
                  and          s7, s4, a3
                  srli         a2, a6, 12
                  sltu         a6, t0, ra
                  or           zero, t2, a7
                  ori          s8, s5, 379
                  srli         s3, s1, 26
                  xor          s11, a4, a2
                  xor          ra, t5, a5
                  sra          t5, s8, t3
                  srai         sp, s10, 13
                  xori         s11, a4, 1167
                  auipc        t1, 688144
                  srli         s4, s6, 9
                  xori         s2, tp, -1476
                  srai         t6, t4, 5
                  nop
                  sub          a6, t1, s8
                  addi         a6, s5, -1805
                  addi         t1, a1, -1312
                  sub          a4, a6, t1
                  xori         t1, t4, -887
                  sll          zero, tp, ra
                  add          tp, s10, s6
                  sll          a6, a1, ra
                  xori         s9, t5, 959
                  nop
                  slti         a7, ra, -1345
                  addi         s9, a1, -1904
                  srai         a3, t3, 29
                  add          s2, s4, s5
                  ori          a2, a4, 2037
                  sub          a4, a2, a5
                  slt          ra, gp, a6
                  srli         t0, a7, 24
                  slli         s8, s1, 21
                  srl          zero, a0, a4
                  sra          s11, a6, a0
                  xori         s1, s6, 1995
                  nop
                  nop
                  srl          s2, t0, s4
                  auipc        s4, 642456
                  andi         ra, s10, -1516
                  addi         s8, s7, 1730
                  srl          s6, s3, t1
                  lui          a6, 644298
                  srli         zero, t2, 3
                  or           a6, s2, t3
                  sub          s2, a1, s9
                  xor          gp, s3, a6
                  nop
                  slli         a3, s1, 13
                  addi         s6, a3, 1995
                  nop
                  ori          s8, ra, 1485
                  srl          a7, t3, a1
                  or           a4, s6, tp
                  srli         s1, s7, 21
                  andi         zero, s2, 572
                  sltiu        a5, s3, 1598
                  andi         s9, a1, 1833
                  slti         s11, s4, -1784
                  xori         a6, s7, -1765
                  lui          ra, 550501
                  xori         s9, a1, 77
                  andi         s11, s11, -1098
                  slt          s7, s4, s1
                  srli         a2, s6, 2
                  xor          s11, s8, t0
                  xori         s3, s8, 883
                  srli         s4, gp, 27
                  sra          a7, s2, t4
                  srl          gp, t5, a4
                  and          s9, t4, t2
                  xori         s9, s3, 1651
                  srl          a7, t2, t0
                  sub          s8, a3, t4
                  slli         s8, a0, 15
                  sltiu        tp, tp, -248
                  sltu         t1, s9, t5
                  ori          t3, t5, 564
                  auipc        a0, 807507
                  xori         sp, ra, -600
                  add          s8, a0, t2
                  lui          a4, 536022
                  auipc        tp, 311649
                  slti         a7, s8, 252
                  sll          t0, s2, a0
                  srli         s7, a4, 1
                  slli         a6, a7, 31
                  add          s8, a2, s10
                  nop
                  slli         t0, sp, 22
                  sra          s3, a6, a3
                  slti         s2, s9, 1284
                  slli         s1, s11, 20
                  sltiu        s6, a0, 1591
                  slti         a6, t1, -1172
                  or           t0, s11, s11
                  andi         a4, t0, -48
                  xori         a3, t6, -1331
                  slli         t6, tp, 18
                  srli         t3, s11, 17
                  andi         s6, s10, -517
                  sll          s1, s9, a4
                  srli         sp, t5, 17
                  andi         a4, s11, -542
                  lui          t6, 822076
                  sll          s1, tp, a0
                  and          a6, t4, tp
                  sll          t5, t2, t6
                  sltu         s6, s2, a4
                  slti         a1, t0, -12
                  slli         ra, gp, 11
                  xor          s5, a0, s2
                  sll          t1, t6, a4
                  slti         t6, s2, -2041
                  srl          t3, s4, t0
                  sltiu        gp, s11, -514
                  sltiu        s3, s1, -1041
                  slti         t3, a2, -1241
                  auipc        s4, 948493
                  slt          s4, s11, zero
                  and          s1, s2, t6
                  sra          a0, t3, s10
                  xori         tp, a7, -1176
                  sra          a6, s6, s4
                  slti         t3, a1, 1605
                  auipc        s5, 111886
                  andi         s5, a7, -1371
                  srli         a5, t1, 16
                  srli         t1, s5, 23
                  lui          ra, 832480
                  lui          t5, 81048
                  sltu         s6, zero, s9
                  and          s4, a7, s7
                  sub          a2, a5, t5
                  ori          t0, s11, -508
                  slti         a4, s8, -1892
                  slt          a4, s3, a2
                  sll          s5, s3, s0
                  or           ra, t6, s10
                  slli         s0, t3, 3
                  srai         a6, zero, 19
                  and          a7, a2, s8
                  xor          s11, tp, t6
                  ori          s7, a4, 1342
                  andi         sp, s5, -248
                  sub          t0, s3, t0
                  and          s5, s9, ra
                  and          s1, s3, a4
                  andi         ra, s0, -1577
                  auipc        t5, 873390
                  auipc        s0, 825410
                  sra          a3, t5, t2
                  sll          s3, s4, t5
                  ori          sp, a2, -186
                  sltiu        s9, sp, -44
                  and          s7, s0, a1
                  and          s2, s11, a4
                  srl          s4, s7, s11
                  xori         s5, a5, 2001
                  sll          a5, t6, t1
                  slli         a1, t6, 9
                  slti         zero, s0, -451
                  xor          s0, t4, s1
                  xori         gp, t6, -1822
                  slti         zero, s8, -652
                  lui          s0, 674676
                  sll          s5, a7, s5
                  slt          a7, a4, sp
                  slti         s2, sp, 92
                  slti         t6, s2, -1195
                  andi         s0, s3, 1059
                  sltiu        a1, gp, 1275
                  slti         s5, t3, -1845
                  srl          tp, a3, s0
                  auipc        zero, 101079
                  andi         s0, a4, 1577
                  srai         t6, t6, 6
                  sltiu        s6, s6, 265
                  slt          s9, a4, a0
                  xor          s11, a4, t3
                  sltiu        a7, zero, -1953
                  and          t6, a6, a6
                  and          a4, s9, s10
                  sltiu        s9, t3, -128
                  xor          tp, tp, t3
                  addi         s3, s5, 1014
                  slt          zero, t2, sp
                  add          a2, s1, s10
                  auipc        t1, 141037
                  nop
                  sll          s0, t6, t1
                  add          s3, gp, t0
                  and          sp, a2, sp
                  ori          a5, gp, -897
                  sra          a3, t2, t5
                  add          a1, s2, t0
                  sra          tp, s5, t2
                  add          sp, gp, s4
                  and          a7, a2, t2
                  auipc        t0, 504580
                  xori         a7, s7, -307
                  slli         ra, s10, 8
                  srai         t3, a2, 4
                  xori         t5, a0, 1394
                  srai         a7, t4, 5
                  add          ra, a1, a5
                  add          zero, s8, a3
                  sll          t6, a7, a3
                  srai         a2, s8, 29
                  srl          s4, a7, t0
                  lui          s3, 455656
                  auipc        t6, 841894
                  and          sp, t5, s1
                  sra          s1, s8, a7
                  xori         s5, t3, -197
                  slti         s2, s4, 1840
                  slti         tp, a6, 215
                  auipc        a2, 483120
                  lui          s5, 253998
                  srl          s11, s10, s11
                  nop
                  sub          s0, s9, t1
                  sltiu        s4, a5, -1282
                  nop
                  sltiu        s9, s7, -170
                  srl          s11, ra, a5
                  add          s9, s6, t2
                  xori         sp, s4, -639
                  add          s1, s1, a7
                  sltiu        s7, s3, 925
                  srai         s9, s2, 0
                  add          a2, t4, zero
                  and          s8, t3, t1
                  or           s8, s4, t3
                  auipc        s5, 994129
                  sltu         a2, s2, a0
                  sltiu        a7, s10, -1233
                  add          a3, s5, a1
                  sub          s5, zero, a1
                  nop
                  srl          s5, a2, a6
                  andi         a4, s11, 855
                  xori         t0, s4, -655
                  lui          a2, 426815
                  nop
                  addi         sp, a0, 451
                  xor          s3, t6, a2
                  srl          a2, s1, a3
                  nop
                  srai         a2, a2, 5
                  sra          gp, sp, a5
                  xori         a4, a7, 141
                  lui          s9, 21345
                  slt          a2, t3, tp
                  lui          t0, 839187
                  andi         a4, a3, -264
                  or           gp, s1, a7
                  add          s6, t3, t4
                  auipc        t0, 126481
                  sltu         s4, tp, s3
                  or           ra, a3, s5
                  nop
                  srai         a7, s11, 9
                  slti         a6, gp, -2022
                  srai         tp, t5, 17
                  srl          s5, s11, s11
                  nop
                  addi         a0, sp, 1200
                  srli         gp, s10, 6
                  srai         s6, a4, 3
                  auipc        tp, 258855
                  xori         s1, a4, -196
                  srli         s1, sp, 26
                  srli         gp, s11, 0
                  nop
                  sll          sp, a5, t1
                  andi         a7, s3, 273
                  sltu         gp, zero, s4
                  and          a2, t4, a5
                  add          t1, t0, gp
                  ori          a5, t6, -1699
                  srl          s8, t3, s11
                  xori         a3, t3, 1903
                  xori         s11, gp, -823
                  and          s4, t5, t2
                  xor          a0, s10, tp
                  sltiu        s1, s4, 32
                  sll          a1, ra, t3
                  and          tp, s7, t1
                  andi         s5, a7, 290
                  lui          a3, 304073
                  xor          s2, a7, t3
                  sll          a7, s8, gp
                  addi         a4, gp, 1425
                  xori         ra, s3, 8
                  and          a0, t4, s6
                  slli         t3, s5, 19
                  auipc        tp, 452638
                  sub          sp, a3, s9
                  auipc        a5, 484387
                  xori         a4, a6, 434
                  auipc        zero, 107358
                  ori          s8, s8, 1586
                  sub          s3, s2, t6
                  xor          s7, s7, sp
                  slt          a4, ra, a1
                  sra          zero, s3, t3
                  xori         zero, a2, 1896
                  sra          s8, ra, a7
                  andi         a2, s3, -1788
                  or           a3, s11, s11
                  sltu         ra, t6, sp
                  andi         a5, s10, -442
                  sll          gp, t3, s0
                  srl          a6, s10, a3
                  slli         s3, a7, 18
                  sub          s0, s10, a0
                  xori         s3, sp, 1816
                  sltiu        s7, a3, 1391
                  or           a4, s3, s10
                  sltiu        s8, t1, -102
                  srai         a6, s11, 22
                  srli         s7, zero, 30
                  slt          a5, t4, a4
                  or           tp, s4, s5
                  sltu         s9, a6, s8
                  sub          a1, a3, a5
                  sll          t3, tp, a6
                  srai         t0, a3, 6
                  sltu         s11, s8, t5
                  slti         a1, s8, 110
                  auipc        s9, 262809
                  sltiu        s7, a0, -970
                  lui          s6, 879846
                  sra          a2, s7, ra
                  sra          tp, t2, s9
                  srai         a3, gp, 12
                  lui          t5, 253987
                  andi         a0, s9, -627
                  or           a4, a0, s7
                  slti         s8, s0, -361
                  sra          s7, a5, ra
                  slli         s3, a0, 23
                  sll          s7, a5, ra
                  add          s9, s1, zero
                  sub          s7, a6, a1
                  srli         a3, s1, 23
                  sra          s11, s7, s7
                  slti         a4, a7, -1418
                  ori          s8, s3, 1376
                  or           s8, a4, a5
                  xor          t3, s2, s11
                  slti         s11, t0, 742
                  sll          s4, s9, a1
                  slt          t1, ra, a1
                  slli         a6, s5, 16
                  sra          s7, t4, t6
                  sltu         gp, s9, s0
                  nop
                  and          t3, s4, s1
                  and          t1, ra, t5
                  and          a1, t4, s5
                  nop
                  sll          a2, s10, s2
                  slli         a0, s3, 3
                  srl          s9, tp, s5
                  add          a7, tp, a3
                  and          t5, a1, ra
                  srai         zero, s4, 11
                  auipc        s3, 1001419
                  add          s6, zero, t1
                  xor          zero, t1, tp
                  slli         t5, t2, 3
                  srai         a5, s4, 31
                  and          sp, a5, s0
                  sra          t3, s2, s5
                  srl          zero, a6, s10
                  nop
                  xor          zero, a1, s7
                  nop
                  srl          sp, ra, t6
                  srl          s0, t4, s9
                  slli         s4, sp, 1
                  add          t0, a4, a3
                  slti         t0, s6, -1273
                  srl          a3, s5, s0
                  nop
                  sra          tp, zero, s1
                  or           s11, sp, s4
                  and          a3, s10, t5
                  ori          t0, a7, 972
                  xor          s9, s6, tp
                  ori          a3, s2, 1512
                  nop
                  lui          s9, 450505
                  sltiu        s11, a6, -1444
                  xor          a1, a1, sp
                  addi         s7, tp, -1866
                  sub          a2, t6, a0
                  srai         s9, a2, 26
                  ori          s9, a1, -607
                  sltu         a2, s3, zero
                  xor          a5, s2, s0
                  and          ra, s11, t3
                  srl          t3, a4, t5
                  ori          a2, sp, 227
                  sltiu        s9, s2, 1858
                  or           a5, s4, a5
                  slti         s1, s6, -424
                  sltiu        t1, t3, 931
                  nop
                  nop
                  xori         s6, s0, 734
                  srai         ra, a3, 28
                  sltiu        s0, s10, 569
                  addi         s6, a4, 960
                  slt          a0, s1, gp
                  sll          t5, a2, a0
                  slt          a2, sp, t4
                  srl          a0, s1, s5
                  auipc        t1, 437108
                  sltiu        a6, t0, 1180
                  auipc        t6, 221045
                  lui          s1, 847397
                  slti         s4, ra, -422
                  slti         t0, a3, -1646
                  lui          s6, 931639
                  slt          a4, a7, t4
                  sltiu        t5, a4, 39
                  sra          sp, s3, s6
                  or           t6, ra, s11
                  addi         tp, t6, 1163
                  slti         s6, t2, -881
                  srai         a3, s8, 30
                  sra          s6, t1, a2
                  sra          a6, t4, a6
                  xori         s5, s5, -1452
                  ori          sp, s3, 1228
                  nop
                  addi         t3, a4, 1331
                  or           s6, a1, s0
                  sub          s4, s5, sp
                  sll          s8, gp, s6
                  or           a1, s1, t4
                  ori          a7, a5, 662
                  sltiu        a6, s6, 698
                  auipc        t0, 346169
                  addi         sp, t1, 1520
                  xor          a0, s8, s1
                  add          zero, t0, t0
                  sra          t0, gp, a3
                  nop
                  sltu         t5, s7, a6
                  xor          a5, t0, t6
                  slti         s4, ra, 978
                  lui          tp, 349684
                  or           s9, s4, s2
                  srai         s3, s10, 2
                  slli         s4, a2, 15
                  add          s1, sp, ra
                  and          a2, s6, zero
                  srl          a7, t5, t4
                  sll          s1, a3, a4
                  andi         s5, s1, -289
                  addi         zero, s0, -135
                  srli         tp, t3, 7
                  addi         a7, a3, 1718
                  sltu         a6, s2, s8
                  srl          s5, t4, s8
                  lui          s4, 611434
                  lui          s0, 634221
                  xor          s9, a7, t1
                  or           s0, t1, s10
                  lui          s9, 466718
                  sra          t1, a2, t4
                  sub          sp, s1, gp
                  sltu         sp, ra, ra
                  srli         t0, s6, 27
                  sub          s2, t5, a4
                  xor          a4, s7, s0
                  slt          a5, s0, s0
                  sra          t6, t3, s1
                  auipc        t5, 237355
                  or           tp, zero, s9
                  slti         a1, a5, -346
                  srai         a2, t3, 8
                  slli         gp, t3, 4
                  addi         s7, a1, 1070
                  ori          s0, gp, -73
                  lui          s11, 774735
                  srai         a5, a7, 19
                  auipc        s4, 99178
                  xori         gp, s10, -1573
                  slli         ra, t5, 29
                  andi         a6, t6, -1751
                  ori          sp, a1, 1790
                  or           a0, a5, ra
                  auipc        a7, 549035
                  nop
                  sub          s8, t5, s1
                  add          s4, a3, s2
                  ori          s7, tp, -466
                  sltu         ra, t6, s5
                  sltu         s4, ra, s11
                  or           a6, ra, a2
                  sll          sp, a2, a4
                  sltiu        s6, a1, -1929
                  xor          s7, t5, t0
                  sltu         zero, t6, s8
                  srl          gp, s8, t5
                  sltiu        s1, t5, -1679
                  add          a4, tp, t5
                  sltu         a2, a0, s3
                  sub          sp, s3, ra
                  srai         sp, ra, 28
                  nop
                  add          ra, a4, t5
                  sra          ra, s5, tp
                  srai         a1, a2, 9
                  ori          a4, ra, -1575
                  add          t3, t6, t6
                  ori          s9, sp, -121
                  sra          s5, a5, s9
                  srl          s9, s2, t6
                  sub          a4, t5, s0
                  or           s9, zero, s11
                  andi         a6, s0, -1348
                  xor          a4, s5, a1
                  or           s11, s0, s10
                  ori          s7, t1, -1530
                  xor          s1, t5, a4
                  add          a6, a2, gp
                  xor          ra, s4, s0
                  ori          gp, ra, 1395
                  slt          s9, s7, a3
                  nop
                  nop
                  slti         s1, sp, 1983
                  auipc        s5, 193633
                  nop
                  andi         t0, t4, 1587
                  xor          s7, s1, gp
                  xor          s6, a1, s7
                  xor          s5, a5, ra
                  nop
                  srl          a4, s0, t4
                  srl          a6, a6, t2
                  nop
                  or           s5, a1, s11
                  xori         s1, t5, -1285
                  srl          a4, s4, a4
                  sltiu        s5, t6, 224
                  slti         t6, s6, 1951
                  sltiu        s5, ra, 1196
                  srli         a1, sp, 20
                  addi         s9, a2, 1109
                  srli         s1, s9, 22
                  sub          a2, s9, t5
                  srl          s4, s0, t2
                  xori         s8, a7, -1370
                  xor          s5, t6, t6
                  ori          t1, t3, 626
                  or           tp, s9, a7
                  andi         t0, sp, 1228
                  sltu         zero, s4, s2
                  srl          s2, t6, a2
                  and          s5, s9, s5
                  slti         s8, a5, 1710
                  slt          s0, s1, t4
                  sltu         a1, ra, tp
                  srai         s3, tp, 20
                  xor          s8, s1, a1
                  add          ra, a2, a4
                  andi         ra, a7, 183
                  srl          a4, t6, sp
                  slti         s11, tp, 532
                  ori          t3, s8, 1221
                  xori         a7, a2, -920
                  or           sp, t5, a3
                  addi         s3, a0, -1781
                  sub          a4, a5, s2
                  add          a6, s3, sp
                  srl          a2, t4, a3
                  nop
                  sra          t6, a7, a6
                  lui          t5, 92119
                  slli         s0, t0, 31
                  srl          t5, a3, s5
                  sll          t3, s6, s8
                  sub          t3, s10, a3
                  sltiu        sp, gp, -807
                  ori          t5, a6, 1321
                  ori          s7, a5, -675
                  andi         s9, tp, 1807
                  ori          t1, a4, 1145
                  sltu         a0, s11, s0
                  slti         a2, s3, 1306
                  srai         s7, a7, 8
                  slli         t0, t0, 7
                  xor          s11, s7, a6
                  sub          tp, t0, a5
                  nop
                  slli         s4, s8, 29
                  slli         sp, a0, 13
                  ori          s11, a6, 973
                  ori          sp, a7, 82
                  slli         s4, t4, 5
                  xori         a0, t6, -206
                  sltiu        a2, t4, -1495
                  andi         t3, a2, 1270
                  sra          s2, tp, t0
                  sltu         sp, s7, a4
                  auipc        s1, 763087
                  xor          sp, a1, t3
                  srli         t1, a5, 24
                  lui          a6, 862096
                  slli         a1, t6, 27
                  add          a0, tp, s7
                  ori          s1, a4, 263
                  andi         s6, a6, 1257
                  slt          s3, s9, s3
                  xor          t3, sp, t0
                  srli         a7, s8, 26
                  andi         s0, zero, 995
                  xori         s4, t5, 1259
                  and          sp, a1, ra
                  sra          s6, ra, sp
                  sltiu        a2, s1, -1291
                  srai         a5, a2, 13
                  xori         a0, zero, 1935
                  sltu         s7, t3, s10
                  sra          s0, s6, s6
                  srli         s1, t4, 13
                  ori          t6, t1, -1364
                  srai         a6, sp, 16
                  sra          s8, s2, gp
                  xor          s5, a1, a6
                  slt          s11, ra, a5
                  lui          a1, 325271
                  xori         zero, a1, -1566
                  add          s8, tp, a2
                  andi         zero, t4, 488
                  add          ra, s11, s11
                  srai         s4, s10, 30
                  nop
                  addi         s5, s0, -1242
                  sltu         a7, t1, a5
                  sub          ra, a3, s2
                  or           gp, sp, s4
                  sltu         t0, ra, t6
                  sll          s2, sp, sp
                  sra          s6, tp, a3
                  srl          a6, s8, s2
                  ori          zero, a6, -1912
                  auipc        tp, 88929
                  srl          t1, s8, t3
                  srli         s4, t0, 12
                  slti         s0, gp, -1252
                  ori          ra, t1, 1747
                  xori         t6, t3, 1585
                  sll          a0, t4, s9
                  xor          a6, s10, t3
                  slt          a1, a1, tp
                  sll          s1, t6, a2
                  and          a7, t4, t3
                  xor          a2, t1, a6
                  add          s9, ra, t4
                  srai         s2, s3, 0
                  slli         a2, a7, 18
                  slti         a4, s6, 565
                  srli         a5, s8, 6
                  and          s0, t4, s4
                  addi         s7, t0, -462
                  or           s8, t3, s1
                  slti         s6, t6, -1679
                  add          sp, t5, t3
                  sltu         zero, t5, sp
                  srai         ra, a5, 7
                  and          s0, t3, a6
                  srai         sp, a2, 25
                  sra          tp, s11, a4
                  and          a4, t1, a0
                  andi         tp, a2, -545
                  ori          t5, ra, 1693
                  auipc        s2, 247890
                  lui          a6, 1036759
                  or           t0, tp, s9
                  lui          t1, 646144
                  sll          s9, t4, s8
                  sltu         a4, s2, a7
                  ori          t1, t2, -723
                  addi         s1, tp, 257
                  xor          a1, s3, s5
                  lui          tp, 243517
                  slli         s3, t6, 7
                  sltu         s3, a3, t2
                  and          s7, s7, t2
                  auipc        a0, 308049
                  sub          s5, gp, t2
                  lui          a1, 786729
                  addi         t3, s11, -1929
                  slli         a6, s7, 12
                  slti         a5, s6, 89
                  sltiu        s7, a6, -1595
                  and          gp, s8, s1
                  nop
                  andi         a0, t3, 573
                  nop
                  ori          s7, s5, -318
                  xori         t6, t6, -613
                  slt          t1, t3, s1
                  addi         gp, t2, 1388
                  xor          t1, t5, t6
                  or           s1, zero, t0
                  srl          s11, t3, s11
                  ori          s4, s3, -2007
                  ori          s11, a7, 1195
                  addi         s5, a5, -1898
                  sub          s1, a2, s3
                  auipc        a3, 962020
                  slli         s6, s3, 4
                  slt          t5, gp, t5
                  or           a0, s7, s9
                  and          a7, t0, a5
                  lui          t5, 355903
                  lui          a3, 691032
                  slti         s9, t2, 1638
                  srai         s3, ra, 13
                  auipc        t6, 210342
                  slti         t1, a0, 1263
                  add          gp, s5, a1
                  sra          s8, a2, s9
                  sltiu        a7, a5, -1235
                  slli         s5, t0, 24
                  srli         a3, s9, 13
                  slli         a2, t2, 23
                  slti         s9, s5, -181
                  srli         ra, s7, 29
                  and          s1, a5, a6
                  srl          a2, s11, tp
                  addi         s11, s1, -220
                  sub          s0, s0, s10
                  nop
                  xori         a0, a1, 1875
                  xori         s3, a0, -1668
                  or           s11, a7, tp
                  srl          a2, a3, a7
                  auipc        s8, 894799
                  sll          a6, tp, t1
                  sll          s9, s3, s8
                  srai         a2, s11, 22
                  sra          sp, a7, s9
                  xor          a6, zero, sp
                  slti         a7, s10, 83
                  srl          a0, a1, t4
                  sltu         a1, a4, a2
                  srli         s1, s7, 24
                  xor          a5, s9, a3
                  add          t3, s10, t4
                  slt          zero, a7, t6
                  ori          t5, s9, -397
                  srli         a7, a0, 14
                  srli         t3, a5, 10
                  srai         a7, s7, 30
                  slti         s2, ra, 1500
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           s0, 0x0
                  li           a0, 0xbd6a6506
                  li           a4, 0xffffffff
                  li           sp, 0xffffffff
                  li           t3, 0xb10e365e
                  li           a2, 0x80000000
                  li           s6, 0xb020e8f9
                  li           t1, 0xffffffff
                  li           ra, 0xffffffff
                  sub          t6, ra, a4
                  lui          a0, 415968
                  addi         s0, t3, 1588
                  lui          a4, 368623
                  lui          s6, 114579
                  sub          t6, t3, t6
                  auipc        ra, 165363
                  nop
                  addi         ra, t3, -1694
                  auipc        s0, 833350
                  lui          sp, 960566
                  nop
                  sub          sp, t3, s6
                  nop
                  nop
                  auipc        a4, 700701
                  sub          sp, ra, sp
                  addi         t6, a2, -1132 #end riscv_int_numeric_corner_stream_7
                  addi         sp, a3, 2003
                  sra          t1, s1, a7
                  srai         s0, s5, 29
                  ori          t1, t6, -1111
                  sltiu        ra, s5, -940
                  auipc        a0, 276987
                  andi         tp, s6, -1811
                  and          a2, t3, gp
                  or           s5, zero, t5
                  ori          gp, a0, -1078
                  sub          s2, sp, t2
                  sltiu        s3, s7, -1180
                  ori          zero, sp, -1658
                  slt          s5, a6, s5
                  slti         ra, a2, 1222
                  srli         s0, t5, 20
                  slti         s0, s4, -1461
                  sll          a1, a1, s4
                  addi         s5, a7, 565
                  and          t0, s9, s0
                  sll          a0, t5, a7
                  lui          t3, 800539
                  lui          zero, 735551
                  ori          s4, t6, 1163
                  slli         s4, a7, 31
                  sltu         t6, ra, a5
                  add          a7, a5, s1
                  sra          s6, s2, s9
                  slti         a1, tp, 1506
                  auipc        s5, 989895
                  srl          a7, a5, s10
                  add          a0, s8, t1
                  lui          sp, 173642
                  or           s5, tp, t2
                  add          zero, s3, s10
                  lui          t1, 441060
                  srl          s5, s0, s2
                  slti         t0, s8, -221
                  slti         s4, tp, -1854
                  add          t0, t6, sp
                  addi         sp, a7, 327
                  sltiu        s2, a3, 1307
                  sra          s9, s10, a2
                  addi         tp, s11, 28
                  ori          s11, a1, -241
                  slti         a5, s4, -164
                  srai         a0, t1, 25
                  xor          a6, a2, s5
                  srai         s4, a7, 5
                  nop
                  add          s0, s0, s8
                  lui          s6, 906222
                  and          s1, a4, s2
                  srl          t6, a2, ra
                  and          t5, s0, s5
                  or           t5, tp, gp
                  slt          a3, s11, t3
                  slt          a5, gp, s10
                  or           s9, a3, s7
                  slli         s9, gp, 20
                  sra          t1, a4, a1
                  and          s7, s1, a7
                  auipc        t1, 156001
                  nop
                  and          s0, s1, s8
                  sll          gp, a4, s10
                  lui          s1, 81235
                  nop
                  sltiu        a2, s8, 905
                  xor          s4, a1, s3
                  xori         zero, s0, 1378
                  and          a6, t5, a6
                  nop
                  addi         sp, s0, -425
                  xor          ra, a1, s0
                  nop
                  nop
                  ori          zero, tp, 400
                  sltiu        tp, s10, 1626
                  sltiu        a2, t4, 1741
                  slt          s6, zero, s9
                  slti         gp, a0, -30
                  sltiu        s1, t0, -987
                  addi         a6, zero, -1149
                  auipc        s5, 393074
                  sltu         s9, s4, a0
                  sltiu        t1, a6, 202
                  sll          s4, tp, sp
                  nop
                  sltu         s1, s10, t6
                  slti         a6, s3, 790
                  slli         s4, t5, 2
                  srli         tp, t2, 30
                  slli         t6, t4, 1
                  srli         tp, a7, 15
                  auipc        s3, 584694
                  xor          a7, a0, a5
                  and          s6, s6, s0
                  srai         s5, s5, 4
                  nop
                  nop
                  slti         s11, sp, -1433
                  slti         a2, s0, -1646
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           s1, 0x60f300ef
                  li           t6, 0x80000000
                  li           ra, 0xffffffff
                  li           a3, 0xffffffff
                  li           a6, 0x0
                  li           gp, 0x1ab745bb
                  li           s0, 0x80000000
                  li           a2, 0x68ea75e5
                  li           a0, 0xffffffff
                  sub          ra, s0, s0
                  add          ra, ra, s0
                  add          s1, tp, a2
                  addi         a2, a6, -1071
                  nop
                  addi         a6, t6, -446
                  lui          a3, 345005
                  lui          s0, 124467
                  sub          gp, s0, s0
                  auipc        gp, 215214
                  sub          gp, s0, a3
                  nop
                  auipc        s0, 421027
                  add          ra, a3, a3
                  lui          ra, 80787 #end riscv_int_numeric_corner_stream_3
                  sra          s6, s4, a3
                  xori         t0, t6, -1111
                  xori         s8, tp, 1193
                  and          s4, s5, s6
                  add          s6, a4, a2
                  andi         a4, s7, 1229
                  auipc        ra, 842106
                  xori         tp, s1, -1200
                  srai         s2, a5, 1
                  slli         s4, a6, 19
                  auipc        a7, 698282
                  nop
                  slli         a7, s5, 3
                  add          s5, s11, s9
                  andi         gp, t1, 1278
                  sra          s1, a0, s11
                  sltu         t5, zero, s3
                  sltiu        t5, s0, 1322
                  and          t5, s2, zero
                  srl          gp, t4, ra
                  sltu         s4, t0, a1
                  sra          a2, a6, a6
                  srli         sp, s5, 17
                  srli         t3, tp, 7
                  auipc        s8, 436132
                  slli         s4, tp, 23
                  or           s7, t4, a4
                  xori         ra, s4, 745
                  srl          ra, gp, t2
                  sltiu        s11, s1, 1384
                  sltiu        s2, s11, 1269
                  srl          s9, s7, a0
                  sll          s5, t4, s6
                  slt          tp, s6, a5
                  slt          s11, zero, s2
                  sub          s0, gp, t1
                  slt          s3, t6, s1
                  slt          zero, a6, s1
                  lui          a4, 45242
                  sltiu        s7, s5, -49
                  slli         sp, s5, 12
                  slli         sp, gp, 12
                  slli         a5, s11, 16
                  lui          a4, 601052
                  add          t3, tp, s8
                  sra          s4, a5, a7
                  slti         t6, a3, -222
                  xor          s3, t5, s10
                  sll          s3, s9, s10
                  srai         s6, tp, 7
                  auipc        s9, 643290
                  srl          a3, s8, a7
                  and          zero, a6, a3
                  andi         a2, s10, 76
                  sltu         tp, a4, s6
                  lui          s2, 947425
                  addi         t0, a5, -119
                  add          sp, tp, s8
                  srl          s8, zero, s0
                  xor          t1, s5, s10
                  slti         t3, zero, 1824
                  slt          t1, ra, a1
                  sltu         a4, t2, a3
                  xor          s1, s8, a6
                  slli         s0, sp, 10
                  add          s8, s5, ra
                  srai         zero, t2, 1
                  slt          s1, t6, t3
                  sltu         t3, gp, s0
                  sub          s6, t5, s2
                  ori          t3, a2, 800
                  sub          a2, tp, a0
                  sra          a6, s7, t6
                  addi         a1, ra, -1916
                  slli         s5, gp, 31
                  addi         s4, a1, 1184
                  sltiu        s2, zero, -395
                  slli         a1, s6, 7
                  or           t6, a5, t5
                  slti         sp, a7, -1343
                  or           t5, s10, tp
                  sub          s6, gp, s4
                  ori          a6, gp, 20
                  xor          a1, zero, t4
                  sltu         s9, a6, ra
                  sra          ra, s8, a5
                  srli         a1, s6, 15
                  or           ra, t3, gp
                  sltiu        zero, s8, 846
                  srai         s5, a1, 19
                  sub          s9, t6, a1
                  sltu         a7, t6, a3
                  srl          t5, t0, s9
                  sll          s2, t6, a1
                  add          a3, a6, a5
                  slt          a4, s2, t6
                  or           s9, t5, s9
                  srl          s9, s11, tp
                  add          s0, t3, s11
                  sub          a0, t2, a1
                  or           s8, s1, s10
                  srl          zero, t5, sp
                  sll          t3, a3, s11
                  sltu         a0, ra, a6
                  srai         s3, a7, 8
                  and          s11, s7, s9
                  slti         t1, s2, -465
                  slti         a2, s1, 1569
                  xor          a6, s9, tp
                  sltu         s4, s2, a0
                  srl          t5, s6, s5
                  sltu         zero, s3, t1
                  sltu         a5, s11, s2
                  auipc        t3, 934168
                  sll          t0, s11, s9
                  sltu         a0, s8, s3
                  slt          t3, t5, a6
                  andi         s2, t5, -712
                  slti         a1, a7, 1184
                  sra          a6, a2, t3
                  srli         s7, s2, 17
                  slti         s9, s9, -1728
                  slli         a4, t4, 29
                  and          t3, a1, a4
                  sll          a1, s11, a0
                  xor          s3, a1, a3
                  slt          a0, a2, s4
                  sra          sp, t2, s0
                  sll          zero, s10, s4
                  andi         a1, a0, 420
                  slli         s11, t0, 30
                  slli         s1, s7, 5
                  auipc        t6, 1044646
                  ori          a7, t3, 269
                  andi         s1, s4, 308
                  or           s7, sp, s2
                  nop
                  slt          a5, t6, s1
                  lui          s11, 124663
                  xori         a0, zero, -1588
                  addi         tp, zero, 781
                  lui          tp, 856970
                  xori         a3, t2, -1167
                  sll          a2, s2, s1
                  sub          zero, a0, a3
                  la x26, test_done
                  jalr x0, x26, 0
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
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x29, x7, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_2:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x29, x7, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_3:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x29, x7, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_4:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x29, x7, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_5:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x29, x7, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_6:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x29, x7, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_7:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x29, x7, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_8:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x29, x7, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_9:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x29, x7, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_10:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x29, x7, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_11:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x29, x7, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_12:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x29, x7, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_13:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x29, x7, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_14:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x29, x7, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_15:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x29, x7, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

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
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x29, x7, zero
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x8, 0x3 # BREAKPOINT
                  beq x31, x8, ebreak_handler
                  li x8, 0x8 # ECALL_UMODE
                  beq x31, x8, ecall_handler
                  li x8, 0x9 # ECALL_SMODE
                  beq x31, x8, ecall_handler
                  li x8, 0xb # ECALL_MMODE
                  beq x31, x8, ecall_handler
                  li x8, 0x1
                  beq x31, x8, instr_fault_handler
                  li x8, 0x5
                  beq x31, x8, load_fault_handler
                  li x8, 0x7
                  beq x31, x8, store_fault_handler
                  li x8, 0xc
                  beq x31, x8, pt_fault_handler
                  li x8, 0xd
                  beq x31, x8, pt_fault_handler
                  li x8, 0xf
                  beq x31, x8, pt_fault_handler
                  li x8, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x8, illegal_instr_handler
                  csrr x8, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

ecall_handler:    
                  la x31, _start
                  sw x0, 0(x31)
                  sw x1, 4(x31)
                  sw x2, 8(x31)
                  sw x3, 12(x31)
                  sw x4, 16(x31)
                  sw x5, 20(x31)
                  sw x6, 24(x31)
                  sw x7, 28(x31)
                  sw x8, 32(x31)
                  sw x9, 36(x31)
                  sw x10, 40(x31)
                  sw x11, 44(x31)
                  sw x12, 48(x31)
                  sw x13, 52(x31)
                  sw x14, 56(x31)
                  sw x15, 60(x31)
                  sw x16, 64(x31)
                  sw x17, 68(x31)
                  sw x18, 72(x31)
                  sw x19, 76(x31)
                  sw x20, 80(x31)
                  sw x21, 84(x31)
                  sw x22, 88(x31)
                  sw x23, 92(x31)
                  sw x24, 96(x31)
                  sw x25, 100(x31)
                  sw x26, 104(x31)
                  sw x27, 108(x31)
                  sw x28, 112(x31)
                  sw x29, 116(x31)
                  sw x30, 120(x31)
                  sw x31, 124(x31)
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x7, x29, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

load_fault_handler:
                  add x7, x29, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

store_fault_handler:
                  add x7, x29, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

ebreak_handler:   
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x7, x29, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

illegal_instr_handler:
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x7, x29, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  add x7, x29, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
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
