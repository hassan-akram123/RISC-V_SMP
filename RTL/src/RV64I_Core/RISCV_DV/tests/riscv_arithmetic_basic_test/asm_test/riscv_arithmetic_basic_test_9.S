.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x19, h0_start
jalr x0, x19, 0
h0_start:
                  li x31, 0x40000100
                  csrw 0x301, x31
kernel_sp:        
                  la x12, kernel_stack_end

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
                  li x0, 0xf
                  li x1, 0x22c68d04
                  li x2, 0xffa42e42
                  li x3, 0x8a22ed61
                  li x4, 0xa
                  li x5, 0x80000000
                  li x6, 0x80000000
                  li x7, 0x0
                  li x8, 0x80000000
                  li x9, 0x1
                  li x10, 0x38790d9d
                  li x11, 0xfa50c21b
                  li x13, 0x0
                  li x15, 0x80000000
                  li x16, 0x5ef9b442
                  li x17, 0x10cbc150
                  li x18, 0x6
                  li x19, 0x80000000
                  li x20, 0x5986a152
                  li x21, 0x5aa08506
                  li x22, 0x0
                  li x23, 0x16ced994
                  li x24, 0x1
                  li x25, 0xd
                  li x26, 0xfda6919e
                  li x27, 0x80000000
                  li x28, 0x0
                  li x29, 0x80000000
                  li x30, 0x6f46b248
                  li x31, 0x0
                  la x14, user_stack_end
