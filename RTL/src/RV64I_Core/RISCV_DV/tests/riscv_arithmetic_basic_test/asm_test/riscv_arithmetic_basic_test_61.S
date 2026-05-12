.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x27, h0_start
jalr x0, x27, 0
h0_start:
                  li x4, 0x40000100
                  csrw 0x301, x4
kernel_sp:        
                  la x11, kernel_stack_end

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
                  li x0, 0xf1070ed0
                  li x1, 0xa8802b42
                  li x2, 0xb
                  li x3, 0xf8167c20
                  li x4, 0xcce812c4
                  li x5, 0x80000000
                  li x6, 0x4839757c
                  li x7, 0xc
                  li x8, 0x0
                  li x9, 0x80000000
                  li x10, 0x8
                  li x12, 0x3
                  li x13, 0x0
                  li x14, 0x6
                  li x15, 0xfbbb5c14
                  li x16, 0x80000000
                  li x17, 0x80000000
                  li x18, 0x80000000
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x22, 0x80000000
                  li x23, 0x1
                  li x24, 0x6b4c81cf
                  li x25, 0x1
                  li x26, 0x0
                  li x27, 0x80000000
                  li x28, 0xcdbd273e
                  li x29, 0xfb9d169c
                  li x30, 0xd
                  li x31, 0xa5fc759d
                  la x19, user_stack_end
