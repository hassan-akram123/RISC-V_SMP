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
                  li x4, 0x40000100
                  csrw 0x301, x4
kernel_sp:        
                  la x19, kernel_stack_end

trap_vec_init:    
                  la x4, mtvec_handler
                  ori x4, x4, 0
                  csrw 0x305, x4 # MTVEC

mepc_setup:       
                  la x4, init
                  csrw 0x341, x4

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x4, 0x1800
                  csrw 0x300, x4 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0xb
                  li x5, 0xfcb54554
                  li x6, 0x67226154
                  li x7, 0xf4b7f676
                  li x8, 0x0
                  li x9, 0x3
                  li x10, 0x44947867
                  li x11, 0x80000000
                  li x12, 0xce8904ad
                  li x13, 0x8
                  li x14, 0x80000000
                  li x15, 0x91f354fe
                  li x16, 0xf8e3d147
                  li x18, 0x6
                  li x20, 0x0
                  li x21, 0x2
                  li x22, 0xff950ba9
                  li x23, 0x0
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0x0
                  li x27, 0x80000000
                  li x28, 0xfaa1dbcf
                  li x29, 0x5
                  li x30, 0x0
                  li x31, 0x0
                  la x17, user_stack_end
main:             li           s0, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           a2, 0x0
                  li           tp, 0x102374e3
                  li           s2, 0x408d874f
                  li           s7, 0x0
                  li           a6, 0x835975b8
                  li           ra, 0x0
                  li           s11, 0x12798ad0
                  li           t0, 0x80000000
                  li           t4, 0x69349e5c
                  auipc        a2, 561480
                  lui          s2, 518566
                  sub          s2, t0, a2
                  sub          t4, t4, t4
                  addi         ra, a2, -1383
                  nop
                  sub          t0, s2, s7
                  nop
                  sub          tp, ra, t4
                  addi         t0, a6, -141
                  add          s2, t4, ra
                  addi         tp, tp, -964
                  addi         s7, s2, -1959
                  addi         s7, s2, -120
                  sub          t0, s2, s2
                  lui          ra, 958220
                  sub          t4, t4, s11
                  addi         s2, a6, 1099
                  auipc        s2, 959945 #end riscv_int_numeric_corner_stream_19
                  li           s7, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           s4, 0xffffffff
                  li           s5, 0x0
                  li           t5, 0xffffffff
                  li           ra, 0xffffffff
                  li           a3, 0xffffffff
                  li           a2, 0x0
                  li           s8, 0xffffffff
                  li           gp, 0x3373b7be
                  li           s11, 0x80000000
                  auipc        s4, 994300
                  nop
                  addi         s7, ra, -1331
                  sub          ra, a3, s4
                  addi         s4, s11, -792
                  sub          s5, gp, s7
                  add          a2, s7, a3
                  lui          s5, 304660
                  sub          a2, s11, s7
                  sub          s5, gp, s4
                  nop
                  addi         s7, a3, 314
                  add          a2, ra, ra
                  nop
                  nop
                  sub          s5, s5, s7
                  lui          a3, 189844
                  lui          s11, 391723
                  lui          s5, 107457
                  sub          s4, ra, s4 #end riscv_int_numeric_corner_stream_9
                  li           a1, 0x946bc3f4 #start riscv_int_numeric_corner_stream_4
                  li           a3, 0xffffffff
                  li           sp, 0xffffffff
                  li           t4, 0x0
                  li           t6, 0x6ca72f41
                  li           s7, 0x80000000
                  li           a4, 0x75e1a124
                  li           s8, 0xffffffff
                  li           t2, 0x0
                  li           t5, 0x80000000
                  auipc        a3, 395201
                  addi         t5, s8, -936
                  auipc        s8, 947869
                  sub          s7, t5, a4
                  addi         a1, t6, 659
                  lui          t5, 186697
                  addi         t4, s8, -1022
                  auipc        a1, 229454
                  add          t5, t5, t5
                  addi         t6, s8, -738
                  auipc        a4, 611633
                  addi         a1, sp, -72
                  sub          s7, a4, t2
                  add          s8, t5, sp
                  nop
                  add          a1, a4, a4
                  auipc        s7, 129809
                  addi         sp, sp, 359
                  lui          a3, 107906 #end riscv_int_numeric_corner_stream_4
                  li           a1, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           s8, 0x80000000
                  li           s6, 0xffffffff
                  li           s11, 0x2e3ffe09
                  li           t3, 0xfb364e2e
                  li           s4, 0x80000000
                  li           s2, 0x0
                  li           ra, 0xffffffff
                  li           a3, 0x80000000
                  li           s5, 0xa25bbf9e
                  addi         s5, s8, 1482
                  add          a3, s6, t3
                  auipc        s8, 124671
                  nop
                  sub          a3, s8, a3
                  addi         s6, s6, 1740
                  nop
                  sub          s6, s4, s8
                  lui          s2, 688530
                  auipc        s6, 965496
                  sub          s8, s8, s4
                  lui          s8, 542819
                  sub          a1, t3, s2
                  addi         s11, a1, 855
                  addi         t3, a3, 1194
                  addi         s5, a1, -405
                  sub          s6, s11, ra
                  addi         s4, ra, 1375
                  add          a3, s8, s5
                  addi         s6, s6, -1171
                  add          s6, s4, a3
                  add          s5, ra, s5
                  auipc        t3, 656092
                  add          s2, s8, s4 #end riscv_int_numeric_corner_stream_13
                  li           s9, 0xbc500cd8 #start riscv_int_numeric_corner_stream_6
                  li           t3, 0xb6ca8d50
                  li           s1, 0xdfbbbc6d
                  li           t6, 0x0
                  li           a3, 0xe550f852
                  li           s4, 0x0
                  li           a6, 0x80000000
                  li           t5, 0x0
                  li           a0, 0xffffffff
                  li           s11, 0x0
                  lui          s1, 359982
                  nop
                  sub          a3, a3, a0
                  nop
                  lui          s9, 602199
                  lui          s11, 806566
                  auipc        s1, 839411
                  sub          s1, a3, s1
                  lui          t5, 843868
                  auipc        s11, 891576
                  auipc        s11, 87946
                  lui          s9, 13232
                  add          a6, s4, s4
                  nop
                  add          a3, a6, t6
                  sub          a0, s9, t6
                  sub          s11, t5, s9
                  auipc        s9, 288609
                  addi         a0, a0, -1760
                  nop
                  nop #end riscv_int_numeric_corner_stream_6
                  li           s0, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           a6, 0xffffffff
                  li           gp, 0xe0356436
                  li           a5, 0xffffffff
                  li           t1, 0x80000000
                  li           a3, 0x0
                  li           t2, 0x0
                  li           t0, 0xffffffff
                  li           tp, 0xffffffff
                  li           ra, 0x0
                  lui          t2, 705282
                  addi         t1, a6, -583
                  lui          s0, 374502
                  sub          a5, a5, t2
                  nop
                  sub          gp, a5, t2
                  sub          tp, gp, a6
                  nop
                  nop
                  auipc        t2, 712127
                  lui          a6, 214164
                  addi         ra, tp, 441
                  addi         gp, s0, 532
                  sub          gp, a3, t0
                  auipc        a3, 681833
                  sub          a6, ra, ra
                  add          a3, t0, ra
                  lui          a6, 160580
                  addi         a6, a5, -1706 #end riscv_int_numeric_corner_stream_0
                  li           a2, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           s2, 0x0
                  li           a1, 0x80000000
                  li           t2, 0x9d836a89
                  li           a0, 0x80000000
                  li           ra, 0x0
                  li           a4, 0xffffffff
                  li           s1, 0xffffffff
                  li           t1, 0xe7841774
                  li           s11, 0x10ac2b47
                  lui          a4, 637662
                  nop
                  auipc        t1, 318394
                  auipc        s1, 812416
                  auipc        a0, 950500
                  add          t1, t1, a1
                  add          a2, a0, a1
                  add          s1, a2, a1
                  sub          s11, s2, ra
                  lui          a2, 452305
                  addi         a2, s11, 1873
                  lui          a0, 8435
                  add          s1, s1, a0
                  addi         s11, t2, 1755
                  addi         a4, a2, 942
                  lui          t1, 222521
                  nop
                  nop
                  addi         s11, a2, 207
                  lui          a0, 685336 #end riscv_int_numeric_corner_stream_12
                  lui          t3, 146231
                  add          t4, t2, s5
                  and          t3, a0, s8
                  xori         s5, sp, 328
                  nop
                  sll          zero, s10, s3
                  slt          a0, s11, t6
                  srl          t1, s11, a6
                  sra          s6, a2, s3
                  sltu         s1, s2, a6
                  lui          t1, 655898
                  lui          s4, 770497
                  andi         ra, t5, -826
                  slli         t3, a4, 2
                  xor          a5, s10, t1
                  andi         ra, sp, 1462
                  sra          s2, s8, s7
                  sub          t5, s11, sp
                  nop
                  slli         t3, a1, 17
                  or           s2, tp, t2
                  srli         t5, a3, 3
                  ori          a3, s4, -838
                  sltu         t5, t3, t6
                  add          zero, s3, a6
                  sra          a5, gp, a5
                  srli         s9, s4, 5
                  and          t2, a6, s7
                  sub          sp, s2, a4
                  and          t5, s11, s2
                  xor          t1, s10, t4
                  slt          a4, a7, a5
                  sra          a4, t5, t5
                  slti         t1, s1, -1555
                  srai         gp, s1, 5
                  slt          t1, s4, s0
                  sltu         s6, s1, t0
                  or           t1, s4, s4
                  slti         t6, s11, -363
                  sll          a1, a5, sp
                  auipc        tp, 393194
                  addi         a4, a3, 1550
                  slti         a1, a2, 484
                  slli         a4, s4, 6
                  andi         s0, s10, 1856
                  andi         s11, t1, -336
                  sll          s8, sp, a7
                  slt          s1, t2, t6
                  slti         s11, a6, -1178
                  add          sp, s9, sp
                  sra          s11, a1, t3
                  slt          s2, s6, a7
                  slt          s5, t5, s5
                  sub          s5, s10, t4
                  addi         t4, t6, 1435
                  sra          s2, a7, s1
                  auipc        tp, 908941
                  slt          a2, a0, s9
                  sltiu        t6, t0, 1682
                  auipc        a0, 892631
                  or           s4, s3, s7
                  lui          gp, 748120
                  addi         a4, s1, -1413
                  addi         a1, a4, 554
                  addi         s2, t3, -1781
                  xori         t5, a3, 655
                  add          t5, t5, gp
                  addi         t2, s1, 156
                  slti         a2, t4, -46
                  andi         s9, s3, -191
                  auipc        s1, 864774
                  sub          gp, a6, t1
                  sltu         sp, t3, a4
                  xori         s7, s4, 1962
                  and          t1, s3, gp
                  slti         s4, sp, -153
                  srli         s11, a1, 5
                  lui          t3, 665069
                  auipc        a0, 540777
                  slli         t0, s1, 16
                  srai         ra, s6, 3
                  srl          a6, s2, a7
                  sll          s2, ra, a5
                  or           t0, s6, s2
                  nop
                  lui          s8, 484012
                  xori         a5, s2, -1770
                  slli         a5, s9, 10
                  ori          a6, a5, -1723
                  and          t2, s3, s3
                  auipc        s2, 281886
                  addi         a4, zero, -455
                  slt          s11, t6, t5
                  addi         tp, s0, -1742
                  lui          t3, 40170
                  slli         t1, a5, 6
                  or           s9, a7, t0
                  slti         t3, t0, 1639
                  slt          a6, s7, a2
                  addi         t1, t1, -754
                  srai         t3, s8, 28
                  srai         t4, a0, 13
                  lui          tp, 1019799
                  slli         a1, s6, 0
                  sll          t2, t3, s1
                  srli         s4, s8, 11
                  auipc        gp, 931987
                  srl          t1, s8, s8
                  auipc        tp, 13143
                  nop
                  nop
                  add          s5, s9, s11
                  slti         t2, t6, -171
                  add          s2, s11, a3
                  ori          ra, a1, -456
                  nop
                  or           zero, a6, a1
                  srai         a2, t3, 8
                  auipc        tp, 286420
                  srai         a0, zero, 26
                  srli         a5, tp, 21
                  addi         a6, a0, 193
                  slli         t0, s6, 27
                  sra          t0, s0, t5
                  addi         t0, tp, 1937
                  slti         a2, s9, -588
                  ori          t5, zero, -1447
                  add          s11, s7, t0
                  srai         t1, s0, 27
                  lui          s5, 907444
                  srai         s1, s5, 2
                  addi         t3, s0, 903
                  xori         t2, s10, -565
                  andi         s1, s0, -1442
                  addi         s2, zero, 949
                  or           a2, s4, s7
                  lui          gp, 901217
                  and          s7, a2, a1
                  or           s6, s3, a4
                  sll          t5, s9, a4
                  xori         t3, s1, -1559
                  ori          a1, s10, 518
                  addi         sp, gp, -831
                  srl          t4, s5, t2
                  add          s2, a1, s3
                  andi         a3, s3, 1393
                  slt          t0, t5, s9
                  sll          zero, a0, s11
                  slti         a3, s1, 390
                  xori         s2, s7, -1081
                  sltu         s7, a1, ra
                  addi         s4, sp, -1937
                  add          a2, a5, s8
                  and          s2, s2, s1
                  xor          s11, t3, tp
                  li           a5, 0xdc623f46 #start riscv_int_numeric_corner_stream_15
                  li           s8, 0x0
                  li           s1, 0x0
                  li           sp, 0xffffffff
                  li           a0, 0xffffffff
                  li           t1, 0xaaab042c
                  li           tp, 0x0
                  li           a6, 0xd57fde31
                  li           a1, 0xc7f44844
                  li           s9, 0x0
                  addi         s1, a5, 1073
                  nop
                  lui          a0, 927773
                  lui          s1, 735817
                  sub          t1, sp, a5
                  sub          a1, sp, sp
                  lui          s8, 609553
                  add          a0, a6, s9
                  nop
                  addi         a0, a1, 75
                  add          a6, tp, s9
                  add          a0, a1, s1
                  nop
                  lui          tp, 1027317
                  sub          s1, s9, t1
                  lui          a0, 685568
                  nop
                  sub          s1, a6, a1
                  add          sp, tp, tp
                  nop
                  nop
                  sub          a0, sp, a6
                  lui          s9, 726843
                  auipc        a1, 958928
                  addi         s1, a6, -1122
                  nop
                  lui          sp, 385850
                  add          sp, a0, t1
                  lui          sp, 934861
                  nop #end riscv_int_numeric_corner_stream_15
                  ori          s1, s11, -1415
                  slli         a0, a3, 6
                  andi         t1, s7, -678
                  xori         s6, a4, -1463
                  srai         t5, s11, 2
                  xori         s2, a5, 100
                  lui          s5, 244308
                  srl          gp, sp, a4
                  xori         s5, t1, 105
                  srl          tp, t0, t1
                  sub          a5, t4, a7
                  addi         zero, a0, 987
                  sll          a5, a4, t3
                  add          gp, t1, s2
                  add          s7, s2, t1
                  slli         t0, s7, 21
                  or           t3, s3, a6
                  slti         t0, t4, 1043
                  srl          s6, t3, a6
                  slli         a1, s1, 24
                  sra          s4, t2, t0
                  ori          zero, s7, 1642
                  sll          s5, tp, a1
                  srl          s5, t2, s3
                  or           t1, t6, t5
                  sub          s5, t3, a6
                  nop
                  or           s7, a5, a5
                  addi         a0, s6, 418
                  auipc        s4, 308814
                  srli         s4, tp, 3
                  sltu         gp, a7, a2
                  or           zero, gp, a2
                  sub          s9, a7, t1
                  srli         s5, tp, 0
                  srl          s5, a4, a2
                  or           t6, gp, a1
                  sub          t2, zero, a6
                  ori          t3, t3, 953
                  slt          a1, s0, zero
                  sll          zero, s1, a3
                  slti         s8, a7, -116
                  srli         a2, ra, 14
                  nop
                  ori          t2, s8, -1013
                  or           s8, s8, s11
                  andi         zero, a1, 1252
                  srai         s5, t6, 5
                  addi         s6, a5, -1284
                  xori         s9, s11, 1667
                  nop
                  sltiu        t6, a3, 268
                  addi         s5, s9, 785
                  lui          t6, 313177
                  sll          t5, a5, s5
                  andi         s8, a3, 1076
                  or           s7, s11, tp
                  xor          a1, a3, s9
                  sltu         t1, sp, t5
                  sll          s1, zero, s11
                  lui          s9, 733852
                  andi         s1, zero, -1709
                  sub          a2, a6, s1
                  sll          t5, ra, s9
                  srai         a2, zero, 0
                  sra          a0, a6, s2
                  srai         a2, s4, 24
                  sll          t2, s9, s4
                  slti         t5, s7, 1456
                  andi         s0, t5, -1533
                  sltu         s1, s6, s1
                  li           t3, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           a3, 0xffffffff
                  li           t5, 0x80000000
                  li           a1, 0x80000000
                  li           s2, 0x80000000
                  li           a2, 0xffffffff
                  li           ra, 0xffffffff
                  li           s7, 0xffffffff
                  li           s1, 0x16d4ff12
                  li           s0, 0x80000000
                  lui          a2, 85170
                  auipc        s0, 458165
                  lui          a3, 313627
                  nop
                  nop
                  nop
                  addi         t3, s1, 884
                  add          t3, a1, a2
                  sub          a1, a3, a3
                  lui          a3, 596790
                  nop
                  nop
                  sub          s7, t5, ra
                  addi         t5, s7, -79
                  sub          ra, a3, s0
                  addi         s7, s2, -811
                  addi         t3, t5, -620
                  nop
                  sub          a3, a1, s0
                  nop #end riscv_int_numeric_corner_stream_14
                  slt          a2, s6, s5
                  sra          a6, s11, a3
                  slti         s7, a6, 509
                  xor          t4, s5, ra
                  srli         s11, s1, 18
                  auipc        s0, 718563
                  nop
                  and          a4, gp, gp
                  andi         ra, zero, 865
                  sltiu        a1, t5, 167
                  add          sp, s4, zero
                  add          sp, s8, a6
                  and          s9, t6, a3
                  sltiu        ra, t4, 641
                  sub          a6, t4, s10
                  sltiu        s8, ra, -996
                  addi         a3, s6, 623
                  srli         s11, s3, 31
                  xori         s11, s3, 1218
                  sra          a1, tp, a7
                  srai         a4, a6, 8
                  slti         t2, s5, -154
                  xori         t1, a4, 1238
                  sra          a1, zero, sp
                  sub          t3, t6, tp
                  srli         s8, t0, 6
                  xori         t3, t2, 1380
                  sub          a5, s5, t3
                  addi         s1, s11, 314
                  srai         s1, t6, 25
                  xori         a2, a0, 890
                  or           t1, a5, t1
                  xori         t3, a1, -527
                  slli         t0, s1, 9
                  xor          s0, gp, tp
                  and          a6, a5, a2
                  or           a3, t4, a6
                  lui          t2, 751528
                  srl          t0, sp, t3
                  slti         sp, a5, 337
                  add          sp, t0, s9
                  auipc        t3, 981317
                  lui          a1, 952376
                  slt          a6, s10, gp
                  nop
                  andi         gp, s6, 746
                  andi         a0, gp, -1145
                  and          s6, t4, sp
                  slti         s4, s9, 1447
                  xor          t5, ra, gp
                  add          t0, t5, a5
                  andi         s4, a6, -1331
                  addi         s2, s8, 211
                  sub          a5, s10, a6
                  slti         s2, sp, 686
                  slt          a1, t3, ra
                  srai         s5, s8, 28
                  xor          s7, s4, sp
                  addi         s8, t4, -499
                  xor          s9, a3, s9
                  xori         s11, t4, 1223
                  srai         t6, a5, 29
                  sra          s0, gp, tp
                  and          a5, zero, s4
                  srli         t5, a6, 26
                  srai         a0, s11, 23
                  addi         a4, zero, 495
                  auipc        a4, 18392
                  xor          s11, s9, s3
                  auipc        ra, 637912
                  xori         zero, gp, 2033
                  xori         s1, a2, -1034
                  srli         t3, sp, 31
                  xori         a3, tp, -551
                  sltu         t4, s4, s7
                  ori          gp, s2, 1519
                  add          sp, s8, s2
                  and          s1, a0, s6
                  lui          t5, 231690
                  lui          a5, 652946
                  ori          tp, a7, 1374
                  sub          zero, sp, a2
                  or           t1, s9, s0
                  andi         s0, s3, -1562
                  sll          s0, s11, a3
                  addi         s2, t3, 1995
                  sub          t3, ra, a4
                  slt          sp, a1, t4
                  sltiu        tp, s6, -1555
                  ori          t0, ra, 1020
                  ori          t0, t5, 1967
                  slt          gp, a1, a3
                  sub          s1, a4, a5
                  srl          t0, t0, s3
                  sra          ra, s4, a1
                  srai         a1, t5, 0
                  slli         a1, a5, 10
                  auipc        t0, 245232
                  xor          a5, t5, ra
                  xor          t6, s8, t5
                  srai         t0, s0, 15
                  auipc        sp, 812910
                  sra          s8, a1, t0
                  srl          s8, a0, a7
                  add          s0, sp, a2
                  add          t4, a1, s4
                  sltu         ra, s11, a5
                  ori          s8, s8, -1365
                  slli         a0, s11, 3
                  addi         s2, a6, 620
                  add          s5, a7, gp
                  slli         zero, t5, 19
                  add          a5, a3, s8
                  sltiu        s1, s9, -783
                  slt          a4, t4, a5
                  sltu         s1, a0, a0
                  ori          t2, tp, 1077
                  nop
                  sltu         s8, a0, a1
                  sub          t0, ra, t0
                  slti         a3, t3, -1439
                  add          s11, a7, a4
                  sll          ra, t5, a0
                  sra          a1, s11, t2
                  sra          t1, s5, a5
                  sltu         gp, s8, ra
                  slt          a3, t2, s1
                  sll          t1, t2, ra
                  andi         s9, s0, 1322
                  auipc        s0, 824628
                  sltu         s2, t1, ra
                  slti         t5, a0, 1657
                  sltiu        t3, s3, 1136
                  sra          s9, t1, a0
                  andi         s6, s9, -1432
                  sub          s1, s5, zero
                  xori         ra, a2, 1083
                  slli         t4, a0, 29
                  and          tp, zero, s1
                  add          s5, a2, s6
                  srli         tp, zero, 0
                  and          s1, s7, t4
                  addi         a4, s9, 311
                  or           s2, a3, s8
                  nop
                  sra          t2, s2, a3
                  and          zero, s2, s7
                  srl          a3, a7, a2
                  andi         a5, s11, 1980
                  sra          s4, a0, t2
                  xori         s7, s4, 1923
                  or           t3, gp, ra
                  srli         s1, t2, 27
                  slt          t4, s3, gp
                  sll          tp, t6, a7
                  ori          a2, t1, 1716
                  sub          s4, t0, s9
                  sra          a1, tp, a5
                  sra          s9, s0, a4
                  sra          s9, a1, t5
                  addi         t5, a4, 1961
                  andi         t1, t3, -1481
                  sra          t5, a6, s8
                  sltiu        t4, s7, 1425
                  or           s7, s0, a7
                  and          a4, s7, t5
                  lui          a2, 25354
                  srl          a1, ra, s7
                  sltu         s9, t5, gp
                  sltiu        t4, t1, 1764
                  slt          t5, s4, s5
                  or           a4, a0, s2
                  andi         t6, s4, -990
                  sub          s7, a5, a2
                  xor          t0, a5, sp
                  addi         t0, t6, -752
                  slli         zero, s5, 9
                  nop
                  xori         gp, a5, -838
                  slt          s5, t3, a1
                  srl          t5, t6, s4
                  ori          t2, a6, 563
                  addi         s2, ra, -1153
                  nop
                  srai         a2, s1, 25
                  and          a1, s3, a3
                  sltu         a6, a3, t4
                  xor          t3, s7, t0
                  ori          s11, t1, 841
                  sltiu        a0, s10, -1664
                  xor          t1, sp, zero
                  slti         t3, zero, 293
                  slli         s2, s5, 5
                  slti         t2, t3, 271
                  or           t1, s7, zero
                  srli         a2, a5, 28
                  sub          zero, s3, gp
                  auipc        a1, 1036509
                  xor          a0, a4, s5
                  srl          s11, s5, a5
                  srl          s11, a5, t6
                  slti         a2, t2, 1297
                  slti         sp, a0, 894
                  sub          t3, sp, a4
                  add          zero, s9, a2
                  or           t3, t0, s11
                  xor          a1, a4, a0
                  srai         ra, s10, 24
                  srl          zero, tp, t1
                  ori          s7, a5, -1679
                  xori         s6, s3, -835
                  ori          t3, t4, 1196
                  sll          s4, t4, s4
                  ori          t4, a4, -1309
                  sltu         t4, a4, a5
                  nop
                  and          sp, a5, gp
                  andi         t5, a6, -910
                  sra          t5, tp, a6
                  addi         t3, s5, -472
                  add          s7, s2, t2
                  andi         ra, s2, -1700
                  andi         t6, s1, 131
                  srli         zero, s5, 18
                  srai         a6, t5, 9
                  srai         s7, s5, 29
                  addi         s1, a5, 137
                  add          a0, s10, a2
                  sltu         a6, s4, a4
                  xori         t4, s0, 789
                  sra          s0, a4, s4
                  add          s9, t0, a7
                  xori         t0, s7, -603
                  add          s0, zero, tp
                  auipc        s0, 364478
                  sltiu        s1, s8, -796
                  sltu         t6, a7, a1
                  srli         a5, gp, 19
                  slti         s11, s8, -1637
                  srli         a6, a0, 22
                  slti         s6, t5, -1266
                  srai         zero, s0, 21
                  andi         s2, a3, 1727
                  sub          s4, t3, a4
                  slli         s5, s6, 31
                  or           a0, t5, a2
                  srl          s2, a0, s8
                  lui          s8, 293112
                  sra          a6, ra, a6
                  slli         s6, a0, 22
                  sltiu        s8, sp, -187
                  nop
                  sltu         tp, s5, s0
                  add          s6, zero, s0
                  nop
                  srl          zero, t6, gp
                  srli         a6, t0, 6
                  srl          tp, a7, a4
                  srli         t3, a4, 29
                  auipc        a6, 778976
                  xor          t0, a1, t6
                  slli         s5, a1, 0
                  auipc        s11, 643025
                  sltu         s8, a6, s2
                  add          t6, t2, s4
                  sll          s4, t3, t6
                  lui          t1, 681186
                  addi         t1, s8, -232
                  sub          a6, gp, t4
                  or           s0, tp, zero
                  andi         s6, tp, -53
                  sltu         s2, s10, t1
                  sltiu        s4, sp, 286
                  auipc        a3, 681154
                  lui          s4, 174147
                  sub          a5, gp, a3
                  sltiu        a4, zero, -257
                  sll          zero, t3, s8
                  sra          s1, zero, t0
                  sub          s6, s9, a3
                  slt          s11, s10, t1
                  sra          s9, a6, sp
                  nop
                  slt          s7, t2, s6
                  lui          a1, 332089
                  slti         t4, t1, -95
                  addi         a2, a3, -1077
                  andi         ra, a4, 835
                  srli         a6, s10, 28
                  srai         s6, a0, 20
                  sra          t5, t2, sp
                  ori          gp, a3, 612
                  addi         a3, a0, -1220
                  ori          s8, t3, 1452
                  addi         t1, t4, -861
                  sltu         s6, t3, t5
                  xor          s2, tp, s7
                  ori          a1, t3, 1213
                  slti         s6, t0, -1897
                  slti         t1, s6, -372
                  slt          a3, t3, a3
                  srli         t6, s2, 25
                  slli         s9, sp, 3
                  ori          t0, t0, -1276
                  srl          tp, s5, zero
                  xor          t5, a7, t3
                  andi         s9, s4, -1452
                  sll          s6, a0, sp
                  slli         s11, s3, 14
                  srli         a6, s0, 26
                  andi         s9, s6, 1704
                  andi         a3, s11, 1892
                  xor          s0, t1, s2
                  nop
                  lui          t5, 886853
                  lui          a2, 302349
                  slti         s0, s8, 1073
                  or           s7, t5, s4
                  sltu         s9, zero, s1
                  slli         t4, t6, 30
                  slt          s0, zero, s3
                  and          t1, s2, s6
                  xor          a3, t1, zero
                  srli         s4, a0, 10
                  xor          sp, zero, t3
                  sra          s2, t0, a3
                  nop
                  slli         a0, s10, 6
                  auipc        a3, 663661
                  lui          zero, 6836
                  or           gp, s4, s4
                  addi         t2, tp, -589
                  sltiu        s6, s10, 754
                  auipc        sp, 515384
                  lui          ra, 42215
                  and          gp, t2, s10
                  sltiu        a6, s5, 129
                  sltiu        a2, a6, -1464
                  lui          t4, 170864
                  xori         t5, t6, -1640
                  slt          t0, sp, a0
                  add          gp, s8, a6
                  nop
                  lui          s0, 577242
                  xori         gp, s10, -191
                  sll          t6, s6, a3
                  add          tp, t4, sp
                  ori          a6, a4, -1016
                  or           t4, a7, t1
                  sltu         a1, a3, a4
                  andi         s1, t2, 760
                  sub          a3, tp, t3
                  sltu         sp, a2, t6
                  sltiu        s11, a4, -553
                  lui          a5, 461483
                  sub          a5, s4, a1
                  nop
                  ori          t5, t2, 1258
                  or           s2, sp, s8
                  lui          a6, 1004193
                  slli         gp, a3, 31
                  sra          s6, s9, a1
                  sll          t4, s1, gp
                  srli         gp, a3, 1
                  nop
                  slli         t2, s3, 28
                  lui          s7, 934099
                  add          t5, s9, s7
                  slt          s8, a4, a0
                  andi         s2, a5, 1606
                  nop
                  lui          t3, 638091
                  xori         sp, a2, 573
                  xori         a4, ra, 369
                  xor          t5, s11, a3
                  or           s0, s0, a0
                  sub          s6, a2, zero
                  lui          sp, 56310
                  addi         s7, t3, 658
                  sra          s8, s6, t0
                  sll          a3, s7, ra
                  slli         s2, a6, 7
                  srai         a1, ra, 4
                  srl          zero, t6, ra
                  slt          a1, t3, s0
                  or           zero, t1, zero
                  and          a2, a0, s11
                  slt          s5, t2, sp
                  add          a5, s8, zero
                  and          a4, a4, t3
                  ori          s8, t0, 1209
                  xor          s7, s5, s7
                  xori         a1, s6, -749
                  sub          s5, s5, gp
                  add          zero, s3, t1
                  slt          s9, tp, a5
                  auipc        s8, 841648
                  sub          t6, t2, gp
                  sra          s6, s5, t4
                  andi         s2, s9, -550
                  lui          s5, 199206
                  xori         a5, t1, 2032
                  slti         t1, a3, 1622
                  srl          s2, t5, s7
                  xor          a6, s4, s11
                  or           t1, t2, a7
                  srai         tp, s8, 21
                  srai         a1, t0, 18
                  lui          t0, 499944
                  xori         t4, s8, -75
                  add          s9, t1, s0
                  or           s5, s0, sp
                  srl          a5, t2, s5
                  lui          s8, 958123
                  sltiu        s11, t6, -1807
                  or           t1, zero, t4
                  ori          a4, ra, -1600
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           s7, 0x80000000
                  li           t4, 0x80000000
                  li           ra, 0x80000000
                  li           a4, 0x0
                  li           s8, 0x0
                  li           t3, 0x80000000
                  li           s5, 0x0
                  li           gp, 0x0
                  li           sp, 0x0
                  sub          t4, s8, s7
                  sub          s5, t2, ra
                  add          s5, t2, s5
                  add          t3, t4, t2
                  auipc        s8, 55232
                  auipc        sp, 442776
                  addi         ra, t4, 1063
                  nop
                  add          t4, t2, gp
                  sub          s7, gp, t3
                  addi         t4, t3, 1888
                  addi         ra, t3, 210
                  sub          t2, t3, s8
                  addi         s5, s8, -1480
                  lui          s8, 535064
                  sub          sp, s8, sp
                  lui          s8, 85319
                  addi         t2, s8, -948
                  auipc        s8, 459556
                  sub          t4, ra, s7
                  add          t3, t3, t3
                  add          sp, a4, a4
                  addi         s8, t2, -537
                  addi         s5, s5, 1363
                  lui          s5, 813976
                  addi         ra, a4, 1458
                  nop #end riscv_int_numeric_corner_stream_5
                  xor          a1, a3, t0
                  srai         sp, a1, 16
                  xor          s4, s7, sp
                  sltiu        t0, s4, 1105
                  srli         zero, gp, 30
                  xor          s0, s2, t1
                  srli         t0, s1, 7
                  slt          s9, s8, zero
                  srl          a4, zero, s11
                  ori          t4, sp, -116
                  xor          a4, s9, a3
                  or           tp, s5, s7
                  sltu         a1, s3, gp
                  srli         a6, s5, 5
                  addi         s5, a1, 740
                  sltiu        a1, a6, 478
                  slti         s9, s5, -754
                  sltiu        s4, a3, 221
                  slti         gp, zero, 565
                  nop
                  add          gp, a5, a6
                  lui          s4, 547941
                  sltu         a6, a6, a6
                  slt          s0, s4, s9
                  sll          a5, zero, t6
                  xori         a5, s0, 679
                  addi         s2, sp, -1087
                  sub          a6, s0, t5
                  and          a0, a5, a0
                  sltiu        a4, s2, 1521
                  andi         s8, t0, 675
                  sll          t2, t3, s3
                  lui          a3, 775415
                  slti         a6, tp, -246
                  sra          zero, t3, t0
                  lui          s0, 801749
                  slt          s6, t0, s10
                  lui          s6, 707050
                  ori          t1, t4, -1033
                  sll          t4, s9, ra
                  slti         s8, s6, 541
                  addi         sp, t3, -1843
                  xor          s4, a5, gp
                  sll          s2, t3, s3
                  andi         s8, s8, 142
                  addi         a0, s4, -637
                  nop
                  or           t5, ra, a5
                  addi         s1, tp, -297
                  sll          s2, a0, t0
                  srl          a5, t3, a5
                  srl          s4, zero, t4
                  andi         zero, s11, 745
                  ori          s9, s0, 1730
                  andi         a3, a5, 1584
                  sll          ra, a4, s2
                  addi         a0, s5, -1390
                  sltiu        t3, a0, -268
                  sltiu        s11, s1, 1397
                  sll          s11, s10, t5
                  xori         a2, t2, 1262
                  srl          ra, s8, sp
                  sltu         ra, t4, s3
                  sub          a5, a0, ra
                  slli         a0, t6, 28
                  or           s11, a4, a5
                  addi         s1, sp, 1712
                  srli         s1, s9, 7
                  lui          zero, 421798
                  nop
                  sll          t5, t0, t0
                  srl          a0, t3, a4
                  srli         s7, a1, 22
                  nop
                  srli         a1, a7, 1
                  ori          a0, a5, 1957
                  auipc        s0, 19146
                  xor          t2, a7, s4
                  lui          a5, 1027510
                  slti         gp, t4, 1949
                  slli         a6, s2, 10
                  auipc        sp, 139896
                  sub          s9, a4, s6
                  andi         t0, a7, 1353
                  slti         ra, tp, -1932
                  lui          s4, 840006
                  nop
                  auipc        t1, 963073
                  sll          s9, s9, t6
                  andi         s4, s3, -675
                  or           tp, zero, t3
                  nop
                  sra          s8, s4, a6
                  xori         t4, sp, 376
                  sll          tp, s5, t2
                  add          a4, s10, s10
                  sll          s11, s2, s1
                  srl          s11, s3, a6
                  andi         s9, t0, 1841
                  srai         s6, t5, 13
                  sub          s7, t6, t0
                  srl          s7, s2, a4
                  andi         s7, a5, 1409
                  and          a2, s6, s7
                  ori          t1, t2, -1348
                  slli         s8, s3, 26
                  srli         s7, t1, 31
                  ori          t0, t6, -672
                  ori          s0, ra, -506
                  sub          s11, a7, t4
                  srli         a5, a3, 0
                  auipc        s9, 522139
                  or           s7, zero, t5
                  or           t3, s4, s5
                  srli         s0, s9, 16
                  slt          t0, t2, a6
                  sra          sp, s4, s9
                  ori          t4, s8, 973
                  add          a5, s4, t2
                  srli         s11, zero, 27
                  slti         t3, a1, 1729
                  xor          a3, s6, s3
                  xor          s8, t0, sp
                  auipc        s5, 935122
                  ori          t5, t6, -277
                  auipc        tp, 357776
                  sll          tp, s9, s3
                  andi         s9, s10, 2007
                  slti         ra, a6, 376
                  or           a3, zero, s6
                  or           s4, a2, a0
                  srli         t2, s7, 7
                  and          a0, a2, s9
                  slt          s9, a1, t2
                  sltu         s9, s3, s3
                  xor          zero, t5, t6
                  auipc        s1, 173878
                  slti         a4, a3, -170
                  sub          a2, t1, s8
                  xor          sp, a2, ra
                  sltiu        s0, ra, -607
                  auipc        s0, 548035
                  auipc        s9, 712323
                  xori         t4, a5, 1689
                  srl          s5, gp, s2
                  sub          ra, a4, s0
                  srai         s9, tp, 5
                  sra          s6, t3, s6
                  auipc        a1, 888740
                  sltiu        s9, t6, -1602
                  sltu         t3, a2, sp
                  add          s2, t3, t2
                  sltiu        a5, a6, 747
                  srai         t3, a7, 1
                  sll          t6, a2, a0
                  nop
                  srli         a3, a3, 4
                  slt          a2, a6, a6
                  srli         s7, s11, 3
                  sltu         s8, s6, a1
                  xor          s11, a7, t5
                  sub          s8, a0, a4
                  slli         a5, t6, 23
                  lui          s5, 198671
                  sra          a4, t5, s8
                  srai         a0, t3, 2
                  and          a6, s8, s11
                  sll          a1, a7, a5
                  sltiu        s7, s7, 60
                  slt          ra, a7, s8
                  sll          t4, a7, s2
                  lui          t0, 827465
                  auipc        sp, 769611
                  sub          tp, s7, a6
                  slli         t4, t3, 8
                  srl          s6, s7, t4
                  lui          t2, 329894
                  sltu         a1, s8, s1
                  srl          a0, t4, s3
                  auipc        sp, 8630
                  xori         a5, a4, 1538
                  slt          a6, a5, t1
                  sltu         s5, s6, a5
                  auipc        t5, 98662
                  addi         tp, s2, -1592
                  sltiu        s1, s10, 1591
                  auipc        a0, 735298
                  auipc        sp, 1950
                  lui          s7, 386470
                  addi         zero, tp, 1516
                  andi         t0, s3, 1948
                  slli         s5, s6, 26
                  add          s6, t5, t1
                  nop
                  xori         a0, sp, -1547
                  addi         s9, a7, 543
                  sra          a1, s2, sp
                  sub          s4, a5, s0
                  srai         s11, a3, 19
                  ori          s1, a5, -1448
                  sltu         s1, s10, t2
                  sltiu        a3, s8, 479
                  srai         t0, t0, 13
                  andi         s1, s0, 285
                  add          sp, s9, a1
                  slli         a4, s8, 18
                  srai         s9, a5, 24
                  andi         a1, t0, -1766
                  sra          tp, tp, s8
                  xori         a5, s5, 1875
                  add          s8, a1, s9
                  sltu         gp, s6, a4
                  sltiu        s7, a7, -1721
                  xor          zero, t1, s10
                  add          s1, s11, a7
                  xori         s5, s0, 1654
                  srl          a0, s9, a0
                  slli         s1, t1, 23
                  or           t1, a2, s4
                  and          s8, t4, tp
                  xor          t1, s5, t6
                  ori          ra, a2, 1896
                  auipc        zero, 543003
                  sll          s5, zero, s10
                  srl          t1, s11, s3
                  add          ra, a2, t3
                  add          s0, s8, a2
                  sub          s4, a4, t5
                  xori         s7, s3, -1223
                  sub          a3, sp, tp
                  or           a2, t0, s5
                  slti         t0, a1, -1527
                  sra          s6, a4, s0
                  xor          s9, s11, s0
                  xor          zero, s11, s8
                  and          s8, s6, t1
                  add          ra, t1, tp
                  xor          t1, t5, s4
                  slli         s5, a5, 19
                  or           s8, s6, sp
                  sra          a4, s2, s9
                  slli         s1, s4, 12
                  sltiu        s11, t2, 1669
                  ori          zero, zero, 1402
                  srai         s8, s7, 6
                  srl          a5, s10, a7
                  srli         s11, s9, 12
                  srl          s4, a1, s3
                  and          sp, s10, t5
                  auipc        s5, 503251
                  addi         s7, t0, 1727
                  or           ra, t4, t2
                  andi         s8, a2, 1458
                  and          a4, a3, a4
                  sub          a3, a2, s2
                  nop
                  sltu         tp, a3, a5
                  xori         gp, a6, 605
                  or           a0, s6, sp
                  add          s2, s0, a6
                  srl          s6, t4, t3
                  srl          s8, t5, t0
                  andi         s2, a3, -1524
                  sltiu        a1, a6, -1990
                  srai         t3, a3, 30
                  srl          zero, a7, s5
                  auipc        s11, 636827
                  sltiu        s1, s5, 705
                  sltiu        s5, s2, 37
                  sll          a2, ra, a1
                  srai         gp, s6, 13
                  sll          t2, t5, s1
                  slt          a6, sp, a7
                  andi         t6, s7, 41
                  and          t5, t2, s4
                  and          zero, s10, t1
                  and          s5, a1, t0
                  sltiu        a1, a7, -2018
                  slti         t0, s3, 1385
                  and          t4, sp, t2
                  add          s7, ra, a4
                  sra          t6, t1, t6
                  srli         s5, tp, 18
                  xor          s2, s8, gp
                  sll          s2, t3, t4
                  slt          s11, a3, t2
                  sra          ra, t5, t6
                  addi         sp, s11, -871
                  srli         t6, t5, 26
                  sltiu        s6, s1, 1
                  xori         t4, a7, -1078
                  slli         a6, s11, 4
                  nop
                  xori         s9, s7, -1713
                  or           t6, a1, ra
                  auipc        t0, 771732
                  sltu         t4, a5, a4
                  slli         a3, s6, 9
                  or           a3, s7, gp
                  srli         s0, ra, 29
                  xor          s5, a7, a3
                  nop
                  sltu         t0, s11, t6
                  srl          t6, zero, a4
                  auipc        a4, 169859
                  addi         a0, a1, 1791
                  nop
                  add          zero, s3, sp
                  nop
                  addi         t1, s9, 364
                  lui          s8, 622013
                  auipc        a6, 918506
                  sub          a2, t3, t1
                  xor          t6, t0, a0
                  or           a1, t4, a7
                  andi         s6, s5, -1419
                  srl          s8, t6, a7
                  slti         tp, a5, 1699
                  add          t1, a5, a0
                  lui          s11, 904431
                  xori         a0, s6, -177
                  add          a2, tp, a5
                  sltu         zero, a5, t4
                  xori         s8, t5, -743
                  auipc        s4, 748654
                  srl          t3, s2, s6
                  or           t0, s3, t6
                  sub          t1, a7, s7
                  addi         tp, a0, 919
                  andi         sp, t0, 940
                  nop
                  lui          t6, 847539
                  xor          s2, s3, tp
                  srai         s7, s3, 12
                  srl          a5, zero, gp
                  or           a3, a5, a3
                  auipc        t1, 915609
                  xor          a3, a2, sp
                  srai         s0, s5, 8
                  sltiu        a2, a7, -1382
                  slt          s0, a7, zero
                  xori         a6, t2, -1643
                  auipc        ra, 763803
                  slt          a4, s7, gp
                  and          t1, a7, a1
                  srai         s5, ra, 4
                  xori         s5, t0, 1257
                  slli         s11, s1, 2
                  lui          s5, 697843
                  ori          t1, t3, -1435
                  sll          a0, s1, s6
                  lui          s7, 459447
                  sra          gp, a3, s3
                  ori          s6, t5, -1845
                  sltiu        a6, a3, -1901
                  slti         s2, sp, -1409
                  addi         s7, ra, -1356
                  or           t0, s0, a3
                  lui          a5, 309791
                  xori         sp, t3, 1055
                  auipc        a3, 544935
                  sltiu        s6, s5, 36
                  srai         a6, s10, 20
                  slt          a6, s10, t1
                  or           a2, tp, a7
                  andi         s1, zero, 257
                  or           t1, t6, t4
                  sub          s6, s2, a2
                  auipc        a5, 599163
                  or           t1, s5, a6
                  add          s7, s2, a5
                  slt          tp, t5, s0
                  addi         t5, a5, 1126
                  srl          s4, a2, s8
                  srli         a0, a3, 14
                  and          zero, s5, s9
                  andi         sp, a2, -1809
                  slli         s8, s3, 21
                  nop
                  sltu         s5, zero, gp
                  srli         t1, s1, 19
                  addi         a6, a1, -1068
                  sll          zero, gp, t1
                  addi         t4, a1, 1728
                  ori          t2, ra, -224
                  srl          gp, a7, s0
                  or           s9, t0, s2
                  sll          s8, s6, t3
                  auipc        tp, 857061
                  add          t4, a7, zero
                  slt          a0, a0, ra
                  slt          a4, t4, t2
                  nop
                  sll          a4, a7, a6
                  add          a0, a7, s4
                  andi         s6, sp, -1768
                  lui          t2, 1003238
                  and          s9, a0, t6
                  andi         s5, tp, -20
                  slti         a5, s7, 1518
                  srl          sp, t3, a5
                  slt          ra, s7, t3
                  and          tp, s2, a2
                  slt          s11, a6, t5
                  sra          s9, t1, t6
                  addi         t0, t6, -1514
                  ori          s6, t4, -1996
                  andi         t1, s10, 714
                  or           s5, a2, s2
                  srli         s6, t1, 21
                  andi         s2, tp, 763
                  srl          t5, zero, a4
                  slt          s2, s5, a7
                  slti         a5, s1, -1917
                  addi         s5, t6, -171
                  sll          a5, a7, tp
                  sll          t2, zero, t3
                  sltu         t6, ra, a3
                  sub          t4, s1, s1
                  slt          sp, s0, t3
                  srai         a5, s11, 31
                  xori         a0, s1, -284
                  auipc        a0, 802581
                  andi         t4, a3, 1375
                  auipc        s8, 365548
                  auipc        a5, 370296
                  addi         s2, s2, -1617
                  ori          gp, ra, 1281
                  xor          s2, s10, a0
                  sltu         a3, s11, a4
                  slli         a5, s9, 6
                  slti         s7, a3, 2015
                  auipc        ra, 474814
                  xori         a2, a3, 276
                  auipc        t5, 337897
                  sltu         s0, ra, s0
                  srl          zero, t2, a3
                  slti         ra, gp, -1818
                  xor          a4, a2, a4
                  or           t1, s11, t0
                  add          s2, t1, gp
                  and          s0, ra, t6
                  srl          s11, a5, a6
                  auipc        s0, 550596
                  auipc        t1, 308043
                  xori         zero, a2, 1060
                  srai         s6, t3, 17
                  xori         s5, a1, -132
                  sltiu        t0, s9, -84
                  sra          s0, t6, t3
                  slt          a1, a0, s3
                  nop
                  andi         s1, s6, -165
                  sra          s1, ra, s7
                  sra          ra, gp, gp
                  ori          a2, a4, 681
                  xor          t1, t6, a1
                  sltu         s8, zero, a3
                  sub          t1, t3, ra
                  sltiu        gp, s8, 1309
                  srl          ra, a1, t0
                  addi         gp, sp, 312
                  sra          tp, s0, gp
                  ori          s5, s7, -87
                  slli         t3, s0, 31
                  and          tp, s11, a6
                  slli         t6, s5, 14
                  slti         t1, zero, -944
                  sltiu        t2, t1, -1933
                  sltu         a4, t6, t6
                  or           s2, zero, a4
                  andi         zero, a7, 582
                  or           a6, s9, s8
                  andi         s4, s4, 1147
                  slti         zero, zero, 1271
                  slti         s11, t2, 1477
                  srai         s2, t0, 7
                  or           a6, s7, tp
                  srai         t1, t0, 1
                  slti         sp, s6, -1926
                  sub          t1, s5, t5
                  slli         ra, s3, 21
                  sub          t4, t0, t4
                  auipc        s0, 459740
                  and          t1, s3, s3
                  xor          t1, a5, sp
                  or           a3, s1, s5
                  auipc        s9, 898706
                  slt          a6, s7, tp
                  lui          tp, 921999
                  sll          a5, t6, a4
                  sltiu        a6, a5, 458
                  add          s0, t6, a6
                  sll          a6, a3, t1
                  andi         t3, s8, 379
                  srl          sp, t3, t3
                  andi         gp, s5, 570
                  ori          a1, a5, 1357
                  sll          s11, t6, s2
                  auipc        s6, 954062
                  srai         a0, a5, 16
                  sub          t4, s2, a3
                  nop
                  and          t6, t4, zero
                  srai         a4, a2, 24
                  srai         a5, s9, 9
                  sltu         gp, tp, a3
                  ori          t4, a5, -285
                  auipc        a3, 133298
                  nop
                  xor          t3, t6, s1
                  add          s0, t2, a1
                  auipc        gp, 987081
                  sltiu        t2, tp, 1435
                  srai         a2, s10, 31
                  or           a5, s2, s11
                  sll          t6, s4, t4
                  andi         a2, t5, 659
                  lui          zero, 226707
                  addi         s4, s5, 1381
                  sltu         ra, s1, t6
                  sltiu        s0, s6, 1702
                  lui          t2, 170527
                  xor          s11, s4, a1
                  sltu         zero, s4, t1
                  add          t2, t1, a1
                  srai         t1, ra, 26
                  sltu         sp, s8, a2
                  addi         t1, ra, 727
                  slli         gp, t2, 16
                  auipc        s6, 830801
                  sltu         s0, zero, s7
                  slt          s4, s3, gp
                  sll          s7, t4, a4
                  nop
                  slli         s8, t5, 18
                  xor          s11, s8, t0
                  xor          a6, s7, t6
                  sra          t4, t0, a1
                  xor          a3, s8, t1
                  xori         s5, s5, 1149
                  slti         s9, t4, 1197
                  slt          a2, t1, s2
                  slti         s1, a6, 1150
                  or           zero, a0, t6
                  slti         t4, s3, -1842
                  auipc        a0, 243528
                  slli         t2, s2, 12
                  srli         sp, a4, 10
                  andi         a1, s10, 1620
                  sub          s2, s9, s3
                  sll          a5, a2, a7
                  sub          s4, s5, gp
                  srl          t1, a6, a7
                  srli         a3, a3, 15
                  or           s1, tp, s5
                  andi         s4, tp, 2032
                  srl          s1, t5, a7
                  srl          a3, s10, s5
                  sltu         t0, sp, s9
                  xor          t3, s9, sp
                  srl          t6, s11, s1
                  auipc        t6, 920448
                  slli         s9, s7, 22
                  nop
                  slli         t2, t0, 8
                  sltu         zero, s0, s2
                  and          s5, a2, a0
                  sltiu        gp, s10, 1786
                  slti         s1, ra, 1868
                  andi         a5, a0, 1757
                  sltu         s0, s11, a1
                  nop
                  andi         s8, a4, 542
                  sub          s6, a4, s10
                  add          t1, s1, a1
                  slt          s11, s6, a6
                  ori          a0, tp, -1485
                  nop
                  or           a2, a4, t2
                  srai         a1, a6, 6
                  xor          s4, tp, t0
                  lui          a0, 792793
                  lui          t3, 390351
                  addi         s4, s8, -136
                  or           s6, a0, a3
                  sub          s9, s0, t0
                  sltiu        tp, s6, 1896
                  add          s9, a4, a0
                  slt          t2, t6, t4
                  slli         a3, s3, 22
                  sltiu        t0, s9, 1297
                  srai         a6, ra, 26
                  sltu         ra, t5, t4
                  slt          s4, a3, a1
                  lui          t5, 571023
                  srli         sp, t2, 24
                  slti         t5, t5, 273
                  sub          ra, s0, gp
                  srl          s1, s8, ra
                  nop
                  lui          zero, 683437
                  add          a3, gp, s2
                  sll          s8, t6, t4
                  auipc        t4, 385040
                  sll          a1, s1, s9
                  srl          a5, s10, ra
                  srl          a4, s10, a3
                  slti         tp, a7, -1017
                  xori         sp, a1, 588
                  sra          a0, a3, s3
                  srli         a1, s4, 29
                  add          a5, s8, s3
                  sltu         s4, t3, a5
                  srl          sp, s11, s10
                  srl          t1, s0, t6
                  andi         s0, s11, 1320
                  or           t6, t1, sp
                  ori          ra, s8, -1846
                  srai         s5, a3, 2
                  addi         t6, sp, -1837
                  add          t3, s8, s3
                  auipc        s7, 849287
                  andi         a1, a4, 1828
                  or           a1, s7, s8
                  add          sp, s3, s2
                  auipc        a6, 134618
                  and          s4, a3, a7
                  ori          a3, s6, 77
                  and          a2, a1, gp
                  andi         t1, t2, -505
                  ori          t1, s9, 793
                  slt          sp, s3, s8
                  ori          s2, a7, 1304
                  addi         tp, t0, 655
                  ori          ra, s4, 418
                  auipc        gp, 608275
                  slli         gp, s0, 13
                  srl          s7, t2, s10
                  or           s6, ra, s1
                  sltu         s1, s11, sp
                  slti         a0, t5, 418
                  lui          s11, 875409
                  lui          a1, 377701
                  lui          t4, 138328
                  sra          s2, sp, t2
                  sll          s4, s8, s4
                  xor          tp, s2, sp
                  xor          tp, s0, s8
                  srai         gp, s4, 24
                  srl          ra, s2, a3
                  auipc        s2, 370685
                  nop
                  sub          s0, t4, a3
                  sll          s1, t1, a4
                  srli         s5, s8, 9
                  srli         s6, a6, 11
                  sra          a5, s4, t1
                  ori          sp, s6, -1350
                  xor          a0, s11, s4
                  srli         a1, s8, 28
                  sltiu        s0, s9, 541
                  slti         t6, t1, -1898
                  sll          sp, a5, a0
                  srli         t0, t4, 11
                  slli         s1, t5, 4
                  sltu         s4, a7, tp
                  sltiu        a3, s11, 1951
                  andi         s6, tp, 533
                  addi         a1, gp, -684
                  sub          t1, sp, a6
                  and          sp, s0, t5
                  sll          a0, t4, t0
                  sll          zero, a4, s1
                  slt          s1, gp, s0
                  xor          s0, t0, s0
                  srli         s9, t1, 8
                  sub          t3, a5, a0
                  sra          s4, s1, s5
                  andi         t2, s7, 1521
                  slti         t6, a6, -1188
                  srai         a1, a0, 7
                  ori          t3, t5, -992
                  xori         s1, a6, -1001
                  ori          t5, s1, 1398
                  sltu         s6, t5, t6
                  slt          a3, a6, a2
                  slti         ra, gp, 1395
                  xor          tp, s0, s3
                  lui          t5, 41513
                  slti         t0, s1, -373
                  ori          a3, tp, 206
                  sltu         s0, a1, ra
                  srl          a6, t5, a5
                  nop
                  sltu         s4, s3, a4
                  or           a6, tp, s7
                  srl          s0, tp, s6
                  sltu         s8, gp, gp
                  and          a2, a6, s7
                  auipc        a0, 835050
                  sub          s2, gp, t3
                  and          s2, a5, t2
                  slti         t3, a2, -40
                  slt          t5, s3, t0
                  sltu         a2, s10, a3
                  slli         a1, t0, 4
                  addi         a1, t0, 1
                  srli         s4, tp, 1
                  sub          s5, t4, t2
                  or           a2, s6, t3
                  srli         s0, s3, 0
                  ori          gp, a0, 649
                  and          s0, t1, s4
                  sltu         a6, s2, t2
                  srli         sp, s8, 24
                  srai         a2, a5, 29
                  slli         t3, s9, 6
                  sll          a2, a5, s11
                  xor          a1, a0, a5
                  srai         sp, s9, 23
                  sltiu        s5, s5, -1860
                  addi         s0, s7, 735
                  sltu         s6, a6, s9
                  slti         a4, t5, 2047
                  sra          s8, t3, t4
                  andi         a5, t0, 1102
                  andi         s5, s7, 1874
                  nop
                  srl          t2, s8, a7
                  auipc        t5, 676848
                  add          s6, a3, a0
                  sra          s0, a6, t2
                  auipc        a0, 454356
                  sub          t6, t3, tp
                  sll          t4, gp, t5
                  sltu         t6, t6, s7
                  sub          a3, t5, a7
                  ori          s2, a1, 1259
                  srl          s2, s8, s0
                  ori          a3, a2, 1262
                  srli         ra, s6, 30
                  ori          a2, a5, 1240
                  srli         t1, s0, 5
                  nop
                  auipc        gp, 230897
                  sll          a1, gp, t0
                  sll          a1, tp, s10
                  ori          tp, t5, 752
                  xor          t0, s5, s1
                  or           t0, sp, tp
                  auipc        s0, 427444
                  sra          s9, t3, tp
                  or           t1, t4, s2
                  nop
                  and          t3, t6, t5
                  addi         t1, ra, -1017
                  sra          sp, s11, s8
                  slt          gp, ra, a2
                  srli         zero, a2, 20
                  auipc        s5, 986297
                  xori         s5, a0, -1714
                  sra          sp, s3, s10
                  sra          a0, s10, s11
                  nop
                  slli         t4, t5, 8
                  srli         tp, s10, 21
                  xor          t1, ra, gp
                  or           a1, sp, t1
                  or           t6, a4, a0
                  auipc        t5, 337483
                  or           t6, sp, t0
                  ori          s11, s3, -1237
                  sll          gp, t3, t1
                  or           a0, a6, zero
                  auipc        t2, 448301
                  xor          t0, tp, t4
                  xori         ra, a3, 928
                  addi         s4, a6, -619
                  add          s2, a4, s6
                  xori         gp, a6, -1778
                  add          t3, s3, s10
                  sltiu        t5, gp, 1665
                  slt          s0, s7, s10
                  sra          t3, s9, tp
                  or           s2, s2, s4
                  srli         s6, a2, 30
                  auipc        s4, 266039
                  xor          a1, a5, s1
                  sll          t2, ra, s11
                  srli         s9, a4, 10
                  and          t2, s3, s10
                  add          gp, s3, s5
                  srl          s8, s11, s1
                  addi         a6, ra, 817
                  auipc        a1, 196736
                  auipc        a2, 935738
                  srai         s2, t3, 19
                  slti         t1, t1, -1458
                  sltiu        tp, tp, 1739
                  ori          s11, tp, 698
                  add          t5, sp, t1
                  xor          a4, a4, s5
                  sltu         s4, t0, t3
                  or           a5, sp, s1
                  srli         s7, s7, 8
                  ori          s4, s6, 411
                  add          s11, ra, s1
                  sltu         sp, ra, a3
                  add          s7, a7, t3
                  and          s2, s8, a5
                  xor          a6, s2, a4
                  addi         gp, a7, -1825
                  slli         t6, t5, 0
                  sltiu        a3, a5, 947
                  slli         s4, a6, 15
                  xori         s4, s5, 406
                  sltiu        a6, a6, -266
                  xor          t3, zero, s8
                  xor          t3, s7, tp
                  xor          a2, t5, a0
                  addi         t2, s2, -1750
                  and          t4, t4, sp
                  andi         a3, a6, 1323
                  and          s2, t2, a5
                  sltu         t3, a5, t4
                  or           a5, t2, zero
                  slli         zero, a1, 7
                  srai         a1, s4, 2
                  and          a6, s4, s2
                  lui          s4, 788528
                  nop
                  sltu         s6, a3, tp
                  slli         t6, a1, 27
                  sltiu        a2, a6, -488
                  andi         tp, s2, -779
                  srl          zero, s9, s4
                  srai         t0, a7, 21
                  addi         tp, s4, 493
                  or           gp, a0, t3
                  sltu         s8, s10, t6
                  auipc        a5, 115099
                  slli         t3, s7, 27
                  nop
                  lui          t2, 132128
                  srai         s2, zero, 2
                  sltiu        s4, t4, -1117
                  xori         a0, s1, 1851
                  lui          gp, 601145
                  srai         a5, s9, 30
                  srai         s5, a7, 20
                  slt          a5, s7, s11
                  and          t6, t2, ra
                  sltiu        a3, gp, -70
                  sra          a2, t5, s8
                  sltu         a1, s8, a4
                  sra          tp, a6, t2
                  or           a1, t2, t6
                  xori         s8, a1, -417
                  nop
                  ori          a5, s6, -1648
                  ori          s4, s6, 1964
                  xori         a5, s9, 157
                  add          s4, s4, s1
                  slti         s8, a5, 1419
                  sltiu        gp, gp, 1190
                  lui          zero, 973784
                  sltu         gp, t3, s8
                  andi         a0, s4, 1178
                  auipc        t4, 649574
                  auipc        a3, 341461
                  auipc        a6, 228666
                  andi         a3, a4, 99
                  and          s9, s6, s8
                  or           sp, s2, s6
                  slt          t0, t2, a1
                  srai         t5, a1, 15
                  sltiu        a5, a0, 285
                  andi         zero, s6, 1445
                  sra          a3, t0, zero
                  xor          s8, sp, a5
                  xor          ra, ra, t5
                  sltiu        a2, s0, -1476
                  auipc        s2, 6548
                  xor          s8, s7, t2
                  sub          s11, s5, s4
                  slt          s2, t0, t0
                  sub          t3, s2, s6
                  srai         a2, a6, 25
                  lui          t2, 257824
                  sub          t2, ra, tp
                  srai         s9, a2, 15
                  xori         a5, s1, -1220
                  srl          s11, t2, s6
                  sltiu        t5, tp, 636
                  xor          s9, s5, s1
                  lui          sp, 447476
                  and          s9, ra, t0
                  ori          t0, s4, 437
                  sltu         s6, t5, t5
                  sltiu        a3, s5, -747
                  auipc        zero, 1031094
                  add          s0, s10, s8
                  and          sp, a5, s8
                  auipc        a5, 808080
                  lui          a1, 713084
                  slli         a5, a1, 19
                  slt          a1, t4, a5
                  srai         tp, s7, 18
                  or           a6, t1, a4
                  slt          ra, s5, gp
                  xor          s4, a4, a3
                  ori          t2, t3, -1176
                  srai         s7, s1, 20
                  srl          a4, s10, s9
                  xor          t6, t5, a7
                  addi         t6, t0, 914
                  lui          ra, 73533
                  srai         s4, s0, 20
                  srai         a5, s7, 10
                  or           s2, s2, s5
                  xori         sp, s2, 2007
                  sltu         s0, zero, s4
                  srl          tp, a7, t1
                  lui          s9, 562435
                  or           s11, a6, t1
                  auipc        sp, 62639
                  andi         a0, tp, -1880
                  srl          s7, sp, s6
                  sltu         s0, a1, t5
                  srai         s2, s5, 7
                  sltu         s4, sp, a0
                  slli         t1, gp, 27
                  ori          a3, ra, -570
                  or           a5, s3, s9
                  sll          a2, a1, s8
                  slt          a1, t1, t3
                  sub          s7, s1, s1
                  slli         s7, a2, 23
                  slt          s2, s0, s10
                  sltiu        t1, ra, 1556
                  sltu         s9, a7, t6
                  slli         s11, gp, 7
                  and          gp, zero, zero
                  sra          t6, s8, sp
                  auipc        a0, 764004
                  sub          s8, a1, ra
                  add          s8, s6, s4
                  ori          s0, t4, -1547
                  slti         a1, tp, -1384
                  srl          gp, s10, t3
                  sltiu        s9, t5, 1400
                  slt          sp, t5, s6
                  sub          s6, a0, s0
                  slli         a4, a6, 21
                  slti         t4, a6, 1231
                  xori         a6, a2, -1679
                  or           a3, s6, s8
                  add          s2, s6, t6
                  srli         a2, s7, 15
                  sub          zero, sp, t2
                  addi         t1, s2, 1934
                  and          zero, s5, s6
                  slt          t1, a2, s9
                  auipc        t6, 117395
                  xori         s9, gp, -1495
                  xori         s6, a3, 491
                  srl          s6, a0, s11
                  sub          s1, t3, s10
                  srl          a1, tp, sp
                  addi         t1, zero, -819
                  andi         s11, tp, 1688
                  and          s8, a0, s0
                  sltu         s0, s8, s9
                  slti         s4, zero, 937
                  srl          s11, sp, s6
                  ori          a4, t3, -988
                  sra          s5, s5, s7
                  srli         t2, s7, 7
                  sra          t5, zero, s9
                  auipc        s6, 551045
                  slti         tp, zero, 1753
                  auipc        tp, 997859
                  auipc        t5, 748569
                  sub          tp, t1, ra
                  sub          a6, t4, a2
                  auipc        a5, 436864
                  lui          zero, 865491
                  sltiu        tp, zero, -845
                  ori          s8, s0, -695
                  addi         t3, t5, -1331
                  sub          s4, s2, t0
                  sra          a0, s1, zero
                  slt          s9, a2, s5
                  lui          t1, 30647
                  slli         a5, t5, 20
                  sltu         s8, tp, a6
                  srl          s4, s9, s3
                  nop
                  auipc        t0, 847602
                  sub          s6, a6, t1
                  andi         a0, t2, -1175
                  sll          tp, s4, s4
                  or           sp, s4, sp
                  srl          t5, t6, s10
                  xor          s5, s10, s9
                  xor          t3, s3, s1
                  andi         s6, s3, 1958
                  srl          t1, t3, s5
                  lui          s8, 145713
                  lui          s11, 1032931
                  add          s9, a6, a3
                  slti         s9, s9, -270
                  addi         s9, s2, -2043
                  and          gp, t4, t4
                  slli         s11, a7, 18
                  sll          a6, a7, t0
                  srai         zero, s1, 21
                  ori          t1, a3, 532
                  lui          s4, 777860
                  srl          t6, t6, t2
                  or           t1, s11, ra
                  sub          t4, s5, a1
                  srli         a3, sp, 19
                  add          zero, t2, s1
                  sltiu        t5, s4, -83
                  slli         s2, t3, 20
                  addi         t2, s6, 330
                  slt          t2, t1, a5
                  or           ra, a0, ra
                  sub          t5, a5, s5
                  addi         t2, t0, 593
                  srl          gp, a3, sp
                  or           t4, a1, a6
                  srl          t2, s5, a0
                  xor          a1, a3, a3
                  slt          s1, t1, t2
                  add          t3, t6, s0
                  auipc        a5, 324651
                  lui          t4, 603610
                  or           s4, s0, a6
                  xor          s6, a5, s7
                  slti         a2, s7, 1388
                  nop
                  slt          a4, s0, a7
                  xor          s5, s8, s5
                  lui          a0, 850067
                  srai         ra, a2, 5
                  nop
                  srli         a0, s7, 5
                  add          t5, t1, a5
                  sub          sp, t6, gp
                  auipc        t2, 326370
                  and          a5, s4, zero
                  ori          s8, t0, -1674
                  sra          a1, s2, s7
                  slt          s11, s9, s11
                  xori         s9, s9, 1380
                  sll          tp, a4, tp
                  sra          t1, a4, t0
                  srai         a5, s5, 9
                  andi         s4, t5, -415
                  addi         a3, t1, -1942
                  slti         s2, t2, -646
                  sub          s8, tp, tp
                  sltu         s0, s10, a1
                  auipc        a4, 25036
                  srai         s5, s11, 5
                  xori         zero, a6, -292
                  sll          t4, s0, s5
                  and          a1, s8, s0
                  add          t6, a3, s5
                  slli         a3, s0, 23
                  ori          t6, s11, 216
                  sll          t4, t6, a2
                  sub          a4, s7, t0
                  auipc        gp, 968720
                  lui          s11, 610724
                  srai         t0, s2, 12
                  sltiu        a5, a5, 1823
                  srl          s0, tp, s11
                  srli         sp, a6, 31
                  or           tp, a5, a0
                  srli         t3, t6, 24
                  sltu         t3, a5, a7
                  andi         s4, t5, 862
                  lui          sp, 995335
                  xor          t3, t3, ra
                  and          s9, a5, t5
                  slt          t3, t6, s5
                  slti         s6, s8, -409
                  sra          t6, s1, t4
                  sltiu        a5, s2, -171
                  and          s4, a5, s0
                  sltiu        s6, t5, -1264
                  srli         sp, ra, 20
                  srli         a5, s10, 31
                  sra          gp, a7, zero
                  sltu         a4, s2, a4
                  sub          a6, a5, a6
                  srli         a5, s0, 9
                  and          gp, a2, s1
                  andi         s9, a1, -814
                  sra          a2, a7, s9
                  add          s8, a0, t0
                  slt          t1, a4, t1
                  lui          a5, 934282
                  addi         s6, s0, -1637
                  and          ra, t3, zero
                  sltu         s7, s2, a2
                  andi         s5, t0, 1020
                  sltiu        sp, s0, -1577
                  sltu         t2, a7, a2
                  and          t1, s2, t3
                  ori          s6, a3, -1565
                  sltiu        ra, s5, -631
                  sub          s0, tp, a2
                  srai         sp, t3, 15
                  and          gp, s10, a0
                  or           s1, sp, s4
                  sll          a6, a7, s9
                  srai         ra, s9, 31
                  srl          ra, s6, t2
                  srl          s1, t6, a6
                  sra          t4, t6, a0
                  srli         t0, a7, 5
                  or           t0, s9, t1
                  xor          s0, a5, s10
                  or           s0, t1, t5
                  sltu         t0, t1, s1
                  xori         t4, a0, 1865
                  srl          t4, s6, t4
                  srl          t5, t5, s1
                  slt          t3, a5, s7
                  li           sp, 0xfb319fa7 #start riscv_int_numeric_corner_stream_11
                  li           s4, 0xc9339304
                  li           t1, 0x80000000
                  li           t6, 0xe3d9d862
                  li           s7, 0x70259c07
                  li           s9, 0x80000000
                  li           a0, 0x80000000
                  li           s11, 0x0
                  li           s6, 0x80000000
                  li           a5, 0xffffffff
                  nop
                  lui          a5, 532711
                  add          s11, s6, t1
                  auipc        s4, 840431
                  sub          t6, s9, s11
                  auipc        s6, 265672
                  addi         a5, s6, 755
                  nop
                  addi         sp, t6, 1726
                  lui          t6, 34483
                  sub          a0, s7, s9
                  auipc        sp, 140586
                  lui          s4, 332563
                  add          a5, a0, t1
                  nop
                  sub          s7, t1, sp
                  sub          s4, t6, a5
                  add          s4, s4, s4
                  add          s6, s11, s11
                  lui          t6, 1031073 #end riscv_int_numeric_corner_stream_11
                  add          ra, sp, tp
                  lui          a3, 1044731
                  nop
                  auipc        s5, 843541
                  srl          t1, a7, s4
                  slt          a6, t2, s9
                  and          t4, s7, s3
                  sll          a0, s8, s5
                  and          t3, a2, gp
                  srl          a3, t5, s7
                  addi         gp, a4, 812
                  nop
                  srl          s1, s8, t4
                  xori         a2, sp, -1234
                  sub          sp, a2, a6
                  srl          s8, a7, s9
                  sltiu        gp, s11, 710
                  sll          s7, ra, s5
                  ori          t2, zero, 942
                  sra          s4, ra, s10
                  xor          a2, s5, s6
                  slli         ra, gp, 1
                  sltu         s1, s7, a6
                  lui          a3, 596869
                  addi         a4, s7, 1725
                  addi         zero, s6, -317
                  lui          t2, 410158
                  srai         s8, s11, 2
                  xor          t6, t4, a0
                  addi         s4, s7, 230
                  srli         a2, s2, 30
                  sub          ra, ra, sp
                  xori         gp, zero, 217
                  lui          a5, 845893
                  sra          s9, s0, gp
                  ori          tp, gp, 392
                  lui          s8, 709589
                  nop
                  ori          ra, t5, -251
                  slti         t5, t1, -531
                  or           s9, zero, ra
                  xori         sp, s6, 121
                  addi         s9, s7, 1874
                  add          a5, zero, gp
                  lui          t5, 176982
                  and          s4, t1, a6
                  lui          s7, 335167
                  xor          s1, sp, t2
                  srl          s0, s8, a2
                  addi         a2, zero, -985
                  sub          sp, s6, a7
                  nop
                  slt          a0, a1, s9
                  slli         t6, s5, 2
                  srai         a6, tp, 15
                  slt          a3, s0, s11
                  nop
                  lui          gp, 1042011
                  sub          t4, t3, t2
                  slli         a6, s1, 21
                  srl          s1, s7, t3
                  slt          s1, t5, a7
                  sltu         s0, s5, a1
                  add          t2, t6, tp
                  srli         ra, t6, 29
                  xor          gp, a7, s3
                  slti         sp, a2, -153
                  xor          a2, t1, s8
                  srli         a3, t6, 4
                  andi         ra, s9, 1350
                  addi         a4, s10, -1482
                  sra          a6, a3, s5
                  lui          s6, 817635
                  ori          a6, ra, 2017
                  ori          s7, a0, -75
                  ori          t6, a2, -1661
                  sub          a2, t6, s11
                  sra          t5, s0, t3
                  xor          a1, t1, t5
                  xor          s7, a6, a2
                  nop
                  slt          a4, sp, a5
                  xor          a2, zero, s8
                  addi         t3, t3, -475
                  slti         gp, gp, 944
                  sll          ra, s1, a0
                  or           tp, s11, a1
                  sltiu        ra, t6, 1743
                  xor          ra, s0, a2
                  slt          s4, gp, t0
                  slli         s11, t1, 2
                  lui          a1, 711946
                  xor          a0, t4, a2
                  sub          t0, s0, s0
                  auipc        a0, 1039860
                  srai         t6, s4, 24
                  srai         gp, t3, 15
                  auipc        sp, 1004934
                  srli         a5, t6, 6
                  ori          s8, a4, 1193
                  slt          gp, s4, s4
                  slt          t2, s2, s11
                  and          s4, sp, a6
                  sub          s2, a3, tp
                  auipc        a1, 381848
                  sltu         t2, t2, s7
                  nop
                  slti         a1, t1, 237
                  slti         s1, s6, -923
                  xor          a1, s0, s11
                  lui          s8, 122332
                  addi         gp, t5, 588
                  slli         t3, t1, 25
                  sll          t6, s6, t5
                  lui          a2, 824652
                  andi         ra, gp, -69
                  lui          gp, 599960
                  xor          gp, sp, s5
                  andi         ra, s2, 1156
                  lui          ra, 857251
                  and          a0, a0, zero
                  or           a4, s9, a7
                  sltu         t5, tp, gp
                  slti         t2, s10, 49
                  xor          t5, a5, zero
                  sltu         t4, s11, a2
                  sra          s0, t0, t6
                  or           sp, s6, s9
                  sltu         a5, a6, a0
                  or           a3, t3, gp
                  sll          s1, t2, t6
                  sra          s6, s3, s7
                  sra          a4, s4, s11
                  slli         a2, a2, 31
                  slti         zero, a7, 1115
                  sll          a5, a7, t0
                  or           a0, t3, t6
                  nop
                  sltu         a6, s6, a2
                  sub          s11, a7, a2
                  lui          s7, 242281
                  or           t5, sp, gp
                  srai         s4, gp, 10
                  slt          s11, a4, tp
                  lui          t2, 873944
                  nop
                  slt          s8, s10, a0
                  sub          s4, ra, s9
                  auipc        s5, 909893
                  ori          s9, a4, 1143
                  addi         a1, ra, -552
                  addi         a1, t0, 335
                  sll          t4, sp, gp
                  slti         zero, a3, 1604
                  lui          t4, 840287
                  lui          s6, 276926
                  sll          a5, t5, s1
                  sra          a0, s7, s2
                  sltiu        s0, s3, -86
                  nop
                  sltu         t3, a0, a2
                  nop
                  srai         a3, t0, 25
                  ori          t5, s3, 982
                  sra          gp, t0, sp
                  srai         sp, a3, 2
                  sltiu        s5, s2, 534
                  srai         a0, a2, 31
                  add          a5, a4, a0
                  sub          a3, a7, s5
                  slti         s5, tp, -364
                  lui          s2, 977717
                  slt          tp, t4, s2
                  add          s7, s4, s2
                  ori          s6, t6, -1888
                  sltu         s11, sp, a0
                  ori          a1, a7, 504
                  srai         s8, ra, 6
                  sra          a3, s6, t2
                  sll          a4, a1, a3
                  lui          a0, 730597
                  andi         t3, tp, -92
                  sll          t4, t1, s5
                  nop
                  slti         ra, t5, -221
                  and          s7, zero, s7
                  slt          s1, gp, tp
                  sll          a0, a1, s3
                  slti         sp, s5, -1571
                  lui          s2, 785792
                  addi         s8, s1, -1402
                  srl          s8, s6, s2
                  xor          t5, ra, zero
                  srli         ra, s5, 21
                  lui          s7, 855349
                  xor          t5, s3, s8
                  slli         a0, s9, 11
                  xor          t6, a0, t6
                  auipc        t5, 848079
                  sltu         a1, a0, a4
                  xori         a1, ra, -1297
                  xor          a6, s7, s1
                  slti         tp, gp, -332
                  auipc        s4, 304535
                  addi         a5, s4, 1792
                  slti         tp, a3, -80
                  sltu         t2, s6, t4
                  sub          t2, a0, ra
                  srai         a0, a3, 7
                  auipc        gp, 373767
                  addi         tp, tp, -2022
                  sra          sp, ra, t4
                  xori         s1, s6, 1129
                  xor          a4, s5, t4
                  auipc        t6, 757404
                  sll          s1, s7, sp
                  nop
                  srli         sp, s8, 30
                  nop
                  andi         s4, a0, -774
                  srai         a0, s9, 25
                  sltiu        t2, tp, -1778
                  lui          s5, 593541
                  add          t0, a4, s11
                  slt          zero, a7, a6
                  addi         s11, s5, 763
                  slt          zero, s7, t3
                  andi         t2, t4, 1171
                  addi         s9, s1, -938
                  or           t2, ra, t4
                  slli         sp, gp, 10
                  lui          a4, 669887
                  lui          t1, 770902
                  add          t0, a5, t0
                  xori         a2, s7, 534
                  sltu         t0, t3, s0
                  xori         s2, t0, 584
                  sltu         sp, s4, s0
                  ori          t4, s0, -1807
                  and          s9, s4, t0
                  slti         s2, t5, 1783
                  xor          s0, s10, a3
                  slti         t1, zero, 1146
                  lui          ra, 526018
                  add          a3, t2, s0
                  srl          t2, ra, gp
                  srai         t0, t5, 2
                  ori          t2, t1, -71
                  sltu         ra, t4, s6
                  xori         sp, s8, -883
                  xor          gp, ra, s11
                  lui          sp, 896683
                  sub          tp, s7, a1
                  nop
                  andi         a3, zero, 1790
                  srl          s11, s8, a4
                  auipc        s9, 651352
                  sltu         a6, a3, ra
                  and          t4, t0, s5
                  slt          a1, s3, s6
                  sltiu        sp, t5, -1149
                  add          sp, s7, a6
                  slli         zero, t0, 30
                  lui          t5, 440319
                  sltiu        t0, t1, -378
                  add          t2, a3, s3
                  lui          a1, 849263
                  and          sp, a6, s10
                  sltiu        a6, t3, -1983
                  and          sp, t4, a1
                  xor          s11, a3, ra
                  add          t3, s0, a6
                  ori          s7, ra, 1087
                  sra          s0, s1, s9
                  or           s6, t5, a1
                  sll          tp, t2, zero
                  add          ra, t0, t1
                  and          s0, a3, t2
                  sub          t0, sp, s9
                  sub          s4, s1, t1
                  sltu         s9, gp, t1
                  srli         s11, t2, 25
                  or           t4, a3, t4
                  slli         a6, sp, 10
                  sltu         a1, a0, s1
                  addi         t5, a1, 1979
                  andi         s4, s1, -1358
                  or           a4, gp, s10
                  auipc        s6, 206386
                  xor          t3, tp, gp
                  slti         s9, s9, 1890
                  or           a5, t5, s2
                  ori          s1, s10, 1498
                  ori          a4, s11, 659
                  slli         s6, a7, 18
                  sltiu        s8, a2, 1324
                  sltiu        a5, t0, 492
                  and          s2, t6, s1
                  addi         s11, s2, -730
                  ori          t6, t1, -1718
                  slt          tp, t0, t1
                  lui          s6, 36983
                  nop
                  xori         a0, s1, -303
                  sll          a0, t3, t4
                  add          t3, a0, a1
                  srai         ra, a1, 3
                  xor          a2, s9, t6
                  or           a2, t4, a2
                  srai         a4, a6, 9
                  add          gp, a5, a1
                  auipc        a4, 992530
                  or           s6, a7, a2
                  sltiu        t1, a7, 646
                  srli         ra, s0, 8
                  andi         s8, a7, -1370
                  add          a5, s1, a7
                  auipc        a6, 636163
                  sltu         a2, t2, t0
                  sll          s4, s10, a6
                  srli         t2, s8, 11
                  sltu         s9, s0, s2
                  sltu         ra, t6, s8
                  sltiu        a2, t1, -1248
                  srl          a2, s10, t0
                  andi         gp, a0, 513
                  addi         t4, a1, 478
                  or           ra, zero, a4
                  slt          t5, a4, t1
                  srai         zero, a3, 31
                  slli         a5, s5, 22
                  xor          gp, s1, s11
                  add          t5, sp, a5
                  auipc        s6, 424027
                  and          s2, sp, t2
                  sltiu        s8, t5, 220
                  srli         a3, t6, 11
                  andi         t5, a2, 646
                  or           a4, a0, s3
                  or           tp, s3, s10
                  sll          t3, s3, a7
                  sra          a6, s10, s0
                  srl          a2, a5, a2
                  andi         s1, sp, -37
                  sltu         t3, s5, s7
                  nop
                  sra          a0, t6, a1
                  ori          gp, t3, -1720
                  nop
                  slli         s8, s0, 31
                  ori          a6, a6, -30
                  slti         t5, a0, 1432
                  andi         zero, s11, -1878
                  slli         t1, a0, 13
                  slt          a0, a2, t6
                  and          t5, a7, s9
                  nop
                  auipc        t2, 712082
                  slt          gp, a4, gp
                  andi         t6, a0, 115
                  srai         s4, s9, 23
                  srli         a3, s2, 23
                  srli         s4, a6, 22
                  xori         s8, t5, -1878
                  sra          sp, gp, t2
                  sltiu        zero, a3, -1887
                  andi         t6, s9, -1162
                  nop
                  srai         s9, a4, 21
                  xor          t6, t3, a4
                  srl          a6, s6, a4
                  andi         t0, a7, 1470
                  andi         a0, s5, 1244
                  srai         s0, zero, 9
                  srl          t4, zero, s11
                  slt          s7, tp, t5
                  add          s6, zero, a6
                  xor          t6, t1, t0
                  srl          ra, a0, s4
                  or           s5, s8, a1
                  or           t6, ra, s3
                  andi         s7, t3, 1712
                  addi         t5, s0, 1358
                  and          a0, zero, s11
                  sra          a6, a7, a4
                  addi         zero, s3, -32
                  srai         s5, s11, 4
                  srai         t6, s2, 23
                  or           t2, t1, s4
                  addi         zero, s7, 906
                  lui          s0, 669334
                  xor          t6, a7, s5
                  sub          sp, s7, t5
                  ori          t6, a3, -366
                  andi         tp, s2, -1825
                  srai         ra, s7, 26
                  sra          a0, t2, s11
                  xor          gp, a5, s8
                  sra          s5, s3, s4
                  addi         t6, t0, -944
                  xori         a2, t3, 1280
                  slt          s4, zero, s10
                  xori         s5, t3, 460
                  slt          s1, s3, a1
                  nop
                  lui          ra, 977479
                  slti         a0, s7, -465
                  auipc        t3, 250649
                  add          s11, t3, t1
                  andi         gp, s5, 219
                  lui          s4, 675254
                  add          t4, t4, s7
                  andi         tp, s11, -2011
                  sra          s11, ra, s1
                  add          a1, t4, a0
                  sltiu        s7, a5, -780
                  srli         a5, s6, 23
                  auipc        a3, 1031480
                  sub          t2, a3, s3
                  li           a3, 0x80000000 #start riscv_int_numeric_corner_stream_2
                  li           a4, 0x80000000
                  li           s8, 0x0
                  li           s9, 0x80000000
                  li           s0, 0xffffffff
                  li           t3, 0xffffffff
                  li           ra, 0x80000000
                  li           a0, 0xffffffff
                  li           t6, 0x4a7a90cc
                  li           a5, 0x0
                  lui          a0, 121381
                  lui          s9, 53519
                  sub          ra, a4, s0
                  auipc        s8, 433551
                  nop
                  auipc        t3, 487458
                  lui          a3, 297998
                  addi         a5, a4, 62
                  sub          s0, a4, t3
                  sub          a0, a4, s0
                  add          s0, a4, ra
                  nop
                  lui          t6, 988025
                  nop
                  auipc        s8, 441124
                  addi         ra, s0, -1648
                  sub          a5, s8, s9
                  auipc        s9, 27589
                  nop
                  add          s0, a0, s0
                  sub          s8, s9, a3
                  sub          t6, s0, ra
                  nop
                  nop
                  lui          s0, 1033011
                  sub          s0, t3, a4 #end riscv_int_numeric_corner_stream_2
                  sll          s0, s8, s5
                  or           t2, sp, a4
                  slli         a6, s10, 6
                  sltiu        ra, a4, 858
                  ori          a4, s0, -1280
                  nop
                  slt          s0, s10, t2
                  andi         a0, t2, -1052
                  sra          ra, a6, s4
                  nop
                  or           s5, t1, t2
                  slti         s1, t2, 1910
                  slti         t1, s4, 838
                  srli         sp, a7, 26
                  sltu         t5, s4, t6
                  slt          a6, t4, a0
                  xori         s2, s11, -733
                  andi         t3, t0, -1620
                  and          s8, t5, gp
                  lui          a1, 672236
                  srl          t1, gp, a2
                  andi         t0, t0, 1429
                  auipc        tp, 820395
                  sub          s0, a5, s1
                  addi         t4, s8, -1308
                  auipc        t0, 712803
                  andi         a1, a3, 124
                  srli         t5, a0, 18
                  add          s5, s7, t0
                  sra          a6, tp, a1
                  sra          gp, s0, s8
                  srl          ra, a4, s4
                  xori         s0, s5, -184
                  or           s1, zero, a5
                  slli         t1, a1, 3
                  xori         s9, a3, -1004
                  add          a3, s0, s8
                  sll          a0, a4, a4
                  srai         a6, s5, 9
                  srl          t0, a3, s6
                  and          s8, t0, sp
                  slti         a5, s8, 197
                  sub          s6, s3, t3
                  addi         t6, s2, -655
                  or           s11, gp, tp
                  srai         s5, s3, 10
                  lui          s5, 858722
                  lui          a1, 356396
                  nop
                  nop
                  sltiu        s1, s7, -560
                  or           a0, s8, a5
                  auipc        ra, 345564
                  slli         s8, a1, 25
                  nop
                  sra          a5, tp, s5
                  or           s2, a6, s11
                  sub          s8, s7, t0
                  or           a5, ra, sp
                  add          a3, a2, a5
                  lui          sp, 727046
                  sra          s8, a4, a7
                  addi         s7, a0, 957
                  sll          a1, s6, a1
                  sll          a2, a5, t6
                  srl          gp, t2, t5
                  srli         s9, t6, 29
                  lui          a5, 329572
                  lui          a6, 52637
                  ori          s6, a4, -1988
                  lui          s11, 777390
                  sltiu        t6, a7, -1901
                  xor          s9, a2, a3
                  lui          tp, 364830
                  srl          a6, zero, ra
                  srli         s7, a7, 15
                  or           s7, t0, tp
                  slli         tp, sp, 18
                  add          s11, a7, a1
                  slt          ra, t5, s3
                  nop
                  slt          a6, a7, a6
                  andi         t0, t4, 1754
                  and          tp, a2, ra
                  slli         s11, a1, 2
                  xori         s11, t6, 1691
                  sltiu        t1, zero, 685
                  srai         a6, gp, 4
                  lui          t6, 681701
                  srai         sp, t1, 27
                  auipc        t0, 222474
                  lui          s9, 373271
                  srl          s9, s1, a0
                  slti         a1, a3, 193
                  auipc        s6, 947940
                  srli         zero, s1, 28
                  sra          s5, a7, s10
                  lui          s1, 979424
                  srl          s2, ra, a0
                  slli         gp, s10, 13
                  sll          a6, s7, zero
                  slti         t2, t5, 1860
                  or           s11, a3, sp
                  or           t2, tp, s8
                  nop
                  xor          s8, a6, s8
                  addi         t1, s3, -91
                  slt          a5, s11, tp
                  srl          s8, t4, tp
                  andi         s2, t0, -319
                  auipc        s0, 255695
                  addi         a0, a1, 667
                  sll          zero, a5, s10
                  auipc        t1, 384836
                  slt          s5, t2, a7
                  xor          s8, a3, a0
                  sltiu        t1, sp, 1268
                  sltu         t3, t5, t1
                  addi         s11, a1, 131
                  or           s1, s10, t6
                  srl          s9, s3, gp
                  nop
                  xor          s1, s8, s4
                  lui          t4, 90115
                  and          s11, t0, a1
                  slti         t6, s0, -1219
                  xori         t1, s3, 255
                  nop
                  li           gp, 0xae36eef #start riscv_int_numeric_corner_stream_17
                  li           a3, 0x80000000
                  li           s5, 0xffffffff
                  li           t4, 0xffffffff
                  li           s8, 0x0
                  li           a2, 0x80000000
                  li           t3, 0x0
                  li           tp, 0x0
                  li           s9, 0x0
                  li           s7, 0xffffffff
                  addi         s8, a2, -1797
                  lui          t3, 922121
                  lui          gp, 750763
                  add          gp, a2, a3
                  auipc        t3, 687284
                  add          s8, s8, t3
                  add          gp, gp, t3
                  sub          s8, s5, t4
                  sub          a2, gp, t3
                  sub          a3, tp, s7
                  addi         s9, tp, 1935
                  sub          tp, s5, tp
                  auipc        s8, 789351
                  lui          tp, 423194
                  lui          s8, 540257 #end riscv_int_numeric_corner_stream_17
                  lui          s4, 501141
                  sltiu        zero, t6, -1749
                  sra          s7, t1, s8
                  slt          a6, zero, gp
                  sltiu        t0, tp, -1219
                  or           s9, t2, s6
                  xor          a6, s10, t0
                  srai         a3, s4, 3
                  slti         t6, a2, 1881
                  srl          gp, ra, s1
                  lui          t4, 72865
                  slli         s5, s0, 21
                  or           a0, s3, sp
                  xor          gp, s7, gp
                  or           t5, t2, t6
                  or           ra, s8, a4
                  andi         t5, a3, 357
                  sra          s6, s9, ra
                  srai         s8, a5, 18
                  srai         s11, s9, 28
                  sra          s8, s8, zero
                  andi         t6, t5, -105
                  slli         s0, s0, 31
                  slti         a6, s9, -1722
                  and          a2, zero, t2
                  srl          ra, a4, a4
                  and          t3, t5, s7
                  srli         s11, s0, 10
                  srli         ra, tp, 21
                  sll          a1, s5, a2
                  srai         t3, s1, 0
                  slli         s4, t6, 17
                  sll          s4, a5, s3
                  or           t3, t2, s1
                  sltu         sp, t1, a7
                  auipc        s4, 62743
                  sltiu        a0, s11, -2006
                  xor          s4, s4, s11
                  and          gp, t4, t1
                  srl          t1, t0, a4
                  add          s1, a3, s11
                  andi         a5, s7, -1647
                  srli         a5, t2, 17
                  andi         s1, s4, -1837
                  sra          s9, t6, a0
                  sll          t3, a6, s7
                  ori          gp, ra, -524
                  lui          tp, 787698
                  slti         s2, a5, -1442
                  auipc        s2, 821674
                  srai         a1, a3, 6
                  sltiu        s4, ra, 1795
                  slt          t1, s6, t1
                  xori         a2, t3, -1653
                  or           zero, t4, t3
                  addi         ra, s3, 650
                  addi         s11, s10, 638
                  xor          a0, s8, s9
                  sra          s7, t5, tp
                  srli         t5, s10, 15
                  sltiu        ra, s9, -50
                  ori          a3, a7, -2005
                  add          s6, s10, a5
                  addi         t2, t4, -1760
                  slt          a5, a0, t4
                  slli         s0, s2, 28
                  srai         a5, t0, 21
                  srai         a5, tp, 25
                  sll          t1, s4, a7
                  sltu         s1, t5, t0
                  lui          t3, 807099
                  sll          t6, gp, s5
                  sub          a5, s1, a3
                  sra          t0, t1, t4
                  sltiu        t0, t2, 167
                  sltu         s7, t2, a1
                  srai         gp, a0, 20
                  sll          t0, s9, t2
                  slli         s6, zero, 22
                  ori          t3, s5, -1881
                  or           ra, a4, a5
                  and          t6, a3, a1
                  and          s1, a1, a4
                  srli         a2, s11, 12
                  xor          a0, a2, s8
                  srl          a4, s9, s2
                  slti         s4, s3, 1159
                  xor          sp, a1, s5
                  sltu         a3, s9, t5
                  srl          a4, a4, s5
                  sra          a1, s4, s3
                  slti         a0, a7, 1956
                  xori         s4, tp, -281
                  sub          t6, s0, s4
                  add          t2, a6, s10
                  srli         t3, t2, 9
                  add          s4, a7, t2
                  auipc        t5, 874243
                  nop
                  add          t3, s4, t6
                  sra          gp, a7, s8
                  and          s11, s4, a0
                  srai         s6, sp, 5
                  sub          t5, gp, s11
                  addi         t0, s0, 1802
                  sll          t1, zero, t5
                  xori         s9, sp, 173
                  auipc        a2, 275928
                  add          zero, s4, s6
                  sltu         a5, s1, t0
                  addi         zero, t4, -95
                  srli         t3, s8, 14
                  srli         ra, a6, 22
                  slti         a0, zero, 1925
                  sra          t5, t2, t2
                  and          a0, a7, s2
                  sll          a4, gp, a5
                  or           tp, s5, s0
                  srli         a5, s5, 24
                  sra          s7, a4, a7
                  or           s9, tp, s4
                  ori          s2, s7, -1779
                  xori         ra, s0, -1126
                  sra          s9, t1, a3
                  sltu         ra, a5, s10
                  sltiu        t6, s1, -1518
                  slt          s9, s11, s11
                  xori         ra, zero, -1367
                  and          t1, s10, s0
                  xor          t4, t1, a3
                  andi         t0, a3, -192
                  slti         ra, a2, 1891
                  sll          t4, a6, a3
                  and          s9, a2, t1
                  ori          ra, tp, -1278
                  sltu         s8, s5, a3
                  slli         gp, a7, 24
                  andi         a4, s8, 1839
                  sll          tp, a3, a0
                  add          s7, a0, a0
                  srli         s2, s0, 14
                  and          s2, s8, t3
                  xor          zero, sp, a0
                  sub          s8, gp, s6
                  sll          gp, t6, t5
                  sltiu        a6, t5, 1782
                  srl          a6, s4, s7
                  nop
                  xor          a3, a3, gp
                  srai         t6, tp, 7
                  and          sp, s10, s6
                  auipc        a4, 322249
                  xor          a6, a6, a3
                  srli         zero, s1, 16
                  ori          s1, s9, 1237
                  sra          zero, t5, t5
                  slt          a5, gp, s2
                  slt          a1, s11, a4
                  slti         t6, s0, 80
                  slti         s5, s3, -1851
                  auipc        t3, 665441
                  or           a0, s10, ra
                  sra          s8, zero, a1
                  and          ra, t3, s1
                  auipc        s11, 154932
                  srai         zero, s9, 31
                  and          s1, gp, a7
                  addi         s4, t4, 1294
                  andi         tp, t0, -990
                  add          a5, s2, zero
                  xor          a6, gp, t4
                  slt          s7, t3, ra
                  slti         s7, t5, 1643
                  andi         a2, s10, -1775
                  xori         a3, tp, 284
                  slli         t5, s6, 3
                  auipc        a1, 541859
                  xori         s5, s10, -1655
                  slli         a1, s8, 8
                  addi         t6, s10, -1017
                  and          t4, s2, gp
                  or           t3, a2, sp
                  nop
                  or           s5, a4, a1
                  srli         a2, a7, 27
                  sll          a3, s7, s4
                  sra          a5, a7, a3
                  ori          s2, tp, 2035
                  sll          s4, t4, s8
                  ori          tp, t4, 1087
                  xori         t2, s3, 707
                  and          zero, ra, gp
                  slti         a1, s0, 1160
                  add          t2, a6, a2
                  slti         a5, a0, -1814
                  sltiu        t2, a2, 762
                  andi         s9, a2, 1725
                  addi         tp, s10, 190
                  sltiu        t2, s8, 601
                  andi         t6, s9, 165
                  srl          gp, s1, t1
                  srli         s8, s7, 3
                  addi         a6, s5, -803
                  sll          t5, s1, tp
                  xori         zero, s3, 598
                  srli         s5, t5, 20
                  sub          a5, sp, t5
                  auipc        s11, 729098
                  nop
                  srli         zero, sp, 22
                  andi         s2, s10, 1032
                  addi         s6, s4, 801
                  sll          a5, zero, t2
                  add          s11, gp, ra
                  xor          sp, a1, t5
                  sltu         t5, a3, t0
                  slli         t1, t5, 26
                  slli         zero, tp, 14
                  auipc        tp, 773809
                  srli         zero, s3, 12
                  srai         a1, t0, 16
                  slti         a0, a5, 761
                  or           a2, zero, a5
                  slli         a0, tp, 4
                  sltiu        s11, s3, 1046
                  addi         a5, t3, -1200
                  srai         a1, s2, 2
                  sll          t3, s4, a1
                  or           t2, a6, s8
                  sll          zero, a7, t4
                  slt          s5, zero, s9
                  add          s11, s5, a1
                  sra          a5, s7, s0
                  lui          a2, 720270
                  sltu         s0, s2, a2
                  nop
                  sltu         s0, s8, t1
                  slli         a6, a6, 5
                  xori         t4, s8, -229
                  slti         sp, s10, 744
                  sub          t2, s10, s10
                  srli         a1, a1, 23
                  xor          a0, a3, a6
                  srl          s6, s1, s5
                  slti         zero, t1, -1517
                  auipc        t6, 138791
                  srli         s7, sp, 9
                  xori         s1, t1, 2005
                  sub          t5, s2, t1
                  addi         t3, tp, -1364
                  and          t0, a0, s10
                  andi         tp, t5, 2
                  nop
                  xor          s11, s9, t1
                  xor          s6, tp, tp
                  xori         s1, t0, -701
                  sltiu        gp, t3, -1492
                  add          t1, a7, s7
                  sll          a0, gp, s4
                  slt          ra, s8, a5
                  andi         a6, s11, 750
                  slti         a3, s3, 397
                  ori          s6, s11, -386
                  slti         s9, s6, 74
                  srli         s2, s11, 15
                  or           s4, gp, t4
                  sra          s11, a6, zero
                  slti         a5, a2, 610
                  slti         a0, sp, 386
                  add          sp, a4, t0
                  ori          t2, a6, 1084
                  srli         a0, s6, 18
                  and          t2, t2, sp
                  sltu         t2, t2, a7
                  lui          s5, 375157
                  srli         s8, a4, 24
                  addi         s11, a3, 574
                  sll          a3, tp, t3
                  srl          s8, s5, s7
                  slti         sp, a4, -34
                  and          a5, a1, t2
                  and          s9, a7, s3
                  srl          ra, s10, t6
                  sltiu        t4, t6, -253
                  nop
                  auipc        a5, 98899
                  lui          a3, 789398
                  sltiu        s4, a3, 1822
                  slt          a6, gp, s4
                  xor          a1, a3, sp
                  sltu         s6, s7, s0
                  sra          s11, t0, ra
                  sll          s1, a2, a0
                  addi         t2, tp, -1248
                  sra          s1, ra, s4
                  srl          sp, s9, t3
                  slt          zero, s11, s9
                  sub          s11, gp, ra
                  sll          tp, t0, t0
                  sltiu        sp, ra, -2033
                  and          a0, s11, tp
                  srai         t1, a5, 7
                  or           tp, a3, zero
                  srl          t5, ra, t1
                  ori          t3, ra, 1330
                  sub          s11, a1, s1
                  slli         t0, sp, 11
                  sra          tp, a0, a1
                  srl          tp, s2, ra
                  nop
                  sub          s8, t3, ra
                  lui          t5, 744317
                  sltiu        s11, s9, 884
                  sltu         s9, s9, s6
                  or           tp, t0, ra
                  add          s9, s3, ra
                  sub          s2, tp, a6
                  srli         a3, t1, 8
                  sltiu        a2, t1, -224
                  sra          s11, a1, a6
                  or           t2, gp, s7
                  ori          t0, a0, -17
                  nop
                  slt          t1, t2, s4
                  slti         a4, s7, -1480
                  auipc        a0, 77591
                  srai         a0, s6, 19
                  ori          t2, s3, 1898
                  srl          a1, a2, sp
                  auipc        t3, 250698
                  sltiu        s0, t2, 1749
                  add          s9, s11, sp
                  sub          a6, a2, s9
                  sll          zero, sp, t6
                  add          a6, s8, sp
                  and          s1, t6, s8
                  srl          a0, a6, a7
                  ori          t5, s4, 1969
                  srl          a3, s11, tp
                  and          s11, a1, s9
                  xor          t3, a7, a1
                  addi         a3, s0, -1286
                  srl          s2, s6, t2
                  sll          s6, s9, t0
                  srl          t2, s9, s6
                  sltiu        t0, gp, 688
                  or           t5, s3, a5
                  xor          t0, t3, sp
                  lui          a4, 844016
                  slt          t5, t2, s3
                  or           t5, s11, s9
                  andi         t2, t4, -2008
                  sub          a4, a2, a0
                  and          s5, a3, t5
                  and          tp, s4, gp
                  srai         t6, s7, 23
                  lui          a3, 908089
                  slli         a5, s9, 6
                  sltu         a2, ra, s1
                  add          t2, s2, ra
                  xori         ra, t0, -186
                  slli         a6, a5, 21
                  slli         tp, s10, 3
                  ori          ra, gp, -347
                  add          s8, sp, s9
                  srai         a2, a0, 30
                  sltiu        s7, t1, 294
                  sll          t6, t3, a7
                  or           a1, s6, t3
                  srl          t4, t5, tp
                  sub          a0, s0, a5
                  slti         s5, tp, 289
                  srli         s1, s1, 6
                  xor          a4, s5, a5
                  or           t2, t3, s10
                  nop
                  xori         t5, ra, 123
                  xor          s2, sp, t3
                  srli         t3, s10, 25
                  srli         s8, t1, 16
                  sltiu        ra, s9, 1316
                  nop
                  xor          s7, t5, t0
                  srli         a3, t4, 27
                  slti         s4, ra, 1976
                  sltiu        s9, zero, 1487
                  slt          s4, a2, tp
                  xor          s0, s7, a5
                  slli         s1, s4, 25
                  sra          gp, s8, zero
                  srl          t3, gp, a1
                  lui          a3, 511094
                  sll          t2, gp, t6
                  add          s6, s2, a7
                  xor          s2, t1, s7
                  and          s7, s1, t6
                  ori          a6, t5, -739
                  xori         a1, s2, 1096
                  nop
                  ori          tp, s5, 858
                  sll          t4, t0, t5
                  srai         a1, ra, 13
                  lui          s8, 550314
                  slt          a2, t2, s7
                  add          s6, a4, tp
                  sub          a6, s11, s5
                  addi         a6, s2, -1055
                  ori          a3, a2, -17
                  sltiu        s4, t2, -2032
                  slti         s6, a1, -178
                  lui          t3, 472800
                  srai         gp, s11, 3
                  srl          t6, a1, a3
                  slt          s2, t2, s0
                  sra          s8, t3, a7
                  sub          gp, t5, t0
                  slti         t4, t0, -1784
                  sra          s2, zero, s4
                  sub          s7, a7, a3
                  sltu         a3, s3, a3
                  sll          a5, s7, t2
                  addi         t1, s8, -211
                  srai         s1, a0, 12
                  add          s11, t6, s11
                  li           a4, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           t2, 0x8f6dee01
                  li           s8, 0xb5a8aa19
                  li           gp, 0x80000000
                  li           a5, 0x718703c4
                  li           t1, 0x80000000
                  li           s9, 0x0
                  li           t0, 0xffffffff
                  li           s4, 0x0
                  li           a6, 0x80000000
                  lui          t2, 577176
                  nop
                  addi         a4, t0, 1274
                  addi         t1, t0, 1041
                  lui          s4, 308128
                  sub          t0, s4, gp
                  lui          gp, 667259
                  add          a6, a4, t1
                  auipc        a4, 244174
                  add          t0, t0, a5
                  addi         t2, a5, 1761
                  nop
                  nop
                  auipc        s4, 589968
                  addi         a6, s4, 779
                  add          t1, t2, a6
                  add          s9, a6, s9
                  sub          a6, gp, s9
                  lui          t2, 507347
                  addi         a4, t2, -1289
                  lui          a4, 814526
                  auipc        s8, 1019645
                  nop #end riscv_int_numeric_corner_stream_7
                  add          s2, t6, s5
                  slti         t3, t1, 126
                  nop
                  sltu         t6, a0, t6
                  sub          s11, s10, a7
                  add          t0, s6, s1
                  auipc        a5, 25411
                  sll          s5, a2, s1
                  srli         t5, sp, 31
                  ori          ra, zero, -1092
                  sll          t1, s7, s10
                  sltiu        t6, tp, -50
                  srai         a6, s7, 16
                  srl          t2, ra, gp
                  srl          t5, s2, a5
                  sll          s0, s6, t1
                  nop
                  auipc        t5, 947262
                  auipc        t2, 155005
                  xor          t3, s7, sp
                  slli         zero, a2, 6
                  xori         s1, t4, 1485
                  xor          a5, s11, a6
                  sltu         s9, s0, a4
                  auipc        a4, 379414
                  nop
                  sll          t6, t5, a7
                  or           zero, t4, s7
                  srai         s5, a4, 26
                  xori         s4, s8, 1600
                  sll          t4, t5, s11
                  slli         a1, a5, 27
                  sll          s1, a2, s6
                  sltiu        s6, ra, 1524
                  ori          s8, s3, -992
                  slt          gp, s5, a7
                  lui          zero, 278514
                  xor          s7, s3, t6
                  or           t1, s5, t2
                  and          t1, a7, a5
                  addi         s6, a5, 186
                  ori          t4, t2, -605
                  xori         s6, a2, -1119
                  and          a5, a1, ra
                  srli         a6, s3, 0
                  sll          t1, s10, a3
                  slli         t4, a2, 14
                  srl          s7, s1, t3
                  sub          a3, s4, s9
                  lui          s1, 525461
                  li           a2, 0xabdb49e #start riscv_int_numeric_corner_stream_1
                  li           t3, 0x0
                  li           s1, 0x80000000
                  li           a4, 0xc4584db6
                  li           a3, 0xffffffff
                  li           s7, 0x5c437a79
                  li           t0, 0x80000000
                  li           t4, 0x80000000
                  li           a1, 0x0
                  li           a5, 0x0
                  lui          s1, 834862
                  add          a2, t4, t3
                  sub          a2, a3, t0
                  lui          s7, 495729
                  nop
                  auipc        t0, 185770
                  add          a3, t0, a1
                  sub          t0, a2, t3
                  sub          t4, a2, a5
                  nop
                  add          a3, t3, a5
                  addi         s1, t3, -1315
                  add          a1, a3, a3
                  sub          s1, a3, a1
                  lui          t0, 723259
                  lui          s1, 182557 #end riscv_int_numeric_corner_stream_1
                  auipc        t0, 731960
                  auipc        t4, 909359
                  slt          s4, s2, s9
                  sltu         t4, t3, a2
                  xor          t4, s6, a2
                  add          a1, s8, a3
                  andi         t3, zero, -913
                  xor          s1, t2, s9
                  sll          t2, t4, t2
                  sra          a2, zero, a0
                  srl          s2, s4, a5
                  or           s7, a4, s3
                  slt          a1, a6, zero
                  ori          t0, a3, -1230
                  sltiu        s4, t4, 461
                  srai         t1, t1, 6
                  slti         s11, s5, 1799
                  sll          a2, a2, a3
                  nop
                  xor          t5, gp, s11
                  auipc        a4, 210944
                  srai         s2, t2, 6
                  xor          t2, ra, t0
                  slli         s7, t6, 28
                  srl          tp, ra, t3
                  xor          sp, t5, t1
                  slt          s6, ra, s4
                  add          t4, a4, ra
                  xori         a2, s7, -1271
                  ori          s5, ra, 416
                  srai         s5, s10, 28
                  slt          tp, a4, s11
                  sub          s1, s3, a1
                  lui          s8, 825032
                  srli         s11, s9, 26
                  sltiu        s2, a6, 1784
                  auipc        t4, 511334
                  nop
                  add          s9, a6, a4
                  ori          a1, s10, -2042
                  srli         s6, s3, 2
                  sltiu        s4, t0, 685
                  auipc        a0, 840896
                  sub          t4, s1, s11
                  sltiu        s8, t3, -1204
                  sra          s2, a1, s7
                  ori          a6, s6, -1276
                  and          s2, t6, t1
                  xor          s2, s9, t6
                  slti         s9, t3, 1863
                  ori          s4, s8, 1660
                  srli         s2, s11, 25
                  srl          a3, a1, s11
                  slli         a0, sp, 0
                  xor          t5, a5, zero
                  sltu         a0, s8, s5
                  sltiu        s6, a6, -81
                  srl          s11, t1, gp
                  andi         s1, zero, -1468
                  add          a3, a3, t1
                  srli         s1, a6, 28
                  andi         a0, a0, -421
                  lui          s8, 837226
                  sll          t2, s8, a2
                  sra          s4, a3, t1
                  srli         ra, t0, 14
                  srli         a3, s0, 17
                  srli         tp, t2, 21
                  xor          tp, t1, t0
                  nop
                  sub          t3, gp, s4
                  add          a4, sp, s3
                  sub          t0, a2, s4
                  xor          s7, t6, a6
                  xor          a5, s9, s11
                  ori          t0, ra, 2046
                  sub          tp, t2, s1
                  lui          t6, 503415
                  lui          a3, 772971
                  or           t4, a2, s6
                  andi         s5, t5, -183
                  slti         t3, zero, 1895
                  sra          s6, sp, s1
                  sra          s7, gp, t1
                  slli         t4, s3, 25
                  add          s11, s10, zero
                  ori          s2, s10, -249
                  nop
                  and          s9, s0, s9
                  xor          a2, s10, a4
                  sll          s1, t2, t6
                  slli         a2, s2, 11
                  lui          s11, 446368
                  lui          a3, 177475
                  slli         s8, ra, 3
                  srl          tp, t6, t0
                  srli         s5, t6, 22
                  addi         s9, a0, -1537
                  slt          s8, gp, t3
                  sll          s0, t4, t1
                  lui          t5, 938138
                  add          s4, t3, a7
                  andi         t3, t3, -805
                  or           s7, s6, t5
                  add          a2, a6, a1
                  sltu         s2, s5, t0
                  or           ra, a1, s9
                  slli         a2, ra, 8
                  nop
                  sra          a5, tp, s10
                  xor          s5, a4, s1
                  srai         a1, s6, 11
                  xori         t3, sp, 1942
                  li           s7, 0xe026ec9a #start riscv_int_numeric_corner_stream_18
                  li           a6, 0xffffffff
                  li           t6, 0x546cc4de
                  li           s9, 0xffffffff
                  li           ra, 0x80000000
                  li           s2, 0x4ce9b373
                  li           s11, 0x7485ac0a
                  li           t2, 0x80000000
                  li           a5, 0xc5fe5877
                  li           t4, 0x80000000
                  auipc        t6, 914380
                  sub          ra, t2, a5
                  add          s7, s11, s9
                  nop
                  addi         ra, t6, -1912
                  add          ra, t6, a5
                  addi         s2, ra, -584
                  lui          ra, 725526
                  lui          t2, 434435
                  add          t4, s7, a5
                  addi         ra, t4, 1665
                  add          s9, s2, t4
                  auipc        a5, 154148
                  addi         s11, t6, -1716
                  add          t4, t4, s9
                  sub          a5, s9, t4 #end riscv_int_numeric_corner_stream_18
                  slti         zero, s8, -1044
                  srai         t6, a1, 27
                  xori         a5, s5, -161
                  slt          s2, s2, s7
                  slli         gp, a0, 23
                  lui          s11, 108212
                  ori          a1, a2, -1273
                  slt          s9, t4, tp
                  srli         gp, a4, 19
                  slli         t4, gp, 12
                  and          s0, s4, sp
                  lui          s4, 1034493
                  sll          t0, a7, a3
                  srli         s7, s4, 22
                  add          tp, gp, s9
                  addi         a5, s10, -1744
                  add          s8, a1, a2
                  sll          s9, s6, t5
                  slti         s7, s5, 111
                  sltu         s7, s4, a4
                  auipc        s0, 211993
                  and          a4, zero, t4
                  and          zero, t6, a5
                  lui          s7, 925362
                  sltu         s8, s5, zero
                  add          s6, ra, s6
                  sra          t2, s10, t3
                  lui          zero, 630564
                  sll          t3, s7, a6
                  slli         a3, s3, 1
                  add          t0, s7, s1
                  srl          s5, a7, s0
                  ori          t5, a4, 1130
                  addi         t6, ra, -1857
                  auipc        tp, 431167
                  lui          s11, 180794
                  ori          s5, sp, -1085
                  sltu         s9, sp, s3
                  auipc        t4, 801147
                  sub          t6, t6, zero
                  slt          a5, s3, a4
                  sltu         t0, t6, s1
                  nop
                  sra          s4, s5, t6
                  xori         a1, s8, 607
                  sub          t4, sp, a7
                  auipc        t0, 288756
                  nop
                  srai         a3, s10, 24
                  srai         a5, ra, 7
                  or           a0, a2, t6
                  sll          gp, gp, s5
                  auipc        a4, 28113
                  andi         tp, sp, -1846
                  xori         t4, t0, 1306
                  srl          s2, s3, s10
                  srli         t5, s8, 20
                  sltu         t2, s9, a1
                  lui          a6, 236466
                  sub          ra, t6, zero
                  andi         s7, s0, 1246
                  addi         s1, s6, 984
                  nop
                  ori          s6, ra, 833
                  lui          s8, 97397
                  sll          ra, s0, s0
                  add          t1, a7, s4
                  addi         s4, s6, -1127
                  sltu         s0, sp, a2
                  andi         s5, a6, 163
                  srl          s5, a0, t3
                  sll          s5, t0, a4
                  srai         a4, s10, 3
                  sll          a5, s5, s4
                  nop
                  lui          a0, 912243
                  andi         t0, t2, -1376
                  lui          a3, 789290
                  lui          s7, 262516
                  slti         a0, s0, 599
                  slt          t4, s6, a0
                  andi         t2, a0, -1561
                  srli         t3, t6, 0
                  ori          zero, t4, 1372
                  srai         a6, t3, 7
                  srl          s7, sp, s11
                  lui          a5, 690684
                  ori          s1, a6, 1159
                  andi         t6, t6, 1077
                  or           s8, t3, s1
                  sltiu        s0, t3, 1211
                  sltu         sp, s2, gp
                  addi         s1, t4, -1662
                  sll          s0, a3, s9
                  addi         a1, s5, 1556
                  slli         s1, a1, 4
                  sltiu        t5, s5, 720
                  or           t0, t6, t2
                  slt          a2, s0, s4
                  sltu         a1, sp, s1
                  sub          zero, t6, t4
                  or           s1, t3, tp
                  sltu         tp, zero, s6
                  sltiu        t2, a4, -2013
                  sra          s2, s4, s10
                  srai         t4, t6, 26
                  lui          s7, 548525
                  add          tp, ra, s7
                  sra          ra, a6, s3
                  slt          a4, s1, sp
                  lui          zero, 552882
                  lui          t3, 921077
                  srai         t6, s5, 16
                  auipc        t4, 143095
                  sub          t6, t3, s3
                  sub          sp, t3, a0
                  xori         a1, a0, 1384
                  sltiu        a3, a1, -1184
                  lui          s6, 184430
                  and          sp, a2, a0
                  add          t1, s11, a6
                  xori         a5, t2, 379
                  auipc        t6, 225273
                  and          a5, s4, t0
                  ori          gp, s3, 139
                  sll          s11, a2, a3
                  addi         s2, s10, 1186
                  auipc        a0, 500260
                  sll          t1, s11, s10
                  andi         a3, s3, -1749
                  srai         s7, t1, 5
                  sra          t4, s10, s3
                  slti         s1, a0, 2021
                  slt          t5, sp, t0
                  srai         s2, s7, 13
                  auipc        a2, 323503
                  lui          a5, 933889
                  ori          s1, t4, 1623
                  srli         a2, s5, 20
                  sltu         a0, a5, a4
                  xori         t0, s4, 1076
                  sltiu        s9, s6, -823
                  srl          a1, a1, a5
                  xor          s7, s4, a0
                  xor          ra, s11, a5
                  srli         a6, s6, 26
                  sltiu        t2, s1, 1857
                  xori         s9, gp, -936
                  slli         a3, s0, 0
                  and          a2, t6, s5
                  xori         a5, s10, 491
                  xori         a3, a3, -1844
                  srl          a5, a5, zero
                  sub          s11, a4, s11
                  xor          a4, s9, s2
                  slli         a2, s11, 18
                  srai         a1, s5, 15
                  auipc        gp, 1000882
                  or           zero, s10, s3
                  xor          s9, s6, a5
                  slli         s6, s3, 27
                  and          s5, a0, s11
                  add          s8, s10, a1
                  srai         t2, ra, 20
                  and          a2, s4, a6
                  srai         ra, tp, 26
                  andi         s8, s8, 847
                  sll          s8, gp, s6
                  sub          t1, s10, s11
                  sll          t5, a1, a0
                  sub          zero, t5, a1
                  ori          t6, s2, -193
                  sub          s11, a1, zero
                  addi         t5, s11, 1883
                  srl          s0, ra, a7
                  add          s0, a1, gp
                  slt          s11, a6, s9
                  nop
                  srli         a0, a7, 2
                  auipc        tp, 196336
                  sub          s9, s10, a4
                  ori          a2, a1, 1043
                  lui          a3, 911022
                  sltu         t6, s4, sp
                  srli         t3, t3, 26
                  srai         t3, s5, 0
                  slt          t0, a7, a1
                  slt          s9, a3, t0
                  sra          t1, s6, a3
                  andi         t5, a1, 1842
                  slti         a1, t5, 1743
                  sltu         t3, a7, s9
                  slli         a4, s3, 16
                  srl          s5, s8, gp
                  auipc        s8, 302402
                  xori         s6, a1, 1473
                  srai         s1, s3, 27
                  xori         t1, s7, 608
                  or           s4, zero, a1
                  srli         t4, sp, 31
                  xori         a3, s2, 1531
                  slli         t2, s3, 29
                  and          ra, a7, s1
                  lui          t6, 888892
                  xori         a4, a2, 1735
                  srli         s9, a7, 28
                  nop
                  nop
                  srli         a1, t3, 12
                  lui          sp, 396922
                  ori          sp, gp, 1940
                  sra          t1, s9, a5
                  xori         t6, s10, 1490
                  srli         t2, ra, 31
                  srli         s9, t5, 9
                  srli         t6, t0, 25
                  slli         a5, tp, 6
                  auipc        t6, 540733
                  slli         s6, a2, 1
                  addi         a6, a3, -515
                  sll          s6, s0, s4
                  xor          s1, s8, a1
                  lui          t0, 262417
                  and          t0, zero, t1
                  sub          t3, s10, s2
                  xori         s8, s10, -744
                  and          t3, a7, t4
                  nop
                  andi         a4, a5, 451
                  sltu         t1, s1, s5
                  srl          t5, s5, s9
                  sll          t6, a5, s7
                  xor          a3, t5, sp
                  sll          t1, s5, s10
                  xor          s8, s1, tp
                  srl          s1, t4, s10
                  srl          s1, s11, t5
                  or           t3, a2, s1
                  xor          gp, a3, t4
                  sub          s6, s9, s3
                  sltiu        a3, s3, -379
                  slt          s0, s2, s1
                  andi         t2, s5, -1322
                  lui          t6, 501582
                  sub          t5, t0, s9
                  or           s8, s11, a1
                  srl          t6, s1, a6
                  addi         zero, s9, -1729
                  addi         s7, s7, 293
                  ori          a2, ra, 381
                  xor          a2, a6, t4
                  addi         s8, s1, 203
                  add          gp, s7, s2
                  sltu         s6, s9, a7
                  add          a6, a7, s9
                  sltu         t6, a1, ra
                  xori         gp, t5, -184
                  or           t5, ra, s7
                  srl          a4, a5, s2
                  slli         zero, a0, 17
                  slt          s0, t0, s10
                  ori          s4, s1, 362
                  sltu         gp, a6, t0
                  sll          a0, sp, a5
                  add          t1, t4, a5
                  and          t6, t1, a7
                  slli         s2, a6, 11
                  xor          a0, tp, s7
                  or           s5, s3, s4
                  ori          s2, t3, 99
                  slti         a0, t3, -1762
                  srl          s5, t2, a6
                  andi         sp, t6, 1364
                  add          s11, s3, t2
                  andi         a2, t3, 2041
                  sub          s9, a1, s3
                  xor          ra, s10, a6
                  andi         t1, s7, -1666
                  slti         gp, a6, 511
                  xori         s2, a1, -439
                  xori         t3, s9, -1323
                  srli         a1, a3, 6
                  xor          a4, s1, s2
                  sub          s5, a3, ra
                  sltu         a4, s7, ra
                  or           s8, a4, a4
                  sub          t5, zero, t2
                  ori          s4, a4, 1203
                  andi         a0, s10, 1548
                  sub          s11, t3, tp
                  add          s6, sp, a6
                  add          t4, a2, t3
                  sra          s5, t1, s3
                  andi         t2, sp, 1083
                  slt          tp, a2, t5
                  auipc        s11, 292519
                  xori         t3, t6, -1357
                  andi         a0, ra, 589
                  nop
                  or           a4, s10, s10
                  xori         s5, gp, -201
                  ori          s5, s4, 1649
                  nop
                  sll          t0, a0, gp
                  slti         t2, s8, 1927
                  slli         t0, sp, 2
                  sra          s2, s11, ra
                  ori          a3, zero, -1603
                  and          gp, s4, a3
                  addi         a1, t0, -632
                  srl          t3, s2, a6
                  srli         s9, s10, 22
                  addi         a1, t3, 46
                  xori         zero, s11, -2022
                  auipc        tp, 85746
                  sll          t1, t4, t3
                  sub          s9, tp, a4
                  addi         a0, s7, -78
                  xori         ra, s7, -1166
                  sra          ra, zero, s9
                  and          ra, a4, a7
                  sra          t0, a4, s9
                  slli         a6, t2, 11
                  or           s4, a2, a1
                  srli         a3, a2, 28
                  sub          t5, t5, a5
                  add          ra, gp, a4
                  addi         t4, t3, 1984
                  slt          s5, sp, sp
                  sll          t5, s8, a7
                  sltiu        s5, a6, -375
                  sra          s11, t3, a3
                  sltiu        s5, a7, -1173
                  xori         s9, t3, -525
                  srl          s11, s6, t6
                  sltiu        a1, tp, 609
                  sub          gp, a5, t0
                  or           t0, t2, s9
                  xor          ra, a1, a0
                  slti         s8, s11, -299
                  sub          t5, s4, a7
                  sltu         a3, a3, a1
                  sltiu        s7, a0, 1354
                  ori          s7, t5, 796
                  sra          a2, s8, s6
                  or           t1, s9, a6
                  nop
                  sltu         t5, t4, ra
                  srl          t0, s3, t5
                  sra          zero, a5, s0
                  nop
                  sll          t6, t3, a6
                  srl          s2, ra, s1
                  sra          s9, s4, s1
                  ori          t5, t0, 1332
                  sll          t0, t5, zero
                  andi         t1, a4, -583
                  ori          t1, ra, -1194
                  or           a5, s0, t5
                  sltu         a3, a2, t4
                  addi         t1, a1, -801
                  sll          t1, t0, gp
                  auipc        sp, 342800
                  ori          t1, zero, 1650
                  xori         s6, a4, -1581
                  srli         sp, s6, 7
                  srl          a0, a3, s8
                  sltiu        a6, a6, -1750
                  sltu         t3, a3, s6
                  ori          t4, t5, -1901
                  srl          s6, a7, a3
                  nop
                  sra          s7, a6, s2
                  lui          a4, 50147
                  slti         t5, s4, 1817
                  auipc        s4, 961943
                  nop
                  sltu         s5, s8, sp
                  andi         t2, s3, -915
                  sltu         zero, s7, s1
                  sra          s0, a1, a2
                  sltu         s2, t5, s1
                  xori         zero, a0, 572
                  sltu         sp, tp, a0
                  sll          a4, tp, t5
                  auipc        t4, 32210
                  xori         tp, zero, -244
                  xor          s1, tp, t4
                  slt          s4, s7, sp
                  srl          t6, s5, s3
                  li           t6, 0x21ffa614 #start riscv_int_numeric_corner_stream_3
                  li           a6, 0x0
                  li           s7, 0x80000000
                  li           ra, 0x80000000
                  li           t3, 0xffffffff
                  li           s9, 0x0
                  li           t1, 0x80000000
                  li           s8, 0x5289ee6
                  li           a1, 0x80000000
                  li           a3, 0xffffffff
                  lui          t6, 122733
                  nop
                  auipc        t6, 674457
                  nop
                  addi         t6, s7, -1213
                  auipc        s9, 67716
                  lui          t6, 968605
                  add          a3, a6, s9
                  addi         t1, t1, 1571
                  auipc        s7, 798106
                  lui          ra, 742790
                  lui          t1, 794659
                  addi         a3, t1, -1090
                  lui          t6, 742506
                  lui          s9, 757097
                  auipc        a6, 491623
                  sub          s7, a1, a3
                  lui          a1, 38223
                  auipc        a3, 152571
                  auipc        a6, 97354
                  sub          t1, s9, ra
                  lui          a6, 270543
                  add          s7, a6, s7
                  sub          a3, s8, s7
                  auipc        t1, 56269 #end riscv_int_numeric_corner_stream_3
                  sltiu        t3, s4, 304
                  slti         s2, a1, -1266
                  and          t6, a2, s0
                  sub          t1, s6, t1
                  lui          sp, 509956
                  sub          s8, a1, t4
                  sll          t3, s7, zero
                  lui          s4, 226432
                  ori          s5, gp, 342
                  auipc        s1, 337630
                  lui          t5, 240843
                  andi         t6, a5, 1379
                  sltiu        a3, zero, -1809
                  ori          a4, s5, 420
                  lui          t5, 248873
                  slt          t6, s4, gp
                  sltu         t5, a3, ra
                  srl          tp, t2, a4
                  add          a5, t2, s0
                  sltiu        t2, s4, 904
                  nop
                  sltiu        s8, a5, -1364
                  or           t4, a4, t1
                  slt          t5, s5, a1
                  addi         t2, a2, -2035
                  sll          s1, a1, a2
                  srli         t1, sp, 12
                  nop
                  or           a1, a4, a3
                  sll          a2, sp, a6
                  or           s11, t1, s1
                  addi         t0, sp, 1094
                  sra          a1, s0, s11
                  sltiu        t5, a4, -1807
                  sll          tp, gp, s9
                  auipc        s2, 871680
                  xor          s11, a5, t0
                  auipc        s1, 359068
                  sll          a0, t4, t3
                  srli         a6, t1, 0
                  andi         s6, t1, 1600
                  srli         t2, t6, 23
                  nop
                  or           ra, a5, ra
                  slt          gp, a4, t4
                  slt          t2, s1, sp
                  or           zero, a4, ra
                  add          s0, gp, ra
                  auipc        t1, 296178
                  nop
                  add          t1, t5, s3
                  xor          a0, t5, ra
                  or           sp, s1, a6
                  sll          s2, s5, s10
                  andi         s7, s4, -101
                  sub          a6, a3, s7
                  auipc        sp, 195177
                  sltiu        t2, a3, -245
                  slli         a5, s9, 4
                  srli         a6, s4, 22
                  sll          sp, ra, s10
                  auipc        t1, 755118
                  srli         t5, s9, 15
                  slli         t2, sp, 29
                  srai         t3, s4, 27
                  add          s5, s5, t0
                  slt          t5, s8, s0
                  sub          a0, gp, a0
                  srl          t1, t1, s3
                  srli         s5, t6, 6
                  sltiu        t2, a7, 1407
                  sub          a2, s7, t1
                  add          zero, sp, t3
                  xor          s2, s4, t4
                  or           a0, zero, s8
                  andi         t2, a3, 68
                  ori          ra, t5, 371
                  xori         s2, t0, -1897
                  sll          t5, a1, s3
                  addi         a1, s7, 778
                  add          a2, s11, s5
                  lui          a5, 928875
                  sltiu        gp, s6, 1713
                  and          t3, s2, a5
                  andi         s6, s4, -1484
                  slli         s9, s8, 8
                  srl          s8, a5, s5
                  srl          t5, t3, a5
                  addi         s0, a5, -876
                  auipc        a3, 415287
                  and          a0, a5, tp
                  sub          a6, s7, a4
                  auipc        s7, 968275
                  srai         t2, s10, 29
                  srli         t5, a6, 7
                  nop
                  lui          t0, 1012419
                  sll          ra, s1, t3
                  and          a5, s3, s8
                  sub          t1, s0, a3
                  sltu         t5, a3, ra
                  nop
                  sll          t2, t0, s10
                  slti         s2, sp, 393
                  auipc        t3, 272003
                  auipc        s11, 34277
                  auipc        a1, 127798
                  auipc        t6, 609861
                  sra          t4, s4, s2
                  xor          s11, t5, zero
                  and          s2, ra, a7
                  slli         s7, s9, 2
                  sub          gp, s3, t2
                  addi         s6, s0, -1813
                  srl          a3, s3, a4
                  srli         tp, t0, 29
                  slt          tp, a3, a1
                  slt          t3, a3, a6
                  sub          gp, ra, t4
                  slt          t2, sp, a3
                  andi         s5, t5, -91
                  sltu         ra, t4, a4
                  nop
                  sub          t3, ra, a1
                  slli         t0, s2, 22
                  sll          t6, s1, a2
                  srl          t0, a5, gp
                  slti         t1, s1, 1584
                  add          a3, s4, t6
                  and          s5, s5, a2
                  nop
                  addi         s7, a0, -667
                  sra          a1, tp, s6
                  sub          s6, s3, s0
                  addi         t1, t0, -398
                  andi         a4, a2, -556
                  slli         s1, t6, 1
                  lui          s2, 547438
                  sltu         s4, t3, t0
                  auipc        s1, 987763
                  addi         s2, ra, -1813
                  addi         t2, t0, 1405
                  auipc        s11, 962822
                  addi         t4, t2, 1208
                  srai         t4, a0, 18
                  and          a2, s1, sp
                  andi         s5, sp, -707
                  sll          s7, s3, a2
                  sltiu        tp, ra, -1665
                  sub          s8, a7, s5
                  slti         t5, s10, 50
                  addi         ra, s10, 1686
                  and          ra, zero, t5
                  auipc        a1, 162446
                  auipc        zero, 39956
                  auipc        a2, 376037
                  nop
                  slt          a6, t2, gp
                  and          t2, a5, s9
                  xor          t6, t5, s0
                  sub          s7, s5, s11
                  sltu         t0, t5, a1
                  sub          s9, a6, a3
                  or           t5, s0, gp
                  srli         s1, sp, 31
                  sub          s9, t6, a1
                  auipc        s9, 74883
                  auipc        s1, 636584
                  xor          s8, s9, a2
                  srli         a0, a5, 15
                  slti         sp, s9, 171
                  addi         s8, s6, -841
                  slt          s5, t0, s11
                  srl          gp, zero, sp
                  xori         t2, a4, -1522
                  sll          s0, t3, s0
                  slli         zero, t6, 11
                  sltiu        s11, s8, 1731
                  or           t5, gp, t0
                  or           gp, sp, gp
                  ori          s11, s2, -48
                  addi         t2, sp, 675
                  srl          a3, a1, s3
                  ori          tp, tp, -1258
                  sra          a6, s11, t2
                  add          a5, s9, a2
                  ori          t3, s3, 773
                  sll          s0, a0, s2
                  sub          t1, t1, a7
                  sll          s4, tp, s6
                  add          a4, s6, t6
                  slti         t1, t5, -409
                  slt          t5, a6, s4
                  auipc        a2, 236381
                  srl          tp, a6, s3
                  srl          a4, t0, t0
                  xori         a6, a6, -654
                  sltiu        a0, t5, 1510
                  or           tp, s11, t5
                  sub          a4, s9, s10
                  addi         a1, s2, 1044
                  sll          a5, s4, sp
                  xori         s5, s2, -118
                  sub          s6, s7, s3
                  xor          a4, s10, gp
                  slli         t2, s9, 2
                  slti         sp, t1, -414
                  or           s9, s1, t5
                  and          a3, s5, a4
                  sub          a4, s1, s3
                  sltu         s1, a3, t3
                  auipc        t4, 388625
                  and          a2, t3, a0
                  lui          a2, 839849
                  xor          s6, s10, s1
                  xor          sp, s0, s9
                  xori         s5, a3, -203
                  sltiu        t0, a7, 372
                  xor          s11, s2, a1
                  addi         a2, a3, -1854
                  sub          gp, s10, a0
                  slli         s4, s4, 22
                  sltu         a3, a2, s11
                  xor          s7, a5, sp
                  sra          tp, s2, a5
                  and          s2, t4, a3
                  slli         s9, gp, 23
                  sll          a1, s7, s4
                  srl          s4, s7, gp
                  ori          tp, t4, 1709
                  slli         t3, gp, 16
                  slt          a6, a5, zero
                  slli         a1, s0, 9
                  slli         t2, a4, 3
                  sltu         t0, s8, s5
                  sub          a6, a7, s4
                  sub          a4, t2, a3
                  or           t6, s4, t3
                  xor          sp, a0, s10
                  sub          s5, a4, s3
                  srl          s1, s0, t1
                  or           a5, t2, s6
                  lui          a5, 415764
                  xori         s8, sp, -1600
                  nop
                  slli         a3, sp, 21
                  sra          sp, s3, s6
                  lui          s0, 32294
                  and          sp, s1, a5
                  sra          t5, sp, s1
                  xor          a0, s4, t5
                  auipc        t0, 67362
                  ori          t3, s10, -1458
                  auipc        s11, 13337
                  add          s2, s9, t0
                  sub          s5, s10, s9
                  lui          a0, 143240
                  addi         a1, s6, 1101
                  sltu         t0, tp, t1
                  sltu         t2, sp, t6
                  or           t1, ra, s6
                  andi         zero, t4, 1653
                  xor          a3, a6, a3
                  srai         t6, s9, 6
                  add          a2, t4, s11
                  auipc        t4, 281195
                  lui          t6, 226548
                  ori          s2, s7, 232
                  and          s5, s1, s5
                  sltu         s8, s3, a2
                  sll          s2, s7, a0
                  slti         t0, s2, 720
                  slt          t5, s8, s11
                  ori          t5, t0, 1703
                  xor          t4, zero, sp
                  sub          t3, t1, s7
                  sra          s0, t4, s7
                  ori          s7, a4, -248
                  ori          a6, s0, 920
                  sltiu        s1, tp, -1517
                  slti         t3, s3, 797
                  and          a1, s2, s6
                  auipc        t2, 954110
                  auipc        t3, 482414
                  srai         t1, s3, 0
                  andi         t3, t5, 958
                  auipc        s6, 902916
                  and          t2, gp, s10
                  slt          gp, a4, s3
                  lui          a5, 252128
                  srl          t4, s10, a3
                  andi         gp, a6, -901
                  ori          s4, zero, 674
                  addi         s1, a7, -1631
                  xori         a3, s7, -524
                  srli         t4, sp, 29
                  andi         t6, s3, 141
                  add          t3, a1, t6
                  nop
                  slli         a1, sp, 29
                  slti         t0, s2, 1483
                  sra          tp, s11, sp
                  nop
                  ori          s5, a1, -1619
                  srli         tp, s5, 13
                  ori          s2, t2, -1623
                  slt          s5, t1, s0
                  addi         tp, s1, -2045
                  slti         t1, a2, 538
                  lui          s4, 180718
                  srai         t3, a1, 26
                  add          gp, s0, s9
                  sltu         s1, s0, zero
                  srli         s7, s6, 28
                  xori         t3, t2, -1832
                  sltiu        t2, a5, -1859
                  slli         s5, tp, 26
                  sltu         t4, s5, a2
                  addi         t4, zero, 301
                  sub          t0, s7, t2
                  add          a0, s10, s2
                  xor          t1, s6, s3
                  andi         a3, s10, -623
                  andi         sp, t6, -637
                  slti         s7, s1, -258
                  auipc        t3, 906941
                  nop
                  nop
                  auipc        ra, 677486
                  ori          s0, t2, -249
                  addi         a5, a3, -579
                  addi         s9, s6, -1904
                  slli         s1, t1, 3
                  lui          s8, 377516
                  sll          tp, a3, t5
                  sra          s5, s6, a5
                  sra          s1, t5, a1
                  andi         s7, s3, -747
                  or           a6, s5, ra
                  srl          t2, a3, s9
                  sltu         s7, a7, s2
                  and          a4, a0, s6
                  auipc        a1, 215339
                  sltiu        ra, s11, -1442
                  srl          t0, t0, t5
                  srai         a5, gp, 21
                  slti         s7, s0, -1776
                  and          a2, t5, a3
                  sra          zero, t5, t3
                  slt          t5, a4, tp
                  sltu         ra, s6, t2
                  srli         zero, a1, 25
                  srli         a6, t4, 21
                  add          zero, ra, gp
                  ori          t2, t5, -619
                  addi         a6, s9, 591
                  auipc        s6, 163638
                  lui          zero, 120732
                  sltiu        s0, zero, -1783
                  auipc        t0, 681602
                  or           ra, sp, s2
                  or           t2, s4, s10
                  slt          t0, t0, a4
                  sltu         t1, ra, a5
                  lui          s2, 392568
                  srl          a0, s9, t3
                  andi         ra, a1, -1772
                  ori          a3, t0, -1586
                  and          a5, a1, a7
                  sltu         s2, a7, s10
                  sub          t1, a1, t5
                  lui          t6, 733864
                  add          sp, t5, s10
                  and          t0, a4, s7
                  auipc        ra, 255168
                  or           a2, s8, a1
                  slt          t5, s8, tp
                  andi         s2, a0, 1142
                  srli         a1, s7, 2
                  add          s7, s9, s4
                  sll          tp, s9, t0
                  sub          zero, s10, s6
                  ori          s1, a0, 1595
                  slli         s5, s9, 15
                  slt          s5, s11, a6
                  and          s11, s7, a4
                  sltu         s0, a0, a1
                  slti         t5, a3, 820
                  sltiu        s11, a2, 1009
                  slti         t2, s7, -602
                  xori         s1, s0, -1873
                  srl          s8, a4, gp
                  srai         t4, a0, 29
                  or           a3, gp, s10
                  xori         s8, s3, 276
                  sltu         a1, gp, s2
                  ori          a2, s4, 110
                  sltu         ra, t1, t4
                  and          t2, zero, t2
                  srai         a0, s7, 31
                  or           a2, s9, a3
                  sltiu        t0, sp, 1489
                  sltu         sp, s3, a3
                  sltu         t0, s4, s9
                  lui          a0, 294092
                  srl          t4, s3, t5
                  sub          s7, s2, s8
                  srai         a0, t1, 21
                  sra          a2, s3, s11
                  or           a0, s3, s0
                  srli         t1, gp, 29
                  add          a4, t2, a2
                  slli         gp, zero, 15
                  slt          s7, a7, s9
                  sltu         a3, s4, s3
                  sltu         s8, s6, t6
                  xori         gp, s10, 1612
                  srli         s4, a4, 28
                  ori          ra, zero, -175
                  ori          a5, s6, 188
                  auipc        t2, 984450
                  xor          s7, s10, t5
                  addi         s1, s2, 438
                  addi         ra, s3, -1984
                  add          s2, t2, sp
                  addi         a5, sp, 1560
                  add          a5, sp, t4
                  nop
                  nop
                  ori          s0, sp, -207
                  srl          s9, t6, s8
                  or           sp, t2, zero
                  xori         t4, s5, 8
                  srl          a0, t1, a2
                  slti         t4, t3, -372
                  addi         s0, a0, 2008
                  slti         a4, t2, -907
                  sll          sp, t1, t4
                  lui          a2, 667437
                  or           s2, s7, zero
                  sll          s1, t3, t0
                  slli         s11, t3, 27
                  xor          s4, s7, t5
                  sub          t0, s10, s10
                  srl          a5, t6, a0
                  add          a1, a4, ra
                  or           sp, s7, a4
                  sltiu        s7, tp, 1064
                  auipc        s7, 1040591
                  and          s2, t2, sp
                  slti         s2, s9, -23
                  srl          s1, t3, t3
                  srl          s1, a3, s10
                  srli         zero, t3, 26
                  andi         s5, s7, -788
                  srai         t3, a2, 9
                  srl          s7, t4, s8
                  xori         s5, a7, 1229
                  srai         a4, t3, 30
                  slt          s4, t0, a5
                  slti         s6, s10, -779
                  or           t0, a5, a1
                  sub          s5, a6, s2
                  xor          s4, s1, s4
                  sll          s7, a3, s6
                  slli         a5, tp, 27
                  sra          a1, s7, s3
                  sltu         a2, s9, a5
                  xori         s4, a7, -752
                  slli         s4, s11, 3
                  slti         gp, s0, 453
                  srai         s8, s9, 14
                  srli         sp, t0, 25
                  srai         tp, s6, 18
                  srli         t4, s0, 23
                  srai         a3, a5, 8
                  xor          s9, a4, s7
                  slti         gp, s4, -446
                  addi         a4, s10, -704
                  nop
                  slti         a4, s8, -1149
                  srai         s7, t0, 4
                  or           t6, t3, gp
                  andi         s1, s10, 687
                  addi         s11, a5, 1466
                  sub          a2, s0, a4
                  sub          s9, t4, s9
                  sltiu        a0, sp, -1444
                  xor          a4, s9, gp
                  srli         a6, t6, 20
                  addi         gp, s3, -487
                  slli         a4, a4, 12
                  addi         s0, tp, 771
                  slli         ra, s6, 9
                  sltiu        t2, s1, -337
                  sub          s5, a6, t1
                  add          sp, a6, ra
                  nop
                  xori         a4, a1, -1950
                  nop
                  slti         tp, s2, -1806
                  slt          t4, s3, a5
                  slti         gp, s3, -621
                  sra          s4, s2, t4
                  auipc        s4, 921734
                  srai         t5, ra, 14
                  slti         s0, s0, 626
                  add          s5, s4, a6
                  nop
                  and          tp, s0, sp
                  and          s1, s4, s9
                  or           s5, tp, s10
                  sltiu        s8, t4, -915
                  addi         a6, s2, -116
                  andi         a2, a1, 1129
                  srl          s1, t5, s0
                  sub          a4, s2, s5
                  or           s9, s3, a0
                  add          t1, a1, a3
                  srl          t0, s10, a2
                  add          t5, s5, t3
                  slt          s4, s1, s0
                  xori         s6, ra, 278
                  sltiu        a0, a7, -540
                  andi         a4, s8, 1300
                  slli         t2, s8, 12
                  srl          s0, s11, s3
                  srl          s1, s0, ra
                  sra          t1, s2, s10
                  srli         zero, s6, 1
                  nop
                  slt          s4, s4, a3
                  addi         s0, a4, 2046
                  srli         s5, a7, 20
                  srli         gp, s6, 2
                  andi         t2, s4, -1463
                  ori          t3, a3, 958
                  or           a1, a1, s2
                  sub          a3, s9, a1
                  ori          a3, t0, -985
                  lui          a4, 1007383
                  srli         s4, a7, 15
                  addi         t0, gp, -1114
                  srli         t6, s3, 4
                  addi         s6, s0, -808
                  srai         s11, tp, 11
                  srli         tp, a4, 31
                  sltu         s4, t0, t3
                  sra          t4, t4, sp
                  srai         s0, s0, 11
                  srli         t5, a2, 30
                  slli         t3, s4, 15
                  nop
                  nop
                  or           s9, a2, a4
                  sltiu        s4, gp, 1775
                  lui          t3, 1034433
                  srai         s9, t5, 12
                  lui          tp, 323873
                  or           t2, a1, a4
                  nop
                  slt          s1, a3, sp
                  addi         s4, s7, -495
                  slli         gp, a4, 30
                  or           tp, tp, a1
                  sll          s11, s7, zero
                  sll          t0, a4, s3
                  and          s11, s11, s6
                  sltiu        t1, s9, 302
                  andi         sp, a5, 1282
                  xori         s2, t3, 1648
                  lui          tp, 728704
                  auipc        gp, 780495
                  sltu         s9, sp, s5
                  addi         a6, t6, -991
                  slti         sp, a1, -1962
                  sll          s5, s1, t3
                  sra          a0, a3, a5
                  auipc        a0, 61882
                  sub          s1, t5, a1
                  auipc        a0, 1013365
                  andi         ra, s9, -1812
                  srli         a4, t4, 14
                  add          a5, t1, s8
                  or           s11, a4, t4
                  srli         s7, a5, 13
                  sltiu        t6, a6, 838
                  sra          t0, s7, t3
                  xori         gp, tp, -1915
                  auipc        s8, 104954
                  and          s8, t6, s0
                  slt          a0, t2, sp
                  srli         a2, a5, 5
                  srli         tp, a6, 5
                  sub          gp, a0, t1
                  nop
                  or           s9, t0, s1
                  xor          t1, a3, a5
                  sll          s5, a6, a1
                  srai         gp, s11, 23
                  or           tp, s3, t5
                  xori         s9, t1, -102
                  sltu         sp, t2, s5
                  srai         s8, s5, 11
                  or           a0, s4, a0
                  slti         t0, s11, -1484
                  auipc        tp, 147124
                  slli         t2, s11, 3
                  addi         s9, t4, 1486
                  addi         t5, s9, -1620
                  addi         a4, s4, 761
                  slt          a3, t0, a1
                  add          t0, s11, a3
                  nop
                  xor          a5, a2, a0
                  or           sp, tp, s3
                  lui          a4, 72939
                  slli         t2, s9, 18
                  srl          s2, a3, ra
                  slt          s2, s3, t5
                  add          s2, s7, s6
                  sra          s8, t0, tp
                  sub          s2, a5, s10
                  sll          s9, s8, s8
                  slli         s1, s3, 24
                  auipc        t2, 1031835
                  xor          s7, s11, s4
                  srl          t0, gp, a3
                  lui          t3, 803247
                  sll          t3, t6, s2
                  ori          zero, t6, 1399
                  or           t4, s8, s5
                  auipc        a0, 412960
                  xori         a2, a3, -875
                  slti         s4, s11, 1567
                  addi         s5, t0, -564
                  srl          a6, tp, t1
                  sltu         s0, t0, t2
                  sub          t4, t6, ra
                  sltu         a4, s10, a3
                  or           a0, t2, s6
                  add          s6, a0, sp
                  andi         tp, a1, -1057
                  sra          a5, t0, s11
                  slli         t1, s11, 1
                  sll          s0, s2, gp
                  sll          s6, s4, t4
                  and          sp, s2, t3
                  slt          gp, a5, ra
                  and          t3, t6, s9
                  and          t2, t5, t6
                  add          s8, a0, t0
                  xor          t6, a5, s2
                  addi         t0, s8, -1364
                  add          t4, zero, t3
                  sltu         zero, t2, t0
                  sub          s7, t5, t6
                  slli         s8, t6, 4
                  sltiu        a5, s10, 2016
                  srli         zero, a4, 5
                  addi         s8, t0, -366
                  nop
                  sll          gp, s0, s9
                  sll          zero, s11, zero
                  slti         a2, s1, -154
                  slti         ra, t3, -1811
                  srl          gp, a2, ra
                  sltu         t2, s1, t3
                  nop
                  addi         t3, s5, 133
                  srl          t5, s4, a3
                  ori          s7, s10, 1037
                  srli         s9, s0, 0
                  srli         s9, t6, 17
                  srl          a5, t4, s1
                  srl          s6, s9, t5
                  slti         s0, s9, -789
                  addi         t1, ra, -1015
                  ori          s9, s5, 1033
                  srai         ra, t3, 11
                  srai         a1, a6, 17
                  slt          s1, gp, t1
                  srl          gp, s7, s2
                  andi         a6, ra, -1886
                  andi         zero, s6, -695
                  sra          a4, s9, s3
                  lui          sp, 811768
                  sll          ra, s9, t6
                  or           a2, a0, s6
                  slli         s0, a5, 21
                  addi         s5, s7, -1734
                  sll          s11, gp, tp
                  or           zero, t4, a3
                  sll          gp, a0, s3
                  add          a0, s1, a7
                  sltiu        ra, t4, 2013
                  andi         a4, a0, 546
                  andi         gp, a1, -1118
                  srli         sp, a6, 31
                  addi         s4, zero, -641
                  xori         s8, t5, 1382
                  xor          s4, t0, s1
                  ori          a0, a7, 1044
                  xori         s7, t6, -195
                  auipc        tp, 319823
                  addi         t3, s1, -1095
                  sra          sp, s5, s5
                  slli         tp, t0, 27
                  sltiu        s8, a3, 1635
                  sltu         s0, a2, a7
                  auipc        a2, 269167
                  xor          s11, a4, gp
                  xori         s1, sp, -1708
                  lui          tp, 266140
                  srli         gp, sp, 17
                  add          t3, s5, s9
                  slli         a6, t4, 0
                  srl          a2, t0, a5
                  xor          a3, s1, s1
                  sltiu        s7, a1, 683
                  and          s11, s8, s10
                  srl          s0, s5, zero
                  nop
                  and          a6, s11, t6
                  or           s11, ra, a5
                  srli         gp, s5, 2
                  slti         a5, s1, 50
                  srai         t2, a5, 26
                  or           s2, a6, a5
                  auipc        s1, 867230
                  nop
                  auipc        ra, 712597
                  xori         s2, a4, 543
                  slt          s8, s2, s6
                  andi         a2, t3, 1445
                  or           a2, a3, s6
                  addi         a4, s4, 1403
                  xor          s0, t2, s8
                  slli         t0, a1, 23
                  and          sp, a1, a7
                  slti         zero, a0, 1999
                  slli         ra, ra, 17
                  ori          a2, a3, -1691
                  and          ra, t6, s6
                  ori          s7, gp, -1277
                  xor          tp, a5, t3
                  srai         s9, s11, 17
                  srai         s11, a7, 14
                  sll          a5, s10, zero
                  srai         t3, s10, 24
                  slli         s11, a7, 25
                  nop
                  ori          t1, gp, -1444
                  slt          gp, a7, a0
                  auipc        a6, 577732
                  sll          a6, t1, a1
                  srai         a5, s0, 5
                  xor          t2, t0, s2
                  sll          s0, gp, s2
                  srai         gp, s4, 2
                  nop
                  ori          a3, a0, 968
                  srl          sp, a7, a1
                  lui          a1, 126129
                  auipc        a3, 782258
                  slli         s5, t3, 23
                  lui          a2, 755900
                  auipc        s6, 938630
                  andi         s9, s2, -1256
                  li           s5, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           tp, 0x70d3525b
                  li           gp, 0x0
                  li           s9, 0x80000000
                  li           s6, 0x80000000
                  li           s8, 0x80000000
                  li           a0, 0x80000000
                  li           sp, 0xffffffff
                  li           a6, 0x80000000
                  li           a5, 0xffffffff
                  nop
                  sub          a5, a6, a0
                  addi         tp, a5, -263
                  addi         s5, s6, 908
                  auipc        s8, 676993
                  add          s8, a5, sp
                  add          s8, sp, sp
                  sub          sp, s6, s8
                  auipc        a5, 805326
                  sub          a5, gp, s5
                  addi         a5, gp, 1063
                  addi         a0, s6, -1333
                  add          a0, s5, tp
                  lui          s6, 791910
                  auipc        s8, 463653
                  auipc        s8, 761783
                  auipc        s9, 523606
                  add          tp, a0, a0
                  addi         a0, s8, -1882
                  addi         tp, s8, 481
                  add          gp, s8, sp
                  lui          a6, 949022
                  add          a5, s8, a5 #end riscv_int_numeric_corner_stream_10
                  sub          a0, a6, a6
                  sub          s2, s1, a7
                  sll          t2, s7, s2
                  xor          t6, ra, t3
                  sll          tp, s0, s11
                  srli         gp, a6, 8
                  slti         a5, a3, -632
                  and          a6, a6, gp
                  slli         a2, s10, 7
                  srai         s9, a0, 24
                  slti         s2, s6, -1839
                  sub          zero, zero, t5
                  slti         t2, t5, -997
                  or           t5, s7, a0
                  andi         a6, s6, -1667
                  sll          a0, s9, a3
                  sra          s7, t0, a7
                  ori          s1, t1, 1462
                  xori         t2, a4, 1620
                  ori          a2, t5, -1651
                  or           t1, t2, s1
                  or           a2, s7, s1
                  slti         a0, s11, 1189
                  slli         sp, gp, 4
                  xori         t0, a1, 712
                  xori         t4, ra, 1724
                  add          a1, a6, t6
                  sltiu        s5, s9, 1729
                  sub          t3, s4, s0
                  sub          gp, gp, t2
                  sra          s1, t4, t4
                  slli         t0, s6, 4
                  and          tp, a3, sp
                  srli         tp, s2, 2
                  sll          zero, s7, a5
                  nop
                  slt          s8, s3, a3
                  nop
                  and          t1, a4, t1
                  add          s0, a5, a7
                  auipc        ra, 1044146
                  sra          zero, sp, tp
                  ori          s9, a4, -48
                  slti         t5, a7, 1832
                  xori         ra, a7, 189
                  sll          t3, a1, s6
                  or           s7, s3, s3
                  sltiu        s8, sp, -1440
                  auipc        a6, 478230
                  or           s11, a0, a5
                  xori         t3, t1, -1780
                  ori          t6, a6, -1890
                  auipc        s9, 86807
                  srli         t6, a0, 22
                  sltiu        gp, s9, 1910
                  srai         s5, s6, 23
                  add          s11, gp, s10
                  sub          a2, s2, s7
                  srai         a4, zero, 22
                  slli         s7, a6, 25
                  ori          t1, s8, 879
                  lui          t4, 977775
                  sll          tp, s9, s1
                  srli         tp, gp, 1
                  slli         tp, t6, 19
                  xor          a0, a5, a7
                  sltu         s1, s10, s1
                  sltiu        a5, a1, 1214
                  and          t6, a0, a4
                  or           t2, t6, s7
                  auipc        s1, 73294
                  sub          gp, s1, a5
                  lui          s7, 1006866
                  sltu         ra, a4, tp
                  addi         s11, s9, -1325
                  slt          s1, s11, t0
                  sub          s4, t0, t3
                  sll          a3, a2, tp
                  ori          t2, zero, -681
                  srl          s4, ra, a3
                  lui          a6, 589798
                  srai         ra, s1, 13
                  andi         s0, s1, -913
                  srai         s6, s0, 17
                  slt          t2, tp, a1
                  slt          t4, t0, a5
                  add          t3, a0, t5
                  add          a1, t3, tp
                  srl          gp, gp, a6
                  srl          a3, zero, s1
                  ori          t5, s9, -1999
                  sltiu        a6, s11, 770
                  srai         zero, t6, 14
                  xori         gp, s6, 641
                  sltu         t0, s2, a2
                  addi         a0, t4, -811
                  sltu         ra, a4, s5
                  srl          a2, s1, s7
                  and          s1, t5, s2
                  srl          t4, a0, s3
                  slti         a0, s10, -1036
                  xori         tp, a5, 1531
                  or           a2, t3, a3
                  lui          t0, 992698
                  nop
                  srai         s5, zero, 18
                  add          gp, gp, s6
                  addi         t2, sp, 482
                  lui          s2, 134752
                  xor          zero, a7, s7
                  and          a3, a1, t4
                  srai         gp, t1, 29
                  add          s7, a2, s10
                  andi         ra, ra, 1051
                  xor          t1, s9, t1
                  sltu         t3, a4, t5
                  srl          s6, t6, s11
                  nop
                  sll          a5, s6, a7
                  srl          s0, tp, s5
                  sll          s9, t4, gp
                  sll          zero, s6, s8
                  srli         a3, s9, 17
                  sll          a5, a1, gp
                  slti         s7, s4, 1875
                  sltu         s2, s9, a6
                  sltu         s4, s8, s3
                  sub          t3, sp, gp
                  sra          a2, t4, gp
                  srli         s8, s3, 8
                  sll          t3, s1, s4
                  sra          a5, tp, sp
                  and          sp, s1, zero
                  srai         t6, ra, 14
                  auipc        t0, 212894
                  nop
                  lui          s8, 330236
                  sra          s9, a7, t4
                  sub          t1, s0, s10
                  srl          s5, a1, s0
                  srli         s4, s0, 9
                  xor          a5, s2, s3
                  auipc        s1, 731399
                  lui          t5, 818256
                  sltu         a2, t4, a4
                  slti         gp, s7, 1378
                  or           a2, s10, s8
                  ori          zero, t0, -181
                  or           s2, s11, gp
                  addi         ra, ra, 1694
                  srli         t5, s6, 18
                  addi         a0, sp, -1091
                  sra          t3, a5, sp
                  and          s1, tp, t1
                  xori         s2, s10, 2019
                  slt          a2, t5, s4
                  xor          a2, t2, a3
                  sra          t0, sp, a2
                  srai         gp, a7, 11
                  and          t5, s5, s2
                  sltiu        t1, a2, 426
                  auipc        a5, 478798
                  xori         s6, ra, 909
                  slt          a5, tp, a4
                  xori         s0, a5, -389
                  srl          a4, t3, a0
                  sub          t3, s0, s11
                  sltiu        t1, sp, -1195
                  srli         sp, a1, 24
                  and          s5, a7, s8
                  sll          tp, s6, zero
                  nop
                  sltu         s6, s0, a0
                  andi         s7, a1, 1534
                  addi         t3, a6, 15
                  sltu         s1, s11, s7
                  or           t1, a0, sp
                  and          zero, a7, s7
                  slt          ra, s3, t5
                  and          s1, s9, gp
                  srli         s5, s2, 7
                  sll          t3, s3, t3
                  sub          a5, s4, sp
                  srai         a4, s5, 27
                  srli         s6, t2, 2
                  add          s9, s11, s1
                  nop
                  add          zero, s9, t5
                  srl          s4, s9, a1
                  nop
                  srl          a0, tp, ra
                  slli         t2, zero, 23
                  srli         gp, a7, 29
                  slli         sp, a4, 16
                  or           s9, s2, s8
                  srl          s7, t6, t2
                  nop
                  or           t4, a3, s5
                  addi         s6, s10, -51
                  sltu         s1, s1, zero
                  addi         t6, t4, -1134
                  sltu         s6, s6, s0
                  lui          a4, 495254
                  lui          a4, 441611
                  auipc        a2, 702957
                  or           t5, t1, t6
                  xor          a6, t4, a3
                  sll          s6, a7, s7
                  xor          t4, tp, a4
                  sub          s0, s11, s6
                  slt          a2, ra, s8
                  slt          s8, a4, a0
                  sltiu        s0, t5, -179
                  slli         s11, t5, 7
                  srl          ra, s6, t2
                  sltiu        a1, gp, -962
                  sra          t6, tp, ra
                  srl          a2, s10, t6
                  sltu         t3, t2, ra
                  sltu         s5, tp, a6
                  srli         a2, tp, 20
                  slt          a1, gp, a2
                  xori         s7, a2, -1921
                  slti         a6, a5, -1440
                  and          s5, s8, s9
                  or           t4, t3, t2
                  slti         s0, s8, -836
                  slti         s0, a0, 1106
                  sra          s0, ra, t4
                  sll          a0, s8, zero
                  or           a0, a3, s1
                  sltiu        s9, a3, 847
                  andi         t6, ra, 1398
                  nop
                  slti         t2, a2, 876
                  xori         t4, a5, 1912
                  sltu         a6, a6, s8
                  sltu         s9, zero, t3
                  sltiu        t2, a7, -1551
                  slt          a4, a5, t3
                  or           a2, t1, s5
                  auipc        zero, 198205
                  add          t2, t2, s8
                  sltu         t0, t0, s8
                  srli         a1, s6, 10
                  sra          s9, gp, a1
                  sub          a5, s5, ra
                  auipc        a4, 590536
                  auipc        a2, 434068
                  slti         t6, t2, -531
                  lui          t3, 3031
                  srli         t4, a7, 12
                  srai         gp, sp, 22
                  nop
                  lui          s11, 255920
                  sra          a0, s0, s4
                  andi         a1, a3, 1630
                  srai         t2, t1, 12
                  xor          s5, a7, a2
                  addi         s6, a4, -385
                  and          t1, s4, s10
                  slli         a0, t6, 7
                  srl          s7, a0, s3
                  or           a2, s0, a0
                  lui          s11, 117737
                  slli         t1, s0, 5
                  sltiu        t6, t1, 933
                  lui          tp, 471795
                  sub          s11, s0, s4
                  addi         s4, t1, -943
                  xor          t1, a7, s8
                  xor          s11, s9, s4
                  or           a5, t2, s1
                  srli         s6, a7, 11
                  nop
                  srli         t4, s6, 9
                  ori          t6, s4, 813
                  sltiu        a3, a7, 1591
                  and          s11, ra, t5
                  sra          zero, t5, t3
                  xor          t6, a3, s3
                  ori          sp, s1, 384
                  addi         s0, s0, 702
                  slli         s5, t5, 7
                  lui          zero, 86439
                  sltiu        a1, t5, 2046
                  srai         s0, ra, 11
                  add          s9, a6, a4
                  sll          gp, gp, sp
                  lui          a1, 740867
                  or           gp, a4, a4
                  srl          tp, a7, zero
                  ori          t2, s7, 1967
                  and          t6, t1, s6
                  ori          t4, a0, 1332
                  srl          a5, a1, s9
                  slti         s1, s1, -1947
                  slti         t3, s1, -1232
                  addi         t6, t6, 1918
                  or           t5, s11, s9
                  sub          s4, s4, t6
                  or           a6, s11, s10
                  sub          a3, zero, a7
                  andi         s8, sp, -1978
                  and          s11, s8, ra
                  slli         zero, t0, 21
                  slt          t0, sp, a7
                  auipc        a0, 44215
                  nop
                  xor          tp, zero, ra
                  slli         s5, ra, 2
                  sra          s2, s5, a0
                  lui          a0, 844106
                  nop
                  slt          s8, t1, ra
                  and          s6, t5, s8
                  xor          t3, a5, a4
                  lui          t2, 230158
                  sltu         s1, s0, s7
                  sltu         a4, s6, a6
                  slli         s8, s10, 2
                  xor          t6, gp, s5
                  add          s0, a6, t3
                  and          zero, s7, a6
                  sub          sp, t1, a7
                  slt          a5, s6, s7
                  and          s5, s7, s2
                  lui          a0, 864973
                  lui          s7, 777808
                  srli         t2, s1, 3
                  add          a4, s0, t3
                  xor          a0, s2, t3
                  xori         s5, a2, 1977
                  slti         tp, s8, -931
                  xori         tp, s0, 731
                  and          a6, s9, s11
                  or           s0, t5, a0
                  slt          t3, s11, s0
                  and          a6, t5, a6
                  xor          s0, ra, a5
                  srai         tp, a6, 23
                  auipc        s6, 953411
                  add          a3, s0, t0
                  sll          s2, a3, s0
                  srai         t6, a5, 26
                  addi         t0, a7, -1620
                  auipc        a6, 176076
                  sub          t2, s3, a1
                  auipc        t4, 8247
                  slli         t2, s10, 8
                  srl          t6, s6, s2
                  lui          a5, 850897
                  slti         s4, s4, -486
                  auipc        s0, 552006
                  or           a2, a4, t2
                  and          s11, t2, t6
                  slli         s1, t1, 10
                  srl          t1, s6, t3
                  nop
                  or           s7, t4, a3
                  slti         s6, a7, 1480
                  srl          t6, ra, s8
                  and          s8, a6, a5
                  slt          a0, a5, s5
                  slli         s1, sp, 16
                  xor          t6, s1, a2
                  add          zero, s9, t3
                  xori         s0, tp, 337
                  srai         s4, t5, 3
                  srli         tp, a1, 2
                  srli         s2, s8, 26
                  lui          t3, 389616
                  slt          a1, t6, s2
                  slli         a4, s3, 8
                  slli         ra, t4, 14
                  srl          t2, a6, a1
                  addi         s1, gp, -1007
                  or           a5, s1, s8
                  add          t4, ra, a3
                  srl          t2, s10, s2
                  or           t5, t5, sp
                  or           ra, t3, s10
                  lui          a6, 314956
                  nop
                  lui          s8, 425418
                  and          a4, s4, a5
                  sra          t5, a2, s11
                  sltiu        s5, t4, 369
                  sra          gp, s6, zero
                  slt          a5, ra, gp
                  or           s8, a2, s9
                  auipc        s2, 532992
                  sub          ra, s6, t6
                  slt          s1, s2, a5
                  nop
                  xor          t4, t6, s4
                  srai         a5, s6, 31
                  sub          t3, zero, t2
                  srli         s7, s3, 2
                  slti         s7, s2, 527
                  slti         a6, t4, 578
                  slt          s0, s10, a5
                  nop
                  auipc        a6, 833584
                  sra          a3, s4, a5
                  sra          a1, t6, a3
                  xor          tp, t4, s0
                  nop
                  srli         s8, a3, 2
                  sll          s11, a2, s0
                  sltu         a1, a1, t4
                  addi         zero, t1, 1608
                  lui          s5, 37070
                  andi         s7, t1, 1764
                  srai         s6, a1, 0
                  slti         s0, a2, -688
                  addi         a5, t1, 284
                  ori          zero, t5, -1290
                  sltiu        t6, a4, -1528
                  slti         tp, s1, -1301
                  andi         sp, s6, -586
                  sltiu        a0, t3, 158
                  ori          t6, t0, 1263
                  srli         s8, s7, 30
                  srai         t1, a3, 5
                  srli         t5, s2, 7
                  sltu         s4, s1, t6
                  sltu         a2, s6, a3
                  xori         t1, a0, 697
                  sub          s6, t1, t6
                  or           s8, zero, a1
                  xori         s6, t1, -868
                  slti         t1, s0, 52
                  srai         s5, t2, 5
                  xor          a1, s4, t4
                  andi         a4, t4, 70
                  srl          a3, s2, t3
                  sll          s4, t4, gp
                  add          t6, a1, a1
                  lui          t2, 295840
                  andi         tp, s5, -1016
                  srai         s2, ra, 24
                  addi         s1, a5, -684
                  sltu         t3, s10, t2
                  sra          a5, gp, s6
                  lui          s2, 296005
                  sll          s8, t6, t5
                  sub          a3, tp, tp
                  srli         a0, tp, 10
                  slt          a0, a7, t4
                  xor          t5, t6, s4
                  ori          s5, s6, -1865
                  or           t5, s1, sp
                  slli         a2, s8, 22
                  ori          t6, t1, 1542
                  xor          t2, s8, t5
                  andi         t0, s5, 1856
                  nop
                  lui          s1, 783220
                  srli         a3, s3, 0
                  slt          s4, t3, s0
                  andi         t5, gp, 1060
                  xor          gp, s2, a6
                  xor          a6, tp, ra
                  sra          t5, a0, s4
                  addi         t3, t1, -486
                  srai         a4, t1, 27
                  srai         t0, t3, 2
                  auipc        t6, 1013825
                  xori         s0, s8, 1221
                  xor          t4, s0, t5
                  ori          t1, t1, -532
                  or           zero, t1, s3
                  srai         sp, t0, 11
                  ori          sp, a4, 1526
                  auipc        s0, 356258
                  sll          tp, t2, s11
                  sll          a6, s11, t6
                  nop
                  ori          s4, a6, 1161
                  nop
                  add          s1, s3, s11
                  auipc        t6, 480179
                  sra          a2, t0, a2
                  sub          a2, a0, t6
                  srl          s1, tp, sp
                  srai         s7, s8, 5
                  li           t5, 0x36aaa2c7 #start riscv_int_numeric_corner_stream_8
                  li           s9, 0x50bfb0c0
                  li           a6, 0x0
                  li           a5, 0x0
                  li           a2, 0x5dcab3c2
                  li           s4, 0x0
                  li           t0, 0x4dfe8c0
                  li           ra, 0x32687c20
                  li           t3, 0xffffffff
                  li           tp, 0x0
                  lui          tp, 847907
                  sub          tp, s4, tp
                  lui          s4, 479311
                  auipc        a6, 24464
                  add          ra, t3, tp
                  nop
                  addi         tp, a2, 909
                  addi         a5, s9, -352
                  nop
                  lui          a5, 495650
                  lui          ra, 53595
                  add          a5, t5, t3
                  add          a2, s9, a6
                  auipc        a6, 464809
                  lui          s9, 632808
                  add          t0, t5, tp
                  lui          ra, 582393
                  auipc        tp, 186679
                  nop
                  nop
                  add          tp, ra, a5
                  sub          a2, t0, tp
                  add          a5, ra, t5
                  nop
                  sub          a2, t3, s4
                  lui          tp, 485225
                  auipc        a2, 371237
                  auipc        s4, 1016927
                  addi         a5, a5, -469 #end riscv_int_numeric_corner_stream_8
                  srai         s2, t5, 6
                  xori         s1, t1, 845
                  xor          s11, t4, s7
                  srai         a5, t3, 30
                  andi         a5, ra, 747
                  slli         ra, s9, 8
                  xor          s9, t2, t4
                  sltiu        a2, s6, 404
                  slti         t3, t4, -67
                  and          s11, a4, gp
                  srl          a1, t1, zero
                  lui          t2, 879087
                  add          s8, sp, s8
                  or           a0, tp, s2
                  xor          sp, tp, a0
                  auipc        s11, 35395
                  slt          a4, s8, a7
                  andi         zero, a7, 708
                  nop
                  xori         t3, s9, 1189
                  ori          a6, sp, -1980
                  xor          sp, t1, t0
                  slti         s9, s3, 628
                  nop
                  add          s6, a1, t2
                  nop
                  xori         t0, s9, -1401
                  slti         a3, gp, -485
                  sltu         s1, a5, s11
                  ori          s4, a7, -988
                  srl          t4, t0, s5
                  and          s2, t1, a6
                  xori         s2, t5, -571
                  and          a6, a5, a0
                  and          tp, a6, s11
                  sltu         t6, s11, a7
                  slt          a1, a3, t3
                  auipc        tp, 529745
                  slli         a6, a4, 7
                  srai         a6, a0, 3
                  nop
                  lui          a6, 1025067
                  slli         a0, s10, 28
                  ori          gp, s11, 1083
                  ori          t1, t6, -553
                  xori         t1, s5, 39
                  andi         zero, a3, -688
                  nop
                  srl          t0, a6, sp
                  srai         a0, t4, 31
                  slt          s9, s3, sp
                  andi         s2, s4, -1347
                  sltiu        sp, s3, -2045
                  xori         t5, a7, 1133
                  sll          s7, sp, ra
                  slli         a1, a7, 1
                  slli         s8, a7, 6
                  add          t3, a4, gp
                  sltiu        a5, t4, -1973
                  or           t2, s10, t5
                  xori         a4, gp, -207
                  srli         a5, t0, 13
                  lui          a3, 961868
                  andi         s6, a7, -690
                  add          s0, t5, s2
                  ori          a6, a5, 1415
                  xor          a0, gp, s9
                  srl          tp, s10, s5
                  srai         zero, a7, 9
                  sub          s8, a1, a4
                  addi         s0, a0, -976
                  slt          s7, s4, t2
                  srl          a6, zero, tp
                  sub          a2, s2, s8
                  slti         s0, t1, 1854
                  and          s8, ra, t0
                  xor          s0, s10, gp
                  addi         a1, t3, -1931
                  srai         s2, t3, 23
                  addi         s8, s9, -513
                  srai         ra, s6, 26
                  xori         gp, s11, 1196
                  lui          t0, 1005181
                  srai         t4, s1, 9
                  sub          t2, s3, sp
                  and          t2, a0, t6
                  slti         a3, s7, 1716
                  sltiu        s6, s7, 216
                  and          t3, sp, a0
                  slt          a1, s2, t5
                  slli         t5, t6, 30
                  sltiu        t2, a2, -898
                  xori         t4, ra, 569
                  slti         s9, s8, -188
                  lui          t0, 806615
                  srl          sp, a1, a6
                  slt          s4, a3, a3
                  addi         t6, s5, 1664
                  lui          a2, 694717
                  slli         t3, t1, 7
                  sll          s11, s3, s0
                  ori          s1, a2, -16
                  and          t0, s10, a1
                  sra          t2, s10, a2
                  sub          a1, a1, s5
                  sltu         ra, a7, s8
                  nop
                  sub          sp, t0, s9
                  addi         ra, a4, 2016
                  lui          s7, 48082
                  sltiu        s4, a6, -1748
                  and          sp, s5, s5
                  sll          t1, t3, s3
                  andi         s9, zero, 793
                  xori         s11, s10, 189
                  slli         a6, sp, 31
                  slli         s0, s9, 25
                  ori          a0, a7, -1090
                  add          s0, sp, t4
                  sub          t2, a5, s5
                  lui          a1, 144578
                  srai         t4, s11, 8
                  add          a6, zero, a6
                  andi         a3, gp, 1565
                  nop
                  and          sp, gp, s5
                  srli         a3, t5, 11
                  lui          s6, 907712
                  slti         s7, a3, -1498
                  sra          a4, s5, ra
                  slli         ra, a4, 16
                  srai         s11, t1, 22
                  add          a4, t0, a6
                  nop
                  ori          s7, ra, -1929
                  or           t0, a0, t2
                  slti         s11, t4, -565
                  sub          a3, ra, a5
                  sltiu        s7, t6, 991
                  ori          s0, t3, 2027
                  slli         a6, a1, 19
                  sll          t0, a4, s3
                  sub          a4, tp, s5
                  add          tp, a4, a4
                  or           tp, ra, s10
                  nop
                  slli         s7, ra, 17
                  slt          t1, a2, t5
                  or           s5, s9, s4
                  xori         t5, a0, -1280
                  add          s5, t5, gp
                  sll          s2, s10, s3
                  xor          s8, a0, s3
                  add          a2, s7, a7
                  xori         a4, a7, 1982
                  srli         a6, s5, 29
                  slli         s5, a7, 14
                  slli         t2, tp, 22
                  sra          ra, t2, t0
                  slt          s4, a7, a3
                  sll          t3, tp, t1
                  sltu         s5, t0, a6
                  srai         t1, a3, 23
                  xori         a1, s3, 82
                  addi         a3, s7, 1354
                  slli         a1, t3, 14
                  or           s2, a3, s7
                  srl          s2, s3, s9
                  sltu         a2, a2, a3
                  addi         zero, gp, -1690
                  slt          t5, s4, a3
                  srai         t3, t4, 11
                  auipc        a2, 327335
                  and          tp, a2, s4
                  add          a3, a1, s7
                  sll          s1, a3, s8
                  addi         ra, a4, 969
                  srl          a0, s11, s6
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           t0, 0x80000000
                  li           tp, 0x0
                  li           t5, 0x0
                  li           s5, 0x80000000
                  li           s4, 0x80000000
                  li           t6, 0x0
                  li           t4, 0x80000000
                  li           a5, 0x80000000
                  li           a3, 0x76cabd49
                  lui          tp, 419207
                  auipc        s4, 712349
                  nop
                  sub          tp, a5, tp
                  addi         a5, a5, 1721
                  sub          tp, t6, t5
                  lui          s4, 101044
                  nop
                  nop
                  auipc        t4, 575028
                  nop
                  sub          t6, a5, s5
                  lui          a3, 716648
                  auipc        tp, 333218
                  lui          a3, 280172
                  addi         tp, s4, -751
                  auipc        t0, 946907
                  auipc        tp, 324103
                  addi         tp, sp, -1595
                  nop
                  lui          sp, 352032 #end riscv_int_numeric_corner_stream_16
                  andi         s8, gp, 1302
                  sub          s11, s3, a0
                  sll          gp, s5, zero
                  or           s5, t3, tp
                  sll          s0, s7, s7
                  auipc        t6, 785150
                  andi         a6, s10, 1513
                  or           s1, t3, ra
                  sub          a4, s2, gp
                  auipc        s7, 431199
                  slt          tp, a3, tp
                  srli         s4, a1, 3
                  srl          a2, t1, s3
                  ori          zero, t0, 1167
                  andi         tp, t1, 1067
                  srl          s8, a6, s3
                  and          s8, t3, s5
                  sltiu        s7, t2, -1751
                  xor          a4, a3, s4
                  slti         a5, zero, 166
                  add          t0, s10, t3
                  slli         gp, a0, 9
                  auipc        a0, 235184
                  lui          s1, 755000
                  xor          s9, s2, s2
                  xor          s9, s2, s8
                  ori          s5, t5, 989
                  nop
                  xori         a1, a7, -1608
                  lui          s11, 139220
                  slti         s8, a1, -1598
                  srli         t1, a6, 22
                  slti         s1, s9, -1768
                  auipc        t2, 645569
                  or           a4, s1, s4
                  addi         s4, t1, 362
                  sltu         ra, ra, t4
                  ori          a0, t1, 1067
                  or           s8, s10, a7
                  slt          a5, s4, zero
                  srli         s6, tp, 7
                  sltu         s7, a3, s0
                  nop
                  slt          s8, s10, a7
                  slli         s7, s0, 5
                  slli         s0, t4, 9
                  sltu         s1, a7, a1
                  andi         s8, a0, -1592
                  sltu         sp, a1, s8
                  and          gp, gp, s2
                  addi         s0, s10, 400
                  sra          ra, t5, t6
                  sra          s2, s0, sp
                  addi         t6, s8, 331
                  slli         s2, s9, 30
                  sub          s6, zero, t2
                  xor          s5, zero, s10
                  slt          a1, s0, t0
                  add          s8, s10, t4
                  srai         sp, t1, 22
                  srli         t5, t0, 11
                  or           t6, ra, s9
                  auipc        t2, 21553
                  xor          t4, s11, a0
                  srl          s9, s0, s1
                  nop
                  nop
                  ori          zero, zero, -287
                  sub          t2, s2, s10
                  srl          s2, s9, s8
                  srai         s11, s11, 4
                  slti         a4, s5, -739
                  srl          t2, zero, s9
                  lui          s7, 824381
                  andi         s0, s3, 331
                  xor          a1, a1, s0
                  sltiu        a3, a2, 1528
                  add          s4, s10, t3
                  slt          s5, s10, a0
                  ori          gp, ra, 1544
                  srli         t0, t4, 20
                  slli         s6, t2, 26
                  xor          s9, s2, t3
                  addi         a1, s2, -1784
                  slli         ra, a1, 13
                  xori         a4, t0, 1744
                  srl          sp, a2, t0
                  sltiu        t1, a3, -1789
                  xori         s7, s10, -404
                  srli         zero, t1, 30
                  or           tp, a6, tp
                  xori         a3, s5, 33
                  sltu         t5, s8, t4
                  srli         s11, s2, 2
                  sltu         a0, s4, s3
                  srl          t0, s0, ra
                  nop
                  or           t1, s2, sp
                  addi         s4, t1, -1482
                  auipc        a5, 770632
                  slti         a1, s11, 146
                  srl          a2, zero, a1
                  ori          t5, a3, -1530
                  srli         ra, a6, 3
                  sltiu        t6, t5, 363
                  auipc        sp, 313725
                  srli         s7, a2, 2
                  xor          t4, s8, s0
                  lui          s11, 658834
                  sll          gp, t0, t4
                  sll          s9, a3, s9
                  lui          a1, 770974
                  srl          t4, s11, a5
                  srl          a3, a1, a3
                  sll          t6, sp, s8
                  sub          s1, gp, s8
                  slli         t0, t6, 13
                  sll          t5, a4, t0
                  sltu         s7, t1, a6
                  srl          t3, s7, a5
                  and          a3, zero, t6
                  ori          a0, s9, -1262
                  ori          s8, s7, -241
                  xor          a3, s0, s7
                  sltiu        a3, a4, -912
                  lui          t4, 90194
                  sltiu        s8, t5, -573
                  lui          tp, 2657
                  xori         ra, s8, 557
                  addi         s1, a0, -1909
                  lui          s5, 301051
                  xor          t1, t5, a4
                  auipc        s8, 550273
                  ori          s8, t2, -1666
                  add          s11, a3, s8
                  slt          s6, t5, a7
                  slt          t1, s6, a6
                  srl          ra, s6, ra
                  xor          s1, t5, s2
                  sltiu        s8, s4, -1448
                  add          a2, a5, a5
                  add          t0, a1, s11
                  nop
                  xori         s7, t5, 1413
                  sub          t4, t4, s10
                  srli         s5, s10, 18
                  xor          t5, a2, t2
                  sra          a3, a6, t1
                  ori          gp, sp, -334
                  slt          t3, s0, a1
                  slt          ra, s7, s5
                  sltiu        ra, s6, -1484
                  lui          gp, 866067
                  sra          a1, a5, t4
                  sub          zero, a3, s0
                  sra          t0, s11, a5
                  sra          t6, t3, ra
                  nop
                  or           s8, zero, s9
                  and          s8, s10, s0
                  nop
                  srl          s1, gp, s7
                  nop
                  auipc        t2, 552860
                  lui          zero, 502107
                  slli         s6, a3, 14
                  sltu         s11, t2, a7
                  sltu         s11, a5, gp
                  srai         a2, a0, 27
                  slli         s6, s7, 18
                  addi         t2, a0, -942
                  add          s7, s5, t3
                  srli         s6, sp, 8
                  addi         s0, t5, 656
                  ori          sp, a7, 1398
                  lui          s2, 926131
                  or           ra, t6, s7
                  addi         ra, a6, 386
                  slti         ra, a6, 451
                  slt          t6, s1, a2
                  sub          t4, sp, t2
                  ori          a1, zero, 734
                  andi         s4, t2, -1880
                  xor          s0, t1, s9
                  andi         a4, s11, -1747
                  andi         tp, t5, 433
                  sltiu        s5, t1, 400
                  slti         s6, a4, 1167
                  andi         s2, t6, 1611
                  and          s2, s4, zero
                  addi         s0, ra, 340
                  sll          a4, t2, gp
                  srli         s11, t2, 4
                  xor          t0, t3, a3
                  sub          s9, a6, sp
                  auipc        tp, 912428
                  and          a6, s7, s9
                  sltu         s11, a7, s11
                  and          gp, t4, a2
                  sltiu        a0, a3, -29
                  andi         t0, a3, 1624
                  sra          a5, t0, s0
                  slli         tp, a5, 2
                  xor          s2, t5, t2
                  sub          s2, sp, a7
                  and          a5, s9, tp
                  slt          a2, a1, s4
                  xor          s6, a7, a5
                  addi         t3, s7, -1589
                  slli         s7, t1, 0
                  nop
                  srai         a6, s8, 26
                  sll          tp, s1, s1
                  slli         a4, zero, 8
                  sltu         s1, a4, s8
                  srl          s0, a2, t5
                  slti         t0, a1, -1261
                  slt          s5, s3, s10
                  add          sp, t5, a6
                  auipc        a3, 3845
                  addi         sp, gp, -981
                  add          sp, ra, s4
                  xor          a0, tp, a4
                  slt          a5, t5, a6
                  or           zero, t0, a4
                  xori         a6, t6, 920
                  sub          t0, a1, gp
                  srli         sp, tp, 20
                  slti         sp, ra, 1687
                  andi         s2, t5, 797
                  ori          s7, s8, 64
                  sub          sp, s10, zero
                  slli         zero, a1, 26
                  sra          zero, a3, t2
                  ori          a3, s11, 1856
                  ori          a5, s6, 1091
                  slli         ra, a4, 16
                  lui          a0, 426915
                  sltu         s1, a1, t5
                  xori         a0, tp, 990
                  sra          sp, t6, ra
                  sra          sp, sp, s4
                  slti         a5, t2, 332
                  ori          a0, t5, 59
                  sltiu        a4, a0, 1824
                  slti         zero, t0, -1763
                  slt          s7, s0, tp
                  srai         tp, s11, 9
                  auipc        ra, 953567
                  or           s4, tp, t1
                  sltiu        t0, a3, -670
                  sub          s2, s9, a4
                  sltiu        s5, t0, -125
                  srai         t0, s10, 18
                  sra          t4, a5, s5
                  srai         a3, s11, 8
                  lui          t6, 725448
                  xori         sp, sp, -581
                  slt          a4, s11, t6
                  lui          t6, 280761
                  sltu         t1, t2, t1
                  ori          s5, s2, 678
                  addi         a6, s5, 1510
                  sll          tp, ra, sp
                  sll          tp, t1, t4
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
                  add x19, x17, zero
                  csrr x4, 0x300 # MSTATUS
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 31
                  bne x4, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x4, 0x341 # MEPC
                  csrr x4, 0x342 # MCAUSE
                  li x10, 0x3 # BREAKPOINT
                  beq x4, x10, ebreak_handler
                  li x10, 0x8 # ECALL_UMODE
                  beq x4, x10, ecall_handler
                  li x10, 0x9 # ECALL_SMODE
                  beq x4, x10, ecall_handler
                  li x10, 0xb # ECALL_MMODE
                  beq x4, x10, ecall_handler
                  li x10, 0x1
                  beq x4, x10, instr_fault_handler
                  li x10, 0x5
                  beq x4, x10, load_fault_handler
                  li x10, 0x7
                  beq x4, x10, store_fault_handler
                  li x10, 0xc
                  beq x4, x10, pt_fault_handler
                  li x10, 0xd
                  beq x4, x10, pt_fault_handler
                  li x10, 0xf
                  beq x4, x10, pt_fault_handler
                  li x10, 0x2 # ILLEGAL_INSTRUCTION
                  beq x4, x10, illegal_instr_handler
                  csrr x10, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

