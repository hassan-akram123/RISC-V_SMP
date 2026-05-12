.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x17, h0_start
jalr x0, x17, 0
h0_start:
                  li x21, 0x40000100
                  csrw 0x301, x21
kernel_sp:        
                  la x23, kernel_stack_end

trap_vec_init:    
                  la x21, mtvec_handler
                  ori x21, x21, 0
                  csrw 0x305, x21 # MTVEC

mepc_setup:       
                  la x21, init
                  csrw 0x341, x21

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x21, 0x1800
                  csrw 0x300, x21 # MSTATUS
                  mret
init:             
                  li x0, 0xff4b97e2
                  li x1, 0xe73f710a
                  li x2, 0x80000000
                  li x3, 0x80000000
                  li x4, 0x8b844ace
                  li x5, 0xf2347d85
                  li x6, 0xb
                  li x7, 0x3f299783
                  li x8, 0xfcb07e9f
                  li x10, 0x9
                  li x11, 0x0
                  li x12, 0x80000000
                  li x13, 0x80000000
                  li x14, 0x80000000
                  li x15, 0x80000000
                  li x16, 0x0
                  li x17, 0xc76f2a90
                  li x18, 0xb8d534fb
                  li x19, 0x2
                  li x20, 0xf09a0524
                  li x21, 0x41a1fd6f
                  li x22, 0x80000000
                  li x24, 0x80000000
                  li x25, 0x7ce77773
                  li x26, 0x7
                  li x27, 0x0
                  li x28, 0xa3b45ef6
                  li x29, 0x0
                  li x30, 0x0
                  li x31, 0x6
                  la x9, user_stack_end
