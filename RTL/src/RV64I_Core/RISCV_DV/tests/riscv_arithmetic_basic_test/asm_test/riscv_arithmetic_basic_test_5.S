.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x15, h0_start
jalr x0, x15, 0
h0_start:
                  li x27, 0x40000100
                  csrw 0x301, x27
kernel_sp:        
                  la x23, kernel_stack_end

trap_vec_init:    
                  la x27, mtvec_handler
                  ori x27, x27, 0
                  csrw 0x305, x27 # MTVEC

mepc_setup:       
                  la x27, init
                  csrw 0x341, x27

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x27, 0x1800
                  csrw 0x300, x27 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x5
                  li x2, 0x32488090
                  li x3, 0x80000000
                  li x4, 0x80000000
                  li x5, 0xb
                  li x6, 0x7a0a412f
                  li x7, 0x14b549a0
                  li x8, 0x80000000
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0xe
                  li x12, 0xf
                  li x13, 0x4
                  li x15, 0x0
                  li x16, 0x0
                  li x17, 0xd775ee2a
                  li x18, 0x80000000
                  li x19, 0xa
                  li x20, 0x80000000
                  li x21, 0x4
                  li x22, 0x80000000
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0xf398b099
                  li x27, 0x5
                  li x28, 0x80000000
                  li x29, 0x0
                  li x30, 0xc244f31f
                  li x31, 0x0
                  la x14, user_stack_end