ecall_handler:    
                  la x4, _start
                  sw x0, 0(x4)
                  sw x1, 4(x4)
                  sw x2, 8(x4)
                  sw x3, 12(x4)
                  sw x4, 16(x4)
                  sw x5, 20(x4)
                  sw x6, 24(x4)
                  sw x7, 28(x4)
                  sw x8, 32(x4)
                  sw x9, 36(x4)
                  sw x10, 40(x4)
                  sw x11, 44(x4)
                  sw x12, 48(x4)
                  sw x13, 52(x4)
                  sw x14, 56(x4)
                  sw x15, 60(x4)
                  sw x16, 64(x4)
                  sw x17, 68(x4)
                  sw x18, 72(x4)
                  sw x19, 76(x4)
                  sw x20, 80(x4)
                  sw x21, 84(x4)
                  sw x22, 88(x4)
                  sw x23, 92(x4)
                  sw x24, 96(x4)
                  sw x25, 100(x4)
                  sw x26, 104(x4)
                  sw x27, 108(x4)
                  sw x28, 112(x4)
                  sw x29, 116(x4)
                  sw x30, 120(x4)
                  sw x31, 124(x4)
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x17, x19, zero
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
                  add x17, x19, zero
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
                  add x17, x19, zero
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
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x17, x19, zero
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
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x17, x19, zero
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
                  csrr  x4, 0x300 # MSTATUS;
                  csrr  x4, 0x304 # MIE;
                  csrr  x4, 0x344 # MIP;
                  csrrc x4, 0x344, x4 # MIP;
                  add x17, x19, zero
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