main:             li           s3, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           s8, 0xffffffff
                  li           t0, 0x80000000
                  li           a3, 0x28d83c7a
                  li           s4, 0x80000000
                  li           t3, 0x66c0d280
                  li           s2, 0xffffffff
                  li           s9, 0x37b6a7e4
                  li           s6, 0x0
                  li           t2, 0x0
                  nop
                  sub          t3, s8, a3
                  add          a3, t0, t2
                  auipc        s2, 751116
                  sub          s9, s3, t2
                  sub          s8, s4, a3
                  auipc        s2, 782251
                  auipc        t3, 478967
                  sub          t2, s3, t0
                  auipc        s9, 765669
                  auipc        t3, 449800
                  add          t2, s6, a3
                  add          t2, a3, s9
                  nop
                  addi         s9, t2, -895
                  add          s3, t3, s8
                  nop
                  addi         s9, s2, -1023
                  nop
                  nop #end riscv_int_numeric_corner_stream_1
                  li           t1, 0x7b4035a8 #start riscv_int_numeric_corner_stream_5
                  li           t4, 0x76c7e63f
                  li           s4, 0xffffffff
                  li           s5, 0x0
                  li           ra, 0x5f92fbf
                  li           gp, 0x80000000
                  li           s10, 0x426a5c98
                  li           a6, 0x0
                  li           t5, 0xffffffff
                  li           sp, 0x0
                  addi         t5, s5, -1076
                  add          ra, t5, s5
                  addi         gp, s4, -1545
                  sub          gp, s10, a6
                  lui          s4, 908915
                  lui          gp, 624806
                  lui          gp, 89962
                  lui          s4, 706496
                  add          t5, ra, gp
                  auipc        a6, 287370
                  lui          s4, 611008
                  nop
                  add          s4, s4, a6
                  add          t4, t4, t1
                  add          a6, s5, sp
                  lui          t4, 744946
                  addi         sp, ra, -1191
                  add          t4, t1, t1
                  nop
                  auipc        t4, 588986
                  addi         t4, a6, 163
                  auipc        s5, 560881
                  sub          s4, s5, ra
                  auipc        t4, 922733
                  add          t5, gp, t5
                  sub          ra, sp, sp
                  lui          t1, 223797
                  sub          t4, t1, s4
                  sub          t4, ra, t5
                  lui          a6, 591816 #end riscv_int_numeric_corner_stream_5
                  li           sp, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           a1, 0x80000000
                  li           s3, 0xffffffff
                  li           a6, 0x80000000
                  li           a5, 0xb18159cf
                  li           a4, 0x0
                  li           a2, 0x0
                  li           s8, 0x80000000
                  li           t1, 0xffffffff
                  li           a3, 0x7e3a621f
                  addi         s3, t1, -1029
                  sub          a4, s3, sp
                  add          a6, a3, a5
                  lui          a5, 1018974
                  lui          s3, 638026
                  add          a1, a3, sp
                  auipc        a1, 818103
                  add          t1, a5, a2
                  auipc        s8, 55161
                  add          a3, s3, a2
                  addi         a6, s8, 1508
                  nop
                  sub          a6, a5, t1
                  lui          t1, 699342
                  lui          s3, 561847
                  add          t1, t1, a2
                  nop #end riscv_int_numeric_corner_stream_14
                  li           sp, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           a5, 0xffffffff
                  li           t2, 0x0
                  li           t3, 0xffffffff
                  li           t4, 0xffffffff
                  li           s4, 0x6af464d1
                  li           t5, 0x80000000
                  li           a0, 0x9bbec6b5
                  li           s9, 0xffffffff
                  li           s5, 0xffffffff
                  sub          t4, s9, t4
                  addi         sp, t4, 184
                  sub          t3, a5, s9
                  lui          s9, 865694
                  lui          a0, 788001
                  lui          s4, 761090
                  addi         s5, s4, -508
                  lui          a5, 581608
                  nop
                  sub          t3, a5, sp
                  addi         sp, s4, 146
                  addi         sp, t4, 563
                  addi         sp, a0, -683
                  auipc        s9, 439073
                  nop
                  lui          a0, 245924
                  addi         t5, a5, -299
                  addi         t5, s4, 852
                  auipc        s5, 468809
                  add          t2, a5, a5
                  auipc        s4, 711359
                  sub          a5, s4, s4
                  addi         a5, s4, 886
                  lui          t5, 339994 #end riscv_int_numeric_corner_stream_0
                  li           s9, 0xc84d4cd6 #start riscv_int_numeric_corner_stream_11
                  li           t2, 0x80000000
                  li           gp, 0x0
                  li           a6, 0x0
                  li           s11, 0xffffffff
                  li           t1, 0x17c1ce74
                  li           a0, 0xb8a99f5e
                  li           s0, 0xffffffff
                  li           a5, 0xb0faaad9
                  li           a3, 0x0
                  lui          t1, 695701
                  sub          s0, s11, a5
                  add          s11, t1, a6
                  lui          a6, 463485
                  nop
                  add          t1, s11, a5
                  add          a6, a6, a6
                  auipc        s0, 1047811
                  sub          t2, gp, t2
                  auipc        s0, 1042208
                  sub          gp, a3, t2
                  nop
                  auipc        gp, 193387
                  lui          s0, 277793
                  sub          t1, t1, s9
                  addi         s11, a5, -1700
                  auipc        s9, 784767
                  add          s9, s9, t1
                  addi         t2, a3, 95
                  auipc        a5, 882199
                  nop
                  add          a6, s9, a6
                  nop
                  add          a5, a6, a5 #end riscv_int_numeric_corner_stream_11
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           t2, 0x80000000
                  li           s6, 0x80000000
                  li           s3, 0xffffffff
                  li           s9, 0xe062bab9
                  li           t5, 0x0
                  li           s0, 0x0
                  li           gp, 0x80000000
                  li           a4, 0x80000000
                  li           ra, 0x80000000
                  sub          ra, t2, t2
                  nop
                  sub          t2, t2, t5
                  add          s3, s3, ra
                  nop
                  nop
                  add          s6, s0, t5
                  lui          gp, 182562
                  sub          s9, s0, t5
                  addi         s9, s3, -1810
                  lui          ra, 1022655
                  sub          ra, tp, ra
                  add          ra, s9, ra
                  lui          s6, 329274
                  auipc        s0, 45055
                  lui          s9, 682601
                  nop
                  add          s6, s6, t2
                  sub          s0, s0, tp
                  auipc        t2, 240657
                  lui          t5, 89519 #end riscv_int_numeric_corner_stream_8
                  li           s8, 0x3444d552 #start riscv_int_numeric_corner_stream_13
                  li           a0, 0x0
                  li           t5, 0x80000000
                  li           a2, 0xffffffff
                  li           s11, 0x80000000
                  li           s0, 0x0
                  li           s5, 0xf125e953
                  li           a3, 0x0
                  li           t3, 0x0
                  li           s4, 0x0
                  addi         s5, s0, -842
                  add          t5, a3, s11
                  nop
                  addi         s11, t5, 892
                  add          a0, s4, t5
                  sub          a0, a0, s0
                  lui          s0, 861223
                  nop
                  sub          s4, a3, s8
                  nop
                  addi         a0, t5, 249
                  addi         a0, s0, 2017
                  nop
                  sub          s4, a0, a0
                  nop
                  nop
                  auipc        t3, 701634
                  nop
                  sub          t5, t3, s5
                  nop
                  sub          a0, s0, t3
                  addi         s11, s5, -1001
                  nop
                  lui          a3, 691050
                  auipc        t3, 463017
                  sub          s4, t3, s8
                  add          t5, t3, s5
                  addi         t3, s0, 390 #end riscv_int_numeric_corner_stream_13
                  li           sp, 0x80000000 #start riscv_int_numeric_corner_stream_19
                  li           s3, 0x0
                  li           t5, 0x0
                  li           s5, 0x0
                  li           t6, 0x0
                  li           s6, 0x0
                  li           s10, 0x32dde6b3
                  li           t1, 0x0
                  li           s0, 0x6bd76219
                  li           t3, 0xffffffff
                  addi         s10, s0, -1577
                  add          t3, s3, s3
                  auipc        t5, 303357
                  lui          t1, 659500
                  auipc        t3, 1005115
                  lui          t5, 142407
                  add          sp, s3, s6
                  auipc        t1, 973777
                  addi         s5, s5, -1618
                  lui          t6, 952706
                  nop
                  auipc        t6, 523090
                  addi         t1, s0, -1621
                  lui          s5, 206708
                  auipc        t1, 399572
                  auipc        t6, 975544
                  nop
                  addi         t1, s3, -1973
                  addi         sp, s5, 512
                  sub          t1, t1, t5 #end riscv_int_numeric_corner_stream_19
                  li           s9, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           s8, 0x8940a116
                  li           a6, 0x0
                  li           s0, 0x80000000
                  li           s10, 0x80000000
                  li           t4, 0x0
                  li           a3, 0x0
                  li           s4, 0x80000000
                  li           sp, 0xffffffff
                  li           t6, 0x80000000
                  addi         s9, a3, -375
                  auipc        sp, 378380
                  add          t4, t4, t4
                  addi         a3, t4, -1720
                  sub          t6, sp, s0
                  sub          s0, sp, sp
                  auipc        s9, 986789
                  addi         a3, sp, -1629
                  addi         s4, s0, -659
                  nop
                  add          a6, s4, s4
                  add          s4, a3, s4
                  sub          s0, sp, t4
                  sub          t4, s4, s4
                  addi         s8, t4, 693
                  sub          s8, sp, s10
                  addi         s4, s4, -1508
                  add          s0, t6, sp
                  nop
                  add          s10, a6, s0
                  add          t4, s9, t4
                  addi         a6, t4, -657
                  sub          a6, a3, s8
                  addi         s0, t6, 132
                  nop
                  nop
                  sub          s9, t4, sp
                  nop #end riscv_int_numeric_corner_stream_4
                  li           s2, 0xff21797e #start riscv_int_numeric_corner_stream_18
                  li           s10, 0x0
                  li           a2, 0x0
                  li           s8, 0x0
                  li           a1, 0x80000000
                  li           a6, 0x80000000
                  li           s4, 0x80000000
                  li           s6, 0x80000000
                  li           s3, 0x80000000
                  li           s0, 0x80000000
                  lui          s10, 567984
                  nop
                  nop
                  lui          a2, 941675
                  auipc        a6, 981171
                  lui          s8, 551060
                  add          s0, s10, a2
                  nop
                  lui          s6, 653196
                  addi         s8, a1, 260
                  nop
                  auipc        s10, 698417
                  addi         s0, s0, -2039
                  nop
                  add          s10, a6, s2
                  auipc        a2, 509871
                  sub          a1, a6, s0
                  add          a2, s4, a2 #end riscv_int_numeric_corner_stream_18
                  li           t2, 0x808038b1 #start riscv_int_numeric_corner_stream_10
                  li           t0, 0x0
                  li           t5, 0x0
                  li           a4, 0x5e4ddf56
                  li           s0, 0xabf72063
                  li           a0, 0xc259522a
                  li           s4, 0x80000000
                  li           a1, 0x1d833983
                  li           s11, 0x72637e9e
                  li           s9, 0x80000000
                  auipc        a0, 488958
                  auipc        s4, 583498
                  sub          t0, t0, t5
                  add          t0, s0, a4
                  addi         a0, s4, 1858
                  addi         s11, t0, -156
                  sub          t2, a1, t0
                  lui          a1, 645797
                  nop
                  addi         t5, s9, -1895
                  nop
                  add          s4, t5, t2
                  auipc        a0, 972251
                  lui          s11, 437557
                  addi         s11, t0, -581
                  sub          a1, s11, t0
                  addi         s9, s9, 518
                  nop
                  auipc        t2, 218132 #end riscv_int_numeric_corner_stream_10
                  sll          t3, t1, t0
                  slt          ra, s10, a5
                  slti         s11, s0, -637
                  srai         a1, s2, 20
                  sltiu        s3, a5, -1839
                  sra          s4, a0, s3
                  sll          s0, s5, s9
                  slti         s0, s11, -726
                  srli         s5, s0, 18
                  slt          s0, a3, t0
                  sll          s5, s4, ra
                  and          a5, a5, s3
                  slt          a1, tp, sp
                  sub          t0, tp, s0
                  sra          s6, s8, a5
                  or           s2, a0, ra
                  xor          gp, s1, s11
                  andi         zero, s5, -2027
                  srl          tp, s6, ra
                  sltiu        s4, a5, 1963
                  srl          a2, s11, t2
                  and          a3, a1, t2
                  srl          s10, tp, s1
                  ori          ra, ra, 2046
                  srli         a2, a0, 2
                  sra          s2, s11, s5
                  sub          a0, a7, gp
                  add          a3, s0, a4
                  nop
                  sra          s5, t3, s4
                  and          ra, t4, s3
                  ori          t2, t5, -1080
                  xori         gp, s7, 273
                  slli         s4, a6, 10
                  and          t5, s11, a3
                  xori         a2, tp, -1408
                  or           s8, zero, t1
                  auipc        t3, 26355
                  slli         zero, gp, 30
                  xor          t2, s3, t0
                  xori         s3, s5, -235
                  srai         zero, t0, 9
                  add          s10, s7, t5
                  slti         s4, a5, -396
                  sltu         s2, t2, a1
                  andi         t0, s10, -469
                  andi         tp, s3, 68
                  sub          s6, s9, t4
                  auipc        a0, 63034
                  sltu         t6, t0, t0
                  lui          t4, 891659
                  add          tp, a4, s0
                  slli         t5, s9, 16
                  ori          t2, a1, -1320
                  srli         a2, a4, 23
                  srai         a4, t6, 12
                  xor          s4, a7, s4
                  and          t5, s1, t6
                  and          a2, a2, s10
                  sub          s10, s0, t4
                  slti         a3, t0, 139
                  slt          s8, zero, s2
                  andi         a6, s10, 1513
                  xor          a6, s8, t3
                  auipc        a1, 739068
                  auipc        t4, 1028177
                  or           a4, t1, t1
                  ori          a3, s5, 1861
                  sra          a0, s6, s10
                  slli         s4, t5, 27
                  auipc        s8, 759632
                  ori          t2, ra, 477
                  xor          s3, s6, s2
                  lui          t1, 564282
                  nop
                  sltiu        t3, t1, 1189
                  slti         s8, s3, 1347
                  sltu         s11, zero, t5
                  lui          s0, 999501
                  ori          t0, s11, 1984
                  sra          t4, s3, a1
                  add          s8, t3, t5
                  sltu         a0, a7, s4
                  auipc        s9, 1005949
                  lui          s2, 762478
                  ori          a6, a3, 1086
                  srai         t0, s0, 28
                  sll          s6, t0, s4
                  add          s10, s4, s2
                  auipc        s8, 341219
                  or           tp, t4, a2
                  or           a3, t5, t4
                  xori         a5, t6, 1616
                  and          gp, a0, s3
                  add          sp, s7, a2
                  nop
                  addi         t3, s10, 1045
                  slt          s4, t1, s2
                  ori          s4, t5, -2026
                  srai         a1, a5, 30
                  sub          s9, s2, a3
                  sltiu        a5, s1, -1224
                  xor          s5, s3, s7
                  sub          a3, t5, a5
                  lui          a5, 44086
                  sll          s10, gp, a7
                  srl          a0, zero, t2
                  add          s3, s7, tp
                  and          s0, s9, a3
                  sub          s10, a0, t4
                  add          s6, t1, t3
                  or           a6, a4, s4
                  sra          t0, a4, s8
                  ori          t5, s11, -1474
                  sra          s5, a4, s8
                  srli         t2, a2, 16
                  slti         s4, t1, -1843
                  sra          sp, a3, zero
                  slli         a4, s0, 3
                  slli         t1, s9, 24
                  andi         s6, s3, 147
                  and          t6, ra, s8
                  ori          a5, s11, 141
                  slti         s11, t5, -1143
                  slt          tp, a7, a6
                  srai         s5, s3, 25
                  lui          s6, 1008231
                  xor          s10, ra, s11
                  srai         gp, s11, 29
                  slti         a5, ra, 153
                  addi         t1, t6, -193
                  ori          tp, s1, 1209
                  lui          s5, 275634
                  ori          t3, t0, 778
                  andi         a6, ra, -1139
                  xori         s0, s8, -1634
                  srli         s10, t6, 21
                  and          t0, a7, a7
                  xori         s5, s9, -212
                  andi         a3, s6, 159
                  auipc        s6, 166371
                  auipc        a6, 1042782
                  sub          a2, t1, s2
                  srai         gp, s0, 14
                  nop
                  srli         t3, s10, 31
                  sltiu        t6, s1, 942
                  sub          s6, s2, t2
                  lui          a0, 177266
                  andi         sp, t6, 977
                  slt          s9, a5, a3
                  slt          s2, s2, s0
                  ori          a0, t0, -722
                  or           s0, a7, s1
                  srl          tp, t2, s1
                  sub          a4, t5, s7
                  xor          gp, a2, a7
                  auipc        zero, 385853
                  and          a4, s11, t4
                  slti         ra, s11, -1378
                  add          s8, s8, a7
                  ori          s9, gp, 1229
                  srl          s11, sp, s2
                  sltu         gp, gp, a7
                  addi         t1, tp, 1107
                  auipc        s10, 847994
                  nop
                  nop
                  lui          t5, 455020
                  addi         gp, a1, -1150
                  andi         gp, t6, -104
                  or           s8, s1, s10
                  and          gp, s8, a1
                  srli         s11, a2, 2
                  sll          s5, t0, t5
                  slli         a1, s8, 10
                  srl          zero, a4, s0
                  nop
                  or           s4, tp, s11
                  xori         s6, a4, 953
                  xor          a2, s3, s11
                  slt          s8, t1, s3
                  nop
                  sra          t1, s3, gp
                  sll          s2, s0, t0
                  sra          s8, a6, sp
                  auipc        t6, 190214
                  slli         s5, s1, 11
                  slli         zero, s6, 25
                  ori          sp, a2, 322
                  srli         s3, a7, 20
                  xori         t6, s11, 992
                  slt          t2, t0, a3
                  srli         a1, s1, 22
                  srai         a3, s4, 20
                  sra          a2, a7, a1
                  srai         s9, s1, 28
                  sra          a3, t4, a3
                  sra          tp, s5, s5
                  srai         s6, a0, 9
                  slt          t0, t1, gp
                  slt          zero, s2, s4
                  sll          s6, s0, t4
                  srli         s6, sp, 31
                  andi         s8, zero, 700
                  sltiu        t0, s9, 759
                  srli         a2, t0, 15
                  xor          s3, s1, a5
                  sltu         sp, t3, a5
                  ori          t6, a3, -1012
                  sra          sp, t1, a4
                  slt          a2, s1, s3
                  xori         a2, sp, -913
                  lui          tp, 660407
                  slli         sp, a0, 30
                  or           s3, t3, t0
                  ori          s11, s5, 809
                  srl          s4, t2, s5
                  andi         s9, t6, -38
                  srli         s5, s7, 22
                  and          a6, sp, t6
                  srl          t3, a5, t2
                  xor          sp, a5, t1
                  andi         t2, a1, 582
                  nop
                  ori          t6, gp, 1359
                  sub          s4, a6, t1
                  sltiu        t4, s7, 1641
                  sub          a1, gp, a0
                  xor          s0, t0, ra
                  sra          a6, s8, s11
                  addi         t2, s0, 194
                  slt          t5, sp, t0
                  slt          t2, s11, a6
                  or           s9, s7, t2
                  addi         t4, tp, -1282
                  sll          a1, s1, s4
                  and          a2, s11, gp
                  sub          tp, ra, t5
                  sub          a5, ra, s4
                  srli         t4, a6, 8
                  srli         t5, s7, 10
                  nop
                  slt          t0, s10, ra
                  add          a5, t3, a0
                  xori         s10, a0, 1439
                  xori         s3, s11, 1210
                  ori          s5, a4, -936
                  xor          s10, s6, s6
                  srli         a6, t3, 3
                  or           a0, a3, t1
                  slti         t5, s1, -1994
                  srai         s5, zero, 6
                  sll          a3, a6, s7
                  sltiu        a6, t2, 1083
                  and          s4, a1, s11
                  srai         s8, ra, 24
                  slti         s9, t4, 1531
                  slli         s2, s5, 20
                  lui          s11, 67741
                  sra          t6, s6, s10
                  xor          a4, s2, t0
                  sra          s6, gp, s3
                  slti         a3, ra, 1017
                  or           t4, s11, s0
                  lui          a6, 294655
                  slli         a1, s3, 6
                  lui          t6, 1022183
                  srai         s5, s4, 22
                  and          s0, a1, a5
                  sltu         s9, s11, a7
                  xori         a2, s6, -1936
                  sltu         s11, t4, a6
                  lui          tp, 269083
                  sll          zero, gp, tp
                  lui          t6, 370501
                  or           t0, t4, sp
                  nop
                  add          s3, a5, s4
                  sltu         s10, s10, tp
                  lui          a1, 867895
                  srai         t6, t4, 8
                  lui          s3, 1000320
                  srl          s9, s1, a2
                  andi         s0, a0, 1013
                  sub          gp, a2, t5
                  sra          s10, t3, s10
                  addi         s2, a3, 1129
                  slli         a4, t1, 9
                  addi         a5, a1, 1075
                  sltu         t6, s6, s5
                  add          t3, a7, s7
                  xori         t1, t4, 18
                  slli         t1, a3, 19
                  and          s6, s2, s11
                  srli         t6, a0, 13
                  addi         t0, a1, 347
                  and          sp, s8, s8
                  add          a1, t1, s7
                  lui          a4, 254483
                  srli         s10, s6, 18
                  or           a5, sp, a3
                  sll          t5, s7, ra
                  slli         t0, a6, 8
                  lui          t3, 569471
                  sltiu        t1, s9, 1479
                  sra          s3, s10, sp
                  slli         s3, gp, 25
                  srl          s11, s8, a3
                  slli         t3, a1, 11
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           s5, 0x1f469e89
                  li           sp, 0xcdd31e6
                  li           s10, 0x80000000
                  li           a5, 0x0
                  li           t1, 0xffffffff
                  li           t5, 0xb2b3c471
                  li           s2, 0xffffffff
                  li           s9, 0x80000000
                  li           s8, 0xd11478e5
                  sub          t5, ra, t5
                  auipc        a5, 820450
                  sub          s5, s2, ra
                  lui          s2, 975518
                  addi         s8, ra, -1059
                  nop
                  auipc        t5, 273137
                  lui          s10, 825634
                  addi         t5, s9, 466
                  addi         t1, sp, -1597
                  lui          s9, 854136
                  auipc        s5, 613758
                  addi         s5, s10, -2016
                  add          t1, sp, s10
                  addi         t5, s2, -1350
                  addi         s10, s10, 574
                  add          t1, s5, s8
                  addi         s8, sp, -1425 #end riscv_int_numeric_corner_stream_12
                  addi         zero, a6, 444
                  srl          zero, gp, a5
                  or           s5, a4, ra
                  sra          t6, s3, s0
                  srli         t2, a3, 25
                  sltiu        s11, gp, 348
                  lui          a5, 392665
                  sltu         s10, s5, a6
                  ori          a5, s4, -629
                  ori          t2, a3, -807
                  nop
                  slli         s8, a0, 29
                  sltu         s8, t4, a4
                  sra          s4, t4, a0
                  srli         tp, a3, 29
                  lui          s9, 965200
                  or           s9, s0, gp
                  auipc        t4, 624005
                  xor          a2, a3, s3
                  srli         t5, s10, 4
                  sub          s4, s8, t5
                  add          a2, s0, s9
                  srl          sp, s7, t6
                  ori          s8, s2, 323
                  or           s2, t1, a4
                  sub          s0, s2, s1
                  sll          s6, t5, a7
                  add          t1, s1, t1
                  sub          ra, t4, s3
                  addi         s0, a3, -620
                  slli         s2, sp, 8
                  and          t3, s1, t0
                  srl          s10, t0, a2
                  sll          a6, s6, s11
                  sll          t0, gp, s1
                  xori         s8, t0, 236
                  nop
                  srli         a1, t2, 12
                  sub          ra, sp, s2
                  srai         zero, s0, 25
                  and          t5, a4, a4
                  addi         s2, s9, 159
                  sll          a3, a4, s10
                  and          t1, t1, tp
                  ori          s6, a0, 1564
                  srli         gp, s5, 15
                  slti         t1, s10, -1891
                  sub          t5, s1, s6
                  addi         a5, a7, -1152
                  and          a5, ra, t3
                  srli         t0, a0, 24
                  add          s6, ra, a7
                  slli         sp, t1, 8
                  slli         s10, a4, 8
                  auipc        s6, 995413
                  or           a6, t1, s9
                  slt          s2, t5, t3
                  slt          t5, t2, t3
                  srai         s5, a1, 10
                  and          s3, t0, a4
                  nop
                  addi         t5, s5, 151
                  nop
                  addi         gp, zero, 889
                  xor          s11, s0, s9
                  sltu         a0, s6, t5
                  auipc        s2, 16296
                  lui          s0, 697908
                  sltu         s8, tp, s8
                  xor          t4, t1, s11
                  auipc        s4, 310605
                  xor          a0, t0, s6
                  slti         t5, a0, 1594
                  slti         t2, t4, -157
                  slti         t5, t6, -571
                  srl          a2, t1, a7
                  sltu         s4, s1, t5
                  srai         s10, s11, 20
                  lui          zero, 793774
                  slti         zero, a3, 1251
                  auipc        s6, 808945
                  addi         s5, t0, -1162
                  add          a0, s6, a0
                  nop
                  sltiu        t0, t4, -55
                  slti         a5, s10, -73
                  lui          a1, 124039
                  lui          t1, 361963
                  srai         s6, a3, 3
                  slti         sp, s5, 1493
                  add          s9, sp, t1
                  andi         s8, t5, 1326
                  andi         a0, s2, 639
                  slt          s3, t6, t2
                  and          a1, s11, a1
                  srai         a6, t3, 30
                  sltiu        t4, a4, 595
                  sltu         a3, s7, t4
                  srl          t3, sp, s2
                  sll          s6, s8, s10
                  and          s0, tp, a6
                  sub          a0, s7, a2
                  sra          a0, t1, s11
                  sltiu        a1, s7, 1393
                  or           t0, tp, s9
                  slti         sp, s1, -293
                  slti         s9, t5, -177
                  ori          s9, s2, -529
                  sub          a2, s8, s4
                  andi         s9, s10, -1277
                  and          a6, s1, t1
                  sub          ra, ra, s0
                  auipc        s10, 274513
                  sltiu        t5, t0, 57
                  xori         a0, t3, -234
                  sub          a2, s5, a6
                  sltu         t3, a6, s11
                  slt          a6, sp, t5
                  auipc        s4, 67196
                  srli         s8, a3, 22
                  sra          t3, ra, s5
                  xor          s2, s0, gp
                  slli         a2, t4, 11
                  slli         s10, s0, 24
                  xor          a4, a0, s10
                  add          t2, s10, s11
                  ori          a5, s7, 1225
                  srai         s9, sp, 9
                  lui          s5, 532733
                  ori          zero, s3, -1245
                  and          s2, a5, a7
                  add          a1, s5, t1
                  srli         t4, s7, 4
                  sltu         a1, gp, tp
                  slti         s4, t5, 795
                  and          t3, s11, ra
                  andi         zero, a7, -133
                  sltiu        sp, a3, -1569
                  slt          zero, s3, a7
                  add          s2, t3, s5
                  sltu         t0, a7, t6
                  xor          a3, s11, a6
                  nop
                  nop
                  slti         t5, s4, -48
                  sltu         s5, t3, a6
                  xori         a0, s7, 203
                  slti         a5, t4, -1371
                  sra          a4, ra, s3
                  nop
                  sltiu        s3, a7, -1105
                  sub          a5, zero, a7
                  xori         s8, s8, -395
                  srai         t0, a1, 5
                  nop
                  auipc        t2, 198257
                  add          t5, t3, s6
                  srl          ra, a6, a4
                  slt          tp, a1, a4
                  sra          s9, s7, s7
                  slli         t5, t6, 3
                  auipc        s4, 290504
                  srl          a3, t0, a2
                  sra          t3, zero, s5
                  and          gp, t5, tp
                  sra          t0, t6, t0
                  xori         s11, s8, -866
                  slti         t0, a2, -1431
                  sra          s0, a1, a3
                  auipc        sp, 689601
                  addi         sp, t2, 914
                  ori          s9, t2, -106
                  sra          s4, s7, tp
                  sub          s10, s8, a2
                  ori          s0, t3, -785
                  srai         t3, t5, 5
                  nop
                  srli         a1, t3, 4
                  add          t1, t3, a7
                  srl          tp, a6, a0
                  and          t4, a0, a4
                  srl          t6, s1, s1
                  sll          tp, t4, gp
                  srli         s5, s1, 12
                  xori         t0, s2, 1979
                  slt          ra, zero, s2
                  andi         a2, a2, 1491
                  srai         s10, s11, 22
                  sltu         s11, a1, tp
                  auipc        ra, 173014
                  xor          s3, zero, a1
                  xori         zero, sp, -1824
                  ori          ra, s7, -417
                  ori          t3, s3, -2039
                  slli         t3, t1, 13
                  sub          gp, a2, s0
                  srai         s5, s5, 20
                  sltiu        s0, t5, 1338
                  lui          s8, 343738
                  srai         a5, s11, 20
                  or           a4, t0, s3
                  xori         a6, s5, 1510
                  slt          a4, s2, a2
                  add          t0, s2, s2
                  slli         s10, t6, 16
                  auipc        tp, 571112
                  xori         s6, a3, -1024
                  sub          t6, zero, s8
                  sltu         a1, tp, s8
                  srai         s5, a2, 8
                  srli         t3, a4, 29
                  lui          sp, 761206
                  addi         a1, s3, -856
                  sltu         s2, s6, s4
                  nop
                  sra          t0, zero, gp
                  sltu         tp, t0, a6
                  xor          s10, s9, t3
                  sltiu        s3, ra, -445
                  srai         zero, s3, 0
                  sub          s9, zero, a3
                  nop
                  addi         tp, a4, 13
                  sltu         a5, a1, a2
                  xori         sp, a0, 1626
                  sltu         a0, a6, sp
                  slti         t2, a0, 789
                  sra          s6, s5, s9
                  auipc        a2, 452161
                  slt          s4, gp, a3
                  lui          sp, 140356
                  srai         sp, t0, 6
                  xor          gp, a0, a7
                  xor          s6, s9, s5
                  srl          t3, s7, a0
                  auipc        a2, 116923
                  sltiu        gp, a0, 1816
                  srli         s9, s3, 27
                  add          t0, s9, zero
                  srai         a4, a3, 2
                  and          ra, s2, a4
                  xor          s2, s2, t0
                  lui          s10, 505376
                  srl          a1, a0, a2
                  and          s0, s9, a5
                  addi         t5, a2, 280
                  srli         tp, s4, 12
                  addi         s4, s10, 853
                  xor          a1, s1, s9
                  sll          t3, ra, a1
                  sub          ra, t1, a4
                  addi         a6, s10, -356
                  sra          t3, a1, t6
                  auipc        tp, 954204
                  sub          t0, a4, a2
                  sll          t6, a6, s2
                  and          t3, gp, s6
                  sub          t5, s6, a6
                  andi         ra, zero, -1061
                  and          tp, t5, a5
                  srl          t4, s5, a3
                  auipc        t0, 71842
                  xori         s0, s1, -47
                  auipc        a3, 548360
                  srli         zero, gp, 27
                  srai         a0, a4, 27
                  sltiu        s3, a5, -1977
                  lui          s10, 971261
                  slti         a0, a5, -49
                  slt          gp, s3, a3
                  lui          t1, 424686
                  slti         t6, s2, -522
                  sltiu        t1, s4, -535
                  ori          s10, zero, 2022
                  srl          t3, t5, s1
                  sub          s6, s10, t2
                  sltiu        s9, a3, 896
                  nop
                  andi         gp, s9, -620
                  srai         a5, tp, 31
                  addi         a3, t1, -761
                  srl          s3, t5, t4
                  sub          a4, a7, zero
                  ori          s4, a1, -1270
                  andi         a2, s3, -1659
                  ori          a0, s1, 202
                  xori         s4, t3, 419
                  ori          s10, s6, 704
                  xor          s2, t3, t1
                  nop
                  sll          s8, a7, gp
                  ori          zero, s3, 200
                  slt          a1, a0, zero
                  add          t5, zero, sp
                  sltu         a2, a4, s10
                  sll          gp, s11, a3
                  and          a6, t2, a6
                  and          ra, ra, a4
                  sub          ra, t0, t6
                  srai         a5, s9, 28
                  slti         s10, s9, 821
                  sra          a3, t2, a2
                  slli         s10, a7, 18
                  slli         a3, a0, 6
                  nop
                  slt          s3, t4, a0
                  add          a2, gp, a2
                  sub          s11, t4, t1
                  andi         t4, s4, 1906
                  srl          t2, ra, a7
                  slti         a3, gp, -45
                  srl          sp, s2, t5
                  auipc        s6, 970113
                  nop
                  addi         s5, a4, 151
                  add          a3, t4, a0
                  or           s8, ra, s5
                  sltu         a0, s3, tp
                  nop
                  slt          s11, s9, t4
                  sltu         a3, s11, tp
                  or           s4, s9, s2
                  andi         zero, s2, 972
                  srli         t3, zero, 17
                  sltu         s0, s9, s10
                  slli         t0, s10, 25
                  sltiu        s11, a4, 225
                  sub          s11, s11, t2
                  add          zero, tp, s11
                  sltu         s8, a7, t6
                  srl          s8, sp, s1
                  sltu         t0, ra, s5
                  nop
                  ori          a3, a1, -1749
                  srai         s0, s8, 16
                  sub          t0, a5, s7
                  lui          t1, 645955
                  slt          s6, s10, a4
                  srli         s11, t1, 10
                  xor          t6, t6, tp
                  slli         s0, t3, 30
                  xori         sp, ra, 988
                  srl          s10, tp, a0
                  xori         t5, s4, -937
                  addi         s5, t3, 1712
                  xor          s2, ra, t1
                  add          s3, zero, t0
                  sltiu        s3, s2, 1155
                  slti         t5, s3, -409
                  sltiu        ra, ra, -820
                  addi         t6, t4, 1247
                  srai         zero, s5, 3
                  and          ra, a7, s2
                  and          zero, t6, t1
                  auipc        a0, 242287
                  srl          t3, t6, a6
                  andi         gp, a3, -1673
                  and          s0, ra, s5
                  slti         tp, a6, -1776
                  slt          s11, t6, s9
                  xori         a0, t2, 233
                  sll          s3, t5, a4
                  lui          s9, 916289
                  sll          a3, s4, t3
                  and          t4, t6, a0
                  xor          t6, a0, t4
                  sra          t3, zero, a3
                  sll          s9, a2, t4
                  srai         gp, s4, 0
                  nop
                  nop
                  slti         t2, sp, 391
                  ori          s8, s1, 1381
                  srli         s5, s1, 22
                  slli         t1, t3, 21
                  srai         a5, s3, 1
                  andi         t1, t4, -346
                  sub          sp, a1, a5
                  auipc        a0, 318124
                  xori         s9, a0, -1570
                  sltu         s8, s0, a6
                  slli         s5, s6, 24
                  lui          gp, 359792
                  sltiu        t6, s10, -1914
                  srai         zero, tp, 7
                  xor          s6, s11, s5
                  slt          zero, t1, s1
                  xori         t5, t5, -708
                  sub          a2, t0, a2
                  slli         t6, gp, 17
                  andi         a6, t5, 514
                  slli         a5, s5, 24
                  sltiu        t2, a4, 1008
                  sltiu        s11, ra, 159
                  srl          s11, a1, a4
                  srli         ra, t5, 13
                  or           s2, zero, t1
                  srai         s9, s2, 23
                  sll          s10, s1, a5
                  lui          s9, 190636
                  sltu         s11, s9, s9
                  sll          s2, s8, s8
                  srl          t0, s2, s11
                  or           a0, s11, a5
                  nop
                  xor          a6, t1, sp
                  srl          zero, s4, a2
                  slli         t2, s3, 13
                  xori         sp, t2, 1575
                  xor          a6, s6, a4
                  sltu         t0, s0, ra
                  sub          s11, zero, a6
                  lui          sp, 361492
                  slt          s6, a6, s6
                  xor          sp, s3, s10
                  ori          a1, s5, 1011
                  add          s3, s4, s8
                  ori          a0, zero, 588
                  andi         t3, a0, 1757
                  slli         a1, t6, 28
                  srli         gp, s6, 1
                  addi         ra, t0, 1347
                  sltu         s2, a1, s4
                  sll          s3, s4, a0
                  sub          sp, a2, s2
                  slti         a6, sp, -1581
                  srl          ra, t5, a4
                  andi         a1, s3, 1651
                  addi         t2, s8, -183
                  ori          ra, s4, 715
                  ori          a4, t6, -663
                  sll          a4, t5, a4
                  sll          a4, s9, t4
                  sltiu        s9, s3, -1123
                  and          ra, s4, s11
                  sltiu        t0, t4, 1491
                  ori          a3, gp, -1790
                  xor          s0, a1, t5
                  sltiu        s11, a7, 1871
                  or           s3, a5, t6
                  sub          a6, s8, s2
                  andi         s3, t2, -954
                  addi         s9, s6, 20
                  lui          s9, 614558
                  sub          s4, t1, a0
                  sub          a5, s3, ra
                  nop
                  srl          tp, t5, s0
                  sra          s9, a3, s4
                  addi         t0, ra, 1432
                  srli         s3, ra, 19
                  xor          a2, a4, s4
                  slt          a3, a3, s0
                  sub          s11, gp, s4
                  lui          a6, 572347
                  nop
                  sltiu        s2, a1, 1774
                  andi         a5, s6, -78
                  slli         s2, t6, 6
                  or           t6, s0, s11
                  ori          t3, a5, 1624
                  sub          s9, a0, a3
                  slti         s0, a2, -1657
                  sra          a3, a0, s6
                  slli         a5, s0, 31
                  sub          a5, t6, s5
                  sltu         tp, zero, a4
                  xori         t5, s7, -106
                  lui          gp, 1010741
                  auipc        t1, 26468
                  slt          s2, a6, a4
                  nop
                  and          a4, zero, t5
                  ori          s3, s1, 95
                  sra          a0, tp, a0
                  and          t4, s4, t2
                  auipc        ra, 264762
                  xori         a1, s4, -2002
                  sra          s11, s7, a5
                  srli         a5, sp, 31
                  sub          tp, a0, s5
                  add          a3, sp, gp
                  or           a2, t3, a7
                  add          s10, a7, s6
                  slti         s5, t1, -1608
                  slli         s0, a4, 19
                  nop
                  sub          s4, t1, t4
                  sltiu        t0, t4, -789
                  add          zero, a6, t4
                  auipc        ra, 245003
                  andi         a5, s3, -1540
                  nop
                  xori         a0, ra, 1290
                  sll          a5, s7, sp
                  lui          tp, 184231
                  srli         a0, sp, 9
                  lui          s9, 757408
                  slt          t1, a5, s3
                  sub          s4, a3, s8
                  lui          t1, 494586
                  auipc        zero, 517989
                  and          a2, a5, s10
                  srai         s4, a0, 9
                  andi         s8, s4, -425
                  addi         s4, t0, 824
                  xor          a6, t6, t5
                  sub          t3, t2, s7
                  sll          a6, s11, s3
                  srai         a0, gp, 29
                  sltiu        a3, ra, -1642
                  lui          t6, 151567
                  srl          s11, s0, t0
                  srli         a6, s6, 11
                  sltu         s8, a2, t1
                  srli         a6, a6, 22
                  andi         s4, t6, -1600
                  slt          t1, t6, s5
                  sltu         t4, s2, s5
                  xori         s0, s0, 2046
                  srli         a3, s7, 10
                  lui          s10, 770353
                  sll          s0, a4, a4
                  sll          a0, t1, t3
                  xor          a6, s2, s2
                  slti         t0, t2, 993
                  li           t0, 0x8daf8336 #start riscv_int_numeric_corner_stream_16
                  li           s5, 0x7f4e9d7e
                  li           s8, 0xffffffff
                  li           s0, 0xd5d6e19c
                  li           s3, 0x80000000
                  li           t5, 0xb8675216
                  li           t1, 0xb9b5caaf
                  li           s9, 0x537e77c2
                  li           t2, 0xd284b7ab
                  li           gp, 0x80000000
                  sub          gp, gp, s9
                  auipc        s0, 442672
                  lui          t2, 839052
                  addi         t5, t1, -40
                  addi         s9, t2, -1215
                  sub          t2, t1, s3
                  auipc        s0, 561431
                  nop
                  lui          s5, 962942
                  lui          s8, 417018
                  nop
                  nop
                  sub          t0, s8, s3
                  nop
                  auipc        t5, 234089
                  auipc        s5, 950772
                  lui          s3, 585321
                  addi         s5, t0, -1951
                  addi         t1, gp, -1572
                  add          t0, s5, t1 #end riscv_int_numeric_corner_stream_16
                  add          s8, t2, gp
                  srli         t1, s8, 8
                  nop
                  srli         s8, s6, 7
                  srai         s3, t4, 27
                  and          gp, s8, s5
                  xor          s8, s10, sp
                  andi         a6, zero, -106
                  auipc        s2, 317603
                  lui          s3, 580498
                  andi         gp, zero, 1176
                  xor          zero, s2, s8
                  and          gp, t0, a4
                  nop
                  sll          ra, s0, t6
                  sltiu        ra, a7, 664
                  slt          s4, t5, tp
                  xori         t5, s8, -1533
                  xor          s8, a3, t3
                  sub          s4, s3, s0
                  sltiu        s8, t2, -956
                  sra          gp, t4, t3
                  or           a3, zero, a2
                  srli         s9, t4, 9
                  sub          s9, a0, t5
                  sub          a4, s4, t5
                  xor          s10, a7, a2
                  slt          a4, s11, tp
                  sub          gp, s3, t0
                  sltiu        a4, tp, -1728
                  srli         s9, s6, 17
                  or           s11, a1, t2
                  srl          a3, a4, tp
                  nop
                  xor          tp, s1, a1
                  srli         a0, t5, 29
                  srai         a2, a1, 21
                  srl          t2, a0, s6
                  slli         a6, s5, 8
                  sub          s8, t1, t1
                  slti         s6, s9, -444
                  auipc        s2, 26686
                  slli         s6, zero, 7
                  srli         t5, s0, 7
                  add          a1, s8, a6
                  nop
                  sub          t4, s5, ra
                  slti         s0, s6, 26
                  addi         a2, s9, -1393
                  or           t3, s7, t6
                  xori         s6, t1, -1385
                  sltu         a1, t2, a6
                  srai         a5, s11, 3
                  and          s10, s0, t0
                  sltiu        a0, a5, 622
                  add          t1, s3, t2
                  srai         s6, zero, 1
                  lui          t3, 833775
                  sra          s5, ra, t0
                  slt          s9, zero, t3
                  add          gp, t1, s4
                  lui          a4, 700966
                  auipc        a2, 837871
                  sra          s3, a7, a7
                  xori         gp, t4, 2042
                  slti         s2, s9, -1064
                  sltu         zero, s9, tp
                  lui          t1, 596589
                  add          s6, s5, s0
                  sra          t1, s7, s3
                  or           s4, s3, a0
                  and          s11, a6, s5
                  add          gp, a7, t1
                  sra          t4, s9, t3
                  addi         s6, t2, -464
                  xori         a4, gp, 371
                  lui          ra, 525143
                  or           a6, a5, t5
                  xor          s2, s0, a1
                  slt          s3, a6, a3
                  slt          a0, a5, a7
                  slt          a1, a1, s0
                  srli         a2, s3, 0
                  sltiu        t6, t6, 291
                  addi         t0, s8, -1441
                  sltu         s8, zero, s5
                  add          s4, s11, t3
                  sltiu        s8, s9, 1872
                  slti         a5, s6, -354
                  xori         t6, s5, -320
                  sub          tp, a6, s11
                  xor          s5, s7, s7
                  xor          a0, a4, s0
                  xori         s2, s5, -1984
                  xor          s9, s2, t4
                  or           s3, a0, a1
                  add          a1, tp, a0
                  sub          tp, s4, s4
                  slt          s5, tp, t0
                  slt          a3, s1, zero
                  and          a2, s4, ra
                  srli         t3, s3, 25
                  sub          a2, s4, s10
                  auipc        s5, 154117
                  andi         t6, a2, -1041
                  sll          t4, s9, a7
                  nop
                  slli         t6, a1, 8
                  srai         tp, tp, 16
                  slt          s6, s10, a0
                  sra          s8, s0, a1
                  sll          s11, s9, t5
                  slli         t5, t5, 0
                  and          zero, a1, a7
                  sltu         s6, t2, s6
                  lui          t2, 802431
                  slti         sp, s8, 1120
                  sub          t3, s4, s3
                  sltiu        s8, s11, -617
                  sra          s11, t3, t0
                  and          a0, s11, s2
                  addi         s0, s4, 1123
                  and          s5, t1, ra
                  xori         s11, s6, 118
                  slli         a0, tp, 23
                  lui          zero, 844694
                  addi         s2, a7, -30
                  auipc        tp, 554451
                  srli         s8, a5, 30
                  andi         a1, t0, -1899
                  slli         tp, t5, 24
                  andi         s11, a6, 710
                  nop
                  xor          t0, t3, s9
                  andi         a0, a6, 1397
                  srli         t3, a0, 7
                  srai         t1, zero, 14
                  andi         s9, t1, -1351
                  addi         a3, a5, -21
                  slli         s0, a7, 4
                  slli         s9, t6, 29
                  and          gp, t0, sp
                  and          a3, a5, a4
                  add          s4, s11, t5
                  auipc        s9, 495294
                  slli         s5, s5, 3
                  and          t1, s10, t4
                  andi         s3, a4, 1086
                  srl          a6, s5, tp
                  xor          a5, s1, s3
                  lui          s5, 25320
                  lui          gp, 924943
                  sll          s4, t3, a5
                  lui          a5, 646978
                  add          t6, s7, s5
                  xor          t1, t5, ra
                  slli         a2, s11, 22
                  sll          a2, a7, s3
                  slti         t2, a0, -1846
                  add          s11, s1, s4
                  slli         t3, s6, 0
                  sub          zero, t1, gp
                  ori          a6, a2, -1141
                  slti         a1, s6, -1027
                  slt          a0, s1, s10
                  sltu         t1, s3, a6
                  xor          s8, s5, s6
                  nop
                  sll          t2, s3, s6
                  or           tp, a1, a6
                  sll          s11, s5, zero
                  slti         s2, a5, -54
                  srli         a2, tp, 6
                  srli         sp, s9, 20
                  addi         s0, a1, -462
                  sub          t0, t4, t4
                  ori          t4, s0, -1386
                  lui          a1, 422656
                  srl          a0, s9, tp
                  srli         s5, a0, 18
                  xori         t5, s3, -1773
                  ori          t6, zero, -1978
                  andi         s11, s4, 1003
                  auipc        s10, 366035
                  or           s5, sp, t3
                  sra          s9, a6, t2
                  srl          t5, a6, a7
                  srai         a6, t2, 19
                  and          t1, s4, zero
                  slt          a1, t5, t2
                  sll          t4, ra, s7
                  auipc        s9, 294639
                  srli         ra, a3, 8
                  or           a4, s11, a1
                  sra          t1, t3, s8
                  srai         s5, ra, 12
                  lui          a0, 555935
                  and          zero, a7, s9
                  sltiu        s5, zero, -81
                  slti         a3, s10, -1201
                  or           a1, a3, s4
                  sltiu        a0, s0, 771
                  auipc        s6, 5037
                  nop
                  sra          t6, sp, a5
                  srl          s5, t5, a2
                  sltu         t0, s11, tp
                  xori         t4, t2, -528
                  and          zero, a0, a1
                  andi         a4, t1, -1298
                  sll          a3, tp, zero
                  sub          t2, a1, t3
                  nop
                  srl          t6, a7, a3
                  sll          t2, s0, s9
                  lui          tp, 38793
                  xori         a2, s0, 862
                  and          a6, s11, t0
                  nop
                  sll          zero, t6, s7
                  sll          t1, t6, tp
                  slt          a5, s11, s8
                  srli         tp, s7, 10
                  auipc        t2, 246334
                  auipc        a6, 727649
                  nop
                  sltu         s3, s6, a0
                  sltiu        s10, t6, -530
                  xor          t4, t2, ra
                  nop
                  sub          t2, s0, sp
                  xor          sp, t4, s6
                  or           a4, t2, a2
                  andi         s10, a6, -1269
                  nop
                  sltiu        t0, s9, 1904
                  auipc        a0, 855929
                  sltu         s3, gp, t3
                  nop
                  sltu         gp, ra, t1
                  srl          a0, t0, t3
                  sltiu        t5, gp, 1039
                  nop
                  addi         s11, t5, -1588
                  sll          t4, s2, t6
                  srl          ra, s10, s2
                  addi         gp, a4, 293
                  addi         t1, s5, 622
                  ori          sp, t2, 1999
                  addi         s8, a3, 1873
                  auipc        t4, 670030
                  sub          t2, a7, t3
                  slt          gp, t6, a2
                  slt          sp, s11, a4
                  slti         t3, tp, -18
                  srli         a5, a1, 12
                  lui          s2, 971418
                  sra          a0, zero, a6
                  xori         s10, t3, 1403
                  auipc        s2, 386118
                  add          t6, a1, sp
                  sub          t6, a2, s0
                  srli         ra, s5, 10
                  sltiu        a2, t0, -554
                  lui          s2, 303235
                  sltu         s0, a2, a3
                  and          a3, a7, a2
                  sltu         a3, s3, a1
                  sll          t0, s2, ra
                  slti         s2, a1, 365
                  add          s9, s2, t3
                  slt          t6, s4, t1
                  ori          s5, s11, 281
                  xori         ra, t4, 737
                  sra          ra, a5, a0
                  auipc        zero, 950903
                  slti         t6, s10, -984
                  and          ra, a5, s10
                  or           t4, zero, t1
                  addi         t1, s8, -1658
                  add          sp, ra, s10
                  andi         gp, sp, 703
                  andi         s3, s2, -218
                  xori         s3, t2, -1176
                  srl          a4, s5, t1
                  xori         a6, s2, 255
                  nop
                  xori         a4, t2, -1349
                  or           s4, s3, a4
                  lui          t1, 330918
                  xori         s4, a0, 465
                  andi         sp, s6, 969
                  addi         s3, s2, -210
                  slt          a3, t2, a0
                  or           t3, tp, a7
                  sra          t6, a3, t1
                  srli         gp, a3, 15
                  sltiu        a1, t1, -991
                  add          t1, t0, t4
                  sltu         t0, a0, t1
                  slti         ra, a2, -1598
                  addi         a0, t3, 1630
                  andi         t0, sp, 1648
                  and          tp, s2, t2
                  andi         t1, s0, -500
                  andi         a3, s4, -1601
                  sltiu        t4, s3, 1556
                  sltiu        t6, a3, 1087
                  sltiu        t3, t0, -1558
                  slli         t6, a7, 28
                  or           s11, a1, a1
                  nop
                  sltu         s2, a5, s3
                  or           a1, s2, ra
                  slt          s0, a1, a0
                  srli         s6, t4, 12
                  sltu         s0, a5, t3
                  sltiu        ra, t0, -1547
                  lui          a6, 593125
                  xori         s8, a4, -1146
                  xori         s5, s10, -701
                  or           t6, a5, s0
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_2
                  li           s9, 0x80000000
                  li           tp, 0x80000000
                  li           a2, 0x2b014dad
                  li           a3, 0x84f8a996
                  li           t1, 0x80000000
                  li           t5, 0xffffffff
                  li           s8, 0x80000000
                  li           sp, 0x0
                  li           s11, 0xffffffff
                  nop
                  lui          t1, 611774
                  addi         sp, s8, -693
                  nop
                  sub          s9, s11, t1
                  addi         t5, a2, 2012
                  lui          sp, 309870
                  lui          t1, 903140
                  auipc        a3, 673859
                  nop
                  nop
                  sub          s11, s8, s11
                  add          s8, a2, s8
                  sub          sp, s8, tp
                  lui          a2, 947182
                  addi         s11, s9, 1363
                  nop
                  nop
                  add          a6, a2, t1
                  auipc        a2, 269460
                  nop
                  sub          t5, s8, s9 #end riscv_int_numeric_corner_stream_2
                  sub          a1, s9, t5
                  or           a0, s0, s8
                  li           a2, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           s5, 0x0
                  li           sp, 0x80000000
                  li           a5, 0x5f2e3961
                  li           s3, 0x80000000
                  li           t2, 0x80000000
                  li           s4, 0x0
                  li           s2, 0x58732c2b
                  li           a6, 0x80000000
                  li           a1, 0xffffffff
                  addi         a6, a6, 1706
                  add          a2, a2, a5
                  addi         a6, a1, -726
                  addi         s4, s2, 676
                  sub          a5, s5, s4
                  sub          s2, a2, s4
                  sub          s4, a1, s2
                  sub          s2, a1, s5
                  addi         s5, a5, 730
                  sub          s3, s2, s4
                  add          a5, a6, s3
                  lui          sp, 448246
                  sub          s2, a2, a5
                  auipc        s4, 455772
                  auipc        a5, 6290
                  add          t2, t2, s4
                  sub          a1, s5, a1 #end riscv_int_numeric_corner_stream_7
                  sll          sp, t5, sp
                  srli         gp, t1, 21
                  ori          s11, t5, -1922
                  srl          s5, s4, a2
                  sra          a5, t0, t2
                  srai         a4, a1, 1
                  addi         t6, t6, 1068
                  add          t5, t2, a4
                  slli         a3, zero, 31
                  lui          t3, 239751
                  srli         a6, s4, 12
                  addi         t0, sp, 1393
                  sub          a3, a0, a1
                  sub          s9, s9, a3
                  add          t3, a3, a7
                  sltu         s2, t6, t4
                  or           s6, s0, s1
                  and          t1, s4, a7
                  or           t1, t0, a7
                  sltu         tp, gp, t2
                  sltu         s11, s1, t4
                  nop
                  lui          t1, 75126
                  xor          t0, a0, s2
                  ori          a2, s11, 984
                  nop
                  srl          s6, t5, s5
                  xor          t0, t2, s0
                  auipc        sp, 373200
                  slli         a6, t6, 1
                  nop
                  addi         t5, sp, -1282
                  xori         s4, t3, -1359
                  and          s10, s5, t0
                  srai         a3, ra, 13
                  addi         s0, t3, 1659
                  xori         t6, a2, -402
                  nop
                  ori          a2, a5, 79
                  slti         a2, s6, 287
                  xori         s8, t2, -1841
                  nop
                  addi         tp, a3, -1304
                  add          s4, t4, t1
                  srli         zero, t1, 12
                  srai         s2, t1, 2
                  nop
                  sra          a4, t5, t3
                  ori          a6, t1, -783
                  sub          t3, ra, a2
                  xor          t2, s1, a5
                  xori         t1, sp, 1404
                  sltu         t3, s11, s4
                  sltu         s10, s11, s5
                  and          s3, a7, a5
                  sra          s3, sp, s7
                  ori          t6, s0, -1253
                  addi         s3, s6, 199
                  srli         s9, s8, 20
                  andi         s11, s3, -1481
                  sll          a2, a5, a5
                  sll          s4, a5, s7
                  xori         s8, t6, 877
                  lui          a4, 109417
                  auipc        s11, 555632
                  nop
                  sra          a6, sp, s3
                  auipc        s6, 234359
                  add          tp, t2, s11
                  addi         s0, s3, 1080
                  ori          t4, t3, 836
                  ori          s9, a5, -643
                  slli         t1, t6, 12
                  sltiu        s8, s1, -681
                  add          s2, tp, tp
                  xori         tp, zero, -1122
                  sub          t1, s2, a0
                  srl          a0, s11, a5
                  or           s9, t6, a6
                  xori         a3, a0, -1150
                  nop
                  slli         sp, a0, 20
                  slti         s5, t2, -1370
                  ori          a6, a1, -1708
                  slti         t5, a0, 633
                  slti         t0, s11, 1237
                  nop
                  auipc        a0, 846659
                  addi         s5, t2, -1215
                  srli         s6, t5, 0
                  srl          t3, s1, s8
                  srl          gp, a0, s3
                  srai         t0, t4, 27
                  srl          a4, a7, sp
                  slti         t0, a3, -957
                  nop
                  nop
                  sub          t0, t3, sp
                  xori         a1, ra, 1795
                  xori         a3, a7, 1360
                  slli         tp, s0, 8
                  slt          s11, a3, s4
                  ori          s3, a7, 822
                  add          s9, a2, s9
                  sra          s4, t5, s8
                  li           t4, 0x62fb18f3 #start riscv_int_numeric_corner_stream_9
                  li           s10, 0x0
                  li           a4, 0x80000000
                  li           s0, 0x0
                  li           s6, 0xdcc2f07a
                  li           t5, 0xffffffff
                  li           sp, 0xffffffff
                  li           a3, 0x646d6565
                  li           t2, 0x80000000
                  li           t3, 0x6ddc806b
                  lui          sp, 936199
                  addi         t5, a4, 8
                  add          sp, t3, s6
                  addi         a3, s10, 518
                  addi         t4, s6, 1570
                  sub          a4, s6, t4
                  nop
                  nop
                  lui          t3, 657293
                  add          a3, t5, s6
                  nop
                  nop
                  addi         s10, t2, 1058
                  auipc        s10, 597922
                  sub          t4, t2, t3
                  add          a4, t3, s10
                  addi         t5, s0, 84
                  lui          t2, 209857
                  sub          a3, t4, s10
                  sub          s6, sp, t4
                  nop
                  nop
                  nop
                  auipc        s0, 101594 #end riscv_int_numeric_corner_stream_9
                  sll          s11, s9, a1
                  nop
                  srl          s5, t6, t5
                  srai         s6, a3, 10
                  slti         sp, a4, -1763
                  slli         tp, a5, 21
                  sltu         s5, s6, s10
                  slti         s0, zero, 662
                  srai         a3, s0, 3
                  sub          ra, s9, a1
                  srai         t2, s6, 6
                  lui          a2, 239189
                  ori          a1, a6, 621
                  sll          tp, s0, tp
                  andi         t2, gp, 684
                  slli         t1, s3, 3
                  xori         a4, s8, 1506
                  srai         a6, t2, 20
                  lui          t5, 937193
                  addi         s3, t5, 949
                  slt          s6, zero, s10
                  slt          gp, t2, tp
                  sll          t6, tp, s10
                  add          gp, t3, a6
                  lui          t3, 310115
                  sra          zero, s11, s11
                  auipc        sp, 632918
                  xor          s2, s0, tp
                  sub          a0, ra, s4
                  srai         s4, gp, 31
                  and          t0, s7, a7
                  lui          t3, 590769
                  ori          ra, t4, 944
                  addi         t2, s0, -906
                  lui          ra, 81968
                  sub          s8, ra, s6
                  ori          s2, a4, -1359
                  andi         s9, a2, 1349
                  addi         s10, ra, -207
                  nop
                  and          t4, s8, s9
                  srai         s8, s5, 30
                  addi         a3, tp, 1697
                  sltiu        a4, s5, 39
                  srli         t5, t3, 29
                  ori          sp, a5, 329
                  auipc        t4, 145564
                  srl          t6, s4, s1
                  ori          s5, s3, 1911
                  andi         s10, zero, 983
                  sltiu        t6, s2, 83
                  srl          s6, a4, s5
                  nop
                  sltu         t3, t3, zero
                  andi         t3, t6, -826
                  slt          t3, t3, tp
                  nop
                  sra          t1, t3, sp
                  sltiu        a4, s10, 612
                  addi         gp, a1, -1242
                  srai         s3, s9, 3
                  srl          t1, a4, t2
                  add          ra, s5, t0
                  srai         s3, a0, 22
                  or           a6, s6, a7
                  andi         zero, s6, -1742
                  srli         a1, a5, 16
                  and          s9, s6, s11
                  and          s8, s7, t6
                  srai         sp, a2, 27
                  slli         t1, s1, 22
                  xor          s11, sp, s3
                  slti         t5, t6, -270
                  slt          s4, a5, t1
                  and          a3, t0, t6
                  slti         a0, zero, 1170
                  and          sp, s8, s11
                  srli         s8, t5, 27
                  slt          ra, zero, a0
                  slt          t1, s7, a5
                  auipc        s11, 142931
                  and          tp, s0, t2
                  slt          ra, s7, a1
                  or           t6, a7, t6
                  or           t5, s4, t2
                  sub          a0, s8, ra
                  sll          t3, a1, s9
                  srli         s0, t5, 23
                  sltu         tp, t3, ra
                  nop
                  ori          t6, a5, 1635
                  lui          t5, 489746
                  sub          a2, s3, t0
                  nop
                  slt          t4, sp, t1
                  sub          a4, t0, s11
                  sub          s2, s9, a6
                  addi         a5, s10, 347
                  addi         s0, a7, -1947
                  srai         t0, s1, 27
                  srl          a1, s6, s9
                  andi         a6, a3, -1506
                  andi         a2, s2, -1488
                  lui          ra, 1044865
                  srli         s10, s8, 5
                  and          s0, zero, sp
                  slli         s4, a6, 21
                  slt          s6, a7, t1
                  and          t1, t3, s7
                  slli         a5, sp, 24
                  nop
                  andi         s2, s5, -737
                  slti         s5, s11, 2033
                  sltu         t4, s0, s3
                  sltiu        s2, t4, -1691
                  andi         a6, a0, 360
                  sll          s4, s5, a2
                  auipc        s4, 663004
                  andi         t3, a4, 226
                  lui          gp, 973055
                  srli         s2, t6, 15
                  sub          gp, gp, a6
                  or           s9, s8, a6
                  nop
                  andi         s6, t3, -83
                  or           s4, t5, a0
                  or           t3, s1, s4
                  lui          tp, 209537
                  slti         t2, s9, 345
                  xor          zero, s4, t4
                  addi         a3, t3, 530
                  add          a4, ra, a3
                  ori          t3, a4, 1069
                  sltiu        t0, a5, 295
                  sra          s3, s5, s10
                  slli         s4, t1, 14
                  sltiu        a6, a2, 247
                  srai         s11, t3, 21
                  nop
                  add          t6, s7, s8
                  nop
                  sltiu        t0, s3, 450
                  nop
                  srai         a4, t4, 1
                  slt          ra, a7, a7
                  sra          tp, t1, a2
                  srli         sp, a4, 6
                  sub          tp, s0, a3
                  srai         sp, t0, 27
                  sub          a1, a0, a2
                  sll          s8, t5, t6
                  srl          a5, t2, t2
                  and          a6, s9, t6
                  srai         a6, s5, 11
                  sltiu        s4, s10, 803
                  auipc        a2, 988569
                  sll          t2, t5, a0
                  xor          t2, s5, t2
                  slt          sp, a5, s8
                  srl          a2, a6, t0
                  or           s10, s6, ra
                  auipc        a1, 990132
                  xor          a4, a4, s8
                  srai         a5, s0, 29
                  srai         s11, a1, 5
                  sltu         a0, s5, s3
                  slli         s0, tp, 11
                  sltu         s4, gp, a5
                  nop
                  and          s11, s5, a4
                  lui          s4, 620156
                  auipc        gp, 48866
                  ori          s4, a1, -1484
                  sll          s9, s5, t3
                  xor          a3, t6, s1
                  and          t2, zero, t2
                  slt          t5, s4, a4
                  sltu         zero, s2, a5
                  xor          t6, a0, t1
                  sra          t2, s1, a0
                  lui          ra, 726679
                  nop
                  addi         a6, s10, 1315
                  sub          a2, s8, ra
                  srai         a6, a0, 23
                  srli         a0, t1, 31
                  nop
                  ori          t2, s5, 636
                  andi         s3, a2, 713
                  sub          t3, s3, s10
                  xor          ra, t4, a5
                  slti         a5, s8, 1085
                  addi         t3, t2, -1607
                  sub          t1, t5, s4
                  srl          s0, s11, tp
                  srl          t2, s7, a3
                  auipc        a5, 155981
                  nop
                  srai         t1, s3, 14
                  andi         a1, s0, 467
                  sub          ra, tp, a7
                  addi         t4, a7, -670
                  slt          a6, tp, s6
                  sltiu        zero, t5, 315
                  slli         s6, s10, 7
                  sltu         a0, s4, s2
                  sll          t1, a3, s0
                  ori          a2, t3, -789
                  sra          s5, t4, s4
                  andi         a0, a7, 1339
                  sub          a6, a2, ra
                  slt          s2, s7, s0
                  lui          s11, 756368
                  slti         t4, a7, 275
                  or           a6, ra, t3
                  or           t5, t4, t4
                  srli         s4, tp, 30
                  lui          s4, 441914
                  nop
                  slt          gp, t0, a3
                  lui          sp, 1025301
                  sll          tp, t1, s9
                  addi         s5, a3, -1442
                  add          a6, s6, s8
                  ori          zero, s11, -1343
                  slt          t0, a6, s9
                  slti         s6, s8, -969
                  addi         t4, s4, -1067
                  sltiu        t4, t3, -122
                  addi         s2, t1, -576
                  slli         t2, a5, 18
                  nop
                  sub          a6, zero, t0
                  andi         sp, gp, 1797
                  slli         tp, s4, 24
                  sltiu        a2, t2, 1803
                  sltiu        s4, s10, -604
                  ori          a4, s7, -1074
                  sub          s0, s11, tp
                  srl          a4, gp, s0
                  auipc        sp, 965864
                  auipc        s0, 485122
                  and          s2, s0, t5
                  addi         s0, a4, -2027
                  addi         s5, a1, -1681
                  add          s8, s6, tp
                  ori          s10, gp, 1236
                  or           tp, sp, t3
                  or           s8, s3, a4
                  srl          gp, tp, zero
                  sub          a5, a6, ra
                  slli         t1, a5, 3
                  lui          ra, 298706
                  addi         a3, s3, 1368
                  slli         s8, t4, 30
                  nop
                  addi         s11, a1, -2037
                  sll          s0, a3, tp
                  andi         sp, t5, -20
                  xori         a1, ra, -299
                  auipc        zero, 231166
                  sll          a5, s5, s8
                  nop
                  addi         t2, t6, -1649
                  andi         a5, a5, -1159
                  addi         s10, s2, 296
                  sltu         a4, s6, s4
                  slt          t0, a3, sp
                  addi         t4, ra, -1359
                  andi         t5, s2, -2036
                  sltu         a0, t1, s3
                  xori         a1, a0, 1741
                  addi         t3, t1, 131
                  srl          ra, s3, a7
                  andi         s9, a7, 1076
                  sltiu        s2, tp, -436
                  xori         t1, t2, 557
                  nop
                  xor          tp, s0, a3
                  andi         t3, a2, -356
                  slt          t3, a0, ra
                  sll          t5, a6, s4
                  or           s6, s2, s5
                  sll          s9, a6, t5
                  lui          a4, 157126
                  nop
                  sub          a6, s10, a6
                  sll          t6, t1, zero
                  sltu         t6, a3, t3
                  ori          t2, s8, 1906
                  addi         t2, ra, -545
                  sub          a3, t0, tp
                  sltiu        a2, s7, 1040
                  lui          t0, 837030
                  sltiu        a1, t5, 450
                  lui          a5, 36525
                  srli         t2, s0, 5
                  sltu         s2, s9, a6
                  xori         a2, s0, 422
                  sub          s8, s0, a5
                  slt          s11, a6, a5
                  sltiu        a5, s7, -2026
                  lui          a6, 946370
                  slti         t5, gp, 1193
                  slt          zero, a2, s3
                  srli         gp, t2, 17
                  nop
                  sub          a1, s6, t0
                  slli         s11, s6, 2
                  and          gp, s3, zero
                  lui          gp, 153719
                  sll          s4, t1, t2
                  andi         t3, t6, 1103
                  xor          sp, a4, a5
                  sltiu        t6, a5, -914
                  sll          gp, a6, t2
                  xori         s4, s5, 321
                  sltiu        a6, a1, -1116
                  sub          s5, s8, s8
                  xor          a2, a0, a5
                  slli         s9, s0, 2
                  sll          t2, t4, sp
                  slli         sp, s0, 6
                  srl          t6, s2, s0
                  lui          a1, 881997
                  nop
                  xori         s0, s4, -1372
                  addi         zero, s11, 1324
                  add          s3, t5, t6
                  lui          a2, 765244
                  slt          s11, t6, a0
                  addi         t6, s11, -807
                  slti         a4, ra, 797
                  and          s3, s0, t0
                  sltu         gp, t1, a3
                  nop
                  xor          a3, s8, a2
                  sra          s9, s3, s2
                  and          s6, s7, t3
                  auipc        s0, 815908
                  or           s0, a4, ra
                  add          t4, s1, s8
                  sra          t3, a1, t5
                  sltiu        t6, s0, 1148
                  sll          t0, a1, s5
                  sub          a0, a6, s0
                  slt          s6, tp, s7
                  sub          s4, s3, t5
                  srli         s11, s1, 2
                  xori         s9, t0, 1325
                  sltu         s6, zero, gp
                  sub          t5, t3, t4
                  slt          sp, s4, tp
                  add          t0, a3, a3
                  slti         a6, s7, 519
                  add          s10, a7, a1
                  lui          a1, 328249
                  lui          s3, 254114
                  sra          a4, a1, s6
                  srli         t1, s6, 21
                  and          t5, a0, a3
                  srli         a6, t6, 5
                  sltu         t6, s0, s6
                  srli         t3, s4, 6
                  or           t3, a1, s2
                  sll          s2, a7, a5
                  sltu         zero, t3, tp
                  and          zero, a3, s5
                  andi         s10, s9, -349
                  sub          t0, a1, s0
                  sra          s10, s7, s9
                  sub          s6, a4, gp
                  srl          s0, t0, t5
                  auipc        s9, 542052
                  nop
                  ori          s4, t0, -1835
                  addi         t4, a6, 2008
                  andi         t4, s9, -961
                  slli         sp, s5, 17
                  addi         s8, s6, -2033
                  sll          tp, t2, s7
                  add          t5, t1, a0
                  slti         a4, s1, 1730
                  or           a3, ra, t2
                  xor          t2, s2, tp
                  auipc        a1, 670739
                  xor          a2, t1, a7
                  addi         s9, s10, 1289
                  and          a3, a5, zero
                  srai         t0, s5, 7
                  and          s6, s2, s7
                  sra          s2, a1, s5
                  auipc        a1, 772857
                  sltu         s3, s5, s6
                  sll          s9, a3, a4
                  and          ra, s4, sp
                  srai         s9, s10, 11
                  srai         s10, a5, 18
                  lui          s11, 188185
                  sub          t4, t2, s1
                  slti         t0, s3, 338
                  add          s2, a3, a2
                  sra          a0, ra, zero
                  addi         s0, a2, -1515
                  srli         a3, t1, 19
                  slti         s0, s3, -707
                  and          a3, ra, a7
                  srli         t5, s4, 15
                  addi         s10, s4, 259
                  srai         s9, tp, 10
                  or           s11, s2, t6
                  lui          zero, 24749
                  sll          t5, tp, a5
                  or           s10, t5, a1
                  xori         s0, ra, -716
                  addi         t4, t4, -394
                  sltu         s2, s6, s7
                  srli         t4, s9, 31
                  srai         t5, s3, 4
                  slt          s11, s0, s9
                  add          s9, t0, t6
                  slti         s9, ra, -18
                  sll          ra, s6, gp
                  lui          s2, 156973
                  nop
                  nop
                  srl          a3, s5, t5
                  slti         t2, t3, -1126
                  and          a0, a3, a0
                  andi         a3, s3, -1395
                  xori         t2, a3, 321
                  sub          s3, a2, s10
                  sub          t0, s11, s5
                  add          s5, a3, gp
                  or           a4, s3, a1
                  auipc        zero, 91889
                  nop
                  slti         ra, s0, 190
                  andi         a4, s8, 1373
                  nop
                  srl          t6, s7, a1
                  xor          t2, zero, a7
                  ori          s4, tp, 789
                  sltiu        t3, s4, 826
                  lui          tp, 409568
                  sll          s2, s11, t4
                  sltu         s5, a4, t3
                  srli         s10, t0, 21
                  sll          tp, a1, t3
                  slt          s5, a0, s10
                  auipc        a2, 836750
                  lui          a5, 947213
                  or           s6, ra, s9
                  lui          t5, 9188
                  auipc        a4, 562167
                  srli         s6, s6, 27
                  slt          a4, a3, s0
                  andi         s2, s3, -304
                  srai         t6, t2, 3
                  nop
                  slti         a3, s3, 693
                  srli         s8, s0, 12
                  sll          ra, s0, s5
                  slti         s0, s6, -445
                  srai         a6, a4, 13
                  or           zero, s7, s8
                  srai         a2, t3, 1
                  xor          s6, t4, s4
                  sra          t0, a7, s3
                  xori         s2, t4, 791
                  sltu         s9, tp, s9
                  auipc        s0, 181107
                  sra          t1, ra, s2
                  srai         ra, s2, 14
                  add          gp, sp, a4
                  srli         tp, t0, 12
                  auipc        s3, 695870
                  or           a3, t4, s7
                  add          s2, tp, a2
                  srl          s3, s5, s1
                  or           s0, s4, t0
                  sltu         t3, t6, t0
                  sll          t4, s10, t2
                  slt          a2, gp, s6
                  xor          sp, s2, s6
                  srl          a0, t6, s7
                  nop
                  sltiu        s2, s6, -2017
                  nop
                  sltiu        ra, t3, -1660
                  sltu         a4, t0, a7
                  sra          t1, t1, t4
                  slli         s6, t4, 15
                  ori          t4, sp, 1195
                  and          zero, s7, t0
                  sll          s6, t1, s2
                  lui          s3, 840002
                  andi         sp, s7, 1676
                  or           t6, tp, t4
                  nop
                  sra          a4, tp, s5
                  xor          s0, t3, s10
                  sub          t4, s10, s4
                  sub          s10, a5, t1
                  sra          t5, a4, t4
                  sltu         tp, ra, t5
                  srai         s3, a7, 22
                  srl          zero, t4, a6
                  slt          a4, a4, t6
                  addi         t5, s6, -2017
                  srl          s8, a6, t3
                  lui          tp, 128119
                  xori         s10, s10, 1446
                  lui          t2, 93914
                  add          gp, s3, ra
                  slti         t1, a0, 277
                  add          a6, a3, sp
                  sra          s0, s11, s10
                  addi         a4, a4, -1141
                  sub          s8, s5, tp
                  sra          a5, s8, s7
                  addi         t2, a2, -1467
                  addi         s11, a7, -770
                  slli         zero, s9, 4
                  and          s4, t2, t4
                  srl          a5, a3, s2
                  sra          s6, s8, s1
                  slti         t3, s5, 1635
                  andi         a6, t6, 1887
                  srl          s5, s5, s1
                  sltiu        t0, sp, -83
                  slti         t5, t6, -557
                  srli         gp, a7, 7
                  sub          a6, t0, s8
                  srli         ra, s6, 14
                  slt          tp, s5, a5
                  or           s6, a2, s8
                  sltu         a1, a1, s3
                  sltu         s0, t3, a5
                  sll          t4, a0, gp
                  nop
                  sub          s6, zero, s4
                  andi         a4, t0, -1171
                  add          s11, a3, ra
                  sltu         s4, t4, t3
                  xor          s8, t3, t6
                  sll          s8, s1, a1
                  ori          a1, s5, 714
                  add          t5, a2, s1
                  xori         t1, s8, 1576
                  add          s0, s2, t4
                  or           t4, s11, s2
                  sra          s8, t5, s1
                  sll          tp, t3, s1
                  auipc        s0, 355371
                  slli         s11, a4, 4
                  andi         a2, sp, -1869
                  auipc        zero, 45598
                  add          ra, a1, s10
                  sub          gp, a1, a7
                  add          a6, a3, s4
                  sra          s5, tp, t0
                  srl          zero, sp, s3
                  auipc        t4, 265218
                  addi         a2, s0, 1924
                  slli         a3, s10, 3
                  sltiu        t4, a3, 1743
                  andi         s3, s4, -734
                  xori         a2, a3, 1531
                  slti         s4, tp, 1911
                  andi         t2, t3, -1895
                  nop
                  slt          s5, a5, s3
                  lui          s8, 194792
                  and          t2, s10, a1
                  xor          t6, t1, t0
                  andi         s6, a2, -1760
                  and          a4, gp, s9
                  srai         a6, s6, 0
                  sltiu        s6, a5, -1079
                  add          a2, s7, zero
                  xori         a3, s8, -1978
                  sub          t1, s11, a0
                  srl          a4, s5, s2
                  slli         a6, s11, 1
                  sub          ra, s9, s3
                  nop
                  slt          t6, s1, t1
                  srli         s2, s5, 24
                  sub          s0, ra, t0
                  srai         s11, s6, 30
                  nop
                  srl          zero, t3, t3
                  srl          zero, s8, ra
                  srai         a4, zero, 17
                  sltu         a0, a2, a1
                  ori          s10, a5, -414
                  xori         tp, t1, -1041
                  add          s3, t6, a4
                  slli         s6, tp, 18
                  and          a4, a0, a3
                  slt          a4, a4, s8
                  srai         t1, zero, 8
                  and          gp, t1, zero
                  srai         s9, tp, 3
                  srl          t1, sp, s4
                  srli         t0, t3, 6
                  slti         s4, s6, 312
                  slti         a4, ra, 1253
                  slti         sp, s1, -6
                  sltu         s2, s11, s6
                  auipc        t3, 417168
                  srl          zero, t1, t0
                  andi         t0, s6, -1193
                  or           zero, a4, a3
                  nop
                  ori          a6, gp, -813
                  or           s4, t5, t1
                  sltu         gp, sp, a3
                  slti         t4, s6, 1596
                  srli         s4, s11, 20
                  add          a1, s10, a6
                  addi         sp, s5, -1179
                  ori          s5, gp, -2020
                  srli         s0, s9, 11
                  slti         s11, sp, -134
                  addi         sp, t3, 870
                  sll          s5, s6, t2
                  sra          a4, s1, a4
                  sltu         t2, a1, s7
                  andi         s2, t0, -1838
                  auipc        t3, 540901
                  sra          s2, s7, zero
                  sra          sp, t3, a2
                  auipc        t6, 516882
                  sub          a1, a7, s6
                  add          tp, t1, t2
                  srli         s2, s0, 20
                  sll          a3, a3, zero
                  ori          t6, t2, -1665
                  and          a5, sp, s3
                  xori         s8, t6, -1190
                  xori         s10, sp, -974
                  sltiu        sp, s2, 1188
                  xori         zero, t1, 592
                  srai         s11, s3, 13
                  slt          a3, s8, t0
                  and          zero, t0, zero
                  slli         tp, a5, 17
                  or           a6, t6, tp
                  nop
                  sub          s8, t0, t2
                  srai         s4, t2, 25
                  sll          t6, s3, s2
                  srai         a3, s3, 8
                  xor          a5, tp, t1
                  sltu         t2, s2, gp
                  xori         ra, sp, -347
                  srai         a0, s6, 6
                  sltiu        s9, s11, -1573
                  sra          gp, zero, a6
                  andi         sp, a1, -1265
                  add          s3, sp, t4
                  srli         t6, t0, 19
                  sub          a6, s9, a3
                  nop
                  srl          s6, t0, gp
                  add          t5, a5, a4
                  addi         t4, s3, -667
                  addi         zero, gp, -1190
                  slli         a5, s7, 26
                  and          s0, s9, s6
                  sub          t1, s10, s1
                  sltiu        zero, s9, -5
                  xor          t4, t4, a3
                  slti         s2, s5, 28
                  or           gp, a3, a7
                  xor          t1, t3, s11
                  xori         tp, a3, -97
                  slti         s2, s8, -2009
                  slt          sp, s3, a5
                  xori         s6, s4, -585
                  andi         s3, s3, -263
                  slli         t3, a1, 30
                  addi         s11, t3, 770
                  srli         t5, ra, 0
                  srli         t2, ra, 11
                  slti         ra, s1, -541
                  or           s6, s2, s9
                  sll          s3, t6, s11
                  sra          a2, a7, s11
                  sltiu        s10, t0, -649
                  slt          ra, sp, a5
                  nop
                  sll          s2, a7, a0
                  andi         s5, a5, -489
                  srli         a0, s2, 21
                  srl          tp, s5, a4
                  slt          s0, s6, a6
                  sltiu        t0, gp, 384
                  andi         s8, zero, 1773
                  and          s0, s5, s11
                  sra          s9, s5, a7
                  auipc        t3, 781132
                  add          s4, zero, t6
                  slti         t0, s10, -1773
                  slti         s2, s2, 712
                  sll          ra, t5, a4
                  auipc        t2, 1018081
                  and          t1, s0, ra
                  add          ra, tp, t5
                  andi         a0, t0, -828
                  srai         s11, s6, 23
                  or           a5, ra, s3
                  andi         sp, a4, -1296
                  add          t4, a6, s6
                  andi         ra, s9, -2045
                  addi         s3, a2, -1110
                  xori         s11, t5, 1431
                  slli         t4, t3, 22
                  and          a5, a7, s4
                  srli         t0, a7, 3
                  sltu         sp, s9, s3
                  sltiu        t1, t4, 1363
                  andi         s6, s2, -728
                  addi         s5, a1, -1331
                  slti         a5, t0, 64
                  add          s5, a1, gp
                  srl          s5, a4, t3
                  sub          t2, ra, s9
                  sub          s4, a2, sp
                  addi         t4, s5, -1490
                  add          a2, t3, s3
                  xor          t2, s0, a1
                  sll          a4, s2, a5
                  sub          t1, t1, a1
                  addi         t2, t5, -703
                  and          ra, ra, a5
                  lui          ra, 1034652
                  lui          tp, 553474
                  sra          s10, tp, s4
                  or           s8, a0, t6
                  slt          a1, s2, ra
                  slt          s3, ra, t2
                  lui          s9, 124754
                  and          s9, s0, s3
                  srli         s5, s9, 2
                  sra          ra, t6, s6
                  srl          t3, s5, s2
                  slt          s8, s6, s6
                  sll          a1, s11, ra
                  xor          s3, a3, s3
                  ori          t1, s5, -763
                  lui          s11, 193139
                  slli         a4, t2, 2
                  add          a6, t2, s6
                  sltiu        s6, s10, 1417
                  sltiu        a5, t0, 1865
                  srli         a1, s0, 4
                  xor          a3, a7, t2
                  srli         sp, s2, 20
                  sll          t0, a5, s5
                  sltu         a5, gp, a5
                  auipc        a5, 951913
                  nop
                  ori          s11, s1, -1840
                  lui          s11, 200989
                  srl          a3, s7, s0
                  slt          s11, s7, s8
                  lui          ra, 278358
                  lui          s11, 1041606
                  auipc        s6, 1028056
                  or           t1, t5, s2
                  xori         s2, a6, 65
                  srli         s2, a2, 16
                  sltu         s3, s4, t6
                  auipc        t3, 684275
                  andi         a3, s1, -718
                  nop
                  lui          a5, 504494
                  sltu         tp, t6, a0
                  xor          s4, s7, a1
                  slt          a1, t2, s7
                  sra          t6, t5, a5
                  nop
                  andi         s8, s1, -1941
                  slti         t2, s1, -616
                  xori         t2, t3, 1079
                  sra          t2, s5, zero
                  slt          s3, sp, zero
                  slt          zero, s1, s1
                  srl          s4, zero, s6
                  nop
                  lui          a4, 470908
                  ori          sp, s0, 1833
                  addi         a2, s2, -123
                  and          t4, ra, gp
                  xor          a3, t6, t1
                  sll          tp, t5, zero
                  auipc        s3, 523725
                  xor          a1, a7, s2
                  andi         t0, t1, 490
                  slt          s4, s8, tp
                  ori          a4, a3, 764
                  nop
                  lui          s6, 299337
                  xori         s5, s7, 1381
                  sra          s10, tp, s6
                  srl          sp, zero, a3
                  srli         s8, a1, 26
                  sltiu        a6, gp, -1675
                  xori         a0, zero, -1051
                  nop
                  lui          t4, 456061
                  sub          s4, a4, s0
                  or           sp, s4, a6
                  add          ra, s4, a3
                  lui          t1, 64717
                  sltu         ra, a1, t4
                  sll          t5, s9, t0
                  srli         a2, s5, 0
                  lui          s4, 1020309
                  nop
                  srli         a3, a3, 24
                  slti         s2, t2, 1082
                  nop
                  ori          t4, s10, 65
                  srl          a2, a1, gp
                  auipc        t1, 208891
                  xor          a5, t6, a2
                  sub          s2, t4, s6
                  sltiu        s3, s2, -1575
                  srl          zero, s1, t3
                  lui          a3, 794901
                  slti         a6, t5, 1638
                  slt          s4, t6, a2
                  sll          sp, ra, sp
                  sltiu        ra, t2, 753
                  addi         gp, ra, 1860
                  srl          t6, t2, s6
                  xori         s0, s0, 1573
                  sra          zero, s5, sp
                  xori         s10, a5, 1877
                  ori          gp, zero, -1546
                  addi         s2, s1, 2036
                  srli         s0, t2, 17
                  or           s4, s1, s10
                  xor          tp, s4, t4
                  or           a6, a1, s1
                  srli         t2, t2, 14
                  auipc        s11, 352499
                  ori          s10, s7, 1848
                  sra          t5, a6, s1
                  srai         a4, t4, 12
                  srli         t5, sp, 17
                  srai         t1, a3, 17
                  auipc        t5, 982467
                  ori          t4, tp, 2030
                  sltiu        t6, a0, -967
                  sll          t6, t2, t6
                  or           t4, t4, a4
                  sll          s8, t2, zero
                  xor          s8, zero, a4
                  add          a2, a1, a1
                  srli         a5, s11, 13
                  xor          t6, s4, s10
                  nop
                  sra          a2, s4, s11
                  nop
                  slli         s11, s0, 17
                  sll          a3, t3, s8
                  add          t6, gp, s3
                  sltu         s9, s0, a3
                  addi         a2, t2, 120
                  or           s6, ra, a0
                  srl          sp, s11, s6
                  addi         s3, t5, 1652
                  andi         s10, t0, 254
                  or           s0, a1, s9
                  and          t5, a3, a0
                  xor          s9, t1, a2
                  or           a3, t2, s11
                  xori         sp, ra, 800
                  and          s2, a6, a7
                  sll          s11, t4, tp
                  sll          gp, s1, zero
                  add          t0, s3, t2
                  xori         s10, ra, -1843
                  xor          s11, t1, t5
                  auipc        a0, 1041095
                  li           s0, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           s2, 0x57a4d79
                  li           a0, 0xffffffff
                  li           t3, 0x0
                  li           t1, 0x706cfd6e
                  li           a6, 0x8e7da4e8
                  li           a2, 0x80000000
                  li           s4, 0x0
                  li           s10, 0x9d19cca0
                  li           t4, 0xffffffff
                  addi         t4, t3, 81
                  auipc        t4, 654737
                  add          s2, s4, s4
                  add          s10, a2, a2
                  lui          a2, 320308
                  nop
                  addi         s10, t1, -1114
                  lui          t4, 543334
                  add          a2, s10, t1
                  nop
                  lui          t1, 576915
                  nop
                  nop
                  sub          t1, a2, s0
                  addi         t3, s4, 1254
                  nop
                  addi         a2, a0, 44
                  addi         t1, a6, -585
                  auipc        s4, 762323
                  add          t1, s4, t1
                  sub          s0, t3, s4
                  lui          t3, 573052
                  sub          a0, s4, s4
                  lui          a6, 586261
                  lui          t3, 503117
                  sub          s0, s0, a2 #end riscv_int_numeric_corner_stream_6
                  or           a4, a4, s8
                  lui          a0, 544570
                  xori         t4, t0, 883
                  sll          a5, a6, a1
                  nop
                  lui          a2, 891393
                  sub          gp, s6, a4
                  sltu         s9, s6, zero
                  sltu         s5, s4, s11
                  xor          a3, t5, a2
                  slti         t4, a6, -1590
                  slt          s2, sp, s1
                  slt          t1, s9, a2
                  xor          s11, tp, s6
                  sltu         t6, sp, s9
                  srli         a3, s0, 8
                  auipc        s5, 250495
                  nop
                  xor          s0, gp, sp
                  xor          a4, s11, s9
                  srai         s11, a7, 10
                  addi         sp, t6, -720
                  srai         a3, gp, 23
                  nop
                  lui          t0, 448532
                  slt          a1, t2, a6
                  addi         t1, t2, 146
                  xori         s3, a6, 1901
                  xor          s3, t5, sp
                  ori          s5, gp, 141
                  ori          gp, s6, -1898
                  xori         t4, s1, 192
                  auipc        t5, 379912
                  sub          s8, ra, s5
                  auipc        s11, 985615
                  sll          s6, a4, a5
                  andi         a3, s4, -1126
                  addi         t3, t3, -31
                  addi         a0, a2, 1014
                  slt          t2, ra, s10
                  srli         s4, sp, 17
                  ori          s8, t5, 1322
                  addi         sp, t4, -796
                  xori         zero, s10, -1332
                  ori          a4, a0, -1890
                  and          s4, tp, s9
                  add          a1, zero, a4
                  srai         t6, s1, 7
                  xori         t0, s5, 54
                  slli         s10, s9, 28
                  srl          s3, ra, t6
                  slti         s9, s2, 919
                  sltiu        t1, s11, -962
                  slti         t3, a5, -1573
                  add          s6, s2, t4
                  srl          a4, tp, s5
                  slti         t2, a7, 225
                  slt          a0, tp, sp
                  xor          s9, tp, s10
                  or           t1, s5, s3
                  sltu         s6, gp, s6
                  slli         t1, s6, 0
                  add          t1, a7, s11
                  auipc        t6, 108419
                  slti         tp, gp, 578
                  xor          tp, s10, a5
                  srai         s5, a1, 13
                  sltu         s6, s3, ra
                  addi         t2, s10, -1522
                  slli         s2, tp, 27
                  sltu         s5, s3, s2
                  auipc        a0, 168022
                  srl          s4, s10, s5
                  and          a1, t1, s1
                  lui          gp, 613514
                  ori          gp, sp, -855
                  slti         s6, s1, 1653
                  auipc        t3, 643196
                  slt          t4, s5, t6
                  sltiu        a1, zero, 1761
                  srai         a6, s10, 24
                  srl          t3, t1, a7
                  lui          tp, 809845
                  addi         s9, gp, 1687
                  or           t0, t3, a5
                  xori         tp, s9, 375
                  slli         t2, t3, 11
                  addi         s11, ra, -1626
                  slti         sp, t1, -1007
                  xori         a2, a1, -1023
                  srli         sp, t4, 13
                  slli         s2, s7, 15
                  sltu         t3, a5, s3
                  or           a1, s2, zero
                  slt          zero, t0, t5
                  sltiu        s8, s9, -1380
                  xori         t3, a2, 1531
                  sltu         sp, s3, zero
                  add          s5, a0, s11
                  sltiu        zero, s6, -1767
                  add          s3, tp, t4
                  srl          s8, a7, a6
                  slt          a6, s4, t0
                  sll          tp, s4, t1
                  sll          gp, s3, t6
                  and          t0, s5, a2
                  sltiu        ra, s3, 1891
                  addi         s6, s0, 549
                  lui          a3, 808425
                  ori          a2, s8, 657
                  lui          s6, 38228
                  addi         a6, s10, -764
                  xori         a0, a2, 232
                  slti         t1, t2, 853
                  xori         a3, a0, -1949
                  sltiu        a4, t4, -677
                  srli         s10, t4, 8
                  sltu         s8, t1, s8
                  auipc        t3, 29093
                  xor          s11, ra, a4
                  slti         gp, s3, 1619
                  srai         s3, a7, 31
                  sub          t4, a7, t3
                  sub          a1, s6, s0
                  sub          s11, s11, a7
                  addi         s8, a1, -933
                  andi         s10, a6, -1081
                  srl          a5, t2, a0
                  auipc        a2, 981601
                  sll          t4, s5, s9
                  sra          s11, s1, t4
                  or           t1, s10, sp
                  andi         s3, t4, 358
                  add          a5, s8, t3
                  and          gp, t4, s6
                  xori         sp, t2, -917
                  sltiu        s9, s7, -282
                  addi         zero, s9, 1805
                  lui          a0, 675965
                  lui          s5, 531368
                  sltiu        t5, t3, 25
                  sub          sp, a2, a7
                  lui          t1, 19271
                  srl          t0, s6, a6
                  add          s3, s9, a0
                  add          a6, ra, a3
                  ori          a2, s1, -1385
                  sub          s0, a5, a3
                  sra          t6, t2, s5
                  ori          a4, s10, -183
                  sltiu        a2, s2, 977
                  slti         a6, s6, -158
                  lui          s11, 371989
                  sra          gp, s6, a2
                  ori          s8, s11, -1933
                  ori          ra, t6, 1628
                  srai         s11, s8, 24
                  srl          gp, zero, t3
                  auipc        gp, 789680
                  sub          a3, sp, s9
                  sra          t2, a3, t0
                  slti         t6, a4, 1984
                  and          t0, s5, s9
                  or           gp, s2, s5
                  sub          a0, a4, s3
                  srl          a0, s10, s9
                  xor          s10, s4, t2
                  srli         s2, s4, 27
                  addi         s9, s7, 1634
                  srai         t4, s3, 24
                  slti         s11, a6, 147
                  srli         t5, sp, 16
                  slli         t1, gp, 29
                  andi         s6, t4, -695
                  sll          s4, t1, t2
                  and          s9, s4, t5
                  slti         s10, t4, -9
                  srai         s4, a2, 12
                  slti         a0, t5, 284
                  sra          s4, t4, tp
                  add          ra, gp, a4
                  srai         s9, t6, 9
                  nop
                  srli         s4, tp, 20
                  and          s8, a2, sp
                  xori         s6, s4, -394
                  xor          a2, s2, t4
                  addi         t0, ra, 884
                  add          a2, a5, a6
                  nop
                  srai         a1, zero, 28
                  srli         t6, ra, 17
                  sltiu        t0, t0, -1270
                  auipc        t4, 638434
                  nop
                  slti         t6, s1, 165
                  or           a3, s0, t0
                  sltu         s8, s3, tp
                  lui          a3, 1033254
                  ori          s0, s3, 526
                  srl          ra, t0, a7
                  ori          a5, s8, 1561
                  andi         a1, t4, -512
                  auipc        a3, 668097
                  sltiu        s4, t0, 1974
                  addi         s3, s9, -119
                  and          s3, zero, t2
                  srli         t0, a5, 21
                  slt          t1, gp, a1
                  slli         a6, a0, 19
                  andi         a0, t5, 1663
                  sra          t4, s1, a3
                  add          t0, s4, s5
                  srli         s10, a3, 5
                  or           zero, s4, s6
                  srai         zero, t5, 0
                  lui          s8, 622271
                  xori         a1, a2, -1187
                  or           t0, s2, s1
                  xor          s5, s3, t1
                  auipc        t4, 275362
                  srl          sp, s11, s3
                  lui          a3, 705748
                  sll          sp, gp, a4
                  lui          t6, 283283
                  xor          a0, a0, a3
                  andi         s11, gp, -1837
                  andi         a5, t3, -932
                  srl          a1, a0, a3
                  ori          t4, s9, -338
                  xor          t1, s5, t4
                  sub          s5, zero, s8
                  andi         s5, s2, -1864
                  xor          s3, a2, t1
                  xori         a0, t2, 1564
                  sltu         s6, a2, s1
                  ori          t0, t3, 1086
                  sltu         zero, zero, t0
                  slli         s0, zero, 24
                  add          s8, a6, gp
                  sra          a3, t1, ra
                  ori          s11, s11, -839
                  srai         sp, a4, 26
                  ori          t3, a5, 590
                  xori         s3, t1, 2027
                  slti         t3, t4, -1653
                  xori         s0, s11, -1163
                  or           ra, s1, zero
                  sltiu        gp, t5, 552
                  nop
                  slti         ra, s9, -1175
                  srai         gp, t1, 23
                  lui          a0, 455180
                  sltu         a6, a7, ra
                  addi         t5, s1, -1371
                  andi         s5, s7, -995
                  and          zero, t4, t6
                  andi         a2, s5, 35
                  slti         tp, s2, 1812
                  slli         zero, s3, 22
                  sub          s6, s11, a5
                  add          s3, t1, s7
                  or           s11, s0, a1
                  slti         a4, t0, 766
                  sltu         t1, a5, zero
                  addi         s5, a7, -1923
                  nop
                  andi         ra, s9, 1507
                  or           tp, s3, t2
                  andi         a4, a2, -1624
                  auipc        a5, 988737
                  sll          s11, s8, a5
                  and          s2, s7, a0
                  add          t0, t2, t5
                  sll          s0, a7, s10
                  slt          a1, s4, s0
                  ori          gp, a2, 1274
                  andi         ra, gp, 716
                  sltiu        t6, a1, -1728
                  slt          t6, a0, zero
                  sub          s5, a4, s1
                  sltiu        s0, s6, -1237
                  addi         gp, a4, 1257
                  sltiu        s6, s10, -1245
                  sll          t2, s5, s10
                  sll          s2, s11, s2
                  add          a5, tp, s11
                  or           s8, gp, a0
                  xor          a6, s10, s11
                  andi         a1, s7, 83
                  slti         s5, s2, -1307
                  slli         s6, t3, 19
                  sra          s0, s9, s8
                  addi         t4, t5, -618
                  slt          s0, s11, s2
                  slt          s10, a1, t5
                  and          t4, t4, a2
                  sltiu        t6, a1, -1380
                  xor          a6, s1, a7
                  ori          s5, t3, -492
                  xori         s9, s2, -480
                  srl          a3, t4, zero
                  srai         t4, t6, 30
                  auipc        s0, 647803
                  slli         s6, s3, 28
                  sltu         t6, a6, s5
                  slli         s2, t4, 11
                  ori          zero, ra, -360
                  srai         a1, s11, 7
                  add          a2, s6, a6
                  xori         s0, s0, -1491
                  ori          s8, a2, 123
                  and          a4, s8, s5
                  sll          gp, t5, s1
                  sltiu        t1, s7, -18
                  nop
                  srli         ra, s1, 27
                  nop
                  srl          a2, a3, ra
                  xori         s3, a3, -204
                  slti         s10, gp, 512
                  srai         a1, s11, 2
                  xori         s5, a0, 1832
                  sra          s9, a2, s1
                  srl          s11, zero, s11
                  srli         s2, sp, 2
                  slli         ra, t6, 1
                  sltu         t6, s3, a4
                  srl          s11, s9, t3
                  srli         a4, s3, 1
                  slli         t3, a7, 27
                  lui          s9, 323678
                  or           s0, a1, t5
                  ori          s10, t0, -1788
                  sra          t5, t2, a4
                  sub          a5, t4, s4
                  auipc        t0, 423696
                  sub          s11, a6, a4
                  sltu         s11, s11, s9
                  sltiu        s3, s10, -1693
                  and          s6, a1, a6
                  xor          s10, t6, s3
                  xori         t1, s4, 1038
                  andi         t1, t5, 1036
                  slti         a3, s4, 29
                  xor          s4, tp, s7
                  sub          s3, s4, a6
                  nop
                  addi         a0, s3, -1361
                  sltiu        s3, zero, 139
                  sra          gp, t5, s5
                  srli         t6, s1, 12
                  xor          a6, t4, t2
                  addi         s2, a3, -661
                  sll          s5, s2, t4
                  sll          s0, s9, t6
                  and          a5, tp, a7
                  srai         t5, a0, 20
                  sub          s4, ra, t1
                  add          t6, a0, t3
                  and          sp, a5, s10
                  sll          s3, a3, s6
                  add          t3, s3, t1
                  sltiu        s3, t5, 1326
                  sra          s6, s3, zero
                  xori         s5, a2, -1246
                  sltiu        a2, s9, -525
                  addi         tp, t3, 1848
                  auipc        s6, 28732
                  sra          a0, s1, s1
                  nop
                  slli         t1, s8, 16
                  add          t5, s0, t1
                  ori          s4, s5, -278
                  sub          a5, t6, t3
                  xori         ra, zero, 344
                  slt          a4, s7, s7
                  slti         t5, t5, 1833
                  xori         s9, t3, 1166
                  sll          a2, a2, s2
                  andi         s11, s4, 71
                  lui          s8, 668450
                  add          s6, a0, s11
                  sra          s6, a7, s3
                  sltiu        a2, gp, 67
                  sub          t1, s10, s9
                  andi         s3, t3, 1232
                  xor          t5, t1, s1
                  add          t6, a1, t2
                  andi         tp, t2, -1198
                  srl          s0, t0, t0
                  addi         t2, t4, 1541
                  xor          s10, s9, t2
                  sub          zero, a2, s0
                  or           t2, s9, a1
                  srli         a5, a6, 29
                  nop
                  sra          t5, a2, s5
                  ori          a6, tp, -1827
                  sltu         t1, gp, a4
                  srli         s4, t2, 12
                  ori          s6, a0, -812
                  sltiu        zero, a6, 499
                  sltu         zero, a0, a0
                  srai         a3, a5, 26
                  xor          s5, t0, t0
                  nop
                  sltiu        s5, s5, 1441
                  lui          s3, 3426
                  addi         s0, a1, -1998
                  slt          t0, t0, t4
                  srai         a0, s0, 8
                  slt          a3, s8, s9
                  sltiu        t5, tp, -1275
                  srl          tp, a2, zero
                  sltiu        tp, s5, 1845
                  sll          t5, s4, s7
                  nop
                  xori         gp, sp, -540
                  slli         tp, s5, 25
                  srl          t0, gp, a2
                  nop
                  slti         s8, a4, 1428
                  nop
                  sub          s8, a6, a6
                  nop
                  slti         t6, s7, 1452
                  or           s3, t1, zero
                  nop
                  and          s0, s9, zero
                  add          s6, gp, s5
                  ori          s2, s10, -797
                  add          s4, a2, s5
                  slli         a1, gp, 23
                  lui          t4, 867874
                  slli         s2, gp, 18
                  and          tp, s0, gp
                  ori          t1, s7, 1083
                  slli         t2, s7, 4
                  nop
                  lui          s2, 993370
                  sltu         s4, s0, gp
                  slti         t6, a2, 1865
                  sub          s4, t0, s1
                  nop
                  nop
                  add          t0, a7, a3
                  sll          t3, a3, s6
                  sra          a2, zero, t6
                  add          t0, s7, s11
                  add          t4, s1, s7
                  xori         s10, gp, -785
                  ori          gp, t2, -123
                  auipc        t3, 1036168
                  sub          t1, tp, s3
                  lui          s8, 781978
                  xor          s4, s11, s11
                  srl          a3, s0, s8
                  slli         s9, s10, 29
                  slli         tp, a3, 5
                  srai         s9, s4, 12
                  lui          a3, 28820
                  sub          a1, s8, s9
                  add          a5, s5, gp
                  addi         tp, s7, 321
                  xor          t1, s3, s9
                  andi         s8, s4, 1172
                  sll          t1, s7, a1
                  slti         s11, t2, -74
                  slli         s5, s1, 14
                  ori          t4, s10, 1952
                  add          t3, t6, sp
                  sltiu        a1, t4, -1186
                  sltu         s0, t4, s11
                  or           a5, t2, t5
                  srl          t0, ra, s3
                  srai         a6, t4, 20
                  auipc        zero, 244754
                  sub          s6, s1, s6
                  sltiu        t1, ra, -895
                  sltiu        t1, a4, -1924
                  nop
                  auipc        a3, 150572
                  lui          t0, 640361
                  auipc        s0, 232758
                  ori          t3, s6, -915
                  or           a5, a6, a1
                  addi         zero, s3, 1765
                  slt          s8, a5, a3
                  lui          tp, 909547
                  sltu         a0, a7, t2
                  andi         tp, zero, -918
                  auipc        s2, 676788
                  sub          sp, a0, t5
                  sltiu        s6, s11, -416
                  srl          s6, s4, a5
                  sltu         t1, t2, t0
                  srai         s8, t1, 29
                  ori          s9, s5, 805
                  or           s3, a6, s11
                  sltu         s8, s6, a0
                  sra          tp, s0, a0
                  xori         s6, s3, 1431
                  slli         s0, a5, 16
                  nop
                  andi         sp, t6, 1922
                  ori          s9, a1, -1369
                  or           a1, t1, a0
                  srli         tp, s7, 6
                  addi         t5, s5, -1947
                  srl          a6, tp, a4
                  slli         a0, ra, 17
                  sltu         a2, a1, s3
                  srl          t3, ra, a4
                  xor          a0, t6, t5
                  sltiu        gp, t1, -848
                  srli         a4, a0, 13
                  srli         a4, s3, 10
                  sra          s5, zero, gp
                  sub          a2, s11, a7
                  and          s9, s5, zero
                  slt          s2, a5, tp
                  srli         a5, s5, 21
                  or           a3, s6, s8
                  sub          s3, t4, s8
                  sltiu        a3, s8, 1739
                  nop
                  slti         ra, s9, -872
                  add          a0, a7, a5
                  addi         s6, s9, -731
                  sltiu        a2, t2, 227
                  xor          sp, s10, s11
                  andi         a0, a4, 1384
                  and          a4, a7, s0
                  sra          t6, t5, gp
                  sll          a1, a5, ra
                  sltiu        ra, sp, 37
                  lui          a6, 521031
                  xori         a0, zero, 1417
                  xor          s8, a2, a3
                  sub          a0, a0, s1
                  addi         t6, a1, -1367
                  auipc        s6, 502179
                  sltu         a4, s0, t4
                  sll          gp, s1, a3
                  sltiu        ra, gp, -448
                  lui          gp, 180691
                  slti         t1, t6, -1333
                  auipc        a6, 578279
                  andi         gp, s1, -753
                  slt          s5, a0, tp
                  slt          t1, s1, a7
                  sltu         a2, a5, s3
                  and          t3, t4, s3
                  ori          s10, t3, 951
                  slti         a0, ra, -990
                  srl          gp, s6, s6
                  sltiu        tp, a2, -2017
                  or           t0, s10, s3
                  addi         ra, s0, -849
                  sra          a1, a0, ra
                  auipc        tp, 851556
                  srli         s11, s1, 28
                  and          s11, a5, a2
                  sra          s4, a4, a1
                  xori         gp, s5, -1973
                  sltiu        t4, a0, 1955
                  lui          zero, 705592
                  slti         a5, s5, 601
                  and          s9, t0, a6
                  srl          ra, t3, t6
                  or           t5, a5, tp
                  sra          s11, s9, s0
                  slt          a4, t0, sp
                  slli         a1, t0, 24
                  nop
                  xori         ra, t5, 160
                  sltu         a4, s0, a5
                  auipc        ra, 678667
                  lui          s9, 71631
                  lui          a3, 64448
                  and          a1, gp, t5
                  add          s8, t0, s2
                  slli         a5, s7, 0
                  srli         a3, a1, 9
                  slli         s5, t5, 26
                  sltiu        s6, a1, -1430
                  xori         s4, a1, 1604
                  addi         t5, s2, 1724
                  sltu         t6, t1, sp
                  slti         s11, t0, -496
                  sub          a3, s8, s9
                  nop
                  sltu         s5, tp, a5
                  slti         t1, sp, 967
                  sub          a3, s3, a7
                  ori          s11, a2, -622
                  or           a1, t6, s5
                  xor          a0, s10, t0
                  srl          zero, s3, s3
                  add          t5, t0, s4
                  nop
                  and          t3, t6, s7
                  xor          t5, gp, s8
                  sra          gp, s4, s2
                  sra          sp, a0, t4
                  auipc        a4, 841774
                  slli         s10, t4, 8
                  slt          sp, tp, s2
                  nop
                  lui          zero, 977701
                  slli         t4, t6, 7
                  auipc        t4, 669269
                  srli         s3, s0, 7
                  sll          t1, s9, a1
                  xor          ra, a3, a5
                  xori         s0, s11, -1580
                  slt          s5, s5, t3
                  srl          a0, s8, t6
                  slti         t3, s5, -2039
                  srl          sp, s8, t5
                  and          a1, s0, t5
                  and          a1, a4, t6
                  auipc        t1, 714119
                  slti         t6, a0, 507
                  and          s9, t4, ra
                  sltiu        s6, s8, -1458
                  sll          s8, s1, sp
                  srl          a6, a2, s6
                  srli         s2, s3, 26
                  sltiu        gp, s6, 1525
                  slti         s2, t3, 906
                  xor          t4, gp, s11
                  xor          t5, a4, ra
                  addi         t3, a2, -1826
                  srai         t4, tp, 9
                  lui          s3, 115150
                  slti         s2, a1, -61
                  sltiu        t1, a5, -783
                  sra          a4, s1, t6
                  sll          t5, t1, tp
                  and          a0, s1, t0
                  xor          a6, s9, t2
                  andi         t4, gp, 1089
                  or           sp, s9, t4
                  sub          gp, t6, s7
                  addi         a4, a5, 934
                  slti         a4, t5, 653
                  slt          s0, s0, zero
                  sltu         gp, s2, a4
                  ori          a3, s7, -1487
                  slti         s9, s1, -1226
                  or           a6, t1, s9
                  nop
                  ori          s10, t4, -1586
                  sltu         a4, a5, a3
                  slt          s11, s2, a7
                  slli         s0, s9, 6
                  or           s11, t5, a2
                  slt          s2, tp, a6
                  slti         a4, t3, 1516
                  xori         a2, t0, -476
                  auipc        s0, 15536
                  srl          s2, s8, s5
                  sltiu        s4, sp, -559
                  addi         t5, s1, 1483
                  add          s4, s8, t3
                  slt          ra, s3, a0
                  sltiu        ra, t4, -1487
                  srl          a2, s6, t0
                  xori         t1, s10, 171
                  ori          t5, a1, -1174
                  nop
                  and          t5, a5, t4
                  xori         tp, t3, -26
                  slt          ra, a5, ra
                  addi         t5, t4, -1472
                  srai         t4, t5, 25
                  slti         t0, sp, -1011
                  slt          tp, s0, a7
                  nop
                  xori         a2, s1, 1251
                  srl          t1, s11, s6
                  sra          tp, t1, t4
                  srl          s0, sp, s3
                  slli         a0, t0, 6
                  sltu         a1, t5, zero
                  nop
                  sub          a6, sp, s9
                  sltiu        s2, s2, -1732
                  srai         s10, zero, 27
                  sra          t3, s4, a5
                  slli         a5, t3, 27
                  auipc        s3, 102537
                  srl          s8, t3, t6
                  srli         t5, a0, 9
                  srli         t3, a1, 14
                  addi         t0, gp, -423
                  slt          s2, a6, s9
                  sltiu        a5, t4, 675
                  sll          s10, s5, tp
                  xori         t0, t4, -1615
                  slti         ra, a5, -1884
                  ori          s5, zero, -1515
                  srai         t1, s6, 14
                  slli         tp, ra, 1
                  srl          t1, t2, s8
                  srl          tp, a3, tp
                  auipc        sp, 146032
                  xor          s0, sp, t3
                  addi         tp, s11, 1899
                  xor          t1, t5, t2
                  srli         s9, sp, 17
                  andi         a1, s7, -1929
                  slt          s9, s9, s1
                  slli         s9, s4, 2
                  srli         s4, a6, 3
                  sltiu        a6, tp, 1441
                  sltu         a0, a7, s0
                  ori          s8, s6, -1185
                  srai         t5, t0, 24
                  and          sp, a3, a0
                  xor          t2, t5, zero
                  xor          a2, s9, s7
                  and          sp, s7, a1
                  ori          s3, tp, -1724
                  sub          a2, t3, a4
                  lui          t0, 374521
                  slt          t3, gp, s2
                  xor          a1, zero, t1
                  slt          a1, a4, a3
                  sub          t5, a3, s9
                  srai         tp, a4, 18
                  sltu         tp, s9, s11
                  slti         tp, s9, 1348
                  lui          a3, 824673
                  andi         ra, s7, -91
                  sltu         t5, t3, a4
                  slli         t2, a7, 28
                  slt          t2, ra, s9
                  xori         s8, sp, -714
                  and          s9, s2, gp
                  srli         a6, a0, 21
                  nop
                  srl          t2, gp, s6
                  sltu         s2, s9, ra
                  xor          t0, t6, a6
                  slli         s8, s9, 31
                  ori          sp, s5, -1102
                  srli         t1, s8, 16
                  and          s5, s9, t2
                  slt          ra, s9, s8
                  sub          a5, ra, sp
                  andi         s4, s8, -934
                  slt          s4, ra, a6
                  nop
                  sub          s6, a6, a0
                  sltu         s4, a7, t6
                  sub          ra, s11, s9
                  srli         a6, t5, 25
                  lui          s11, 537785
                  add          zero, s3, s3
                  auipc        s3, 950138
                  sltu         ra, s7, a6
                  and          sp, t3, gp
                  sltiu        a4, ra, 1799
                  nop
                  auipc        s10, 889026
                  sltiu        t4, s11, -1578
                  sub          s2, zero, a1
                  slti         s3, s10, 1278
                  slli         ra, t1, 25
                  addi         gp, ra, 103
                  srl          a6, s6, t3
                  xor          zero, t5, a0
                  srl          s10, a4, gp
                  and          s11, s11, a6
                  add          gp, s7, s1
                  srl          t4, gp, a6
                  sll          zero, s0, gp
                  sltu         a1, a0, s9
                  xor          zero, tp, s2
                  slli         s5, s10, 29
                  slli         t0, tp, 5
                  slti         t0, t2, 1268
                  slt          zero, t5, s2
                  xori         a4, t4, -1695
                  xori         s9, t0, 1528
                  slt          t4, t0, a1
                  and          sp, s4, t2
                  sll          s9, a1, s4
                  sltiu        s5, t4, -290
                  auipc        sp, 406420
                  andi         s0, tp, 549
                  nop
                  sra          s9, a7, s2
                  sub          a5, s4, gp
                  xori         sp, s6, -833
                  xori         tp, s8, 322
                  lui          a6, 159591
                  sra          ra, zero, s5
                  sub          sp, t2, s11
                  sra          s3, s10, s8
                  lui          t2, 487349
                  sltu         a3, a4, a5
                  add          s4, tp, s10
                  ori          a0, t2, -1981
                  slli         t0, s10, 29
                  sll          a3, s1, s6
                  sub          a6, gp, t4
                  xori         a0, s5, -735
                  andi         a0, s4, 1216
                  sub          t2, s7, s1
                  and          tp, s10, t0
                  sll          t0, a7, sp
                  sll          ra, a2, a4
                  sra          s4, s1, a7
                  sltiu        a5, s0, -1024
                  xori         s5, s2, -1229
                  addi         ra, a7, 1599
                  auipc        a4, 818722
                  srl          t3, s3, a4
                  or           a5, a3, a2
                  xor          a4, s9, s0
                  andi         gp, s1, -565
                  sub          a4, s4, s8
                  add          s5, tp, sp
                  addi         s6, s7, -240
                  addi         s5, a4, 1108
                  slli         a1, s4, 25
                  addi         a1, s10, -38
                  or           s3, t4, s11
                  ori          s8, t1, -1087
                  xor          s0, t5, tp
                  srl          s0, s10, a4
                  srli         s9, s9, 5
                  add          tp, s0, s9
                  sub          s3, t4, t2
                  sub          s9, a4, a6
                  or           t2, s3, s0
                  addi         t6, a3, 1777
                  and          s10, ra, t2
                  sub          t0, s7, a0
                  lui          tp, 160445
                  srl          t0, t1, s5
                  slti         a2, t6, -854
                  addi         t1, a6, -552
                  lui          s0, 242985
                  xor          s5, s6, a2
                  andi         s9, a3, -1916
                  xori         t4, a6, 353
                  xori         s6, a6, 298
                  srli         s10, s1, 4
                  sltu         s4, tp, tp
                  ori          s4, zero, 1263
                  sltiu        s9, a3, -1495
                  addi         a4, s11, 424
                  sltiu        sp, sp, 1344
                  sltiu        s4, a4, -509
                  auipc        t1, 650298
                  sll          t3, a0, ra
                  sll          a5, t5, sp
                  or           s5, sp, s10
                  and          t2, a3, a0
                  srli         t4, zero, 5
                  srl          sp, t6, a7
                  srl          zero, s8, t3
                  auipc        t1, 10203
                  or           s11, a5, s7
                  srli         t3, tp, 16
                  srl          s4, s8, s3
                  sll          s11, s3, s7
                  nop
                  or           s2, s9, a4
                  xor          ra, s3, s3
                  nop
                  sra          t6, s3, a0
                  addi         s2, a3, -70
                  sub          zero, a2, t2
                  and          t3, t1, zero
                  srai         tp, t0, 1
                  and          gp, a4, s0
                  addi         s0, t5, 149
                  slt          s2, ra, t4
                  sra          a2, t3, s0
                  slti         tp, t2, 1158
                  nop
                  sub          s10, s7, a0
                  srli         s11, s8, 14
                  nop
                  ori          gp, ra, -603
                  sll          a3, t4, a3
                  srl          s3, s11, a4
                  slli         t1, s10, 23
                  ori          s3, t3, 1547
                  sub          t1, s3, t6
                  srai         s9, t6, 21
                  xori         a6, a7, -1427
                  lui          zero, 214577
                  slti         ra, t2, -758
                  slli         s2, s9, 3
                  andi         a4, gp, -318
                  and          s5, s7, t5
                  sra          t1, t4, tp
                  lui          t0, 216587
                  sltu         tp, a0, s5
                  sltiu        a2, s5, -506
                  sub          a5, a5, ra
                  lui          sp, 318177
                  nop
                  sltiu        a2, s0, 1953
                  xor          a0, ra, s11
                  or           s0, t4, tp
                  sltiu        a3, s9, 1587
                  or           t2, s5, a7
                  sra          s3, a2, s9
                  slli         s9, t6, 23
                  or           s9, t1, s4
                  lui          s5, 91216
                  xor          t5, tp, gp
                  slli         s8, a0, 0
                  nop
                  addi         zero, s4, -922
                  and          t2, s7, s4
                  sltu         t4, sp, a5
                  sra          s4, t5, a1
                  lui          t2, 798882
                  srli         t5, s2, 13
                  srl          s2, t4, s1
                  srl          t4, s7, s2
                  srai         s0, a7, 5
                  auipc        a1, 64094
                  and          sp, a7, a4
                  sll          sp, s7, s11
                  ori          s8, a2, -1836
                  xori         s9, t3, -1993
                  slt          s2, zero, a2
                  sltiu        a6, a3, -989
                  and          a5, t1, sp
                  andi         a6, a7, 941
                  lui          t2, 850107
                  add          gp, t1, a6
                  slli         ra, s5, 29
                  xor          a0, s3, s5
                  sltiu        a0, s11, 276
                  slli         a4, a7, 8
                  ori          zero, s9, 1586
                  auipc        t2, 716350
                  srai         t5, ra, 8
                  nop
                  and          t2, t2, s8
                  nop
                  slli         a4, s2, 10
                  and          s0, s1, s0
                  or           s10, a1, s1
                  slli         s9, s4, 2
                  sltiu        a2, t1, 740
                  srl          t3, t6, s3
                  andi         s9, a0, 845
                  slti         s10, sp, 904
                  auipc        sp, 290768
                  sub          a4, t1, a3
                  ori          a4, a5, 183
                  srl          a6, a1, a4
                  srai         s2, s8, 0
                  slli         s0, tp, 31
                  slt          a6, s2, s7
                  sltu         sp, t4, t3
                  auipc        t6, 530861
                  slt          s5, s8, gp
                  sub          s3, t6, s7
                  srl          t5, a5, ra
                  sra          t3, s3, t0
                  sll          a2, t6, a4
                  srai         s6, s10, 19
                  srai         s6, t2, 5
                  nop
                  srai         a1, s10, 20
                  and          a1, s4, t1
                  nop
                  slli         t3, a2, 31
                  addi         s10, a2, -1554
                  andi         zero, a1, 801
                  srl          a6, zero, a4
                  xori         t4, s1, -310
                  sub          a1, gp, a6
                  or           s0, t0, s8
                  auipc        s5, 980250
                  srai         s4, a1, 14
                  sltiu        zero, a6, -1720
                  slli         s3, a7, 2
                  or           t1, s1, a5
                  sltiu        a5, gp, 730
                  sll          ra, tp, s7
                  nop
                  sltu         t5, a7, ra
                  xor          t0, a2, s11
                  slt          s11, t0, gp
                  xor          s3, a6, s6
                  lui          t1, 137491
                  slli         s6, sp, 25
                  srai         t5, t5, 27
                  addi         s4, t5, 1468
                  slt          tp, s2, s11
                  srli         sp, a5, 26
                  slli         s0, s5, 8
                  or           s4, a0, t5
                  sra          s10, s8, s7
                  xor          a2, sp, t3
                  xori         sp, a3, 1575
                  xor          a4, t5, a0
                  slt          t3, tp, t2
                  slli         s5, t3, 19
                  sll          ra, s5, a0
                  auipc        a4, 188206
                  add          a0, a7, t4
                  sra          ra, s1, s9
                  srli         sp, a1, 24
                  nop
                  slt          a0, tp, s6
                  sra          s4, s2, t2
                  or           t2, a2, gp
                  addi         a6, t4, -1392
                  lui          a6, 387080
                  slti         s11, s4, -757
                  srl          s5, s4, t3
                  xor          a6, a7, t1
                  add          t1, t6, tp
                  sub          t0, a5, t4
                  auipc        a4, 985942
                  slti         s4, a3, 1346
                  add          t4, gp, t1
                  nop
                  and          s4, t4, a0
                  sra          a4, s4, zero
                  slti         a1, s1, 1070
                  sll          s4, t2, s2
                  ori          t1, a7, -1063
                  slt          s8, a1, a1
                  or           t5, a3, s2
                  add          t5, s5, t4
                  andi         a1, t1, 1552
                  auipc        t1, 140514
                  sltiu        t1, tp, 698
                  sltiu        ra, s8, 1166
                  sltu         t6, t4, s2
                  xor          s4, t1, s10
                  sll          s9, s2, a0
                  auipc        t4, 850318
                  sll          s2, s8, t3
                  slli         a0, a3, 3
                  xori         t4, t2, 1423
                  xori         tp, a2, 586
                  and          a5, t3, a3
                  slti         s10, s4, -1908
                  or           s4, ra, s5
                  lui          t6, 244232
                  auipc        a4, 501223
                  add          t1, t1, s8
                  sub          t5, s3, tp
                  andi         s5, ra, -1221
                  srai         a4, t5, 20
                  srli         a1, s11, 23
                  or           t6, s6, s0
                  or           a5, s1, tp
                  xori         a0, a5, -565
                  xori         s4, s7, 288
                  slti         a6, s6, 142
                  slli         s5, a6, 17
                  lui          t4, 555515
                  xori         s5, a1, 283
                  andi         t5, t4, -775
                  sll          a3, s3, s8
                  or           t2, t4, a4
                  addi         s5, t6, -1533
                  srl          tp, s2, sp
                  srl          sp, a1, s1
                  sra          a3, s7, s0
                  sra          sp, a3, s8
                  sll          sp, t6, s11
                  sltu         t4, a3, t1
                  sra          a4, s10, tp
                  sra          s9, s0, gp
                  srl          a5, s8, t3
                  lui          s11, 677883
                  auipc        a1, 378657
                  nop
                  srai         s6, s10, 27
                  and          s2, a6, s10
                  addi         t3, a5, 877
                  slt          ra, sp, t5
                  and          s8, gp, s11
                  sub          s10, gp, t4
                  sra          a4, t1, ra
                  addi         s2, t0, 659
                  slti         s8, s2, 1789
                  add          gp, tp, a6
                  sra          s2, a7, gp
                  auipc        zero, 331891
                  srl          ra, t0, gp
                  slli         a0, a5, 0
                  xori         a0, s5, -1706
                  or           a4, a7, sp
                  sll          tp, a3, t5
                  nop
                  addi         s11, gp, -960
                  sra          t5, t1, t6
                  srli         t6, sp, 8
                  ori          t5, t4, -1613
                  slti         s6, a1, -1564
                  sub          t6, gp, s8
                  and          s6, s6, t1
                  sltu         a6, t5, a1
                  or           s9, a4, s9
                  srai         t3, s2, 27
                  nop
                  slli         s3, t5, 0
                  and          a5, t6, s0
                  srl          s5, t5, a0
                  srl          t6, zero, t4
                  lui          a6, 117196
                  slti         s3, a0, 1593
                  sll          s8, a0, s1
                  sub          s6, s10, t5
                  sra          s11, ra, zero
                  nop
                  auipc        sp, 778821
                  srl          t3, gp, ra
                  srli         s2, t5, 19
                  xor          s0, s3, t0
                  srai         s3, gp, 5
                  addi         a1, a3, 8
                  nop
                  sltu         s6, t1, zero
                  lui          t2, 453177
                  add          sp, t5, a3
                  addi         t6, a2, 125
                  nop
                  addi         s5, t6, 693
                  add          a2, t6, a5
                  add          s0, t0, a1
                  slli         t3, a7, 14
                  auipc        a4, 734400
                  slli         gp, s9, 29
                  sltu         t5, s5, t3
                  or           t6, s3, s8
                  nop
                  sll          s9, t2, t4
                  xori         a5, t4, -192
                  lui          a5, 528106
                  sltiu        s4, a0, -643
                  lui          a3, 208265
                  srl          s5, a2, t2
                  sltu         s2, t1, t2
                  sltiu        a1, a2, -837
                  addi         tp, s5, 1514
                  srl          t2, t1, tp
                  sltu         t6, tp, a7
                  ori          a5, t5, -112
                  slti         s0, s2, 1718
                  slti         t1, s4, -1679
                  auipc        s0, 136827
                  sll          s10, s10, a3
                  sltiu        s9, t6, -1362
                  or           a5, tp, t2
                  ori          s6, s2, -1770
                  sll          a5, s4, a1
                  lui          t6, 826766
                  or           a4, zero, a5
                  slt          s9, a1, s11
                  lui          s11, 416434
                  add          s11, t6, s4
                  slt          a3, s9, s0
                  add          s11, s8, s3
                  and          a4, s10, a2
                  and          s8, a3, a6
                  slti         a3, s9, -961
                  sltu         a6, s11, a2
                  nop
                  srl          a2, a7, s5
                  ori          s2, gp, -318
                  nop
                  sll          t5, s0, a6
                  ori          t3, sp, -233
                  slt          s5, s8, ra
                  andi         t1, s8, 668
                  add          s5, s6, a2
                  ori          a0, t5, 1577
                  slli         a1, sp, 0
                  sub          s11, sp, t6
                  slli         s11, s6, 30
                  xori         t6, s2, -1716
                  addi         s0, a5, -1566
                  lui          t3, 696548
                  srl          s3, s10, s8
                  sra          t2, a2, t5
                  sltu         zero, a2, s11
                  and          a2, a0, s8
                  sltiu        s8, t2, -165
                  sub          s3, a3, gp
                  sltiu        a6, t4, -992
                  slli         s5, a6, 13
                  slli         t4, a6, 20
                  or           s0, t2, s9
                  sltiu        s4, s6, -243
                  sll          zero, sp, s2
                  sltu         a3, ra, a5
                  xori         t6, t5, -1813
                  add          a3, s4, s3
                  nop
                  srl          sp, s0, gp
                  nop
                  lui          s2, 875173
                  ori          s4, s1, -1935
                  sub          s0, ra, zero
                  xori         s2, s1, 70
                  slt          gp, s2, t3
                  slli         s0, s2, 6
                  sra          a3, a2, s5
                  xori         t2, s11, -262
                  xori         s9, a6, -973
                  or           t4, t4, a3
                  sra          t3, a7, a7
                  sub          a2, a4, a4
                  sltu         s2, zero, t6
                  srl          s10, s1, s6
                  auipc        a0, 137321
                  xori         a4, t2, -1988
                  slt          tp, s3, t5
                  or           a6, t5, s9
                  slli         s2, t0, 2
                  lui          a0, 162852
                  sltu         s9, s6, s1
                  sra          t0, s2, a1
                  sltiu        t4, s9, -876
                  addi         s0, s1, 1396
                  xor          a1, t4, s4
                  auipc        t6, 311185
                  xor          a0, sp, t1
                  addi         t4, a4, 1053
                  andi         a4, t3, -100
                  add          a1, zero, sp
                  and          zero, ra, sp
                  sltiu        a5, zero, 422
                  srai         t6, s7, 27
                  auipc        a4, 68728
                  sra          a2, t2, a5
                  srl          a2, s0, a7
                  sll          a2, a3, s8
                  add          a3, ra, t0
                  slti         s8, t2, 33
                  sll          sp, zero, s10
                  sll          t0, s10, s9
                  slli         s9, sp, 19
                  xor          s6, zero, s10
                  or           s11, s2, s6
                  addi         t0, s5, -565
                  ori          a6, t0, -1540
                  add          s8, t1, t3
                  sra          t6, s1, t5
                  xori         t4, t5, -1450
                  sra          zero, a4, t2
                  srai         t4, t1, 11
                  slt          t4, ra, sp
                  auipc        s3, 112244
                  sltu         a6, s5, ra
                  addi         a1, t4, 683
                  lui          sp, 225506
                  sll          sp, tp, t3
                  add          s4, tp, a2
                  or           t3, a1, a4
                  and          t2, t6, s9
                  slt          s2, t6, s9
                  srai         s0, s7, 12
                  sra          t5, s0, s2
                  ori          t5, s7, 1053
                  sltiu        t4, a0, -147
                  srai         s4, a6, 26
                  sltiu        ra, s3, -50
                  slti         s10, s3, 1580
                  slt          t3, a6, a6
                  andi         s2, t1, 522
                  ori          t0, t2, -372
                  sll          gp, gp, s11
                  slti         gp, a3, -384
                  xor          s6, s11, t0
                  slti         t0, a4, -1856
                  and          ra, s11, s1
                  srl          a6, s3, s3
                  slt          s11, a4, t0
                  xor          a1, s11, a3
                  auipc        zero, 136329
                  and          zero, t2, s0
                  sltu         s0, ra, a7
                  add          t0, a4, t1
                  slt          sp, s9, s10
                  addi         a1, a2, -1367
                  sltiu        a1, s6, -549
                  srl          t4, t5, a1
                  ori          t2, t4, -1839
                  or           a2, zero, s2
                  nop
                  srli         zero, s7, 13
                  xor          a3, a5, t5
                  add          s2, t1, gp
                  lui          s8, 502
                  srai         s3, s4, 24
                  sltiu        s4, s0, 1231
                  andi         a4, ra, -867
                  slli         t1, s6, 6
                  sltu         t5, s2, s1
                  slti         s0, a5, -492
                  add          s2, a5, a2
                  srli         s3, sp, 28
                  slt          t6, a2, s7
                  auipc        a3, 229504
                  or           s2, tp, t0
                  srl          s11, s7, ra
                  srai         a0, sp, 14
                  sll          t5, zero, s6
                  lui          a3, 875580
                  srl          s6, a5, t0
                  xor          zero, s6, t2
                  srli         t0, tp, 17
                  xori         a5, t4, -985
                  sll          t5, a0, s1
                  sltiu        tp, s11, 1831
                  sub          t3, t4, t6
                  andi         t5, a1, -1523
                  srai         t6, a2, 17
                  addi         gp, t5, -523
                  slli         sp, t2, 19
                  sra          s8, s8, t0
                  and          s2, t4, t6
                  sltu         t2, s4, a0
                  auipc        a0, 219234
                  ori          a5, a2, 1697
                  ori          gp, s3, 101
                  add          a5, zero, s1
                  srl          s10, s8, a5
                  sra          a5, a4, s9
                  sltu         t5, t1, t2
                  slt          s0, ra, a3
                  sltu         sp, a2, a6
                  sra          ra, a5, t1
                  srli         s10, t3, 22
                  slli         t4, s8, 21
                  auipc        s5, 103661
                  slti         t3, t2, -110
                  ori          s3, s8, 17
                  lui          s4, 103358
                  slt          s0, a5, sp
                  xori         s2, s7, -1601
                  xor          t0, a5, s9
                  srli         s5, s0, 0
                  sra          t5, s8, a4
                  lui          t3, 751357
                  xor          t2, s4, a7
                  ori          zero, s4, -216
                  slt          t5, a5, s1
                  sra          s5, t5, a6
                  srl          t6, sp, t1
                  sltu         s4, s4, s3
                  lui          tp, 266873
                  slli         a4, t3, 20
                  ori          s4, sp, 693
                  add          a4, s8, sp
                  and          s3, t0, a6
                  xori         a4, t2, -1489
                  sra          s8, a0, s10
                  and          zero, a7, s0
                  and          s2, s1, s10
                  sltu         a1, a2, a7
                  and          s0, tp, a7
                  sub          s5, t4, ra
                  lui          s4, 381826
                  addi         s6, s9, 1467
                  sltiu        t3, s10, -2043
                  sra          s5, t6, s2
                  auipc        a5, 244960
                  add          gp, a3, t1
                  lui          t1, 838833
                  lui          ra, 802902
                  sll          s3, a3, s6
                  srai         a6, s11, 3
                  lui          t1, 473879
                  addi         t4, a4, -443
                  srai         s2, a6, 26
                  auipc        t0, 484240
                  slt          s6, s11, t6
                  andi         t2, gp, 1376
                  srli         s2, a0, 23
                  ori          a5, a4, -1044
                  slt          s0, s11, a6
                  addi         zero, t5, 1453
                  slli         t6, s3, 29
                  auipc        a0, 761238
                  sra          tp, a7, ra
                  sltu         t5, s0, a5
                  slt          a0, gp, t6
                  and          t1, t1, s7
                  sll          zero, t3, a4
                  slt          s3, s9, a6
                  slli         tp, s11, 16
                  slli         a1, a2, 16
                  slli         t2, t1, 26
                  xor          s2, t3, s1
                  add          s0, s3, s4
                  nop
                  slli         a6, a7, 24
                  sll          t0, s0, t2
                  srli         t5, t3, 5
                  addi         gp, t6, -941
                  srl          t6, s1, sp
                  slti         a1, s4, 804
                  srl          a3, s2, sp
                  lui          t3, 605193
                  add          a1, zero, t3
                  srli         a4, zero, 19
                  or           gp, s10, ra
                  xor          a3, t2, s2
                  sltiu        t4, s9, 866
                  auipc        t0, 919835
                  sltiu        t4, s11, -626
                  addi         sp, ra, 1682
                  lui          zero, 660589
                  or           s10, a7, t5
                  sra          t1, t2, s0
                  srl          a4, a2, a7
                  andi         ra, a4, 408
                  and          s11, a2, a3
                  xori         s11, ra, 375
                  sltiu        sp, s7, 1242
                  nop
                  sra          a5, s9, s4
                  nop
                  sltu         s8, gp, t0
                  sra          s4, s10, a2
                  slti         s6, a7, -1642
                  slli         t1, ra, 18
                  lui          s11, 882888
                  addi         s9, sp, 1370
                  sltu         s10, s11, ra
                  srl          ra, ra, a1
                  auipc        s6, 223824
                  srai         s10, s2, 15
                  nop
                  lui          s4, 344404
                  auipc        s2, 389748
                  add          t5, t5, a7
                  srai         a3, a1, 12
                  lui          a5, 1047659
                  addi         t5, s5, 1469
                  add          a1, a1, t1
                  slli         a3, s6, 17
                  auipc        s5, 561974
                  add          a1, s6, a2
                  srl          s9, zero, s0
                  auipc        t4, 475458
                  and          s2, s8, s6
                  and          ra, a7, t6
                  slli         t1, sp, 21
                  addi         s3, s9, 1350
                  lui          a1, 902998
                  sub          a0, a5, s0
                  sra          t1, tp, t6
                  sll          zero, t3, s8
                  sll          s0, t5, t1
                  or           s9, s3, a4
                  sub          t5, tp, a6
                  sltu         s5, ra, t2
                  sltiu        s8, a7, -2004
                  sltu         s8, t5, tp
                  srli         sp, tp, 8
                  ori          s8, s3, 846
                  sltu         s6, s3, s0
                  slli         ra, s11, 14
                  xori         s4, a0, -1650
                  sltu         zero, t6, s11
                  slli         a4, t5, 26
                  slli         t0, tp, 12
                  addi         zero, s2, 752
                  or           ra, s1, a5
                  addi         a3, a0, -1964
                  lui          s10, 740331
                  srai         s9, t5, 16
                  srl          a0, s11, t0
                  sra          a4, s6, a7
                  srli         t2, a0, 18
                  slt          a0, s0, ra
                  sltiu        s11, t1, -1999
                  sub          tp, s1, s2
                  lui          s11, 267810
                  add          s6, t5, s11
                  and          a1, s1, zero
                  andi         t3, t3, -126
                  slli         s9, s9, 14
                  srai         tp, a0, 2
                  sra          tp, s1, t3
                  slti         t6, a6, 1411
                  xor          a5, t3, a4
                  slli         a2, a2, 23
                  sub          a6, s0, tp
                  add          a1, s11, s11
                  and          ra, zero, s2
                  ori          s2, s11, -1203
                  addi         s4, s1, -1669
                  sub          t5, a5, zero
                  add          t3, s3, t6
                  addi         a4, s9, -910
                  xor          t4, tp, a1
                  slt          t2, s7, s10
                  sll          t2, s5, gp
                  xori         a1, a0, 88
                  auipc        a5, 183631
                  slt          s4, gp, s10
                  xori         a1, s4, -1272
                  andi         s8, a7, 229
                  andi         tp, s10, -1204
                  xor          a4, t0, a2
                  sltiu        a6, s10, -1954
                  lui          s6, 393135
                  ori          gp, s11, -692
                  xor          a0, t3, s2
                  lui          a5, 228523
                  slli         t2, s2, 21
                  sub          s3, t3, a1
                  srli         t0, a4, 1
                  srai         s10, ra, 19
                  slt          s9, a2, a3
                  and          a2, a6, t6
                  sub          t4, a6, t3
                  or           t5, s8, t6
                  nop
                  addi         t1, s10, -1229
                  sltu         a6, s1, s2
                  ori          t1, s1, 1946
                  xor          gp, zero, s6
                  srai         t3, ra, 26
                  sll          s4, t3, a1
                  sll          s2, sp, s6
                  sra          zero, t6, s0
                  auipc        s2, 222619
                  sltiu        t2, t5, -1903
                  ori          s3, s8, 174
                  srl          a5, a5, t2
                  srli         s3, a1, 28
                  slli         s11, t6, 15
                  srli         t3, a0, 6
                  slt          sp, s7, s8
                  sltiu        sp, s0, -1075
                  ori          s3, a7, 1912
                  sltiu        t5, s5, 1065
                  sltu         t5, s8, tp
                  add          sp, s5, gp
                  ori          a1, a0, -1945
                  sra          s4, s5, s11
                  srli         s6, zero, 20
                  sra          a4, s6, a6
                  sub          s11, ra, s2
                  slli         ra, a2, 21
                  xori         s10, zero, -165
                  sra          s2, t4, s3
                  ori          s2, a4, -1029
                  slt          s11, zero, a2
                  auipc        t0, 46709
                  srl          a2, s10, a4
                  ori          s8, a0, 778
                  add          zero, s0, ra
                  sra          a1, zero, a0
                  slti         s11, tp, 1742
                  andi         t1, a0, 2005
                  ori          t6, a7, -777
                  slli         a3, t4, 31
                  sltu         s4, a4, a7
                  srai         tp, gp, 31
                  lui          t0, 117514
                  slti         a3, t6, -780
                  lui          t6, 866370
                  slt          t4, s3, s2
                  slli         a0, s0, 14
                  sltiu        t0, t0, -1934
                  ori          sp, a2, -1611
                  andi         a5, a0, 1764
                  slti         s3, s2, 1508
                  sub          s10, t1, s2
                  slti         t4, t5, -1807
                  add          gp, t1, s5
                  auipc        gp, 540491
                  sub          s8, s3, t1
                  sra          a0, gp, s2
                  nop
                  xor          t6, tp, s0
                  or           t1, gp, s11
                  srai         a4, t1, 22
                  ori          a3, s4, -794
                  add          a1, t5, s6
                  nop
                  nop
                  slti         s10, tp, 1036
                  ori          sp, s8, -795
                  ori          t6, s11, 1947
                  lui          s11, 673741
                  slt          a2, s8, s1
                  sra          a5, s3, s11
                  ori          a6, t2, -1050
                  ori          s10, a1, -988
                  nop
                  or           s8, a7, a4
                  slti         zero, gp, 490
                  andi         s8, s0, -1756
                  or           a6, s4, a2
                  xor          t6, s5, a6
                  srli         t4, ra, 29
                  sub          t4, a5, s1
                  slti         s6, zero, -533
                  sll          s10, a5, a1
                  sub          s5, gp, a5
                  or           s9, s5, a2
                  ori          tp, s8, 26
                  srl          a3, a3, a1
                  srai         t4, t4, 9
                  slt          s9, sp, a5
                  xori         s3, t4, -380
                  lui          t5, 403015
                  xor          a6, s10, a5
                  srl          s11, s7, sp
                  sll          a2, s10, s9
                  sll          t6, s0, t6
                  add          t0, s0, gp
                  xori         a5, a7, -1854
                  xori         a1, a7, 1477
                  add          t3, t5, s0
                  srli         zero, t0, 21
                  srai         zero, s1, 7
                  slt          s3, s5, s6
                  srai         s2, t3, 30
                  srli         t5, a2, 24
                  add          a1, s10, t6
                  li           a3, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           t3, 0xffffffff
                  li           t5, 0x0
                  li           s0, 0xffffffff
                  li           tp, 0xffffffff
                  li           t0, 0xffffffff
                  li           s11, 0xffffffff
                  li           sp, 0x464aeb42
                  li           s4, 0xd79c40c7
                  li           t6, 0x80000000
                  lui          tp, 423880
                  addi         a3, t0, -2032
                  addi         a3, t0, 1126
                  addi         t6, tp, 727
                  lui          t6, 947233
                  add          t0, s11, s11
                  sub          sp, s11, s0
                  auipc        s11, 661155
                  lui          tp, 246483
                  lui          tp, 662489
                  nop
                  nop
                  lui          t0, 727621
                  sub          t3, sp, t0
                  add          t3, s0, tp
                  lui          tp, 905447 #end riscv_int_numeric_corner_stream_15
                  add          a3, zero, a5
                  or           s10, a0, t6
                  srl          s9, s3, t3
                  and          s10, s10, t5
                  xori         a4, zero, 1270
                  add          a2, a4, zero
                  srl          s6, t2, s4
                  xori         s6, s2, 1746
                  srai         t4, t2, 26
                  andi         t6, t5, -1317
                  sub          s0, a7, sp
                  addi         t0, s1, 1577
                  and          a4, t6, t3
                  and          t3, t3, a6
                  sub          t4, a2, t6
                  or           sp, s2, t3
                  nop
                  xor          s6, s6, s11
                  srl          s9, t6, a5
                  ori          t2, s5, 1491
                  nop
                  sub          s4, s3, t2
                  srai         s6, zero, 12
                  add          a5, s11, gp
                  slt          a6, s6, a6
                  sub          a1, t4, s5
                  addi         zero, t0, 53
                  lui          t4, 178453
                  slti         s3, s4, -465
                  sra          zero, a2, ra
                  slli         t2, s0, 15
                  addi         s9, a1, 800
                  xor          a0, t1, a1
                  slt          s9, a5, t6
                  xori         zero, t5, -1091
                  slti         sp, s4, 1755
                  or           ra, s6, a6
                  sltiu        a4, a1, 870
                  sltu         zero, a2, t2
                  sra          s11, ra, a4
                  andi         tp, t1, 1326
                  ori          a2, a0, 1073
                  addi         s6, s5, 818
                  addi         a1, a3, 204
                  slti         a2, s10, -1501
                  or           gp, ra, s11
                  sra          tp, a3, a3
                  andi         a2, a1, -527
                  srai         a5, sp, 4
                  slt          s11, s9, t4
                  add          s4, t2, s9
                  sll          a4, s2, a2
                  slli         s10, t6, 2
                  add          s11, s7, a3
                  add          t6, s3, s11
                  sltiu        s11, s3, 393
                  sll          gp, s10, ra
                  slt          sp, s10, t4
                  add          s3, a7, s9
                  srai         ra, s3, 23
                  addi         s3, zero, 782
                  sltu         s5, t0, s11
                  addi         s4, sp, -788
                  slt          a2, s7, s5
                  slti         gp, t1, 1080
                  slti         s8, t3, -1503
                  srli         s5, t3, 7
                  sub          sp, a6, a5
                  slti         t6, a4, -1294
                  slti         s4, sp, -1071
                  or           t4, a6, s0
                  sltiu        a1, t1, 1788
                  sub          t6, s10, zero
                  nop
                  srli         sp, sp, 18
                  nop
                  and          ra, t3, tp
                  sll          t6, t4, a4
                  slti         s5, s6, -1342
                  sll          a6, a6, a1
                  sub          t6, t0, sp
                  slli         a2, s5, 6
                  sll          tp, a5, s1
                  sra          t2, t2, s8
                  auipc        a1, 845192
                  andi         s5, sp, -115
                  andi         t1, zero, -436
                  sltiu        tp, a4, -1175
                  slt          t6, s9, t5
                  sltiu        a2, t5, 1673
                  andi         s0, a0, 1259
                  slti         t5, t1, -1115
                  srl          a4, s9, a4
                  sltiu        s9, ra, -1871
                  slt          s2, a5, s10
                  sra          a5, a4, t3
                  addi         s10, a5, -751
                  srai         t4, s1, 11
                  srl          a1, zero, t3
                  sltiu        sp, a0, 449
                  add          t6, gp, a2
                  srai         zero, a4, 23
                  srli         s9, a2, 4
                  lui          s4, 39765
                  sra          a3, a4, s2
                  sra          sp, t5, a7
                  or           s10, t5, s6
                  xori         s9, a4, 1897
                  xor          t2, t1, a2
                  nop
                  sra          t1, a7, a0
                  ori          t3, zero, -123
                  auipc        a3, 919389
                  sltu         tp, s5, tp
                  xori         s0, s1, 1081
                  sub          a3, t6, a5
                  nop
                  add          a0, t4, a0
                  ori          s11, a6, 1283
                  xor          gp, s10, s7
                  srai         s2, gp, 23
                  slti         t6, zero, 809
                  sra          a0, a0, a6
                  sltiu        s5, t2, 1475
                  ori          s2, a7, -100
                  slti         a6, gp, -949
                  ori          a5, s9, -1327
                  slt          s9, a4, s3
                  xor          a3, t4, t0
                  auipc        a4, 281265
                  nop
                  srli         t4, s3, 3
                  auipc        t2, 726951
                  auipc        t5, 448680
                  slli         s8, t1, 7
                  nop
                  sra          s4, a1, s10
                  xori         a5, s9, 1708
                  sltiu        t1, s7, -1731
                  lui          a3, 862909
                  xori         zero, s1, 785
                  add          s5, a5, s7
                  addi         s2, t4, -684
                  slt          t6, s11, s3
                  and          a4, zero, s6
                  add          tp, a1, a0
                  sll          s6, s8, s7
                  andi         gp, sp, -1729
                  srli         sp, s7, 25
                  srl          s9, t0, s1
                  sll          s2, a0, sp
                  srl          a5, ra, a6
                  slli         a5, sp, 27
                  and          a1, ra, s6
                  srl          gp, s3, gp
                  or           a0, a0, a6
                  andi         sp, s3, -208
                  srli         s3, a4, 23
                  srl          t0, t0, a4
                  add          a2, a2, s3
                  sll          s10, t3, s8
                  srl          t6, t0, s4
                  sltiu        a5, s1, -1980
                  and          s6, a4, a0
                  sll          t3, a6, a0
                  nop
                  lui          a6, 40607
                  or           t4, gp, gp
                  srli         t4, a5, 11
                  andi         ra, ra, 1250
                  sub          s8, tp, t2
                  xori         zero, a4, 1699
                  sll          s3, a4, s3
                  lui          a4, 302954
                  slli         t5, s3, 30
                  srl          t1, zero, t1
                  srl          zero, s0, sp
                  andi         t1, s8, 43
                  nop
                  sltu         a3, tp, s11
                  srl          a5, t1, t0
                  add          t6, s5, s0
                  lui          ra, 392089
                  sub          a1, t0, s4
                  add          a5, tp, t4
                  auipc        s5, 696560
                  slli         s0, a2, 29
                  add          s3, s4, t4
                  slti         s8, s0, 1348
                  xor          s6, a6, tp
                  sltiu        s2, a3, 645
                  or           a5, t4, s3
                  xor          zero, s1, s9
                  lui          t1, 533214
                  auipc        zero, 678653
                  slt          gp, t5, s11
                  andi         zero, t4, 499
                  andi         t0, a4, -742
                  nop
                  sltu         a4, s10, a3
                  xor          a0, s4, s1
                  ori          t0, sp, 1381
                  slli         s9, s11, 15
                  sltiu        sp, s11, -894
                  or           gp, a0, s1
                  slli         a1, s0, 11
                  or           a4, t2, a4
                  sub          sp, a7, t3
                  sra          a2, t5, s3
                  srl          s0, s7, a4
                  slt          a2, a0, s9
                  xori         s4, s3, -1143
                  andi         t6, s7, 399
                  lui          a5, 609276
                  xori         ra, s9, -47
                  xor          tp, a6, s4
                  addi         s5, a1, -1500
                  sll          sp, s0, s9
                  sra          s5, t1, a0
                  andi         s9, a4, -1362
                  sltu         zero, zero, t5
                  slti         a0, s0, 61
                  sltu         a1, tp, gp
                  slt          a1, s9, a6
                  slti         gp, a0, 4
                  addi         s6, a4, 431
                  lui          t1, 1029007
                  addi         a1, t1, 858
                  slti         gp, a0, 1283
                  srl          s0, t6, ra
                  ori          sp, s6, -1675
                  xor          t6, a4, t1
                  addi         t6, a4, 83
                  nop
                  sltiu        s5, ra, 951
                  sltiu        s9, zero, 1027
                  addi         gp, a0, -1855
                  and          a6, s2, s6
                  sra          s10, a5, t1
                  andi         s8, s0, 1882
                  lui          tp, 257878
                  sub          s4, a6, t0
                  add          s6, gp, s4
                  xori         a5, t0, 219
                  and          s3, tp, s7
                  sll          s6, gp, s9
                  addi         s2, s1, -1653
                  xor          a6, a3, s5
                  nop
                  addi         a3, sp, 806
                  srli         a1, a2, 16
                  xor          a0, a4, s4
                  xor          t1, s2, a0
                  slt          s0, a6, t6
                  and          a0, s9, gp
                  xori         s2, a1, 976
                  auipc        gp, 272362
                  sltu         s11, gp, zero
                  andi         t1, t6, -391
                  lui          s10, 1034814
                  nop
                  slt          a3, s7, s3
                  or           t0, a2, zero
                  andi         zero, t3, -1975
                  or           a0, t6, s9
                  sltu         s5, a5, s11
                  andi         a6, s5, -1585
                  or           a3, ra, a4
                  sltiu        s4, s5, -415
                  addi         s5, t3, 1309
                  sub          s8, t4, s10
                  lui          t1, 607337
                  ori          t5, a0, 709
                  slt          a6, a1, s2
                  and          gp, gp, a3
                  slli         t3, s3, 24
                  auipc        a0, 876783
                  add          a2, s8, zero
                  sub          a0, a2, a6
                  auipc        sp, 978191
                  or           a0, t4, a2
                  sra          a6, tp, s3
                  slti         t4, s3, -197
                  auipc        t6, 917782
                  add          sp, s7, ra
                  auipc        t6, 886763
                  andi         a1, sp, -1340
                  sra          sp, s11, a6
                  srai         a4, a2, 25
                  sra          a3, a0, s10
                  or           s4, s11, a2
                  srli         s2, a7, 15
                  sll          zero, s3, t6
                  xori         t2, zero, -285
                  li           a5, 0x95c363f4 #start riscv_int_numeric_corner_stream_3
                  li           a6, 0x80000000
                  li           t6, 0x63575da3
                  li           s2, 0xffffffff
                  li           t2, 0x80000000
                  li           t0, 0xd1d6acb0
                  li           s5, 0x0
                  li           tp, 0x80000000
                  li           t1, 0x0
                  li           gp, 0x80000000
                  lui          a5, 959848
                  auipc        t0, 538900
                  addi         a5, gp, 350
                  add          s2, t1, gp
                  add          a5, t0, gp
                  lui          t0, 934552
                  lui          tp, 351035
                  auipc        s2, 153657
                  nop
                  addi         s2, a6, 608
                  sub          t2, t2, t1
                  lui          gp, 803592
                  add          s5, t2, s2
                  add          t1, tp, gp
                  sub          a6, s5, t1
                  nop
                  lui          a5, 331981
                  addi         a5, t6, 657
                  addi         t6, t1, 1494
                  auipc        t2, 704518
                  addi         gp, t0, 326
                  addi         tp, t1, 2045
                  auipc        t1, 357705
                  lui          t6, 661781
                  add          t2, gp, a5
                  auipc        t1, 415833
                  sub          s2, t1, t0 #end riscv_int_numeric_corner_stream_3
                  srai         a2, a4, 24
                  andi         sp, s3, -169
                  add          a2, gp, a3
                  sub          zero, a5, s1
                  slti         t1, s0, -654
                  andi         t1, a0, 2000
                  sltiu        s11, tp, -1753
                  or           tp, t2, s1
                  sub          s11, t1, s9
                  srl          t0, s0, s1
                  or           s10, s5, zero
                  sra          a6, s8, t6
                  slti         a3, s10, 1444
                  and          tp, s11, sp
                  srai         s5, s10, 11
                  ori          a5, a1, 838
                  sra          zero, t3, a3
                  addi         s3, s9, -1476
                  andi         tp, t5, 449
                  sll          tp, a4, s10
                  srli         t5, s9, 21
                  andi         s6, sp, 955
                  sltu         t0, ra, t5
                  andi         s3, s2, -496
                  srl          tp, t0, s0
                  or           a0, s0, gp
                  xori         s11, t4, 212
                  lui          s8, 1042658
                  sll          s11, t1, zero
                  xor          t3, t4, s4
                  nop
                  sltu         a4, a4, sp
                  xor          s3, t4, tp
                  sltu         s8, s0, s7
                  sll          ra, gp, tp
                  xori         s0, s6, 644
                  srl          s9, a4, a0
                  nop
                  srli         t2, a0, 26
                  slti         t6, t4, -298
                  addi         a2, s11, -1686
                  slli         s0, a4, 28
                  slti         t2, a5, -1409
                  auipc        t5, 278619
                  add          s4, ra, t4
                  andi         a1, a7, -529
                  srai         t6, s2, 16
                  srli         s9, a3, 29
                  sra          s3, a7, sp
                  andi         a2, t0, -279
                  lui          gp, 287399
                  add          a1, s4, s0
                  srl          t2, a5, a1
                  srli         s8, ra, 28
                  srai         a2, s9, 17
                  srai         t4, sp, 0
                  srli         s3, s10, 16
                  slti         a1, t1, 689
                  xori         t5, a7, 775
                  and          s2, s11, s2
                  slt          t1, t1, tp
                  sll          a0, sp, t5
                  sll          s5, sp, t0
                  andi         a4, a4, -630
                  sub          s6, t2, s2
                  slti         s0, s9, 1401
                  xori         s6, t6, -46
                  ori          t6, a3, -771
                  srli         sp, t5, 3
                  ori          gp, gp, 176
                  slti         t6, a2, -2020
                  srai         s9, t0, 24
                  srli         t2, a2, 31
                  sltu         s5, a7, a6
                  addi         s10, s2, 93
                  sub          zero, s1, a6
                  lui          a3, 469051
                  ori          a3, s3, -1710
                  sltu         t6, t0, ra
                  sra          s0, s1, gp
                  slt          a0, t0, a4
                  srai         a6, zero, 20
                  sltiu        a5, t5, -382
                  srli         s8, s4, 13
                  sll          a3, s11, sp
                  sltu         a4, a6, tp
                  slt          s9, t5, s2
                  sra          tp, t2, s4
                  slt          s2, t4, a2
                  add          t4, s7, tp
                  auipc        tp, 271272
                  sll          t4, a7, tp
                  or           t0, s5, s2
                  and          a1, a4, s2
                  addi         s0, a0, -202
                  lui          s0, 1034080
                  srli         a3, t1, 18
                  slt          t4, s5, t4
                  or           s0, t4, a7
                  nop
                  lui          a6, 968177
                  sll          a3, s9, a2
                  slti         tp, a3, 268
                  sra          s6, a1, s5
                  nop
                  addi         s4, t6, -1178
                  slt          gp, t3, s3
                  auipc        s8, 977946
                  lui          a2, 55976
                  and          t1, a1, zero
                  xor          a6, t5, a1
                  sub          gp, s7, s10
                  srl          t6, s10, a2
                  xori         a4, t3, -2021
                  xori         a6, a2, 1500
                  slti         a5, sp, -1439
                  sra          s2, s9, a4
                  ori          t0, t0, 1161
                  srl          gp, a7, s4
                  andi         sp, tp, 1253
                  slti         t1, s6, -1333
                  add          zero, t6, a6
                  andi         a1, gp, -96
                  lui          t3, 821378
                  auipc        a0, 848352
                  srl          a3, s11, t4
                  slti         s9, s6, 1424
                  slti         t5, tp, -71
                  lui          s2, 815371
                  slli         s0, t5, 1
                  slt          a5, a6, ra
                  srai         t4, s0, 18
                  sub          ra, s8, s7
                  add          s9, s0, sp
                  slli         a4, t4, 1
                  xori         a2, zero, -1669
                  xori         a0, t4, -2013
                  nop
                  sra          s9, a5, a1
                  and          s5, a7, t2
                  sltu         ra, s1, s4
                  slti         t6, s11, -319
                  xor          t6, a2, t2
                  nop
                  auipc        ra, 696779
                  sltu         s4, s6, s6
                  andi         s3, s7, 1998
                  srli         ra, s2, 26
                  or           a4, sp, sp
                  sra          s2, t5, sp
                  srl          t6, t0, s4
                  auipc        t2, 591121
                  ori          a6, a3, -1910
                  slti         ra, t1, 1288
                  sub          a2, t1, s1
                  or           tp, s7, a3
                  sra          a5, a2, a2
                  sltiu        ra, s6, -1791
                  add          t5, gp, t5
                  sra          s10, s9, tp
                  addi         a2, t1, -1604
                  xori         t1, s5, -1014
                  or           t3, s8, a6
                  srai         tp, t0, 1
                  andi         a6, t0, 845
                  sub          t5, s9, tp
                  addi         s9, gp, -1041
                  sub          a4, t3, s9
                  sub          s6, s5, t2
                  auipc        a5, 533212
                  slli         s3, t3, 5
                  srli         t5, t1, 7
                  nop
                  sltiu        t5, a4, -1644
                  sub          a0, s2, s4
                  slt          a0, a6, s7
                  srli         tp, t5, 23
                  andi         a5, t2, 1936
                  srai         s8, a3, 27
                  auipc        sp, 429969
                  lui          a3, 1016425
                  srai         s6, tp, 14
                  xori         t0, s4, -115
                  sll          t0, gp, s2
                  ori          s0, tp, -1006
                  andi         s0, a6, 1723
                  xor          a1, s11, t3
                  srli         s0, sp, 26
                  slli         ra, s0, 28
                  srai         t4, a2, 27
                  auipc        t3, 377579
                  xor          sp, s4, ra
                  sltiu        t1, s4, 1621
                  or           s8, ra, a4
                  srai         s5, a7, 15
                  xor          s5, s8, tp
                  lui          t3, 189480
                  slt          a5, a7, s9
                  sll          a4, ra, sp
                  sltiu        gp, s2, 306
                  sub          t1, s6, zero
                  addi         s3, s4, -1842
                  sltu         a6, a1, t1
                  sltu         s5, t5, t0
                  ori          t1, t3, -1252
                  li           a5, 0xbb894cd9 #start riscv_int_numeric_corner_stream_17
                  li           ra, 0x80000000
                  li           a6, 0x0
                  li           t1, 0xffffffff
                  li           a1, 0x0
                  li           s0, 0x0
                  li           s2, 0x0
                  li           s6, 0x0
                  li           tp, 0xffffffff
                  li           t2, 0x0
                  auipc        s0, 154905
                  addi         a5, s2, -565
                  lui          tp, 89317
                  auipc        a5, 622662
                  add          tp, a6, t1
                  sub          t1, t1, t2
                  sub          a6, t1, ra
                  nop
                  nop
                  addi         s2, s6, -69
                  nop
                  nop
                  sub          ra, s6, ra
                  sub          ra, a5, t2
                  nop
                  nop
                  auipc        ra, 419137
                  addi         t2, tp, -57
                  auipc        a6, 842509
                  add          s6, s6, a1
                  auipc        a1, 235347
                  nop
                  auipc        s0, 736314
                  add          s2, tp, s6
                  sub          a1, a6, t1 #end riscv_int_numeric_corner_stream_17
                  slt          s0, t6, tp
                  and          t3, t6, s7
                  sra          a0, s7, s3
                  addi         s10, t6, 1151
                  add          s10, s5, s7
                  sub          s5, a4, s0
                  sub          a4, s6, tp
                  slt          t3, a5, t3
                  srli         s2, s10, 2
                  slt          s3, s1, s0
                  srli         s9, t6, 9
                  slti         s4, s4, -965
                  srli         s8, tp, 13
                  sub          sp, t3, a4
                  slti         t2, t4, 1046
                  sub          sp, a6, a4
                  sll          t6, a6, s1
                  addi         a1, a7, -62
                  add          a3, ra, s1
                  srl          t0, s9, s2
                  and          tp, t4, t0
                  and          a1, s7, gp
                  srli         s3, sp, 25
                  lui          ra, 693661
                  and          a5, a2, s9
                  slt          s2, tp, s4
                  sltu         s8, s3, s2
                  srl          s2, s6, s3
                  srli         t3, s10, 28
                  srl          gp, a7, s7
                  slli         t5, t6, 3
                  xor          t5, s11, t5
                  andi         s9, s5, -1003
                  slli         a5, sp, 28
                  sra          a4, t0, s10
                  and          s4, a5, sp
                  srl          t4, s1, s6
                  slt          t0, a2, tp
                  slt          t2, s2, t6
                  sub          a4, s8, t2
                  srai         s2, t1, 25
                  xori         a4, s7, -403
                  srli         s3, a1, 11
                  lui          t2, 514338
                  slt          a4, a6, t2
                  sll          t4, s11, s2
                  ori          t2, zero, 477
                  sltiu        s5, s6, -682
                  slli         a6, s0, 14
                  srli         t6, t2, 12
                  sra          gp, s10, t1
                  srai         zero, t5, 24
                  slt          tp, s5, tp
                  addi         t5, zero, 197
                  and          zero, s9, a0
                  srl          t1, s6, ra
                  slt          t2, s6, a7
                  slli         s4, tp, 21
                  nop
                  add          a1, s0, s7
                  and          s9, t3, a5
                  xori         a0, t1, -1366
                  xor          s11, s10, s10
                  slt          s0, a3, s6
                  srai         s10, s3, 30
                  andi         ra, a0, 1074
                  add          a5, t2, a0
                  add          s4, t0, s3
                  auipc        ra, 757776
                  sll          s0, s10, t3
                  slt          t1, a7, t2
                  sltu         s10, s5, sp
                  add          gp, s0, a3
                  or           t6, zero, s7
                  auipc        a5, 868410
                  srli         t6, a0, 6
                  sub          t6, tp, a3
                  or           a5, a6, s7
                  srli         a2, s1, 25
                  ori          a5, s2, 1244
                  srl          s3, t6, zero
                  sltu         a4, sp, s9
                  xor          t4, a1, ra
                  nop
                  sra          s0, s3, a5
                  xor          t4, t1, a1
                  sub          s6, t1, a0
                  add          s10, t2, a4
                  andi         s9, sp, -1937
                  slli         t0, t6, 19
                  sltu         a1, s7, gp
                  slt          s2, zero, s8
                  srai         s6, s2, 27
                  xor          s8, a0, t4
                  andi         t3, s2, -534
                  srl          t0, s0, a5
                  sltiu        s5, a2, 821
                  srli         t3, sp, 16
                  slli         s6, t3, 21
                  slti         s6, s2, -928
                  sub          t5, s8, a0
                  addi         s3, a0, -1541
                  xor          a3, t2, zero
                  sra          t5, a4, a4
                  ori          gp, zero, 433
                  srl          gp, sp, s5
                  or           s10, tp, a2
                  and          ra, t5, s9
                  srai         s5, s2, 16
                  slti         t6, sp, -1290
                  slti         gp, ra, 1498
                  addi         t1, a2, -303
                  slt          a3, a5, s7
                  sub          a6, t2, s3
                  and          s3, s11, s9
                  ori          s0, s1, -1774
                  sub          a5, t3, a7
                  addi         s9, t5, 785
                  ori          tp, a4, 1961
                  sltu         t2, t6, s6
                  addi         t0, ra, 877
                  ori          s8, s2, 194
                  slti         s2, s5, -255
                  srl          a1, s2, t6
                  and          ra, t0, ra
                  and          a3, s2, a2
                  add          s5, zero, a4
                  add          a0, t5, tp
                  sltiu        a1, tp, 1176
                  and          t1, s4, zero
                  slt          a2, t5, s6
                  slli         t2, s1, 14
                  lui          t0, 461637
                  sltu         t3, t3, sp
                  lui          t4, 930739
                  ori          a0, a3, -1186
                  auipc        t5, 616607
                  slti         a5, s8, -1037
                  nop
                  addi         s4, s9, -956
                  xori         a0, t1, -376
                  sll          t1, s4, t4
                  srl          t3, s0, a6
                  slt          gp, s3, t6
                  andi         s2, s8, -120
                  nop
                  srl          a1, s0, tp
                  srl          s0, t4, s1
                  addi         t3, sp, 669
                  or           a4, a1, s11
                  sub          s6, s3, a5
                  sll          s11, s11, a2
                  and          s6, t6, a5
                  lui          s5, 32272
                  xori         a5, s1, 41
                  srli         s5, a0, 27
                  lui          s11, 1020398
                  or           a3, s7, t2
                  srl          zero, s7, s11
                  sra          zero, s11, s10
                  sll          s3, s9, a4
                  sltu         t1, a7, a3
                  lui          t1, 120019
                  add          t2, s5, t5
                  ori          t5, t0, -1293
                  srl          s2, a4, s10
                  sltiu        a0, t3, -725
                  sltiu        zero, s3, -1723
                  nop
                  addi         gp, a6, 563
                  or           s6, s9, s0
                  ori          s5, s2, -288
                  srl          a0, a4, a7
                  sltiu        t5, s6, -844
                  slt          zero, s7, a4
                  xor          s8, s6, s6
                  addi         t3, s6, -328
                  sltiu        a1, s1, 858
                  nop
                  srli         a3, t1, 9
                  lui          s6, 271371
                  ori          t0, t6, -1448
                  and          a0, t4, s8
                  sll          a3, s6, t0
                  srli         zero, s8, 0
                  xori         t0, a2, -1043
                  slti         zero, a4, -1268
                  sltiu        tp, s9, -1337
                  srl          s9, tp, zero
                  slt          t1, t6, a1
                  slli         t0, s10, 6
                  sll          s9, t4, a3
                  sub          s5, s3, a4
                  and          t4, a7, t1
                  srl          s0, a4, a1
                  slli         s0, a2, 26
                  srl          s6, ra, sp
                  nop
                  sra          t2, a1, tp
                  sltu         s4, s1, t6
                  add          a2, s9, a6
                  slli         a0, gp, 25
                  or           ra, a5, s11
                  slli         zero, t6, 19
                  add          a3, gp, t4
                  sltiu        sp, s2, -592
                  xori         s10, a7, -1174
                  andi         s2, s0, 1010
                  or           t2, sp, a4
                  lui          s8, 717306
                  sltu         gp, tp, tp
                  add          gp, t2, gp
                  nop
                  andi         s11, s1, -1333
                  ori          a3, t1, -1923
                  srli         tp, a2, 26
                  addi         s0, t0, -615
                  xori         ra, a0, 1032
                  lui          a1, 290730
                  lui          zero, 433075
                  andi         a6, s0, -824
                  srai         s10, s3, 2
                  addi         gp, s6, -1070
                  srl          s5, a3, zero
                  xori         t3, a4, 862
                  xor          a2, a4, sp
                  sltu         sp, a1, t0
                  and          t5, a0, s0
                  slti         a1, s3, 1873
                  andi         a1, s9, -1268
                  sll          t2, a2, a3
                  xori         s10, s3, 148
                  lui          zero, 396771
                  sub          a6, t3, t1
                  or           t0, s5, t3
                  sra          s2, t0, sp
                  add          a4, a3, s2
                  sll          s2, t5, tp
                  sub          s11, s10, s3
                  slt          s2, s0, s7
                  addi         t4, a0, 604
                  srl          t3, t3, s9
                  ori          a1, a0, -54
                  slli         s2, a1, 12
                  xori         gp, s6, -1895
                  xori         t1, t3, -459
                  sra          s9, s1, s10
                  slti         s8, t5, -1371
                  slti         t3, t0, 1832
                  or           a2, a1, t1
                  ori          t4, t5, -13
                  sltu         a2, a1, s6
                  nop
                  slti         s6, a6, 1695
                  sll          gp, s10, s5
                  sltu         s4, a0, a0
                  addi         s6, a3, -1336
                  sra          a2, s6, s0
                  ori          t4, t6, -1169
                  addi         a1, gp, -717
                  add          gp, a2, t3
                  srli         a5, s10, 21
                  sub          a3, s2, tp
                  sll          t0, t2, s7
                  nop
                  slt          ra, t6, s8
                  xori         t5, s4, -245
                  slli         a6, s1, 26
                  srai         s5, a0, 9
                  sltiu        s2, s2, 1366
                  or           t3, s3, a5
                  or           s8, zero, a0
                  sub          a3, t6, s3
                  srli         a4, t6, 11
                  srli         gp, a5, 17
                  slt          t1, a0, s11
                  or           s3, s6, s7
                  sra          a1, s4, gp
                  srl          a5, s1, s4
                  srl          s5, s2, a7
                  sub          a3, t3, t4
                  slt          t1, s8, s6
                  or           s9, a3, a4
                  ori          s5, s1, 224
                  auipc        t6, 303888
                  sltu         a1, a6, s11
                  srli         a0, t2, 30
                  xori         s0, ra, 728
                  sra          a2, a1, gp
                  sra          gp, sp, s9
                  nop
                  andi         s2, zero, -253
                  sltiu        gp, s7, -2023
                  ori          a1, s8, -1712
                  addi         s11, tp, 1881
                  xor          sp, a6, t5
                  auipc        t5, 104683
                  srai         sp, tp, 7
                  srai         s6, t3, 26
                  srli         a2, s10, 17
                  nop
                  xori         t5, t3, -577
                  xor          a5, zero, s3
                  slti         t2, a1, -1695
                  sll          s8, t3, s3
                  slli         t4, zero, 24
                  sltu         sp, t5, a1
                  sub          gp, s9, sp
                  addi         t3, t4, 1712
                  andi         t1, t1, -1139
                  auipc        sp, 524549
                  slli         a4, a7, 17
                  andi         t3, s10, 1573
                  andi         t2, t1, -1653
                  ori          s9, a5, -1483
                  ori          t3, a1, -626
                  andi         t0, a7, -655
                  add          s10, t0, t5
                  sub          s8, s0, sp
                  nop
                  srl          s10, s4, t3
                  auipc        t1, 749791
                  andi         t3, t3, -1486
                  lui          s3, 209736
                  xori         s11, s8, -1665
                  sub          s4, t2, tp
                  sltiu        s10, s0, -2011
                  srl          t5, s4, a0
                  slt          a2, a7, a1
                  slti         t3, s4, -1401
                  srl          a3, ra, s3
                  auipc        a0, 658619
                  srli         gp, ra, 31
                  or           zero, s11, tp
                  srai         a6, zero, 21
                  add          t6, s11, t1
                  sltu         tp, t6, s8
                  and          tp, s8, a0
                  sra          gp, t3, a3
                  auipc        a5, 873523
                  lui          a4, 839224
                  ori          t2, ra, 207
                  xor          s10, a5, a2
                  lui          s10, 975036
                  srl          s11, zero, a4
                  srli         t6, gp, 17
                  slt          s2, t6, s7
                  nop
                  add          ra, s1, a3
                  nop
                  addi         s5, a7, 1310
                  srai         s2, a0, 31
                  nop
                  sra          s0, s8, a5
                  add          s8, s4, s0
                  sltu         tp, t1, gp
                  sub          gp, s0, s1
                  and          a4, tp, gp
                  ori          s9, a2, 1991
                  andi         sp, t5, 479
                  nop
                  slli         s4, t6, 28
                  slli         gp, a0, 28
                  lui          s2, 184182
                  sltiu        s4, s9, -901
                  slti         s4, a0, 1317
                  srl          t0, ra, s6
                  sub          s5, s0, t0
                  and          t1, s1, s2
                  srli         t2, gp, 25
                  sub          a1, s2, s7
                  sll          s11, s1, s10
                  lui          a3, 131256
                  nop
                  nop
                  sll          a0, sp, a0
                  addi         tp, gp, -512
                  slti         s8, a2, 1255
                  auipc        a2, 887086
                  nop
                  sub          a0, a0, s3
                  srai         a4, t6, 10
                  xori         a6, ra, -630
                  srai         t2, a4, 1
                  sub          zero, tp, t5
                  or           tp, t3, t3
                  srli         a3, t4, 22
                  srli         t2, ra, 4
                  slli         s2, t4, 28
                  add          t2, a1, s7
                  sub          s6, s4, a0
                  lui          a0, 838311
                  sltiu        s10, s3, -610
                  sll          t1, s8, tp
                  ori          a2, s0, 1473
                  xor          a5, a1, a5
                  xori         tp, t5, -734
                  ori          a5, sp, 952
                  lui          a4, 153134
                  sll          t2, a3, s3
                  sll          a4, s0, gp
                  xori         t4, s0, 87
                  sltiu        a4, t0, 2043
                  or           t6, t3, s2
                  sll          ra, a7, a4
                  lui          zero, 865862
                  andi         t1, t3, 926
                  or           t3, s4, a2
                  and          s5, zero, a1
                  slti         a6, sp, -380
                  sub          s3, s10, tp
                  addi         s6, s6, -1491
                  sub          s4, gp, s0
                  xori         a1, s11, -1760
                  nop
                  andi         a3, a1, 835
                  sra          s6, s11, gp
                  sltu         s2, s4, t0
                  ori          s3, s11, 1426
                  add          t0, s7, sp
                  nop
                  addi         a6, s4, 1523
                  sltiu        s3, s5, -1306
                  or           t3, t3, s5
                  sltu         gp, s9, s11
                  slli         t3, s3, 1
                  nop
                  sltiu        t3, s2, 996
                  sltiu        s9, sp, -241
                  addi         a3, s11, -2021
                  sub          a2, t5, a0
                  add          s5, s5, gp
                  lui          a4, 750229
                  add          t6, s11, s11
                  sll          t0, a3, a1
                  slli         s6, a3, 16
                  xori         a5, s8, -982
                  sll          s2, a0, a1
                  sltiu        s0, s9, -1741
                  auipc        t3, 967622
                  xor          s10, t2, t0
                  and          s0, t0, t2
                  sltiu        t1, a4, -1876
                  andi         t5, s0, 1183
                  andi         sp, s6, -846
                  srl          s2, a6, s0
                  srai         s4, s11, 16
                  srl          s5, a0, s3
                  or           a3, a1, t1
                  sub          gp, t3, s8
                  sltiu        gp, a1, 1310
                  auipc        s11, 1042929
                  srli         s8, a7, 28
                  srai         s5, s6, 27
                  auipc        s6, 317941
                  andi         s9, t3, -287
                  addi         a2, s5, -1187
                  sra          s9, sp, s9
                  srl          a1, t5, a3
                  slt          s11, a2, s7
                  ori          gp, s11, -428
                  and          tp, s6, a1
                  xor          t6, s8, a1
                  lui          zero, 608978
                  xor          s6, t3, s6
                  add          a3, t0, t3
                  or           a1, t1, s6
                  xor          a4, a4, t4
                  addi         t0, t3, -1929
                  srl          a4, s2, s11
                  addi         a5, a2, -1299
                  xori         t3, s8, -193
                  xori         t4, s7, -1957
                  srl          gp, zero, sp
                  addi         s5, a4, 372
                  srai         s9, s11, 30
                  lui          ra, 535028
                  or           a3, t1, a4
                  lui          s0, 353292
                  srli         s8, gp, 23
                  auipc        a3, 896129
                  srl          t0, s11, a7
                  andi         a1, tp, -80
                  lui          s9, 800703
                  or           t2, s9, ra
                  sra          s0, t2, s0
                  sll          zero, s4, a0
                  srli         tp, gp, 11
                  ori          s9, t2, 1125
                  sltu         a5, t3, a6
                  slt          a0, t1, s3
                  slt          t2, t1, s11
                  add          a2, t6, gp
                  auipc        a0, 644855
                  nop
                  nop
                  sra          a6, zero, tp
                  or           gp, ra, tp
                  sra          t5, s1, a1
                  srli         tp, s6, 7
                  slti         sp, a5, -1703
                  sra          a4, s10, a5
                  srai         s4, s5, 29
                  sll          sp, a4, t0
                  sltu         s9, tp, a7
                  slt          t6, a1, s1
                  add          t4, sp, s0
                  xori         t2, s2, -925
                  sra          t2, t1, s10
                  sltu         gp, t1, a5
                  sll          s8, a4, s10
                  add          a4, a6, s10
                  srl          t2, s7, a2
                  sub          a0, t3, t5
                  or           t4, t4, s0
                  sra          s2, s7, s9
                  or           s10, a2, s10
                  nop
                  slt          s6, sp, s6
                  auipc        s0, 103594
                  ori          t0, a0, -351
                  sra          s8, s10, t3
                  xori         a5, s4, 925
                  xori         t0, tp, 103
                  or           gp, t2, t1
                  srai         s5, a1, 8
                  auipc        t3, 1036609
                  lui          s9, 1015493
                  slli         tp, s0, 6
                  sub          a1, s3, t1
                  sltu         a6, a2, a6
                  sltiu        ra, s11, -640
                  srl          a3, t2, s8
                  sll          s0, gp, a4
                  andi         a6, sp, -1898
                  xor          s3, a3, a1
                  srai         a3, a7, 17
                  sll          a6, s9, a2
                  and          a4, t1, a3
                  or           s2, s5, t5
                  ori          s2, a2, -1263
                  sll          s4, s4, s5
                  sltiu        tp, s6, 52
                  slli         s10, s8, 22
                  srai         s2, s6, 20
                  andi         s0, t2, 859
                  ori          t2, s11, -964
                  nop
                  nop
                  or           tp, s7, s10
                  sub          t4, t6, t2
                  slt          s5, s6, s5
                  xori         s4, a3, -309
                  srl          a4, s0, s4
                  andi         s8, a5, -153
                  srl          t2, a3, a2
                  slt          t2, t4, s11
                  sll          a1, s7, s9
                  slli         s9, t3, 14
                  xor          t3, s4, gp
                  srl          s2, a0, t0
                  xor          a0, s7, s11
                  addi         gp, t5, 99
                  andi         ra, a5, 1846
                  xor          s3, s11, gp
                  and          t2, s9, s0
                  nop
                  or           s10, t6, t5
                  auipc        ra, 35697
                  add          t6, t5, t5
                  addi         s9, tp, 557
                  lui          tp, 1016418
                  xori         t2, gp, 837
                  and          a3, s9, s7
                  nop
                  addi         sp, t4, -1753
                  auipc        a6, 3621
                  srl          t6, s11, a6
                  sub          s8, t0, s2
                  srl          a4, sp, s9
                  sra          s6, sp, t4
                  sltu         t5, s4, s7
                  slli         t0, tp, 2
                  slti         t4, a5, 704
                  sll          a5, t2, t3
                  sltiu        s3, zero, -924
                  sub          s3, a7, t2
                  auipc        s10, 362645
                  andi         a3, s8, -1036
                  sra          a3, a4, t0
                  slt          t5, t1, ra
                  lui          t3, 841239
                  lui          s8, 175595
                  and          s9, a5, t1
                  sll          a5, t5, t6
                  add          s2, s10, s11
                  addi         t1, s3, 2020
                  add          a2, s11, t3
                  sltu         s3, a2, s7
                  nop
                  nop
                  sltiu        gp, a2, 438
                  xori         s3, tp, 1368
                  slli         t6, t2, 29
                  sltu         s6, s6, t1
                  sll          gp, s7, a1
                  sub          t1, s4, s6
                  sltu         ra, a4, s0
                  srai         s9, gp, 15
                  slli         s10, t1, 4
                  sub          s10, s7, s7
                  auipc        t6, 60365
                  slti         s8, s0, -903
                  slli         a3, s11, 30
                  sra          s0, a2, t2
                  slt          ra, a4, zero
                  srai         a5, gp, 27
                  and          s0, s9, a6
                  srai         t3, gp, 31
                  ori          zero, t0, 933
                  sltiu        s4, s2, 1187
                  slti         t2, s6, 6
                  srli         s10, s11, 2
                  srl          a3, a1, sp
                  ori          s4, sp, 1048
                  and          s11, a7, a7
                  auipc        t0, 105803
                  srli         s5, s11, 1
                  sll          a6, a6, s10
                  and          s4, s3, ra
                  or           t3, ra, s7
                  add          s4, s7, t2
                  slti         s2, s9, 1627
                  addi         tp, s0, 424
                  sub          s3, s5, a2
                  slti         gp, t4, 679
                  sltiu        a2, s8, -835
                  xori         a3, a4, -1391
                  sltiu        t3, tp, 1494
                  addi         s11, s6, 1035
                  srai         s9, t3, 2
                  srli         t6, a7, 6
                  sltu         t2, tp, s4
                  add          t1, a7, s11
                  sltu         s9, t1, s4
                  or           t0, s10, s5
                  sltu         t3, t0, a1
                  auipc        s3, 947371
                  slti         a6, s7, -1821
                  lui          s9, 21584
                  sltu         tp, t1, s7
                  sra          zero, a6, t1
                  srai         t1, t5, 13
                  sll          s0, t2, a5
                  srl          tp, s9, s10
                  lui          s2, 377037
                  ori          s4, t6, 735
                  nop
                  srli         t5, a3, 12
                  xor          tp, sp, ra
                  nop
                  srli         a6, s10, 27
                  lui          s5, 833665
                  xori         zero, a6, -1819
                  lui          s9, 625083
                  ori          gp, s10, 1022
                  auipc        s8, 838038
                  auipc        a4, 884651
                  xor          s9, s7, a0
                  or           t3, t0, s6
                  andi         tp, a1, 1969
                  sll          tp, a6, t3
                  slti         t6, gp, 947
                  andi         s0, ra, 1069
                  addi         a2, a0, -879
                  nop
                  addi         s0, t6, 1765
                  srl          a1, tp, t2
                  srli         ra, s4, 14
                  lui          s5, 964813
                  auipc        s8, 269327
                  addi         s4, t5, 195
                  andi         sp, s7, -1472
                  srl          a5, zero, t1
                  sra          t5, a7, t5
                  lui          ra, 180934
                  lui          a2, 63777
                  xor          ra, s4, gp
                  add          t2, s9, t2
                  sub          t0, a1, t5
                  nop
                  sltu         s6, a5, a2
                  addi         a6, ra, -28
                  sll          t0, a7, s11
                  slti         t6, a6, -1086
                  srai         a2, a1, 13
                  srai         t5, zero, 4
                  sltu         a4, s6, a3
                  srl          s4, tp, ra
                  auipc        t4, 987157
                  sra          t5, a0, s8
                  sra          a3, a6, s6
                  sll          s9, a7, s7
                  sltu         t6, s3, ra
                  and          t3, s10, a7
                  slti         t6, a2, 717
                  sltiu        a5, s4, -1179
                  la x17, test_done
                  jalr x0, x17, 0
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
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x23, x9, zero
                  csrr x21, 0x300 # MSTATUS
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 31
                  bne x21, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x21, 0x341 # MEPC
                  csrr x21, 0x342 # MCAUSE
                  li x19, 0x3 # BREAKPOINT
                  beq x21, x19, ebreak_handler
                  li x19, 0x8 # ECALL_UMODE
                  beq x21, x19, ecall_handler
                  li x19, 0x9 # ECALL_SMODE
                  beq x21, x19, ecall_handler
                  li x19, 0xb # ECALL_MMODE
                  beq x21, x19, ecall_handler
                  li x19, 0x1
                  beq x21, x19, instr_fault_handler
                  li x19, 0x5
                  beq x21, x19, load_fault_handler
                  li x19, 0x7
                  beq x21, x19, store_fault_handler
                  li x19, 0xc
                  beq x21, x19, pt_fault_handler
                  li x19, 0xd
                  beq x21, x19, pt_fault_handler
                  li x19, 0xf
                  beq x21, x19, pt_fault_handler
                  li x19, 0x2 # ILLEGAL_INSTRUCTION
                  beq x21, x19, illegal_instr_handler
                  csrr x19, 0x343 # MTVAL
                  1: la x17, test_done
                  jalr x1, x17, 0

