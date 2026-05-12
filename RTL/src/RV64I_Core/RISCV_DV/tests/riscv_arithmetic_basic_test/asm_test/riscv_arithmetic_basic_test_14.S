.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x29, h0_start
jalr x0, x29, 0
h0_start:
                  li x23, 0x40000100
                  csrw 0x301, x23
kernel_sp:        
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x23, mtvec_handler
                  ori x23, x23, 0
                  csrw 0x305, x23 # MTVEC

mepc_setup:       
                  la x23, init
                  csrw 0x341, x23

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x23, 0x1800
                  csrw 0x300, x23 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xf
                  li x2, 0xa5948234
                  li x3, 0x80000000
                  li x5, 0x0
                  li x6, 0xf09cafeb
                  li x7, 0xfa0e531f
                  li x8, 0x0
                  li x9, 0xfc892c15
                  li x10, 0x0
                  li x11, 0xc
                  li x12, 0xfeb6dfde
                  li x14, 0x955cd894
                  li x15, 0x4
                  li x16, 0xadf66cbd
                  li x17, 0xfca8115e
                  li x18, 0x3a869f8d
                  li x19, 0x7
                  li x20, 0x9
                  li x21, 0x80000000
                  li x22, 0xb51377f9
                  li x23, 0xc
                  li x24, 0x80000000
                  li x25, 0x7
                  li x26, 0xf060bc54
                  li x27, 0x80000000
                  li x28, 0x0
                  li x29, 0x91be2b2
                  li x30, 0xe451a1ec
                  li x31, 0x4
                  la x4, user_stack_end