main:             li           t5, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           a5, 0x80000000
                  li           tp, 0x80000000
                  li           s0, 0xffffffff
                  li           a3, 0x0
                  li           a2, 0x30cea735
                  li           a0, 0xffffffff
                  li           s1, 0xe9a7c5e6
                  li           s5, 0x0
                  li           s2, 0x0
                  auipc        a3, 981674
                  nop
                  add          a3, tp, a3
                  add          a3, t5, s2
                  auipc        a0, 562488
                  auipc        a3, 880315
                  addi         a0, s5, -543
                  lui          a0, 156312
                  nop
                  add          t5, a5, tp
                  auipc        tp, 248256
                  lui          a3, 1031486
                  nop
                  add          a5, tp, a3
                  sub          a3, s0, s5
                  add          s2, s5, a0
                  add          tp, s2, s1
                  nop
                  add          s0, t5, t5
                  add          s1, s2, s0
                  add          s0, tp, s0
                  add          a3, tp, tp
                  auipc        s1, 985428
                  sub          a5, s0, a2
                  addi         a3, tp, -1908
                  auipc        s2, 743940
                  add          a3, a0, a5 #end riscv_int_numeric_corner_stream_0
                  li           t0, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           ra, 0xea307781
                  li           s2, 0xffffffff
                  li           s5, 0x80000000
                  li           a4, 0x80000000
                  li           s10, 0x80000000
                  li           s9, 0x80000000
                  li           s8, 0xffffffff
                  li           t4, 0x0
                  li           a3, 0x80000000
                  add          ra, s10, a4
                  sub          s2, s2, t4
                  auipc        s8, 802311
                  sub          s9, s9, s8
                  add          a3, a4, t0
                  sub          s10, s2, s5
                  addi         s8, ra, -126
                  addi         a4, s8, -232
                  add          t0, s8, s9
                  addi         s2, a3, 415
                  nop
                  nop
                  nop
                  add          a4, s10, t4
                  auipc        s9, 247568
                  nop
                  auipc        s8, 969495
                  lui          s2, 702490
                  addi         s8, t0, -2034
                  sub          t4, a4, s10
                  auipc        t4, 512809
                  lui          s10, 206586
                  add          a4, s8, ra
                  nop
                  auipc        s5, 995349
                  auipc        s5, 783629
                  add          s2, s2, a4
                  addi         a4, ra, 1926
                  auipc        t4, 735550
                  nop #end riscv_int_numeric_corner_stream_5
                  li           s5, 0x3d5be5fb #start riscv_int_numeric_corner_stream_10
                  li           gp, 0x80000000
                  li           a4, 0xca9e23b0
                  li           s7, 0xffffffff
                  li           a0, 0xb89652f4
                  li           s4, 0xd043fff2
                  li           s2, 0xffffffff
                  li           ra, 0xffffffff
                  li           t6, 0x0
                  li           s1, 0xa6114c8a
                  add          s1, s4, s5
                  addi         a4, ra, 307
                  addi         s1, s2, 96
                  add          s5, s2, s4
                  lui          s4, 129411
                  addi         s5, ra, 361
                  nop
                  nop
                  auipc        a4, 1019392
                  add          s2, a4, s7
                  add          s4, gp, t6
                  add          s2, a4, a0
                  addi         s4, t6, 478
                  sub          s7, s4, s2
                  nop
                  sub          a4, s5, s5
                  add          a4, t6, a0
                  nop
                  addi         s7, s1, -2029
                  auipc        s5, 303445
                  lui          s7, 257501
                  auipc        ra, 498249
                  add          gp, a4, s2
                  addi         a0, s1, 1769
                  add          s5, a0, t6 #end riscv_int_numeric_corner_stream_10
                  li           t0, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           a3, 0xd495829f
                  li           s6, 0x0
                  li           tp, 0xd0342836
                  li           a7, 0x0
                  li           t2, 0x8ae6cfa1
                  li           t5, 0xffffffff
                  li           s10, 0xffffffff
                  li           s4, 0x80000000
                  li           s9, 0x80000000
                  addi         s6, s9, -688
                  add          s6, s4, s4
                  auipc        a7, 648403
                  nop
                  addi         tp, s6, -1947
                  lui          t2, 649696
                  auipc        s6, 1034569
                  addi         t0, s4, 1808
                  add          tp, t0, t0
                  sub          s4, t0, s4
                  lui          s6, 171375
                  lui          s6, 848266
                  auipc        t2, 1000889
                  addi         a7, s10, 1001
                  addi         a7, a7, -1269
                  lui          s9, 15806
                  add          s6, s4, s10
                  add          t2, a3, s9
                  add          s6, tp, t0
                  add          t5, s10, a3
                  add          t5, tp, tp
                  lui          s10, 62065
                  sub          a7, s4, s9
                  sub          s6, tp, t5
                  sub          s10, tp, s6
                  auipc        t5, 977195
                  auipc        s10, 896315
                  lui          t5, 935214
                  lui          s9, 488738 #end riscv_int_numeric_corner_stream_7
                  li           t5, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           a5, 0x3b5c28a6
                  li           t2, 0xffffffff
                  li           t4, 0xffffffff
                  li           s6, 0xffffffff
                  li           a4, 0x80000000
                  li           s8, 0x80000000
                  li           a3, 0x80000000
                  li           gp, 0x0
                  li           s5, 0x0
                  nop
                  lui          s6, 404604
                  sub          a4, t2, s5
                  sub          a4, a5, gp
                  auipc        gp, 775885
                  auipc        gp, 152313
                  lui          s5, 493181
                  auipc        t4, 420103
                  sub          a3, a3, t5
                  lui          a5, 790483
                  sub          a4, t2, t2
                  nop
                  add          s6, t2, t4
                  auipc        gp, 948623
                  nop
                  add          s8, t2, gp
                  addi         s8, a3, 1344
                  auipc        s6, 398779
                  lui          a4, 707673
                  lui          s5, 301306
                  sub          t5, s5, t2
                  add          s5, s8, s6
                  auipc        a5, 914217
                  nop
                  lui          s6, 837254
                  addi         t4, s5, 1752
                  lui          s5, 618917
                  addi         s5, t2, -531
                  addi         gp, a3, -743
                  addi         s6, a3, 1276 #end riscv_int_numeric_corner_stream_6
                  li           s4, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           t3, 0x80000000
                  li           a4, 0x80000000
                  li           s2, 0x8aefd5ee
                  li           gp, 0x0
                  li           a5, 0x80000000
                  li           t2, 0x80000000
                  li           a2, 0xffffffff
                  li           a3, 0xffffffff
                  li           s9, 0xffffffff
                  addi         s9, s2, -1728
                  sub          t3, s2, t2
                  nop
                  add          t3, a2, t2
                  auipc        a3, 527135
                  add          a2, s9, a5
                  sub          a3, gp, gp
                  lui          s9, 382964
                  addi         s9, s9, -1061
                  nop
                  addi         t3, s4, -1520
                  add          a2, a4, a2
                  nop
                  add          s4, t2, t3
                  auipc        a5, 578571
                  sub          s2, gp, a2 #end riscv_int_numeric_corner_stream_15
                  li           s0, 0xb5ccd5ae #start riscv_int_numeric_corner_stream_16
                  li           t3, 0x80000000
                  li           a4, 0x2692e119
                  li           sp, 0xa8f7f1d8
                  li           gp, 0xb6a57840
                  li           tp, 0xa3184971
                  li           s10, 0x80000000
                  li           s2, 0x0
                  li           s9, 0xffffffff
                  li           t4, 0x80000000
                  nop
                  nop
                  sub          a4, t3, t4
                  sub          sp, sp, a4
                  auipc        s9, 163676
                  lui          s9, 223322
                  nop
                  add          s2, t4, s10
                  lui          s2, 1016157
                  addi         t4, tp, -1115
                  sub          t3, t4, tp
                  sub          tp, tp, a4
                  auipc        t3, 945558
                  lui          s9, 127430
                  add          s2, gp, gp
                  add          tp, t3, t3
                  lui          s9, 390038
                  add          s9, gp, t4 #end riscv_int_numeric_corner_stream_16
                  li           s8, 0x71f00f7c #start riscv_int_numeric_corner_stream_17
                  li           t1, 0xffffffff
                  li           s2, 0xffffffff
                  li           tp, 0x0
                  li           t0, 0x0
                  li           a6, 0x80000000
                  li           s6, 0xba92ffd7
                  li           t2, 0x80000000
                  li           s1, 0xa449ff3c
                  li           t6, 0x80000000
                  nop
                  auipc        s8, 32845
                  add          tp, t0, s6
                  add          t1, s2, s2
                  auipc        t6, 787543
                  lui          t1, 317336
                  nop
                  auipc        t2, 611551
                  addi         s2, t6, -409
                  sub          t1, t2, tp
                  sub          t1, s8, s8
                  add          t2, t6, t0
                  lui          tp, 769354
                  auipc        s2, 777000
                  addi         a6, tp, -608
                  sub          s8, s2, tp
                  sub          s2, s8, s2
                  add          tp, s1, t0
                  lui          t0, 175798
                  auipc        t6, 802719
                  addi         t1, s1, 1085
                  add          s2, s6, t1
                  add          t2, s1, s8
                  add          t2, t0, s6 #end riscv_int_numeric_corner_stream_17
                  li           s5, 0xf2b085e4 #start riscv_int_numeric_corner_stream_2
                  li           s0, 0xffffffff
                  li           s7, 0x0
                  li           a2, 0xffffffff
                  li           t3, 0xffffffff
                  li           t2, 0x80000000
                  li           t6, 0x80000000
                  li           s1, 0x80000000
                  li           a7, 0x0
                  li           a3, 0xb0ce1157
                  lui          s1, 577993
                  nop
                  sub          s1, a2, t3
                  auipc        t6, 2288
                  nop
                  lui          t2, 104105
                  nop
                  sub          s5, s7, t2
                  sub          t2, a3, t2
                  auipc        s1, 682017
                  auipc        t6, 424126
                  nop
                  auipc        a2, 403450
                  addi         s5, t3, -433
                  add          s7, a7, s1
                  lui          t3, 1005769
                  addi         a3, s1, -337
                  lui          s5, 395293
                  addi         t6, t3, -1853
                  lui          s7, 910855
                  add          s0, s7, a3
                  sub          a2, t2, t3
                  lui          t3, 784539
                  nop
                  lui          s5, 382913
                  add          s0, t3, a2
                  addi         a3, a7, -711
                  lui          a2, 517457 #end riscv_int_numeric_corner_stream_2
                  li           s5, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           s8, 0xffffffff
                  li           tp, 0x57de2fa
                  li           s7, 0x80000000
                  li           a6, 0x6371b49c
                  li           a2, 0xffffffff
                  li           t1, 0x80000000
                  li           s9, 0x80000000
                  li           a4, 0x0
                  li           a7, 0x80000000
                  addi         t1, tp, 1181
                  addi         s5, s9, 1135
                  lui          t1, 1008949
                  lui          a6, 602683
                  nop
                  add          a4, a7, a4
                  addi         a6, a2, -1158
                  add          a2, a4, s7
                  sub          a2, s5, a7
                  sub          s7, s7, s7
                  addi         t1, a4, -693
                  add          s5, a4, a6
                  add          s8, s7, a7
                  lui          tp, 348566
                  addi         s8, a6, 1708
                  add          a7, a2, a2
                  lui          a4, 572201
                  sub          a4, tp, a2
                  lui          tp, 947631
                  sub          a2, s9, a6
                  lui          t1, 654934
                  auipc        t1, 283212
                  auipc        a4, 343618 #end riscv_int_numeric_corner_stream_4
                  li           s7, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           a4, 0x0
                  li           t1, 0xffffffff
                  li           a2, 0xffffffff
                  li           ra, 0x2c8d8194
                  li           t4, 0x2af86904
                  li           t6, 0x45edfe22
                  li           s0, 0xffffffff
                  li           a0, 0x80000000
                  li           s10, 0xffffffff
                  nop
                  add          s0, t4, t6
                  auipc        s7, 360826
                  sub          a0, ra, s7
                  nop
                  auipc        s0, 692862
                  addi         a0, a2, 614
                  sub          t6, t6, s0
                  add          a2, s7, a4
                  auipc        t6, 918568
                  lui          a4, 584394
                  auipc        t6, 283566
                  addi         t4, s10, -1634
                  addi         s0, t1, 812
                  add          a2, a4, a0
                  add          t1, a2, s10
                  nop
                  sub          t1, t6, a4
                  addi         s7, a4, -1263
                  auipc        s10, 208825
                  addi         a2, t1, 1208
                  add          a2, t4, a0
                  add          t6, a2, a2
                  addi         a4, a0, -900
                  nop #end riscv_int_numeric_corner_stream_8
                  li           s5, 0x6baea310 #start riscv_int_numeric_corner_stream_13
                  li           t4, 0x80000000
                  li           a0, 0xffffffff
                  li           sp, 0x80000000
                  li           t1, 0xffffffff
                  li           s2, 0x6a328160
                  li           t0, 0x0
                  li           gp, 0x0
                  li           s9, 0x7899a02c
                  li           s7, 0x80000000
                  nop
                  add          t0, sp, t0
                  nop
                  addi         gp, a0, 572
                  sub          gp, sp, s9
                  add          t1, a0, s2
                  nop
                  auipc        t4, 261785
                  add          t1, gp, sp
                  addi         s9, t4, -952
                  auipc        s5, 324427
                  nop
                  sub          a0, t4, s9
                  lui          s2, 995259
                  lui          s7, 75922
                  sub          t0, s2, gp #end riscv_int_numeric_corner_stream_13
                  li           s9, 0xd452ad84 #start riscv_int_numeric_corner_stream_3
                  li           s0, 0x1d8b85d9
                  li           s10, 0xffffffff
                  li           t4, 0x0
                  li           t1, 0xffffffff
                  li           a7, 0xffffffff
                  li           s1, 0x80000000
                  li           t0, 0xffffffff
                  li           s6, 0xffffffff
                  li           t5, 0xffffffff
                  sub          t0, t0, s1
                  nop
                  nop
                  sub          t5, a7, t4
                  addi         s9, s1, -672
                  sub          s9, t0, t4
                  lui          t5, 718146
                  sub          s6, a7, t4
                  add          t0, s10, s6
                  addi         s6, t4, -364
                  addi         t5, s1, 89
                  addi         s1, s9, -336
                  sub          s0, s6, s1
                  sub          t1, s6, t4
                  nop
                  add          s0, t5, t1
                  auipc        s6, 835729
                  lui          t1, 344511
                  nop
                  addi         s1, s10, 1356
                  lui          s1, 369942
                  nop
                  sub          s9, s1, a7
                  add          t1, s0, s10
                  auipc        s1, 812363 #end riscv_int_numeric_corner_stream_3
                  li           t1, 0xeb97704 #start riscv_int_numeric_corner_stream_14
                  li           s0, 0x331f2a7
                  li           s5, 0x80000000
                  li           a3, 0x548af5ed
                  li           t5, 0x0
                  li           s2, 0x80000000
                  li           ra, 0xdd409283
                  li           s7, 0xdfe23afc
                  li           gp, 0x80000000
                  li           s4, 0xffffffff
                  lui          s2, 59940
                  auipc        a3, 446499
                  addi         s0, gp, 948
                  auipc        t1, 679688
                  nop
                  addi         s5, a3, 1426
                  nop
                  sub          s4, s0, ra
                  lui          ra, 457391
                  lui          t1, 459588
                  add          t1, t1, s7
                  sub          s5, t1, s4
                  lui          s5, 698793
                  nop
                  lui          s5, 26756
                  add          t5, s4, t5
                  nop
                  auipc        t1, 769556
                  lui          t5, 929287
                  lui          s0, 415475
                  auipc        s7, 457346
                  auipc        s0, 579279
                  lui          gp, 579201 #end riscv_int_numeric_corner_stream_14
                  xor          s1, a2, t3
                  sub          t1, sp, s5
                  srli         a3, a5, 21
                  srli         s6, s9, 22
                  slti         s8, a1, -1324
                  andi         s1, s2, -278
                  slti         a4, a3, -1729
                  andi         ra, s9, 756
                  srai         s0, a3, 25
                  sra          t1, a6, s7
                  or           s1, s11, t4
                  ori          a6, a6, 282
                  andi         s6, s10, 68
                  lui          s9, 457980
                  srli         s9, zero, 19
                  srl          a3, t2, gp
                  or           gp, s8, s6
                  nop
                  auipc        gp, 818796
                  srli         s7, s1, 8
                  xor          t0, a7, a6
                  xori         a2, s9, 1477
                  sltiu        sp, a0, -2038
                  xori         a2, a1, 50
                  srli         a0, s9, 5
                  sub          t0, t4, t0
                  or           s7, s7, a1
                  srai         s7, s5, 14
                  sra          a0, t0, s4
                  xori         a5, zero, 1616
                  srli         s9, t6, 6
                  srai         s5, a2, 25
                  addi         s7, s1, -1021
                  srli         s4, a5, 5
                  slti         tp, tp, 1688
                  sltiu        gp, t5, 1317
                  sub          a3, t6, s5
                  slti         t3, t1, 1766
                  srai         s0, ra, 20
                  sltu         a7, t2, s9
                  slli         zero, s4, 16
                  auipc        a5, 1046994
                  addi         s7, t1, 1083
                  slti         gp, s9, -855
                  slti         s7, a6, 1154
                  slli         t0, s4, 2
                  sra          tp, a2, a1
                  add          t6, s2, s10
                  slli         a0, a4, 29
                  xor          s0, ra, sp
                  and          t3, a0, a6
                  sra          a5, s6, s11
                  sll          s10, a0, s3
                  slt          s1, s8, a0
                  add          a2, t0, s5
                  sub          t4, s4, s5
                  lui          a2, 192756
                  srl          ra, s8, a7
                  srl          a6, t5, ra
                  srli         a7, ra, 29
                  srl          gp, s1, s4
                  and          s0, a2, a0
                  and          t5, gp, a7
                  nop
                  xor          t3, a7, a2
                  auipc        s10, 272750
                  slt          s0, s8, t1
                  lui          a0, 896297
                  lui          t1, 587792
                  lui          s8, 841519
                  srli         s6, t2, 17
                  auipc        zero, 1030609
                  nop
                  srl          sp, s4, s11
                  and          a5, s9, zero
                  sll          a6, s0, a4
                  xori         s7, sp, -1616
                  xori         t1, tp, -32
                  sltu         a7, tp, a1
                  srl          sp, s9, s0
                  ori          a3, t6, 328
                  slti         a3, t5, 1467
                  xor          gp, t4, sp
                  sll          t6, a6, s6
                  sub          s8, s1, sp
                  add          s0, a6, s6
                  slli         s2, t4, 13
                  xor          ra, a5, sp
                  slt          a7, zero, s10
                  xori         s10, sp, 1357
                  srli         s0, t5, 27
                  sltiu        s1, s8, -1779
                  ori          a7, t5, 409
                  lui          s7, 1019801
                  srl          a3, zero, a7
                  srli         t2, t3, 20
                  xori         t1, s4, 1265
                  xori         s7, t6, 395
                  slt          t4, ra, a1
                  add          t6, a1, s6
                  andi         tp, t4, -1871
                  slt          t2, s10, t6
                  sub          tp, zero, s6
                  lui          t2, 737233
                  lui          s2, 101621
                  and          s6, s2, gp
                  srai         a7, a0, 31
                  lui          tp, 408456
                  slli         t2, a2, 6
                  andi         a6, s1, -1707
                  srai         s9, t1, 31
                  ori          s4, a2, 723
                  nop
                  xor          a6, s7, s11
                  sltu         a7, t1, s3
                  slti         a2, t6, -4
                  xor          a0, s10, s7
                  nop
                  srl          s1, t3, zero
                  andi         a5, s7, -293
                  sll          ra, s1, s5
                  srai         s4, gp, 13
                  and          a6, ra, t5
                  auipc        s7, 883914
                  sltu         t2, s7, s1
                  slti         sp, t5, -243
                  lui          a2, 1038895
                  or           s0, s9, a4
                  nop
                  add          zero, t3, gp
                  slli         s0, s1, 5
                  sra          t3, s8, s11
                  slli         t1, t1, 30
                  and          a3, a7, s10
                  srli         t5, s6, 18
                  sltiu        t1, s7, -1830
                  xor          zero, t0, a2
                  sll          s1, t3, a1
                  or           a5, s7, sp
                  ori          a4, t2, 1330
                  ori          a7, s0, 1007
                  andi         sp, t6, -1073
                  sra          s7, s11, sp
                  and          t4, zero, a6
                  sub          a0, t2, t6
                  addi         zero, a7, 190
                  addi         t3, t5, 1555
                  add          s10, s11, t1
                  add          ra, sp, t0
                  slti         t6, a4, -1867
                  sra          t2, gp, gp
                  slli         t0, t0, 0
                  add          a5, s11, t0
                  sltiu        a7, a7, 1814
                  sll          t1, s6, s11
                  sltiu        t4, t5, 1852
                  sub          s9, s7, sp
                  sltiu        s7, tp, -1881
                  sra          t2, a5, t4
                  sub          a2, t3, a2
                  add          a5, t3, s1
                  sll          t4, a4, s4
                  sra          ra, gp, s3
                  lui          a4, 745694
                  or           a4, t5, s10
                  lui          s2, 837400
                  or           t5, s10, s7
                  sub          t2, s11, a0
                  srli         zero, t0, 10
                  or           t3, s7, sp
                  and          a4, a1, t4
                  slt          s8, s1, s0
                  or           t5, a5, a0
                  ori          t3, s10, 1427
                  slt          s6, a3, s4
                  ori          s6, ra, 1641
                  slt          t6, s1, a7
                  srai         a2, t6, 28
                  srai         gp, a5, 20
                  srli         s2, s3, 8
                  sll          zero, ra, s7
                  srli         s5, t0, 14
                  xor          t3, sp, gp
                  or           tp, tp, s9
                  add          tp, s1, s4
                  ori          t1, zero, -64
                  sub          tp, s3, a5
                  xori         a2, s8, 257
                  sub          a7, a4, a4
                  add          s9, a2, gp
                  sll          t2, s4, t0
                  or           tp, s5, s0
                  srai         a6, t2, 26
                  slti         t1, a0, 222
                  xor          t0, a5, zero
                  sub          a3, a1, tp
                  lui          a3, 181384
                  auipc        a7, 71860
                  sltiu        gp, a5, 2022
                  slti         s5, s8, 868
                  xori         gp, t4, -489
                  xor          ra, t2, t5
                  slli         s8, s4, 31
                  xori         zero, t5, 1790
                  addi         tp, s11, -1746
                  xori         ra, t4, 82
                  srl          s1, a2, s11
                  sltu         t1, t3, a0
                  nop
                  sra          s2, t1, a2
                  xori         s7, t3, 1588
                  xor          ra, s2, ra
                  lui          a4, 226110
                  addi         a4, s5, 737
                  ori          t2, s10, -784
                  sub          a6, s5, s10
                  sll          t0, a1, sp
                  addi         s6, gp, 870
                  xor          sp, t6, a5
                  xori         a4, a3, -1341
                  sltiu        s0, s1, -1868
                  lui          a0, 273175
                  xor          zero, s5, s0
                  srli         gp, s1, 30
                  auipc        s5, 540652
                  srl          s9, t2, a7
                  nop
                  sub          s6, a0, s1
                  or           s4, s3, s10
                  xor          s8, s9, a1
                  sra          s5, a1, s4
                  xori         a7, s1, -1562
                  slt          a5, t1, tp
                  sra          s8, s4, t4
                  auipc        sp, 267924
                  slt          t5, t6, s0
                  and          s0, a1, t0
                  addi         t4, s10, -1550
                  and          a5, s2, s2
                  sltiu        a2, ra, 234
                  slli         gp, s7, 4
                  andi         a2, s1, -1638
                  sll          t5, a3, s6
                  add          sp, s9, gp
                  addi         a0, s2, 1277
                  slli         s0, a4, 23
                  sra          ra, a7, s10
                  sub          s8, s5, s0
                  slli         t4, gp, 21
                  or           t3, t3, s2
                  or           s1, s11, t1
                  or           a4, ra, a1
                  sltiu        t1, s2, 1250
                  add          tp, s2, s10
                  xor          ra, t1, s9
                  and          a7, ra, s3
                  or           s6, s6, t2
                  sltu         s7, s8, t4
                  andi         zero, s7, 168
                  xori         t5, a3, 421
                  sra          a0, tp, s8
                  or           a4, s7, t0
                  ori          s2, s6, 344
                  slli         a7, s5, 7
                  andi         s0, s0, -1959
                  xori         s10, a7, -400
                  sll          s5, s5, a7
                  xor          ra, t4, a2
                  srl          a3, s4, a3
                  and          s8, s4, s2
                  or           a3, t6, gp
                  sra          s0, s1, t5
                  xor          a5, s10, s10
                  and          t0, t4, t1
                  slti         s4, ra, -1341
                  srli         t5, a3, 21
                  srl          t4, a6, s8
                  and          s4, a2, zero
                  slti         t4, sp, 1214
                  srai         t6, s3, 9
                  slt          a4, a6, sp
                  slt          t3, t1, a1
                  sltu         s1, a6, a2
                  add          s10, zero, s11
                  srai         s9, t4, 20
                  sltu         t2, sp, a4
                  xori         a5, tp, -105
                  slti         t1, s11, 1603
                  sltu         s8, t0, ra
                  addi         gp, a5, -1655
                  addi         t5, tp, 1647
                  addi         a5, a6, -1782
                  srai         a2, a6, 23
                  slli         t5, s7, 7
                  and          a6, a5, a3
                  add          s7, s0, s2
                  xor          sp, s11, a3
                  lui          a2, 424371
                  srl          t2, a0, t3
                  xor          a0, ra, s3
                  sub          ra, a1, t5
                  srai         t2, a1, 22
                  nop
                  sll          t5, s2, s7
                  addi         t1, s11, -261
                  srai         a2, s3, 10
                  sltu         a0, s6, a1
                  addi         s9, tp, 807
                  srli         ra, s1, 14
                  xori         s7, zero, 698
                  srl          a3, a1, s3
                  slti         s10, gp, 503
                  srli         s4, s10, 10
                  add          s8, s3, s8
                  sltiu        t3, a5, -1544
                  srli         s4, s4, 7
                  add          a7, t2, t1
                  sltiu        tp, ra, -1216
                  add          t1, s8, gp
                  andi         a4, a1, 1243
                  add          t0, tp, gp
                  lui          gp, 485607
                  xori         a6, s8, 989
                  sll          s9, s9, a2
                  sra          s7, s11, s11
                  sltu         s4, s10, sp
                  nop
                  or           t0, t5, s2
                  xor          t3, a2, sp
                  slli         tp, t5, 16
                  nop
                  srl          s10, s5, tp
                  xor          t1, s9, t4
                  srli         gp, a2, 24
                  sltu         t1, s11, a4
                  srai         zero, a2, 17
                  srai         s9, t2, 27
                  slt          s0, zero, s8
                  srl          t0, t6, t1
                  andi         ra, s8, -969
                  srli         a4, t6, 14
                  auipc        a3, 522985
                  srl          s6, ra, t0
                  or           s5, s2, s0
                  sub          t4, gp, sp
                  sltiu        t2, ra, -1781
                  sll          s1, a0, a1
                  sltiu        ra, a4, 57
                  addi         s9, s9, -1852
                  addi         s2, s7, 241
                  nop
                  sltiu        t6, s4, 1500
                  slt          a3, a1, a4
                  auipc        a3, 928646
                  slti         s5, s6, 990
                  sltu         s8, s0, a4
                  and          s0, t3, s11
                  andi         s5, a7, 466
                  srai         s0, s6, 10
                  lui          t4, 238935
                  srai         ra, t1, 15
                  add          s6, a0, s1
                  sra          s7, tp, a0
                  srli         s6, zero, 31
                  auipc        a6, 776265
                  add          s2, s0, s10
                  andi         zero, a0, 1541
                  sltu         a5, tp, tp
                  sll          s4, t4, a3
                  sub          s6, gp, a4
                  sll          t6, s9, s1
                  srli         s6, tp, 9
                  nop
                  srli         t0, a6, 5
                  nop
                  srli         s9, a3, 28
                  slli         a3, t4, 16
                  sll          s2, a3, s3
                  sra          s6, s1, s9
                  or           t4, s8, s0
                  slli         s0, a6, 3
                  srl          t1, t0, t5
                  srli         ra, zero, 8
                  slti         s7, a6, -1682
                  slt          a2, s2, a6
                  sll          s10, t5, s11
                  andi         s6, a1, 530
                  andi         ra, t0, -1917
                  addi         a7, a3, 1681
                  and          gp, a5, s0
                  or           a6, t3, s2
                  sltiu        t0, t1, 1261
                  srl          t1, s0, t0
                  sll          t6, a3, s5
                  andi         s0, a1, -161
                  srai         tp, s3, 4
                  sltu         a7, gp, s1
                  nop
                  sll          a4, t4, s5
                  srai         t6, s7, 10
                  sltu         a4, s7, s6
                  xor          sp, s7, t2
                  slt          t1, a1, a1
                  nop
                  srl          t2, s5, s10
                  srl          a2, zero, t6
                  sll          a4, a1, s11
                  sltiu        tp, sp, 613
                  sltiu        t0, s1, -1005
                  sub          sp, s11, a5
                  sltiu        s0, t6, -299
                  xor          s9, a6, a4
                  add          t3, sp, s3
                  sub          t4, ra, s8
                  ori          s9, zero, 0
                  srli         s7, a5, 24
                  xor          s4, ra, a3
                  or           a6, ra, s6
                  andi         a7, t0, -1012
                  sll          zero, t6, s1
                  lui          s2, 916030
                  sltiu        t6, s1, 1410
                  srai         s2, s8, 19
                  lui          s9, 680764
                  sltiu        t2, s9, -1234
                  add          sp, s5, s1
                  and          t3, s11, a0
                  xor          a0, ra, s9
                  andi         s2, t5, 1719
                  srai         t6, a4, 19
                  sltiu        t0, a2, 1425
                  or           t2, a5, s5
                  sltiu        tp, a0, -386
                  sra          s10, t6, a7
                  slti         s4, s9, -5
                  xor          s0, s0, s0
                  slti         t3, s11, -1340
                  lui          s4, 585768
                  sltiu        a0, t5, 1163
                  slti         t3, t3, -469
                  srli         a5, gp, 3
                  sltiu        s7, a3, 1807
                  addi         tp, s2, 1485
                  srli         s8, sp, 17
                  srai         a0, t1, 3
                  xori         t0, t3, 52
                  srli         a3, tp, 22
                  slli         a4, s3, 23
                  xori         s2, zero, 1496
                  xori         t2, sp, 1518
                  and          s4, t1, gp
                  srai         s2, s4, 20
                  and          t2, zero, t3
                  sll          s4, a1, zero
                  xori         ra, t5, 1708
                  sra          a7, a5, s2
                  sltu         s0, s6, zero
                  slti         t6, a1, 1558
                  sra          a0, a6, a4
                  add          t1, tp, s7
                  srli         t1, s9, 1
                  sub          a4, gp, a3
                  nop
                  srl          t0, s1, t2
                  sll          s5, s3, a0
                  srli         t3, t3, 26
                  addi         ra, a3, -1627
                  srli         a7, zero, 15
                  sub          a0, s7, a6
                  slli         t6, s6, 2
                  slti         sp, a6, -1309
                  lui          s6, 619136
                  addi         a6, t6, -701
                  addi         t2, s10, -783
                  srli         a7, a4, 3
                  and          s4, s10, s8
                  xor          t0, a5, a2
                  addi         t1, t5, -1193
                  srai         s10, s11, 0
                  sub          s2, a3, s6
                  addi         s10, a2, 283
                  auipc        t5, 381300
                  lui          s0, 515230
                  and          a0, s10, t2
                  nop
                  slt          s8, s1, s8
                  nop
                  lui          s8, 405844
                  andi         a0, a3, -1786
                  lui          s5, 755506
                  or           s0, s0, s7
                  slli         s1, a7, 6
                  sll          s7, a4, a2
                  xor          a4, t4, a2
                  sra          t5, tp, sp
                  sltiu        zero, s11, -24
                  srli         a5, tp, 21
                  sltiu        tp, sp, 57
                  sltiu        gp, zero, -1730
                  slli         a7, s3, 1
                  and          ra, s4, s8
                  slli         a7, sp, 26
                  addi         s2, s6, -118
                  auipc        s4, 894412
                  ori          s0, s11, -1674
                  and          s1, tp, a5
                  slti         s9, t2, 279
                  srli         s2, sp, 20
                  auipc        t5, 754652
                  xor          t6, t1, a6
                  auipc        t2, 318
                  nop
                  srai         t4, s5, 4
                  add          t2, a7, a1
                  slt          gp, s7, a6
                  sltu         gp, s0, t5
                  lui          sp, 318054
                  slli         a7, a4, 18
                  addi         s1, a1, -1551
                  xori         a3, s5, -109
                  xori         t2, t6, -539
                  sub          gp, t6, ra
                  ori          t0, a7, -1513
                  sra          s9, t0, t0
                  ori          s5, a4, 481
                  sra          s1, a1, s6
                  xor          s4, t5, s4
                  srl          t1, a3, a1
                  srai         t4, s7, 2
                  nop
                  sltiu        a7, sp, -554
                  add          s4, t0, ra
                  addi         ra, ra, -451
                  add          s5, a0, a1
                  xor          s8, s9, a4
                  add          t3, ra, a7
                  addi         a5, t4, -1259
                  sub          t2, s11, a1
                  sltiu        t5, tp, -1006
                  slli         a6, a0, 4
                  sltiu        a4, s8, 657
                  slti         s6, t2, 364
                  and          t5, tp, s8
                  nop
                  xori         s6, a3, -910
                  sub          s4, s9, gp
                  nop
                  auipc        s8, 480907
                  addi         s7, s5, -1137
                  andi         gp, gp, 1493
                  and          s7, a0, ra
                  andi         s4, s3, 418
                  ori          s8, a1, -1351
                  auipc        t2, 502726
                  add          a0, a3, sp
                  srai         t6, s7, 24
                  addi         a4, t4, -24
                  auipc        ra, 248347
                  sltiu        s1, a7, -587
                  addi         a2, s9, 438
                  and          a6, t1, s5
                  auipc        a3, 1031150
                  slt          t2, s4, s2
                  auipc        s1, 28540
                  auipc        a0, 289620
                  sub          a2, s6, s11
                  sub          s5, a0, s5
                  slli         t3, a3, 2
                  addi         s10, s2, 129
                  lui          a5, 764103
                  srl          s1, sp, a7
                  auipc        s9, 1017703
                  srai         t3, ra, 26
                  ori          t3, ra, 220
                  xor          tp, a4, a0
                  andi         ra, a5, -656
                  srl          s4, s1, t4
                  slli         tp, s0, 17
                  sltu         ra, a7, gp
                  add          s8, s2, s11
                  nop
                  xori         a5, s6, 1258
                  or           ra, t5, s3
                  auipc        a2, 399232
                  srl          a2, s11, t2
                  ori          gp, t0, 416
                  xor          s5, a4, a6
                  ori          s7, sp, -973
                  lui          t5, 184637
                  sll          a3, t2, sp
                  sltu         a0, s6, t2
                  srai         s1, s3, 19
                  or           a4, a3, t5
                  sltiu        s2, t4, -1354
                  slt          t1, t1, s4
                  sub          s8, gp, sp
                  andi         t1, a7, 1177
                  srli         s2, zero, 18
                  slt          t2, a0, a7
                  slti         s8, t6, -1268
                  nop
                  auipc        t3, 810059
                  srl          a0, zero, s7
                  nop
                  sub          a4, a4, a3
                  slt          s0, zero, ra
                  slt          t4, zero, s6
                  srai         s4, s4, 20
                  xori         s8, s7, 1083
                  sll          t0, tp, s6
                  slli         s10, a1, 15
                  slli         t3, s9, 11
                  xor          a0, s1, s8
                  andi         s10, tp, -366
                  sub          s7, a3, a7
                  ori          t6, t3, 1702
                  srli         t5, t3, 14
                  sub          a4, a1, a4
                  slti         a4, sp, -699
                  srli         a6, t6, 3
                  srai         ra, sp, 19
                  sll          t3, s0, sp
                  sltiu        tp, ra, 1439
                  nop
                  srli         a5, zero, 7
                  slti         s0, gp, 1488
                  add          a2, a3, a6
                  or           zero, a3, a6
                  ori          s9, s6, 690
                  sra          tp, t5, zero
                  or           s2, tp, a6
                  sltiu        s7, s9, 1529
                  sra          t0, s11, a0
                  slli         a6, s10, 22
                  and          sp, t6, t3
                  slli         s0, s3, 5
                  srai         a4, s7, 3
                  srli         s1, t0, 4
                  ori          a5, zero, 191
                  slt          a2, t6, s0
                  slli         s6, zero, 12
                  slli         t1, s2, 30
                  lui          t0, 809089
                  add          t6, t4, t6
                  add          t3, sp, t0
                  slli         s2, a2, 30
                  srl          s9, t4, t0
                  sltiu        a2, a6, -1304
                  srl          t4, gp, a3
                  sltu         a2, s5, t1
                  sra          t5, a1, a1
                  srl          a3, t3, t0
                  sltu         a5, a2, sp
                  sll          t2, s3, a3
                  xori         s10, s4, 1094
                  sll          a3, t4, tp
                  srl          t6, s7, t2
                  sub          s8, a0, s10
                  nop
                  addi         s9, t0, -1730
                  sltu         s1, gp, s11
                  ori          s1, sp, -89
                  srl          s4, s2, a7
                  srl          sp, t1, s0
                  srli         a0, t0, 9
                  sltu         gp, t5, s7
                  addi         s9, s4, 1482
                  ori          a6, t1, -1466
                  nop
                  auipc        zero, 368405
                  slli         s4, s5, 20
                  sub          s10, s0, tp
                  andi         s6, a3, -478
                  sub          t2, s10, tp
                  sll          s4, t1, s6
                  or           s9, t2, tp
                  xori         s4, s11, -174
                  or           tp, s0, gp
                  andi         s4, s9, 1742
                  slti         a5, ra, -1244
                  xor          t0, t3, a7
                  srl          t4, sp, a1
                  or           t0, sp, t3
                  slti         a2, a5, -7
                  lui          zero, 27023
                  addi         sp, a7, -473
                  sltu         s6, tp, a1
                  srai         s6, gp, 1
                  auipc        s7, 151528
                  and          s4, t0, a3
                  sll          s2, s9, a2
                  srl          t3, s0, s0
                  slli         ra, t4, 29
                  or           s0, a1, s11
                  sll          s1, s3, s7
                  slt          t2, s5, a2
                  add          t1, a6, s8
                  xori         s4, tp, -201
                  auipc        ra, 237824
                  xor          a3, tp, s9
                  xori         ra, t2, -1767
                  or           s4, s7, t4
                  sub          a2, a6, a4
                  sll          t0, s6, s0
                  add          a7, s6, s6
                  srl          a6, t0, s4
                  sra          t4, s7, t0
                  addi         t3, s8, 310
                  auipc        s2, 930429
                  xori         sp, zero, 280
                  andi         a2, s1, 1148
                  add          t3, t0, t4
                  xor          s8, t3, a1
                  add          a2, s6, a6
                  xor          t1, t4, sp
                  addi         gp, s1, 1201
                  sll          a0, s4, s10
                  srli         a5, s10, 26
                  andi         t5, t5, -1109
                  srai         t6, s3, 31
                  addi         t0, s3, -1785
                  slt          a5, s9, t5
                  sra          a7, s5, s7
                  nop
                  xor          gp, s5, s1
                  sll          s5, a1, sp
                  slli         s7, a5, 28
                  slt          tp, s1, zero
                  andi         s7, a2, -1118
                  add          a7, s8, s6
                  slti         s2, sp, 607
                  srl          a4, t5, s0
                  auipc        s7, 622049
                  srl          t5, t0, gp
                  srli         tp, tp, 28
                  or           t5, s5, s3
                  ori          s6, a2, -1220
                  xori         s10, s6, -1298
                  or           t1, s3, t5
                  xor          s7, s11, a1
                  and          s1, s2, a3
                  slli         ra, a0, 30
                  sub          s10, s2, s3
                  sltu         s4, s4, s8
                  auipc        t3, 631394
                  slti         s2, tp, 433
                  sub          s7, gp, t0
                  sll          a7, t2, s11
                  srl          a6, t1, t4
                  sltiu        s2, a1, 369
                  sltiu        a5, s4, 350
                  srl          a7, a3, s10
                  nop
                  xor          a0, s6, a1
                  lui          a4, 583435
                  slli         t0, s6, 6
                  or           gp, s11, s9
                  sltu         t3, tp, sp
                  add          s6, a1, tp
                  srl          t1, s3, t5
                  lui          tp, 60695
                  sltu         s2, ra, t1
                  slli         s10, ra, 13
                  srl          t0, t3, t0
                  add          a5, s9, t2
                  slli         a6, a6, 23
                  addi         t4, t1, -1866
                  sltiu        t6, a7, 1832
                  ori          s0, s10, -59
                  nop
                  sll          a7, t2, s2
                  srli         t4, s11, 0
                  and          s2, t0, t4
                  addi         s5, gp, 948
                  sub          s6, s0, s5
                  add          s2, s6, t6
                  auipc        a2, 8342
                  sra          s0, s5, a2
                  sub          gp, a1, t3
                  ori          a5, gp, -1856
                  ori          t5, t3, -1699
                  xor          gp, t0, sp
                  srli         s2, t5, 28
                  srl          s6, a3, t6
                  sltiu        a7, s5, -1787
                  ori          s4, a0, -1791
                  add          sp, t4, s8
                  xori         s10, t2, -1171
                  slt          s5, t2, a4
                  srai         t0, a0, 30
                  sll          t5, tp, s9
                  andi         gp, gp, 1303
                  srl          zero, s0, s1
                  nop
                  addi         t3, s0, 1557
                  sltiu        s4, ra, 2032
                  nop
                  auipc        a7, 805864
                  sra          a6, s9, s3
                  lui          ra, 777243
                  ori          a5, s8, 1654
                  sll          t6, s5, t6
                  sltu         s4, a3, s3
                  slt          s6, s7, gp
                  andi         s6, t1, -1514
                  sltu         s7, s3, a6
                  slli         zero, s8, 13
                  srai         tp, a1, 2
                  sltiu        s10, s1, -358
                  ori          s1, a7, 1985
                  srl          s5, s5, t6
                  srai         s4, s4, 21
                  sll          t3, t3, a3
                  sltiu        ra, s9, 1249
                  sll          ra, a5, s9
                  nop
                  sra          t4, a5, s2
                  xor          sp, s3, tp
                  xor          a7, s7, s3
                  slt          tp, s2, t0
                  and          ra, ra, t5
                  andi         s4, t1, -736
                  slli         s7, t3, 1
                  auipc        a0, 711248
                  nop
                  srl          t4, gp, s10
                  slli         t2, s2, 3
                  slli         t2, tp, 27
                  auipc        a2, 487876
                  addi         t0, s6, 1653
                  sra          gp, ra, s4
                  addi         a0, sp, -1701
                  xori         a5, a6, 1778
                  add          s9, zero, t1
                  sltu         t4, s6, t0
                  slti         s0, t0, 1510
                  slli         t4, a3, 25
                  auipc        s6, 441235
                  auipc        s7, 751176
                  addi         s5, t5, 1704
                  xor          t6, s3, a3
                  sltu         t5, s7, a3
                  and          s1, s1, t0
                  lui          a5, 834089
                  addi         t1, s2, 188
                  slt          s4, a0, s10
                  sra          s10, s2, t5
                  sra          t6, zero, tp
                  lui          a3, 789889
                  sra          zero, s10, s2
                  auipc        s5, 252205
                  andi         t4, a2, 1950
                  srl          gp, t5, zero
                  or           a2, a5, t0
                  and          a7, a0, a2
                  srai         sp, s5, 22
                  xori         a0, s10, 1757
                  slli         s9, t0, 9
                  slli         a4, t1, 11
                  sll          t6, s7, a2
                  nop
                  sub          s9, a4, s9
                  xori         t4, s10, -260
                  slti         s4, s1, 1374
                  sub          s6, tp, t3
                  slti         t4, t3, -173
                  srai         t1, t0, 24
                  slt          zero, gp, s0
                  auipc        s6, 80423
                  ori          sp, ra, -1356
                  sltiu        gp, a6, 1235
                  and          s0, a2, a4
                  srli         t0, gp, 6
                  xori         sp, t2, -674
                  sltiu        gp, sp, -237
                  andi         t5, t2, 1624
                  nop
                  or           zero, gp, ra
                  slti         s5, s0, 145
                  sltu         s8, t6, ra
                  lui          t5, 369153
                  srl          s5, s4, s10
                  auipc        s1, 542257
                  sltu         s6, t5, a4
                  lui          s2, 928411
                  ori          s9, t1, -1110
                  slt          s6, a2, t4
                  lui          s8, 757924
                  sra          t6, s0, s0
                  slti         t5, zero, -1351
                  sltiu        t0, a5, -548
                  sltu         s9, a6, a0
                  srl          t6, s7, s5
                  sll          a2, a1, zero
                  slti         a4, gp, 1930
                  auipc        s1, 1013034
                  xor          s6, a0, t6
                  sll          s6, s2, t4
                  slt          a6, t5, s0
                  sra          t5, s9, t5
                  slli         t4, tp, 7
                  srai         s0, t3, 21
                  and          t2, sp, s6
                  srl          tp, t3, a5
                  and          s6, sp, t5
                  addi         s0, s8, -1484
                  or           s2, a2, a7
                  slli         t6, s10, 23
                  slti         a5, s8, 556
                  sltu         s10, s4, s9
                  andi         a6, t4, 1804
                  and          a0, t1, zero
                  sub          a7, s6, t4
                  slti         a6, s5, -1877
                  sltiu        a5, a0, 1645
                  srl          sp, s3, zero
                  add          s8, t5, a5
                  sra          a3, s11, s11
                  sltu         t6, s11, gp
                  srl          s4, a1, t3
                  slti         t3, t4, 1928
                  xori         t5, a1, 1284
                  auipc        t1, 1677
                  and          t2, t3, s10
                  srli         a7, s9, 20
                  andi         a6, s0, -1730
                  lui          a3, 580944
                  addi         s6, t3, -95
                  sub          s10, s2, s1
                  nop
                  srli         s7, a5, 15
                  auipc        a0, 1027995
                  sltiu        s0, s11, -1261
                  sll          t4, s11, t2
                  srai         a2, t0, 5
                  sltu         a3, s9, a2
                  sltu         t1, s2, s3
                  auipc        s4, 648530
                  addi         t3, s9, -870
                  andi         a6, s10, -1856
                  addi         a3, s5, 765
                  srai         s0, s9, 1
                  sll          a0, a7, s9
                  sltu         tp, a4, s11
                  srli         sp, s8, 16
                  or           sp, a1, a6
                  srai         ra, a6, 16
                  lui          s7, 572253
                  slli         t5, t4, 15
                  sltiu        t5, t0, -562
                  slt          a5, s4, t4
                  and          t1, a5, s2
                  slti         a5, s9, -1358
                  srli         s9, a6, 14
                  ori          a6, s3, 1177
                  srli         s2, t0, 27
                  sll          s4, s5, t0
                  xori         t0, t1, 1996
                  slt          a6, s6, t5
                  xori         t5, a6, 1224
                  nop
                  slt          t5, t3, tp
                  sltu         s2, s6, s8
                  sub          ra, t3, a3
                  sra          s9, a0, t6
                  andi         gp, a1, -2008
                  sltiu        s7, t6, 1365
                  sltu         t3, t4, ra
                  sll          a6, a6, ra
                  sltiu        a3, s11, -720
                  srl          t5, t2, t4
                  srl          s7, t5, t2
                  auipc        a6, 72316
                  slt          t1, s6, a4
                  addi         s8, t1, 1497
                  sra          gp, a4, s5
                  srai         s6, a7, 14
                  srl          gp, tp, gp
                  sra          s8, t0, t5
                  sub          s0, zero, s4
                  sltu         gp, s7, s0
                  xor          t3, s8, s6
                  slti         ra, a2, 1409
                  slli         a6, a0, 17
                  or           gp, s10, t4
                  addi         t2, a2, 1897
                  lui          ra, 757043
                  slli         gp, zero, 28
                  nop
                  nop
                  xor          a6, t2, s9
                  lui          s5, 24736
                  sltiu        t1, t4, 1657
                  srai         tp, tp, 6
                  auipc        t2, 915936
                  srli         zero, s3, 8
                  nop
                  add          a6, a3, t0
                  addi         a5, t4, -1595
                  sub          s8, a0, s10
                  sll          a6, t3, a6
                  addi         t4, gp, -739
                  lui          s8, 79897
                  add          tp, s3, a3
                  srli         a6, s2, 22
                  srl          s4, a2, a7
                  sra          s5, s6, a7
                  sra          t5, s3, a7
                  or           t4, sp, s3
                  srl          t5, s1, t5
                  slt          s6, a2, a0
                  addi         s7, a0, 536
                  xori         a2, t5, 1352
                  or           s6, s5, s11
                  addi         tp, ra, -1254
                  sltu         s9, a7, t6
                  xor          t5, s2, t6
                  sub          s8, tp, s1
                  ori          zero, a2, -875
                  sub          a5, s3, s7
                  ori          t4, a7, 1458
                  slt          s8, zero, s6
                  and          s4, ra, t4
                  sltu         s4, a6, s10
                  slti         s1, s7, -1628
                  srli         t5, sp, 9
                  sltu         a6, a5, s11
                  sltu         gp, t0, tp
                  sub          s1, t5, s9
                  slti         s10, s11, -1318
                  lui          s9, 975210
                  sltu         t3, s2, zero
                  andi         s8, s9, -2010
                  sltu         s2, s6, gp
                  add          gp, a0, zero
                  lui          s8, 610418
                  and          gp, tp, s3
                  addi         a3, s4, 225
                  slt          t3, s0, gp
                  addi         t4, a6, 1946
                  srli         s0, tp, 5
                  xor          t5, t4, a2
                  xor          t2, a6, t0
                  sll          a4, s7, t1
                  ori          s5, a0, -948
                  auipc        a7, 937840
                  add          s10, a0, s0
                  andi         a0, t5, -442
                  slti         t2, t1, 963
                  and          a6, s10, s8
                  ori          sp, ra, 895
                  lui          s8, 283066
                  slti         t1, t2, 1678
                  sltiu        s9, s8, 953
                  srl          tp, s10, a5
                  slti         t5, s2, 1682
                  xori         a4, s1, 285
                  addi         s9, tp, 360
                  slli         s10, a7, 14
                  and          t1, a7, a2
                  andi         s1, a2, -1103
                  add          t2, t1, s9
                  slli         s9, s1, 29
                  sll          s0, s9, s1
                  sltu         s5, zero, s3
                  addi         s8, tp, 810
                  sltiu        s9, t3, 1422
                  sltu         s7, a1, s8
                  srli         a0, a1, 19
                  andi         t5, s5, 1868
                  slti         t6, t5, -880
                  slli         zero, s5, 21
                  srli         s2, zero, 18
                  slt          zero, a4, s10
                  add          t5, s8, ra
                  xor          a0, s8, t1
                  or           t3, a2, s0
                  sra          t3, gp, t3
                  xori         t0, s1, -1003
                  auipc        a6, 128925
                  srai         t5, a2, 19
                  and          s0, s2, ra
                  ori          tp, t1, -895
                  xori         a5, a6, 1733
                  addi         s4, a6, -460
                  srai         t4, tp, 24
                  ori          t3, s4, -1547
                  slti         t1, s6, -394
                  or           s5, sp, t2
                  auipc        t6, 739572
                  sltu         a3, sp, a2
                  auipc        zero, 136173
                  add          a3, s1, a1
                  auipc        a0, 941708
                  xor          a2, ra, t0
                  slli         s1, s8, 28
                  sltu         s2, t4, t0
                  add          t6, sp, t0
                  slli         t6, s2, 6
                  sll          s5, t5, s4
                  xori         t1, s11, 791
                  xori         t0, t1, 449
                  lui          t4, 523187
                  slli         t3, t5, 18
                  add          a3, gp, a5
                  or           s8, s7, s3
                  andi         t0, s0, -1784
                  ori          t5, s7, -935
                  andi         s1, a4, 1207
                  sltu         s1, t6, a6
                  slli         t6, t1, 6
                  addi         tp, s2, 1520
                  srli         s10, a7, 20
                  or           sp, s4, zero
                  sub          s10, t1, a5
                  auipc        s1, 975887
                  auipc        s2, 531067
                  slti         t6, s6, 190
                  slli         t2, a6, 31
                  auipc        s9, 150585
                  lui          s5, 582580
                  srl          s1, a5, ra
                  add          t0, a3, s6
                  sltiu        s7, t2, -414
                  sra          s10, a4, a6
                  xor          s1, tp, s11
                  addi         s4, tp, 1001
                  or           t0, a4, s8
                  srai         a4, a2, 30
                  andi         tp, a0, 423
                  lui          s5, 971505
                  sll          a3, a5, s10
                  sll          s0, a4, t2
                  lui          zero, 660672
                  auipc        a7, 718347
                  lui          gp, 692772
                  ori          s6, a6, 183
                  xori         a6, s3, -1573
                  sltu         a7, gp, tp
                  and          ra, a4, s6
                  sra          a4, a4, a0
                  slt          t1, s11, s6
                  add          t1, s8, a7
                  add          t5, s0, gp
                  xori         a5, s9, -1479
                  xori         gp, s0, -1035
                  xori         a3, s1, 1968
                  and          gp, a6, a0
                  sub          t1, s0, s4
                  sll          t2, a2, s6
                  auipc        t2, 386899
                  sra          s9, t5, t3
                  xori         s10, sp, -263
                  lui          a4, 289945
                  sltiu        sp, s8, 1588
                  nop
                  auipc        a3, 428265
                  srli         a5, zero, 9
                  xori         a4, a4, -492
                  srl          sp, s0, zero
                  xor          s0, a1, a4
                  add          t0, t5, t3
                  srli         s6, a6, 20
                  nop
                  add          a0, s8, t0
                  sll          a4, s7, s10
                  srai         s5, s1, 25
                  sltu         s10, a1, s4
                  sltiu        s8, s10, 1164
                  ori          a6, s4, 727
                  sltu         a4, s7, s10
                  sll          t2, a7, s1
                  sra          s8, t2, a0
                  andi         s10, tp, 449
                  sub          s1, zero, gp
                  srai         s5, t0, 10
                  sll          a2, s2, s4
                  sll          gp, s9, s3
                  xor          t6, s2, s4
                  slli         t1, s2, 26
                  auipc        s1, 973599
                  add          t5, a7, s6
                  slti         s1, s3, 50
                  srli         t4, a4, 0
                  and          a5, t5, t1
                  andi         s2, t0, -1097
                  auipc        a7, 15809
                  sra          a0, a3, t2
                  or           s1, a1, s6
                  slli         gp, tp, 8
                  nop
                  and          t0, s1, zero
                  and          t1, s5, a7
                  xori         t0, s0, -1732
                  add          a7, a1, s10
                  ori          s1, tp, -189
                  nop
                  or           gp, s3, s3
                  andi         a4, a6, -473
                  slti         s7, s3, 1238
                  xori         t4, t5, -186
                  xori         a7, s3, -98
                  xori         s4, s5, -900
                  sub          t6, s2, t1
                  slti         s8, t5, 878
                  slti         t6, t3, -447
                  xor          t6, a6, ra
                  sltu         tp, t4, a4
                  slti         gp, t0, -753
                  sra          s7, s1, s8
                  xori         tp, s5, -1385
                  xor          s7, s7, t4
                  lui          t0, 799263
                  sra          t3, t0, s0
                  xor          tp, a5, s3
                  add          s10, s9, a2
                  sra          s5, t5, t5
                  srai         t5, zero, 11
                  srai         s5, a3, 29
                  sra          sp, s5, a6
                  srai         tp, zero, 25
                  andi         t2, t2, 964
                  lui          zero, 802124
                  sra          a2, a4, t3
                  ori          s6, a1, -1217
                  srli         s2, s2, 14
                  nop
                  or           s0, s10, s7
                  slli         s9, t0, 7
                  lui          s10, 48064
                  srli         s6, t0, 16
                  srl          a2, t0, s7
                  nop
                  andi         s8, t2, 40
                  addi         s9, a5, -595
                  xor          a0, s3, a1
                  xor          s10, t5, s3
                  slli         s1, s5, 9
                  and          a2, a1, gp
                  slt          s1, tp, s5
                  slt          a2, s10, a4
                  slti         a4, zero, 378
                  sll          a4, sp, s4
                  sltu         a2, s9, tp
                  xori         a6, ra, 1855
                  andi         s9, a2, -923
                  addi         sp, s7, 1313
                  or           s0, a6, s0
                  xor          a4, a0, s7
                  sub          a3, tp, tp
                  nop
                  srli         t3, a1, 5
                  srli         ra, s0, 25
                  sub          a5, a6, sp
                  sltiu        s2, a7, -378
                  xori         a5, t2, 242
                  srl          a7, t4, a5
                  slti         zero, sp, 758
                  slti         gp, t2, -172
                  sra          a7, a5, s4
                  sll          t5, sp, t4
                  andi         t1, a1, -1298
                  and          s8, a6, a1
                  sll          ra, t5, gp
                  srl          gp, a0, t3
                  slti         a5, a2, -251
                  addi         s4, s4, 1338
                  slli         s10, s2, 18
                  srai         a7, zero, 0
                  sub          s4, s1, zero
                  auipc        s6, 585966
                  sll          a0, s0, a6
                  sra          t0, a5, s10
                  nop
                  auipc        s5, 546112
                  sub          s0, sp, a6
                  xor          a5, s6, s2
                  sra          t6, zero, t2
                  srl          a3, a0, a6
                  auipc        a3, 518804
                  xor          t5, t2, s9
                  sltiu        gp, a1, 1802
                  nop
                  slti         a7, sp, -1398
                  sltu         a0, a0, a3
                  srai         s9, ra, 13
                  and          t6, a0, ra
                  auipc        sp, 799324
                  or           s1, s6, s11
                  srai         t4, a3, 10
                  srli         s1, s2, 3
                  sub          s1, s8, t6
                  slli         a3, t4, 6
                  sll          sp, gp, t4
                  and          a4, s0, t3
                  sll          t2, zero, t6
                  slti         s7, sp, -1280
                  sra          a2, s10, t0
                  sub          s9, a0, a1
                  nop
                  slti         s4, t4, -461
                  xor          gp, a1, a4
                  addi         a0, t4, -941
                  andi         t5, ra, 1432
                  sra          tp, t4, a3
                  auipc        s7, 488419
                  slt          t4, t4, s8
                  srl          tp, t2, t0
                  and          t0, s11, t4
                  srai         s4, s6, 19
                  and          a0, t4, t2
                  andi         sp, s10, 1129
                  sll          s10, s11, ra
                  sra          s4, a0, a1
                  srl          a0, a4, s9
                  auipc        s8, 576056
                  andi         s0, a5, 1794
                  sltiu        t3, s6, 1120
                  nop
                  srai         a3, t5, 23
                  addi         t1, sp, 1253
                  sra          s6, s9, t6
                  slti         t4, s10, -299
                  nop
                  lui          s9, 86433
                  xor          s6, s1, t4
                  xor          a2, a6, s2
                  nop
                  and          s1, s6, s1
                  srl          s6, t3, t0
                  xori         ra, s11, -304
                  or           a4, t0, s8
                  srl          a7, s8, s0
                  sltiu        s0, t1, -1058
                  lui          t1, 387664
                  addi         gp, t3, 1155
                  sltu         s0, a5, s4
                  sub          a6, s10, s4
                  or           s1, s10, t6
                  nop
                  sltu         a7, s0, s5
                  xor          gp, a0, ra
                  sltu         s6, a5, t1
                  slt          zero, t6, a5
                  sub          ra, t5, s8
                  sll          a5, a4, s9
                  addi         t3, s2, 524
                  slti         a4, t3, 1387
                  sltu         a0, s10, s6
                  or           t3, zero, s1
                  addi         s10, a6, 288
                  ori          s1, a2, -144
                  sra          t6, t2, s10
                  addi         a6, t1, -1316
                  xor          tp, t6, s7
                  srl          t2, a0, zero
                  srl          ra, a1, gp
                  sltu         zero, s5, a0
                  nop
                  slti         tp, s3, 743
                  sll          t0, t3, a3
                  add          t0, s11, s9
                  sra          tp, s0, s10
                  add          s7, s7, s6
                  sltu         s8, s9, t0
                  slt          a3, a0, s3
                  xori         t3, s5, 1688
                  slti         ra, t3, 559
                  xori         zero, s3, 293
                  slti         a5, s11, -1832
                  or           s7, s10, zero
                  sltu         ra, s5, t0
                  or           a3, ra, s0
                  and          s9, s0, a4
                  ori          tp, t1, 1759
                  add          a6, a5, s10
                  srli         gp, s2, 20
                  sub          t3, a6, zero
                  xori         t1, t5, -1115
                  sll          t2, a4, t5
                  auipc        t0, 324902
                  ori          tp, s5, -754
                  add          t1, s9, a0
                  xori         s1, a3, -784
                  and          zero, tp, t1
                  nop
                  sra          a2, t6, t4
                  sra          a6, t1, s10
                  xori         s0, s3, 1599
                  addi         t5, s4, 162
                  sra          a0, a3, a5
                  andi         t6, a2, 95
                  addi         s8, t4, -31
                  slti         s10, s8, -1845
                  sltiu        a5, a7, 1452
                  slti         a6, t1, -11
                  lui          s0, 384519
                  slti         zero, gp, 305
                  andi         t5, a4, -1916
                  auipc        sp, 496261
                  sltu         a6, tp, s11
                  sra          a0, sp, a4
                  srl          a6, zero, t3
                  add          a4, a6, a7
                  add          t0, sp, a7
                  sub          t5, t0, gp
                  srl          a7, t3, a1
                  sra          zero, s4, zero
                  slt          t4, s3, s1
                  sltu         t6, t6, t2
                  slt          a7, s2, s9
                  srai         t2, zero, 15
                  xor          a7, t3, s5
                  xor          t3, a2, zero
                  nop
                  slti         t4, tp, -783
                  nop
                  and          s0, s9, a5
                  andi         s9, ra, -457
                  srli         s10, s5, 1
                  sll          t4, a4, s5
                  sltiu        a5, tp, 1456
                  slti         s1, t2, -1842
                  sltu         s5, t5, t0
                  sltu         t6, s7, s11
                  slt          a3, s0, t1
                  slt          tp, a4, a6
                  slli         a6, t5, 7
                  srai         ra, s9, 14
                  andi         a6, s0, -474
                  srl          t5, s3, s3
                  slli         ra, a3, 27
                  sltiu        ra, t1, 632
                  slt          t6, a2, s6
                  ori          sp, t4, 1026
                  ori          s8, t1, -1629
                  andi         t3, s2, -1435
                  lui          s2, 74997
                  xor          t6, s6, s10
                  srai         s7, s4, 8
                  and          s4, t1, t0
                  lui          zero, 155993
                  nop
                  sll          s2, s7, a5
                  sub          t2, s5, a2
                  slti         s2, s5, -31
                  sltu         s6, t5, a1
                  xor          a7, t4, s8
                  srli         sp, a6, 28
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           t4, 0x0
                  li           a4, 0x0
                  li           t2, 0x80000000
                  li           t5, 0x80000000
                  li           sp, 0x0
                  li           s2, 0x5fdf2416
                  li           s5, 0xffffffff
                  li           a3, 0xfeceb07e
                  li           tp, 0xffffffff
                  sub          sp, t6, t5
                  addi         a4, sp, 1964
                  sub          t5, s2, s2
                  sub          s2, t2, t5
                  sub          t6, t5, sp
                  nop
                  lui          t2, 742405
                  add          s2, tp, sp
                  addi         t5, tp, -939
                  auipc        sp, 423759
                  lui          s2, 956700
                  lui          t6, 730276
                  auipc        a3, 1047351
                  nop
                  addi         tp, t5, -1801
                  lui          tp, 306223
                  add          a3, t5, sp
                  auipc        t5, 629948 #end riscv_int_numeric_corner_stream_19
                  and          s6, s7, sp
                  nop
                  xor          s10, a4, s2
                  slli         a7, s11, 20
                  srl          t1, t5, s1
                  srai         a2, a5, 25
                  xori         a4, a0, -316
                  slt          sp, t0, sp
                  sub          t4, zero, s11
                  xor          s7, s2, a0
                  add          t0, t5, t1
                  ori          gp, t2, 531
                  slt          t4, gp, a3
                  xor          t3, a4, t4
                  sra          s6, ra, a4
                  srli         s9, s10, 4
                  sltu         t5, a2, tp
                  xori         a7, t2, 578
                  sll          a4, s3, a4
                  sltiu        t2, a1, -436
                  sltu         t1, t2, a6
                  sll          s2, s8, zero
                  nop
                  and          s5, s7, s11
                  slli         s6, s8, 0
                  add          a5, s8, a1
                  srli         a2, s0, 17
                  srli         a6, s7, 14
                  sltiu        s2, t1, 1466
                  sltiu        s0, a6, 1090
                  sltiu        s1, s11, 1190
                  xor          s1, zero, s8
                  sll          t0, a7, t6
                  xori         zero, s11, -1004
                  auipc        s2, 10983
                  and          a4, tp, gp
                  slli         t0, s4, 12
                  sll          s2, a3, s0
                  sltu         s0, sp, s8
                  sltiu        s4, a5, -1478
                  ori          sp, zero, -341
                  add          a3, s9, s6
                  and          s2, s4, s2
                  ori          tp, gp, 491
                  sltu         a3, s4, s8
                  sll          t1, s10, t1
                  lui          s1, 64881
                  andi         a2, a7, 1371
                  srl          s0, s9, t3
                  xor          s9, t0, ra
                  slti         t5, s5, -1211
                  sub          t5, s6, s1
                  nop
                  srai         s4, t0, 29
                  sltu         a6, t2, ra
                  lui          t1, 733168
                  sll          s6, s6, a4
                  sra          s8, s11, a7
                  srl          t2, a2, gp
                  auipc        t1, 535192
                  or           s8, sp, t4
                  or           sp, s3, s2
                  srl          s2, a1, gp
                  ori          zero, tp, -1772
                  addi         a3, t1, 1472
                  srl          a0, a4, zero
                  sltiu        s0, a6, -1971
                  nop
                  slti         t3, ra, -1066
                  or           a7, s1, s1
                  nop
                  lui          s4, 3893
                  auipc        s8, 910974
                  auipc        t0, 644792
                  xor          sp, s5, a2
                  ori          sp, t0, -975
                  sltiu        t4, t3, 178
                  xor          s9, s9, s11
                  sll          zero, a6, s8
                  sub          s0, s4, sp
                  lui          tp, 475075
                  ori          t6, tp, -431
                  lui          s1, 252722
                  sltu         t6, s11, a7
                  srli         s1, a0, 29
                  sra          s7, s5, t5
                  srai         s0, a4, 31
                  nop
                  and          t0, s1, s5
                  srai         s1, a5, 31
                  nop
                  sub          t4, s1, s6
                  add          s9, s10, s3
                  srli         a0, s2, 23
                  and          t0, t3, s5
                  slt          t1, a5, a5
                  and          tp, ra, s2
                  sra          ra, s4, s9
                  addi         t6, a5, -1194
                  sltiu        t5, a5, -1727
                  and          s5, s11, zero
                  sltiu        a3, t2, -1175
                  xori         a5, s0, -1631
                  sltiu        t2, t0, 151
                  sub          s0, tp, a6
                  srli         a3, t4, 9
                  ori          t4, a6, 82
                  srai         a5, t1, 23
                  addi         a4, s3, -1692
                  slli         a5, sp, 8
                  andi         a5, gp, 86
                  auipc        a7, 724829
                  auipc        sp, 581166
                  srl          s0, t5, s7
                  lui          t5, 465970
                  srli         t2, a5, 9
                  slt          s1, s4, ra
                  add          a6, t0, a5
                  or           t4, t3, s9
                  sltiu        gp, s10, 1600
                  andi         ra, t2, 1041
                  sll          s1, s1, ra
                  lui          zero, 904232
                  slt          a4, t2, t4
                  xor          s1, s6, s4
                  srli         zero, a7, 10
                  lui          a4, 271950
                  slli         t3, a7, 26
                  slli         a4, sp, 7
                  slti         s1, t5, 1296
                  andi         a0, s5, -537
                  nop
                  sll          sp, s9, zero
                  add          sp, t1, s4
                  slt          t2, tp, t1
                  sll          a7, s2, s3
                  xor          gp, t4, a3
                  xori         t3, t6, -931
                  srli         s5, t3, 10
                  addi         s10, s0, -1829
                  and          s0, s8, t0
                  sltu         a7, a6, s10
                  addi         s2, zero, -1678
                  slti         t2, s4, -896
                  and          t0, s11, a3
                  addi         a5, s1, -1685
                  xori         a0, s9, 651
                  xori         a7, t5, -391
                  andi         s7, t1, -691
                  addi         t4, ra, -956
                  slti         s7, sp, -1273
                  slti         s5, s4, -1770
                  srl          gp, t0, tp
                  sltiu        t0, a2, 1878
                  andi         t2, s5, 605
                  andi         gp, t4, -1550
                  andi         a6, a0, 1861
                  nop
                  sltiu        t0, s0, -2022
                  nop
                  xor          a4, t6, t5
                  nop
                  auipc        ra, 316376
                  slti         s0, s5, 1765
                  lui          gp, 84995
                  sll          s10, a0, t4
                  andi         t2, s1, -5
                  slti         s5, s1, 1563
                  sltiu        a5, t2, -770
                  sra          a0, t0, a2
                  slt          a2, t4, tp
                  ori          a5, t2, 474
                  xor          s5, a3, t5
                  slli         t3, a7, 1
                  nop
                  lui          a0, 1025764
                  srl          s6, s11, s9
                  lui          a4, 149013
                  or           s5, s0, a1
                  xor          t0, gp, s1
                  andi         s1, s0, 929
                  andi         s5, a5, -194
                  lui          a2, 779591
                  lui          ra, 840819
                  slt          t3, a7, s2
                  nop
                  srl          s6, a2, s2
                  and          a5, a5, a6
                  srli         t6, a6, 2
                  nop
                  auipc        s9, 314155
                  srai         a7, zero, 31
                  xori         zero, t0, -1834
                  lui          gp, 971167
                  xor          t3, a3, t3
                  sub          a3, s1, sp
                  or           zero, s10, s6
                  sra          s0, a7, s10
                  sltiu        s4, a3, -1002
                  srai         sp, s8, 20
                  xor          s1, s7, a7
                  sltu         gp, ra, t5
                  sltu         zero, a2, s8
                  addi         sp, t0, -1797
                  slti         a2, a7, -539
                  xor          a0, s9, t0
                  addi         a2, a6, -1990
                  xori         a0, a6, -1060
                  sltu         s10, a0, s0
                  ori          t6, a6, -1878
                  nop
                  add          s2, a7, s5
                  add          s10, s4, t0
                  sub          tp, a2, a3
                  sub          sp, sp, a1
                  srai         a2, s3, 0
                  andi         a0, gp, 1446
                  nop
                  ori          s6, s9, -2023
                  xori         t6, s10, -1641
                  and          t1, s6, s8
                  slt          t4, a3, t6
                  sltu         t5, zero, a5
                  or           s0, s0, sp
                  xori         a2, s8, 1033
                  sltiu        a3, sp, -1452
                  slt          s9, a4, t5
                  srl          zero, s0, s11
                  sub          tp, s1, a3
                  lui          a6, 494178
                  srli         t2, s7, 10
                  and          a4, a3, zero
                  srl          t4, a6, ra
                  sub          a5, tp, s3
                  srl          t6, s8, a1
                  xori         a0, a6, -388
                  add          s4, t2, t6
                  sra          t0, t3, a3
                  auipc        s5, 222417
                  or           s4, s2, t2
                  srl          s0, a5, zero
                  addi         a6, a0, 375
                  auipc        a5, 408938
                  addi         t6, gp, 2037
                  slti         gp, gp, 1303
                  srai         s9, a0, 24
                  xori         tp, a7, 373
                  srli         t0, t6, 13
                  sltiu        t1, t2, 1458
                  slt          s10, s7, t5
                  nop
                  ori          s7, s9, -743
                  andi         t2, tp, 876
                  slti         s1, t5, -1168
                  addi         t4, t2, 44
                  sub          t5, t0, a6
                  slti         tp, a5, 105
                  lui          t3, 853057
                  sltiu        t0, t4, -1847
                  slli         zero, gp, 7
                  xori         a3, t5, 1337
                  and          t2, a7, t4
                  auipc        t3, 843821
                  ori          s4, s8, 211
                  slli         s9, t0, 29
                  slt          t1, t3, s8
                  slti         s4, t4, -1575
                  addi         s0, s3, -951
                  sll          zero, s11, t4
                  add          a2, ra, a5
                  addi         a6, a0, -1356
                  xor          t4, t4, s10
                  srli         s10, a1, 14
                  andi         s2, a0, -1420
                  sltu         s1, a2, s1
                  slli         t2, s3, 21
                  srl          tp, a5, a7
                  andi         s8, sp, 1871
                  add          t0, a3, s4
                  nop
                  srl          zero, a3, t2
                  sra          s7, s1, s10
                  lui          t0, 492038
                  srai         a5, s7, 0
                  andi         a2, s9, 125
                  sra          s4, a0, s1
                  srli         t5, s1, 4
                  auipc        t2, 127184
                  slli         tp, s7, 26
                  addi         t1, t5, 264
                  lui          t5, 628968
                  sra          s1, gp, s0
                  and          a6, t4, s11
                  xori         t1, s11, -1079
                  ori          t1, s11, 645
                  xor          s10, s4, tp
                  or           t3, s10, zero
                  sltu         tp, t4, s4
                  srai         a0, s10, 27
                  auipc        t6, 357931
                  xor          s0, s1, s1
                  or           a5, s2, a6
                  lui          a7, 862851
                  lui          a3, 337812
                  srl          s6, t1, t1
                  srli         s1, t1, 23
                  sra          t4, s1, s0
                  srli         a4, a4, 9
                  sltiu        t3, a0, -338
                  andi         s4, a1, 210
                  nop
                  sltu         s10, s11, sp
                  xori         t1, s4, 54
                  auipc        t4, 79526
                  slti         t4, a4, -1644
                  xori         a7, s6, -1840
                  srli         s7, zero, 7
                  add          s1, t4, t3
                  slti         t1, s1, 956
                  slt          a7, t1, s9
                  xori         s7, t1, 1306
                  sra          a0, s1, s11
                  andi         zero, t2, -1611
                  sltu         a5, s5, a0
                  lui          s8, 885645
                  xori         ra, s11, -1413
                  andi         s6, s6, -1868
                  xor          s5, tp, s10
                  srli         a7, t3, 9
                  addi         t4, tp, 1076
                  sll          s2, t1, sp
                  auipc        s7, 300412
                  nop
                  sra          s7, s10, s8
                  sub          t4, a0, s5
                  xor          a2, s2, a2
                  srl          a4, s9, s10
                  sra          a3, a4, s5
                  srai         a7, t5, 0
                  sltu         t5, tp, t3
                  sltu         s4, s10, a1
                  add          t1, t3, a7
                  xor          t3, zero, a4
                  srai         t6, s2, 18
                  srai         t1, a7, 15
                  srai         s5, s7, 23
                  addi         a4, s11, -1240
                  auipc        a7, 849501
                  sll          t3, ra, s1
                  and          s6, a2, s6
                  sub          s0, gp, s7
                  li           a7, 0x1289af7a #start riscv_int_numeric_corner_stream_18
                  li           s10, 0x80000000
                  li           t2, 0xffffffff
                  li           a5, 0x0
                  li           gp, 0x0
                  li           t0, 0x0
                  li           s9, 0x80000000
                  li           s6, 0xffffffff
                  li           ra, 0x0
                  li           t1, 0xa752dc6b
                  lui          s10, 74270
                  addi         a5, t2, -541
                  add          gp, t2, s10
                  nop
                  sub          s10, a7, t2
                  add          s9, s6, t2
                  add          gp, s10, t1
                  lui          s10, 25531
                  addi         t0, gp, -226
                  lui          a7, 705543
                  sub          a7, t1, t1
                  lui          t2, 122757
                  lui          a5, 587341
                  add          a7, a5, gp
                  lui          t1, 936443
                  nop
                  auipc        s6, 803692
                  addi         s9, gp, -341 #end riscv_int_numeric_corner_stream_18
                  andi         t0, t0, -1460
                  sll          s7, s5, ra
                  srai         a3, s8, 0
                  srai         t1, s3, 1
                  lui          tp, 938776
                  slli         t3, t6, 13
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           s1, 0x708638f3
                  li           t3, 0x0
                  li           t0, 0xffffffff
                  li           a3, 0xf1b4ef79
                  li           s5, 0xffffffff
                  li           a5, 0x80000000
                  li           t5, 0x80000000
                  li           s10, 0x0
                  li           t4, 0x0
                  nop
                  auipc        t0, 345391
                  sub          t0, t5, s5
                  addi         t5, t0, 909
                  sub          s5, t4, t4
                  sub          t4, s10, s6
                  addi         t3, s6, 1791
                  add          t3, s5, s6
                  add          t3, s5, s10
                  addi         s5, a3, -926
                  sub          s10, a3, t5
                  sub          t5, t3, a5
                  add          a3, t3, s5
                  sub          a5, t4, s1
                  add          t5, s6, t3
                  nop
                  lui          s5, 311639
                  add          s10, s5, t5
                  lui          t4, 62779
                  add          s6, a3, t4
                  add          s10, s5, t0
                  auipc        t4, 718704
                  auipc        s5, 940219
                  sub          t0, a5, a5 #end riscv_int_numeric_corner_stream_1
                  xori         gp, t2, -1758
                  slt          s10, t5, a0
                  auipc        t1, 689346
                  addi         sp, s7, 1233
                  slli         t0, a7, 19
                  andi         s6, s2, -2026
                  sltu         ra, s9, s4
                  and          s9, s8, t0
                  xor          t2, t6, s11
                  nop
                  auipc        s9, 857413
                  ori          s10, s4, -796
                  auipc        a7, 740795
                  srl          s1, zero, ra
                  xor          s4, a7, t1
                  srli         tp, a0, 21
                  or           t1, s3, s6
                  sra          zero, a6, s1
                  addi         a4, s3, 1792
                  slli         a3, a1, 9
                  or           a2, t0, t1
                  xor          s10, a3, tp
                  and          s7, s0, s1
                  srli         t2, ra, 27
                  addi         a4, s6, -1146
                  xor          s1, t5, t1
                  slti         s5, t0, -1353
                  slt          s8, tp, t6
                  sub          s1, t1, ra
                  lui          t6, 333200
                  ori          t2, t3, 695
                  nop
                  add          t2, s11, a2
                  slli         s5, s6, 16
                  srli         a7, sp, 27
                  lui          s7, 350664
                  slti         tp, a6, -1356
                  xori         a4, s3, 647
                  srai         a2, tp, 28
                  ori          s1, s8, -1165
                  xor          s0, s5, tp
                  sll          t3, s10, a0
                  add          t0, s7, s11
                  srai         s7, ra, 3
                  sltiu        a6, sp, -687
                  slt          a4, a2, a3
                  srl          a2, s3, s7
                  sra          a6, t1, s4
                  and          a6, a2, a3
                  slt          t0, t5, t6
                  slti         zero, t4, 1155
                  sub          s2, sp, s6
                  nop
                  xori         t4, s11, 1282
                  auipc        t0, 206580
                  srli         a7, gp, 11
                  sltiu        s1, t1, -1713
                  slt          s1, s2, s11
                  xori         s2, s2, 1641
                  sltiu        a2, s9, -963
                  xori         t6, s8, 1981
                  addi         tp, a0, 1853
                  xori         tp, a3, -152
                  srl          tp, gp, a1
                  lui          a4, 168290
                  slli         s9, t2, 4
                  lui          s8, 902410
                  sub          s7, s7, a3
                  slli         s7, s6, 1
                  sra          a7, s4, a6
                  add          t5, t5, s10
                  or           a7, a7, s0
                  sll          s8, sp, a4
                  sltiu        t3, t1, -1933
                  slli         s4, a7, 2
                  lui          a4, 782693
                  xori         s1, t2, 1994
                  addi         tp, t2, 1575
                  sub          sp, t0, t5
                  addi         a5, t4, 1585
                  lui          a5, 124411
                  ori          s5, s2, 334
                  nop
                  lui          a2, 716260
                  or           sp, s1, s4
                  nop
                  add          t4, s5, t5
                  xori         s6, t2, -1942
                  or           t1, s10, s6
                  slt          s8, s2, s8
                  sll          tp, a6, a1
                  slti         s8, s4, -495
                  slti         t1, ra, 2044
                  add          t1, a2, tp
                  slli         t4, a7, 1
                  sltiu        t3, s2, -1308
                  sll          a3, a2, gp
                  auipc        s0, 347081
                  sra          s10, s0, t0
                  andi         s2, s9, -1598
                  nop
                  nop
                  sll          zero, s0, t6
                  sll          a4, zero, a1
                  and          t2, s3, s7
                  nop
                  sltu         a2, a0, s9
                  or           s0, s9, s5
                  nop
                  or           s8, t3, sp
                  add          zero, a3, ra
                  and          t0, sp, s2
                  sub          t6, s11, ra
                  or           a3, s1, t3
                  sll          s0, a2, s4
                  xor          s0, t0, a4
                  srli         s8, t4, 21
                  and          a3, a1, t0
                  srli         s8, t6, 7
                  and          zero, gp, s1
                  slt          t2, s3, s8
                  ori          s1, s3, -1512
                  slt          t3, a1, s1
                  slt          s1, ra, s10
                  add          s6, a5, a0
                  sub          t1, t4, s3
                  or           s0, a2, a5
                  and          t2, s6, t3
                  sll          ra, s2, s3
                  add          s0, s11, s6
                  and          ra, a7, s3
                  auipc        s4, 623397
                  lui          zero, 812170
                  srl          zero, gp, t6
                  slt          t2, a2, t0
                  addi         t6, a1, -1985
                  auipc        t5, 77319
                  srli         s0, s8, 9
                  auipc        s4, 855875
                  sub          s6, s0, s5
                  sra          a7, a4, s11
                  and          t4, s10, tp
                  and          a0, zero, s8
                  slli         a0, s10, 8
                  auipc        gp, 355772
                  and          a6, s10, s6
                  ori          s0, s11, 303
                  lui          t4, 665218
                  xor          t6, s4, t6
                  lui          t6, 759698
                  ori          a0, s8, -483
                  ori          s5, t5, 437
                  sra          t1, s3, s5
                  srl          a6, t4, a5
                  add          gp, s8, s6
                  sltiu        a7, a1, 2046
                  or           s0, s1, t6
                  sll          sp, s5, ra
                  sra          s10, s7, a1
                  sra          t5, t0, a4
                  sltu         s8, s8, s3
                  auipc        ra, 703984
                  xori         t5, t3, 1174
                  slti         s2, a0, -1277
                  xori         t5, s0, 138
                  ori          s8, a3, 1191
                  srai         t0, sp, 16
                  sub          s8, s11, t6
                  sltu         gp, t3, t3
                  sltiu        tp, a0, -805
                  srli         s10, s5, 25
                  add          sp, sp, ra
                  add          t6, t6, t6
                  sltiu        zero, t1, -1890
                  and          a7, s11, s4
                  and          s4, sp, s4
                  slti         a6, a2, 373
                  andi         a6, tp, -1400
                  addi         a2, ra, -681
                  slli         s7, s6, 13
                  sub          s10, s0, s4
                  xor          t6, s3, s4
                  sub          a6, a5, t1
                  add          s8, gp, s2
                  or           s7, a5, s8
                  xor          s6, t4, s9
                  slti         a2, gp, -381
                  lui          s7, 845458
                  srai         a4, t5, 29
                  sub          s5, zero, ra
                  sub          a0, s7, s6
                  nop
                  add          s1, s10, a2
                  xor          s9, s5, t1
                  and          a3, a7, s3
                  sll          a3, t4, a7
                  slt          s2, s0, t1
                  sra          s1, s9, a1
                  sll          a4, a7, s11
                  sll          a5, t5, s2
                  ori          tp, s10, 1238
                  sltu         gp, a4, gp
                  sltiu        t0, s4, 428
                  add          s4, t6, t0
                  or           a4, zero, a7
                  nop
                  and          s8, s8, t3
                  sltu         s1, gp, s8
                  and          s7, zero, zero
                  sll          t4, t4, zero
                  srai         a2, s6, 23
                  lui          a6, 384387
                  srli         t3, s2, 9
                  sll          t5, sp, s6
                  xori         sp, s11, 231
                  lui          t3, 76934
                  lui          t2, 692578
                  sra          a6, sp, s6
                  addi         sp, a7, -2017
                  slli         s5, s4, 31
                  srai         ra, gp, 31
                  nop
                  auipc        a6, 664027
                  slti         s4, t0, 95
                  slt          a3, ra, s9
                  srli         a4, t4, 23
                  sltu         s6, a1, a0
                  addi         t3, a6, 400
                  sll          t6, t5, t5
                  slti         s9, a7, 1792
                  andi         s6, s10, -1639
                  or           s2, t1, s5
                  nop
                  sub          gp, tp, a1
                  auipc        ra, 812319
                  srl          gp, a1, a3
                  sll          t3, a1, a3
                  sra          a7, t1, s6
                  srai         s8, s8, 31
                  slli         s8, t0, 12
                  sltiu        a6, a5, -858
                  sltiu        s5, ra, -439
                  add          a0, s1, s4
                  add          a3, s11, s2
                  andi         a4, s11, 1402
                  srli         t5, s2, 1
                  ori          s0, s1, 146
                  andi         s10, a3, 1922
                  addi         t0, t4, 509
                  srl          s6, s0, tp
                  srli         s1, t2, 2
                  nop
                  xor          s6, a4, s10
                  or           a5, s7, a7
                  and          s2, t6, s10
                  add          s6, t1, t0
                  slt          t5, t3, a4
                  sltiu        a5, a0, 294
                  sltiu        a5, t4, 1367
                  slti         s8, s5, 1994
                  auipc        s0, 456159
                  and          s6, t1, t4
                  sll          s10, tp, a3
                  andi         s5, s3, 691
                  addi         zero, tp, -1385
                  andi         s6, s8, -452
                  or           a3, t5, a4
                  or           ra, a4, zero
                  sra          s5, s5, s5
                  or           t2, s4, s7
                  sub          s8, s5, s11
                  and          t0, tp, s7
                  srli         a6, s9, 16
                  sltu         t3, t6, a0
                  sub          t1, s8, a0
                  addi         s5, tp, 771
                  andi         t2, s11, -1751
                  sll          s0, t0, a4
                  xori         s8, s10, -683
                  and          s1, a4, s5
                  srli         a2, s0, 28
                  or           tp, s3, zero
                  slt          sp, s10, gp
                  addi         a3, t6, 53
                  or           sp, a3, t6
                  srli         s9, s7, 17
                  ori          t3, s0, -1940
                  srl          tp, t1, a2
                  srli         t5, a4, 0
                  add          a7, a4, s10
                  srli         t0, a0, 4
                  sra          t2, t5, zero
                  slti         a3, s9, 971
                  slti         s6, s2, 414
                  srli         ra, s0, 30
                  slti         gp, a6, -1992
                  sra          s8, t5, s10
                  ori          s5, a5, 726
                  sltiu        s2, a2, 665
                  ori          gp, t3, 1924
                  lui          t1, 17969
                  andi         t6, a6, 1972
                  slli         t3, a1, 1
                  sltu         t1, a3, a0
                  addi         t5, a1, 1553
                  slt          s2, a6, s7
                  sra          t6, s6, s6
                  lui          a2, 623370
                  add          a0, a5, s11
                  auipc        s0, 339342
                  sltiu        t0, gp, -287
                  srai         a7, t4, 20
                  auipc        s0, 522186
                  xori         t2, sp, -921
                  or           a4, a6, s9
                  srai         s1, s11, 1
                  sltu         s10, a4, a3
                  add          s1, s8, sp
                  srl          t6, s5, s7
                  slt          t0, a2, zero
                  and          t3, t2, a1
                  slli         t3, s10, 23
                  add          a0, t5, s0
                  slli         zero, s9, 20
                  add          t1, sp, t3
                  addi         s7, s6, -363
                  sltiu        a5, s8, -666
                  sra          s4, t2, a3
                  auipc        sp, 421503
                  addi         s8, a2, -1540
                  srai         s6, s3, 11
                  addi         s7, zero, -1098
                  slt          s1, a5, s7
                  srai         s4, t0, 12
                  slti         a6, a4, 688
                  xori         s8, tp, -154
                  xor          tp, s1, t5
                  ori          s10, s0, -1052
                  slt          t0, s10, s11
                  andi         s0, s10, -1118
                  sltiu        t4, a3, -85
                  slt          a4, s9, t3
                  srai         tp, s5, 12
                  slti         t4, t3, -552
                  and          s9, s11, s2
                  sra          s9, s2, a7
                  auipc        t1, 906340
                  sll          s2, a3, s8
                  xori         s0, tp, 1237
                  nop
                  andi         a4, s4, 509
                  srai         t5, a6, 14
                  nop
                  sltu         s2, s9, s10
                  srl          s10, t6, s7
                  sltiu        a7, s2, -50
                  sub          tp, a1, s8
                  srl          zero, a0, a6
                  sltiu        a6, zero, -1273
                  or           gp, a7, a0
                  and          a3, a4, gp
                  addi         t5, s0, 69
                  sub          s0, t4, s4
                  auipc        t5, 493920
                  srli         s7, a0, 4
                  slti         zero, sp, 10
                  slt          zero, t6, a3
                  xor          zero, a3, t5
                  sll          s9, a4, a0
                  sub          t5, s6, s9
                  slt          s5, a1, a1
                  srli         a3, s4, 12
                  nop
                  srli         sp, a0, 18
                  slli         t6, t3, 1
                  srai         t0, t1, 4
                  sltu         s4, a4, a6
                  add          a0, t0, t3
                  add          gp, t3, zero
                  sll          s0, a1, a7
                  nop
                  xor          gp, t3, a7
                  sltu         a7, s5, a1
                  ori          t6, t6, -1503
                  srl          t1, s9, s9
                  xori         a2, s4, -424
                  lui          s5, 306190
                  or           s4, s5, a1
                  sltu         tp, s6, s6
                  srl          tp, a6, a3
                  lui          a5, 1021157
                  srai         gp, tp, 19
                  auipc        s1, 975415
                  addi         a0, a4, -1284
                  xori         sp, gp, 1643
                  or           s2, zero, s6
                  add          a5, t2, s10
                  xor          t1, s3, s6
                  and          s9, t6, s9
                  sra          a7, a4, s4
                  ori          ra, t6, -602
                  slt          a6, s10, a5
                  add          s7, s5, t3
                  ori          a5, s0, 1746
                  sltiu        t0, t4, -175
                  sub          s6, a3, t0
                  andi         s10, a6, 1609
                  srli         sp, a1, 28
                  sltiu        ra, tp, 1712
                  ori          s6, a5, -1895
                  ori          t0, t6, -1433
                  lui          a4, 546972
                  auipc        t6, 344294
                  slti         a3, s1, -1281
                  slli         a2, a3, 10
                  andi         s0, s4, -1246
                  sub          t1, t6, s8
                  sub          s6, t6, s8
                  auipc        s1, 809937
                  sra          tp, t3, s2
                  sltiu        a6, s2, 1359
                  sll          s10, a7, a4
                  slti         s7, s7, -557
                  slti         sp, zero, 612
                  add          s9, t0, t4
                  nop
                  sltu         ra, s2, s0
                  and          t6, t4, t0
                  slti         s2, tp, 340
                  srai         s1, t6, 6
                  sltiu        t6, sp, 1970
                  xori         ra, t1, 1242
                  slti         s5, t0, -1606
                  sub          s8, t1, t5
                  slli         a5, tp, 22
                  xor          s10, s3, gp
                  lui          s7, 923971
                  sra          t0, s4, s6
                  sub          tp, s7, a5
                  ori          t4, a2, 254
                  addi         tp, s6, -758
                  ori          s9, t5, 1651
                  sub          a7, a0, s1
                  slli         s7, tp, 8
                  add          a0, s7, gp
                  sll          s1, t0, t4
                  nop
                  andi         a3, zero, -2036
                  xori         s1, ra, -1405
                  ori          s0, s8, 1843
                  sra          a5, s1, t6
                  ori          s7, a7, 1508
                  sub          a7, a7, s1
                  addi         a0, a0, -503
                  andi         t4, tp, 1122
                  srai         t3, t3, 21
                  sltu         t4, a2, a4
                  lui          s4, 66499
                  sltiu        s2, t0, 1755
                  slti         s6, s11, -10
                  add          s8, a5, s6
                  xor          a7, s7, s4
                  sra          ra, ra, tp
                  srai         a5, s9, 8
                  sub          sp, t6, t3
                  ori          a7, a7, 1007
                  sltu         s6, t2, a1
                  auipc        t5, 901004
                  srai         s6, t1, 17
                  addi         t2, a6, -1373
                  andi         a5, t6, 1559
                  lui          a3, 990285
                  or           s7, s2, t2
                  sltu         s1, s5, s2
                  sltiu        s0, t6, 1904
                  sll          a4, s11, s0
                  or           t1, a5, s11
                  sll          a2, a3, gp
                  lui          s7, 708472
                  or           t1, s7, t5
                  sub          t5, s7, gp
                  sll          ra, s7, s7
                  slt          s10, t2, t3
                  lui          s6, 591696
                  slli         s9, a6, 11
                  srai         s7, s7, 11
                  ori          a7, gp, 1077
                  ori          sp, s0, -660
                  and          zero, s2, s7
                  srli         t5, s4, 7
                  slli         tp, s11, 8
                  xor          s4, s7, zero
                  sll          t6, s9, t0
                  slt          t5, t6, s11
                  xori         a6, sp, -1388
                  lui          a7, 440717
                  and          t2, a2, a5
                  addi         a5, s6, 338
                  sra          t0, s5, s3
                  srli         s7, t5, 21
                  slti         s1, s2, -1005
                  nop
                  srli         s6, s7, 25
                  sltiu        t0, s5, 1457
                  add          a7, t6, s0
                  xor          a6, zero, t6
                  sub          gp, t2, gp
                  srai         a0, s7, 16
                  and          s1, ra, a5
                  ori          a5, s9, -1688
                  sll          a5, s1, a2
                  sltu         t6, zero, a4
                  srli         t1, t6, 7
                  xori         ra, s3, 782
                  srli         s8, s1, 30
                  sub          t1, a7, s0
                  lui          a6, 252457
                  srai         t2, s10, 7
                  srl          s8, s0, a7
                  slti         ra, t3, 84
                  slt          s2, s3, a5
                  sltiu        t4, s9, 1158
                  and          s8, t1, a1
                  or           a0, s7, t1
                  lui          zero, 80387
                  xor          t4, s11, t6
                  sub          a0, ra, gp
                  slli         zero, t4, 31
                  sra          s2, t4, s9
                  xor          tp, s3, s4
                  xori         tp, t0, 728
                  and          s4, a7, tp
                  slli         t0, s8, 1
                  andi         s1, t4, 1785
                  sltiu        a5, a1, 1603
                  slli         t4, tp, 24
                  sll          s6, t6, t5
                  and          a4, s6, t4
                  sll          t0, t6, gp
                  sra          t4, a4, s1
                  or           a3, s9, ra
                  and          t6, sp, a0
                  xori         t1, t0, -168
                  andi         t6, s11, 1359
                  or           ra, a1, s8
                  slt          tp, t6, s5
                  lui          ra, 296838
                  sra          t0, s7, t4
                  slti         sp, a1, -1141
                  lui          s4, 89678
                  srai         s5, s0, 25
                  sll          a6, s4, t6
                  sll          tp, a1, t3
                  slli         a0, ra, 11
                  srl          gp, gp, a5
                  or           s7, sp, a1
                  sltiu        t5, t1, 447
                  srai         s1, s3, 27
                  xori         a7, t3, -1408
                  xori         t5, t1, 1336
                  sra          t6, a1, a0
                  xori         zero, s2, -753
                  addi         ra, s2, 112
                  addi         t1, s2, 496
                  and          a0, t0, s10
                  or           s10, s4, s2
                  and          gp, a3, s0
                  lui          s0, 300917
                  auipc        t6, 389269
                  slt          t2, a1, t6
                  sub          ra, zero, a5
                  auipc        gp, 924529
                  srli         s2, a4, 3
                  sra          s7, a7, s9
                  nop
                  sltiu        s5, t2, 718
                  auipc        a6, 733678
                  lui          a2, 1014738
                  sub          gp, t5, gp
                  sll          t4, s7, t0
                  and          t5, gp, t6
                  auipc        t5, 692559
                  ori          a6, s3, -112
                  slti         a6, zero, -259
                  sra          s1, s11, t5
                  andi         t4, ra, -2014
                  auipc        s7, 19184
                  srli         s9, gp, 17
                  nop
                  srai         tp, s8, 17
                  ori          gp, t4, -825
                  sltiu        t5, s2, -1813
                  sltiu        s7, s3, 1363
                  srli         s10, t2, 26
                  srai         t2, s6, 2
                  sub          s10, s1, s11
                  auipc        t0, 570156
                  addi         t4, t3, -1712
                  sltiu        t2, tp, 1802
                  xor          t4, t4, s9
                  slli         zero, s8, 4
                  nop
                  sra          a0, a7, t0
                  add          a2, t1, a4
                  or           s0, t5, t4
                  auipc        a3, 79187
                  srl          s4, ra, s3
                  sltu         s9, ra, ra
                  ori          t1, a4, 306
                  add          a2, s7, a5
                  and          a0, s3, ra
                  ori          s10, s2, -1057
                  sltiu        a2, s2, -32
                  sub          a4, sp, s8
                  add          s10, zero, s9
                  auipc        a5, 328148
                  and          t3, t3, t3
                  sltu         t3, t1, ra
                  ori          a0, gp, -217
                  xori         s4, s4, -672
                  xori         s5, s4, -414
                  sra          s7, s7, s8
                  sra          s6, zero, s9
                  xor          tp, s0, t3
                  srli         s4, t0, 12
                  nop
                  srli         s8, s0, 11
                  andi         gp, s3, -684
                  sltiu        a6, s6, -1315
                  slti         a3, t6, -1203
                  sltu         s5, s1, t1
                  slt          t4, s7, s3
                  nop
                  xor          s8, a4, s9
                  nop
                  auipc        tp, 566466
                  srl          s7, a4, t2
                  nop
                  slli         a0, tp, 10
                  srl          zero, s9, t4
                  ori          s6, a6, -1613
                  slt          s8, s1, a3
                  sll          zero, tp, t4
                  ori          s6, sp, -1187
                  slt          t6, s0, t5
                  sub          tp, sp, s9
                  lui          a3, 200505
                  auipc        t5, 148935
                  srai         a5, s5, 26
                  sra          t1, t3, s1
                  and          a2, a0, a0
                  srai         tp, s3, 21
                  slli         a5, zero, 8
                  sltu         t4, a5, s10
                  or           s0, s9, a6
                  add          ra, t2, s11
                  sltu         s8, a4, s9
                  srli         s6, s11, 0
                  slti         s10, t6, 95
                  ori          ra, t3, -74
                  add          a3, s10, s11
                  srli         s6, sp, 26
                  sltiu        s5, a0, 1370
                  slt          tp, s0, s8
                  nop
                  andi         t0, s3, 505
                  sub          t1, s6, gp
                  or           a5, s11, zero
                  ori          t2, s8, 1372
                  ori          s0, ra, 866
                  sll          s2, t4, gp
                  ori          ra, s10, 1979
                  ori          gp, s9, 816
                  srl          a7, gp, s10
                  addi         t1, s0, -1236
                  srli         s0, s7, 13
                  xori         a5, t0, -1511
                  nop
                  or           sp, s1, a4
                  slt          tp, s3, t1
                  sub          s0, s6, a7
                  slt          s8, s0, a4
                  ori          s4, t4, -954
                  srli         t0, s11, 15
                  sra          t4, a3, tp
                  ori          t6, t1, -1845
                  lui          t1, 102397
                  sltiu        a0, s9, -1016
                  slli         s8, a7, 6
                  srai         sp, sp, 4
                  sll          gp, s1, t6
                  slt          sp, s10, s8
                  srai         s9, t0, 7
                  srai         t3, s7, 12
                  srli         t6, a2, 13
                  lui          zero, 587023
                  slli         s0, a6, 5
                  ori          s8, a5, -1382
                  sll          t0, a6, t4
                  auipc        a6, 366603
                  srli         s6, t0, 26
                  slli         gp, s1, 1
                  srli         t0, s1, 5
                  srli         tp, s9, 6
                  lui          a2, 861085
                  sltu         t5, a0, a2
                  sll          a4, zero, t5
                  xori         a5, a6, -1823
                  lui          s8, 527683
                  sra          t2, s8, a3
                  sll          s4, t2, t3
                  xori         t1, s8, -239
                  sltu         t4, a2, a1
                  sltiu        t0, s7, -650
                  and          a6, a5, tp
                  sub          a7, s2, s3
                  xori         s10, a4, 525
                  sub          tp, s8, a1
                  nop
                  sltiu        s8, s1, -690
                  xor          zero, a1, s0
                  slti         tp, s4, 1074
                  xori         s10, a1, 1178
                  ori          t4, t6, 1734
                  auipc        s8, 333960
                  and          s9, t6, tp
                  addi         t0, s2, -1637
                  andi         s7, s1, 1953
                  srli         s4, s0, 1
                  sll          s1, s8, a0
                  srai         ra, t2, 6
                  slt          s1, a2, s3
                  ori          t0, s10, -1221
                  or           s4, a6, t5
                  slti         t5, t1, -1541
                  srli         s1, tp, 0
                  or           s1, tp, s11
                  sra          a2, a3, ra
                  srai         s10, s1, 27
                  xor          t6, tp, zero
                  slti         s7, s9, -524
                  sub          t1, zero, t2
                  sra          s1, t4, s4
                  sltu         a4, s11, t3
                  srai         a2, a1, 19
                  auipc        t3, 954924
                  sltu         t1, s1, s10
                  srl          t0, s2, s1
                  slli         s1, ra, 12
                  andi         t2, s11, 1138
                  srli         gp, a3, 29
                  xori         a6, a3, -500
                  xori         t2, t1, 874
                  sll          s10, s1, s10
                  nop
                  andi         a4, a1, -1856
                  slt          t2, a4, zero
                  or           a7, t3, t6
                  slt          s9, zero, t5
                  sll          t5, a1, s4
                  add          s4, a1, a5
                  lui          t0, 48232
                  srai         a5, s11, 11
                  srl          s7, s6, a6
                  srl          s8, s4, t6
                  sub          tp, s6, s5
                  auipc        sp, 177156
                  or           t4, a3, ra
                  andi         a5, sp, 2024
                  slt          s9, a0, s8
                  sub          s4, s5, t4
                  slt          zero, s6, s8
                  nop
                  srl          a0, s9, a4
                  slt          s7, t0, t2
                  add          zero, a1, t5
                  lui          s6, 532246
                  srl          t3, a2, s0
                  lui          s8, 241955
                  xori         s9, a4, 195
                  sll          t2, t1, t5
                  xori         t4, a0, 2006
                  lui          t2, 530039
                  sra          s2, s0, s3
                  xor          s1, t5, s4
                  slli         t6, s8, 17
                  sltu         t4, s6, s8
                  sltiu        s5, gp, -112
                  srli         t6, gp, 24
                  slti         t5, a2, 724
                  andi         s0, s8, -285
                  add          a4, sp, s4
                  or           s9, s5, s8
                  sra          a6, s7, s10
                  srai         t0, gp, 5
                  srai         s10, s7, 17
                  xor          t1, t6, t0
                  and          s9, s2, gp
                  slt          t6, a4, s4
                  slt          s4, t2, t6
                  addi         gp, s10, 494
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           t1, 0xffffffff
                  li           t2, 0xffffffff
                  li           a5, 0x0
                  li           s1, 0x0
                  li           a4, 0xc35e3113
                  li           s7, 0x0
                  li           s9, 0x0
                  li           sp, 0x80000000
                  li           tp, 0x0
                  nop
                  add          s6, s6, s9
                  addi         t2, a5, 268
                  nop
                  nop
                  nop
                  auipc        a4, 119256
                  sub          sp, a5, tp
                  sub          tp, s1, s7
                  addi         s1, sp, -154
                  lui          sp, 401760
                  auipc        a5, 976543
                  sub          t2, s6, sp
                  lui          tp, 559582
                  nop
                  addi         a5, s9, -39
                  auipc        t1, 847575
                  nop
                  addi         s6, sp, 793
                  sub          s6, t1, t1
                  lui          s7, 951999
                  auipc        a5, 902842 #end riscv_int_numeric_corner_stream_9
                  lui          sp, 504690
                  sltu         zero, t3, sp
                  sra          ra, a0, a4
                  srai         t1, t1, 2
                  lui          a4, 991795
                  lui          s4, 433952
                  slti         t0, s11, 611
                  srai         t4, t5, 11
                  srai         a3, a3, 29
                  and          s1, t0, t5
                  sub          t1, s0, t4
                  nop
                  or           a2, s3, s7
                  or           t6, t1, s3
                  srai         a5, a2, 4
                  sub          t2, a0, a6
                  nop
                  and          s1, s10, s3
                  sltiu        a4, t3, 1772
                  xor          s0, s8, zero
                  sll          s1, tp, s11
                  sltu         t4, s9, tp
                  slti         t1, s3, -87
                  auipc        a7, 439904
                  xor          s6, t2, a5
                  or           a0, s11, s10
                  ori          s6, a6, 1332
                  slli         s7, a0, 14
                  slli         a6, t5, 17
                  slt          s0, t1, s8
                  srl          s0, s9, a4
                  add          a4, ra, gp
                  xori         t4, a3, -5
                  srai         ra, sp, 22
                  xori         a6, s8, 1042
                  add          t0, ra, t2
                  nop
                  xori         t0, s1, 1165
                  add          s4, a0, s11
                  slti         zero, s10, -700
                  slt          t5, t3, s9
                  sll          gp, a0, s7
                  or           s1, s0, s4
                  sltu         s6, t0, t6
                  slt          sp, s0, a4
                  sltiu        t4, s2, 1445
                  xori         s2, t3, 1999
                  sltiu        zero, s6, -399
                  or           s4, s4, t5
                  sltiu        gp, a3, 1635
                  andi         s8, t6, -1540
                  sub          t6, t0, s0
                  sltiu        s7, a6, -718
                  add          tp, t0, a5
                  add          t3, a0, t0
                  addi         t4, a5, 851
                  srl          a6, a6, a7
                  xori         s2, s1, -126
                  and          t3, t1, a0
                  sll          a7, tp, s7
                  slt          s2, s0, s9
                  ori          gp, s10, -1502
                  lui          s9, 952612
                  sltu         s7, s5, a4
                  slli         s7, s11, 29
                  slli         a4, t3, 7
                  sltiu        s2, a1, 1936
                  lui          s4, 566638
                  sub          gp, t5, s8
                  auipc        s1, 295166
                  xori         s5, zero, -1495
                  srai         tp, a4, 13
                  auipc        t4, 651
                  sltu         s9, s1, s0
                  auipc        tp, 327970
                  and          t3, s3, s2
                  auipc        zero, 735098
                  add          tp, sp, zero
                  auipc        a3, 116248
                  or           s6, a4, tp
                  nop
                  srai         t3, t1, 13
                  ori          t3, a4, 1713
                  sub          t2, s2, a3
                  slt          s10, s5, s6
                  slt          zero, ra, ra
                  auipc        gp, 288883
                  nop
                  slt          t6, a4, s3
                  srai         s8, s3, 10
                  nop
                  slt          s2, s0, t6
                  sll          s10, a3, s8
                  sub          gp, tp, zero
                  auipc        a7, 903418
                  slt          t5, a6, s8
                  sub          t4, s2, a1
                  srl          a7, a5, s7
                  add          s10, s8, s7
                  sub          a7, s1, s9
                  xor          a5, s1, ra
                  or           s4, s1, t6
                  sltiu        a2, a2, -2025
                  sra          s5, s5, s1
                  sra          gp, a0, zero
                  slt          s10, a2, t6
                  sub          t6, a1, a2
                  sltu         ra, t5, tp
                  lui          s8, 160759
                  ori          a6, s5, -1595
                  slli         s2, a5, 17
                  lui          s6, 699137
                  ori          tp, s5, 433
                  slli         t6, t5, 18
                  slt          t4, t1, a1
                  or           a2, a2, t1
                  sll          s5, t5, s0
                  sll          a7, s3, s2
                  sub          a5, a7, s10
                  auipc        s5, 398217
                  srl          t0, a1, a4
                  slti         gp, sp, 1115
                  andi         t4, a3, -1681
                  slti         t0, s7, -1961
                  xori         ra, a1, -341
                  srl          s0, a6, s4
                  sltu         s6, t3, a1
                  srl          s9, a3, t0
                  sll          s0, s5, t3
                  xor          t5, a2, a7
                  add          s6, a0, t3
                  slti         a4, a0, -1040
                  sub          s10, s2, t3
                  add          t6, s2, a5
                  sub          a0, a5, t3
                  srai         t5, t2, 11
                  auipc        a5, 238220
                  slt          t6, a1, tp
                  sltiu        gp, t4, 412
                  xor          gp, sp, tp
                  sll          s0, s6, gp
                  srl          t0, gp, s7
                  sra          s8, a1, s7
                  auipc        t2, 609401
                  and          s4, s6, zero
                  srli         zero, s8, 26
                  or           sp, t6, s2
                  sltiu        t3, s11, -1860
                  ori          a5, ra, -723
                  and          a5, s7, s8
                  sra          s8, ra, a2
                  sll          t0, t5, s6
                  sra          t2, t4, s10
                  lui          a3, 1048349
                  srl          s4, a7, a0
                  slti         t3, ra, 545
                  add          gp, a7, a5
                  and          a4, s4, zero
                  slt          a4, t4, a2
                  or           gp, a0, a3
                  add          a2, s0, sp
                  auipc        a5, 883186
                  and          t2, s5, s11
                  andi         tp, s10, -211
                  lui          s8, 767676
                  xori         s10, a5, 1567
                  sltu         a4, sp, s0
                  and          t2, t0, a0
                  sll          a2, s8, a0
                  slti         a2, zero, 601
                  sltu         a7, gp, t2
                  slt          t6, a7, s10
                  xori         a3, ra, 1914
                  sltiu        a2, zero, 392
                  slt          s0, s10, s11
                  sra          s9, t6, a0
                  sll          s1, t5, s7
                  nop
                  add          a5, tp, s6
                  and          t3, t3, a6
                  auipc        a3, 643789
                  slti         t3, s9, 1442
                  xor          a7, s2, s5
                  auipc        tp, 832198
                  or           t4, s6, s2
                  srai         s5, a6, 0
                  slt          s10, s8, a2
                  auipc        t4, 328107
                  slti         t2, s2, -727
                  slt          a7, a4, a0
                  xor          s5, s9, a1
                  sll          s6, a2, a2
                  srl          a6, sp, t3
                  sltiu        a7, s5, -1267
                  lui          a7, 1007776
                  sub          tp, a5, t1
                  sltiu        t5, a3, 1385
                  or           s5, a1, a5
                  auipc        a3, 232353
                  sra          sp, tp, t2
                  ori          a7, a7, -310
                  srli         a7, s5, 8
                  or           t3, ra, t6
                  slt          s7, a6, s0
                  sltiu        a3, a4, 584
                  addi         s1, t5, 444
                  sll          s0, a2, gp
                  slli         ra, s5, 9
                  srai         gp, gp, 6
                  sll          a0, t1, ra
                  sra          a6, s1, s11
                  sra          a6, t3, s3
                  sltu         t6, s6, s7
                  xori         t5, s9, 1365
                  slt          s7, s1, a7
                  auipc        gp, 730433
                  sltiu        a7, t4, 1739
                  lui          s0, 92869
                  srl          t2, s10, t0
                  slt          s7, t2, s7
                  sll          a6, zero, a6
                  andi         t6, t0, 1371
                  slt          a7, zero, s3
                  srli         gp, t3, 12
                  slt          t5, t3, t1
                  slt          s1, t5, s9
                  sub          s8, t1, s7
                  ori          a0, t3, 359
                  lui          s6, 913163
                  srli         s10, s9, 27
                  add          s1, s9, ra
                  sltu         t3, a0, s2
                  xori         ra, s4, -992
                  srli         ra, s4, 9
                  or           zero, a1, s0
                  nop
                  sltu         t3, sp, t5
                  sll          s9, s3, tp
                  auipc        t4, 901193
                  sub          s1, s9, t1
                  lui          s7, 802069
                  andi         t3, t5, -1106
                  sll          s0, zero, s1
                  sll          t4, a0, s1
                  add          t1, a1, s8
                  srli         ra, s10, 11
                  slti         a7, s7, 1814
                  or           a7, a7, a2
                  xor          s0, t6, zero
                  add          a4, a5, t2
                  slt          t2, a4, t0
                  srai         a3, t1, 27
                  lui          s1, 684460
                  and          a5, s9, s7
                  addi         ra, s4, -1063
                  sltu         s8, s6, a0
                  xor          sp, t5, s4
                  slti         s4, s8, -1697
                  nop
                  or           s8, a6, t4
                  addi         a6, gp, 71
                  sltu         s6, s8, gp
                  sll          a2, a5, gp
                  slt          s10, a6, s2
                  nop
                  slt          s7, a4, s3
                  ori          t3, a7, 650
                  srai         t3, a0, 11
                  srl          t2, t0, s6
                  slti         a6, tp, 1584
                  sll          s5, a5, a5
                  srl          s9, t6, s0
                  ori          s4, s7, -254
                  xor          s7, s10, a6
                  srl          s2, tp, t3
                  srli         t1, s3, 26
                  addi         t4, t3, 1546
                  and          a6, tp, s0
                  sll          t2, t5, s1
                  sltu         s7, a5, t0
                  sltu         t1, t1, s2
                  srai         t0, a4, 8
                  xor          ra, s2, s3
                  sltu         s2, a2, s7
                  andi         a4, gp, 468
                  sltiu        s5, s10, 151
                  or           t4, t5, a7
                  ori          s7, s2, -1390
                  andi         a0, a4, -1540
                  nop
                  andi         a4, t0, -1089
                  sll          t2, t3, a5
                  sra          t6, t4, s5
                  srl          t3, t4, s4
                  sll          s0, a1, t5
                  srl          gp, s9, s8
                  ori          ra, s2, 59
                  slt          s8, s1, t1
                  sll          s6, s11, s0
                  auipc        zero, 898302
                  add          t0, a7, s1
                  srli         a0, a0, 17
                  addi         a4, t6, -347
                  and          t4, s5, t4
                  lui          a7, 361818
                  lui          s1, 30558
                  sra          a5, s11, t5
                  sub          s4, ra, t4
                  slli         t5, s0, 10
                  srli         s6, t4, 24
                  sltu         a0, a3, s1
                  lui          s9, 615390
                  auipc        s0, 526052
                  slli         t2, a2, 13
                  addi         sp, t6, -715
                  srl          a5, a0, ra
                  nop
                  sltu         s0, s0, a2
                  slt          s0, a1, s7
                  and          t1, t5, a3
                  add          a7, a5, s1
                  srl          a7, sp, a5
                  and          t2, t6, s3
                  ori          s5, a4, 70
                  or           t3, s10, t6
                  sll          t5, sp, a0
                  srai         gp, t1, 15
                  sra          s5, s7, a7
                  lui          t1, 587384
                  lui          tp, 81323
                  slt          sp, s6, s6
                  lui          s10, 816335
                  add          tp, zero, t5
                  nop
                  nop
                  xor          a0, s11, a3
                  nop
                  sub          sp, s11, t0
                  srai         s7, a6, 19
                  or           zero, sp, zero
                  or           s7, t1, s5
                  srl          s4, sp, t2
                  srl          a7, a6, s7
                  andi         a2, zero, -1920
                  addi         t6, a4, -595
                  andi         ra, t1, -776
                  srli         tp, s10, 18
                  and          a2, t3, s10
                  or           s1, a1, s8
                  or           s6, t5, s10
                  srai         a4, s11, 15
                  slti         a6, a7, -1009
                  and          ra, t2, s0
                  xor          s4, s10, t6
                  slt          s10, a4, sp
                  addi         tp, t1, 361
                  sub          t0, t5, s0
                  addi         a3, gp, 501
                  slli         s7, a2, 13
                  andi         t3, s3, -1633
                  xor          ra, t3, s5
                  sub          a3, s9, s9
                  addi         t6, t5, -991
                  add          zero, t4, t0
                  addi         s2, t0, -527
                  ori          t5, sp, 2039
                  andi         a7, a0, -1474
                  slt          s6, a4, s10
                  andi         t2, t5, 306
                  slt          ra, a2, t3
                  slt          s7, t3, s11
                  auipc        s7, 322631
                  ori          tp, s7, 908
                  andi         t0, zero, 843
                  lui          t6, 843853
                  xori         s6, t0, -1084
                  add          t0, s10, gp
                  slti         s10, a0, -762
                  sra          ra, zero, s5
                  or           ra, t2, t2
                  sra          s10, t4, t1
                  ori          t4, a0, 454
                  auipc        t4, 33147
                  sra          s8, t5, a7
                  add          a0, t2, s3
                  srai         zero, t2, 5
                  slti         s8, a6, -330
                  add          ra, sp, s10
                  andi         s0, s8, 1325
                  or           t4, sp, s5
                  srl          gp, s4, s2
                  xori         s2, s7, -1675
                  nop
                  andi         s7, s10, 995
                  and          s5, sp, s9
                  and          t6, a1, sp
                  auipc        s5, 700846
                  lui          gp, 94410
                  sltu         ra, a7, t2
                  addi         s4, gp, 654
                  andi         a6, s1, -576
                  ori          s6, a7, 933
                  sltiu        tp, a3, 85
                  sll          s1, s7, a7
                  ori          ra, t3, -1004
                  auipc        s10, 308976
                  xori         a6, s4, -1679
                  auipc        t1, 70085
                  or           tp, s0, s6
                  auipc        ra, 9253
                  slti         s5, a3, 740
                  sra          a0, s8, a0
                  sub          t2, t0, s8
                  or           a7, t3, t4
                  slt          t3, s3, s4
                  lui          a0, 621484
                  xori         s8, s0, 1509
                  lui          t2, 825281
                  sll          t3, s2, a3
                  slli         tp, s2, 8
                  sll          s0, t3, s8
                  srai         gp, gp, 7
                  xor          s6, s11, t3
                  and          zero, t1, s10
                  slli         a5, zero, 20
                  add          zero, tp, a7
                  or           a6, zero, s0
                  auipc        s5, 224338
                  srl          t2, a7, s0
                  xori         a3, ra, -270
                  sra          s7, a6, s10
                  srli         s8, t4, 21
                  nop
                  add          s8, a3, sp
                  andi         s4, t3, 442
                  xori         gp, s8, -1655
                  xori         s0, s7, 538
                  or           zero, t3, sp
                  xor          a2, a3, sp
                  srai         a4, t6, 4
                  ori          a5, t6, -1768
                  slt          gp, a7, a1
                  or           tp, gp, sp
                  sltiu        t5, gp, -1123
                  xori         s2, a5, -292
                  xori         sp, a3, 346
                  sra          t2, a3, a7
                  sub          tp, s2, s8
                  slli         a3, s2, 4
                  xor          zero, sp, gp
                  addi         s2, s5, -908
                  addi         t1, t1, -751
                  or           sp, s4, s3
                  slli         s10, s6, 3
                  sra          s10, s11, t5
                  sltu         a3, s0, gp
                  xori         s9, s1, 1001
                  xori         t1, a0, 1539
                  ori          a7, a6, -2003
                  sra          t4, s1, s8
                  addi         s6, s7, 1023
                  addi         a4, zero, 1868
                  add          t4, a3, s5
                  sltu         a5, a2, s10
                  sub          s6, a3, a6
                  srli         zero, a2, 2
                  sub          t4, ra, s2
                  sub          s4, a3, zero
                  srai         s6, s8, 3
                  xori         s6, s4, -720
                  srli         a2, s3, 29
                  sltu         ra, s4, sp
                  sltiu        zero, a2, 2043
                  add          ra, s8, t3
                  nop
                  slt          a6, s3, s0
                  slli         a5, s6, 17
                  srli         s9, s4, 22
                  srli         s0, a1, 16
                  srli         a3, s6, 10
                  nop
                  add          gp, t0, t3
                  srai         a2, s6, 18
                  sltiu        t2, a1, 24
                  slli         s4, sp, 15
                  srl          tp, a6, a4
                  and          t5, a6, a4
                  nop
                  and          s2, a5, t2
                  lui          a6, 368715
                  xor          t6, t2, sp
                  sltiu        a2, sp, 220
                  add          a5, ra, a3
                  lui          t6, 628241
                  addi         ra, s11, -1239
                  xor          t6, t2, s4
                  srl          ra, s9, zero
                  lui          t2, 996891
                  slti         tp, s2, 1192
                  srli         s2, tp, 28
                  srai         a5, s5, 21
                  sra          a7, a4, a1
                  or           zero, s8, t2
                  or           s2, t1, s8
                  ori          s2, a4, 604
                  xori         ra, a6, 1726
                  slli         s5, tp, 18
                  xor          a2, s4, t0
                  xori         s0, s4, -777
                  lui          s9, 124127
                  lui          s9, 384102
                  addi         t5, gp, 1638
                  slt          s5, a6, s4
                  sra          tp, s4, s2
                  sltu         s1, t2, a6
                  add          a5, ra, s7
                  sub          s4, s8, s5
                  ori          t0, s11, 1096
                  xori         s7, a1, 1792
                  addi         s1, a2, -1776
                  sltiu        t2, t4, -1621
                  srai         t5, a2, 10
                  sll          sp, s11, a1
                  srai         ra, a6, 5
                  and          a6, t2, s5
                  srli         ra, a0, 4
                  sll          a3, a0, s3
                  or           s9, s4, a6
                  slti         s1, gp, -635
                  nop
                  sltu         gp, s10, a4
                  srai         s9, s9, 3
                  sra          a6, t3, a2
                  ori          a3, a5, -1811
                  nop
                  slti         a5, zero, 1556
                  sltu         s0, t2, t2
                  addi         t5, s3, 1372
                  srli         t6, a6, 30
                  srai         s1, s8, 12
                  nop
                  slli         zero, t3, 31
                  sltu         t3, zero, t4
                  lui          t6, 51118
                  sub          s7, gp, s7
                  srli         t3, a6, 19
                  sltiu        t4, s7, 1896
                  or           a2, t3, s2
                  xor          ra, t5, s0
                  auipc        zero, 371185
                  and          s2, s10, sp
                  add          zero, a4, s0
                  xori         s10, t3, -394
                  slti         a0, ra, 1724
                  srl          s6, t3, s8
                  sra          s2, t5, a7
                  ori          s10, tp, 927
                  and          s0, tp, a5
                  or           a0, s6, a3
                  xori         s2, s2, -1876
                  sltu         s10, s9, a3
                  slt          gp, s6, t0
                  srai         s2, t4, 29
                  sltiu        s0, t6, 1460
                  slli         a3, t0, 22
                  and          a0, a0, s7
                  sll          a5, a6, s1
                  or           t6, s2, a2
                  slli         s1, a6, 3
                  srai         s10, t1, 21
                  xor          s0, a3, a2
                  and          s9, t2, a0
                  sll          tp, s10, s8
                  sll          s0, s8, a2
                  sub          s4, s4, gp
                  lui          a2, 754282
                  slti         s1, s7, 749
                  addi         gp, s0, 1668
                  slti         a3, t1, 678
                  and          t1, s9, a6
                  srli         sp, a7, 3
                  ori          a0, a2, -1320
                  sltiu        a0, t6, 882
                  srl          s8, s6, zero
                  sra          ra, a3, s2
                  ori          tp, a2, -1433
                  srli         gp, s9, 26
                  add          s4, s0, s9
                  addi         a5, ra, -2004
                  addi         tp, a1, -354
                  and          a5, s11, t2
                  nop
                  slti         gp, s7, -1616
                  andi         s8, s3, 934
                  srli         s0, t2, 5
                  slt          t6, s0, s0
                  addi         s6, a3, 836
                  srli         sp, a3, 3
                  andi         a3, s1, 602
                  sra          zero, s4, a5
                  sltiu        t5, t6, -222
                  sltiu        a0, s3, 1647
                  slli         t1, a6, 0
                  add          s9, a3, a5
                  sltiu        sp, a0, 1580
                  sltu         s4, s9, t1
                  or           s10, a2, a3
                  srl          t6, s2, a1
                  sub          t4, t5, s6
                  lui          a2, 887626
                  add          ra, t5, s4
                  slli         t1, s0, 22
                  slt          s2, s6, t4
                  xor          t5, s3, s7
                  sltiu        t5, t5, -28
                  nop
                  or           zero, s3, s11
                  auipc        s0, 338265
                  srl          s0, t5, t0
                  sub          s2, a5, t5
                  xori         tp, gp, -1687
                  srai         s7, s4, 30
                  slt          s0, ra, tp
                  auipc        t3, 766093
                  sltu         t3, t1, a0
                  sltu         sp, s8, tp
                  sltiu        a3, a6, 99
                  nop
                  auipc        ra, 539425
                  addi         s10, ra, -334
                  ori          t5, a1, 101
                  add          t3, s4, a4
                  srai         t1, a5, 7
                  andi         t3, s11, 88
                  sll          t4, s11, t6
                  or           a2, a4, t1
                  andi         tp, s9, -434
                  srl          t6, s6, t3
                  addi         s1, tp, -576
                  slli         ra, s2, 27
                  auipc        s10, 248502
                  ori          s1, s8, -1174
                  lui          s1, 669986
                  or           s5, t5, ra
                  xori         s9, s3, -1071
                  auipc        t3, 158323
                  nop
                  sll          zero, s5, a5
                  lui          a7, 486059
                  lui          zero, 205379
                  srl          a7, ra, a1
                  srai         t6, s1, 11
                  nop
                  li           s5, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           t2, 0x0
                  li           s9, 0x7e755024
                  li           a2, 0xac5ec40
                  li           s7, 0xbd66e6ae
                  li           ra, 0x80000000
                  li           a4, 0x83647741
                  li           sp, 0xffffffff
                  li           t4, 0x0
                  li           t5, 0xffffffff
                  add          t4, a2, t2
                  sub          t4, t2, a2
                  sub          a2, a2, t5
                  auipc        a2, 472754
                  nop
                  nop
                  add          t4, s9, s5
                  nop
                  nop
                  add          a4, t4, s5
                  sub          s7, t2, t4
                  addi         t2, s5, 687
                  add          a2, s7, s5
                  nop
                  add          s9, t5, t4
                  lui          s7, 941233
                  auipc        t4, 333432
                  sub          s7, t4, a2
                  auipc        a2, 143150
                  addi         s7, t4, 617
                  sub          s5, sp, t5
                  addi         ra, s5, 1648
                  auipc        s7, 147707
                  add          t2, s9, s9
                  nop
                  add          s9, s9, s7
                  addi         a4, t5, -1430
                  lui          s9, 550593 #end riscv_int_numeric_corner_stream_11
                  andi         zero, t2, 1121
                  sll          s10, s9, a6
                  xori         s9, s8, 1202
                  andi         s9, s5, -1514
                  srl          a7, t6, s3
                  slli         tp, s4, 6
                  slli         t2, a2, 26
                  slli         a0, a5, 29
                  auipc        a4, 758213
                  addi         s4, a6, -380
                  slti         s1, sp, -1096
                  srl          a3, s2, s3
                  srli         zero, t6, 31
                  add          s10, zero, s3
                  sra          ra, t5, t5
                  lui          s6, 449901
                  lui          s4, 398981
                  nop
                  xori         s10, a0, -841
                  sll          a6, a4, a5
                  srl          a4, a4, s2
                  srli         a3, a7, 5
                  or           t4, sp, a3
                  slli         ra, zero, 10
                  add          ra, s3, t2
                  xori         s8, a2, 1072
                  xor          a6, t1, s3
                  slli         ra, s0, 23
                  lui          s0, 753578
                  andi         s10, s11, 1239
                  sll          zero, s4, sp
                  addi         s7, t1, 1972
                  xor          s8, t3, a0
                  sll          a4, a0, zero
                  srl          a7, t5, t0
                  and          s9, tp, t4
                  srl          a6, s3, a0
                  sltu         t4, s8, a2
                  auipc        t5, 485781
                  addi         a2, t0, 786
                  srli         s5, gp, 12
                  slti         a3, a3, -906
                  lui          s9, 237904
                  add          s8, a0, a4
                  nop
                  addi         a2, a0, 854
                  lui          t3, 845728
                  auipc        t6, 543479
                  srli         t2, t2, 2
                  lui          s0, 545627
                  sltu         t6, s10, t2
                  sra          s4, t5, s1
                  sltu         s7, a5, s2
                  sra          zero, a0, s1
                  or           a4, a4, t1
                  sll          s7, a5, s10
                  add          s8, t2, t1
                  xori         s10, s7, -2036
                  sltiu        gp, sp, 372
                  auipc        s0, 349645
                  srli         a0, a6, 28
                  xor          a3, gp, t6
                  auipc        t4, 361814
                  sra          s7, s1, t4
                  lui          s0, 632462
                  nop
                  andi         t3, t4, 1850
                  lui          t4, 1044831
                  sra          ra, s5, t1
                  nop
                  or           t6, a1, sp
                  sub          a3, s1, s5
                  xor          t1, s4, t6
                  srli         s9, s2, 11
                  nop
                  add          s9, t1, t4
                  sll          a3, a7, t5
                  auipc        a0, 957540
                  srl          t2, s4, s2
                  sll          s9, t2, s10
                  sub          ra, t1, s4
                  sub          t5, a7, t0
                  xori         ra, t4, 517
                  srl          a5, s7, a3
                  xor          t3, s6, s9
                  sll          s6, s6, s11
                  slti         s6, s7, 1006
                  auipc        a5, 866123
                  addi         s0, s9, -1290
                  addi         s2, a1, 127
                  auipc        s9, 369109
                  add          s4, a0, gp
                  auipc        sp, 364705
                  sub          s4, ra, t5
                  ori          sp, ra, 989
                  slli         t2, s8, 3
                  slti         zero, t3, 739
                  addi         s1, s0, 1496
                  slti         a7, s10, -452
                  add          s8, t4, s6
                  lui          t2, 992920
                  sltiu        s4, s10, 832
                  nop
                  slti         t4, s7, 1099
                  add          ra, s4, s11
                  lui          t2, 948023
                  ori          s1, s1, -1074
                  addi         t0, ra, -597
                  sltiu        a0, a2, 1618
                  auipc        s0, 273368
                  srli         a0, s1, 30
                  add          sp, a5, s5
                  sll          ra, a4, tp
                  andi         a6, t5, -491
                  xori         t0, s7, -1289
                  sra          t4, a1, tp
                  srl          s2, s1, t6
                  sra          t2, ra, s4
                  sll          gp, s0, s0
                  nop
                  srli         s7, s1, 10
                  srli         t4, a1, 7
                  sltiu        t5, a2, 479
                  addi         s9, s7, -702
                  sll          s4, a4, gp
                  ori          s7, s10, 1589
                  or           s7, zero, t5
                  sra          a7, t0, s3
                  slti         a5, t4, -1740
                  add          s8, s11, a2
                  andi         t5, s9, 1752
                  addi         s6, a3, 1816
                  slti         s7, a7, -1578
                  auipc        s5, 717968
                  nop
                  sra          a7, gp, s10
                  and          a7, zero, s11
                  srai         s9, s1, 15
                  addi         s8, s3, 310
                  addi         gp, s5, -952
                  and          s6, a7, s4
                  nop
                  auipc        t0, 90436
                  auipc        a3, 723823
                  auipc        a6, 727380
                  ori          zero, s1, 308
                  auipc        s7, 116314
                  ori          ra, sp, -1359
                  lui          t4, 372519
                  slli         t6, t0, 14
                  sll          s10, t2, t4
                  lui          t2, 651201
                  sub          ra, sp, s5
                  ori          s5, s9, 506
                  and          t2, a4, a0
                  nop
                  sll          t5, tp, s11
                  slti         tp, gp, 773
                  add          s5, t1, zero
                  sltiu        t3, a2, 905
                  andi         sp, ra, 1606
                  sltiu        t5, t6, 1596
                  srl          t0, s8, t3
                  srai         ra, s3, 6
                  and          t3, s11, s2
                  srli         s10, s1, 20
                  sll          gp, s0, s11
                  add          s2, t5, tp
                  srai         a6, s10, 18
                  addi         s8, t1, -1342
                  ori          s8, a4, -1966
                  add          sp, ra, s4
                  sll          s10, s7, s4
                  sub          s2, a3, a0
                  xor          t6, a7, t4
                  nop
                  auipc        a5, 844969
                  sub          s10, s1, a6
                  lui          a0, 576147
                  sltu         zero, t4, t5
                  andi         gp, t6, -1937
                  srl          s4, s3, s3
                  sltiu        s2, gp, 729
                  xori         a6, t6, 633
                  sltiu        ra, t3, 277
                  srai         s4, zero, 1
                  slli         s0, s11, 12
                  addi         t1, a2, -1647
                  auipc        s6, 152466
                  ori          sp, t6, -474
                  or           sp, t0, a4
                  xor          tp, t2, sp
                  srl          s7, t4, t6
                  slti         s5, s3, -1019
                  or           a0, a0, a6
                  xori         a3, s3, -1702
                  and          a4, tp, s2
                  xor          a3, gp, a1
                  slli         t5, t3, 23
                  srai         s6, a2, 27
                  auipc        a2, 142004
                  nop
                  add          s0, t1, t6
                  nop
                  lui          ra, 414412
                  and          s2, ra, s4
                  and          s2, a4, s3
                  sltiu        t1, a5, -2012
                  srai         a6, t5, 27
                  srli         a7, t2, 15
                  ori          s6, s4, -538
                  sltiu        zero, s0, 355
                  auipc        gp, 677924
                  slt          gp, s3, a0
                  sra          s1, s2, t4
                  auipc        a4, 502358
                  sltu         t4, s3, s7
                  nop
                  sltu         a4, a7, s5
                  or           s5, t3, t1
                  slti         s10, gp, 1551
                  lui          s6, 359103
                  addi         tp, s11, -10
                  xor          t4, s8, gp
                  andi         s6, s6, 390
                  lui          s9, 59955
                  slli         t5, s10, 17
                  and          s10, s7, s9
                  srl          a3, t5, a2
                  andi         tp, a1, -1441
                  srai         s1, s6, 28
                  sra          s6, sp, a2
                  sll          t6, a1, a5
                  srl          a0, a5, t3
                  sra          a5, a5, s8
                  slti         gp, s4, 567
                  sra          s5, s5, s3
                  slti         a2, a0, -1938
                  sll          s2, gp, t2
                  sra          s0, t2, s1
                  srli         s7, s4, 17
                  srli         s5, ra, 1
                  and          a5, s0, t4
                  add          ra, a5, s5
                  slli         t4, s11, 18
                  sub          s9, s11, zero
                  slli         a3, a6, 28
                  sltiu        ra, s7, -1216
                  or           zero, s10, s5
                  andi         s6, s6, -808
                  lui          t0, 877862
                  andi         ra, t0, 167
                  sltiu        s6, a3, 1769
                  xori         s6, tp, -1785
                  sltiu        s4, t5, 133
                  sll          sp, s11, s3
                  xori         a2, s5, 1290
                  sub          zero, a1, s4
                  slt          s2, t0, s2
                  ori          a2, s2, 145
                  sltu         a5, s1, t1
                  sltu         gp, s11, s11
                  andi         t3, s9, -443
                  or           s1, s11, sp
                  xor          ra, a3, s3
                  xor          zero, s8, t0
                  sltu         s9, s6, s8
                  srli         s8, zero, 2
                  srl          t3, s5, a1
                  and          s2, sp, s4
                  sltiu        t5, zero, -503
                  sltiu        tp, s5, 1694
                  sra          ra, t5, s3
                  slt          s5, t4, a1
                  srai         a4, ra, 22
                  or           t3, s10, a6
                  sll          t2, gp, ra
                  lui          a7, 581467
                  sltu         t5, s8, gp
                  srl          a3, a6, t5
                  add          t4, s5, s4
                  sltu         s8, s11, ra
                  or           t4, ra, s10
                  srli         s5, a4, 4
                  srl          zero, a1, a1
                  srai         t0, a1, 1
                  or           a3, a3, a0
                  srl          a0, s5, s0
                  sub          a4, s11, a3
                  sra          t0, sp, s7
                  sra          a4, s2, a6
                  sll          s8, t0, tp
                  xori         a7, t2, 1274
                  srl          a6, s9, a5
                  xor          s5, s0, t3
                  addi         t2, s10, 74
                  andi         s1, a1, 300
                  slli         s6, s2, 10
                  slli         a7, a7, 23
                  sub          t2, s11, a3
                  xor          a2, s5, t5
                  srli         a6, a2, 2
                  add          t2, t2, t5
                  srl          t4, a5, t1
                  xor          t2, a6, s8
                  slt          s4, gp, s2
                  sltiu        zero, s3, 1839
                  slti         sp, t0, 442
                  sub          s0, a5, t6
                  sltiu        s2, a0, 1496
                  ori          a2, tp, 525
                  xori         s8, s4, -1122
                  xori         ra, s1, -472
                  auipc        a3, 42584
                  auipc        s10, 1024345
                  sltu         s8, a7, tp
                  sltu         zero, s6, t5
                  srl          s1, t1, t6
                  slli         s8, zero, 9
                  sra          s2, s4, a6
                  srl          t3, s6, a6
                  slt          t4, a7, sp
                  slti         a3, s9, -1150
                  srl          s6, ra, t1
                  sltu         a0, s2, ra
                  ori          t3, a3, 1450
                  auipc        sp, 814182
                  slli         a2, a7, 12
                  add          s10, t6, a7
                  lui          s7, 377271
                  lui          t4, 777494
                  sra          s7, t5, s9
                  auipc        t1, 754683
                  add          t5, a6, t1
                  and          t1, a5, a5
                  sra          s0, t4, s6
                  nop
                  add          a4, s4, s11
                  add          s4, s0, t3
                  ori          t5, a2, -1622
                  andi         t4, s5, 997
                  ori          a5, s4, 1141
                  slti         s8, a6, 568
                  nop
                  andi         s5, t2, 137
                  srli         t3, s3, 1
                  slt          t0, zero, s8
                  addi         s7, s8, -445
                  srai         a2, s0, 0
                  slti         s7, t5, -440
                  xor          t6, a4, s11
                  slti         ra, a1, -3
                  sra          t2, a3, s10
                  andi         a0, t1, -1710
                  add          s4, a6, t1
                  slt          t6, t4, a1
                  nop
                  andi         s2, s4, 1100
                  add          t1, t1, a3
                  sub          s4, s4, t4
                  andi         a6, t5, 1155
                  srl          t3, s4, a5
                  slli         zero, a4, 8
                  or           s5, t5, a1
                  sub          tp, sp, t6
                  auipc        s2, 150600
                  slt          s4, t0, s4
                  nop
                  sltiu        s4, a5, -587
                  sll          s0, s2, s5
                  andi         a4, t4, -1680
                  srl          a2, s9, zero
                  nop
                  xori         s5, s8, 459
                  xor          s7, s1, t1
                  slti         t2, s5, 889
                  or           t4, s9, s0
                  andi         s10, t6, 1933
                  sltiu        s6, sp, 298
                  sll          s8, s3, t0
                  slli         t0, t6, 1
                  andi         gp, s3, -1134
                  sra          s9, s7, s7
                  sltu         t4, s11, s10
                  sra          s10, a4, t6
                  add          s8, t5, s5
                  nop
                  nop
                  srl          s6, a3, s6
                  srli         a2, a4, 25
                  sra          a4, s4, s7
                  xor          a0, a4, s8
                  sltu         s8, a4, a3
                  slli         s0, s5, 2
                  slli         a5, t4, 5
                  lui          tp, 675014
                  srl          s10, s0, t4
                  ori          t3, s2, -1798
                  srli         a6, a7, 0
                  add          sp, s3, zero
                  auipc        zero, 49730
                  sll          s9, ra, s5
                  and          a5, t1, s6
                  slti         t5, t4, -705
                  addi         a0, t0, 250
                  xor          s9, s9, s8
                  sltu         t2, s3, s7
                  and          sp, s8, a0
                  sltiu        s9, t6, -265
                  ori          a3, a5, 1825
                  slli         a4, t1, 3
                  sra          t0, s5, a5
                  sltiu        ra, t1, -1367
                  sltiu        t6, t5, -1944
                  slt          t6, a3, a4
                  sltu         a2, a1, s10
                  srli         ra, s2, 3
                  slt          t0, s9, s4
                  xor          s2, t0, gp
                  xor          s7, s8, t0
                  addi         s8, s5, -1681
                  ori          a2, tp, 1706
                  ori          s4, t0, -1275
                  srl          ra, a6, t3
                  lui          s2, 305724
                  slli         s10, tp, 17
                  add          tp, a0, a5
                  nop
                  slti         a4, a6, 1773
                  sub          a5, t0, s1
                  auipc        s0, 475143
                  sltiu        zero, s8, -893
                  srai         s8, s10, 14
                  slti         s2, s1, -875
                  or           a7, sp, s0
                  xori         a0, a7, 1511
                  add          t6, s0, a4
                  xor          s4, gp, tp
                  sltiu        s1, a3, 664
                  srai         t5, ra, 20
                  ori          s6, s4, -1556
                  lui          a3, 690894
                  slti         a2, s7, 1841
                  srl          s4, s6, a4
                  sra          s8, t1, s7
                  nop
                  sub          s5, s10, s10
                  ori          tp, a7, 773
                  sltu         t2, t1, gp
                  srai         gp, a0, 6
                  sub          ra, t0, s7
                  xor          a5, s2, t6
                  auipc        s2, 762085
                  slt          s6, s5, gp
                  add          gp, s2, t6
                  or           a4, t2, s4
                  or           s9, s0, tp
                  sltiu        a6, a6, 1007
                  sltiu        a2, s6, -1982
                  andi         t1, tp, 1114
                  slti         t4, s7, -1597
                  lui          t2, 787996
                  slti         ra, tp, 233
                  ori          a4, t6, -629
                  slli         a2, t3, 22
                  and          s7, a4, a3
                  slti         s1, s2, 412
                  slli         s0, a1, 14
                  slti         t5, s3, -433
                  sra          t3, a7, t2
                  nop
                  srai         t0, ra, 11
                  srl          a5, a7, s0
                  xor          a6, s9, s0
                  xor          tp, t3, zero
                  xor          a7, s1, t3
                  sltiu        t3, t1, 1480
                  ori          a4, a1, 1669
                  add          a5, a7, s7
                  sub          s6, s0, s4
                  add          s10, s3, s9
                  auipc        s1, 497881
                  slti         t6, a3, -1511
                  lui          t5, 724237
                  slt          a3, ra, zero
                  nop
                  srli         s6, t5, 12
                  addi         t6, s5, -163
                  srai         s6, zero, 4
                  ori          s4, s7, 656
                  sra          ra, s1, t0
                  auipc        zero, 976862
                  or           s4, s0, t4
                  ori          t2, s10, 1854
                  add          tp, t1, a5
                  sub          tp, t4, t1
                  or           ra, t3, t2
                  sltiu        a5, s0, -848
                  andi         t0, sp, -1590
                  add          s10, t3, a7
                  andi         s9, zero, -434
                  nop
                  andi         s10, a3, 980
                  srai         t5, gp, 10
                  addi         s7, zero, -1475
                  xori         t0, s4, 696
                  ori          a3, t6, -111
                  xor          t5, s5, s3
                  slti         t3, t4, 159
                  sll          sp, s5, s0
                  sltiu        gp, t1, -1695
                  auipc        t1, 694661
                  sltu         tp, t6, t0
                  xori         ra, zero, -538
                  sub          tp, a3, s8
                  or           a2, t6, a7
                  ori          t1, a5, -1527
                  sltu         s8, tp, a2
                  srli         a7, s11, 30
                  xori         a4, t6, -415
                  lui          a5, 183876
                  srl          a0, t4, t2
                  nop
                  srli         s2, ra, 4
                  sub          s2, a3, a0
                  srli         gp, s8, 14
                  sltiu        a7, t3, 772
                  slli         tp, a0, 23
                  and          sp, a6, a3
                  sra          ra, a0, tp
                  or           ra, t4, s0
                  slti         s6, s5, -857
                  addi         s10, s2, -1271
                  nop
                  slti         t4, ra, -1039
                  add          sp, s5, s2
                  slti         tp, s8, 1089
                  andi         s5, a2, -1375
                  slti         a2, s10, -568
                  slt          t2, t0, sp
                  sltu         t5, zero, s3
                  sll          a4, s1, sp
                  addi         ra, s7, 429
                  sub          t3, a2, a2
                  sra          sp, a6, t3
                  add          a4, s2, t1
                  sub          s9, a1, s0
                  srl          zero, t4, sp
                  srai         s1, s10, 9
                  sub          a5, s5, t3
                  sll          a3, s11, s3
                  slt          s5, ra, tp
                  xor          s6, ra, s5
                  or           s10, s1, a0
                  xor          s5, a4, s8
                  ori          s7, s0, 1976
                  srli         sp, s5, 23
                  nop
                  and          tp, a1, t5
                  auipc        s8, 90525
                  slti         s7, a5, 1507
                  sll          s0, a2, a3
                  addi         t1, s1, 1048
                  slt          a7, s4, t4
                  lui          t5, 297006
                  add          a0, t1, s7
                  sltiu        a2, s3, 697
                  nop
                  sltu         ra, a3, s7
                  srli         t0, a1, 24
                  ori          gp, s4, 2004
                  nop
                  sra          a7, a7, s7
                  xori         s4, s9, -214
                  xori         a3, a1, -987
                  nop
                  srl          s8, t6, sp
                  sltu         s0, s6, a7
                  slli         s5, t3, 7
                  srli         ra, s8, 5
                  srai         s10, s3, 23
                  addi         a7, s1, -1655
                  xor          a4, a0, s3
                  slti         t4, t6, 513
                  xori         s8, a4, 600
                  xori         ra, s4, -336
                  slt          t1, s10, a4
                  srl          a3, s0, t6
                  srli         s7, s0, 5
                  sltiu        a5, s9, -1334
                  slli         s9, t4, 16
                  sltiu        a6, sp, 1148
                  sra          a6, a0, s1
                  sub          zero, a7, s9
                  or           t2, a6, t4
                  or           t3, t3, a7
                  sra          s8, t2, a5
                  andi         s1, t2, 1966
                  srl          zero, a7, t6
                  ori          a3, t4, 1545
                  ori          ra, a6, 103
                  slti         s6, a5, -1015
                  slt          zero, s0, sp
                  lui          s9, 158759
                  sub          s2, t4, s5
                  srl          s5, t0, s5
                  ori          a0, tp, -1535
                  sra          a7, s4, a6
                  slt          a5, zero, s0
                  xor          t3, zero, gp
                  sub          s9, s0, a2
                  sltu         s1, a6, a3
                  slli         gp, s8, 5
                  andi         a2, s4, 1126
                  ori          s5, t2, 201
                  xor          s8, sp, gp
                  and          t3, gp, ra
                  or           s4, t5, s11
                  xor          a4, s7, t3
                  xor          s10, t3, s4
                  xor          a0, zero, s2
                  sub          s0, ra, a6
                  sra          s2, s5, s8
                  sltu         a2, t5, t3
                  sltiu        ra, t1, 784
                  addi         a2, t6, 480
                  sltiu        s5, a6, -533
                  add          t1, t3, s7
                  srai         t0, t1, 8
                  srl          s5, sp, gp
                  add          ra, s5, a2
                  sltu         a7, a4, zero
                  addi         a3, ra, -1431
                  srai         a7, t5, 21
                  sltu         t5, a6, s7
                  or           s5, a7, t4
                  addi         a0, a7, -1545
                  srl          sp, s4, gp
                  nop
                  and          t0, t5, s7
                  and          a4, s1, s9
                  sltiu        a3, t6, 351
                  srl          t2, s5, a7
                  auipc        ra, 278533
                  srl          s1, a5, a5
                  slli         gp, s6, 16
                  lui          zero, 231969
                  andi         a7, ra, 1426
                  nop
                  and          a4, a7, s0
                  slti         s10, tp, 624
                  sltu         t6, s10, s0
                  andi         zero, t4, 1620
                  lui          a3, 914900
                  nop
                  sltiu        a6, t1, 1608
                  add          t0, s1, s6
                  xor          tp, s7, s9
                  lui          s8, 254062
                  slti         gp, s3, -512
                  or           t1, t3, s2
                  and          s9, a0, t2
                  slt          t5, t4, s2
                  or           t2, sp, t4
                  slti         s9, a5, 948
                  lui          t3, 518799
                  nop
                  nop
                  sltu         gp, s1, zero
                  andi         a4, s0, -89
                  addi         a6, s9, -1158
                  sltiu        s1, s4, 257
                  sll          s10, a6, t0
                  srai         s5, s4, 13
                  and          s0, a4, s5
                  xori         a0, a4, -1180
                  srli         t2, t3, 20
                  srai         t6, s0, 16
                  lui          a4, 345997
                  auipc        s5, 880245
                  or           t2, t1, ra
                  srl          a7, t4, sp
                  add          s10, t0, t3
                  slti         ra, s6, 1655
                  nop
                  auipc        t4, 753577
                  sub          s4, t3, tp
                  srl          s8, gp, tp
                  srli         t1, a3, 24
                  sltiu        a6, tp, 189
                  sltu         a2, s10, s9
                  srl          s8, a7, tp
                  slli         ra, t3, 4
                  sub          a2, t1, s11
                  xor          t2, a4, a0
                  or           s9, a3, tp
                  srai         a6, s9, 14
                  sra          s0, t4, a2
                  lui          s9, 891416
                  xori         t1, a6, 517
                  sll          s1, s1, t1
                  sll          t6, a3, s5
                  addi         sp, t1, 558
                  srli         tp, s7, 6
                  addi         t5, a3, -1022
                  and          s4, s4, s5
                  sltu         t0, a6, s3
                  or           s6, ra, a2
                  sll          sp, t1, s0
                  sltu         sp, t6, t3
                  addi         s5, a4, 2046
                  srai         t1, s5, 30
                  or           zero, t4, a4
                  sll          s8, t1, a6
                  xori         t6, sp, -1453
                  srai         t3, t5, 24
                  sltu         ra, t3, s5
                  slt          a4, gp, s3
                  xori         s4, s6, 904
                  andi         a5, s1, 133
                  sll          gp, a0, zero
                  srai         t4, s0, 29
                  nop
                  and          gp, s1, s8
                  slt          t2, s11, s1
                  ori          s6, s3, -1454
                  srai         tp, s1, 26
                  srl          s9, s8, a6
                  sltiu        a0, s3, 728
                  or           s7, s5, s6
                  ori          ra, t4, -1184
                  sltu         s8, s5, a0
                  addi         t2, tp, -1523
                  sltiu        s2, a1, -439
                  sltiu        s2, gp, -30
                  nop
                  sll          s7, a3, a2
                  add          t0, t1, s6
                  srai         t1, s11, 15
                  or           sp, t5, s4
                  and          a4, s11, a4
                  and          tp, s1, t0
                  sra          tp, ra, a1
                  nop
                  sltiu        t2, s0, 878
                  sltiu        a3, s4, 196
                  andi         a5, s6, 593
                  xori         s4, s1, -1011
                  slt          s2, s4, s4
                  and          a2, t5, a0
                  srl          t5, a6, s5
                  srai         t3, t2, 27
                  sll          gp, ra, t2
                  slti         t4, a2, 1154
                  slli         s10, s1, 11
                  sub          s5, s8, s4
                  auipc        a5, 892974
                  srl          a5, s4, s7
                  slti         a2, a4, 1029
                  ori          t5, a3, -1230
                  sub          a0, s11, t2
                  or           a5, t0, a1
                  sll          a0, gp, s3
                  auipc        t5, 332755
                  andi         a4, s5, 1591
                  sltu         a0, s10, s4
                  sra          a6, a6, a5
                  srli         sp, a6, 7
                  srl          s8, s4, s4
                  addi         a2, s2, 1150
                  andi         a4, s1, 730
                  ori          s2, sp, -411
                  srli         tp, s4, 19
                  sub          t2, t1, sp
                  and          s10, a4, s8
                  andi         s8, s10, -1415
                  ori          s9, t2, 1787
                  nop
                  add          t6, s8, a1
                  andi         a4, tp, 77
                  addi         s7, s2, 200
                  sub          a3, a1, t0
                  lui          zero, 632541
                  sll          sp, s9, t3
                  or           t1, t0, zero
                  slti         s10, t1, -258
                  auipc        a7, 163705
                  nop
                  ori          t3, a3, -1663
                  andi         a2, t2, -1320
                  auipc        s1, 505137
                  srli         a2, t1, 12
                  srai         s5, t4, 30
                  addi         t2, s9, -1271
                  andi         t0, a5, 1693
                  srai         a3, zero, 29
                  sra          t2, a1, a2
                  ori          s2, s1, -1656
                  xori         s2, s5, -583
                  srl          a3, s4, a3
                  srl          a7, a6, tp
                  xori         t1, s11, 114
                  slti         a2, gp, 199
                  xor          gp, t3, zero
                  addi         s7, a7, 126
                  add          t4, t1, a2
                  sll          t5, s11, a7
                  slli         t5, t4, 25
                  slt          s2, a2, zero
                  nop
                  xor          t6, a3, a5
                  and          a5, t1, a1
                  slti         t1, t5, 1904
                  srli         s6, s1, 31
                  slli         sp, s8, 19
                  srli         gp, gp, 19
                  sltu         s10, a0, gp
                  srl          tp, sp, t6
                  auipc        sp, 825827
                  srai         s8, t1, 6
                  or           t2, t0, a6
                  lui          s5, 910534
                  slti         a4, a3, -1229
                  xor          t2, t6, a3
                  sltu         zero, tp, a1
                  srai         a2, a4, 2
                  ori          t5, s4, 1011
                  slli         a6, s9, 22
                  xori         a4, gp, -1373
                  sltu         t5, t6, t4
                  srli         s1, a7, 25
                  srai         a2, ra, 1
                  lui          s4, 344639
                  sub          a2, a4, a7
                  srli         a2, gp, 29
                  nop
                  ori          a0, s1, 1915
                  ori          t3, t2, -473
                  srai         t4, t0, 14
                  xor          tp, t5, t4
                  xor          s9, gp, sp
                  sltu         t3, t1, t3
                  sltu         t1, s6, a6
                  srl          s1, a4, t3
                  slt          t0, s9, a6
                  lui          t3, 96298
                  lui          s7, 971939
                  ori          a5, s9, 532
                  ori          a0, s4, 919
                  srl          s6, a6, a4
                  nop
                  or           a2, a4, s0
                  slt          t0, a5, t6
                  add          s1, a3, s3
                  sra          t0, s1, s0
                  addi         t0, a4, 710
                  and          s4, a5, a5
                  xori         t4, zero, -1143
                  sltiu        a7, tp, -56
                  sltu         zero, s11, s0
                  sltiu        a6, t4, 1124
                  or           s6, s0, sp
                  ori          a2, a7, 1921
                  nop
                  sltu         s8, a4, t6
                  nop
                  xori         s1, s5, 511
                  sub          tp, a0, t2
                  add          sp, t0, a2
                  and          a3, s10, a5
                  xor          a4, ra, ra
                  ori          t4, s10, -1233
                  xor          sp, s3, zero
                  slli         t3, a2, 6
                  sll          t1, a6, s1
                  nop
                  sltiu        t0, tp, 676
                  sltu         t2, s5, s7
                  nop
                  sra          sp, a2, a3
                  srli         zero, zero, 9
                  sltiu        ra, s1, 977
                  srai         t0, t6, 1
                  xori         a7, a4, -898
                  nop
                  slli         sp, s8, 20
                  slt          s5, t3, s10
                  slt          zero, s8, gp
                  sltu         t6, tp, t6
                  slt          s9, t4, a4
                  srl          ra, t1, t3
                  sll          s4, s5, gp
                  srai         a4, s5, 0
                  andi         t1, s1, -227
                  slt          s0, s10, zero
                  ori          s4, s1, -1814
                  sra          s6, a2, zero
                  nop
                  slti         t3, sp, 1460
                  lui          s9, 101409
                  xori         a3, a4, -1026
                  slti         s1, tp, 1955
                  slli         s8, t2, 24
                  sub          a4, tp, s2
                  sltu         t5, t3, t3
                  sltiu        t0, s0, 1390
                  xor          s2, a0, a4
                  auipc        t1, 426458
                  sub          s8, s3, a5
                  slli         t2, t1, 11
                  sll          a6, s0, gp
                  sltiu        tp, t6, 641
                  srli         s0, sp, 5
                  sra          s0, s10, s6
                  nop
                  xor          s4, s11, s10
                  slt          s0, sp, t3
                  or           zero, a3, s6
                  sra          tp, zero, s0
                  or           t0, s6, s9
                  xori         s6, s9, -1339
                  add          s8, s2, t6
                  sltu         a4, s4, s9
                  srai         s10, sp, 18
                  xor          a5, s3, s2
                  xori         t6, a2, 1604
                  addi         zero, t1, 696
                  add          ra, sp, s3
                  srai         a3, sp, 29
                  sltiu        zero, t0, -1907
                  and          t4, s11, gp
                  sra          a6, s7, zero
                  andi         s7, t0, 972
                  sltiu        t2, s2, 1561
                  andi         tp, s8, 3
                  sltu         t4, s0, tp
                  srai         a2, s6, 23
                  nop
                  xor          t2, s8, ra
                  addi         a7, t2, 1756
                  sll          s1, a2, t1
                  or           ra, s9, ra
                  srli         a5, t6, 8
                  sltiu        s2, s1, -660
                  sll          sp, a0, a7
                  ori          s10, a4, -1701
                  sltu         a3, t2, gp
                  slt          ra, sp, t6
                  slli         a5, sp, 25
                  lui          a2, 928292
                  sra          t4, ra, a7
                  andi         t2, s1, 49
                  xor          sp, s10, a7
                  srli         t0, t4, 29
                  sltiu        a5, t3, 192
                  add          s5, t2, s7
                  srl          tp, s6, a4
                  nop
                  sra          a4, t6, s1
                  andi         sp, tp, 898
                  lui          zero, 598750
                  or           s4, a1, s3
                  slt          a2, t4, s3
                  li           a2, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           s10, 0xffffffff
                  li           t4, 0x79ec9b23
                  li           t0, 0x0
                  li           a3, 0x80000000
                  li           t1, 0x0
                  li           ra, 0xffffffff
                  li           s1, 0x0
                  li           s4, 0x80000000
                  li           s6, 0x0
                  auipc        a3, 373328
                  lui          t4, 758551
                  lui          s1, 578834
                  add          ra, a2, s6
                  add          s6, s6, t0
                  auipc        s1, 896191
                  add          a3, t1, ra
                  nop
                  add          s4, ra, s6
                  auipc        s1, 970066
                  add          a3, s6, s1
                  lui          a3, 378292
                  auipc        s1, 741894
                  auipc        t1, 87364
                  nop
                  lui          t4, 800640
                  addi         t0, a2, 1425
                  addi         s1, a2, 917
                  addi         a2, t1, 112
                  add          s1, s4, t1
                  nop #end riscv_int_numeric_corner_stream_12
                  nop
                  xor          s5, s11, t5
                  ori          sp, s5, 953
                  srai         gp, a3, 20
                  sub          t1, s0, sp
                  ori          s1, s3, -706
                  andi         a3, s6, 67
                  addi         s1, t1, 357
                  sltiu        s0, s6, -1502
                  and          a2, s8, zero
                  srli         s4, t2, 26
                  srl          s1, t0, t2
                  and          zero, s8, a2
                  xor          s9, a5, a3
                  srai         s8, t2, 7
                  xor          a6, t6, s11
                  or           t6, a0, s6
                  srli         t4, s2, 28
                  sltu         t5, a4, s1
                  slti         a4, s9, 376
                  xori         t6, s5, -858
                  or           t4, s2, sp
                  srli         zero, t2, 2
                  add          s5, s4, s4
                  xori         s8, a7, -330
                  or           t4, zero, a3
                  sltu         a3, a0, t4
                  srai         s7, zero, 17
                  slli         t0, s7, 15
                  add          s2, a6, s0
                  srai         gp, s10, 28
                  sub          s8, s2, a4
                  auipc        t4, 814146
                  sra          a4, s4, gp
                  slli         zero, t2, 10
                  srai         sp, s6, 27
                  andi         s6, s1, -1121
                  slt          t2, s2, s5
                  andi         ra, s11, 583
                  sltiu        a5, t0, -99
                  sltu         a5, s1, t0
                  sltu         t3, zero, zero
                  sll          s6, s10, s8
                  and          sp, a4, zero
                  slli         t5, a0, 30
                  slli         t0, t3, 0
                  xor          t6, s11, s2
                  slti         s7, t0, -1288
                  srl          t6, a2, a0
                  sltiu        s5, s4, 208
                  nop
                  slt          a3, a2, sp
                  srai         s1, t4, 11
                  nop
                  slli         sp, a4, 10
                  nop
                  sltiu        sp, s6, 753
                  addi         s7, s11, 1292
                  slti         ra, a5, 1062
                  srli         a0, tp, 2
                  andi         s7, t2, -766
                  ori          a0, t1, 29
                  auipc        a7, 279239
                  slt          t0, ra, s11
                  xor          a4, zero, ra
                  slli         a7, a2, 20
                  and          t0, gp, gp
                  slli         s8, gp, 6
                  slti         a4, s7, 455
                  xor          a4, a6, a7
                  sub          a0, t6, zero
                  ori          ra, s4, 600
                  slli         t0, a1, 13
                  srli         t5, a5, 4
                  ori          gp, t0, 1161
                  srl          sp, ra, s7
                  lui          s7, 21354
                  sll          s4, a1, t4
                  slti         ra, sp, -98
                  add          a3, s0, sp
                  nop
                  auipc        s10, 14667
                  addi         t3, gp, -773
                  add          a5, t4, s1
                  sub          t1, t1, a2
                  sltiu        s10, s5, -965
                  lui          a0, 306674
                  nop
                  slt          s2, t0, s10
                  add          a6, ra, s3
                  xor          s0, t0, s3
                  slt          gp, a1, s9
                  auipc        gp, 685845
                  srl          s0, s11, a7
                  ori          s8, t4, -1434
                  sltu         a2, a3, s6
                  xor          s5, a4, a1
                  slti         a7, t6, -1566
                  srl          s4, t5, a2
                  xor          t6, a5, t5
                  ori          s9, t2, -217
                  andi         zero, sp, 93
                  sra          t4, s3, a3
                  srl          zero, a3, s8
                  andi         t4, s1, -1165
                  auipc        s0, 54167
                  add          a6, t3, t0
                  add          zero, a2, s1
                  xori         s6, a5, -184
                  nop
                  sltu         t6, a1, t2
                  xor          t3, s3, sp
                  or           a5, a2, gp
                  or           s2, a7, s9
                  lui          t0, 759383
                  nop
                  or           tp, s1, a0
                  sra          t1, s6, s3
                  andi         t2, s10, 797
                  sltu         s1, s8, a7
                  sltu         zero, s4, t5
                  lui          a3, 525160
                  nop
                  sltiu        a2, s1, 671
                  nop
                  sll          t1, a7, t1
                  slt          s10, s6, s10
                  nop
                  addi         s1, s1, 473
                  andi         a2, t6, 1225
                  addi         t5, zero, -1977
                  sltu         s9, a3, s1
                  lui          a6, 486528
                  srli         s9, a0, 13
                  slli         t6, t5, 23
                  auipc        a0, 581090
                  ori          sp, s5, 1664
                  ori          t1, s10, -1707
                  nop
                  add          s5, s9, a4
                  addi         t6, s1, -424
                  xori         a0, s8, 1677
                  ori          a3, t0, 789
                  sltiu        s0, s2, 494
                  srai         t6, s3, 29
                  srli         s5, s10, 7
                  xor          s5, a5, a4
                  or           s0, a1, s7
                  xor          sp, t6, t6
                  srai         s5, s7, 10
                  slt          s5, a5, a4
                  sltiu        s7, t1, 484
                  slti         t4, s11, -806
                  addi         t6, t5, -1252
                  nop
                  srl          t5, gp, t4
                  lui          s5, 420946
                  sltiu        a4, s3, -490
                  and          s5, a0, t2
                  srli         a3, t2, 30
                  xor          s1, s0, a3
                  nop
                  and          a5, sp, s6
                  add          t2, s11, t0
                  slli         t3, a0, 25
                  srli         a3, s4, 14
                  sltu         s8, s2, s10
                  slt          s10, a3, t3
                  srai         s10, a7, 12
                  sll          s4, s6, zero
                  xori         s0, t3, 48
                  srai         s4, a3, 3
                  andi         a6, t0, 924
                  xori         gp, t4, -1911
                  srli         s10, s7, 25
                  sll          s4, s7, s11
                  or           tp, zero, zero
                  sll          gp, s3, s9
                  xor          a4, t4, zero
                  srli         gp, t3, 26
                  auipc        s4, 198844
                  sra          gp, sp, a2
                  srl          s10, s0, a0
                  srai         gp, a6, 9
                  slt          s8, a2, a2
                  and          s1, a3, s11
                  sll          t0, t1, s1
                  auipc        t5, 831829
                  sll          t1, a7, t0
                  slli         a7, s8, 9
                  xor          s0, a1, t2
                  andi         t3, s10, -581
                  sll          s0, zero, s4
                  srli         tp, a4, 8
                  srai         s2, s2, 11
                  auipc        a3, 178461
                  nop
                  slli         t5, zero, 30
                  lui          s2, 992944
                  sub          gp, s11, a3
                  sll          gp, a7, sp
                  xori         t1, s3, -802
                  xori         a0, t0, -1687
                  and          s8, a0, gp
                  xor          sp, t1, a3
                  slt          zero, s7, t0
                  andi         s9, tp, -875
                  lui          s1, 871611
                  xori         s9, zero, 1422
                  xor          s4, t1, a0
                  lui          t4, 296818
                  or           s8, s8, s11
                  slt          s8, a0, s8
                  and          s1, s6, a1
                  sltiu        t3, t0, -1526
                  srl          a2, gp, ra
                  srl          t4, t1, ra
                  add          s4, s5, s0
                  srai         a4, s7, 19
                  or           tp, a1, a3
                  sub          s6, s7, s6
                  slti         s0, t0, 493
                  add          sp, a5, s7
                  srai         s5, t2, 5
                  slli         s2, a7, 2
                  addi         a6, s7, -1312
                  srai         tp, s2, 19
                  srl          a0, s11, s10
                  lui          s1, 417579
                  add          sp, s5, a2
                  slt          s4, s11, a7
                  nop
                  sub          t1, s3, t3
                  ori          s4, s8, 588
                  slti         t4, s9, -826
                  sltiu        t2, s4, -1461
                  sub          a4, s6, s2
                  xori         zero, zero, -322
                  slt          t5, t6, t6
                  slti         t0, s8, 667
                  srl          s1, a5, s3
                  or           s1, gp, t1
                  sra          s9, s9, gp
                  and          a3, a7, s9
                  xori         a6, t0, -1240
                  slli         a7, t0, 9
                  sra          s8, t3, a1
                  xori         s1, gp, 141
                  sra          s8, s2, sp
                  slt          s7, gp, a6
                  or           t0, tp, a2
                  srai         s4, ra, 24
                  nop
                  lui          a2, 757392
                  srli         zero, t4, 31
                  add          s7, t6, a4
                  andi         s9, t1, -85
                  xori         a4, s9, 1304
                  sra          a6, a7, t6
                  and          t2, sp, a6
                  lui          t2, 648669
                  addi         t2, sp, -1989
                  or           s8, t3, a0
                  xori         zero, a1, -1969
                  slti         s4, s7, 211
                  slti         t4, t3, 282
                  or           a3, s10, gp
                  sra          a5, s2, tp
                  andi         t3, s5, 462
                  srli         a7, s3, 1
                  add          t6, t3, a7
                  xori         s8, s0, 1122
                  slti         zero, gp, 1229
                  lui          tp, 863649
                  addi         t2, a2, 1788
                  andi         ra, sp, 1377
                  addi         s0, a4, -778
                  sll          sp, s5, s2
                  nop
                  lui          ra, 791457
                  sub          s6, t4, a5
                  sltu         t4, ra, s0
                  nop
                  sub          zero, sp, t3
                  sltu         a7, a3, a0
                  slli         a0, a7, 18
                  add          a2, s9, zero
                  srl          sp, s1, a1
                  andi         t1, a6, -382
                  xor          s4, s6, s0
                  xori         s6, a2, -689
                  xor          s10, s11, t0
                  srai         t6, s10, 10
                  srli         s9, tp, 28
                  addi         a2, a4, -1050
                  xori         t1, t6, 970
                  slt          s5, a1, a4
                  add          s9, t2, s9
                  addi         t3, s3, -232
                  ori          tp, sp, 690
                  xori         t5, s2, 1963
                  sll          s9, s3, a7
                  lui          gp, 789979
                  srli         s8, s4, 8
                  lui          s2, 41254
                  auipc        a2, 34610
                  xor          s0, s0, t2
                  andi         s9, ra, -580
                  srl          a0, gp, a4
                  sub          s5, s0, a4
                  sltu         s2, gp, a5
                  lui          a0, 916
                  xor          a2, t3, t1
                  slt          a4, s10, t0
                  xori         a2, tp, 863
                  sra          s7, tp, s4
                  add          t5, t2, a0
                  srl          s9, s4, t1
                  srl          t0, s7, s0
                  or           s1, t4, t6
                  or           a6, t2, s3
                  nop
                  ori          a3, s8, -56
                  auipc        s9, 709399
                  sll          sp, t0, a1
                  srli         t1, s5, 12
                  xori         t5, s9, -127
                  addi         a2, s0, 1507
                  sra          ra, a3, t3
                  xor          t5, s4, s6
                  ori          s1, ra, 1999
                  nop
                  xor          s9, a1, a0
                  xor          a0, s2, s5
                  auipc        s2, 306319
                  add          s6, ra, a1
                  or           gp, t5, t1
                  xori         t5, tp, 1810
                  sltu         a3, s0, a0
                  srl          tp, t2, a6
                  or           t2, a5, t5
                  sltiu        t2, s8, 1081
                  srli         zero, a1, 12
                  nop
                  slti         t1, s6, 1973
                  slti         s4, s4, 299
                  addi         s0, s7, 2042
                  sll          s9, s1, t4
                  srl          t6, s0, sp
                  ori          ra, zero, -1412
                  lui          t0, 1033434
                  srai         t1, a2, 9
                  slti         a7, s0, 1427
                  sltiu        gp, s8, -885
                  lui          t1, 26103
                  andi         s5, a2, 1637
                  and          t5, sp, s4
                  srli         a6, t1, 16
                  srli         t2, a5, 21
                  addi         tp, a1, 1280
                  auipc        s8, 568765
                  auipc        t3, 26365
                  sra          a5, t6, s10
                  auipc        a0, 606007
                  xori         a0, zero, -185
                  xori         a7, a1, 985
                  sub          s8, s6, t2
                  srai         t5, a5, 14
                  addi         a4, a3, 476
                  xor          zero, sp, s7
                  sll          a4, a1, a1
                  sltu         t6, ra, s3
                  auipc        s2, 605605
                  or           t2, zero, s4
                  addi         t5, a6, -1516
                  slt          t5, s0, a6
                  xori         t2, a1, 1535
                  srli         a2, s2, 17
                  slt          ra, gp, s2
                  xori         s8, t5, 191
                  or           tp, t0, s3
                  nop
                  ori          tp, s2, 1507
                  sltu         s4, tp, t2
                  slti         s6, t5, 1897
                  sra          a7, s7, s8
                  add          s5, a7, tp
                  nop
                  addi         s10, t0, -27
                  sra          t3, s3, a4
                  xori         s7, t0, 1322
                  sltu         a3, s4, a7
                  andi         a5, t3, 370
                  sub          t3, s5, a7
                  nop
                  or           a7, a6, a4
                  slti         a7, t3, 1517
                  and          t3, a0, s7
                  sltu         sp, s4, sp
                  srai         t0, gp, 1
                  andi         zero, t6, -1223
                  or           ra, a7, s8
                  and          gp, a5, t2
                  slti         t3, s6, -658
                  ori          sp, s3, 1988
                  xor          t6, s1, gp
                  andi         s9, zero, 142
                  xori         s4, s7, -399
                  sra          ra, s6, s5
                  andi         t4, sp, -21
                  xor          gp, t4, t5
                  xori         t1, t2, -363
                  sra          s1, a5, a2
                  ori          a7, s6, 163
                  sra          t0, s3, a6
                  and          t5, t4, a5
                  lui          a2, 392905
                  andi         t5, a4, 1065
                  ori          gp, t5, 1705
                  auipc        gp, 601178
                  sltiu        s4, a0, -1037
                  and          s6, s9, s0
                  xor          tp, t1, s11
                  srli         zero, a2, 26
                  lui          t5, 731631
                  xori         a0, t3, -1793
                  addi         t0, s11, -1828
                  or           s0, s4, s8
                  auipc        a0, 931977
                  sll          gp, s4, s9
                  ori          t5, a3, 1618
                  srai         s4, a6, 14
                  nop
                  sltu         a0, s8, a1
                  and          a4, s5, a5
                  xor          s5, s8, s11
                  slti         t0, s2, 1777
                  sra          a6, a2, t0
                  sub          s9, s7, sp
                  xori         a5, s6, -904
                  sltiu        zero, a7, 190
                  and          t1, t1, s10
                  ori          t3, a5, 1533
                  lui          s8, 785928
                  or           t0, s3, a2
                  srl          a7, t4, s1
                  slt          t1, t2, t4
                  ori          s2, s8, -686
                  sltu         sp, a4, s3
                  auipc        a0, 750975
                  addi         t3, s1, -1297
                  srai         a4, ra, 31
                  slli         ra, ra, 28
                  srai         a7, a0, 7
                  sll          a5, zero, a2
                  slli         sp, t6, 11
                  sll          t5, s5, s10
                  sra          t4, s10, s0
                  sll          t2, s7, zero
                  sra          t1, s6, s10
                  andi         s1, gp, -629
                  lui          s8, 290529
                  sltu         a4, s11, a1
                  and          ra, sp, s2
                  addi         ra, s0, -1688
                  sltiu        s2, t3, -899
                  nop
                  add          s6, t0, s0
                  sltu         gp, s7, a0
                  auipc        a6, 930742
                  andi         zero, a2, 586
                  slt          ra, ra, s8
                  nop
                  sltiu        gp, s7, -1443
                  or           s9, s0, tp
                  sub          s4, s6, s7
                  auipc        s1, 429493
                  ori          t4, sp, -761
                  auipc        zero, 871351
                  xor          ra, sp, s3
                  andi         s7, a0, -1310
                  andi         s8, s3, -1412
                  nop
                  add          s7, s11, zero
                  srl          t2, s1, a7
                  lui          t5, 848828
                  andi         gp, ra, 1383
                  xor          s8, a6, a4
                  slli         t3, s8, 28
                  sub          a2, s11, sp
                  ori          s8, a7, 1823
                  add          t6, s11, tp
                  ori          s6, t3, 1424
                  nop
                  lui          s4, 398101
                  srl          s1, s6, a6
                  auipc        s8, 339551
                  andi         a2, gp, 778
                  lui          s4, 569279
                  sub          t3, a6, t4
                  srli         a4, s0, 16
                  auipc        s7, 42315
                  slli         s8, t2, 14
                  xori         gp, t5, -1776
                  nop
                  nop
                  sra          s2, a1, a5
                  sltu         t3, s9, sp
                  sltu         ra, s6, s3
                  srai         a6, s6, 9
                  sltu         t0, ra, a0
                  sltiu        a7, ra, 780
                  slli         a6, ra, 31
                  srli         s8, s11, 21
                  sub          s2, s1, gp
                  slli         s0, t5, 27
                  slt          ra, tp, ra
                  sltiu        gp, a3, 1183
                  add          a0, zero, s9
                  slt          t4, s2, t0
                  nop
                  xori         a4, s1, 1119
                  xor          s0, a0, a0
                  sltu         t5, s9, gp
                  andi         zero, s0, 1949
                  srli         sp, s5, 9
                  sltiu        s8, t3, 203
                  sltu         a0, s9, s10
                  add          t0, sp, s9
                  ori          s8, zero, -1201
                  and          s7, s3, a6
                  and          s4, t5, a6
                  srl          ra, s7, t0
                  slti         a0, t6, 461
                  sra          a7, a7, ra
                  slli         s7, s9, 19
                  sltiu        sp, ra, -520
                  lui          s0, 985484
                  auipc        s4, 740647
                  slli         ra, s11, 3
                  auipc        s9, 469872
                  slli         t0, tp, 22
                  sra          s9, s2, t5
                  slt          tp, t5, s6
                  sra          t2, s10, a6
                  addi         t5, ra, -685
                  sll          t6, s5, s7
                  slli         s5, s5, 18
                  srli         a6, ra, 6
                  srl          a3, s0, s0
                  sltu         s10, a5, a0
                  xor          a4, sp, a5
                  srli         s9, a3, 14
                  sub          s5, t4, a6
                  srl          s7, t1, t6
                  srl          sp, gp, a4
                  srl          a0, s11, a0
                  sltu         s8, a1, s10
                  lui          a6, 239624
                  sll          s8, s10, s10
                  xori         a5, a0, -1189
                  nop
                  sltu         s5, a3, tp
                  andi         a7, t2, 2028
                  add          s2, gp, a6
                  sra          t4, s10, t4
                  add          a7, s7, gp
                  andi         gp, t1, 1507
                  ori          s7, s4, -1737
                  sltu         s2, s5, a5
                  sra          t6, s0, s5
                  auipc        t0, 190364
                  andi         a3, s7, 1012
                  and          t5, a0, s5
                  sltu         s8, tp, ra
                  xor          tp, t5, t5
                  sll          t0, a4, sp
                  srli         t1, s10, 1
                  srai         t4, a6, 21
                  slti         s7, s11, -871
                  xori         gp, a7, 363
                  or           t5, s2, s10
                  sra          tp, t0, s8
                  srai         s4, a6, 31
                  sra          s1, s8, a5
                  xori         t5, s4, -938
                  xori         s10, a3, 50
                  slli         s6, a5, 13
                  sra          a5, s3, a3
                  sltiu        a5, a7, 41
                  slli         a0, s0, 6
                  nop
                  sub          s7, s10, s6
                  sub          s2, s11, a7
                  srli         s2, t6, 8
                  slt          s5, tp, a3
                  xori         s5, s0, -905
                  sub          tp, s11, gp
                  sltu         a5, s0, tp
                  srli         zero, s5, 7
                  andi         t2, a1, -797
                  srai         t6, a5, 17
                  andi         s7, a1, 10
                  slti         t2, a2, 912
                  srli         a2, a4, 16
                  slt          s8, s0, t0
                  lui          a7, 531900
                  addi         gp, s4, 871
                  srl          a7, s5, s4
                  ori          s0, a4, -1898
                  sll          zero, s6, t0
                  andi         s9, t6, 988
                  nop
                  auipc        a4, 18874
                  sra          ra, t2, s5
                  sll          t0, a3, a2
                  sll          a2, t5, a1
                  addi         t4, a1, 300
                  and          a5, s3, s9
                  add          s2, s0, s3
                  srai         t2, s5, 20
                  slti         ra, s3, -1710
                  srli         t2, a5, 31
                  andi         s4, ra, 1672
                  srai         t2, s0, 15
                  xori         gp, s9, 199
                  slti         a4, s8, -1671
                  srai         s8, t4, 3
                  sub          ra, ra, a0
                  andi         s10, s7, -563
                  srl          sp, zero, a2
                  slti         a7, s11, -1041
                  addi         s9, s5, -1073
                  ori          zero, zero, 1880
                  slt          a0, a4, s8
                  sll          t6, a0, a3
                  xori         tp, s1, 126
                  sub          a4, a7, t6
                  sltu         tp, gp, s9
                  sub          s2, a4, s9
                  or           s0, tp, a4
                  or           s5, s2, t0
                  sltu         s2, a7, t2
                  sll          s4, t0, s10
                  sltu         sp, s9, s6
                  sltu         a2, a1, gp
                  ori          s5, a2, -1489
                  and          a7, a2, a2
                  addi         sp, t1, -1003
                  slti         s1, a6, -764
                  xor          s10, gp, sp
                  srl          a5, ra, s8
                  sltu         s0, s6, a4
                  ori          t5, t1, 942
                  sra          s7, s2, a1
                  nop
                  auipc        sp, 465676
                  or           t5, s3, t3
                  sub          s2, a4, sp
                  add          t4, a4, s4
                  nop
                  srl          s2, t0, s0
                  or           s9, t2, a4
                  add          a7, s0, s3
                  sll          a2, zero, a7
                  srl          s0, s7, t2
                  sub          s2, t3, s11
                  sub          tp, t2, t4
                  add          sp, a6, a3
                  srli         s2, tp, 8
                  andi         s9, t6, 1707
                  nop
                  sltiu        s1, tp, 25
                  sra          s0, t0, a7
                  add          a7, a3, s10
                  sltiu        t2, a6, 1693
                  xori         s10, t2, -1502
                  addi         a4, s8, 473
                  andi         s0, t6, 1698
                  xor          a5, zero, a2
                  add          t0, gp, s11
                  addi         s10, a4, -1174
                  and          t0, a6, s9
                  slti         s1, s1, 848
                  lui          s6, 553278
                  addi         sp, s11, 1181
                  xor          t6, a1, s4
                  slt          t4, a4, ra
                  sltiu        s2, s6, 211
                  slti         t2, t5, 1341
                  auipc        s9, 36173
                  srli         s4, t4, 11
                  sub          tp, t1, a0
                  sltiu        t1, a1, 129
                  slti         s7, a2, -1330
                  and          tp, a2, a6
                  srl          s2, a1, t4
                  srai         s1, s11, 8
                  srl          a5, s1, s6
                  auipc        s4, 713988
                  sll          a3, a5, a6
                  srl          t2, s5, t5
                  sltiu        t0, s4, 1490
                  nop
                  slt          a3, s3, s5
                  sltu         t0, t3, s7
                  xori         a4, t6, -740
                  xor          s8, s10, s1
                  addi         s2, s11, -504
                  or           a2, a4, a4
                  nop
                  lui          t2, 8443
                  auipc        s4, 394038
                  srl          zero, s1, s6
                  sll          s7, t2, s0
                  xor          s10, a1, s9
                  srli         ra, sp, 8
                  sll          s5, gp, s4
                  andi         s6, s9, 1032
                  sub          zero, s11, t1
                  slti         a5, a3, -495
                  add          s7, s7, sp
                  or           s6, t0, t6
                  xor          tp, ra, sp
                  srai         t2, a0, 3
                  sltu         a5, s8, tp
                  slti         t1, a4, 1405
                  sll          gp, s11, s9
                  sltiu        zero, a2, -1855
                  addi         a0, s7, 1345
                  xori         tp, s7, -1814
                  slli         s7, a6, 25
                  addi         t0, t4, -1020
                  or           ra, ra, t6
                  sltu         s6, s1, tp
                  sll          s2, t1, s3
                  sra          t6, sp, s1
                  lui          a2, 824445
                  nop
                  sra          tp, s0, t6
                  andi         s0, s1, 348
                  xori         zero, sp, -572
                  lui          t3, 191511
                  slt          t3, s8, t0
                  addi         ra, t5, 892
                  xori         t2, s8, -1917
                  add          a3, tp, sp
                  auipc        a2, 793442
                  sltu         t5, a5, s4
                  sltu         s7, t4, ra
                  slt          t5, s11, s7
                  addi         a0, s10, 1658
                  srl          s5, a5, s3
                  or           s5, a1, a7
                  and          ra, s11, s4
                  sra          s7, s2, a6
                  xor          s4, tp, t1
                  and          a3, a7, s6
                  slli         a2, a6, 25
                  srai         a7, s7, 19
                  sltiu        s8, t0, 2001
                  sub          a2, t5, s4
                  nop
                  sll          s6, a0, s5
                  nop
                  ori          s4, t1, 124
                  srai         t3, s0, 25
                  sra          a7, a2, t0
                  xori         a7, s9, -496
                  addi         a4, t6, -779
                  nop
                  sub          a0, a6, gp
                  sub          a4, a0, s5
                  sll          a7, sp, s10
                  nop
                  addi         a3, t1, 311
                  add          a2, t5, gp
                  la x27, test_done
                  jalr x0, x27, 0
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
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x11, x19, zero
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
                  1: la x27, test_done
                  jalr x1, x27, 0

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
                  la x27, write_tohost
                  jalr x0, x27, 0

instr_fault_handler:
                  add x19, x11, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

load_fault_handler:
                  add x19, x11, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

store_fault_handler:
                  add x19, x11, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

ebreak_handler:   
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x19, x11, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

illegal_instr_handler:
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x19, x11, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x4, 0x300 # MSTATUS;
                  csrr  x4, 0x304 # MIE;
                  csrr  x4, 0x344 # MIP;
                  csrrc x4, 0x344, x4 # MIP;
                  add x19, x11, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
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