main:             li           s11, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           a0, 0x80000000
                  li           a7, 0x0
                  li           sp, 0xffffffff
                  li           t4, 0xffffffff
                  li           a3, 0xffffffff
                  li           tp, 0xffffffff
                  li           s5, 0x240d572e
                  li           s4, 0xffffffff
                  li           s2, 0x80000000
                  lui          s5, 984295
                  lui          s4, 106080
                  sub          a7, a3, s4
                  sub          s5, a0, t4
                  addi         a0, s2, 909
                  nop
                  nop
                  sub          s5, tp, a3
                  lui          a3, 608816
                  lui          sp, 133794
                  nop
                  sub          s11, a3, a7
                  sub          a0, s11, s11
                  add          a7, a3, sp
                  nop
                  nop
                  sub          t4, t4, a0
                  nop
                  addi         s4, a3, 2034
                  addi         s2, s4, 951
                  sub          a3, s11, s4
                  add          s11, tp, s2
                  addi         s11, sp, -453
                  addi         a0, s5, 200
                  addi         sp, sp, -2028
                  lui          s2, 155263
                  lui          s4, 555583 #end riscv_int_numeric_corner_stream_1
                  li           a6, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           t1, 0xffffffff
                  li           a7, 0x181d66d6
                  li           s5, 0x0
                  li           t3, 0xffffffff
                  li           t2, 0xffffffff
                  li           s1, 0x845f8e38
                  li           t0, 0x8db088e1
                  li           t4, 0x80000000
                  li           s11, 0x80000000
                  add          t1, t3, s11
                  addi         t2, t3, -435
                  add          s5, s5, s1
                  sub          s1, t1, s1
                  lui          s5, 814905
                  addi         a7, t1, -410
                  addi         s1, t4, 990
                  add          t0, t0, a7
                  addi         t2, s5, -1978
                  sub          s1, t1, t0
                  auipc        t2, 647662
                  lui          a6, 506989
                  nop
                  sub          t2, s1, t2
                  addi         s11, t1, 1045
                  auipc        t0, 991304
                  nop
                  nop
                  auipc        t1, 578056
                  lui          t0, 640418
                  add          t3, t0, s1
                  nop
                  add          a7, s5, t4
                  lui          a6, 965031
                  sub          t1, s1, a7 #end riscv_int_numeric_corner_stream_18
                  li           a0, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           t5, 0x63d3f70f
                  li           s6, 0x80000000
                  li           s9, 0x0
                  li           s10, 0xded25ebf
                  li           s0, 0x80000000
                  li           t2, 0x0
                  li           t0, 0x0
                  li           ra, 0x80000000
                  li           s8, 0x581eafaa
                  addi         s8, s0, -287
                  addi         s8, a0, 668
                  add          t0, t2, s6
                  auipc        s8, 311557
                  sub          s9, t2, a0
                  sub          t5, s9, t0
                  addi         ra, t2, -854
                  add          ra, t2, s10
                  sub          ra, t0, ra
                  sub          s9, s8, s6
                  sub          s10, s8, s10
                  lui          s0, 185225
                  auipc        ra, 707346
                  nop
                  auipc        s9, 112249
                  auipc        s8, 798854
                  addi         s10, s10, 1860
                  auipc        s0, 396482
                  nop
                  add          t2, a0, s9 #end riscv_int_numeric_corner_stream_9
                  li           gp, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           t0, 0x80000000
                  li           t6, 0x0
                  li           s9, 0x0
                  li           s4, 0x54ac0841
                  li           s3, 0x0
                  li           t2, 0xbb354983
                  li           s1, 0x80000000
                  li           s10, 0x80000000
                  li           a2, 0xffffffff
                  auipc        t2, 332072
                  auipc        a2, 371321
                  add          t6, s3, t6
                  addi         s1, s1, 679
                  addi         t0, a2, 898
                  auipc        s4, 433349
                  lui          s10, 549689
                  auipc        s3, 565964
                  sub          gp, s9, t0
                  lui          a2, 114020
                  nop
                  sub          s1, t6, s4
                  lui          s1, 683768
                  add          s9, t0, a2
                  auipc        a2, 168218
                  lui          gp, 225488
                  sub          a2, s1, t2
                  add          t0, a2, t6
                  auipc        t2, 127066
                  add          s1, s10, s1
                  add          gp, s4, t6
                  auipc        t0, 702336
                  add          s9, t6, t2
                  add          t0, t6, t2
                  add          t2, gp, a2
                  auipc        t0, 1007799
                  add          a2, s10, t2 #end riscv_int_numeric_corner_stream_6
                  li           a6, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           a0, 0xffffffff
                  li           s0, 0x80000000
                  li           s1, 0x0
                  li           a7, 0xccb4cb82
                  li           t5, 0x80000000
                  li           s3, 0x0
                  li           s9, 0x74fff4ed
                  li           sp, 0xffffffff
                  li           t0, 0xffffffff
                  lui          s0, 262998
                  auipc        s0, 988586
                  add          t0, a7, s3
                  addi         s0, a0, 1836
                  addi         sp, t5, -1806
                  nop
                  add          t0, s9, a7
                  nop
                  nop
                  auipc        a0, 5841
                  auipc        s3, 909304
                  auipc        s9, 614675
                  addi         t5, a0, -1259
                  lui          sp, 264168
                  nop
                  lui          s1, 119822
                  sub          t5, t5, t5
                  auipc        sp, 885977
                  lui          a7, 784459
                  add          a6, s9, t5
                  addi         s3, s1, 2014
                  lui          a6, 761943
                  add          a6, s9, a7 #end riscv_int_numeric_corner_stream_5
                  li           t6, 0xa8b6e9d1 #start riscv_int_numeric_corner_stream_13
                  li           a3, 0xc8fb9653
                  li           t0, 0x0
                  li           t1, 0x7228e5dd
                  li           ra, 0xffffffff
                  li           s9, 0xc4000dd6
                  li           sp, 0xf4c66985
                  li           s10, 0x0
                  li           s0, 0xffffffff
                  li           a1, 0x0
                  sub          s0, s0, sp
                  lui          s9, 266867
                  auipc        t1, 35000
                  auipc        s10, 886528
                  add          ra, sp, ra
                  add          s9, a1, t0
                  lui          sp, 454590
                  addi         sp, s0, -1936
                  addi         s10, a1, 1922
                  add          s10, a3, s0
                  lui          t1, 572808
                  nop
                  addi         ra, t1, 1953
                  sub          ra, a1, a3
                  lui          s10, 603852
                  addi         t0, a3, -705
                  lui          s9, 310180
                  nop
                  lui          s9, 1017704
                  nop
                  nop
                  nop
                  sub          sp, s0, t1
                  addi         t1, s0, 1355
                  lui          t1, 257527 #end riscv_int_numeric_corner_stream_13
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           t3, 0x0
                  li           s9, 0xdd2250f9
                  li           s11, 0x0
                  li           s3, 0x7b52ae65
                  li           a0, 0x0
                  li           a1, 0xffffffff
                  li           s10, 0x80000000
                  li           s8, 0x80000000
                  li           s2, 0x0
                  nop
                  sub          s2, s3, a1
                  nop
                  nop
                  auipc        s3, 388341
                  auipc        t3, 297065
                  addi         s10, a0, -1218
                  lui          s11, 495358
                  add          a1, t3, s11
                  nop
                  sub          s2, t3, s8
                  sub          a1, a0, s3
                  sub          ra, s11, ra
                  sub          s2, s11, a0
                  sub          s8, ra, s10
                  auipc        ra, 294529
                  addi         ra, t3, 2025
                  lui          ra, 561452 #end riscv_int_numeric_corner_stream_3
                  li           a2, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           s4, 0x5593b713
                  li           s0, 0x80000000
                  li           s10, 0x80000000
                  li           s8, 0x0
                  li           tp, 0x2a0698aa
                  li           a6, 0x80000000
                  li           s2, 0x0
                  li           t4, 0xffffffff
                  li           a0, 0x80000000
                  add          a0, s8, tp
                  add          s2, a0, tp
                  add          s8, a6, a6
                  sub          s10, a6, t4
                  nop
                  addi         s4, a2, 48
                  add          s10, tp, s10
                  sub          s0, a0, a0
                  sub          s0, s2, s4
                  auipc        a6, 150903
                  auipc        tp, 383162
                  lui          s0, 582413
                  add          a0, tp, a0
                  nop
                  auipc        a0, 1019288
                  nop
                  add          tp, a6, a0
                  auipc        a0, 339315
                  addi         t4, s8, 759
                  add          s8, a0, s10
                  add          s8, a6, a2
                  add          a2, a2, t4
                  addi         s0, tp, 1684
                  sub          s2, a0, t4
                  addi         s10, s2, 1249
                  sub          tp, s0, s10 #end riscv_int_numeric_corner_stream_7
                  li           gp, 0xe2669840 #start riscv_int_numeric_corner_stream_15
                  li           s4, 0x965eef82
                  li           a7, 0x80000000
                  li           s6, 0x80000000
                  li           a0, 0x0
                  li           a6, 0xffffffff
                  li           s3, 0x0
                  li           t0, 0x2bfea613
                  li           s1, 0xffffffff
                  li           s5, 0x80000000
                  auipc        a0, 599894
                  nop
                  lui          s5, 224618
                  lui          s6, 384976
                  add          s3, s4, s4
                  add          a7, gp, gp
                  nop
                  sub          t0, a6, t0
                  addi         s6, a7, 957
                  addi         s4, s1, -1380
                  sub          s4, s4, a7
                  lui          s3, 503643
                  auipc        a0, 35462
                  sub          s5, s3, a6
                  sub          s3, s3, s6
                  lui          s4, 180682
                  lui          s4, 291960
                  sub          a7, t0, s1 #end riscv_int_numeric_corner_stream_15
                  li           a0, 0xfd2000e8 #start riscv_int_numeric_corner_stream_17
                  li           a6, 0xffffffff
                  li           t3, 0x80000000
                  li           s9, 0x9a0787a1
                  li           t6, 0x80000000
                  li           a2, 0x0
                  li           s3, 0x80000000
                  li           s10, 0xffffffff
                  li           gp, 0x4c23eb78
                  li           t1, 0xffffffff
                  lui          s3, 912307
                  add          gp, a2, t6
                  lui          a2, 999803
                  sub          t3, a0, t3
                  lui          t6, 912381
                  lui          t1, 157453
                  sub          a6, t1, t6
                  sub          s9, t1, gp
                  nop
                  add          t3, s10, a2
                  addi         gp, t3, 552
                  lui          a6, 55086
                  addi         s9, t1, 15
                  add          t3, s3, t1
                  add          s3, t3, t1
                  addi         s9, t6, 160
                  addi         s9, t1, -2022
                  sub          s10, a6, a2
                  nop
                  auipc        s3, 5827
                  sub          a0, t6, gp
                  nop #end riscv_int_numeric_corner_stream_17
                  srai         a7, a2, 21
                  sll          a0, s9, t4
                  slti         a0, ra, 1227
                  or           s5, s9, zero
                  sra          a7, a4, s6
                  xor          s4, s9, a0
                  srai         a7, t5, 1
                  slti         s1, a5, 1875
                  sll          s2, s11, a4
                  sub          a6, s10, s6
                  auipc        t2, 860267
                  slli         t6, s7, 25
                  nop
                  srl          a0, s8, t2
                  or           s0, s9, tp
                  sll          zero, a6, t0
                  lui          a6, 704200
                  srli         a6, t3, 19
                  sra          s6, t5, t3
                  add          a6, s10, gp
                  slt          s4, a2, a5
                  srai         a3, s11, 16
                  add          s1, t0, s2
                  and          a2, s2, s1
                  or           s6, s3, a1
                  srl          s1, s4, t0
                  auipc        gp, 263995
                  lui          s5, 70733
                  srli         s10, t6, 20
                  lui          t1, 18526
                  srl          t5, a4, s7
                  or           t6, gp, s8
                  sra          ra, s2, t3
                  srli         zero, a2, 27
                  srli         zero, tp, 28
                  add          s6, s10, t6
                  sltu         s4, s5, t3
                  lui          t4, 575118
                  ori          t6, a6, 1095
                  or           ra, a5, a6
                  addi         s8, s2, 1027
                  slti         s2, t2, 1031
                  srli         s0, a0, 14
                  lui          zero, 804403
                  andi         tp, zero, 1762
                  or           zero, s10, s2
                  sltiu        s10, t4, -540
                  auipc        tp, 994323
                  sra          t2, s7, a2
                  srli         t4, a2, 22
                  addi         t2, a5, -339
                  xor          t2, a1, s10
                  slt          ra, a1, s5
                  slti         ra, t0, -380
                  srl          gp, a0, zero
                  srl          a7, s8, a7
                  auipc        s10, 22731
                  slt          ra, sp, s7
                  nop
                  sra          s6, s7, s10
                  ori          a3, s3, -1150
                  ori          s2, a4, -160
                  and          a7, s11, a1
                  sltiu        zero, a2, -838
                  sll          s1, s6, a3
                  andi         a0, t0, -155
                  sra          t3, a2, t1
                  slt          a1, t1, s1
                  sltiu        s0, ra, 331
                  and          tp, t4, t4
                  andi         t4, s0, -2021
                  slt          t5, tp, a4
                  nop
                  sra          gp, t3, a1
                  andi         a6, s0, 1220
                  add          s0, s3, s5
                  lui          s0, 808276
                  sub          ra, gp, a1
                  ori          zero, s3, -1378
                  srl          a0, a4, t0
                  sltu         sp, zero, a6
                  sra          s9, s2, s4
                  auipc        s1, 473311
                  lui          t4, 438729
                  srl          gp, a5, t2
                  srai         a6, a6, 11
                  ori          s9, s9, 1655
                  srli         s6, a7, 1
                  srl          t1, a5, s3
                  auipc        gp, 38208
                  andi         a7, a1, -349
                  ori          s0, a5, 1895
                  sub          t2, a7, gp
                  nop
                  addi         t3, t5, 1527
                  ori          a0, gp, -595
                  or           a6, s3, a7
                  addi         s3, t4, 431
                  xor          s6, t2, sp
                  srai         a3, t3, 1
                  xori         gp, t6, 765
                  slt          zero, t1, a0
                  and          sp, s5, s2
                  sub          s10, s11, s2
                  srai         s9, t3, 26
                  sub          a0, s5, t3
                  andi         s2, gp, 338
                  lui          s3, 243916
                  xori         a3, s1, -395
                  lui          a3, 276980
                  lui          a7, 391192
                  slt          s4, zero, a0
                  sub          a6, t3, a2
                  sra          s6, s5, zero
                  nop
                  lui          tp, 588852
                  xori         t5, a1, 56
                  sll          s1, tp, s11
                  srli         sp, t3, 11
                  nop
                  nop
                  auipc        s1, 152359
                  slti         t4, s10, 1257
                  add          s1, s6, t6
                  xori         tp, s2, -1221
                  addi         sp, a3, 389
                  srai         gp, t4, 30
                  sltu         t2, a5, s1
                  sra          a0, s7, s5
                  sll          a7, a5, a1
                  nop
                  andi         t5, a0, 766
                  ori          a2, t5, -1380
                  sra          tp, s5, a0
                  and          ra, a0, t4
                  slt          t4, a6, t1
                  slli         t6, t4, 20
                  sltiu        s5, t4, 458
                  srai         s0, s5, 10
                  xori         t2, a1, 1949
                  auipc        s9, 81918
                  auipc        a6, 140375
                  xori         t3, s8, -20
                  xori         s5, a2, -1069
                  xori         a0, s4, 1800
                  nop
                  auipc        s4, 239715
                  lui          a3, 384087
                  slti         gp, gp, 218
                  srl          s11, t2, s7
                  addi         tp, t2, 167
                  sra          a6, ra, s1
                  srl          s3, s11, a5
                  ori          s1, gp, -127
                  xori         a2, t0, 1595
                  sll          s1, s11, gp
                  slli         s10, t4, 11
                  slti         t2, t3, 1450
                  srai         s11, s4, 19
                  slti         s9, a4, -905
                  srli         a1, s1, 22
                  and          sp, s3, a1
                  andi         s6, t2, 1885
                  sltu         s3, sp, a4
                  addi         s8, t5, 402
                  andi         t4, t4, 852
                  auipc        s2, 970538
                  or           ra, s9, s11
                  sltiu        gp, s7, -1112
                  srl          t0, s3, s7
                  sltiu        s3, ra, -1711
                  srai         sp, t0, 21
                  srl          s11, s2, t1
                  srli         s1, a7, 28
                  sll          s5, s4, a0
                  lui          t5, 247703
                  sub          t2, s1, a1
                  sltiu        zero, s10, -1877
                  sra          a0, s9, a4
                  srai         t3, tp, 23
                  sra          t4, s5, s0
                  slli         a1, t6, 12
                  add          gp, t5, t6
                  sll          t6, s0, a6
                  ori          ra, t6, -1801
                  srl          s1, ra, a5
                  auipc        a6, 658862
                  srli         a2, s4, 6
                  slti         t1, s10, 157
                  sll          gp, a3, gp
                  sltu         a6, s9, t5
                  sltiu        a1, tp, -372
                  and          t4, a1, s4
                  lui          t2, 877864
                  slt          t1, s5, a4
                  sltiu        sp, a2, 1044
                  and          s10, t2, t4
                  sra          s6, a3, t0
                  sltiu        t4, t0, 1828
                  addi         s5, s1, 273
                  ori          sp, tp, 1769
                  sll          t2, a6, a1
                  sltu         t5, zero, s1
                  auipc        t2, 760490
                  xor          s11, zero, s6
                  slt          a6, s1, a6
                  sub          a3, s11, tp
                  sra          a3, s10, a2
                  or           a1, s4, s2
                  auipc        t6, 505606
                  srl          t0, s11, zero
                  slt          a7, t2, a6
                  xor          gp, t3, t3
                  and          s3, t3, a5
                  sltiu        a6, s2, 815
                  slli         s3, t0, 3
                  ori          a2, s6, 685
                  nop
                  slt          a6, a1, t2
                  nop
                  sll          t4, a7, s9
                  andi         t5, a2, 645
                  or           a3, ra, s11
                  lui          tp, 974544
                  srl          t1, a7, s9
                  ori          s10, s3, 639
                  lui          t2, 658102
                  srl          s9, t5, a5
                  slti         s2, zero, -1179
                  sra          s4, s2, s3
                  xor          t1, t3, s10
                  andi         a2, a0, -281
                  xor          s5, t2, s8
                  or           s4, t0, t0
                  ori          a3, s6, 2039
                  lui          t0, 1022344
                  srl          t1, zero, s11
                  ori          tp, sp, 1554
                  or           zero, a3, a2
                  add          s9, s6, t4
                  sll          t0, a3, t2
                  ori          a6, s5, 1362
                  sll          a1, tp, a4
                  nop
                  andi         gp, s9, 826
                  xor          s9, s7, a7
                  sll          ra, a5, a3
                  nop
                  srai         tp, s0, 28
                  srai         a1, s8, 15
                  auipc        t6, 719401
                  srl          a1, a7, t3
                  and          t1, a0, t6
                  srl          a1, s4, a6
                  slti         s10, a1, 181
                  sltu         s11, s0, s1
                  slt          s10, a2, s6
                  andi         s9, s9, -1932
                  slti         t3, tp, -679
                  andi         t5, sp, -2030
                  slli         a2, s4, 6
                  or           s11, s1, s11
                  add          ra, s3, a6
                  sltiu        s5, t3, 876
                  addi         s10, s9, -1338
                  and          zero, t1, t5
                  xori         t1, s5, 391
                  lui          s8, 1045283
                  srl          t6, s5, s9
                  and          s8, a3, s11
                  sub          s10, zero, s11
                  sltu         s3, t4, t6
                  xori         s8, a3, 190
                  nop
                  lui          tp, 1009334
                  sub          s1, a2, t2
                  slli         sp, a2, 1
                  sltiu        t2, t1, 1305
                  auipc        s2, 537799
                  xori         zero, a4, -1933
                  addi         s1, a5, 1364
                  lui          t3, 403718
                  sub          a3, s11, t2
                  srli         t6, a5, 14
                  lui          t3, 551726
                  sltu         tp, ra, s11
                  srl          t4, s2, a1
                  and          s3, t3, s3
                  add          a1, s8, s1
                  lui          t4, 590505
                  slli         s1, s6, 9
                  auipc        gp, 322118
                  slti         a1, s7, 900
                  andi         gp, t6, 1570
                  sll          a3, s0, a7
                  nop
                  addi         a6, s11, -732
                  or           s10, s11, t1
                  xor          t4, a2, a7
                  srl          a0, s4, s2
                  ori          a2, t2, 92
                  add          t6, t4, t1
                  slti         t0, s6, 758
                  sltiu        s4, s8, 1072
                  nop
                  auipc        t2, 504132
                  sub          s1, s9, t4
                  srai         a6, t4, 17
                  sra          a7, s11, s7
                  nop
                  auipc        s8, 344438
                  xor          tp, s8, s3
                  xor          s8, t6, s8
                  xori         a2, tp, -1282
                  addi         tp, a5, -82
                  nop
                  srl          a1, t5, sp
                  ori          t0, t5, -851
                  lui          ra, 942539
                  sltiu        tp, zero, 1860
                  andi         t1, a0, 1896
                  sub          s4, zero, zero
                  or           s8, s1, s11
                  sltiu        zero, t2, 773
                  and          s10, s9, s6
                  srai         t6, s2, 11
                  andi         t0, s7, 908
                  sra          s0, s4, s2
                  sub          a3, tp, s8
                  xori         t1, t5, -501
                  and          s9, t2, s7
                  add          a3, s8, s5
                  slli         t4, a2, 31
                  sll          ra, t0, a6
                  sltu         s0, s0, s1
                  andi         s10, t0, 629
                  andi         a3, a6, -1292
                  and          s5, a5, tp
                  slli         a1, s2, 5
                  slt          t5, t0, ra
                  slli         t0, gp, 26
                  lui          t6, 741043
                  or           t5, a3, t4
                  slli         s2, s8, 16
                  sltiu        tp, s6, -1806
                  srl          t2, s2, zero
                  srl          a1, s9, gp
                  sra          t2, a3, a3
                  or           s5, s3, gp
                  slt          t3, s2, t1
                  andi         s9, t6, -1754
                  nop
                  sltu         s6, sp, s3
                  nop
                  nop
                  ori          t6, t2, 96
                  addi         s2, s3, 1126
                  sltu         a1, a2, s3
                  sub          t6, t1, a0
                  slti         a0, gp, -179
                  sra          ra, t2, tp
                  slli         t0, s8, 7
                  sltiu        s10, a1, 937
                  srli         ra, s0, 23
                  nop
                  addi         a3, a6, -1083
                  sub          s3, a2, s4
                  andi         s5, t0, 1365
                  xor          s9, a2, a5
                  slli         s0, gp, 17
                  sub          s3, t5, s11
                  sra          s8, zero, t4
                  or           s2, t1, s8
                  sll          a3, gp, s7
                  slti         s3, a4, -1390
                  sra          t2, s10, s7
                  sltu         t4, a6, s11
                  sll          s1, t4, s3
                  srl          s2, s1, tp
                  sltu         s8, s9, s10
                  slli         t5, s11, 15
                  slt          a6, a5, t3
                  sltu         sp, s6, t4
                  sll          s4, s1, a2
                  srli         s8, tp, 21
                  slt          s10, s8, s11
                  slli         t2, t5, 30
                  and          t5, t4, a4
                  sra          zero, tp, s9
                  lui          gp, 845211
                  xor          s2, s9, s8
                  sra          s2, a2, t6
                  auipc        a0, 880678
                  nop
                  sltiu        a2, sp, -88
                  sra          a3, t1, gp
                  ori          t1, s6, -1559
                  xor          t1, s11, t3
                  or           s5, s9, t0
                  addi         a2, s1, 1996
                  lui          a7, 787779
                  and          t3, a5, a5
                  lui          sp, 293682
                  add          s4, t5, tp
                  srl          s11, s7, a5
                  sub          t0, a4, t1
                  srai         gp, s2, 16
                  sub          t5, t5, s10
                  addi         s2, t4, -1741
                  xor          s0, s6, sp
                  nop
                  slti         s8, s0, 324
                  srl          a3, s10, a6
                  and          s9, s6, zero
                  auipc        a1, 421797
                  and          a6, s0, s7
                  xori         ra, ra, -688
                  and          t6, t4, t2
                  slti         s11, s0, -1749
                  slti         a0, s11, -86
                  addi         sp, s9, 1013
                  ori          t5, t6, -941
                  srl          t6, a0, a5
                  sll          s6, a4, s1
                  and          a2, t5, a3
                  or           s3, t0, a0
                  ori          t3, t6, 689
                  sub          s8, a2, a1
                  xori         t6, a7, -376
                  srl          s3, s0, s8
                  slli         s5, s8, 5
                  sub          a7, ra, a0
                  nop
                  srli         sp, s10, 10
                  slti         s3, t4, 98
                  srli         t6, s6, 16
                  xori         s11, a0, 1231
                  xori         a7, s8, -69
                  xori         a7, a2, -117
                  nop
                  nop
                  xor          t1, gp, s2
                  sltiu        t5, a6, -1491
                  nop
                  lui          a1, 704151
                  ori          a3, t1, -1504
                  or           s5, s10, t0
                  add          a0, t3, t4
                  or           t3, a4, s6
                  slt          s10, s4, a7
                  srai         s0, t6, 4
                  sll          s5, s3, t1
                  addi         t3, t1, -2004
                  nop
                  slti         t3, s2, 1600
                  auipc        a3, 516417
                  sll          t2, s2, s3
                  add          t1, t5, t2
                  addi         a3, t1, 1749
                  addi         t1, a2, -1475
                  slt          a2, a0, s4
                  addi         s5, s10, 1799
                  sub          t2, ra, s10
                  sub          a0, a1, s4
                  sub          gp, t3, t6
                  auipc        s2, 670482
                  andi         a7, sp, 517
                  slli         s9, gp, 4
                  xori         t2, a4, -183
                  sltu         s5, t2, a3
                  andi         t0, a2, 1644
                  addi         ra, gp, 446
                  srai         t0, a0, 31
                  srl          s10, ra, s1
                  addi         zero, t6, 1450
                  sub          gp, s11, s4
                  sll          t1, s9, s6
                  srli         zero, t6, 9
                  sll          a7, t1, s11
                  sll          t3, s4, t0
                  lui          t4, 773178
                  auipc        s1, 109453
                  auipc        t3, 455589
                  and          a7, a4, s7
                  add          t2, ra, a5
                  slli         s0, s1, 20
                  sra          zero, a0, a6
                  lui          s8, 893458
                  srli         t3, tp, 0
                  add          a0, s4, a3
                  srai         gp, sp, 27
                  slli         a2, t4, 10
                  lui          a1, 497836
                  sltu         a2, s3, s2
                  and          t0, gp, a7
                  or           s3, t4, a4
                  auipc        s3, 184225
                  slt          a2, a5, t4
                  xor          s8, s1, s9
                  andi         s5, tp, 1211
                  srai         gp, s4, 25
                  srli         s0, s10, 6
                  add          sp, a3, a0
                  add          t4, s10, gp
                  nop
                  sltu         zero, s0, a6
                  slt          t1, a4, s4
                  sra          t2, tp, t5
                  srai         s5, s10, 5
                  xor          zero, s7, s5
                  slt          a6, a3, s6
                  slli         s4, t2, 30
                  auipc        t4, 540504
                  sub          s5, ra, sp
                  or           t2, t4, t3
                  sltu         a1, a3, a3
                  ori          a3, s7, -1781
                  sll          s3, s5, a4
                  slli         t2, sp, 27
                  ori          zero, a6, -89
                  sll          a7, t4, s7
                  sltiu        a0, ra, -884
                  lui          sp, 425798
                  xori         s3, s5, 229
                  slt          a3, s5, gp
                  srli         sp, s1, 30
                  nop
                  srl          s6, zero, ra
                  slli         s2, a1, 31
                  ori          s4, s6, -640
                  add          a7, t3, a2
                  slli         s11, s5, 20
                  sll          t6, s4, gp
                  sll          t1, a4, tp
                  or           t2, s10, a5
                  nop
                  and          a3, s10, a4
                  add          s3, t6, a5
                  add          s1, s6, tp
                  sub          t1, s1, a4
                  srl          t3, s7, zero
                  and          s2, s1, s0
                  sll          t4, t5, t5
                  xor          t2, s7, a7
                  ori          gp, gp, 91
                  addi         s2, a7, 1988
                  nop
                  srli         a6, s4, 17
                  slti         t3, t1, -446
                  srai         t0, s9, 3
                  srai         a3, t6, 2
                  xori         a2, s7, 116
                  lui          a6, 153870
                  and          t1, t6, gp
                  andi         t1, s9, 702
                  sltu         t1, s6, s3
                  lui          a7, 723141
                  srai         t4, s1, 28
                  add          s10, t0, t4
                  add          a1, t2, s8
                  srai         s4, tp, 9
                  sra          a3, sp, t5
                  slli         s9, t3, 4
                  srai         s5, s11, 11
                  nop
                  srli         s5, s3, 31
                  slti         s3, a7, 585
                  sll          t0, t1, zero
                  and          s3, ra, s0
                  sra          a0, s4, t6
                  sltu         t5, s0, a4
                  auipc        zero, 1002382
                  add          s5, t3, s7
                  slt          s4, s4, sp
                  srl          s3, s10, s4
                  lui          a3, 134828
                  nop
                  sltiu        s10, t3, -1559
                  slli         s3, a2, 23
                  nop
                  andi         a2, gp, -2019
                  and          a1, a2, s9
                  lui          gp, 474988
                  slti         s8, s3, -1571
                  xor          a0, s11, a1
                  srli         s1, t3, 4
                  sra          a0, s11, s7
                  andi         s5, s7, 611
                  srli         a0, s9, 13
                  slti         s9, t2, 331
                  slti         s6, s4, -906
                  slli         sp, s7, 6
                  sra          t1, s4, t5
                  addi         a1, a7, -286
                  srli         sp, t0, 16
                  ori          a0, sp, -1098
                  srl          gp, s6, a3
                  srl          s6, s10, s3
                  slt          a0, s7, t6
                  slti         s4, t2, -124
                  nop
                  nop
                  nop
                  slti         zero, s7, 1493
                  srai         s1, a1, 21
                  slt          s2, gp, s4
                  srli         a7, t1, 1
                  sra          s5, t2, t4
                  srai         s2, a5, 3
                  add          s6, t0, s0
                  addi         t3, s10, -1884
                  xori         t1, s3, -1819
                  slli         t0, sp, 31
                  sltiu        a0, s3, 435
                  xori         s10, s10, -804
                  sltu         a1, tp, s4
                  sll          a7, a1, a0
                  auipc        a6, 872787
                  sltu         a2, t1, s8
                  andi         t5, t5, 1869
                  sll          s6, s8, a5
                  srli         s11, s4, 11
                  sltu         gp, t3, t0
                  sltu         s6, s9, s7
                  and          zero, s11, s7
                  xori         s6, s2, -1485
                  ori          a7, t3, 1793
                  sra          s8, s1, a1
                  andi         t3, a4, 1980
                  or           t4, a4, t5
                  sll          a2, a0, s8
                  ori          s9, s4, -144
                  and          t3, s10, t2
                  srl          t6, t1, a0
                  or           tp, a3, t1
                  andi         tp, t5, 1297
                  sltiu        s4, a5, 964
                  andi         a2, t5, 928
                  addi         t1, s6, -345
                  sra          tp, s3, a5
                  add          zero, a0, a5
                  xor          ra, a5, a5
                  nop
                  srl          a2, s1, t1
                  slti         a7, t5, -719
                  xori         a1, a6, 1684
                  ori          s0, s10, -255
                  xor          a7, s9, s7
                  srl          s5, s6, s6
                  sltiu        ra, t0, -622
                  slt          a1, t2, a1
                  xori         t5, t0, 1246
                  sltu         gp, a5, ra
                  srli         s10, t5, 29
                  andi         t6, s3, -760
                  ori          tp, s10, -767
                  nop
                  sll          t3, s11, s4
                  and          t5, t2, ra
                  sub          s4, zero, s7
                  srai         gp, ra, 31
                  srli         sp, a0, 3
                  slli         t6, s7, 28
                  srl          zero, a4, a7
                  and          t6, s2, s8
                  sltu         s1, s3, s8
                  sltu         a7, tp, a3
                  xor          sp, tp, t0
                  srai         t2, a6, 20
                  sltu         s11, t5, s8
                  srl          s3, t6, t4
                  sra          s5, a1, t3
                  sltiu        s1, s9, 1370
                  sll          s10, a0, t0
                  auipc        s9, 807983
                  ori          s6, t2, 797
                  slti         gp, a2, -685
                  lui          s2, 642751
                  slt          s11, s8, sp
                  lui          s1, 905102
                  lui          s6, 81419
                  add          s5, t2, t0
                  sub          s2, s7, a0
                  slli         ra, t6, 30
                  slli         s4, t0, 8
                  sltiu        gp, s6, -1676
                  sll          s6, a2, a3
                  add          s10, sp, s11
                  sll          zero, s9, t3
                  srai         a2, s6, 29
                  slli         sp, s10, 13
                  xor          t6, ra, s6
                  xor          s6, s4, s11
                  and          s3, t0, sp
                  andi         ra, gp, -1487
                  addi         a1, a4, -741
                  srai         t0, t2, 17
                  sra          s6, t1, s7
                  srl          a6, t0, s5
                  lui          t2, 833770
                  nop
                  lui          s5, 170479
                  or           a0, t0, s6
                  xori         zero, t1, -1640
                  and          a6, a3, s8
                  srai         s5, s6, 2
                  srl          zero, s3, a2
                  sltiu        s3, a6, 1224
                  sra          s8, zero, s5
                  addi         ra, t4, 1215
                  or           s9, tp, t3
                  or           gp, ra, zero
                  sub          s5, a1, a7
                  auipc        s2, 965435
                  addi         t1, tp, -343
                  and          s8, a0, s7
                  andi         a3, a0, -160
                  lui          zero, 869500
                  sll          s5, s11, zero
                  sll          s3, sp, s8
                  sll          s9, s2, s11
                  auipc        t6, 783064
                  and          a1, gp, zero
                  slti         tp, t2, 1808
                  andi         t3, a2, -679
                  lui          t6, 63443
                  nop
                  auipc        t3, 374820
                  sra          sp, a7, s2
                  sub          t3, a0, a1
                  ori          gp, t4, 1455
                  auipc        s10, 235085
                  xori         s2, t4, 1194
                  add          t5, a1, s8
                  srli         s1, s4, 11
                  add          a3, s9, s7
                  and          a6, s7, a5
                  lui          s2, 943967
                  slt          s0, t6, s2
                  sra          t6, tp, s10
                  srai         ra, zero, 29
                  ori          s0, t1, -2042
                  lui          s9, 796506
                  and          s6, tp, s11
                  sll          sp, s1, t3
                  or           s5, a7, a0
                  add          t6, s3, a7
                  add          s6, s6, s0
                  sub          t3, a2, tp
                  ori          t5, t1, 895
                  sll          s3, sp, s10
                  auipc        tp, 908760
                  and          s2, t6, s6
                  lui          gp, 764232
                  srai         s8, s4, 20
                  addi         s8, a3, -226
                  srl          gp, t3, t4
                  or           zero, s3, t3
                  sub          s1, s0, s7
                  ori          t2, s11, -1203
                  slli         s11, gp, 20
                  sltu         a7, s11, t2
                  sub          t5, s9, sp
                  slli         t5, ra, 28
                  sltiu        t6, gp, -1237
                  lui          a7, 296958
                  or           a0, s3, t2
                  sltiu        s2, a5, 195
                  srl          tp, t0, a4
                  sltiu        a1, a4, 880
                  srl          s8, s7, a0
                  andi         a0, s7, -302
                  addi         s2, s6, -1642
                  xor          t6, s4, a0
                  sltiu        t5, s5, 1134
                  sltiu        a7, a6, 677
                  sra          s11, sp, s1
                  and          s5, a7, a2
                  sltiu        t4, t5, 1410
                  and          t3, s1, t5
                  xori         s10, s5, -1870
                  sub          a2, t2, t3
                  sub          s9, gp, a0
                  sra          s2, a7, t0
                  slt          s6, a1, s0
                  xori         t1, s10, -590
                  sltiu        sp, a7, -450
                  slt          t4, s11, t3
                  lui          t0, 13141
                  addi         zero, sp, 1112
                  sub          t0, s0, s11
                  ori          sp, t0, 1642
                  sltu         gp, s1, sp
                  add          t1, s2, a7
                  sub          s4, t2, gp
                  ori          sp, s0, 245
                  nop
                  sra          s3, gp, a1
                  addi         s4, t4, -800
                  lui          s6, 826863
                  sra          t5, s7, s9
                  or           a0, s8, t1
                  slti         s11, a7, -1493
                  srl          s11, s4, s4
                  li           s2, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           t0, 0x0
                  li           a7, 0x80000000
                  li           s1, 0x80000000
                  li           s8, 0x0
                  li           sp, 0xffffffff
                  li           tp, 0xdfddd380
                  li           a1, 0x80000000
                  li           s10, 0x80000000
                  li           t5, 0x0
                  nop
                  auipc        a7, 50477
                  nop
                  nop
                  lui          sp, 978989
                  addi         s10, s2, -58
                  addi         s2, t0, -1837
                  addi         s8, t0, 1285
                  addi         a7, tp, -590
                  sub          s10, sp, s10
                  lui          s10, 1013914
                  add          a1, t0, t0
                  addi         a1, tp, -420
                  lui          s10, 87929
                  sub          t5, s8, s1 #end riscv_int_numeric_corner_stream_12
                  lui          s6, 728289
                  xori         t6, t0, -2008
                  xori         a3, a4, -1239
                  sltiu        a0, gp, -1218
                  slt          t4, s9, a1
                  ori          tp, a6, -1979
                  add          s8, a2, s7
                  sltu         s8, a6, s6
                  sub          s10, s7, t3
                  sltu         tp, s1, s2
                  xor          s6, s4, a5
                  sll          a1, s7, s9
                  sub          gp, s9, s3
                  lui          s8, 764113
                  srl          zero, s2, t5
                  srl          a3, s8, t2
                  sll          s9, s10, sp
                  andi         a6, a7, -1745
                  ori          t6, a7, -354
                  and          s10, s2, s11
                  sll          t0, s10, ra
                  or           a6, t3, a2
                  sltu         t6, gp, s4
                  sra          t5, t5, s5
                  andi         zero, a7, 1944
                  slt          t0, a7, t6
                  sll          t4, s11, a0
                  lui          t5, 326987
                  srai         zero, s2, 12
                  andi         a0, tp, 793
                  sra          a3, a1, a5
                  sltu         a3, s11, t3
                  nop
                  lui          gp, 802720
                  or           t3, s5, tp
                  and          s11, a6, zero
                  or           s0, t6, a0
                  sra          s0, s10, s8
                  srl          a0, s1, a7
                  ori          s9, t3, 911
                  xori         s11, s10, 2041
                  slt          s9, t2, s5
                  ori          tp, s9, 288
                  sltu         s5, s0, zero
                  sltiu        a3, a1, -1600
                  or           s2, s1, s0
                  andi         gp, tp, -1199
                  auipc        t5, 526918
                  auipc        s2, 926940
                  auipc        ra, 304602
                  nop
                  sll          a0, s7, s1
                  lui          s6, 447057
                  srli         t1, tp, 23
                  slli         ra, a7, 14
                  andi         s4, t0, -1444
                  add          a6, s9, t6
                  srl          t4, tp, s0
                  srl          s0, a2, t6
                  ori          s1, a6, 410
                  ori          s8, a4, -1846
                  sra          a1, sp, t6
                  sltiu        a2, s10, -1863
                  slli         s9, t5, 24
                  addi         t3, s5, 323
                  andi         t1, zero, 683
                  xori         a2, s0, -799
                  srai         a2, a0, 24
                  and          t0, t6, s11
                  addi         ra, a7, -988
                  xor          s10, s11, s4
                  xor          a0, t4, t4
                  slt          a2, t4, sp
                  add          t6, s11, s1
                  srli         a6, ra, 4
                  srli         t0, s4, 21
                  slti         t5, gp, 1222
                  ori          tp, a5, -440
                  srli         ra, a6, 20
                  addi         t6, s3, 1980
                  srai         a7, a0, 27
                  xor          s6, t0, s8
                  sltu         t2, t3, ra
                  andi         s1, sp, 1780
                  sub          t0, a4, s1
                  xori         s11, t6, -1679
                  and          t2, a6, gp
                  addi         a3, s1, -1708
                  sll          s10, s9, t6
                  or           s2, t6, a2
                  addi         a6, a5, 1702
                  and          s9, s9, s5
                  addi         t6, a5, 1553
                  lui          a3, 787895
                  andi         tp, a0, -1743
                  sub          s5, sp, t4
                  addi         a0, a6, 1780
                  sltu         s9, a2, t3
                  slti         s5, t0, -861
                  srl          s2, t4, a0
                  xori         t5, s5, 1065
                  lui          a7, 856011
                  sll          t6, s8, s0
                  xor          ra, s8, t3
                  andi         s11, a2, 55
                  sub          tp, s0, s7
                  slt          a2, s2, gp
                  xori         a7, gp, -46
                  sra          s5, a7, s11
                  slt          s11, s11, s4
                  slti         sp, t1, -106
                  or           s5, s0, s2
                  ori          a0, a5, -1481
                  sra          t1, t1, s1
                  lui          t3, 266056
                  xor          s8, a2, t0
                  slti         s0, t1, 459
                  srai         a7, s0, 3
                  auipc        s1, 448264
                  slti         a2, t5, 1388
                  xor          t3, a6, a1
                  sll          zero, t4, s4
                  and          t0, a3, s0
                  addi         gp, t5, 1349
                  auipc        s5, 862451
                  sltu         s3, a3, t5
                  sub          t2, s5, t3
                  xori         t4, a2, 167
                  lui          tp, 256031
                  lui          s8, 2540
                  sra          t3, a7, s1
                  lui          s0, 168645
                  slli         a3, a1, 30
                  sltu         t6, t3, tp
                  slt          zero, a2, t5
                  sltiu        t3, a4, -154
                  sltu         t4, a1, gp
                  addi         tp, t5, 184
                  sltiu        tp, zero, -31
                  sub          s4, ra, s6
                  auipc        s2, 582948
                  slt          s9, t4, s6
                  slti         a7, a1, 2033
                  slli         s5, s7, 30
                  sltu         t5, s8, s10
                  sltiu        tp, a0, -1022
                  xori         zero, s7, 1822
                  slti         s4, zero, -1665
                  andi         t4, t3, -794
                  addi         a2, a4, -1796
                  srli         a1, t2, 9
                  ori          t0, a0, 1242
                  lui          s3, 209741
                  slli         t4, sp, 26
                  srai         s3, s9, 15
                  li           s4, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           s10, 0xffffffff
                  li           a1, 0x80000000
                  li           t3, 0x0
                  li           t0, 0x80000000
                  li           s6, 0xfab506f0
                  li           t4, 0x80000000
                  li           s3, 0x80000000
                  li           s9, 0x80000000
                  li           gp, 0xffffffff
                  auipc        s6, 986011
                  lui          t4, 173577
                  sub          s6, t3, s10
                  nop
                  add          s4, s6, a1
                  sub          a1, t3, t0
                  addi         a1, t0, 20
                  addi         s6, s6, -1212
                  sub          t0, t3, s3
                  nop
                  lui          gp, 469369
                  nop
                  nop
                  lui          t3, 66549
                  addi         t0, t0, -1602
                  sub          s6, t3, s4
                  addi         s3, t3, 1914
                  lui          t4, 307731
                  lui          t3, 153440
                  sub          s4, s9, s10
                  addi         s10, t4, -331
                  nop #end riscv_int_numeric_corner_stream_2
                  andi         a0, a1, -1106
                  or           tp, s9, s5
                  sra          a2, s3, a5
                  addi         a3, s10, -644
                  sra          t4, a4, s4
                  sltu         ra, s2, a3
                  addi         s11, t3, 799
                  add          t3, s10, t2
                  xor          a3, s6, s10
                  sub          a7, t6, a3
                  sltiu        s10, t6, 2016
                  slt          t0, s5, zero
                  auipc        a7, 346278
                  sra          s5, s1, a6
                  lui          t1, 311762
                  andi         a6, ra, 934
                  xor          a0, a0, t0
                  xori         s1, t5, 533
                  auipc        s9, 115839
                  sltiu        a7, s7, -320
                  or           a0, ra, t5
                  nop
                  sub          t4, s7, s4
                  auipc        s5, 755260
                  sltiu        a1, tp, 1771
                  nop
                  srai         tp, a5, 18
                  sra          a7, tp, s8
                  addi         s2, t2, -1628
                  srl          a2, s8, t3
                  xor          gp, s0, a7
                  sltu         a0, a6, s0
                  slli         s9, s6, 16
                  slt          tp, tp, s11
                  sltiu        a0, s1, 447
                  srli         a2, t0, 13
                  sltu         s10, t2, s2
                  nop
                  sltu         s4, s6, s11
                  sra          a1, s9, t1
                  sub          s2, tp, a4
                  slli         t4, t1, 9
                  ori          a7, a4, 305
                  sub          tp, s4, s4
                  lui          a3, 545345
                  slli         s2, a4, 11
                  sll          s11, s2, a5
                  srl          t6, a2, t2
                  xori         tp, a6, 874
                  slti         s0, t6, 1777
                  slli         s5, a6, 31
                  ori          sp, s10, 829
                  xori         t6, zero, -982
                  and          s2, a1, a1
                  xor          ra, t1, a3
                  xor          t3, a7, s9
                  slt          s0, s6, ra
                  slt          a2, t0, a4
                  slt          t0, tp, gp
                  sll          t4, a1, t4
                  ori          tp, s6, 585
                  add          s4, a2, a3
                  xor          t5, s7, a6
                  xori         t4, s4, 1959
                  sll          s8, s10, gp
                  sll          gp, t0, s8
                  addi         t3, t2, 929
                  auipc        s3, 677522
                  add          a0, ra, t4
                  auipc        s9, 751244
                  srli         s4, s3, 9
                  slti         gp, a2, 946
                  sub          a1, t5, a1
                  sll          t0, a0, s11
                  slli         sp, ra, 1
                  xor          sp, t2, zero
                  li           t6, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           t1, 0x0
                  li           ra, 0x80000000
                  li           gp, 0x0
                  li           s11, 0x0
                  li           s3, 0x6eb9700c
                  li           a6, 0x2b15cd0d
                  li           s10, 0x0
                  li           a3, 0x80000000
                  li           s9, 0x80000000
                  auipc        s10, 345256
                  add          a6, s11, s9
                  auipc        t6, 118522
                  sub          s9, s9, t6
                  lui          ra, 42812
                  sub          t6, t1, t6
                  addi         s11, a6, -103
                  sub          s9, s10, t1
                  auipc        t1, 546522
                  auipc        t6, 546478
                  nop
                  auipc        s10, 714795
                  sub          gp, s3, s3
                  addi         s9, s3, 1314
                  nop
                  nop
                  add          s11, gp, a6
                  auipc        s9, 300510
                  sub          a3, s10, s11
                  auipc        a6, 614480
                  sub          a3, ra, a3
                  nop
                  add          s11, s11, s3
                  lui          ra, 726284
                  sub          gp, s10, ra
                  add          gp, ra, s9 #end riscv_int_numeric_corner_stream_10
                  srli         s2, t6, 1
                  sltiu        t6, s2, -1932
                  srai         gp, s1, 20
                  slti         t3, a6, 380
                  srl          t3, zero, a7
                  sltu         s4, s2, s3
                  auipc        t2, 297053
                  slt          ra, s11, a6
                  sll          sp, s11, t0
                  slt          s3, a0, s1
                  andi         a3, a6, 1892
                  slti         a2, sp, -4
                  auipc        t6, 716359
                  addi         s4, a6, 1739
                  nop
                  and          t3, a5, a2
                  xor          tp, t0, s4
                  sll          s0, t0, a1
                  sltu         t6, t1, s8
                  addi         s9, s10, -283
                  andi         gp, a1, -1092
                  sra          sp, s10, gp
                  or           a7, a5, t6
                  auipc        s0, 147433
                  lui          t1, 725150
                  andi         zero, a5, 1730
                  and          gp, s7, ra
                  slt          s6, a7, t3
                  xori         t2, t5, 2019
                  srl          s3, s1, t2
                  srli         s10, s7, 10
                  sra          gp, a6, t6
                  and          gp, a6, zero
                  and          s10, s5, t3
                  addi         sp, s3, -681
                  xor          t6, s0, s5
                  sltu         s2, a3, a4
                  sltiu        s6, s10, -1067
                  srl          s9, a3, t6
                  addi         a2, gp, -1411
                  ori          ra, s9, -1495
                  sltu         a1, s3, s4
                  lui          a1, 950075
                  sub          a0, t6, a6
                  auipc        t4, 516404
                  andi         ra, a4, 1750
                  sra          a7, a7, s3
                  slti         a0, a7, 1041
                  sra          s5, a5, s1
                  ori          t0, s0, -1361
                  ori          t5, s10, 698
                  srai         a2, t3, 2
                  sra          a1, sp, a2
                  sltiu        t2, a1, -578
                  auipc        zero, 247342
                  nop
                  xori         t0, s3, 532
                  slli         a0, a5, 27
                  sltu         a3, a6, t2
                  slti         s9, s11, 199
                  sltu         a3, s7, a4
                  or           t2, s10, s3
                  or           ra, a3, t2
                  addi         s2, s10, -1615
                  slt          s2, a4, a6
                  slli         s3, gp, 20
                  sub          t1, s11, s10
                  sra          s1, t6, s7
                  srl          s1, t3, t3
                  slti         t5, s3, 2018
                  xori         s1, a3, 785
                  or           a3, a5, s5
                  sll          t2, s5, zero
                  or           s6, ra, s5
                  nop
                  or           t6, a6, t0
                  sra          s0, a4, s2
                  auipc        s10, 61053
                  srai         t3, s6, 28
                  slt          s9, s6, tp
                  xori         a6, t4, -582
                  slti         s3, s5, 1616
                  and          s8, s2, a5
                  and          a2, t1, a6
                  slt          s2, s3, tp
                  srl          a3, s6, s6
                  sub          t1, t6, a1
                  srai         t4, gp, 18
                  lui          s4, 534087
                  srli         s2, s10, 17
                  auipc        sp, 438700
                  auipc        s8, 187283
                  sll          t6, a2, a5
                  and          s5, a2, a2
                  slt          s8, tp, t2
                  and          a3, s8, ra
                  nop
                  ori          t1, sp, 1981
                  sltiu        s0, s9, -694
                  sub          s2, s2, ra
                  sll          s10, a3, t5
                  xori         a0, t6, -620
                  sltiu        s5, sp, -659
                  sub          s1, t5, ra
                  sll          s6, s6, t2
                  ori          ra, ra, -83
                  ori          s3, a3, 110
                  xor          t1, s8, t4
                  srai         zero, a0, 31
                  nop
                  ori          gp, sp, -1881
                  slt          s1, a7, a5
                  sltu         s2, t2, t3
                  slti         t2, t1, -890
                  slti         gp, a1, -416
                  addi         t0, t1, 874
                  addi         s0, a5, 1222
                  slli         a2, s6, 24
                  slli         sp, s10, 26
                  srli         t6, a5, 10
                  srai         ra, s10, 6
                  sra          tp, s2, ra
                  nop
                  add          s8, t2, zero
                  or           gp, t3, a2
                  addi         t5, s0, -1953
                  lui          t5, 901009
                  srai         s8, s9, 3
                  srl          t4, t4, t1
                  xori         s10, s4, 356
                  auipc        t2, 1006208
                  sub          a2, s8, a1
                  sll          t3, s10, ra
                  slt          t4, a4, s3
                  slti         s2, a2, -2021
                  add          t2, s8, zero
                  or           s9, t0, a3
                  auipc        a0, 547221
                  andi         t2, s1, -492
                  sltiu        tp, s8, 175
                  sltiu        s11, a0, 919
                  or           t1, t1, s9
                  sltiu        t4, s2, 1326
                  and          t1, s8, s0
                  add          s0, s8, t5
                  addi         a3, gp, 1176
                  srai         ra, zero, 28
                  sub          s9, t6, t2
                  and          s9, a0, s8
                  and          a2, a0, a4
                  sll          s3, t4, s5
                  andi         a6, t5, -369
                  sll          ra, s4, s8
                  sltiu        gp, a7, 736
                  and          t3, a1, s6
                  addi         s5, a2, 1387
                  sltu         tp, s2, t3
                  xor          t3, s10, t0
                  sltu         t0, s4, s9
                  sll          s6, s9, ra
                  slt          s4, s10, s7
                  or           a3, s6, t5
                  sll          t4, tp, t4
                  sll          s3, s6, s3
                  srl          tp, sp, sp
                  srl          ra, a1, tp
                  lui          ra, 869195
                  add          t4, gp, s7
                  addi         t6, t5, -1312
                  slt          a6, s11, s3
                  sltiu        t3, a4, 612
                  slli         s0, a4, 8
                  sra          t6, s7, s1
                  nop
                  auipc        s1, 334299
                  ori          s3, t6, -940
                  sra          tp, ra, t2
                  sub          s4, s9, s10
                  sll          t0, a0, a2
                  sll          a7, t1, s0
                  addi         a3, a7, 459
                  or           s4, s11, t4
                  auipc        s5, 127537
                  addi         s8, s0, 256
                  slti         t1, t0, -749
                  ori          s5, s9, 805
                  ori          t6, gp, -2009
                  xor          sp, a4, s0
                  addi         t5, s10, 21
                  and          a3, s4, s1
                  srai         t6, a0, 3
                  srl          s3, a3, s8
                  sltu         t5, tp, zero
                  sra          a1, s5, zero
                  sra          t6, s4, a5
                  sltiu        s8, ra, -1571
                  add          t6, s1, t5
                  xori         t1, s1, 1505
                  sltiu        tp, a3, 1946
                  sltiu        s0, t0, -1817
                  sub          s11, t4, t0
                  sltiu        s8, s6, 559
                  sltiu        tp, a2, 966
                  nop
                  auipc        s11, 856940
                  or           s9, s5, s0
                  and          s8, s1, a3
                  srai         s6, tp, 6
                  andi         t3, a0, -1894
                  ori          t0, s1, -137
                  addi         s8, s5, -1176
                  srli         a3, s1, 20
                  add          s3, ra, gp
                  xori         t2, zero, -1138
                  xor          s10, a3, s9
                  sra          s0, t5, a3
                  or           s11, sp, a5
                  auipc        s8, 180814
                  nop
                  xori         t3, zero, -304
                  or           t2, s6, gp
                  and          t2, a4, t5
                  sltiu        a6, ra, 1204
                  andi         s4, s2, -158
                  sltiu        a6, zero, -815
                  srli         s9, s0, 18
                  srli         t3, s11, 13
                  sub          s8, a1, t4
                  slti         ra, t6, 468
                  li           s3, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           a2, 0x80000000
                  li           sp, 0xffffffff
                  li           tp, 0x80000000
                  li           s5, 0x8b244985
                  li           s6, 0x0
                  li           s0, 0x0
                  li           a7, 0xffffffff
                  li           s4, 0x0
                  li           s10, 0x80000000
                  add          s10, tp, a7
                  nop
                  add          a7, s0, s10
                  add          s5, s4, a7
                  lui          s0, 353784
                  addi         a2, s3, -84
                  add          sp, s5, tp
                  auipc        s6, 104096
                  auipc        s5, 297131
                  nop
                  nop
                  sub          s0, a7, s0
                  auipc        a2, 971691
                  add          s0, s6, tp
                  lui          s0, 895475
                  nop
                  auipc        sp, 714708
                  sub          s4, s10, s0
                  lui          s6, 307839
                  sub          s10, s3, s0
                  nop
                  addi         s5, s4, 1855
                  auipc        s0, 503094
                  nop
                  nop
                  sub          tp, s0, sp
                  auipc        s0, 206733 #end riscv_int_numeric_corner_stream_0
                  srai         s9, s10, 6
                  andi         t2, t4, 1229
                  srli         a2, s9, 8
                  srli         t5, a4, 29
                  ori          zero, a2, 312
                  sltiu        s11, a4, -28
                  sltiu        s3, s8, 829
                  srai         t1, s10, 14
                  xor          a3, s9, s10
                  slli         s3, s0, 5
                  andi         s6, sp, -837
                  sltu         t1, a4, t4
                  xori         t2, t0, -1325
                  add          s10, a6, s6
                  ori          s6, a7, -828
                  xori         a6, a0, 1674
                  sll          s0, a6, a5
                  ori          t3, s4, -986
                  srli         s0, s1, 13
                  lui          t0, 81632
                  xori         tp, s2, -693
                  srai         t0, t2, 15
                  addi         zero, t4, -1146
                  and          ra, gp, ra
                  or           t0, t5, a2
                  addi         ra, a2, -1956
                  andi         t3, t2, -151
                  auipc        a6, 231693
                  sub          s1, a4, s7
                  sll          s11, zero, s1
                  or           s10, a2, s10
                  sltu         gp, s3, a2
                  xori         tp, a2, -958
                  sltiu        ra, tp, -23
                  sltu         ra, s3, ra
                  addi         a7, a2, 1934
                  sll          ra, t1, t5
                  slti         s2, sp, -398
                  sra          s2, s3, s11
                  xori         gp, t3, -1653
                  add          a6, t2, s4
                  and          ra, ra, t5
                  slli         s4, s5, 13
                  slli         t2, s1, 23
                  sra          gp, t6, t0
                  sll          t6, zero, s0
                  srli         t1, t0, 22
                  srli         t0, tp, 17
                  lui          a7, 1033563
                  xor          s6, s10, s9
                  and          s8, zero, s8
                  auipc        s3, 334771
                  sra          s10, ra, s10
                  srli         s11, a5, 5
                  slli         s1, s6, 24
                  srl          t0, s0, s1
                  lui          t0, 934573
                  slt          gp, gp, t6
                  sltu         t3, sp, s1
                  ori          t5, s10, 1650
                  sub          t1, s8, a5
                  sub          a1, t4, s6
                  xor          s5, gp, tp
                  addi         s11, t3, -1733
                  xor          sp, a4, s11
                  srl          s5, zero, s0
                  or           a6, s7, t4
                  slti         t6, s2, 1506
                  andi         a2, s6, 30
                  sll          gp, a3, a3
                  sll          zero, a6, s2
                  ori          s10, s11, -1173
                  ori          s1, s5, 1948
                  sub          t2, t1, t2
                  slli         s9, s3, 2
                  lui          s5, 840774
                  slt          s2, s4, t0
                  nop
                  xor          t3, a2, a4
                  lui          a7, 598194
                  xori         s5, s3, -1262
                  and          zero, tp, a1
                  sll          t1, a6, s7
                  sll          a0, s9, tp
                  sub          s3, t3, t2
                  sra          s8, tp, t1
                  sra          s0, s10, sp
                  slli         t0, t1, 25
                  lui          s1, 831039
                  auipc        a6, 202640
                  srl          s6, s4, s2
                  sltu         s3, a0, zero
                  xori         s2, s4, 1576
                  srl          s0, s9, zero
                  slli         s10, s6, 28
                  srai         s5, a6, 20
                  auipc        t4, 951869
                  sll          s9, a2, s5
                  auipc        s4, 711712
                  xor          t6, s2, a1
                  li           s1, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           a0, 0x0
                  li           t0, 0xd86802fa
                  li           s3, 0x80000000
                  li           t6, 0x57c11ae1
                  li           sp, 0xba9f1e49
                  li           s2, 0xffffffff
                  li           t3, 0xffffffff
                  li           s11, 0x0
                  li           t2, 0x3aba4da3
                  addi         t6, s2, -1189
                  addi         t6, s1, 1453
                  auipc        t3, 988013
                  addi         s3, s11, -690
                  nop
                  auipc        s1, 972199
                  auipc        s1, 51300
                  addi         sp, t2, 350
                  lui          s3, 830162
                  sub          t3, s11, s1
                  sub          s1, s3, t2
                  add          sp, t6, s1
                  add          s3, sp, a0
                  auipc        a0, 866659
                  addi         t0, s3, -2033
                  nop
                  nop
                  sub          s2, a0, s1
                  sub          t6, s3, t0
                  addi         s3, sp, -1597
                  add          s1, s1, t2
                  addi         sp, sp, -1445
                  addi         t0, t6, -1368
                  sub          s11, t0, sp
                  sub          s2, t3, s11
                  lui          t3, 675983 #end riscv_int_numeric_corner_stream_11
                  auipc        s6, 936056
                  slti         sp, a3, 880
                  sltiu        s2, s5, 1367
                  srl          t5, s0, t6
                  xori         zero, ra, -1852
                  lui          a7, 18352
                  slli         s0, t2, 4
                  addi         t3, gp, 226
                  auipc        a3, 195765
                  sltiu        s1, a1, 2001
                  srai         t3, zero, 16
                  xor          t0, s6, t6
                  lui          t3, 614788
                  slt          s6, a2, s1
                  lui          s2, 5165
                  sll          a6, s10, tp
                  slti         a6, a4, 230
                  slli         s1, t5, 2
                  slti         s4, a6, 1569
                  slti         a1, s1, 1311
                  slli         s8, t4, 26
                  ori          s6, s11, -999
                  auipc        tp, 519744
                  slt          s2, s0, t5
                  xor          s8, s3, s6
                  xori         zero, s4, 1661
                  andi         s0, tp, -1036
                  or           t1, a6, s4
                  ori          a7, s9, -95
                  slt          a6, s11, a4
                  srli         zero, a4, 31
                  xori         t0, s7, 1662
                  srai         t4, t4, 30
                  add          t2, a5, t0
                  add          s2, s10, t5
                  andi         t5, sp, -517
                  sltu         t3, t5, s0
                  xor          ra, s3, s8
                  sra          s5, t6, a4
                  srl          s6, t2, s1
                  addi         zero, s1, -1619
                  sltiu        t1, t4, 1584
                  lui          t5, 1028423
                  srai         s8, a6, 10
                  andi         t2, a7, 810
                  sub          ra, a6, s0
                  slt          t1, s4, t2
                  addi         t1, s11, 1207
                  ori          a7, t1, -985
                  xori         s6, s10, -1298
                  add          s0, t0, a5
                  auipc        a1, 166061
                  ori          s3, t0, 448
                  srai         a7, s2, 10
                  xor          t4, t4, t0
                  sra          s11, s1, s8
                  andi         s2, s11, 336
                  srl          s10, s6, s7
                  slt          s2, s9, sp
                  or           zero, s3, s9
                  sltiu        s1, s9, 790
                  lui          a0, 260465
                  add          a3, s3, a7
                  and          s11, t6, a2
                  addi         t1, a0, -703
                  xor          sp, a0, s1
                  sltu         zero, s5, t3
                  srli         t0, gp, 22
                  or           a2, s4, a6
                  slli         s6, s5, 10
                  sltu         s10, s3, zero
                  and          t4, s10, t0
                  sll          t4, ra, tp
                  slli         a2, s1, 20
                  srai         s1, t6, 30
                  xori         s2, t0, 1685
                  auipc        gp, 567416
                  andi         a3, sp, 676
                  sltiu        s6, s1, 907
                  slli         a7, tp, 10
                  auipc        t1, 225355
                  srl          a6, tp, a4
                  nop
                  srli         s10, t1, 29
                  addi         t4, s6, -366
                  sll          a0, s0, zero
                  addi         a1, a5, 1755
                  and          s6, a0, s11
                  slli         t2, gp, 2
                  add          t6, s2, sp
                  sltu         t6, s10, s6
                  xor          s3, a5, a1
                  sra          s3, gp, t4
                  sll          s1, t0, tp
                  andi         a2, t0, -913
                  lui          sp, 983290
                  nop
                  xori         s4, zero, 1062
                  lui          s1, 906617
                  nop
                  slt          s4, ra, s8
                  or           t2, s9, s10
                  and          a6, s8, s2
                  sub          s10, s0, s6
                  sra          t1, s11, tp
                  xor          s1, a0, tp
                  xor          a6, s9, a2
                  slt          t6, t2, t2
                  lui          a0, 816030
                  ori          gp, t0, 1427
                  or           t2, a0, s10
                  or           t5, t4, s7
                  auipc        t6, 1036630
                  nop
                  lui          a0, 683326
                  or           a3, t6, t6
                  ori          t5, a4, 1895
                  sll          s4, a2, s4
                  add          t1, s5, s1
                  and          ra, a1, t0
                  slli         s1, gp, 23
                  ori          s10, s7, 1753
                  xor          a1, t3, t0
                  slli         ra, t4, 10
                  add          tp, t3, a7
                  ori          a2, gp, 1442
                  srai         t2, a6, 3
                  srl          sp, a5, s0
                  sltiu        s9, zero, -1740
                  srl          s5, t6, s2
                  srl          a0, t2, s11
                  ori          s6, a4, 935
                  nop
                  srai         s9, t6, 15
                  slli         s9, a0, 10
                  slli         tp, a2, 14
                  sub          a3, t6, tp
                  slt          s5, a6, t5
                  srl          s5, tp, a5
                  andi         a3, t5, -1800
                  sll          s1, s1, a0
                  xor          t0, a1, a6
                  slti         tp, zero, -1325
                  auipc        gp, 106935
                  sub          s4, a4, t0
                  sltiu        t4, a0, -1210
                  srai         a7, a0, 22
                  xor          t3, ra, a3
                  ori          t4, t2, 756
                  addi         zero, s1, 1567
                  slli         gp, s10, 29
                  nop
                  sll          t1, a6, gp
                  or           a6, s10, s3
                  xori         s4, s9, 894
                  and          t2, sp, s8
                  or           s8, a5, s2
                  andi         a0, s6, 1725
                  or           s10, s3, t5
                  srli         a3, s2, 26
                  sra          s9, s11, a7
                  srai         s9, s2, 30
                  sltu         s5, ra, s3
                  srai         gp, s1, 3
                  addi         gp, s0, 1809
                  srai         t4, a1, 10
                  sra          t6, t6, s8
                  add          s8, s2, s2
                  slli         t0, zero, 11
                  or           t3, s2, s3
                  lui          s9, 585578
                  andi         t1, s2, 426
                  sll          s2, a0, a0
                  or           t6, zero, s7
                  srl          s5, s2, s10
                  lui          t1, 989208
                  auipc        t3, 564013
                  nop
                  addi         zero, t3, 834
                  auipc        a1, 511774
                  add          a7, s1, a2
                  srli         a6, t4, 18
                  nop
                  sltu         a2, a7, t4
                  nop
                  srai         s5, zero, 9
                  xor          a7, ra, sp
                  sltiu        t2, tp, -1976
                  sra          a2, a4, a2
                  srl          gp, a2, t2
                  addi         s11, a2, 1005
                  nop
                  auipc        t2, 907707
                  addi         s3, s3, -2027
                  andi         a1, s9, -34
                  add          t6, gp, sp
                  srli         s4, t6, 12
                  ori          t0, ra, 984
                  srl          s0, a5, s10
                  sra          s0, a2, t3
                  sll          a7, a7, a6
                  addi         a1, ra, 548
                  slti         s3, s10, -1240
                  ori          t0, s0, -112
                  nop
                  andi         gp, a6, -1241
                  nop
                  srai         a6, s10, 15
                  and          a2, t1, a7
                  ori          a1, s11, -105
                  slli         s11, a5, 13
                  sub          s10, a5, s8
                  sub          s5, t5, s7
                  srli         s2, s1, 10
                  srl          s8, a3, ra
                  slli         s0, s1, 5
                  slti         gp, t0, -1200
                  sra          s5, s11, s6
                  addi         sp, s6, 1544
                  srl          a1, s8, ra
                  add          tp, s5, a3
                  xor          t1, a5, s10
                  andi         s0, s2, 1431
                  sll          s10, s8, a4
                  add          a0, t4, sp
                  addi         zero, a3, 1386
                  sub          s0, t3, gp
                  add          t2, a5, t3
                  sra          s10, tp, s6
                  sltu         s3, s4, s1
                  or           s0, s8, s8
                  nop
                  xor          t4, a3, a0
                  lui          s8, 466558
                  sltiu        s5, t2, -462
                  sll          s11, s7, a0
                  srl          s9, tp, a7
                  sltu         s8, a6, a0
                  ori          tp, a5, -1826
                  xori         a0, a3, 1530
                  slli         s4, gp, 15
                  srai         ra, t5, 6
                  sub          s8, s9, s1
                  slt          s2, s1, a2
                  addi         gp, a1, -207
                  xor          s1, s5, s8
                  srl          a3, t0, s0
                  or           s11, s0, a6
                  srli         a1, s3, 25
                  auipc        a0, 737991
                  slti         s9, s5, 1781
                  or           a6, a4, sp
                  xor          a0, s10, gp
                  addi         s0, s8, 533
                  slti         t6, t2, -191
                  auipc        t1, 187593
                  srai         a7, s2, 19
                  nop
                  sll          a0, t4, gp
                  srl          s6, t6, a0
                  srai         tp, t1, 20
                  lui          s0, 707819
                  addi         s10, ra, 1902
                  sltiu        t2, s5, 1540
                  add          t2, a0, t5
                  slli         a2, a2, 18
                  addi         s5, a7, 1491
                  sll          t3, t2, t2
                  or           a1, t1, a0
                  sltiu        s3, s2, -951
                  slti         gp, a6, -1657
                  sub          s5, a6, s1
                  ori          sp, s2, 283
                  or           gp, t5, zero
                  srl          a7, s8, a5
                  or           t4, t1, sp
                  sll          sp, t3, s3
                  slti         s0, t2, 1897
                  addi         a6, a7, 541
                  addi         s11, a6, -437
                  srli         s8, gp, 16
                  sltu         t0, t6, s11
                  sltiu        s1, t1, 425
                  xor          s3, s8, s10
                  auipc        t3, 531363
                  srl          tp, a7, t2
                  or           t2, a6, a5
                  add          a6, a6, s5
                  nop
                  addi         s10, gp, -1453
                  sll          s8, s3, s1
                  xor          s5, t5, a5
                  slt          s1, s0, a1
                  slt          t2, a4, a1
                  add          gp, s1, s9
                  or           t6, s3, zero
                  srai         sp, s9, 5
                  srl          t2, t3, ra
                  sub          s11, sp, a4
                  sub          t6, s6, a7
                  andi         a2, s1, 1642
                  ori          s5, a7, -1118
                  sub          ra, s7, gp
                  lui          sp, 654429
                  auipc        s1, 1038809
                  auipc        s3, 427532
                  sll          gp, t2, zero
                  slti         s10, t5, 499
                  xori         s5, s10, -277
                  add          a7, t1, s1
                  srai         ra, a2, 23
                  srli         s11, zero, 21
                  slt          s0, a6, a5
                  sltu         t2, t2, s1
                  sll          a2, a6, t3
                  andi         t4, a6, 76
                  andi         s5, t0, -233
                  auipc        s3, 506850
                  ori          s10, a7, -929
                  add          s5, ra, s10
                  xor          s5, gp, t0
                  auipc        ra, 307442
                  sltu         a2, sp, a4
                  xori         t2, s7, 971
                  sra          s8, t0, t4
                  and          a6, t6, t6
                  sll          t6, s2, a5
                  xori         t1, s9, 624
                  srli         s4, t1, 26
                  sra          a7, s6, s11
                  sra          t5, s11, s4
                  addi         a1, ra, 1213
                  add          t5, s2, s3
                  sra          s0, gp, s11
                  and          s10, s3, zero
                  add          s6, s1, a5
                  slt          gp, s7, a0
                  or           a7, t5, gp
                  xor          s6, s5, s3
                  xor          s10, s3, s11
                  sub          s5, s2, s2
                  xori         s11, tp, -1377
                  lui          gp, 686039
                  srai         s3, ra, 23
                  slti         t5, t3, 1142
                  or           a2, a4, t6
                  slli         s2, zero, 9
                  slti         t6, s8, -447
                  addi         t4, t6, -593
                  srl          t3, t6, s6
                  lui          sp, 660752
                  nop
                  sra          a0, t3, t4
                  sltiu        s8, t0, -1058
                  or           t4, t6, a6
                  xor          zero, s3, zero
                  srai         a1, a4, 19
                  addi         t0, s8, -1703
                  sll          sp, s3, a4
                  srl          s9, s0, gp
                  or           a7, s5, sp
                  nop
                  xori         tp, a2, -1647
                  slt          a6, zero, t4
                  auipc        a6, 312677
                  slli         t1, s2, 29
                  sra          zero, s1, s4
                  lui          gp, 912018
                  or           t6, s7, a2
                  srli         t0, a4, 25
                  srli         ra, s6, 22
                  xor          zero, ra, gp
                  sra          t4, a0, ra
                  sltiu        t3, t5, -487
                  lui          s1, 761975
                  sra          t0, a3, tp
                  auipc        t5, 494305
                  sltiu        a7, gp, -491
                  slli         s3, a4, 31
                  nop
                  sra          s8, s3, s10
                  xori         s9, t1, 1457
                  sll          zero, s2, zero
                  slti         s4, a1, 1467
                  and          s4, s6, a4
                  sltiu        s11, s1, -385
                  srai         s1, t1, 9
                  ori          s10, s10, -1993
                  ori          t6, t0, -730
                  slli         s11, s8, 26
                  xori         s5, ra, 644
                  slt          s3, s11, t2
                  nop
                  sltu         t5, a7, s4
                  addi         s0, s0, -1243
                  srai         zero, s1, 12
                  sub          ra, s6, t4
                  sltu         a3, s1, s6
                  lui          s10, 542710
                  nop
                  and          ra, s9, tp
                  slti         s6, gp, 685
                  srli         t5, s9, 29
                  xori         tp, a3, 2009
                  lui          s4, 470405
                  andi         ra, s0, 1642
                  srai         a1, a7, 30
                  srli         s3, a1, 17
                  sltu         t2, s5, a1
                  srli         a3, s11, 9
                  sltiu        s1, s3, -588
                  slt          t0, s7, t2
                  nop
                  or           s10, a5, a0
                  srai         a1, s1, 21
                  slli         s1, s10, 4
                  sub          gp, s1, s5
                  add          s5, t6, s5
                  sltiu        s0, s7, -648
                  sub          s5, t5, gp
                  addi         a3, tp, 1980
                  xor          s11, a6, a2
                  li           s1, 0x0 #start riscv_int_numeric_corner_stream_8
                  li           t3, 0x0
                  li           t2, 0x0
                  li           t6, 0x0
                  li           tp, 0xfdb25547
                  li           s2, 0xffffffff
                  li           a6, 0x80000000
                  li           s3, 0x5d1f2410
                  li           s10, 0xffffffff
                  li           sp, 0xec4e297a
                  nop
                  auipc        a6, 981623
                  sub          sp, a6, t3
                  auipc        t3, 975451
                  nop
                  auipc        s1, 1004013
                  sub          s1, s3, t6
                  nop
                  nop
                  auipc        sp, 406576
                  nop
                  lui          tp, 42928
                  auipc        s10, 164119
                  addi         s10, s10, 676
                  nop
                  sub          s2, t6, tp
                  auipc        s2, 245881
                  lui          s10, 16195
                  addi         sp, t3, 1051
                  lui          t6, 312974
                  auipc        tp, 608659
                  auipc        s2, 633848 #end riscv_int_numeric_corner_stream_8
                  sll          s3, s8, t3
                  xori         a6, s4, -253
                  xor          a1, t6, t4
                  sub          sp, a1, a1
                  slti         a2, a2, 1542
                  or           ra, a1, t1
                  and          s3, s10, t2
                  auipc        s10, 986303
                  slli         gp, ra, 16
                  add          a0, a5, zero
                  slti         t2, s7, 1011
                  add          s10, a2, ra
                  srli         s0, s3, 15
                  slli         t4, s8, 11
                  andi         s1, ra, -302
                  auipc        t0, 891284
                  sltiu        a1, s7, -893
                  slti         t4, t2, 594
                  auipc        s9, 30556
                  sub          s9, s2, a4
                  xori         ra, sp, 249
                  slti         a2, s0, 2014
                  xor          s2, s4, s7
                  slt          a1, a4, t3
                  auipc        a2, 529440
                  srli         zero, t5, 8
                  srl          s6, t1, ra
                  and          s0, zero, a1
                  sra          t6, a6, t0
                  srli         ra, a0, 28
                  srl          s5, a4, zero
                  sltu         gp, s10, s6
                  or           t3, ra, s5
                  srai         a7, a0, 10
                  sltu         s5, s4, sp
                  sltiu        s2, s4, 1250
                  and          s9, t0, t3
                  slti         s1, s8, -593
                  sra          a6, ra, t3
                  xori         a7, a3, -1495
                  slli         gp, s1, 23
                  slli         a0, t1, 8
                  andi         ra, s11, -90
                  or           t5, tp, t5
                  nop
                  sltu         s3, s9, gp
                  srli         a0, s7, 30
                  and          gp, a3, a5
                  sra          s11, a0, a3
                  xori         s6, a0, 1231
                  sll          s8, zero, t2
                  lui          t0, 987289
                  auipc        s1, 629368
                  or           t1, tp, t3
                  add          t5, s6, s6
                  srl          a2, s11, a2
                  srli         s4, s6, 18
                  lui          ra, 353650
                  srai         s2, a7, 2
                  sltiu        s0, a1, 6
                  xori         s10, s6, 1083
                  slt          t4, a3, ra
                  sra          s5, s9, s5
                  slt          s2, t5, s3
                  nop
                  and          s3, s5, s8
                  sra          s6, tp, tp
                  xor          s9, a6, t4
                  sra          t1, ra, a1
                  xori         ra, s3, -489
                  srl          s5, t0, tp
                  srl          s9, s9, t4
                  srl          s10, a2, a5
                  srai         s1, s3, 5
                  or           gp, ra, a2
                  ori          tp, s6, -162
                  ori          s10, t2, 1557
                  auipc        a2, 320883
                  and          t4, ra, t1
                  slti         ra, t1, -1709
                  sll          a7, gp, s11
                  srl          s4, gp, s3
                  nop
                  slli         s6, a7, 5
                  or           t5, s10, t5
                  sltiu        a3, s7, 1366
                  andi         s4, t1, -1371
                  or           s8, s11, t2
                  slli         zero, tp, 24
                  xori         a2, t4, 274
                  sltu         s11, a7, s2
                  xor          a1, a3, s8
                  srli         s6, s8, 23
                  srl          s8, t6, t3
                  add          a6, s7, a7
                  slt          sp, a3, s8
                  slt          a0, a5, a6
                  andi         s0, gp, 128
                  sra          s8, a1, a2
                  xori         a0, s8, 1980
                  and          ra, tp, t5
                  andi         s2, s1, 411
                  or           s9, ra, a0
                  slli         s8, s9, 8
                  sltu         t5, s0, a0
                  srli         t0, a4, 1
                  and          s9, t6, s1
                  srai         t5, a0, 26
                  sll          t2, a2, s10
                  lui          zero, 996626
                  sra          a3, a0, t5
                  or           s10, t0, t1
                  srl          s0, a0, zero
                  slli         a3, t3, 26
                  srli         a3, s11, 1
                  srai         gp, gp, 16
                  slli         a2, t2, 3
                  sra          s9, a5, s5
                  auipc        s5, 633747
                  sltiu        tp, s7, 1219
                  sltu         s5, s2, gp
                  sra          s9, a7, s6
                  srl          s8, a1, s11
                  lui          s6, 320111
                  sra          s5, t4, s6
                  nop
                  auipc        sp, 323019
                  nop
                  srai         a2, s11, 16
                  srl          s10, a3, zero
                  xori         s0, a2, -1121
                  sll          gp, t0, gp
                  lui          gp, 65781
                  nop
                  sltiu        s4, s6, 1915
                  addi         a6, t5, 877
                  andi         s0, t4, 366
                  sltiu        a7, ra, -756
                  slti         s6, t5, -1090
                  slli         gp, s1, 20
                  srai         a1, s10, 26
                  ori          s11, t4, 1221
                  or           ra, t0, ra
                  slli         s2, a7, 20
                  slt          tp, t6, s2
                  nop
                  sll          s4, s11, s6
                  slt          t0, t6, ra
                  sltu         a1, t3, t5
                  or           s1, s0, s2
                  sra          s0, a6, s0
                  sub          t2, s10, s2
                  slt          s8, a0, ra
                  nop
                  and          gp, s9, a1
                  or           s10, a2, s5
                  sub          t3, s0, s1
                  xori         a6, s4, -956
                  auipc        t2, 529873
                  srai         t4, t0, 30
                  xori         a2, t6, -203
                  andi         a7, s4, -1346
                  xori         gp, s11, -1404
                  xor          t3, tp, a3
                  nop
                  xori         s2, t0, 825
                  sll          t1, a3, zero
                  nop
                  or           a2, tp, a4
                  addi         t1, s6, 292
                  sltiu        s11, s10, -489
                  ori          s8, a1, 388
                  lui          s5, 420702
                  slti         s3, s2, -1273
                  slli         s5, a0, 10
                  slti         t6, s2, -1984
                  srl          t3, t5, s4
                  srai         a3, a7, 15
                  add          s1, s0, s10
                  ori          zero, s10, -1569
                  xor          s8, s5, a2
                  slt          ra, sp, t3
                  sltu         s9, a1, t1
                  slti         a7, a6, -625
                  nop
                  srai         tp, a6, 3
                  sra          t6, a0, s5
                  lui          ra, 156817
                  auipc        s1, 43395
                  auipc        s9, 3823
                  slti         t0, s4, 1482
                  xori         s6, s7, -872
                  xori         s0, t1, 1557
                  srai         a1, a5, 11
                  sll          s3, tp, gp
                  ori          s9, s8, -1354
                  srli         t0, a4, 11
                  srai         s5, gp, 10
                  sub          s9, tp, t0
                  auipc        s1, 952041
                  xori         t3, a5, 1273
                  add          sp, t5, t3
                  ori          s0, s2, 674
                  and          t3, t0, a7
                  and          t2, s5, s4
                  auipc        s11, 1635
                  sll          s8, t4, a0
                  ori          s9, s9, 862
                  ori          tp, t2, 1174
                  ori          s5, s3, -1427
                  lui          a6, 426355
                  and          t2, t3, a6
                  add          s5, s7, s3
                  slti         s11, a1, -365
                  sltu         tp, s11, t6
                  sra          s6, sp, a3
                  sll          t3, a3, gp
                  ori          s8, tp, 1741
                  srai         s2, a1, 4
                  srli         s5, sp, 3
                  and          zero, a2, a3
                  ori          a0, a6, -1685
                  ori          s2, ra, -349
                  srli         a2, t6, 10
                  xor          s3, t3, s8
                  addi         a6, t0, 460
                  srai         tp, s0, 11
                  srli         gp, s10, 14
                  slli         t5, t5, 4
                  lui          a3, 488464
                  addi         s2, a2, -358
                  sltu         s4, ra, a4
                  and          a7, s8, a1
                  slt          ra, s5, t1
                  slli         s5, s10, 3
                  auipc        s2, 392529
                  sltu         zero, a0, tp
                  lui          a1, 1102
                  sll          s0, s0, s10
                  slti         a6, a1, -404
                  andi         t5, s3, -1986
                  sub          s8, s9, s3
                  sub          ra, a7, a0
                  addi         a1, s6, 1081
                  or           a2, tp, s4
                  sub          t6, a7, zero
                  andi         t6, s5, 1031
                  slti         t0, t4, 1266
                  addi         gp, s11, 877
                  xori         t4, a2, -708
                  and          s11, s7, s1
                  ori          a3, s8, -510
                  srl          ra, a6, s7
                  slt          s0, a1, ra
                  slli         t3, a7, 13
                  add          t5, zero, a0
                  andi         a2, s4, 546
                  srai         t1, s8, 4
                  lui          s8, 652884
                  xori         sp, s5, 1461
                  addi         a1, s3, 736
                  sltiu        s1, s7, -1784
                  slt          s9, t3, tp
                  slt          a1, s3, s0
                  slli         s5, s8, 8
                  addi         a3, s6, 1582
                  and          s2, t5, s9
                  addi         t1, s2, 2041
                  slt          a7, s10, s3
                  xori         t2, t3, -1876
                  slli         s2, t4, 21
                  xor          t3, a2, s1
                  sltu         t4, t4, a0
                  sra          t3, s1, t3
                  xor          t1, a1, a1
                  auipc        t2, 759922
                  sll          t2, s5, gp
                  slli         tp, t2, 12
                  and          a1, a6, t0
                  auipc        sp, 262393
                  and          t2, t2, s10
                  sltu         s0, ra, s10
                  slti         s10, s6, -1685
                  sub          sp, t6, t0
                  nop
                  andi         tp, t5, 1374
                  ori          t2, t3, -1264
                  sub          t0, a6, a1
                  slti         t2, sp, 777
                  sub          t0, a1, zero
                  xori         s3, s11, -1633
                  slt          zero, t2, t5
                  slti         ra, t3, -335
                  sltu         t3, tp, t6
                  sra          s2, t0, a5
                  xori         a3, t0, 394
                  and          s4, t5, s4
                  sra          s4, s7, a2
                  slli         a0, t6, 13
                  srli         s6, s7, 26
                  slt          s8, s5, a0
                  or           t2, s1, a6
                  slli         s2, ra, 28
                  slt          t5, t0, a6
                  add          t4, t3, t3
                  xor          s1, a2, t6
                  lui          s11, 7845
                  andi         s5, s4, -1313
                  andi         t2, a2, 1065
                  ori          s11, s2, 1071
                  add          s6, s5, a3
                  srl          tp, t4, a5
                  slt          s6, t4, s6
                  and          s2, s9, a1
                  auipc        t4, 87707
                  srai         t4, s6, 8
                  auipc        s9, 423493
                  lui          gp, 338197
                  sll          t5, t0, s1
                  sra          t1, a3, s2
                  sra          t3, s10, a1
                  xor          t5, s8, s11
                  and          sp, s3, a3
                  nop
                  srli         s2, s0, 25
                  sll          t0, s4, s7
                  auipc        s8, 804074
                  addi         t2, s7, -1061
                  sub          ra, zero, gp
                  sub          t0, gp, s0
                  auipc        a0, 462392
                  xor          s4, a0, s3
                  ori          t4, s5, 716
                  add          s11, zero, s6
                  srl          t2, s5, s5
                  nop
                  slti         s8, a6, -1908
                  slli         a1, a1, 31
                  srai         sp, s2, 11
                  auipc        a6, 527855
                  sub          a0, s9, sp
                  auipc        a3, 855456
                  slti         a7, a6, 966
                  sub          s10, s11, a5
                  nop
                  andi         s3, t4, 544
                  auipc        a2, 752467
                  sll          a3, sp, a4
                  addi         tp, s10, 825
                  or           s9, t1, t4
                  sltu         s10, t2, s2
                  slt          t0, t3, a1
                  srli         t5, zero, 27
                  ori          gp, s9, -1034
                  ori          gp, a6, 592
                  sll          sp, a1, t4
                  sub          a1, gp, a3
                  or           a7, s6, s8
                  and          t5, t6, s10
                  auipc        s6, 146404
                  and          a7, s3, a0
                  xori         s9, t0, -884
                  slti         a6, t6, 697
                  and          sp, s5, a0
                  slti         s8, tp, 1814
                  srli         a6, zero, 9
                  sltiu        s6, s1, -838
                  auipc        t6, 621417
                  xor          t3, t3, t4
                  lui          s9, 519824
                  addi         s8, a3, -2013
                  addi         a0, s8, 580
                  sra          t3, s7, ra
                  and          s0, a0, ra
                  slti         s8, a3, -1065
                  srai         a1, a0, 11
                  auipc        t6, 801597
                  srli         gp, sp, 28
                  add          t3, t2, a1
                  add          s11, a1, a5
                  sll          t6, t5, t2
                  sub          s0, s0, gp
                  slti         t4, a7, -550
                  sll          a1, s0, s10
                  addi         t0, t2, -1260
                  sll          s2, s6, ra
                  srli         a2, t4, 10
                  auipc        a6, 1029125
                  auipc        a6, 793558
                  srl          a1, a4, s0
                  and          s8, zero, t4
                  nop
                  slli         s3, tp, 21
                  xor          a6, a3, s4
                  xori         s5, s2, -231
                  addi         ra, s10, 1082
                  and          s4, sp, s5
                  sra          tp, t3, a4
                  nop
                  or           t4, a0, a5
                  sltu         t4, a1, a2
                  slli         a1, s6, 20
                  or           zero, s4, s11
                  sltiu        t4, s6, -1340
                  sltu         t0, s1, gp
                  nop
                  lui          tp, 841435
                  xori         tp, t5, 649
                  lui          s1, 133229
                  slti         a1, s6, 494
                  srai         ra, s10, 31
                  add          sp, s3, tp
                  nop
                  or           a2, s3, tp
                  addi         s8, a4, 408
                  addi         s2, s11, -1119
                  andi         s6, s9, 1275
                  srli         sp, s1, 5
                  ori          a2, s8, -305
                  nop
                  sll          t2, a0, zero
                  sra          s3, tp, zero
                  srai         a2, a4, 5
                  auipc        a0, 732439
                  and          s4, s6, gp
                  slt          t3, s7, s0
                  slli         zero, s1, 22
                  nop
                  or           s8, zero, zero
                  add          t3, t2, s1
                  sltiu        s8, s5, 1816
                  slli         a0, a1, 7
                  srl          s11, s11, a0
                  addi         s10, zero, -1444
                  and          s3, s6, a6
                  and          s9, a7, s7
                  sub          s0, a3, ra
                  sll          t2, t4, s4
                  auipc        sp, 1033326
                  lui          s11, 377326
                  lui          zero, 227023
                  xor          ra, s5, t5
                  slti         t5, s2, -1633
                  nop
                  ori          t3, zero, -346
                  xori         s9, t4, -225
                  add          s9, a0, s6
                  sll          zero, s7, a1
                  xori         s3, s2, -80
                  add          s2, tp, s8
                  auipc        s10, 607749
                  nop
                  sub          ra, a3, t3
                  sltu         t2, s4, sp
                  sub          zero, s8, t4
                  sltiu        t4, s4, 231
                  sltu         s1, a5, s1
                  srl          a6, t4, t6
                  addi         a1, a1, 1730
                  slli         s0, a5, 7
                  srli         t0, s8, 31
                  sltu         t6, a6, a6
                  or           a1, t5, a3
                  srli         s5, t5, 30
                  and          s3, ra, t4
                  and          t4, a2, t3
                  xori         s4, gp, 1850
                  sltiu        s9, s8, 1945
                  sltu         a7, t4, a2
                  and          s11, zero, t1
                  addi         sp, t5, 312
                  lui          s3, 152591
                  srli         s1, t3, 2
                  sltu         zero, s1, zero
                  sub          t1, zero, a1
                  slti         t6, s5, -145
                  lui          zero, 923265
                  auipc        gp, 837017
                  addi         s0, s8, -361
                  or           t0, t2, sp
                  xor          s3, t4, a6
                  or           s2, a5, s10
                  andi         s10, t1, -1956
                  slti         t2, s1, -44
                  sltu         s6, s0, s5
                  ori          s6, t6, 1862
                  srli         a3, s11, 3
                  or           t1, t2, s10
                  slti         s0, a4, -283
                  srai         s9, s8, 19
                  auipc        s3, 954203
                  xor          t4, s3, tp
                  nop
                  or           t3, a0, s11
                  slli         zero, a5, 1
                  slti         sp, a7, 1066
                  add          t6, sp, a4
                  auipc        s1, 889010
                  slli         t3, a7, 21
                  slli         s6, a4, 0
                  slti         s1, s4, 446
                  sltu         zero, s11, a6
                  sll          a0, s3, sp
                  slli         a2, tp, 13
                  sll          zero, a7, a2
                  slti         s8, t4, -460
                  xori         a1, a7, 547
                  xor          a3, s11, a2
                  addi         tp, tp, -1617
                  xori         t0, s11, -402
                  slli         s8, s7, 12
                  andi         s9, zero, 1144
                  xor          ra, s6, a6
                  sll          a7, s0, s9
                  addi         t3, s3, 63
                  ori          zero, s10, -896
                  sll          t4, gp, s11
                  addi         a3, s3, -1433
                  slli         s2, s8, 7
                  sub          a0, a5, s9
                  slli         s5, sp, 10
                  sltiu        t5, a1, -106
                  xori         gp, a1, 625
                  sltu         t0, a6, s11
                  add          s3, s4, a4
                  sltiu        s4, s6, 1301
                  srli         t6, a7, 23
                  xor          gp, s5, a6
                  andi         a0, s9, 819
                  andi         s9, tp, 1133
                  xori         t2, s6, -449
                  srli         s2, s8, 29
                  xor          t5, a7, gp
                  lui          s6, 723802
                  addi         ra, s8, -254
                  ori          t5, a0, 1172
                  srai         t4, tp, 24
                  andi         zero, s9, -1353
                  lui          t6, 544532
                  slli         t3, a6, 17
                  sltiu        ra, a5, -2038
                  sltu         t2, a5, t1
                  sltu         a3, s3, t5
                  sra          t4, t3, sp
                  and          t3, s5, s8
                  sra          s11, s6, t4
                  sltiu        sp, gp, 386
                  srli         t2, s2, 2
                  slt          t0, a4, a2
                  slt          s2, s6, a2
                  srai         s0, a4, 2
                  xori         s3, t6, -572
                  add          t1, s5, t6
                  sltu         a7, s4, gp
                  nop
                  srai         t5, tp, 0
                  and          s2, ra, t6
                  srai         sp, s6, 22
                  srai         s11, a3, 20
                  srli         a3, ra, 27
                  slt          s10, s2, s10
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           s1, 0xffffffff
                  li           t0, 0x80000000
                  li           a6, 0xfbf75c90
                  li           t3, 0xc722629
                  li           s5, 0xffffffff
                  li           s10, 0x255ac861
                  li           a3, 0xfef0c5fd
                  li           a1, 0x80000000
                  li           gp, 0xa9672fd8
                  add          s10, s1, gp
                  auipc        gp, 803296
                  auipc        a6, 378469
                  addi         s10, s5, 1146
                  sub          a1, s5, s10
                  lui          gp, 225299
                  auipc        a6, 261837
                  add          a1, t3, s10
                  sub          a6, s5, a6
                  addi         s1, gp, -1909
                  nop
                  sub          a0, s1, s10
                  add          a0, a0, a6
                  addi         s10, a1, -1477
                  lui          t0, 723494
                  add          a6, t0, s1
                  lui          a6, 569283
                  nop
                  nop
                  addi         s5, a1, -606
                  sub          gp, s10, s10
                  sub          t0, s10, s1
                  add          t0, t3, gp
                  lui          a0, 194430
                  auipc        t0, 111453 #end riscv_int_numeric_corner_stream_16
                  slli         a6, t2, 15
                  lui          t5, 596730
                  sra          a2, tp, s6
                  andi         a7, t6, -70
                  xor          s3, s4, t0
                  sub          sp, t1, t3
                  auipc        a6, 37221
                  or           t5, t5, s7
                  slt          s10, s6, tp
                  lui          gp, 680194
                  addi         s5, s0, -1697
                  sltu         a3, gp, t2
                  auipc        a0, 997867
                  add          s1, t5, s10
                  auipc        s0, 603201
                  srli         t3, s6, 21
                  slli         t6, s10, 9
                  srai         a1, t6, 3
                  andi         sp, s6, -871
                  sll          t5, t0, s0
                  andi         a3, tp, 281
                  xor          a2, s2, t4
                  lui          a0, 694148
                  sub          s2, t0, zero
                  srl          t1, sp, a6
                  srai         a6, t0, 26
                  srl          a0, tp, a5
                  lui          s9, 914155
                  sltiu        zero, a0, -566
                  ori          a6, s9, -1862
                  ori          t0, t1, 292
                  sra          s6, s11, t5
                  sub          s5, tp, ra
                  srai         sp, t2, 4
                  sll          s5, gp, t2
                  or           s0, a0, tp
                  xori         t0, a4, 21
                  or           a1, t5, a4
                  li           a7, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           a2, 0x73b41746
                  li           s11, 0x0
                  li           s4, 0x0
                  li           s9, 0xae7d31d9
                  li           s6, 0x5fbdba82
                  li           t1, 0x80000000
                  li           gp, 0x0
                  li           ra, 0x80000000
                  li           t3, 0xffffffff
                  add          a2, ra, ra
                  addi         t1, s6, 889
                  add          a2, gp, s6
                  add          t1, s4, s11
                  auipc        t1, 713614
                  lui          a2, 506325
                  add          t3, t3, s9
                  sub          t1, s6, s11
                  addi         a7, a2, -1509
                  addi         s4, t3, 867
                  lui          s6, 205581
                  nop
                  lui          gp, 817057
                  lui          ra, 749230
                  lui          gp, 347810
                  add          a2, s9, a2
                  nop
                  sub          s6, a7, gp
                  add          t1, a2, s9
                  lui          a2, 258840
                  auipc        t3, 950842
                  addi         gp, a2, 347 #end riscv_int_numeric_corner_stream_14
                  srl          a1, a5, a7
                  auipc        t0, 375477
                  auipc        a1, 217994
                  sltiu        t6, t1, -569
                  sra          s2, t5, s7
                  addi         s8, ra, 1487
                  srai         s5, s6, 15
                  srai         s6, a4, 19
                  srli         a6, s1, 5
                  slti         t1, t3, 1500
                  srli         t2, ra, 10
                  srl          s3, t1, t3
                  sll          a6, ra, t0
                  sub          tp, s11, s11
                  addi         s6, ra, -974
                  and          t6, s5, s3
                  or           t4, t6, s4
                  srai         sp, t6, 4
                  sltu         s3, a3, s0
                  addi         a6, t4, 480
                  srl          s2, s2, a6
                  srli         sp, t6, 17
                  sub          s11, t3, t6
                  sltu         s0, s2, a7
                  or           t2, a2, a6
                  lui          zero, 177675
                  srli         s11, t6, 18
                  sll          s5, t6, s2
                  srli         sp, t6, 19
                  or           a3, s0, s10
                  lui          gp, 175962
                  auipc        t4, 450574
                  srli         tp, t6, 0
                  sra          s11, gp, t3
                  sll          t5, zero, a3
                  nop
                  or           s3, t4, t2
                  nop
                  slti         s1, a1, -369
                  addi         s6, a0, -849
                  nop
                  sra          zero, s4, t0
                  slt          sp, a7, s0
                  srai         s6, a3, 17
                  or           s3, zero, ra
                  slli         s0, s6, 1
                  or           a3, zero, a0
                  sub          ra, a7, s5
                  slli         t2, s2, 9
                  sll          s9, s4, s6
                  andi         a3, t6, -1380
                  srai         a3, a3, 31
                  slti         s8, s1, -914
                  sub          zero, t4, a5
                  xori         zero, t0, 996
                  srai         t6, s5, 11
                  sub          ra, t5, s5
                  sll          t1, a7, s2
                  auipc        s8, 373460
                  auipc        s5, 162977
                  and          tp, s3, s7
                  xor          t5, a5, t2
                  sltiu        t5, sp, -1521
                  auipc        tp, 970826
                  sub          s6, s10, t6
                  nop
                  or           a7, a7, t5
                  srli         s2, s3, 20
                  add          a2, tp, t1
                  andi         s6, s7, 1080
                  ori          a3, s3, 1854
                  srli         t5, s10, 12
                  sll          t4, s3, s4
                  andi         ra, s6, -1061
                  slli         tp, a2, 16
                  slti         s11, t1, 2007
                  lui          s4, 768537
                  ori          s1, tp, -264
                  sltu         a7, s4, s6
                  sll          a2, t2, t3
                  andi         zero, s5, 1835
                  srl          s6, t4, zero
                  lui          s10, 555006
                  lui          s5, 482152
                  andi         s5, s2, 1736
                  sll          a0, s5, s1
                  srli         s0, gp, 14
                  add          tp, zero, s7
                  slt          s3, s10, gp
                  srai         s2, a1, 17
                  sltiu        s6, t6, -445
                  addi         s2, t3, 644
                  slli         sp, sp, 21
                  andi         a3, zero, 778
                  xori         t4, s11, -241
                  auipc        t2, 151643
                  xor          s2, a0, s7
                  srli         s0, a4, 1
                  srai         s8, a1, 24
                  slt          s4, t1, s6
                  sltu         s6, s11, a5
                  xori         a7, t1, -1236
                  and          t5, t5, a7
                  nop
                  srai         s9, tp, 19
                  auipc        t5, 278650
                  sltiu        t4, s1, 1899
                  lui          s5, 216093
                  auipc        s5, 608815
                  srai         t4, a6, 12
                  sltu         s9, s8, tp
                  xori         a0, s7, -1712
                  slt          a3, t5, tp
                  sltiu        s6, t0, 324
                  srai         tp, t4, 8
                  slli         s3, s9, 2
                  or           t1, s9, s0
                  addi         a0, s1, -204
                  srli         s8, a3, 12
                  slti         zero, a6, 297
                  sltu         t2, t5, zero
                  xor          s11, gp, s4
                  slt          a2, s4, t1
                  srai         t3, zero, 9
                  or           s3, s7, s4
                  xor          a6, s6, t4
                  slli         s0, tp, 16
                  addi         tp, s4, 322
                  ori          a7, a6, 1241
                  andi         s1, s8, 572
                  sltu         t3, a0, a5
                  slti         s10, ra, -1459
                  andi         s11, a0, -1609
                  slli         gp, s7, 16
                  slti         zero, s1, 1212
                  ori          a7, t3, -2
                  addi         t3, a7, 923
                  nop
                  auipc        tp, 408448
                  addi         a0, a1, 1437
                  lui          gp, 895708
                  andi         t6, a4, 1973
                  auipc        s11, 309420
                  add          t5, t0, ra
                  nop
                  sltu         s11, t4, t2
                  and          a3, zero, s7
                  sltiu        s10, t1, -1389
                  ori          a3, a5, 1490
                  xori         s11, gp, -158
                  ori          s9, t2, -476
                  xor          t3, tp, a6
                  and          a3, t6, s1
                  lui          a7, 661287
                  srl          s3, t4, t4
                  xor          a1, zero, t4
                  slli         t4, ra, 3
                  xori         s1, s8, -1023
                  srli         s2, a4, 26
                  and          s3, tp, t3
                  sra          ra, t5, zero
                  sub          a2, s4, a1
                  slt          s0, s0, s10
                  xori         s10, s10, 537
                  sll          t6, t3, a2
                  srai         s5, s11, 11
                  lui          s11, 355334
                  sra          t4, a6, s11
                  srai         t1, a0, 3
                  or           s2, a0, t1
                  srai         s5, s3, 15
                  sll          a2, a0, a3
                  addi         a0, s0, 1189
                  sll          s5, a3, t4
                  xor          s4, a5, t5
                  xori         t5, t4, -1468
                  sll          a7, a5, tp
                  add          a3, s10, s9
                  sltu         a7, a4, s4
                  auipc        t3, 786068
                  and          a6, gp, s2
                  xori         s3, a1, -776
                  addi         gp, s11, -1404
                  slt          t3, s10, a3
                  sra          t5, a2, a7
                  addi         s3, s6, 1306
                  sltu         s8, ra, t6
                  lui          ra, 855991
                  srli         a0, a3, 29
                  slli         s9, a6, 15
                  sll          t0, s0, s8
                  sltiu        s10, s11, -694
                  slli         s4, t4, 11
                  andi         t5, t0, -1373
                  sub          t5, a0, a0
                  or           s8, s6, s10
                  add          sp, s6, s5
                  lui          t0, 1004456
                  and          a0, a2, t2
                  xor          a1, t5, t6
                  slt          t0, s3, a1
                  slt          t0, s4, s3
                  andi         ra, tp, 682
                  slli         s8, s0, 12
                  add          s8, s9, a1
                  srai         a6, tp, 11
                  add          a3, a6, s8
                  slt          a1, tp, a3
                  and          zero, s6, s3
                  lui          a3, 94871
                  xori         s2, s8, -1552
                  slti         t5, t1, -113
                  and          a0, ra, s10
                  srai         t1, s8, 21
                  slti         t4, s10, 1529
                  slt          s5, s1, t4
                  or           ra, a0, s7
                  add          sp, t5, a7
                  xor          t2, a3, s11
                  ori          a0, t1, -1618
                  srl          s3, gp, a4
                  addi         t6, a6, -536
                  xor          s3, gp, a7
                  auipc        gp, 333744
                  sll          a6, t3, t1
                  nop
                  slt          t1, a0, t3
                  and          t4, s7, s5
                  sll          a6, s0, s7
                  addi         t2, t4, 1839
                  add          a0, s8, a5
                  xor          ra, t4, s7
                  srli         a2, a3, 8
                  srli         s2, a1, 17
                  slt          ra, s4, t5
                  auipc        a2, 152640
                  sll          a2, s10, s5
                  slli         a6, a0, 13
                  sltu         s5, t2, s6
                  slt          t3, s10, s8
                  add          a3, gp, s2
                  or           t2, a7, gp
                  ori          a7, a4, 1319
                  slti         t3, s7, 1676
                  sub          t1, t1, a2
                  sll          gp, zero, t3
                  andi         a3, s8, -1918
                  srli         s5, a1, 6
                  slti         a1, sp, 683
                  srai         t3, s0, 14
                  srli         s2, a6, 19
                  auipc        t3, 892412
                  xori         a0, t2, 687
                  xor          s0, s10, s11
                  addi         t0, s9, 1538
                  slti         a3, t5, 306
                  slti         a3, a5, -585
                  sub          t3, s3, tp
                  or           a7, s6, s4
                  and          zero, s9, s1
                  addi         t4, s7, 1826
                  add          s3, a7, sp
                  and          t0, a0, a2
                  ori          t2, s1, -1612
                  and          s6, sp, t5
                  srai         s4, s1, 30
                  sub          zero, s3, ra
                  xor          zero, s7, t1
                  sll          s1, a0, s11
                  auipc        s2, 517388
                  ori          s6, s2, -121
                  ori          zero, t6, -1554
                  addi         t0, a7, -1356
                  nop
                  srai         t5, s10, 31
                  srl          s0, tp, s4
                  auipc        s4, 933215
                  sltu         a1, a1, tp
                  ori          s1, s0, -541
                  nop
                  add          sp, a0, t3
                  xor          s0, s4, s10
                  sub          t4, a7, zero
                  sltiu        a2, a5, -1237
                  sub          a2, gp, s5
                  slt          a3, t1, t6
                  slti         gp, a6, -220
                  sll          a3, s1, a4
                  srl          sp, a4, tp
                  auipc        t6, 249177
                  addi         s5, s2, 1165
                  nop
                  sltu         t3, s6, t6
                  sltu         a1, a3, a5
                  lui          a7, 470876
                  sll          s2, a5, s11
                  slti         s3, t5, 1664
                  addi         a0, s11, 1199
                  sub          gp, gp, ra
                  or           sp, t4, zero
                  or           s10, t3, t4
                  slti         t1, ra, 543
                  srli         tp, a5, 13
                  add          t3, zero, a2
                  srai         s6, s5, 6
                  sltiu        a0, a1, 1541
                  or           s0, a4, s9
                  srli         a1, a5, 18
                  sub          t2, s6, a4
                  slt          tp, t6, s8
                  srai         tp, a0, 27
                  and          s5, s3, s9
                  slt          s8, zero, t4
                  add          t1, a0, s9
                  add          s2, t1, zero
                  nop
                  lui          s6, 690075
                  sll          a1, a2, a2
                  srai         s9, s5, 8
                  sra          t2, s11, a0
                  nop
                  nop
                  addi         t0, s9, -1871
                  slt          s3, sp, a0
                  sra          s6, s11, s0
                  auipc        t0, 478785
                  xori         s10, t5, -683
                  sll          s5, s2, t4
                  andi         s10, a6, 1408
                  ori          a2, a1, -594
                  sra          t6, s4, a2
                  nop
                  add          t6, t1, a7
                  slt          t0, t0, s2
                  andi         ra, zero, -618
                  srai         t0, s4, 28
                  sub          s8, s0, s11
                  andi         a6, ra, 67
                  sub          t3, a2, sp
                  sltiu        s0, a5, 1262
                  addi         s11, a7, -66
                  slti         t5, s8, -1141
                  sll          s3, s1, a6
                  slti         gp, a4, -41
                  nop
                  slt          s0, gp, t4
                  xori         t5, s2, -1991
                  andi         t2, s3, 1668
                  sra          a0, s4, s3
                  andi         a6, t1, -1632
                  sra          s8, a7, zero
                  sll          a2, a6, a6
                  sub          tp, ra, s8
                  andi         s2, a7, -800
                  or           a6, zero, t3
                  srl          s8, s0, t2
                  slli         a3, s7, 11
                  and          s3, t0, s10
                  ori          s8, t4, -231
                  nop
                  addi         zero, t4, -1719
                  srai         a7, s7, 11
                  andi         t1, s5, -2029
                  slt          t1, a2, a6
                  ori          s10, s4, 1100
                  add          t0, s9, s3
                  add          s6, a6, a1
                  andi         a1, t4, -1353
                  sll          s0, gp, gp
                  nop
                  andi         t6, s0, 715
                  sll          t6, s4, s2
                  nop
                  slti         ra, t2, -1916
                  slli         s2, sp, 30
                  ori          s1, s3, -489
                  srli         a7, s3, 20
                  srli         a0, a7, 20
                  and          a7, tp, s11
                  lui          tp, 411009
                  slt          t5, a4, a5
                  xori         s8, t4, 767
                  sltiu        t0, t4, 900
                  add          s2, a7, s6
                  srl          s2, tp, s9
                  or           s8, s10, t1
                  sll          s0, s2, a6
                  nop
                  sltiu        s11, s7, 602
                  srai         zero, s4, 1
                  addi         ra, s4, -1701
                  slti         s9, a0, 1072
                  lui          s4, 98009
                  lui          zero, 655943
                  slt          zero, a1, s1
                  xori         tp, ra, -941
                  auipc        s0, 653657
                  andi         t3, a7, 1795
                  sra          s1, t5, s8
                  slli         s1, s4, 22
                  auipc        s11, 1008293
                  nop
                  add          t0, s1, a2
                  srl          t4, tp, zero
                  sll          s1, t2, s5
                  sltiu        a0, a3, -140
                  xor          a2, s10, gp
                  nop
                  lui          s8, 309937
                  add          tp, sp, t6
                  srai         s10, t0, 26
                  xori         s0, t5, 1667
                  slli         t6, s4, 14
                  slt          sp, t6, t2
                  slti         a2, t6, 355
                  srl          t3, t2, s4
                  slli         s1, a1, 21
                  sltiu        t1, s1, -624
                  or           s6, s8, t4
                  add          s10, s8, t0
                  sltu         t1, a6, a5
                  srl          s11, a3, t6
                  xor          s6, a1, t2
                  nop
                  or           sp, s10, t5
                  sltu         s11, t3, sp
                  slt          zero, s10, t1
                  sltiu        s10, a2, -859
                  sltu         tp, t0, tp
                  srl          t0, s6, a2
                  srai         gp, s6, 6
                  xori         s3, s7, 270
                  nop
                  sub          a0, gp, s0
                  auipc        s1, 79935
                  nop
                  nop
                  xor          t4, s0, s11
                  sra          t0, s11, t3
                  ori          s10, s7, 1533
                  sltu         s3, s1, a5
                  and          t1, t2, t5
                  ori          a7, s11, -1764
                  sltiu        s5, a6, -1352
                  slt          gp, s4, a2
                  xori         s0, s10, -1606
                  slli         t2, a1, 21
                  sra          t0, s2, s1
                  ori          s11, a3, 55
                  addi         a0, s0, 718
                  addi         s2, s9, -679
                  auipc        s10, 420516
                  sll          s4, s7, s3
                  slli         s3, a6, 10
                  slti         s0, t2, -567
                  nop
                  slli         s8, ra, 20
                  auipc        gp, 510608
                  slli         s5, s6, 5
                  sll          t0, s10, zero
                  auipc        zero, 433191
                  addi         t1, tp, -1410
                  and          a2, ra, t6
                  srl          s2, tp, s6
                  sltu         s1, s0, s11
                  addi         t0, tp, -972
                  auipc        a1, 758076
                  ori          ra, a5, 1967
                  sltiu        a1, s11, 79
                  sra          t6, a3, t0
                  srai         sp, s8, 28
                  nop
                  slt          a2, a5, t0
                  add          s8, ra, s3
                  and          sp, s6, t3
                  andi         s8, s1, -1734
                  or           ra, ra, ra
                  nop
                  lui          s6, 546882
                  xor          s4, t2, s2
                  auipc        t0, 467591
                  andi         s4, s11, -699
                  nop
                  lui          sp, 170019
                  add          t1, a1, s9
                  and          t0, s7, a1
                  slli         a1, s3, 22
                  addi         t2, s1, -619
                  and          s4, sp, s6
                  or           a2, t2, a7
                  add          a1, a5, s9
                  and          s10, a4, t1
                  srli         t1, s0, 31
                  xor          t6, a0, a0
                  srli         t0, t1, 17
                  auipc        t1, 607850
                  and          t4, s10, a0
                  ori          a3, t4, 1337
                  nop
                  xor          s6, t3, s5
                  andi         s9, s4, -319
                  sltiu        t4, t6, 756
                  slli         ra, t1, 0
                  andi         s11, s0, -529
                  nop
                  srai         a3, zero, 5
                  sub          a7, a2, ra
                  lui          a0, 695397
                  and          t6, s0, t0
                  ori          a7, s3, -1017
                  addi         sp, s6, 145
                  auipc        a1, 597673
                  xor          s4, sp, a3
                  lui          t6, 304897
                  srl          t3, t2, t6
                  srl          s6, s0, a3
                  srli         t4, gp, 14
                  nop
                  xori         t4, zero, -151
                  srli         sp, s7, 4
                  auipc        tp, 61438
                  add          a3, t1, s4
                  srai         s3, a0, 23
                  ori          sp, s6, 1165
                  srli         t2, t6, 31
                  addi         a2, t2, 697
                  andi         a3, t5, 797
                  or           a3, s6, ra
                  sltu         t4, a2, t4
                  srl          t6, gp, a2
                  sltu         ra, s10, t4
                  sltu         s1, s5, s7
                  lui          t4, 885785
                  nop
                  xor          s11, s6, ra
                  slt          s8, a3, t1
                  slli         s3, t0, 14
                  sltu         t3, gp, sp
                  addi         s6, a4, 136
                  srl          a6, a2, s9
                  sra          a0, s11, sp
                  sra          s11, s10, a1
                  andi         ra, s11, 494
                  sra          tp, gp, tp
                  slt          a1, s8, ra
                  sltu         t3, s8, t5
                  sub          t4, t5, s2
                  srli         s0, zero, 12
                  slli         s3, s7, 2
                  nop
                  addi         t0, t5, -1187
                  ori          t4, s2, 1304
                  srl          t6, a0, t0
                  sra          gp, s11, s3
                  sltu         a0, s9, ra
                  sltu         a6, t3, s4
                  sltu         s3, s10, t5
                  slt          ra, tp, s11
                  srl          s5, t5, s10
                  xori         t4, s7, 54
                  slt          a2, s6, t4
                  nop
                  slli         t0, s1, 16
                  slli         s3, a6, 1
                  sra          sp, a7, t0
                  auipc        t1, 488417
                  sltiu        t4, ra, -1817
                  andi         s1, t4, 1171
                  lui          zero, 473691
                  andi         t5, t4, -410
                  sra          s10, s7, a7
                  add          s1, s11, a6
                  slt          s3, t5, s6
                  ori          s9, t4, 1279
                  addi         s0, t3, -803
                  auipc        a2, 599813
                  or           t2, ra, a2
                  xor          sp, s4, s2
                  srl          t2, t5, a2
                  andi         s0, s5, 995
                  slti         t2, gp, -1405
                  auipc        t2, 112364
                  and          t3, tp, sp
                  srai         t3, a2, 2
                  slti         s10, a1, -125
                  srli         s8, t5, 14
                  srl          a0, sp, s3
                  andi         s1, t2, 1464
                  addi         t6, t4, -1498
                  add          s5, s2, s9
                  slli         s9, a1, 30
                  andi         a7, a6, -1233
                  sra          s1, s6, a7
                  or           a0, s7, ra
                  or           s2, s10, s9
                  sltiu        t6, zero, -1453
                  slli         a7, s3, 27
                  srli         zero, t1, 12
                  auipc        a6, 4383
                  lui          t0, 770727
                  sra          a3, t1, a2
                  slli         a3, a0, 25
                  sltiu        a7, s6, -1113
                  lui          s0, 4884
                  slli         a1, s1, 9
                  sll          s2, s0, a3
                  sra          a2, s1, ra
                  sltu         s3, s0, a4
                  sltu         t5, a5, s9
                  srai         s4, s6, 14
                  and          s9, t5, a4
                  auipc        t6, 547742
                  sub          t5, t6, a0
                  srli         t0, s11, 7
                  or           s5, a7, s1
                  slli         a6, s11, 19
                  sra          sp, s2, s4
                  slli         s4, t0, 4
                  sub          a2, s3, a2
                  addi         s5, t1, -498
                  slti         t2, t2, 1064
                  xor          s11, a5, gp
                  sltiu        s6, s0, 1000
                  srai         s9, t5, 21
                  xor          ra, s11, t0
                  sltu         t0, s7, a3
                  sll          s3, s5, s7
                  xori         t4, a3, -1951
                  srl          s1, s5, a0
                  srai         t2, s10, 5
                  auipc        a3, 1018172
                  nop
                  or           s4, t2, zero
                  slli         s11, s11, 2
                  sltu         a7, zero, t2
                  slt          gp, a2, gp
                  nop
                  srai         a1, a6, 13
                  xor          s4, s2, t4
                  sra          s4, s8, a0
                  and          t6, a6, t4
                  xor          t6, a7, t1
                  lui          a3, 305307
                  sltiu        s4, t2, -185
                  slt          sp, zero, a2
                  nop
                  srl          s0, s1, a4
                  sll          s9, s10, a1
                  andi         s10, s8, 1244
                  sltiu        s11, s4, -1122
                  srl          s11, s0, t2
                  ori          s9, t1, 656
                  ori          s0, s4, -1805
                  srl          s10, s2, t5
                  xori         a3, t5, -979
                  slti         a1, ra, 1183
                  xor          a2, t5, a6
                  sltiu        tp, a6, -1868
                  sltu         a1, s3, t5
                  and          t4, a1, s9
                  auipc        s6, 533257
                  auipc        a3, 703777
                  slti         gp, s7, -1115
                  srl          a6, t4, s1
                  sll          s5, s9, a2
                  add          ra, s6, t0
                  ori          t5, s6, 627
                  add          t0, t0, zero
                  and          s0, s10, s5
                  srl          t6, s0, a3
                  srai         s6, s1, 4
                  xori         s10, s5, -1755
                  sub          a0, s7, s2
                  xor          zero, tp, s5
                  sltiu        t2, sp, 1775
                  srl          s5, ra, sp
                  srl          a2, t0, s7
                  sll          sp, s2, s1
                  slti         zero, sp, -1940
                  xori         zero, s0, 207
                  nop
                  sltu         s9, s5, a6
                  srli         gp, t5, 0
                  addi         t3, s9, -1874
                  sltu         t3, a4, t5
                  xori         s2, s7, -595
                  nop
                  andi         s8, s5, 219
                  slt          s10, t5, zero
                  ori          t1, s2, -1813
                  add          s0, s9, zero
                  andi         a1, s9, 826
                  addi         s5, t6, -684
                  andi         a7, a3, -599
                  xori         s4, t3, 1781
                  and          tp, s1, s5
                  and          t2, tp, t2
                  srli         t1, s4, 28
                  sltu         a1, a2, s11
                  sra          a2, a6, ra
                  lui          t6, 88099
                  lui          s8, 235466
                  slti         t1, a6, 1385
                  slti         sp, s4, 683
                  add          ra, a5, t0
                  xori         t4, t1, 394
                  sub          a6, a2, a2
                  slli         t6, s4, 28
                  auipc        zero, 896142
                  srai         sp, a4, 0
                  andi         a1, s11, 1825
                  slt          s9, a3, s1
                  sub          t1, a7, s5
                  srl          s0, sp, s1
                  addi         s6, zero, -1591
                  sltu         tp, a6, sp
                  and          t0, ra, s4
                  xor          s1, a5, t2
                  srli         s3, s8, 21
                  slt          t3, a1, tp
                  sub          a0, a0, tp
                  slt          a3, a7, s1
                  sltu         a0, t0, s9
                  sra          t2, a0, s7
                  xor          s2, s4, t3
                  xori         a6, t5, -921
                  slli         t5, zero, 6
                  ori          a1, t4, 15
                  andi         s3, a4, -918
                  auipc        ra, 137099
                  nop
                  srai         gp, s3, 30
                  nop
                  xori         a6, t4, -579
                  slt          a0, s7, t5
                  srai         t4, t0, 19
                  slti         t0, a5, 1097
                  addi         s5, t0, -425
                  ori          a0, t4, 343
                  sltu         a2, s7, s3
                  sll          gp, gp, s1
                  sltiu        s8, a4, -286
                  ori          tp, a7, -310
                  slt          s6, s2, a4
                  nop
                  nop
                  srli         a0, s8, 1
                  and          a6, s4, ra
                  ori          a1, s11, -447
                  lui          t5, 125822
                  nop
                  slli         a6, gp, 18
                  xor          a6, s0, ra
                  sra          tp, s10, a1
                  nop
                  or           s1, t3, a5
                  or           s10, sp, t5
                  and          sp, s5, t3
                  and          a3, s10, s5
                  xor          a2, a0, gp
                  ori          t2, s1, 159
                  andi         t3, a6, 115
                  or           sp, s2, t5
                  slti         gp, ra, 950
                  and          s5, s2, s7
                  sub          s3, a0, ra
                  slti         a0, s4, 1550
                  sra          t6, s1, s5
                  sra          t5, a3, t6
                  xor          a0, a4, ra
                  srli         t3, s8, 12
                  add          s8, a1, s2
                  lui          t5, 564160
                  slti         s1, t1, -1520
                  nop
                  auipc        s2, 919604
                  ori          s9, s8, 1208
                  slti         s3, zero, -1520
                  addi         s9, s3, -1094
                  sltu         a2, t2, s0
                  addi         a7, tp, -1813
                  add          a2, a3, s8
                  lui          gp, 251928
                  sltu         s2, s4, a3
                  xori         t6, s4, -878
                  ori          a0, t6, -961
                  sltiu        ra, t4, -11
                  or           s6, a6, s10
                  srli         a6, a7, 21
                  srai         a6, sp, 2
                  and          t0, s5, s2
                  slli         t2, s5, 23
                  sra          s9, t3, t1
                  slli         s9, s4, 22
                  xor          a7, s8, t5
                  xori         tp, t0, 1000
                  slli         t0, t0, 0
                  sub          s8, s1, s8
                  srli         s9, a6, 26
                  sub          s10, t2, sp
                  srai         s8, s1, 19
                  slli         a2, a3, 1
                  add          t4, t1, s0
                  srai         s10, a1, 21
                  slt          tp, a0, a1
                  auipc        s8, 596670
                  srl          zero, s6, s6
                  add          t6, a2, a7
                  sltu         t1, s10, a7
                  slti         tp, a0, 958
                  add          a7, s11, t6
                  add          s11, s3, s0
                  sltu         t0, a6, s8
                  nop
                  sltu         ra, ra, s6
                  or           t2, t0, a1
                  or           s2, tp, ra
                  sltu         zero, t0, a2
                  nop
                  sltu         t6, a4, s2
                  sub          gp, t4, s1
                  ori          sp, a0, 136
                  or           a6, a4, s11
                  auipc        t2, 157062
                  sltiu        t3, a6, -599
                  add          t4, s1, a7
                  andi         a6, a5, 254
                  lui          a2, 456117
                  srli         a1, a6, 17
                  slti         s5, a6, 931
                  add          s6, a7, s2
                  sltu         a3, s7, s1
                  sltiu        t5, gp, -1070
                  slt          a7, t1, s9
                  add          t0, a1, s9
                  xori         s11, t2, -1216
                  sll          s8, s2, s0
                  srai         s1, sp, 3
                  xori         s8, a0, -1777
                  sra          sp, t6, tp
                  srli         t3, t4, 10
                  srli         a6, t5, 16
                  ori          a1, a3, 1657
                  auipc        sp, 476946
                  sltiu        t2, a6, 998
                  xor          a0, tp, a7
                  slti         s6, a7, -1808
                  auipc        zero, 546216
                  srli         t5, sp, 14
                  ori          s11, t0, -406
                  srli         s9, t6, 2
                  ori          a2, sp, 1383
                  addi         t0, s5, -1461
                  srl          t4, ra, t0
                  sra          s9, s10, s9
                  sltiu        s8, s11, -451
                  srli         a0, a2, 0
                  sra          a3, s10, s9
                  or           t4, s1, s3
                  addi         s1, s7, 534
                  ori          s5, tp, 1855
                  srli         a2, ra, 24
                  auipc        s2, 682761
                  lui          a0, 113114
                  srl          s4, t5, s6
                  ori          t4, a0, 392
                  nop
                  sltu         t0, a2, ra
                  sra          a6, sp, a0
                  or           ra, s4, s11
                  srl          s8, t4, s9
                  srli         a2, t6, 6
                  srli         gp, s8, 31
                  nop
                  sll          s2, s0, s6
                  sltu         t5, t6, gp
                  ori          sp, t5, 1565
                  and          tp, t1, t6
                  and          ra, t0, a1
                  xor          t2, tp, a0
                  xori         t4, t0, -289
                  addi         s11, t5, -376
                  and          ra, a6, s3
                  lui          s8, 101857
                  sub          a0, t5, s9
                  add          a3, t3, t2
                  srli         a7, t2, 3
                  xori         t2, t1, 359
                  sub          s1, t3, s1
                  slti         s10, sp, -1669
                  xor          t3, a6, a7
                  sll          t4, tp, s7
                  sra          s4, a7, s0
                  srli         s4, t0, 13
                  slti         t0, t4, 1983
                  srli         a0, t4, 24
                  slti         ra, t2, 540
                  srl          a7, gp, a5
                  andi         t1, s6, 1624
                  or           a6, t1, s3
                  auipc        t2, 494361
                  sltu         t1, a4, a3
                  sub          a2, a7, s11
                  srl          gp, a5, s7
                  xori         s3, s11, -1958
                  or           a7, a3, ra
                  srli         t2, a4, 19
                  srai         a2, s1, 11
                  add          a1, t4, ra
                  nop
                  andi         a6, s3, 903
                  addi         s9, t0, -1231
                  srli         s5, a3, 16
                  sltu         s5, s0, a6
                  sltu         sp, a5, t0
                  slli         s8, s9, 30
                  auipc        s5, 600785
                  sltu         sp, sp, s0
                  sra          a2, t6, a4
                  sra          s1, a3, sp
                  xori         a6, t3, -737
                  nop
                  auipc        s4, 705170
                  slti         a0, sp, 191
                  sltiu        a2, t2, 1871
                  and          sp, tp, s0
                  sltiu        t4, s2, -1121
                  slti         s9, s8, -487
                  andi         sp, a0, 525
                  or           a0, zero, t3
                  slt          zero, t3, s10
                  srli         a6, s9, 4
                  slli         t3, a0, 7
                  andi         a2, a3, -1415
                  srai         s6, tp, 10
                  andi         a7, a7, -120
                  auipc        s8, 645668
                  sub          a3, t6, t3
                  srli         s9, a1, 1
                  srli         ra, gp, 14
                  addi         t6, a5, 964
                  sll          a7, a0, s2
                  sra          zero, a2, s4
                  add          ra, a6, a4
                  sltu         zero, s9, a6
                  andi         s11, s3, -56
                  sltiu        sp, t5, -1049
                  sltu         t1, a7, sp
                  addi         t2, s2, 852
                  xori         a0, a7, 1931
                  sltu         ra, t2, sp
                  slli         t1, s8, 9
                  addi         t1, a3, 1020
                  nop
                  and          s0, s1, t5
                  nop
                  add          a3, t1, s9
                  sltiu        s11, a3, -1829
                  ori          a2, s0, 185
                  sub          t3, t6, zero
                  andi         t0, t5, -1308
                  add          t3, sp, t5
                  and          t0, s7, s5
                  xori         a0, gp, 1420
                  auipc        t5, 121323
                  add          zero, s11, s9
                  ori          a6, t0, -1180
                  nop
                  sra          s11, s5, s11
                  slt          t6, t4, t4
                  or           t5, s1, s1
                  auipc        t4, 388953
                  xor          s3, s11, s1
                  addi         s8, t2, 1522
                  add          t4, a2, s11
                  auipc        s6, 72109
                  sltu         s9, t5, a5
                  sltu         t4, s9, a6
                  xor          s4, t3, a4
                  sltu         s5, t2, s4
                  sub          t1, s5, s9
                  lui          t6, 337586
                  sll          gp, s8, a6
                  slt          t4, a5, ra
                  add          t3, s7, t1
                  slt          s5, tp, s8
                  andi         sp, s5, 1763
                  lui          t2, 1028526
                  slti         s0, a4, 1372
                  auipc        a3, 143773
                  sra          s5, s5, a6
                  addi         a6, t2, -1550
                  slt          s9, sp, s2
                  xor          s9, a7, ra
                  slt          t6, t2, gp
                  lui          a6, 922266
                  sltu         t3, a4, t5
                  and          s10, a4, s4
                  auipc        zero, 979428
                  srai         a2, t1, 15
                  nop
                  slli         t3, ra, 21
                  addi         ra, t0, -1725
                  lui          s8, 78397
                  sll          t4, s4, t2
                  sub          a2, a0, t1
                  xor          tp, a3, t1
                  ori          t3, a3, 1438
                  xori         s11, s3, 1948
                  add          s5, ra, s6
                  sltiu        t4, s8, 794
                  srli         s10, t1, 25
                  andi         t5, a3, 537
                  sub          s1, a2, gp
                  xor          a7, s1, s1
                  andi         s6, s2, 1266
                  slli         s0, t2, 26
                  sra          s8, a6, a7
                  sra          s2, t2, s7
                  lui          s3, 395690
                  and          t4, a2, s6
                  or           a2, sp, s2
                  srli         a3, t0, 31
                  addi         s10, ra, -467
                  xori         t2, a4, 547
                  sub          a0, s4, t2
                  andi         a6, gp, -95
                  lui          t3, 845758
                  lui          tp, 109570
                  addi         s0, t6, 683
                  add          t4, a0, s3
                  ori          tp, ra, 1994
                  xor          s8, t4, t0
                  slti         a0, s6, 400
                  and          s0, tp, a5
                  slti         sp, s3, -77
                  and          s10, sp, a0
                  slli         a0, t1, 4
                  slti         t6, ra, -1851
                  addi         t4, a5, 14
                  and          s6, a6, t3
                  ori          s2, a0, 1715
                  xor          s0, t0, gp
                  srli         t1, t5, 10
                  sltiu        gp, a0, -1338
                  andi         a3, s8, -1002
                  srli         a3, t4, 13
                  slt          a1, sp, t0
                  sltu         a1, s7, tp
                  srl          a7, s0, a7
                  addi         s3, a3, 512
                  xori         t6, sp, 1068
                  auipc        tp, 585571
                  sra          s1, a1, a7
                  slti         s1, a7, 225
                  andi         t2, s4, 315
                  sltu         a3, t2, s8
                  slti         gp, s5, -2028
                  ori          t6, a0, 1901
                  lui          s2, 985185
                  slli         gp, s6, 12
                  srli         gp, gp, 30
                  sll          s3, t1, s4
                  add          zero, s1, s6
                  srl          s10, s9, s5
                  ori          s0, s7, 854
                  ori          s3, s6, -987
                  lui          a7, 1024183
                  sub          s1, a6, t1
                  sll          s6, a4, a6
                  or           s2, ra, tp
                  srli         zero, a4, 22
                  nop
                  ori          a0, t6, 1474
                  slti         s2, t5, -1442
                  sltiu        tp, t2, 980
                  or           a6, s9, s5
                  sltiu        s8, t1, -197
                  or           s11, s4, a2
                  sll          t3, t1, s0
                  slt          s1, ra, t6
                  and          a0, t4, s10
                  nop
                  ori          s9, zero, -147
                  add          t6, a7, s6
                  srl          ra, t5, s1
                  sra          t4, t4, ra
                  slti         a1, zero, 263
                  andi         t2, s1, 810
                  srli         ra, s10, 2
                  ori          t5, t0, -749
                  auipc        a0, 509245
                  add          a1, s7, zero
                  sltiu        sp, s11, -1684
                  auipc        a7, 1019293
                  addi         a2, s6, 1527
                  xori         zero, s7, -1461
                  sra          t4, a2, s2
                  sltiu        a0, a2, -266
                  xor          a0, s7, gp
                  sltu         sp, s3, s0
                  auipc        s8, 881280
                  auipc        a0, 1029771
                  ori          sp, s9, 535
                  xor          s3, sp, tp
                  andi         sp, tp, -1225
                  slt          s9, t6, s11
                  sub          zero, s1, t0
                  sltiu        s0, s9, 1969
                  slti         a6, s5, -1664
                  slti         s11, s1, 1898
                  nop
                  srli         s1, s4, 30
                  sra          tp, s7, a2
                  slli         tp, ra, 2
                  addi         s1, t5, -327
                  lui          s2, 993322
                  nop
                  xori         s9, s1, -1102
                  slti         a6, ra, -1029
                  auipc        s4, 424068
                  add          a1, a3, t2
                  sltu         tp, s6, ra
                  sub          s1, s5, a6
                  srl          tp, s11, s2
                  and          s11, s2, s2
                  slli         s8, s9, 7
                  srai         t0, s11, 30
                  xor          t5, t6, s8
                  srl          a3, s2, t3
                  xori         ra, s1, 1099
                  addi         t0, a3, 1064
                  sll          t2, a0, s2
                  auipc        t4, 1014184
                  slt          s0, s1, s0
                  lui          t4, 929537
                  sltiu        t2, sp, 1888
                  sltu         s4, s9, s6
                  sub          t4, s3, t5
                  xori         a7, ra, -545
                  sub          s8, s10, t2
                  sltu         s0, t2, s5
                  slti         t2, a1, -1597
                  xori         t2, a7, -65
                  nop
                  nop
                  ori          t6, a7, 1824
                  and          gp, a4, t1
                  nop
                  and          sp, t2, t4
                  and          sp, s1, a4
                  sll          s1, t1, s2
                  xor          s0, gp, a3
                  srl          t1, t1, s1
                  srai         s3, s6, 10
                  or           a0, a4, s5
                  srai         s1, t5, 1
                  xor          s1, t0, tp
                  slli         t4, a3, 0
                  nop
                  addi         t5, gp, 1642
                  sub          t5, a2, zero
                  and          t4, t6, t2
                  ori          ra, a6, 1730
                  add          s4, s10, a3
                  srai         s0, t3, 29
                  sub          a0, a1, s5
                  srli         s0, a7, 1
                  srl          sp, s1, s7
                  andi         t0, a3, -1981
                  add          zero, t1, t5
                  sll          a0, s7, s5
                  sub          a3, s9, s0
                  auipc        a3, 691896
                  sltu         s5, t6, t3
                  sra          t2, s4, s3
                  srai         a1, t2, 25
                  srli         s4, s11, 30
                  srli         s6, t1, 14
                  slli         s9, a7, 20
                  and          s8, sp, a2
                  srli         t4, s11, 4
                  sltu         a2, t0, t1
                  srai         s11, sp, 7
                  sll          t0, s10, s10
                  andi         a7, a5, 27
                  slti         s9, tp, -473
                  srai         t4, a4, 2
                  add          t2, s6, zero
                  addi         a0, s10, 761
                  add          gp, zero, sp
                  andi         a1, s11, -5
                  ori          a3, s0, -1734
                  xori         s5, s6, -268
                  srli         sp, s10, 31
                  sltu         sp, s5, t3
                  lui          t3, 1021115
                  sltu         s6, t0, ra
                  addi         a2, s4, 1059
                  sub          t3, s8, s0
                  addi         s8, a2, 1878
                  sub          ra, a5, t6
                  or           tp, ra, s3
                  lui          zero, 547804
                  auipc        sp, 752826
                  nop
                  slti         s1, a2, -1203
                  sra          s3, s6, s11
                  sltu         s2, a7, s3
                  ori          a6, t1, -896
                  addi         s10, s1, -871
                  addi         s0, tp, 1285
                  auipc        s5, 510324
                  slti         s9, s2, -2013
                  addi         t0, s3, 517
                  nop
                  srl          s10, a3, s4
                  or           t5, gp, a2
                  sub          s1, t2, a2
                  ori          t1, gp, -765
                  sll          sp, a3, ra
                  srai         t6, a6, 2
                  slt          a3, t1, s3
                  xor          a2, s2, s4
                  auipc        t3, 307660
                  or           a2, s4, t5
                  slli         gp, tp, 12
                  and          s5, a0, s6
                  slli         s5, a0, 24
                  lui          t4, 764453
                  xor          s2, tp, t6
                  sltiu        s11, t5, -915
                  sltiu        a6, ra, 870
                  slli         s10, s0, 11
                  ori          s3, tp, -42
                  slt          s2, s7, zero
                  sub          tp, s3, s2
                  xor          s8, a5, s7
                  xori         s6, ra, 280
                  auipc        s9, 913962
                  ori          s8, s7, -1562
                  lui          s8, 526779
                  sll          zero, tp, a0
                  add          s3, s5, a5
                  ori          s11, gp, 1884
                  xori         a3, a2, -1373
                  add          s2, s3, s1
                  add          t3, t1, tp
                  sub          s11, s9, s4
                  sltu         t2, a1, a5
                  sll          s3, a6, gp
                  sub          gp, a3, s3
                  sll          s4, s0, s1
                  ori          t1, gp, 1134
                  andi         t6, zero, 725
                  sra          t0, t4, t5
                  sltu         s4, a5, a0
                  lui          s0, 1014045
                  auipc        a6, 775845
                  and          a2, sp, a2
                  sltiu        ra, t6, 1401
                  nop
                  sra          t6, ra, zero
                  andi         s11, t1, 482
                  xor          a3, s10, s3
                  sra          a2, a1, a2
                  srl          s11, s2, s1
                  srai         s9, a5, 14
                  slti         ra, a6, -1099
                  or           s0, zero, s0
                  add          a7, a3, t1
                  sub          t4, gp, a3
                  sltiu        a2, a6, -1106
                  srli         s0, ra, 28
                  addi         s1, s7, 1100
                  sltu         a3, t2, s6
                  srai         s8, s0, 13
                  or           s11, s2, zero
                  add          sp, s4, ra
                  addi         s5, t1, -1104
                  or           s11, sp, s10
                  srai         s3, a3, 26
                  ori          a7, s4, -1021
                  sub          t6, t4, s2
                  sltu         t4, t3, zero
                  lui          s9, 297027
                  sltu         a2, t0, a3
                  sltu         t3, s4, a5
                  xori         s5, t3, 214
                  srl          s1, tp, s6
                  srl          s6, t3, t0
                  slt          ra, a2, t4
                  sub          a6, zero, tp
                  sltiu        s10, s4, 1113
                  slt          s8, a6, s5
                  addi         t1, s8, -600
                  ori          s4, s5, 956
                  or           a7, a6, a3
                  xori         a7, a0, -1755
                  and          a1, a1, tp
                  slti         s11, a3, -689
                  srli         sp, gp, 25
                  sra          s0, t4, s7
                  sub          s2, a1, tp
                  sltiu        t2, ra, -1004
                  srl          s8, t6, s8
                  xori         gp, s7, -464
                  auipc        t1, 440259
                  slli         ra, t3, 26
                  sll          t2, a0, t3
                  srl          s4, s2, t6
                  and          a6, t1, s11
                  andi         a2, t6, 111
                  nop
                  sll          s9, a5, s5
                  sll          zero, a1, t3
                  and          t3, t6, a0
                  xori         a3, t2, 289
                  slt          a2, s9, s2
                  sra          tp, s10, a1
                  slti         zero, a6, 1077
                  slt          a2, t3, tp
                  andi         t3, a2, 1220
                  slti         s5, t0, -194
                  slt          tp, t3, s11
                  xor          s0, a1, gp
                  xor          s4, tp, s10
                  srli         t4, sp, 4
                  xori         a2, s4, 319
                  sltu         t4, a3, t2
                  slli         s2, ra, 11
                  slli         s2, t1, 16
                  xori         gp, tp, 685
                  sltiu        a7, s0, -173
                  sub          s11, s3, a0
                  slt          s9, s6, sp
                  sll          t3, s4, s6
                  srli         s1, t0, 15
                  lui          tp, 558258
                  sra          s3, a2, s8
                  sra          t3, t1, a7
                  slt          gp, s11, zero
                  slt          a2, a1, a3
                  xori         t4, s9, 306
                  slli         s11, t4, 9
                  andi         s11, tp, -708
                  xor          a2, a6, s10
                  sub          tp, a0, ra
                  srl          t5, s9, a6
                  addi         s6, s5, 1284
                  xor          s1, sp, s3
                  sub          s1, s10, s11
                  sll          a1, t4, a3
                  srai         t6, t4, 9
                  or           t3, s8, s9
                  sll          t3, a3, s5
                  auipc        t6, 885920
                  xori         tp, s6, 962
                  add          s1, a4, a5
                  sltu         t0, s6, t6
                  xor          t0, a6, s5
                  srl          t6, s1, t2
                  nop
                  add          a7, s9, s10
                  srli         t4, a3, 30
                  sra          t2, t4, s5
                  sub          gp, a5, t1
                  nop
                  lui          t5, 640873
                  lui          a6, 819188
                  slti         t4, a6, -1860
                  and          s6, s1, tp
                  sra          t3, gp, sp
                  xori         s5, s4, 1463
                  slti         tp, t4, 122
                  nop
                  slt          s2, a7, s6
                  srl          s5, tp, a4
                  slti         a7, s4, -1830
                  xori         a1, sp, -730
                  xori         t4, a7, -1717
                  sltu         a2, s0, zero
                  xori         s6, t5, -1431
                  add          t6, gp, s8
                  srai         s3, s9, 18
                  slt          s2, a2, tp
                  andi         t4, ra, -2007
                  sll          gp, a7, s8
                  lui          s6, 816034
                  lui          t1, 586566
                  sra          a3, t4, t5
                  add          s6, a2, t6
                  slli         s2, t6, 3
                  add          t6, tp, a6
                  addi         s11, s9, -1805
                  andi         s8, s11, -913
                  xori         a7, a4, -123
                  ori          t6, a0, 626
                  srl          a6, tp, s11
                  slli         t6, t2, 31
                  sltiu        a6, s9, -301
                  sltiu        a7, s9, 1157
                  sltiu        a0, a3, 644
                  slti         s1, t5, -967
                  and          t1, sp, s1
                  or           s11, t3, s8
                  xori         a1, a3, 227
                  slt          s9, s0, a6
                  srai         t0, s4, 22
                  and          t4, t4, s10
                  andi         s5, s4, -1742
                  sll          s10, t0, a6
                  addi         s2, tp, 382
                  sltu         s8, tp, ra
                  and          s4, t1, s7
                  nop
                  lui          s4, 639085
                  slli         gp, t4, 6
                  slli         a1, t4, 10
                  add          a7, a5, s2
                  nop
                  and          sp, a1, gp
                  slt          a7, tp, a3
                  srli         s6, sp, 14
                  lui          tp, 774947
                  sltiu        t3, s4, -1947
                  slti         tp, t4, 642
                  xor          zero, a6, t0
                  auipc        gp, 650456
                  sltu         s10, zero, sp
                  srai         sp, t0, 16
                  xor          a3, s8, s10
                  sltu         a0, t2, a0
                  andi         t2, t1, -679
                  slt          t2, s6, a7
                  slt          s2, t6, s7
                  slti         ra, s3, 96
                  sltiu        ra, t6, 953
                  andi         s6, t1, 1899
                  xor          a7, a6, t0
                  and          s3, t2, t5
                  sltu         t4, ra, tp
                  lui          s9, 645378
                  add          a6, ra, a3
                  andi         t0, s4, -1569
                  xori         t5, t3, -1262
                  slli         s3, t5, 25
                  sltu         s0, s6, s3
                  auipc        s0, 147598
                  andi         t4, a0, -1218
                  auipc        t5, 87060
                  ori          s2, a5, -140
                  sub          s6, t1, s2
                  ori          s4, s0, 372
                  sra          a2, ra, t2
                  sll          s1, a5, s9
                  ori          t6, a1, -2043
                  add          s4, a6, a1
                  or           s10, a1, s9
                  nop
                  and          s11, t5, a4
                  sltu         a1, t1, s5
                  slt          a1, zero, sp
                  sltu         s6, s8, sp
                  slt          a6, a4, s4
                  srai         s3, s3, 31
                  sub          a2, s9, a0
                  auipc        s0, 120431
                  sltu         s2, t6, t3
                  slli         ra, sp, 1
                  and          ra, t3, t1
                  xori         s0, sp, 586
                  slt          s9, s6, s0
                  and          t0, s11, s7
                  xor          a7, t4, s5
                  sra          s9, t4, s6
                  lui          s11, 117515
                  auipc        s0, 121903
                  sltiu        s1, s9, 1788
                  ori          s4, s3, 1436
                  sltu         s6, s5, zero
                  sub          t0, zero, s5
                  ori          a7, a6, -509
                  add          s11, a2, s5
                  sltiu        gp, s1, 906
                  xori         a0, tp, -1158
                  slt          a6, s4, s3
                  xor          zero, a6, a0
                  add          s5, ra, s9
                  lui          a6, 171862
                  andi         gp, t1, 984
                  sll          s5, t5, a2
                  srl          s0, sp, s2
                  slt          t2, s4, a3
                  srai         s10, a5, 25
                  slt          t5, ra, a3
                  andi         t3, a2, -1116
                  add          t0, s7, gp
                  sra          s11, a0, a7
                  andi         s11, s11, -1133
                  li           ra, 0xf39b24a9 #start riscv_int_numeric_corner_stream_19
                  li           t3, 0x0
                  li           a2, 0x696befe0
                  li           s8, 0x80000000
                  li           s10, 0xa0948acd
                  li           tp, 0x0
                  li           s6, 0x0
                  li           s3, 0x80000000
                  li           t1, 0xffffffff
                  li           t5, 0xb80a747d
                  sub          s8, a2, a2
                  addi         ra, ra, -2023
                  auipc        t1, 697920
                  nop
                  addi         a2, s6, 1883
                  add          s8, s3, t5
                  add          s3, s10, t1
                  sub          s6, a2, t5
                  sub          a2, ra, t5
                  auipc        t5, 104897
                  sub          s3, t5, s8
                  add          s3, s6, a2
                  lui          tp, 963112
                  sub          s3, t5, t5
                  add          t3, s3, a2
                  addi         t1, tp, 1553
                  add          t5, tp, s3
                  add          ra, s6, t3
                  auipc        s3, 379387
                  sub          s10, s8, t1 #end riscv_int_numeric_corner_stream_19
                  sltiu        gp, a7, -1002
                  slti         gp, s6, 593
                  slli         ra, a6, 1
                  xor          s4, a4, sp
                  sltu         s4, s10, t5
                  sll          a1, t1, s6
                  slti         ra, s11, 1530
                  and          s2, a4, t0
                  lui          s9, 290313
                  slti         s5, t3, 748
                  sub          t1, a7, gp
                  slti         s3, s2, 1884
                  srai         t2, a0, 10
                  sltu         tp, a4, s7
                  xor          t1, a0, sp
                  sltu         s11, s11, s10
                  xori         a6, s6, 1657
                  sll          t3, zero, t2
                  ori          a7, a4, 678
                  sltu         gp, t6, a5
                  sll          a1, t3, s2
                  add          t0, t5, s4
                  srl          a0, t3, t0
                  sub          a7, ra, t1
                  slt          s3, gp, t0
                  srl          s4, s10, s7
                  sltu         a2, t1, t5
                  srl          a1, a7, s11
                  sub          t3, t1, s3
                  xori         s4, sp, -1226
                  xor          s3, ra, a4
                  nop
                  add          a7, s1, ra
                  sll          t2, s7, s2
                  slt          s10, s6, a3
                  slt          tp, s1, a2
                  lui          t1, 116668
                  sub          s6, s10, t2
                  addi         s11, a6, -844
                  ori          t2, ra, 533
                  slli         t2, a3, 29
                  srli         s1, a4, 29
                  srai         a3, s2, 3
                  slli         t0, t5, 13
                  slti         a7, a6, 1936
                  sltiu        zero, gp, 391
                  xor          s4, s9, a4
                  sub          t2, t3, a2
                  lui          t6, 976663
                  sltu         t0, a2, a3
                  and          s3, zero, t0
                  andi         s0, ra, 233
                  sltu         t1, a4, zero
                  sub          t3, t6, s2
                  srl          t6, t5, t1
                  or           s4, s9, a3
                  andi         t6, zero, 918
                  and          t3, t3, a4
                  ori          zero, t1, -668
                  slt          s8, a1, t1
                  slli         s4, t3, 15
                  and          a6, t2, s6
                  and          s3, s3, a5
                  auipc        t6, 957978
                  slti         a1, gp, 2034
                  slti         a0, a2, 1690
                  xor          s4, t5, t4
                  slli         t1, a3, 30
                  sltiu        s0, a6, -922
                  sltiu        tp, sp, -169
                  sub          s10, s3, a7
                  slti         s0, s3, -1276
                  slti         a1, t2, 955
                  xor          t1, s6, a0
                  srli         s9, a6, 25
                  slli         a1, a3, 25
                  xor          ra, a3, ra
                  sltu         a1, a0, t3
                  lui          s2, 891147
                  andi         a7, t2, -648
                  srl          t0, t6, t0
                  srli         s5, gp, 31
                  xori         s2, zero, 1576
                  auipc        gp, 810611
                  ori          t5, t3, -80
                  srl          s10, ra, t4
                  srli         s3, s1, 21
                  andi         t6, s0, -828
                  xori         t4, t4, -772
                  srl          s8, ra, a7
                  sra          s8, s9, ra
                  slti         gp, s3, 1749
                  xor          s5, t5, t4
                  sra          s4, s9, sp
                  ori          a0, s4, -1318
                  xor          zero, s9, sp
                  sltiu        s0, a1, 1423
                  lui          a6, 554572
                  andi         t2, t6, -1711
                  slt          t5, s9, a4
                  addi         s1, gp, 1658
                  xor          s5, t4, a6
                  slti         s8, s5, 776
                  slli         t5, t2, 0
                  add          ra, t1, a1
                  xori         s9, t3, -1767
                  addi         s11, gp, -676
                  sll          s2, t4, a1
                  slti         t0, a6, 424
                  sltu         a3, s11, s5
                  and          t3, gp, a4
                  andi         t3, s3, 1782
                  sub          s9, t6, sp
                  xori         s11, s11, -1133
                  add          s8, s10, t2
                  or           s5, a7, t3
                  and          s1, a2, s9
                  add          t2, s5, t3
                  andi         s8, s5, 1009
                  lui          a7, 520167
                  xor          t5, a1, t6
                  sltiu        s9, t1, 1713
                  xori         s9, s5, 453
                  xor          a6, s10, s3
                  srai         gp, s7, 18
                  add          t0, ra, t4
                  sra          s11, a0, t2
                  sltiu        s10, s6, -568
                  srai         s2, a7, 2
                  sltu         s10, zero, s4
                  sll          s8, s8, a1
                  xori         sp, a7, -945
                  addi         t0, s1, -470
                  srl          s4, a3, a5
                  andi         zero, s2, 305
                  srli         a1, a4, 0
                  addi         gp, a3, -1935
                  nop
                  add          t5, a1, a3
                  sra          ra, s4, s6
                  sltiu        tp, a1, -981
                  auipc        s2, 289886
                  xori         sp, ra, -991
                  andi         t4, t0, -190
                  and          t6, sp, t2
                  andi         s0, a6, -465
                  addi         t0, a6, -1916
                  sub          a3, s1, a1
                  slli         s8, t0, 19
                  srl          gp, sp, ra
                  lui          s1, 811318
                  srai         s11, s3, 20
                  addi         s0, s7, 441
                  nop
                  sub          s8, s10, s9
                  slli         t1, s1, 22
                  ori          a7, a5, 885
                  nop
                  sltu         s6, t3, a5
                  ori          a7, tp, 539
                  slt          gp, zero, s4
                  add          a3, a6, s4
                  ori          s10, a4, 1873
                  srl          s8, t4, s6
                  slt          s6, a5, ra
                  sub          tp, a4, s2
                  auipc        sp, 193140
                  auipc        a6, 41841
                  add          ra, s1, s6
                  lui          a3, 800619
                  or           t5, s8, s8
                  xor          zero, s0, a2
                  sll          s10, s8, s5
                  andi         s4, t4, -526
                  andi         s0, a0, 381
                  sub          a3, t0, t4
                  andi         t4, s9, 1090
                  slti         t1, s9, -1378
                  xori         a3, a3, 1835
                  srli         gp, a5, 23
                  slt          s8, t2, s7
                  sltu         t2, t5, sp
                  sub          s9, s5, tp
                  add          t1, t0, s9
                  auipc        t1, 886740
                  srai         s8, s1, 11
                  lui          s1, 156396
                  slli         s3, sp, 6
                  xor          s0, s0, t6
                  auipc        a0, 681605
                  srai         s5, t3, 9
                  srli         s6, a3, 22
                  andi         a7, t6, 797
                  srai         t6, s5, 31
                  nop
                  xor          tp, s1, t6
                  sll          a0, tp, s3
                  addi         s2, s9, 1438
                  slti         zero, a5, -592
                  auipc        t1, 371570
                  andi         t0, a5, -1431
                  srli         s6, a0, 28
                  auipc        s4, 1038383
                  sll          t2, t4, a3
                  add          s2, s7, t6
                  and          a0, t2, s1
                  ori          ra, s11, 383
                  srai         ra, s5, 26
                  sra          s4, s11, a5
                  xori         t2, s8, -1607
                  andi         s1, t3, -1310
                  auipc        a1, 315355
                  nop
                  xor          a3, t4, s4
                  xori         s3, s2, 1885
                  slli         s8, s4, 1
                  or           s2, a1, ra
                  sltu         t4, s6, a5
                  add          a7, a5, t0
                  ori          s2, a7, 142
                  sltu         a6, s5, t0
                  sll          a6, tp, t1
                  addi         t3, s6, 1699
                  slli         s6, a2, 14
                  lui          s1, 1751
                  sub          zero, t3, s6
                  lui          a2, 701129
                  srai         t5, s4, 7
                  sra          t1, s2, s5
                  srl          t5, s11, t5
                  and          s3, s8, t4
                  sltiu        t3, s8, -1330
                  slti         a0, t3, 1032
                  ori          zero, ra, -751
                  sltu         a7, a7, s10
                  lui          s6, 582819
                  srai         s9, zero, 11
                  srai         ra, a1, 17
                  and          gp, ra, a5
                  srl          a1, s3, ra
                  andi         s5, s7, -1156
                  sll          a3, t1, t4
                  xor          t1, s4, t6
                  srli         t5, s9, 21
                  auipc        s8, 410761
                  sll          t3, a7, s7
                  xori         ra, a5, 22
                  sra          s9, t5, s4
                  srai         a0, a4, 14
                  srl          sp, s1, s11
                  add          s8, a4, a6
                  xori         s2, s2, -212
                  sub          s2, a3, s8
                  lui          s5, 748830
                  xor          a7, t0, t5
                  auipc        s1, 729815
                  xori         s4, a4, 316
                  andi         s9, s8, 897
                  andi         t6, s5, -953
                  xor          a0, s9, zero
                  sub          t2, t3, s5
                  andi         s3, s9, 307
                  srai         sp, t5, 12
                  auipc        s11, 81966
                  addi         t1, s1, -1305
                  lui          t5, 900767
                  ori          s3, s1, 1747
                  auipc        t2, 916998
                  lui          gp, 277441
                  addi         t2, a6, -1854
                  xori         s11, tp, -1366
                  sltu         t4, s0, t3
                  or           t6, s1, t3
                  srl          s8, a2, ra
                  addi         s1, a0, -1434
                  srl          a7, s8, s8
                  slt          a1, s2, a5
                  ori          gp, a7, -479
                  sra          s4, s10, s6
                  sltu         a7, tp, t4
                  or           s0, s0, a6
                  lui          t0, 422364
                  xor          s8, ra, t5
                  nop
                  slt          s6, a6, t2
                  and          a2, s9, gp
                  add          s8, t1, s8
                  xor          a6, s9, t0
                  nop
                  andi         s11, s8, 1577
                  xori         zero, t6, 1698
                  sub          a7, a3, zero
                  xor          a7, s9, s10
                  sra          a3, s1, a6
                  sltiu        a0, s4, -147
                  add          s9, t6, s10
                  slt          zero, s10, zero
                  sra          t0, s11, s7
                  slt          t6, s7, t4
                  sltu         a6, ra, a4
                  ori          s8, s10, 5
                  andi         a3, sp, 1615
                  xori         a7, s10, -2004
                  xori         s11, t4, 1426
                  auipc        s10, 675021
                  srai         s5, a6, 8
                  xori         s0, t3, 332
                  sra          a0, t5, s10
                  xori         a7, a1, 19
                  slt          s2, tp, s0
                  srai         s4, s9, 18
                  lui          t6, 530950
                  srl          a6, s7, sp
                  nop
                  add          s0, s10, s0
                  sra          t1, zero, s3
                  slti         s1, sp, 688
                  slt          s3, s4, s5
                  add          zero, tp, t1
                  sltu         s11, a4, s8
                  and          t2, t1, a4
                  srli         s5, s0, 18
                  lui          t4, 651998
                  auipc        t3, 315854
                  andi         a3, t5, 1543
                  xor          s8, s7, s10
                  sll          s10, a3, a4
                  slti         s10, t2, -823
                  sll          s3, s3, sp
                  andi         zero, s9, -1303
                  xor          t1, a4, t6
                  addi         ra, sp, -245
                  sll          s5, a1, s9
                  sra          t1, s9, gp
                  ori          a7, s8, 1376
                  slti         a1, gp, -549
                  slt          a6, t0, s0
                  slti         s3, t6, 1732
                  sll          s3, sp, a4
                  slli         t0, t2, 31
                  auipc        t2, 1005578
                  sltiu        tp, a1, 331
                  slti         s5, gp, -1049
                  auipc        a7, 967966
                  slli         s11, s8, 19
                  sll          s9, s7, a3
                  auipc        gp, 314120
                  sltu         a0, a0, s4
                  sra          t6, a7, s2
                  slt          a7, t2, a0
                  srl          s6, a7, a5
                  sll          a1, a7, t5
                  xor          s0, s1, gp
                  ori          t4, s3, -772
                  lui          a3, 61677
                  xori         a0, a2, 665
                  slt          s0, t6, s9
                  add          zero, s8, s5
                  srl          sp, a6, ra
                  auipc        s9, 892963
                  ori          s0, a1, -1959
                  ori          a2, a1, 1970
                  lui          s3, 961949
                  and          s8, t3, s4
                  srl          t5, tp, t4
                  sub          sp, a4, s9
                  sltiu        t4, t1, -1177
                  slt          s8, s10, s9
                  slt          t2, a3, s11
                  xori         s0, s6, 1333
                  addi         t4, a2, 1215
                  sra          t4, s1, a7
                  andi         s2, s6, 1522
                  srl          zero, sp, a1
                  or           zero, s9, tp
                  xor          ra, s10, ra
                  sra          s5, t5, s6
                  ori          tp, a6, 1627
                  srli         t1, s4, 11
                  sltiu        a2, t5, 14
                  srl          a6, s11, s5
                  andi         s6, a0, 582
                  slli         s9, s10, 8
                  slt          s11, gp, s7
                  or           s10, s6, s4
                  andi         a7, s4, 1391
                  add          a6, t2, zero
                  xor          a3, s8, a7
                  nop
                  srai         s3, t2, 2
                  slli         s9, a5, 17
                  nop
                  sub          ra, a4, s6
                  xori         s1, s7, -1565
                  sra          t5, s10, ra
                  and          zero, gp, s7
                  slli         t3, tp, 19
                  nop
                  andi         ra, t1, -179
                  sra          s8, t4, sp
                  slti         t1, s9, -1044
                  ori          s2, t3, -462
                  and          zero, s5, s4
                  add          t5, a3, s6
                  lui          s11, 104622
                  ori          a7, a2, 1437
                  ori          s11, gp, 323
                  sll          s11, a6, a0
                  nop
                  nop
                  sltiu        t2, ra, -34
                  lui          ra, 1026974
                  slli         t0, sp, 28
                  sra          s6, s10, s9
                  sub          a2, a5, t3
                  slti         ra, s8, 1184
                  srli         ra, a2, 29
                  sll          a7, a1, a3
                  and          t1, s9, s1
                  sub          tp, a2, t6
                  add          s9, gp, a5
                  xori         tp, a5, -617
                  andi         a6, sp, 1610
                  sltiu        a2, t3, 639
                  or           a3, t2, s0
                  slli         t3, s2, 18
                  ori          t2, s8, 265
                  sltiu        s5, s6, 1865
                  andi         s9, s10, -915
                  ori          a2, a7, -1742
                  sll          t3, t5, s9
                  lui          ra, 730289
                  addi         s4, ra, 824
                  sra          sp, s7, a7
                  slli         t4, s2, 6
                  andi         a7, t2, 953
                  add          t3, t4, s9
                  slt          zero, a0, s4
                  lui          s2, 258384
                  sra          tp, a2, s8
                  lui          a0, 36466
                  xori         s2, s2, -302
                  sub          t4, a5, zero
                  sra          a0, gp, s0
                  addi         sp, ra, 808
                  sll          s6, t3, s7
                  srli         a1, zero, 31
                  nop
                  or           a1, a1, a7
                  auipc        a0, 112982
                  xori         gp, s1, -335
                  xor          t0, s1, a0
                  and          a7, tp, s11
                  xor          t1, a7, s4
                  slti         a6, t4, 1187
                  slt          s3, t5, a2
                  slli         a0, a0, 31
                  sltiu        t4, a5, -1493
                  sltiu        t0, s7, -550
                  add          s0, s0, a3
                  or           a3, s3, t4
                  xori         s0, a3, -56
                  sltiu        s9, t2, 1321
                  xor          t5, a6, s4
                  srai         s9, a6, 28
                  and          t0, gp, t1
                  xor          s1, a1, s10
                  slli         s11, s7, 27
                  lui          ra, 207881
                  lui          s10, 984615
                  nop
                  sltu         zero, s7, s1
                  xori         s6, t4, -345
                  xor          a0, a1, s6
                  slt          s2, t1, gp
                  xor          t4, gp, tp
                  xor          t6, ra, a3
                  slti         s2, zero, -1523
                  srl          a6, s5, s2
                  sltiu        a2, t6, -342
                  sub          s5, gp, a6
                  sra          s10, s8, tp
                  sltiu        zero, t2, -524
                  auipc        s4, 857841
                  srli         s0, s1, 13
                  addi         t5, t3, 1320
                  nop
                  and          t3, a4, t6
                  xori         a3, a7, -1722
                  addi         gp, s1, 660
                  xor          a3, a0, t1
                  sll          s5, a5, t3
                  sltu         t0, t2, s9
                  andi         t6, a2, -1064
                  slt          s10, s7, s5
                  sltiu        t0, s8, 1903
                  and          sp, a5, t5
                  xori         s0, a3, -445
                  nop
                  add          sp, a3, tp
                  add          s5, s9, t4
                  sra          s2, s3, ra
                  ori          s8, s8, -1622
                  sll          a7, t1, s8
                  xor          a1, a6, s9
                  srl          sp, gp, a1
                  sra          sp, s5, t6
                  sltiu        s1, s9, -1778
                  andi         t4, s11, -1319
                  sltu         s10, s5, a4
                  li           t0, 0xc48074f7 #start riscv_int_numeric_corner_stream_4
                  li           tp, 0x80000000
                  li           s8, 0xffffffff
                  li           s0, 0x0
                  li           a1, 0x80000000
                  li           a0, 0x80000000
                  li           s2, 0xffffffff
                  li           t1, 0xc965796b
                  li           s3, 0xbdf14a51
                  li           a2, 0x99910e5c
                  add          a1, a2, t1
                  nop
                  auipc        t1, 357326
                  nop
                  nop
                  sub          s8, t1, tp
                  addi         a1, t1, 407
                  add          s8, tp, s8
                  auipc        tp, 964575
                  auipc        s2, 658124
                  nop
                  sub          a1, a2, a2
                  sub          a1, s8, s8
                  lui          a1, 717509
                  lui          t1, 542089
                  lui          tp, 513711
                  lui          s0, 420259
                  add          s8, s2, s3
                  nop
                  nop
                  nop
                  addi         tp, s3, -1074
                  nop
                  auipc        a1, 1012474
                  lui          a1, 964837
                  auipc        t0, 583503
                  auipc        a1, 640563
                  addi         tp, s8, 224 #end riscv_int_numeric_corner_stream_4
                  addi         t3, ra, -910
                  sra          s6, a5, t1
                  xori         t3, s8, 1647
                  slti         s9, s11, -1053
                  srai         s3, s11, 14
                  andi         a1, a4, -1749
                  sra          ra, a3, a7
                  xori         t5, a5, -1994
                  add          ra, t3, s4
                  andi         tp, s3, -1432
                  slt          s11, a3, s7
                  slti         tp, ra, -983
                  lui          s10, 404017
                  andi         t6, t6, -909
                  auipc        gp, 1028092
                  sltiu        a1, t3, -2012
                  auipc        t4, 792928
                  xor          t0, a2, s6
                  xor          s2, s1, a1
                  addi         a0, s11, 275
                  srl          t2, a1, a5
                  xor          gp, s3, t1
                  slti         s1, t0, 163
                  or           tp, t2, t2
                  sll          s5, s8, s2
                  andi         t1, s6, -740
                  sll          t4, s5, t3
                  xor          s2, s0, s0
                  xori         ra, sp, -440
                  sltiu        t5, s8, 524
                  add          a1, sp, a1
                  auipc        a2, 808075
                  xor          t0, t1, s2
                  sll          t6, t6, sp
                  slli         a3, t0, 25
                  sltu         s2, s1, s4
                  and          s5, s1, s11
                  andi         s6, s10, 768
                  add          a1, ra, s3
                  auipc        s2, 588885
                  xor          s1, t3, s8
                  xor          a0, s3, a6
                  addi         s11, t2, -1603
                  sub          tp, t1, s1
                  and          a2, t5, a7
                  addi         s3, s10, 673
                  sub          t4, s10, a3
                  auipc        sp, 616030
                  sra          a1, zero, tp
                  auipc        t0, 32371
                  andi         t2, s7, 162
                  nop
                  srli         s4, s2, 21
                  sub          s6, a0, t4
                  sub          ra, ra, a3
                  and          gp, sp, a7
                  sra          a6, t2, ra
                  slli         t1, gp, 2
                  srai         s9, a4, 6
                  srai         t4, tp, 0
                  sltiu        ra, t0, -1280
                  auipc        t1, 762486
                  sll          t1, a6, s8
                  xori         s1, t5, -1595
                  slti         s2, s11, 1731
                  slli         s0, a6, 2
                  addi         a6, sp, 298
                  sltiu        t5, a5, 66
                  add          s6, zero, s10
                  srai         sp, s2, 4
                  sra          s3, s5, ra
                  andi         t3, ra, -1817
                  srl          t0, ra, a7
                  sra          ra, s8, zero
                  and          zero, s8, a1
                  addi         s11, zero, -1104
                  srai         tp, a3, 15
                  or           s11, s7, s10
                  andi         s6, s10, -1899
                  xori         t0, s8, 303
                  sltu         s3, t1, t1
                  sub          t3, zero, gp
                  slt          s1, t5, s4
                  srli         t3, t0, 11
                  sltu         s3, a5, s11
                  sub          s5, t2, s4
                  slli         a1, t0, 7
                  sll          t4, t1, zero
                  slti         s10, s4, 122
                  sub          zero, gp, s8
                  sra          t5, s4, a3
                  slli         s2, tp, 1
                  lui          s0, 285827
                  andi         zero, s10, 1010
                  sltu         a1, t3, a4
                  or           sp, t4, s0
                  ori          t2, a1, -1682
                  sltiu        s6, s5, 107
                  sltu         t3, a4, s7
                  andi         s10, s7, -217
                  add          a3, s1, t0
                  lui          s3, 965971
                  srai         s0, gp, 11
                  slti         t1, a4, -1260
                  nop
                  and          a0, s3, s1
                  add          s10, t5, t5
                  ori          s3, t6, -757
                  srl          zero, t3, a5
                  andi         a2, t3, -1110
                  lui          s1, 954436
                  srli         t1, t5, 15
                  auipc        s4, 6262
                  nop
                  xori         a3, t5, -1771
                  xori         zero, t4, 1514
                  sltiu        t5, sp, 908
                  andi         gp, s2, -1449
                  sll          t0, a0, zero
                  sra          s5, t5, t3
                  slti         s11, gp, -883
                  xori         s6, sp, 365
                  sra          t6, a5, s3
                  andi         sp, a0, 645
                  sltu         s6, s0, s9
                  sra          a7, t0, a6
                  sll          ra, s3, s5
                  xor          s1, t6, t0
                  auipc        zero, 333644
                  and          t0, s11, a7
                  or           a7, s9, s10
                  lui          s10, 948874
                  xor          a1, s1, a5
                  slti         t1, t3, -272
                  sub          s2, a5, t6
                  nop
                  sltu         t4, s7, a3
                  srai         tp, t0, 7
                  slt          s10, t6, s1
                  xori         s5, a7, -1665
                  and          ra, t5, s2
                  slti         t2, gp, -1588
                  xor          s5, a7, a0
                  srai         s0, s3, 18
                  srl          s3, t4, zero
                  slt          gp, zero, s11
                  or           s9, t1, a1
                  lui          s0, 50376
                  srai         s11, sp, 0
                  sltiu        s11, gp, -1305
                  andi         a2, t1, 782
                  xori         a6, sp, -1614
                  or           a3, a3, s2
                  srl          sp, s11, t6
                  and          s0, s6, a6
                  slti         s6, t0, 1739
                  xori         tp, s9, -33
                  sltiu        a2, zero, -831
                  srl          tp, ra, t3
                  srli         s10, a3, 5
                  slti         t4, a5, 1748
                  sub          t1, t6, s4
                  xori         a1, s11, 283
                  auipc        t1, 630302
                  xori         s5, s3, 466
                  sltu         s1, s8, s8
                  sltu         a1, a5, t2
                  addi         t6, a5, -1601
                  xor          gp, a7, t6
                  sll          tp, a2, s2
                  addi         a6, s3, 1967
                  srai         sp, a0, 13
                  sll          tp, s0, a7
                  sltu         s4, a0, s1
                  slli         t5, tp, 27
                  slt          s2, s6, s5
                  sltu         s10, s11, s7
                  sra          t4, s7, a0
                  auipc        t2, 774252
                  slli         s3, s3, 0
                  addi         ra, s4, -580
                  and          t2, s1, s9
                  add          gp, t0, t4
                  xor          gp, s1, t5
                  or           t6, s11, a6
                  slti         a7, s1, -1285
                  auipc        s1, 335139
                  nop
                  sltiu        s2, s3, -1947
                  xori         ra, s6, 1938
                  slt          t3, t4, s11
                  sltu         a2, t1, a1
                  srai         t2, a1, 23
                  lui          gp, 56488
                  slt          gp, tp, s6
                  sltiu        t0, a6, 2033
                  sltiu        t2, s5, -1244
                  slt          t4, zero, t6
                  srai         a0, gp, 8
                  andi         a2, a5, 1819
                  addi         s10, s6, -1787
                  srli         a3, a5, 30
                  srli         t5, t0, 5
                  addi         s9, t6, -188
                  and          gp, zero, s1
                  sll          a7, s0, t5
                  xori         a2, s1, -1819
                  xori         s2, a4, -990
                  add          s5, s8, t6
                  lui          s2, 166315
                  lui          s11, 596747
                  xori         tp, s2, 348
                  nop
                  sra          tp, a1, t0
                  slt          a7, s3, t4
                  sll          s8, t1, s1
                  ori          a6, zero, 764
                  ori          a7, a2, -825
                  sub          t2, t5, s7
                  xori         s0, s0, 999
                  xor          t4, a4, s8
                  andi         s0, sp, -1156
                  srli         a1, t3, 16
                  addi         t5, a4, -1771
                  and          a1, s0, a0
                  sra          ra, s11, sp
                  ori          a1, sp, -363
                  sub          s10, a4, t4
                  and          s11, s3, sp
                  sub          a2, a0, tp
                  sltiu        t6, t5, 948
                  sra          s1, tp, s3
                  srli         a6, s10, 28
                  andi         s4, a4, 1958
                  sub          a7, t0, a6
                  lui          s10, 1039164
                  and          t4, ra, t6
                  nop
                  add          ra, s2, zero
                  slt          t6, s7, t0
                  ori          t0, t0, 878
                  srl          ra, s8, s2
                  slli         s10, s5, 20
                  add          a0, a4, s1
                  srli         s9, tp, 14
                  lui          ra, 104823
                  sltiu        s10, s9, -353
                  addi         t4, sp, -1510
                  slt          s1, s0, t6
                  or           a7, a3, t2
                  xor          s4, t2, t5
                  xori         t5, a6, -1563
                  sltu         a6, s5, a3
                  sub          s9, zero, s2
                  ori          s8, a4, 1261
                  xor          s1, t4, t2
                  lui          s9, 935717
                  addi         ra, a5, -1049
                  slt          t3, s1, s7
                  sub          t4, t0, a3
                  auipc        t6, 38261
                  sub          t4, t2, a0
                  ori          t5, a5, 1732
                  or           a6, ra, a1
                  slt          t1, a0, ra
                  nop
                  slli         sp, t3, 19
                  auipc        sp, 764772
                  srl          tp, t6, s3
                  xor          s10, a2, t5
                  andi         s6, s3, -1386
                  srl          a3, t1, tp
                  sra          t1, a0, s2
                  or           s2, s0, t4
                  sltiu        s9, s4, -849
                  sltiu        s5, s9, -1070
                  add          s0, s6, s1
                  sll          tp, ra, s2
                  slti         t6, s1, -1607
                  nop
                  add          s4, s0, gp
                  ori          a7, sp, -1188
                  xor          gp, tp, s3
                  ori          t4, t3, 1643
                  sltiu        ra, t3, 597
                  ori          tp, sp, -253
                  nop
                  slli         a3, a2, 28
                  slti         gp, s9, 891
                  srli         s3, a2, 21
                  slti         a1, s10, -1588
                  sra          a2, s6, sp
                  xori         a0, t4, 1321
                  add          zero, a5, a0
                  sra          t3, sp, a6
                  sra          sp, s7, s8
                  lui          s5, 927814
                  auipc        t3, 968345
                  xori         s0, t6, -1628
                  or           zero, s7, t1
                  add          a3, s5, s2
                  ori          s11, t0, -207
                  lui          a1, 894950
                  srl          s1, s10, ra
                  ori          sp, a0, -449
                  lui          a1, 212496
                  addi         s9, s8, -1960
                  auipc        ra, 764759
                  sub          tp, a0, s9
                  ori          s4, s2, -943
                  srai         s9, s1, 5
                  add          s4, a0, s0
                  srli         a2, ra, 9
                  addi         s10, s4, 351
                  andi         s2, a4, 464
                  lui          t1, 939404
                  sra          ra, zero, t6
                  addi         s5, t4, -500
                  lui          s11, 628602
                  nop
                  lui          t5, 582555
                  srai         a0, a2, 17
                  srai         s9, a7, 24
                  auipc        s3, 457136
                  addi         gp, s11, -1751
                  sra          s5, a1, t2
                  slt          s11, s8, tp
                  sll          a0, a0, gp
                  xor          t1, t1, a1
                  add          a0, s9, a0
                  sub          s5, t0, tp
                  srl          s6, a6, a1
                  sltiu        s11, s9, 1921
                  andi         zero, a5, 791
                  sub          t2, zero, t1
                  nop
                  srl          t6, s8, t4
                  sltiu        t5, s0, -603
                  srl          t0, s10, a5
                  srl          tp, s7, s7
                  nop
                  nop
                  slt          a3, t3, a7
                  auipc        t1, 155018
                  srl          s5, t0, s11
                  srl          t4, a3, t1
                  sltu         sp, zero, a4
                  sra          zero, a2, s9
                  addi         a2, s5, -284
                  sra          s2, s5, t5
                  xori         t5, a5, 1554
                  sub          t4, a1, t1
                  lui          s4, 509187
                  xor          t5, zero, s4
                  srl          zero, a3, a0
                  sltiu        t4, t3, -208
                  add          zero, a7, t5
                  sll          s2, a4, s6
                  and          s4, sp, s7
                  slti         a2, s9, 1733
                  lui          t3, 406722
                  sltiu        s8, t6, -1910
                  lui          a1, 1003736
                  srli         sp, t2, 12
                  srl          a1, a7, t1
                  sll          s11, t0, s8
                  xori         a1, t3, 334
                  add          s8, t3, a3
                  andi         gp, t3, 735
                  slli         s1, t1, 9
                  sltu         t2, t2, s9
                  srai         sp, t3, 4
                  srl          t4, a0, zero
                  slt          s1, a7, t2
                  addi         t6, t4, -321
                  and          s5, s6, t1
                  srai         a7, t4, 13
                  or           s11, s11, zero
                  sub          t1, t3, s10
                  srai         a6, s7, 28
                  andi         gp, a5, 127
                  addi         sp, s8, 381
                  slti         t1, s3, 244
                  or           t6, s2, ra
                  ori          ra, s8, -1171
                  slli         a7, s0, 31
                  srl          s4, s9, a4
                  sltiu        s10, s7, -905
                  add          s10, a1, tp
                  slti         zero, s8, -1265
                  xori         s6, a7, -222
                  sra          sp, t5, t0
                  sll          s2, a4, sp
                  andi         t1, t5, -1807
                  add          t6, a2, t6
                  auipc        a7, 980632
                  and          s3, s3, s11
                  sub          s8, s2, s11
                  sltu         t5, s4, t4
                  sub          s3, s3, t2
                  srl          a7, gp, ra
                  sltu         s1, tp, a3
                  slt          s9, a0, a2
                  sra          s1, a2, zero
                  xor          a6, s9, s3
                  slti         s9, s11, -909
                  xor          t3, ra, a0
                  sra          a1, s9, s1
                  slli         a3, a1, 10
                  sra          s6, s1, a7
                  sll          s2, s8, s3
                  or           s9, t4, s1
                  sra          s8, a7, s4
                  srl          a3, s3, t4
                  sub          s3, sp, s9
                  sub          s6, s0, s3
                  add          tp, t4, t1
                  srl          s9, t2, tp
                  sll          s8, t6, s6
                  slti         tp, s10, -699
                  addi         t1, s7, 1868
                  or           s10, t5, a6
                  sltiu        s10, s7, 206
                  add          s9, s10, s9
                  addi         s10, s3, 1439
                  slti         a6, t6, -644
                  auipc        s8, 180456
                  xor          s5, a0, s11
                  sra          s5, a5, s0
                  and          gp, s8, t4
                  xori         s6, s6, -1901
                  sltiu        s8, a7, 1247
                  and          s0, s6, s11
                  slti         s8, a7, -1352
                  addi         t6, tp, -146
                  xori         ra, zero, -192
                  ori          s6, s3, -1238
                  slli         s1, s1, 24
                  slti         sp, s11, -474
                  addi         a3, s7, 1138
                  andi         t6, a0, -147
                  add          s2, s5, a0
                  sltiu        s1, s11, -212
                  or           t4, sp, s7
                  auipc        t6, 403843
                  srai         s10, a7, 5
                  lui          ra, 142177
                  add          a7, a5, zero
                  sub          s4, t3, gp
                  sltiu        t2, a5, -727
                  or           a0, tp, s4
                  auipc        t6, 475711
                  sll          a7, s0, s3
                  xori         a2, tp, 891
                  add          a7, a7, ra
                  sub          t2, a7, t2
                  addi         s8, gp, -1341
                  slli         s4, t2, 19
                  addi         s5, t1, 810
                  or           t1, zero, t6
                  xori         t6, zero, 789
                  nop
                  srl          ra, a0, zero
                  andi         t2, t3, 89
                  andi         s0, t3, -1260
                  ori          sp, a3, -465
                  xori         ra, zero, 1055
                  or           sp, zero, zero
                  sltiu        a6, s4, -1569
                  slti         t5, s3, 825
                  sltu         s8, s0, sp
                  nop
                  ori          s9, s11, 1174
                  ori          s4, a1, -51
                  sll          s6, a1, tp
                  or           tp, gp, zero
                  add          t5, s1, s0
                  ori          sp, gp, -760
                  sltiu        t2, s9, 806
                  slt          a7, t1, s1
                  xori         sp, a7, -1391
                  and          a3, sp, s2
                  sub          zero, a3, s2
                  xor          t2, a5, t3
                  slli         a2, s9, 8
                  srli         s5, s8, 13
                  auipc        s3, 485499
                  xor          gp, t2, s3
                  sub          zero, s9, s3
                  lui          s6, 1006027
                  sltu         t3, s2, t2
                  srai         a0, a7, 30
                  lui          s0, 21071
                  slti         t4, gp, -1617
                  xor          a3, a0, s6
                  ori          a7, a3, 860
                  ori          t6, ra, 178
                  slli         s10, a7, 13
                  srl          s11, s7, s11
                  slli         a6, t0, 28
                  nop
                  or           t5, t0, a2
                  auipc        a0, 86221
                  sra          tp, s1, s8
                  addi         a1, t4, 196
                  and          s6, a6, a2
                  slli         gp, t6, 30
                  sra          s5, s3, ra
                  nop
                  slli         a1, a0, 23
                  slli         t2, s11, 19
                  add          t0, a7, s0
                  slli         zero, a4, 0
                  srl          t0, s5, s9
                  slti         t2, s3, -1959
                  sltu         tp, s10, s2
                  sub          s4, a0, t5
                  slli         s8, t6, 21
                  nop
                  srai         a3, a1, 9
                  srli         t2, t6, 11
                  sra          t4, t1, t2
                  xor          s6, a5, a7
                  xor          s6, s7, s6
                  xor          t6, s4, s0
                  lui          s6, 442291
                  addi         ra, s0, 251
                  xor          s6, s9, sp
                  or           sp, t1, s9
                  addi         sp, a2, 1795
                  nop
                  xor          zero, s7, t2
                  xor          t6, a4, tp
                  xori         s10, s2, -1332
                  ori          s2, s3, 1358
                  add          gp, zero, gp
                  sub          zero, s9, s9
                  andi         s4, s2, 1616
                  slt          a0, s0, a0
                  srli         s0, s10, 12
                  sub          t5, s0, t3
                  srli         s5, t3, 8
                  nop
                  xor          s9, s11, s9
                  sltiu        t3, a4, 1964
                  srl          t1, s4, s7
                  or           s8, s8, a7
                  slt          t5, a6, a7
                  sltiu        a1, s1, 744
                  slt          s4, tp, s11
                  xori         a0, sp, -580
                  sll          s8, t5, gp
                  srli         a3, sp, 19
                  sra          a1, tp, s9
                  add          t1, a5, s1
                  and          sp, gp, ra
                  andi         a1, a6, 1395
                  sra          s2, gp, a4
                  and          t0, s4, s10
                  sltu         s5, a7, sp
                  auipc        t3, 164474
                  add          sp, s10, s9
                  sra          a7, s5, a2
                  sltu         t6, a6, a1
                  slt          ra, a4, t0
                  ori          s11, s2, 1298
                  lui          t2, 35234
                  add          s3, s6, s4
                  addi         t2, a0, 993
                  sltu         s9, t1, a7
                  xor          t1, t0, t4
                  or           a0, s7, ra
                  auipc        zero, 426776
                  add          a1, ra, sp
                  sll          s5, t1, s5
                  addi         a3, a4, 1753
                  xor          s9, ra, a5
                  nop
                  srl          a7, t1, t0
                  xori         sp, a3, 1018
                  sll          zero, tp, s2
                  addi         a1, sp, 174
                  sra          a6, s8, a3
                  and          tp, s8, a7
                  auipc        t5, 312954
                  slli         s6, ra, 25
                  andi         s1, a6, 1240
                  or           sp, s9, a6
                  nop
                  sub          gp, s5, a0
                  or           a3, a7, t0
                  andi         t2, s11, -211
                  slt          t2, a3, a4
                  or           t3, s1, a6
                  sra          s5, s5, s4
                  srai         a3, a2, 19
                  sub          t1, s10, sp
                  or           s3, s10, t3
                  xori         s10, tp, 1343
                  lui          s10, 292575
                  slli         s10, gp, 14
                  srli         s8, gp, 23
                  xori         t1, s3, 288
                  or           a3, a3, s10
                  slt          t1, gp, tp
                  la x15, test_done
                  jalr x0, x15, 0
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
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x23, x14, zero
                  csrr x27, 0x300 # MSTATUS
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 31
                  bne x27, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x27, 0x341 # MEPC
                  csrr x27, 0x342 # MCAUSE
                  li x6, 0x3 # BREAKPOINT
                  beq x27, x6, ebreak_handler
                  li x6, 0x8 # ECALL_UMODE
                  beq x27, x6, ecall_handler
                  li x6, 0x9 # ECALL_SMODE
                  beq x27, x6, ecall_handler
                  li x6, 0xb # ECALL_MMODE
                  beq x27, x6, ecall_handler
                  li x6, 0x1
                  beq x27, x6, instr_fault_handler
                  li x6, 0x5
                  beq x27, x6, load_fault_handler
                  li x6, 0x7
                  beq x27, x6, store_fault_handler
                  li x6, 0xc
                  beq x27, x6, pt_fault_handler
                  li x6, 0xd
                  beq x27, x6, pt_fault_handler
                  li x6, 0xf
                  beq x27, x6, pt_fault_handler
                  li x6, 0x2 # ILLEGAL_INSTRUCTION
                  beq x27, x6, illegal_instr_handler
                  csrr x6, 0x343 # MTVAL
                  1: la x15, test_done
                  jalr x1, x15, 0

