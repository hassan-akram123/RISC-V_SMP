.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x21, h0_start
jalr x0, x21, 0
h0_start:
                  li x28, 0x40000100
                  csrw 0x301, x28
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x28, mtvec_handler
                  ori x28, x28, 1
                  csrw 0x305, x28 # MTVEC

mepc_setup:       
                  la x28, init
                  csrw 0x341, x28

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x28, 0x1800
                  csrw 0x300, x28 # MSTATUS
                  mret
init:             
                  li x0, 0xd
                  li x1, 0x172e2d9f
                  li x2, 0x80000000
                  li x3, 0x6
                  li x4, 0x0
                  li x5, 0x0
                  li x6, 0x0
                  li x7, 0x1
                  li x9, 0x46f4c371
                  li x10, 0xfa975df7
                  li x11, 0x15893b91
                  li x12, 0xf1d48691
                  li x13, 0xf5eb4bfa
                  li x14, 0x0
                  li x15, 0x0
                  li x16, 0x0
                  li x17, 0xf72c5618
                  li x18, 0x0
                  li x19, 0x80000000
                  li x20, 0x19ff76c0
                  li x21, 0x0
                  li x22, 0xa53853cc
                  li x23, 0x0
                  li x24, 0xc
                  li x25, 0x80000000
                  li x26, 0x0
                  li x28, 0x6
                  li x29, 0x14203134
                  li x30, 0x2
                  li x31, 0xe
                  la x8, user_stack_end