main:             li           t5, 0x0 #start riscv_int_numeric_corner_stream_8
                  li           s7, 0x11883f70
                  li           t1, 0x80000000
                  li           a3, 0x2b1ed67e
                  li           gp, 0xffffffff
                  li           t0, 0x0
                  li           a6, 0x80000000
                  li           t6, 0xffffffff
                  li           s6, 0x80000000
                  li           s1, 0xffffffff
                  sub          s1, a6, gp
                  add          s6, t6, s6
                  sub          a6, s6, a3
                  add          t1, t5, t0
                  nop
                  lui          t6, 727542
                  add          s6, a6, t0
                  auipc        gp, 320285
                  auipc        a6, 123269
                  lui          t1, 549950
                  add          s1, gp, t6
                  lui          t5, 310756
                  sub          s7, a6, t1
                  auipc        t6, 989040
                  auipc        t0, 220030
                  sub          s6, t1, a6 #end riscv_int_numeric_corner_stream_8
                  li           a0, 0x2c10103 #start riscv_int_numeric_corner_stream_14
                  li           a7, 0x80000000
                  li           a3, 0x80000000
                  li           s6, 0xe70930d2
                  li           s1, 0x0
                  li           s9, 0x60789fe5
                  li           t4, 0x80000000
                  li           s4, 0xffffffff
                  li           s7, 0x0
                  li           gp, 0x80000000
                  addi         s6, gp, -874
                  sub          s9, a3, s4
                  add          a0, gp, s4
                  lui          t4, 303588
                  lui          a0, 748622
                  nop
                  nop
                  addi         a3, a7, 1774
                  nop
                  addi         a0, s4, 1502
                  addi         a3, gp, -1451
                  add          s9, gp, s4
                  addi         s4, gp, 1148
                  lui          a3, 1039096
                  nop
                  sub          a7, s7, a3 #end riscv_int_numeric_corner_stream_14
                  li           s5, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           s10, 0x0
                  li           t3, 0xab2b261e
                  li           s6, 0xffffffff
                  li           a5, 0x0
                  li           t5, 0xffffffff
                  li           s9, 0x80000000
                  li           a6, 0xa74c120e
                  li           a7, 0x52e2847c
                  li           ra, 0xffffffff
                  add          ra, ra, s10
                  add          s6, a5, a5
                  addi         a6, s6, -1624
                  sub          a5, s5, t3
                  nop
                  sub          ra, a5, s10
                  auipc        s10, 219720
                  addi         a5, a5, -1139
                  lui          t3, 191719
                  add          s10, s10, s6
                  auipc        t5, 129102
                  nop
                  lui          s9, 349039
                  auipc        t3, 31348
                  addi         s9, ra, -1886
                  nop
                  add          t3, a6, s5
                  add          s5, a7, s9
                  auipc        ra, 647364
                  sub          a6, s9, a7
                  nop
                  add          s10, s9, a5
                  nop
                  auipc        s10, 598028
                  addi         s10, ra, -1433
                  nop
                  sub          a5, s10, s9
                  addi         s5, t5, -1608
                  lui          s5, 48750
                  auipc        t3, 990952 #end riscv_int_numeric_corner_stream_0
                  li           t2, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           a5, 0xffffffff
                  li           s1, 0x80000000
                  li           t6, 0x92f8e08b
                  li           a3, 0x0
                  li           s10, 0x0
                  li           a0, 0x0
                  li           t5, 0xffffffff
                  li           s5, 0xe0132c8
                  li           a1, 0x80000000
                  add          s1, t5, a0
                  lui          t6, 517010
                  sub          a0, a3, t5
                  add          t2, s1, a5
                  lui          a3, 849502
                  add          a3, s10, a3
                  sub          s10, s1, a0
                  addi         s10, t6, -388
                  lui          a3, 524551
                  addi         a0, a5, 841
                  auipc        s10, 147794
                  addi         t2, a3, -991
                  auipc        t2, 240854
                  addi         a1, s10, 953
                  addi         t5, a0, 1864 #end riscv_int_numeric_corner_stream_7
                  li           a3, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           t2, 0xffffffff
                  li           gp, 0x0
                  li           t3, 0xffffffff
                  li           s4, 0x80000000
                  li           s5, 0xffffffff
                  li           sp, 0xffffffff
                  li           s0, 0xffffffff
                  li           s6, 0x0
                  li           t4, 0x80000000
                  sub          gp, t3, s5
                  nop
                  sub          a3, s4, t3
                  auipc        t2, 316306
                  sub          s4, t2, s5
                  auipc        gp, 52431
                  sub          t2, t3, s6
                  lui          s6, 786359
                  lui          t4, 664187
                  auipc        s6, 452558
                  lui          t3, 735911
                  sub          gp, sp, t3
                  sub          t4, s4, a3
                  add          s5, s5, gp
                  lui          s4, 442903
                  nop
                  sub          s0, s4, s5 #end riscv_int_numeric_corner_stream_19
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           s0, 0xffffffff
                  li           s1, 0x0
                  li           t1, 0xffffffff
                  li           gp, 0xffffffff
                  li           s8, 0x8e22fd22
                  li           t3, 0x80000000
                  li           sp, 0x80000000
                  li           a6, 0x80000000
                  li           t2, 0xf5a4acef
                  auipc        gp, 726409
                  lui          s1, 1047170
                  auipc        tp, 285861
                  auipc        s0, 1012073
                  nop
                  nop
                  lui          gp, 852725
                  nop
                  auipc        s0, 442870
                  lui          t1, 601991
                  add          s1, a6, s8
                  nop
                  addi         gp, t2, -754
                  sub          s8, s0, t3
                  sub          s8, tp, s8
                  nop
                  sub          t2, sp, t3
                  sub          s1, a6, t2 #end riscv_int_numeric_corner_stream_15
                  li           t0, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           a3, 0xffffffff
                  li           t4, 0x0
                  li           s5, 0xffffffff
                  li           tp, 0x0
                  li           a7, 0x7fff4bb7
                  li           s8, 0x5619a1bb
                  li           s6, 0x80000000
                  li           t6, 0x80000000
                  li           a5, 0x80000000
                  sub          s8, s8, t4
                  auipc        tp, 835612
                  add          tp, s5, t6
                  lui          s6, 312781
                  sub          a5, t4, t0
                  add          t6, t0, s8
                  auipc        t0, 383663
                  addi         s8, a5, -1163
                  sub          a5, tp, t6
                  lui          t6, 758875
                  nop
                  sub          a5, a7, t0
                  lui          t0, 46993
                  nop
                  auipc        t4, 278924
                  sub          a7, t6, t6
                  nop
                  nop #end riscv_int_numeric_corner_stream_18
                  li           s11, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           s7, 0x74ca94a7
                  li           s10, 0x0
                  li           ra, 0xeb292ff5
                  li           a5, 0xffffffff
                  li           s8, 0x80000000
                  li           tp, 0x4ca88689
                  li           s6, 0x0
                  li           s4, 0x80000000
                  li           t3, 0x80000000
                  addi         a5, ra, 765
                  nop
                  addi         s4, s8, 1150
                  add          s4, s10, t3
                  sub          a5, s7, s8
                  nop
                  sub          t3, s4, ra
                  lui          a5, 528414
                  auipc        tp, 528892
                  auipc        s4, 982251
                  lui          ra, 312474
                  lui          ra, 514509
                  add          s7, s11, s10
                  addi         t3, s6, -197
                  sub          s8, t3, s6
                  add          ra, s7, a5
                  addi         tp, s4, -1723
                  lui          ra, 601114
                  auipc        a5, 731219
                  sub          s10, s11, s6
                  lui          s7, 995067
                  nop
                  sub          a5, t3, s11
                  sub          s7, s8, t3
                  addi         s7, ra, -1413
                  lui          ra, 296226
                  nop
                  nop #end riscv_int_numeric_corner_stream_2
                  li           s9, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           a0, 0xf910b54
                  li           t0, 0x80000000
                  li           s4, 0xf3885395
                  li           s2, 0xea97c29f
                  li           s7, 0x80000000
                  li           s1, 0x0
                  li           s0, 0x80000000
                  li           s10, 0xffffffff
                  li           sp, 0x98fd9606
                  auipc        a0, 381835
                  sub          s9, s2, s9
                  lui          s1, 40898
                  sub          s1, s7, s0
                  lui          sp, 400702
                  lui          a0, 524702
                  sub          s7, t0, t0
                  auipc        s10, 802949
                  sub          t0, s10, s10
                  addi         s7, a0, 1634
                  nop
                  sub          s7, s4, t0
                  nop
                  auipc        s9, 61728
                  auipc        a0, 884372
                  addi         s2, s4, 1255
                  sub          sp, s9, s4
                  sub          s1, s9, s10
                  nop
                  lui          s7, 646863
                  nop #end riscv_int_numeric_corner_stream_9
                  sll          s8, t2, t6
                  addi         ra, t4, -1583
                  srli         a5, s5, 18
                  ori          s2, a5, 703
                  sra          t2, s8, t0
                  xor          ra, zero, t4
                  slli         a0, gp, 0
                  sltu         s6, a4, a6
                  slli         s11, a1, 0
                  sltu         s8, a7, tp
                  srl          a7, a6, s4
                  andi         t1, s0, 1529
                  add          s4, a3, s9
                  sltiu        ra, s5, 637
                  lui          a1, 723341
                  srai         t1, t0, 2
                  srai         s2, s9, 7
                  nop
                  sub          t4, s9, t4
                  sub          s4, a1, s10
                  andi         t1, a2, -1219
                  nop
                  and          sp, t5, a4
                  ori          t0, s1, 1309
                  sll          tp, a0, s4
                  slli         s7, t0, 11
                  srl          t4, gp, s0
                  slli         t1, t6, 14
                  srai         tp, s5, 25
                  lui          s0, 11899
                  srli         t4, a6, 15
                  sub          a6, s10, t6
                  addi         s2, s3, 785
                  auipc        zero, 568267
                  sll          gp, s8, tp
                  xori         s6, t5, 952
                  slt          tp, t6, zero
                  auipc        a3, 939168
                  auipc        t4, 537643
                  addi         a3, t2, 1455
                  and          zero, s4, a7
                  xori         s11, a5, 1101
                  addi         sp, a7, 472
                  or           t5, s5, t0
                  addi         s11, a7, 860
                  xori         a1, ra, 824
                  or           t1, s10, s11
                  ori          s11, a6, 749
                  sltiu        s1, s1, 1413
                  sltiu        a3, sp, -1097
                  sub          a5, t4, a7
                  xori         t4, t2, 395
                  or           a0, t1, s1
                  sll          a7, s10, s3
                  and          s0, s8, zero
                  ori          gp, t1, -582
                  addi         s6, a0, -1025
                  slt          gp, s7, t5
                  and          sp, tp, t2
                  lui          t5, 891170
                  and          sp, s6, s4
                  auipc        gp, 354750
                  sll          s1, a4, tp
                  slt          a5, s2, t6
                  xori         t6, t6, -963
                  srli         s0, t4, 5
                  xori         t6, t5, -806
                  srai         sp, a6, 24
                  and          t5, a5, s5
                  srli         t2, s9, 22
                  auipc        s2, 345933
                  slt          t6, t5, a0
                  slt          s7, t2, t6
                  lui          a7, 555628
                  srli         a6, s7, 27
                  and          s9, a1, s0
                  slti         t0, a4, 592
                  andi         t0, gp, 786
                  sll          s6, s8, s4
                  andi         t4, a7, 627
                  sltiu        a3, s6, 1500
                  sll          a7, t5, t0
                  ori          zero, ra, -69
                  nop
                  sll          s6, s3, s10
                  andi         a0, s7, -1681
                  and          t2, t6, a2
                  srai         ra, a0, 6
                  lui          tp, 783182
                  sltu         s5, t4, sp
                  sltiu        s4, t2, -768
                  ori          t1, ra, 1338
                  lui          s1, 769787
                  srli         tp, a6, 0
                  sltu         sp, sp, s1
                  slti         s0, s10, 2033
                  or           s8, s1, s5
                  nop
                  slti         a5, a2, -1471
                  sra          s6, t6, s4
                  srl          t6, s4, t6
                  auipc        s4, 62756
                  sub          a6, a4, t4
                  xori         t5, s4, 536
                  add          t5, a2, s7
                  slti         t4, s8, 190
                  or           a6, s6, t2
                  xori         ra, s1, 862
                  sltiu        s4, t3, -456
                  xor          a7, t6, s1
                  slt          t0, sp, a2
                  sub          s11, s0, a5
                  nop
                  srl          t3, s3, a7
                  and          s0, s9, t5
                  slt          a1, gp, s0
                  addi         s8, zero, 733
                  srai         s1, s2, 23
                  andi         s11, t6, -1664
                  nop
                  andi         a6, a0, -1998
                  srl          a1, t6, s4
                  srli         a7, zero, 0
                  sub          t1, t0, s9
                  sra          a0, s7, a7
                  or           s1, tp, a4
                  sltu         a0, s6, s2
                  srl          t0, t1, t4
                  lui          s11, 853155
                  or           s9, a3, s9
                  sra          a0, t2, a5
                  sub          a6, s7, t0
                  andi         t2, sp, -1340
                  or           s11, s5, a4
                  slt          s0, t1, ra
                  andi         t6, t3, 1001
                  addi         t4, t1, 2045
                  srl          a7, s6, a0
                  xor          t6, a3, a7
                  srl          s7, s2, tp
                  add          s5, s7, t5
                  lui          s4, 80602
                  slt          t6, a0, s5
                  srl          s7, s10, a6
                  and          s10, a1, s8
                  slt          sp, a4, tp
                  slti         s7, a3, -168
                  addi         zero, t1, -1822
                  slli         zero, t3, 22
                  and          t4, gp, a0
                  slli         t1, t4, 27
                  xori         gp, s4, -980
                  srli         s8, s3, 0
                  or           a0, a5, a3
                  ori          a3, t0, 1463
                  slt          s6, s7, s0
                  and          t3, s1, a2
                  sll          t4, s6, a3
                  sll          s4, s2, s5
                  sra          s7, s11, a2
                  slt          zero, sp, a2
                  sll          s2, gp, a7
                  sltu         t4, a1, s5
                  slt          s7, t4, s0
                  slli         sp, s4, 29
                  sra          s9, t6, s2
                  sltiu        sp, t3, -696
                  xor          t6, t4, a7
                  xori         t4, t3, -1556
                  lui          a3, 79889
                  xor          s0, zero, a1
                  auipc        a6, 959098
                  sltu         s0, a7, a6
                  ori          a0, s2, 1066
                  sltu         sp, s5, gp
                  sltu         sp, t3, zero
                  add          a5, a4, sp
                  xori         a7, s6, -539
                  slti         s2, s4, 618
                  add          sp, t4, zero
                  sll          s8, t4, a5
                  srl          s5, t2, s2
                  slli         s11, a4, 22
                  srl          gp, s10, t4
                  sltu         gp, sp, a3
                  nop
                  srai         tp, s8, 19
                  sra          s1, a7, s9
                  sub          a3, t3, tp
                  slti         s6, s6, -294
                  srli         tp, s8, 21
                  sll          s2, s11, gp
                  sub          sp, ra, zero
                  sra          s0, a0, t2
                  xor          s5, t0, s6
                  lui          gp, 384531
                  addi         s5, a5, 477
                  sra          a3, t2, a1
                  ori          t5, s3, 185
                  sra          zero, s4, t6
                  slli         t6, s0, 2
                  addi         a6, t1, -624
                  sltiu        t2, s10, 1641
                  sltiu        s11, s0, -1950
                  xor          s9, a3, ra
                  auipc        s2, 757543
                  xor          a6, a4, t1
                  srai         a3, sp, 20
                  or           t3, gp, t4
                  slti         t0, s8, -1109
                  sltiu        s4, a0, -2027
                  srli         ra, gp, 27
                  nop
                  lui          t1, 82558
                  and          a1, s10, zero
                  slli         gp, s11, 31
                  ori          t5, s7, 503
                  or           a3, t2, s4
                  nop
                  nop
                  slt          s0, t4, t3
                  add          a5, gp, s7
                  or           gp, t1, s2
                  srai         t5, t3, 13
                  sub          ra, a3, a7
                  srl          a5, s1, t5
                  lui          t3, 1024126
                  srl          t0, s6, t1
                  or           s7, zero, t2
                  ori          s8, s5, 808
                  srai         tp, a4, 9
                  sltiu        s1, ra, 1512
                  lui          s1, 497348
                  sltiu        a3, t2, 142
                  andi         a1, a0, -1595
                  addi         a6, a5, 1022
                  ori          t5, s2, -612
                  srai         s9, a7, 28
                  sltiu        t3, a1, -2038
                  add          s10, t2, gp
                  slti         s8, s4, -192
                  slti         zero, s3, -1498
                  slti         s6, s5, -1327
                  sll          a0, t4, s10
                  sltu         t6, s8, s5
                  andi         ra, s8, -1126
                  xor          a1, zero, a3
                  slt          s6, a6, a7
                  lui          t1, 804390
                  srl          s5, a7, t0
                  add          s4, t3, a1
                  or           s5, t5, s8
                  and          t6, a7, t0
                  sra          s1, s4, a0
                  sltiu        ra, s4, -981
                  nop
                  sra          a3, s10, sp
                  xori         s6, t2, 225
                  nop
                  andi         s11, s5, 1674
                  slli         t0, a6, 28
                  auipc        a0, 250649
                  srli         t3, zero, 27
                  lui          s6, 30462
                  sltu         ra, t1, s9
                  sltiu        t2, ra, -257
                  slli         sp, s2, 17
                  lui          a0, 429608
                  srl          a3, s6, a0
                  sltiu        s11, s8, -582
                  andi         s4, s6, 954
                  srli         t3, s5, 15
                  slli         a1, s6, 4
                  sll          gp, t1, t2
                  auipc        a3, 301169
                  or           s6, s3, s1
                  nop
                  xori         s1, t6, -1627
                  srai         t4, s0, 15
                  xor          t4, s11, s0
                  slti         s10, s0, -2019
                  nop
                  sltu         ra, a1, s2
                  xor          ra, t2, a3
                  auipc        ra, 871
                  slt          s5, a3, a2
                  sltu         t3, s11, t3
                  auipc        s2, 783887
                  or           s2, s5, t6
                  addi         t4, s6, -1544
                  sltiu        a5, t5, 1890
                  andi         sp, s7, 1827
                  lui          a0, 763707
                  andi         a1, a2, 335
                  xor          a1, s3, zero
                  ori          zero, a7, 163
                  and          t0, gp, t6
                  slt          ra, t4, gp
                  srai         t2, t2, 2
                  sra          zero, s9, s0
                  and          a5, a6, s1
                  srli         t2, s11, 18
                  sra          t0, a6, t1
                  slli         s11, a1, 19
                  and          s9, a2, a7
                  slli         s5, t2, 30
                  add          t6, t3, a0
                  xori         t4, s7, -1349
                  sltu         a0, s0, s8
                  slt          t0, ra, s7
                  sltiu        a1, t0, 1280
                  addi         a0, t0, 1662
                  or           t6, a0, s1
                  slti         t4, ra, -764
                  xor          s4, t1, a5
                  or           s10, tp, zero
                  addi         zero, t3, -479
                  add          s11, s0, a5
                  slt          a6, a6, a6
                  lui          s8, 377258
                  slli         s7, tp, 20
                  srai         a1, s8, 29
                  addi         t6, a4, -21
                  addi         s0, sp, -605
                  sltiu        s4, a2, 1247
                  slli         ra, s5, 5
                  xori         s11, s4, -958
                  slli         ra, t1, 30
                  andi         t6, a7, 403
                  xor          t3, s2, a1
                  slli         s9, t4, 17
                  slti         t0, gp, 1440
                  addi         t3, s10, 622
                  addi         a0, zero, -543
                  nop
                  slti         gp, a6, -1837
                  lui          a6, 1048547
                  srl          t3, s6, t3
                  srai         t5, a5, 12
                  sra          gp, t3, t0
                  slt          t6, gp, s0
                  sltiu        ra, a6, -498
                  srai         s7, s10, 15
                  srai         t4, sp, 20
                  slli         ra, ra, 14
                  slli         a0, a7, 1
                  sub          t6, a3, a4
                  srl          a5, gp, t2
                  lui          s1, 148340
                  sltiu        a5, s10, 1244
                  sra          zero, sp, s6
                  xor          t0, s3, a1
                  srl          a3, t0, t6
                  lui          s6, 417016
                  or           s2, a1, s1
                  nop
                  xor          a6, s9, s9
                  ori          s8, tp, -1801
                  srl          s1, zero, a5
                  xor          t3, tp, s9
                  auipc        s1, 74822
                  sra          s4, a1, s7
                  slt          a6, a7, t2
                  slti         a6, sp, -1816
                  sltu         t5, s11, s8
                  srai         s0, a1, 6
                  slt          ra, t1, t0
                  sll          s4, t6, t6
                  ori          t4, sp, -721
                  sll          tp, s8, tp
                  sll          a6, s0, t1
                  srl          a3, a7, a5
                  andi         s4, s0, 1500
                  addi         t0, gp, 1720
                  nop
                  xori         a6, s5, 1330
                  slt          s11, a7, t6
                  slli         s10, t4, 30
                  slli         s7, t5, 25
                  slt          s8, a2, gp
                  sra          a6, t3, zero
                  and          s10, s7, s5
                  slti         s8, s2, 789
                  sub          s4, a3, s1
                  slt          t2, t4, ra
                  xori         t4, s6, -1367
                  srai         t5, a1, 28
                  add          s0, t1, s5
                  srl          s6, t2, t5
                  srl          t2, gp, a5
                  and          a6, gp, a4
                  srai         a0, t5, 0
                  lui          s8, 848089
                  xori         s4, a4, 683
                  auipc        a5, 218752
                  srai         tp, t1, 22
                  slli         s1, a7, 4
                  xor          a7, tp, s11
                  sltu         t0, a3, s2
                  srli         s11, s2, 2
                  or           t4, s8, s4
                  srl          t5, gp, a3
                  or           gp, s5, a2
                  xor          s1, s3, a1
                  slli         t5, a1, 0
                  sub          s9, t3, t6
                  slt          t4, t5, s0
                  and          s5, a0, s1
                  add          a7, t2, t2
                  slt          s11, a1, t6
                  srai         s6, a6, 21
                  andi         t2, a6, 71
                  slli         t2, a6, 30
                  or           t6, t2, s10
                  xori         t0, sp, -9
                  addi         s4, s10, 1917
                  slti         t4, s2, -1206
                  auipc        s2, 375013
                  add          s5, s4, s6
                  add          gp, tp, ra
                  xori         s0, t1, -1857
                  sll          gp, a7, s5
                  sub          a1, a0, s9
                  sltu         a3, a4, s4
                  sltiu        t3, s3, -288
                  lui          ra, 285455
                  sra          t3, s2, sp
                  sub          t2, a5, sp
                  slti         t3, s7, 1500
                  addi         t3, gp, 1176
                  slt          s5, s4, s2
                  addi         a5, ra, -1001
                  addi         ra, t5, -862
                  slt          s7, t3, s10
                  sra          a6, a1, t3
                  sll          s6, s10, s8
                  sra          s8, s6, a2
                  srli         t4, a5, 26
                  lui          t5, 234881
                  ori          ra, t4, -1698
                  slt          t5, a7, s1
                  xori         a3, a2, -1567
                  slti         s2, s5, -455
                  addi         a7, a1, 1560
                  srl          tp, gp, t4
                  sltiu        a1, tp, 1565
                  srli         s9, s3, 13
                  slli         t6, s11, 22
                  or           t3, ra, s10
                  add          s6, t0, t3
                  slt          t3, a0, s4
                  sub          s8, a4, tp
                  and          s5, s7, t1
                  sltu         ra, t3, s11
                  slli         ra, t1, 27
                  addi         a6, tp, 1628
                  sltiu        gp, gp, 1224
                  or           t0, s8, s0
                  slli         s8, s5, 20
                  xori         a1, s3, 253
                  ori          t1, s11, 1151
                  srai         a3, s1, 11
                  sltiu        t1, t1, -1363
                  addi         s5, s4, 1781
                  srl          zero, a2, t3
                  sltiu        s0, a7, 277
                  and          ra, a4, a7
                  sll          zero, s7, s7
                  slti         ra, zero, -1467
                  lui          t3, 964676
                  slli         t2, t1, 5
                  addi         t0, t0, -664
                  xor          s10, a4, s2
                  slti         t4, t6, 1809
                  slli         s10, t6, 6
                  sub          s4, a2, a0
                  lui          s6, 280523
                  slt          s1, s5, s5
                  slli         tp, a0, 22
                  sub          s11, t2, a6
                  nop
                  and          t0, s9, t1
                  nop
                  andi         s5, s7, -1903
                  lui          s8, 181253
                  add          t6, a0, sp
                  andi         a1, t5, 992
                  auipc        t3, 403237
                  srl          zero, s8, a7
                  sltu         a1, s5, s4
                  or           gp, ra, t5
                  slti         s0, a0, -1731
                  or           a6, s2, gp
                  sra          t4, sp, t4
                  lui          a6, 115257
                  xori         t5, s0, 579
                  srli         a5, a6, 21
                  andi         s0, t5, -374
                  slti         a1, a4, -1296
                  sltu         t1, s1, a1
                  nop
                  sll          s10, s4, a6
                  or           t5, tp, a2
                  nop
                  sub          a6, s11, t1
                  add          s5, s10, s11
                  sra          s9, t2, t5
                  andi         t3, s1, 1150
                  lui          s1, 442865
                  lui          s0, 517288
                  srai         s8, s6, 16
                  auipc        t6, 82872
                  and          ra, a5, gp
                  addi         s1, s11, -1317
                  sltiu        ra, ra, 862
                  sltiu        t6, a2, -1300
                  srl          a1, t0, s2
                  slti         gp, a2, 1155
                  nop
                  sub          a1, ra, zero
                  sll          t0, s4, a1
                  slt          a7, t0, t1
                  sra          s7, gp, s7
                  xori         s0, s5, -865
                  ori          s2, t5, -1494
                  auipc        t3, 707852
                  slli         a7, s9, 25
                  nop
                  srai         s5, t1, 19
                  srl          ra, s6, a3
                  slti         s11, s0, -662
                  srai         s11, a4, 26
                  sra          t6, s10, s5
                  xor          s4, s6, gp
                  srl          s7, s6, t1
                  andi         s7, t3, -1226
                  and          t5, a2, sp
                  sll          t2, t3, s9
                  add          s2, t5, sp
                  sltiu        a7, s6, -1736
                  auipc        s2, 319504
                  lui          t4, 287340
                  sra          s0, s5, tp
                  sub          a3, s2, a3
                  or           a3, t4, t0
                  xor          ra, a0, s6
                  or           a7, t1, s9
                  srl          t4, s10, s6
                  srl          sp, sp, s7
                  andi         a6, a6, -843
                  or           s1, a0, s0
                  xor          s11, s8, s1
                  srli         a0, s2, 3
                  sltu         s1, s2, s5
                  xori         a3, s9, -367
                  sll          t4, s7, ra
                  sltu         a1, gp, s0
                  addi         s8, s3, -232
                  addi         s6, a2, 1642
                  sub          t0, s8, a1
                  xori         t2, gp, -254
                  sll          s8, a6, s2
                  nop
                  sltiu        t0, s4, -1616
                  srai         t5, s2, 24
                  srl          sp, a6, s7
                  sltu         a3, a6, s10
                  and          a3, s0, a1
                  li           a0, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           a1, 0xffffffff
                  li           s6, 0x0
                  li           t0, 0x0
                  li           s10, 0xffffffff
                  li           gp, 0xffffffff
                  li           t5, 0x6641030
                  li           t6, 0xffffffff
                  li           t3, 0xffffffff
                  li           t1, 0x0
                  nop
                  auipc        t6, 502160
                  auipc        t1, 929206
                  auipc        t0, 426684
                  lui          t3, 268068
                  addi         s6, a0, -848
                  addi         a1, s10, 290
                  lui          s6, 340665
                  nop
                  lui          s10, 312552
                  add          t3, s10, a1
                  add          a1, s10, a1
                  addi         t5, s10, -188
                  addi         gp, s10, 878
                  nop
                  lui          s10, 636929
                  lui          a0, 172024
                  add          t1, a0, a0
                  auipc        a0, 111054
                  nop
                  lui          t5, 10117
                  sub          gp, t1, s6
                  addi         s10, t0, -1708 #end riscv_int_numeric_corner_stream_3
                  slti         s4, s11, 1100
                  srl          t2, t1, t4
                  addi         s7, a3, -637
                  nop
                  ori          t3, a2, 1384
                  xor          sp, a7, t3
                  lui          t5, 712503
                  auipc        t1, 464167
                  andi         s0, s2, 972
                  slti         sp, a3, -211
                  lui          a1, 117206
                  and          s4, s6, t2
                  sltiu        s10, a2, -611
                  srai         t6, s5, 3
                  sra          t3, s3, tp
                  sltu         s2, s2, s5
                  sll          a3, s0, t6
                  srli         zero, s2, 24
                  srli         a3, t0, 24
                  srai         tp, a5, 4
                  andi         s2, t0, 1262
                  sltiu        a5, a0, -563
                  xor          s10, s0, t6
                  sll          a6, s0, s11
                  and          t0, zero, t5
                  sltu         zero, a1, s1
                  lui          s8, 509014
                  sra          s5, t6, a7
                  sll          s4, a6, s9
                  sub          a6, t3, s8
                  slt          t0, a4, s2
                  add          ra, gp, a6
                  sub          s1, a7, t6
                  sltiu        tp, s0, -1765
                  add          a1, s2, t6
                  and          a5, t1, s3
                  xor          sp, s6, s2
                  and          s1, t4, s11
                  slli         a3, t1, 0
                  nop
                  add          s6, a1, tp
                  sltu         s2, t6, s4
                  sll          s10, s7, s7
                  srai         t5, a7, 26
                  xor          a0, ra, ra
                  xori         t1, s9, -102
                  sltu         a0, s3, t3
                  slti         zero, zero, -2006
                  auipc        s9, 298365
                  andi         a0, ra, -714
                  sub          tp, s4, a4
                  srl          s5, t3, a0
                  srli         t0, t6, 23
                  srl          zero, a6, a3
                  xori         a6, s8, -1959
                  sra          t4, a2, a0
                  nop
                  ori          s1, a0, 911
                  auipc        a0, 319592
                  andi         a7, sp, -1220
                  andi         zero, s7, 496
                  slli         ra, sp, 25
                  add          t4, tp, t1
                  sll          a5, s10, a2
                  srl          a6, s9, s5
                  and          s1, s11, t6
                  nop
                  slli         a1, ra, 18
                  slli         s8, s9, 28
                  srl          s8, s9, s1
                  lui          t0, 158461
                  slti         a3, a7, 53
                  nop
                  sltiu        a5, a3, 725
                  add          s4, zero, a3
                  sra          zero, t5, t4
                  ori          t5, t3, 1985
                  srli         t3, s6, 7
                  sub          tp, s8, a1
                  addi         t3, t4, -1896
                  or           s10, t3, s9
                  sltu         t0, a7, s0
                  auipc        t3, 53
                  xor          t5, t1, t0
                  slli         t5, t2, 17
                  slt          a7, ra, s1
                  add          a0, s10, s5
                  xori         a5, t6, -1508
                  andi         t3, s7, -513
                  or           sp, a1, s10
                  xor          s7, s8, s10
                  lui          s10, 788881
                  sra          s5, t3, tp
                  srl          t2, s0, t6
                  slti         t1, gp, 1917
                  slli         a7, a2, 8
                  slli         s0, tp, 1
                  sub          s1, a7, tp
                  sltiu        a1, a4, 433
                  ori          s7, a7, -1128
                  srli         a6, sp, 25
                  addi         a6, ra, -1173
                  addi         a3, t5, -1520
                  lui          a1, 888926
                  addi         s2, a2, 811
                  sub          t0, s7, a2
                  sltiu        a7, s1, -2030
                  and          s10, s8, s4
                  or           s0, a1, a1
                  nop
                  slt          s9, t1, a6
                  sll          a5, ra, s10
                  xor          t5, s2, tp
                  sra          t6, s7, t1
                  xor          t1, t6, s4
                  and          a6, t0, a7
                  xor          s5, a7, s3
                  auipc        gp, 1043533
                  srli         t1, s6, 4
                  auipc        s0, 20305
                  add          s2, t0, a1
                  addi         ra, s7, 1282
                  sltiu        s5, a2, -447
                  ori          s9, s4, 870
                  ori          t4, a3, 636
                  nop
                  nop
                  xor          sp, s3, ra
                  or           t6, t4, tp
                  sltu         t5, s8, s6
                  add          s5, s9, s11
                  auipc        s1, 228286
                  srai         zero, a4, 22
                  xori         s10, a1, -325
                  lui          sp, 256315
                  ori          s0, ra, -995
                  sub          s10, t0, t4
                  addi         sp, tp, 240
                  auipc        ra, 159601
                  sll          s7, t1, s5
                  sltu         s2, s9, t1
                  srai         s8, s2, 23
                  sltiu        s6, zero, 572
                  xor          s8, t5, a7
                  srl          s10, t2, s6
                  sltiu        t0, s1, -854
                  or           a5, t3, a7
                  sltiu        s7, a4, -1132
                  add          tp, sp, a1
                  sltiu        s11, s8, 342
                  lui          s1, 395933
                  lui          t3, 1037338
                  slti         s7, t0, -1817
                  add          a7, t4, t4
                  srai         s7, t2, 10
                  srli         s11, s5, 7
                  and          sp, s10, a2
                  sltiu        t0, gp, 2023
                  slt          s9, t6, a7
                  slt          a7, a2, t6
                  srl          t4, ra, a3
                  sltiu        s8, ra, -292
                  xor          a1, s5, s1
                  andi         s9, a6, 807
                  slli         s6, sp, 3
                  and          s7, t5, s6
                  andi         t5, t4, 531
                  sltiu        a0, a6, 316
                  srl          a0, s2, ra
                  and          s2, t1, tp
                  srai         s11, s5, 0
                  and          a5, s0, s11
                  andi         t2, s8, 231
                  slt          zero, a5, t5
                  sra          s7, sp, t3
                  addi         t5, t2, -301
                  auipc        s7, 995826
                  lui          t2, 613430
                  nop
                  srl          s5, zero, t0
                  nop
                  addi         zero, t1, -500
                  sltiu        s8, s7, 449
                  slli         a5, s2, 7
                  slti         t3, t2, 324
                  sll          gp, t6, t2
                  srli         s11, t6, 15
                  ori          s4, s7, 1136
                  addi         t6, s2, -549
                  lui          t0, 619838
                  xor          a5, t0, s11
                  lui          gp, 734980
                  sltiu        s9, s11, -351
                  addi         a1, s3, -213
                  slli         ra, s0, 30
                  slt          t0, s2, t5
                  addi         sp, t4, -1727
                  nop
                  sra          s4, gp, t2
                  srai         ra, s10, 14
                  slli         s1, t0, 28
                  slli         s5, s4, 29
                  sub          sp, a7, t3
                  srli         s11, zero, 15
                  srl          a0, a7, zero
                  slli         t0, a0, 7
                  add          s9, s5, a0
                  auipc        s8, 461555
                  slti         s0, s0, 69
                  srl          a1, a2, s1
                  and          s7, s7, s2
                  sra          s1, a5, s2
                  sub          t1, t0, a4
                  andi         a3, t4, 1107
                  xor          a5, t4, gp
                  nop
                  srl          s9, sp, a0
                  srl          s9, s1, t5
                  lui          a5, 760228
                  and          s7, tp, zero
                  sub          t0, sp, s9
                  add          s11, a7, a1
                  sll          a0, t3, tp
                  and          s8, zero, gp
                  srli         t4, a5, 12
                  srai         s11, s2, 25
                  auipc        t0, 474048
                  srli         t2, a0, 20
                  auipc        s9, 166418
                  andi         s7, tp, -522
                  slt          a6, a3, a0
                  srai         t3, a7, 21
                  lui          s9, 111661
                  slli         s5, s0, 20
                  srai         s10, s8, 30
                  srl          a5, a0, s7
                  sltu         ra, s2, gp
                  add          a0, s4, a0
                  xori         gp, t3, -84
                  sub          a6, s3, a5
                  or           tp, t6, a5
                  srl          a6, zero, s10
                  sub          s11, s11, s7
                  srli         t1, t0, 28
                  ori          gp, t4, -2039
                  slli         sp, s7, 30
                  xor          a6, s3, tp
                  sra          a1, s4, t5
                  lui          s11, 123537
                  slli         t2, a0, 13
                  slli         s6, zero, 18
                  lui          s10, 492742
                  ori          a3, t2, -904
                  srli         t6, t2, 25
                  nop
                  sub          s8, s7, s0
                  nop
                  xori         ra, s10, 312
                  slli         s9, t4, 12
                  slt          s4, a5, t2
                  sub          s6, a4, t6
                  sra          t5, a1, a2
                  andi         t3, t0, -739
                  xori         a6, ra, -824
                  xor          s2, s3, s8
                  xor          s7, s5, a1
                  xor          sp, s10, t2
                  xor          t5, s3, t2
                  auipc        t6, 711439
                  xori         zero, s9, 24
                  or           s2, a2, t3
                  nop
                  auipc        s0, 899977
                  sub          t5, zero, s0
                  or           s11, t1, a4
                  or           s2, gp, t5
                  srai         s5, s1, 22
                  and          a6, s0, s11
                  and          t4, a0, ra
                  srli         t6, s7, 11
                  slli         s1, t0, 25
                  sltiu        tp, a3, -1388
                  nop
                  xori         s2, s5, 1187
                  srai         s11, zero, 0
                  slti         t3, t4, -1743
                  ori          a0, a7, 1535
                  and          s10, sp, a0
                  srli         sp, a7, 30
                  auipc        t5, 742236
                  slti         t0, a7, 789
                  ori          tp, a0, 322
                  lui          s2, 673059
                  auipc        t1, 558452
                  xori         s11, t4, 468
                  srl          sp, a6, t1
                  xori         s4, a6, 1294
                  or           t0, t3, tp
                  addi         t4, s1, 481
                  sltiu        s8, s1, 722
                  xor          s2, s1, s2
                  sub          s4, t4, s1
                  srl          gp, gp, s8
                  sub          t6, sp, t5
                  add          s1, t2, s3
                  sll          t3, a4, s5
                  sll          tp, s0, a0
                  ori          t1, tp, 636
                  slt          t6, s10, s10
                  sltu         s1, s2, a7
                  sub          a1, a0, ra
                  auipc        s11, 530272
                  sub          gp, sp, a3
                  sub          s2, tp, a3
                  sltu         t6, s9, t1
                  sll          s1, s11, t2
                  lui          zero, 603179
                  slt          zero, s4, a4
                  slt          s4, s3, a7
                  xori         a7, s9, 524
                  lui          t0, 227920
                  sll          a3, t5, t3
                  sub          s4, s10, t4
                  nop
                  xori         t6, s1, 1787
                  slli         t3, ra, 11
                  sra          s7, t4, s3
                  sub          s4, zero, zero
                  xor          t0, s11, a1
                  sra          s1, s1, tp
                  sub          s5, s11, s8
                  slli         t0, s4, 28
                  addi         s6, t5, 1246
                  sra          a5, ra, s1
                  or           t4, t1, a2
                  nop
                  sltiu        ra, t1, -786
                  sll          t2, a3, s11
                  srai         a5, s1, 27
                  slt          s7, sp, s0
                  sub          s0, s4, a2
                  andi         ra, s6, 1125
                  srl          t3, s7, gp
                  or           t1, s4, t6
                  slti         s0, a1, -755
                  andi         ra, t3, -1841
                  or           t6, a2, t3
                  ori          gp, s0, 1590
                  andi         t3, t5, -88
                  sll          s7, s4, t1
                  ori          a7, a7, 1810
                  sltu         tp, s8, s0
                  nop
                  auipc        s5, 488210
                  ori          t3, s11, 1114
                  sub          s10, s2, ra
                  srli         s4, s5, 28
                  auipc        s6, 79477
                  srai         s6, a7, 26
                  slt          s5, s2, t6
                  sub          s0, a2, a6
                  slt          t2, a5, s5
                  andi         s9, s6, 977
                  addi         s11, t0, -983
                  sll          s9, gp, s4
                  lui          a7, 934064
                  lui          s6, 896840
                  xori         s4, t5, 1644
                  srl          s1, a3, a6
                  xori         sp, t1, 1844
                  andi         a6, t1, -158
                  sub          s7, tp, t1
                  srl          sp, a6, s9
                  srl          s11, t4, s7
                  sra          s1, t3, t4
                  sll          s7, a6, a6
                  slt          t3, a1, tp
                  slti         gp, a1, -1207
                  nop
                  li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           s8, 0xb91c4888
                  li           s6, 0xbfbf6f1e
                  li           t1, 0xffffffff
                  li           s1, 0xe38cdf2
                  li           s11, 0xc4bd1776
                  li           s7, 0x257530c2
                  li           sp, 0x80000000
                  li           a7, 0xffffffff
                  li           t6, 0x299a383
                  lui          s8, 544481
                  auipc        t6, 188795
                  addi         t1, s8, 1144
                  lui          s8, 917426
                  lui          s8, 314021
                  nop
                  sub          t1, s1, a7
                  addi         a7, sp, 1516
                  auipc        s11, 789209
                  addi         ra, s11, -1039
                  addi         s1, t6, -759
                  add          s11, s8, s7
                  sub          s8, t6, s11
                  nop
                  nop
                  auipc        sp, 759478
                  sub          s11, a7, s8
                  add          s11, t1, a7
                  sub          s6, s6, a7
                  auipc        t1, 390953 #end riscv_int_numeric_corner_stream_10
                  addi         a1, a6, -1354
                  and          a0, a3, a1
                  slti         s1, s7, 598
                  and          t0, ra, s7
                  andi         a0, t1, -712
                  and          s4, a2, a2
                  xor          zero, t5, s11
                  slli         t6, s0, 0
                  add          s4, t4, s6
                  slt          s1, a1, zero
                  andi         t2, s10, 717
                  sltiu        zero, s3, -1788
                  srai         s11, t4, 5
                  lui          s10, 736870
                  srai         t6, a7, 25
                  xor          gp, s8, s9
                  auipc        a3, 698366
                  sra          s0, s8, t2
                  addi         zero, a1, -1038
                  sub          s10, a6, s10
                  srli         a6, s0, 31
                  xor          s1, ra, s0
                  sltiu        a6, ra, 1125
                  sltiu        s10, gp, 1851
                  sll          s8, s8, s0
                  sltu         a5, a5, s0
                  sll          t0, t2, s7
                  andi         a3, s3, -946
                  andi         zero, s3, -803
                  and          s5, t6, t5
                  sltiu        s9, a0, -1744
                  and          t6, s2, a1
                  and          ra, tp, s6
                  or           a6, s9, s4
                  sltiu        s8, s9, -185
                  xor          s10, t5, t6
                  lui          a6, 151612
                  ori          s2, s1, -391
                  xori         tp, s10, -870
                  and          sp, a5, s11
                  nop
                  ori          s10, sp, -660
                  sra          a1, a1, ra
                  andi         s1, t3, 1431
                  or           s8, s11, a7
                  srai         s7, a2, 30
                  addi         s8, t6, 1158
                  nop
                  nop
                  srl          s9, gp, s8
                  sub          t2, a1, s2
                  srli         s11, a0, 15
                  sll          t5, t1, sp
                  auipc        s2, 410223
                  or           gp, s8, a3
                  lui          t2, 838527
                  auipc        s9, 927495
                  addi         t6, s10, 80
                  sll          s10, s0, s6
                  sll          a1, t4, a4
                  srai         a6, s4, 7
                  sub          a1, s9, s3
                  auipc        s1, 545854
                  srai         s7, a1, 29
                  sltiu        s0, ra, -1571
                  auipc        a7, 9957
                  nop
                  addi         t4, s11, 526
                  addi         s11, t2, -90
                  sub          a5, t0, t6
                  andi         ra, s3, 1428
                  sll          t2, a0, a1
                  slti         s6, ra, -445
                  srai         s10, s4, 30
                  sll          s6, s5, t6
                  slli         gp, s5, 30
                  addi         a3, a6, -281
                  andi         s5, t3, -1730
                  slt          s1, s2, t2
                  sltiu        a1, sp, 983
                  sra          s9, t5, ra
                  sub          sp, a6, t3
                  addi         a5, a1, -1864
                  nop
                  auipc        s0, 107906
                  ori          s11, a6, -1641
                  slti         a0, gp, -1928
                  srai         gp, a3, 9
                  sll          t3, t3, t4
                  andi         a5, s1, 478
                  slt          s6, t6, t3
                  sltiu        s6, s11, -225
                  xor          t5, a3, a2
                  andi         s2, t3, 1368
                  or           s10, s5, s4
                  sra          s11, ra, tp
                  andi         t4, gp, -522
                  sltu         s10, s9, ra
                  xori         a3, sp, 1421
                  ori          t4, sp, 485
                  slli         a3, t2, 23
                  xori         s0, t5, 482
                  sra          gp, s3, s3
                  sra          a5, a5, s6
                  lui          s0, 411388
                  sltiu        a7, sp, 1783
                  sll          s11, s11, s8
                  or           s10, gp, s6
                  andi         t2, s7, 315
                  xori         a6, s6, 887
                  srl          t4, s2, gp
                  xori         gp, a5, -705
                  ori          a6, t3, -1429
                  auipc        s5, 1043512
                  xor          a3, a1, t2
                  xor          t3, t3, s2
                  and          t6, t3, a2
                  and          s0, a7, a2
                  auipc        a5, 621519
                  srl          a1, t2, s11
                  nop
                  xori         s6, t6, -9
                  srli         a3, s2, 7
                  sltiu        s2, sp, 1940
                  slti         a5, t4, -1159
                  slli         s7, s3, 28
                  lui          a5, 304914
                  srl          s9, tp, s10
                  ori          gp, ra, 832
                  slt          ra, s2, s5
                  slt          s4, a7, s11
                  or           t3, a4, a4
                  srl          a5, s5, s6
                  add          s10, s7, s11
                  addi         a3, s6, -1327
                  sltu         zero, a6, s6
                  srai         t0, t3, 31
                  sll          a7, s2, t1
                  xori         sp, a3, -126
                  srli         a3, t5, 18
                  auipc        t2, 627611
                  andi         a1, a6, 1158
                  sltiu        zero, s11, 347
                  or           ra, gp, s8
                  sltu         t5, s1, a6
                  srl          s9, a3, zero
                  xor          a7, s2, s10
                  addi         s11, s9, -1244
                  addi         s1, s4, -1915
                  lui          sp, 738048
                  slli         s0, t3, 0
                  xori         a5, a2, 399
                  lui          t0, 922107
                  sra          a0, a3, a2
                  sll          t0, s10, s9
                  sltiu        a7, s2, -882
                  nop
                  addi         s2, a6, -1176
                  auipc        a0, 300347
                  andi         a0, a3, 944
                  srl          sp, s8, s3
                  srai         s5, t2, 9
                  srai         a0, ra, 17
                  addi         s2, s3, 1428
                  slli         t6, s9, 10
                  sltu         s10, a5, a1
                  and          s4, a5, t6
                  sltu         t6, s7, ra
                  addi         s1, s4, -1554
                  sltu         a5, sp, a0
                  xor          ra, s11, ra
                  add          t0, sp, zero
                  sltu         t4, t4, t0
                  auipc        s7, 1009886
                  xor          a1, s1, a4
                  xor          s0, s6, t4
                  addi         s8, s9, -1181
                  sra          t4, t0, s8
                  and          t4, t6, s5
                  sll          t4, s8, t3
                  andi         ra, s3, 500
                  slli         s2, s7, 4
                  slti         s7, tp, 266
                  and          t4, a1, ra
                  srai         s5, t1, 13
                  sltu         a1, s6, a3
                  slt          s8, s6, s2
                  ori          a1, a4, -1308
                  xori         s10, s5, -424
                  sll          t6, s2, s5
                  andi         s7, s9, -1440
                  or           t6, s6, gp
                  slti         t2, t5, -912
                  add          s1, s0, a5
                  sub          a1, s5, a7
                  xor          t6, t5, t2
                  srai         s8, s10, 22
                  sll          s2, s0, s6
                  lui          t1, 1046101
                  slt          s0, s11, a1
                  xor          t2, t3, s10
                  and          tp, t6, a7
                  srai         ra, a2, 28
                  srl          gp, t1, s0
                  and          s2, ra, zero
                  xori         s6, s4, -717
                  xor          s1, s3, a6
                  slti         t3, a0, -1178
                  or           s9, t6, t1
                  auipc        t2, 768383
                  and          s10, t4, s0
                  srai         sp, t3, 4
                  lui          s2, 16636
                  sltiu        t1, tp, 916
                  add          s10, a6, s1
                  and          a1, gp, a5
                  auipc        s1, 326410
                  sltu         s9, gp, t2
                  sra          tp, s0, s3
                  li           t5, 0x403da1a #start riscv_int_numeric_corner_stream_6
                  li           a5, 0xd47b425d
                  li           s9, 0x80000000
                  li           t0, 0x80000000
                  li           s5, 0x443bff52
                  li           tp, 0x0
                  li           a6, 0x0
                  li           a7, 0x4a5050a3
                  li           sp, 0x0
                  li           s4, 0xc8fbbc12
                  nop
                  nop
                  add          s9, tp, s4
                  lui          a5, 646620
                  add          s5, a5, a5
                  sub          t0, s4, tp
                  addi         a6, s9, 316
                  addi         sp, s4, -965
                  auipc        a5, 409032
                  lui          s4, 487579
                  sub          tp, tp, a7
                  addi         t0, s5, 959
                  auipc        t5, 480390
                  nop
                  add          sp, s9, s5
                  sub          a7, s4, a7
                  add          a7, a7, tp
                  add          s4, t5, s5 #end riscv_int_numeric_corner_stream_6
                  andi         t2, a4, -755
                  sub          s6, zero, a1
                  srli         a7, t6, 0
                  srli         s2, s3, 28
                  andi         gp, a3, -1275
                  ori          s5, s10, 1775
                  xori         t4, s10, -1633
                  xori         s8, sp, 1668
                  sltiu        a3, t1, -1724
                  addi         a6, s8, -6
                  srl          a5, s9, a3
                  sltu         s4, s7, sp
                  sra          t4, a2, t2
                  lui          s4, 149888
                  xori         s5, zero, -1963
                  andi         gp, t1, 730
                  sltu         s9, a6, a0
                  srli         t0, s2, 6
                  slli         gp, s2, 30
                  auipc        t5, 988876
                  auipc        s9, 919056
                  slti         t4, a6, -228
                  sub          a3, s4, s4
                  and          s7, tp, a7
                  or           a7, s11, t0
                  or           tp, t0, s9
                  slti         s1, s7, 2
                  slli         a1, s3, 4
                  sltiu        s7, t4, 1877
                  nop
                  add          a7, t0, gp
                  sltiu        zero, sp, -382
                  auipc        s4, 499866
                  xori         a6, zero, 105
                  slli         zero, a4, 20
                  sra          t1, a4, s7
                  lui          s1, 629981
                  auipc        s6, 1041361
                  slt          t6, s7, a0
                  sltu         t4, tp, s6
                  andi         t0, s3, 114
                  sra          s0, a4, s4
                  add          a3, s3, a2
                  ori          a7, a1, 1549
                  or           t5, tp, a4
                  srai         s7, a3, 31
                  andi         a7, s4, -1575
                  srai         t4, s7, 14
                  xor          t4, a5, s11
                  slli         s9, a1, 15
                  srai         s1, a4, 30
                  sra          s9, s11, s1
                  andi         t2, t2, 895
                  sub          s10, s11, a1
                  srl          s2, s4, s2
                  srai         a5, t3, 4
                  add          a1, s4, s3
                  ori          s9, t2, 979
                  slli         s8, tp, 21
                  sub          gp, s8, s1
                  sra          a7, s6, s5
                  lui          s5, 86512
                  sltiu        t3, ra, 722
                  andi         a0, s2, 572
                  add          a3, s11, s0
                  lui          gp, 991476
                  lui          s7, 782733
                  srl          t4, s5, t2
                  slti         t5, t0, 2018
                  add          tp, ra, zero
                  addi         s10, a7, -904
                  xori         s8, s5, -1869
                  sll          ra, s8, s3
                  addi         a7, s5, 2016
                  srli         s9, s9, 16
                  nop
                  nop
                  addi         s9, s11, 577
                  slti         a7, s4, 644
                  or           gp, tp, gp
                  andi         s1, s8, 183
                  addi         s11, t0, 171
                  srai         s4, s8, 26
                  sub          ra, s11, s6
                  or           tp, s9, s8
                  add          t2, gp, a4
                  sll          s11, s6, s1
                  slti         zero, a4, -954
                  slt          sp, a4, s8
                  sltu         s0, s4, a2
                  auipc        s9, 490945
                  slli         s1, a2, 22
                  nop
                  sub          s1, a0, s9
                  sltiu        s6, a1, -1720
                  add          s10, s10, t5
                  sltu         t4, zero, zero
                  add          t0, s5, s6
                  sra          s7, s4, s5
                  slti         t1, s10, 86
                  srl          gp, s2, t0
                  ori          s7, zero, 689
                  srli         s9, a0, 16
                  sltiu        t2, s5, -49
                  add          t4, a5, a6
                  ori          sp, s8, 1709
                  ori          t5, s0, -1133
                  xori         t4, s9, 1405
                  sll          s8, t5, s8
                  xor          s2, s6, a3
                  lui          a0, 860849
                  slti         a5, s0, 1962
                  add          ra, a1, t3
                  srl          s7, s11, s9
                  auipc        s7, 753078
                  slli         a6, s1, 3
                  slt          t2, a1, t4
                  slli         t6, s9, 22
                  slti         s11, s10, 1330
                  ori          zero, s7, 97
                  xor          s5, s7, a0
                  nop
                  srai         s11, s7, 22
                  sra          tp, a6, gp
                  sltiu        s11, t3, 435
                  ori          t1, ra, -180
                  sltu         gp, s3, s9
                  andi         t0, sp, -1754
                  sra          t5, s3, t3
                  slti         s8, a6, 1761
                  srl          t1, a5, s0
                  sub          ra, a7, a6
                  sltiu        gp, ra, -561
                  sltu         t1, s11, s5
                  xori         t0, zero, 1251
                  or           gp, a1, t1
                  slti         s7, t5, 232
                  ori          s8, a0, -149
                  andi         s5, tp, -1992
                  and          s11, a1, s3
                  add          s8, s7, t5
                  slli         zero, t1, 29
                  slt          t1, a4, gp
                  sra          t0, zero, a7
                  li           s4, 0xc48c12d8 #start riscv_int_numeric_corner_stream_13
                  li           t5, 0xfee2cc93
                  li           a5, 0xdca591d0
                  li           a6, 0x0
                  li           s6, 0x0
                  li           t4, 0xffffffff
                  li           t2, 0xffffffff
                  li           t1, 0x80000000
                  li           t6, 0xffffffff
                  li           s11, 0xd0dd9e86
                  nop
                  sub          a5, s6, s4
                  auipc        t5, 432168
                  nop
                  lui          s6, 472025
                  add          s6, s11, s6
                  nop
                  sub          t4, t1, s4
                  sub          a5, s11, t6
                  lui          t6, 33687
                  addi         s4, a6, 6
                  auipc        t2, 986237
                  nop
                  lui          s6, 748378
                  nop #end riscv_int_numeric_corner_stream_13
                  srli         s9, s6, 29
                  xor          s11, zero, t5
                  slli         s6, s1, 7
                  slti         t2, t0, 1539
                  lui          t3, 416073
                  nop
                  sra          gp, tp, a0
                  sub          zero, s0, tp
                  auipc        a3, 154610
                  add          s0, s11, a7
                  xori         a5, ra, -466
                  slli         t2, gp, 27
                  nop
                  add          t4, s8, s10
                  andi         gp, s4, -2008
                  srai         s6, s4, 12
                  addi         a6, a5, -1686
                  srai         t5, zero, 21
                  srai         s10, a1, 12
                  xori         t5, s0, -1279
                  srl          s5, tp, s3
                  lui          s5, 405713
                  nop
                  sltiu        t1, t4, 787
                  or           a1, sp, s6
                  sltu         gp, a6, t3
                  nop
                  xor          a7, s8, s6
                  sll          t2, t1, a0
                  lui          a7, 985831
                  sra          s7, ra, t0
                  srl          s11, s1, a1
                  srl          s4, a3, s11
                  srl          s2, s5, a3
                  srai         a3, sp, 18
                  andi         zero, ra, 1772
                  sltu         s4, s8, s3
                  sltiu        a3, s6, -634
                  srai         t3, tp, 4
                  or           sp, t1, s11
                  slti         t2, a5, 1485
                  srl          a1, s11, s3
                  addi         tp, s5, -1795
                  slt          t0, t6, t0
                  auipc        s9, 47569
                  srli         s0, t3, 19
                  sub          sp, sp, s9
                  slt          t4, t6, a1
                  sub          s9, s4, tp
                  srli         a1, s0, 28
                  sltu         a1, s4, a6
                  auipc        s9, 868013
                  xori         sp, s2, -1664
                  xor          s2, s0, t3
                  sll          t5, s10, s10
                  addi         s6, sp, 1755
                  nop
                  srl          s6, t5, ra
                  slti         a3, sp, -297
                  add          a5, tp, a1
                  ori          s1, sp, -701
                  sub          s0, s10, t5
                  slt          s8, a2, s2
                  ori          a7, a4, -978
                  addi         sp, t6, 1368
                  nop
                  sltiu        s4, a6, 1311
                  sltiu        t2, s1, -756
                  or           t6, s7, a0
                  slti         ra, a7, 1740
                  andi         ra, s5, -290
                  and          a1, s3, s9
                  sll          a6, sp, t4
                  ori          a3, t3, -1549
                  xor          tp, a5, s4
                  and          t2, t2, a3
                  auipc        s9, 60054
                  sll          t1, t3, a5
                  sltu         a7, a7, s4
                  slti         a6, s10, -30
                  lui          t6, 35622
                  slt          s4, sp, a3
                  sub          s4, a5, zero
                  slli         gp, t4, 23
                  srl          s4, tp, s3
                  or           t0, s3, a0
                  slti         s11, a7, -1880
                  srai         sp, sp, 31
                  sra          t1, a6, a2
                  xor          s8, a3, t3
                  ori          a0, s6, 1359
                  and          tp, a4, a5
                  slli         t6, s3, 5
                  andi         a5, t3, -1703
                  sltu         s6, t2, s0
                  srl          s6, ra, s7
                  or           tp, t1, a0
                  sltu         tp, s4, a0
                  nop
                  sub          ra, s9, a2
                  slt          s0, a2, s4
                  or           sp, t0, s5
                  xori         gp, s11, 596
                  auipc        a0, 853170
                  srai         s9, s1, 23
                  sll          a3, s5, t5
                  sra          a1, sp, s7
                  or           sp, t1, ra
                  sra          tp, t6, t0
                  srl          sp, s11, t5
                  sra          t3, s9, a4
                  ori          zero, t4, -1131
                  ori          t0, a7, 1095
                  nop
                  addi         a0, s1, 1346
                  auipc        s9, 192113
                  add          sp, s2, ra
                  srl          s6, a3, a7
                  slt          s0, t6, a3
                  srl          t0, a1, s3
                  lui          t5, 56509
                  sltiu        s11, t6, -2045
                  auipc        s5, 488795
                  srli         s1, zero, 19
                  srai         s7, s3, 21
                  slt          s2, a0, gp
                  srai         sp, zero, 21
                  lui          t2, 565279
                  sra          zero, s1, s8
                  srli         s7, gp, 17
                  auipc        a3, 342562
                  slli         a1, gp, 3
                  add          t0, a0, s8
                  sub          a1, a0, t3
                  sltiu        s0, a4, -905
                  auipc        a1, 14964
                  add          a0, a4, s3
                  sra          t2, a3, s0
                  sltu         tp, a6, s4
                  xor          s1, s7, s0
                  xor          s11, s9, gp
                  nop
                  xor          s9, s0, s9
                  sra          a1, s6, t1
                  sltu         a6, a7, s5
                  slli         zero, a5, 21
                  srli         s5, t1, 4
                  srl          t0, tp, s6
                  xori         s0, s3, 512
                  xor          t6, a1, a5
                  andi         a0, a2, 1439
                  auipc        t1, 40592
                  li           t0, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           s2, 0xffffffff
                  li           s4, 0xffffffff
                  li           s9, 0xffffffff
                  li           t6, 0x0
                  li           s0, 0x80000000
                  li           s6, 0x0
                  li           a0, 0xffffffff
                  li           s7, 0xffffffff
                  li           a6, 0x0
                  add          a6, s4, s4
                  nop
                  add          s9, t6, s7
                  addi         s2, t0, 720
                  nop
                  nop
                  addi         t6, a0, -466
                  addi         s7, s2, -1323
                  auipc        s0, 497664
                  lui          s9, 591399
                  addi         s0, s4, -1936
                  lui          t6, 962320
                  auipc        s4, 989564
                  sub          s4, s0, s2
                  addi         s2, t0, -619
                  sub          s4, s7, s2
                  add          a6, s9, s6
                  auipc        t6, 432776
                  sub          a6, a6, t6
                  nop
                  lui          a0, 322090
                  auipc        s4, 988888
                  addi         s7, t0, 553
                  nop #end riscv_int_numeric_corner_stream_11
                  srai         s8, tp, 10
                  slt          sp, a2, t3
                  sltiu        s7, a1, -1477
                  add          zero, ra, a7
                  srl          a1, a7, s8
                  slt          tp, a3, s7
                  slli         s8, a6, 15
                  sll          s4, s5, t0
                  sltiu        s11, t3, 1371
                  addi         ra, a4, 88
                  sub          s8, t0, s4
                  nop
                  sub          sp, s9, tp
                  nop
                  sra          t6, s11, s3
                  lui          s11, 260123
                  auipc        s6, 413344
                  slt          sp, t2, s4
                  srli         s2, t6, 9
                  slli         s11, sp, 28
                  xor          t2, s5, sp
                  and          t2, s1, s3
                  srl          s7, s7, t1
                  nop
                  or           t5, a0, s7
                  or           s6, s5, s7
                  sub          s11, s10, s2
                  xori         t5, zero, -1747
                  addi         t6, t4, -1681
                  slli         ra, s7, 11
                  sltiu        t0, s9, -1862
                  add          gp, s7, s10
                  sub          t6, t3, s11
                  slli         a5, tp, 30
                  ori          s2, t1, 396
                  sltu         s5, s5, t5
                  srai         s6, s7, 5
                  srai         s5, s8, 29
                  sltu         t4, s11, s7
                  slt          s6, s0, s4
                  srl          sp, t4, gp
                  srli         a0, s4, 17
                  add          a7, s10, s3
                  andi         zero, a5, 1546
                  lui          t1, 421861
                  xori         s11, a2, 1754
                  xor          sp, s8, a3
                  slt          t0, s8, a4
                  and          a6, s6, a5
                  srai         t1, t3, 19
                  addi         a0, t0, 118
                  addi         t1, sp, 1878
                  xori         t6, s5, -1398
                  xori         ra, s10, 344
                  sll          a3, s11, t2
                  slt          t4, t2, s5
                  and          t3, t3, s4
                  andi         s10, a1, 93
                  add          a1, t1, t0
                  or           s7, t1, t6
                  xor          s6, t5, s7
                  ori          t2, s9, -446
                  sltu         s7, zero, t0
                  slli         s5, s4, 8
                  sub          a3, a6, s2
                  andi         s7, t2, -1796
                  srli         s2, a6, 22
                  ori          tp, a4, -543
                  add          s0, gp, t3
                  sltiu        a6, s2, 1587
                  nop
                  sra          a0, tp, zero
                  and          t0, gp, s10
                  slli         s6, a2, 15
                  sltiu        a1, t3, -1363
                  nop
                  sub          gp, a7, t4
                  sub          s11, s4, a0
                  srli         gp, s5, 10
                  srli         t0, s0, 19
                  sll          t2, s9, s4
                  nop
                  ori          t2, s7, -1075
                  srli         a1, s5, 13
                  srli         s2, tp, 18
                  and          s4, a2, t2
                  lui          a0, 376324
                  or           s10, s8, t5
                  xori         s8, s7, -119
                  xori         zero, ra, 1047
                  addi         s5, s9, 1276
                  lui          a1, 475684
                  add          a3, a7, s0
                  srai         a6, t2, 5
                  or           a7, gp, s5
                  slti         s8, zero, -1433
                  sltu         a3, gp, t4
                  and          s0, s11, a1
                  sub          a1, s7, s11
                  or           t3, s4, s10
                  sra          a1, sp, a7
                  sll          s4, t1, tp
                  xori         a5, s0, 2044
                  sltiu        a6, a1, -171
                  srl          s8, s0, a4
                  or           t1, t5, s2
                  nop
                  lui          s5, 794596
                  auipc        t2, 517396
                  nop
                  sll          s10, t2, a4
                  xori         s8, a0, -1113
                  sll          t0, s3, s11
                  add          s6, a3, s6
                  sltu         tp, s8, a3
                  add          zero, zero, t1
                  sltu         s8, s9, ra
                  ori          zero, t4, 811
                  ori          a0, tp, 1807
                  lui          s8, 63309
                  slli         t1, ra, 25
                  slt          a7, a3, a3
                  sra          sp, tp, tp
                  auipc        t3, 726882
                  lui          s7, 703705
                  auipc        tp, 575277
                  ori          ra, s0, 1175
                  sll          tp, a0, s10
                  lui          tp, 815919
                  xor          s11, s2, s11
                  nop
                  xori         s0, a3, -1938
                  auipc        s5, 394808
                  ori          t5, t4, 408
                  or           a6, t5, s9
                  and          sp, s10, t5
                  srl          a7, s9, a5
                  ori          s10, t6, 198
                  slli         t1, s4, 1
                  auipc        s7, 1019011
                  sltu         t1, a7, t5
                  xori         s2, t4, -1387
                  srai         a0, t6, 25
                  slti         s7, a5, -1301
                  nop
                  slti         s1, s10, -1705
                  andi         t6, ra, 1440
                  ori          s4, s10, -189
                  srai         zero, t1, 11
                  lui          s8, 163699
                  xori         s7, gp, -1561
                  srli         s1, s7, 7
                  xor          s2, t2, a7
                  lui          tp, 461815
                  ori          s4, gp, 1318
                  xori         t0, s7, 864
                  sub          ra, s1, s7
                  add          a1, s11, t1
                  sra          zero, s1, tp
                  nop
                  sltiu        zero, ra, 817
                  lui          s8, 368780
                  srl          a6, s3, s1
                  sub          s6, s9, t3
                  sll          a5, a5, a2
                  slt          t4, zero, sp
                  sltu         a7, s9, t2
                  andi         t5, s2, 1700
                  andi         t6, s4, -1818
                  add          s5, a4, gp
                  add          a6, tp, s7
                  xori         gp, s4, -1342
                  lui          a3, 220071
                  xor          t3, s3, t0
                  auipc        t0, 98406
                  slti         t2, t0, 1263
                  lui          s2, 1033528
                  or           s9, gp, s10
                  lui          s8, 145307
                  srai         s8, a1, 2
                  sltu         ra, t5, t6
                  sltu         s1, s2, s2
                  addi         t6, tp, 1859
                  add          a0, t5, a3
                  slt          t3, s8, sp
                  slt          s7, s4, s6
                  slli         s9, s1, 11
                  sltiu        s4, t2, 1867
                  lui          t2, 35140
                  sub          s8, t6, a5
                  srli         s0, s11, 19
                  srli         s1, s10, 11
                  lui          t3, 411875
                  nop
                  srl          s0, s3, s8
                  srl          ra, a0, a3
                  xor          t1, s7, t4
                  xor          a1, s3, t6
                  srl          s0, zero, s9
                  addi         tp, s2, -91
                  and          tp, gp, t4
                  or           s4, s4, s0
                  addi         s7, s7, 1046
                  ori          s6, ra, -2025
                  addi         zero, a4, -1825
                  sltu         ra, a7, s5
                  srli         sp, t5, 15
                  srl          gp, s2, gp
                  sltu         t3, t2, t1
                  or           t1, s9, t2
                  sra          s10, s4, s8
                  srli         s2, gp, 8
                  xor          s9, s2, a6
                  nop
                  addi         s8, s10, -120
                  sll          s5, s8, ra
                  add          s10, t5, a6
                  or           s8, t6, t2
                  xori         s4, s5, -1910
                  slti         s0, s7, -1632
                  slli         a1, a3, 18
                  and          a6, a6, a7
                  slt          a7, s7, s9
                  add          a7, gp, s6
                  sll          s6, a3, zero
                  srai         zero, a6, 30
                  lui          gp, 508922
                  sltu         t4, t0, a7
                  auipc        a5, 191282
                  sub          a6, s5, a5
                  sll          a7, sp, tp
                  lui          zero, 162231
                  srai         t5, t1, 19
                  slli         s1, a2, 4
                  nop
                  xori         t4, t5, 1805
                  addi         t3, t5, -1692
                  addi         t5, s11, -270
                  sltu         t6, s4, a0
                  slli         s0, s0, 2
                  sll          a6, t2, a5
                  srli         s10, s6, 28
                  add          s1, a7, t0
                  and          zero, s7, s3
                  xori         tp, sp, 1171
                  addi         s6, s5, 1609
                  slli         a7, s6, 11
                  andi         t3, t4, -1607
                  auipc        a3, 465970
                  sltiu        s1, a6, 698
                  addi         s1, s3, 51
                  nop
                  sll          s11, s1, s10
                  srai         t3, a2, 13
                  add          a1, t4, t5
                  slti         t0, t4, 882
                  sub          a1, sp, t2
                  or           s7, s5, t2
                  andi         s11, a6, 1659
                  srai         t4, a0, 6
                  slt          t0, t0, a2
                  andi         s10, a3, 914
                  slli         sp, t4, 16
                  auipc        t2, 722431
                  srai         s1, gp, 31
                  lui          s1, 768455
                  sll          s1, t0, a4
                  sltu         s8, tp, s2
                  and          t4, a1, s0
                  sltu         t6, s5, a4
                  sub          t2, zero, t3
                  ori          s8, gp, 710
                  ori          a7, t0, -1035
                  add          t5, a6, s10
                  andi         s9, a1, -1932
                  or           s4, t2, s7
                  addi         s7, s2, -1024
                  srli         a1, a7, 25
                  slt          s8, s5, tp
                  xori         t1, s9, -1198
                  sll          a3, s3, s0
                  ori          s9, a3, 496
                  slti         gp, s5, 2
                  srli         s8, sp, 27
                  lui          ra, 303587
                  xor          a7, gp, a7
                  and          s11, gp, s10
                  sub          s0, t0, t0
                  slli         s10, t3, 26
                  sltiu        s7, a0, -1511
                  and          s10, a1, s6
                  srli         a7, a0, 15
                  slli         s6, a2, 8
                  xori         t5, a1, 686
                  sub          a6, a5, ra
                  xori         s1, a4, -2045
                  add          s4, a1, a2
                  xor          s10, ra, t1
                  sra          ra, s3, t3
                  andi         s8, a0, -1309
                  andi         a0, s0, -181
                  sub          a7, gp, s10
                  slti         s11, a5, -253
                  sll          zero, t6, s7
                  and          s8, a2, s10
                  sll          a3, s8, t1
                  nop
                  ori          s8, t3, 1230
                  sra          a6, s4, t2
                  srli         s9, t6, 18
                  sltiu        s2, t4, -1193
                  andi         a1, a5, -286
                  sltiu        gp, ra, -823
                  srai         a7, t4, 7
                  xori         s11, a0, 1262
                  add          s10, t2, s1
                  and          s11, t5, s3
                  slt          t4, s9, zero
                  lui          s8, 1022224
                  xori         a6, gp, -1589
                  or           s10, a4, s10
                  andi         a1, a2, 684
                  srli         s10, sp, 21
                  srl          s9, t5, s2
                  lui          s1, 632860
                  sltu         t1, gp, s3
                  slt          s4, a5, gp
                  sll          t6, a7, s11
                  and          a7, a3, gp
                  srai         s8, s0, 18
                  srai         t3, s2, 24
                  slli         t1, sp, 0
                  srl          s7, s9, t2
                  srli         s10, s6, 14
                  slt          t1, a7, tp
                  addi         t5, t2, 745
                  ori          t2, zero, -1611
                  xori         t4, a6, 241
                  auipc        s2, 496861
                  slti         s10, s1, -541
                  add          a6, s11, t1
                  xor          s2, s7, s1
                  sub          a6, a3, a0
                  slli         a5, a1, 2
                  andi         s6, t6, -268
                  or           a1, s6, s11
                  sltiu        sp, s8, -1860
                  sltiu        ra, a7, -1483
                  addi         gp, s1, -2000
                  sra          t5, s1, zero
                  nop
                  nop
                  srai         a1, s0, 24
                  or           ra, tp, t1
                  nop
                  andi         s10, t3, 1930
                  lui          zero, 462660
                  sll          s5, s8, sp
                  addi         t2, a2, 551
                  sub          s11, a0, ra
                  slli         a1, a3, 12
                  slli         s0, gp, 29
                  or           a0, t5, a0
                  xori         gp, a1, 373
                  srli         ra, a2, 22
                  srai         a0, zero, 27
                  sra          s7, a2, a1
                  sra          a5, s4, s6
                  slli         a6, a3, 2
                  nop
                  sll          s6, a2, tp
                  slt          t3, sp, gp
                  xori         tp, t0, 696
                  andi         t2, t5, -1270
                  nop
                  sra          s0, gp, s8
                  sll          t1, gp, s11
                  srl          s1, s6, s11
                  sltiu        s7, a5, -944
                  slli         s10, s8, 1
                  or           s4, t1, t6
                  sltiu        s10, gp, 1644
                  add          s9, ra, s10
                  slt          s5, a0, t2
                  sltu         t6, s8, t5
                  lui          sp, 478100
                  add          s9, a0, gp
                  sub          t1, s9, zero
                  slli         t3, sp, 20
                  ori          s5, sp, 891
                  add          s2, s5, s2
                  nop
                  sll          a5, t3, t6
                  slli         t6, s0, 29
                  sll          gp, t4, s10
                  nop
                  sltiu        t1, t5, 1432
                  lui          zero, 566244
                  auipc        s9, 763233
                  srl          sp, a0, t5
                  andi         sp, a5, -943
                  xori         a6, s7, 1201
                  srai         s0, s4, 17
                  srl          s6, t0, a3
                  sltu         t4, s7, s4
                  sll          s5, t1, s2
                  ori          t5, s9, -1025
                  slt          t1, s11, s10
                  slti         gp, s6, -648
                  srli         s6, s0, 16
                  slli         a5, s3, 0
                  slli         s8, a7, 27
                  or           s5, s0, s10
                  auipc        s7, 997297
                  and          tp, s1, t3
                  andi         zero, zero, 287
                  slli         s9, gp, 13
                  ori          s11, s0, 540
                  slt          s11, gp, t0
                  srli         s8, t1, 29
                  nop
                  andi         s0, s6, -1746
                  or           s7, a1, a2
                  sub          s1, t2, t5
                  auipc        s1, 647102
                  xori         ra, s6, -1661
                  or           s1, t1, ra
                  add          s1, a3, t0
                  xor          s4, s5, s11
                  or           t1, s9, s3
                  slli         s1, gp, 15
                  ori          a5, a5, -741
                  addi         ra, gp, 1544
                  srl          ra, t3, a0
                  andi         a6, t6, 64
                  lui          t5, 150152
                  sub          s4, tp, sp
                  slt          t6, s6, t5
                  or           a7, s9, t4
                  sra          tp, t1, t3
                  addi         s5, s8, 236
                  andi         s4, t0, -1400
                  xori         t4, a7, 947
                  auipc        sp, 244445
                  add          t2, s3, gp
                  srli         s5, a7, 25
                  slti         t2, a7, 1672
                  xor          gp, s4, s4
                  slt          a3, s2, s6
                  sll          a6, t4, a7
                  auipc        t2, 273235
                  sltu         zero, ra, s8
                  and          s5, gp, s1
                  srl          t3, a1, s0
                  addi         s8, t1, -1614
                  sltu         s0, t4, s11
                  xori         t2, t6, -793
                  sll          s0, s2, a3
                  auipc        sp, 943862
                  sltiu        s2, s5, -1737
                  andi         t3, a6, -1310
                  sltiu        a1, t6, -1404
                  sltiu        s2, a4, 15
                  add          t0, s3, s5
                  andi         a3, s11, -1041
                  addi         t1, a1, -919
                  add          t5, s0, s8
                  ori          s11, t2, -1552
                  or           s6, s2, a4
                  xori         a0, s2, -1682
                  xori         t0, ra, -122
                  slti         t0, s2, -670
                  add          t0, t4, a0
                  sll          gp, t2, t1
                  sll          ra, tp, a7
                  srl          s4, s11, a3
                  srai         s5, t6, 27
                  auipc        zero, 657248
                  srai         a5, t2, 3
                  sltiu        sp, a4, 699
                  srli         t2, s10, 11
                  sub          t0, s8, a4
                  sltiu        t1, s6, 349
                  add          a5, a4, s5
                  srl          sp, t0, t2
                  or           s6, t1, t1
                  lui          s1, 930294
                  slti         a3, a3, -1200
                  xor          s8, t0, t4
                  srai         a5, t4, 30
                  slti         s6, s6, -1767
                  and          zero, ra, s10
                  sub          a1, zero, a6
                  and          s10, s2, t6
                  xor          a6, s8, a6
                  add          s11, a4, a3
                  srai         s11, a6, 29
                  sll          tp, t0, t3
                  ori          s4, s10, 975
                  srl          t1, s11, t0
                  sra          a3, tp, s4
                  and          a5, sp, t0
                  auipc        ra, 844710
                  add          s0, gp, a1
                  xori         t5, t0, -1470
                  andi         a6, gp, -150
                  and          s11, s6, a3
                  andi         zero, t3, -1997
                  srl          gp, a7, s2
                  slti         s10, s10, 1514
                  slli         s9, tp, 25
                  sltiu        s11, a4, -1371
                  sltu         a3, a0, s5
                  lui          sp, 104568
                  xori         s4, zero, 956
                  sra          s5, tp, gp
                  sll          s1, ra, sp
                  srl          gp, s4, s5
                  slti         s7, a4, 1717
                  and          s10, a0, s11
                  sltu         s4, t6, t2
                  ori          t6, s5, 2043
                  ori          t0, s6, 1184
                  srai         s0, s10, 28
                  slt          s6, s3, s3
                  sra          tp, a3, a1
                  and          t2, t5, zero
                  srl          zero, a4, a5
                  srli         s8, s3, 27
                  or           a3, a0, gp
                  or           a5, s9, s3
                  sra          s5, gp, a0
                  slli         a7, s9, 26
                  or           s10, a1, t4
                  xor          t1, t6, a7
                  auipc        zero, 626136
                  sltiu        a3, tp, 1097
                  sra          s8, s0, t4
                  srli         a3, s6, 1
                  auipc        t6, 702502
                  srli         ra, a2, 22
                  srli         s7, s7, 12
                  or           t5, s0, t4
                  slti         s10, s8, -1650
                  add          s0, t1, gp
                  sltiu        ra, s4, -405
                  xor          gp, s4, t1
                  xor          s10, s10, s0
                  xor          a6, a1, tp
                  xor          t5, t4, s6
                  sltiu        s2, s10, 1571
                  and          s0, a7, zero
                  or           t6, s8, s7
                  srl          t1, a7, t4
                  addi         s5, s9, -757
                  xor          t0, a3, t3
                  auipc        ra, 218600
                  sra          t5, ra, t6
                  or           s2, a1, a4
                  andi         s4, s7, 1229
                  sll          s9, s3, t3
                  slt          s2, s10, s6
                  add          gp, a0, s9
                  sub          s11, s1, s10
                  sltu         t5, s9, s6
                  xori         t1, sp, 1816
                  slti         t0, s0, 1635
                  add          ra, s2, s11
                  addi         t6, t6, -76
                  sra          t5, a4, s11
                  sra          zero, t5, a3
                  addi         ra, s8, 1002
                  slt          gp, s8, s1
                  srai         sp, a4, 6
                  sltiu        t2, t0, 251
                  addi         t0, s6, -673
                  auipc        tp, 321306
                  srl          s8, a0, a5
                  lui          t3, 654625
                  andi         s8, t6, 466
                  xori         t5, s8, 1247
                  srl          gp, t6, ra
                  slli         t6, t4, 27
                  ori          a6, s2, 229
                  srli         s9, zero, 1
                  slt          s5, a3, s7
                  slti         t0, t1, 1332
                  sra          ra, s0, a1
                  sltu         a5, s11, a7
                  sll          gp, a6, s1
                  slti         gp, s0, -46
                  xori         s11, a4, -1632
                  sltu         s8, a1, a3
                  sll          s5, t3, a1
                  sltu         s2, a2, s10
                  sltiu        a3, s1, 648
                  sltu         zero, t3, a4
                  xor          gp, a7, a4
                  lui          t3, 649253
                  addi         t2, a6, -295
                  add          ra, ra, a2
                  srl          sp, s2, tp
                  add          s1, t1, tp
                  sub          s5, s9, t1
                  nop
                  srai         s0, a2, 18
                  nop
                  slti         s4, s6, 615
                  or           a1, s10, a6
                  srai         t2, s3, 2
                  nop
                  sra          zero, t5, s9
                  slt          s11, a4, s9
                  or           s5, a4, ra
                  lui          sp, 748604
                  ori          zero, sp, 1128
                  auipc        t4, 624845
                  nop
                  ori          a0, a3, -1070
                  sltiu        zero, a4, 1356
                  xor          s7, s5, a6
                  sll          s7, s9, s11
                  nop
                  srai         sp, s0, 3
                  and          s7, a3, s10
                  lui          s9, 710356
                  slt          a6, t2, a0
                  slli         a5, a4, 25
                  sll          s6, s1, t6
                  sltiu        s1, t3, -1405
                  srai         a1, t1, 23
                  lui          t2, 679224
                  add          ra, zero, t1
                  sltu         t2, gp, t2
                  srl          a1, a7, a7
                  sra          t1, s6, t6
                  or           gp, a1, a0
                  xori         t1, s10, -744
                  slti         a5, tp, -1143
                  auipc        s6, 195107
                  or           tp, s4, a0
                  sltiu        a3, s7, 477
                  sra          t0, sp, tp
                  srai         s7, t2, 23
                  nop
                  slti         tp, s8, -1222
                  andi         a6, s8, -959
                  andi         s11, s11, 1530
                  slt          zero, t0, s0
                  lui          s5, 185554
                  sll          t4, ra, a6
                  sll          a5, s6, t2
                  sub          a0, a0, s7
                  sra          a6, t2, t2
                  ori          s2, a7, 1686
                  srli         s10, s2, 7
                  sltiu        a7, s0, -1406
                  sub          t3, s11, s11
                  add          sp, a0, s3
                  ori          sp, a6, 142
                  sltu         zero, s6, ra
                  andi         gp, a1, 551
                  sra          ra, t3, s1
                  slti         a3, s3, 288
                  lui          a7, 443504
                  sub          a3, s2, s5
                  sltiu        t6, a5, -59
                  or           a0, a6, a7
                  and          t4, s2, t1
                  nop
                  slt          s5, s6, t1
                  sub          t6, s11, s9
                  auipc        s8, 579214
                  xor          t3, zero, s9
                  and          zero, sp, s10
                  or           s0, a0, a5
                  andi         a5, s7, 1689
                  xori         s10, t3, -1357
                  lui          s1, 982033
                  addi         t1, s7, -1279
                  lui          s11, 269747
                  andi         s4, a2, 680
                  sll          s11, a1, s3
                  lui          sp, 609943
                  sltu         t1, s3, s10
                  lui          s2, 862721
                  slt          a7, s1, s5
                  andi         t0, t4, -1584
                  sltiu        a6, s5, 179
                  srli         a1, t5, 4
                  andi         t5, gp, -1831
                  srli         s4, tp, 13
                  srli         s2, s9, 18
                  sltiu        t4, a0, -254
                  xor          s9, s10, s11
                  slti         a1, sp, 260
                  xori         a5, tp, 1939
                  sll          tp, t3, s0
                  and          s8, t3, s2
                  ori          a6, s7, 1692
                  srai         gp, t3, 10
                  srli         a0, s11, 26
                  and          tp, a6, a2
                  srai         t2, a2, 22
                  sra          a6, t4, s3
                  nop
                  auipc        s9, 55489
                  add          t5, a6, s1
                  xor          s2, s2, s10
                  srai         s0, a6, 22
                  lui          sp, 644613
                  auipc        s4, 350784
                  sltu         a5, s1, a0
                  add          s6, zero, zero
                  add          s6, s9, t2
                  addi         s9, t2, 916
                  auipc        s11, 155185
                  ori          a3, s10, -572
                  srl          s1, s2, s9
                  and          a3, zero, a6
                  ori          sp, tp, -993
                  sltiu        s1, a4, 1207
                  sltiu        s2, a2, 1740
                  xori         s7, t3, -135
                  auipc        t1, 29059
                  sltiu        s10, s7, -819
                  xori         s2, t4, 1923
                  sra          t6, a6, a5
                  srl          a0, a7, s1
                  or           t4, tp, s8
                  sltiu        a5, sp, 632
                  xori         s7, a7, -222
                  sra          a1, a1, s11
                  or           ra, s6, t5
                  slt          s4, s7, a2
                  slt          s7, s2, t5
                  or           a1, s5, s6
                  lui          a7, 92867
                  lui          t1, 670614
                  slli         s8, t0, 21
                  addi         s4, t0, -825
                  sltiu        s0, s10, -99
                  slli         a7, t4, 12
                  srl          s11, t3, tp
                  andi         a6, s11, -372
                  lui          s10, 1035045
                  and          s6, s4, a2
                  srli         t2, tp, 10
                  ori          t0, s0, 1906
                  sub          a1, s3, t2
                  sra          s6, s9, s8
                  srl          a0, s10, sp
                  addi         s4, s2, -1097
                  lui          t4, 615522
                  xor          a1, t5, s2
                  slli         a5, s1, 21
                  srai         t0, s2, 14
                  and          s11, s6, gp
                  and          s8, a4, ra
                  slt          s1, a2, a5
                  srli         t6, s0, 21
                  srli         t0, s9, 1
                  slli         s7, a4, 17
                  nop
                  addi         s4, s5, -467
                  lui          ra, 56912
                  addi         a6, s1, -1585
                  sltu         s7, a4, s0
                  or           t0, t0, s7
                  srli         t1, gp, 6
                  srl          s11, t6, a2
                  ori          gp, a4, 1019
                  or           t5, t3, a0
                  add          s8, a5, zero
                  andi         a1, a6, 301
                  xori         s10, t1, 635
                  srli         t3, s5, 13
                  auipc        a7, 413426
                  andi         sp, t5, 1199
                  and          t4, s2, s11
                  sra          gp, s7, s5
                  and          s2, a0, s6
                  xori         s6, s1, -1520
                  auipc        a0, 1031441
                  or           s10, s10, t5
                  sra          a6, ra, gp
                  or           t0, s4, a4
                  sltiu        ra, t4, 598
                  slt          t3, t2, zero
                  slti         s10, t0, 1868
                  lui          sp, 321640
                  auipc        gp, 241584
                  slli         sp, s2, 13
                  lui          s4, 671670
                  sra          t6, t5, a3
                  ori          t0, s9, 919
                  andi         s9, a4, 1257
                  xori         tp, t0, 21
                  lui          a7, 223724
                  ori          s11, t2, 1397
                  slti         t0, a0, 1784
                  sltu         t0, t2, s9
                  lui          s2, 850905
                  or           a3, t4, s8
                  srai         a3, sp, 20
                  add          a0, a2, zero
                  srl          zero, a4, s5
                  slt          s10, s3, a7
                  sltiu        s4, s5, 264
                  or           sp, zero, s4
                  xor          tp, a5, s10
                  add          s11, s0, s6
                  and          s7, s1, s2
                  sll          sp, t1, ra
                  slli         a5, s1, 27
                  lui          s1, 203572
                  sltu         s9, sp, a0
                  srai         a5, a2, 10
                  srai         a7, s8, 19
                  sltiu        t6, t2, -1194
                  or           s2, s10, t0
                  slli         s0, s11, 23
                  sltu         t4, s1, t5
                  srl          s5, t6, s1
                  and          s6, s1, sp
                  or           t6, t1, s2
                  andi         s4, a3, -1023
                  nop
                  ori          t5, s4, -1656
                  sltiu        t2, s8, -1655
                  andi         sp, t3, -562
                  srli         a7, tp, 11
                  slti         t2, a2, 2023
                  xori         t4, s3, -793
                  sub          s8, s0, tp
                  or           s9, s10, tp
                  sra          ra, s4, s7
                  srli         gp, t5, 14
                  andi         t4, s7, 1453
                  slli         t6, s6, 12
                  slt          a7, a5, s8
                  andi         s6, t6, 1378
                  andi         gp, a1, 1312
                  or           tp, a4, s6
                  add          s11, s5, s3
                  xori         t2, a3, -239
                  sltu         sp, a7, s9
                  sra          a6, s4, s8
                  xori         s0, t3, -1956
                  slti         s4, sp, -1878
                  auipc        a6, 375104
                  slti         t4, a0, -32
                  lui          t5, 663252
                  sra          gp, t1, s3
                  slli         gp, a2, 8
                  sltiu        s0, s7, 1202
                  addi         s10, s4, 1407
                  sra          t5, t5, tp
                  and          s11, s6, t6
                  sltu         a7, a5, s3
                  xori         s1, t6, 1334
                  auipc        t6, 715441
                  sub          gp, t2, t3
                  xori         a7, sp, -564
                  auipc        s1, 704146
                  ori          t2, a0, 117
                  sltu         a3, s3, zero
                  sub          a7, t0, a3
                  and          a7, a0, t2
                  sub          t5, s8, ra
                  xori         a3, ra, 1364
                  lui          t5, 689615
                  sltiu        gp, s11, 643
                  srl          ra, a3, s10
                  sltiu        t2, s11, -1170
                  lui          a1, 60511
                  slti         a1, ra, 1082
                  auipc        s9, 535608
                  add          s6, s5, a5
                  sll          t1, s7, t3
                  and          s5, s7, t6
                  sltiu        s10, t5, -2006
                  ori          s5, t4, -1235
                  sub          a7, t5, s10
                  nop
                  lui          s0, 695757
                  and          s1, a3, s4
                  sub          gp, a3, a7
                  sltiu        a7, a3, 1561
                  xori         gp, s7, 79
                  and          sp, t0, a0
                  sll          tp, s5, a0
                  sll          ra, a6, t4
                  slli         s4, s1, 10
                  addi         s5, s3, -745
                  xor          s2, ra, s5
                  slt          s5, t0, t5
                  auipc        t2, 729844
                  sub          a5, s3, t6
                  xor          s8, s9, s9
                  add          s11, t3, tp
                  xor          t0, s7, t4
                  auipc        s5, 1037260
                  sltiu        s0, t6, -937
                  and          t6, s0, t5
                  nop
                  ori          a3, t2, 53
                  ori          s8, s4, -1319
                  sra          s1, t6, a0
                  sll          tp, zero, s4
                  ori          s10, s0, 2046
                  or           t4, s10, t6
                  andi         a5, zero, 1963
                  ori          sp, zero, -1282
                  or           t5, a6, s11
                  srl          ra, t3, a1
                  sltiu        s5, s8, 291
                  add          s9, t4, gp
                  slti         t1, a7, -1098
                  addi         s5, a4, 1618
                  add          a5, a4, s1
                  sltu         a0, a5, a6
                  or           tp, s10, t1
                  ori          a1, a7, 124
                  add          s5, s5, t6
                  ori          a6, a2, 1619
                  srli         t5, s5, 10
                  sltiu        a0, s7, 366
                  slli         s7, gp, 9
                  add          a1, t4, s11
                  or           t0, a1, s3
                  slli         s0, t0, 1
                  auipc        s9, 414837
                  sra          a1, s7, t1
                  srai         zero, s1, 7
                  or           s6, a6, a7
                  and          s11, zero, s10
                  or           a3, a0, s10
                  sltu         sp, s3, t6
                  xori         a7, a0, -1965
                  lui          s11, 320928
                  slli         s2, sp, 25
                  sub          t0, s7, a1
                  slti         s2, a6, 1569
                  nop
                  slti         t6, ra, -1356
                  sltu         t5, t1, s7
                  ori          gp, sp, -831
                  and          t0, a0, tp
                  sub          t6, t3, t1
                  or           s11, t5, a0
                  xor          a7, s11, s0
                  sltu         a7, s2, s1
                  add          s2, a0, zero
                  addi         s10, s2, 1413
                  auipc        t1, 909875
                  xori         s10, s8, 1390
                  add          zero, a5, s9
                  sub          t1, gp, tp
                  andi         tp, a5, 401
                  sll          s2, s1, t5
                  srai         s0, s4, 13
                  xori         a6, t0, -620
                  sra          a6, s10, s9
                  slt          zero, s11, s6
                  addi         gp, a7, -85
                  sll          s2, a7, gp
                  sltiu        s10, s10, -1700
                  lui          zero, 569845
                  ori          s0, s4, 1209
                  lui          a5, 974668
                  sltiu        a1, s6, -1565
                  auipc        s2, 1012120
                  slli         s1, s2, 31
                  nop
                  and          tp, s2, s1
                  srl          s5, a3, a2
                  srl          t6, ra, a5
                  slli         t3, a2, 4
                  andi         a5, a3, -1948
                  addi         s8, s10, 402
                  or           t4, s7, s10
                  sltu         sp, sp, s1
                  srl          t1, s11, t3
                  slt          s4, s4, ra
                  addi         t3, s1, -340
                  slli         t3, a0, 4
                  srl          t0, a1, a3
                  sub          t1, t6, s5
                  sub          s9, t2, t5
                  slli         s6, t0, 26
                  addi         zero, ra, 1409
                  sub          t2, zero, s4
                  and          t1, s11, s4
                  addi         t5, t6, 994
                  sub          s4, s10, a0
                  sltiu        s2, sp, 121
                  srai         s4, s10, 29
                  xori         sp, a6, 761
                  srli         gp, a0, 30
                  slti         s4, t2, -1556
                  srai         a1, t6, 1
                  or           s4, s0, s10
                  srai         s2, s3, 4
                  lui          zero, 831323
                  slt          s4, t4, t6
                  ori          a3, a3, -1066
                  sub          gp, a2, t6
                  slli         t2, t5, 31
                  sub          s4, a0, a6
                  srl          t2, a0, s7
                  nop
                  lui          s11, 731902
                  sub          a3, s9, s8
                  andi         a1, ra, -1879
                  sra          t6, s2, gp
                  slti         a1, a1, 158
                  andi         t5, s4, 1014
                  andi         s11, s3, 1224
                  sll          a1, ra, t3
                  auipc        s6, 115288
                  sltiu        s10, s8, -998
                  slti         s4, a3, -1066
                  ori          s8, s6, 296
                  slt          s0, gp, s4
                  auipc        s11, 892498
                  sltu         s11, s9, s1
                  sltu         tp, s6, a3
                  sltiu        a6, a4, -2047
                  slti         s10, ra, -968
                  slli         s1, a7, 14
                  auipc        s0, 406051
                  or           zero, sp, s2
                  sra          a1, t6, a0
                  xori         t4, sp, -230
                  slt          s11, t0, tp
                  slti         s8, a1, -814
                  sra          s5, a5, s10
                  addi         ra, t3, 1925
                  slt          sp, s1, a6
                  ori          s9, s2, 748
                  xori         a7, t2, -37
                  sll          s8, s11, a6
                  slt          gp, a2, t4
                  ori          a0, t4, 501
                  nop
                  sub          zero, t4, s4
                  xor          t1, a2, s2
                  andi         a3, s7, -1171
                  sltu         s7, t6, a6
                  add          s8, s0, a6
                  slti         t2, sp, -1053
                  addi         s0, a6, -1509
                  auipc        gp, 424299
                  sll          s4, a7, a5
                  sltu         s4, s0, t5
                  sll          s4, ra, zero
                  srai         t3, t3, 13
                  srai         t0, s0, 11
                  ori          t2, t4, -162
                  addi         a7, tp, 591
                  lui          sp, 272380
                  add          a0, s9, t4
                  slt          t2, t2, a5
                  srli         s7, a2, 20
                  sra          s2, t3, t2
                  srl          sp, t4, s8
                  auipc        s0, 665453
                  addi         t2, s3, -1515
                  or           s6, a2, t6
                  slti         a3, a4, 516
                  slti         a3, s6, -295
                  auipc        t6, 557363
                  sltiu        ra, t2, -345
                  auipc        t2, 120086
                  srl          t4, t6, s11
                  sltiu        t2, a5, 1975
                  nop
                  sll          s1, s7, s2
                  xori         t3, zero, 585
                  srli         s5, t1, 18
                  slti         a1, a3, 560
                  slt          s10, a2, s7
                  nop
                  nop
                  slt          a3, a5, a6
                  ori          a7, t5, -1614
                  or           a1, t2, tp
                  sltu         t0, a5, a6
                  srl          a7, ra, t2
                  sltu         a7, s8, s6
                  and          gp, sp, t5
                  sra          t3, t4, a0
                  nop
                  srai         s5, a6, 29
                  slti         t5, a4, -1648
                  or           t3, s9, a5
                  sltu         s6, a6, a1
                  auipc        t6, 829490
                  sra          s4, s1, s11
                  or           t2, s8, s11
                  sltu         tp, s9, sp
                  nop
                  and          a6, a0, a2
                  or           a3, s9, s7
                  sub          s6, t6, s1
                  and          s5, s10, a1
                  or           s6, s0, s1
                  srl          s8, ra, s5
                  or           s10, s2, a2
                  add          t1, a3, a5
                  slt          ra, a3, sp
                  lui          t5, 58229
                  sll          s0, s8, a5
                  xor          sp, s1, a1
                  addi         a3, t4, 550
                  andi         sp, s8, 544
                  slli         t0, gp, 30
                  auipc        s8, 151985
                  xor          a0, s10, t1
                  srli         s9, s9, 21
                  and          s2, zero, s4
                  slt          s4, s0, s8
                  srl          a6, t4, s10
                  andi         s6, s2, 1207
                  sub          s10, a4, a2
                  sltu         a3, s4, t6
                  xori         ra, s5, 181
                  sub          zero, zero, s3
                  slt          t5, a3, a4
                  sltu         a0, s2, s7
                  xor          t3, a7, s8
                  xori         s2, t5, -1861
                  or           t4, t4, t4
                  sub          ra, s8, ra
                  slt          s7, s3, s2
                  sub          s2, tp, s9
                  andi         s2, a6, 1305
                  srl          a6, a1, t1
                  sra          s8, s9, s4
                  sltiu        s10, tp, -86
                  sll          t1, a4, ra
                  srli         a6, s4, 19
                  or           a6, s1, a5
                  xori         s0, t4, -1868
                  slt          t3, a0, s8
                  sll          s5, s7, a4
                  slt          s1, t1, a2
                  lui          sp, 686908
                  ori          t1, s6, -1159
                  auipc        t5, 309373
                  sll          t5, s2, s10
                  sltu         s7, s6, t4
                  or           s2, s3, a4
                  sltu         t2, s9, tp
                  andi         s0, a2, 888
                  nop
                  ori          t5, a3, -1425
                  sra          zero, s4, s11
                  lui          a7, 90310
                  and          a5, a2, a1
                  slt          ra, t1, a3
                  srl          a7, s1, a6
                  slt          a7, t3, tp
                  srli         s2, t1, 11
                  sll          t2, t5, t3
                  slti         a6, gp, -622
                  or           s4, t0, a5
                  srl          s2, s0, t5
                  xori         zero, s11, -1641
                  ori          sp, a2, 530
                  srl          t5, tp, t1
                  lui          s8, 239601
                  andi         s9, s9, 304
                  srli         t1, s9, 20
                  addi         t4, ra, -1001
                  nop
                  sltu         s11, s4, t1
                  sll          s7, t0, s2
                  nop
                  sub          a6, s10, s10
                  add          s5, t0, a3
                  sltu         s8, t2, a0
                  and          zero, s7, t3
                  or           tp, ra, t4
                  sltu         t5, t6, t4
                  auipc        tp, 744009
                  andi         t1, s5, -679
                  srli         gp, t0, 26
                  sub          t0, t5, t3
                  sub          t4, a6, a3
                  or           a6, a0, s4
                  xor          a1, a3, zero
                  slti         s8, t5, -1195
                  slti         s7, s10, 1896
                  srl          s10, s1, s4
                  or           tp, t1, s4
                  add          t6, a0, a6
                  andi         t2, s10, -1823
                  sub          t0, t3, a2
                  sub          s8, t2, s3
                  sltu         t6, s1, a0
                  andi         t1, s6, -556
                  add          t6, a1, s1
                  auipc        s2, 636619
                  srai         t4, sp, 10
                  and          a7, t2, a6
                  srai         t2, tp, 1
                  ori          t6, s4, -1679
                  sra          s5, a6, s9
                  slli         s6, zero, 3
                  sltiu        t5, a1, -1770
                  sll          s11, s0, ra
                  or           s4, a3, s7
                  srl          s7, ra, s6
                  sra          t0, gp, s3
                  add          s11, t5, s4
                  auipc        s2, 942706
                  srl          tp, gp, a2
                  sub          s8, sp, s10
                  sra          t4, s5, a0
                  xori         t4, s6, 1949
                  nop
                  sub          gp, a6, a4
                  sra          s8, a3, t2
                  sub          t2, s3, a2
                  slli         a6, s11, 21
                  xori         s2, t6, 1174
                  or           t3, s7, tp
                  auipc        s9, 974226
                  auipc        s5, 540893
                  slt          s2, a7, s9
                  addi         t4, s3, 1038
                  slli         s10, tp, 31
                  sll          tp, a4, a4
                  sll          s4, a7, s2
                  andi         s10, s11, -1304
                  xor          t6, s6, s0
                  auipc        a0, 646487
                  srai         t4, s10, 17
                  ori          t6, gp, -200
                  sltu         s8, t4, t2
                  lui          t3, 514968
                  lui          s1, 27667
                  slli         a7, a6, 31
                  auipc        s5, 996162
                  slti         a5, a0, -762
                  auipc        t0, 613120
                  auipc        t0, 66222
                  and          sp, t3, ra
                  sub          s7, a6, a1
                  srai         s5, s6, 8
                  xori         t5, a0, 1144
                  sltu         s4, sp, s2
                  slt          tp, sp, t0
                  xori         s7, gp, -966
                  srli         a6, a2, 7
                  lui          a7, 885767
                  or           a3, a2, s2
                  xori         t6, s2, -241
                  slt          a3, s9, s1
                  xori         s4, t2, 838
                  srai         s7, a1, 25
                  srl          tp, s3, a7
                  sltiu        s9, a3, -2015
                  ori          s0, zero, -1285
                  slti         t2, t1, 729
                  andi         t3, gp, 740
                  srli         a3, s9, 16
                  slt          a5, s7, s8
                  ori          t2, t4, 1954
                  or           s4, tp, t0
                  srai         a5, s10, 17
                  ori          t2, sp, 1722
                  srl          t6, a5, a7
                  lui          t2, 43225
                  slli         s8, s3, 5
                  xori         gp, t1, -378
                  srl          s1, s7, a5
                  slli         s5, t4, 9
                  auipc        a3, 47152
                  sltiu        zero, s4, -1452
                  add          t2, s2, a0
                  srl          t6, a0, s0
                  sltu         t0, s5, a0
                  slli         t5, s0, 7
                  xor          a7, t6, a5
                  srl          s10, a4, t5
                  sll          t0, t5, tp
                  xori         t5, t2, -439
                  slt          t0, a3, s6
                  slli         sp, a4, 26
                  xori         s0, t1, -1118
                  or           s6, a2, t1
                  nop
                  lui          sp, 707266
                  srli         s8, t6, 20
                  srl          t6, s9, s5
                  andi         t6, s9, -1745
                  sra          sp, t4, zero
                  xori         a0, s7, -1050
                  sll          a6, sp, a2
                  slti         a1, a1, -808
                  sub          t3, t6, a3
                  xori         t3, s7, -209
                  slti         s10, t6, 635
                  xor          s1, s2, t1
                  and          s10, s11, a1
                  add          a6, s11, t6
                  addi         s0, t4, 626
                  srl          a3, s5, a6
                  srli         zero, s10, 4
                  xor          a5, a4, s5
                  and          a3, zero, sp
                  slt          s4, s0, s7
                  addi         t2, t1, -899
                  auipc        sp, 399161
                  xori         s10, tp, -200
                  ori          tp, s1, 147
                  xor          s10, a1, a5
                  ori          s4, t6, 1896
                  or           s1, s4, gp
                  lui          gp, 160644
                  and          a1, t1, s10
                  srai         tp, t4, 1
                  lui          s9, 449081
                  srai         a5, s8, 31
                  sltu         s10, a7, tp
                  auipc        t1, 810900
                  xor          zero, a5, a3
                  srli         zero, t2, 0
                  andi         t2, a3, -1026
                  slt          a6, s0, a3
                  slt          t1, tp, s10
                  add          a5, t4, s4
                  sltiu        a5, s6, -1703
                  srai         s1, s6, 1
                  srli         s10, s1, 5
                  sltu         s1, a7, ra
                  addi         a6, s11, -495
                  sltiu        t6, t1, 497
                  xori         a3, a2, 1677
                  slti         a6, tp, 1910
                  srl          tp, t6, s6
                  sra          a7, a6, gp
                  srl          s5, s11, tp
                  sub          s5, sp, t6
                  sra          s1, gp, a5
                  srli         t5, t5, 31
                  xor          tp, s6, s7
                  and          tp, s1, a3
                  andi         t3, a1, 1133
                  andi         a0, s3, 718
                  andi         t5, t3, 1540
                  srl          a6, s11, t2
                  add          a3, t2, s1
                  slli         s0, a7, 19
                  slli         a1, s8, 2
                  srl          a3, t0, s1
                  srai         t5, s9, 21
                  sltu         s5, s2, a2
                  slli         ra, s3, 3
                  slti         t0, s1, 530
                  addi         t5, s5, -1905
                  add          a7, s4, s5
                  addi         s8, a7, 404
                  sltiu        a7, s9, -325
                  or           a7, t6, s10
                  sll          s0, a3, sp
                  srl          a1, s5, t0
                  andi         s11, a1, 1826
                  ori          ra, a6, -1976
                  sltu         s2, t3, s9
                  and          s6, t3, s9
                  srai         t1, ra, 23
                  slt          s9, t6, t1
                  sll          t6, a2, a7
                  and          a1, t6, t4
                  lui          t3, 981131
                  and          t0, t3, s8
                  addi         gp, t4, -80
                  slt          a1, s3, s4
                  sll          a3, a7, s3
                  slti         t1, s7, -1541
                  xori         a0, a1, -352
                  xor          s2, s1, s5
                  slt          s7, tp, ra
                  ori          a5, gp, -930
                  or           s8, t1, t5
                  slti         a1, t2, 1594
                  sub          s8, zero, s7
                  srli         s8, tp, 20
                  auipc        s10, 337504
                  sub          a7, s3, a2
                  srai         s0, gp, 27
                  or           s9, t5, a7
                  ori          ra, s4, -1901
                  andi         tp, tp, -969
                  and          sp, t0, a3
                  add          s2, s5, a7
                  srai         gp, s9, 7
                  add          a7, s7, s8
                  nop
                  slt          s7, t1, s5
                  sltu         a6, a3, s5
                  andi         zero, s3, 30
                  or           s1, t0, a6
                  xori         t4, a6, -1683
                  add          a1, s9, s7
                  and          t1, a1, t0
                  li           s0, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           a6, 0x80000000
                  li           s4, 0x0
                  li           gp, 0xbb111149
                  li           a5, 0x2c5955c5
                  li           s6, 0x80000000
                  li           t3, 0x4ef8a243
                  li           ra, 0xffffffff
                  li           tp, 0x0
                  li           a1, 0xffffffff
                  sub          a1, gp, a6
                  add          a5, t3, s6
                  add          a5, s0, a6
                  nop
                  add          s4, a6, s4
                  lui          s4, 992357
                  add          t3, tp, s0
                  auipc        t3, 795405
                  auipc        ra, 91539
                  sub          tp, a1, a5
                  auipc        s0, 815470
                  sub          ra, a6, s6
                  nop
                  lui          gp, 131038
                  auipc        s4, 433354
                  auipc        ra, 36928
                  addi         s6, t3, -702
                  auipc        tp, 788680
                  lui          s4, 51465
                  lui          s4, 1028134 #end riscv_int_numeric_corner_stream_12
                  andi         t4, t3, -1936
                  xori         s8, gp, -57
                  or           s0, s7, ra
                  andi         t3, s2, -602
                  sltiu        a0, s2, -867
                  slli         a5, tp, 26
                  slli         tp, t1, 4
                  srai         a5, t3, 6
                  sra          t4, a7, s10
                  addi         sp, t2, -1353
                  sll          s2, zero, a6
                  slli         s2, t1, 23
                  slt          s5, ra, t5
                  and          t0, s8, ra
                  add          sp, s11, t4
                  slti         a7, s6, 1183
                  srli         a3, t2, 7
                  srli         t3, t3, 11
                  add          s8, s4, tp
                  auipc        s4, 896771
                  slli         gp, ra, 24
                  add          ra, s9, s4
                  srl          zero, a0, a3
                  andi         ra, a7, 0
                  addi         s2, zero, 370
                  sll          t1, a2, a7
                  slli         s11, t0, 17
                  and          a0, a1, s0
                  ori          s5, t6, -1889
                  and          t3, t0, t4
                  andi         s11, tp, -1839
                  nop
                  srli         a7, a0, 25
                  sra          a0, t4, t2
                  xori         a7, a7, 727
                  andi         t4, ra, -733
                  sltu         a7, t4, s5
                  srl          t3, t2, a4
                  srl          t2, a1, t0
                  srai         s11, t1, 16
                  ori          s10, a3, -1920
                  slt          s7, a4, t4
                  srli         sp, s3, 27
                  addi         s5, zero, -1794
                  sltu         t2, s10, gp
                  sltu         s10, a6, a3
                  srai         s5, s6, 18
                  addi         t6, zero, 1989
                  and          t1, zero, s6
                  xori         s0, a0, 1383
                  andi         t2, t0, -872
                  andi         tp, a0, 1908
                  srai         s10, a1, 20
                  slli         s7, t6, 14
                  addi         t5, t5, 526
                  slt          t0, t1, s10
                  addi         zero, tp, 1026
                  lui          s8, 33754
                  sub          s1, sp, s2
                  slt          t3, a0, a7
                  sub          tp, s3, s11
                  srl          a6, s0, a6
                  xor          t4, a0, s8
                  addi         t6, a2, 1231
                  add          s0, s5, t0
                  sra          s4, a2, tp
                  sub          t1, t2, ra
                  sra          a3, s11, zero
                  xori         s9, a6, 91
                  auipc        a7, 295478
                  add          t5, ra, a6
                  slti         s0, s1, 1076
                  addi         gp, s6, -514
                  sra          t1, s3, t5
                  sltiu        s0, s6, -599
                  and          s9, s4, a5
                  sra          tp, s9, a3
                  auipc        a5, 66311
                  slli         s2, s1, 14
                  xori         t6, s11, 668
                  sltu         s8, t1, s4
                  lui          gp, 518237
                  srli         s4, a2, 14
                  sra          s0, s0, t4
                  sll          a7, a2, s7
                  slti         t5, t5, -1477
                  slt          t1, sp, t5
                  slti         ra, sp, 290
                  add          zero, s1, a4
                  nop
                  sltiu        t1, a2, -572
                  srl          s1, a1, gp
                  srli         t4, s9, 13
                  lui          s6, 568612
                  and          ra, sp, t3
                  auipc        gp, 747214
                  ori          s5, a1, -739
                  xor          s1, sp, s4
                  sll          zero, a5, a3
                  slt          s2, a5, t5
                  andi         sp, s4, -435
                  slli         a7, t2, 7
                  add          t6, s7, ra
                  auipc        a3, 9016
                  addi         s8, a5, -44
                  srl          s11, t2, zero
                  and          s11, gp, gp
                  and          a7, t1, zero
                  srli         s10, a6, 13
                  slti         s4, t1, 1100
                  or           a5, sp, a3
                  slli         a1, t5, 5
                  sra          t6, s0, s11
                  xori         a5, sp, -1209
                  sub          gp, t0, t5
                  auipc        s6, 973545
                  ori          t6, t4, -1838
                  auipc        t5, 633129
                  sub          s9, s7, a7
                  sltu         t3, t2, a2
                  auipc        s1, 991349
                  or           t3, t4, a6
                  slt          tp, t4, s5
                  addi         s0, s0, -1910
                  xor          zero, s10, a7
                  slli         tp, a3, 0
                  sltu         t2, ra, zero
                  sll          s10, a5, s2
                  or           a7, a5, s7
                  nop
                  srai         t4, a5, 13
                  sub          t5, a2, t1
                  addi         a5, t5, 914
                  xori         a1, t0, 247
                  srli         s10, s5, 19
                  sll          s2, t0, t1
                  srl          s6, a2, a3
                  lui          a5, 186334
                  andi         s8, t4, 1544
                  sltu         a3, a2, a5
                  sra          a0, t2, s8
                  and          s6, s8, ra
                  ori          s9, s0, -1141
                  slli         a0, t4, 1
                  slti         sp, s1, -1600
                  srli         s0, t4, 12
                  lui          s9, 455319
                  sltu         t2, gp, s8
                  sltu         a7, s0, s5
                  andi         s0, a7, -470
                  slti         a1, a6, -682
                  and          s2, s0, t6
                  sltiu        s11, t1, 509
                  sltu         a0, s1, a7
                  lui          t4, 278786
                  srai         tp, s3, 8
                  sra          s0, s5, s4
                  srl          s7, t3, t0
                  xori         s5, ra, 1726
                  slt          zero, t0, t6
                  ori          t5, s5, 714
                  andi         t6, s10, -1475
                  add          gp, s4, a6
                  srl          s5, s10, s6
                  sra          s7, s6, a6
                  sltiu        ra, t4, 478
                  ori          s6, a5, -929
                  srai         s4, s4, 26
                  sltu         gp, t5, s8
                  nop
                  slt          s4, sp, s0
                  lui          t1, 20350
                  ori          ra, t6, 766
                  lui          ra, 595991
                  slli         t0, s11, 17
                  sub          a6, gp, s3
                  addi         t2, a0, 872
                  auipc        t2, 462615
                  ori          a3, s8, -974
                  slli         t0, t0, 29
                  ori          s11, s4, -39
                  addi         s0, ra, 359
                  or           s10, tp, zero
                  nop
                  and          s7, s11, a5
                  lui          t2, 1001010
                  ori          a7, s0, 759
                  slli         s2, s6, 10
                  sra          t1, t3, s3
                  xori         a5, a1, -1173
                  xori         t6, a0, 38
                  xori         s9, t2, 1400
                  sra          a1, a2, t2
                  slti         t0, s8, -548
                  sra          s9, t2, s1
                  or           s5, a7, s9
                  ori          s2, t3, 103
                  sltiu        zero, s1, 986
                  sltu         gp, s9, t2
                  sltu         t2, a0, s0
                  ori          a0, sp, -1763
                  sll          tp, a1, s6
                  ori          s11, a6, 1947
                  xor          s5, tp, s9
                  sub          s6, a1, a6
                  sltiu        s5, s1, -1911
                  sll          s5, a0, t2
                  slli         gp, s5, 17
                  lui          t5, 436294
                  xori         sp, t0, -528
                  nop
                  xori         t4, a1, 511
                  ori          t3, t6, 1148
                  slli         a1, t0, 1
                  lui          s7, 15468
                  slti         t5, s10, 1191
                  auipc        a6, 896322
                  srl          s2, s1, s0
                  nop
                  sll          s10, tp, t6
                  add          t3, s5, s11
                  and          s0, a1, zero
                  srli         tp, t0, 26
                  or           a5, t4, s7
                  slt          s7, s3, sp
                  slti         a7, gp, 856
                  xor          a5, s8, a5
                  sltu         s10, zero, ra
                  sltiu        s11, s8, -546
                  xori         a1, t5, 1210
                  slli         a5, s11, 17
                  sltu         t5, zero, gp
                  nop
                  ori          sp, a4, -1365
                  srli         t5, a1, 22
                  srli         s4, ra, 23
                  slti         tp, a3, 1826
                  or           s7, t3, sp
                  sub          s8, t0, sp
                  ori          a6, sp, -100
                  nop
                  sltiu        t6, zero, -541
                  add          a1, a7, t2
                  auipc        a3, 623079
                  srl          t2, s3, s0
                  lui          gp, 957727
                  or           a1, a6, s5
                  sra          t6, s1, s10
                  sltiu        sp, s4, 1508
                  xori         a6, ra, -2012
                  sltu         sp, a7, t2
                  andi         t5, t3, -825
                  or           tp, ra, s3
                  ori          a0, a4, -148
                  slli         t1, s11, 28
                  ori          t4, gp, -371
                  and          tp, s6, a1
                  auipc        a7, 930221
                  slti         a6, s1, 88
                  sll          s7, a0, s1
                  sra          a1, s6, a4
                  sll          a5, t6, a0
                  slt          s9, a2, gp
                  sub          s9, a5, s11
                  sltiu        t3, s7, 1519
                  andi         gp, s2, -1850
                  addi         tp, s6, 654
                  andi         a3, t2, 884
                  srli         tp, t2, 29
                  addi         a7, zero, 415
                  addi         tp, a5, 2013
                  sub          a6, a0, t1
                  srai         s1, a0, 25
                  xor          s6, tp, zero
                  sltu         s6, gp, t5
                  srl          t0, a7, tp
                  sll          t6, t5, a4
                  sltiu        s8, zero, -230
                  srl          t2, s4, s6
                  xori         t3, a5, 1203
                  xori         s7, s9, -676
                  sub          s7, a1, a6
                  lui          a5, 304013
                  srli         a5, s6, 21
                  sltu         a3, tp, t6
                  sub          t1, gp, s10
                  sltiu        s10, gp, 1815
                  add          t4, s2, tp
                  and          s8, s0, t4
                  sll          gp, s4, s11
                  xori         s7, a6, -1580
                  auipc        s1, 799113
                  or           ra, t0, tp
                  andi         a0, t2, 1901
                  slti         t4, s8, 1469
                  sltu         s6, a3, t4
                  sra          gp, a1, s2
                  sra          sp, t1, t4
                  srai         ra, t4, 15
                  sra          s10, a6, a4
                  slti         a3, a3, 1449
                  sll          s0, s4, s7
                  slt          s4, t0, t2
                  xori         s9, a6, -1384
                  nop
                  sub          s0, ra, s8
                  xori         t6, t6, 285
                  xori         t2, sp, -855
                  nop
                  srai         s4, s9, 15
                  xor          a1, s4, s2
                  srli         t6, t2, 9
                  sltu         s2, zero, t1
                  auipc        t1, 497776
                  sra          t1, t3, s5
                  srai         tp, a5, 10
                  nop
                  ori          t2, t2, -820
                  or           s4, a3, a6
                  xor          s10, t3, s9
                  sltiu        s0, a5, -1975
                  andi         t5, ra, 1746
                  xor          t0, a0, s2
                  slti         tp, a0, 1582
                  lui          s9, 329940
                  addi         a5, s6, -1175
                  andi         t6, t0, -1264
                  ori          a1, s4, 116
                  or           t4, t6, s10
                  xor          a0, a6, a3
                  srai         t0, s6, 14
                  or           t4, s5, a2
                  sub          zero, t5, a5
                  sra          sp, t0, a3
                  slt          zero, s6, tp
                  sub          s5, tp, a4
                  sub          a1, s1, t6
                  lui          s1, 820572
                  srai         a7, s3, 10
                  srai         s8, s9, 20
                  srai         zero, t0, 26
                  sll          s0, a6, a5
                  auipc        gp, 850556
                  sra          s5, s11, s0
                  slti         s11, t6, -1085
                  srli         gp, s9, 21
                  srli         t5, a2, 18
                  sll          t2, a5, a3
                  auipc        s9, 542461
                  add          t0, s2, t3
                  addi         s11, t5, -1625
                  sltiu        a1, t1, 902
                  srai         s2, tp, 0
                  andi         t6, s5, 996
                  or           s5, a1, t4
                  and          s10, t3, t2
                  sll          t3, t2, a1
                  sltu         t5, gp, a2
                  srli         s10, a2, 0
                  srai         s9, s3, 3
                  sub          s2, sp, a4
                  sltu         sp, s1, sp
                  nop
                  lui          s1, 125752
                  nop
                  addi         s2, gp, 961
                  srl          s0, t0, s8
                  slt          s1, a5, s9
                  sltiu        s4, a6, 1035
                  xori         t1, a7, -1340
                  auipc        a7, 781363
                  srli         s11, s1, 11
                  auipc        t1, 745626
                  addi         s6, s11, -437
                  xori         s4, s9, -577
                  srai         s10, ra, 0
                  slti         zero, s7, 276
                  sub          ra, s0, a1
                  ori          zero, s0, -433
                  lui          s11, 28342
                  xor          a6, s5, s11
                  sra          a3, a4, s9
                  sltiu        s8, a0, -886
                  auipc        t2, 872115
                  xor          s8, ra, s6
                  sltiu        s6, sp, 42
                  sll          s7, s9, s4
                  and          a1, s4, s1
                  xori         t6, t6, -1765
                  nop
                  srai         a3, a5, 16
                  srli         s5, t2, 13
                  sub          gp, s11, a1
                  srli         t0, s9, 27
                  srai         s6, s7, 12
                  slt          s2, t0, s4
                  sub          zero, t5, a2
                  and          s1, s3, s4
                  xori         s1, a3, -465
                  xori         a6, s2, 1986
                  auipc        gp, 872183
                  xori         a1, tp, 1588
                  sub          t0, a0, s1
                  srli         t0, s6, 18
                  andi         t3, s8, -68
                  nop
                  xori         s6, tp, 1328
                  and          s6, s11, s6
                  auipc        ra, 764432
                  sltu         s8, sp, s0
                  slti         t4, a6, 272
                  srai         s0, s5, 18
                  slli         s1, tp, 17
                  auipc        s9, 537583
                  ori          s10, a5, 718
                  slli         t1, s3, 0
                  and          ra, a3, s7
                  sra          zero, t6, a0
                  nop
                  slti         s11, s4, 795
                  nop
                  sra          s5, a4, s5
                  add          t4, s1, s3
                  slt          gp, a3, a7
                  sra          ra, s9, a4
                  sltu         t4, s8, s0
                  andi         a1, a6, -612
                  lui          s6, 1007335
                  sll          t4, a0, a1
                  addi         t0, s5, -405
                  sra          s4, a7, ra
                  srai         s9, a3, 5
                  slli         s0, a1, 4
                  xori         tp, s6, 1793
                  lui          s2, 57656
                  slt          s2, s4, a3
                  srl          t4, s0, gp
                  sra          s10, a0, t6
                  sltiu        a5, sp, -1344
                  ori          t6, a4, -1878
                  srl          s1, s11, t2
                  or           t2, t6, a1
                  and          a7, s5, a4
                  or           s6, t0, a1
                  add          t0, s8, tp
                  sra          s5, a3, tp
                  sltu         a5, a4, t2
                  slti         t3, a7, -1908
                  sltu         s2, s3, t0
                  sltu         s4, s11, a5
                  srli         s8, a0, 17
                  add          s7, s3, t0
                  and          t3, a2, s11
                  auipc        s2, 768443
                  srl          tp, s0, a0
                  sra          tp, a2, s2
                  andi         s7, s9, -735
                  sltu         t3, s0, t4
                  sub          tp, zero, t2
                  and          s10, a4, t3
                  nop
                  and          tp, s6, zero
                  srl          s9, t6, a3
                  xori         s5, a1, 825
                  srl          gp, tp, s2
                  add          a5, s4, a0
                  xor          zero, zero, a5
                  add          a6, a2, s9
                  slli         a6, t5, 18
                  ori          s0, s0, -1709
                  slt          s8, sp, a7
                  or           s9, t4, zero
                  andi         a5, sp, -1161
                  and          s1, s11, s5
                  srai         t3, s3, 25
                  ori          sp, s6, 1916
                  lui          sp, 421248
                  srli         a1, t3, 17
                  and          s6, a6, gp
                  auipc        s0, 794511
                  slli         gp, ra, 18
                  li           t3, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           a7, 0xc739b7c9
                  li           t0, 0x0
                  li           a3, 0x80000000
                  li           s8, 0x80000000
                  li           sp, 0x80000000
                  li           s1, 0x0
                  li           s9, 0x80000000
                  li           a5, 0x0
                  li           s2, 0x223b74ab
                  add          s8, sp, t0
                  auipc        s1, 347493
                  add          s2, s8, s2
                  auipc        sp, 980278
                  auipc        t3, 415160
                  sub          a3, t0, a5
                  nop
                  addi         s8, a7, -325
                  auipc        a3, 425611
                  auipc        t3, 349485
                  addi         a5, s2, -1608
                  lui          s9, 428035
                  sub          a3, t3, s1
                  nop
                  sub          a7, a3, s1
                  addi         a5, s9, 274
                  add          s8, s9, s1
                  addi         s2, t3, 9
                  addi         s1, a7, -294
                  auipc        s1, 385812 #end riscv_int_numeric_corner_stream_1
                  sra          s10, a5, s9
                  xor          a7, s3, tp
                  or           t4, a2, tp
                  sltu         t2, s6, s6
                  addi         s7, s6, 640
                  sub          t5, s10, t1
                  sltu         s4, a5, s7
                  add          t6, s1, s6
                  and          a6, a6, s11
                  addi         a5, t4, 302
                  sra          a0, a2, t3
                  xor          s6, s11, s11
                  sra          a3, tp, t1
                  add          s4, t3, s5
                  addi         sp, s9, 1573
                  srai         s1, s5, 13
                  slli         zero, tp, 2
                  nop
                  srl          s9, tp, s3
                  sltiu        t1, tp, 1746
                  andi         s1, s3, 876
                  srli         s11, s7, 27
                  sltiu        s4, t2, 756
                  sltu         t4, a5, s4
                  srl          t4, s6, a7
                  lui          gp, 349883
                  lui          tp, 450310
                  xori         t6, a2, 369
                  ori          t1, t6, -908
                  sltiu        s8, t5, -996
                  ori          s4, a6, -1742
                  srli         t0, tp, 27
                  nop
                  slti         s9, s10, 865
                  srli         a0, t3, 15
                  nop
                  xori         s4, s7, 617
                  slti         a0, s8, -1907
                  addi         s0, s0, 1403
                  slt          a1, t3, t6
                  slti         s5, tp, -1946
                  xor          s8, a0, s10
                  nop
                  slti         t0, s5, -889
                  sltiu        a5, s9, -1922
                  sltiu        gp, t3, 499
                  srli         s11, t1, 7
                  srli         tp, a7, 14
                  sub          a6, a2, s9
                  slt          s0, a4, a2
                  xor          a7, t4, s3
                  and          t3, a7, s7
                  add          tp, s0, zero
                  andi         a0, a0, -1696
                  nop
                  addi         a7, s0, -876
                  xor          a1, s4, s3
                  add          t1, a7, s10
                  slti         t4, a2, -831
                  xori         s2, t3, 406
                  auipc        a5, 390104
                  sltu         a0, t4, tp
                  xor          tp, s8, t0
                  or           s2, a7, t1
                  sltu         t0, s9, s0
                  slti         ra, s11, -351
                  xori         sp, s11, 1093
                  sll          s1, s0, s8
                  srai         s9, a2, 9
                  auipc        sp, 741581
                  andi         t6, t6, -893
                  srai         s5, t3, 22
                  add          a1, a0, s5
                  addi         s5, s3, -1982
                  slt          s11, t1, t5
                  srli         t2, s1, 29
                  slt          a5, s4, gp
                  srl          s9, a1, s10
                  sra          s10, t6, s0
                  slli         a7, ra, 7
                  addi         t3, s0, 1355
                  sub          zero, s2, a6
                  auipc        t6, 141349
                  slli         a3, s6, 5
                  xori         s8, a2, -1646
                  ori          zero, ra, -726
                  and          a0, s3, t4
                  ori          a0, s7, 1217
                  slt          s8, a1, s7
                  addi         s5, s0, 893
                  sub          tp, t2, gp
                  srli         a7, a0, 3
                  lui          s0, 319927
                  xori         zero, s4, 1737
                  sltiu        s1, s8, 570
                  lui          t2, 823049
                  addi         s6, s9, -697
                  lui          s2, 929018
                  nop
                  srli         tp, t6, 17
                  slli         s4, a0, 29
                  slli         sp, t2, 23
                  slli         tp, t6, 4
                  lui          sp, 403596
                  andi         s8, ra, 1897
                  or           a3, sp, s7
                  lui          t2, 1011745
                  sltu         s2, a6, t4
                  xor          s0, gp, s7
                  ori          s9, t0, -1003
                  srli         a0, t0, 19
                  auipc        gp, 692493
                  srl          zero, t2, a2
                  addi         s1, s8, -961
                  sub          s8, t1, t6
                  addi         gp, s5, 1378
                  sub          tp, a3, s10
                  lui          gp, 1017207
                  slt          t4, a3, s3
                  xor          a0, s3, s9
                  nop
                  and          a6, zero, t3
                  add          s2, t2, s4
                  auipc        a3, 706527
                  and          a6, s6, t5
                  srli         zero, gp, 20
                  sltiu        gp, t0, -988
                  srli         s7, t2, 0
                  slt          s4, t6, s3
                  slli         s6, sp, 3
                  sra          s7, s7, s9
                  nop
                  slti         s1, a4, 963
                  slt          gp, s0, s7
                  ori          tp, a4, -399
                  xor          t4, s9, t2
                  sltiu        s11, s11, -1661
                  slti         s7, s11, 1569
                  lui          a7, 60555
                  addi         a1, a1, 1016
                  ori          t6, t2, 1620
                  sltu         s11, s8, a0
                  srai         s0, zero, 15
                  nop
                  sub          sp, t2, t5
                  xor          a1, ra, a2
                  srai         a7, s10, 31
                  slti         s5, zero, 1986
                  andi         sp, a5, 1648
                  sltiu        t5, s0, -1358
                  sltiu        sp, a4, 486
                  sll          a7, t2, s1
                  sltiu        s4, s8, -846
                  lui          s9, 992069
                  ori          t4, ra, -1437
                  slti         s8, gp, -1833
                  slli         t4, t3, 5
                  nop
                  srl          a3, s8, s11
                  auipc        s1, 901224
                  xori         t0, s4, -956
                  slt          s10, s10, s4
                  and          a0, t2, a5
                  nop
                  xor          s8, a5, s5
                  or           s7, zero, a0
                  sra          t1, t0, t5
                  sll          s4, t2, s5
                  srl          t0, a7, s8
                  slt          s11, s1, a2
                  xori         s11, a4, -78
                  xori         ra, s1, -1514
                  slli         zero, t5, 31
                  slli         s4, s9, 29
                  ori          a6, s2, -1372
                  addi         s10, t0, 1828
                  srai         t2, s2, 10
                  srl          a6, gp, a7
                  sra          a1, s4, zero
                  slti         t3, a5, -965
                  and          s11, a7, s6
                  sub          s11, tp, t2
                  addi         t5, t5, -1087
                  xor          t4, s9, gp
                  slti         t3, s4, -1163
                  sub          a5, a6, s8
                  add          gp, s4, zero
                  srai         gp, s0, 16
                  slt          t6, s4, s3
                  slti         ra, s2, 2
                  sltiu        a3, zero, -628
                  slli         a6, a4, 25
                  addi         zero, a5, 46
                  auipc        s9, 773637
                  add          t6, t5, a1
                  addi         s9, a6, 1821
                  or           zero, s4, a4
                  addi         a1, a3, 525
                  slt          a0, s4, tp
                  ori          a1, s0, -1825
                  srli         a3, s5, 17
                  sltiu        t1, t2, 1528
                  sltiu        s11, t0, -2020
                  or           s11, t5, t4
                  slt          s8, t3, t0
                  srai         t1, a4, 4
                  ori          s7, gp, -433
                  slt          s7, a2, t4
                  srl          sp, s3, s11
                  sub          s0, a4, t0
                  sltu         tp, s11, s1
                  li           a1, 0x9762dea9 #start riscv_int_numeric_corner_stream_4
                  li           a3, 0x4c1a396a
                  li           s7, 0x527bc164
                  li           t1, 0xffffffff
                  li           s6, 0xffffffff
                  li           s5, 0xa970bd8c
                  li           t4, 0x35794b51
                  li           a7, 0xffffffff
                  li           s0, 0xffffffff
                  li           s2, 0x0
                  sub          a7, a7, a7
                  auipc        s6, 14186
                  auipc        s5, 481284
                  addi         t1, a7, 844
                  addi         t1, t4, 1079
                  nop
                  add          a3, a7, s7
                  lui          s5, 558851
                  nop
                  auipc        a3, 100554
                  addi         t4, s7, 608
                  lui          a1, 103728
                  auipc        t4, 665641
                  sub          s5, t1, t4
                  lui          t4, 635889
                  add          s0, a1, s2
                  nop
                  nop
                  nop
                  lui          t1, 608754
                  lui          s7, 674726
                  add          a7, s7, a7
                  sub          a7, s6, a7
                  add          t1, s7, t4
                  auipc        s6, 529481
                  sub          t4, t1, s2
                  add          s2, t4, s7
                  auipc        s0, 671880
                  lui          s2, 62604 #end riscv_int_numeric_corner_stream_4
                  srai         tp, t6, 10
                  slti         t6, t4, -1278
                  ori          s9, a1, -2039
                  nop
                  xor          t5, zero, tp
                  sltiu        zero, a2, 204
                  nop
                  and          sp, t3, t1
                  and          sp, zero, s10
                  li           s8, 0x7e5aa38c #start riscv_int_numeric_corner_stream_16
                  li           s4, 0x5154e108
                  li           s7, 0x0
                  li           t4, 0x0
                  li           gp, 0x80000000
                  li           s11, 0x0
                  li           s0, 0x80000000
                  li           a1, 0xfd52da59
                  li           s10, 0xffffffff
                  li           s9, 0x0
                  lui          s10, 170452
                  nop
                  auipc        a1, 555099
                  sub          s7, t4, s7
                  auipc        s4, 527450
                  lui          s9, 526441
                  nop
                  lui          s9, 722932
                  nop
                  addi         s0, s11, 1694
                  sub          t4, s10, gp
                  lui          t4, 229860
                  lui          s9, 842212
                  nop
                  auipc        gp, 732721
                  sub          gp, t4, s8
                  add          s7, s4, s10
                  lui          s4, 198123
                  add          s0, s9, s0
                  addi         s4, s7, 438
                  auipc        gp, 943153
                  lui          s0, 1031075
                  add          a1, s8, s11
                  sub          s7, s4, s7
                  add          s9, s10, a1
                  addi         s7, gp, 473
                  nop
                  nop
                  add          s7, t4, s10 #end riscv_int_numeric_corner_stream_16
                  auipc        s6, 827710
                  xori         t4, t0, 1299
                  slli         s6, a0, 17
                  sra          s5, a1, s3
                  xori         s0, s6, 601
                  sub          s6, t0, a1
                  xori         t4, s5, 2043
                  lui          gp, 212839
                  andi         s8, t2, 274
                  sltu         s1, a5, a5
                  and          s11, a2, zero
                  slt          t2, s4, t3
                  sub          t4, a1, t0
                  or           a5, s3, s11
                  sltiu        t0, t5, -1294
                  slli         s6, ra, 29
                  lui          t1, 19354
                  sra          t2, s5, t1
                  and          sp, s10, s8
                  and          s9, s4, a3
                  addi         s4, a1, -1175
                  andi         t6, a7, 787
                  sltiu        s0, t5, 106
                  srai         t1, t0, 12
                  auipc        s6, 897972
                  srl          a1, s6, s8
                  slli         s0, t1, 9
                  ori          a1, s1, -584
                  srai         s10, s9, 3
                  sub          s11, s0, t5
                  auipc        a0, 860586
                  slt          t1, t0, s7
                  addi         t4, a1, 1940
                  slti         t5, s2, 1950
                  srai         t2, t0, 19
                  ori          s6, a4, -626
                  srai         s4, s5, 25
                  add          s7, t5, t4
                  andi         t2, s1, -1499
                  lui          s6, 69226
                  add          a7, t1, a6
                  slli         zero, a5, 22
                  slt          tp, a1, s7
                  add          gp, s9, a5
                  add          a6, tp, t0
                  sltu         s4, ra, s5
                  slt          t6, sp, sp
                  lui          zero, 434693
                  nop
                  srli         t6, s6, 15
                  srl          s0, gp, t4
                  sltiu        a0, t0, -1377
                  slli         s1, s1, 31
                  slli         t1, s7, 8
                  addi         t0, sp, -547
                  ori          gp, t4, 1501
                  addi         t0, tp, 10
                  ori          s1, sp, 1027
                  sltu         s2, s1, t1
                  or           a3, t0, t0
                  add          t0, t6, s8
                  addi         a1, s2, 1423
                  srl          s11, s10, a5
                  srli         gp, ra, 16
                  sltu         a6, gp, t0
                  sltu         t1, a1, s3
                  slli         t0, t3, 18
                  auipc        s4, 298815
                  and          t6, gp, s2
                  sra          s0, s7, s0
                  slti         ra, ra, -254
                  ori          s7, s9, 1520
                  srli         s7, a5, 14
                  or           s0, t1, s3
                  sltu         s7, a2, t6
                  or           gp, a0, zero
                  andi         a7, a6, -828
                  srli         a0, s11, 8
                  sra          s4, s0, a2
                  sltu         t6, a6, s10
                  sltu         a3, t6, s4
                  add          s5, t4, s6
                  xor          a7, a2, sp
                  ori          a3, a4, 197
                  addi         s10, s9, 1554
                  auipc        s7, 455786
                  srli         t3, a0, 7
                  andi         a7, t6, 1773
                  or           gp, s1, t2
                  slti         tp, a7, -1886
                  nop
                  xor          a7, s7, a1
                  lui          t3, 606297
                  sra          s9, s8, tp
                  and          s4, s10, s4
                  auipc        tp, 854868
                  nop
                  sltiu        s11, zero, 1922
                  or           s2, s7, a0
                  xori         t6, a0, -1980
                  srai         a0, a3, 12
                  sub          s10, s0, s7
                  add          s11, s5, s6
                  add          t0, s8, gp
                  srl          t1, s7, a3
                  add          t5, t5, a7
                  sltiu        zero, a1, 1725
                  sra          t2, a2, t0
                  nop
                  auipc        sp, 88915
                  sltiu        s5, a5, 158
                  xor          gp, zero, s6
                  or           a1, s6, ra
                  or           t5, t5, a7
                  or           a5, t0, t6
                  slli         s11, a5, 24
                  srl          sp, a6, s9
                  xor          t3, s6, t1
                  andi         a6, t3, -1385
                  xor          s4, t1, t1
                  slt          a3, zero, s7
                  slti         zero, a2, 9
                  xor          s7, sp, a6
                  add          t3, s1, a0
                  sll          a5, s4, a1
                  slti         gp, s11, 1364
                  srai         t1, a2, 3
                  sltu         s6, s0, a3
                  sra          gp, a7, s1
                  add          t2, s11, t0
                  srai         t6, t2, 8
                  xori         t3, a3, -1125
                  ori          t1, a4, -1797
                  add          s0, t2, s6
                  sra          tp, a0, ra
                  xori         ra, ra, 1029
                  sub          t6, a6, s11
                  sra          t5, gp, a7
                  or           s5, a1, a5
                  srl          a1, a2, a4
                  xori         sp, t0, 227
                  srli         a6, a6, 25
                  sub          t4, t2, s10
                  or           t2, a3, a5
                  auipc        s7, 227974
                  nop
                  slt          a1, sp, s1
                  sltiu        t2, s1, -601
                  add          s11, a2, a3
                  nop
                  and          s6, a0, s6
                  nop
                  srai         s5, sp, 22
                  srl          s5, sp, gp
                  sltiu        s6, a5, -561
                  srl          t4, s9, a5
                  ori          a5, s3, -878
                  nop
                  xori         s8, t5, -241
                  add          s1, zero, a2
                  slli         a6, a6, 4
                  srl          a3, t6, s6
                  sltu         a1, t4, t6
                  sub          t5, s2, t0
                  xor          t4, s7, a2
                  or           s1, tp, s8
                  srl          t2, tp, s1
                  slt          sp, s10, gp
                  sltu         t5, zero, a6
                  ori          s0, t6, -963
                  srl          s8, a1, s9
                  slt          s7, s5, a7
                  sll          s9, gp, a5
                  lui          zero, 287854
                  slli         s2, t2, 22
                  sltu         a3, a2, a4
                  sltiu        gp, sp, 1376
                  xori         a1, a6, -1620
                  or           t2, s11, t2
                  sub          t1, s6, ra
                  lui          t5, 943040
                  add          t1, a7, a1
                  sltiu        a3, a4, -1665
                  slli         s10, s9, 13
                  andi         s0, s6, 1419
                  sltu         s4, s10, t3
                  slt          s8, s9, a3
                  srl          s11, s0, s5
                  slt          a7, a4, t5
                  add          s6, t0, a2
                  slt          gp, a7, ra
                  sll          t1, s5, t6
                  nop
                  sub          a5, a6, s5
                  slti         tp, a4, -406
                  xor          a3, gp, a5
                  srli         s6, sp, 29
                  or           s8, t0, t6
                  nop
                  or           sp, gp, sp
                  xori         a5, a5, 737
                  auipc        t0, 611164
                  lui          s10, 887548
                  slti         gp, t1, 1199
                  srli         t4, zero, 1
                  sub          s0, tp, a1
                  sltiu        a3, a5, 1849
                  andi         a1, zero, 1861
                  srl          s7, t6, t5
                  and          t6, gp, t6
                  sra          s5, zero, s4
                  srl          ra, s6, a5
                  sub          s7, t4, a0
                  xor          s9, zero, a7
                  srli         zero, a5, 0
                  addi         a7, a5, 1923
                  nop
                  and          zero, s8, t4
                  ori          s2, s7, -552
                  ori          s11, a0, 1534
                  nop
                  and          a0, a7, ra
                  slt          s4, a0, s3
                  ori          s7, s0, 1713
                  xor          s4, s0, t2
                  slt          s0, t4, tp
                  xori         gp, s1, 1508
                  srai         s6, t2, 25
                  srli         s2, s7, 1
                  sltu         a5, s11, t2
                  sltu         s7, s10, tp
                  lui          ra, 266044
                  xori         t1, s1, -154
                  slli         t2, t5, 13
                  sltiu        s0, gp, -1191
                  lui          a3, 305014
                  xor          s1, s8, s9
                  and          a5, t3, s7
                  lui          ra, 566756
                  auipc        a0, 236818
                  sltu         a7, s4, sp
                  srli         zero, t0, 7
                  sltu         a6, a4, s11
                  srl          s5, a5, a4
                  slli         t2, a1, 15
                  sra          t3, s3, a0
                  sub          a3, s3, a0
                  sll          a7, s7, a3
                  slt          zero, tp, a0
                  slt          s8, t6, gp
                  sltu         zero, s10, s8
                  add          t6, a0, t3
                  addi         a7, a5, 1949
                  srli         t1, t1, 2
                  slt          a5, a2, a4
                  or           s0, t0, s11
                  srl          a0, t2, t0
                  or           s10, s4, a5
                  xori         a7, t6, -829
                  sub          a7, a1, s9
                  sub          s6, s11, gp
                  srai         a3, s2, 30
                  and          s0, a5, tp
                  sub          zero, t5, s6
                  andi         s4, t5, -1988
                  nop
                  or           s8, t6, s3
                  sltiu        a7, t3, 415
                  and          t3, a3, tp
                  andi         s4, t0, 153
                  sltiu        s2, a1, -417
                  slt          gp, t2, t2
                  sll          s7, s3, s0
                  sub          a5, s5, s8
                  ori          t3, a1, -249
                  sra          s6, s7, t0
                  sltiu        s7, s6, -1891
                  sltu         sp, gp, s8
                  srai         a5, s11, 11
                  srai         t0, a0, 17
                  xori         t6, s4, 1609
                  ori          a7, zero, 435
                  andi         a5, s3, -1770
                  srli         s4, s8, 25
                  xori         s10, s0, 1995
                  addi         t0, a1, 210
                  nop
                  sub          s4, s9, s7
                  slt          s10, a4, t2
                  ori          s10, s2, 1722
                  addi         s6, a6, 1407
                  xori         a7, s5, -1666
                  sub          gp, s7, s8
                  lui          a1, 641529
                  add          a5, a5, a3
                  and          gp, s10, s4
                  andi         a7, s9, -1561
                  and          t4, s7, s8
                  srli         t1, s0, 4
                  slli         tp, gp, 29
                  srl          tp, s4, t0
                  sub          t6, t3, s9
                  sltu         a6, s1, s2
                  slt          t2, a6, s10
                  nop
                  xori         s5, a2, -1573
                  srai         t1, s10, 18
                  or           t1, t4, t6
                  andi         a1, a1, 383
                  sub          t0, ra, s11
                  sltiu        s0, s2, -515
                  xori         zero, s6, -801
                  sltu         t5, sp, gp
                  and          a0, s6, s0
                  andi         a0, s2, 1949
                  sra          s10, t2, sp
                  slli         s1, t6, 14
                  addi         a5, ra, -382
                  slli         a5, s6, 20
                  sltu         s8, a6, s0
                  lui          sp, 197462
                  lui          a3, 939095
                  add          a5, t3, s11
                  add          sp, ra, s9
                  ori          t2, s0, -727
                  addi         t6, t4, 1272
                  slti         a7, s10, 1152
                  srl          ra, s7, t3
                  and          tp, a3, a6
                  ori          s5, zero, -928
                  nop
                  or           s5, a7, t1
                  addi         t3, t6, -1057
                  add          a7, gp, sp
                  and          a7, sp, s6
                  and          s7, s6, zero
                  add          t1, s8, t6
                  addi         a6, t3, -1841
                  addi         s2, s6, 121
                  srai         s6, gp, 6
                  slt          s0, zero, a6
                  lui          s11, 623051
                  sltiu        s1, t5, -901
                  lui          t1, 858212
                  add          s10, s5, tp
                  nop
                  srli         tp, gp, 31
                  xori         s9, s8, 1768
                  srli         zero, a3, 28
                  sra          a3, a1, t0
                  sltiu        a3, s5, -322
                  srli         t2, a4, 0
                  srai         s0, s0, 30
                  sll          s6, s8, s5
                  sub          s11, s7, sp
                  slli         t2, s5, 17
                  srl          s4, a6, s10
                  nop
                  sltu         a7, gp, s7
                  andi         a6, ra, -788
                  andi         a1, s10, 703
                  ori          s0, s11, 1479
                  xor          t2, tp, tp
                  xori         s7, s3, -1465
                  sra          t5, s3, t4
                  xori         s5, a7, 13
                  srai         a3, a3, 10
                  sra          s0, s5, s6
                  xori         s7, s11, 568
                  add          t0, t1, a0
                  slti         ra, s2, -55
                  sltu         a5, t3, a6
                  and          sp, t5, a5
                  auipc        s0, 221854
                  auipc        s7, 111990
                  slti         s8, t5, 584
                  slli         t6, a2, 17
                  ori          s4, a6, 958
                  slt          t3, a4, s10
                  sltiu        s6, ra, 1846
                  slt          a0, a7, s8
                  add          a3, s3, a6
                  slt          t1, a3, s10
                  slt          t2, sp, s4
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           ra, 0x0
                  li           s0, 0xffffffff
                  li           s10, 0xfb2ed4f
                  li           a3, 0x0
                  li           s7, 0x80000000
                  li           sp, 0xffffffff
                  li           s5, 0x182f238d
                  li           t3, 0x108fe600
                  li           t6, 0xb051f51c
                  sub          ra, sp, sp
                  addi         sp, a3, 380
                  nop
                  sub          s5, s5, s7
                  add          s0, s5, t6
                  nop
                  sub          s5, s5, t3
                  sub          t3, t3, t6
                  lui          t3, 211920
                  sub          s7, s7, s10
                  lui          s5, 253714
                  lui          s10, 620603
                  sub          s0, a3, s7
                  lui          a3, 518147
                  nop
                  nop
                  add          s4, sp, t6
                  nop
                  add          s7, s5, a3
                  sub          t3, t6, s4
                  nop
                  lui          a3, 802684
                  add          s10, sp, sp
                  sub          t6, s4, s4 #end riscv_int_numeric_corner_stream_17
                  slli         a0, s8, 9
                  sub          s0, a5, a3
                  srai         a3, s10, 9
                  andi         ra, s4, -1215
                  auipc        ra, 36177
                  slti         s2, t2, -1549
                  ori          t0, s3, 897
                  or           ra, t3, s5
                  sra          s0, a7, a3
                  ori          s5, a3, -549
                  slli         zero, a2, 15
                  slli         a0, t4, 11
                  auipc        sp, 745895
                  addi         a3, zero, 1619
                  andi         s4, s3, -1018
                  and          s0, sp, a0
                  sub          t1, gp, a7
                  ori          s0, t2, -512
                  sll          t5, ra, s7
                  auipc        s6, 824510
                  slli         s8, t2, 2
                  sltu         s6, t4, a3
                  or           ra, t5, t3
                  slti         a1, s3, -1440
                  auipc        t2, 911657
                  srl          a1, s3, s7
                  srai         sp, s1, 4
                  xori         a3, a7, -1043
                  slti         s4, a0, 75
                  sltu         s2, s0, s2
                  lui          s1, 112389
                  or           t6, t3, s6
                  sltu         s2, s2, t2
                  slli         ra, s4, 3
                  srai         t5, s11, 6
                  srli         t4, s6, 0
                  lui          a0, 713740
                  xor          s9, a5, t5
                  nop
                  andi         t1, s11, 250
                  xori         s7, t2, -1922
                  srli         gp, s7, 28
                  lui          s8, 86851
                  slli         t4, s6, 27
                  ori          a3, a3, 633
                  ori          a3, s7, -1477
                  slti         t0, a4, -1769
                  sltiu        a7, t5, 1807
                  sll          a3, s0, a5
                  addi         a7, a6, -1928
                  sub          s11, s4, s5
                  lui          s7, 513998
                  srli         s10, tp, 15
                  srai         s5, t4, 27
                  or           s2, s5, s8
                  xori         t4, a7, -2043
                  srai         s6, s1, 30
                  auipc        t3, 830616
                  xor          t0, a7, s8
                  or           a5, a0, t2
                  add          a7, s2, t6
                  nop
                  auipc        s1, 126459
                  or           a0, t2, t1
                  ori          gp, s11, 152
                  srli         a1, s3, 30
                  lui          s11, 10477
                  lui          s9, 518322
                  srl          s1, a5, a4
                  add          s6, a7, t3
                  sltu         a5, ra, t4
                  srl          s9, s11, t0
                  sltiu        t4, s3, 584
                  slt          s9, tp, a6
                  ori          s1, a3, 1656
                  srl          a7, a4, s9
                  sll          t3, a1, s9
                  sltu         s10, a0, t1
                  sltu         a1, a7, t2
                  or           a6, sp, s7
                  nop
                  auipc        t0, 938071
                  auipc        sp, 43338
                  slli         gp, ra, 22
                  slt          tp, ra, s5
                  sra          s7, a7, tp
                  sra          t5, s1, t1
                  sltu         s8, s7, a2
                  auipc        s11, 677399
                  lui          t5, 389841
                  sub          a3, s10, a1
                  add          t5, s6, s2
                  xori         a6, a0, 1531
                  sltiu        s5, a3, 1487
                  srli         t3, s4, 23
                  srai         s6, a3, 5
                  slti         ra, a5, -582
                  xor          zero, s2, t1
                  srai         gp, ra, 20
                  sltu         zero, t3, s8
                  slti         zero, s1, -753
                  add          ra, t5, t5
                  xori         s9, t5, 608
                  slti         t3, s6, 41
                  xor          a6, s8, s1
                  slli         tp, s7, 30
                  nop
                  sub          t5, gp, s2
                  sra          s1, t4, tp
                  sltu         tp, gp, a1
                  slt          t5, t1, s3
                  andi         t0, t0, -106
                  slt          s11, s9, s2
                  sub          t5, a7, a0
                  nop
                  srl          s8, t6, t5
                  nop
                  sra          s10, ra, a0
                  sltiu        s2, sp, 1590
                  slt          zero, sp, s4
                  auipc        a7, 678618
                  sltu         s4, t0, ra
                  sra          sp, sp, s3
                  addi         a6, t1, 1048
                  srl          s10, s8, t6
                  sub          t6, ra, a4
                  sll          s8, s8, s1
                  or           s8, s9, zero
                  xor          t5, a7, s2
                  andi         s2, t4, 1917
                  sltu         sp, s7, s8
                  ori          a0, a2, 732
                  xori         s9, t0, 487
                  sra          s11, ra, sp
                  slt          t1, t5, t1
                  sltu         a5, t5, s9
                  nop
                  nop
                  sltiu        s9, a4, -872
                  auipc        s2, 74889
                  nop
                  sll          a1, s0, a6
                  auipc        gp, 527363
                  lui          a0, 936320
                  andi         s10, a4, -1808
                  srai         gp, t5, 8
                  srai         a1, gp, 6
                  sltu         s4, a7, s11
                  sra          s11, a0, t1
                  xori         t3, s11, -1695
                  or           t3, s4, t4
                  xor          t1, t0, sp
                  auipc        s8, 508662
                  slt          zero, s1, sp
                  slt          a6, t1, tp
                  add          s6, s6, s9
                  srli         t5, a4, 30
                  nop
                  sra          a7, t3, a7
                  slti         sp, a3, -1785
                  sub          s7, t5, t3
                  andi         s6, s8, 1790
                  sra          a3, t5, a7
                  sltiu        gp, s10, 1358
                  addi         a7, s5, 901
                  srli         gp, a2, 11
                  sltu         a5, t5, s9
                  or           s1, a4, s7
                  slt          s4, s2, s1
                  lui          t1, 701347
                  xori         t6, s9, 1817
                  sra          s10, a4, a5
                  nop
                  ori          s11, a2, 146
                  add          a7, t2, a0
                  lui          s9, 578796
                  ori          s6, s1, 135
                  srl          s4, t4, a4
                  or           a6, s10, t1
                  addi         s8, gp, 1024
                  sub          s8, a2, s1
                  srai         s5, t1, 4
                  addi         a5, t2, -358
                  srai         s11, t5, 5
                  xori         s2, zero, -904
                  and          s4, s8, s1
                  srai         s0, s6, 9
                  and          t1, a4, t5
                  xor          s4, s8, s3
                  or           tp, s3, t2
                  sra          sp, tp, t1
                  nop
                  lui          s11, 252091
                  sltu         s0, t4, s11
                  xori         a1, s3, 1377
                  ori          s5, t4, 847
                  addi         s9, a5, -1408
                  xori         t1, ra, -1644
                  ori          t4, gp, 718
                  srai         zero, a2, 11
                  xor          t5, s0, s8
                  and          a0, a3, t5
                  sltiu        s2, a4, -1988
                  sra          s0, s5, a2
                  sra          t6, a7, s2
                  slti         gp, s4, -356
                  srl          t4, gp, s3
                  slli         tp, a0, 25
                  srli         t4, t3, 6
                  auipc        s6, 783233
                  slt          s11, ra, s2
                  xor          gp, tp, t6
                  ori          s10, a6, -630
                  sltiu        s2, a4, 1049
                  add          a6, s1, tp
                  sltu         s10, sp, t2
                  xor          gp, s2, a0
                  srl          s0, a4, s6
                  sltu         t1, t1, s9
                  xori         s6, zero, -498
                  slli         a7, s2, 27
                  addi         s1, a1, -1735
                  srl          gp, a5, zero
                  xori         ra, t0, -1593
                  sub          t6, s5, sp
                  slti         a7, a0, 1198
                  andi         t0, s8, -440
                  or           s0, a0, s5
                  slt          a6, sp, s9
                  sra          t6, t0, ra
                  addi         t6, a5, 1820
                  slt          t0, a2, s0
                  nop
                  slli         a5, ra, 7
                  sub          s10, gp, s11
                  ori          s9, s7, -432
                  srai         s0, s7, 10
                  nop
                  slt          t3, zero, ra
                  or           a1, a5, a4
                  add          t6, s5, t1
                  sra          t2, a0, s10
                  sltiu        t5, a6, 1464
                  or           a0, gp, ra
                  add          s8, t6, gp
                  sub          a1, s2, s7
                  srli         t0, t5, 17
                  ori          tp, t3, 1486
                  auipc        a6, 359058
                  andi         t0, t3, -683
                  sltiu        a5, t0, 1481
                  lui          t6, 1044547
                  or           a6, t4, a2
                  sltu         t6, gp, t0
                  sltiu        s5, s3, 1267
                  auipc        s9, 958760
                  srai         a7, a5, 7
                  ori          a6, t5, -53
                  nop
                  xor          s11, t0, a6
                  srai         t6, a3, 22
                  sra          a0, t0, t1
                  xori         s7, a7, 1867
                  andi         t0, t3, -1941
                  ori          s1, t1, -800
                  srli         s11, a6, 21
                  andi         s11, a1, 347
                  srai         t0, a0, 16
                  or           a5, s2, s10
                  or           a6, s8, s8
                  slt          t2, a3, a7
                  sltiu        s6, s9, 177
                  lui          a7, 600419
                  sltu         t0, tp, t4
                  add          tp, a2, t3
                  addi         ra, s1, 1158
                  srl          t3, a0, s0
                  slti         t1, a3, 1595
                  slti         s8, s0, 695
                  xor          t3, a2, t0
                  or           s0, t6, tp
                  sll          t5, t0, t6
                  or           a1, a5, t6
                  sra          s10, s9, t0
                  srli         t1, s9, 11
                  sub          a7, a3, a1
                  and          s7, s1, a7
                  add          s9, t3, sp
                  slti         t3, t4, 1685
                  xori         s5, ra, -1116
                  sub          s7, s4, t1
                  sra          a5, s11, s10
                  slli         t1, s10, 29
                  and          t5, a6, s1
                  ori          sp, a0, 1122
                  add          s6, t6, s4
                  ori          s11, sp, -1570
                  slt          t5, sp, t4
                  and          s2, a3, a7
                  xor          t2, s11, s8
                  sll          s7, a6, a6
                  lui          s11, 518808
                  xori         tp, t3, 1452
                  slti         t5, a5, 1790
                  srl          s5, s7, a4
                  sltu         a5, ra, a5
                  lui          sp, 398266
                  or           s1, a7, t6
                  sll          s6, t0, a0
                  nop
                  srai         t1, s0, 16
                  slti         s8, t6, 86
                  ori          s10, s5, 1650
                  sltiu        t1, a5, -111
                  andi         s1, ra, -1055
                  and          s8, s5, s5
                  sltiu        t4, s9, 2046
                  auipc        s4, 531831
                  add          s11, s9, t2
                  slli         s1, s9, 25
                  and          a7, a7, t0
                  slt          s1, zero, s0
                  srai         s2, sp, 18
                  srl          s8, t2, s7
                  sltiu        a1, t1, -970
                  lui          t3, 400273
                  sltu         a0, t3, s7
                  or           zero, a4, s11
                  lui          gp, 809211
                  sltiu        s0, t1, -115
                  slli         a5, t5, 27
                  xor          a0, s5, s1
                  add          s4, a1, s0
                  nop
                  sltu         s1, a2, sp
                  sltu         s5, s4, s2
                  auipc        s2, 762639
                  xori         t3, t4, -328
                  srli         s9, gp, 8
                  sub          s11, s5, t1
                  or           a5, s11, a5
                  ori          t3, s0, -1291
                  addi         tp, t6, 318
                  slti         t3, a4, 1556
                  nop
                  ori          a6, s3, 1884
                  slti         s11, s9, 509
                  xor          t0, s3, s1
                  sub          tp, t2, ra
                  xori         s8, t1, 467
                  srai         a6, s0, 23
                  addi         s1, zero, -1545
                  ori          t1, s2, -3
                  addi         gp, t5, 752
                  lui          t0, 366929
                  slli         a3, a1, 8
                  slt          a7, t0, sp
                  srl          s0, s9, s10
                  sltiu        s7, a4, 1360
                  ori          a0, a6, 512
                  xori         ra, a6, -425
                  sltu         a6, s11, s0
                  sub          s10, s2, s1
                  or           tp, ra, s2
                  auipc        s5, 937418
                  and          s8, t5, s11
                  srli         zero, zero, 6
                  sll          s5, zero, t4
                  nop
                  srl          a7, ra, a3
                  sll          t6, s11, t0
                  sll          t4, a6, a5
                  sll          s4, t6, s9
                  sltu         s1, s3, tp
                  slti         gp, s11, 327
                  sltiu        s10, s7, 1477
                  add          sp, tp, s1
                  andi         t5, t1, -232
                  andi         gp, t5, -1272
                  ori          t0, t3, -606
                  slli         s9, t2, 7
                  nop
                  srli         t0, ra, 8
                  nop
                  auipc        s11, 803087
                  sub          t4, a2, a3
                  srl          s10, zero, s0
                  auipc        t1, 877215
                  auipc        s8, 862167
                  srai         zero, s9, 23
                  slli         t1, s5, 1
                  xor          t4, s9, tp
                  nop
                  sra          tp, t4, a2
                  xori         t6, ra, -1055
                  slt          s8, t1, a0
                  sltu         t0, t3, t1
                  xor          t2, s2, a1
                  addi         a1, a7, -1433
                  lui          a0, 369636
                  andi         s6, s0, -1734
                  addi         a7, a2, 1499
                  slti         t0, t5, 1769
                  sltiu        a0, s8, 397
                  xori         t0, s10, 731
                  srl          s9, a0, t0
                  nop
                  auipc        t1, 154321
                  slli         s1, s8, 3
                  andi         a6, s6, 1014
                  sll          t5, a6, a5
                  sub          a1, zero, a4
                  slti         zero, t6, -1509
                  srai         t2, a7, 21
                  sltiu        a5, s2, -279
                  lui          t0, 948824
                  andi         s8, s2, 749
                  or           s10, s3, tp
                  and          a1, s3, gp
                  sltiu        s8, s0, 1588
                  auipc        s7, 149320
                  addi         t1, gp, -1833
                  nop
                  srai         gp, s10, 20
                  sltiu        a5, s7, 1723
                  addi         t4, zero, -241
                  sra          a6, s4, t3
                  sll          s9, a4, a3
                  xor          a1, s3, t4
                  sra          t0, a0, ra
                  lui          a0, 442795
                  sltu         s11, s1, a7
                  add          a3, ra, s3
                  sltu         s8, t5, s7
                  lui          t1, 632555
                  nop
                  add          s8, t1, s8
                  sltu         s11, a3, s11
                  sltu         ra, a5, t1
                  andi         a3, gp, 804
                  xori         s5, a6, -284
                  andi         s6, s1, -106
                  sra          a3, s5, s5
                  slt          a1, a7, a4
                  addi         tp, s3, -1818
                  sltiu        s7, s7, 653
                  sll          s0, sp, a1
                  xor          s0, a7, s5
                  auipc        ra, 628409
                  or           ra, s4, t3
                  lui          a3, 243768
                  slli         a5, a6, 0
                  and          s1, a5, a4
                  sltu         s1, t6, gp
                  or           s5, s8, s7
                  add          s2, gp, s6
                  sra          sp, s3, s7
                  srl          s0, t2, a5
                  srl          t5, a7, t4
                  xor          s0, s4, gp
                  ori          s6, a7, -1100
                  auipc        t0, 507795
                  add          t4, s3, s8
                  or           s0, a0, s1
                  sll          s2, a7, a7
                  slt          t2, sp, tp
                  add          t4, s6, a2
                  sltiu        t3, t2, -248
                  auipc        a7, 694254
                  add          a6, a0, s7
                  srl          gp, t1, s9
                  auipc        ra, 997180
                  slti         t3, s2, -424
                  sra          s6, s10, a3
                  lui          s9, 839492
                  add          a6, t5, t6
                  nop
                  sll          a0, tp, s7
                  sub          s2, s7, t1
                  xori         s4, t2, -1312
                  sltiu        t1, s1, -1736
                  sltiu        s10, s10, -1585
                  xor          s5, tp, a5
                  nop
                  srli         a6, s11, 26
                  auipc        s0, 869484
                  xori         s1, a3, -1775
                  sra          s1, gp, s3
                  andi         zero, t2, -507
                  sltu         s7, t4, gp
                  slti         s4, zero, 2022
                  srli         a3, gp, 13
                  srli         s8, a3, 13
                  xor          ra, s2, a2
                  auipc        s0, 517573
                  srl          t0, t4, s11
                  slt          s9, s0, t3
                  addi         zero, s4, -388
                  xor          s6, a5, t5
                  srl          sp, ra, s5
                  nop
                  sltiu        s5, t4, 1127
                  sltu         t4, a5, s5
                  or           s7, a3, s1
                  sll          tp, t3, a6
                  sltu         s4, s8, s10
                  slli         t1, sp, 2
                  nop
                  slti         s9, s0, 628
                  srli         t0, a6, 11
                  ori          a5, s11, 1786
                  lui          s2, 122252
                  xor          s6, s0, a5
                  xori         s1, t0, 777
                  slti         t5, a5, 776
                  sltiu        s7, gp, 1767
                  slti         tp, t1, -1851
                  srli         s6, a3, 9
                  slli         s5, sp, 30
                  sltu         t1, sp, s8
                  srli         a3, a2, 26
                  nop
                  slti         a6, a7, -1667
                  or           s7, a1, t4
                  srl          a1, s8, sp
                  ori          t5, a1, 351
                  nop
                  lui          t4, 584170
                  sub          t0, ra, t2
                  addi         t2, s9, -1431
                  lui          s5, 59710
                  slt          t6, t5, tp
                  slti         s9, s5, 171
                  srl          t5, t5, s4
                  slt          s11, s10, t2
                  ori          zero, a3, -1889
                  andi         sp, t1, -1971
                  srl          s11, s3, ra
                  add          s4, s5, s1
                  and          s0, s4, sp
                  and          a0, s0, a2
                  sltu         t5, t3, t6
                  ori          t4, t3, -422
                  andi         s8, a3, 1675
                  andi         a1, a5, -1776
                  sub          a0, t2, a1
                  andi         a1, t1, -1315
                  slt          s6, t6, t4
                  lui          s5, 344769
                  addi         s2, t5, 501
                  sltiu        a0, s3, -801
                  xor          t0, s9, t1
                  srl          gp, a7, a5
                  xori         zero, s0, 411
                  sub          s1, t6, t6
                  sub          s2, s0, s10
                  slt          gp, s5, s10
                  srl          t1, s4, sp
                  and          a7, s10, a3
                  xor          gp, a4, s3
                  addi         s7, tp, 95
                  slti         t4, t6, 489
                  slt          t0, s11, s6
                  srl          a1, s0, zero
                  nop
                  srli         s11, s5, 9
                  srai         s0, a2, 28
                  xor          a7, t3, a3
                  sra          sp, s4, t2
                  sra          sp, s0, s8
                  and          t2, s2, t2
                  slt          t4, gp, t5
                  slli         s5, s5, 22
                  or           s7, gp, t5
                  srai         gp, s11, 10
                  srl          a0, s6, a4
                  sltiu        a1, t6, -1090
                  slli         t6, s2, 8
                  andi         sp, a5, 561
                  sltiu        s10, s1, -885
                  sra          s8, t4, t4
                  srai         s9, s1, 30
                  sltiu        a5, s11, 1062
                  sltiu        s10, a1, 208
                  sra          a7, ra, a1
                  slli         s0, s7, 17
                  xori         s1, a4, 877
                  xori         t4, t0, -257
                  lui          a3, 97184
                  auipc        sp, 958747
                  xori         a7, t1, 1045
                  sll          a7, t4, gp
                  or           gp, t4, t4
                  sll          s9, s6, t1
                  sltiu        a6, a4, -1504
                  xor          s1, ra, s3
                  srai         a7, t3, 6
                  xori         s4, s8, -1123
                  or           t5, t3, t2
                  xori         s7, s0, -1031
                  xor          s9, s0, a0
                  addi         t3, t4, 830
                  or           t6, a6, zero
                  sub          sp, s7, t1
                  sll          s7, a6, s3
                  addi         s11, a6, -366
                  and          s10, s2, a6
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           s9, 0x80000000
                  li           t0, 0xffffffff
                  li           ra, 0x80000000
                  li           a5, 0x0
                  li           t4, 0x80000000
                  li           t5, 0xffffffff
                  li           a1, 0x80000000
                  li           t3, 0x0
                  li           t1, 0xffffffff
                  addi         s9, t4, -716
                  add          t3, s9, t0
                  add          t0, t0, a1
                  add          a1, t0, s9
                  sub          t4, a5, t0
                  auipc        t4, 201233
                  lui          ra, 489988
                  addi         ra, t1, 517
                  auipc        t3, 614697
                  lui          t0, 497436
                  lui          t3, 584230
                  sub          t0, t5, t5
                  nop
                  addi         s9, t0, -422
                  add          ra, a1, t3
                  nop
                  sub          t4, a5, t3
                  lui          t1, 312848
                  add          t1, t1, t3
                  addi         a1, t5, 195
                  lui          a5, 13353
                  lui          a1, 910394 #end riscv_int_numeric_corner_stream_5
                  lui          t0, 56813
                  lui          s9, 982409
                  srli         a7, s6, 19
                  sub          s9, gp, zero
                  addi         s1, s4, 58
                  sub          sp, t4, a3
                  slt          s6, s3, s0
                  addi         s4, a6, 1193
                  sub          s11, a2, a3
                  addi         s0, ra, 598
                  addi         t4, s9, -1292
                  slti         t6, t4, -1157
                  srli         zero, t6, 15
                  and          a5, t5, a6
                  srl          t3, t1, s4
                  lui          a5, 681177
                  addi         s1, a1, -579
                  srai         s7, tp, 31
                  sll          a1, sp, ra
                  xori         zero, s7, 1255
                  andi         sp, a7, -43
                  slti         s10, s6, -1599
                  sra          s6, zero, s1
                  xor          a3, t4, s5
                  or           gp, sp, t1
                  sltiu        a3, s6, -806
                  ori          s11, a2, -1057
                  sra          a3, a6, sp
                  slt          a3, s3, t5
                  slti         s2, s5, 1030
                  lui          t3, 1030969
                  srai         a1, s7, 28
                  sra          zero, s2, t4
                  slti         s7, t2, 1398
                  sltiu        a3, zero, 1773
                  slti         t0, ra, -407
                  nop
                  nop
                  slt          s1, s11, a7
                  or           t4, s2, a1
                  slt          s0, t5, s5
                  add          t1, a4, sp
                  nop
                  srai         s1, s7, 30
                  sra          a7, s7, a6
                  xor          s4, s1, s6
                  srai         t0, t3, 23
                  or           gp, s5, a0
                  andi         s2, s1, -342
                  sll          t0, ra, t2
                  srl          a7, s6, t2
                  nop
                  sub          gp, a5, tp
                  auipc        t4, 378270
                  srl          t3, s9, s7
                  lui          t0, 220148
                  add          s0, sp, t5
                  nop
                  sra          a3, a6, t6
                  xor          t0, t0, zero
                  srl          sp, t0, t6
                  sra          t4, zero, s9
                  srli         s8, s0, 19
                  andi         s2, t4, -1908
                  lui          t4, 686585
                  srli         s9, a6, 3
                  add          sp, t1, s1
                  ori          sp, s7, 882
                  lui          s11, 955751
                  sub          zero, t6, s9
                  slli         a0, a1, 22
                  add          s1, t5, s8
                  slli         s8, tp, 31
                  xori         a0, s8, -69
                  sub          a1, s7, gp
                  or           t3, gp, s4
                  or           t4, sp, s10
                  auipc        t4, 283700
                  andi         s6, s3, -494
                  nop
                  and          s11, s0, t4
                  slt          a5, s10, a2
                  and          a0, s8, a2
                  xori         t2, a1, 1445
                  sra          a7, t3, s5
                  sltu         s5, t4, t3
                  sltiu        tp, s5, -656
                  sltu         s4, s0, t2
                  srli         s7, s11, 0
                  xor          t4, t4, a2
                  and          a3, a6, t3
                  add          s2, s1, t2
                  srli         t1, gp, 21
                  sll          s8, a4, s5
                  srl          s4, ra, s8
                  auipc        s7, 316477
                  srl          a0, a1, s8
                  andi         ra, s7, 1690
                  srai         tp, s8, 29
                  srai         s5, t4, 12
                  xor          gp, s2, a5
                  auipc        t4, 1044372
                  lui          gp, 908822
                  srai         s6, tp, 3
                  ori          s9, zero, 1110
                  sub          a3, s8, a7
                  slti         zero, s7, -410
                  nop
                  xor          t5, t3, a1
                  xor          a5, t3, s3
                  or           s11, a7, s9
                  andi         s8, t4, -936
                  add          s2, a5, ra
                  and          ra, a2, s5
                  slli         t3, t0, 0
                  slt          t3, s4, s8
                  and          t6, zero, t2
                  sub          sp, a6, s9
                  sltu         s6, s5, t0
                  auipc        s5, 536742
                  auipc        s5, 744250
                  srl          t2, t3, t1
                  sltiu        s0, a6, -1634
                  sra          t6, s7, t1
                  srli         s9, s4, 2
                  srl          s0, s5, s2
                  sll          t3, s9, t0
                  addi         a1, t1, -812
                  sub          s10, s7, ra
                  sll          s9, t0, t6
                  ori          s4, zero, 1584
                  addi         s4, tp, 2047
                  andi         s2, a6, 984
                  xori         sp, a0, 2015
                  slli         gp, a1, 22
                  sltu         t5, gp, s6
                  srai         t0, a2, 10
                  or           sp, s0, s5
                  srli         s8, sp, 18
                  or           t5, a2, s11
                  srl          t5, a6, a6
                  srai         t4, s5, 0
                  sra          s9, t6, zero
                  addi         s6, a4, 1441
                  sll          s2, t1, s7
                  sub          s9, tp, s7
                  ori          a1, s11, 195
                  and          ra, s2, a3
                  slt          t4, t1, gp
                  srli         a5, t5, 14
                  sltu         t4, s2, a3
                  addi         ra, s3, -1021
                  add          s4, s11, t3
                  slti         s9, a5, -1755
                  nop
                  sltu         a3, a1, a2
                  srai         t4, gp, 20
                  srli         a1, t4, 16
                  auipc        s9, 718402
                  sltu         s11, a7, s5
                  add          t5, s10, a7
                  sub          a0, tp, t5
                  sll          s6, t6, sp
                  ori          s5, t0, -1781
                  srli         s7, s7, 13
                  sra          a6, a5, a2
                  xori         s7, t0, -1485
                  xor          s8, s3, s8
                  auipc        t2, 919989
                  add          s6, s7, a2
                  srl          t3, t0, a5
                  xori         t2, a2, 612
                  srli         s6, a2, 6
                  srai         s5, t0, 28
                  sra          t3, tp, s10
                  nop
                  auipc        s0, 247943
                  xor          t2, a3, a7
                  and          tp, s11, s7
                  sltiu        s9, s4, -661
                  xor          tp, s3, s3
                  sltu         t6, ra, tp
                  sra          a6, a3, s2
                  slli         sp, a5, 5
                  xor          t0, a2, s0
                  and          s7, s10, sp
                  srli         zero, tp, 29
                  slti         a7, gp, 1776
                  sltiu        a6, a3, -1573
                  slti         t2, s0, -1861
                  or           t6, t2, a7
                  srai         s6, a1, 13
                  slli         t0, s11, 30
                  srli         a5, a4, 7
                  xor          t2, t1, t6
                  sll          t5, s7, gp
                  sub          a6, t2, t5
                  srl          s7, a7, tp
                  sra          s9, s9, s10
                  srl          sp, s5, s5
                  srli         s1, tp, 3
                  sra          a1, ra, gp
                  lui          a5, 828153
                  add          a0, a3, t5
                  sltiu        s11, a3, 1328
                  srai         s6, t4, 14
                  auipc        s4, 275376
                  ori          s8, s6, -394
                  srli         a3, t4, 19
                  add          a5, t5, s4
                  sub          s2, a5, t5
                  auipc        a0, 559266
                  lui          t2, 1010248
                  srli         a7, s5, 7
                  ori          t4, s4, 305
                  add          t1, s6, s9
                  or           s1, a5, s9
                  auipc        a1, 140867
                  slli         s11, t1, 9
                  xori         a1, s7, 491
                  auipc        a1, 182540
                  lui          s8, 779969
                  lui          s11, 723577
                  auipc        s10, 104590
                  sltu         t3, a3, sp
                  auipc        t4, 720383
                  auipc        t2, 246769
                  and          gp, s3, t0
                  slt          zero, t1, t0
                  srai         s2, t4, 29
                  and          a1, s7, t3
                  sll          a7, a5, s5
                  or           s8, s10, s2
                  sll          s10, ra, a1
                  slli         s10, s5, 0
                  sltiu        t5, s8, -626
                  lui          sp, 731941
                  xori         a7, ra, 1430
                  ori          t6, s10, 1991
                  and          s10, gp, s10
                  sll          zero, t6, s9
                  auipc        t4, 174468
                  srli         s8, s2, 22
                  sltiu        s5, a7, -897
                  addi         t4, s8, -1759
                  srli         s7, sp, 8
                  slti         s7, s6, -1035
                  sub          zero, a5, s11
                  slti         s9, s3, -1911
                  sra          t4, s2, s8
                  addi         sp, s10, -752
                  or           s7, t3, s5
                  andi         s1, s11, 213
                  xori         a1, ra, 1669
                  xor          s10, s0, zero
                  sub          tp, a2, a3
                  xor          ra, a1, a7
                  sra          a6, a4, sp
                  sub          s0, s1, tp
                  srl          a6, a0, s5
                  srli         s4, s5, 0
                  srli         gp, a4, 26
                  slt          t2, s1, gp
                  sub          s9, t1, ra
                  lui          t6, 440700
                  srl          a5, s0, tp
                  xor          s1, t6, s2
                  slt          t0, t2, s6
                  addi         s7, s10, 1452
                  lui          zero, 801606
                  lui          a6, 728812
                  and          t0, a1, t0
                  or           t4, s9, a3
                  sra          s8, t2, sp
                  nop
                  and          t1, t1, s0
                  or           s9, s1, sp
                  xori         a0, a0, 1921
                  slli         gp, t4, 15
                  sra          s10, s8, a3
                  slli         sp, s10, 27
                  or           s9, s11, zero
                  slti         a6, a0, -1886
                  auipc        s7, 897127
                  nop
                  slti         t3, s2, -1720
                  ori          a1, a7, -206
                  sll          tp, t0, t1
                  srli         s1, t0, 14
                  ori          sp, s4, -671
                  xor          t0, sp, a3
                  srl          s0, t3, t5
                  and          s0, s11, s7
                  nop
                  nop
                  srai         s5, s4, 13
                  srli         s2, zero, 16
                  srai         a7, a1, 1
                  ori          s0, a6, 1099
                  slti         ra, s2, -702
                  lui          t2, 198090
                  srai         ra, gp, 25
                  ori          s11, s9, 162
                  andi         a3, t3, -267
                  sub          s4, t5, a4
                  srli         s4, s4, 22
                  srai         gp, t3, 0
                  sub          s6, a6, s3
                  and          zero, s0, s9
                  nop
                  sra          zero, sp, s9
                  and          s6, s6, t5
                  sub          zero, t2, s5
                  slli         t5, s8, 27
                  sltu         a0, t6, s3
                  or           sp, t1, s11
                  lui          t2, 691029
                  xor          a5, t5, s7
                  slt          a7, ra, s1
                  slti         a0, a3, 816
                  sltiu        a3, s5, 1354
                  andi         s2, t5, 645
                  and          a1, s9, t6
                  add          gp, t2, t2
                  srai         t4, a0, 25
                  srli         gp, s2, 9
                  auipc        s5, 656119
                  and          s5, t1, a4
                  xori         s9, a2, 1960
                  nop
                  sltu         gp, a4, a4
                  xori         gp, s1, 1812
                  sll          a1, a4, a4
                  sltu         t5, s9, s0
                  xori         t6, s11, -1679
                  nop
                  srai         s7, gp, 3
                  srli         s11, a1, 20
                  sll          tp, a4, a1
                  auipc        a1, 94687
                  sub          tp, a1, s11
                  sub          s1, a6, s7
                  xor          t6, zero, s11
                  xor          ra, s5, s5
                  srli         gp, s5, 22
                  sltiu        s10, a6, 777
                  auipc        a3, 555942
                  xori         t2, tp, 212
                  nop
                  xor          s10, t4, s7
                  ori          t5, a1, 1405
                  auipc        s6, 836973
                  sltiu        s5, a1, -711
                  slli         s5, ra, 0
                  andi         s7, a3, -130
                  sll          s5, s3, a7
                  sra          s4, s4, a0
                  srl          a3, t0, a2
                  srli         a7, a5, 27
                  srli         t3, s5, 18
                  srli         s9, zero, 31
                  sub          a5, s10, t1
                  xori         s7, s1, -681
                  add          gp, a5, a4
                  sltu         a0, s6, s0
                  sll          t5, t6, t5
                  sltiu        s8, s3, -1919
                  and          s0, a1, a7
                  sll          t6, s3, s6
                  sra          sp, s8, s8
                  srl          t3, a3, s1
                  xori         a3, t5, 780
                  and          s1, a1, ra
                  sub          gp, sp, a6
                  srli         a0, t5, 3
                  addi         s10, a4, -1829
                  sub          gp, t6, a5
                  sra          s0, a6, t6
                  sltiu        t4, ra, 1795
                  slti         s0, s6, 1547
                  slti         s8, t4, 1742
                  sra          t1, a7, s9
                  xor          a7, a3, s8
                  slt          s6, t0, sp
                  sltiu        t3, s11, 1219
                  add          s1, ra, a7
                  slti         s1, s6, 466
                  andi         s11, sp, 331
                  srai         t4, s1, 21
                  slli         s0, tp, 7
                  sll          s10, s9, s3
                  sltu         s7, a0, s5
                  sra          t5, s0, s5
                  and          zero, s4, t3
                  srl          sp, gp, a0
                  lui          a6, 882293
                  and          gp, tp, a2
                  or           a5, zero, t2
                  nop
                  addi         ra, t1, -1477
                  sltiu        s11, t0, -851
                  and          gp, t6, s7
                  ori          t2, t0, 1870
                  srl          t0, t4, s5
                  or           t5, gp, tp
                  slt          t4, s4, t0
                  andi         t3, s7, -1796
                  sub          s9, s3, zero
                  srai         a5, a6, 1
                  srli         t3, sp, 4
                  andi         tp, a5, -1159
                  srli         zero, t2, 25
                  sub          s10, a3, s5
                  xor          tp, s3, ra
                  sltiu        tp, tp, -91
                  auipc        s1, 818679
                  andi         s5, s6, -1976
                  add          s6, s9, s0
                  srl          s2, zero, t5
                  srli         s1, a0, 11
                  sra          zero, s9, s4
                  slti         s1, s1, 955
                  andi         a7, s2, 1842
                  nop
                  srai         sp, a3, 1
                  auipc        s10, 1005605
                  ori          a0, a3, -233
                  srai         t1, a5, 0
                  xor          s4, t3, t3
                  andi         s1, a1, -1980
                  srai         s2, s8, 4
                  slli         s9, s1, 15
                  slt          a5, t3, a2
                  and          gp, s9, s9
                  sll          s4, tp, s0
                  sltiu        s11, s3, -494
                  la x19, test_done
                  jalr x0, x19, 0
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
                  add x12, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_2:
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
                  add x12, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_3:
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
                  add x12, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_4:
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
                  add x12, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_5:
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
                  add x12, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_6:
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
                  add x12, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_7:
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
                  add x12, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_8:
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
                  add x12, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_9:
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
                  add x12, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_10:
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
                  add x12, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_11:
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
                  add x12, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_12:
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
                  add x12, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_13:
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
                  add x12, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_14:
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
                  add x12, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_15:
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
                  add x12, x14, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

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
                  add x12, x14, zero
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x9, 0x3 # BREAKPOINT
                  beq x31, x9, ebreak_handler
                  li x9, 0x8 # ECALL_UMODE
                  beq x31, x9, ecall_handler
                  li x9, 0x9 # ECALL_SMODE
                  beq x31, x9, ecall_handler
                  li x9, 0xb # ECALL_MMODE
                  beq x31, x9, ecall_handler
                  li x9, 0x1
                  beq x31, x9, instr_fault_handler
                  li x9, 0x5
                  beq x31, x9, load_fault_handler
                  li x9, 0x7
                  beq x31, x9, store_fault_handler
                  li x9, 0xc
                  beq x31, x9, pt_fault_handler
                  li x9, 0xd
                  beq x31, x9, pt_fault_handler
                  li x9, 0xf
                  beq x31, x9, pt_fault_handler
                  li x9, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x9, illegal_instr_handler
                  csrr x9, 0x343 # MTVAL
                  1: la x19, test_done
                  jalr x1, x19, 0

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
                  la x19, write_tohost
                  jalr x0, x19, 0

instr_fault_handler:
                  add x14, x12, zero
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
                  add x14, x12, zero
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
                  add x14, x12, zero
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
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x14, x12, zero
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
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x14, x12, zero
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
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  add x14, x12, zero
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