ecall_handler:    
                  la x27, _start
                  sw x0, 0(x27)
                  sw x1, 4(x27)
                  sw x2, 8(x27)
                  sw x3, 12(x27)
                  sw x4, 16(x27)
                  sw x5, 20(x27)
                  sw x6, 24(x27)
                  sw x7, 28(x27)
                  sw x8, 32(x27)
                  sw x9, 36(x27)
                  sw x10, 40(x27)
                  sw x11, 44(x27)
                  sw x12, 48(x27)
                  sw x13, 52(x27)
                  sw x14, 56(x27)
                  sw x15, 60(x27)
                  sw x16, 64(x27)
                  sw x17, 68(x27)
                  sw x18, 72(x27)
                  sw x19, 76(x27)
                  sw x20, 80(x27)
                  sw x21, 84(x27)
                  sw x22, 88(x27)
                  sw x23, 92(x27)
                  sw x24, 96(x27)
                  sw x25, 100(x27)
                  sw x26, 104(x27)
                  sw x27, 108(x27)
                  sw x28, 112(x27)
                  sw x29, 116(x27)
                  sw x30, 120(x27)
                  sw x31, 124(x27)
                  la x15, write_tohost
                  jalr x0, x15, 0

instr_fault_handler:
                  add x14, x23, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

load_fault_handler:
                  add x14, x23, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

store_fault_handler:
                  add x14, x23, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

ebreak_handler:   
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x14, x23, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

illegal_instr_handler:
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x14, x23, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x27, 0x300 # MSTATUS;
                  csrr  x27, 0x304 # MIE;
                  csrr  x27, 0x344 # MIP;
                  csrrc x27, 0x344, x27 # MIP;
                  add x14, x23, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
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