ecall_handler:    
                  la x21, _start
                  sw x0, 0(x21)
                  sw x1, 4(x21)
                  sw x2, 8(x21)
                  sw x3, 12(x21)
                  sw x4, 16(x21)
                  sw x5, 20(x21)
                  sw x6, 24(x21)
                  sw x7, 28(x21)
                  sw x8, 32(x21)
                  sw x9, 36(x21)
                  sw x10, 40(x21)
                  sw x11, 44(x21)
                  sw x12, 48(x21)
                  sw x13, 52(x21)
                  sw x14, 56(x21)
                  sw x15, 60(x21)
                  sw x16, 64(x21)
                  sw x17, 68(x21)
                  sw x18, 72(x21)
                  sw x19, 76(x21)
                  sw x20, 80(x21)
                  sw x21, 84(x21)
                  sw x22, 88(x21)
                  sw x23, 92(x21)
                  sw x24, 96(x21)
                  sw x25, 100(x21)
                  sw x26, 104(x21)
                  sw x27, 108(x21)
                  sw x28, 112(x21)
                  sw x29, 116(x21)
                  sw x30, 120(x21)
                  sw x31, 124(x21)
                  la x17, write_tohost
                  jalr x0, x17, 0

instr_fault_handler:
                  add x9, x23, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

load_fault_handler:
                  add x9, x23, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

store_fault_handler:
                  add x9, x23, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

ebreak_handler:   
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x9, x23, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

illegal_instr_handler:
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x9, x23, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x21, 0x300 # MSTATUS;
                  csrr  x21, 0x304 # MIE;
                  csrr  x21, 0x344 # MIP;
                  csrrc x21, 0x344, x21 # MIP;
                  add x9, x23, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
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