main:             li           a7, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           a5, 0x0
                  li           a0, 0x0
                  li           s2, 0x0
                  li           t3, 0x0
                  li           t0, 0x0
                  li           t5, 0xffffffff
                  li           s6, 0x80000000
                  li           s11, 0xffffffff
                  li           s4, 0x80000000
                  lui          a0, 422635
                  add          a0, s4, s2
                  sub          s11, t0, s2
                  nop
                  lui          a5, 723624
                  auipc        s6, 477254
                  auipc        s4, 1013118
                  add          a7, s4, a5
                  lui          t3, 198692
                  sub          a0, t0, s4
                  sub          a7, t0, s11
                  nop
                  sub          t3, a5, s6
                  nop
                  lui          s6, 856875
                  add          s6, a0, t5
                  addi         s11, s2, -1218
                  lui          a0, 1023217
                  add          a5, s2, a0
                  lui          a5, 656965
                  auipc        t3, 480261
                  sub          t5, t3, s11 #end riscv_int_numeric_corner_stream_11
                  li           a2, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           s6, 0xffffffff
                  li           ra, 0xffffffff
                  li           t5, 0x0
                  li           s7, 0xffffffff
                  li           s2, 0x0
                  li           a4, 0xc823f9d4
                  li           s5, 0x80000000
                  li           s11, 0x0
                  li           a6, 0x80000000
                  add          s5, s2, a2
                  addi         a6, s6, 1890
                  addi         a4, a2, 1750
                  auipc        s2, 492601
                  sub          s6, t5, a6
                  add          s11, s7, a4
                  add          ra, s7, a6
                  addi         t5, s5, 1220
                  lui          s5, 969477
                  addi         a2, a4, -1898
                  sub          s6, a6, s11
                  addi         s5, ra, -982
                  lui          t5, 396391
                  addi         s6, t5, -693
                  add          s6, s11, s11
                  add          s11, s7, ra
                  sub          a2, s7, a6
                  auipc        t5, 143244
                  auipc        s11, 274381
                  nop #end riscv_int_numeric_corner_stream_19
                  li           t6, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           s4, 0x80000000
                  li           a7, 0xffffffff
                  li           s5, 0xa4abc192
                  li           t5, 0xffffffff
                  li           s10, 0x80000000
                  li           s9, 0xf1949699
                  li           s2, 0x80000000
                  li           s11, 0x0
                  li           sp, 0x80000000
                  nop
                  addi         sp, t5, -1267
                  auipc        t6, 890475
                  nop
                  auipc        s10, 56555
                  auipc        s5, 437320
                  addi         s4, s2, 448
                  sub          s5, t5, s4
                  addi         s4, s11, -1267
                  lui          t6, 477951
                  sub          s4, t5, t6
                  auipc        t6, 927634
                  lui          t6, 815769
                  addi         s2, s4, -1683
                  add          sp, sp, s10
                  add          t5, s11, s5
                  addi         s4, s9, -1955
                  addi         s5, s11, -1952
                  add          sp, a7, s2
                  auipc        s5, 454086
                  lui          s5, 279433
                  addi         sp, s2, 1318 #end riscv_int_numeric_corner_stream_18
                  li           s6, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           a2, 0x80000000
                  li           s7, 0xd6c9c97a
                  li           sp, 0xaacc28b6
                  li           ra, 0x89df5e71
                  li           s1, 0x0
                  li           a4, 0x80000000
                  li           a5, 0x1821e9f7
                  li           a0, 0xdf42bdf4
                  li           a7, 0xf228df30
                  auipc        a0, 861549
                  addi         sp, s1, -1777
                  sub          a5, a5, a4
                  add          a4, a4, a5
                  sub          sp, s7, a2
                  add          s6, a2, a0
                  sub          a5, a5, ra
                  addi         a4, sp, 1634
                  sub          a5, a2, s1
                  sub          a7, a5, a4
                  auipc        s6, 1014784
                  lui          a0, 68053
                  addi         a0, a0, 1860
                  nop
                  lui          a5, 182888
                  sub          sp, a4, ra
                  addi         s1, a7, -1690
                  addi         s1, a7, 1191
                  auipc        a4, 704936
                  lui          a4, 622367
                  addi         s7, a7, 1381
                  addi         ra, s6, -1341
                  sub          a4, a0, a0 #end riscv_int_numeric_corner_stream_12
                  li           s2, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           s11, 0x80000000
                  li           t2, 0x0
                  li           s5, 0x80000000
                  li           ra, 0x80000000
                  li           s1, 0x80000000
                  li           s9, 0x80000000
                  li           sp, 0x0
                  li           gp, 0x0
                  li           a0, 0x80000000
                  lui          sp, 375208
                  nop
                  lui          ra, 543107
                  auipc        t2, 158181
                  nop
                  auipc        ra, 955054
                  lui          a0, 992411
                  lui          sp, 959738
                  sub          s9, s5, s5
                  auipc        ra, 684655
                  sub          t2, t2, t2
                  lui          gp, 72310
                  add          s1, t2, a0
                  sub          gp, gp, s9
                  lui          s5, 579068
                  addi         s5, s9, -1638
                  add          ra, gp, s5
                  addi         sp, s11, -1109
                  sub          ra, s11, s5
                  lui          t2, 3030
                  sub          s9, t2, t2
                  addi         sp, s2, -1507
                  auipc        s1, 51330
                  sub          sp, s11, a0
                  lui          ra, 792456
                  sub          s11, s1, s5
                  auipc        ra, 210235
                  add          gp, s1, s1
                  add          s11, s2, ra
                  lui          s1, 331947 #end riscv_int_numeric_corner_stream_6
                  li           a6, 0xd6dafde #start riscv_int_numeric_corner_stream_1
                  li           a2, 0xffffffff
                  li           sp, 0x0
                  li           a7, 0xffffffff
                  li           gp, 0x80000000
                  li           s1, 0xffffffff
                  li           s0, 0x0
                  li           t1, 0xffffffff
                  li           s9, 0x5bba29ac
                  li           s4, 0x80000000
                  nop
                  addi         a2, s4, 44
                  lui          s9, 841346
                  add          a2, gp, s0
                  addi         a6, sp, -1515
                  addi         s1, t1, -1005
                  lui          a2, 829698
                  sub          a7, s4, s1
                  nop
                  auipc        a2, 855851
                  nop
                  addi         a2, s4, -564
                  nop
                  add          s0, a2, a2
                  auipc        s1, 752129
                  lui          t1, 207531 #end riscv_int_numeric_corner_stream_1
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_7
                  li           s7, 0x80000000
                  li           a1, 0xffffffff
                  li           a5, 0xc0105595
                  li           t3, 0x80000000
                  li           s5, 0xacb04d84
                  li           s8, 0x80000000
                  li           a0, 0x0
                  li           t0, 0x671c702f
                  li           sp, 0xd274be54
                  lui          a1, 255334
                  sub          a0, a0, t0
                  sub          a4, a5, a4
                  addi         sp, s7, -947
                  sub          t0, a0, a0
                  lui          t3, 76064
                  add          a5, sp, t3
                  add          sp, t3, t3
                  lui          t0, 812771
                  nop
                  nop
                  nop
                  nop
                  addi         t3, a4, -346
                  nop
                  nop
                  lui          a4, 64125
                  lui          s5, 437807
                  sub          s8, s8, t3
                  sub          a1, t0, s5
                  auipc        sp, 176150 #end riscv_int_numeric_corner_stream_7
                  li           sp, 0xd88bc829 #start riscv_int_numeric_corner_stream_14
                  li           a6, 0x80000000
                  li           s1, 0xb24cb57c
                  li           s4, 0x80000000
                  li           s9, 0xffffffff
                  li           a2, 0x80000000
                  li           a7, 0x0
                  li           s5, 0xffffffff
                  li           gp, 0x0
                  li           t3, 0x0
                  auipc        s9, 215219
                  add          s1, sp, a6
                  auipc        s4, 455506
                  nop
                  lui          gp, 256121
                  auipc        t3, 434632
                  addi         s4, gp, -1030
                  sub          s9, s5, s4
                  auipc        s9, 390504
                  sub          t3, a6, gp
                  nop
                  addi         gp, gp, 1375
                  sub          gp, a2, a2
                  sub          a6, s9, s1
                  lui          gp, 477387
                  auipc        s5, 798728
                  lui          sp, 242559
                  add          s5, a6, sp
                  addi         a6, t3, -550
                  add          a7, s4, s9
                  lui          gp, 849432
                  addi         s9, sp, 1677
                  lui          s1, 752655
                  auipc        t3, 797562
                  nop
                  lui          a7, 822892
                  sub          s5, s9, sp
                  nop #end riscv_int_numeric_corner_stream_14
                  li           a4, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           s3, 0x80000000
                  li           s11, 0x58646d13
                  li           a6, 0x76ac97f0
                  li           s0, 0xf3a266ad
                  li           s5, 0xffffffff
                  li           a1, 0x2f2b921
                  li           s6, 0x0
                  li           t2, 0x80000000
                  li           t6, 0xffffffff
                  auipc        s3, 297801
                  auipc        t2, 878833
                  nop
                  addi         s11, t2, -1118
                  nop
                  auipc        a1, 630856
                  add          t2, s5, t6
                  addi         a1, a1, 331
                  lui          s11, 638498
                  addi         t6, s5, -548
                  add          s0, s5, s0
                  auipc        t2, 232894
                  nop
                  add          s3, a4, a1
                  lui          s6, 272700
                  addi         a4, s6, 1761
                  nop
                  nop
                  sub          s3, s11, s6
                  sub          t6, t6, a6
                  add          t2, t6, s3
                  addi         s11, s0, -355
                  sub          s5, a6, s11
                  addi         s6, s6, 348
                  auipc        a6, 763477
                  add          a6, s0, s5
                  lui          s6, 722138
                  nop #end riscv_int_numeric_corner_stream_0
                  li           s10, 0x80000000 #start riscv_int_numeric_corner_stream_16
                  li           t3, 0xffffffff
                  li           t6, 0xffffffff
                  li           s1, 0x0
                  li           t2, 0xaab95f68
                  li           s9, 0x80000000
                  li           a0, 0x0
                  li           s3, 0x0
                  li           a5, 0x0
                  li           s6, 0x80000000
                  nop
                  sub          s1, s3, a0
                  nop
                  auipc        s6, 444941
                  lui          s10, 817371
                  nop
                  add          s3, s6, t6
                  sub          t3, a5, s1
                  lui          s3, 148087
                  lui          t6, 984999
                  add          t2, s1, s3
                  add          s1, s1, t2
                  auipc        s10, 120029
                  sub          s1, t3, s3
                  addi         s1, s9, -1280
                  auipc        s6, 474632
                  nop
                  lui          t6, 383778
                  lui          a5, 1035557
                  addi         a5, s1, -1153
                  nop
                  auipc        s1, 932004
                  auipc        a0, 440738
                  nop
                  nop
                  auipc        t2, 781278
                  nop
                  addi         s3, a5, 989 #end riscv_int_numeric_corner_stream_16
                  slti         t5, a4, 852
                  and          s4, s8, a1
                  auipc        s2, 144289
                  sltiu        a6, t2, 284
                  xori         s1, t6, -68
                  ori          sp, s0, 1751
                  sra          s4, a0, sp
                  addi         t5, a6, 224
                  lui          s4, 974907
                  slti         ra, t4, 304
                  lui          s2, 830280
                  sra          s6, a1, a0
                  slli         sp, a4, 27
                  sltiu        a4, s7, 17
                  or           a6, t2, a0
                  slti         s11, a4, 1199
                  srl          t5, t0, tp
                  ori          s6, s3, -325
                  slli         t6, s7, 4
                  sra          gp, s6, a7
                  sltiu        a6, t0, 980
                  lui          s11, 937132
                  ori          ra, s10, -1650
                  lui          s10, 151888
                  nop
                  slt          t2, ra, t5
                  nop
                  auipc        a0, 853570
                  srai         gp, s7, 6
                  sltu         a2, a6, s7
                  add          s5, t5, s10
                  add          s9, s9, s10
                  nop
                  sltiu        t0, t6, 1197
                  or           t5, s6, a1
                  auipc        s0, 120370
                  sltu         a2, a0, s4
                  nop
                  xori         s10, a4, 1058
                  sra          gp, a4, s8
                  sll          a7, t4, s10
                  sub          a1, s6, a5
                  addi         a7, t0, 1142
                  xori         t5, s4, -1541
                  addi         s11, s5, -320
                  auipc        t6, 216007
                  slti         a6, s2, -1528
                  addi         ra, zero, 544
                  slt          t2, a2, a1
                  and          s3, s5, s3
                  nop
                  sra          s11, s6, t6
                  sub          t1, s9, s9
                  slli         s3, s0, 27
                  srai         t6, s10, 11
                  sltiu        ra, a6, -1009
                  sltu         s7, s1, s6
                  andi         a2, t5, -171
                  or           gp, t5, t5
                  sll          s3, t2, a0
                  xori         s9, a5, 1474
                  slt          t5, a0, a0
                  srai         a4, s8, 5
                  or           a2, s1, s9
                  and          gp, s2, a4
                  slli         s11, a7, 3
                  addi         a2, t0, 602
                  slt          a7, zero, ra
                  srl          s9, s6, s2
                  sra          s0, t2, s0
                  auipc        s9, 681902
                  and          s8, s1, s3
                  auipc        s2, 191215
                  add          gp, a7, a7
                  sltu         a1, a7, ra
                  srl          t1, s7, a5
                  srl          a1, s11, a4
                  sub          s4, s2, s0
                  andi         t0, t2, -690
                  add          t0, gp, a7
                  srai         s9, s6, 14
                  srli         a2, t3, 11
                  addi         s9, tp, 570
                  add          t5, t2, zero
                  lui          s8, 498007
                  ori          t5, t6, -221
                  sltu         t6, a7, sp
                  slti         t1, s10, 2024
                  slt          sp, t5, zero
                  nop
                  slli         s0, ra, 0
                  or           t6, t4, t4
                  lui          s0, 330057
                  andi         s3, gp, -559
                  lui          s5, 767590
                  lui          t5, 645072
                  xor          a2, tp, s9
                  lui          a0, 756500
                  ori          s1, t3, -2019
                  sltiu        sp, ra, 253
                  ori          s3, s2, -17
                  nop
                  slt          ra, a1, s5
                  and          s0, ra, ra
                  add          t5, s10, tp
                  addi         ra, t6, 1461
                  sra          s3, s7, s6
                  lui          t5, 661420
                  srai         s8, a7, 11
                  nop
                  nop
                  xor          s10, s11, s2
                  slli         s10, sp, 22
                  sltu         s4, a6, t4
                  sltiu        s4, t2, 1430
                  srli         t2, s4, 25
                  srli         a4, s0, 28
                  nop
                  auipc        s8, 166468
                  slli         a1, s2, 5
                  auipc        ra, 828457
                  sltu         a2, s6, t5
                  srai         a0, sp, 10
                  andi         s8, ra, -1375
                  srl          s6, s4, a0
                  xori         zero, sp, 1914
                  sub          s6, gp, a6
                  slli         s8, a5, 18
                  nop
                  sll          sp, t3, a7
                  andi         t6, s6, 1709
                  sub          t2, t2, s10
                  sltu         a1, s8, ra
                  auipc        gp, 519711
                  xori         s9, s9, -1134
                  andi         a1, a7, -32
                  and          ra, a6, s1
                  slti         s7, s2, 286
                  sltu         s1, s3, s8
                  nop
                  xori         gp, s5, -1373
                  slti         a6, a5, -356
                  ori          a4, s2, -928
                  xori         a7, sp, 1673
                  slt          a4, t4, s2
                  or           t6, s6, a1
                  and          gp, s0, s6
                  xor          s8, s2, s0
                  auipc        t5, 373581
                  sub          s1, t0, s9
                  slt          a6, a3, ra
                  sra          ra, s3, s3
                  or           a0, s1, a5
                  sub          s1, a1, s3
                  xor          s1, a7, t1
                  addi         s8, ra, -234
                  xor          sp, zero, t1
                  sra          zero, a3, tp
                  xor          s8, s2, a6
                  sll          a7, s4, s3
                  sltiu        t3, tp, 1698
                  and          s3, tp, s7
                  auipc        s7, 465188
                  slti         s3, s7, 776
                  sub          s3, a7, gp
                  xori         a6, a3, -112
                  slti         s8, s2, 1189
                  slti         s9, s7, -644
                  lui          s8, 743989
                  slti         gp, t4, -851
                  auipc        s0, 349492
                  and          s3, s0, s5
                  auipc        s0, 119739
                  srli         s11, t5, 8
                  addi         s4, t6, -1707
                  xor          s7, tp, a4
                  xori         s6, s8, 1795
                  srli         s8, s11, 29
                  lui          t5, 256087
                  nop
                  slti         s7, a2, 13
                  slli         a7, a4, 30
                  slt          t5, s8, a7
                  auipc        a7, 108282
                  sub          zero, tp, gp
                  auipc        ra, 164617
                  sub          s7, a3, t1
                  sra          s3, s7, t2
                  xor          s3, t5, s2
                  sll          s2, t0, s2
                  sub          a7, a7, a4
                  sltiu        t3, a7, -1087
                  addi         a0, t1, -489
                  slti         a4, gp, -480
                  sltu         s3, t0, a5
                  slt          t5, a4, tp
                  sub          s5, a1, s11
                  srai         s9, sp, 25
                  srli         ra, t2, 30
                  slti         s8, s4, -1292
                  auipc        ra, 581633
                  slt          t2, a4, zero
                  and          a4, s9, t5
                  ori          s2, t3, 783
                  xori         a4, a4, 1666
                  slt          s9, zero, t4
                  auipc        s2, 881461
                  addi         s10, s4, -1860
                  sub          s5, s4, s3
                  slt          t1, s0, a0
                  sra          s2, zero, s6
                  slti         a6, t6, -919
                  xor          s5, a5, s5
                  nop
                  auipc        s8, 116766
                  sll          s4, gp, s7
                  sltiu        s8, s1, -1045
                  lui          ra, 213858
                  xori         s10, s1, 1931
                  sltiu        a5, a4, -361
                  sra          s5, s11, s5
                  sltu         t2, a2, t6
                  xori         a1, t2, -1850
                  xori         a6, t2, 1149
                  srl          s3, t6, a2
                  sltu         s9, t0, t6
                  srli         a6, a7, 9
                  auipc        a7, 759750
                  srli         s2, t2, 6
                  xori         s6, gp, -849
                  addi         ra, s6, 1984
                  ori          a0, a6, -276
                  add          a6, t4, s7
                  or           a5, s7, a2
                  andi         s6, s5, 241
                  sltu         t2, gp, s4
                  xori         a4, t5, 1677
                  sltiu        sp, s6, -390
                  sll          t2, t4, a1
                  srli         a7, s6, 12
                  srli         a2, gp, 23
                  or           t1, t3, s7
                  slti         t3, t4, 738
                  or           a2, t3, ra
                  srl          s1, a0, a0
                  slli         t0, a0, 31
                  andi         s8, s4, 1619
                  srai         sp, a1, 21
                  addi         t5, t3, 1472
                  and          a7, a4, a5
                  add          t0, zero, gp
                  andi         s2, zero, -1091
                  sltiu        s9, a0, 607
                  slli         a7, a7, 11
                  slt          t1, a1, a7
                  sltiu        s10, a3, 1883
                  xori         s0, tp, -1681
                  sub          a2, s7, s5
                  lui          a5, 974448
                  xor          s1, a7, t3
                  xor          t6, t4, t3
                  slt          s4, s0, a6
                  sra          s4, s9, s1
                  add          t5, s8, a2
                  sll          s2, s4, a6
                  slti         t1, a1, -1172
                  sltu         t0, a2, s7
                  slt          s3, s9, t1
                  or           a2, s3, tp
                  sra          s8, t4, s8
                  sub          ra, t1, s5
                  xor          ra, s8, t4
                  andi         s0, s10, 1277
                  add          t3, s10, a4
                  ori          a7, s9, 204
                  xor          a0, s6, s0
                  srl          s5, s5, s10
                  ori          gp, t1, 105
                  slti         t0, t4, -290
                  and          s4, a5, tp
                  slt          s2, ra, a6
                  srli         s7, tp, 25
                  xori         s7, ra, 1214
                  auipc        t0, 663045
                  or           a4, a2, a3
                  srl          t5, s5, t0
                  andi         a1, t4, 226
                  sra          s0, a4, s6
                  xor          ra, ra, t2
                  sll          zero, t5, ra
                  auipc        a7, 788926
                  sltiu        s7, a0, -672
                  auipc        a0, 49307
                  srai         s1, s5, 25
                  and          a6, a2, a2
                  ori          a2, gp, -2022
                  sll          zero, tp, a5
                  addi         a5, s2, -1666
                  addi         s10, s1, 558
                  xori         s4, zero, 1447
                  auipc        zero, 867185
                  slti         t6, t6, 473
                  andi         t1, s3, -1386
                  add          a5, a6, sp
                  sub          t1, s9, s3
                  slti         t1, t6, -975
                  addi         s9, s10, -1635
                  sra          ra, gp, t5
                  and          a2, ra, s10
                  sltu         s1, s3, t0
                  add          s2, s6, a3
                  srl          a5, t4, ra
                  sub          t1, a4, a1
                  sltu         ra, zero, t4
                  auipc        a5, 494535
                  sub          a2, s11, ra
                  srl          t5, s2, t0
                  and          t1, a0, zero
                  srai         a1, s9, 22
                  srli         zero, s8, 0
                  sra          a1, s3, s5
                  add          t2, t4, s1
                  nop
                  and          sp, zero, t2
                  ori          s5, s3, -1263
                  sll          a7, s0, zero
                  slt          a5, s4, a7
                  xor          gp, a5, s11
                  sltu         t5, s5, s5
                  slti         a6, a2, 1850
                  addi         a5, a4, -1187
                  add          t6, a5, a5
                  slli         a4, s10, 15
                  slli         ra, a5, 16
                  andi         t1, t0, 17
                  sltiu        ra, t1, -2012
                  sll          s1, t6, t5
                  sll          s1, s2, gp
                  auipc        t5, 29890
                  xor          s6, a2, s6
                  srl          a2, s3, s8
                  srl          a6, s10, tp
                  sub          s5, a3, ra
                  or           a6, s6, sp
                  slli         s9, t3, 13
                  sra          s7, a2, t4
                  slli         t1, s1, 3
                  and          t3, s6, t4
                  sll          a0, s5, tp
                  or           s9, s4, tp
                  sltiu        s11, a4, 890
                  lui          s7, 663650
                  srl          a2, s8, s8
                  srai         a5, s1, 19
                  nop
                  sub          s10, s0, a3
                  addi         a2, s3, 1378
                  slt          s2, s7, s4
                  or           t1, t4, s3
                  srli         a6, a3, 6
                  and          s1, a3, t4
                  lui          s4, 67365
                  sltu         t3, a2, t1
                  sltiu        s3, a2, -308
                  lui          s1, 798823
                  sltiu        t1, zero, 1632
                  sra          s7, s0, a5
                  xori         s3, sp, -661
                  or           a5, t1, s9
                  srai         a6, a3, 13
                  auipc        s7, 103951
                  or           t5, gp, a0
                  srai         a5, a5, 22
                  lui          s7, 708173
                  sll          sp, s10, s0
                  slti         t6, ra, -386
                  sltu         s2, s0, a1
                  lui          s10, 680565
                  sub          ra, s5, t0
                  and          s8, gp, a6
                  ori          a5, s0, 645
                  xori         s0, s11, -438
                  sub          a5, a4, a7
                  srai         s0, t1, 29
                  sra          t5, s4, s0
                  ori          s6, s9, 1850
                  srli         s3, s11, 22
                  xor          zero, a5, t1
                  or           a1, s10, t0
                  or           a2, a0, t5
                  lui          s1, 376184
                  addi         s2, s4, -134
                  slli         s1, t5, 28
                  auipc        sp, 760239
                  xor          s7, a5, t5
                  lui          s10, 726359
                  sltu         a4, t3, t0
                  add          s1, t3, t2
                  nop
                  sub          t5, s5, a6
                  andi         s9, t5, -1826
                  srai         s2, a5, 2
                  and          s2, sp, a4
                  and          t1, s0, tp
                  sltu         a1, s6, t1
                  lui          s11, 722788
                  sll          t2, a2, t4
                  srl          a4, a4, a3
                  slt          a2, t1, a7
                  xor          s4, s5, t5
                  auipc        s8, 83229
                  sltu         a1, gp, a1
                  auipc        s10, 764438
                  add          s9, s2, t5
                  or           ra, a0, gp
                  xor          t6, t5, gp
                  slli         a0, s7, 10
                  nop
                  ori          a4, s11, -1132
                  srli         sp, a2, 29
                  xor          a1, s6, t0
                  slt          s0, a5, s0
                  sltiu        zero, t0, 202
                  nop
                  ori          a5, s5, 591
                  sra          a5, zero, t0
                  lui          zero, 2089
                  sll          t2, s9, t0
                  xori         s10, a6, 1565
                  srl          a2, t5, s2
                  andi         s0, tp, 648
                  nop
                  slt          s1, t1, sp
                  addi         s3, t1, 1161
                  addi         a4, s4, 1933
                  lui          s5, 924707
                  or           t5, s4, s4
                  sll          t0, s3, s3
                  slli         s5, s8, 7
                  sra          s4, s10, ra
                  sub          s1, s3, s4
                  xori         s2, a1, -710
                  sll          s7, a1, t3
                  sll          s4, s0, s10
                  addi         zero, a4, 1471
                  srl          ra, t0, s6
                  and          s5, a3, t3
                  ori          a2, s5, -1721
                  sra          t5, t1, t2
                  sll          t2, s3, t4
                  andi         s7, a7, 1708
                  srai         a2, ra, 11
                  addi         s1, sp, -487
                  xor          a1, zero, s9
                  sra          gp, a4, s11
                  sltu         sp, t5, t0
                  sll          s10, a2, t1
                  slti         t5, s11, -1629
                  srli         s4, ra, 8
                  sub          s2, t0, s7
                  add          s11, s3, s0
                  slt          s2, s11, a7
                  ori          s10, a2, -1871
                  sltiu        s6, t6, 1527
                  lui          a5, 702080
                  sll          s1, s3, s7
                  or           s8, s6, t0
                  nop
                  srli         a1, s4, 13
                  lui          s11, 385276
                  srai         s2, t3, 12
                  slti         a2, s5, -1234
                  addi         a7, zero, 24
                  srai         t3, a7, 20
                  srli         a1, a4, 2
                  xor          s11, t6, t4
                  andi         a2, tp, 25
                  auipc        ra, 971298
                  srai         a2, t5, 12
                  and          a5, sp, s1
                  srai         s9, a4, 13
                  addi         t5, s11, 452
                  sub          ra, t4, s1
                  sltu         s4, s10, t5
                  andi         t5, t6, -648
                  sra          t6, t5, ra
                  srl          s10, s6, a7
                  slti         t2, a5, -1758
                  srl          a4, t5, s8
                  srl          s4, zero, a1
                  sltu         s6, a7, s2
                  ori          s6, s7, -667
                  nop
                  slt          s1, s4, sp
                  andi         s7, t5, -1928
                  sub          gp, s8, a0
                  srli         gp, a2, 12
                  lui          t1, 189743
                  xor          s5, s8, t1
                  add          t1, t4, a2
                  slli         s3, t2, 20
                  sub          s1, t1, a1
                  xor          t0, t1, s1
                  sltiu        t6, a2, -1873
                  sll          a7, a3, s11
                  slli         t0, s10, 10
                  add          a7, t0, a6
                  sltiu        gp, t3, -1414
                  xori         t6, a7, 1219
                  sll          s6, ra, a3
                  xor          s11, a0, t4
                  xori         a2, s2, 772
                  sltu         s0, s7, t3
                  sll          sp, t6, s1
                  xor          a4, s3, a4
                  ori          s8, a6, -1579
                  xori         sp, a5, -788
                  srli         a1, s11, 20
                  slt          t1, t2, sp
                  srl          zero, a4, t2
                  srl          t5, ra, s11
                  ori          s2, s4, 363
                  srai         s11, a1, 26
                  sub          a5, a1, s2
                  slti         t1, sp, -1765
                  lui          gp, 426042
                  ori          s3, t6, -2000
                  srli         gp, t5, 23
                  slt          s7, a5, a2
                  sll          s11, gp, zero
                  sra          a6, t1, a4
                  or           ra, s10, t1
                  sltiu        t1, a5, 1086
                  slli         s10, a0, 30
                  slti         a5, a1, 1946
                  srli         t3, t3, 20
                  xor          t0, a5, t2
                  sltu         zero, s3, s6
                  sltiu        t6, tp, -1715
                  slli         t1, zero, 16
                  slt          s2, a3, a7
                  srl          s8, t2, t4
                  srl          s8, t2, zero
                  nop
                  slli         s6, a5, 17
                  andi         sp, t6, -89
                  srli         s1, a4, 5
                  slli         a7, t6, 5
                  xor          s3, s0, s9
                  ori          a1, t6, 124
                  lui          s11, 249141
                  or           zero, zero, s0
                  andi         a6, s6, 305
                  lui          s10, 551617
                  xori         s6, s10, -872
                  sltu         t1, s9, t0
                  slti         t2, s7, -1732
                  nop
                  srl          a7, s11, a0
                  or           a4, a3, t1
                  add          s10, a4, t0
                  sll          s4, a4, a3
                  srai         s4, sp, 7
                  add          a0, a5, zero
                  lui          s0, 330672
                  sll          a5, a5, t5
                  sub          t0, t5, s4
                  slti         sp, t1, -1908
                  or           t1, s0, zero
                  sltu         a0, a4, a4
                  sub          zero, t5, a6
                  sll          sp, a0, a5
                  or           s11, s1, a5
                  addi         gp, a2, -914
                  ori          s7, a6, -1328
                  sltiu        t2, sp, 282
                  auipc        gp, 488706
                  sra          s8, a6, s11
                  lui          s8, 378755
                  srli         s4, s10, 10
                  sltiu        s0, t6, 1007
                  sub          a6, zero, s1
                  slti         ra, s8, -1907
                  srli         a4, gp, 25
                  srl          s0, gp, t5
                  sltu         t5, t3, t1
                  sll          s7, t2, s5
                  lui          s9, 905870
                  sra          s11, zero, sp
                  nop
                  slti         a7, t0, 389
                  sltu         t5, t5, zero
                  slt          a6, s0, s2
                  sll          sp, s10, a0
                  ori          a7, s0, 162
                  add          s6, s9, s9
                  slli         s9, t0, 10
                  slti         s4, s2, 191
                  sll          a7, t3, a3
                  nop
                  lui          s11, 966480
                  sub          s9, s3, a1
                  and          a2, s8, zero
                  lui          s0, 294706
                  slt          s10, gp, s2
                  andi         a5, t6, 1067
                  srli         s11, t3, 29
                  srai         a1, s3, 20
                  srl          s6, s2, t5
                  sub          a2, s9, a4
                  add          s11, t0, s0
                  sltiu        a2, a2, -1191
                  andi         ra, a0, 1382
                  sll          s3, t3, s0
                  lui          a7, 188116
                  sub          sp, a0, a6
                  sltiu        t2, t5, 537
                  slti         t0, a5, -1263
                  xori         t5, s2, -1941
                  xor          s10, a6, s1
                  sra          s8, s0, s6
                  xor          a2, a0, s6
                  addi         gp, gp, 1986
                  lui          s2, 87993
                  srli         s10, s8, 14
                  xor          zero, s10, t5
                  slli         a1, s0, 15
                  sra          a0, t6, sp
                  xori         s5, s10, -951
                  srai         s1, a4, 20
                  or           gp, t2, s2
                  srai         a0, s9, 15
                  or           s11, t4, s11
                  auipc        s7, 909294
                  addi         s9, s1, -585
                  lui          a6, 58378
                  sra          s2, a2, a5
                  lui          a5, 694715
                  addi         a2, t3, -100
                  ori          a1, s7, 762
                  and          s8, s3, s2
                  add          s11, s1, t5
                  lui          s1, 350313
                  slti         s11, s10, -1935
                  add          ra, t3, t0
                  add          a1, a0, a6
                  sll          s10, a6, s9
                  and          ra, gp, a4
                  slti         s9, t4, -787
                  sll          a1, t0, t5
                  xor          s9, s6, s1
                  addi         a7, t4, -899
                  ori          s8, a0, -1113
                  slt          a0, zero, s11
                  lui          s6, 251636
                  slti         s2, zero, 146
                  sub          t1, a1, s3
                  add          a2, a4, s3
                  sub          s8, t1, s9
                  xor          a1, gp, s8
                  ori          s5, gp, -972
                  slli         a7, ra, 10
                  nop
                  xor          gp, sp, a7
                  sltu         a6, s1, zero
                  slt          t2, a7, t5
                  auipc        a2, 432465
                  xor          t6, sp, s11
                  xor          s9, s5, a1
                  srli         sp, a6, 4
                  sltiu        s11, a6, -518
                  xor          s9, s6, a3
                  add          t0, s1, t5
                  or           s5, a3, t3
                  sltiu        ra, t3, -890
                  sll          a7, s7, s2
                  sra          a7, s11, s5
                  andi         s1, s7, 696
                  xori         t2, s1, -204
                  and          t1, s3, t2
                  slti         t2, s8, -1454
                  slli         s3, gp, 21
                  nop
                  srai         t0, a5, 20
                  andi         t6, a1, 1158
                  srai         s4, t5, 24
                  sub          s4, a5, zero
                  slt          t6, a3, t3
                  sll          a6, s5, a7
                  auipc        s2, 113003
                  xori         a0, sp, 747
                  addi         s11, sp, 1182
                  addi         t1, gp, 767
                  xori         s1, s8, 1376
                  srli         s4, gp, 6
                  sra          a0, t1, ra
                  sltiu        s5, a1, -569
                  xori         a1, s8, 1317
                  slli         s11, a1, 24
                  add          a2, zero, s3
                  or           a0, zero, a4
                  add          s2, sp, a1
                  auipc        zero, 757671
                  lui          s5, 294720
                  sltu         t0, t3, a4
                  xori         s5, s2, 909
                  srli         s9, s7, 15
                  and          a1, a7, ra
                  add          sp, t6, s4
                  slti         s4, s11, -1889
                  auipc        s1, 114782
                  sub          t0, sp, s8
                  sltu         a6, t2, t1
                  sub          s2, t5, a4
                  andi         a5, sp, -1154
                  sub          t3, sp, s3
                  slt          t0, s9, ra
                  srl          s10, t2, s0
                  lui          s4, 262656
                  lui          a6, 572752
                  and          s9, s5, sp
                  srl          a0, t2, a7
                  sra          ra, a7, a4
                  slt          t0, s8, s8
                  sra          s6, s6, s10
                  slli         ra, t0, 2
                  xori         a2, s5, -1847
                  sltiu        s4, gp, -636
                  addi         a6, a0, 1266
                  xor          a4, s0, gp
                  lui          a0, 272920
                  xor          s8, a3, t4
                  slt          a1, sp, t3
                  ori          a6, s9, 1237
                  sltu         a7, a1, s2
                  xori         s1, a7, -761
                  ori          a6, t0, -910
                  lui          t0, 811958
                  addi         sp, s5, 1267
                  addi         a5, t4, -58
                  xori         t5, a2, -735
                  srai         a5, s11, 9
                  lui          sp, 648367
                  slli         gp, sp, 27
                  xori         s4, s3, 38
                  lui          ra, 569202
                  andi         s11, s6, -742
                  sub          s0, s11, s1
                  and          t3, a5, s3
                  and          t1, s11, zero
                  sub          zero, a1, t2
                  srli         s1, sp, 7
                  slt          t3, a6, t0
                  andi         ra, s8, -873
                  or           s3, t4, ra
                  srai         s8, t4, 0
                  slt          s5, s4, s7
                  srli         a2, s4, 16
                  or           s10, s5, sp
                  ori          s2, s0, -409
                  and          t6, t0, tp
                  ori          a4, s0, 1631
                  sll          a7, s6, sp
                  sltu         s6, s11, a0
                  slli         a0, t6, 10
                  lui          ra, 568423
                  lui          sp, 418655
                  add          s8, zero, s2
                  sra          s7, t0, t2
                  or           t2, s8, t3
                  slt          s6, s6, a5
                  or           t5, s10, s7
                  sltu         s4, t0, s2
                  addi         s8, s0, 1628
                  sltiu        t6, t0, 1847
                  andi         s0, a1, -1445
                  sra          ra, s6, s0
                  lui          gp, 1035507
                  or           s2, s1, t2
                  and          s3, s5, tp
                  addi         t1, s2, -1971
                  srli         s6, s3, 31
                  xori         a2, sp, -1227
                  add          s2, sp, s11
                  sub          s2, ra, gp
                  srai         s7, s10, 21
                  xori         s8, a0, -458
                  andi         s8, a3, -535
                  srl          t1, s7, t0
                  srai         s8, s2, 15
                  sltu         ra, t0, s2
                  xor          a1, t2, t0
                  slt          s2, a1, s11
                  lui          s0, 1001838
                  srai         ra, s8, 31
                  ori          a7, a4, -770
                  addi         a7, a6, -1724
                  and          s11, s8, a3
                  xori         a6, t0, -548
                  slli         s2, s0, 3
                  add          t3, a6, a7
                  nop
                  addi         s1, s1, -1071
                  srli         s3, sp, 15
                  slli         t6, s6, 11
                  sll          a1, a6, s9
                  or           s8, a3, s8
                  addi         a0, tp, 509
                  sltu         a4, s11, a2
                  or           s5, s6, a2
                  sub          a6, sp, a2
                  srl          a7, a3, a7
                  sub          s11, s9, gp
                  slli         a1, ra, 2
                  ori          s1, s8, 1518
                  sra          s9, t4, a7
                  slt          s0, a6, a2
                  slti         s0, t5, 1008
                  slti         t0, s10, -1283
                  addi         sp, a0, -709
                  andi         a7, s2, -2022
                  sltu         s2, s10, zero
                  sltu         t3, s5, a4
                  addi         t1, t1, -1416
                  sll          t1, s6, s3
                  srli         a1, a7, 5
                  andi         s0, s9, 1810
                  srai         a7, ra, 25
                  sltu         s3, s9, s7
                  or           a0, t5, gp
                  slt          a2, s7, s11
                  lui          s6, 1004252
                  lui          t2, 236637
                  ori          s7, t2, -1968
                  sltiu        s10, a1, 519
                  srai         ra, t5, 1
                  slt          a7, s5, t5
                  ori          sp, a1, -43
                  andi         s2, s5, 1364
                  xor          a2, a5, s3
                  slt          a7, zero, t5
                  add          a1, s7, t5
                  sub          s0, s11, a5
                  add          s8, s0, a0
                  sltiu        t6, t6, 1076
                  xori         sp, s0, -1738
                  ori          s1, a6, 2020
                  srai         gp, s6, 11
                  add          a7, gp, s6
                  sltiu        t3, s10, 874
                  add          a6, sp, a4
                  slli         s6, s5, 31
                  and          a0, a1, a0
                  srai         s10, s10, 6
                  sub          t2, t3, t4
                  slt          s1, t3, s9
                  srli         t6, t2, 30
                  sltu         t6, s11, a4
                  sll          a7, a4, a6
                  ori          a7, sp, 2016
                  slti         s10, s10, -109
                  ori          a5, a5, 24
                  srli         gp, s2, 10
                  xori         t5, s7, -165
                  or           s2, s5, a2
                  addi         t2, t1, -189
                  xori         t1, s7, 306
                  sub          t0, s5, s2
                  srai         a5, s8, 23
                  slti         s2, a3, 1454
                  and          gp, a6, ra
                  slt          s10, t2, s9
                  sll          s4, s2, s4
                  sub          t1, s1, a6
                  slli         a6, s8, 18
                  sll          a1, s3, s4
                  xor          s3, s3, t5
                  xor          a4, s6, a3
                  auipc        s1, 133170
                  lui          t0, 665567
                  nop
                  sltiu        s5, a7, 1949
                  sub          s11, tp, s7
                  or           t5, s1, s2
                  slti         a7, s2, 505
                  auipc        s3, 995556
                  ori          s5, t3, 1820
                  ori          s0, s5, 853
                  slt          a2, s4, s8
                  srl          gp, s2, t5
                  sra          t2, zero, a6
                  sub          t5, t1, tp
                  srai         t1, t3, 19
                  and          a2, s9, t1
                  srai         a7, t5, 16
                  sltiu        a4, s1, 799
                  srl          a2, s1, s1
                  nop
                  and          t1, a3, t6
                  and          s0, ra, a1
                  sub          s10, t6, a3
                  srai         t5, s2, 17
                  sub          s6, t5, s8
                  sll          s7, a3, s10
                  sltiu        sp, s10, -331
                  or           zero, s4, t4
                  addi         gp, s8, 887
                  ori          ra, a5, -541
                  sra          a0, s5, s7
                  xori         t3, s0, -1489
                  auipc        s5, 235743
                  slli         s11, t5, 26
                  add          s11, s2, a6
                  srli         s10, t2, 25
                  sltu         a1, t4, a3
                  addi         a5, s4, -1590
                  srl          a0, t4, t5
                  srli         s11, a6, 3
                  slt          zero, s1, s0
                  srl          a2, a5, a5
                  sltu         s9, ra, a6
                  auipc        s5, 169271
                  slt          t2, s1, s4
                  add          ra, t6, a3
                  xori         a1, s11, 949
                  nop
                  sll          t0, t0, tp
                  srl          ra, s1, a6
                  auipc        a0, 661619
                  sltiu        sp, s3, -118
                  ori          s2, t1, -1555
                  slli         s9, a5, 0
                  add          s1, s5, ra
                  auipc        s2, 72549
                  add          s6, s4, a1
                  ori          t2, s10, -404
                  sra          gp, t1, t5
                  sltu         s0, a6, t1
                  andi         s5, zero, -629
                  srli         s7, s0, 25
                  slli         t0, t2, 1
                  sltiu        zero, s2, 189
                  slli         a2, s2, 12
                  xor          s4, a7, s7
                  sll          a2, zero, a6
                  lui          a5, 480916
                  srai         a6, a6, 14
                  sra          s2, sp, a2
                  sll          s9, t6, s1
                  sll          a4, t5, s11
                  xori         t3, tp, -133
                  add          s3, t6, a6
                  srl          s1, s3, t5
                  sub          a2, t1, a0
                  and          a2, a5, a4
                  addi         s6, s5, -1074
                  lui          a0, 266124
                  xori         a7, a5, -1939
                  xori         t0, t4, 1268
                  sltu         ra, a0, s7
                  slli         t2, t2, 22
                  sltu         s10, gp, sp
                  slli         a2, a0, 1
                  slli         a7, sp, 14
                  andi         t3, a0, 939
                  xor          s6, a2, s8
                  slt          s7, s7, ra
                  sub          a7, tp, sp
                  andi         s6, ra, -621
                  srai         a7, a5, 10
                  srl          t6, tp, a0
                  srli         a1, t0, 21
                  addi         s6, t6, -1651
                  addi         gp, s5, 209
                  andi         t3, a3, 1693
                  sltiu        t3, a6, -1804
                  auipc        a1, 746550
                  sll          s5, t4, t0
                  slt          s3, a4, t3
                  sll          sp, t0, a3
                  nop
                  slti         t0, a3, 1762
                  srl          t2, a6, ra
                  nop
                  nop
                  or           s9, t6, t5
                  sra          a6, s3, s0
                  sll          t2, sp, a0
                  add          a7, s2, a2
                  addi         t1, s9, -1763
                  and          sp, s3, a3
                  slli         ra, s1, 21
                  nop
                  sub          a7, s3, s4
                  sltu         s6, t0, zero
                  srli         a2, t5, 8
                  auipc        s10, 557894
                  auipc        t3, 800668
                  lui          s0, 249914
                  sll          zero, a0, gp
                  andi         s7, a4, -206
                  sub          s2, t2, s9
                  ori          s11, a7, 1092
                  sltu         s5, s0, gp
                  lui          s7, 1035972
                  sltiu        s2, a3, -402
                  lui          t3, 379959
                  nop
                  ori          s0, s5, 372
                  and          t2, t5, a4
                  srl          s5, a7, s6
                  ori          sp, s11, -18
                  sltiu        s1, tp, -564
                  andi         s2, t5, 1682
                  sub          s2, s0, t2
                  ori          a2, a2, -1088
                  nop
                  sub          s0, s6, t6
                  srli         t3, s0, 6
                  xor          a5, a1, s11
                  sltiu        a7, s10, 1011
                  sltiu        sp, t3, -1475
                  auipc        t0, 806156
                  ori          sp, a7, -518
                  xori         t5, t1, -1326
                  xor          sp, a0, zero
                  and          s10, a5, s1
                  andi         s7, t3, -1407
                  addi         s6, s2, 33
                  or           sp, s11, gp
                  srl          t3, gp, s5
                  addi         a4, t3, -1499
                  ori          a6, ra, -1926
                  slt          zero, t5, s7
                  xor          a5, a1, tp
                  add          a5, t5, t4
                  and          t0, t6, t5
                  slt          a1, t5, s10
                  addi         a6, a3, -338
                  and          ra, t5, s0
                  sltu         a5, zero, s9
                  xor          a2, t6, t6
                  ori          t5, s7, -1422
                  sub          s11, s3, s2
                  lui          a4, 77174
                  and          a2, a3, a5
                  xori         t1, t1, 966
                  lui          a6, 1006942
                  auipc        ra, 428
                  andi         t1, t4, -779
                  slti         a5, zero, -391
                  sll          s4, s2, s8
                  auipc        a2, 1013225
                  srai         s3, a4, 7
                  sltu         zero, a6, s0
                  or           a4, t0, a3
                  xor          a1, t6, t6
                  nop
                  sll          a5, a4, s7
                  addi         t2, sp, -1821
                  lui          s4, 213066
                  srl          a6, t3, s7
                  slti         t3, a5, 492
                  sub          ra, gp, s4
                  sra          a0, s6, a6
                  sltu         a4, t0, s8
                  sltiu        t1, a7, -2017
                  xor          t1, t5, sp
                  or           a5, a0, t6
                  sub          s10, sp, s8
                  addi         s0, s7, -1227
                  or           t3, a5, t6
                  addi         s11, a4, -1768
                  sltiu        s6, s0, 1905
                  slti         t6, t6, 1584
                  sltiu        s8, a1, 466
                  auipc        s4, 411907
                  sltiu        s4, t3, 224
                  slti         t3, s10, 1266
                  slli         a1, t4, 8
                  sub          a5, gp, s6
                  sltu         s7, s3, a2
                  auipc        s9, 1006674
                  srli         s8, a3, 11
                  srl          a1, a0, s11
                  andi         s8, gp, 9
                  xor          a7, a3, s4
                  sll          zero, a3, s1
                  sra          a2, a0, t0
                  sub          ra, s10, t6
                  sltiu        s1, a2, -1686
                  xor          sp, a7, s5
                  ori          s0, s4, -1232
                  add          a5, a7, t2
                  and          s7, s3, s0
                  xor          s4, t5, zero
                  slli         t1, gp, 15
                  xor          s5, s9, tp
                  nop
                  addi         s1, t2, 1771
                  and          s9, s8, zero
                  xori         a4, s11, 1768
                  slli         s4, a2, 10
                  addi         t1, a2, 1485
                  auipc        a2, 614783
                  and          a2, a3, s10
                  slti         t6, s5, 1617
                  auipc        s6, 155216
                  sltu         s2, s5, a0
                  add          t0, s11, t5
                  sltiu        s1, t6, 1754
                  andi         zero, ra, -637
                  sll          a4, a2, s7
                  srli         s0, s0, 21
                  sll          t1, s1, tp
                  addi         a1, s7, 1852
                  sra          s7, a5, s0
                  ori          s9, s6, -692
                  srai         t1, s5, 14
                  srai         t1, s3, 24
                  xor          a1, a4, s8
                  lui          a6, 415616
                  srl          s5, t3, t1
                  add          a7, t2, t3
                  or           s10, a1, sp
                  sra          a0, t2, s1
                  sltu         sp, t3, gp
                  srli         a6, a0, 27
                  andi         ra, a3, 1613
                  sltu         a6, a3, s2
                  xor          s11, t0, t6
                  add          a0, t3, s0
                  slt          sp, s10, t3
                  slli         s1, ra, 1
                  nop
                  srl          s3, a4, s2
                  add          t0, t6, t6
                  sra          a2, a4, s4
                  slti         t1, a2, 1930
                  lui          s11, 641168
                  xor          a1, t2, a3
                  or           s0, a2, t0
                  addi         sp, t5, 1663
                  andi         a2, t3, -75
                  addi         a6, t1, -1465
                  sltu         t1, t1, s4
                  sra          t5, a1, s5
                  slli         a0, t4, 4
                  add          a2, a4, s1
                  srl          t1, s7, tp
                  srli         a4, t0, 13
                  sra          s7, a3, a6
                  slti         t1, gp, 339
                  srai         t5, a1, 4
                  srli         sp, t3, 1
                  xori         t0, a1, -1221
                  ori          s1, s7, 132
                  auipc        s4, 869981
                  srai         a1, s7, 27
                  slti         ra, s7, -1278
                  sra          s10, s5, a4
                  srl          s8, a3, a7
                  srai         a7, zero, 1
                  and          s3, s2, a0
                  srli         a0, gp, 13
                  sltiu        s7, a4, -1455
                  lui          s4, 205802
                  srai         s7, s5, 22
                  sra          a5, ra, t2
                  srai         s10, t3, 2
                  sll          s7, t0, s9
                  xori         t2, s9, 979
                  slt          s11, tp, a4
                  xori         t5, t3, 141
                  sra          a4, s11, s4
                  xori         s11, t2, 911
                  sra          s9, s10, s10
                  slt          s1, a7, a6
                  addi         a0, t5, -1890
                  sub          s4, gp, s0
                  and          t5, s6, s2
                  sltu         s5, ra, zero
                  slti         a2, s11, -1958
                  nop
                  sub          s3, t2, s1
                  sll          s0, s2, s3
                  slli         t5, a5, 15
                  or           s2, a7, s0
                  srai         zero, a4, 26
                  sltu         t1, a2, s10
                  slt          t6, s2, s10
                  srai         a1, s3, 6
                  sll          s8, s0, s0
                  sra          a7, t6, ra
                  srl          gp, s5, t1
                  sltu         ra, t1, s5
                  sltiu        a6, s1, 24
                  sub          t6, s1, t4
                  andi         s8, s6, 1908
                  sltiu        a1, s10, -1758
                  slli         a5, s2, 8
                  sra          a7, s9, t0
                  srai         a5, gp, 8
                  auipc        a5, 425275
                  auipc        s3, 780953
                  slti         a2, a6, -1026
                  sra          a2, ra, a5
                  ori          a1, s2, 648
                  ori          t6, ra, -1287
                  auipc        s7, 294200
                  and          t0, tp, a7
                  ori          zero, zero, -543
                  addi         a6, s2, -1764
                  slli         a4, t5, 14
                  sltiu        t3, ra, -426
                  or           a7, a7, zero
                  sra          s9, s9, t1
                  add          s2, t0, a3
                  andi         s7, s11, -885
                  sltiu        a7, s2, -57
                  xori         s0, s10, 1325
                  slli         s2, t1, 15
                  addi         a0, a3, -762
                  slti         s9, a1, -744
                  and          a2, tp, a1
                  sltiu        a0, s9, -889
                  sltu         gp, a2, zero
                  xor          a6, t3, a5
                  sltiu        s10, tp, 348
                  add          t2, s0, t4
                  add          s4, a1, a1
                  addi         t0, t4, -1599
                  nop
                  ori          s4, s10, -1413
                  add          s11, t5, s1
                  slti         s6, zero, -1389
                  add          t6, gp, t4
                  slt          s9, zero, tp
                  srl          s11, s9, s10
                  lui          a6, 722109
                  addi         a5, tp, -1211
                  slti         s0, t6, -1025
                  srl          s9, a5, s7
                  sltiu        t0, s2, 1119
                  or           s10, ra, s0
                  or           a1, s8, a5
                  slli         s4, a6, 20
                  addi         s7, t4, 1978
                  sub          s2, t3, a3
                  sub          s6, a2, t4
                  xori         a1, t0, 1256
                  sra          s7, a3, a6
                  sltiu        a5, a0, -1046
                  xori         a5, a2, -1401
                  srli         t5, a0, 1
                  sra          s11, s7, a2
                  ori          s11, s2, 1178
                  sltiu        s4, a4, 1455
                  lui          s4, 658733
                  sra          t3, t6, a3
                  slti         s5, s2, -1870
                  sra          s3, a1, a6
                  xor          s5, s11, s4
                  addi         gp, a1, 295
                  ori          zero, a6, 1388
                  xori         gp, s1, -67
                  sll          ra, t0, s10
                  andi         ra, t2, -780
                  xor          s0, a3, a7
                  ori          a6, s9, -745
                  addi         s7, s1, 1158
                  sll          a4, zero, t4
                  or           s7, a2, a7
                  or           s6, s1, a0
                  slli         zero, t4, 7
                  sra          s8, sp, sp
                  sltiu        t3, s4, -1208
                  xori         s4, a7, 1765
                  sra          zero, s11, sp
                  ori          t5, a4, 1606
                  srli         a4, s11, 26
                  srli         sp, ra, 16
                  lui          s11, 963935
                  addi         t2, s3, 1728
                  and          a0, tp, s11
                  addi         gp, s3, -555
                  sll          a2, tp, sp
                  sll          s5, s8, a6
                  or           t5, s4, s1
                  slt          s8, a4, tp
                  nop
                  sub          t1, zero, ra
                  slli         s6, t5, 30
                  srai         s6, a7, 22
                  xor          t3, t0, s7
                  lui          zero, 889559
                  srl          ra, a5, ra
                  srl          s3, t5, a2
                  addi         s11, s2, -766
                  or           s3, tp, t1
                  xor          s10, a1, t6
                  or           s1, t4, s8
                  add          s0, t3, t6
                  add          s9, t4, s7
                  or           a4, s10, t0
                  slt          t1, a6, t2
                  auipc        a4, 1010063
                  add          s2, gp, s5
                  srl          ra, s4, a6
                  srl          s6, sp, t6
                  auipc        s4, 432317
                  sltu         zero, sp, sp
                  sll          t2, t3, s5
                  add          s9, zero, s6
                  sltiu        zero, sp, 569
                  addi         s8, s5, -830
                  nop
                  xor          s5, t3, a5
                  slt          s1, a0, t5
                  sub          zero, s5, tp
                  srli         s0, a7, 25
                  srl          a6, t3, a3
                  sub          t6, t0, t0
                  srli         zero, a7, 18
                  addi         t2, s6, 1940
                  sra          t2, zero, gp
                  xori         gp, s1, 1890
                  nop
                  sltiu        s9, s1, 2000
                  lui          t1, 86229
                  nop
                  lui          a7, 452979
                  xor          s6, a1, s6
                  slli         a7, s5, 5
                  andi         s4, s3, -1025
                  sra          a7, a2, s8
                  xor          s1, s8, tp
                  srai         s7, a5, 29
                  auipc        s1, 194542
                  addi         a2, sp, -1793
                  addi         s2, s2, -172
                  slti         a0, t3, -1924
                  sll          a5, ra, t4
                  auipc        a2, 981465
                  ori          a6, s9, 238
                  ori          s6, tp, 921
                  srai         a7, a0, 22
                  nop
                  sub          t6, t1, s4
                  and          sp, sp, s1
                  andi         s2, s5, 1719
                  srai         a6, a0, 19
                  srli         a4, t3, 24
                  andi         a2, t2, -622
                  slti         t1, a4, -938
                  andi         s7, s1, -1857
                  slli         s9, a4, 15
                  sra          s0, s11, s9
                  lui          a2, 648456
                  slt          t1, s8, ra
                  sll          s5, ra, s2
                  lui          s2, 882675
                  and          t6, s4, s9
                  slt          t1, a7, t0
                  xor          t6, s9, s5
                  addi         s1, tp, -1006
                  xor          a0, s8, s11
                  addi         s4, s8, -1413
                  slli         s7, t6, 9
                  ori          sp, a7, 17
                  nop
                  sltiu        a5, s9, 1468
                  srli         t3, s8, 20
                  sll          a6, a5, a0
                  xori         t5, a1, -193
                  lui          sp, 863289
                  or           gp, a6, t1
                  sra          s10, t6, t3
                  srl          zero, s4, t0
                  sll          s10, s10, a7
                  sub          s4, a4, sp
                  add          a5, t3, s2
                  slti         t0, s9, -1028
                  sra          ra, t4, s4
                  sltu         s7, a1, a3
                  addi         s2, a4, -275
                  srl          a0, t3, a2
                  slli         s8, s1, 26
                  and          s6, s10, s6
                  sltiu        a2, t2, -1521
                  slli         a6, s5, 11
                  sra          ra, tp, s1
                  nop
                  addi         a5, t2, -56
                  sll          a2, s8, s0
                  xor          s8, s8, a6
                  slli         s1, t2, 14
                  or           s4, a1, s5
                  ori          t1, a4, 56
                  or           a0, s2, t2
                  auipc        t2, 354104
                  add          ra, t0, s2
                  slli         ra, a5, 7
                  add          s9, t1, t5
                  addi         s5, s6, -1025
                  srl          t1, t1, s10
                  sltu         t1, a3, s9
                  sra          a7, s0, s3
                  sub          s11, t5, a3
                  sub          t6, a4, s9
                  sub          s5, zero, s7
                  ori          s9, a1, -940
                  xor          t2, t3, s6
                  or           sp, a0, a3
                  sltiu        a7, t2, -1675
                  addi         s5, zero, -1447
                  sra          s11, s2, a7
                  sub          zero, t5, s1
                  xor          a6, s1, s11
                  add          s4, s4, s2
                  lui          a6, 173135
                  slt          t0, ra, s1
                  slli         s11, t1, 3
                  lui          t3, 404237
                  addi         s10, a0, 1356
                  slt          a0, t4, a4
                  ori          a6, s4, 1942
                  sltiu        s8, s0, 94
                  slti         s6, a1, -535
                  srai         a0, s9, 6
                  xor          s8, s10, s1
                  auipc        s10, 890001
                  sra          a0, gp, s8
                  srli         a2, ra, 28
                  auipc        s11, 607593
                  sltiu        s6, s3, -491
                  addi         s11, s10, -1363
                  sltiu        s10, t2, -138
                  sltu         a5, t2, s11
                  srli         a4, a5, 2
                  ori          s5, a4, 946
                  srai         t6, s7, 22
                  and          s1, s3, s11
                  and          t6, s8, s5
                  lui          t0, 465057
                  xor          a7, s5, t3
                  slti         s3, a1, 1260
                  slt          t0, t2, t2
                  srai         t0, s3, 14
                  srai         sp, tp, 13
                  xor          t3, s2, s10
                  addi         s4, ra, -960
                  nop
                  xor          gp, gp, t4
                  and          a7, a6, t3
                  slti         s1, a6, 200
                  addi         s4, t3, -1264
                  add          t6, a5, a0
                  addi         a2, a0, 1620
                  and          a5, s11, a7
                  andi         sp, s1, -1627
                  xor          s4, sp, s8
                  srai         ra, a2, 7
                  xor          s9, t4, s8
                  slt          gp, t5, gp
                  and          s1, s3, zero
                  add          s2, gp, t1
                  or           t1, s9, t2
                  sra          s4, a0, a5
                  or           s10, sp, zero
                  addi         s5, t6, 1902
                  li           t2, 0x80000000 #start riscv_int_numeric_corner_stream_13
                  li           t5, 0x0
                  li           a1, 0xffffffff
                  li           s7, 0x0
                  li           s0, 0xffffffff
                  li           s9, 0x80000000
                  li           t3, 0x0
                  li           a4, 0x8cfbea1a
                  li           ra, 0x80000000
                  li           s3, 0xffffffff
                  add          a1, t5, s7
                  nop
                  lui          t2, 401223
                  addi         s9, s3, 246
                  lui          s9, 960170
                  add          t3, ra, a4
                  lui          a1, 703747
                  lui          t2, 452631
                  lui          t3, 680168
                  sub          a1, a4, s0
                  add          t3, ra, t5
                  lui          s0, 872775
                  addi         s3, s0, 143
                  auipc        t3, 394409
                  lui          t2, 488308
                  auipc        t3, 410276
                  auipc        s3, 143302
                  nop
                  sub          s0, s7, s3 #end riscv_int_numeric_corner_stream_13
                  sub          ra, s0, s10
                  sra          s2, t1, s9
                  slli         a5, a5, 1
                  srli         s2, a7, 9
                  xor          s4, s2, t4
                  nop
                  xor          t5, t3, a5
                  sltiu        s4, t3, -1098
                  sub          sp, tp, a4
                  xor          a6, t1, s7
                  srli         t2, s4, 6
                  sltu         s0, s3, sp
                  srl          t3, sp, s8
                  and          s1, zero, s10
                  srai         t5, gp, 4
                  ori          s2, a6, 1969
                  and          s6, s3, s0
                  andi         s10, gp, -1825
                  xori         t2, s9, -1503
                  srl          a6, a3, a0
                  addi         s7, s3, -282
                  and          t1, a5, s11
                  sub          s9, s9, s9
                  add          zero, s0, s2
                  slli         zero, s3, 11
                  sub          a7, s3, s0
                  andi         a5, t0, 240
                  nop
                  srl          t5, s8, a6
                  slli         s5, a3, 5
                  sll          zero, s6, s5
                  add          a5, a7, a6
                  slli         s4, t2, 16
                  lui          s6, 483470
                  lui          s1, 293255
                  and          s6, t4, a7
                  add          a6, s1, a0
                  slli         a6, s6, 14
                  ori          s2, s1, -400
                  slli         gp, s1, 21
                  srai         t0, a1, 26
                  xor          t3, t4, a5
                  auipc        t5, 416170
                  srl          t6, t4, a5
                  slli         a0, s9, 31
                  slt          s11, s0, s10
                  srai         t2, tp, 19
                  xori         t6, s0, 538
                  add          sp, t5, a6
                  srli         gp, t1, 19
                  addi         a2, t6, -673
                  ori          t5, s1, -739
                  addi         a4, s3, -975
                  slli         t2, s4, 15
                  andi         a1, t6, 1138
                  sll          t0, t2, s2
                  sra          s10, s8, s2
                  xori         s11, s6, -2036
                  xori         zero, t0, 1992
                  addi         a4, t5, 324
                  sltiu        s8, s0, -1010
                  addi         sp, s11, 739
                  or           a1, t2, s7
                  sltu         s8, a4, s4
                  addi         s6, a3, -1882
                  sra          s4, t6, t4
                  xor          sp, a5, sp
                  or           t5, sp, gp
                  auipc        s6, 10705
                  slt          zero, s7, s10
                  and          a4, s2, tp
                  sltiu        s2, s10, -25
                  add          s11, gp, t2
                  ori          a7, s6, 1281
                  and          s1, t3, s0
                  xor          a2, a3, t4
                  nop
                  auipc        a0, 826627
                  lui          a5, 1040963
                  ori          s4, s8, -1510
                  slli         t1, s2, 5
                  ori          t2, s4, -1636
                  slt          a4, a1, t1
                  slti         s10, t6, 226
                  andi         a7, s6, 1804
                  sub          ra, a3, s9
                  xori         a6, s11, 1665
                  slt          a1, sp, a2
                  sll          t0, t4, s8
                  andi         a1, s7, 505
                  xori         a5, a0, 565
                  nop
                  slt          a4, t1, t4
                  ori          t1, t1, 193
                  xori         s11, ra, -525
                  slti         s11, a2, -1038
                  auipc        gp, 999845
                  sll          s6, tp, a7
                  sra          s9, t5, s7
                  add          s10, s11, t6
                  sltu         t6, s0, t3
                  srli         t0, a0, 29
                  slt          t3, t1, t5
                  sltiu        a2, zero, -1244
                  xor          a1, s7, a0
                  lui          t5, 496153
                  andi         a7, a6, 439
                  ori          gp, a6, -533
                  xori         a4, a1, -137
                  sra          s7, a6, s4
                  sub          a4, s10, ra
                  slli         t1, t1, 1
                  sub          s0, s3, t0
                  nop
                  sltu         s1, s6, t6
                  sltu         a7, s4, s8
                  sll          ra, ra, t2
                  ori          s7, t6, 208
                  or           gp, s3, t1
                  or           a6, t2, a2
                  auipc        a7, 326975
                  sra          a0, sp, t1
                  auipc        s5, 580846
                  or           s0, a1, s8
                  andi         t1, s2, -1807
                  or           t1, t6, t4
                  slt          s6, a5, t2
                  lui          a6, 868411
                  xori         t1, a7, 280
                  andi         t5, s2, -718
                  and          gp, s0, a0
                  srli         t2, ra, 9
                  srl          gp, s6, s5
                  nop
                  sub          gp, t4, t6
                  xor          t3, ra, s6
                  andi         t0, zero, 1438
                  nop
                  srli         s6, a6, 28
                  slt          s11, gp, t5
                  nop
                  slti         s11, a6, -714
                  ori          t5, t5, 480
                  srl          t3, a7, t5
                  addi         s6, a0, 1730
                  nop
                  sltiu        s6, t2, 1423
                  or           t6, s7, s2
                  addi         a2, s6, -964
                  slli         t5, a7, 14
                  sra          a7, gp, sp
                  slli         t1, t5, 4
                  sll          s10, a6, ra
                  nop
                  ori          a4, a1, -1235
                  and          a6, zero, s1
                  addi         s0, a7, -820
                  sltiu        a4, a7, -1442
                  xor          a6, s9, zero
                  ori          s10, t0, 1532
                  srl          s7, s6, s2
                  sub          s0, t6, s11
                  slti         s10, a2, -1697
                  srai         a2, t6, 20
                  or           t5, s3, zero
                  sll          a1, t2, a1
                  ori          s11, a1, -2025
                  slti         t6, a2, 1433
                  or           s11, s7, s6
                  sll          a2, t6, a3
                  sll          t2, s2, s2
                  andi         zero, s3, 2039
                  sltiu        s4, t5, 2004
                  slt          t3, s0, t3
                  add          ra, sp, a7
                  ori          s6, t1, -389
                  srl          ra, t6, a7
                  addi         a2, a1, -53
                  sltu         s6, s10, t0
                  sll          a0, t3, t2
                  nop
                  sub          a6, a6, s5
                  sltiu        s9, a7, -1926
                  xori         zero, a1, 1214
                  and          t2, t3, a2
                  srai         a6, tp, 18
                  or           s2, sp, s5
                  sra          ra, a0, a6
                  slli         s9, t6, 31
                  or           t5, zero, s9
                  add          s8, s2, s10
                  sra          a7, s8, a1
                  xori         ra, s10, -1923
                  sltiu        s5, a4, 1827
                  ori          s3, t2, -1753
                  xori         t5, a5, -1926
                  andi         a2, a1, -1302
                  auipc        t2, 218927
                  sub          t2, s11, s1
                  xor          t5, s11, s7
                  and          t6, s9, ra
                  or           a4, t5, a4
                  or           a0, a0, a4
                  ori          s3, a4, -1738
                  sltiu        ra, s9, -540
                  sll          t2, s6, ra
                  lui          s3, 163495
                  sltu         t5, t4, a1
                  ori          s3, a0, -1628
                  sltiu        t0, a2, -945
                  slli         s0, a4, 10
                  slli         a0, a1, 20
                  addi         s7, s7, -527
                  sltiu        ra, a4, -608
                  addi         a6, a6, -1950
                  add          t3, s3, sp
                  srl          s6, a4, s1
                  srai         a5, t2, 17
                  and          s5, s2, a5
                  auipc        sp, 1024482
                  srli         a4, s4, 17
                  nop
                  slt          s9, a3, s6
                  addi         a2, t6, 0
                  andi         gp, t5, 1483
                  sub          a6, s8, s10
                  ori          a2, a4, 1870
                  sub          zero, gp, s6
                  sra          s0, t3, s4
                  sll          s3, s6, s6
                  and          s8, s0, s8
                  slti         s3, sp, -964
                  andi         s4, sp, 1076
                  sll          gp, t5, ra
                  sub          s4, s9, t4
                  xor          s9, a7, t5
                  sll          gp, s11, sp
                  slli         s7, s6, 12
                  andi         ra, t4, 650
                  slt          t5, t4, t3
                  addi         t2, sp, 1976
                  slti         t0, s7, -1191
                  addi         s4, s4, -892
                  sub          zero, s2, gp
                  addi         ra, t1, -672
                  or           a5, s5, s5
                  sll          a7, a5, gp
                  ori          s9, a0, -1853
                  srli         ra, s4, 7
                  andi         s0, a6, -1894
                  xor          s8, s3, t0
                  sltiu        a0, t2, -232
                  srli         a1, s8, 19
                  addi         t5, tp, -513
                  ori          a1, t6, -507
                  srli         s2, s10, 10
                  sub          s10, s7, t5
                  slti         s9, s11, -1855
                  and          t6, a7, t3
                  and          t3, s3, s4
                  srai         s9, t1, 24
                  nop
                  srli         s4, t3, 4
                  slti         a6, a1, -265
                  add          t5, t5, a7
                  srli         sp, s4, 23
                  srli         t3, sp, 30
                  or           s4, s9, s11
                  add          a1, a5, s7
                  sll          s4, t2, s9
                  slti         t3, s11, 9
                  xor          s2, gp, s11
                  sub          s11, s6, a0
                  addi         s8, s6, -11
                  sll          s5, zero, s9
                  nop
                  addi         s5, t4, -262
                  lui          s6, 693494
                  sll          a2, a5, s4
                  slli         s11, s5, 2
                  sub          a4, t5, s4
                  srai         a1, zero, 15
                  add          s3, s1, zero
                  add          s9, t5, t3
                  sltu         a1, s8, a7
                  slt          a0, t1, s0
                  addi         s3, a2, -1630
                  sra          t0, a7, tp
                  xori         a1, t3, -1746
                  srli         s5, t0, 3
                  xori         s11, s11, 1168
                  slli         zero, t1, 9
                  sra          a1, t2, t6
                  nop
                  sub          a5, s6, s6
                  srli         a6, s2, 30
                  sub          s7, s5, s9
                  sltiu        a2, a3, 420
                  srl          s1, s10, s6
                  sltu         a1, a3, s3
                  and          a6, s7, a6
                  auipc        s2, 609219
                  srli         gp, t5, 24
                  sltiu        s10, t4, -282
                  slti         s9, a6, 110
                  andi         a1, t2, 1210
                  nop
                  srai         a6, s11, 26
                  and          gp, s3, s3
                  srai         s0, sp, 6
                  nop
                  addi         t3, a1, -158
                  sra          s0, a6, s9
                  slt          t1, t5, s8
                  add          t2, a2, t4
                  sub          a4, a6, s6
                  sltu         t5, zero, s4
                  auipc        zero, 1033301
                  andi         s5, t0, -1239
                  addi         s2, t2, -1223
                  andi         t1, tp, -374
                  ori          a0, s3, -359
                  lui          a6, 447049
                  lui          t2, 9712
                  sub          t1, a1, s7
                  lui          s11, 353012
                  srai         a6, t2, 2
                  sll          zero, a4, s5
                  sltiu        a2, s1, 1961
                  addi         t3, a7, 1282
                  ori          s10, t0, -424
                  lui          s0, 890473
                  and          gp, s5, s0
                  or           s1, a2, a5
                  srl          t6, t3, s7
                  xori         a6, a1, -1324
                  srli         t6, s6, 16
                  xori         ra, tp, 792
                  xori         t5, a4, 1070
                  add          s1, a6, a4
                  sll          t1, s7, a3
                  slli         s6, t4, 8
                  auipc        s5, 1040126
                  sub          s10, s5, s4
                  xor          t2, s8, t1
                  add          a2, a4, a1
                  srl          sp, s0, a6
                  srli         a5, s6, 6
                  sll          sp, a7, s10
                  nop
                  lui          t2, 874219
                  lui          gp, 87961
                  sll          a1, a7, ra
                  sll          t0, a0, a5
                  sltu         a1, a5, t3
                  sltiu        s2, t3, 572
                  auipc        s2, 381254
                  nop
                  slt          t2, a5, a0
                  add          zero, t6, s0
                  auipc        a2, 695249
                  sra          t1, s8, t3
                  and          t5, t6, s10
                  addi         t1, s8, -1153
                  xori         t5, a2, 897
                  slt          s10, a2, s8
                  and          sp, s4, tp
                  addi         s10, t4, 914
                  lui          s2, 743399
                  sltu         s9, tp, zero
                  srli         s3, s9, 10
                  sltu         gp, a0, s7
                  slt          a0, t3, s3
                  sltiu        s0, a2, -904
                  sub          sp, t6, s1
                  addi         s2, a3, -650
                  andi         t1, t1, -752
                  slt          s11, ra, t3
                  slli         t2, a1, 30
                  sub          zero, s6, gp
                  auipc        s7, 510077
                  andi         s3, s3, 709
                  sra          gp, a0, s11
                  srli         a5, t1, 14
                  addi         s2, s3, -575
                  srli         s9, t3, 6
                  sll          a7, a7, a2
                  andi         a6, t0, 1048
                  srli         s0, t3, 12
                  sub          s9, tp, t0
                  or           t2, s3, a2
                  slli         a1, s6, 30
                  slti         s1, tp, -572
                  sll          s1, s8, s3
                  addi         gp, t2, 539
                  or           gp, s10, s9
                  and          a7, gp, s0
                  srai         s0, a6, 12
                  sltu         s2, t2, t4
                  sltiu        gp, s6, -1140
                  addi         a0, t6, -1891
                  lui          t0, 931377
                  slti         a6, t1, 872
                  andi         ra, a0, -1850
                  slti         zero, a3, -1047
                  addi         s9, s2, -1886
                  and          a0, t3, s7
                  srai         a5, a4, 3
                  auipc        s2, 647153
                  andi         t6, t2, 324
                  srli         s1, sp, 12
                  sll          a4, a0, a0
                  sub          t3, t0, zero
                  sltu         a5, t1, s8
                  slt          s1, a2, s0
                  sltu         t1, s2, t1
                  slt          s3, s8, s7
                  xor          zero, t6, a3
                  srl          s5, a3, s8
                  slt          s6, s2, t5
                  addi         s9, s1, 869
                  sra          t1, t6, t0
                  addi         s6, zero, -1077
                  sll          a5, s0, s3
                  sub          s4, t4, a7
                  xori         zero, s6, -279
                  srai         s4, t1, 15
                  andi         t0, t4, -371
                  xori         a4, a3, -1870
                  sub          s0, a3, t6
                  xor          s9, s0, zero
                  sll          s6, s10, t6
                  auipc        ra, 523437
                  xor          a6, s6, s4
                  or           t0, a0, t2
                  xor          s3, s2, t2
                  xor          s7, t5, t3
                  sltu         s11, ra, s2
                  sltiu        a5, zero, 199
                  or           s4, t5, t4
                  slli         sp, a7, 25
                  auipc        gp, 615487
                  xor          sp, s8, a4
                  slli         s5, s4, 9
                  andi         s10, a7, -1006
                  nop
                  srai         s1, s2, 18
                  xor          sp, s5, gp
                  xori         a1, a2, -420
                  srl          s9, a3, ra
                  sltu         s0, s6, s2
                  xor          a1, s8, s8
                  sra          a0, a1, s11
                  andi         t5, sp, -1963
                  andi         a5, a5, -959
                  sltu         t0, s3, s3
                  srli         a7, a4, 30
                  sra          t5, s1, s2
                  and          a5, t3, a7
                  andi         t5, a7, 991
                  nop
                  slli         s1, a6, 30
                  sub          gp, s1, a7
                  sll          sp, s9, s4
                  sltu         a6, a6, s6
                  xori         s2, s2, 1573
                  srai         s2, t1, 19
                  srai         s2, t4, 14
                  add          a1, t0, s0
                  addi         t1, a3, -1341
                  sub          s8, s10, t4
                  slt          zero, s1, a5
                  or           s0, t1, a7
                  and          a1, a7, s2
                  sltu         s2, s11, s6
                  sltiu        s4, a6, 439
                  sltu         s3, t6, s11
                  sra          a7, s4, ra
                  ori          gp, a6, 884
                  slt          t5, a7, s4
                  sltu         s11, a6, a5
                  srl          a0, s10, s10
                  xori         a7, t2, 308
                  add          s10, s5, t0
                  andi         a2, tp, 1422
                  srai         a6, s0, 1
                  auipc        a5, 35827
                  and          t6, t5, a0
                  slli         s4, a3, 8
                  auipc        a2, 973712
                  auipc        a5, 487093
                  sltu         s1, t0, a1
                  auipc        s4, 371603
                  xori         sp, a0, 1927
                  srl          s6, t5, a7
                  srai         s3, s9, 28
                  nop
                  add          gp, s9, t3
                  add          s7, a3, s11
                  srai         t1, a4, 3
                  srli         t1, sp, 29
                  and          s9, s3, s10
                  xor          s6, a2, a5
                  sll          t5, s8, a0
                  sltu         t1, tp, a7
                  slti         s7, ra, -784
                  srl          s4, s4, ra
                  slt          t2, s4, s6
                  xor          s11, s1, s1
                  ori          s6, s3, 214
                  xor          t0, s0, t5
                  or           s6, s8, s2
                  sltu         a6, t0, tp
                  srai         t3, zero, 14
                  auipc        gp, 418197
                  slli         sp, a1, 5
                  srl          s1, s10, a5
                  add          s2, s8, s5
                  sll          a6, a4, s10
                  slt          t3, tp, s11
                  slt          t3, t5, a2
                  slli         s7, s7, 2
                  slt          s3, s4, zero
                  srl          a0, s3, a0
                  xor          t3, t1, s8
                  auipc        t1, 403044
                  xor          s0, s4, s9
                  sltiu        sp, s9, 1253
                  ori          s2, tp, 1417
                  sltiu        t0, a6, 549
                  li           s0, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           t1, 0x34c60a36
                  li           gp, 0x80000000
                  li           s8, 0x0
                  li           s1, 0x91e1c9b6
                  li           a6, 0xffffffff
                  li           sp, 0xffffffff
                  li           s4, 0xea93a50f
                  li           a0, 0x80000000
                  li           t2, 0x0
                  sub          sp, gp, t1
                  nop
                  addi         s0, s4, 1030
                  addi         a0, sp, -225
                  nop
                  lui          s0, 271391
                  lui          a0, 30907
                  add          s1, gp, t2
                  addi         s8, s4, 1021
                  nop
                  sub          gp, sp, t2
                  sub          a6, t1, gp
                  add          a0, t1, s1
                  lui          s0, 964305
                  auipc        t1, 468590
                  lui          gp, 838313 #end riscv_int_numeric_corner_stream_9
                  srli         s10, s2, 22
                  srai         s8, t1, 2
                  srai         a1, s2, 19
                  andi         s11, s7, 702
                  add          gp, gp, s2
                  slti         sp, tp, 217
                  lui          s11, 577896
                  add          s5, a3, t4
                  slt          s3, t0, s1
                  xor          s4, t5, ra
                  xor          t6, s7, zero
                  lui          zero, 361487
                  xor          s1, a4, s5
                  ori          s1, ra, -162
                  sltiu        t1, s11, -1589
                  lui          t6, 940954
                  addi         s9, s1, -863
                  srli         t6, t1, 4
                  nop
                  add          s3, a7, t0
                  add          s0, s1, t4
                  add          sp, s1, a5
                  nop
                  nop
                  srai         s5, t4, 4
                  sltu         s8, s9, s5
                  xori         s11, a2, 669
                  nop
                  sltiu        a0, t3, -1365
                  srl          s10, s2, s9
                  slti         s6, s5, 1666
                  sub          s7, s7, s4
                  sll          ra, ra, t2
                  andi         s0, t3, -1501
                  slt          s7, a0, tp
                  xori         a2, a5, -1097
                  auipc        ra, 856011
                  nop
                  andi         s8, gp, -1093
                  lui          s3, 423183
                  addi         s2, s8, 553
                  xori         s10, t4, -568
                  slti         a6, s5, 824
                  and          s8, s3, s0
                  slti         a6, zero, -920
                  or           a5, a2, s3
                  sub          t5, a4, t1
                  sub          s9, t5, a4
                  sra          a1, s4, sp
                  sltiu        a1, gp, 769
                  lui          zero, 202277
                  sra          s4, tp, s3
                  auipc        a6, 433851
                  lui          t1, 1018181
                  lui          t0, 397029
                  or           s10, a5, s10
                  nop
                  sra          s5, t0, a7
                  slli         t5, sp, 5
                  sltu         s9, s7, t5
                  sll          t3, a1, s0
                  ori          t6, s3, -2040
                  slt          t2, a4, t6
                  sltiu        a0, s9, -349
                  xor          s4, a1, t6
                  sra          t1, s8, s11
                  srai         zero, a4, 18
                  srli         t2, s7, 15
                  slti         s3, a7, -140
                  nop
                  sltiu        s5, t2, -701
                  slli         a4, s6, 14
                  add          t0, t6, a0
                  slt          s6, tp, s10
                  srai         t0, s3, 4
                  lui          t1, 184755
                  slli         a2, a3, 21
                  auipc        s0, 193920
                  ori          s6, sp, 1360
                  sltiu        s8, zero, -95
                  ori          s4, s10, 887
                  sra          t1, zero, a7
                  and          s11, s7, s9
                  sub          t1, gp, s8
                  xor          zero, a0, a5
                  sltiu        s10, s5, -1300
                  slti         a2, a2, 1420
                  ori          t6, s6, -169
                  sra          s9, t2, a1
                  sltu         s7, t5, t1
                  slli         t3, s8, 9
                  sra          a0, s5, s2
                  andi         s3, t0, -311
                  srai         gp, t5, 12
                  auipc        a2, 474425
                  srl          s9, s1, a4
                  sltu         t2, t4, tp
                  sub          t5, s4, s2
                  sll          t6, s5, t3
                  or           t1, a3, s5
                  andi         a2, s1, -766
                  sub          a6, s7, t2
                  xori         zero, s1, 644
                  srli         s0, tp, 10
                  and          a5, a3, t1
                  ori          t0, s4, 70
                  sltiu        t5, t6, -1253
                  sll          s8, ra, s8
                  addi         t1, t3, 1260
                  sll          a0, t0, t0
                  lui          t0, 638585
                  xori         s1, s10, 1389
                  slt          t3, s4, sp
                  auipc        t0, 64698
                  xori         s1, s8, 1496
                  sltu         s1, gp, s5
                  auipc        t2, 219927
                  srl          s9, t1, a7
                  sltiu        s6, s1, -4
                  addi         ra, s2, 1372
                  sub          s8, a4, s4
                  addi         t2, t0, 1263
                  lui          s5, 863101
                  sub          a2, a3, a5
                  addi         a6, gp, -1685
                  nop
                  slti         s6, ra, -524
                  addi         s4, a7, -1692
                  addi         s11, s1, -1143
                  sltu         t5, t4, s1
                  lui          s1, 1036589
                  srl          gp, s8, t2
                  ori          s4, a4, -1885
                  sub          s5, s1, s5
                  srli         s0, s6, 12
                  slt          a2, t3, a7
                  slti         a5, s0, 1465
                  auipc        s11, 51021
                  ori          t5, t0, -4
                  xor          a6, a7, t5
                  or           a0, a7, t1
                  slti         s4, s9, 45
                  sltiu        zero, a4, -842
                  auipc        a5, 471933
                  slt          s4, a7, s0
                  srl          t0, s2, s10
                  sra          a5, s0, s9
                  nop
                  srli         a1, a4, 18
                  sra          s6, a1, s7
                  and          t2, s0, s6
                  srli         t0, t1, 19
                  lui          s10, 618941
                  sltiu        a0, a1, -739
                  sltu         a4, a0, ra
                  xori         zero, sp, -1188
                  sltiu        s6, s7, -374
                  or           t6, a2, sp
                  sltiu        gp, a2, -349
                  andi         a6, zero, -1100
                  add          s2, s9, a5
                  addi         a0, a0, -727
                  slli         t6, s4, 18
                  sub          ra, t1, a2
                  add          t0, a4, s11
                  xor          t1, s4, a7
                  srl          s3, a7, t2
                  sra          t0, s3, s9
                  srl          a2, a4, ra
                  and          s7, a4, s2
                  sub          t1, s8, zero
                  slli         t1, s8, 9
                  srai         sp, t2, 31
                  add          t2, ra, s9
                  nop
                  slti         s0, s2, 427
                  andi         a5, t2, -1736
                  ori          t0, a4, -654
                  srli         zero, s9, 26
                  srl          s10, a6, s8
                  srli         s3, t2, 8
                  sll          s3, t0, s0
                  sltiu        s2, s11, -267
                  andi         a0, zero, -1716
                  add          s11, s9, s6
                  ori          s10, a0, -1036
                  sub          a1, a3, s7
                  sltiu        a0, sp, 373
                  sra          s5, a6, t5
                  xori         s9, s11, -1405
                  and          a0, s2, a5
                  andi         s2, t3, 1577
                  xor          t2, s6, s6
                  lui          a7, 198569
                  lui          s7, 964138
                  sra          s3, s6, ra
                  xor          t0, a6, t0
                  sra          s2, s3, a7
                  andi         s11, zero, 549
                  slli         t1, t1, 16
                  sub          s1, s10, t5
                  sltu         gp, tp, s6
                  ori          s9, s6, -1261
                  srl          t0, a2, a6
                  sll          s1, t4, a1
                  xor          s4, s2, t2
                  addi         a6, t3, 211
                  srli         a6, t2, 4
                  sra          a7, sp, a0
                  slli         a6, a7, 25
                  slli         t1, a1, 13
                  or           t0, s10, t5
                  sub          a2, a3, a7
                  andi         a1, ra, -1586
                  srli         s1, a6, 5
                  sltu         s1, a3, t0
                  and          s5, s3, a3
                  auipc        t5, 619201
                  auipc        a0, 554609
                  nop
                  sltu         a4, t1, t6
                  ori          s7, a0, -1132
                  and          t3, t4, gp
                  slti         t3, t4, 1209
                  or           sp, sp, a3
                  sltiu        s5, a2, 333
                  slt          t1, t1, s1
                  and          t6, sp, t4
                  slli         s7, t3, 4
                  xor          t1, s5, s7
                  and          a0, a6, t1
                  slli         s1, a7, 3
                  andi         s11, s8, 880
                  slt          a4, s6, a1
                  srli         ra, s11, 16
                  sra          s7, a1, s1
                  slt          s6, s10, a0
                  slt          a4, s7, t3
                  xor          gp, t1, a6
                  nop
                  xor          s10, s5, a5
                  sltu         s1, t6, s0
                  add          s11, s3, zero
                  sltiu        t0, zero, 695
                  auipc        t5, 622425
                  srli         t0, t0, 28
                  add          a4, s7, a2
                  slli         s1, s10, 1
                  sra          zero, s3, t6
                  srl          t3, s1, sp
                  sll          sp, s2, s0
                  addi         s6, a3, 1374
                  sltiu        s6, s1, -1252
                  slli         t3, sp, 1
                  srli         t2, t6, 29
                  srai         sp, ra, 22
                  srl          s1, s8, gp
                  lui          a5, 881564
                  sltu         t0, ra, s4
                  sub          s6, s8, t4
                  auipc        a1, 877938
                  or           s7, a7, zero
                  or           t6, tp, sp
                  nop
                  nop
                  andi         t0, s9, 1078
                  nop
                  ori          s9, t1, -574
                  lui          a0, 221021
                  andi         s6, a1, -264
                  auipc        s2, 422291
                  addi         t0, t5, -272
                  sltiu        s0, a3, -723
                  srai         s3, a3, 17
                  xor          s1, t4, s4
                  sltiu        s11, t1, 682
                  sra          gp, s1, s3
                  sltu         s6, s4, a0
                  ori          s8, a2, -295
                  srl          s3, a6, s3
                  or           a0, t3, a2
                  xori         a5, s3, 115
                  sltiu        s4, s11, 1790
                  ori          a7, t2, -715
                  lui          a4, 85045
                  lui          s1, 849733
                  sra          s10, t0, s5
                  xor          s8, s0, a5
                  addi         s9, t0, -12
                  sltiu        s2, t3, -724
                  srl          s11, s0, ra
                  srai         s7, t2, 19
                  auipc        s2, 919084
                  srai         s4, a4, 1
                  auipc        a4, 808179
                  auipc        s6, 1016194
                  and          t3, s8, s0
                  srli         s1, a6, 2
                  ori          gp, s8, -1074
                  srl          s5, a5, s8
                  addi         a0, t4, -1151
                  andi         t2, s9, -365
                  and          s1, ra, sp
                  add          s5, t6, t5
                  nop
                  li           s2, 0x655ec36b #start riscv_int_numeric_corner_stream_17
                  li           s7, 0x0
                  li           a2, 0x4006c71b
                  li           a6, 0xffffffff
                  li           t1, 0xffffffff
                  li           a0, 0xffffffff
                  li           t2, 0x80000000
                  li           t3, 0xffffffff
                  li           sp, 0x0
                  li           s1, 0x0
                  lui          t3, 1028845
                  nop
                  nop
                  addi         s1, t1, 284
                  auipc        t2, 846654
                  sub          t2, a6, s7
                  addi         t3, s7, 139
                  add          s2, s2, s1
                  sub          sp, t3, s7
                  nop
                  add          t1, t2, a0
                  auipc        t3, 403087
                  addi         t2, t2, 248
                  nop
                  addi         sp, s7, -1757
                  sub          t1, s2, s7
                  nop
                  add          s1, t3, a2
                  lui          s7, 935695
                  add          t2, a0, t1
                  addi         t2, s2, 1250
                  auipc        a0, 850316
                  auipc        s2, 645920
                  nop
                  lui          sp, 398539
                  nop
                  addi         s7, t3, 196
                  auipc        a2, 185428 #end riscv_int_numeric_corner_stream_17
                  lui          t0, 605078
                  and          gp, t2, a7
                  xori         t1, s11, -1803
                  addi         t0, t2, -665
                  add          s3, a2, s8
                  andi         s4, s11, -1134
                  xori         t1, a5, 791
                  slt          t5, t3, a0
                  and          s11, ra, s5
                  lui          a1, 793623
                  ori          ra, a0, -1917
                  nop
                  slt          a7, s7, s5
                  slti         s0, s5, -1681
                  ori          t1, s1, 1125
                  slti         t6, s10, 1493
                  sub          t3, t2, t4
                  slt          a4, zero, zero
                  slt          t3, sp, t4
                  add          s11, s9, s3
                  slt          t0, t4, s11
                  ori          sp, s6, -1737
                  xor          t3, t1, t2
                  nop
                  sltiu        t0, t6, 924
                  sll          t0, t6, t2
                  addi         sp, a2, -1375
                  xori         s8, s6, 1587
                  xori         s4, a6, -1038
                  srl          t3, s6, s4
                  srli         s7, gp, 13
                  xor          s2, t2, s11
                  auipc        t5, 583949
                  slli         s2, t3, 18
                  slti         s6, s2, -494
                  sub          t6, t1, s10
                  slli         t0, zero, 4
                  srl          t0, a0, a4
                  sll          s10, t5, s0
                  nop
                  auipc        s0, 973835
                  or           a1, a6, a5
                  sltu         s11, a2, a7
                  sub          t6, s5, a2
                  slti         s10, t2, 1194
                  add          a1, a3, t3
                  srl          ra, a3, sp
                  lui          s5, 274442
                  auipc        s0, 698568
                  sll          t6, sp, s9
                  auipc        a7, 602696
                  ori          s1, t2, 694
                  or           s3, s2, a3
                  lui          s8, 393196
                  auipc        s3, 944405
                  srl          t1, t4, ra
                  sub          s3, t4, a0
                  and          s10, a0, t1
                  andi         s4, s11, 1973
                  auipc        t6, 426059
                  ori          s8, t3, 187
                  nop
                  addi         a7, a3, 1960
                  xor          s8, gp, tp
                  sub          ra, sp, s4
                  xori         a5, t3, -1438
                  andi         a2, s9, -1065
                  xori         gp, t0, -1912
                  slt          s7, s2, s1
                  sltu         s9, s8, a3
                  lui          a0, 554710
                  srli         s8, s11, 15
                  slli         s4, a1, 29
                  xor          a1, s9, a3
                  slti         sp, t2, 1872
                  sll          sp, s4, s3
                  nop
                  srl          sp, s3, a4
                  andi         ra, s10, -514
                  xor          s5, zero, a1
                  srai         s11, ra, 9
                  slli         s0, t1, 25
                  andi         s1, s4, -1417
                  add          s4, s3, t2
                  srl          t2, zero, a1
                  addi         sp, a7, 43
                  sll          t1, s5, a2
                  nop
                  lui          gp, 271759
                  andi         s11, t3, -737
                  srai         t0, a7, 20
                  sub          s3, ra, t4
                  nop
                  add          a4, t2, a2
                  slti         t1, s8, 1213
                  add          t5, a4, s4
                  slli         ra, a2, 28
                  srai         t6, s3, 29
                  slli         s3, t0, 0
                  add          s6, a3, s9
                  sll          a0, t4, a3
                  auipc        s8, 490514
                  xori         a1, s1, 1036
                  nop
                  and          s11, s8, a0
                  sub          s3, gp, s10
                  slli         s2, s9, 3
                  add          a1, s3, s5
                  auipc        a6, 314383
                  and          a0, s5, a3
                  addi         s8, tp, 1374
                  or           s11, t5, s2
                  slt          s3, a3, t5
                  or           a0, t2, t6
                  slt          a0, ra, s7
                  auipc        a6, 345282
                  xori         s9, s11, 258
                  or           a0, ra, a7
                  sra          s5, t4, s3
                  or           a2, s11, t5
                  slti         a0, a7, 1000
                  xori         s1, s10, 1438
                  or           sp, s3, t3
                  or           a2, a4, s7
                  or           s8, t6, a5
                  srli         s11, gp, 11
                  srli         s10, a5, 29
                  srai         a4, ra, 16
                  and          t2, s8, a6
                  sub          a5, a0, s5
                  lui          s8, 199222
                  or           s9, s9, t1
                  addi         s0, a6, -1184
                  srai         a6, t4, 4
                  or           s0, a4, t1
                  srli         s7, t6, 26
                  slti         s11, s11, -1791
                  sra          s8, s4, a1
                  ori          a6, s11, -504
                  srl          a5, t6, t3
                  nop
                  sub          s0, gp, s6
                  slt          sp, t0, a4
                  nop
                  and          t5, a0, s10
                  nop
                  andi         ra, a0, 38
                  sltu         s6, s1, a6
                  slti         s0, a1, 992
                  slti         sp, t6, -1577
                  sltiu        s3, zero, 1124
                  sltu         t2, s0, a4
                  xori         s10, s3, -1592
                  slt          t2, zero, s1
                  sll          s2, tp, s0
                  xor          t2, s4, t3
                  xor          sp, s9, s7
                  srai         s11, sp, 4
                  srli         a1, a7, 31
                  andi         a4, a5, 309
                  sll          s4, t0, gp
                  slt          a6, a0, a4
                  auipc        s5, 802001
                  srl          s9, s5, a2
                  xori         s3, t6, -1731
                  slti         t3, gp, 1851
                  slt          t3, gp, t2
                  srai         s4, s2, 27
                  auipc        t2, 727434
                  slt          a0, s0, zero
                  sll          a2, a4, a6
                  andi         s5, a2, -800
                  addi         s6, t2, -724
                  addi         zero, t2, -1244
                  sltiu        a5, a2, 1548
                  and          sp, s3, a3
                  sra          a0, a6, tp
                  slt          a6, a3, a2
                  or           t2, s3, tp
                  srai         s9, sp, 12
                  srai         s10, t0, 24
                  sltu         s9, s10, t4
                  slti         s7, s8, -1352
                  srl          t5, t0, t5
                  slti         s11, t1, -688
                  xori         t0, s6, 726
                  sub          a4, s1, s0
                  or           a5, s6, zero
                  sra          s7, t2, t3
                  ori          a1, t0, -1951
                  slli         t6, a7, 19
                  or           gp, gp, s1
                  ori          s7, a1, 1721
                  lui          t1, 285253
                  srai         ra, s6, 14
                  auipc        t1, 348969
                  sub          t6, t0, t0
                  lui          t2, 357357
                  xori         a4, a0, -839
                  andi         a2, sp, 1490
                  srl          s8, sp, s10
                  sll          s6, s9, t4
                  auipc        ra, 651975
                  addi         s10, a0, -944
                  sub          t3, a3, s0
                  or           t3, sp, a5
                  slti         ra, t2, 1228
                  auipc        s4, 924518
                  srl          a5, s11, a5
                  slli         s11, t5, 4
                  slti         s7, tp, 1185
                  sltu         s0, s1, a0
                  xor          a0, a2, s11
                  srl          s1, s5, t5
                  sra          t6, s10, a6
                  sub          t3, s10, gp
                  andi         a1, a3, -1426
                  slti         s0, t0, 1384
                  nop
                  or           a6, s6, t5
                  srl          a7, t1, s6
                  andi         s10, a6, -1291
                  ori          a5, a0, -1126
                  lui          a4, 695135
                  sra          s7, a4, t6
                  and          a0, t2, a7
                  nop
                  sub          t2, t1, s6
                  srl          s3, t1, a5
                  nop
                  and          a5, a5, a3
                  add          a4, s7, sp
                  srai         s1, t2, 1
                  add          t5, a0, ra
                  xori         s8, s11, -1220
                  xori         s0, a2, -49
                  or           t2, s0, s7
                  add          t1, t1, sp
                  sra          a0, s1, a5
                  slli         s6, s2, 15
                  sltiu        a1, a6, 1125
                  andi         t6, s9, -1059
                  srl          s7, s5, gp
                  sra          s3, a4, t4
                  srai         t5, s8, 2
                  add          zero, a5, s9
                  xor          s11, s10, a4
                  add          s3, a5, a0
                  sll          s0, s9, s8
                  auipc        s6, 699897
                  xori         ra, ra, -534
                  sltiu        t5, a0, -1790
                  nop
                  add          t6, a2, s3
                  slli         s4, t3, 0
                  sra          gp, s2, s3
                  xor          ra, ra, zero
                  sub          a4, s5, s8
                  sra          s5, s8, a7
                  and          s0, s11, zero
                  slli         a2, sp, 18
                  sltu         s1, s1, ra
                  nop
                  andi         t5, s7, -23
                  add          s7, a3, s10
                  xor          s0, s0, gp
                  srai         s3, t4, 21
                  ori          a4, t6, 763
                  andi         s7, t4, -1532
                  ori          a1, s6, 614
                  slli         s3, zero, 28
                  sll          ra, s5, t6
                  srli         a0, a6, 0
                  xor          s4, a3, a4
                  xor          s9, s2, a6
                  sra          ra, s6, s5
                  sltiu        a4, a6, -1981
                  srl          t3, ra, a1
                  li           a2, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           s11, 0xffffffff
                  li           sp, 0x80000000
                  li           a4, 0xffffffff
                  li           s5, 0x80000000
                  li           s6, 0x548e6b7d
                  li           a5, 0x80000000
                  li           a0, 0x0
                  li           t2, 0x0
                  li           t6, 0x2d37ac2e
                  auipc        a0, 693451
                  nop
                  nop
                  sub          t2, a2, s6
                  lui          s6, 36585
                  nop
                  nop
                  sub          a0, s6, s6
                  add          a0, t2, s6
                  auipc        a0, 671977
                  nop
                  lui          s5, 187071
                  addi         a4, t2, -1252
                  addi         s11, s11, -1503
                  sub          s11, t6, sp
                  addi         sp, t2, 1022
                  sub          a4, a0, a5
                  nop
                  nop
                  addi         a0, t2, -946
                  add          t2, s5, s11
                  add          a4, a0, t6 #end riscv_int_numeric_corner_stream_5
                  add          sp, s4, s6
                  add          a4, t6, a0
                  xor          s7, a6, a7
                  slli         t0, s11, 9
                  srl          t3, a6, s11
                  slli         t0, ra, 17
                  sll          s7, a1, a1
                  srl          t5, s8, s2
                  sra          a7, s0, a7
                  sll          sp, s10, tp
                  xor          s0, gp, t0
                  xori         s0, s11, 1403
                  lui          s9, 655067
                  sltiu        t3, s4, -29
                  nop
                  lui          s9, 807816
                  srli         s0, a3, 7
                  sra          t5, a6, a5
                  srli         s0, a5, 15
                  andi         a7, a7, -373
                  sub          s11, s9, sp
                  slt          s10, a2, s7
                  srai         t3, a6, 2
                  sltiu        t0, s6, -1127
                  ori          s11, ra, -1342
                  srli         gp, s0, 20
                  and          t6, t2, s10
                  sra          s0, tp, a0
                  slti         a0, s7, 203
                  xor          gp, a2, s3
                  sltiu        t5, s4, 860
                  sltu         s1, a2, gp
                  lui          t3, 162792
                  or           t2, t3, t0
                  sub          a4, t6, s0
                  slli         s0, ra, 7
                  and          a2, tp, s9
                  andi         t2, s8, 15
                  addi         a0, t3, 1047
                  xori         t0, ra, 2005
                  andi         s3, t6, 865
                  srl          s6, t2, t4
                  slli         t0, t2, 19
                  add          t6, s8, a6
                  srl          t0, s10, t4
                  slti         s8, s7, -843
                  nop
                  andi         s1, zero, 1591
                  sltiu        t0, gp, 628
                  srli         a2, zero, 12
                  and          a6, a0, s4
                  sltu         a5, t3, s10
                  lui          a7, 533039
                  sltu         s8, t0, sp
                  sltiu        t3, a3, -118
                  slt          a5, a6, gp
                  lui          a7, 601092
                  sub          s5, s6, a7
                  sub          t6, gp, a3
                  sltu         s4, t6, s8
                  sub          t2, a6, s10
                  srl          s2, s11, ra
                  add          ra, a6, a1
                  srai         a5, s9, 14
                  or           t0, gp, s4
                  slt          t0, a5, s5
                  auipc        a4, 107887
                  slti         a0, s6, -812
                  slli         a5, t1, 5
                  srli         s0, t5, 27
                  xor          a0, s5, t5
                  sll          t2, s0, s1
                  srl          t1, a2, s2
                  add          a2, s7, a5
                  lui          s0, 657057
                  sltu         a5, t5, s8
                  sltiu        zero, a5, -307
                  ori          s3, t4, -1850
                  lui          a1, 485013
                  slli         a1, t5, 26
                  slli         s4, s7, 13
                  nop
                  srai         sp, s9, 29
                  addi         s1, sp, 138
                  sltiu        a0, t2, 1684
                  srai         s11, t4, 26
                  or           a5, s3, s2
                  srai         s3, t1, 15
                  sra          a5, a0, s7
                  andi         zero, s1, 674
                  sub          gp, s3, t0
                  add          gp, gp, s4
                  srl          sp, a4, s8
                  nop
                  srli         a5, a1, 0
                  sltu         a2, a3, sp
                  and          t6, a1, t4
                  auipc        s1, 966849
                  ori          s4, t1, -1871
                  sltu         a0, s9, t5
                  xori         s5, t1, 1220
                  srl          s1, a2, a3
                  add          t2, a7, s8
                  srli         sp, tp, 25
                  andi         s5, a2, 508
                  srl          sp, a4, a5
                  and          t0, a5, zero
                  slli         ra, tp, 30
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           a7, 0x80000000
                  li           s0, 0x0
                  li           t6, 0x4bdde772
                  li           s7, 0xffffffff
                  li           s10, 0xfa9a74b7
                  li           a4, 0xffffffff
                  li           t2, 0x80000000
                  li           a2, 0xffffffff
                  li           s8, 0x0
                  lui          s0, 1006552
                  auipc        t6, 136505
                  add          s7, s8, a4
                  lui          a7, 859739
                  nop
                  nop
                  auipc        t2, 224822
                  addi         s2, a4, -908
                  addi         a7, a7, -511
                  auipc        s7, 195621
                  lui          s2, 1012956
                  sub          t2, s2, a4
                  addi         t2, s2, -1883
                  addi         s10, t2, -1281
                  auipc        s2, 235105
                  auipc        t6, 310199
                  nop
                  addi         a4, a2, 921
                  lui          a7, 54994
                  auipc        t6, 633393
                  lui          s8, 110466
                  nop #end riscv_int_numeric_corner_stream_4
                  sltiu        t3, a2, 64
                  lui          s9, 477380
                  xor          s8, a3, t6
                  addi         s9, tp, -441
                  and          a0, a6, sp
                  sll          s1, s5, s10
                  and          t2, a0, a0
                  sltiu        a4, s11, 984
                  add          s6, t1, t3
                  slt          a6, t3, a3
                  slti         sp, a0, -767
                  nop
                  andi         a1, t1, -1713
                  auipc        a2, 977503
                  or           s1, s2, s9
                  addi         s6, t3, 1641
                  nop
                  or           a6, t6, t2
                  addi         s10, gp, 1732
                  lui          a4, 755172
                  xor          sp, a5, a1
                  sll          s1, a1, s4
                  sll          a5, s8, s5
                  sltiu        s9, s9, -1353
                  addi         t5, a0, 733
                  and          a5, a2, t4
                  slli         s0, sp, 22
                  addi         a0, t4, -1104
                  srai         gp, s4, 13
                  slli         s9, a4, 5
                  add          s11, tp, t1
                  srl          s11, a0, a1
                  xor          a2, a2, t3
                  lui          t2, 315476
                  sltiu        a0, a1, 1772
                  sub          s1, t3, a1
                  or           t3, s6, a7
                  add          s3, t5, gp
                  lui          s6, 505044
                  slli         t6, t5, 7
                  andi         s5, sp, 1101
                  slli         s2, a3, 31
                  xori         s7, s4, 11
                  auipc        t1, 431907
                  or           s10, s11, a1
                  srli         a1, a5, 20
                  slli         s5, s0, 7
                  auipc        a0, 935650
                  slti         s6, t5, 1277
                  or           s3, a0, s11
                  sub          t5, t0, sp
                  srl          s7, a1, s3
                  slli         t5, a4, 12
                  slli         a1, t2, 21
                  sra          t3, s1, gp
                  andi         s6, s5, -1349
                  lui          s6, 303859
                  slti         t3, tp, 638
                  slti         a5, t0, 1349
                  xori         s1, a6, -585
                  sub          a0, s11, s2
                  srli         s5, a5, 5
                  andi         ra, a2, 158
                  sub          sp, s5, t6
                  lui          a6, 959998
                  slli         s3, sp, 26
                  addi         s5, s0, 19
                  sltu         s5, s8, a6
                  sra          s8, t6, t4
                  and          s1, s6, t1
                  and          s6, a5, t5
                  sltiu        s1, zero, -1969
                  xori         s10, gp, -1836
                  sltu         sp, s0, t6
                  slti         a6, s2, -541
                  sltu         t1, gp, ra
                  nop
                  xori         gp, s10, 1623
                  xori         s3, s7, -926
                  sub          s0, s1, s5
                  nop
                  slli         s0, a0, 27
                  add          a2, t5, s10
                  xor          s2, ra, t5
                  sll          t1, s4, t4
                  sra          t2, t0, gp
                  nop
                  andi         s11, zero, -10
                  srai         t6, s10, 9
                  sll          s6, a5, tp
                  xor          t3, t5, a3
                  sra          s5, t2, a4
                  andi         a4, s1, -210
                  add          a4, s2, s1
                  addi         t2, a7, -1275
                  add          sp, s6, a0
                  sll          a1, s3, a7
                  xori         a1, t4, 976
                  addi         t2, t5, -196
                  srl          s11, t5, s10
                  addi         t2, t5, -1096
                  slli         a1, a2, 8
                  lui          s3, 275012
                  sub          zero, t4, t1
                  sll          s6, gp, s4
                  sll          s6, s7, a1
                  sra          s4, s4, s1
                  auipc        s6, 24149
                  slt          s2, a5, t5
                  or           s9, t0, sp
                  xor          a2, a0, a4
                  sll          s2, s5, s0
                  sub          s3, a4, sp
                  xori         s8, a5, -1347
                  nop
                  andi         s11, gp, -145
                  lui          sp, 578116
                  sltu         s6, s10, s3
                  xor          s0, s11, gp
                  auipc        t1, 399089
                  auipc        a0, 269631
                  addi         a4, s6, -317
                  sub          s10, a2, a3
                  sltiu        t1, t5, 277
                  xori         s8, s0, -1801
                  sra          s8, gp, a6
                  sltiu        sp, s5, -1020
                  nop
                  xori         sp, gp, -67
                  sub          a7, t2, a5
                  andi         a1, a4, 1540
                  auipc        s11, 235392
                  xor          gp, s7, s5
                  xor          a7, sp, s4
                  addi         t6, a1, -981
                  lui          a7, 196992
                  sub          s4, a1, s4
                  slli         s10, s9, 2
                  addi         s5, s11, 1011
                  sub          a0, s4, a7
                  srai         s10, t6, 27
                  slt          a5, t4, s0
                  sltiu        gp, t0, -166
                  addi         a4, t5, 1651
                  xori         gp, s3, 1774
                  xor          t2, a2, s4
                  srli         a7, ra, 31
                  slli         s9, s4, 7
                  ori          s6, gp, 298
                  sltu         s9, a1, s11
                  andi         s6, s9, 188
                  xor          s2, t4, s5
                  srli         t1, s7, 20
                  auipc        sp, 911705
                  xori         s11, s7, 1023
                  srl          s6, a2, s9
                  auipc        s2, 507018
                  lui          t5, 894605
                  srl          ra, a1, a3
                  xor          t5, s11, a0
                  sra          a2, t4, s9
                  xor          t3, s9, s6
                  ori          s1, a0, -1478
                  slt          s2, a1, s0
                  andi         s6, a6, 487
                  and          s9, a1, t0
                  lui          t1, 457676
                  sra          t3, s5, a2
                  add          s10, t3, a2
                  sltu         a7, s7, a1
                  slti         t6, s4, 56
                  ori          t1, a0, 1700
                  sra          t6, s4, a4
                  addi         s6, s10, 1679
                  sltu         s9, gp, sp
                  and          s6, s7, a4
                  sra          t2, s0, s11
                  auipc        t3, 613869
                  lui          s10, 551912
                  slli         t2, a4, 19
                  lui          a4, 641792
                  sub          gp, ra, s7
                  slti         t6, s5, 1498
                  ori          s9, t5, 1090
                  sra          t6, s1, ra
                  auipc        s8, 211306
                  auipc        s4, 604307
                  sll          gp, gp, gp
                  andi         ra, s11, -398
                  srai         s8, s3, 16
                  lui          s2, 275985
                  lui          a7, 753068
                  sltu         s0, s3, s9
                  sltiu        a0, s6, 1353
                  ori          s7, a2, 573
                  li           s4, 0xd0558c3b #start riscv_int_numeric_corner_stream_8
                  li           s9, 0x1082dc58
                  li           t5, 0x0
                  li           t1, 0xffffffff
                  li           s11, 0x9861cbc2
                  li           a0, 0x29d11156
                  li           s6, 0x80000000
                  li           s8, 0xffffffff
                  li           a2, 0xffffffff
                  li           a7, 0x10d5311a
                  addi         s4, a0, -1448
                  nop
                  addi         a7, t1, 650
                  addi         t5, s4, 35
                  auipc        t5, 648820
                  add          a2, a0, a0
                  add          s6, s9, a0
                  sub          s4, s6, s11
                  auipc        s11, 880132
                  addi         s8, a2, -29
                  sub          s9, t5, t5
                  nop
                  addi         t1, s9, -1711
                  lui          s6, 700539
                  sub          a7, a7, s6
                  addi         s6, s9, 1939
                  add          t5, s6, s4
                  addi         s11, t5, -1244
                  add          s11, a2, t1
                  lui          t1, 555920
                  sub          s9, a7, t1
                  add          s11, a2, s6
                  nop
                  sub          a0, s9, a7
                  add          t5, a2, s9
                  addi         s6, a2, -666
                  addi         s11, s4, -1046
                  nop
                  addi         t1, t5, -135
                  add          t1, s8, s9 #end riscv_int_numeric_corner_stream_8
                  slli         gp, s8, 20
                  li           t0, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           s10, 0x0
                  li           s1, 0x80000000
                  li           a6, 0x0
                  li           t5, 0xffffffff
                  li           s9, 0x80000000
                  li           a4, 0xf5629310
                  li           t6, 0x80000000
                  li           t3, 0x249f1c3a
                  li           a1, 0xffffffff
                  nop
                  add          s10, a1, a6
                  auipc        a1, 256029
                  sub          t6, a1, t6
                  add          t6, s10, t0
                  add          t5, s10, t3
                  add          t3, a1, a1
                  add          s9, a4, t6
                  auipc        t5, 21460
                  sub          a6, s1, t6
                  lui          t6, 998605
                  sub          t5, t0, s9
                  addi         a1, a6, 1049
                  nop
                  add          t0, a4, t3
                  add          a1, t0, s10
                  auipc        s9, 708511
                  sub          t6, a4, a6
                  nop
                  auipc        a6, 829368
                  sub          t5, s1, s9
                  nop
                  auipc        a6, 478402
                  lui          s10, 864673
                  add          s1, a4, s9
                  nop
                  add          t6, t0, s9
                  nop
                  nop
                  lui          a1, 477808 #end riscv_int_numeric_corner_stream_3
                  sltiu        a5, s4, 1770
                  slt          s5, a6, s9
                  lui          s2, 667110
                  xori         gp, s2, -248
                  and          a7, gp, t2
                  srai         t5, gp, 2
                  add          s9, s11, s4
                  sltu         s2, a5, sp
                  srai         s8, t5, 23
                  srli         t1, a6, 4
                  sll          s10, s2, zero
                  andi         t0, gp, -990
                  ori          zero, t2, -1551
                  srl          s7, ra, s1
                  and          a0, a2, s6
                  or           t2, s6, s10
                  nop
                  xor          a0, a4, s10
                  srai         s2, t1, 2
                  auipc        t0, 1008945
                  auipc        s10, 12373
                  srl          s5, t0, s9
                  or           t5, zero, t6
                  and          a7, s1, s5
                  srl          sp, a1, zero
                  srl          s9, a4, s8
                  sra          t0, gp, gp
                  sltiu        zero, zero, -366
                  sltiu        s9, ra, 576
                  sll          s6, s4, s2
                  add          t6, t3, gp
                  slti         a1, s11, -1184
                  slli         a5, s0, 2
                  sub          a5, t5, tp
                  sltiu        a4, t5, -1839
                  sra          t3, t5, a2
                  slti         s4, a3, -309
                  addi         s8, t1, -521
                  auipc        s6, 44462
                  sra          a7, t5, a4
                  sltiu        s9, sp, 176
                  xor          s7, t0, a7
                  ori          t3, a3, -1898
                  ori          t2, a6, -950
                  xori         t1, s5, 982
                  slti         s5, t6, 1020
                  sltiu        s7, s4, 1080
                  and          s5, a4, s8
                  lui          s11, 863292
                  xori         t2, a4, -545
                  andi         s0, a2, 712
                  slli         s6, a6, 14
                  andi         a1, s7, -478
                  srai         s2, zero, 16
                  slt          s5, s6, t1
                  srl          a5, t0, a4
                  sub          gp, s1, s4
                  and          s8, s11, sp
                  sll          s0, s3, a2
                  addi         s5, t5, -830
                  srai         t2, s0, 20
                  srai         sp, s7, 18
                  srl          a5, t5, a6
                  sltu         s5, a7, a0
                  sltiu        a6, t1, 608
                  sltu         zero, t3, a4
                  nop
                  lui          s0, 76876
                  srli         a1, t2, 2
                  lui          gp, 547996
                  sll          a7, a2, s0
                  andi         s3, s11, 1777
                  sltu         s5, s6, a2
                  srli         s10, zero, 2
                  sra          a5, ra, sp
                  lui          s11, 150922
                  xori         s10, a4, 1962
                  or           zero, s3, a6
                  sltu         a4, t5, s11
                  xor          a5, t4, s6
                  xori         s5, t4, 133
                  sltiu        s4, s1, 1692
                  sub          t1, t3, gp
                  sltiu        zero, s9, 1950
                  slli         t5, a6, 30
                  xor          a6, tp, s4
                  nop
                  sltu         t6, zero, s1
                  lui          t3, 107548
                  xor          t6, s10, a3
                  auipc        sp, 22335
                  srli         a1, s2, 17
                  srl          gp, s8, t1
                  lui          a6, 870177
                  slli         s8, s11, 15
                  and          t1, gp, a7
                  xori         ra, s2, -79
                  auipc        a7, 631620
                  slt          s10, t3, a5
                  slli         a7, s8, 16
                  and          s8, t4, s4
                  sra          a2, a1, a2
                  add          s0, a0, a7
                  or           s10, a1, t1
                  add          s4, t6, s0
                  addi         gp, t6, 1437
                  srai         s6, s4, 1
                  slli         ra, a2, 8
                  sltiu        t2, a5, -754
                  srai         s11, t3, 22
                  slti         t6, zero, 736
                  srai         t5, s4, 9
                  xor          ra, s4, s0
                  sltu         s3, s0, s10
                  xori         a1, a1, -1097
                  xor          a7, s7, a7
                  slli         a1, s4, 17
                  and          s1, s9, t1
                  xor          s7, t3, a5
                  slt          a2, a5, s6
                  slti         a1, s9, -803
                  addi         t1, a0, 2041
                  sll          zero, a4, t0
                  slli         s4, t1, 25
                  and          a4, s7, gp
                  srl          a0, s3, sp
                  auipc        ra, 447103
                  addi         s11, tp, 807
                  nop
                  auipc        sp, 803252
                  or           s8, a5, a1
                  srl          a1, s5, t1
                  slt          gp, s1, t1
                  auipc        s0, 448827
                  andi         gp, a7, 647
                  sll          s3, s5, s1
                  srl          s8, s0, s9
                  nop
                  xori         t0, t4, 547
                  sltiu        s11, s10, -857
                  and          t0, a5, zero
                  slt          t6, a3, t2
                  slt          a6, s2, ra
                  nop
                  and          sp, s4, t6
                  or           t5, s8, ra
                  or           t0, s11, s2
                  ori          a4, a3, 922
                  ori          s1, gp, -1198
                  sltu         a5, t5, a5
                  sltiu        a5, s11, -201
                  srli         s6, t0, 19
                  srai         a2, ra, 9
                  or           t6, a2, s5
                  andi         t1, tp, 1958
                  ori          t3, zero, -418
                  andi         t1, s4, -1478
                  auipc        s10, 14078
                  slti         ra, s2, 1184
                  slli         ra, s7, 18
                  sll          sp, a6, s2
                  xori         a5, s4, -1839
                  xor          s8, s10, a3
                  ori          a2, t4, 1872
                  addi         s6, s5, 850
                  sra          s5, ra, t3
                  slli         s4, t2, 27
                  and          gp, a6, s3
                  slt          a0, a3, s5
                  sra          s4, s4, s10
                  slt          s5, a0, a4
                  and          s2, t0, s4
                  auipc        a4, 11633
                  xori         a4, a2, 959
                  auipc        s0, 1046543
                  srai         s1, a6, 24
                  slt          gp, a5, ra
                  nop
                  srai         a1, a4, 12
                  or           s10, ra, a7
                  ori          s3, s2, 1737
                  auipc        t6, 68437
                  srl          a1, a2, s6
                  sll          s8, s8, t5
                  srai         s3, t3, 25
                  sltiu        gp, t2, -172
                  add          t1, s2, s10
                  andi         a6, sp, 870
                  and          s2, s0, s9
                  srl          ra, t1, s10
                  sltiu        ra, a2, 759
                  xori         t3, a7, -1825
                  addi         t5, s4, 511
                  auipc        t1, 696591
                  xori         s8, a7, -1156
                  sltiu        t1, a2, -627
                  addi         t3, s3, 1321
                  xori         t2, s10, -116
                  sub          s5, s1, s5
                  sub          s7, t3, ra
                  sltu         t6, a4, s1
                  addi         a0, sp, 1611
                  xori         zero, s10, -1606
                  srli         ra, a3, 2
                  sra          s5, s5, s11
                  srl          s1, sp, s9
                  sltu         s5, s11, ra
                  slti         a4, a4, 764
                  add          s2, s3, s11
                  addi         a4, s6, 195
                  ori          gp, a5, -1915
                  srai         t2, t2, 1
                  slti         ra, a6, 701
                  sub          t3, s5, t1
                  xor          t6, s9, tp
                  ori          s2, a4, 254
                  sra          s3, s5, a0
                  xori         gp, t2, 779
                  slt          a2, t0, s5
                  nop
                  auipc        t5, 543502
                  slt          sp, s7, a0
                  sltu         ra, s0, a5
                  slt          t1, s6, t5
                  or           s5, t1, s5
                  sra          t1, s4, s9
                  auipc        s1, 990216
                  auipc        s5, 392765
                  sltiu        s0, s2, -59
                  xor          s3, s4, t2
                  srli         t5, s3, 21
                  add          t0, sp, s9
                  nop
                  nop
                  srli         t5, a1, 14
                  sll          a1, s5, t1
                  sll          s1, a6, s10
                  srli         a7, s7, 24
                  add          s0, s0, s8
                  slli         a7, a5, 6
                  and          t5, t4, t0
                  or           zero, s8, s4
                  andi         s11, a0, -599
                  slt          s6, ra, t0
                  srai         gp, t0, 31
                  addi         sp, s1, 247
                  add          zero, a6, zero
                  sll          s8, a6, a0
                  li           t5, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           s6, 0x80000000
                  li           s1, 0x0
                  li           s7, 0x98f2de9
                  li           t2, 0xb0107346
                  li           s2, 0x80000000
                  li           s0, 0xf390681e
                  li           s10, 0x0
                  li           a7, 0x9a78c537
                  li           a1, 0x80000000
                  sub          s2, a7, s10
                  sub          s1, s6, a1
                  sub          s1, s6, t2
                  auipc        s0, 835697
                  sub          a1, s10, a1
                  sub          t5, t2, s0
                  add          t2, s1, s7
                  auipc        s1, 376169
                  auipc        s0, 137200
                  nop
                  sub          s2, a7, t5
                  addi         t5, a7, 999
                  sub          t2, s1, s7
                  sub          s10, a7, s10
                  addi         s10, a1, -1322
                  lui          t2, 825308
                  addi         a7, t5, -550 #end riscv_int_numeric_corner_stream_10
                  or           s0, t1, s8
                  sra          s4, a5, s8
                  sltu         a7, t5, s10
                  xori         gp, zero, -1716
                  lui          s7, 991908
                  slti         s6, t0, -223
                  andi         gp, t6, -1608
                  xori         t6, a3, -297
                  sltiu        a5, t3, 1014
                  sra          gp, t2, a2
                  slli         a7, sp, 28
                  slti         ra, a4, 765
                  and          a2, s8, gp
                  add          sp, a2, a2
                  slti         ra, s1, 892
                  sub          s9, s7, s11
                  and          t3, ra, s1
                  auipc        t1, 44060
                  xori         s6, s5, -1246
                  andi         t6, s8, -1209
                  nop
                  addi         s7, t3, 218
                  ori          s7, s11, -1594
                  srl          s10, s4, t5
                  srai         s0, gp, 8
                  sub          a4, s9, a7
                  srl          s3, s2, t0
                  sra          s4, a5, s7
                  xor          a2, a3, t2
                  slli         a2, t4, 15
                  sltu         t0, a5, t1
                  addi         a0, s0, 1200
                  nop
                  sltu         t6, s2, a3
                  add          s5, t1, t5
                  sra          s0, s8, s0
                  sra          zero, a3, s1
                  sub          s6, a0, s3
                  lui          s2, 566122
                  srai         s3, t6, 28
                  srli         s10, t0, 13
                  addi         s4, t2, 1644
                  andi         zero, t5, 94
                  xor          gp, s0, sp
                  srl          s1, s7, s6
                  xori         t0, a2, -1351
                  srli         t0, a5, 10
                  xor          s4, s10, s4
                  srl          s1, s11, a5
                  lui          a0, 152961
                  slli         a7, s10, 23
                  andi         s7, t0, -502
                  andi         s6, s0, -602
                  sll          s0, t4, s2
                  or           t1, tp, s9
                  nop
                  sll          s7, ra, a3
                  slti         s8, t5, 1964
                  lui          a4, 226677
                  sll          gp, s9, gp
                  li           a2, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           sp, 0x0
                  li           s2, 0x80000000
                  li           ra, 0xffffffff
                  li           s4, 0x0
                  li           s10, 0x0
                  li           s3, 0x0
                  li           t2, 0xffffffff
                  li           s6, 0x0
                  li           a4, 0x0
                  add          ra, sp, a4
                  auipc        s4, 774370
                  add          sp, t2, s2
                  auipc        a2, 959729
                  lui          s6, 571032
                  sub          s6, s4, s6
                  add          s6, a4, a2
                  auipc        s10, 334850
                  auipc        ra, 430802
                  lui          t2, 575346
                  add          s10, a2, s4
                  nop
                  sub          a2, s2, ra
                  lui          s3, 974052
                  auipc        ra, 846245
                  addi         s3, ra, 1466
                  sub          s10, sp, sp
                  auipc        t2, 317229
                  addi         s4, s10, 656
                  auipc        s10, 472939
                  auipc        sp, 545957
                  lui          a4, 71993
                  sub          s4, s4, s3
                  nop
                  addi         s6, s10, -234
                  add          t2, t2, s10 #end riscv_int_numeric_corner_stream_2
                  slli         s1, s7, 15
                  add          zero, a5, t1
                  srl          a7, t1, a5
                  srli         s3, s0, 0
                  addi         s5, s11, -1003
                  sra          s1, a0, tp
                  sltu         a2, s9, s1
                  srai         s0, t0, 10
                  srl          s5, s7, t5
                  or           t1, a4, tp
                  srli         t6, a5, 1
                  xor          s1, t5, s4
                  auipc        t0, 561418
                  srl          t3, s9, s0
                  nop
                  sltiu        s8, gp, 52
                  or           ra, s2, a2
                  nop
                  srai         s6, s3, 10
                  lui          a0, 390157
                  add          t6, tp, t2
                  slt          s8, s9, ra
                  srli         ra, t4, 4
                  srai         zero, t3, 17
                  sll          a4, s5, t0
                  auipc        s3, 970479
                  sltu         s11, s2, a3
                  xori         t1, tp, 1885
                  xori         s7, s1, 1346
                  xori         s3, s9, 1728
                  srli         a5, ra, 10
                  sub          s3, a1, t3
                  srai         a6, a6, 31
                  add          a0, a4, t0
                  ori          s9, t2, -1427
                  and          t2, a7, t3
                  sub          s10, a6, ra
                  auipc        t2, 187728
                  slli         a1, t2, 0
                  slti         gp, s6, 685
                  addi         a7, s2, -238
                  lui          s6, 196385
                  srai         s10, gp, 23
                  slti         a7, s7, 1744
                  xor          t2, a7, t5
                  sra          t0, s0, s2
                  lui          s1, 635713
                  auipc        a0, 1048515
                  andi         a4, a7, 61
                  sra          t6, s1, zero
                  srai         a2, t5, 5
                  sub          sp, tp, s3
                  ori          a4, zero, -831
                  srli         a5, t0, 2
                  and          s5, a1, a0
                  addi         a4, gp, 181
                  xori         a7, t0, 1419
                  and          a5, a1, s7
                  nop
                  srai         sp, zero, 26
                  xori         t1, s10, 37
                  srli         a0, tp, 26
                  ori          a2, zero, 1738
                  srai         a7, s11, 28
                  srai         s7, a3, 14
                  slli         a1, a1, 5
                  andi         s0, s3, 1994
                  or           t2, s6, t6
                  srai         s1, s2, 11
                  slti         a4, a7, -1238
                  srl          gp, t3, a2
                  add          t0, ra, s10
                  xor          s5, t6, s2
                  lui          a4, 347765
                  sra          t0, s8, a5
                  or           a1, s4, s8
                  auipc        gp, 691605
                  srli         s0, t5, 16
                  ori          a2, s8, -370
                  sub          s8, t3, s10
                  xor          t3, t5, s8
                  srl          a2, s7, a4
                  sltiu        s0, s6, -1465
                  nop
                  xori         a0, s2, -850
                  xori         a4, t1, -1365
                  add          s7, s7, a7
                  and          s3, ra, tp
                  srai         ra, a4, 19
                  andi         s0, a1, 1388
                  sub          s7, s6, a0
                  srai         s5, s1, 21
                  xor          t1, s9, s6
                  or           a6, t6, t1
                  slli         a4, a4, 25
                  xor          t0, s4, s1
                  xori         a7, a6, 756
                  addi         s0, s0, -465
                  or           s3, a2, zero
                  add          t0, a7, s3
                  or           t5, a5, s0
                  slli         s8, t4, 15
                  slli         t0, s11, 24
                  srli         gp, zero, 23
                  and          a2, s7, s6
                  sltiu        s5, a6, -1529
                  addi         t5, tp, 1521
                  sub          s5, zero, gp
                  xor          a1, s3, s1
                  or           s8, s2, s2
                  sll          t6, t0, t5
                  sub          t2, t4, t4
                  sltu         s11, s6, sp
                  slti         t3, a2, -1319
                  lui          s9, 205527
                  lui          t3, 15740
                  slti         a7, s3, -721
                  addi         a7, a3, 1268
                  nop
                  nop
                  sub          t2, s7, ra
                  xor          s6, s0, s4
                  sltu         t1, s1, a4
                  xor          a4, s1, t4
                  and          gp, t4, a3
                  srai         s8, s4, 7
                  add          a0, s8, a1
                  sll          s2, s9, t4
                  slt          s1, t4, s11
                  and          s7, t2, a2
                  auipc        s0, 378870
                  auipc        a2, 162193
                  sub          s11, s6, t0
                  sra          s11, gp, a3
                  and          s4, a7, s9
                  srl          s7, a4, s2
                  xori         t0, tp, 1524
                  ori          s7, gp, 618
                  andi         a7, a6, 0
                  and          s4, t5, a0
                  and          s2, s9, s8
                  slti         s3, a7, 1137
                  nop
                  slli         t0, a6, 26
                  add          zero, a5, a6
                  srli         s11, t3, 6
                  xori         t1, a7, 1765
                  slli         s5, s6, 14
                  sub          s10, s6, s11
                  xori         a7, t1, -399
                  or           s10, s1, zero
                  xor          t6, a2, s7
                  srl          a6, sp, ra
                  xor          s0, a3, t2
                  sll          s6, a5, sp
                  andi         s11, s10, -482
                  srl          s8, t2, gp
                  sra          s7, a1, sp
                  sltiu        zero, s4, -1728
                  or           s8, t1, a1
                  and          s2, s6, gp
                  sltiu        sp, a7, -540
                  slt          t5, t0, t1
                  lui          s5, 182135
                  andi         s4, s10, -1174
                  addi         s2, s11, -1000
                  or           s7, s5, a1
                  or           a6, s1, s1
                  nop
                  sra          s9, s7, s10
                  slti         a0, s9, 942
                  slt          t1, s10, a4
                  slt          t3, t0, t6
                  sltiu        s3, s2, -222
                  sltu         s5, s2, tp
                  lui          t2, 855672
                  xor          a0, tp, s3
                  slti         zero, a6, 201
                  add          s5, sp, t1
                  auipc        s5, 842257
                  srai         a7, s2, 24
                  add          t0, ra, a0
                  and          a5, t6, t3
                  sltu         t5, ra, gp
                  sra          s3, s11, ra
                  sll          s8, a0, s9
                  slli         s7, s1, 3
                  sltu         s0, t0, t2
                  andi         a1, t2, -249
                  sub          a6, sp, t0
                  xor          s10, a4, s9
                  auipc        s8, 571178
                  addi         t2, a0, 648
                  and          s9, s0, zero
                  sltu         a0, a1, tp
                  srli         s10, t6, 30
                  sltiu        ra, t4, -1748
                  add          a5, a1, a5
                  srai         t6, a2, 22
                  add          s4, s11, s9
                  slti         t1, s3, -712
                  sltu         a4, s10, s11
                  sltiu        s3, a3, -609
                  nop
                  nop
                  auipc        a1, 94284
                  srl          a7, t2, s6
                  srli         a2, a7, 24
                  xor          s1, t5, a6
                  lui          a0, 774278
                  ori          t6, s6, -320
                  srl          s2, a5, s11
                  lui          gp, 111374
                  auipc        t6, 967533
                  xori         t3, s5, -1691
                  andi         s7, t2, 1490
                  nop
                  sra          s8, a7, t5
                  and          t1, s9, zero
                  srl          s0, a4, s9
                  andi         s6, tp, 196
                  addi         sp, a6, 743
                  sub          s3, t1, a6
                  xor          t0, t0, zero
                  add          sp, s1, s3
                  sub          t2, s3, t2
                  addi         zero, s6, 1210
                  srai         sp, a1, 20
                  auipc        t5, 540142
                  nop
                  and          s1, t0, s4
                  sltiu        ra, s7, -1119
                  sltiu        a4, ra, -1654
                  andi         a0, s4, -144
                  xori         a2, zero, -1413
                  srai         s8, a2, 31
                  srli         a2, t2, 13
                  sra          a4, s11, a3
                  srl          t5, t1, s1
                  slli         t3, sp, 6
                  and          s9, a6, a1
                  srai         a2, t5, 10
                  and          a1, a6, s9
                  xori         t2, a7, 129
                  xor          a5, t0, s9
                  and          s8, t0, t2
                  sll          s3, gp, a3
                  and          zero, s7, s11
                  srai         s3, t1, 5
                  xor          s11, a3, s6
                  srli         a6, ra, 1
                  ori          t1, ra, -480
                  xori         a7, a3, 1340
                  sltiu        t2, s6, -27
                  sub          a2, a5, a7
                  sltiu        s2, t3, -1733
                  xori         sp, t3, 559
                  auipc        s6, 976934
                  andi         s11, a2, 1304
                  add          s11, t1, ra
                  slt          t1, s7, s5
                  sltu         s2, a1, a0
                  srli         a7, s9, 7
                  slli         a2, s7, 9
                  or           s3, s5, s1
                  nop
                  nop
                  lui          s8, 188466
                  sltiu        a5, a6, 529
                  slt          s9, s7, s2
                  srl          s7, s8, t3
                  ori          s3, t1, -1277
                  srli         s2, sp, 28
                  addi         t6, a4, -831
                  sub          ra, zero, zero
                  srai         s5, s8, 17
                  sltiu        sp, t4, 400
                  sltu         s1, a7, a4
                  sub          zero, s11, sp
                  xori         s0, a4, 503
                  slli         t5, a3, 2
                  xor          t2, a2, s7
                  auipc        t0, 389916
                  slti         s9, s1, -304
                  sub          zero, s2, s10
                  srl          a1, s0, a1
                  srli         sp, ra, 18
                  slt          zero, a1, a6
                  and          t0, s5, a3
                  xor          a5, s3, zero
                  xor          s8, t6, s9
                  addi         t6, sp, 1370
                  ori          a7, a3, 759
                  slt          s6, s0, a5
                  andi         a4, gp, -1044
                  addi         a5, a5, 934
                  sltu         a2, ra, s4
                  and          s8, s2, t6
                  srl          t6, t1, a7
                  sra          s10, t2, s10
                  nop
                  slti         t6, a1, -467
                  slli         s5, s0, 18
                  slt          s1, a2, t0
                  xori         a1, tp, -1923
                  auipc        gp, 137645
                  sub          s6, a2, ra
                  andi         a1, a6, 1329
                  nop
                  srli         a4, t4, 10
                  srai         t1, s6, 8
                  srli         t3, s3, 3
                  slt          t5, s11, zero
                  slli         a0, t2, 3
                  lui          t3, 943325
                  xor          s9, s5, s3
                  and          t6, t2, t0
                  slti         a5, s10, -1383
                  auipc        s6, 506020
                  srli         sp, s8, 21
                  ori          s3, t1, -265
                  andi         a2, s2, 524
                  sll          s9, t1, t3
                  sltu         s5, sp, s7
                  srl          a4, sp, s8
                  ori          s6, s10, -1580
                  srl          a2, t6, t4
                  slti         s6, s10, -1127
                  ori          s1, s5, 897
                  sub          s6, s2, s1
                  xor          gp, t2, gp
                  slli         a0, a2, 7
                  srai         a1, s4, 15
                  addi         a7, a3, 1716
                  addi         s7, t4, -1171
                  add          s4, ra, s8
                  srl          a2, s7, a5
                  xor          a5, s5, a4
                  nop
                  sub          s7, a6, a6
                  xori         t5, t6, 392
                  sra          s4, a6, s1
                  slt          a0, tp, a5
                  sltu         t5, a2, s6
                  addi         zero, tp, 840
                  sub          s6, gp, s0
                  sltu         s5, t0, s10
                  nop
                  slt          s11, s5, a3
                  ori          s6, t2, -452
                  sltiu        s2, tp, 672
                  xor          a6, t3, s3
                  xor          s6, t1, s7
                  srli         ra, s10, 30
                  ori          s0, a7, -1245
                  sltu         ra, a2, a2
                  addi         a0, t1, 1484
                  slli         t3, s3, 14
                  lui          t5, 370302
                  xori         s5, s11, -518
                  sra          zero, a0, s3
                  slt          gp, s0, s8
                  sra          t1, t5, t2
                  sltiu        s2, s0, 96
                  srli         a6, s10, 9
                  andi         t6, s7, -481
                  andi         a7, a1, 196
                  sub          ra, s4, zero
                  and          a5, sp, a7
                  xori         s8, t4, 539
                  srli         s11, s0, 11
                  sra          a5, a4, t2
                  sltu         s10, t4, gp
                  sltiu        a6, s7, -664
                  slti         a0, a7, 523
                  sltiu        s10, s0, 1406
                  ori          s6, t2, -671
                  xor          s4, s2, a7
                  sltiu        t0, s1, -488
                  slt          t5, s5, a5
                  add          t6, s6, tp
                  srli         zero, a0, 21
                  xor          ra, zero, t5
                  ori          a4, a0, -1293
                  slli         t5, sp, 20
                  sltiu        ra, a5, -441
                  or           t6, s2, a2
                  srl          s9, s8, t2
                  nop
                  sra          gp, t4, s10
                  andi         zero, a3, -591
                  add          t1, a1, s1
                  addi         s9, s1, 1947
                  add          s0, s0, s3
                  xori         a4, s8, -753
                  slti         t5, s3, -903
                  slt          a0, zero, tp
                  ori          t0, sp, 745
                  srl          t0, s3, tp
                  add          a7, s3, ra
                  auipc        ra, 524888
                  sll          a5, sp, t3
                  srl          a0, t1, s3
                  sub          s9, a0, s7
                  sll          s6, a7, s0
                  sra          s8, a0, a1
                  add          s4, t4, a7
                  srli         a0, a2, 14
                  or           t5, t3, t1
                  sll          a6, a5, zero
                  srl          t6, t0, s5
                  sll          s1, t0, t3
                  addi         s5, tp, 1357
                  lui          zero, 479172
                  sub          s5, t3, a2
                  sra          s2, a6, s6
                  xor          t0, s6, a4
                  srai         sp, a4, 7
                  xor          s11, tp, t1
                  srli         s2, sp, 0
                  lui          a7, 520968
                  slti         s7, sp, -431
                  xori         gp, gp, 905
                  slli         s3, s5, 10
                  lui          s7, 458066
                  sra          s10, a0, a5
                  addi         t3, t4, 723
                  slti         a4, s3, -444
                  xor          a5, s6, t1
                  add          s7, s5, s6
                  sll          s6, t2, a1
                  ori          s0, a6, 1749
                  nop
                  slti         s11, s3, 1117
                  srai         s11, sp, 13
                  xor          s4, t6, t1
                  slli         t6, s8, 19
                  ori          gp, s7, -1663
                  or           gp, s10, t2
                  sra          a0, a3, a5
                  sltiu        a1, a6, 612
                  xor          s4, t2, s6
                  sltu         a0, zero, t3
                  andi         a5, tp, -435
                  addi         t3, s11, 1263
                  slt          s11, t2, t0
                  srai         s0, sp, 1
                  sll          a6, sp, t3
                  sltu         s1, s9, t3
                  ori          s1, s0, -980
                  sltu         s2, s6, s3
                  lui          s5, 207366
                  andi         a2, a3, -93
                  srl          a1, t0, t2
                  xori         a1, t2, 734
                  xori         s10, zero, 1608
                  addi         a7, t2, 1436
                  addi         s0, zero, 827
                  sub          t6, t6, ra
                  and          a5, s1, t5
                  or           t5, a1, s1
                  lui          t5, 1004979
                  slti         s7, a1, 1140
                  slli         t6, t3, 31
                  srl          ra, a5, s8
                  sra          gp, t2, tp
                  ori          a5, a5, 1190
                  andi         s3, tp, -33
                  and          sp, t2, a5
                  xori         s4, zero, -1089
                  sll          s2, a2, s8
                  slli         a4, gp, 11
                  sll          s2, a7, gp
                  andi         s7, s3, -939
                  lui          a2, 353923
                  or           a2, a7, s6
                  srli         t2, s1, 27
                  ori          s11, a4, 1601
                  sll          t3, s1, a1
                  xori         a1, tp, 47
                  srai         a2, sp, 15
                  andi         a1, a5, -379
                  sll          ra, a1, t5
                  and          t5, t2, s7
                  sltu         a5, a5, gp
                  sub          a7, a0, a4
                  srai         zero, t0, 30
                  lui          s2, 735630
                  or           s5, s10, t1
                  srai         a7, t4, 5
                  ori          s6, t0, -1633
                  sll          s0, t4, s2
                  slt          s2, s8, s5
                  or           a1, s5, t2
                  lui          sp, 747899
                  sll          a1, ra, a4
                  xor          s6, s7, t6
                  srai         s4, s11, 20
                  slti         s2, zero, 1409
                  srli         zero, a1, 8
                  lui          s3, 851423
                  slli         sp, t5, 1
                  auipc        a4, 248493
                  slti         s9, s6, -1447
                  auipc        a0, 308350
                  srl          gp, a5, s9
                  srl          sp, zero, a6
                  slti         s8, s8, -1030
                  slt          s1, s6, s9
                  slt          a6, a2, gp
                  sltu         s6, t1, s11
                  and          s2, gp, a2
                  auipc        s1, 1033577
                  nop
                  sub          zero, a2, t6
                  srli         t0, s9, 28
                  sra          s10, s3, a7
                  srai         s11, s5, 27
                  sub          a5, t4, s2
                  addi         s10, t3, -259
                  srli         s1, s3, 0
                  addi         t2, ra, 1757
                  ori          s8, s8, -275
                  andi         t3, s7, 1757
                  or           t3, s10, s1
                  lui          t6, 303157
                  srli         t5, sp, 4
                  slli         s5, a3, 31
                  sltiu        s11, zero, -1127
                  sra          a1, a2, t1
                  xor          t2, t2, zero
                  slli         a7, t5, 11
                  or           t6, a5, t4
                  slti         a4, s7, 1858
                  sub          s2, a7, s2
                  srl          gp, gp, t6
                  lui          gp, 488506
                  slli         a5, s5, 9
                  lui          gp, 970519
                  sltiu        a6, s11, 1574
                  xori         a5, s9, 308
                  sra          s5, t5, a2
                  lui          a5, 783361
                  addi         sp, t2, -87
                  nop
                  ori          t5, s11, 1157
                  slt          zero, s7, a2
                  or           s3, s2, s2
                  andi         s2, a6, 947
                  or           a7, s8, s8
                  ori          zero, t5, -165
                  andi         a0, s5, 1151
                  or           a1, s8, s2
                  auipc        s5, 999211
                  or           a4, a2, a0
                  sra          t3, t5, t2
                  or           t6, s7, s1
                  slti         s11, gp, -1933
                  or           zero, t2, zero
                  slt          a5, t6, t5
                  slti         s5, t4, -222
                  sltiu        s10, a5, 920
                  srl          t0, a1, t0
                  or           s9, a6, zero
                  and          t6, a4, a4
                  add          s9, t5, s11
                  sll          a4, ra, t5
                  sltiu        a1, a3, 1343
                  xori         a0, a4, 1349
                  sra          s3, t6, s1
                  lui          ra, 858747
                  andi         s9, s2, 1898
                  xori         a2, a7, -1230
                  andi         a7, s1, 1989
                  ori          s7, t6, -660
                  add          s9, a4, a0
                  andi         a5, a7, -363
                  slt          s9, s11, t1
                  and          gp, s6, s10
                  lui          a7, 325717
                  slt          s7, s6, s9
                  ori          ra, s1, -1362
                  srli         t3, t4, 25
                  xori         t2, a5, 898
                  auipc        zero, 709501
                  auipc        s7, 120239
                  add          s10, t3, a3
                  andi         s5, s6, -308
                  slt          s2, s7, s8
                  srl          t6, a0, t0
                  addi         s8, t4, 67
                  and          sp, t3, s2
                  sltu         s11, zero, t2
                  add          s3, t4, a0
                  srli         s11, t6, 10
                  srl          a1, s3, s0
                  xor          s4, sp, a0
                  add          zero, gp, a1
                  slti         s4, t4, 1997
                  ori          s3, a4, -1884
                  lui          a6, 185622
                  srli         s7, t5, 27
                  sll          s7, a1, t2
                  xor          s4, s0, a2
                  andi         t3, sp, 557
                  xor          zero, t5, a2
                  sll          t6, s5, s9
                  srl          s11, t0, a2
                  or           a6, ra, gp
                  srli         s7, s5, 1
                  xori         a1, s2, 1130
                  slli         t2, t2, 18
                  sub          s10, s10, t6
                  sltu         s5, s6, a2
                  slt          s8, s5, s2
                  slti         s8, a0, 442
                  sub          a1, zero, t6
                  sra          s3, gp, a2
                  add          ra, sp, s4
                  lui          s7, 780004
                  sll          s4, t1, a7
                  andi         s2, a6, 631
                  sub          s4, a2, s1
                  andi         s3, s7, -1719
                  sra          a5, t1, s3
                  xor          zero, s3, a5
                  sltu         s4, a2, a3
                  nop
                  srai         t3, t4, 16
                  andi         a5, t6, -1173
                  or           zero, a0, s10
                  andi         t5, a7, -182
                  xor          t5, s5, s2
                  srli         s11, t3, 1
                  auipc        ra, 969498
                  sub          s9, s0, s4
                  add          s2, a4, s8
                  srli         s11, t4, 24
                  xori         s10, s9, 619
                  xor          s2, s9, t4
                  sltiu        s4, s4, -489
                  sltiu        s5, s0, -1591
                  xor          t3, s1, s9
                  sll          s0, t4, a7
                  addi         s7, a7, 1065
                  sra          s8, s8, s4
                  sra          s11, tp, s3
                  add          t6, t0, t1
                  slt          a6, s1, s5
                  srai         s4, a7, 15
                  slt          t0, zero, s11
                  or           s1, s10, a0
                  srl          s0, s8, a7
                  xor          a4, a7, s8
                  slt          t3, a5, s7
                  srai         t1, t3, 8
                  or           s1, sp, s4
                  auipc        s2, 559360
                  lui          s9, 207563
                  addi         t5, s6, 1264
                  srli         a7, s10, 22
                  xori         ra, a6, 4
                  xor          s0, zero, s3
                  andi         t5, s9, -1116
                  sltu         s0, a4, s0
                  or           s8, s3, s1
                  slli         ra, a3, 0
                  srai         s4, s11, 11
                  addi         a4, s1, 964
                  and          s3, gp, s6
                  sltu         a5, s6, s2
                  ori          t1, s6, -1453
                  srli         sp, s8, 13
                  sltu         s4, zero, a3
                  xori         s6, ra, 936
                  xori         a4, s0, -1035
                  andi         s8, a3, -928
                  slt          t3, a0, a7
                  nop
                  srl          s0, a4, zero
                  or           a7, a0, s8
                  sub          s6, s11, t5
                  srl          s7, s2, a3
                  lui          a0, 623874
                  slti         gp, t1, -1312
                  slt          a0, zero, a7
                  xori         a6, a2, 1257
                  and          s5, t2, zero
                  slt          s5, t6, t4
                  srl          s4, t2, t6
                  sltu         t0, t6, gp
                  auipc        t6, 752935
                  ori          s1, t0, -1178
                  xori         zero, ra, 281
                  srai         s9, tp, 9
                  srli         s6, s11, 28
                  xori         t1, t3, -638
                  add          s6, s4, s9
                  sltiu        s6, s1, -557
                  lui          s4, 941980
                  sltu         t3, s9, a4
                  slt          s4, t6, s0
                  sll          s11, a6, t2
                  addi         s10, tp, 625
                  addi         a1, t2, 294
                  or           t1, t3, a2
                  srli         s1, s0, 5
                  xori         s6, s9, -838
                  xor          a6, a2, a3
                  nop
                  ori          t5, t5, -1975
                  slli         s7, t4, 23
                  xor          s1, a5, s6
                  srli         ra, a5, 17
                  xor          s9, s0, t4
                  slti         s6, s8, -740
                  srl          s0, s6, a4
                  srl          s0, s1, s3
                  sra          s10, zero, a6
                  and          a1, s9, t2
                  slli         zero, t5, 13
                  xor          a0, t5, t3
                  sltu         t0, s5, s10
                  sltiu        t5, a1, -1248
                  or           s0, a5, sp
                  xor          t5, s4, tp
                  sra          t2, sp, s10
                  slti         s5, a0, -958
                  sltiu        s1, s0, -859
                  srai         s10, t5, 9
                  slli         s0, t1, 17
                  xor          s7, t2, a7
                  nop
                  sltiu        s3, a1, 1559
                  addi         s4, t0, -646
                  ori          a2, a1, 290
                  add          a0, s11, sp
                  srai         a1, t1, 24
                  slli         s11, s7, 2
                  auipc        t3, 449967
                  or           zero, zero, t0
                  slti         s10, a7, 53
                  sub          t0, a7, gp
                  ori          s0, t0, 1846
                  srli         zero, s9, 23
                  sltiu        t1, t3, 1190
                  srli         gp, gp, 26
                  auipc        t0, 96343
                  addi         t3, a2, 712
                  sra          t6, a6, t2
                  srl          s2, t2, tp
                  srl          s11, s6, a4
                  slt          s0, a7, a3
                  slt          s11, s2, tp
                  add          gp, t5, s7
                  sra          s7, a5, s8
                  sltu         t1, s10, zero
                  sltiu        s0, s1, -634
                  nop
                  li           t5, 0xa2786e23 #start riscv_int_numeric_corner_stream_15
                  li           t3, 0xffffffff
                  li           s3, 0xffffffff
                  li           s1, 0xeb23cce5
                  li           s11, 0x80000000
                  li           s4, 0x0
                  li           a5, 0xda289e6f
                  li           a7, 0xffffffff
                  li           a2, 0xffffffff
                  li           t0, 0xffffffff
                  addi         t5, a5, 464
                  auipc        s4, 554267
                  auipc        a7, 683091
                  auipc        a7, 560730
                  addi         t0, t5, -820
                  nop
                  lui          a5, 1022571
                  nop
                  lui          a2, 507109
                  auipc        s1, 51842
                  nop
                  lui          t0, 482287
                  sub          s11, a7, t0
                  add          t0, t0, a2
                  sub          s3, a7, s11
                  add          s11, a2, t3
                  nop
                  auipc        t3, 670416
                  lui          s4, 913464
                  nop
                  lui          t5, 363480
                  add          s4, s1, a2
                  sub          s11, a5, s1
                  auipc        a7, 961942
                  auipc        t5, 58079
                  add          t5, a7, a2 #end riscv_int_numeric_corner_stream_15
                  sll          a0, t3, s3
                  sra          t3, s2, s6
                  addi         a6, s7, -1550
                  xor          sp, a4, s7
                  sll          s1, tp, t2
                  sltiu        a6, s4, 269
                  slti         zero, s9, 1724
                  or           s0, sp, t1
                  srli         s7, s9, 5
                  nop
                  srli         a5, a4, 3
                  xor          a2, s11, s8
                  srl          a1, s7, a4
                  srai         s9, a4, 26
                  slli         t5, t2, 30
                  srl          s6, ra, t6
                  and          s8, a2, s9
                  and          s1, t5, a7
                  slli         sp, t3, 11
                  and          s5, t1, s2
                  auipc        t1, 682518
                  sltu         t0, s5, t3
                  sltiu        a5, s2, 1499
                  sltiu        t5, sp, -231
                  add          t2, t2, zero
                  or           t1, s10, sp
                  sub          zero, tp, s9
                  sll          a1, a1, t3
                  ori          t5, s4, -1880
                  andi         sp, s6, -1642
                  or           t5, s5, t5
                  sub          s1, a7, s6
                  andi         a0, a2, 502
                  slt          t1, ra, zero
                  slli         a4, t1, 13
                  srl          t3, s1, s6
                  or           s2, gp, s10
                  sltu         s6, s1, s7
                  add          s3, s3, t4
                  slt          a0, sp, a7
                  slti         s3, a0, 978
                  slli         s2, t2, 8
                  sub          s10, t3, s7
                  or           t5, t3, ra
                  and          gp, gp, s6
                  srai         t3, t6, 25
                  slt          s2, t1, t5
                  lui          s3, 887881
                  sltiu        sp, t3, 360
                  andi         s10, t2, -184
                  nop
                  sub          t0, a0, s3
                  xor          a2, t0, gp
                  ori          s8, tp, -682
                  sltiu        a0, t0, 1642
                  andi         s5, sp, 734
                  sub          s5, s5, s3
                  nop
                  add          t2, t6, s1
                  or           s2, t0, s7
                  add          sp, t4, t0
                  srai         a1, a2, 9
                  slli         s4, t3, 29
                  slli         s2, a0, 8
                  srai         a0, t4, 4
                  nop
                  nop
                  or           s1, s10, a4
                  sltiu        s4, s1, 1508
                  sra          s3, t3, t5
                  sub          a7, a1, a5
                  nop
                  auipc        s1, 719689
                  slli         a5, gp, 8
                  sll          s6, s2, t3
                  auipc        a4, 247216
                  ori          s8, t6, 1256
                  srai         a1, s4, 3
                  sra          s5, s7, a6
                  sltu         t6, a7, a4
                  andi         s11, s5, 940
                  ori          t3, s0, -1866
                  srai         t6, a1, 29
                  nop
                  andi         s0, a4, -1622
                  add          gp, s7, a1
                  srl          s8, a1, a4
                  srai         a1, a4, 19
                  lui          t6, 10398
                  sra          s3, t4, tp
                  xori         a0, s6, 834
                  slt          t3, gp, s11
                  sll          s10, s9, s0
                  slti         t6, t6, 344
                  addi         s1, s7, -979
                  sll          s7, a0, a2
                  srli         a0, s0, 28
                  slli         zero, a4, 4
                  ori          s10, zero, 1214
                  and          a0, t6, t0
                  srli         zero, t3, 4
                  srli         t2, a4, 18
                  xori         t1, t4, -1340
                  andi         t3, t1, 1551
                  srli         sp, t0, 19
                  slti         a2, a6, -153
                  and          s10, t0, zero
                  xor          s5, a6, s5
                  slti         s8, t6, 1826
                  ori          t3, tp, -30
                  sra          s3, sp, t5
                  addi         t0, tp, 162
                  or           t5, s9, gp
                  lui          s9, 465993
                  add          s4, t0, a4
                  slt          t6, s7, tp
                  sra          a4, sp, t1
                  or           t0, t0, zero
                  slt          s5, a1, zero
                  add          t6, s0, a5
                  sll          t5, s3, gp
                  sra          t0, s8, a5
                  and          t3, t6, s5
                  xor          a6, s11, a1
                  xor          t2, s1, s2
                  sll          a2, zero, s8
                  and          t1, s8, s8
                  sll          t3, a0, a4
                  slli         s3, s10, 9
                  xor          a1, t6, s3
                  sltiu        a5, s10, 1255
                  srli         ra, t4, 16
                  add          s3, tp, t6
                  slt          s6, s4, a2
                  sll          t3, zero, a4
                  srli         s4, t4, 0
                  sltu         s9, tp, a1
                  xor          s11, s4, a4
                  addi         s3, a3, -1917
                  ori          t3, a4, 957
                  add          s1, a4, a5
                  add          t2, a3, a2
                  ori          t1, t0, -383
                  sra          a0, s11, t4
                  slt          s3, s11, a2
                  sltiu        sp, sp, -1064
                  xor          t5, s10, s8
                  xori         ra, a4, 167
                  slt          a0, a7, s9
                  sltu         t6, a0, t2
                  nop
                  sltiu        s10, s7, -548
                  slti         t6, a1, -334
                  slt          t3, a6, t1
                  addi         s3, s10, 266
                  sltiu        a7, a0, 715
                  slti         s0, s11, -599
                  xor          a5, a7, a3
                  add          a6, sp, s1
                  slt          s0, t0, s2
                  slli         s0, tp, 7
                  and          t5, a2, s0
                  ori          a6, s1, 1699
                  srl          s3, s6, s4
                  sltiu        s7, s4, -12
                  ori          sp, s9, 334
                  sra          s11, t2, s4
                  srl          t5, a0, t1
                  sltu         t2, ra, a3
                  slti         ra, t4, -318
                  auipc        t1, 449019
                  andi         s8, s1, 216
                  and          a2, t0, gp
                  sra          s11, s9, sp
                  auipc        s7, 92420
                  and          t6, ra, t0
                  srli         s11, gp, 4
                  auipc        a6, 478519
                  ori          s3, tp, 381
                  ori          gp, s3, 1069
                  lui          t6, 297095
                  srai         a0, s5, 29
                  xor          a1, s1, t5
                  sra          t2, a6, s2
                  srai         s0, sp, 10
                  slti         ra, a4, 350
                  sll          a7, a6, t5
                  and          s9, zero, s4
                  and          zero, t5, zero
                  srl          zero, s6, t6
                  srai         s11, a4, 10
                  nop
                  ori          a4, t3, -323
                  srai         gp, t3, 20
                  slti         a7, s6, -455
                  lui          s8, 458298
                  addi         gp, s11, 969
                  xori         s1, t1, -1926
                  auipc        t3, 656444
                  addi         a4, ra, -986
                  slt          a2, t4, t1
                  nop
                  add          s9, a3, s4
                  xori         t0, zero, 379
                  sub          sp, s3, t3
                  sll          t6, a6, a7
                  sra          s4, t2, t1
                  nop
                  auipc        t6, 395169
                  xor          t1, t3, s8
                  sltu         s10, a6, t5
                  nop
                  sra          a0, s5, s6
                  srli         a7, s9, 21
                  srai         sp, a1, 6
                  sltiu        a1, s9, 900
                  sub          s10, sp, s8
                  add          s1, s10, a0
                  sll          s8, s7, tp
                  nop
                  addi         s7, a0, 1672
                  or           s3, a1, t1
                  xori         t2, s2, -1771
                  slti         s8, t6, 1479
                  sra          t1, s0, ra
                  lui          s8, 746791
                  sltu         a1, s3, ra
                  slli         s11, s7, 13
                  sll          a5, a1, t1
                  xor          t3, t1, t6
                  nop
                  sltiu        s11, a7, 826
                  addi         s0, s10, -831
                  and          t3, t2, t4
                  sub          t5, t0, a5
                  lui          zero, 428983
                  andi         s0, s10, -1901
                  ori          a5, s8, -1134
                  xor          zero, gp, s5
                  ori          s2, a0, -709
                  and          s0, s6, tp
                  nop
                  sltiu        a7, a5, -1084
                  lui          t5, 736412
                  lui          a6, 32523
                  slli         s4, s10, 28
                  and          s0, t5, a3
                  andi         s11, s11, -1672
                  add          s11, s0, t4
                  xor          s2, t2, s9
                  addi         s9, s0, -782
                  srai         a4, a6, 29
                  andi         gp, t4, 1340
                  ori          sp, t6, -1941
                  sltiu        a2, t3, 824
                  sll          s5, a2, zero
                  slli         a1, s2, 23
                  srl          t0, s8, a7
                  slt          t0, s9, a2
                  add          s5, t3, t2
                  slti         s9, a3, 26
                  auipc        s4, 777549
                  slt          sp, a7, t4
                  add          s2, a6, t3
                  srai         a6, s6, 7
                  lui          s11, 303726
                  andi         s10, a2, 1027
                  srai         gp, ra, 23
                  sll          s0, t1, a2
                  sub          s5, t5, t5
                  ori          s2, s6, 567
                  srl          t3, s1, s4
                  xori         s2, a5, 476
                  sltu         t0, t5, a5
                  srli         a5, s0, 23
                  addi         s8, gp, 1934
                  nop
                  slli         a1, s9, 29
                  and          s0, t6, s9
                  sltu         s8, a7, s1
                  sltu         t5, s2, t1
                  slt          sp, s4, t4
                  auipc        a6, 743969
                  xori         s2, a1, 1315
                  nop
                  sub          s4, t3, zero
                  srl          s2, s3, gp
                  sub          a5, gp, t6
                  srli         s0, t2, 8
                  slli         sp, a2, 27
                  sub          s7, sp, a0
                  sltu         a7, a2, t2
                  sub          sp, s4, a4
                  xor          t0, a3, s0
                  lui          a4, 133366
                  nop
                  srl          a1, t4, s9
                  slli         t6, t0, 20
                  and          t3, s9, a7
                  ori          t5, s4, -807
                  slti         s2, a0, -27
                  andi         a2, s4, -2029
                  ori          s7, zero, -1970
                  srai         t6, s8, 5
                  nop
                  andi         a4, a4, -1060
                  auipc        sp, 789371
                  lui          a0, 659845
                  srli         t2, t5, 30
                  sltu         t0, s1, a4
                  nop
                  or           t6, t5, s7
                  xori         t2, a3, 1465
                  addi         t3, a7, -1034
                  or           s2, s5, a4
                  nop
                  sll          s7, a2, t0
                  addi         s7, t0, 1340
                  lui          a1, 580455
                  auipc        t1, 655677
                  srl          s10, t3, s5
                  slt          s3, s10, t4
                  sltiu        s4, t3, 756
                  srl          s9, s0, a1
                  sub          s3, t4, tp
                  or           a1, t5, s5
                  srl          t3, t2, s11
                  xor          a7, s8, a3
                  ori          s5, gp, 1186
                  addi         t6, s4, 1857
                  sra          gp, a1, t3
                  auipc        s5, 309611
                  sub          s3, s7, t0
                  srai         s3, a1, 1
                  sltu         s0, a4, s1
                  sll          sp, t1, s9
                  sub          t2, a2, t4
                  xori         s10, a3, 1107
                  sll          s2, s8, a2
                  addi         gp, a0, -396
                  sra          s4, ra, sp
                  sra          t3, s10, tp
                  addi         t6, a6, -155
                  sub          s2, a1, a6
                  xori         s8, s6, -496
                  xori         t1, a4, 1212
                  sltiu        s11, t4, -939
                  xori         s11, s5, 1040
                  or           s8, s5, t1
                  add          t1, a6, s9
                  srl          s4, a6, a6
                  sra          s8, t2, zero
                  xor          ra, s4, t4
                  srl          s1, tp, a2
                  andi         s1, s5, 1511
                  slli         t2, a2, 26
                  ori          s10, a5, -856
                  slt          s4, s5, s6
                  xor          s8, s3, a3
                  lui          a1, 362103
                  or           t0, ra, s2
                  addi         a4, t1, -1253
                  slt          t1, t4, t1
                  auipc        a1, 140759
                  slti         gp, s5, -1821
                  sltu         s8, s2, a4
                  xori         t2, a6, 91
                  and          s6, tp, a2
                  xor          t5, a4, a1
                  slti         s6, tp, -1533
                  slt          t3, s4, gp
                  srli         s5, a6, 12
                  sltiu        s6, s10, -688
                  nop
                  slt          t5, a0, a3
                  sll          t0, a5, a3
                  srl          t5, s7, s2
                  andi         a1, t5, 1900
                  addi         ra, gp, -216
                  auipc        gp, 955842
                  and          a7, a2, s11
                  slt          ra, s9, gp
                  sltu         t6, t4, a1
                  ori          ra, s3, -1995
                  srli         s11, s11, 3
                  and          t1, tp, s8
                  sll          s7, a5, s6
                  nop
                  auipc        t6, 768965
                  lui          t1, 512739
                  srli         a5, t4, 11
                  sltiu        s9, a6, 1337
                  sra          a6, zero, s9
                  ori          s10, t2, -458
                  sub          t2, s3, t6
                  xor          s5, a7, a0
                  sra          s4, s2, t1
                  slt          s8, a7, s1
                  xor          t5, s11, s6
                  srli         s7, a6, 22
                  xor          a5, s8, a1
                  auipc        s6, 929946
                  srai         a2, a2, 15
                  slti         a5, s5, 1015
                  nop
                  slli         s11, s0, 30
                  auipc        t0, 2985
                  slli         a4, s11, 11
                  sltiu        t1, s2, -1594
                  and          s9, t2, t3
                  srai         s8, t1, 29
                  sltiu        t3, a0, 788
                  sra          s4, zero, t1
                  ori          s5, a3, 818
                  srli         s11, s6, 28
                  add          t2, s3, t4
                  andi         a4, a5, -805
                  xori         s6, t4, -1619
                  sltiu        t1, sp, -907
                  sub          s4, t4, t6
                  srai         s4, t2, 17
                  and          s1, s8, ra
                  lui          s1, 217073
                  srl          t6, s1, s10
                  slti         s11, a2, 1639
                  slli         sp, t1, 19
                  sltiu        s5, s5, -802
                  ori          t1, a2, -961
                  addi         t2, a1, 959
                  slti         gp, gp, 1499
                  xori         a1, a4, -1564
                  xori         s7, a7, -156
                  srl          a6, a7, t2
                  or           sp, ra, s7
                  add          s10, a4, s3
                  nop
                  andi         a1, zero, 1848
                  lui          a5, 365537
                  nop
                  srli         s2, s7, 31
                  slt          t5, zero, a5
                  sll          t1, tp, s2
                  slli         a2, a4, 15
                  xori         s1, a6, -1442
                  nop
                  nop
                  slli         a5, s6, 10
                  sltu         t3, a5, t2
                  slt          s10, a4, a5
                  srai         s6, s11, 14
                  lui          gp, 740067
                  sra          s9, a5, a1
                  srli         t3, s6, 20
                  sltu         zero, sp, s2
                  addi         s6, a6, -787
                  add          s6, s3, s3
                  slli         s7, s11, 25
                  sll          t6, s2, a6
                  sub          t2, t3, s7
                  sub          s3, s8, t6
                  ori          s9, t5, -475
                  srli         a5, s9, 19
                  auipc        s8, 715567
                  sll          a1, a7, a7
                  addi         s11, a7, -1659
                  andi         a2, gp, -781
                  addi         s4, s4, 1331
                  slt          s3, s3, s7
                  sltu         gp, ra, s1
                  slt          t3, s7, s0
                  nop
                  sub          a5, t3, s4
                  or           a4, zero, t3
                  or           t5, s7, a2
                  or           t2, a4, t5
                  addi         t3, tp, -1288
                  addi         t2, s9, -580
                  add          a1, t1, a2
                  addi         a5, s10, 1479
                  addi         t0, sp, -1382
                  srl          t3, a0, a5
                  slt          s5, t3, sp
                  sll          s1, a1, a6
                  xor          a7, t3, s3
                  slt          t6, s1, a3
                  add          s7, s0, s5
                  sub          gp, s5, t3
                  and          sp, s4, a1
                  addi         s1, a0, -511
                  sub          t6, s0, a6
                  auipc        zero, 1017456
                  lui          s10, 3070
                  ori          s6, a0, 1527
                  srai         t0, a5, 19
                  addi         zero, t1, -699
                  sltu         t5, t2, a6
                  lui          s6, 589647
                  xori         t3, s4, -915
                  slli         s11, a4, 23
                  addi         a5, s4, 806
                  add          a0, s5, s9
                  add          s0, sp, a4
                  add          s5, a4, s11
                  sltu         s6, t5, s9
                  lui          a7, 717854
                  sltu         t0, a0, t3
                  sll          t2, s8, a7
                  xori         s10, a3, -1640
                  sub          t3, a6, t2
                  auipc        t1, 379397
                  nop
                  auipc        a2, 829201
                  andi         a6, a3, -663
                  andi         s4, t2, 960
                  sltiu        s3, a6, 1409
                  srl          t6, a6, a1
                  xori         t6, ra, -401
                  xor          t6, s8, s8
                  ori          t2, sp, -1222
                  sub          a7, t6, s9
                  ori          t1, t0, -1901
                  lui          s3, 369834
                  add          s10, a5, t1
                  add          t2, s10, a6
                  slli         t3, s3, 21
                  andi         s10, t3, -1443
                  nop
                  sltu         t2, t0, s8
                  xori         s1, s5, -720
                  xori         s1, a7, 44
                  or           t5, t4, t5
                  nop
                  nop
                  sll          a7, s4, s2
                  slli         s11, s11, 13
                  auipc        t1, 921642
                  sll          ra, a4, t2
                  sub          t6, t6, s5
                  sll          s9, s3, a6
                  xor          s0, zero, a5
                  sltiu        s6, tp, -1120
                  slt          a0, ra, t0
                  sltu         s2, t3, s5
                  xor          gp, s3, t0
                  slli         s10, s8, 25
                  srli         s5, a5, 13
                  lui          t5, 55546
                  andi         t3, a5, 1032
                  add          a5, a2, s7
                  slti         s11, a2, -1913
                  srl          t6, a6, s3
                  or           s0, sp, s4
                  sll          a7, t0, s1
                  srl          a7, a0, t1
                  slli         s3, s2, 21
                  sub          a7, s2, a3
                  slti         s7, sp, 1441
                  add          s6, s0, a3
                  slt          s8, s4, t3
                  sltiu        a6, s2, -500
                  andi         ra, a1, -1351
                  lui          t1, 459742
                  and          t3, s11, s3
                  sll          s10, a4, a4
                  auipc        ra, 931877
                  lui          t3, 844336
                  xor          t1, t3, t3
                  slli         a5, ra, 5
                  srai         a5, s5, 22
                  sll          a1, tp, s8
                  sub          t0, s1, a7
                  srl          s10, s6, s4
                  add          zero, s0, s8
                  xori         s10, s11, -1946
                  sra          s4, s5, t4
                  sltiu        a6, gp, 919
                  xor          t3, a1, s1
                  and          s1, sp, s0
                  sltu         s1, a2, tp
                  srli         a0, t2, 28
                  srai         t1, s4, 16
                  slli         a6, s4, 21
                  slti         t0, s2, -1173
                  and          t2, a2, t4
                  sra          ra, a4, t6
                  slti         s8, s7, -237
                  slli         s9, s6, 14
                  addi         t5, t3, -913
                  ori          s11, zero, -315
                  srai         s1, s0, 28
                  andi         zero, s2, -1691
                  sltiu        t5, t4, -1770
                  addi         s7, t4, -1522
                  sub          s5, s8, s5
                  sub          s4, ra, tp
                  lui          s0, 407795
                  xor          t5, s1, s2
                  sltiu        t3, ra, -883
                  xor          t3, sp, ra
                  andi         ra, a5, 1109
                  ori          s6, s1, 1671
                  sll          t2, t0, s8
                  auipc        s2, 759937
                  lui          zero, 572489
                  sltiu        t2, sp, -592
                  sra          t6, zero, gp
                  xor          s0, t1, t2
                  slli         t6, t2, 5
                  slt          t6, a3, t5
                  addi         s3, t3, -667
                  sra          t1, a4, a4
                  auipc        a1, 992276
                  xor          gp, s6, a0
                  auipc        a2, 269062
                  and          s7, a5, gp
                  or           s4, a7, tp
                  or           s7, a3, s8
                  addi         s0, t5, -2034
                  or           t3, a3, s3
                  sltiu        zero, a5, 889
                  add          t6, t4, s1
                  srl          s3, s8, s1
                  sra          gp, s2, zero
                  xor          a7, s10, a5
                  slti         a0, s11, 1969
                  slti         s3, s11, 1472
                  lui          s6, 909840
                  sltu         s0, a3, zero
                  sub          gp, t6, t3
                  and          t1, a1, t1
                  auipc        t0, 611714
                  slti         a4, t1, 1167
                  addi         a5, t1, -1249
                  addi         a7, s0, -243
                  auipc        s0, 186107
                  or           a6, t4, a0
                  andi         t6, a0, 1692
                  lui          t2, 56471
                  or           s2, s7, s3
                  xor          a2, tp, s6
                  lui          s2, 696968
                  slli         t6, t4, 14
                  ori          t3, sp, 521
                  srli         t1, tp, 20
                  sltu         s4, s10, a1
                  or           s9, s10, a3
                  srai         zero, gp, 16
                  addi         t3, a6, 222
                  andi         sp, a7, -1240
                  sll          s2, a7, t6
                  andi         a5, a4, -1356
                  srai         t1, t3, 16
                  srl          t5, a4, a7
                  sltu         a0, a2, s4
                  srl          a4, s8, t6
                  sltu         s11, s1, s3
                  or           t1, s2, t2
                  sub          a1, s10, s6
                  ori          s4, zero, -645
                  srli         s11, a3, 17
                  xori         t5, t1, -1121
                  ori          t1, tp, -702
                  ori          t6, s6, 1616
                  sltiu        s10, s0, -1267
                  slti         a6, t1, -116
                  srli         ra, t5, 5
                  or           s6, s3, s0
                  andi         s5, t2, 1477
                  xor          s8, t6, ra
                  srli         ra, a6, 17
                  addi         t6, a5, 1168
                  sll          s0, s8, tp
                  lui          s8, 912658
                  slti         s6, t6, 74
                  addi         t6, t2, 903
                  xori         sp, s8, -1163
                  slti         a2, s7, 1661
                  sub          s2, s10, tp
                  sra          t3, s2, s10
                  sub          s5, ra, a3
                  sll          s1, t3, s10
                  and          t1, tp, s4
                  auipc        s2, 868546
                  slli         s9, a6, 5
                  sra          a4, s8, t1
                  or           ra, a1, tp
                  sub          a0, t5, a6
                  xori         t3, a4, 1736
                  nop
                  and          s11, a7, a1
                  addi         s8, t6, 671
                  sltiu        t1, sp, 21
                  addi         t2, a1, 224
                  sll          t2, s7, s9
                  sll          s2, tp, s1
                  sltu         s0, t3, t3
                  nop
                  slti         s1, s7, 307
                  sra          t0, a1, a4
                  slli         t2, t5, 3
                  nop
                  ori          s11, s6, -1534
                  ori          s7, ra, -293
                  sra          s4, gp, s10
                  srl          s10, s5, tp
                  slt          s4, zero, a0
                  add          t1, a6, s2
                  addi         t5, zero, 1504
                  andi         a2, t1, -865
                  ori          a0, s7, -263
                  xori         s11, s6, -498
                  sltiu        s1, tp, 1398
                  slt          s8, t5, t3
                  srl          s8, ra, s6
                  sll          ra, s11, t6
                  andi         a6, a4, 1057
                  or           s9, zero, s6
                  lui          t0, 104708
                  nop
                  ori          t3, zero, -551
                  sll          s1, s10, zero
                  addi         t1, s7, 728
                  xor          a0, t2, tp
                  sub          s6, s5, gp
                  or           s10, zero, s3
                  sltu         gp, t4, t5
                  nop
                  srl          a0, t0, s2
                  auipc        s0, 158775
                  or           s11, s4, s4
                  slli         s10, s10, 30
                  srli         t0, t4, 10
                  slti         s11, a6, 204
                  auipc        a1, 758815
                  srl          a4, t6, sp
                  xor          a0, s8, t0
                  srl          t1, s3, s6
                  sltiu        s3, a1, 100
                  nop
                  add          s9, s6, gp
                  add          ra, sp, sp
                  sltiu        zero, a5, 1212
                  add          t6, ra, a2
                  nop
                  sra          a7, s6, s1
                  xor          s9, s2, a5
                  nop
                  xor          a0, t1, a2
                  addi         s8, a3, 2012
                  auipc        t1, 1009839
                  and          t3, zero, a6
                  nop
                  sub          t0, t5, a4
                  lui          gp, 1026568
                  sltu         s10, a7, t4
                  slli         s8, a6, 3
                  lui          a5, 968392
                  lui          ra, 1041491
                  sra          s5, a0, s10
                  or           s8, sp, t4
                  slli         ra, a1, 15
                  auipc        gp, 408156
                  addi         s11, s9, -1008
                  sub          a2, zero, a3
                  xor          s4, tp, a6
                  sll          a4, s2, sp
                  addi         s5, s2, 11
                  srai         s10, tp, 31
                  srl          a1, gp, s6
                  ori          zero, a5, 1950
                  sltu         zero, s9, t4
                  xor          gp, t5, s4
                  sub          s8, s11, tp
                  xor          s3, t3, t0
                  srl          a6, s8, a7
                  nop
                  slti         a7, a4, -36
                  nop
                  add          s1, s4, t4
                  andi         t5, s10, -334
                  sll          s1, s7, gp
                  sll          a7, s4, s2
                  or           a0, a2, a6
                  srl          s5, a4, a3
                  sub          a7, t6, t4
                  sltu         s4, s0, s1
                  slti         s1, t4, -1744
                  nop
                  addi         s5, s8, 1087
                  andi         s1, ra, -60
                  sra          s2, a1, s2
                  xor          s8, t5, gp
                  srli         a1, t4, 18
                  slli         sp, s11, 12
                  sltiu        a7, zero, -1239
                  lui          t6, 527073
                  sub          ra, s3, t0
                  nop
                  add          s11, a3, s11
                  addi         t5, s0, 1968
                  addi         s10, s1, -1904
                  srai         t0, t0, 23
                  and          a0, t3, s10
                  ori          t1, t5, -1554
                  sltiu        s7, s6, 1979
                  add          ra, s5, s1
                  or           t5, t0, t3
                  or           sp, s6, tp
                  add          a7, s2, s3
                  slli         s9, a1, 26
                  sltiu        a4, t3, -467
                  sub          a7, a3, a7
                  lui          s6, 530272
                  andi         t0, t6, -1514
                  xori         gp, t5, -1863
                  andi         gp, zero, -1558
                  lui          zero, 435871
                  addi         s5, sp, -1130
                  add          a2, s1, t0
                  nop
                  auipc        s10, 61076
                  sltu         a2, a3, t6
                  srl          zero, t2, s0
                  slti         a7, gp, -891
                  andi         t1, t4, -71
                  lui          a1, 953116
                  sltu         a4, t1, s5
                  slti         a4, t6, 1010
                  or           ra, ra, s2
                  srl          t0, a0, a3
                  auipc        s9, 50571
                  srli         sp, t1, 19
                  andi         s1, s9, -1534
                  auipc        s3, 390773
                  or           t6, t0, tp
                  sltu         t5, sp, t3
                  xor          t1, t1, s0
                  addi         a1, s7, 1776
                  auipc        a7, 368518
                  srli         s4, a6, 22
                  srai         s5, s9, 26
                  sra          sp, a6, gp
                  auipc        a5, 870829
                  or           s11, a0, t1
                  slti         a5, s5, 651
                  srl          a1, s8, gp
                  xori         t6, sp, 1859
                  addi         t5, s1, -1409
                  xor          a4, s8, s7
                  xor          t3, s4, s7
                  sltiu        a0, t6, -932
                  addi         s2, a5, 1108
                  sll          s2, a6, t3
                  lui          s9, 903673
                  and          zero, a7, zero
                  lui          t1, 196939
                  xor          ra, s1, t4
                  andi         t1, t2, -563
                  andi         s3, t6, -1596
                  nop
                  addi         s10, ra, 581
                  add          t2, zero, a1
                  xori         s3, t0, -548
                  slli         a1, a2, 25
                  auipc        t3, 119222
                  slt          s1, t5, s6
                  sub          s1, a0, s11
                  srli         s3, s2, 10
                  sltiu        t6, tp, 134
                  or           a4, a5, a7
                  xor          s0, s11, tp
                  lui          t2, 1029294
                  auipc        s1, 881070
                  andi         s4, a1, 874
                  sltiu        t1, a3, 551
                  sub          t3, a5, s1
                  sltiu        s6, s9, 853
                  addi         a6, a7, -1877
                  sltiu        s10, s0, 1508
                  sltiu        a6, s10, 891
                  lui          sp, 745031
                  nop
                  xori         s0, s2, 1592
                  xor          s10, tp, a2
                  andi         t5, t5, -1437
                  slli         s10, a6, 27
                  slli         s5, a5, 6
                  add          gp, s0, tp
                  xori         a4, t6, -497
                  or           s3, t4, s3
                  slli         s1, ra, 17
                  sub          t1, s2, gp
                  and          a2, s10, a4
                  srl          sp, ra, s0
                  sltiu        s7, a1, 801
                  nop
                  slt          zero, t4, s7
                  add          a6, t5, s0
                  sub          s3, gp, zero
                  sll          s4, sp, s5
                  sll          a2, a6, gp
                  sll          t3, a5, t2
                  sll          s8, t1, t3
                  lui          a1, 822809
                  auipc        s0, 927557
                  slli         s4, a4, 24
                  and          s8, t4, a0
                  or           a7, s1, a4
                  sra          t1, tp, a7
                  addi         s4, gp, -573
                  andi         a7, t3, 1889
                  ori          s9, s10, -1390
                  auipc        s11, 290442
                  andi         s11, a3, 1671
                  add          zero, sp, ra
                  sltu         t3, t2, s9
                  sub          s9, a6, s5
                  slli         s4, s8, 26
                  or           a6, t2, t5
                  nop
                  sra          s10, zero, a6
                  nop
                  andi         zero, a3, -1360
                  slti         a1, a7, -1690
                  sltu         ra, s6, t4
                  sub          ra, s7, t4
                  or           s3, zero, s8
                  srl          a0, t5, s1
                  sra          t3, s6, s9
                  xori         a0, s10, -1413
                  or           s6, a2, t4
                  andi         s4, a0, 1085
                  srl          t2, t5, t5
                  sub          s1, ra, s4
                  srli         s6, t4, 12
                  lui          t3, 879498
                  or           s4, t4, tp
                  xori         a7, a4, 419
                  srli         a2, s3, 7
                  addi         s6, s7, -415
                  and          s1, gp, s3
                  slt          a1, a3, s5
                  lui          s7, 896106
                  srai         s8, a3, 9
                  sltiu        s11, t4, -359
                  add          s9, s7, t2
                  sll          a7, zero, s4
                  addi         a4, ra, -1541
                  or           s0, a6, s3
                  auipc        s7, 756924
                  slti         s4, s5, -1748
                  auipc        ra, 243769
                  or           a0, tp, a2
                  xori         t2, a6, 226
                  srl          s4, zero, tp
                  sltu         t3, s2, a2
                  slli         a7, s4, 29
                  srli         ra, a0, 8
                  sub          s2, a2, s2
                  srai         a6, a4, 3
                  andi         t5, s9, -577
                  lui          s7, 928100
                  xor          t0, a0, a4
                  slli         a7, a6, 14
                  or           a5, s4, s1
                  and          s10, s3, gp
                  srai         a5, s10, 13
                  sltiu        a0, a5, 1054
                  slti         a4, a3, 180
                  sra          s6, s9, t4
                  srai         zero, tp, 31
                  add          s10, a5, s8
                  srli         sp, ra, 16
                  nop
                  ori          a2, s2, 180
                  addi         t6, t6, 1797
                  xori         s6, t2, 1752
                  slti         s11, sp, 160
                  sra          s0, a5, s2
                  or           s1, t4, t6
                  or           zero, t5, a4
                  sltu         s8, t4, a2
                  xori         a2, gp, 1380
                  add          s4, a7, t0
                  srai         t3, a4, 12
                  slli         a1, s3, 6
                  slti         s11, s11, 1667
                  srl          a7, zero, t0
                  nop
                  srai         zero, s6, 31
                  srl          ra, s4, a4
                  slli         a7, sp, 4
                  sll          zero, s3, t3
                  lui          ra, 158668
                  nop
                  sub          s8, s0, s0
                  sll          s6, tp, t6
                  sll          a2, s8, zero
                  addi         s3, s0, 1228
                  and          s5, t0, s11
                  auipc        ra, 962912
                  sltiu        s5, a0, 846
                  sll          gp, zero, s2
                  srai         sp, s3, 29
                  addi         s5, t2, 1977
                  and          t3, a6, sp
                  xori         t2, a5, 281
                  nop
                  sltiu        s5, a4, -460
                  sub          t2, a6, gp
                  slli         t2, s9, 8
                  and          a0, s11, a5
                  xor          s4, a7, t3
                  srl          s8, ra, s8
                  slt          s2, s3, sp
                  addi         ra, t1, -466
                  slli         s11, a2, 3
                  slti         a7, t1, 1184
                  sltiu        zero, s9, -1145
                  srli         a1, s7, 14
                  slli         a0, s5, 2
                  ori          gp, t0, 652
                  slt          s0, s4, t3
                  add          s6, s2, a4
                  sub          t3, a5, a3
                  slt          t0, a3, t4
                  xor          a7, t4, sp
                  ori          t5, s2, -2016
                  sll          gp, s0, a1
                  srli         a1, a0, 21
                  andi         s2, t5, -686
                  slli         s3, s7, 30
                  slt          s9, a6, sp
                  add          s3, s9, s6
                  slli         a4, s2, 5
                  slti         a1, s11, 936
                  and          gp, t4, tp
                  slt          s9, gp, s2
                  slt          ra, s4, t1
                  srli         t5, ra, 25
                  sltu         a6, a2, s2
                  slli         t0, zero, 3
                  ori          a1, s9, -1925
                  addi         s6, a2, 545
                  sra          t1, t6, sp
                  la x29, test_done
                  jalr x0, x29, 0
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
                  add x13, x4, zero
                  csrr x23, 0x300 # MSTATUS
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 31
                  bne x23, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x23, 0x341 # MEPC
                  csrr x23, 0x342 # MCAUSE
                  li x17, 0x3 # BREAKPOINT
                  beq x23, x17, ebreak_handler
                  li x17, 0x8 # ECALL_UMODE
                  beq x23, x17, ecall_handler
                  li x17, 0x9 # ECALL_SMODE
                  beq x23, x17, ecall_handler
                  li x17, 0xb # ECALL_MMODE
                  beq x23, x17, ecall_handler
                  li x17, 0x1
                  beq x23, x17, instr_fault_handler
                  li x17, 0x5
                  beq x23, x17, load_fault_handler
                  li x17, 0x7
                  beq x23, x17, store_fault_handler
                  li x17, 0xc
                  beq x23, x17, pt_fault_handler
                  li x17, 0xd
                  beq x23, x17, pt_fault_handler
                  li x17, 0xf
                  beq x23, x17, pt_fault_handler
                  li x17, 0x2 # ILLEGAL_INSTRUCTION
                  beq x23, x17, illegal_instr_handler
                  csrr x17, 0x343 # MTVAL
                  1: la x29, test_done
                  jalr x1, x29, 0