main:             li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           s7, 0xffffffff
                  li           t6, 0x80000000
                  li           s4, 0x3d438db5
                  li           gp, 0x0
                  li           ra, 0xffffffff
                  li           s6, 0xffffffff
                  li           a6, 0x0
                  li           tp, 0xffffffff
                  li           t2, 0x42c4cec6
                  sub          s8, s6, s8
                  sub          tp, ra, t2
                  add          a6, gp, a6
                  add          s8, s8, gp
                  auipc        ra, 201909
                  lui          s7, 972971
                  nop
                  lui          s6, 192490
                  nop
                  sub          s7, gp, a6
                  addi         s4, s8, 734
                  add          t2, s7, s7
                  auipc        ra, 360244
                  addi         tp, gp, -1847
                  addi         gp, a6, 1320
                  sub          s4, tp, ra
                  auipc        tp, 894019
                  auipc        s6, 539462
                  addi         s7, s6, -1991
                  lui          gp, 270193
                  add          s7, tp, tp
                  add          t6, s6, gp #end riscv_int_numeric_corner_stream_1
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           s7, 0xffffffff
                  li           t6, 0x80000000
                  li           s10, 0x177a5bfc
                  li           s3, 0x80000000
                  li           s4, 0x80000000
                  li           t0, 0xffffffff
                  li           t3, 0x0
                  li           a7, 0x0
                  li           a3, 0x80000000
                  lui          s7, 106861
                  nop
                  add          t3, t3, s10
                  sub          s3, s7, a7
                  addi         t3, s7, 2030
                  add          a6, a3, t6
                  auipc        a3, 188865
                  addi         a6, s10, -1157
                  sub          s7, t6, s3
                  addi         t0, a3, 2037
                  nop
                  addi         a6, a7, 119
                  auipc        s4, 411163
                  add          t6, s10, s10
                  auipc        s4, 185384
                  add          s3, a3, t3
                  addi         a6, t0, 146
                  nop
                  add          t3, s3, t3
                  auipc        t3, 425589
                  addi         a6, s4, -1824
                  auipc        s7, 229130
                  add          t6, s10, t0
                  nop
                  auipc        a6, 552504 #end riscv_int_numeric_corner_stream_4
                  li           s9, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           a6, 0x73281df1
                  li           s6, 0xffffffff
                  li           ra, 0x5af50dd
                  li           s10, 0x80000000
                  li           a2, 0x80000000
                  li           gp, 0xffffffff
                  li           tp, 0xffffffff
                  li           s7, 0x80000000
                  li           t5, 0x76467f2d
                  sub          tp, a2, ra
                  addi         tp, s6, -1327
                  nop
                  auipc        gp, 609504
                  sub          tp, s9, s10
                  sub          s6, a2, s10
                  add          s9, t5, t5
                  sub          a6, a6, t5
                  nop
                  add          a2, tp, s7
                  auipc        gp, 48870
                  add          s9, s6, s10
                  lui          s10, 83374
                  lui          tp, 550060
                  nop
                  sub          s9, s7, gp
                  addi         tp, s9, 944
                  nop
                  auipc        a6, 1042672
                  addi         tp, s6, 1908
                  addi         gp, s7, 1322
                  addi         tp, tp, -163
                  auipc        s7, 713998
                  lui          a6, 385138
                  lui          ra, 980250
                  add          tp, a2, tp
                  sub          s7, gp, gp
                  nop #end riscv_int_numeric_corner_stream_12
                  li           t3, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           t2, 0x255b98f8
                  li           s2, 0x80000000
                  li           a0, 0x13964acf
                  li           ra, 0xaf746d85
                  li           s7, 0x0
                  li           a6, 0x80000000
                  li           s9, 0x0
                  li           a5, 0x0
                  li           s1, 0xae0b7eae
                  addi         a6, a0, 372
                  lui          s2, 810200
                  sub          s1, a0, s1
                  nop
                  add          t3, a0, s1
                  nop
                  addi         a0, s2, -913
                  auipc        s1, 1015370
                  add          t2, t3, s9
                  addi         s1, ra, -431
                  sub          a6, s7, ra
                  auipc        s2, 283306
                  add          s1, t3, s7
                  addi         s7, t2, -1565
                  addi         s1, s7, 1109
                  add          s9, ra, s1
                  addi         a5, s9, 1493
                  sub          s1, s2, t2
                  sub          a6, t3, ra
                  nop
                  add          s1, s7, s1
                  addi         s1, s9, 1859
                  lui          t3, 792844
                  lui          s2, 620050
                  addi         s1, s2, -1772 #end riscv_int_numeric_corner_stream_13
                  li           sp, 0x67890b8e #start riscv_int_numeric_corner_stream_0
                  li           t1, 0x80000000
                  li           s10, 0x80000000
                  li           ra, 0xffffffff
                  li           t2, 0xffffffff
                  li           a3, 0xdf7a7206
                  li           a7, 0xffffffff
                  li           s2, 0x8924c9c
                  li           s6, 0xa576a763
                  li           a4, 0x896a78ba
                  add          t1, a3, ra
                  nop
                  addi         a7, sp, 95
                  add          s2, s2, sp
                  add          s10, s10, a3
                  nop
                  lui          t1, 931885
                  lui          s6, 286640
                  auipc        a4, 1016849
                  lui          t2, 995471
                  add          t1, t2, s10
                  nop
                  add          t2, a7, t1
                  nop
                  auipc        s10, 237348
                  addi         t2, sp, 1913
                  lui          sp, 930726
                  add          s6, t1, a3
                  lui          t1, 249304
                  nop
                  nop #end riscv_int_numeric_corner_stream_0
                  li           a4, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           a6, 0x0
                  li           a5, 0xf1b69095
                  li           t6, 0xffffffff
                  li           t5, 0xffffffff
                  li           a0, 0x80000000
                  li           t1, 0xffffffff
                  li           a3, 0x0
                  li           gp, 0x93924fb8
                  li           s6, 0x80000000
                  lui          t6, 495822
                  sub          t6, t5, s6
                  addi         t1, s6, 363
                  add          s6, t1, a3
                  lui          a3, 751757
                  add          t1, a0, s6
                  addi         a3, t1, 686
                  add          t6, gp, t1
                  auipc        a6, 449786
                  addi         t6, a0, 309
                  add          s6, s6, a3
                  nop
                  add          a0, gp, t1
                  auipc        a3, 918599
                  nop
                  lui          gp, 826848
                  nop
                  addi         t5, a3, -1082
                  auipc        t5, 830732
                  addi         t1, a0, -1778
                  sub          a3, a3, a5
                  add          t5, a6, a6 #end riscv_int_numeric_corner_stream_16
                  li           t4, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           s10, 0x80000000
                  li           a2, 0xffffffff
                  li           s1, 0xffffffff
                  li           a5, 0x80000000
                  li           t0, 0x80000000
                  li           sp, 0x80000000
                  li           ra, 0xffffffff
                  li           a1, 0x0
                  li           a4, 0x0
                  addi         a4, s1, -879
                  nop
                  nop
                  lui          sp, 451289
                  lui          a1, 888000
                  auipc        ra, 961359
                  add          s1, s10, ra
                  auipc        a2, 585499
                  lui          a4, 271833
                  auipc        sp, 68951
                  addi         s1, t0, -1314
                  addi         a1, s10, 523
                  sub          t0, sp, a4
                  add          a4, a1, sp
                  lui          a4, 824290
                  add          a5, a5, a2
                  nop
                  add          a5, ra, t4
                  auipc        a1, 972036
                  auipc        s1, 627910
                  addi         ra, s1, -1161
                  add          t0, sp, a4
                  addi         s10, t4, -1453
                  add          a2, t4, sp
                  addi         a2, t4, 1967
                  add          s10, sp, ra #end riscv_int_numeric_corner_stream_11
                  li           a1, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           t4, 0x0
                  li           t0, 0x0
                  li           a3, 0xbbd7ded5
                  li           s7, 0x0
                  li           s10, 0x0
                  li           tp, 0x0
                  li           sp, 0x0
                  li           a4, 0xffffffff
                  li           s1, 0xffffffff
                  auipc        s7, 400379
                  auipc        s7, 924904
                  add          sp, a3, t0
                  addi         t4, a4, -211
                  auipc        a4, 1014132
                  lui          a3, 74456
                  nop
                  auipc        a1, 847034
                  sub          sp, t4, a1
                  sub          a3, s7, a3
                  addi         s10, tp, 1601
                  sub          a1, t4, t4
                  add          tp, s1, t4
                  lui          t4, 434006
                  add          tp, a4, s7
                  add          a3, s1, t0
                  addi         sp, s7, 2019
                  sub          s1, tp, s10
                  lui          t4, 957545
                  sub          a3, a4, s7
                  lui          tp, 450405
                  add          s10, t0, a1
                  auipc        a1, 415620 #end riscv_int_numeric_corner_stream_10
                  li           a1, 0xb3a8c8be #start riscv_int_numeric_corner_stream_8
                  li           tp, 0x80000000
                  li           a4, 0xffffffff
                  li           t5, 0x1899ee5a
                  li           s6, 0x91fcf6a1
                  li           a0, 0x0
                  li           a7, 0xffffffff
                  li           a3, 0x0
                  li           a6, 0x80000000
                  li           t2, 0x0
                  lui          a0, 558127
                  addi         a7, a3, 1267
                  lui          a7, 56200
                  add          a3, a6, a7
                  auipc        a4, 219076
                  auipc        s6, 928695
                  nop
                  add          t2, t5, t5
                  auipc        a4, 511644
                  lui          a0, 90373
                  auipc        t5, 325014
                  auipc        a7, 595583
                  auipc        a3, 120206
                  nop
                  addi         a6, t2, 1830
                  addi         t5, a6, -1351
                  nop
                  addi         a4, t5, 644
                  addi         t5, a3, -887
                  auipc        t5, 98823
                  add          t5, tp, a3
                  sub          a7, a0, t2
                  nop
                  auipc        a0, 549787
                  add          s6, tp, t5
                  nop
                  add          a3, t2, a6
                  add          a0, s6, a6 #end riscv_int_numeric_corner_stream_8
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           a3, 0x0
                  li           t5, 0xc168a25c
                  li           s7, 0xffffffff
                  li           tp, 0xffffffff
                  li           t4, 0x80000000
                  li           t1, 0xffffffff
                  li           s3, 0x0
                  li           a4, 0x80000000
                  li           t3, 0x0
                  lui          a4, 58670
                  auipc        t3, 865352
                  addi         ra, t4, 601
                  auipc        s7, 402712
                  sub          t3, a4, t3
                  lui          s7, 549110
                  nop
                  sub          s3, s3, t5
                  addi         ra, ra, 286
                  auipc        a3, 336173
                  addi         tp, ra, 220
                  addi         tp, t1, 1041
                  lui          ra, 182273
                  addi         ra, ra, -1387
                  addi         t1, a3, -720
                  addi         a4, ra, 1212 #end riscv_int_numeric_corner_stream_14
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_2
                  li           a7, 0x80000000
                  li           gp, 0xffffffff
                  li           s6, 0x80000000
                  li           a0, 0x80000000
                  li           s4, 0x7eba222d
                  li           t0, 0xffffffff
                  li           s3, 0x72f80ce6
                  li           a1, 0x2be68a38
                  li           s2, 0x0
                  lui          s6, 928401
                  lui          s3, 128825
                  auipc        s4, 465315
                  nop
                  add          gp, s3, a1
                  sub          a7, s3, a0
                  nop
                  sub          s2, s6, t0
                  addi         sp, gp, -1052
                  add          s4, s6, a1
                  lui          s4, 758819
                  sub          a1, a1, a7
                  addi         gp, s2, -676
                  add          s3, sp, s6
                  sub          gp, t0, s3
                  auipc        sp, 867323
                  auipc        gp, 49691
                  add          s2, s6, a7 #end riscv_int_numeric_corner_stream_2
                  slli         t1, s5, 1
                  sub          s8, s7, tp
                  xori         s1, a0, -198
                  and          s10, a1, s9
                  sub          s10, t4, t6
                  or           zero, s8, t5
                  sll          s3, t2, ra
                  lui          t0, 87951
                  ori          a4, a3, 415
                  sltu         sp, s11, a4
                  srl          t5, s0, s1
                  ori          t4, s3, -1492
                  addi         a3, s9, 871
                  slt          a7, sp, t3
                  and          s2, a4, s7
                  srl          t3, gp, tp
                  or           t4, a2, s2
                  and          t4, s2, t4
                  sll          a2, a7, s10
                  slli         a2, tp, 23
                  srl          t1, s8, tp
                  slti         a5, a6, 375
                  xori         s10, t5, -1182
                  xori         a7, t6, -732
                  sra          s2, a4, s6
                  slli         gp, t4, 21
                  sltu         t1, zero, s11
                  addi         s4, s6, -332
                  sltiu        tp, gp, 612
                  srl          a5, a2, t6
                  lui          a1, 876977
                  add          s9, gp, s11
                  srai         s10, t4, 13
                  sltiu        a5, s4, -1056
                  slli         s3, s3, 29
                  srl          a3, a6, s10
                  sra          s7, s2, a5
                  srli         t5, a7, 31
                  slli         s2, tp, 14
                  ori          tp, s8, 1220
                  lui          a1, 932519
                  sltu         s3, s4, a2
                  srl          t4, t0, s10
                  auipc        a0, 73931
                  or           a7, s2, a1
                  addi         s6, t4, -1137
                  srli         a1, s1, 20
                  sll          s1, s8, gp
                  slli         a7, a1, 6
                  auipc        s10, 330697
                  slli         gp, t4, 14
                  sltu         a0, gp, a7
                  srl          a0, a7, s7
                  sub          s10, s9, s11
                  andi         s8, s4, -93
                  add          t1, t3, a1
                  sll          a2, s1, ra
                  sltu         a3, a1, a2
                  add          s6, a6, s10
                  ori          t3, t4, 1136
                  sltiu        t4, ra, -1466
                  lui          s1, 453432
                  xori         a1, s5, -1186
                  sll          s6, a2, t1
                  sub          t0, t6, ra
                  sltu         t6, s7, t5
                  sltu         zero, s3, s2
                  lui          s7, 660705
                  slli         s7, t3, 28
                  addi         t4, s10, -1334
                  sra          tp, zero, s1
                  and          t3, s8, tp
                  lui          ra, 198708
                  and          a0, s8, s9
                  xor          a1, s0, a7
                  or           a1, t6, tp
                  sltiu        sp, s8, -1261
                  ori          s2, s8, -841
                  addi         t4, s0, 1864
                  slti         a5, s10, -21
                  ori          a6, t2, -275
                  nop
                  sltiu        t3, t2, -428
                  and          t1, a2, t2
                  nop
                  xor          a0, t6, t4
                  xor          s10, gp, a4
                  sra          zero, t1, t6
                  srl          a0, s5, a4
                  sltiu        t2, s2, -112
                  srl          zero, t4, s6
                  slt          t2, s0, t0
                  add          t6, a2, ra
                  sltu         t3, s4, s11
                  sltiu        s6, s10, -1818
                  xori         tp, a2, -1084
                  xori         t4, a1, 172
                  sra          gp, a6, s1
                  auipc        a0, 849266
                  ori          t5, t3, -1881
                  xori         t1, s0, 1582
                  sltiu        a4, s0, 120
                  xori         s9, s10, 1310
                  add          tp, sp, a6
                  srl          t4, t2, a2
                  auipc        t2, 319145
                  and          t6, s8, a2
                  sll          a6, a0, a7
                  sub          s6, t2, s10
                  xor          s9, s10, t4
                  srl          ra, s11, zero
                  srl          a1, t5, a6
                  srli         s1, t4, 18
                  srai         a0, a3, 22
                  add          zero, zero, a5
                  add          a0, t3, s10
                  sll          s3, s6, a0
                  nop
                  sltu         a3, s11, t0
                  srai         a1, s3, 23
                  sll          t4, s3, a5
                  auipc        a0, 688383
                  lui          s2, 450790
                  slli         tp, t1, 20
                  srai         t6, s5, 29
                  sub          a4, gp, s2
                  sll          t4, s6, a4
                  andi         s8, a2, 125
                  sltiu        ra, a0, -785
                  sub          s7, a6, a2
                  or           t5, ra, tp
                  nop
                  sll          gp, s2, a1
                  or           t1, s2, s2
                  slli         a6, t3, 14
                  lui          ra, 83853
                  sub          t1, tp, s2
                  srli         ra, s5, 21
                  sra          a4, t6, s3
                  xori         s9, s1, -475
                  lui          s1, 941244
                  xori         ra, s8, -895
                  lui          s9, 385384
                  or           t5, t3, s10
                  ori          a3, zero, -451
                  sltu         a1, t4, a0
                  xori         sp, tp, -441
                  slti         t6, a2, -861
                  add          t2, s6, a1
                  xori         s8, s6, 203
                  andi         a3, a7, -894
                  sltiu        s6, s10, -1396
                  addi         s1, s4, -2038
                  slt          s7, t4, s11
                  sub          s6, t6, s2
                  auipc        t5, 649309
                  or           a7, t5, t4
                  srli         s1, s4, 22
                  xori         zero, s5, -1463
                  slt          sp, ra, s8
                  srl          a2, s4, s7
                  sltu         ra, a3, t3
                  slli         t2, s2, 30
                  xori         a4, s6, 283
                  and          s7, t6, t1
                  sub          s3, a7, s5
                  slt          zero, s7, a0
                  lui          a4, 984150
                  lui          s9, 735242
                  addi         gp, ra, 560
                  ori          s6, s8, -1015
                  sltiu        s9, a3, -878
                  slli         s9, zero, 9
                  sltiu        ra, t1, 1048
                  add          zero, a1, s5
                  and          s2, s9, s6
                  xor          s9, a0, a4
                  slli         a1, s6, 21
                  add          a2, a0, a5
                  lui          a0, 127891
                  and          t1, s2, t2
                  add          gp, ra, a1
                  sltu         ra, s9, s7
                  slli         gp, s4, 24
                  xor          t2, s8, t4
                  sltu         a4, tp, t3
                  lui          ra, 744962
                  addi         zero, t5, 950
                  and          s6, t3, a5
                  slt          t5, s1, gp
                  and          s2, t3, s10
                  sltu         ra, s4, s6
                  andi         t4, t3, -673
                  andi         t3, s10, -1988
                  andi         a6, s8, -401
                  lui          s1, 710546
                  andi         a5, t0, -1941
                  slli         a3, a6, 29
                  addi         t3, s8, -1312
                  andi         a4, a5, -2031
                  sll          t6, t0, a2
                  and          a7, t0, tp
                  or           tp, a5, a7
                  lui          t2, 990778
                  nop
                  auipc        s2, 228122
                  ori          s3, a3, 1671
                  auipc        t2, 258090
                  slti         sp, t6, 324
                  slt          s1, a7, t2
                  add          gp, s3, s4
                  lui          s9, 488555
                  srl          s6, a3, s9
                  andi         s7, a1, -1771
                  sub          t6, a4, a5
                  sltiu        t2, gp, -1905
                  xor          s2, s2, s1
                  xori         s10, t1, -203
                  sltu         s2, s0, s11
                  xor          ra, ra, t3
                  slt          gp, t1, t5
                  andi         a2, s0, -1106
                  slt          sp, sp, t0
                  nop
                  nop
                  ori          a0, a2, -1550
                  sltu         t6, zero, s7
                  andi         s8, s7, 1710
                  lui          a1, 124236
                  sra          a0, t4, s7
                  and          a0, ra, t0
                  slti         s9, s4, 1020
                  sll          a5, ra, tp
                  nop
                  sll          a3, a6, t0
                  andi         s2, zero, 743
                  andi         sp, a2, 466
                  nop
                  or           s8, s3, s5
                  andi         a7, t6, 125
                  srli         ra, ra, 11
                  or           s9, s8, s1
                  andi         a3, s4, -802
                  slt          a3, s1, a4
                  addi         s10, a0, 1519
                  xori         t3, t1, -1799
                  slti         s9, a4, -1460
                  srai         tp, t6, 18
                  auipc        s2, 68442
                  slt          ra, t3, a4
                  and          sp, t5, a2
                  or           s1, s4, s4
                  or           a3, gp, a1
                  or           t5, t5, s0
                  auipc        ra, 741360
                  or           sp, sp, s5
                  lui          t5, 455096
                  srai         s1, s8, 4
                  xor          a5, t1, s2
                  auipc        s8, 775358
                  sltu         sp, a1, t4
                  and          sp, s0, a6
                  and          t1, s8, s4
                  srai         s3, a4, 5
                  nop
                  ori          gp, t6, 983
                  andi         a3, a1, 516
                  slt          a0, a7, t0
                  slli         t1, t4, 9
                  and          s9, t1, s3
                  addi         s2, gp, -143
                  slti         t0, t3, -881
                  sub          a3, s9, s2
                  srai         ra, s6, 19
                  addi         t2, t5, 1448
                  and          a7, a3, s9
                  sub          s4, s5, zero
                  sltu         s2, s0, t2
                  xor          a6, s5, s10
                  sltiu        zero, t2, -765
                  srli         s4, t3, 23
                  sltu         s6, s8, s11
                  slli         s9, a1, 7
                  srai         t2, zero, 27
                  slli         ra, t3, 25
                  srl          a6, a5, gp
                  lui          zero, 549799
                  srl          s8, t2, s9
                  slti         a0, t6, 1457
                  sra          t3, a5, ra
                  sltiu        a5, s6, -1799
                  slti         a0, s5, -1954
                  sltiu        t1, ra, -370
                  addi         sp, a0, 1718
                  auipc        t3, 879548
                  sra          gp, t5, t6
                  auipc        t2, 136788
                  lui          t1, 89883
                  and          a4, zero, s5
                  add          t3, s1, s2
                  nop
                  srli         s3, s9, 13
                  nop
                  xori         s9, sp, 492
                  or           zero, s9, s1
                  slti         s10, s9, -2026
                  srai         t4, t5, 4
                  xori         a7, a1, 363
                  ori          s8, gp, -448
                  xori         t1, s10, -1518
                  slli         s2, s9, 2
                  slli         s3, a2, 31
                  sltu         s2, t6, t3
                  sltiu        t4, s10, 1845
                  slt          t3, s3, a0
                  xori         t5, s7, 963
                  srai         a6, t5, 9
                  sltu         a4, s2, s9
                  slti         zero, s5, 1319
                  sra          t6, s5, s3
                  xori         t0, t0, 862
                  slli         s9, a7, 28
                  ori          t4, t0, -1492
                  slti         t2, s7, -300
                  andi         s3, ra, 1869
                  addi         s2, s1, 1766
                  xor          t0, t5, s8
                  slti         t0, a7, -1875
                  sll          t1, a1, s0
                  xor          s8, s10, tp
                  srai         a6, t3, 23
                  xor          s1, s6, a5
                  lui          s8, 968884
                  add          a7, a7, sp
                  srai         t2, s9, 8
                  slli         s1, ra, 9
                  srai         ra, s6, 8
                  add          s2, s0, t0
                  sll          s2, tp, s9
                  srl          zero, s10, a1
                  slti         s10, a4, 37
                  xori         t5, sp, 887
                  slti         a1, s9, 582
                  sra          s9, a2, s9
                  addi         sp, a5, -1807
                  sltu         a4, a6, t1
                  xor          s2, s7, t3
                  lui          a1, 19577
                  auipc        a5, 1033204
                  and          s1, s10, a3
                  sll          s2, gp, a6
                  addi         s6, zero, -123
                  auipc        s9, 803925
                  auipc        a0, 1044535
                  nop
                  xori         tp, t6, -899
                  add          sp, s2, s3
                  or           gp, a4, s8
                  xori         s2, s6, 1530
                  slt          ra, a0, a0
                  srl          a3, t3, s1
                  sltu         a7, gp, t5
                  xori         s10, zero, -1449
                  sltiu        a0, s9, 1379
                  lui          zero, 468655
                  addi         tp, s8, 366
                  andi         a5, a7, 1358
                  and          sp, a3, ra
                  srli         s4, s1, 18
                  andi         a5, s9, -1861
                  sll          s2, s10, a5
                  nop
                  slli         a0, a0, 4
                  andi         s8, a7, 1870
                  and          s4, tp, a2
                  add          a7, tp, s11
                  sub          s6, a7, s1
                  sub          s6, a5, s9
                  srli         s7, t2, 24
                  slli         s6, tp, 8
                  lui          s10, 764077
                  add          s6, t0, a1
                  slli         t5, ra, 13
                  xor          a3, sp, s2
                  add          ra, s6, gp
                  lui          sp, 778669
                  srai         s6, a0, 19
                  addi         a6, s2, -1417
                  sra          a2, a2, a7
                  addi         s8, a4, 1100
                  andi         s1, s8, 664
                  auipc        s4, 768836
                  ori          t5, a7, -1161
                  slt          t2, s4, t3
                  srli         s10, s0, 19
                  nop
                  sltu         t1, a2, s11
                  slt          a0, a5, t6
                  slt          t1, a3, t2
                  sltu         s6, t2, a2
                  sub          a6, zero, s3
                  lui          t1, 177026
                  auipc        zero, 153880
                  addi         tp, s3, 825
                  srli         s6, a7, 8
                  slli         t6, a7, 17
                  auipc        s3, 942734
                  srli         gp, tp, 28
                  lui          s10, 301562
                  auipc        s1, 594135
                  lui          s9, 279109
                  srli         t4, t3, 2
                  sltiu        a6, gp, 1175
                  slti         tp, a2, -1029
                  and          s6, s11, a6
                  sub          a3, a6, s8
                  andi         t6, a6, -1048
                  nop
                  nop
                  or           s2, t1, s0
                  and          s9, s4, t1
                  addi         t0, a4, 1783
                  addi         s6, s11, 170
                  srl          a2, sp, a7
                  slli         s6, sp, 28
                  sra          s6, s1, a3
                  or           s4, zero, s7
                  srli         s1, t4, 16
                  xor          t6, sp, a5
                  ori          s9, s2, 531
                  sltiu        tp, a0, -1964
                  or           a1, t5, t4
                  ori          t6, a4, -980
                  xori         ra, t5, 1568
                  sll          t2, s1, s9
                  xori         s1, a1, 1538
                  slli         t3, tp, 26
                  auipc        t6, 25719
                  ori          s4, s1, 1375
                  sll          t0, s3, a6
                  srl          s9, sp, s10
                  sltiu        tp, a5, -2018
                  xori         s1, ra, 922
                  slt          tp, a1, s8
                  add          t0, a5, gp
                  xori         s3, s1, -462
                  srli         t2, t6, 3
                  auipc        s1, 308326
                  nop
                  slt          a2, s7, t4
                  sltiu        s8, s6, 1059
                  andi         s7, s7, 7
                  addi         sp, t1, 1680
                  add          s10, s8, a0
                  slti         s4, s4, -51
                  slli         a2, s7, 27
                  add          s1, t3, t3
                  srli         s9, t3, 21
                  nop
                  sll          s7, s4, s9
                  or           sp, s4, a1
                  slti         sp, t2, -1100
                  srl          gp, t5, tp
                  sltiu        gp, t1, -1676
                  auipc        s8, 627212
                  and          s4, s9, s4
                  ori          s6, a7, 292
                  slli         a4, a2, 6
                  sub          s10, t5, a2
                  sll          ra, s1, a0
                  srl          a1, a4, t6
                  ori          t3, s4, -984
                  and          s2, t4, s0
                  addi         t1, s11, 1431
                  auipc        t6, 271196
                  sub          zero, gp, t6
                  auipc        s2, 802840
                  auipc        a2, 345283
                  sra          s6, a1, a0
                  sltu         t3, t3, s8
                  srl          t4, s4, s8
                  or           s9, t6, s5
                  nop
                  andi         a5, a7, 16
                  add          t6, a5, t2
                  slt          tp, t1, s4
                  srai         s3, a2, 24
                  nop
                  srl          a7, a1, s3
                  slt          a4, a5, gp
                  or           a5, s10, t4
                  slli         t3, zero, 14
                  add          ra, a5, t1
                  add          tp, s3, s10
                  slt          a5, a6, s10
                  slti         t0, t3, -764
                  sltu         t0, s0, t2
                  sub          a3, a5, a6
                  ori          a5, s7, -543
                  xori         a5, s5, -1244
                  add          s10, a3, a6
                  and          a0, sp, t3
                  ori          sp, s1, 20
                  and          t5, gp, a4
                  nop
                  sltiu        a7, t1, 1117
                  ori          t5, a0, 724
                  sll          gp, s3, a0
                  add          ra, a7, a2
                  ori          s7, s10, -756
                  nop
                  addi         a4, t4, -1503
                  srli         s7, sp, 13
                  or           a1, tp, s5
                  or           a0, a0, t6
                  sltu         a3, t2, a4
                  srli         s8, t6, 24
                  lui          a1, 423617
                  andi         ra, s6, -416
                  sltiu        t6, s9, 1189
                  nop
                  slli         a3, a4, 24
                  srai         t0, s2, 20
                  or           t3, t4, s1
                  sltu         a4, s5, tp
                  srai         a5, t3, 11
                  and          t5, s9, s1
                  sltu         a7, s8, t6
                  lui          s3, 668725
                  nop
                  xor          s9, s3, t4
                  auipc        t2, 900747
                  andi         zero, s8, -1257
                  add          t1, s3, s11
                  srl          s8, t1, tp
                  xor          t1, s5, s10
                  lui          a5, 1006115
                  add          t6, a3, tp
                  srli         zero, a2, 22
                  nop
                  add          a5, ra, a6
                  srl          s4, ra, t5
                  lui          tp, 31265
                  or           t0, s8, a1
                  andi         a6, s8, 369
                  srli         t5, s5, 11
                  slt          a1, s3, s9
                  sub          s9, a5, tp
                  slli         t4, s10, 0
                  and          a0, a2, t4
                  slti         s8, t6, 750
                  srai         t0, sp, 15
                  xor          s8, a7, a6
                  srai         a5, gp, 29
                  or           t5, s0, s4
                  srai         t1, s8, 3
                  slti         ra, s8, 1317
                  auipc        s4, 978392
                  and          a2, s2, t6
                  srai         s6, a7, 29
                  nop
                  lui          s7, 1042177
                  and          ra, t6, s1
                  slti         t0, s1, 704
                  slli         a3, t2, 4
                  slt          a3, s4, t2
                  or           gp, a3, s5
                  sub          a0, a3, s7
                  ori          s6, a2, 1137
                  or           t6, s10, t1
                  sub          t0, s6, t0
                  sltu         t5, s6, a4
                  andi         t4, s8, 873
                  srai         a3, sp, 16
                  nop
                  srl          s3, sp, t3
                  ori          tp, a5, 792
                  slt          s8, s6, tp
                  sll          gp, s3, s8
                  slt          a3, s1, t2
                  slti         zero, tp, 2020
                  auipc        t2, 355293
                  srl          zero, t2, t6
                  slli         s10, s7, 5
                  nop
                  lui          a5, 907176
                  sll          t6, s9, s1
                  addi         a6, s6, -871
                  srai         s10, s6, 19
                  srl          ra, s3, a6
                  and          a4, s0, a7
                  nop
                  sub          t0, s11, s4
                  srai         t5, tp, 27
                  slt          s7, s2, s10
                  andi         t0, a4, 636
                  xor          t2, s0, a6
                  sll          tp, s4, s8
                  sub          a4, t1, t1
                  sra          a3, tp, sp
                  sub          zero, s2, s5
                  sll          s1, a6, t1
                  xori         a3, zero, 505
                  sub          s1, s2, s2
                  or           s3, t2, s6
                  sltu         s4, a0, s11
                  ori          s8, t4, -470
                  nop
                  slti         s10, t5, -274
                  sltiu        a4, a1, 9
                  srl          a1, sp, s3
                  sll          zero, s0, s2
                  srai         t3, a7, 17
                  ori          s3, a4, 869
                  ori          gp, s4, -122
                  sll          s7, s0, t2
                  sltu         a5, s2, s2
                  srl          a2, sp, a6
                  xori         s2, t2, -570
                  sltu         a5, s7, s5
                  or           a0, sp, s7
                  xori         a0, sp, -229
                  sltu         s8, a6, t2
                  slt          a0, s0, t6
                  sub          sp, a7, t2
                  sltu         a3, t6, tp
                  lui          s1, 556620
                  or           s3, t1, a0
                  or           sp, s0, s4
                  andi         a2, a3, -1701
                  srli         t2, s6, 2
                  slt          a6, gp, s10
                  sll          ra, s9, zero
                  sltiu        s9, ra, 1998
                  slti         a0, gp, 1326
                  nop
                  and          a3, tp, s1
                  or           s8, a2, gp
                  sra          s2, s7, t3
                  sll          a3, t3, a2
                  sll          s2, s7, s3
                  slli         a1, s1, 9
                  auipc        t1, 850681
                  nop
                  slli         ra, a7, 6
                  srli         t2, s3, 16
                  sltu         t5, a0, s8
                  slli         a1, a4, 17
                  add          t3, a6, sp
                  srl          s3, a0, gp
                  lui          sp, 171380
                  sub          s7, a1, a5
                  sub          t5, s6, s0
                  nop
                  slli         gp, s0, 18
                  ori          s2, t5, 1862
                  auipc        a2, 385179
                  auipc        s9, 228436
                  nop
                  slt          s6, a2, sp
                  slti         s7, s2, -2043
                  slti         s8, s6, 1230
                  slt          s9, t0, t6
                  or           s8, a3, s3
                  srli         gp, tp, 8
                  auipc        s1, 789941
                  slti         gp, s2, 714
                  srli         t3, gp, 6
                  xori         a5, s3, -1776
                  andi         s2, tp, -605
                  and          s3, t1, s7
                  srl          zero, t4, a0
                  xori         s9, sp, 568
                  addi         s7, s1, 1776
                  andi         a5, s2, -196
                  sltu         s4, a4, a4
                  add          s7, s5, a2
                  or           s1, ra, s1
                  nop
                  sra          gp, gp, a6
                  ori          gp, sp, 1159
                  add          tp, t5, t1
                  addi         a7, t5, -1131
                  auipc        s8, 100624
                  addi         a3, t6, 1828
                  slli         s2, a1, 22
                  add          s6, s3, a2
                  andi         t6, t2, 1680
                  lui          t5, 892799
                  srai         s7, t2, 21
                  and          t6, a4, s3
                  sll          a3, a7, tp
                  sra          s8, s3, tp
                  or           t6, gp, a6
                  sltiu        a3, s4, -1752
                  xori         a4, s3, 1374
                  xori         zero, s10, -417
                  addi         s9, t4, -1130
                  add          t0, a5, t3
                  slli         t3, a4, 18
                  sltu         s9, s5, a4
                  xor          a5, t0, zero
                  sltiu        a5, s9, 2045
                  xor          zero, gp, s1
                  add          sp, s9, s2
                  sra          s9, s2, a6
                  nop
                  sltu         ra, a6, s9
                  sub          s10, gp, s8
                  slli         s4, a7, 18
                  ori          tp, s11, -1318
                  or           ra, s8, s1
                  sub          t5, s2, t3
                  sll          s2, s2, s1
                  add          a0, a7, a0
                  add          a4, a2, t1
                  xori         s9, t1, -979
                  sll          s3, t5, a2
                  xor          ra, s8, t3
                  sll          sp, s7, a0
                  lui          a2, 482844
                  sll          a7, a6, a3
                  srli         a7, a2, 3
                  nop
                  slli         s9, s4, 23
                  srai         s9, tp, 1
                  xori         zero, s8, -2036
                  add          ra, s6, a3
                  sra          sp, a4, sp
                  slti         a3, s4, -414
                  auipc        a6, 483840
                  lui          gp, 10400
                  add          s10, t4, a7
                  slti         t4, s1, 229
                  addi         s4, a1, -821
                  lui          t0, 861712
                  srai         s6, s6, 1
                  nop
                  sltiu        t6, gp, -1049
                  sltu         s10, a1, a2
                  addi         zero, s4, -1126
                  auipc        a6, 269447
                  slti         s6, t3, -1555
                  ori          a0, s11, 445
                  xori         a4, s8, -1632
                  ori          a3, s9, -2006
                  srli         zero, a3, 13
                  sra          s2, s0, s7
                  srli         sp, t5, 26
                  addi         s8, ra, 48
                  or           gp, s3, sp
                  add          gp, s10, a3
                  addi         s1, s3, 622
                  srl          a2, a5, s11
                  lui          s2, 866969
                  xori         t5, a7, -1103
                  slti         a0, tp, -1289
                  srai         a7, a6, 6
                  xor          s10, tp, t1
                  srai         gp, t3, 4
                  sll          a3, a6, s1
                  sub          t6, t6, s6
                  slti         a6, s8, -1719
                  slti         zero, zero, 312
                  addi         t0, t1, -730
                  and          s4, a2, s2
                  slli         t6, s3, 21
                  sll          t6, a3, t0
                  sra          s9, t6, sp
                  andi         a2, t4, -195
                  xori         zero, s3, -1330
                  add          s6, ra, a3
                  andi         s6, t4, 198
                  andi         t4, ra, 763
                  slt          t0, t0, s6
                  lui          a7, 639248
                  and          s2, s11, a5
                  sltu         s1, t5, a5
                  srai         t3, s3, 24
                  srl          zero, s0, a6
                  ori          a4, s2, 701
                  and          t5, s2, a0
                  slli         t1, s5, 6
                  lui          s6, 859669
                  srli         a4, s0, 10
                  add          s7, t2, s9
                  add          a5, s4, t4
                  lui          t5, 296783
                  auipc        a3, 393463
                  slli         a7, t2, 26
                  auipc        s1, 862527
                  andi         ra, t1, 309
                  andi         s9, a3, 916
                  slti         t6, s5, -1940
                  srli         zero, s3, 31
                  sub          a5, s7, a6
                  ori          t6, s2, -1683
                  ori          s3, sp, 389
                  andi         t3, s9, 1037
                  add          t0, a1, t2
                  auipc        t0, 499593
                  add          t2, a3, s9
                  ori          s2, t2, 1274
                  or           s4, s1, s0
                  lui          t5, 119418
                  sll          zero, t5, s7
                  nop
                  andi         a7, t4, 1547
                  sub          a5, t2, s11
                  srai         s6, t5, 18
                  sra          s10, a7, tp
                  xori         s8, t4, 1725
                  addi         s7, a2, -217
                  xori         s1, t0, -1942
                  srli         t2, s8, 20
                  xor          a3, s3, s4
                  add          s3, a1, tp
                  xor          a5, s5, zero
                  sltu         s1, a1, s11
                  xori         t6, sp, -1650
                  sltu         t3, t5, sp
                  sra          t6, s1, a6
                  slt          sp, s1, s1
                  nop
                  and          s8, s7, s8
                  srl          a4, t1, s11
                  addi         s6, sp, 1619
                  addi         a7, a1, -1014
                  sra          gp, s8, s9
                  slti         s1, s9, 1532
                  or           s4, s2, s10
                  nop
                  sltu         s4, a0, a3
                  xori         s6, sp, -1334
                  slti         a7, sp, 961
                  slli         a2, a0, 11
                  ori          t0, a3, 670
                  or           s10, s0, t6
                  xor          s6, s0, s6
                  sub          s7, sp, t6
                  ori          ra, s6, 4
                  and          a0, s9, ra
                  auipc        t5, 520215
                  sra          a7, s1, t3
                  ori          zero, t5, -2000
                  ori          a5, a1, 1288
                  srl          a3, t4, ra
                  addi         s7, zero, -2015
                  slt          a5, s10, ra
                  and          s4, s7, t2
                  slti         a2, sp, 531
                  slti         t0, t2, -1438
                  xori         a3, gp, 565
                  andi         s9, t4, -1723
                  auipc        gp, 445406
                  sltu         t5, t4, zero
                  addi         t5, gp, -1798
                  sltiu        s4, gp, -669
                  ori          t5, t2, 50
                  lui          t0, 210370
                  sltiu        a1, t3, -621
                  auipc        s6, 297865
                  nop
                  addi         zero, s5, -479
                  addi         s6, s0, -1111
                  sll          s4, s11, a5
                  auipc        gp, 474252
                  srl          tp, t3, a5
                  xori         a2, s9, 1301
                  sltiu        a0, a3, 1661
                  xor          t4, t0, a2
                  addi         gp, a6, 95
                  srai         gp, t0, 2
                  sltu         ra, s5, a1
                  slt          s9, s5, t0
                  sra          t4, s8, a4
                  sltiu        ra, s8, -1821
                  srl          s9, sp, a7
                  sra          t5, s10, s6
                  srli         a7, gp, 20
                  xori         ra, t2, -1703
                  add          t5, a3, s3
                  lui          s8, 90362
                  sltiu        s2, a1, 814
                  lui          s3, 32495
                  ori          t0, s5, -432
                  andi         a3, s7, -1460
                  slt          a7, sp, tp
                  slt          a3, s3, sp
                  sltiu        ra, gp, -1560
                  xori         ra, a5, -587
                  slt          s6, sp, s6
                  ori          s4, a0, 431
                  sltiu        zero, s5, -52
                  srl          a1, s1, t6
                  and          sp, t0, s9
                  andi         sp, s11, 1208
                  slt          t5, ra, s0
                  nop
                  lui          ra, 708669
                  sub          s7, s2, s0
                  add          a6, t3, s9
                  xor          t5, s9, sp
                  srl          a1, t0, s1
                  or           a1, t4, s3
                  ori          s1, t0, -455
                  slt          s8, t0, t4
                  slt          s1, t1, s5
                  sltu         t3, s2, s8
                  nop
                  add          a3, a3, t2
                  sltu         s10, s9, a4
                  andi         a2, s11, 1165
                  sltiu        t1, tp, 762
                  ori          gp, t5, -1996
                  lui          s10, 1046541
                  srai         t6, t0, 22
                  sll          t3, a0, t0
                  srli         gp, t0, 0
                  slli         a0, a0, 14
                  add          s3, s3, a7
                  add          s10, t2, t2
                  sra          t3, t2, a5
                  slti         s4, ra, -213
                  srl          s9, a0, ra
                  sll          s6, t2, t5
                  slli         t1, s5, 28
                  slli         s7, t5, 20
                  xor          s1, s8, ra
                  auipc        s7, 378739
                  and          a5, a6, gp
                  xor          t2, s6, t6
                  srli         tp, s1, 11
                  slti         s2, s3, -326
                  nop
                  sub          gp, s9, sp
                  addi         sp, t5, -1697
                  and          zero, s6, t2
                  lui          t6, 168517
                  slli         a1, s7, 16
                  srl          sp, a7, s1
                  srai         t1, t1, 30
                  add          s2, s6, tp
                  auipc        a1, 642132
                  addi         a0, s11, -1057
                  sltu         a4, t0, s3
                  add          s8, ra, gp
                  srli         t3, a2, 20
                  srl          a5, gp, s2
                  and          ra, s6, a7
                  andi         s8, s4, 627
                  srai         ra, a2, 20
                  and          sp, a1, a0
                  sub          t4, s3, s8
                  or           s9, t0, s11
                  sltu         a2, a4, s7
                  sll          t1, t3, ra
                  auipc        t0, 556402
                  srli         t1, a5, 27
                  sub          gp, t3, t3
                  xori         t0, t2, -1158
                  srli         a2, a3, 10
                  ori          t3, a6, 1438
                  sltiu        s10, a1, -441
                  srli         t3, s8, 22
                  nop
                  xori         a2, s2, -1731
                  add          s4, a2, a6
                  slti         a2, s4, -864
                  lui          a2, 72866
                  or           t0, s1, s9
                  auipc        a6, 1028643
                  slti         ra, t2, -1544
                  sub          gp, zero, s10
                  sub          a0, a5, a6
                  add          t3, a1, t0
                  sltu         s3, t5, s8
                  auipc        s6, 1048075
                  sra          ra, zero, s3
                  srl          a3, s1, t5
                  sltu         tp, s5, t1
                  xori         s6, s9, -1315
                  sra          t5, t4, t4
                  auipc        t0, 914668
                  slti         t5, s4, 1987
                  slli         ra, a1, 2
                  sltiu        a7, s3, -1364
                  xori         s8, ra, -157
                  slti         s10, a1, 332
                  sub          a5, t6, t3
                  auipc        t6, 261452
                  add          t2, ra, t4
                  slti         tp, t0, 104
                  srl          t4, a6, s9
                  sll          s9, s10, t1
                  slti         gp, s1, -1938
                  and          t4, s9, ra
                  sltu         s1, a6, a3
                  sltu         sp, a0, a0
                  sltiu        tp, gp, -539
                  or           a3, zero, a2
                  auipc        s7, 720604
                  sll          t5, a2, ra
                  xori         t5, s10, 1639
                  slli         t4, t2, 5
                  srli         a1, s7, 15
                  slt          a4, s11, ra
                  srai         ra, a4, 0
                  lui          s7, 448206
                  slti         s6, a1, 522
                  sltu         a4, a7, s1
                  srl          t5, s9, s7
                  sub          s4, t2, t0
                  and          gp, a1, s1
                  sub          ra, s4, t4
                  lui          a7, 796649
                  or           s9, zero, zero
                  srl          s4, a1, s6
                  sub          t3, s11, s7
                  slt          s3, sp, a4
                  nop
                  add          ra, t4, a2
                  or           sp, sp, s10
                  xori         s3, s10, 1545
                  sltiu        s4, t4, 1058
                  xor          a2, s0, s6
                  slli         s7, s7, 3
                  addi         tp, gp, 425
                  slli         t2, a0, 23
                  andi         s9, a4, -1373
                  ori          t0, s2, 1468
                  srl          t2, s4, t6
                  or           sp, a0, s5
                  srli         s1, t6, 0
                  auipc        a1, 736104
                  nop
                  and          sp, s10, t4
                  sltiu        a5, s7, 1669
                  sll          zero, s0, s6
                  slt          a3, s1, tp
                  andi         zero, sp, -1042
                  slli         a1, s7, 28
                  andi         ra, s2, -789
                  ori          sp, s9, 1044
                  sltiu        a5, s6, -556
                  lui          s6, 427342
                  srai         t5, a1, 18
                  srai         s7, s2, 19
                  slli         t2, s11, 7
                  lui          t5, 259937
                  nop
                  sra          gp, s1, a0
                  sll          a7, s9, s8
                  sltu         a0, s11, s4
                  slti         s6, a2, 1147
                  and          a4, ra, zero
                  sub          a7, a3, a5
                  srl          t3, s2, a7
                  slt          a5, zero, t1
                  or           s8, s10, ra
                  sra          gp, t6, s9
                  add          s1, t6, t4
                  or           a7, s3, a1
                  xor          t3, s8, s0
                  add          a4, a4, t5
                  add          t6, s0, s2
                  sltu         a5, a5, a4
                  srai         t4, gp, 9
                  add          a7, t1, a0
                  or           a4, s5, t2
                  srai         s1, s7, 20
                  ori          a4, tp, -1866
                  slli         s6, s5, 20
                  nop
                  nop
                  sra          t3, sp, a7
                  srai         a4, a3, 6
                  sll          t1, a5, s4
                  ori          t4, s10, 373
                  andi         s9, t5, -1225
                  sltu         a6, tp, a0
                  andi         a0, s10, -625
                  srai         s6, t4, 9
                  slt          s6, s8, a7
                  xori         zero, t6, 1305
                  slt          sp, tp, a6
                  nop
                  xor          tp, s1, s5
                  xori         gp, gp, 759
                  sub          a5, s4, s7
                  slli         a0, s3, 21
                  sub          zero, sp, t5
                  andi         s2, a4, -343
                  srli         a5, s7, 8
                  sub          a7, s11, a2
                  srai         s7, a5, 29
                  ori          t4, s6, -648
                  slli         zero, t1, 30
                  sll          t5, s8, t6
                  or           s4, s3, t4
                  srli         a5, s5, 16
                  slt          a3, t0, s8
                  andi         t1, s7, 1285
                  or           gp, tp, s3
                  or           a6, s11, ra
                  nop
                  xori         sp, a1, -1898
                  xor          sp, ra, s2
                  srli         a0, t4, 21
                  or           t2, s3, t2
                  or           t0, a6, a3
                  slli         t5, a2, 14
                  and          tp, s9, a7
                  sra          s3, t4, gp
                  auipc        a1, 386335
                  andi         a4, a7, 1645
                  sll          a0, ra, t0
                  srli         gp, a0, 13
                  sltu         zero, a4, s10
                  lui          s4, 454724
                  sltu         a4, t2, t5
                  add          sp, a2, s7
                  slt          t0, a1, s8
                  auipc        t1, 733679
                  sltu         t3, zero, a1
                  slt          t6, a4, t5
                  slti         s9, a4, 1946
                  slti         a5, s2, 1226
                  andi         a4, s5, -23
                  sltu         ra, a2, ra
                  slti         t4, s5, 1578
                  srai         a0, t1, 12
                  ori          zero, s1, -281
                  sltu         s3, ra, s11
                  xor          s6, a7, s6
                  and          t5, s2, zero
                  slli         t1, s1, 29
                  sltiu        a6, tp, -557
                  add          t4, s11, t0
                  slti         s2, t6, -1642
                  addi         gp, s10, 1825
                  auipc        s2, 528218
                  ori          s3, a6, -1057
                  sltu         t3, s8, s3
                  xor          s10, tp, gp
                  sltu         s1, s9, t2
                  slt          s4, t0, zero
                  add          t1, sp, t3
                  andi         a6, s4, -547
                  sra          a7, s5, t4
                  and          a1, t5, s6
                  or           a4, s5, s10
                  xori         t4, s10, 337
                  add          t3, s0, a4
                  slti         zero, a7, -162
                  ori          a4, gp, 1505
                  sltu         a1, s2, s5
                  sll          s3, s7, s2
                  nop
                  srli         a1, a0, 29
                  srli         a0, s5, 7
                  and          s7, t6, s3
                  addi         a2, s5, 697
                  sra          a0, s3, s4
                  slli         t5, zero, 28
                  ori          ra, gp, 1895
                  sltu         a1, t0, tp
                  auipc        t2, 495650
                  ori          s9, t2, 1651
                  slli         a0, s8, 22
                  sltiu        s2, t0, 364
                  or           ra, s1, a7
                  slt          tp, zero, a6
                  and          a2, s1, sp
                  ori          sp, t3, 516
                  xori         ra, zero, -1419
                  xori         s7, a4, 129
                  sra          ra, a0, s0
                  xori         a5, s7, 36
                  addi         t6, s2, -1519
                  srl          s7, a0, t3
                  srai         s8, tp, 3
                  sll          a0, t5, sp
                  sltiu        t4, s7, -1422
                  sltu         zero, s10, s3
                  xor          s8, s3, a0
                  sra          a1, s1, a2
                  sra          a1, a4, a6
                  sub          a4, s11, a1
                  addi         t6, s11, -1135
                  andi         s10, s5, 264
                  auipc        zero, 199230
                  sub          s10, a2, t0
                  srai         a4, s11, 23
                  srli         sp, s7, 26
                  and          a4, t4, s5
                  nop
                  nop
                  sra          a6, s4, s5
                  slti         s4, t2, 1615
                  xori         t6, s4, 2024
                  sltu         t5, s4, a7
                  auipc        s7, 43806
                  and          t5, s7, ra
                  slli         s1, s5, 5
                  ori          s2, s9, -724
                  sub          t3, s0, t1
                  slt          sp, tp, t0
                  add          a5, s2, a6
                  srli         s8, zero, 10
                  srl          t0, s8, s7
                  sub          ra, s9, gp
                  andi         s4, s7, 1739
                  andi         s4, s2, 1160
                  slli         t0, t0, 20
                  sltu         a1, a2, zero
                  sub          s4, s4, s10
                  ori          a0, s10, 581
                  xori         gp, a5, 195
                  sub          ra, t5, t0
                  slti         s6, a3, 1663
                  nop
                  ori          a1, t3, -1732
                  auipc        a6, 366895
                  ori          ra, gp, -975
                  slti         a0, a7, -1824
                  slli         s10, a1, 17
                  lui          s8, 131141
                  sltu         t1, t2, t5
                  and          s10, t3, s1
                  srai         t5, t1, 3
                  add          a5, s2, t2
                  addi         s10, s3, 281
                  addi         t6, a2, -998
                  sltu         gp, t3, a5
                  srli         s9, a7, 2
                  ori          a1, s3, -965
                  auipc        t2, 698392
                  ori          s2, t0, -323
                  sltu         a2, s5, a3
                  sra          s2, s5, gp
                  srl          t1, s0, a4
                  srl          a4, s7, s1
                  nop
                  auipc        gp, 204407
                  and          a3, s10, s8
                  sra          s1, s1, a5
                  srli         t1, s2, 8
                  ori          a0, a5, -865
                  andi         s10, t2, -1943
                  sll          a5, t2, s5
                  slti         s9, a1, 671
                  ori          t4, s11, 1088
                  xori         s4, t2, 722
                  sltu         s9, a0, t1
                  sub          a7, a4, t4
                  auipc        a7, 675941
                  and          a2, s9, a4
                  slti         zero, t4, -51
                  ori          t5, a0, -1323
                  nop
                  xori         a2, t3, 1346
                  add          a2, zero, t0
                  sub          a3, s2, s0
                  xori         t3, t0, 26
                  srli         s4, s7, 13
                  auipc        gp, 143797
                  srli         sp, t4, 5
                  add          tp, s2, a1
                  sll          t3, a5, gp
                  sub          t2, t5, t1
                  sra          s1, a3, a5
                  xori         a0, s10, -602
                  or           t3, s5, tp
                  auipc        s6, 249022
                  nop
                  slt          s6, gp, t6
                  sltu         tp, a0, s4
                  srli         t4, a5, 2
                  lui          tp, 1019956
                  andi         a5, s7, 1788
                  xor          t3, a1, s10
                  slt          a1, s4, t3
                  nop
                  and          t3, s5, s10
                  nop
                  slti         s2, zero, -909
                  srai         t3, t3, 0
                  nop
                  sltiu        t0, a0, 1892
                  sltu         t1, t5, t6
                  srli         t0, s2, 2
                  auipc        gp, 123523
                  xori         s4, s10, 21
                  and          sp, t2, a1
                  xor          s7, s5, s8
                  srli         a1, s1, 30
                  srli         s1, t1, 30
                  or           a4, s7, a0
                  xori         s7, t4, -923
                  xor          t4, a5, s5
                  lui          s2, 256371
                  auipc        t5, 664495
                  sll          s8, zero, s0
                  xori         s3, s11, -1730
                  auipc        t6, 854074
                  add          a1, s6, a3
                  andi         sp, t5, 951
                  addi         t2, tp, 1319
                  sltiu        a7, ra, 338
                  xori         t1, s2, 64
                  andi         t4, s4, 180
                  sll          a0, s0, s1
                  srai         sp, s0, 31
                  sltiu        a2, t0, 938
                  or           gp, s1, a3
                  auipc        t0, 1020074
                  ori          gp, s4, -652
                  addi         a0, t6, -249
                  xor          a2, t3, s9
                  sltu         s8, s0, s6
                  nop
                  srli         t1, t5, 25
                  srai         t1, a4, 18
                  andi         s4, t5, 422
                  sra          a5, s4, s4
                  slli         a1, tp, 30
                  srli         t6, s7, 7
                  ori          sp, s0, -874
                  sub          s9, gp, s3
                  slt          sp, tp, s6
                  slt          gp, a7, gp
                  slti         s9, ra, -1432
                  srli         a2, t5, 3
                  sltu         a1, a1, s5
                  sub          s3, s10, t0
                  sll          gp, a2, a7
                  sra          s8, s9, a2
                  or           s8, t2, s7
                  lui          tp, 1036969
                  add          ra, a4, t3
                  sub          s4, s9, s11
                  slli         zero, ra, 31
                  slti         s10, s10, -439
                  sub          s10, a6, s4
                  srl          s1, s5, t3
                  ori          t5, a5, -1218
                  nop
                  srli         s1, sp, 20
                  slti         s8, s8, -1863
                  slti         zero, a1, 1013
                  srai         s1, t2, 12
                  xor          a5, a4, t2
                  lui          a0, 273088
                  srai         t6, t5, 0
                  sra          zero, t4, t1
                  srai         t3, ra, 13
                  lui          a5, 125804
                  srli         t5, a4, 29
                  andi         s1, t6, 289
                  addi         s6, t0, 1028
                  add          zero, s5, s0
                  srli         zero, zero, 16
                  slli         s7, a7, 10
                  sll          t2, s0, a7
                  xori         s8, s0, -182
                  auipc        a4, 572244
                  auipc        s10, 138801
                  xori         s2, t6, 433
                  and          a1, s4, a0
                  sltiu        t4, a6, 1439
                  srli         s2, a2, 26
                  sub          t0, s10, s6
                  nop
                  add          gp, a0, t0
                  slt          a5, a5, s5
                  addi         t1, s2, -103
                  andi         s7, sp, -1372
                  and          tp, a4, t3
                  lui          s9, 770914
                  slli         a0, tp, 19
                  ori          s7, a4, -1996
                  andi         s7, a2, 866
                  nop
                  slt          a0, a6, s4
                  and          t1, a2, s1
                  sra          s4, ra, t6
                  ori          s6, zero, -300
                  sub          tp, gp, s2
                  srl          s8, gp, tp
                  nop
                  slli         a5, t2, 24
                  and          s7, s9, zero
                  add          s8, t1, s2
                  addi         a1, a2, -1137
                  sll          t5, a2, t5
                  auipc        t0, 395814
                  nop
                  add          s7, a2, t1
                  and          s4, t6, s11
                  auipc        t0, 29833
                  nop
                  sll          t0, s7, s9
                  ori          s6, t6, -242
                  slti         s7, s7, 1808
                  srli         a2, s7, 10
                  slli         t4, gp, 12
                  xor          t1, zero, tp
                  srli         a5, t1, 31
                  sub          gp, zero, a1
                  slli         t2, t3, 25
                  xor          t0, t5, s0
                  slti         ra, s9, -2035
                  slti         s6, s11, 140
                  add          s9, s6, s1
                  and          a1, a5, s0
                  and          a7, tp, s6
                  slli         s4, t3, 23
                  slli         t0, a1, 10
                  auipc        s8, 839394
                  sltu         a6, s5, a5
                  sltu         a6, t3, s11
                  srli         sp, a7, 18
                  add          s3, a5, t2
                  or           s6, t0, s8
                  ori          zero, s10, 554
                  addi         s7, a0, 1709
                  auipc        t6, 162443
                  xor          a2, t0, s10
                  sltiu        sp, s8, -949
                  sltu         s1, s1, gp
                  slli         t3, s6, 16
                  nop
                  nop
                  lui          a3, 846615
                  sltu         a6, ra, gp
                  slti         t3, s9, 100
                  nop
                  sub          s2, sp, s8
                  or           s9, s11, a5
                  srai         a6, t1, 3
                  sltu         a7, t2, t1
                  and          s3, s8, ra
                  andi         t4, s3, 1052
                  or           a5, s5, a7
                  ori          a1, tp, -1652
                  andi         a0, t2, -1741
                  addi         gp, t4, 1825
                  lui          t1, 263024
                  sll          gp, s10, a2
                  xori         a3, a1, 2029
                  xori         s8, a6, -1076
                  srai         t4, s3, 22
                  sra          t5, s4, s5
                  srl          a3, a2, sp
                  srai         a2, t1, 13
                  srl          t1, s3, a6
                  slti         t3, a6, -321
                  sltiu        a4, s5, -1649
                  sub          a2, t0, s3
                  xor          t6, zero, a3
                  nop
                  nop
                  andi         t5, s4, -1781
                  and          tp, ra, a4
                  srai         t1, sp, 2
                  slti         s2, t5, 1730
                  sltiu        t4, t3, -1131
                  srli         s9, zero, 18
                  srli         t3, s9, 13
                  andi         t4, s11, -1974
                  xor          a7, a0, t3
                  addi         s2, t3, 1664
                  nop
                  slt          a7, t6, s10
                  sub          t5, t6, s4
                  or           t6, t3, a7
                  sll          s8, a6, s4
                  auipc        a2, 470056
                  slti         a6, tp, -461
                  sltiu        s3, sp, 37
                  xori         s10, a7, 1619
                  sll          s1, t4, a4
                  srai         a1, s7, 5
                  srl          t0, a5, s11
                  sra          a5, t2, s5
                  ori          a7, a0, -187
                  sll          t6, a0, a2
                  sltiu        t4, sp, 1277
                  andi         t5, a0, -740
                  sra          a0, t2, a1
                  xor          s8, s8, sp
                  sltiu        a3, s0, -1508
                  sltiu        s6, a6, 1681
                  slli         a4, s7, 9
                  xori         tp, s9, 675
                  lui          a0, 811128
                  or           a6, s6, s11
                  or           s7, a7, s2
                  lui          s1, 604653
                  sra          a0, s5, a1
                  addi         s7, gp, 125
                  nop
                  sltiu        ra, a5, -17
                  slti         sp, t0, 1380
                  ori          a2, sp, -1428
                  or           a5, a0, s1
                  sub          t2, a3, a0
                  slli         t4, s11, 30
                  sltiu        t1, s7, 1738
                  slt          sp, s6, s8
                  ori          ra, a7, 260
                  and          t3, s8, zero
                  lui          a0, 593972
                  ori          tp, tp, 558
                  andi         a3, s8, 1586
                  xori         a4, a2, -1520
                  ori          s10, sp, 950
                  xori         a4, t1, 1415
                  srai         t1, tp, 24
                  lui          s6, 282888
                  and          a0, a0, a4
                  sltu         t4, a2, s8
                  sltu         s2, a2, s7
                  xori         s6, t3, -1682
                  slt          s2, s3, a2
                  srli         s9, s7, 16
                  slli         s2, gp, 21
                  nop
                  sll          t6, gp, t4
                  xor          s6, a6, s1
                  sub          gp, t1, a7
                  xori         s1, ra, 2023
                  add          zero, s9, gp
                  slli         s8, t4, 13
                  slti         a1, ra, -1676
                  sltiu        a4, sp, -1575
                  auipc        s6, 796614
                  srai         s10, s11, 14
                  srli         a2, a0, 14
                  or           s6, s6, t5
                  and          a6, a6, t6
                  lui          a1, 3013
                  auipc        s8, 301509
                  sll          a6, s1, zero
                  sra          a5, t6, s4
                  sra          a3, s4, zero
                  srai         t2, s1, 27
                  srl          s1, s9, s9
                  or           s7, tp, s2
                  srl          gp, t1, s7
                  and          a2, gp, tp
                  srl          s4, t6, t4
                  andi         ra, s2, 1379
                  sltiu        t3, t5, -699
                  or           a7, t1, s5
                  lui          s7, 346375
                  xor          t5, t6, a4
                  sltiu        a2, gp, -2033
                  or           a0, s2, t6
                  xori         ra, a6, -1705
                  sltu         ra, t2, gp
                  add          s7, s11, tp
                  slti         tp, a4, 151
                  lui          t5, 729184
                  and          s7, gp, a3
                  sub          t1, s3, t1
                  slt          a1, s7, ra
                  sub          a5, s2, ra
                  lui          gp, 118526
                  addi         a2, s4, 63
                  or           a4, t1, s0
                  ori          a3, s2, 1854
                  nop
                  sll          t6, a1, a4
                  xor          t5, t4, s11
                  srl          a2, a2, s6
                  sltu         s8, a0, a7
                  srl          s7, a0, s10
                  lui          a2, 150273
                  sltiu        a0, a7, 1259
                  slti         s3, zero, 502
                  auipc        tp, 523157
                  xori         t6, t5, -694
                  sll          a2, t1, a7
                  slli         tp, zero, 30
                  lui          a4, 246826
                  slti         t2, s2, -1038
                  sra          s2, s4, ra
                  or           t5, a7, s9
                  sub          a6, s9, s7
                  ori          sp, t5, 580
                  sltiu        s3, s1, 894
                  nop
                  nop
                  srli         a0, t2, 18
                  or           ra, s10, zero
                  or           a6, s7, a2
                  slli         a4, s1, 6
                  sra          t2, a4, s0
                  slt          a5, s11, s4
                  slti         a3, s0, -586
                  slt          s1, s0, t2
                  srai         t5, gp, 25
                  lui          a2, 284886
                  or           t5, t6, zero
                  srai         s3, t6, 1
                  slti         t4, t4, -1904
                  nop
                  or           t5, s6, a7
                  sll          a4, sp, t6
                  ori          a6, s8, -614
                  and          a0, s9, a2
                  xori         s6, a5, 1112
                  add          a4, a1, s9
                  nop
                  slli         t4, a1, 21
                  sltiu        s8, s6, -640
                  xor          s7, t4, s4
                  auipc        sp, 898997
                  srai         t1, sp, 24
                  or           a1, a7, t3
                  slt          t3, t4, s6
                  sub          tp, s2, ra
                  srli         a0, tp, 20
                  xor          t3, s4, t2
                  srl          s7, s10, t3
                  sll          s6, s10, a4
                  sra          t1, t4, a1
                  sub          sp, t6, s7
                  xori         s10, a6, 212
                  slti         t2, t3, -9
                  sll          s10, s5, sp
                  and          s4, s11, s9
                  xor          s3, s4, zero
                  srl          s3, t6, s9
                  sra          s3, t5, s9
                  sra          a4, zero, a4
                  srl          t1, s11, t2
                  addi         tp, a4, -750
                  ori          s7, s10, 865
                  srli         s3, s0, 19
                  auipc        t5, 705534
                  addi         s3, s5, -304
                  slti         s9, a3, 433
                  slli         s2, s7, 1
                  nop
                  or           t6, sp, zero
                  add          gp, sp, a5
                  and          s9, t4, t3
                  nop
                  sll          a7, s6, s6
                  xor          t2, s7, s5
                  xor          gp, t4, s10
                  add          s4, s4, s0
                  auipc        sp, 943597
                  or           sp, t2, a5
                  sltu         t6, a5, s7
                  slt          zero, tp, s0
                  sltu         s6, a4, a1
                  sltu         a3, s7, tp
                  slti         a3, a2, 1098
                  srai         s9, t0, 23
                  nop
                  nop
                  srl          t3, t3, a1
                  and          s8, a4, zero
                  or           a4, a4, a1
                  srai         s6, s9, 31
                  xori         s9, a7, 504
                  slt          a3, s9, s0
                  slli         t0, s10, 27
                  lui          s9, 225492
                  add          s9, tp, t5
                  slti         t2, t0, 1965
                  sub          gp, t0, gp
                  nop
                  slli         t6, s7, 20
                  sub          t0, a5, t4
                  xor          s7, s2, s8
                  and          s1, t5, s7
                  sll          a7, t3, t4
                  sub          t1, a7, s7
                  srai         s4, a1, 31
                  ori          s8, a3, 1664
                  lui          s10, 268400
                  and          s1, s7, a4
                  sub          a6, s7, s1
                  addi         a5, a4, -622
                  srl          t0, s6, a3
                  nop
                  nop
                  add          s2, a7, t5
                  sll          sp, s10, a2
                  xori         a7, t6, 27
                  addi         a6, t4, 532
                  lui          t0, 1034324
                  andi         t2, tp, -1201
                  addi         s9, a5, -1631
                  sltu         s7, t5, s0
                  lui          s3, 439417
                  lui          s6, 973366
                  sltu         t1, t5, a6
                  and          a3, a4, a5
                  slt          t4, t6, a4
                  auipc        t6, 859985
                  xori         sp, s1, 90
                  addi         a4, a0, -147
                  add          t1, s3, t1
                  and          s7, a7, s10
                  nop
                  add          tp, a5, s0
                  or           t1, sp, t4
                  srli         gp, s10, 1
                  and          s6, t5, a1
                  xori         a6, a2, 1929
                  and          gp, t5, s9
                  lui          s7, 130816
                  sll          s7, s5, gp
                  sub          s3, a1, t1
                  sltiu        s8, a4, -1452
                  sll          s9, a7, s10
                  lui          ra, 63055
                  xori         tp, a3, -785
                  sltu         s6, t4, a2
                  slli         sp, t3, 8
                  slt          a1, s6, a7
                  srai         s9, s4, 23
                  sltu         t3, t2, s6
                  ori          tp, a5, -675
                  srl          t3, s1, ra
                  xor          sp, t0, t2
                  auipc        s10, 575696
                  sub          t6, a3, s9
                  ori          t2, a0, -2048
                  andi         t2, s4, 1447
                  slli         s2, a3, 2
                  lui          a1, 836663
                  or           s8, s6, tp
                  nop
                  andi         a2, s3, -1914
                  xor          a2, tp, a6
                  lui          a2, 802615
                  sub          gp, a1, s11
                  xori         s8, t0, 1073
                  sub          a4, a6, t0
                  or           a4, t1, s6
                  lui          a4, 301003
                  slli         s9, s1, 8
                  auipc        zero, 352870
                  sub          a1, a1, a7
                  auipc        a3, 615752
                  srai         s1, s5, 16
                  andi         t2, tp, -319
                  slti         a7, t2, 949
                  and          s7, a4, s9
                  addi         tp, s6, -439
                  ori          s9, gp, -792
                  ori          sp, ra, -25
                  sll          t2, s0, s7
                  addi         a3, s2, 1788
                  nop
                  slti         s4, s1, -646
                  lui          zero, 1035140
                  auipc        t6, 341419
                  ori          t1, a4, -861
                  sll          t2, s0, t3
                  auipc        s3, 539925
                  add          t4, t0, s2
                  srai         t3, a0, 17
                  or           t2, s7, t2
                  xor          t0, tp, ra
                  ori          s9, t2, -1626
                  sub          a6, a0, s1
                  or           s7, s9, s11
                  srl          s10, s2, s10
                  sll          s1, a2, s5
                  ori          a4, tp, 171
                  slti         s8, sp, 766
                  srai         t6, s2, 30
                  slt          s10, t0, a2
                  xor          a7, t4, a5
                  xor          a6, s4, t2
                  ori          a4, s0, -1793
                  slti         a1, s4, 1571
                  nop
                  slti         a0, s1, 842
                  li           t5, 0x89e3617d #start riscv_int_numeric_corner_stream_5
                  li           s7, 0xffffffff
                  li           t2, 0xa00a6d17
                  li           ra, 0xffffffff
                  li           s9, 0x80000000
                  li           s8, 0xffffffff
                  li           t0, 0x80000000
                  li           s6, 0x241dcea0
                  li           tp, 0xffffffff
                  li           t4, 0xfee931e3
                  sub          t5, t2, t0
                  nop
                  sub          t2, s8, s8
                  sub          ra, t4, ra
                  addi         s6, t4, 1288
                  nop
                  auipc        t0, 156248
                  auipc        tp, 413478
                  lui          t2, 63369
                  lui          t4, 944732
                  auipc        t5, 710748
                  add          s9, s6, s9
                  auipc        s6, 208999
                  sub          t2, s6, t5
                  addi         t4, t2, 1278
                  auipc        s6, 464571
                  add          tp, ra, ra
                  add          t4, t0, s6
                  add          ra, s9, s8
                  auipc        s7, 789149
                  add          t2, s7, t2
                  add          s9, t2, ra
                  lui          t2, 353433
                  sub          ra, ra, t0
                  auipc        t0, 836602
                  add          s9, ra, t0
                  addi         s6, t0, -1817
                  lui          tp, 291458
                  addi         t5, s6, -135 #end riscv_int_numeric_corner_stream_5
                  slt          t3, a6, s7
                  ori          a3, s6, -1535
                  and          t6, s9, t6
                  sub          t3, zero, tp
                  sltiu        t2, t3, -58
                  andi         s1, s9, 1627
                  srl          s2, t2, a6
                  addi         t3, a1, -79
                  sltu         t0, t4, s0
                  xori         a6, s3, -605
                  nop
                  sub          t2, a4, a0
                  srai         a2, zero, 0
                  or           tp, tp, s4
                  lui          t3, 467340
                  sll          t5, gp, t0
                  add          t0, s9, a6
                  xor          t0, ra, t3
                  srl          a6, s5, a7
                  nop
                  or           t0, s4, a5
                  srl          s9, t2, s3
                  sll          a4, ra, s3
                  sltiu        tp, a5, 1631
                  or           sp, t3, a0
                  auipc        a1, 147823
                  srai         gp, t3, 21
                  sra          a1, s2, t0
                  ori          ra, t5, -1705
                  add          s10, s1, s0
                  and          a5, a5, t1
                  sltiu        s3, s3, -1874
                  slli         a1, t1, 14
                  auipc        t3, 417010
                  sra          s3, a2, s4
                  sltu         a3, a2, t3
                  srl          tp, t1, t1
                  sll          s2, t5, t4
                  sltu         a3, s5, t6
                  or           s10, zero, a5
                  or           t4, a3, a6
                  slt          ra, a1, t6
                  auipc        a6, 34113
                  and          t3, s10, t0
                  lui          s8, 115347
                  andi         a6, s10, 1383
                  srl          s7, tp, t3
                  sub          s2, s0, s7
                  ori          gp, a2, 251
                  andi         t1, s9, -1658
                  slli         a1, s1, 15
                  sltu         a4, s3, a3
                  sra          ra, gp, t3
                  sub          sp, t1, tp
                  slti         t4, a2, 1228
                  auipc        a7, 855484
                  slli         tp, a5, 1
                  sub          t4, a2, s7
                  and          s9, a6, s4
                  sub          t1, s3, ra
                  lui          sp, 841135
                  ori          sp, tp, 1682
                  sub          t2, s11, s7
                  ori          tp, s1, 1960
                  srl          a4, t2, ra
                  or           gp, a7, a1
                  andi         sp, s3, 1546
                  sltu         s8, ra, t1
                  slli         t5, s0, 13
                  andi         a7, gp, -552
                  srl          s9, s1, a7
                  srai         t5, gp, 3
                  lui          t5, 182775
                  addi         gp, a1, 1072
                  sltu         tp, t2, s10
                  add          a6, t3, s9
                  sll          s6, s9, a6
                  or           t6, a4, t0
                  sltiu        s3, sp, -1290
                  or           s2, a1, s4
                  slli         a2, gp, 12
                  nop
                  xori         a2, a2, -1623
                  slli         s4, t0, 5
                  srl          a2, s5, s3
                  srai         t0, t2, 21
                  slt          s9, t2, s11
                  srai         t0, tp, 15
                  slti         s8, s7, -417
                  li           a5, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           a3, 0x0
                  li           a0, 0x80000000
                  li           t5, 0x80000000
                  li           sp, 0x80000000
                  li           s7, 0xffffffff
                  li           a2, 0x5891690c
                  li           t1, 0x80000000
                  li           tp, 0x0
                  li           s9, 0x5e58e0e5
                  auipc        s7, 210581
                  auipc        s7, 630116
                  addi         t5, t5, -1248
                  sub          tp, a2, sp
                  lui          s9, 327535
                  nop
                  lui          a2, 681043
                  sub          s7, sp, a0
                  addi         a3, t1, 1399
                  addi         tp, sp, -1723
                  lui          a0, 704897
                  addi         sp, a3, 1582
                  auipc        s9, 661691
                  addi         a2, sp, -1131
                  add          sp, a2, s7
                  auipc        sp, 600075
                  lui          a3, 235136
                  add          t1, t5, a3
                  lui          s9, 298883
                  addi         t5, s7, -111 #end riscv_int_numeric_corner_stream_9
                  sub          zero, a3, sp
                  nop
                  sra          s10, a0, t1
                  xor          s1, s7, a5
                  or           a0, a7, s6
                  and          t2, ra, s9
                  sub          t0, tp, t2
                  srai         s3, t1, 2
                  xori         t6, t0, -1472
                  and          a1, s10, s11
                  sll          t1, t0, sp
                  xori         a7, a0, -1737
                  andi         a5, a0, -539
                  ori          a6, s11, 1757
                  and          s10, t5, s3
                  srli         zero, t0, 3
                  or           t5, s10, a4
                  auipc        t0, 329783
                  srli         a0, a7, 31
                  xor          a4, s0, s10
                  sltiu        a1, t6, 583
                  sll          s3, s1, s5
                  xor          t2, s10, tp
                  srli         t1, s3, 28
                  slli         s7, a3, 26
                  sra          t2, s2, s10
                  xori         t3, t6, -1711
                  sra          s4, tp, t3
                  xori         t5, t5, -1548
                  or           a4, t5, a0
                  andi         sp, t5, -144
                  lui          s3, 637991
                  slt          s10, a5, s4
                  sltu         a1, ra, s2
                  add          a3, a0, t2
                  srli         t6, t0, 13
                  add          a2, a1, s10
                  srai         a6, a1, 21
                  slli         zero, a7, 8
                  slli         s3, ra, 22
                  sra          s3, s9, t4
                  addi         a6, s0, 1290
                  sltu         zero, t0, s4
                  nop
                  lui          s9, 19920
                  sra          t0, s2, a7
                  sltiu        s2, a0, -1621
                  srai         t4, s5, 8
                  sltu         s6, a6, gp
                  srli         s1, sp, 11
                  sra          a3, gp, s0
                  auipc        tp, 348798
                  sltu         a3, t1, s5
                  sub          a1, s11, t5
                  sra          ra, s6, s8
                  nop
                  ori          t2, t1, 1187
                  sltu         t4, s3, t4
                  slt          tp, t1, s11
                  slli         s7, s3, 25
                  auipc        a4, 307660
                  lui          sp, 641480
                  addi         a0, t4, 1137
                  slli         zero, ra, 14
                  addi         a1, zero, -1545
                  slti         t2, a3, 1296
                  lui          t1, 913898
                  slt          s8, a0, t5
                  xor          a0, tp, t0
                  or           s4, t1, a2
                  sub          s9, t2, t6
                  ori          sp, a7, 1446
                  srai         t5, a3, 12
                  sra          t1, t5, s6
                  slti         a7, a3, -637
                  srli         s2, a6, 15
                  sub          a5, t0, a3
                  auipc        s9, 223232
                  sll          a2, s2, a3
                  slli         t2, s4, 20
                  sltiu        t6, s4, -1801
                  and          a6, a5, a3
                  sub          s7, s8, a3
                  ori          t4, a6, 1410
                  and          gp, t5, gp
                  add          ra, sp, sp
                  slti         t5, s2, 252
                  auipc        s6, 394148
                  slli         t3, zero, 8
                  srli         a7, sp, 24
                  sra          s6, a0, sp
                  auipc        a2, 524474
                  slti         a2, a5, -695
                  slli         s9, a7, 27
                  slt          a7, gp, a3
                  sltiu        a4, t3, 879
                  nop
                  slli         a4, gp, 24
                  srli         t0, s4, 28
                  xori         zero, s2, -816
                  sll          s7, sp, a0
                  andi         tp, s7, 1537
                  nop
                  sll          s4, a6, t4
                  srai         a6, s2, 17
                  srli         t5, t3, 30
                  sll          s9, sp, s5
                  slt          s1, s9, ra
                  slti         s4, t4, 1177
                  andi         t5, s10, -1859
                  nop
                  add          t2, zero, ra
                  lui          t5, 947082
                  sltiu        a7, a1, 1875
                  or           sp, t6, a3
                  xori         a7, a4, 1569
                  andi         t4, a3, -1576
                  and          a5, s2, t0
                  ori          s6, s1, 1829
                  or           a2, a7, a4
                  sll          s1, s2, s1
                  slt          s9, s0, gp
                  srli         zero, s10, 12
                  srai         a2, a1, 1
                  slli         t5, t5, 24
                  andi         t1, zero, 1163
                  sltu         t2, t3, t6
                  xor          t1, sp, s3
                  srai         t1, t2, 12
                  sra          t2, t2, gp
                  ori          sp, s3, -403
                  xor          s3, t3, s2
                  sltu         a0, a4, s8
                  srai         s6, a4, 0
                  xori         t5, s6, 347
                  slt          tp, s5, s3
                  ori          s1, t3, -60
                  addi         gp, s4, -1079
                  slt          sp, s10, s0
                  nop
                  sltu         ra, a6, zero
                  slli         gp, t3, 14
                  lui          t6, 505627
                  srl          a7, gp, t5
                  slt          s3, a6, a5
                  addi         a5, a0, -46
                  or           a4, tp, t2
                  sll          t0, a6, zero
                  auipc        s2, 413964
                  slli         s4, a4, 24
                  sub          ra, a2, a1
                  sltu         s9, zero, t5
                  or           a4, s8, a2
                  srl          tp, s3, a7
                  lui          sp, 396871
                  sltiu        tp, s6, -197
                  xori         a2, t1, 594
                  sltu         t2, s10, s3
                  slli         t1, tp, 21
                  add          sp, s7, a4
                  sra          a0, s11, s4
                  or           s2, t4, t1
                  srai         gp, t0, 22
                  addi         tp, s2, -1023
                  slti         t6, a3, -1387
                  srli         a0, a0, 31
                  srai         t2, t4, 7
                  xori         a0, a2, 2000
                  srli         t3, ra, 25
                  or           a5, s2, a2
                  andi         s4, a3, -1585
                  sra          t3, s4, a5
                  srai         t3, s5, 6
                  auipc        s2, 172553
                  slli         a7, t5, 0
                  sll          ra, sp, s2
                  nop
                  and          s2, s7, tp
                  auipc        a2, 385249
                  slli         a0, t0, 10
                  addi         zero, sp, -1225
                  slt          gp, s5, a6
                  auipc        zero, 22814
                  slti         a6, t6, -1352
                  or           s8, s3, a2
                  srai         s1, s2, 18
                  sltiu        s10, s5, -1836
                  slt          a7, a5, ra
                  auipc        a5, 316901
                  lui          s6, 133481
                  slt          a6, a4, a5
                  sra          sp, s3, s5
                  slt          t0, t3, s7
                  andi         zero, s5, -569
                  sltu         t4, s6, s3
                  srl          t4, s0, s10
                  srai         s6, a7, 15
                  slt          s10, a3, gp
                  sra          tp, t1, s10
                  nop
                  sra          t2, a7, t6
                  add          t5, t5, t4
                  nop
                  nop
                  srl          t6, s9, a0
                  and          s10, a4, a1
                  slli         s7, s5, 24
                  andi         gp, t6, 496
                  nop
                  slti         tp, a4, -2045
                  sll          s1, s7, a5
                  slt          t0, s2, t4
                  srl          a7, t0, zero
                  lui          t3, 652609
                  sltiu        s3, t6, -1796
                  addi         t1, a2, 1968
                  xor          s10, t0, s3
                  sltiu        s2, s9, -2002
                  addi         gp, s1, 827
                  xor          gp, gp, t0
                  andi         t5, t1, 29
                  and          a6, s7, s9
                  and          t3, a6, a5
                  sra          sp, a7, a0
                  lui          t4, 693881
                  slt          ra, s3, a6
                  sltiu        s4, a7, 479
                  slti         a2, s7, -965
                  sub          a7, t1, gp
                  addi         a0, a0, -1367
                  sub          s10, t0, t3
                  sll          s6, sp, s7
                  xor          a5, a3, a2
                  srl          s7, t1, a1
                  xori         a5, s3, 471
                  srai         gp, t5, 12
                  sra          s9, s0, a6
                  srai         t3, gp, 14
                  andi         a4, t4, 1666
                  andi         tp, ra, 42
                  slli         s9, t3, 14
                  slti         s4, s1, 651
                  addi         gp, t0, 934
                  sltiu        s8, a7, 1075
                  sra          t6, tp, tp
                  addi         ra, s6, -576
                  sub          tp, t4, t5
                  sub          t5, a5, t6
                  and          s6, s2, a3
                  and          a6, s9, s2
                  andi         t2, a0, 1838
                  nop
                  and          t0, s7, a5
                  xor          s3, s9, zero
                  addi         a4, a2, -1475
                  sll          s9, t4, s3
                  nop
                  xor          s4, s4, s4
                  slli         ra, s6, 1
                  add          s3, ra, ra
                  srli         s6, s6, 1
                  andi         s9, s9, 1059
                  and          a6, a6, t2
                  xori         a1, s2, -1670
                  sra          t0, a6, t5
                  srai         sp, s7, 18
                  slti         s10, s8, -1342
                  xor          a3, t0, t2
                  sltiu        ra, t2, -1598
                  auipc        s9, 596163
                  slli         s2, a6, 10
                  auipc        s1, 323499
                  ori          a3, t6, -1986
                  or           t2, a6, s11
                  addi         a4, s6, -1892
                  xor          s8, t5, s7
                  addi         t3, s6, 559
                  xor          a4, s0, t1
                  sltu         s2, s0, zero
                  sll          s4, s2, s9
                  slt          a3, a4, t2
                  slli         t5, a5, 25
                  or           a1, a2, t0
                  lui          a2, 563316
                  sub          tp, a7, s6
                  sltu         ra, s6, a1
                  add          sp, s1, t1
                  slt          zero, a7, s5
                  and          s3, tp, t0
                  sub          s4, t4, a0
                  ori          s4, a5, -1629
                  auipc        s6, 57502
                  slli         s4, sp, 23
                  lui          a6, 412411
                  slti         t6, zero, 1771
                  sll          s9, s10, s8
                  srl          t0, s10, s1
                  slti         s3, t4, -934
                  sltu         a7, t3, t3
                  sub          t2, s11, s0
                  sltu         a4, s10, sp
                  nop
                  auipc        s9, 184541
                  sltu         t2, t6, s4
                  srai         s6, s11, 27
                  ori          t4, sp, 638
                  auipc        a2, 909944
                  ori          t3, t4, -783
                  srl          s10, t5, s2
                  lui          ra, 615572
                  nop
                  andi         a3, s7, 1245
                  slli         tp, a0, 5
                  slli         s8, a5, 22
                  add          t0, s10, a0
                  slti         s1, s1, 631
                  lui          s10, 357918
                  addi         a4, a0, 895
                  xor          sp, s2, a3
                  sll          t6, a5, s8
                  slt          a6, gp, s10
                  sltu         s6, t2, t4
                  xor          a1, t1, ra
                  sub          a7, t4, tp
                  sltu         zero, s0, a1
                  sub          s8, s8, s3
                  sra          s1, t1, a0
                  nop
                  xori         t5, a7, 986
                  sll          a2, tp, s11
                  sll          tp, zero, gp
                  xor          a2, s11, t3
                  andi         s1, t1, -858
                  slti         s1, s11, -1904
                  or           t2, s9, s8
                  xori         zero, t0, 1250
                  slli         t5, zero, 7
                  nop
                  addi         s7, s2, -1764
                  addi         s9, s10, -1316
                  or           t5, s5, s0
                  xori         s6, t5, 1994
                  srai         a0, a0, 9
                  add          a1, a5, t5
                  lui          tp, 164667
                  sltiu        a5, zero, 537
                  ori          s10, s7, -1395
                  ori          a6, t1, 1221
                  add          a3, t4, tp
                  srai         s10, gp, 31
                  ori          zero, a7, -504
                  xor          s10, s2, s8
                  auipc        t6, 25478
                  ori          a5, s3, 1827
                  slt          a5, zero, s0
                  nop
                  ori          t1, t0, 289
                  add          s8, a3, s6
                  sub          a2, a4, a1
                  nop
                  slli         s9, s5, 23
                  auipc        s1, 693254
                  sub          s6, tp, s1
                  nop
                  sll          t2, ra, a6
                  xor          t5, ra, a0
                  addi         a7, tp, 1151
                  sltu         a4, sp, sp
                  slti         a4, a5, 1749
                  sltiu        a1, s2, -635
                  slt          s3, s8, s4
                  sltu         t5, tp, s9
                  sra          s7, s5, t2
                  slt          t6, ra, tp
                  nop
                  addi         a7, a1, 1298
                  slt          s4, tp, s2
                  sll          a4, sp, t4
                  slli         s3, s1, 7
                  nop
                  sltu         a3, s9, ra
                  sltu         a1, s8, s4
                  andi         a4, tp, 1445
                  slli         t2, tp, 1
                  sltiu        s10, a1, -694
                  addi         t5, s4, -973
                  srai         ra, s10, 7
                  slti         a4, s4, -1906
                  sll          t0, t1, s3
                  slti         s10, t1, -1472
                  srai         zero, gp, 23
                  slli         a1, a3, 0
                  ori          a3, s8, 1403
                  addi         a7, a7, 1878
                  nop
                  srl          s1, zero, a2
                  andi         t2, zero, -1665
                  addi         zero, s0, -781
                  srli         t3, tp, 5
                  xor          a2, t4, s1
                  or           ra, s6, zero
                  sra          s10, sp, s10
                  addi         s3, s5, 403
                  xor          a3, zero, s11
                  sub          s7, t6, a1
                  srli         s4, s5, 10
                  sll          s8, s1, a2
                  addi         s10, t5, -223
                  srai         s1, t6, 30
                  sltiu        s7, s7, -629
                  auipc        t2, 339557
                  slli         s9, s6, 14
                  addi         a0, t5, -675
                  sub          t2, s8, gp
                  add          t1, a0, s2
                  sltiu        tp, a4, -297
                  sll          sp, t1, zero
                  add          t2, a0, t1
                  sltiu        a3, t3, 1954
                  sll          a5, t4, sp
                  andi         s1, s4, 552
                  srai         s1, t0, 14
                  sll          t5, zero, t3
                  sll          tp, t5, zero
                  ori          a6, ra, -1904
                  slti         s6, s4, -1517
                  slt          s9, gp, a1
                  add          t1, s5, s8
                  andi         gp, s1, -72
                  sll          t0, a7, t3
                  auipc        a6, 572134
                  xori         s2, a1, -1317
                  auipc        s10, 75903
                  sub          t2, s5, gp
                  sub          a2, s6, t0
                  add          t2, ra, a3
                  andi         t2, s7, 1349
                  sltiu        ra, a3, -1797
                  addi         t4, s6, -1929
                  lui          a4, 263957
                  sra          ra, s6, sp
                  srl          t1, ra, t4
                  ori          a0, t1, -905
                  sll          s9, a6, s1
                  ori          t2, s10, -1970
                  sll          a0, t6, a6
                  sra          a2, t1, a4
                  nop
                  srai         s4, s1, 19
                  sll          gp, t1, t5
                  srai         a6, s1, 10
                  xor          t4, s5, s7
                  or           s4, s8, s8
                  slt          s8, s6, a3
                  sltu         s7, a1, t3
                  ori          t5, a5, 451
                  addi         t4, t2, -360
                  slti         s1, s1, 665
                  sltu         t6, s4, s8
                  ori          s2, s2, -624
                  andi         tp, a2, -1552
                  sltiu        t5, s0, -137
                  srl          s8, a7, a2
                  srai         zero, s7, 5
                  sltu         gp, a3, a4
                  and          t4, a7, s2
                  srl          a5, s7, a3
                  andi         zero, s6, 1108
                  srli         t3, t6, 26
                  slt          tp, s8, a3
                  sra          s4, zero, sp
                  srl          tp, s8, a1
                  sra          zero, s1, sp
                  sub          tp, s9, s4
                  andi         a0, a6, -193
                  auipc        t6, 78325
                  srli         t2, a4, 21
                  or           t3, s0, a1
                  sltiu        tp, s9, -159
                  and          a5, s1, a7
                  li           s9, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           t2, 0x80000000
                  li           t1, 0x0
                  li           s4, 0x0
                  li           s2, 0x80000000
                  li           a0, 0xffffffff
                  li           t5, 0xc033f611
                  li           t4, 0x0
                  li           tp, 0xffffffff
                  li           s3, 0x0
                  nop
                  lui          s4, 870065
                  add          s9, s4, tp
                  auipc        tp, 157681
                  addi         s3, t1, -708
                  addi         s9, t4, -1748
                  nop
                  add          a0, tp, s2
                  lui          s4, 993254
                  add          t4, t5, t4
                  auipc        t1, 249922
                  add          a0, t5, s3
                  nop
                  add          tp, t2, s4
                  addi         s3, s4, 1833
                  sub          a0, t4, t4
                  addi         t4, s4, 360
                  lui          t5, 989908
                  lui          t4, 568516
                  nop
                  auipc        t5, 92236
                  nop
                  add          a0, s9, t4
                  addi         t2, tp, 1191
                  nop
                  auipc        t2, 969359
                  lui          s3, 292017
                  addi         s2, t5, -843
                  auipc        t4, 64263 #end riscv_int_numeric_corner_stream_19
                  sub          t3, t1, s9
                  andi         t4, t0, 1759
                  slli         a2, s3, 25
                  slli         a3, a0, 18
                  sub          s9, a5, s2
                  sltu         t2, a6, sp
                  srl          s9, s2, s11
                  and          s2, s10, a2
                  and          a7, s2, t5
                  andi         s8, a3, 936
                  srl          s7, s10, s2
                  sltu         s1, t3, s7
                  sub          t1, sp, a6
                  xor          a6, s9, zero
                  auipc        a4, 631689
                  slti         t6, ra, 739
                  slt          s4, s8, zero
                  sub          a2, zero, a3
                  slt          s1, a3, t4
                  sltu         sp, a1, t2
                  sub          t4, s0, t1
                  xori         s10, gp, 1584
                  addi         s1, s5, 264
                  and          t1, s10, s0
                  andi         t5, t0, 1034
                  andi         zero, s5, -1207
                  srai         sp, ra, 21
                  auipc        tp, 83013
                  slli         a6, s3, 24
                  nop
                  sra          t0, s5, s3
                  sll          s4, a0, s5
                  srai         s3, a7, 15
                  sub          t5, s10, ra
                  slli         a5, s7, 12
                  slt          a7, s3, a3
                  add          a1, s6, t0
                  sra          a6, s3, zero
                  sll          s9, s3, s4
                  slli         t1, ra, 28
                  addi         a3, t6, 604
                  sltiu        a3, a0, 694
                  sltu         s8, sp, s5
                  srai         sp, s9, 20
                  and          s8, s0, a6
                  xor          a0, s2, s11
                  sltiu        a2, s3, -355
                  sra          s7, s10, s9
                  or           a2, s11, gp
                  xor          tp, a6, t5
                  sll          s2, a4, a7
                  srl          t2, s5, s5
                  sra          zero, a7, s5
                  nop
                  and          tp, s8, t1
                  xor          tp, t5, a0
                  sll          a4, sp, t0
                  ori          a2, a0, 1126
                  sltu         a0, s6, t5
                  srl          s1, gp, a4
                  and          a2, s6, s6
                  nop
                  srai         gp, t2, 31
                  slli         t6, s8, 24
                  and          a6, t6, s3
                  slti         t0, a5, 165
                  sll          sp, s9, s11
                  and          s9, a4, t0
                  slt          s3, s11, t2
                  sub          a3, s7, sp
                  andi         a5, t0, -1245
                  and          t3, t4, s3
                  sltu         s2, t3, a3
                  sltu         s3, tp, s6
                  srl          a1, s1, a3
                  nop
                  lui          t5, 803361
                  auipc        a3, 218096
                  xori         t3, s3, -1864
                  addi         ra, a5, -1606
                  sll          s3, s5, t4
                  sll          s10, s5, a3
                  and          sp, a6, a3
                  add          a3, gp, a6
                  and          t4, tp, a7
                  srli         zero, s10, 16
                  srai         t5, t0, 15
                  sub          t1, a6, s0
                  auipc        t2, 267041
                  slt          gp, s4, s5
                  and          a6, sp, t5
                  andi         a4, s5, 309
                  li           t3, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           a2, 0xc6721ab1
                  li           a4, 0x0
                  li           s7, 0x80000000
                  li           a7, 0x80000000
                  li           gp, 0x80000000
                  li           tp, 0xf4ac8137
                  li           a3, 0x0
                  li           a1, 0xffffffff
                  li           t1, 0xffffffff
                  nop
                  add          tp, a3, a2
                  auipc        gp, 259590
                  addi         s7, tp, 1676
                  sub          a2, a1, s7
                  nop
                  add          t1, s7, s7
                  nop
                  add          s7, a1, tp
                  add          gp, a7, s7
                  add          a7, t1, t3
                  addi         a3, a3, -1623
                  addi         a7, t1, 348
                  addi         a2, t1, 343
                  nop
                  lui          a4, 796387
                  nop
                  lui          a2, 781839 #end riscv_int_numeric_corner_stream_3
                  auipc        t1, 839216
                  andi         t6, sp, -140
                  sra          sp, t1, a3
                  sltiu        t4, s6, 1249
                  sub          a7, s6, t6
                  sll          s3, t0, t5
                  lui          a3, 1799
                  sltu         s10, s0, s6
                  addi         t1, t0, -662
                  slli         a5, ra, 7
                  or           a5, s2, s3
                  auipc        t4, 90269
                  and          gp, t3, s6
                  slt          zero, sp, a0
                  sltu         t4, t3, a2
                  srli         t6, a1, 10
                  nop
                  or           t4, s8, a5
                  srai         a4, a6, 17
                  addi         a7, t0, 472
                  sltu         s7, a3, s6
                  sltiu        s10, s0, 619
                  slli         tp, t3, 27
                  xori         s4, a2, -570
                  addi         sp, a0, 1517
                  auipc        sp, 212768
                  and          a5, s2, t1
                  addi         sp, ra, -670
                  sltu         s10, a2, s6
                  slt          s2, s7, gp
                  sub          s10, t4, t2
                  sra          a1, t0, tp
                  auipc        ra, 747205
                  xor          gp, t1, t1
                  sra          t0, s0, s5
                  sltiu        a7, s9, 616
                  or           a1, gp, t6
                  add          a4, t1, ra
                  slt          a0, a3, zero
                  or           t6, a0, a4
                  ori          a0, t2, -1352
                  srl          t5, zero, a2
                  sltu         t0, ra, a4
                  and          t6, s7, s1
                  and          a6, zero, s9
                  add          a6, s0, s8
                  srl          t4, s9, a3
                  auipc        t2, 57659
                  add          t4, t1, a0
                  slt          s7, t3, s0
                  lui          s8, 135343
                  sltu         s8, t2, t3
                  srl          s1, a5, s2
                  sub          s2, gp, t0
                  addi         t5, a2, 1298
                  li           s8, 0xc5458c39 #start riscv_int_numeric_corner_stream_18
                  li           t5, 0xffffffff
                  li           a2, 0x0
                  li           a5, 0xffffffff
                  li           t2, 0xffffffff
                  li           s3, 0xffffffff
                  li           gp, 0x0
                  li           s10, 0x0
                  li           ra, 0xffffffff
                  li           s4, 0x80000000
                  addi         ra, s10, -896
                  sub          s8, t5, a5
                  auipc        t2, 793595
                  auipc        a5, 70730
                  sub          a2, a5, a5
                  auipc        s4, 504624
                  auipc        t2, 1043844
                  lui          s4, 390213
                  auipc        s10, 400644
                  addi         a5, s10, 1237
                  lui          gp, 565454
                  addi         a2, t5, -62
                  auipc        gp, 144502
                  auipc        gp, 573739
                  add          a2, s4, s10
                  addi         s3, s4, -1783 #end riscv_int_numeric_corner_stream_18
                  add          a3, s8, a5
                  srli         t2, s1, 7
                  and          s2, sp, s1
                  andi         t2, t6, -1283
                  sltiu        t4, a5, 1129
                  auipc        s2, 81787
                  addi         s6, a4, -1487
                  addi         a0, t2, 1072
                  and          t0, s1, s6
                  or           a3, s2, s10
                  ori          sp, t6, 1220
                  sra          s6, gp, s10
                  ori          sp, s3, -1155
                  sub          a5, a1, s11
                  slti         t6, s5, -1281
                  sltu         s1, s5, tp
                  slti         gp, s0, -588
                  sub          a5, sp, s6
                  andi         s3, gp, 696
                  slti         a6, gp, 441
                  slt          a6, t3, t1
                  srl          s9, s5, a4
                  addi         s8, s3, -1831
                  slli         s6, s4, 21
                  and          s2, a4, t1
                  slt          a7, s6, tp
                  xor          ra, t4, a4
                  sub          t5, a4, t3
                  nop
                  addi         s10, ra, -1993
                  slli         t0, a7, 3
                  and          ra, a7, t5
                  auipc        a6, 1029709
                  lui          a4, 477187
                  sltu         tp, s4, t4
                  andi         s9, t2, -863
                  sra          s7, s7, t1
                  or           a0, a3, a2
                  srai         s6, t6, 30
                  sll          s6, a1, s0
                  sub          s6, ra, t1
                  slti         s1, gp, 1876
                  add          a4, zero, t1
                  sub          a6, zero, s1
                  slli         t1, a2, 16
                  auipc        s7, 73714
                  slli         tp, ra, 17
                  lui          t5, 984522
                  or           t6, a1, s10
                  slt          a6, s2, s6
                  srl          s10, t0, t3
                  add          gp, s0, t2
                  xori         zero, s3, 1386
                  or           s3, s1, t5
                  slli         a4, gp, 13
                  srl          s7, s10, s5
                  xori         t2, t6, 1221
                  slli         s4, a3, 18
                  srai         t0, gp, 12
                  add          t3, a0, ra
                  addi         t0, s0, -9
                  xor          t2, a3, sp
                  auipc        s9, 796123
                  sll          a2, s3, t0
                  slti         s9, sp, -1700
                  sub          s7, s2, t3
                  sltiu        s3, a2, -1392
                  sltiu        s3, t3, 1217
                  srai         s3, t0, 30
                  sub          s2, a0, a0
                  nop
                  sub          s10, t3, s8
                  sll          a2, tp, t3
                  and          s3, t2, t0
                  ori          sp, ra, 195
                  or           zero, t5, t6
                  sll          s7, s6, a0
                  sub          gp, t0, a5
                  add          a5, a1, s2
                  ori          a7, a4, -833
                  xori         a4, tp, -1631
                  xori         t0, t5, 1440
                  srai         s9, s8, 11
                  or           t4, zero, t0
                  sub          a5, gp, t0
                  sll          s4, a7, a6
                  sub          t1, t3, s10
                  sltu         a5, a3, s2
                  add          t6, a7, t0
                  or           a4, t3, tp
                  andi         zero, s3, 1966
                  srl          ra, s3, s10
                  andi         a2, t1, -39
                  and          a7, sp, s5
                  slt          ra, s9, s0
                  slt          t6, s3, s6
                  sra          sp, s9, s8
                  slli         t5, a7, 0
                  srl          s9, zero, a1
                  sltiu        s8, a3, 1723
                  auipc        t5, 70868
                  slt          s6, ra, s9
                  sra          ra, t5, t5
                  slti         t1, t3, 473
                  slt          s7, a7, tp
                  slli         t5, a4, 6
                  sra          sp, s7, t5
                  sub          t6, s1, t6
                  or           a7, s11, a2
                  xor          t4, sp, s2
                  or           t3, sp, s5
                  srai         s7, s10, 6
                  sub          t1, a3, a6
                  slt          s6, t2, s11
                  slti         a7, t2, -791
                  andi         a0, a6, -1693
                  srai         a7, s10, 19
                  xori         a6, a5, -1332
                  ori          tp, t2, -1822
                  sltiu        a1, a4, -882
                  nop
                  lui          s3, 268410
                  srli         ra, s7, 21
                  sra          s8, a2, s10
                  slli         s4, a5, 4
                  srl          t2, t1, a2
                  add          sp, t2, s1
                  sra          a7, t3, gp
                  ori          a3, ra, 1167
                  srli         s4, a5, 8
                  slli         tp, a1, 25
                  or           t4, tp, sp
                  sra          a5, t6, s0
                  slti         gp, s9, 1570
                  sll          sp, a0, s10
                  add          a2, a3, a3
                  srli         t4, s6, 28
                  slti         s3, s4, -58
                  add          t5, a0, s10
                  auipc        t1, 495536
                  sub          s2, s2, s0
                  sltiu        s3, s8, 577
                  srli         s10, t1, 9
                  lui          t4, 669695
                  xori         t6, a1, 972
                  srli         t4, s7, 7
                  sll          s2, t6, t0
                  auipc        t6, 1038476
                  slti         a1, s3, 1019
                  slt          a0, s8, s5
                  srai         tp, t4, 16
                  sub          s9, s4, sp
                  nop
                  or           a6, s6, t2
                  or           t4, a4, a1
                  slli         a4, a6, 17
                  sltiu        a2, s11, -1690
                  slti         t1, s0, 1130
                  slti         s9, gp, 729
                  slli         sp, t0, 6
                  sll          t6, s7, s7
                  slli         a2, a1, 25
                  nop
                  and          a0, a0, s9
                  xori         t0, s6, 115
                  slli         s7, a6, 14
                  addi         s6, t4, -157
                  sub          s9, gp, a1
                  addi         s1, s11, -989
                  srai         t4, t4, 23
                  sll          s10, s11, t4
                  slt          s7, t1, a4
                  srl          t4, s2, t5
                  xori         s9, s5, 1088
                  sub          t1, tp, gp
                  sra          tp, s9, a6
                  sltiu        t6, s3, -1581
                  add          a5, s7, sp
                  addi         sp, s0, 1072
                  srli         s3, s11, 9
                  andi         a3, a3, -1215
                  or           s7, s6, s4
                  sll          t1, s7, s3
                  slt          a7, gp, zero
                  xor          t6, a5, s11
                  add          tp, a4, t1
                  addi         s6, sp, -564
                  sub          s1, t6, t3
                  sub          zero, a1, a2
                  srli         tp, t2, 5
                  sltu         t5, s8, a2
                  sll          s4, a4, t2
                  add          s7, a6, a0
                  srai         zero, ra, 16
                  sll          s2, a7, t1
                  and          t3, t4, s9
                  xori         s8, a7, 61
                  or           a3, gp, s2
                  slti         s3, a2, -361
                  addi         a3, a7, -109
                  slti         s9, a6, -415
                  slti         s9, t5, -1435
                  slti         zero, t4, -2020
                  slti         s2, a7, -233
                  xori         s9, s9, -1186
                  srai         t0, a3, 22
                  andi         a4, s7, 897
                  add          s8, a7, a3
                  addi         a4, a5, 1879
                  add          a0, tp, a1
                  andi         s1, t3, -2038
                  or           tp, t3, t2
                  andi         a2, a7, -1235
                  sltu         a2, s9, s9
                  ori          ra, s8, 354
                  srl          a7, tp, zero
                  srli         s1, s8, 1
                  nop
                  ori          s1, s9, 1917
                  sll          a7, t3, a0
                  sltiu        t1, a6, -230
                  and          a4, zero, a7
                  slti         s7, a1, 1045
                  slti         s6, s2, 1931
                  slli         t2, t5, 2
                  add          a6, zero, s0
                  nop
                  add          t2, gp, zero
                  auipc        t5, 645034
                  and          t1, s1, t4
                  and          t1, s8, s4
                  and          a0, s6, s8
                  sltiu        t3, t1, 807
                  srl          a1, s8, s5
                  nop
                  sltu         sp, tp, a5
                  auipc        a0, 845765
                  lui          ra, 616881
                  srli         s10, t1, 4
                  xori         s6, t6, -1358
                  auipc        t3, 423640
                  srl          s4, s0, s3
                  srli         sp, a5, 31
                  sltu         a1, a6, t6
                  sltu         ra, s4, a2
                  slti         tp, s1, 637
                  slli         t2, a3, 8
                  auipc        t6, 994285
                  sltu         a2, t0, t4
                  slti         zero, gp, 483
                  slli         a5, gp, 23
                  or           zero, gp, s3
                  add          a5, s3, s9
                  add          ra, s11, t1
                  add          t6, s4, t2
                  slt          s1, s0, s7
                  andi         s3, tp, -1130
                  xori         t2, s5, 1939
                  sltu         t0, a5, a0
                  lui          t5, 698892
                  or           t3, s3, a1
                  slti         s1, a5, -540
                  xori         s6, a6, 249
                  and          a3, t6, s3
                  addi         t4, zero, -294
                  slt          a1, a4, s8
                  andi         ra, a7, 768
                  xor          sp, s6, t2
                  sub          t4, a4, s11
                  add          t1, s4, a6
                  lui          t1, 946944
                  srli         a1, t4, 15
                  xori         s7, a7, -1332
                  andi         t4, gp, -675
                  slti         a5, t4, -711
                  andi         t6, t6, -700
                  srl          a0, s2, a1
                  nop
                  and          s1, s6, a5
                  sltu         a1, a4, sp
                  sll          a2, t1, s11
                  ori          t0, t0, -1933
                  srl          tp, a0, a4
                  slt          s3, a5, t2
                  or           s3, t4, a7
                  slt          t4, ra, a7
                  or           s4, a3, sp
                  sll          ra, a4, s11
                  slt          s4, s7, s7
                  sltiu        ra, a3, -1213
                  lui          t1, 830985
                  sra          a4, gp, s2
                  and          a4, t6, t3
                  or           t3, t4, zero
                  ori          s9, a7, 1111
                  sll          t0, s8, s4
                  andi         zero, s11, -405
                  sll          a0, t1, t2
                  or           t2, t2, t4
                  slti         t3, gp, 1991
                  andi         s1, t6, -1773
                  xor          s1, s6, a0
                  addi         t3, t0, 1590
                  or           s6, s2, zero
                  srli         s3, zero, 20
                  or           a3, sp, a5
                  srli         t6, gp, 2
                  slti         t2, t3, -1401
                  slti         a4, a0, -199
                  andi         t5, s9, -1300
                  slli         s4, a5, 15
                  add          zero, s9, s0
                  sll          s6, a1, t6
                  sra          s2, s1, s11
                  andi         t3, t0, -489
                  srai         a7, t1, 20
                  andi         a7, s2, 1641
                  sra          s8, sp, t1
                  sll          s7, a4, zero
                  andi         s7, a6, 171
                  addi         t5, ra, 394
                  srl          a4, s6, s9
                  sll          t0, a5, t6
                  andi         ra, ra, 753
                  andi         ra, a1, -492
                  sll          t1, a0, tp
                  sub          t5, sp, a1
                  ori          t6, s0, 2046
                  or           gp, sp, a1
                  or           t6, a0, t6
                  sltiu        s3, t5, 1528
                  xor          s6, t5, a4
                  addi         s9, zero, 1021
                  addi         t1, s8, -840
                  sub          a5, s9, a5
                  slti         sp, s3, -1565
                  sltiu        t5, ra, 1154
                  slt          a0, ra, gp
                  and          a2, s3, s8
                  or           s7, a4, sp
                  auipc        s1, 188561
                  andi         a1, gp, 1546
                  slt          gp, s9, a2
                  sll          t3, a1, s6
                  srl          tp, s10, t3
                  add          t4, sp, sp
                  sltu         a4, s10, s6
                  addi         a1, s0, -1221
                  srl          s6, s11, t5
                  andi         a4, t0, 1908
                  srl          a3, a7, s11
                  addi         a4, t6, -996
                  srli         t1, s0, 13
                  sltu         a3, tp, a4
                  lui          a2, 686793
                  and          s9, a5, s8
                  srl          t6, s7, s8
                  xori         s4, sp, -112
                  add          s6, a5, gp
                  xor          s4, s6, s2
                  addi         sp, a7, 557
                  ori          gp, s9, 644
                  sll          t1, t3, s11
                  addi         s4, s3, -818
                  srai         ra, a3, 23
                  auipc        ra, 300802
                  slti         s6, s7, -1555
                  sltiu        s4, zero, 166
                  or           a1, a3, s8
                  srli         a3, t5, 2
                  sltu         gp, t5, a5
                  srli         a2, s5, 12
                  slti         s3, s10, -1919
                  sltu         s2, s11, ra
                  srai         s3, sp, 10
                  nop
                  sub          s3, t6, a7
                  sub          ra, a2, s3
                  sra          sp, t3, a2
                  srai         a4, a7, 27
                  slli         s9, s8, 10
                  sub          t4, tp, s6
                  slti         sp, zero, -1239
                  sltu         a5, s2, s9
                  sub          s10, a5, s4
                  ori          a4, a3, -208
                  add          t1, s7, s3
                  xor          tp, s6, s8
                  andi         s9, t4, 47
                  slt          a0, a1, a0
                  srl          a6, s10, sp
                  andi         s1, a7, -1528
                  addi         t1, t2, 458
                  auipc        a4, 470527
                  auipc        zero, 427070
                  andi         sp, ra, -887
                  sra          s4, a3, a1
                  sltu         t1, a6, s10
                  add          t6, s11, a0
                  andi         zero, t3, -1027
                  or           s9, t0, tp
                  srli         sp, tp, 3
                  or           s9, tp, a3
                  srl          s8, sp, tp
                  and          zero, s7, sp
                  xor          a1, t5, a6
                  sra          s3, a3, t4
                  xor          a0, a2, s1
                  nop
                  auipc        s8, 784560
                  auipc        a1, 371066
                  slt          a3, t1, a7
                  ori          s9, t3, 1414
                  add          s3, sp, s11
                  sub          s8, t4, a3
                  slli         t2, ra, 18
                  sra          tp, tp, s5
                  ori          a3, t4, 1506
                  srl          s7, s0, a0
                  or           ra, a7, s2
                  sltiu        a5, a5, 1475
                  slti         a4, a0, 312
                  sltiu        t0, s7, 1787
                  xori         s2, a4, -694
                  add          ra, a6, t1
                  xori         s6, s2, -90
                  sra          s7, s9, a3
                  xor          t1, t1, s5
                  lui          a3, 56375
                  xori         s6, t3, -1306
                  srai         a0, s4, 10
                  xori         s3, t3, 1834
                  auipc        gp, 607672
                  sub          s7, s3, s5
                  and          s3, s1, a5
                  add          s3, s4, t6
                  slt          s2, tp, t5
                  xor          s8, tp, a7
                  add          t6, s10, tp
                  andi         gp, s3, 1904
                  sub          t2, s10, a3
                  ori          s1, a3, 411
                  xori         s1, s7, 1828
                  or           s3, a5, ra
                  srai         a6, a2, 30
                  slli         t3, ra, 6
                  sub          s1, s0, s1
                  slt          a0, s9, s9
                  ori          a2, a4, -1272
                  sub          s6, gp, s3
                  andi         t5, a1, 689
                  sll          s2, t3, a6
                  slti         t0, s7, 1679
                  slti         t0, s1, -1724
                  sltiu        t3, sp, -522
                  sra          gp, gp, t1
                  slti         s4, s11, 56
                  srl          a4, a0, gp
                  srli         a2, s11, 4
                  srai         s3, t1, 13
                  addi         s4, a0, 507
                  or           a2, t6, a1
                  slt          a2, s9, t2
                  sra          a5, s6, t1
                  slti         tp, s1, -468
                  sltu         a0, s0, a0
                  xor          t5, zero, zero
                  sltiu        a5, t2, 608
                  sltu         gp, a1, a6
                  slti         a3, t2, -1847
                  sltu         a2, s2, gp
                  sub          s9, a7, a0
                  andi         a2, t1, 1482
                  sub          a1, tp, s6
                  slti         s6, s4, -2031
                  andi         a0, a2, 1084
                  sltiu        t1, a6, -839
                  slt          s1, t0, a5
                  sltiu        s9, s5, 1544
                  sltu         s4, a6, t6
                  srl          ra, a4, ra
                  sll          t2, s3, a4
                  nop
                  addi         ra, s1, 727
                  xori         s10, s5, 1504
                  nop
                  add          a1, sp, s8
                  nop
                  sra          a1, s6, a0
                  nop
                  sltu         t0, s7, t1
                  and          s2, s5, zero
                  sll          s4, s7, s4
                  addi         s7, tp, 1652
                  auipc        s2, 758467
                  addi         t6, s5, 25
                  xor          a4, t4, t4
                  slti         sp, s5, 482
                  sll          a0, t6, a5
                  addi         s6, a4, -1489
                  addi         a7, sp, 1310
                  sll          t0, a6, a6
                  or           ra, a5, a0
                  slti         zero, sp, -1968
                  nop
                  srl          t2, s8, a6
                  xor          s6, t2, t4
                  srl          s9, s5, a6
                  addi         a2, s0, 1110
                  xori         a6, s10, -1657
                  xor          t0, a5, s8
                  sra          t6, s10, t0
                  sltu         sp, a4, t2
                  slt          a3, t1, s6
                  slti         s10, t5, -156
                  li           t6, 0x564b985e #start riscv_int_numeric_corner_stream_7
                  li           a0, 0x0
                  li           a4, 0xbc28318e
                  li           t5, 0x0
                  li           a2, 0x0
                  li           s6, 0x80000000
                  li           ra, 0xffffffff
                  li           s10, 0x49fcbf5e
                  li           a5, 0xffffffff
                  li           a6, 0x80000000
                  auipc        t6, 63607
                  add          a4, s6, a4
                  nop
                  sub          ra, s10, s6
                  sub          t5, s6, a5
                  lui          a0, 843869
                  nop
                  addi         a4, a2, 1936
                  sub          a4, t5, a0
                  addi         t5, a2, 1856
                  nop
                  lui          s6, 964426
                  auipc        a6, 602367
                  sub          ra, a4, a5
                  sub          a6, s6, s10
                  sub          a6, a5, s6
                  lui          a6, 723664
                  lui          s6, 777609
                  add          s10, a4, a2
                  auipc        t6, 129208
                  add          a5, a2, a5
                  nop
                  sub          t6, ra, ra
                  auipc        a5, 241735
                  nop
                  sub          t5, ra, t6
                  sub          t6, s6, t5
                  auipc        a6, 1006817
                  add          a6, a6, ra
                  lui          s10, 471986 #end riscv_int_numeric_corner_stream_7
                  or           t0, a5, t5
                  sltu         t6, t4, a1
                  addi         t0, a1, 137
                  or           s7, a1, t4
                  ori          gp, t0, 1199
                  srl          a2, s0, a2
                  sll          s8, t5, t6
                  sub          ra, s4, a2
                  sll          s2, s7, a6
                  sra          t6, s0, t3
                  and          s8, a7, s6
                  xor          gp, sp, s2
                  slli         t2, s9, 4
                  srai         a2, a1, 23
                  sltu         s6, t6, s9
                  slli         sp, ra, 3
                  andi         t1, s6, -112
                  sll          s2, s6, a4
                  andi         a0, s0, 1804
                  xori         s6, s5, -1109
                  xor          a3, s2, tp
                  sra          tp, t0, t1
                  ori          a6, t2, -113
                  sll          s3, zero, a5
                  auipc        t6, 554237
                  sra          tp, a3, s9
                  andi         s3, a6, -1852
                  addi         t6, zero, 879
                  xori         tp, a5, -1099
                  srli         gp, a7, 5
                  sll          s7, s9, t2
                  sll          s7, t2, s2
                  or           a3, s8, t5
                  ori          s1, gp, 566
                  sll          t4, s10, t5
                  srl          a7, a2, a6
                  or           tp, tp, t6
                  ori          t3, zero, -636
                  sltu         gp, s1, t2
                  lui          a2, 834408
                  andi         t2, t6, -1441
                  ori          tp, a7, 387
                  srl          s3, a3, s0
                  xor          ra, a3, a7
                  slti         gp, s3, -394
                  sll          s10, a2, gp
                  ori          s2, a3, -1135
                  sub          t6, s10, gp
                  add          s3, a2, ra
                  andi         s10, tp, -471
                  lui          a4, 470110
                  srl          s4, a4, sp
                  sltu         t0, s0, gp
                  srli         s1, ra, 23
                  slli         gp, s4, 18
                  ori          tp, a5, -914
                  add          a5, s6, a3
                  nop
                  sll          s10, s9, ra
                  lui          t3, 535362
                  sltiu        zero, a0, -636
                  add          s1, sp, a2
                  ori          s4, s9, -1328
                  and          t3, a1, sp
                  sra          s10, a7, t6
                  srli         s2, gp, 11
                  sub          s6, ra, t0
                  xori         t0, t6, -209
                  or           t1, s9, s6
                  srli         s2, s5, 24
                  sll          a5, zero, a5
                  auipc        a0, 465706
                  sltiu        s7, t1, -1325
                  nop
                  andi         s7, t2, 1454
                  and          tp, a3, s4
                  slli         tp, zero, 26
                  add          a4, s8, t1
                  slli         s2, t3, 20
                  sltiu        a2, a6, -1471
                  lui          s1, 658073
                  srli         s4, s11, 21
                  nop
                  srai         a3, s5, 22
                  lui          s4, 480797
                  andi         s6, s3, -932
                  slt          s4, tp, t1
                  nop
                  sltiu        sp, t4, -300
                  srl          s2, sp, s7
                  srai         s9, ra, 23
                  sra          s4, tp, s5
                  srl          s1, s10, a1
                  slli         zero, s5, 0
                  sltu         t4, a0, a2
                  xor          tp, t3, s1
                  slti         s6, sp, -1885
                  and          s4, a4, a4
                  auipc        s3, 111352
                  sltu         a2, a7, t6
                  auipc        gp, 529785
                  sltiu        a0, t3, -2038
                  sub          s8, a2, gp
                  srli         t5, s6, 10
                  lui          t0, 910759
                  xor          s4, zero, ra
                  lui          a7, 912316
                  sltu         ra, s11, a4
                  slt          s3, a1, a1
                  ori          ra, s1, -666
                  lui          a0, 152319
                  srl          s3, zero, s1
                  addi         s10, s0, 1392
                  add          t4, s1, a5
                  or           s6, s10, s2
                  add          s10, a6, s7
                  slli         a3, ra, 18
                  srai         tp, t4, 7
                  andi         s9, s11, -919
                  andi         s4, t1, -1941
                  sltu         t6, s4, t2
                  sltu         s8, t4, s1
                  addi         s2, a3, 1538
                  srl          a4, s2, a0
                  sltiu        s3, s2, -750
                  andi         sp, a3, -1584
                  add          ra, s2, a3
                  xori         sp, a3, 1316
                  add          s3, s11, t6
                  add          a6, s1, t4
                  andi         s4, t0, 1317
                  ori          t6, t0, 1014
                  slti         a2, s11, 877
                  srl          s7, sp, t6
                  sltu         a4, a2, tp
                  sll          s3, s8, zero
                  add          s3, s0, a6
                  add          s6, a0, s1
                  or           ra, s9, a5
                  slt          s3, s4, s0
                  srli         zero, t3, 0
                  slt          t1, t5, t5
                  slt          t5, s9, a0
                  addi         tp, s1, -541
                  or           gp, s1, s4
                  sltu         tp, s8, s8
                  srl          s2, a2, a2
                  sra          a7, a6, t4
                  slti         s10, s1, 688
                  sra          s8, t2, s6
                  add          a5, s5, s7
                  and          s9, s9, s8
                  sub          a1, s11, tp
                  sll          s7, t1, t4
                  xori         t4, sp, 461
                  srl          s1, zero, t0
                  srl          t6, s5, s4
                  sll          t5, t1, a2
                  xor          a0, s10, a4
                  andi         s8, s2, -1170
                  andi         t5, s0, -1488
                  sll          t4, a7, zero
                  slti         t5, t0, 754
                  sra          s7, s9, a5
                  ori          zero, s4, -1465
                  srai         t5, a7, 28
                  xor          tp, s5, a3
                  xor          s3, s5, s8
                  xori         a7, ra, -901
                  sltu         tp, t3, a6
                  srli         a7, ra, 29
                  srl          s10, s2, a5
                  xor          s2, gp, s3
                  andi         s1, s3, 1075
                  lui          s4, 751984
                  sltu         t0, zero, s9
                  srai         ra, gp, 2
                  sra          a6, t3, t0
                  auipc        zero, 922781
                  addi         s8, t1, 569
                  sltiu        a2, a1, -1490
                  sub          t4, t5, a1
                  slti         a3, t2, -793
                  sltu         t0, t5, t6
                  lui          s3, 24744
                  addi         t6, s2, -179
                  slli         s4, t1, 10
                  addi         t1, a6, -1083
                  sra          t6, t4, t3
                  ori          s9, a5, -1398
                  xori         s7, s4, 707
                  auipc        a0, 942463
                  sub          zero, s5, s8
                  and          a3, sp, t4
                  srl          a6, zero, s3
                  sll          t5, a3, ra
                  slli         sp, s2, 18
                  addi         a5, t6, 1638
                  sub          t3, s3, a2
                  and          s9, gp, ra
                  xori         a7, a4, -1239
                  xori         t5, t2, 351
                  andi         t6, s11, 106
                  addi         a6, t0, 644
                  srai         s9, s4, 26
                  and          t1, s10, a0
                  slli         t5, s6, 9
                  sub          s4, s7, s6
                  xor          a7, s7, a7
                  xor          t2, a3, a2
                  nop
                  or           a4, t1, a2
                  xor          a6, t5, t6
                  addi         a6, s10, -1479
                  add          a1, s3, s1
                  lui          t2, 90355
                  or           s1, t1, a2
                  li           t0, 0xda162fae #start riscv_int_numeric_corner_stream_17
                  li           s6, 0x80000000
                  li           tp, 0x80000000
                  li           s2, 0x0
                  li           t6, 0x80000000
                  li           s1, 0x80000000
                  li           s8, 0x80000000
                  li           t2, 0xffffffff
                  li           t5, 0x0
                  li           a6, 0x80000000
                  auipc        a6, 941398
                  sub          tp, t0, s1
                  lui          t0, 286892
                  add          a6, t5, t0
                  sub          s8, s8, t5
                  nop
                  addi         t0, t6, -1667
                  sub          s6, t6, t6
                  lui          t0, 877479
                  lui          s6, 433077
                  nop
                  nop
                  nop
                  lui          t5, 350939
                  auipc        a6, 568745
                  addi         s6, t2, -1900
                  auipc        t2, 718449
                  lui          s2, 15030
                  add          s1, s1, s6 #end riscv_int_numeric_corner_stream_17
                  slli         sp, tp, 0
                  sltiu        s3, s0, 1529
                  slli         t3, a0, 20
                  lui          s3, 158815
                  nop
                  slli         tp, t3, 29
                  slt          s4, s7, a2
                  sll          s9, tp, t5
                  slli         t1, a6, 21
                  sub          a3, t5, zero
                  or           s10, zero, a6
                  slli         ra, t3, 12
                  slli         zero, a4, 6
                  andi         zero, s9, -1902
                  slli         gp, ra, 4
                  sub          t5, a0, gp
                  or           a1, zero, a4
                  andi         t4, s4, -1708
                  ori          s9, t2, -195
                  srl          s10, t6, s1
                  sll          a4, a6, t6
                  andi         s1, a1, -1082
                  srl          s4, s6, s1
                  xor          s1, s0, t3
                  sub          a1, s0, s5
                  xor          s10, a1, a0
                  sra          s10, s3, s4
                  lui          s6, 444944
                  nop
                  ori          a6, t4, 431
                  nop
                  auipc        s10, 164416
                  xor          t4, a3, a5
                  xor          a6, s2, a6
                  or           s1, ra, gp
                  lui          t0, 129271
                  srai         s10, ra, 10
                  srai         t4, t2, 6
                  srli         s2, t0, 11
                  sll          t6, t6, s6
                  srl          tp, s6, a0
                  auipc        t1, 41940
                  andi         gp, s4, -345
                  auipc        t0, 173817
                  srai         a3, a0, 18
                  lui          a3, 345471
                  add          t0, s1, a4
                  sltu         sp, t2, s6
                  nop
                  slt          t2, s6, t5
                  auipc        s1, 195551
                  sltu         s9, gp, s10
                  lui          a3, 263354
                  slt          t4, s8, a7
                  xori         a7, s0, 472
                  slti         s6, s5, -522
                  xor          ra, t0, a2
                  sub          s8, t6, t1
                  ori          zero, s6, -386
                  sll          a7, a2, a7
                  sltiu        s9, a6, -824
                  auipc        t1, 777511
                  slti         t1, s8, -188
                  and          a1, a5, a1
                  slli         t6, t2, 12
                  and          a0, s5, sp
                  srli         a0, s6, 23
                  sub          s9, s3, t3
                  lui          s3, 1006206
                  sra          a7, s1, s10
                  sra          s7, ra, a4
                  add          t0, a6, a5
                  add          t2, t0, s8
                  sltu         tp, s6, t0
                  slt          a2, ra, t4
                  andi         zero, s5, -1021
                  and          a2, zero, s0
                  or           a4, ra, a6
                  add          a4, s11, s0
                  sub          a1, s8, t1
                  addi         s3, a0, 1319
                  slti         s6, zero, -719
                  sra          t4, s1, a7
                  sub          a6, t0, a5
                  xor          t4, s8, t0
                  xori         s1, a3, -1074
                  lui          zero, 238662
                  slt          a6, t1, s7
                  and          s10, zero, t4
                  nop
                  ori          s7, t0, -1729
                  sltiu        s6, s2, 264
                  slli         a4, ra, 29
                  andi         a2, t4, -404
                  sll          s10, s7, s7
                  sub          s6, s7, s9
                  add          tp, s6, a5
                  srai         zero, zero, 0
                  addi         s8, s0, -1130
                  sub          a2, s7, t3
                  sra          a2, s4, t0
                  xori         s9, s0, -1455
                  and          s4, s0, a3
                  xori         a0, a5, 942
                  addi         t0, a5, 759
                  srli         t6, s1, 10
                  or           a5, a3, s5
                  sltiu        zero, s11, 1600
                  slti         s6, t1, 1646
                  sltu         a6, s8, t2
                  srli         a7, t0, 22
                  srai         s7, s4, 3
                  srli         zero, s9, 4
                  srl          t5, a4, t3
                  sltu         s10, t3, ra
                  xori         s9, sp, -409
                  auipc        s9, 708809
                  or           t5, a3, s6
                  slli         tp, a1, 28
                  slti         ra, t1, -1151
                  andi         a7, s8, -898
                  ori          s4, t5, -377
                  auipc        t4, 684026
                  xori         a3, s11, 1622
                  srl          t6, s6, s1
                  nop
                  slti         a0, s10, 1503
                  and          t2, sp, s10
                  nop
                  addi         a7, a2, 141
                  srai         a6, s6, 8
                  slli         t0, s6, 21
                  sltiu        s4, t2, -1052
                  xor          sp, t6, t5
                  addi         zero, s0, 1018
                  add          t2, t5, gp
                  and          t1, a5, a5
                  andi         s7, t2, -33
                  slti         ra, sp, 1691
                  add          ra, t4, a7
                  xori         a0, a2, -851
                  addi         a1, gp, 296
                  lui          a1, 105966
                  xor          s4, s10, s0
                  sub          a2, a1, s2
                  xori         zero, tp, -1915
                  srli         tp, s5, 18
                  slti         a3, s11, -242
                  lui          a6, 437648
                  add          gp, t2, t2
                  slti         sp, a1, 30
                  lui          s3, 277097
                  sub          s10, s2, s0
                  and          s7, a1, tp
                  slli         s1, s10, 10
                  lui          zero, 274261
                  slli         t4, t2, 27
                  xor          a3, a3, a2
                  slli         a6, t2, 25
                  ori          s1, s9, -805
                  sltiu        a7, t1, -349
                  sltiu        a0, a2, 678
                  lui          gp, 833269
                  addi         a2, t5, 944
                  auipc        a0, 526519
                  sltiu        a1, a2, 545
                  slli         gp, a4, 13
                  sltiu        t5, gp, 45
                  sll          zero, s5, s11
                  add          gp, s6, t1
                  ori          s10, s4, -1890
                  srai         s2, t3, 24
                  xori         ra, s5, -165
                  and          tp, s0, a3
                  nop
                  sltiu        t5, s10, -110
                  sra          t4, a4, sp
                  nop
                  ori          a1, t2, -1867
                  sltiu        s8, s4, 1024
                  andi         a4, s2, -1392
                  andi         s6, s0, 207
                  srli         s8, a3, 4
                  xori         ra, t1, 893
                  addi         t0, t4, 205
                  addi         s3, s3, 1278
                  xori         sp, a7, -1095
                  sra          ra, s11, a3
                  sll          t6, s10, s0
                  ori          t5, a7, 1645
                  nop
                  or           ra, s4, s7
                  nop
                  srai         a3, gp, 19
                  lui          t3, 587842
                  sltu         a2, s7, a3
                  or           s9, t3, a4
                  and          a1, s11, s2
                  sltu         sp, s0, s1
                  sra          s2, s11, s3
                  srai         ra, tp, 29
                  slti         a5, a3, 435
                  and          ra, a6, s7
                  srai         s10, t6, 7
                  slti         a2, tp, 1212
                  slli         a1, s3, 12
                  srai         a6, a4, 8
                  nop
                  srli         a1, a2, 22
                  xori         a7, s10, 844
                  add          ra, s4, a1
                  sll          a0, sp, s4
                  and          a4, s8, a4
                  slti         s3, zero, -386
                  xori         a5, t6, 1175
                  srai         a1, s8, 18
                  xori         s6, a7, -1561
                  nop
                  slti         t1, t4, -65
                  slt          a6, s3, t5
                  xor          ra, s2, s6
                  andi         zero, a1, -1016
                  sltiu        s8, a4, -1308
                  sltiu        a0, s8, -1790
                  slt          s7, s5, s4
                  slt          s8, tp, a7
                  srai         a0, t2, 27
                  ori          t4, t5, 146
                  slti         t1, s8, 1852
                  sltiu        s4, tp, -972
                  lui          a1, 742643
                  andi         a1, s6, -403
                  sll          t3, a7, s9
                  slt          s2, zero, gp
                  andi         a3, a6, -436
                  or           t0, t3, t1
                  add          a6, s1, s11
                  xor          sp, s2, s7
                  lui          t3, 170911
                  auipc        s6, 220982
                  and          t2, a1, gp
                  xor          t0, s11, tp
                  slt          tp, s5, zero
                  srai         gp, a0, 7
                  andi         t4, s7, 106
                  or           a7, a7, tp
                  slti         t6, gp, 534
                  lui          a3, 790153
                  sub          a6, s8, s2
                  slli         t1, s5, 15
                  auipc        s10, 303030
                  sltiu        a6, s11, -1239
                  xor          a1, s8, s8
                  auipc        s3, 751741
                  auipc        a3, 530317
                  ori          a4, s5, -957
                  andi         t4, s3, 1718
                  and          s7, a1, a7
                  slt          gp, s0, zero
                  srai         s6, s7, 22
                  xor          s1, a7, a0
                  slli         t4, a4, 15
                  srl          t6, gp, s10
                  addi         t5, t6, 1581
                  slti         a1, t2, -1338
                  srl          s8, tp, ra
                  slti         a3, sp, -1171
                  auipc        t2, 106482
                  add          t6, s8, t4
                  slt          t6, s0, s6
                  sll          s3, s1, t1
                  lui          gp, 466801
                  ori          t4, gp, 1336
                  sltu         a6, a2, s9
                  sra          t4, t3, s7
                  sub          s2, s11, a1
                  ori          s4, a1, 774
                  add          s9, a1, tp
                  andi         s8, s5, 1744
                  srli         gp, s9, 5
                  sltu         a4, a5, t6
                  andi         s4, a5, 1350
                  slt          t3, s2, t2
                  srl          tp, t2, a0
                  xori         t0, ra, -1583
                  add          s4, a7, a6
                  nop
                  slli         a1, s10, 8
                  ori          t1, s6, -850
                  xori         a5, t3, 860
                  xor          a4, t5, a4
                  addi         t1, s3, -1996
                  slti         a6, t1, -1395
                  auipc        s9, 43479
                  srl          s4, tp, a2
                  xori         s8, t0, 1908
                  nop
                  slti         s8, s0, -217
                  ori          a0, s9, -955
                  srli         s4, a1, 11
                  auipc        a4, 59057
                  sub          a6, s5, a4
                  and          a7, a1, s11
                  xor          t1, a7, t3
                  sra          a1, s9, s8
                  slli         a6, sp, 22
                  sltiu        s7, s2, -1079
                  slli         a7, s10, 4
                  sll          a7, a7, a1
                  slti         s4, t2, 1414
                  auipc        t0, 792265
                  slti         a5, s2, 392
                  srai         t0, a6, 18
                  auipc        s3, 775739
                  nop
                  xor          s2, s10, t4
                  srl          t4, s8, t0
                  slli         zero, s10, 27
                  addi         t2, s6, 672
                  nop
                  sra          tp, tp, s0
                  and          gp, s1, s8
                  add          s6, a0, a7
                  and          a0, a0, s8
                  and          s1, t1, s0
                  xor          s10, a4, s7
                  srai         s1, gp, 13
                  or           tp, s4, gp
                  lui          a4, 743173
                  slti         s6, s0, 218
                  ori          t3, a3, 1547
                  srai         t3, s0, 19
                  and          a3, t6, s4
                  ori          tp, s8, 1711
                  or           s10, ra, t5
                  srli         a5, s2, 25
                  add          t4, zero, s7
                  nop
                  xor          s9, a0, s8
                  slti         t0, a7, 1078
                  ori          s2, s10, -1939
                  xori         s10, s7, -758
                  slti         t4, a6, 1825
                  slti         a1, ra, 1529
                  xor          s4, a3, ra
                  auipc        a2, 689572
                  srli         a3, t1, 16
                  sll          s7, t1, s7
                  or           a6, s5, t6
                  addi         s8, sp, 78
                  ori          tp, a5, 1968
                  slti         s4, s4, 1809
                  sltiu        s3, s10, -1520
                  add          sp, s3, tp
                  auipc        sp, 863589
                  srl          zero, s10, t1
                  xor          a3, s4, t4
                  xori         s7, t2, -206
                  xori         t6, a1, -35
                  auipc        zero, 137139
                  and          t2, t1, t3
                  ori          a2, s8, -2012
                  srli         s9, a4, 5
                  sll          s7, s2, t2
                  srli         ra, s3, 17
                  or           s4, s2, s6
                  slli         zero, a2, 0
                  slt          s8, s0, zero
                  sub          gp, a6, s8
                  slt          a3, a6, a0
                  nop
                  add          a0, ra, s4
                  or           t4, s4, s4
                  andi         a1, s7, 731
                  slt          a5, a7, t3
                  xor          a2, gp, s10
                  slli         a3, tp, 14
                  lui          t5, 547914
                  sll          t2, s0, t1
                  sltu         s3, tp, t4
                  srli         a3, a7, 15
                  sltiu        t2, ra, -685
                  srl          s3, s1, s11
                  srl          t5, s3, a6
                  sltu         tp, t3, a0
                  andi         s1, a5, 409
                  xori         s3, t4, 349
                  add          t5, a6, t2
                  or           t2, a1, a0
                  sll          t2, zero, zero
                  srai         t2, tp, 2
                  srai         ra, t6, 29
                  ori          s6, s9, -1307
                  sltiu        t0, a6, 871
                  sra          t4, a2, a6
                  slli         s8, a5, 1
                  xori         t4, ra, 1122
                  sltiu        s3, s0, -1930
                  sltiu        s3, a2, 70
                  slli         s4, a0, 6
                  lui          zero, 165012
                  srl          a3, s2, s4
                  slti         sp, gp, -712
                  or           t5, t6, s8
                  srl          a4, a0, s3
                  sltu         s1, s0, a0
                  andi         t0, s4, -1951
                  srl          zero, t1, t5
                  slli         tp, ra, 3
                  auipc        a4, 751116
                  ori          t3, t3, -61
                  slli         t4, a5, 15
                  sll          a0, a1, s1
                  slti         a5, s5, 630
                  sll          zero, s9, s0
                  slt          s7, s9, gp
                  sltiu        t2, sp, 1427
                  or           s1, s6, t4
                  auipc        gp, 268560
                  add          s7, a5, s0
                  slli         a7, zero, 25
                  addi         s7, a5, -1288
                  or           t3, s0, a5
                  andi         zero, a4, 946
                  or           a4, a2, a7
                  add          t0, ra, s1
                  sltu         t4, tp, s8
                  sub          t0, t4, sp
                  slti         a6, a0, 430
                  sltu         gp, a0, a4
                  and          t2, t6, t2
                  xori         s4, t6, 1407
                  xor          tp, s2, a7
                  sll          s8, tp, s9
                  sll          s7, t6, a1
                  slli         s3, s0, 4
                  slli         a0, t3, 0
                  lui          s6, 1037214
                  auipc        a0, 573304
                  sltiu        sp, a4, -792
                  xori         a2, t4, 973
                  or           sp, s0, s9
                  sltiu        s10, t6, -1130
                  or           a5, a2, s8
                  srl          s9, a7, t2
                  auipc        a6, 623382
                  slti         s9, s4, -2006
                  slli         a1, a2, 6
                  sltiu        ra, ra, -1245
                  slt          t0, s2, a4
                  slti         sp, s6, 14
                  srl          s2, ra, s10
                  xori         gp, ra, 356
                  srl          a5, a2, a3
                  andi         a4, s8, -988
                  auipc        t5, 675992
                  sll          t4, t4, t5
                  addi         tp, a0, 1927
                  andi         t4, a4, 1577
                  and          a1, ra, s7
                  xori         s7, t2, 1035
                  sub          a0, t5, t6
                  sub          s9, a4, s10
                  xor          t0, zero, a4
                  slti         a3, t1, -381
                  sltiu        a5, a1, -229
                  ori          gp, s7, 911
                  sra          s9, t4, t1
                  or           a1, s5, s9
                  xori         s3, s10, -1067
                  xor          t1, a1, t1
                  sltiu        tp, ra, -577
                  slt          a1, t0, s7
                  slti         tp, a2, -1320
                  srai         s7, a4, 19
                  slli         t2, s0, 15
                  slli         s10, a7, 10
                  slt          s3, t0, s2
                  srl          t5, s0, a6
                  or           sp, s11, s11
                  ori          a4, a7, 531
                  addi         a3, s2, -768
                  addi         tp, sp, 442
                  or           s9, s4, a1
                  sra          s1, a6, t4
                  srai         s9, a6, 3
                  sltiu        t2, s4, 804
                  and          t1, s4, s8
                  sltu         gp, s11, a4
                  sll          s3, t0, t2
                  andi         t4, ra, 955
                  and          a1, a4, s6
                  auipc        s7, 751419
                  slli         zero, s10, 31
                  sltiu        s1, a6, 1026
                  andi         s3, s11, 1749
                  add          s10, ra, t4
                  xor          t6, a4, t3
                  add          a2, gp, a5
                  srai         t6, a1, 4
                  sub          a4, a0, t5
                  and          s3, s8, s4
                  srli         s1, t5, 7
                  lui          a0, 934796
                  sltiu        a5, ra, -420
                  sltiu        t4, s7, 786
                  xor          s3, t5, a7
                  nop
                  slti         s9, t5, -1579
                  srai         s10, gp, 26
                  sltu         t0, s4, t6
                  auipc        a6, 530595
                  andi         gp, ra, -1930
                  slti         a4, s9, 1456
                  addi         t0, t3, -1169
                  ori          zero, a1, 1959
                  xor          s2, a7, t4
                  srai         a1, a2, 31
                  srai         a7, s2, 22
                  lui          s8, 202259
                  srl          s4, t2, s11
                  xori         sp, t1, -930
                  andi         s3, a2, -561
                  lui          s8, 278127
                  add          sp, s11, ra
                  srai         t5, s10, 0
                  slti         a7, s8, -1045
                  nop
                  lui          s3, 1002649
                  xori         a0, a3, -1296
                  add          a3, s4, s6
                  andi         s10, t4, 23
                  andi         t5, a7, -834
                  add          s6, t4, a4
                  xori         s8, tp, 1304
                  srai         s1, t0, 10
                  sra          sp, a7, s4
                  sltiu        s2, a5, 1410
                  sltiu        t3, s1, 608
                  slli         zero, sp, 2
                  srai         t4, s7, 26
                  andi         t4, t5, -2037
                  lui          zero, 402799
                  srl          tp, t6, t1
                  nop
                  lui          t3, 498821
                  auipc        t4, 30413
                  slti         s1, t0, -1041
                  slti         t6, t2, -91
                  lui          a0, 846276
                  sra          a5, s10, a1
                  srl          t0, s7, s10
                  nop
                  sltiu        a0, a2, 1783
                  srli         a4, s7, 19
                  slt          s4, t1, t0
                  sltiu        sp, a7, -1132
                  or           s9, a7, sp
                  srai         s2, t5, 9
                  and          a3, s9, s5
                  srli         a1, a5, 26
                  slli         tp, s3, 18
                  auipc        s2, 411590
                  lui          a6, 306724
                  sub          t0, a7, s0
                  srl          a1, t5, zero
                  andi         a6, s3, -494
                  xor          gp, a7, zero
                  lui          t2, 206017
                  nop
                  sub          s10, s10, s3
                  xor          a4, a1, s9
                  ori          s6, a3, 1897
                  sll          gp, zero, s3
                  slt          a1, gp, a0
                  addi         t5, s5, -1958
                  ori          s9, ra, -709
                  slt          s1, s3, s11
                  or           ra, a2, s7
                  sub          tp, t1, a1
                  auipc        a0, 527754
                  add          s3, t4, t5
                  addi         sp, s4, -1610
                  lui          gp, 763870
                  srli         tp, s7, 13
                  sltu         a1, tp, a5
                  sub          t1, a6, a7
                  add          a3, s11, s3
                  lui          t5, 870075
                  auipc        tp, 724033
                  slti         s1, a4, 1545
                  nop
                  and          s2, s3, s11
                  xor          s1, a6, s7
                  add          t3, s5, s0
                  sub          s4, a7, a4
                  xor          s8, t4, s10
                  ori          s1, a4, -1165
                  srai         s6, ra, 29
                  add          tp, a1, t1
                  slli         s7, t6, 3
                  xori         tp, ra, -988
                  sub          s3, t1, t4
                  sltiu        zero, s10, 515
                  sltu         sp, s10, s4
                  slt          a2, t3, s5
                  andi         zero, s9, 562
                  sltu         s3, s8, a3
                  lui          tp, 717236
                  add          ra, a5, a6
                  sra          a3, s11, t1
                  addi         s1, t1, 1836
                  and          s10, a0, a2
                  ori          t5, a2, 1014
                  slti         t6, s2, -177
                  add          a1, s7, s6
                  nop
                  sll          a6, sp, s4
                  slti         t4, t5, 893
                  srli         t6, s11, 9
                  slli         t6, s10, 3
                  xori         a4, s3, 259
                  srai         a2, t0, 6
                  sll          a0, a2, s5
                  sra          s9, zero, s5
                  add          a3, a2, s11
                  sltiu        t1, t2, 1532
                  srli         zero, ra, 31
                  ori          gp, a7, 650
                  lui          s6, 573369
                  andi         a7, t3, -1708
                  lui          a3, 273102
                  add          s4, s5, s8
                  srai         sp, s6, 1
                  nop
                  nop
                  slli         a7, a6, 21
                  sub          s6, t2, a6
                  lui          a0, 458203
                  lui          t1, 125420
                  sra          s1, s10, s5
                  sra          t4, t3, gp
                  add          tp, sp, t5
                  srl          a6, s0, ra
                  xori         t5, t5, -581
                  srai         a1, a5, 14
                  add          s9, s4, s2
                  srli         s7, t3, 14
                  sltu         gp, t2, s1
                  xor          t1, ra, s1
                  or           s2, s8, zero
                  auipc        a5, 778019
                  srl          a7, a3, a2
                  andi         t6, s9, -1130
                  srl          a4, a4, a3
                  nop
                  ori          s2, s6, -1024
                  sll          t1, s5, s2
                  slt          s8, a2, a0
                  slli         s2, tp, 18
                  auipc        s1, 374735
                  or           s6, s0, s4
                  auipc        s7, 768724
                  or           sp, a6, a6
                  xori         a6, s8, -425
                  ori          sp, a0, -339
                  xor          t2, s10, t6
                  slti         t4, s8, -347
                  addi         a2, s9, -789
                  slt          t6, ra, a6
                  sub          t6, s11, t6
                  srl          tp, a5, sp
                  sltu         a5, ra, s6
                  addi         a5, s10, 787
                  slti         t5, ra, 546
                  sltiu        a3, s0, 1182
                  xori         s9, s10, 278
                  sltiu        t3, a3, 849
                  srl          t6, a0, s4
                  sltiu        zero, s4, -428
                  sltiu        s10, sp, -46
                  slt          t2, tp, s11
                  sltiu        tp, gp, -1538
                  addi         t4, t0, 344
                  slti         gp, s11, 1752
                  sub          a0, s11, tp
                  slt          s4, a1, a4
                  ori          a4, t1, 32
                  srli         a2, t6, 13
                  sltu         a7, s0, zero
                  srl          s6, t5, t6
                  xori         t3, a0, 1338
                  slli         s8, t0, 19
                  add          s1, s0, tp
                  sra          a4, t6, zero
                  sll          sp, s2, s11
                  sub          s1, ra, tp
                  xor          a0, a5, gp
                  xori         sp, a0, -892
                  auipc        s3, 609180
                  xori         t1, sp, 664
                  slli         t4, s6, 14
                  slli         s6, s4, 17
                  sub          s3, zero, zero
                  andi         a4, a5, 61
                  add          a6, t6, s0
                  sll          s1, t6, a6
                  sub          s3, s4, s9
                  auipc        s10, 937493
                  sltu         s7, t6, t6
                  nop
                  auipc        t2, 582449
                  sltiu        a6, t0, 259
                  srli         a4, t1, 12
                  addi         t4, t2, -99
                  sra          zero, a1, a2
                  srli         s2, t1, 0
                  sltu         s8, s8, tp
                  sra          a6, a1, s7
                  sub          t1, ra, t0
                  srl          s4, tp, tp
                  xori         t3, s1, -597
                  xori         a4, t4, -103
                  srl          t5, s0, s11
                  srl          tp, s7, t6
                  slti         s10, t2, -1756
                  sltiu        s9, a5, -1247
                  srai         sp, t3, 2
                  auipc        ra, 561113
                  and          s9, a6, t5
                  add          s3, sp, s7
                  sltiu        a6, a7, -255
                  sltu         s3, t1, sp
                  sltu         s9, s1, a0
                  add          t3, t5, s9
                  srl          s3, s2, s2
                  slli         s3, s9, 27
                  or           a6, a5, t2
                  lui          a1, 919295
                  slt          t0, zero, gp
                  and          s3, s11, s7
                  andi         s1, s10, -796
                  slti         t6, t5, -857
                  srl          t4, s11, a0
                  auipc        t4, 1024520
                  srl          s1, a7, s3
                  xor          sp, s5, tp
                  slti         s6, sp, 862
                  slti         t4, t6, 1991
                  sltu         a1, s10, s6
                  srl          tp, s10, t2
                  slt          zero, s2, s4
                  sub          a0, t6, a2
                  add          tp, a4, zero
                  sll          tp, s8, tp
                  addi         s2, a1, -447
                  sltiu        a2, s5, 912
                  slt          s1, gp, a1
                  andi         t3, s10, -1455
                  sltiu        a2, a0, -1659
                  addi         gp, s0, -58
                  auipc        a0, 52003
                  xori         zero, a1, 725
                  auipc        t4, 146152
                  sltiu        a0, gp, 80
                  or           a2, a6, a2
                  srai         t4, s11, 1
                  or           a3, s6, t5
                  slt          t3, s3, t1
                  andi         t4, s8, -1142
                  ori          t1, s11, 215
                  nop
                  ori          t6, sp, 1546
                  srai         s10, t4, 23
                  sltiu        a0, ra, -115
                  xor          a3, s6, t3
                  and          s3, a6, s3
                  xor          s3, ra, s1
                  xori         zero, s3, 1682
                  sra          zero, ra, s6
                  slti         gp, zero, 249
                  slt          t5, a1, s9
                  slti         t5, s0, 1804
                  and          t3, s3, s8
                  nop
                  andi         s1, s4, 1363
                  slli         a0, t3, 12
                  add          s9, s2, a1
                  ori          sp, s0, -371
                  slti         a2, gp, 1612
                  sll          a6, t0, a1
                  sra          s6, s0, t3
                  nop
                  add          tp, s2, s0
                  slt          a3, zero, a0
                  sll          t1, t0, t5
                  srli         a7, a7, 30
                  nop
                  slli         s10, s1, 28
                  lui          t4, 751696
                  sll          tp, s7, s11
                  lui          ra, 718943
                  and          s6, s9, s10
                  srl          s2, a4, a4
                  nop
                  sll          ra, a0, t6
                  ori          s9, a6, -280
                  and          s9, s2, tp
                  srli         ra, a1, 30
                  xori         a6, s0, -461
                  xori         tp, sp, -1629
                  andi         s10, a6, 1381
                  srai         a0, s9, 10
                  sll          tp, s6, sp
                  slli         t2, a7, 2
                  nop
                  sll          t2, a6, tp
                  slt          t4, sp, s1
                  slt          a5, zero, a5
                  nop
                  and          t5, gp, a3
                  sltu         a1, s4, gp
                  andi         a4, s4, 444
                  nop
                  slli         s9, a5, 19
                  srl          t1, s4, a4
                  sub          sp, t5, t0
                  srai         s8, s0, 20
                  sltiu        a3, s0, -1040
                  or           s8, a7, a6
                  xori         a0, a4, 1347
                  or           a7, s3, a0
                  and          s9, zero, a5
                  srl          s9, a2, s9
                  xor          s9, t6, s8
                  slt          t4, s9, s6
                  slti         a1, a3, -232
                  nop
                  srl          t5, s7, t3
                  addi         t4, a6, 762
                  slti         s7, s8, -850
                  andi         t1, sp, 146
                  sltiu        zero, s8, -514
                  ori          t4, t1, 845
                  sltu         s4, s2, t4
                  lui          t3, 407965
                  srli         s8, t5, 6
                  nop
                  lui          a3, 518408
                  xor          t2, s1, s8
                  sltu         a1, s10, s4
                  andi         s2, s8, -1854
                  slli         a5, t6, 0
                  sltiu        a3, s10, 40
                  auipc        a1, 646437
                  xori         t1, a3, 234
                  slti         t3, zero, -1431
                  sub          tp, t3, s2
                  srai         a4, s11, 16
                  and          s10, t1, t5
                  add          s2, a5, a4
                  sll          t2, s10, tp
                  slt          s1, s3, t6
                  or           t4, a2, s1
                  or           t1, s0, a2
                  sltu         a3, t0, a5
                  lui          s4, 769405
                  sub          a0, ra, tp
                  slti         s9, a0, -1740
                  xor          tp, s8, t3
                  srai         zero, s10, 23
                  slli         gp, s2, 7
                  slt          a5, s9, s5
                  sll          a1, s5, a1
                  andi         t4, a2, 1074
                  slt          a2, ra, s1
                  addi         s3, s9, 179
                  xor          t5, t2, a3
                  xor          zero, s7, t3
                  ori          sp, t3, 294
                  ori          ra, s4, 205
                  srli         s6, t0, 31
                  sltiu        t1, t4, -1552
                  sll          t5, s6, a1
                  xori         t3, a0, 373
                  srl          t3, s2, s0
                  srl          a7, s8, s4
                  sltu         t6, s6, sp
                  sra          s3, s6, a0
                  auipc        s2, 456925
                  and          a1, s10, a1
                  auipc        zero, 252177
                  ori          t6, tp, 238
                  slt          t4, a0, s6
                  and          a5, ra, zero
                  srl          a1, t6, a1
                  or           s6, s0, t1
                  sra          zero, a4, s10
                  lui          t6, 279503
                  auipc        a1, 169054
                  auipc        s6, 970661
                  sub          t2, a6, a0
                  ori          a4, t0, 1823
                  and          t1, a5, s1
                  addi         t2, t6, 1377
                  sra          gp, ra, s7
                  slt          sp, a4, s10
                  auipc        s9, 7223
                  and          a5, t1, s9
                  srai         a4, tp, 27
                  xori         s6, t5, 650
                  or           s1, s8, sp
                  sltu         t3, a6, t0
                  nop
                  sra          a6, s6, s6
                  xori         a7, a6, -1434
                  andi         sp, s7, -1090
                  auipc        t5, 486612
                  lui          t3, 729619
                  add          t5, a0, s7
                  and          t3, t5, a3
                  sra          t5, a0, s2
                  sltu         t4, a6, a6
                  sub          tp, s7, s2
                  xori         a3, s0, 754
                  ori          gp, sp, -1236
                  slt          a6, zero, s2
                  lui          a6, 948039
                  andi         tp, s0, -493
                  sra          t4, s4, s2
                  srli         s2, a1, 9
                  sra          s6, a3, s7
                  xor          s3, a3, a7
                  andi         s1, sp, 1600
                  slli         ra, s1, 0
                  or           t3, s5, a1
                  and          tp, sp, t6
                  sub          t1, s9, s8
                  andi         a4, a3, -1299
                  sltiu        t4, s9, -742
                  xor          s7, s4, s6
                  xor          zero, a6, s8
                  slli         a6, s5, 29
                  nop
                  addi         s8, a5, 1879
                  srai         s9, s1, 2
                  sra          a4, t4, a2
                  srli         s3, t0, 20
                  sltiu        t3, a5, 1610
                  slt          t3, s5, t3
                  andi         a3, t1, -347
                  andi         sp, t5, -935
                  nop
                  srai         gp, zero, 7
                  andi         s7, zero, 1611
                  xori         s1, a2, -218
                  sltu         tp, s10, a7
                  slli         t3, s7, 17
                  slt          t0, zero, s10
                  addi         a7, s9, 48
                  slli         a7, a7, 18
                  slti         s3, s3, 919
                  auipc        a7, 774458
                  sll          tp, s7, a1
                  ori          t5, s11, -937
                  sra          a3, t3, s6
                  slli         ra, t2, 18
                  sltiu        a2, sp, 1926
                  xor          s1, s5, t0
                  slt          s9, tp, t5
                  sub          a1, t1, a1
                  addi         t4, a1, -1964
                  xori         a7, s8, -300
                  xor          s2, s4, tp
                  xor          a3, a7, ra
                  slli         a7, s10, 27
                  addi         s2, t6, 929
                  ori          s8, s9, 1595
                  slli         s6, s7, 11
                  xori         s8, t3, 980
                  auipc        s3, 438341
                  srai         t6, t6, 25
                  slti         s6, ra, -347
                  lui          sp, 932945
                  andi         s9, t1, 1072
                  sltu         s1, a4, tp
                  slt          t1, sp, t4
                  slt          t2, a6, s5
                  slt          a5, t0, s7
                  sra          a5, tp, a6
                  ori          a3, t4, -1588
                  addi         t5, s10, 276
                  slti         a7, t1, 828
                  ori          s3, a6, 1663
                  or           zero, sp, a5
                  or           t2, a6, s5
                  andi         a4, t3, -413
                  add          s1, s11, s8
                  srli         t6, sp, 1
                  sltu         t3, t6, s2
                  add          t6, t3, t0
                  sra          t1, sp, a1
                  sra          a3, s5, tp
                  lui          s6, 199830
                  sub          a2, s7, t2
                  nop
                  sltu         t4, a2, a5
                  sra          a7, t6, s5
                  add          a3, t0, s5
                  lui          s2, 631239
                  nop
                  auipc        s9, 985824
                  ori          gp, s4, -283
                  slli         a6, sp, 19
                  srai         s6, a7, 22
                  add          t2, s1, t5
                  lui          t5, 889780
                  ori          a6, tp, -783
                  xori         a1, t0, -135
                  xori         t6, a2, -896
                  or           a6, a7, t2
                  sltu         a1, s10, t1
                  lui          a7, 527532
                  xori         s4, s7, -657
                  add          t4, tp, s2
                  ori          s10, t3, -1308
                  andi         s4, t4, -52
                  sra          a2, ra, a5
                  slt          gp, tp, s11
                  slt          a1, s10, s9
                  sra          a4, s3, a1
                  sra          s4, t2, s1
                  srl          s7, zero, t5
                  and          zero, a6, s10
                  sltu         gp, s4, t4
                  slt          t0, a6, a2
                  srl          t3, a4, s2
                  slli         sp, a3, 29
                  srai         s8, a5, 17
                  slti         ra, t3, -245
                  sltu         a1, s11, s11
                  sltiu        s3, s1, 1680
                  slt          a3, gp, a5
                  nop
                  srli         s7, s0, 17
                  lui          t1, 484912
                  sub          a0, a7, a5
                  and          s1, gp, t2
                  auipc        t4, 329516
                  xori         tp, a5, 1591
                  lui          tp, 125574
                  and          t2, s4, t5
                  ori          ra, a3, -537
                  sra          s6, s0, a4
                  xor          tp, s5, a0
                  nop
                  sub          s9, s7, tp
                  and          tp, sp, a4
                  sra          s10, s5, a5
                  or           a4, a1, sp
                  sra          t5, s10, t5
                  or           a1, a4, a0
                  ori          a5, a1, 1057
                  nop
                  sll          t1, s11, t5
                  sra          s2, t6, t6
                  or           sp, s9, s0
                  srai         a3, s10, 15
                  lui          a6, 704120
                  auipc        a7, 18507
                  sra          s9, ra, s2
                  sltiu        a4, zero, -1178
                  nop
                  slti         s7, s10, 291
                  sub          s10, s9, sp
                  sub          t3, s0, a7
                  nop
                  and          s1, a4, s11
                  sltiu        sp, t1, -810
                  sub          s4, s8, s2
                  slli         zero, s5, 17
                  andi         a2, a6, -1977
                  slli         ra, a2, 24
                  sll          s4, s10, s7
                  srai         a7, s9, 12
                  xor          a0, a5, t1
                  auipc        s3, 758975
                  sltu         s3, s3, gp
                  add          s3, a0, s7
                  srai         s1, s2, 12
                  add          s7, s6, s0
                  slt          s6, s2, tp
                  add          s1, s5, t6
                  slti         gp, t6, -980
                  sll          a3, zero, sp
                  sltiu        tp, s10, -517
                  sltiu        s4, s5, 818
                  addi         a5, s9, 338
                  slti         a6, s5, 337
                  and          t3, a7, a5
                  lui          t2, 602584
                  ori          t3, s9, -23
                  sltiu        s4, a0, -191
                  srai         t6, s7, 29
                  slli         t3, s2, 13
                  andi         t2, s6, -99
                  and          s9, t0, t3
                  slli         s1, s1, 18
                  sub          zero, s8, t5
                  sub          a2, a0, s0
                  nop
                  andi         gp, t3, 978
                  srli         a1, zero, 14
                  sll          t6, a4, s2
                  addi         s8, a0, 869
                  or           s6, a3, tp
                  ori          ra, t3, 1023
                  lui          sp, 261817
                  sll          gp, s1, s9
                  srai         s7, a7, 22
                  sub          t0, zero, s1
                  auipc        t5, 786761
                  srli         s1, a2, 10
                  and          s8, a1, s3
                  xor          a3, t6, t6
                  slti         a0, gp, -975
                  sll          a6, a3, t1
                  slt          tp, sp, s0
                  srli         s2, sp, 27
                  sra          a2, t0, s5
                  slli         a2, t0, 6
                  addi         zero, t3, 743
                  slti         s9, s5, -770
                  add          a0, t5, s7
                  xor          a3, a0, a7
                  or           t4, s11, s7
                  xori         a5, sp, 1505
                  srli         ra, t0, 17
                  or           ra, t1, a1
                  addi         a3, s5, -387
                  addi         s4, s0, 1282
                  or           a3, ra, a0
                  and          sp, s1, a2
                  xori         sp, a7, 1864
                  auipc        s3, 154388
                  slti         s4, a3, -400
                  lui          s8, 692786
                  and          t5, s7, t6
                  xor          t1, t3, a0
                  and          s1, s3, s1
                  sltiu        t2, t4, 435
                  ori          s6, t2, 646
                  slt          s9, s11, s4
                  srai         a4, t6, 2
                  or           s7, a0, s9
                  slti         s10, s8, 820
                  nop
                  ori          tp, a2, -20
                  sra          ra, s3, a1
                  srli         t4, t6, 18
                  ori          t3, s10, -1744
                  lui          s7, 585132
                  add          a6, t6, ra
                  xori         a3, tp, -1519
                  addi         ra, t1, 926
                  srl          s4, a7, a6
                  nop
                  ori          sp, t2, -86
                  sra          zero, s4, s11
                  nop
                  addi         sp, t5, 1379
                  sltu         zero, s11, a3
                  addi         a1, s7, -848
                  add          t2, a1, a1
                  addi         ra, tp, 1789
                  add          s9, a4, t4
                  srl          a1, t6, s7
                  sll          sp, s11, ra
                  sltu         a2, a0, s1
                  sub          s4, sp, s2
                  sltiu        s3, a6, -943
                  andi         zero, a3, -1019
                  xori         s7, a4, 1937
                  sltiu        s7, sp, -269
                  nop
                  sra          s6, sp, t4
                  slt          s10, s4, a5
                  slli         gp, a6, 15
                  srli         gp, ra, 21
                  sub          s7, a3, t3
                  lui          t1, 622010
                  add          a0, s7, s9
                  sub          t3, a0, zero
                  and          tp, zero, s1
                  auipc        t5, 907908
                  sub          t4, t4, s2
                  slt          a4, s7, s7
                  auipc        a7, 131521
                  sub          gp, gp, a3
                  sub          s9, s4, t2
                  xor          s1, t1, t3
                  xor          a5, s7, tp
                  auipc        zero, 836448
                  xor          s1, t3, t6
                  add          a3, a3, sp
                  auipc        s10, 810100
                  lui          s6, 1045466
                  addi         a7, t0, -274
                  slt          t2, a1, t0
                  lui          t1, 831161
                  ori          t0, t0, 255
                  and          s1, s1, s10
                  or           t4, s9, t5
                  add          s6, s8, a7
                  sltu         t6, ra, a7
                  xori         t5, t5, -11
                  or           a1, s7, s6
                  srli         zero, a6, 23
                  sub          sp, s5, s11
                  srli         gp, a6, 8
                  xor          s3, a1, s4
                  srai         a7, t2, 8
                  srai         a2, a5, 24
                  sra          s1, a4, t1
                  xori         s9, s4, 315
                  xor          t1, t3, s6
                  srai         zero, s4, 11
                  xori         zero, s4, -75
                  slli         s2, s10, 0
                  slti         tp, sp, -1522
                  slt          s4, tp, s0
                  auipc        sp, 72380
                  slti         a7, t5, -1183
                  add          s10, s9, a0
                  nop
                  sll          s10, t3, a0
                  srai         s9, s8, 13
                  srai         s1, t2, 3
                  lui          sp, 789568
                  nop
                  slt          a5, s7, a7
                  auipc        t0, 326090
                  sub          t2, s9, a7
                  slli         gp, s6, 8
                  slti         s6, t0, -657
                  sltiu        s6, s5, 522
                  srli         t1, t5, 3
                  slt          t1, gp, a1
                  sltu         s3, tp, s4
                  addi         a7, s3, -607
                  xori         t0, s3, -1574
                  andi         s7, s3, 424
                  sltiu        t1, s6, -705
                  sltu         a4, s11, a1
                  slti         s1, s2, -1962
                  sltiu        a1, s9, -352
                  addi         s3, s11, -37
                  srl          zero, a3, tp
                  ori          s1, s10, 1925
                  or           s6, t0, s8
                  lui          a7, 506323
                  andi         t2, a7, -910
                  andi         s9, s7, 1216
                  slt          s4, t1, s9
                  slt          a0, s5, t2
                  xor          sp, t3, sp
                  ori          s4, a2, -1735
                  xori         t2, gp, -1668
                  addi         a2, gp, -752
                  srli         s4, t4, 1
                  nop
                  srl          a1, t0, s6
                  ori          a5, t5, 1251
                  srl          t4, s5, s2
                  xor          a4, s9, sp
                  slt          t1, tp, a4
                  slti         a6, t0, -1981
                  srai         sp, a0, 10
                  nop
                  sra          s2, s7, s2
                  addi         sp, t4, 60
                  srli         s1, s7, 14
                  nop
                  slti         s3, s0, -81
                  sra          sp, s3, s1
                  sltiu        a4, t4, -912
                  slti         t4, s9, 2038
                  auipc        ra, 126291
                  srai         a2, a1, 12
                  and          a6, s10, s7
                  nop
                  nop
                  slli         a2, t6, 28
                  andi         gp, a6, 1819
                  sll          t4, t6, s0
                  sltu         t3, t1, a7
                  and          a1, a1, tp
                  slti         gp, t3, -1394
                  add          a6, s8, s0
                  srli         t5, zero, 5
                  addi         a6, a4, -507
                  and          t1, s4, zero
                  slti         a4, s11, -1187
                  ori          t0, t5, -620
                  srl          a0, a1, a4
                  sub          s3, ra, a4
                  add          t5, t3, s1
                  nop
                  lui          a2, 194831
                  slti         s10, a6, -1564
                  srl          ra, s8, s1
                  xor          s9, t4, s11
                  lui          ra, 414483
                  ori          s1, a0, -70
                  addi         a4, a4, -1418
                  nop
                  sltu         gp, gp, s11
                  slt          a3, a4, t3
                  nop
                  add          s9, t6, s3
                  srl          s8, s6, s1
                  sub          t5, t3, a4
                  slt          s1, t2, ra
                  sra          t0, s7, a4
                  andi         a1, zero, -1359
                  xor          a3, s0, a7
                  sltiu        a7, sp, 1094
                  andi         sp, tp, 728
                  sltiu        s6, a7, 29
                  srai         s8, s11, 2
                  slti         s1, a0, 1668
                  or           sp, a6, t4
                  nop
                  ori          sp, t6, 1083
                  nop
                  slt          s7, t5, t2
                  ori          s3, s2, -1512
                  sra          t1, s1, s5
                  auipc        t2, 483972
                  srli         t5, a2, 27
                  ori          t6, a1, 395
                  and          a7, s0, s10
                  sltu         t5, a0, ra
                  sltu         t4, t4, s2
                  srl          s10, a0, tp
                  xori         a3, zero, 1630
                  and          s9, a1, tp
                  srl          ra, t1, gp
                  add          s1, a6, s0
                  or           t5, s0, s10
                  nop
                  sltiu        a3, t6, -1117
                  slt          s8, t3, a5
                  sltiu        sp, s3, 1598
                  andi         a1, s2, 1571
                  sltiu        s10, t6, -1912
                  and          s6, s6, a7
                  sltu         a3, s4, s7
                  slti         zero, s10, 1396
                  add          t4, t3, sp
                  andi         ra, s8, -325
                  ori          t6, ra, -53
                  ori          t0, s7, 258
                  and          s2, zero, a0
                  sub          s4, s7, gp
                  and          t4, s0, s8
                  slli         a5, a4, 6
                  lui          gp, 868056
                  addi         s6, s9, 602
                  and          sp, a5, t2
                  sra          a0, s6, tp
                  slli         ra, s5, 19
                  sll          t5, s11, t2
                  slt          a7, zero, s5
                  ori          t3, t2, -1639
                  slli         a1, ra, 17
                  auipc        s6, 805452
                  add          sp, a3, sp
                  xor          a1, t5, s9
                  srli         s3, a2, 16
                  nop
                  xor          a0, t3, s11
                  srl          a6, t4, tp
                  sltu         t2, t4, a4
                  sra          a2, a3, t2
                  ori          s4, s2, -1322
                  srli         a2, t4, 1
                  andi         a3, s1, 181
                  ori          sp, gp, -1560
                  sub          t1, s1, tp
                  add          a7, tp, a7
                  sra          a4, a5, tp
                  srli         a3, zero, 14
                  lui          t1, 126341
                  slli         t1, ra, 10
                  sltu         s4, s8, t0
                  xori         sp, tp, 1280
                  and          t0, s2, a2
                  and          s9, t2, a2
                  sll          s9, s8, s2
                  and          a5, gp, ra
                  slti         s2, a3, -642
                  auipc        a6, 990837
                  addi         s1, t0, 511
                  xori         a6, t6, 1988
                  slli         a1, s6, 3
                  nop
                  srai         a0, a4, 21
                  nop
                  or           s10, a5, t1
                  andi         a5, ra, -1690
                  slli         s4, a5, 4
                  sra          s9, t4, a5
                  slti         a5, a1, 1449
                  sub          ra, a1, s3
                  slti         a2, t1, 1526
                  slti         ra, zero, 1446
                  srl          a3, s6, a4
                  andi         a1, s0, -152
                  sub          s4, t6, s4
                  nop
                  sub          t3, a3, s0
                  sra          s6, s4, t4
                  and          s8, gp, s6
                  auipc        t4, 470095
                  add          t4, s0, s0
                  srl          s1, s7, gp
                  sra          s3, a2, tp
                  or           a2, a3, t5
                  xori         t5, a5, -529
                  addi         a1, gp, -956
                  sll          a1, s0, s8
                  srli         ra, s2, 23
                  slli         t1, gp, 21
                  andi         a0, s8, 1712
                  or           s3, a6, s8
                  slti         s9, sp, 21
                  srl          t4, a7, s8
                  auipc        s8, 96239
                  sra          sp, t0, a1
                  ori          t0, s5, -759
                  ori          sp, t5, 462
                  sltu         a2, sp, a3
                  slt          s10, s11, s0
                  sltu         t1, zero, t5
                  add          a7, a0, s5
                  sub          a0, gp, s0
                  slli         t3, s6, 1
                  sub          a0, s9, tp
                  addi         a4, a4, -978
                  lui          s4, 430859
                  sltiu        a6, s10, 1502
                  auipc        a4, 761491
                  srai         s1, a4, 24
                  nop
                  srl          a1, tp, s1
                  or           a1, a7, t5
                  sltu         gp, tp, s2
                  srl          a7, s6, tp
                  sub          ra, a0, t6
                  srli         t1, t3, 22
                  and          t1, t4, t1
                  srli         s8, t3, 29
                  sltu         sp, s3, s2
                  and          t2, s5, t3
                  slli         t4, sp, 17
                  sltiu        a4, s5, 898
                  sll          s3, zero, t1
                  sltiu        t1, s1, -362
                  slti         a1, a3, -1790
                  and          s3, t3, a5
                  sub          a7, s7, s3
                  lui          tp, 792423
                  sub          t6, tp, t6
                  sltiu        a3, a0, 220
                  addi         s10, s4, 522
                  or           t4, s1, a7
                  andi         a2, a1, -1615
                  auipc        s4, 94462
                  sltu         s2, s5, a0
                  srl          a5, s0, s6
                  auipc        s7, 666038
                  sll          s10, t1, t0
                  xori         s10, t0, -899
                  andi         gp, s1, 1297
                  andi         a2, s1, 837
                  lui          s8, 165295
                  sra          s8, a7, a5
                  ori          a7, s5, -1526
                  slli         a6, s6, 28
                  auipc        s6, 4596
                  slli         s10, a7, 21
                  sra          s2, t2, s10
                  srai         t2, s11, 19
                  sra          t6, t5, t2
                  slti         t5, t3, -1073
                  srli         a3, s0, 16
                  add          s3, s6, t3
                  sub          s4, s8, a3
                  sltiu        a2, a3, -981
                  sll          t5, s7, s1
                  addi         a1, s5, 1934
                  auipc        s8, 235416
                  slli         a2, gp, 3
                  or           s2, s5, s7
                  addi         t2, gp, 1916
                  srai         t0, a7, 5
                  ori          t5, gp, 1400
                  add          a2, ra, s8
                  sltiu        sp, a3, -815
                  sll          a1, ra, t1
                  srl          s3, s11, s1
                  slt          s6, s8, s5
                  add          t4, tp, s11
                  sub          s1, s8, s0
                  slti         a3, tp, 425
                  li           s9, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           a4, 0x80000000
                  li           a1, 0xffffffff
                  li           a3, 0xffffffff
                  li           gp, 0x80000000
                  li           s8, 0xffffffff
                  li           tp, 0x14c6cfa6
                  li           a2, 0xffffffff
                  li           s6, 0xa4d1179
                  li           a0, 0x728b59a
                  auipc        s6, 4457
                  auipc        tp, 533772
                  sub          tp, a4, s6
                  lui          a4, 8913
                  auipc        gp, 795803
                  auipc        gp, 256350
                  auipc        a3, 304094
                  sub          s9, s9, a3
                  nop
                  addi         s6, s6, -112
                  add          a2, s6, a1
                  add          s8, s9, a1
                  addi         a2, gp, 1549
                  addi         tp, a2, -1688
                  addi         tp, s9, -1908
                  sub          a3, s9, a1
                  nop
                  nop
                  add          a1, gp, tp
                  sub          a2, tp, s6
                  auipc        a1, 305915 #end riscv_int_numeric_corner_stream_15
                  xori         zero, t1, -503
                  add          ra, sp, s5
                  sra          a7, t2, s6
                  sltiu        t4, a2, -603
                  sltu         a6, s6, ra
                  sltiu        sp, tp, 1271
                  auipc        a1, 654590
                  li           t5, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           gp, 0x0
                  li           s2, 0xf2158b1f
                  li           t3, 0x4c2c8d0e
                  li           s10, 0xa145c66a
                  li           s7, 0x80000000
                  li           s6, 0xffffffff
                  li           a3, 0xffffffff
                  li           s1, 0xffffffff
                  li           a1, 0xffffffff
                  sub          t3, s1, t5
                  addi         gp, s1, -1170
                  auipc        s10, 947740
                  nop
                  nop
                  nop
                  sub          s1, t3, s7
                  addi         s2, t5, -1042
                  addi         s6, t3, 552
                  lui          s10, 617414
                  addi         s7, s6, 1831
                  add          a3, s2, s6
                  add          s7, s7, s7
                  lui          s10, 155716
                  addi         s2, t5, 1523
                  auipc        s6, 933427
                  addi         s1, t5, -1041
                  sub          s7, t5, s2
                  lui          s6, 635174
                  addi         t3, s7, 1510
                  addi         s2, s1, -1084
                  auipc        s1, 156482
                  nop
                  add          s7, s6, a3
                  add          s7, a1, gp #end riscv_int_numeric_corner_stream_6
                  xor          t1, s1, s4
                  andi         t0, ra, 1136
                  slli         a4, a2, 30
                  slli         a2, a1, 27
                  auipc        a6, 756279
                  add          s9, ra, a6
                  or           s10, t4, a6
                  sra          ra, a1, s9
                  sll          a0, s2, s5
                  sll          t1, s7, t3
                  xori         a4, s6, 1758
                  slt          s10, s10, s6
                  ori          s7, a6, -1719
                  slti         s9, a4, 709
                  nop
                  addi         s10, sp, -268
                  srai         s4, s7, 0
                  or           s6, tp, a2
                  or           s10, s0, tp
                  lui          s1, 964249
                  add          a7, s5, a1
                  sltiu        a0, s1, -1115
                  andi         sp, s9, 1836
                  sra          a5, ra, a5
                  srli         a3, s6, 24
                  lui          s8, 716188
                  addi         a1, a5, 863
                  sub          zero, s0, s1
                  or           s8, tp, s1
                  and          t2, a0, a0
                  andi         tp, tp, -1475
                  sra          ra, a7, t0
                  slt          t4, t6, t4
                  andi         t2, t2, 1735
                  nop
                  xori         gp, tp, 1678
                  auipc        s10, 851379
                  srl          s9, t1, s4
                  sltiu        a7, t0, 774
                  auipc        a1, 36068
                  srai         t4, ra, 8
                  or           t3, s4, ra
                  ori          s3, s7, 1150
                  sltu         s1, s0, a5
                  srli         s8, t1, 10
                  add          s4, t5, s2
                  sub          tp, a1, s6
                  nop
                  sll          a0, t4, a5
                  sra          s10, s3, a3
                  addi         a1, a0, -1962
                  slli         s9, a3, 25
                  slt          t6, zero, a2
                  srai         a5, s7, 26
                  slti         s10, sp, 781
                  sltu         a5, s6, s0
                  ori          gp, s11, 275
                  srl          zero, a0, s11
                  addi         a4, s9, -212
                  lui          t6, 447244
                  sra          a4, a0, t3
                  slt          a5, s8, a2
                  and          s10, gp, tp
                  slti         s3, t3, -1452
                  sll          t5, s1, gp
                  srai         zero, s3, 23
                  srai         a2, s8, 6
                  srl          a0, a0, t0
                  sltu         a6, s4, a2
                  slt          t1, zero, s2
                  add          sp, ra, a2
                  addi         t6, s3, -1899
                  xor          zero, a4, s7
                  slli         a4, s5, 2
                  sub          a6, t5, t6
                  sll          ra, t5, s11
                  srli         a0, zero, 29
                  xori         t3, s10, 254
                  sll          t5, zero, s11
                  nop
                  ori          t1, t5, -680
                  xor          t6, s3, s10
                  srai         t1, s4, 8
                  addi         a5, a2, -1815
                  srai         a4, s8, 16
                  srl          a5, ra, s6
                  srli         tp, a4, 23
                  xor          t6, a4, s5
                  sra          sp, s2, s11
                  slti         a7, a2, 554
                  sub          ra, a3, s0
                  sltu         s9, a2, s0
                  andi         s1, s9, -66
                  lui          s2, 693873
                  xor          t5, s0, t2
                  auipc        a5, 775242
                  lui          a4, 618093
                  xor          sp, t2, a4
                  srli         t3, s9, 0
                  srl          s3, s6, s6
                  sra          a2, zero, t0
                  sltu         tp, t1, a6
                  slt          s1, s11, a6
                  sra          s1, a6, s2
                  or           sp, s9, s4
                  sltiu        t4, s5, -440
                  sub          t2, s0, t3
                  slti         t0, a1, 1828
                  andi         gp, t4, -1560
                  slt          t2, s9, a7
                  or           a7, t1, a6
                  sra          a0, t4, t6
                  slli         zero, t4, 3
                  srli         t3, s0, 19
                  slti         t2, a0, 1021
                  sll          t0, tp, gp
                  add          s4, s6, t3
                  addi         t2, a0, 996
                  nop
                  sub          s4, s10, t4
                  auipc        t0, 719527
                  srl          ra, s11, t0
                  auipc        s9, 87966
                  srl          a6, s4, s1
                  andi         s2, tp, -330
                  sub          s10, t0, s9
                  srli         t0, a5, 19
                  slt          a1, tp, a1
                  auipc        sp, 805104
                  ori          a0, s3, -1383
                  sub          a1, s5, s3
                  sra          s1, t5, s11
                  sll          t0, s6, a4
                  sltu         t5, a6, s2
                  xor          ra, a1, a2
                  lui          t6, 286578
                  sltiu        t3, a3, 730
                  slt          t4, t2, t5
                  xori         t5, a3, -532
                  srai         a1, a6, 10
                  srli         s9, s5, 11
                  addi         s1, t5, 1690
                  slt          a7, s9, t0
                  slt          t6, a7, s6
                  sub          t4, t2, s1
                  srai         sp, t3, 10
                  and          sp, t0, s10
                  xor          s8, t6, s9
                  or           a2, t2, t1
                  sltiu        a6, a7, -237
                  ori          gp, t1, 1008
                  sra          a2, s10, sp
                  xori         ra, t5, -879
                  sub          s6, t5, a6
                  slti         a5, s8, -1294
                  slti         a1, t5, -1732
                  srl          s8, sp, a5
                  xor          gp, s10, gp
                  lui          zero, 491720
                  lui          s7, 797935
                  addi         t0, gp, -1590
                  nop
                  sll          t2, a4, a1
                  sub          a0, a7, a6
                  srl          s2, a1, t1
                  sltu         t1, s7, tp
                  sra          a6, a6, a4
                  or           s4, a0, a6
                  sltu         t6, s7, t3
                  sra          sp, s10, ra
                  slti         a0, a2, 1095
                  srai         zero, s4, 15
                  xor          t1, zero, s8
                  sll          t5, s7, a1
                  sltiu        s9, s2, 2022
                  ori          t5, s0, 1704
                  sll          zero, s11, gp
                  and          t1, a4, a1
                  nop
                  sra          t1, t5, a6
                  srai         t6, a0, 25
                  and          s10, zero, a0
                  andi         t2, sp, 1497
                  sra          s4, s9, zero
                  or           s4, a6, s4
                  xor          s6, s0, s7
                  or           ra, t1, s0
                  or           t3, s7, gp
                  srli         t4, a7, 19
                  xor          s2, a7, s4
                  nop
                  slt          a4, gp, t1
                  sltu         s6, ra, a0
                  ori          a4, gp, 1432
                  sra          zero, s2, a7
                  sltiu        t2, tp, -1220
                  and          a1, zero, zero
                  xori         a5, s7, -62
                  xor          s9, s5, a1
                  ori          a6, a3, -477
                  auipc        a2, 448976
                  and          tp, s5, s5
                  add          t0, t4, s2
                  and          t5, s7, s0
                  sltiu        a1, s3, -856
                  andi         gp, s7, 672
                  slli         t0, gp, 5
                  slli         s8, s0, 11
                  nop
                  nop
                  srl          tp, t4, s4
                  slli         a1, ra, 9
                  slli         t6, s1, 22
                  srl          s8, t6, s11
                  srai         a2, a2, 11
                  add          t4, a4, s2
                  sltiu        a6, zero, -1653
                  auipc        sp, 1031723
                  andi         a4, s1, 966
                  srl          s3, s11, t1
                  and          a6, zero, s11
                  sub          t5, zero, a1
                  addi         a4, a1, 386
                  sltu         t2, s4, s4
                  and          gp, s1, a7
                  and          a4, s2, t4
                  srli         gp, s2, 2
                  andi         a5, a3, 152
                  sltiu        a2, t6, -685
                  xor          t0, t6, zero
                  slt          a2, ra, s5
                  sub          s3, t2, gp
                  andi         a7, s4, 1217
                  auipc        t4, 275023
                  srl          a2, a6, a5
                  andi         a2, s5, -1457
                  slli         sp, s10, 24
                  nop
                  sltiu        a6, s2, 1376
                  auipc        s6, 83623
                  xor          t3, s11, s11
                  xori         a6, a5, -982
                  la x21, test_done
                  jalr x0, x21, 0
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
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x27, x8, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_2:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x27, x8, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_3:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x27, x8, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_4:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x27, x8, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_5:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x27, x8, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_6:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x27, x8, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_7:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x27, x8, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_8:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x27, x8, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_9:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x27, x8, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_10:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x27, x8, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_11:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x27, x8, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_12:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x27, x8, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_13:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x27, x8, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_14:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x27, x8, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_15:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x27, x8, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

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
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x27, x8, zero
                  csrr x28, 0x341 # MEPC
                  csrr x28, 0x342 # MCAUSE
                  li x13, 0x3 # BREAKPOINT
                  beq x28, x13, ebreak_handler
                  li x13, 0x8 # ECALL_UMODE
                  beq x28, x13, ecall_handler
                  li x13, 0x9 # ECALL_SMODE
                  beq x28, x13, ecall_handler
                  li x13, 0xb # ECALL_MMODE
                  beq x28, x13, ecall_handler
                  li x13, 0x1
                  beq x28, x13, instr_fault_handler
                  li x13, 0x5
                  beq x28, x13, load_fault_handler
                  li x13, 0x7
                  beq x28, x13, store_fault_handler
                  li x13, 0xc
                  beq x28, x13, pt_fault_handler
                  li x13, 0xd
                  beq x28, x13, pt_fault_handler
                  li x13, 0xf
                  beq x28, x13, pt_fault_handler
                  li x13, 0x2 # ILLEGAL_INSTRUCTION
                  beq x28, x13, illegal_instr_handler
                  csrr x13, 0x343 # MTVAL
                  1: la x21, test_done
                  jalr x1, x21, 0