ecall_handler:    
                  la x23, _start
                  sw x0, 0(x23)
                  sw x1, 4(x23)
                  sw x2, 8(x23)
                  sw x3, 12(x23)
                  sw x4, 16(x23)
                  sw x5, 20(x23)
                  sw x6, 24(x23)
                  sw x7, 28(x23)
                  sw x8, 32(x23)
                  sw x9, 36(x23)
                  sw x10, 40(x23)
                  sw x11, 44(x23)
                  sw x12, 48(x23)
                  sw x13, 52(x23)
                  sw x14, 56(x23)
                  sw x15, 60(x23)
                  sw x16, 64(x23)
                  sw x17, 68(x23)
                  sw x18, 72(x23)
                  sw x19, 76(x23)
                  sw x20, 80(x23)
                  sw x21, 84(x23)
                  sw x22, 88(x23)
                  sw x23, 92(x23)
                  sw x24, 96(x23)
                  sw x25, 100(x23)
                  sw x26, 104(x23)
                  sw x27, 108(x23)
                  sw x28, 112(x23)
                  sw x29, 116(x23)
                  sw x30, 120(x23)
                  sw x31, 124(x23)
                  la x29, write_tohost
                  jalr x0, x29, 0

instr_fault_handler:
                  add x4, x13, zero
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
                  add x4, x13, zero
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
                  add x4, x13, zero
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
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x4, x13, zero
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
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x4, x13, zero
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
                  csrr  x23, 0x300 # MSTATUS;
                  csrr  x23, 0x304 # MIE;
                  csrr  x23, 0x344 # MIP;
                  csrrc x23, 0x344, x23 # MIP;
                  add x4, x13, zero
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