ecall_handler:    
                  la x28, _start
                  sw x0, 0(x28)
                  sw x1, 4(x28)
                  sw x2, 8(x28)
                  sw x3, 12(x28)
                  sw x4, 16(x28)
                  sw x5, 20(x28)
                  sw x6, 24(x28)
                  sw x7, 28(x28)
                  sw x8, 32(x28)
                  sw x9, 36(x28)
                  sw x10, 40(x28)
                  sw x11, 44(x28)
                  sw x12, 48(x28)
                  sw x13, 52(x28)
                  sw x14, 56(x28)
                  sw x15, 60(x28)
                  sw x16, 64(x28)
                  sw x17, 68(x28)
                  sw x18, 72(x28)
                  sw x19, 76(x28)
                  sw x20, 80(x28)
                  sw x21, 84(x28)
                  sw x22, 88(x28)
                  sw x23, 92(x28)
                  sw x24, 96(x28)
                  sw x25, 100(x28)
                  sw x26, 104(x28)
                  sw x27, 108(x28)
                  sw x28, 112(x28)
                  sw x29, 116(x28)
                  sw x30, 120(x28)
                  sw x31, 124(x28)
                  la x21, write_tohost
                  jalr x0, x21, 0

instr_fault_handler:
                  add x8, x27, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

load_fault_handler:
                  add x8, x27, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

store_fault_handler:
                  add x8, x27, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

ebreak_handler:   
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x8, x27, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

illegal_instr_handler:
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x8, x27, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x28, 0x300 # MSTATUS;
                  csrr  x28, 0x304 # MIE;
                  csrr  x28, 0x344 # MIP;
                  csrrc x28, 0x344, x28 # MIP;
                  add x8, x27, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
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
