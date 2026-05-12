.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x28, h0_start
jalr x0, x28, 0
h0_start:
                  li x7, 0x40000100
                  csrw 0x301, x7
kernel_sp:        
                  la x8, kernel_stack_end

trap_vec_init:    
                  la x7, mtvec_handler
                  ori x7, x7, 0
                  csrw 0x305, x7 # MTVEC

mepc_setup:       
                  la x7, init
                  csrw 0x341, x7

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x7, 0x1800
                  csrw 0x300, x7 # MSTATUS
                  mret
init:             
                  li x0, 0x68544e1f
                  li x1, 0xf
                  li x2, 0xfc666a49
                  li x3, 0x1
                  li x4, 0xf3937e6f
                  li x5, 0xad49846e
                  li x6, 0xf61a8ac0
                  li x7, 0x0
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0x4
                  li x12, 0xfa183899
                  li x13, 0x5bcb4ef6
                  li x14, 0x80000000
                  li x15, 0xd06e383
                  li x16, 0xf
                  li x17, 0x80000000
                  li x18, 0x16e579bd
                  li x19, 0x0
                  li x21, 0xfde0b12b
                  li x22, 0xf403f2dd
                  li x23, 0x0
                  li x24, 0x0
                  li x25, 0x2
                  li x26, 0x80000000
                  li x27, 0xf7500bd3
                  li x28, 0xf1d1afc9
                  li x29, 0xc
                  li x30, 0x0
                  li x31, 0xf191f562
                  la x20, user_stack_end
main:             xori         a4, s4, -1157
                  nop
                  addi         ra, sp, -704
                  nop
                  srl          sp, t6, s0
                  bne          t0, s7, 19f
                  andi         a3, s5, -1923
                  sltiu        a7, s10, 821
                  nop
                  sltu         tp, t4, t6
                  blt          s11, s7, 20f
                  la           a3, region_1+692 #start riscv_load_store_rand_instr_stream_0
                  sra          s8, s4, s6
                  lb           s10, -91(a3)
                  lb           t2, -250(a3)
                  lbu          t5, 115(a3)
                  lhu          a1, 136(a3)
                  or           a7, a2, s2
                  ori          t5, tp, 514
                  sb           s5, 9(a3)
                  lbu          t0, -241(a3)
                  lw           t0, -172(a3)
                  sb           s7, 27(a3)
                  lb           a1, 85(a3)
                  sh           t4, 148(a3)
                  sb           a5, 203(a3)
                  lb           a0, -18(a3)
                  srl          t4, s8, a6
                  lbu          t2, -173(a3)
                  lb           s7, 35(a3)
                  sltu         s11, sp, s6
                  sb           a6, 105(a3)
                  sb           s6, 97(a3)
                  nop
                  srli         t1, t0, 29
                  sra          s8, s4, s10
                  add          a5, s1, t5
                  sb           t0, 99(a3)
                  lb           t5, 130(a3)
                  sh           s1, 116(a3)
                  sb           t4, -91(a3)
                  auipc        ra, 186066
                  lhu          s8, -62(a3)
                  lb           a7, 126(a3)
                  sb           a7, 208(a3)
                  sltiu        t1, a1, 983
                  lbu          ra, -198(a3)
                  sltu         a2, t0, t2
                  sb           s10, 171(a3)
                  sltiu        a0, s1, 1416
                  slti         a7, gp, 510
                  xori         s7, s1, -519
                  lb           t4, -231(a3) #end riscv_load_store_rand_instr_stream_0
                  bltu         a7, s5, 21f
                  ori          t2, s4, -1497
                  srl          gp, a0, s3
                  sll          a4, t1, a7
                  nop
                  bge          s2, zero, 34f
                  or           s10, tp, t2
                  sltu         zero, s0, a5
19:               beq          s4, a4, 39f
20:               beq          a3, a0, 27f
21:               andi         a3, s0, 1519
                  bltu         s11, a1, 27f
                  blt          s4, s8, 28f
                  add          t4, a3, s9
                  srl          t6, a2, t2
                  and          a3, t2, s4
27:               sltiu        s5, s11, -1008
28:               sub          tp, a2, s2
                  andi         a3, s1, -1323
                  slli         s1, t3, 21
                  addi         t0, s7, -1665
                  xori         a2, a3, -594
                  srai         s2, a2, 16
34:               sll          t5, s7, t2
                  xori         a5, s4, -1125
                  add          t1, sp, a7
                  ori          sp, s10, -985
                  bne          ra, t1, 45f
39:               ori          a1, s2, -1615
                  slti         a0, a1, -1543
                  bgeu         zero, s6, 42f
42:               or           a0, a7, t6
                  bge          s4, t6, 56f
                  auipc        s7, 666705
45:               bgeu         t2, s4, 62f
                  and          s3, t0, s5
                  add          a0, s11, t3
                  srai         s2, a2, 26
                  srai         s10, tp, 23
                  lui          zero, 1007847
                  sra          s5, t6, s9
                  nop
                  lui          s9, 879097
                  la           t2, sub_1
                  srl          t5, t5, s3
                  slt          a0, s10, s10
                  xor          s2, tp, a7
                  ori          zero, s9, 1529
                  srai         tp, s11, 29
                  addi         t2, t2, -801
                  sub          s3, a5, s5
main_j1:          jalr         a5, t2, 802 #jump main -> sub_1
                  xori         a3, t3, 620
                  blt          s1, s8, 57f
                  sltiu        s11, s3, -1927
                  lui          t5, 732611
                  bltu         a6, s11, 67f
56:               bgeu         t3, a7, 58f
57:               slt          a4, t5, zero
58:               srl          a5, t1, a5
                  sltu         s1, s4, s7
                  bgeu         t4, zero, 63f
                  xori         s7, s11, 314
62:               bge          s4, t3, 63f
63:               nop
                  sra          s1, t3, s9
                  sll          gp, a4, t4
                  auipc        s1, 4806
67:               sra          a0, a4, a2
                  auipc        a0, 197830
                  nop
                  slli         zero, s11, 0
                  xor          t0, t1, a4
                  lui          t0, 523703
                  srli         ra, sp, 3
                  xori         a6, ra, 1484
                  auipc        s11, 134296
                  nop
                  or           sp, t0, a7
                  auipc        t4, 127518
                  srl          s3, a6, s5
                  srl          t0, t5, gp
                  xori         s7, a2, 1198
                  xor          t2, s9, zero
                  sub          s2, t0, s5
                  sub          s10, s11, a4
                  xor          sp, s6, a1
                  bgeu         t4, zero, 91f
                  sltu         a1, s11, t5
                  auipc        t4, 455877
                  add          t2, a3, s4
                  xori         a3, s3, -1952
91:               and          s9, s6, a0
                  nop
                  xori         a4, s11, -604
                  add          a3, t1, s4
                  bltu         s8, a1, 110f
                  srli         t0, s5, 12
                  sltiu        t1, a5, 104
                  bge          a0, s7, 100f
                  xori         s11, ra, -2018
100:              bgeu         s1, t0, 120f
                  sltiu        a2, s9, -1337
                  and          s7, a7, s1
                  sub          s1, s5, sp
                  slli         t1, a5, 4
                  beq          s6, s11, 120f
                  slli         s6, a3, 18
                  add          zero, s6, t2
                  blt          s5, tp, 128f
                  add          sp, s5, a1
110:              addi         s7, a6, -1842
                  sltu         s5, ra, s10
                  sltu         s8, s11, a3
                  sub          a3, s7, a3
                  srl          s2, s9, a0
                  bgeu         a4, t6, 135f
                  auipc        s2, 691221
                  sltu         s2, a6, a7
                  andi         a1, a6, -866
                  addi         a2, s10, 1305
120:              srl          a6, a3, a6
                  srli         sp, a3, 12
                  sub          gp, t6, t5
                  sltu         t0, a2, a4
                  sra          t1, a2, sp
                  auipc        a2, 818581
                  srl          a7, gp, t4
                  sub          a6, a2, s7
128:              sub          s1, a0, gp
                  nop
                  srai         t0, a7, 9
                  auipc        t2, 1047510
                  addi         s10, a7, 1838
                  sra          s10, a1, s2
                  bgeu         zero, t6, 148f
135:              or           gp, a4, a2
                  ori          zero, t3, -1666
                  sll          a6, a7, t3
                  and          a6, a7, s4
                  slti         s5, a7, -1567
                  sra          a4, a2, a6
                  ori          ra, a5, -522
                  nop
                  auipc        a3, 32916
                  srai         a5, t3, 27
                  addi         t4, t1, 262
                  add          t4, s6, s6
                  nop
148:              sltu         ra, s8, gp
                  or           a3, t4, t2
                  xori         ra, t4, -142
                  lui          ra, 806603
                  ori          a1, t0, 2009
                  srai         a3, t3, 7
                  xori         a5, t4, -937
                  slt          t6, t0, a0
                  slti         a7, s4, 1386
                  sra          ra, t5, ra
                  add          a5, s3, a3
                  auipc        s10, 814277
                  sll          s1, t6, s5
                  xori         a2, t1, -365
                  addi         t2, t1, -845
                  andi         t0, s11, -683
                  srl          s1, gp, t1
                  bne          t6, ra, 170f
                  slli         a6, s1, 12
                  nop
                  auipc        gp, 296708
                  blt          a2, ra, 172f
170:              nop
                  and          a2, s11, t4
172:              slti         zero, a1, -617
                  slli         t2, a2, 9
                  addi         a0, ra, 1061
                  sltu         zero, s11, s10
                  and          a2, s9, a3
                  sub          a7, s10, t2
                  slt          s2, s10, s3
                  lui          sp, 187811
                  la x28, test_done
                  jalr x0, x28, 0
test_done:        
                  li gp, 1
                  ecall
sub_10:           addi         tp, a6, 1893
                  addi         s4, s4, -64
                  auipc        s5, 25979
                  sw           a5, 4(s4)
                  ori          s1, a3, -887
                  and          tp, s7, s5
                  addi         s1, sp, -819
                  or           a2, t1, s8
                  sll          a1, a4, s0
                  la           sp, region_1+1752 #start riscv_load_store_rand_instr_stream_1
                  and          a4, t1, s10
                  slt          tp, s4, s10
                  addi         t2, a7, -1316
                  slli         t5, a7, 13
                  addi         t0, s5, -396
                  sb           s9, 5(sp)
                  xor          s3, gp, a2
                  lbu          a7, 6(sp)
                  lh           a2, 8(sp)
                  lb           a3, 7(sp)
                  sb           s10, -2(sp)
                  ori          a2, a0, -1502
                  lb           s8, 1(sp)
                  lb           zero, 5(sp)
                  sb           s4, -13(sp)
                  sh           s7, 12(sp)
                  lbu          a3, 15(sp)
                  sb           t1, 0(sp)
                  sh           s3, 2(sp)
                  and          a6, s9, s1
                  sb           s1, 5(sp)
                  srai         a0, s1, 14
                  sub          s7, s6, a0
                  auipc        s3, 635572
                  xori         zero, s9, 1240
                  srai         a6, t0, 7
                  lb           a4, -15(sp)
                  sb           s10, 0(sp)
                  slli         s10, s3, 23
                  sb           t3, 9(sp)
                  lbu          s6, 12(sp)
                  lhu          t5, -8(sp)
                  srli         t0, a1, 29
                  lbu          t6, -13(sp)
                  sra          a2, s4, s4
                  srai         s9, s8, 7
                  lw           s3, -4(sp)
                  xori         a5, sp, 1101
                  slti         a4, ra, -879
                  sub          s8, tp, s3
                  andi         s5, t1, 1047
                  sb           s4, 9(sp)
                  lb           t4, 5(sp)
                  xor          s7, zero, s6
                  lb           t5, 13(sp)
                  sb           a4, -14(sp)
                  lw           gp, 12(sp)
                  or           gp, s3, tp
                  lh           s7, -6(sp)
                  lbu          s2, 14(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1340 #start riscv_load_store_rand_instr_stream_2
                  sb           s9, 120(sp)
                  lhu          ra, 18(sp)
                  lbu          a3, 231(sp)
                  sltiu        zero, t1, 1574
                  slti         s5, a5, 574
                  andi         t0, a7, 1998
                  lb           s2, -54(sp)
                  lb           s8, 19(sp)
                  lb           ra, -177(sp)
                  sh           s2, -104(sp)
                  lbu          zero, 159(sp)
                  srai         s8, s4, 27
                  srai         ra, s6, 23
                  andi         s7, t3, -69
                  sw           a0, 84(sp)
                  lb           a2, -183(sp)
                  auipc        t0, 156359
                  lbu          s3, -88(sp)
                  xor          gp, s0, t0
                  sh           t6, 146(sp)
                  lh           a3, -20(sp)
                  sb           t2, -229(sp)
                  sb           a6, 223(sp)
                  slli         s6, t2, 17
                  sub          t5, t2, a3
                  srai         s2, t4, 22
                  addi         s6, a4, 1856
                  lb           s6, -167(sp)
                  lw           gp, 20(sp)
                  sb           t1, -87(sp)
                  nop
                  lb           s7, 115(sp)
                  auipc        tp, 517190
                  andi         s5, t6, 922
                  lhu          ra, 110(sp)
                  lb           s3, 117(sp)
                  lb           a2, 37(sp)
                  lh           s1, -50(sp)
                  sb           gp, 45(sp)
                  lh           a4, 224(sp)
                  sb           t1, 33(sp)
                  sltiu        a5, a5, 30
                  sh           t2, 0(sp)
                  sw           a4, 256(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+245 #start riscv_load_store_rand_instr_stream_4
                  sb           s3, -12(sp)
                  sw           a5, 11(sp)
                  xor          gp, s9, gp
                  sltu         s11, t3, tp
                  sb           t3, 14(sp)
                  lbu          s2, 8(sp)
                  lb           t5, 2(sp)
                  and          a0, s1, sp
                  lhu          t2, -15(sp)
                  sb           t2, -14(sp)
                  sltu         s7, a2, s5
                  sb           zero, -15(sp)
                  sltu         s3, t4, s11
                  srai         s3, s2, 4
                  sll          ra, a6, t2
                  sra          s2, s1, s1
                  auipc        s8, 636103
                  and          t0, tp, s1
                  add          ra, zero, s1
                  slt          t4, a4, a4
                  sb           a2, -15(sp)
                  lbu          t6, -16(sp)
                  nop
                  lb           s9, 11(sp)
                  auipc        t0, 514963
                  or           s5, zero, t3
                  sb           a6, -4(sp)
                  andi         a3, s9, 64
                  nop
                  lbu          a3, 12(sp)
                  lbu          ra, -16(sp) #end riscv_load_store_rand_instr_stream_4
                  la           s7, region_1+1442 #start riscv_load_store_rand_instr_stream_3
                  addi         s2, s3, 192
                  auipc        a2, 692092
                  slli         a5, t3, 31
                  sh           s1, 54(s7)
                  sltiu        t5, s4, -519
                  auipc        a2, 54154
                  slti         a1, t3, 1077
                  srli         s8, a6, 31
                  lb           s6, -139(s7)
                  sltu         sp, a4, gp
                  lb           t6, 149(s7)
                  sltiu        a4, s2, 1906
                  lhu          sp, -124(s7)
                  sb           s7, 217(s7)
                  lb           ra, 205(s7)
                  slli         tp, s4, 4
                  sltiu        t4, a7, -1698
                  slti         s6, a7, -985
                  sltiu        s11, a1, -2045
                  lbu          s2, -117(s7)
                  lh           a4, 246(s7)
                  lbu          t2, -43(s7)
                  slli         a1, s9, 26
                  lh           a6, 52(s7) #end riscv_load_store_rand_instr_stream_3
                  ori          zero, a6, 1186
                  srli         t0, s9, 6
                  slti         s9, a7, -1854
                  andi         s3, a2, 1094
                  ori          t1, s1, 1916
                  addi         s3, s9, -1676
                  xori         a2, tp, 491
                  slli         t0, t6, 26
                  slt          gp, s11, s2
                  srl          a7, s3, s6
                  auipc        s5, 191179
                  srl          sp, s3, t3
                  srl          t6, t6, s3
                  nop
                  bgeu         a1, t1, 16f
                  beq          s7, s4, 18f
16:               nop
                  srl          t1, s9, a7
18:               bltu         t0, a1, 28f
                  slti         s1, tp, 549
                  srl          t6, s2, t2
                  and          t0, a1, s2
                  xor          s11, s0, t6
                  add          a4, s9, a0
                  srl          t6, s1, zero
                  slti         t1, t3, -1986
                  xor          gp, s1, t0
                  bne          s8, a1, 31f
28:               srli         s9, zero, 31
                  xori         a6, gp, 540
                  andi         sp, s1, 1111
31:               xor          a4, t6, s5
                  slt          t6, s5, tp
                  or           a1, s8, a1
                  ori          a6, zero, -988
                  xor          s11, s5, gp
                  andi         a0, s9, 1053
                  or           a0, zero, a6
                  add          a3, s3, t5
                  beq          t5, t4, 55f
                  sltu         gp, t2, a4
                  beq          s6, a4, 48f
                  or           a4, s0, a2
                  or           a3, s7, s10
                  slti         tp, s0, -1840
                  xori         s1, zero, -995
                  bltu         a7, gp, 60f
                  add          s8, a6, tp
48:               add          t1, zero, zero
                  sltu         tp, t5, s8
                  srl          s6, s7, s6
                  nop
                  blt          s10, sp, 56f
                  slti         ra, s4, 3
                  or           t0, s7, s11
55:               lui          t0, 284238
56:               lui          t5, 448361
                  srl          a7, a4, s10
                  srai         a0, s8, 3
                  bne          a2, s11, 70f
60:               xori         a2, s0, 231
                  blt          s9, zero, 68f
                  and          s9, s2, s0
                  blt          s8, gp, 76f
                  xori         a0, s0, 908
                  srli         s3, a7, 16
                  ori          a0, a6, 277
                  bne          a2, a5, 87f
68:               sll          a0, a4, sp
                  slli         t1, t0, 18
70:               xori         t6, t4, -158
                  nop
                  sra          t5, t2, s11
                  slli         ra, a4, 27
                  srai         s1, s8, 2
                  slt          s10, t0, t6
76:               sltu         a4, s6, tp
                  srl          a1, gp, a4
                  srai         gp, a5, 26
                  addi         s5, t2, 1964
                  srai         a5, a1, 31
                  blt          t5, tp, 100f
                  srl          a7, ra, a3
                  add          s8, s11, t1
                  srai         s5, zero, 15
                  addi         a1, a0, -954
                  srai         gp, a0, 16
87:               slli         s6, a5, 29
                  bltu         s3, s2, 101f
                  slt          t5, tp, t6
                  sll          a4, a4, a7
                  xor          a3, s5, a6
                  sltu         s8, s1, s0
                  slli         a2, s11, 21
                  beq          t4, a0, 114f
                  sll          t4, a5, s10
                  beq          s3, s0, 99f
                  addi         s2, s5, -926
                  bge          a2, a2, 118f
99:               beq          s0, a0, 108f
100:              slti         t5, a3, -668
101:              nop
                  xor          s1, t6, a7
                  sltiu        s10, t4, -1872
                  ori          ra, s1, 1302
                  blt          a1, s6, 109f
                  addi         gp, a4, 583
                  sra          t2, s4, s1
108:              blt          a3, t4, 112f
109:              add          a7, s6, a1
                  srai         tp, t6, 19
                  srli         s5, a0, 1
112:              bltu         sp, s8, 117f
                  sltu         a0, a6, a3
114:              slt          s2, t6, t3
                  or           a5, a4, s6
                  bgeu         t5, a7, 120f
117:              bltu         s3, a3, 125f
118:              ori          s5, tp, -1388
                  bne          a3, tp, 139f
120:              auipc        s1, 360118
                  srli         a3, a0, 6
                  slt          a4, t4, a4
                  sltu         s6, s4, gp
                  or           a0, a7, a6
125:              slti         gp, s7, 915
                  lui          s10, 966567
                  nop
                  lui          s2, 779925
                  sll          t6, t3, s8
                  beq          s7, t2, 137f
                  sub          s8, s9, sp
                  bgeu         t3, a3, 146f
                  or           s7, s11, zero
                  srai         s3, s11, 4
                  srli         s1, a1, 24
                  addi         a7, t2, 796
137:              bltu         a4, ra, 141f
                  lui          s3, 454908
139:              addi         s2, s2, 545
                  srl          s1, tp, a1
141:              auipc        s9, 69378
                  slli         t0, s6, 24
                  bne          zero, t6, 152f
                  ori          a7, s0, 1611
                  andi         ra, a2, 1818
146:              bne          sp, t2, 150f
                  nop
                  sll          s8, ra, s7
                  and          a0, a6, a2
150:              bne          s4, t5, 163f
                  sll          a3, gp, t3
152:              xori         a3, t0, 2012
                  addi         s2, a1, 1209
                  addi         t2, t3, -1059
                  slti         a2, tp, 97
                  auipc        a7, 651710
                  bltu         sp, s3, 164f
                  beq          a0, tp, 165f
                  addi         a4, s11, 1967
                  bgeu         s9, s9, 168f
                  xori         gp, a3, 493
                  addi         zero, s9, 55
163:              andi         s7, s4, 1436
164:              srl          s8, t0, ra
165:              beq          t6, s5, 176f
                  sub          a3, t6, a2
                  srl          t6, t6, s5
168:              xori         tp, a0, -1311
                  auipc        s11, 959066
                  slti         a2, t4, 146
                  and          a1, s10, a4
                  xor          sp, a3, a0
                  xor          t1, s1, s3
                  blt          s8, ra, 177f
                  bltu         t1, gp, 179f
176:              srli         t5, s1, 20
177:              blt          s2, s9, 181f
                  xor          s8, s10, s1
179:              nop
                  and          s5, a6, t0
181:              srl          a3, t1, t4
                  srai         s5, tp, 4
                  slli         s7, tp, 15
                  nop
                  or           a4, t0, a5
                  auipc        t4, 481309
                  add          s5, sp, tp
                  nop
                  srl          t2, t5, gp
                  nop
                  add          a2, s7, t0
                  srl          s2, s11, a7
                  andi         s6, gp, 699
                  sll          s6, t1, t6
                  sra          a5, t4, a1
                  beq          s9, a5, 200f
                  xori         s2, a2, 1969
                  srl          s11, tp, s3
                  srai         s3, s9, 7
200:              sltiu        s1, s10, -461
                  andi         a6, tp, -798
                  bge          s8, s5, 221f
                  srai         a7, tp, 6
                  addi         t5, t6, 1390
                  sltu         ra, a0, s6
                  sll          s5, a5, sp
                  srl          t0, s5, t5
                  addi         s2, t1, -598
                  ori          s3, a4, 1269
                  ori          s1, t6, -152
                  xor          a0, t6, s6
                  srli         s8, s2, 9
                  srai         s8, s1, 7
                  sll          a1, s4, a5
                  beq          t6, a4, 228f
                  sltu         t6, s0, ra
                  sltu         tp, s6, s0
                  bge          t1, a0, 234f
                  slti         t2, s3, 1898
                  addi         a6, t6, -1033
221:              blt          s5, s0, 241f
                  ori          a0, s2, 1802
                  beq          t2, a7, 237f
                  xor          a4, a2, a3
                  sltu         a4, t0, a6
                  and          a7, s9, s11
                  sltiu        tp, s6, -899
228:              beq          s1, s10, 242f
                  lui          s6, 1038111
                  slt          s5, t5, a7
                  auipc        s2, 152104
                  beq          s1, zero, 241f
                  blt          t2, s0, 237f
234:              xor          a6, a6, t4
                  xori         t4, t2, 216
                  xor          s8, s4, zero
237:              srl          t1, s3, s11
                  ori          sp, s3, 569
                  slt          a4, s11, s5
                  slti         a2, s1, 426
241:              bltu         t5, t1, 261f
242:              sub          t0, sp, a2
                  sub          t0, a1, t0
                  sltiu        t4, gp, 112
                  or           s10, a7, s3
                  slti         t5, a4, 1358
                  sll          t0, a4, s0
                  sub          s9, t6, s4
                  lui          s11, 756564
                  auipc        t2, 884568
                  nop
                  bge          s5, a6, 272f
                  bne          tp, s7, 262f
                  lui          a0, 811082
                  sltiu        zero, a4, 1562
                  srl          tp, ra, t0
                  ori          a5, a6, -1983
                  sltu         t0, ra, s11
                  slt          ra, s4, a5
                  ori          t5, a4, -187
261:              slli         ra, s1, 28
262:              lui          gp, 949161
                  sra          s11, t5, t1
                  bgeu         s11, a5, 268f
                  andi         t0, t4, -209
                  sub          sp, gp, s0
                  bne          s7, s9, 270f
268:              xor          zero, s9, t0
                  xor          a1, a5, s4
270:              bne          a3, sp, 272f
                  sltiu        a0, t2, -206
272:              sub          a2, s2, s3
                  srli         t6, t6, 23
                  sub          tp, s11, t6
                  bge          s9, a0, 288f
                  srli         s10, t2, 0
                  srli         s10, s2, 17
                  slti         s9, s4, 1166
                  sltiu        s2, s9, 1528
                  slti         a3, s6, 275
                  bltu         s2, s0, 301f
                  srai         t2, t1, 4
                  sltiu        s7, s9, 739
                  la           sp, region_1+1364 #start riscv_load_store_rand_instr_stream_5
                  and          ra, t4, a3
                  sub          t6, s9, s2
                  nop
                  lbu          a4, 45(sp)
                  lb           s2, 3(sp)
                  sb           s0, -3(sp)
                  sltiu        s2, sp, 1761
                  xor          s7, tp, s9
                  and          t6, s2, t0
                  lbu          a2, -36(sp)
                  add          gp, ra, s2
                  sltu         s6, s3, ra
                  srai         a0, s3, 9
                  sra          t4, sp, t3
                  sb           s4, 16(sp)
                  sra          s3, a5, t4
                  xori         s2, a7, -1528
                  lhu          t5, 62(sp)
                  add          ra, s2, s0
                  sb           t5, 64(sp)
                  sltu         a6, t5, t1
                  lbu          a2, 47(sp)
                  lbu          s9, -56(sp)
                  lbu          t6, 26(sp)
                  slli         a5, s4, 6
                  slti         t5, t0, 432
                  lbu          a1, -61(sp) #end riscv_load_store_rand_instr_stream_5
                  sll          s10, s4, zero
                  nop
                  andi         sp, t1, -1500
                  ori          t0, a3, -1340
288:              blt          s3, a1, 298f
                  sll          s11, s8, gp
                  sltu         s6, ra, s1
                  sll          a4, s2, s0
                  ori          s1, tp, -938
                  blt          a7, s2, 298f
                  bge          s1, s4, 301f
                  sltiu        s3, t1, -1782
                  bgeu         a3, ra, 300f
                  xori         a4, a6, 2014
298:              andi         a3, tp, 304
                  beq          a0, t0, 303f
300:              ori          a3, sp, 1062
301:              sll          s2, a5, s10
                  srai         s9, a3, 13
303:              auipc        zero, 444385
                  add          a3, s9, s5
                  srl          s10, s4, s1
                  sltiu        s1, s10, 935
                  bltu         a0, t5, 320f
                  addi         a7, s10, -984
                  xori         s7, a0, -155
                  sub          s1, s5, s4
                  add          a7, a6, t3
                  bgeu         s10, sp, 332f
                  xor          t2, s5, s1
                  sll          tp, t3, s10
                  bge          t0, s7, 322f
                  sltu         a5, a7, a7
                  nop
                  add          a3, t6, t6
                  srli         s8, gp, 16
320:              bne          a5, zero, 324f
                  or           t5, s5, s4
322:              slli         gp, sp, 27
                  lui          a7, 44
324:              sra          s10, t0, s4
                  addi         s5, s8, -1785
                  lui          t5, 855422
                  sra          s7, a4, s4
                  xor          t2, t1, t5
                  srl          sp, zero, s5
                  slti         t6, s7, 742
                  sra          s10, s2, s2
332:              slti         s2, s11, 1003
                  or           t0, s10, a1
                  nop
                  slti         s3, s8, 1111
                  or           t0, a0, t3
                  slli         ra, t3, 28
                  addi         t0, t1, 1359
                  addi         t6, s1, 156
                  sll          t1, a6, s8
                  nop
                  bne          s5, s6, 345f
                  or           sp, t5, a0
                  sltiu        t2, a4, 1718
345:              blt          s6, s7, 358f
                  bne          s6, t1, 350f
                  xor          ra, gp, tp
                  addi         s1, t3, -1467
                  andi         s3, s2, 886
350:              sll          s11, t1, t0
                  srli         s6, t5, 20
                  bne          s4, s11, 361f
                  xor          t6, s0, zero
                  srai         s3, t1, 12
                  bltu         zero, t5, 375f
                  srl          s8, s9, a7
                  sltiu        tp, ra, 1726
358:              sra          a3, a6, a4
                  bge          s11, t3, 379f
                  bgeu         s2, s8, 364f
361:              slt          a0, s5, s9
                  or           a1, a2, s7
                  or           a5, s6, a4
364:              beq          t5, t3, 368f
                  sub          s7, t0, gp
                  lui          s10, 761688
                  lui          s8, 458012
368:              lui          s9, 772229
                  ori          t1, t2, 1988
                  slli         a5, t1, 22
                  slt          s11, a2, sp
                  lui          s6, 519898
                  sra          t2, ra, t1
                  andi         a3, s7, 1065
375:              ori          a6, s3, -1404
                  sltiu        s6, t1, -490
                  srli         sp, sp, 14
                  or           s11, gp, t1
379:              xor          a0, s3, a3
                  sra          a4, ra, sp
                  xori         t5, sp, -1307
                  sll          s9, a4, a1
                  sltiu        a5, s1, -1524
                  add          s10, s6, tp
                  sltiu        s1, t5, 496
                  xor          a3, a0, s9
                  slt          s9, zero, s7
                  nop
                  bltu         s2, s6, 396f
                  xori         s7, a3, 910
                  ori          a1, sp, -76
                  addi         t1, a0, 1359
                  addi         tp, ra, 1919
                  sll          t4, s9, a5
                  bltu         t3, t6, 399f
396:              slt          a6, s9, t4
                  andi         a7, s1, 964
                  srai         s2, s6, 19
399:              slti         s5, sp, 1401
                  sub          ra, s1, s11
                  slt          s10, s9, a4
                  slt          ra, a1, s5
                  sra          tp, a7, gp
                  sltiu        s7, s7, -1206
                  bltu         a3, a3, 418f
                  and          s3, tp, t1
                  beq          t3, t2, 427f
                  srai         s9, s1, 0
                  xori         a2, t2, -1133
                  blt          ra, a7, 426f
                  sub          a3, s4, t2
                  sll          t1, s8, t0
                  srl          s5, s3, s8
                  srai         a1, s1, 27
                  slli         s11, t1, 21
                  sub          s6, s10, t2
                  sltiu        s6, zero, 2036
418:              srl          s2, s2, ra
                  bgeu         s10, s1, 423f
                  sra          t1, zero, a0
                  sub          t5, a0, tp
                  bne          a5, a1, 424f
423:              or           a3, t1, t5
424:              or           t2, a6, a6
                  auipc        sp, 216515
426:              ori          a3, a1, 894
427:              ori          t4, a5, -784
                  beq          a4, t5, 433f
                  or           t2, s4, s2
                  blt          s8, a7, 439f
                  blt          s6, s9, 445f
                  bne          t1, zero, 445f
433:              bltu         a1, a3, 436f
                  nop
                  srl          a2, s11, s4
436:              blt          t3, t4, 447f
                  sra          a3, s8, a4
                  bge          s0, t3, 452f
439:              slli         s7, s8, 26
                  xori         s11, a0, 1095
                  ori          gp, s0, 281
                  blt          s3, a3, 452f
                  slti         s8, s8, 1101
                  srl          t6, s6, tp
445:              srai         s11, s8, 16
                  srl          s6, ra, t4
447:              bge          a6, tp, 454f
                  bge          s2, a2, 467f
                  addi         tp, t3, -659
                  slt          s1, s11, t5
                  sltu         a7, s2, a5
452:              beq          s11, ra, 456f
                  bgeu         zero, s8, 461f
454:              sltiu        s5, a0, -1110
                  slti         a5, s3, 545
456:              slt          s11, s6, t3
                  lui          zero, 909720
                  and          a4, s10, s2
                  srl          t6, a2, a6
                  xor          sp, gp, t5
461:              bge          sp, t3, 475f
                  slli         sp, s9, 12
                  bltu         t6, s4, 470f
                  sub          tp, a6, s8
                  blt          t2, t5, 469f
                  slti         t1, a1, -1497
467:              blt          t4, s11, 476f
                  bge          s7, s0, 472f
469:              add          s3, t1, s8
470:              sub          t2, a7, t6
                  bne          a7, s7, 475f
472:              lui          a5, 126807
                  bgeu         s6, s6, 486f
                  and          s11, s2, t0
475:              auipc        a5, 230611
476:              nop
                  add          a2, gp, a7
                  bltu         t1, sp, 482f
                  sub          sp, a2, s0
                  slli         a5, a3, 7
                  sltu         gp, a6, s7
482:              sub          s5, s4, s6
                  or           s2, a7, a2
                  xor          s3, a6, s11
                  or           s3, t2, t1
486:              blt          gp, a3, 493f
                  srai         a7, s2, 29
                  sltiu        tp, a6, 1808
                  and          a6, s7, t0
                  srai         a3, t6, 4
                  xori         s10, a7, 857
                  srai         a2, a0, 1
493:              andi         s5, s8, -238
                  xor          s1, s3, t2
                  beq          a7, a3, 509f
                  xor          a6, gp, sp
                  bltu         zero, gp, 510f
                  bgeu         s9, t2, 518f
                  bltu         s5, s7, 503f
                  andi         s1, a5, 1808
                  bltu         s9, s7, 521f
                  bgeu         t4, t2, 507f
503:              add          ra, a6, t1
                  add          s9, t6, a7
                  bgeu         s8, t5, 516f
                  xori         s1, t1, 1467
507:              slti         t1, sp, 1267
                  sll          a1, s10, s4
509:              slti         sp, a1, -1962
510:              sll          a1, ra, a1
                  slli         t6, s11, 26
                  andi         zero, a0, -4
                  andi         a3, s6, -1419
                  blt          s3, a6, 517f
                  add          zero, a6, s9
516:              bgeu         t3, s11, 520f
517:              srli         t1, a3, 4
518:              sll          a3, t0, t1
                  auipc        t6, 421789
520:              sub          s2, sp, s11
521:              srli         s9, s3, 16
                  bgeu         t4, s3, 542f
                  bge          s3, s10, 526f
                  bge          t0, t0, 534f
                  sll          t0, t6, gp
526:              bgeu         a7, s4, 542f
                  srai         t2, a0, 12
                  add          ra, t4, a6
                  srai         zero, s10, 16
                  and          s2, a7, t0
                  bgeu         a6, t4, 544f
                  slli         zero, sp, 25
                  lui          s9, 501457
534:              or           s11, s0, sp
                  slli         s9, a5, 30
                  blt          t6, t1, 556f
                  sltiu        a2, s3, 249
                  srl          a6, a1, s6
                  srli         zero, s8, 25
                  slli         s2, s11, 21
                  addi         t5, s10, -1847
542:              srli         t0, s3, 29
                  addi         sp, s10, 2020
544:              lui          t6, 176137
                  sll          t4, sp, t0
                  sll          a1, s4, a3
                  andi         sp, s4, -1490
                  and          s5, t2, zero
                  or           t1, s2, t0
                  blt          t6, s4, 554f
                  sltiu        t2, a1, -1359
                  auipc        a6, 1232
                  sub          s1, zero, s11
554:              bgeu         t5, sp, 556f
                  auipc        s7, 128763
556:              bltu         a0, a3, 575f
                  sltiu        t4, a4, -1498
                  srai         s1, a0, 8
                  srli         a2, t4, 20
                  srl          s7, sp, t6
                  slli         sp, sp, 30
                  sub          a4, a6, s1
                  auipc        t6, 433434
                  bne          s1, t5, 572f
                  sll          t1, ra, s6
                  bne          a4, s0, 575f
                  sll          sp, s8, t0
                  lui          s9, 209116
                  sra          a4, ra, a3
                  or           s2, s7, t1
                  xor          s1, s4, ra
572:              sra          a0, a0, a5
                  andi         s10, t1, -1810
                  bge          t4, s6, 581f
575:              andi         t5, tp, -1260
                  sltiu        t4, s11, -367
                  beq          s4, s7, 581f
                  srl          s5, gp, s6
                  sll          a1, s6, s1
                  sltu         t4, tp, s11
581:              slt          s3, t0, a1
                  blt          s11, t0, 589f
                  nop
                  srl          t4, t5, s3
                  bgeu         t1, sp, 596f
                  xori         s9, t3, -1040
                  bgeu         tp, a6, 607f
                  bltu         t2, s1, 601f
589:              bltu         a7, sp, 603f
                  bne          s1, a7, 599f
                  beq          t2, a1, 595f
                  or           s6, s0, s9
                  and          sp, s9, s3
                  add          s7, s9, t2
595:              sra          s10, s7, s5
596:              slti         s9, a5, -1108
                  andi         a3, s11, 1780
                  sltiu        s6, s8, -935
599:              sltu         gp, s0, a6
                  slt          s9, s8, s0
601:              add          s6, a0, tp
                  srl          s1, a0, s9
603:              add          a4, s4, a1
                  bltu         a2, s3, 611f
                  xori         gp, s1, -59
                  bge          a3, s5, 610f
607:              sub          a7, a4, gp
                  slti         s3, ra, -1407
                  and          tp, t3, s4
610:              sltiu        s10, a3, -208
611:              srl          t2, a2, a4
                  beq          a2, t4, 632f
                  slti         a2, s11, 621
                  lui          sp, 253640
                  and          a4, t5, t6
                  sub          s2, gp, t3
                  nop
                  slli         s5, t2, 7
                  bgeu         s5, t6, 623f
                  xori         t5, s5, -1610
                  add          tp, s6, s4
                  bltu         t2, s1, 638f
623:              beq          a0, s11, 632f
                  auipc        zero, 498585
                  bgeu         s9, gp, 633f
                  xori         t5, s6, -984
                  blt          s10, a5, 640f
                  slti         t4, gp, 175
                  andi         s3, t0, -287
                  bne          t0, s3, 650f
                  bltu         tp, a2, 633f
632:              add          t5, s10, s0
633:              addi         ra, s9, -654
                  sltiu        s7, zero, -1718
                  bge          t1, s6, 639f
                  sltu         s5, s0, t6
                  blt          a0, t0, 641f
638:              sll          t0, s8, a4
639:              slli         tp, a6, 4
640:              auipc        s11, 101472
641:              sra          s1, a3, s1
                  srai         s6, s1, 19
                  sltu         a6, s1, t4
                  auipc        t2, 245317
                  and          s6, tp, a3
                  srai         t2, s10, 9
                  sra          a0, t6, a0
                  blt          zero, t2, 662f
                  xor          a0, s0, t6
650:              srai         a4, ra, 28
                  slli         t1, ra, 17
                  nop
                  srl          zero, a1, s3
                  sub          a6, s10, s3
                  la           s11, region_1+277 #start riscv_load_store_rand_instr_stream_0
                  lb           a6, 12(s11)
                  addi         a6, s7, 1142
                  lbu          t2, 8(s11)
                  lb           t5, 5(s11)
                  lbu          zero, -2(s11)
                  sb           sp, -2(s11)
                  sltu         a0, s3, s8
                  sb           t6, 3(s11)
                  lb           a1, -15(s11)
                  slt          a4, t1, s2
                  sb           s11, -8(s11)
                  and          s6, s10, t2
                  lbu          t2, -9(s11)
                  lb           a5, 5(s11)
                  auipc        t4, 1018881
                  ori          a2, a4, -1231
                  lh           a5, 7(s11)
                  xori         a3, s5, -364
                  sltu         a3, zero, t6
                  sb           gp, 10(s11)
                  sh           s1, 5(s11)
                  sltu         s5, t6, s7
                  or           sp, s2, s0
                  auipc        a6, 232298
                  sb           s8, -13(s11)
                  sh           ra, -3(s11)
                  sub          s8, s3, t0
                  lb           t2, 2(s11)
                  sll          s9, t3, s4
                  sra          tp, t2, t0
                  lbu          s2, -3(s11)
                  lbu          t4, -8(s11) #end riscv_load_store_rand_instr_stream_0
                  bgeu         sp, s6, 660f
                  slti         s9, zero, 72
                  bgeu         s9, s6, 667f
                  xor          a2, s6, s9
                  lui          s6, 180034
660:              srli         t4, tp, 13
                  bltu         s11, s3, 664f
662:              beq          tp, t2, 682f
                  sub          t1, zero, s9
664:              sltu         t4, s3, s7
                  or           t1, a1, t1
                  or           s1, a4, a7
667:              auipc        t4, 731362
                  or           t0, zero, s6
                  srl          t1, ra, ra
                  bne          a2, s10, 673f
                  srli         gp, gp, 9
                  and          s8, t0, a0
673:              lui          a4, 108214
                  sub          a2, a0, s11
                  slli         a1, a6, 13
                  or           s7, s11, tp
                  sra          tp, s5, s4
                  beq          s0, a1, 682f
                  ori          a1, a7, -1281
                  nop
                  srai         tp, s8, 13
682:              bgeu         sp, s0, 695f
                  sltiu        gp, s8, 677
                  lui          s3, 77623
                  nop
                  and          s3, t4, s11
                  srli         t5, s0, 15
                  bne          t0, s9, 707f
                  sub          s11, s8, tp
                  slt          a5, t4, s0
                  slti         tp, a5, -69
                  ori          t4, tp, 881
                  sltu         t6, t1, s0
                  sltiu        s9, t4, -653
695:              or           s7, s1, a7
                  srl          sp, a6, a0
                  srl          a2, sp, a1
                  andi         t1, s3, -291
                  auipc        s5, 980250
                  sub          a0, gp, s6
                  sra          a1, t5, s7
                  sltiu        s1, s9, -928
                  ori          a4, t1, 1308
                  bge          gp, a5, 711f
                  xor          s8, tp, t5
                  blt          t3, s0, 725f
707:              srli         sp, s9, 29
                  slti         ra, s2, -141
                  and          s6, a4, ra
                  slti         sp, sp, -1078
711:              or           tp, gp, a7
                  sltiu        ra, a5, -941
                  nop
                  ori          a5, t2, -1380
                  slt          t0, s5, s7
                  auipc        gp, 287652
                  auipc        s3, 829036
                  xori         t5, sp, 1296
                  auipc        s2, 777063
                  add          t0, s4, s4
                  srl          s6, s11, t4
                  ori          a6, gp, 11
                  andi         a0, sp, -1502
                  srl          a7, s9, s4
725:              blt          a4, a4, 730f
                  beq          s3, a0, 733f
                  bge          a6, a7, 747f
                  bne          a3, a4, 738f
                  addi         t4, t6, 715
730:              add          tp, ra, s2
                  slt          t5, t0, a7
                  add          sp, a3, s11
733:              bne          t2, s2, 737f
                  lui          s8, 422656
                  sub          a2, s10, a3
                  andi         a3, s0, 443
737:              add          a0, s6, t1
738:              andi         s2, a4, 1940
                  bltu         s0, a7, 750f
                  sltu         s8, s8, s10
                  slti         t5, t0, -1226
                  sra          t5, s5, s4
                  bne          s6, t6, 751f
                  blt          s11, s11, 747f
                  beq          s1, t2, 765f
                  bge          s3, s6, 750f
747:              beq          s6, s6, 767f
                  slt          s9, a1, s11
                  lui          s11, 846286
750:              add          s11, a1, s10
751:              and          s11, a4, s1
                  slli         t4, a7, 8
                  slt          s11, s4, s6
                  slli         s11, s4, 0
                  beq          s1, zero, 768f
                  sll          a4, t2, ra
                  srai         ra, s0, 20
                  slli         t6, s6, 12
                  bne          t4, a1, 779f
                  beq          s10, gp, 763f
                  ori          t1, s9, -443
                  sra          a6, t2, a6
763:              and          s5, a6, gp
                  sub          a0, a1, t2
765:              andi         s11, a1, 1285
                  srli         t2, t3, 4
767:              slt          tp, a7, a4
768:              andi         t6, sp, 492
                  bgeu         s4, tp, 773f
                  nop
                  xori         t2, t2, 1967
                  srli         sp, t5, 2
773:              srl          t2, t0, t6
                  xor          a3, s4, sp
                  nop
                  srai         s8, a6, 24
                  srl          t6, s9, a6
                  nop
779:              nop
                  addi         t2, ra, 1456
                  sub          a0, t3, t0
                  slt          a5, s10, a4
                  slli         tp, a5, 19
                  xor          a6, s8, a7
                  sll          a7, s1, s8
                  ori          t1, a2, 551
                  slli         s6, a6, 2
                  bltu         s6, s0, 795f
                  xori         s9, t3, 368
                  srl          sp, s6, s9
                  lui          zero, 502680
                  bgeu         s10, s9, 799f
                  slt          ra, a3, tp
                  blt          a0, gp, 803f
795:              blt          ra, a4, 809f
                  sra          ra, s0, tp
                  bgeu         a5, a5, 810f
                  xori         t2, s1, -863
799:              xori         a6, s9, 833
                  nop
                  sra          t6, t2, t2
                  lui          a4, 332330
803:              bltu         a1, t4, 807f
                  add          t5, a6, a4
                  lui          a3, 701387
                  bne          a7, s8, 810f
807:              sra          sp, gp, s7
                  sltu         a0, a6, a3
809:              auipc        s8, 995213
810:              slli         t4, s4, 16
                  addi         a3, a3, 145
                  add          s1, s10, s8
                  bgeu         ra, s11, 816f
                  srl          s5, s6, a6
                  and          t1, s2, a4
816:              slli         t1, s2, 11
                  addi         s10, s8, -33
                  auipc        zero, 479578
                  lw           a5, 4(s4)
                  and          tp, s3, t6
                  addi         s4, s4, 64
                  slli         a0, s8, 11
                  and          s6, s9, sp
                  ori          s2, a7, -1958
1048:             addi x6, x15, 0
1048:             jalr x6, x6, 0
sub_2:            xor          tp, tp, t4
                  xori         s3, s10, -898
                  add          gp, t0, a3
                  bge          sp, a7, sub_2_stack_p
                  srli         s10, s7, 16
                  srl          tp, gp, a4
                  add          s7, a1, a1
                  sub          a2, s2, a2
                  addi         a1, t6, -1186
sub_2_stack_p:    addi         s4, s4, -48
                  sub          zero, s11, a2
                  sw           a5, 4(s4)
                  xor          s2, gp, s7
                  la           s10, region_0+251 #start riscv_load_store_rand_instr_stream_1
                  and          gp, s0, s9
                  sh           sp, 15(s10)
                  lb           t5, 16(s10)
                  lhu          zero, 7(s10)
                  sb           t2, -6(s10)
                  or           gp, t4, s3
                  sub          t5, sp, s8
                  or           a5, a6, gp
                  lbu          a2, -6(s10)
                  lhu          tp, -11(s10)
                  lb           s7, 10(s10)
                  xor          s1, tp, t2
                  lb           a0, 6(s10)
                  srai         s6, a3, 8
                  auipc        a5, 594327
                  sb           s0, 7(s10)
                  slli         sp, gp, 21
                  lh           s9, 11(s10)
                  sltiu        a3, t6, -77
                  srai         t4, s1, 25
                  lb           gp, 11(s10)
                  lb           s2, -7(s10)
                  xori         t1, a7, 1254
                  sb           t5, 8(s10)
                  lb           s3, 2(s10)
                  lhu          a6, 15(s10)
                  lb           sp, -6(s10)
                  xori         a6, a5, 2019
                  sb           zero, 5(s10)
                  srai         a7, s1, 8
                  auipc        t0, 491208
                  lh           sp, -3(s10)
                  sb           sp, 0(s10)
                  lbu          s8, 11(s10)
                  slt          s2, s2, sp
                  lhu          s11, -11(s10)
                  lb           a6, -3(s10)
                  sb           t3, 16(s10)
                  slti         a7, t4, -879
                  sb           s9, -2(s10)
                  lb           t1, -10(s10) #end riscv_load_store_rand_instr_stream_1
                  la           a3, region_0+1733 #start riscv_load_store_rand_instr_stream_0
                  sb           s5, 17(a3)
                  addi         sp, s0, 404
                  lb           s11, -7(a3)
                  sb           s6, -54(a3)
                  addi         a6, t1, 992
                  slli         gp, a2, 11
                  sb           s2, 30(a3)
                  lb           ra, 193(a3)
                  addi         t1, s9, -1737
                  xori         tp, t3, 1559
                  sh           s8, -205(a3)
                  lb           t0, -36(a3)
                  srli         t4, s0, 1
                  srli         s9, t2, 4
                  lbu          s3, -152(a3)
                  sltu         ra, t5, s4
                  sh           t6, 243(a3)
                  lhu          a6, -131(a3)
                  sra          a7, tp, s10
                  add          sp, t2, t4
                  lbu          sp, 37(a3)
                  sub          tp, zero, s10
                  srai         t2, t1, 2
                  xor          s10, zero, a3
                  and          a1, t4, a2
                  lb           s11, -71(a3)
                  lbu          t0, -153(a3)
                  lb           a6, -121(a3)
                  and          t5, a2, t3
                  auipc        s11, 138517
                  srl          t0, t0, s10
                  nop
                  and          a4, a3, s1
                  lb           t0, -195(a3)
                  sb           tp, 219(a3)
                  slli         s10, s2, 28
                  and          zero, t1, gp
                  sltu         zero, a1, a3
                  andi         sp, s10, 1940
                  lhu          ra, -123(a3)
                  slt          a5, a1, a3
                  srli         t1, s1, 19
                  lb           t6, -117(a3) #end riscv_load_store_rand_instr_stream_0
                  ori          zero, a6, -403
                  addi         a6, tp, 1062
                  lui          s2, 636231
                  slli         zero, s9, 7
                  slti         zero, sp, 1243
                  addi         t6, s8, -727
                  srai         s7, a0, 29
                  and          a7, t2, s0
                  bge          a2, t1, 15f
                  srli         t1, s11, 30
                  addi         a6, t4, 1392
                  nop
                  ori          s8, t2, -233
                  sltu         s8, t6, sp
                  slli         s9, s1, 24
15:               srai         s11, a2, 8
                  slti         a2, s6, 1818
                  auipc        s9, 434190
                  ori          sp, a5, 134
                  auipc        t6, 357003
                  slti         sp, t3, 1314
                  bge          a2, s0, 23f
                  nop
23:               sub          s1, s3, ra
                  sltiu        a3, t6, 1913
                  bgeu         a5, s8, 37f
                  auipc        a4, 468818
                  sll          s5, s7, sp
                  addi         a1, s7, 1692
                  blt          s9, a5, 37f
                  beq          a5, a5, 50f
                  auipc        sp, 25519
                  auipc        a3, 116992
                  srli         a0, s11, 31
                  srli         ra, s3, 15
                  srl          t5, t4, s11
                  xor          t1, s6, ra
37:               xor          t6, s11, a7
                  sra          tp, a5, s4
                  sll          gp, t5, a2
                  bgeu         s5, t5, 46f
                  bge          s6, a2, 51f
                  la           a2, region_1+320 #start riscv_load_store_rand_instr_stream_2
                  sb           t3, -252(a2)
                  srai         t1, s5, 16
                  sb           s4, 233(a2)
                  slli         sp, s8, 11
                  addi         sp, t6, -421
                  lhu          a4, 46(a2)
                  sb           a3, -110(a2)
                  lh           a7, -100(a2)
                  lbu          s8, 31(a2)
                  sb           s7, 65(a2)
                  add          ra, a4, s1
                  sb           s1, -86(a2)
                  lb           t5, -250(a2)
                  slti         s10, t6, -2003
                  slti         a6, a5, 1310
                  lbu          t5, 253(a2)
                  sh           a7, -212(a2)
                  srai         a7, a7, 31
                  slti         t0, t2, -512
                  sb           t1, -13(a2)
                  lb           zero, 247(a2)
                  sll          a6, s7, t3
                  sltu         t6, a4, t6
                  sb           s2, 197(a2)
                  slt          a0, s0, zero
                  sb           a1, 214(a2)
                  lh           a6, -184(a2)
                  slti         s6, a3, 1098
                  lb           a3, 101(a2)
                  auipc        s5, 624364
                  ori          ra, a6, -840
                  xori         a1, s9, 1613
                  lbu          s2, 54(a2)
                  lb           t6, -59(a2)
                  lb           s2, 101(a2)
                  lbu          s2, -238(a2)
                  sw           s0, 128(a2)
                  lhu          s7, -256(a2)
                  lb           t6, 1(a2)
                  lh           s9, 92(a2)
                  xor          s2, s6, s8
                  lw           s7, 164(a2)
                  xor          s2, a4, t5
                  auipc        ra, 862218
                  slt          s10, sp, s11
                  lbu          a5, -103(a2)
                  srl          a0, s6, sp
                  lhu          s9, 20(a2) #end riscv_load_store_rand_instr_stream_2
                  or           s11, tp, t5
                  sltu         ra, ra, s3
                  ori          a4, zero, -1323
                  srli         t4, a1, 5
46:               add          tp, a6, a2
                  bge          a5, s3, 55f
                  sltu         a3, s1, s2
                  and          t1, s4, s6
50:               andi         sp, t0, 495
51:               lui          s7, 25312
                  bltu         tp, gp, 58f
                  sltiu        s8, s3, -1639
                  or           gp, t0, t2
55:               bne          s0, a6, 75f
                  slti         t0, s10, -97
                  bgeu         a3, sp, 61f
58:               addi         s9, s5, 1917
                  bge          a6, a6, 79f
                  slt          t5, t0, t5
61:               sltiu        t1, s6, -1655
                  andi         s1, s5, 1481
                  srl          tp, s11, s4
                  xori         s11, s8, -1976
                  sltiu        zero, s11, 1359
                  nop
                  sra          s9, a6, a6
                  slt          a7, a0, tp
                  srli         t4, s4, 2
                  sub          t6, s1, s5
                  srli         s5, s10, 5
                  sltu         a1, s0, s8
                  addi         ra, t5, 1951
                  sltiu        s11, s1, -842
75:               nop
                  slt          s3, s5, gp
                  ori          s7, sp, 943
                  srai         sp, tp, 1
79:               srl          s8, ra, zero
                  nop
                  sll          t2, gp, a6
                  andi         a0, s2, 1894
                  lui          t2, 640532
                  ori          t4, a7, -1026
                  andi         a4, s7, -1859
                  bne          a7, s11, 104f
                  slti         zero, a3, 49
                  sltu         a3, s6, a3
                  sra          s7, s10, s11
                  bltu         a7, a7, 110f
                  beq          a1, a3, 95f
                  or           s8, ra, a7
                  auipc        s8, 490860
                  bne          s4, a6, 101f
95:               beq          zero, a2, 105f
                  xori         a5, s7, -2045
                  or           gp, s4, gp
                  nop
                  and          gp, s10, s11
                  blt          t4, t4, 107f
101:              blt          s3, t4, 107f
                  bgeu         s10, a0, 113f
                  bne          a7, ra, 105f
104:              slli         s2, s4, 20
105:              add          t5, ra, s3
                  sll          s8, s7, s1
107:              ori          a3, ra, 1461
                  lui          a2, 240546
                  srai         tp, t1, 3
110:              srl          s6, s1, s9
                  nop
                  bne          s2, a2, 132f
113:              xori         s6, t3, 1842
                  blt          a6, sp, 115f
115:              xori         t1, t3, 741
                  srai         tp, s8, 15
                  sub          s10, a3, s5
                  bne          a7, t3, 119f
119:              srai         a0, t5, 24
                  auipc        t2, 844902
                  bltu         s4, t4, 127f
                  slt          s3, s11, s8
                  blt          a6, t6, 143f
                  blt          zero, s4, 143f
                  sub          s3, s11, t6
                  nop
127:              srl          t0, gp, s8
                  sltiu        a0, s9, 285
                  or           t6, ra, t2
                  lui          a2, 587477
                  slti         s11, t5, -110
132:              auipc        s11, 819052
                  blt          s2, a5, 143f
                  srai         s5, t6, 12
                  nop
                  add          a1, a5, t6
                  addi         a1, sp, 1040
                  lui          a5, 1000646
                  sltu         a0, a7, t6
                  ori          s9, t5, 1015
                  bge          s9, t0, 146f
                  ori          s2, t6, 374
143:              slli         a1, t3, 26
                  slti         s1, s11, 1279
                  ori          s7, a4, 399
146:              bne          t0, s2, 151f
                  bne          a5, s4, 155f
                  sltiu        a7, t5, 611
                  slti         a5, s9, 1603
                  sltiu        t2, s4, 1220
151:              or           s8, s4, s4
                  andi         a5, a3, 598
                  ori          t5, s0, 849
                  sll          s1, t2, s7
155:              slti         s6, zero, 362
                  bge          s1, s8, 176f
                  and          t5, s4, s6
                  sll          a5, s0, a5
                  and          zero, tp, a1
                  slli         t2, t6, 25
                  sra          a3, a2, t1
                  and          zero, a5, s0
                  sra          t0, s6, a0
                  sra          a0, s8, t0
                  slti         t6, gp, 957
                  bgeu         s1, tp, 173f
                  slli         a4, s10, 15
                  bne          s4, t2, 173f
                  xori         a0, s9, 305
                  bgeu         tp, s11, 176f
                  andi         a4, s1, -1816
                  sltiu        t6, t1, 2014
                  srai         t5, a5, 14
                  bge          s0, zero, sub_2_j5 #branch to jump instr
                  addi         s5, t0, -801
                  addi         t2, t1, 421
                  xori         s8, t2, 86
sub_2_j5:         jal          a5, sub_4 #jump sub_2 -> sub_4
                  add          s6, t3, t5
173:              lui          t5, 763915
                  andi         s1, t1, -992
                  slli         s2, s3, 22
176:              beq          a3, s6, 187f
                  lui          s11, 313231
                  ori          gp, s0, 918
                  auipc        s3, 673264
                  nop
                  blt          s10, a6, 182f
182:              bne          t0, s9, 202f
                  sub          a4, s5, s11
                  beq          t1, s8, 202f
                  addi         s7, s0, 1823
                  andi         s6, t0, 595
187:              slti         a4, s4, -24
                  andi         tp, sp, 614
                  srli         t1, t1, 16
                  bltu         s9, t0, 202f
                  nop
                  andi         a7, s1, -1413
                  bltu         a3, t2, 213f
                  sll          a3, a1, t5
                  sub          sp, tp, t0
                  srli         s5, a7, 11
                  addi         s5, s5, 1423
                  srli         a5, ra, 30
                  and          a7, s6, s2
                  sub          t2, t3, t1
                  bge          s0, a5, 211f
202:              srai         s5, s3, 21
                  andi         t4, a7, -1897
                  andi         tp, ra, 1694
                  bgeu         t2, ra, 212f
                  blt          t1, a0, 213f
                  and          s1, a6, s4
                  nop
                  bgeu         t3, a4, 219f
                  bgeu         s9, a3, 230f
211:              add          s7, a4, s7
212:              addi         ra, s11, 1462
213:              and          t6, ra, s3
                  srli         a0, a3, 8
                  addi         a0, s3, -1154
                  xor          a7, s9, s3
                  srai         a7, s2, 16
                  srli         s10, a4, 5
                  and          a2, s6, a0
                  xori         a4, s2, 1514
                  slt          s7, t6, a4
sub_2_j6:         jal          a5, sub_4 #jump sub_2 -> sub_4
                  slli         a3, t4, 1
                  slli         ra, ra, 12
                  nop
219:              bgeu         a5, t0, 224f
                  sra          t1, s6, a3
                  or           a0, t3, a4
                  srai         s5, a5, 7
                  auipc        s9, 1057
224:              srli         s8, s8, 9
                  sll          a4, s11, t0
                  sll          s1, s3, s4
                  lui          a2, 54972
                  or           a4, s6, t4
                  addi         t6, s4, 763
230:              xori         a6, a7, -1112
                  slt          sp, a4, s11
                  bge          s4, a5, 238f
                  and          s2, zero, sp
                  srai         a7, s3, 31
                  xori         s6, zero, 18
                  slli         a4, s0, 5
                  bgeu         a5, t4, 238f
238:              sub          s2, s8, a7
                  bge          sp, s7, 247f
                  auipc        s1, 809642
                  add          ra, a7, s1
                  sltiu        a6, s5, 350
                  beq          t0, a2, 245f
                  lui          a7, 539654
245:              andi         zero, t1, 945
                  bltu         s11, ra, 265f
247:              slti         s11, sp, -161
                  lui          tp, 538094
                  blt          s8, a5, 259f
                  slli         a4, t3, 3
                  sltu         a6, t0, s11
                  nop
                  srl          a3, a0, a6
                  slt          s7, a7, t4
                  ori          a0, zero, -283
                  sub          a1, a2, s3
                  sltiu        s7, t6, 622
                  and          t2, a6, s2
259:              bgeu         s11, zero, 265f
                  slli         gp, a2, 16
                  blt          t3, a1, 265f
                  slti         s9, a0, -952
                  bge          s8, s7, 283f
                  and          a2, s5, a7
265:              and          t2, a2, sp
                  slti         t2, s5, 524
                  add          a5, s4, t4
                  andi         s6, s3, -1664
                  bne          s1, s5, 273f
                  andi         s2, s3, 509
                  sltu         s1, s3, gp
                  sra          s1, a1, a0
273:              or           a5, a5, a4
                  slt          a5, a1, a5
                  srl          s7, t3, t4
                  sll          sp, a3, t5
                  sltu         s2, a6, s9
                  sltiu        s1, s8, -1450
                  bne          s8, t0, 299f
                  beq          t2, a1, 286f
                  auipc        t4, 616448
                  bge          a5, a3, 284f
283:              nop
284:              sub          s2, t2, s2
                  bne          s4, t6, 291f
286:              ori          t6, a4, 311
                  srai         sp, s5, 3
                  nop
                  sltiu        a2, s5, 1695
                  sra          a0, t4, a2
291:              add          s8, s5, s4
                  sltiu        s3, a5, -1040
                  addi         a3, s6, 747
                  sltiu        t0, t1, -889
                  xori         s7, t3, 2038
                  srai         t5, s11, 13
                  and          s7, a6, gp
                  beq          a0, zero, 318f
299:              or           s5, t2, s7
                  slt          a7, a1, a4
                  or           s7, t2, a4
                  sra          s2, a2, s10
                  and          a7, a4, t4
                  lui          zero, 842631
                  sll          t4, a2, s1
                  bgeu         a5, s8, 317f
                  nop
                  sltu         s2, s9, ra
                  slti         s3, s0, -1350
                  auipc        s9, 107747
                  lui          s2, 947898
                  and          s9, t4, t3
                  ori          t2, s6, -1872
                  xori         s3, a7, -1205
                  xori         t1, sp, 501
                  sltiu        ra, s1, -1863
317:              addi         s1, t6, -61
318:              sltu         a5, s10, t5
                  srai         s6, t1, 18
                  bgeu         s0, ra, 340f
                  add          s5, zero, s6
                  sra          s11, ra, a5
                  slli         a7, ra, 11
                  srai         s9, s8, 10
                  bgeu         sp, sp, 333f
                  beq          t0, t2, 333f
                  ori          s11, s8, -1587
                  beq          s2, a1, 334f
                  and          a0, a6, s8
                  sra          s2, t2, a0
                  add          s8, ra, s6
                  sub          t5, s4, t6
333:              add          s5, a3, s8
334:              sltiu        a0, a2, 722
                  slli         s7, t1, 25
                  bge          gp, s5, 346f
                  sltiu        tp, t0, -1050
                  or           zero, t0, a0
                  auipc        a2, 555144
340:              ori          a2, a4, -1925
                  sra          ra, a2, a4
                  bne          sp, t6, 350f
                  slti         t5, t0, 124
                  srai         s5, t2, 22
                  ori          s7, a4, 1979
346:              bltu         t5, a4, 350f
                  or           t4, zero, a3
                  xori         a6, a0, -541
                  sub          t2, s1, t4
350:              slt          t5, s10, gp
                  sltiu        a6, zero, -685
                  or           s11, s8, zero
                  sltiu        gp, sp, 1176
                  blt          a7, a1, 361f
                  blt          a4, a5, 359f
                  bltu         sp, sp, 362f
                  sub          gp, s1, s4
                  sll          s11, a3, a5
359:              bgeu         t1, a6, 364f
                  srl          a1, t5, s2
361:              sra          t1, ra, a3
362:              bne          s0, t0, 364f
                  slti         t6, t6, -1502
364:              add          s2, s5, zero
                  andi         s11, zero, -558
                  beq          s11, s8, 367f
367:              bne          s3, t1, 373f
                  sll          a1, t5, tp
                  sub          zero, t3, a0
                  srli         a1, t1, 13
                  beq          s0, sp, 373f
                  andi         s9, s1, 1730
373:              srai         a2, t1, 9
                  ori          s9, a1, -1508
                  add          s11, sp, a7
                  addi         ra, t3, -367
                  srl          a3, s2, gp
                  srli         a1, t5, 20
                  xor          s5, a7, a7
                  bgeu         a5, s11, 399f
                  bge          s11, zero, 393f
                  sub          s7, zero, s1
                  nop
                  add          t1, s5, gp
                  nop
                  and          s5, t0, s4
                  nop
                  beq          s3, t0, 406f
                  auipc        tp, 865408
                  blt          t5, a3, 395f
                  sub          a2, t6, s2
                  andi         a1, s4, -529
393:              addi         a3, s10, 529
                  srai         a0, s7, 12
395:              blt          a0, a4, 415f
                  bgeu         s3, a1, 397f
397:              and          sp, a2, t5
                  and          t0, s8, t4
399:              auipc        a5, 621778
                  bne          ra, sp, 407f
                  auipc        a7, 969245
                  andi         t6, a1, 1233
                  xori         s1, sp, -1968
                  slt          t5, s3, gp
                  slt          ra, t2, a0
406:              addi         ra, t5, 1169
407:              xori         zero, a5, -1637
                  and          a3, t3, s8
                  blt          sp, tp, 419f
                  xori         a3, a5, 664
                  blt          t0, t5, 421f
                  beq          a2, a5, 426f
                  and          t4, a2, s7
                  auipc        s10, 1007845
415:              srl          a5, s9, s5
                  bltu         s2, t3, 426f
                  sltu         sp, a6, a0
                  slt          a3, s8, a5
419:              sltiu        s5, a1, -413
                  lui          t5, 708382
421:              sub          t2, ra, s3
                  sll          t4, a2, t3
                  xor          gp, t1, t6
                  addi         s8, a3, -1522
                  and          s9, ra, a5
426:              xori         t2, s11, 1929
                  sltiu        s7, t4, 1504
                  sltiu        s2, a5, -15
                  or           s1, t2, gp
                  lw           a5, 4(s4)
                  srai         a1, zero, 29
                  sltu         s7, a1, s1
                  addi         s4, s4, 48
                  auipc        s11, 795787
                  sltu         s6, s10, s3
598:              addi x17, x15, 1
598:              jalr x17, x17, 0
sub_7:            lui          t2, 173661
                  addi         s4, s4, -8
                  slti         s2, a6, 147
                  ori          a6, t5, 1805
                  sra          t2, t4, s4
                  sw           a5, 4(s4)
                  lui          t6, 302151
                  srli         s5, t1, 21
                  or           s11, tp, a0
                  ori          s8, a4, -1978
                  la           a6, sub_8
                  slt          s5, s11, a7
                  and          s11, t3, t0
                  addi         a6, a6, 28
                  and          s11, sp, a4
                  slti         t2, s10, 1895
                  xori         s1, ra, 1164
                  bgeu         a0, t5, sub_7_j13 #branch to jump instr
                  ori          a0, s3, -329
sub_7_j13:        jalr         a5, a6, -27 #jump sub_7 -> sub_8
                  la           a5, region_0+1683 #start riscv_load_store_rand_instr_stream_8
                  sb           t5, -1192(a5)
                  lh           ra, -1123(a5)
                  lui          s9, 385944
                  or           a7, t4, t3
                  sb           tp, 184(a5)
                  sb           a6, -1534(a5)
                  srai         t2, s4, 8
                  sb           t6, -946(a5)
                  lbu          s5, -1094(a5)
                  lb           s8, -846(a5)
                  lb           a6, -586(a5)
                  lbu          zero, -1652(a5)
                  lbu          sp, -800(a5)
                  lbu          s10, -841(a5)
                  lh           t0, -1539(a5)
                  slli         s9, s1, 14
                  lh           s2, -1263(a5)
                  sb           t2, 34(a5)
                  lb           t2, -1360(a5)
                  sb           s1, -875(a5)
                  sll          gp, s9, s5
                  or           a0, ra, s10
                  auipc        t4, 689803
                  sb           s5, -204(a5)
                  lb           a1, -1016(a5)
                  sh           s9, -1473(a5)
                  slt          s9, s4, a6
                  or           t0, zero, a2
                  srl          tp, gp, s2
                  lb           a7, -546(a5)
                  lb           t6, -105(a5) #end riscv_load_store_rand_instr_stream_8
                  la           t1, region_1+619 #start riscv_load_store_rand_instr_stream_9
                  sub          a0, s3, s1
                  lbu          t4, -24(t1)
                  lb           a6, -15(t1)
                  lb           t4, -59(t1)
                  lb           s8, -5(t1)
                  sltiu        a6, a5, -1990
                  sb           s4, 24(t1)
                  sll          t2, s3, a2
                  sltiu        a5, t1, -1425
                  lbu          gp, 48(t1)
                  and          sp, s5, zero
                  sb           a4, 2(t1)
                  ori          s3, a0, 908
                  sra          sp, tp, a7
                  lb           t0, 57(t1)
                  sb           s7, 28(t1)
                  or           s9, t3, s2
                  sh           s1, 59(t1)
                  xor          s1, sp, a1
                  lb           tp, -46(t1)
                  sra          s6, a3, s1
                  slli         ra, s0, 17
                  and          s3, a2, t0
                  lui          s3, 556104
                  lbu          s1, -23(t1)
                  srai         a6, t2, 5
                  addi         a5, s2, -835
                  sb           s2, 56(t1)
                  sltiu        a7, s11, 424
                  srl          s7, a4, ra
                  lb           s9, -11(t1)
                  xor          s1, s7, tp
                  lb           s2, 42(t1)
                  sw           s10, 1(t1)
                  addi         s6, a6, 963
                  sw           s7, 57(t1) #end riscv_load_store_rand_instr_stream_9
                  la           sp, region_0+664 #start riscv_load_store_rand_instr_stream_1
                  sll          a6, a1, s10
                  srli         a0, t6, 14
                  sb           t3, 200(sp)
                  srai         s11, a3, 11
                  sltiu        s9, ra, 1203
                  lbu          a1, 113(sp)
                  lh           t4, -24(sp)
                  ori          a7, a5, 1416
                  sb           a2, -17(sp)
                  sb           a6, 118(sp)
                  lb           s8, -65(sp)
                  and          s3, s10, t2
                  ori          s11, t2, -818
                  lbu          zero, -107(sp)
                  lbu          t1, 134(sp)
                  srai         zero, zero, 30
                  auipc        a3, 251865
                  sb           s10, 151(sp)
                  sra          t5, s7, a0
                  sltiu        gp, s7, 1885
                  add          a5, zero, s0
                  nop
                  sll          gp, a5, s10
                  sub          tp, a5, s2
                  lbu          gp, 107(sp)
                  auipc        a1, 878250
                  lb           s2, 18(sp)
                  lb           a6, 65(sp) #end riscv_load_store_rand_instr_stream_1
                  la           t5, region_0+793 #start riscv_load_store_rand_instr_stream_12
                  lh           a1, 819(t5)
                  lbu          t1, -187(t5)
                  lbu          a7, -72(t5)
                  sb           s0, -473(t5)
                  sb           a0, 552(t5)
                  sub          s5, a1, a6
                  lb           t6, 940(t5)
                  lui          s5, 107366
                  sb           sp, -355(t5)
                  lhu          s7, 47(t5)
                  lbu          t4, 466(t5)
                  lbu          s5, 997(t5)
                  sw           s8, 51(t5)
                  auipc        a3, 756649
                  andi         t4, s11, -1919
                  lhu          zero, -327(t5)
                  srai         s2, t6, 1
                  sb           t6, 1014(t5)
                  sltu         zero, zero, t3
                  slli         gp, s2, 15
                  xori         a3, t6, -533
                  slt          a2, a0, a7
                  slli         s7, s2, 10
                  lb           t0, 766(t5)
                  sltiu        s7, s3, 966
                  add          a4, s9, ra
                  srli         a0, ra, 28
                  lbu          gp, -398(t5)
                  ori          a0, s6, 367
                  lbu          s6, -426(t5)
                  xori         gp, a7, 847
                  sra          tp, a0, s4
                  lbu          a2, 404(t5)
                  xori         a2, zero, -1192
                  andi         t1, s0, -483
                  lh           a2, -179(t5)
                  slli         a5, t0, 8
                  lb           a1, 408(t5)
                  lb           a3, 584(t5)
                  xori         sp, t4, -818
                  slli         gp, a4, 12
                  lb           t6, -578(t5) #end riscv_load_store_rand_instr_stream_12
                  la           t2, region_0+1370 #start riscv_load_store_rand_instr_stream_11
                  sll          a0, s4, t0
                  sltu         s1, sp, ra
                  slt          s1, a5, a3
                  slti         s1, t5, 596
                  sltiu        t4, s1, -1677
                  xor          t6, s10, s5
                  lbu          a7, 15(t2)
                  lui          s5, 992082
                  lbu          t4, 13(t2)
                  sb           s7, 1(t2)
                  sw           t1, -6(t2)
                  lbu          t4, 15(t2)
                  or           t5, gp, a6
                  lb           a5, -3(t2)
                  slt          s11, s7, s3
                  srl          s7, t0, tp
                  sw           s5, -14(t2)
                  slt          s11, a2, s1
                  srl          s11, s7, a2
                  slt          s6, s4, ra
                  add          tp, a5, s5
                  nop
                  sh           a1, -12(t2)
                  add          s8, t5, a1
                  and          s8, s9, s9
                  lb           ra, -5(t2)
                  slt          a3, t6, s6
                  srli         gp, s4, 17
                  slt          s6, s9, s1
                  lui          zero, 850076
                  xor          a7, a4, a2
                  sltu         s6, a2, t2
                  lh           a1, 0(t2)
                  lbu          sp, 8(t2)
                  srli         a6, a2, 4
                  lb           s5, -13(t2)
                  sltu         s5, t3, gp
                  slti         gp, s9, 1628
                  lbu          gp, -12(t2)
                  lb           s10, 11(t2) #end riscv_load_store_rand_instr_stream_11
                  la           t1, region_1+1300 #start riscv_load_store_rand_instr_stream_4
                  sb           s1, -65(t1)
                  sub          a1, a5, a5
                  nop
                  srli         s3, a3, 9
                  slli         s9, a4, 23
                  lhu          a5, -112(t1)
                  srl          a6, a5, a0
                  andi         sp, sp, -184
                  lhu          t4, 106(t1)
                  sb           s9, -91(t1)
                  lb           tp, -103(t1)
                  xori         s7, t0, 1523
                  ori          a1, t3, -1310
                  lbu          t0, -143(t1)
                  sb           tp, 43(t1)
                  lhu          s7, -164(t1)
                  sb           t0, 1(t1)
                  slt          a4, t0, a3
                  sub          s6, ra, a5
                  auipc        a0, 666115
                  lbu          s8, 123(t1)
                  srai         s2, a7, 10
                  addi         s10, s9, 281
                  sra          gp, a7, gp
                  sb           s7, 23(t1)
                  sltiu        a1, s7, 1174
                  or           s5, a4, a6
                  sh           s0, -104(t1)
                  addi         s7, s7, 1845
                  sltu         a0, gp, a5
                  sll          s5, sp, sp
                  lhu          a1, -82(t1)
                  slli         a5, ra, 19
                  lb           a2, 165(t1)
                  lb           s10, -56(t1)
                  add          s2, t0, s4
                  lb           gp, -82(t1) #end riscv_load_store_rand_instr_stream_4
                  la           s5, region_0+1557 #start riscv_load_store_rand_instr_stream_3
                  lbu          tp, -14(s5)
                  auipc        t1, 54326
                  sb           a5, -15(s5)
                  sra          gp, t4, a2
                  sltiu        s1, t4, -1500
                  srai         s11, t6, 19
                  sb           t5, 10(s5)
                  slt          t5, s2, s0
                  lbu          s7, 3(s5)
                  lhu          s6, -7(s5)
                  sll          sp, s10, s9
                  slti         s9, s11, -1341
                  lbu          a5, 9(s5)
                  sub          a4, a6, t5
                  xori         t4, t4, -2027
                  and          a4, s2, t1
                  lb           s2, 9(s5)
                  srl          s7, s2, s10
                  xori         ra, s7, 367
                  sll          zero, s4, a2
                  lh           a3, 1(s5)
                  sltiu        s11, t5, -1428
                  slt          t5, t6, a0
                  ori          s8, s2, 626
                  sw           sp, 11(s5)
                  sra          t1, t4, t3
                  slli         a4, a2, 14
                  add          t5, s2, a3
                  lbu          sp, 10(s5)
                  slti         t4, s6, 883
                  lbu          tp, 10(s5)
                  lb           a7, 8(s5)
                  lb           t1, 12(s5)
                  srli         s9, t3, 24
                  sh           a7, 13(s5)
                  lbu          a1, -4(s5)
                  andi         a0, a6, -494
                  lhu          sp, -11(s5)
                  auipc        s3, 103260
                  sub          a1, t6, gp
                  sh           t6, -3(s5)
                  nop
                  slli         a7, gp, 5
                  lui          a6, 845414
                  sb           a5, -8(s5)
                  lbu          s7, -11(s5)
                  lb           s3, 9(s5) #end riscv_load_store_rand_instr_stream_3
                  la           tp, region_0+1990 #start riscv_load_store_rand_instr_stream_10
                  sh           a4, -196(tp)
                  xori         a6, t5, 394
                  slt          s10, s2, a4
                  lhu          t4, -1380(tp)
                  add          s10, s8, a0
                  addi         s7, a0, -1839
                  lb           s8, -1557(tp)
                  lh           gp, -212(tp)
                  sh           t1, -548(tp)
                  auipc        t1, 88819
                  sltu         t5, sp, s5
                  or           s1, t4, s9
                  slt          sp, s6, a5
                  sb           tp, -701(tp)
                  slli         a3, s6, 11
                  lhu          s7, -638(tp)
                  addi         s7, s10, -866
                  xor          s2, a0, s9
                  sub          s9, s7, s7
                  sltu         zero, sp, t3
                  sra          a2, gp, s9
                  lb           a2, -297(tp)
                  nop
                  xor          t6, a4, t4
                  lb           s11, -1915(tp)
                  lb           t6, -1187(tp)
                  lb           t0, -1249(tp)
                  lbu          sp, -1530(tp)
                  srai         s5, t3, 5
                  sh           zero, -1580(tp)
                  lui          t5, 54814
                  lb           s2, -462(tp)
                  lbu          s7, -1186(tp)
                  lh           s8, -442(tp)
                  lbu          t0, -956(tp)
                  lbu          t0, -1425(tp) #end riscv_load_store_rand_instr_stream_10
                  la           ra, region_1+859 #start riscv_load_store_rand_instr_stream_0
                  xori         s1, s9, -164
                  nop
                  or           t6, s4, t5
                  srl          gp, s6, s6
                  nop
                  auipc        t2, 886755
                  sh           s0, -43(ra)
                  srai         t1, t1, 12
                  sltu         t6, t1, s7
                  and          tp, a3, s8
                  addi         t4, zero, -1493
                  nop
                  lbu          t1, 21(ra)
                  sb           gp, -41(ra)
                  sb           sp, 30(ra)
                  slli         s1, s10, 19
                  xori         a0, sp, -1237
                  addi         t2, s11, -1068
                  add          tp, a7, a4
                  srai         a1, t6, 12
                  lui          s9, 570515
                  srli         a7, s4, 4
                  lbu          s5, -19(ra)
                  srai         t5, t2, 30
                  slt          s10, a1, zero
                  sb           t5, 14(ra)
                  srl          s5, a1, gp
                  lui          t4, 617213
                  xori         zero, a0, 1159
                  slti         s6, s3, -967
                  slti         s3, tp, 682
                  slt          a3, a3, s0
                  srl          s8, s0, t4
                  sb           s2, -48(ra)
                  srai         a3, a0, 25
                  lb           s2, 46(ra)
                  lbu          gp, -2(ra)
                  sll          zero, s11, ra
                  lb           a5, -54(ra) #end riscv_load_store_rand_instr_stream_0
                  la           t2, region_0+1605 #start riscv_load_store_rand_instr_stream_2
                  nop
                  sra          t5, s7, a6
                  lui          t0, 635012
                  slli         t4, s2, 11
                  nop
                  lbu          ra, -358(t2)
                  lb           ra, 106(t2)
                  lbu          a4, -838(t2)
                  sll          s5, a1, a7
                  srli         s3, s5, 20
                  sltiu        gp, a4, -1401
                  slli         t4, a7, 24
                  ori          a2, s1, -2026
                  lhu          t0, -1441(t2)
                  lb           a3, -1470(t2)
                  lbu          t1, -232(t2)
                  sltiu        a7, a1, -1591
                  srli         s6, s10, 30
                  lh           a2, -907(t2)
                  xori         sp, s5, -1755
                  sb           a2, -1082(t2)
                  slt          a0, sp, a4
                  slti         s8, t1, 166
                  srai         t5, t1, 20
                  lhu          t0, -447(t2)
                  slli         t4, t1, 13
                  sb           sp, -1448(t2)
                  nop
                  lhu          t0, -1071(t2)
                  sltiu        a5, t1, 671
                  lh           ra, 129(t2) #end riscv_load_store_rand_instr_stream_2
                  blt          s10, a1, 11f
                  sll          t0, t4, zero
                  sll          a3, s5, s8
                  sltiu        a0, t3, -1983
                  sll          ra, tp, sp
                  slti         a3, s9, -1431
                  slt          a0, s4, s10
                  lui          a3, 141338
                  bge          s2, t4, 9f
9:                slti         s10, t2, -1624
                  slli         t0, a4, 0
11:               bge          ra, a6, 15f
                  ori          s3, zero, -1631
                  sub          ra, t5, t4
                  sra          s8, t0, s2
15:               srl          s10, a5, s10
                  nop
                  slt          a6, a1, zero
                  bge          a7, a7, 24f
                  xori         s10, t0, 817
                  slti         s9, t3, -1763
                  sltiu        gp, s6, 1252
                  bne          t0, s3, 26f
                  blt          a3, t5, 26f
24:               sll          s7, a1, s7
                  bne          a2, t3, 40f
26:               sub          s1, s10, s2
                  bgeu         s7, a6, 28f
28:               lui          a3, 758725
                  sltu         sp, a6, ra
                  sltu         a7, a7, a0
                  sltu         a4, s5, t0
                  slti         a2, gp, -1082
                  andi         s6, t1, 1092
                  nop
                  sltu         s10, t3, a6
                  lui          a2, 321098
                  or           sp, a0, t0
                  xor          t0, s0, t2
                  sltu         gp, t0, s3
40:               srai         s8, s7, 25
                  or           s8, s1, a6
                  bltu         t6, s7, 50f
                  andi         a5, t2, -1685
                  slt          a5, a1, t2
                  andi         a1, sp, -253
                  sltiu        t1, s1, 589
                  andi         t0, t4, -291
                  auipc        s3, 197525
                  andi         t6, a3, 1448
50:               add          s11, t1, a4
                  add          t6, s10, a7
                  bltu         gp, s6, 64f
                  ori          s2, tp, 1368
                  lui          t1, 137844
                  blt          a0, ra, 75f
                  bltu         a7, a5, 70f
                  srai         sp, t2, 24
                  blt          s5, s3, 78f
                  srl          zero, s1, s6
                  sll          s9, a3, s4
                  beq          a5, t0, 80f
                  srli         a5, t2, 15
                  blt          zero, a1, 65f
64:               sltiu        s7, zero, -1745
65:               sra          sp, tp, s7
                  slli         s10, t3, 14
                  slti         a2, ra, -996
                  or           s8, zero, a3
                  sub          a3, a3, ra
70:               srai         a6, sp, 25
                  xori         a7, t0, 983
                  slt          t1, s3, s0
                  beq          a5, s3, 79f
                  srl          t4, ra, s5
75:               slti         a2, tp, -431
                  sll          s1, t4, t6
                  bge          a1, s1, 93f
78:               andi         a0, a1, -1378
79:               beq          s6, t4, 89f
80:               add          gp, s5, t0
                  srl          s5, a7, s4
                  bltu         t3, s5, 97f
                  srli         s2, t6, 20
                  sub          a6, s2, s4
                  sltiu        t6, zero, -316
                  auipc        t4, 258005
                  beq          a7, s2, 101f
                  add          a2, a4, a6
89:               slli         tp, s4, 11
                  slli         sp, a6, 20
                  beq          t2, tp, 98f
                  nop
93:               srl          a6, gp, s7
                  ori          s9, s0, 1649
                  add          s8, sp, t6
                  sub          s1, a1, sp
97:               srl          s7, t2, s6
98:               bge          t5, zero, 111f
                  andi         t0, s3, -1844
                  lui          t5, 982701
101:              slli         t6, t6, 11
                  bge          tp, a6, 111f
                  andi         t6, a3, -589
                  la           t1, region_0+1386 #start riscv_load_store_rand_instr_stream_6
                  lb           s1, -786(t1)
                  xor          s7, t6, s3
                  srai         t2, s3, 31
                  xori         a5, t3, 1574
                  sltiu        s1, t0, 1688
                  and          tp, s0, a1
                  sub          s8, s3, t6
                  xor          zero, t2, s11
                  lb           tp, -444(t1)
                  lb           zero, -13(t1)
                  lh           s6, -894(t1)
                  sb           tp, -569(t1)
                  add          s10, t5, s6
                  sub          ra, a6, t2
                  slli         s9, a6, 3
                  auipc        a6, 18508
                  sh           a7, 588(t1)
                  lh           a4, 298(t1)
                  lw           a2, -286(t1)
                  or           a6, s10, s7
                  sb           t4, -1201(t1)
                  add          a0, t1, s5
                  xor          t6, s9, s7
                  xori         s2, s3, -1486
                  lb           a1, -567(t1)
                  srli         tp, a5, 11
                  sltiu        s1, t1, 1085
                  lb           s9, -799(t1)
                  and          tp, s10, t3
                  sb           s8, -1097(t1)
                  slli         gp, gp, 16
                  addi         a0, a3, 1099
                  sltiu        a2, s6, -1615
                  sra          tp, sp, s0
                  xori         zero, a3, -936
                  srl          a4, s4, a1
                  lw           t2, -598(t1)
                  sb           tp, -1069(t1)
                  and          a4, s8, t1
                  sw           a0, -202(t1)
                  lb           s8, 365(t1)
                  xor          a7, t6, s9
                  sb           a4, -429(t1)
                  lb           a0, -119(t1)
                  sb           s11, -32(t1)
                  lui          t6, 760378
                  add          t2, s11, gp
                  lb           s8, 157(t1)
                  lh           t0, 396(t1)
                  lb           t2, -1313(t1)
                  sh           t6, -1132(t1) #end riscv_load_store_rand_instr_stream_6
                  srl          s10, s1, a5
                  sll          a2, s2, a5
                  xor          s7, t4, t2
                  slti         a4, s1, 1922
                  add          s10, s9, t4
                  srl          a4, ra, a0
                  slt          a2, t1, ra
111:              ori          a7, s8, 427
                  sll          a3, t3, s0
                  andi         s2, a3, 1274
                  and          s10, a3, t3
                  bltu         a5, s11, 117f
                  addi         s8, a6, 1077
117:              add          s5, s5, t3
                  addi         s9, t3, 2017
                  slt          s5, s7, s11
                  addi         t4, t4, 1002
                  auipc        sp, 583230
                  add          s8, a3, s5
                  sub          gp, s5, s9
                  slt          s5, s6, gp
                  xor          s5, s9, s2
                  xor          s2, a0, s6
                  sltu         s11, s3, a3
                  nop
                  xori         tp, gp, 356
                  lui          s2, 776759
                  sra          s1, zero, a5
                  slti         tp, a6, 1186
                  nop
                  nop
                  auipc        t6, 240902
                  bgeu         a1, t4, 151f
                  auipc        t6, 1036647
                  blt          s2, a1, 145f
                  sltiu        t5, s5, -1033
                  sltu         t1, s1, s5
                  bltu         t4, t5, 158f
                  and          a5, t0, s0
                  sub          s1, t3, s9
                  sub          gp, a2, a7
145:              andi         s11, t4, -617
                  bgeu         s1, s8, 159f
                  slli         t6, s3, 19
                  bne          s1, a3, 168f
                  bltu         s8, s11, 152f
                  addi         s5, s5, 296
151:              bne          t4, zero, 171f
152:              slt          tp, ra, tp
                  slli         a2, gp, 0
                  slt          s2, ra, gp
                  srai         t5, s5, 12
                  slti         tp, s3, 1906
                  slti         t6, zero, 1318
158:              addi         a5, s9, -1152
159:              srli         a4, a4, 8
                  or           t0, s4, a3
                  lui          a3, 85024
                  and          t6, a7, s2
                  xor          s3, gp, t2
                  xori         s7, ra, -613
                  bgeu         t4, tp, 172f
                  add          s11, s10, s11
                  xor          s10, s9, s11
168:              xori         a1, s6, -1734
                  slli         gp, s10, 15
                  sltiu        a1, a2, -167
171:              blt          a6, a2, 175f
172:              slli         s6, s10, 17
                  slti         s3, a3, -99
                  nop
175:              addi         t1, t0, 1258
                  beq          s9, a1, 191f
                  sltiu        s11, a4, -831
                  bge          s1, s9, 192f
                  sra          sp, s9, a2
                  slli         t2, a5, 8
                  sltu         s2, s6, tp
                  add          t2, a7, t2
                  sll          ra, s2, t3
                  blt          a3, t5, 186f
                  srli         s11, s6, 25
186:              and          t1, s4, s11
                  auipc        s11, 1027182
                  srai         t4, t1, 19
                  andi         a5, a5, 648
                  ori          s2, s4, 453
191:              bne          t2, s9, 211f
192:              add          a3, tp, s0
                  blt          sp, t1, 204f
                  bltu         s2, s1, 210f
                  slt          s5, a7, t4
                  bltu         a6, t4, 209f
                  sub          s5, s7, t4
                  slli         a6, s9, 29
                  and          t4, t1, s7
                  sub          sp, t6, s7
                  andi         t2, t2, 744
                  ori          a3, s10, 95
                  ori          t6, tp, 469
204:              sub          s9, a7, t6
                  bltu         a0, gp, 212f
                  ori          a2, s9, -1815
                  sltu         a1, s6, s6
                  nop
209:              xor          s10, s1, t2
210:              sll          a1, a1, a5
211:              or           s10, t4, tp
212:              and          a7, s3, a7
                  sub          a0, s10, s11
                  and          t5, a1, s9
                  beq          a1, t0, 216f
216:              beq          t0, a5, 222f
                  bne          a6, s10, 229f
                  srl          t2, t4, s4
                  xor          s9, s4, t4
                  srl          t4, s9, s4
                  bltu         t1, ra, 235f
222:              sltiu        t4, t0, 235
                  sra          t1, s0, t1
                  srai         a7, ra, 31
                  auipc        t2, 176212
                  or           a3, s6, a1
                  srli         tp, t5, 26
                  addi         s3, s8, -1455
229:              ori          s6, s9, 1285
                  sll          t6, gp, t0
                  or           a1, zero, a2
                  beq          ra, t4, 249f
                  srai         zero, s5, 14
                  srai         sp, t0, 31
235:              srli         a1, ra, 3
                  srli         s6, zero, 21
                  xori         s9, a5, 1993
                  xor          gp, t4, s10
                  srli         s8, a3, 2
                  nop
                  sll          t2, s10, s7
                  sll          a1, s6, t6
                  andi         s9, s0, -277
                  nop
                  and          sp, sp, t0
                  srl          s10, ra, t4
                  srl          s3, gp, s5
                  ori          ra, tp, -1439
249:              addi         a3, t6, 478
                  add          tp, s4, s4
                  xori         a2, s6, 787
                  ori          s7, tp, 1371
                  srai         a3, a3, 21
                  srl          a2, t5, t1
                  sll          s11, a0, s9
                  xor          s1, a7, s7
                  sltu         a6, s2, zero
                  sll          t5, ra, a6
                  blt          a2, ra, 274f
                  bne          t1, t5, 266f
                  ori          a5, t2, -829
                  srli         ra, a6, 4
                  srl          t4, s3, tp
                  sub          a2, a5, zero
                  nop
266:              sra          s6, a0, s4
                  ori          tp, gp, 730
                  bltu         t2, ra, 269f
269:              or           gp, ra, a5
                  slli         ra, gp, 12
                  slti         a6, s8, 81
                  bge          t3, a5, 282f
                  slti         t5, a0, -1596
274:              slli         s9, s11, 23
                  bgeu         s11, ra, 279f
                  andi         a7, t6, -816
                  nop
                  andi         a7, a0, 695
279:              add          s5, s6, t2
                  auipc        sp, 38568
                  srl          t4, a7, sp
282:              lui          s1, 484172
                  srl          s3, a3, s2
                  auipc        a5, 912002
                  bne          t5, s11, 288f
                  sub          s5, s2, a1
                  sll          s11, a4, a3
288:              add          t4, a7, t2
                  bltu         t3, a0, 298f
                  nop
                  and          s10, s8, sp
                  slti         ra, a0, -1185
                  srl          s10, t3, s5
                  andi         s9, a5, -1442
                  or           s5, tp, t0
                  lui          zero, 111884
                  ori          a6, t2, -835
298:              slli         a7, a5, 30
                  addi         s11, t5, 671
                  srli         t0, a0, 24
                  sub          s1, s11, s10
                  xor          t5, a3, t3
                  bltu         t3, a7, 322f
                  andi         t1, s9, 1513
                  and          s6, a4, a4
                  andi         a4, a5, 522
                  bltu         s1, s11, 310f
                  bne          a4, s8, 316f
                  nop
310:              auipc        t2, 351465
                  srl          t2, s7, t0
                  xor          a3, a3, a4
                  sltu         s8, s0, s1
                  sra          s1, s11, sp
                  xori         t0, t6, 140
316:              bne          zero, a1, 318f
                  sltu         s11, s4, t5
318:              sra          a0, s5, gp
                  and          s5, s7, s7
                  sub          s5, a7, sp
                  srl          t4, s11, ra
322:              xori         a3, zero, -300
                  blt          t0, a0, 343f
                  or           s8, t3, t2
                  andi         a6, t6, -1732
                  bge          s9, a6, 339f
                  andi         t6, a1, 557
                  addi         t0, t6, -1083
                  sra          a6, s5, sp
                  addi         s1, sp, 1226
                  blt          s4, t4, 346f
                  srl          gp, a0, t0
                  sltiu        gp, t5, 1115
                  sltiu        t6, gp, -1265
                  sltiu        gp, t4, 596
                  blt          s2, s7, 346f
                  bne          s5, a6, 357f
                  slti         s7, t5, -1145
339:              xor          a5, s4, a6
                  slt          t1, zero, a5
                  bne          a6, a3, 342f
342:              bltu         a1, t6, 350f
343:              andi         gp, s3, -1910
                  slti         s11, a3, 1946
                  and          t0, t1, s6
346:              slti         s1, a1, 1872
                  sub          ra, a3, t2
                  nop
                  lui          t0, 40117
350:              srli         a4, s0, 19
                  bge          s1, s3, 366f
                  sltu         s1, s7, a5
                  nop
                  sltu         s8, s1, s4
                  srli         s7, a4, 1
                  slli         s6, zero, 19
357:              srli         a2, s2, 24
                  nop
                  and          zero, t6, tp
                  addi         a3, a6, 1223
                  bge          a4, s5, 375f
                  or           t0, s9, a6
                  srl          t0, t4, s5
                  bgeu         tp, a2, 366f
                  andi         zero, tp, 54
366:              andi         a7, a3, -1128
                  xori         zero, t6, -1721
                  ori          gp, s3, 1920
                  sltiu        a7, s10, 98
                  lui          t4, 648228
                  sub          zero, t6, a6
                  xor          t2, gp, s10
                  lui          t2, 426782
                  sltiu        s10, a1, -1567
375:              bge          s2, tp, 381f
                  xor          s1, s3, t4
                  slti         s1, t5, -2015
                  sll          a5, a4, s7
                  xori         t4, a4, 97
                  xor          ra, t0, a3
381:              addi         a0, s10, -335
                  or           s8, s5, a1
                  beq          t1, t3, 398f
                  add          s10, a5, s1
                  addi         s11, t6, 1654
                  addi         a2, a0, -1552
                  xor          s3, t0, s0
                  bgeu         a5, a3, 389f
389:              beq          a0, gp, 398f
                  xor          a0, s3, gp
                  andi         a7, a4, 1912
                  sub          s7, s6, s1
                  sll          s8, a2, s5
                  addi         a5, t5, -1843
                  srl          a2, t1, zero
                  srai         a1, a7, 5
                  slt          s2, ra, t1
398:              bgeu         ra, t0, 409f
                  srli         t0, a5, 19
                  bge          s9, s5, 413f
                  ori          s8, t2, 670
                  sll          a5, ra, s5
                  sltiu        a5, t3, -1488
                  and          s10, t3, s9
                  and          a5, t3, s3
                  xori         t2, a5, -758
                  sltiu        a3, t0, -526
                  andi         tp, t1, 1363
409:              xor          s6, a7, s2
                  slti         t5, s11, -962
                  sub          a7, t3, a4
                  or           t6, a5, t0
413:              srli         t0, s7, 6
                  srai         s1, a4, 9
                  sub          a7, s10, sp
                  slt          s7, t0, zero
                  addi         a2, s8, -1348
                  sltu         s7, s6, zero
                  sub          a5, s9, t3
                  or           a5, s3, a7
                  slli         t4, a0, 29
                  bge          zero, zero, 439f
                  bltu         s6, s11, 442f
                  bgeu         zero, a7, 440f
                  slti         a4, t4, 2040
                  addi         tp, zero, -548
                  beq          s7, s9, 429f
                  auipc        s3, 736267
429:              blt          t4, s7, 444f
                  bgeu         s7, a0, 434f
                  andi         s8, t0, 670
                  sltu         t6, s0, t1
                  srli         t6, gp, 0
434:              sll          t6, s11, a1
                  bltu         a1, t5, 438f
                  bltu         t1, s2, 456f
                  blt          sp, s0, 449f
438:              sltiu        t1, s0, -953
439:              nop
440:              bge          a6, a0, 460f
                  srl          t6, t1, s5
442:              addi         ra, t5, -2044
                  lui          a7, 1046087
444:              srl          t0, a5, t1
                  slt          a2, sp, sp
                  bne          s10, t4, 449f
                  bltu         a1, t0, 460f
                  srai         a4, a2, 6
449:              xor          a1, s9, s6
                  blt          t2, s6, 456f
                  or           a3, t1, t0
                  and          t2, a7, s3
                  ori          ra, a4, 100
                  lui          s6, 1019016
                  srli         s5, s6, 16
456:              andi         a2, s9, 524
                  ori          s1, a0, -586
                  bne          a4, s6, 465f
                  lui          t2, 147106
460:              sltu         t0, t1, s4
                  bne          a5, a7, 475f
                  beq          a7, a7, 469f
                  srli         t1, t4, 10
                  add          zero, s4, s4
465:              xori         s1, t1, 525
                  sra          t1, s9, t5
                  xor          a7, t2, gp
                  slt          a3, t3, t3
469:              add          t1, s9, s8
                  srl          s9, a1, s0
                  addi         s5, sp, -2020
                  srai         a5, sp, 12
                  nop
                  nop
475:              sll          a0, t5, a3
                  bgeu         s2, zero, 480f
                  srl          t4, a1, s9
                  slli         t2, s6, 19
                  blt          a6, a7, 499f
480:              srli         s1, t0, 3
                  ori          ra, a3, -114
                  bne          t1, a4, 489f
                  lui          s10, 621094
                  nop
                  xor          t4, a5, a3
                  sra          s2, a1, a2
                  nop
                  srai         sp, s0, 2
489:              addi         s10, a7, -825
                  and          tp, s5, s10
                  sll          t0, gp, s11
                  bge          gp, t2, 504f
                  or           s7, s8, ra
                  bne          t6, t1, 495f
495:              sltu         t4, ra, s3
                  sll          a7, a6, tp
                  beq          a5, t3, 511f
                  srai         tp, a3, 6
499:              add          t4, t6, s6
                  ori          s2, tp, 308
                  or           tp, a5, s5
                  ori          s7, s8, 1963
                  beq          s10, t3, 504f
504:              add          s3, t1, s11
                  addi         s11, s9, 613
                  lui          a5, 785958
                  bne          s8, s8, 514f
                  andi         a6, t3, 488
                  sub          s5, s6, t5
                  slt          s2, zero, s0
511:              srai         t4, s4, 15
                  slti         a3, s2, -272
                  beq          s4, s7, 526f
514:              srli         a7, s7, 20
                  sltu         s11, t2, s10
                  srai         a1, tp, 7
                  srli         t5, ra, 17
                  blt          a5, a0, 531f
                  lui          a5, 278666
                  blt          s3, s7, 540f
                  auipc        t6, 635395
                  sll          s3, s4, s6
                  addi         sp, s7, 1107
                  sltiu        a5, s8, -340
                  nop
526:              blt          s7, t6, 530f
                  auipc        t4, 873550
                  blt          s1, s0, 536f
                  bgeu         t3, a6, 548f
530:              sltiu        t5, a6, 1640
531:              srai         s3, sp, 31
                  sub          t2, s7, ra
                  bge          s2, ra, 542f
                  or           t2, s4, gp
                  sltu         a0, s0, s0
536:              sra          t2, s5, zero
                  srai         tp, t4, 21
                  srai         s3, t0, 24
                  xor          ra, a2, s9
540:              add          ra, a1, zero
                  slti         a7, a1, -1425
542:              andi         s2, t2, -959
                  bgeu         zero, gp, 557f
                  srli         gp, a0, 8
                  srl          gp, t1, s5
                  add          gp, a5, t5
                  blt          t2, a4, 567f
548:              srai         a1, s8, 13
                  xor          t0, sp, t5
                  srai         sp, s10, 23
                  lui          t4, 727710
                  bne          t2, a5, 556f
                  sltiu        a4, ra, -1400
                  sltu         t2, ra, a6
                  srli         a3, a1, 9
556:              sltiu        s3, tp, 741
557:              addi         a0, s4, -1601
                  bgeu         s4, a1, 575f
                  slt          gp, a0, s8
                  auipc        s7, 281061
                  sll          a3, a2, t1
                  bge          s2, a5, 577f
                  beq          s2, s5, 579f
                  bgeu         a2, t0, 567f
                  bge          a0, a6, 568f
                  addi         s2, a3, 762
567:              or           tp, t1, t3
568:              blt          a1, t5, 583f
                  xori         sp, t6, -1479
                  sra          s7, a1, a5
                  xor          a4, tp, s1
                  xori         gp, s4, 14
                  andi         s2, t1, -511
                  auipc        t6, 830164
575:              sltu         s9, a6, a7
                  sltiu        a7, s0, 1973
577:              xor          s5, s1, a1
                  bne          a1, s3, 580f
579:              slli         ra, ra, 30
580:              slti         zero, s2, -1012
                  auipc        t4, 100797
                  lui          a3, 800353
583:              andi         a7, t6, -1644
                  beq          a0, a4, 590f
                  srl          tp, a0, tp
                  andi         a1, s2, 924
                  slli         t2, s1, 15
                  ori          a1, s0, 1094
                  sra          zero, a7, t4
590:              slti         s2, s9, -1580
                  slti         t1, a4, 1720
                  bge          s8, s3, 603f
                  sll          a3, a0, a2
                  xor          a7, s0, a6
                  bltu         s5, s5, 601f
                  srl          a3, s2, s1
                  addi         s7, s3, 664
                  beq          s6, t6, 600f
                  addi         a3, s3, 1102
600:              xori         a1, t6, 414
601:              bge          a0, t5, 616f
                  ori          sp, s3, 138
603:              sltu         s7, s3, a2
                  srl          a3, s1, a7
                  bltu         a4, sp, 615f
                  sltu         zero, a5, gp
                  and          t1, gp, gp
                  andi         t2, sp, -323
                  srli         s1, sp, 7
                  sub          s10, tp, s10
                  bgeu         s0, t0, 625f
                  bltu         a3, a4, 618f
                  sll          a2, s1, t5
                  sll          sp, a0, a0
615:              bge          s10, s8, 630f
616:              and          t6, s0, s0
                  sra          a4, t3, a7
618:              ori          tp, a6, 313
                  sltu         a7, a2, a2
                  srl          s5, s1, sp
                  lui          s8, 532197
                  lui          t1, 567269
                  sltu         s9, a2, s6
                  auipc        gp, 912438
                  or           s1, a1, ra
                  sll          s2, s4, t4
                  lui          t1, 779857
                  addi         a4, s2, -1931
sub_7_j12:        jal          a5, sub_10 #jump sub_7 -> sub_10
                  sra          a0, s3, t6
                  slti         a7, s11, -1152
                  and          a1, s11, s9
                  andi         t0, s9, -1323
                  slli         s3, s9, 31
                  ori          s2, a3, -696
625:              bne          ra, s7, 638f
                  beq          a5, a2, 632f
                  srl          s5, s0, t3
                  or           s9, t6, sp
                  bltu         t2, s9, 639f
630:              sltiu        zero, t3, -1383
                  add          t1, ra, s9
632:              andi         s9, sp, -1485
                  sub          t5, zero, s3
                  bgeu         t1, t1, 654f
                  bgeu         s2, s7, 650f
                  xori         a1, s8, -1130
                  beq          s0, a1, 638f
638:              andi         s1, t1, -734
639:              nop
                  xor          s6, s4, s1
                  slt          s9, a4, s2
                  sra          t1, s11, t3
                  and          a6, a7, t2
                  or           a6, s3, s1
                  beq          s1, t6, 654f
                  sra          s11, a6, t5
                  srli         tp, ra, 18
                  xor          t5, sp, zero
                  bne          zero, a7, 652f
650:              add          t0, t2, s6
                  and          t2, a4, tp
652:              xori         a4, zero, -799
                  slti         t2, s3, -1999
654:              and          a4, s4, gp
                  sub          t5, t4, s5
                  sltu         a0, ra, s2
                  slti         s3, s9, -1943
                  auipc        t2, 507261
                  blt          t6, t5, 674f
                  bne          s0, s1, 680f
                  xori         s3, sp, -447
                  blt          a0, s4, 670f
                  and          a7, gp, t1
                  lui          t0, 918913
                  beq          t0, s9, 678f
                  auipc        s3, 244386
                  lui          ra, 836582
                  andi         s7, s5, 1295
                  andi         a7, s10, 1411
670:              bltu         sp, s7, 690f
                  add          t5, s10, t4
                  auipc        a1, 650180
                  sltu         a3, t1, s10
674:              add          t0, s2, a3
                  slt          s6, a4, gp
                  beq          t3, a2, 680f
                  slli         s5, t0, 5
678:              bne          a3, s3, 697f
                  xor          s8, tp, a2
680:              srai         a0, s5, 3
                  sltiu        tp, t2, 940
                  bge          s4, t0, 699f
                  addi         s9, s1, 1025
                  auipc        s8, 131821
                  slt          s9, s10, s7
                  add          s5, s8, s11
                  sll          t0, s3, a0
                  and          t5, s8, a0
                  bltu         sp, s1, 691f
690:              sll          s2, s8, a2
691:              sll          gp, t6, a0
                  srl          t0, gp, t4
                  ori          ra, s9, -921
                  blt          a0, s3, 701f
                  ori          a5, gp, -558
                  sltu         s9, gp, t5
697:              blt          s7, s9, 711f
                  add          s11, a0, t4
699:              nop
                  slti         t1, s7, -591
701:              and          s5, s2, s10
                  andi         s10, tp, -1531
                  slli         zero, a4, 19
                  nop
                  sll          gp, tp, ra
                  sltiu        a5, s0, 323
                  srl          s2, s7, t5
                  sltu         gp, a0, s11
                  srl          tp, t1, s8
                  slli         t5, t3, 22
711:              sub          tp, s1, t6
                  srl          a0, t6, t4
                  sltiu        s3, s8, -850
                  bgeu         t0, t6, 715f
715:              sltiu        t2, t5, 509
                  bne          a6, a6, 719f
                  addi         s7, a3, 320
                  srl          s1, t5, ra
719:              bgeu         s6, s3, 721f
                  slli         s6, a5, 11
721:              or           t6, ra, t2
                  xor          s2, t0, sp
                  sltu         t1, s3, a4
                  slti         t5, s1, 1426
                  add          s11, s4, sp
                  beq          s2, t4, 742f
                  lui          s2, 981690
                  slli         a4, t3, 12
                  sltu         a4, a5, a4
                  bgeu         s4, zero, 741f
                  slli         s7, s11, 10
                  slt          a7, a2, s9
                  slti         t4, a1, -1849
                  slt          a2, s6, t4
                  sltu         ra, s4, s8
                  lui          a6, 526809
                  sub          t0, s2, s7
                  add          gp, s10, ra
                  lui          sp, 797629
                  sra          s3, t0, a3
741:              andi         s10, t6, 1294
742:              ori          t5, s11, -416
                  slli         zero, s3, 23
                  beq          a0, a0, 756f
                  bgeu         s0, s7, 749f
                  slli         a0, t5, 30
                  xor          sp, a4, t3
                  lui          s2, 149531
749:              slli         t6, t2, 21
                  xor          t2, s5, a7
                  or           sp, ra, s1
                  andi         a3, gp, -735
                  ori          s1, s1, -363
                  xor          t6, s5, s4
                  blt          t6, s8, 762f
756:              lui          a2, 710305
                  srli         s1, ra, 15
                  bge          a1, t3, 775f
                  slti         t4, t5, -823
                  srli         ra, t3, 31
                  bne          a4, s7, 780f
762:              slli         gp, a6, 23
                  addi         t0, a2, 1593
                  la           t1, sub_9
                  xori         sp, s5, -115
                  ori          s10, s6, 172
                  or           s7, a2, t2
                  addi         t1, t1, -456
                  slti         s9, a6, 27
                  srai         s8, s5, 14
                  srl          t0, a1, a0
                  bgeu         t4, gp, sub_7_j14 #branch to jump instr
                  sll          s11, a1, a7
                  nop
sub_7_j14:        jalr         a5, t1, 457 #jump sub_7 -> sub_9
                  bltu         gp, tp, 764f
764:              addi         s6, sp, -870
                  la           sp, region_0+999 #start riscv_load_store_rand_instr_stream_7
                  sb           a1, -317(sp)
                  lui          t1, 561646
                  add          tp, gp, s4
                  sltiu        s5, s0, -1788
                  sra          s1, t4, s10
                  andi         t0, a6, 1536
                  srai         s6, s3, 2
                  lbu          t0, -276(sp)
                  auipc        s8, 512460
                  sh           tp, 211(sp)
                  sb           ra, 902(sp)
                  lw           s9, -407(sp)
                  nop
                  slti         s6, a0, -937
                  slli         s8, s6, 21
                  lbu          t5, 900(sp)
                  sb           s6, 346(sp)
                  nop
                  lbu          s8, 988(sp)
                  xor          a7, t5, s6
                  lh           a2, -755(sp)
                  lui          s8, 699482
                  lb           s10, -646(sp)
                  or           s10, s9, s5
                  lbu          t2, -475(sp)
                  sb           s5, 650(sp)
                  andi         s8, a4, -593
                  slli         a6, a2, 2
                  xori         t5, s9, 1898
                  sb           t5, 191(sp)
                  and          s7, ra, t4
                  lbu          a6, 551(sp)
                  xori         ra, s0, 817
                  srli         s3, a2, 23
                  sltu         s11, gp, s11
                  sb           tp, -458(sp)
                  xori         a3, s7, 295
                  lbu          s10, 126(sp)
                  slt          a6, sp, a4
                  lh           s7, -39(sp)
                  lb           s2, 795(sp)
                  sub          t4, t3, a5
                  and          a4, s2, s10
                  sub          a2, a2, s10
                  sb           gp, 303(sp)
                  sb           t0, -356(sp)
                  lb           s9, -674(sp) #end riscv_load_store_rand_instr_stream_7
                  or           sp, t0, t1
                  bne          zero, t4, 777f
                  sltu         a5, s1, s0
                  xori         t2, s1, -1126
                  bge          s8, s10, 782f
                  sll          a4, a2, a0
                  lui          a5, 227836
                  and          s1, s7, a5
                  slti         t2, a7, -1794
                  slt          ra, t6, t6
775:              slt          a2, s7, s4
                  bgeu         s10, s11, 789f
777:              slt          s11, s11, s11
                  srai         s8, t5, 11
                  auipc        s9, 239165
780:              beq          a7, s5, 786f
                  xori         a2, s9, -1620
782:              xori         s2, t6, 1412
                  bge          s8, s7, 790f
                  bltu         s9, s2, 798f
                  slli         a4, a0, 12
786:              bne          s7, gp, 806f
                  beq          t4, s7, 801f
                  srli         a1, tp, 14
789:              slli         a3, a4, 8
790:              or           ra, zero, a4
                  bge          a2, s5, 806f
                  bge          a5, a3, 794f
                  bltu         s7, a5, 800f
794:              slli         zero, ra, 20
                  or           a6, s3, t2
                  sra          a5, a1, t5
                  auipc        s10, 282353
798:              xor          s7, s7, zero
                  slli         a4, t3, 7
800:              srai         s6, s10, 2
801:              xor          t1, s4, s8
                  slti         t1, gp, 827
                  add          s1, a5, a7
                  srl          t2, s3, a0
                  beq          t1, sp, 821f
806:              and          s6, t3, t5
                  ori          a3, a7, -338
                  sltiu        s7, a3, 1619
                  sltu         s10, a1, s3
                  blt          s7, t6, 811f
811:              sltiu        ra, t6, -1274
                  or           s9, a6, s11
                  slti         a2, gp, 1577
                  bge          s10, t0, 823f
                  and          s6, s6, s5
                  andi         t5, s7, -1913
                  and          s10, t1, s7
                  add          s3, a0, a5
                  sltu         s8, ra, t4
                  blt          a2, s8, 824f
821:              add          t6, s9, t6
                  ori          zero, s11, -1949
823:              andi         a0, a0, -1149
824:              bltu         sp, s9, 832f
                  auipc        a4, 253524
                  bltu         a3, sp, 830f
                  or           t4, s11, s8
                  xori         t4, s11, -1081
                  srli         t4, s9, 3
830:              or           s6, t2, sp
                  srl          t6, s11, s10
832:              srai         s11, a3, 6
                  sltiu        s1, s5, 773
                  sltu         s11, a4, s1
                  sll          a3, s9, s4
                  bltu         a7, s7, 856f
                  srai         ra, zero, 5
                  ori          s8, sp, 1626
                  sra          tp, t3, t5
                  auipc        a7, 146656
                  bne          a5, t1, 851f
                  slli         a3, s9, 4
                  add          s11, a1, s10
                  add          s7, t3, s5
                  sra          a5, a2, s3
                  or           a6, s5, s7
                  bge          s4, zero, 850f
                  slt          s11, zero, a4
                  addi         s8, s3, 59
850:              nop
851:              srli         a1, t4, 24
                  nop
                  bgeu         a1, tp, 865f
                  sltiu        a6, gp, 20
                  blt          a7, s9, 875f
856:              srl          ra, gp, a2
                  blt          s0, a0, 863f
                  andi         t1, t3, 114
                  andi         s5, s3, -106
                  or           s5, a2, t5
                  slli         a7, s10, 25
                  srli         a2, tp, 0
863:              srl          s11, gp, t1
                  beq          s3, s7, 867f
865:              srai         a7, s4, 5
                  bne          s5, ra, 868f
867:              addi         t5, s3, -441
868:              slti         a7, t3, -260
                  bltu         a6, s11, 884f
                  nop
                  or           t2, sp, ra
                  auipc        t5, 191813
                  srl          s8, s9, a5
                  sll          zero, s8, t2
875:              or           a1, a5, tp
                  slli         s7, s2, 4
                  bge          t5, t0, 892f
                  bgeu         t6, s2, 886f
                  xori         s5, s4, 1369
                  xor          t0, sp, s4
                  sll          t2, s8, t1
                  xori         gp, a1, 508
                  bge          s8, a4, 896f
884:              slti         s1, s8, -1008
                  srli         s8, s5, 27
886:              or           s6, t2, t5
                  slti         a1, s5, -483
                  or           s8, s2, t0
                  bltu         s2, a7, 902f
                  slt          s2, zero, tp
                  lui          s10, 302357
892:              bne          s7, s1, 898f
                  slli         s3, t6, 11
                  srai         gp, s9, 12
                  auipc        zero, 653538
896:              bne          s8, a1, 907f
                  nop
898:              sra          t5, a0, t3
                  srl          t5, zero, tp
                  slti         t5, s11, -714
                  xori         a1, s4, 305
902:              sltiu        s2, s1, 651
                  xori         s2, a7, -1696
                  ori          gp, a7, 1573
                  sra          t5, s1, s8
                  xori         s11, a0, -1836
907:              andi         a4, zero, -318
                  blt          a7, s0, 909f
909:              or           a0, ra, s6
                  sra          gp, gp, s6
                  bltu         t1, s3, 913f
                  ori          a7, s9, 1515
913:              bgeu         t0, s2, 920f
                  slti         s7, gp, -2009
                  bne          a2, t2, 935f
                  sll          a7, s2, t0
                  slli         ra, t0, 12
                  bge          t2, s3, 919f
919:              sltiu        t6, a3, -758
920:              xori         t0, s8, 322
                  bltu         s5, t2, 931f
                  bgeu         s11, t1, 931f
                  bne          sp, a4, 929f
                  srai         s8, zero, 24
                  or           s8, s8, s6
                  ori          s3, s10, -309
                  addi         t4, s0, -1903
                  bne          tp, s9, 935f
929:              slt          a3, zero, gp
                  srli         sp, t4, 18
931:              bgeu         t5, t6, 945f
                  srli         s9, s6, 19
                  sub          a1, a7, s10
                  sub          t0, s8, a3
935:              srl          s3, a0, a1
                  bltu         s9, s1, 951f
                  or           a3, t6, t1
                  srai         s10, t0, 14
                  blt          s6, tp, 942f
                  sll          a6, s1, zero
                  sra          s1, zero, t5
942:              srl          s3, s5, sp
                  bne          s9, s7, 960f
                  auipc        s6, 866588
945:              ori          s5, a1, 1251
                  bne          a7, t1, 958f
                  slt          s6, s8, s4
                  auipc        a4, 708980
                  bgeu         tp, a2, 953f
                  sub          s3, t2, s11
951:              lui          t0, 639921
                  slti         gp, s6, 516
953:              sltu         t5, t0, s4
                  add          a5, a7, s8
                  srai         gp, t4, 15
                  ori          zero, s7, 305
                  ori          t1, s0, 161
958:              bge          a6, t5, 978f
                  sltu         gp, t4, a7
960:              and          a1, t0, t4
                  srl          s5, t4, s6
                  bgeu         t3, s10, 982f
                  andi         t2, t1, -1454
                  bgeu         s2, a7, 966f
                  nop
966:              sltu         s11, s6, a6
                  add          s2, gp, s0
                  sra          a5, t4, s11
                  add          zero, s0, a5
                  addi         a1, s10, -1373
                  sra          zero, s8, s8
                  ori          t1, t0, -441
                  blt          a2, s0, 976f
                  blt          a1, sp, 988f
                  add          t1, a3, s7
976:              xor          a0, sp, a2
                  nop
978:              blt          a2, t0, 994f
                  xor          t1, s0, a2
                  ori          s7, s5, 1474
                  andi         s6, a3, 1199
982:              sll          a2, t0, t1
                  blt          s4, t6, 998f
                  sub          gp, a0, s4
                  andi         s11, t0, -1777
                  sltu         a5, a2, s3
                  bne          a2, t0, 991f
988:              auipc        t2, 1022464
                  srli         t6, s4, 6
                  srli         t6, t2, 18
991:              nop
                  slt          a5, t0, s9
                  sll          t4, s5, a6
994:              srai         sp, s0, 7
                  slti         t6, a5, -1615
                  sltiu        ra, s1, -2019
                  andi         s7, sp, 323
998:              and          ra, s4, t5
                  auipc        t1, 1004036
                  slti         s1, tp, -2012
                  ori          s3, s3, -1397
                  add          t1, t6, a4
                  beq          t1, ra, 1022f
                  lui          t4, 474481
                  and          s10, s0, ra
                  sll          a0, s1, s0
                  andi         a5, s0, 1297
                  xor          t6, t2, a6
                  andi         tp, a3, 66
                  andi         t6, s3, -1333
                  nop
                  beq          ra, a7, 1027f
                  beq          s5, t6, 1016f
                  auipc        s5, 150528
                  auipc        a0, 665817
1016:             sll          a0, s2, gp
                  sra          s10, t1, s6
                  andi         t4, t1, -919
                  nop
                  or           s6, t2, s10
                  sub          a7, t0, s3
1022:             auipc        a4, 543995
                  bge          s6, gp, 1036f
                  blt          a7, s8, 1044f
                  bltu         gp, s1, 1029f
                  nop
1027:             and          gp, t2, zero
                  slti         s7, s4, 406
1029:             xori         s11, s8, 411
                  srl          a6, s0, s2
                  bgeu         a2, s6, 1043f
                  slli         a0, s2, 14
                  and          t2, a1, s10
                  blt          s11, s4, 1038f
                  sltiu        t1, s7, -212
1036:             ori          a2, t3, -160
                  beq          a3, a1, 1039f
1038:             bne          s3, s2, 1058f
1039:             addi         a2, t1, 267
                  slt          t4, t0, a0
                  auipc        s3, 207047
                  add          sp, t6, a6
1043:             sub          s6, t0, s10
1044:             nop
                  addi         ra, s7, -695
                  srai         a4, a3, 25
                  sub          s1, t5, t1
                  srli         gp, s8, 24
                  la           a2, region_1+1066 #start riscv_load_store_rand_instr_stream_5
                  srai         a1, ra, 8
                  sll          s3, sp, gp
                  sll          s7, s5, s7
                  sub          zero, t6, t5
                  add          s5, ra, s3
                  srl          s5, zero, a2
                  sltu         t5, s3, sp
                  slli         s6, s8, 0
                  sb           ra, 39(a2)
                  sb           a0, -130(a2)
                  sub          s1, gp, s0
                  lb           s5, 254(a2)
                  lh           t5, -200(a2)
                  sltu         t2, t6, a4
                  sltiu        t1, t0, -1855
                  sb           a3, -169(a2)
                  xor          s2, s10, a4
                  auipc        s11, 1015499
                  slt          t4, a3, t1
                  lbu          a0, -129(a2)
                  slt          a7, s7, s11
                  lbu          a1, 155(a2)
                  lbu          t2, -141(a2)
                  sb           s6, 198(a2)
                  sub          t6, t6, s7
                  lbu          t5, 151(a2)
                  add          a5, s10, s10
                  lb           s3, -207(a2)
                  srl          s7, s0, t1
                  lbu          zero, -49(a2) #end riscv_load_store_rand_instr_stream_5
                  sltu         a1, zero, a4
                  xori         t5, t2, 684
                  blt          a7, zero, 1066f
                  addi         t0, s0, 1407
                  addi         a1, s3, 330
                  slt          s11, s8, s11
                  add          t2, a1, s4
                  lui          s1, 355227
                  slt          ra, a1, sp
1058:             bgeu         a5, a6, 1060f
                  srl          sp, s4, s0
1060:             sltu         t0, sp, s10
                  sll          s2, zero, a7
                  beq          a7, t5, 1079f
                  srai         s11, a7, 18
                  blt          t2, t3, 1079f
                  beq          t0, t5, 1075f
1066:             slt          s3, t0, t1
                  andi         a0, gp, -112
                  xor          sp, t2, t6
                  slt          s11, t3, s11
                  sub          gp, s3, s10
                  andi         a2, a5, 187
                  sll          tp, ra, a4
                  bge          a0, ra, 1080f
                  srl          t6, gp, s1
1075:             sll          a5, s10, a7
                  and          s5, a2, s0
                  sltiu        t4, s5, 489
                  add          t0, t1, zero
1079:             auipc        t1, 353180
1080:             xor          t5, gp, t2
                  bgeu         sp, t3, 1082f
1082:             sltu         s11, t2, s11
                  ori          tp, a4, 711
                  sub          t0, a1, s8
                  lui          s9, 973264
                  sub          s2, sp, s6
                  blt          a0, zero, 1107f
                  or           a5, s0, a5
                  bge          sp, sp, 1090f
1090:             xor          a2, a0, s8
                  bne          a1, s3, 1098f
                  bge          s0, a4, 1108f
                  xor          t5, s10, t6
                  sll          s2, t0, a1
                  bne          a6, a7, 1110f
                  sltiu        a4, ra, -1338
                  or           s7, tp, s0
1098:             ori          s9, a5, -93
                  sll          gp, a0, a5
                  blt          s11, s9, 1109f
                  sltu         t6, gp, a1
                  add          t4, gp, sp
                  slt          sp, s9, a3
                  beq          s5, gp, 1110f
                  slli         t2, zero, 16
                  bgeu         s9, s0, 1114f
1107:             srai         a2, sp, 26
1108:             nop
1109:             ori          s2, s5, 1008
1110:             or           a2, t3, ra
                  slt          t6, s0, sp
                  srai         s8, a6, 9
                  blt          s10, s0, 1116f
1114:             bne          s11, a0, 1133f
                  auipc        t0, 139198
1116:             slli         s10, a6, 23
                  srli         a1, zero, 19
                  and          tp, s9, a2
                  blt          t1, s7, 1125f
                  sltu         t4, s2, s1
                  sra          s8, s10, s3
                  lui          s8, 897257
                  xori         a7, zero, -1170
                  beq          tp, s7, 1135f
1125:             add          a2, t0, a5
                  srli         s6, s7, 8
                  auipc        s8, 325300
                  bltu         gp, t0, 1142f
                  andi         s2, a6, 1425
                  slt          a6, a3, t6
                  auipc        t1, 934268
                  xor          t1, s9, tp
1133:             sll          t2, a0, s5
                  sltiu        a1, a7, -59
1135:             sra          t2, a6, s2
                  beq          t1, s3, 1149f
                  xor          sp, s2, a4
                  sltu         a3, a2, s0
                  addi         s5, t4, -709
                  slli         a7, t3, 25
                  bne          a3, a6, 1155f
1142:             sltu         a3, s11, a0
                  sra          s9, t6, s11
                  nop
                  lui          a4, 594138
                  auipc        t2, 53647
                  slt          a6, a7, a2
                  andi         s3, s10, -1230
1149:             bge          s7, a3, 1159f
                  auipc        gp, 709856
                  sltu         t4, s8, t3
                  bltu         t4, a5, 1153f
1153:             bltu         s8, s1, 1159f
                  srli         t6, sp, 31
1155:             xori         s9, a3, -142
                  sra          t0, gp, s8
                  add          a2, t3, a5
                  or           sp, ra, a0
1159:             sll          t0, ra, s7
                  lui          s8, 186834
                  sltiu        t6, s6, -474
                  beq          t2, a5, 1166f
                  auipc        s3, 682424
                  bne          t4, a2, 1184f
                  slti         t4, s3, 1625
1166:             srai         s8, s9, 7
                  addi         s2, s2, 308
                  sltu         s7, s8, tp
                  addi         zero, t6, 1413
                  blt          t2, a7, 1174f
                  add          s2, s2, t3
                  bge          s0, t5, 1184f
                  xor          t2, s1, a7
1174:             auipc        t1, 703500
                  xor          s5, s3, s11
                  xori         a2, t6, -1062
                  andi         s10, t4, -2012
                  bge          t3, a2, 1198f
                  lui          s2, 28859
                  sra          t0, t3, t4
                  bltu         s7, s8, 1197f
                  and          a5, t6, s1
                  sra          s3, a5, s7
1184:             bltu         s4, s7, 1187f
                  and          ra, t3, s1
                  nop
1187:             slt          t4, a2, a4
                  bgeu         a0, a5, 1208f
                  slt          s7, a3, a7
                  sltu         s11, a4, a2
                  srai         t0, t1, 4
                  ori          s1, s2, 1477
                  blt          s11, zero, 1194f
1194:             bge          s3, a3, 1205f
                  blt          t5, s0, 1212f
                  lui          s8, 785812
1197:             sltiu        a0, a3, -151
1198:             sra          s9, a1, s8
                  blt          s5, zero, 1213f
                  sll          t1, a1, s4
                  xor          t4, s10, ra
                  auipc        sp, 649681
                  addi         gp, s11, 990
                  srl          t2, s5, t5
1205:             srli         s5, s8, 20
                  add          t6, t1, s4
                  srl          t0, s0, t4
1208:             xor          t5, s6, a1
                  srai         t4, t3, 5
                  bge          a3, a5, 1229f
                  sub          s9, t5, zero
1212:             srl          a1, s11, s2
1213:             bne          s8, s6, 1215f
                  sub          s1, s3, t2
1215:             auipc        s11, 872361
                  add          s9, t4, a7
                  sll          t0, a7, t3
                  srai         ra, a4, 22
                  srli         t4, t0, 10
                  sll          s6, zero, t3
                  xori         s6, t2, 1075
                  bne          a7, tp, 1224f
                  slti         a2, a2, -1289
1224:             sltu         s5, t4, t6
                  and          t0, s8, s3
                  bltu         s11, sp, 1234f
                  nop
                  sub          a1, s11, a2
1229:             and          ra, s1, tp
                  slt          a4, s6, s3
                  andi         zero, s6, -130
                  slti         s6, a2, 944
                  andi         a0, tp, -1334
1234:             sub          s1, a1, t1
                  srl          t5, a4, a5
                  auipc        s5, 443920
                  and          a1, sp, t4
                  lui          a7, 714986
                  sll          sp, a2, a1
                  or           ra, gp, gp
                  slti         gp, gp, -823
                  or           s3, s4, a6
                  sltu         s1, s8, zero
                  xor          a5, a3, a4
                  beq          a6, s9, 1260f
                  srl          a3, sp, s11
                  bne          a5, s9, 1253f
                  sltu         t2, t4, s2
                  srl          s5, t5, t1
                  slti         s8, s2, -694
                  auipc        t5, 421645
                  srai         a0, t6, 28
1253:             sub          sp, t4, sp
                  sltiu        a5, tp, 657
                  add          a7, a3, a1
                  and          s5, t4, t6
                  slt          s5, t2, s11
                  sll          t1, s4, s5
                  bltu         a5, s1, 1272f
1260:             xori         a3, a6, 1681
                  blt          a6, t5, 1276f
                  srli         tp, s0, 31
                  bltu         gp, s2, 1266f
                  blt          ra, t5, 1277f
                  slti         a7, t6, -1725
1266:             sltu         a7, s0, s6
                  addi         s8, zero, 1348
                  bne          t3, t6, 1277f
                  sub          a5, gp, t0
                  lui          s3, 353763
                  sra          a0, s9, s9
1272:             srl          s5, ra, t4
                  or           a6, t0, a6
                  xori         t5, sp, 1204
                  beq          t6, tp, 1282f
1276:             sll          s8, t3, zero
1277:             ori          tp, t6, -353
                  or           t4, s8, t1
                  srli         t2, gp, 5
                  srli         s8, t5, 5
                  or           s1, s5, zero
1282:             lui          s8, 724372
                  srl          s2, a6, a0
                  bltu         tp, s5, 1299f
                  add          s11, tp, zero
                  sltu         a5, t0, s8
                  srai         ra, s5, 21
                  sltu         gp, tp, t0
                  sll          s10, a5, t2
                  nop
                  slt          s11, t2, s1
                  slli         t6, s0, 24
                  beq          s0, a2, 1300f
                  auipc        a2, 948618
                  and          s7, s4, s5
                  auipc        a5, 684252
                  sltiu        zero, a2, -1343
                  add          a4, s7, a0
1299:             bgeu         s8, tp, 1313f
1300:             or           a4, t3, a3
                  add          zero, a2, a2
                  addi         zero, a0, -959
                  lui          s9, 941811
                  xor          zero, tp, s7
                  sll          s3, s10, a0
                  bne          s10, s1, 1316f
                  addi         a2, a1, -757
                  slli         s1, t0, 16
                  andi         tp, t4, -1879
                  sub          a3, a4, t5
                  bltu         a0, ra, 1328f
                  lui          s5, 557028
1313:             sra          s11, s10, s0
                  and          a3, a6, s8
                  beq          s9, s1, 1321f
1316:             nop
                  slli         a5, t3, 0
                  or           t1, t6, t1
                  bne          zero, s0, 1332f
                  slti         s11, t4, 1572
1321:             bgeu         s10, a3, 1327f
                  and          s3, s9, s3
                  beq          s4, t6, 1326f
                  add          s11, s0, s5
                  sltiu        s9, ra, 1876
1326:             bltu         gp, s8, 1327f
1327:             and          sp, a0, a4
1328:             srli         a7, a0, 26
                  sll          s2, s2, a6
                  beq          s1, t2, 1332f
                  sltu         s5, a1, t6
1332:             bgeu         s3, t3, 1351f
                  sub          a6, t0, tp
                  bge          t5, a2, 1336f
                  or           s8, a2, s10
1336:             sra          ra, s4, sp
                  nop
                  sltu         ra, s1, a6
                  andi         s3, s6, 1480
                  or           s10, a5, ra
                  bge          zero, t3, 1352f
                  srl          t4, a0, a7
                  srli         a0, s2, 8
                  sra          s7, a2, t6
                  slli         zero, s0, 4
                  xor          a3, t6, s2
                  and          a0, a7, s0
                  slt          a1, s7, s8
                  xor          a4, a2, t5
                  addi         s6, tp, -51
1351:             srl          a7, t3, t6
1352:             add          tp, a6, a1
                  addi         s7, s1, -2047
                  lui          a2, 296386
                  auipc        s8, 396835
                  srl          a6, a3, s10
                  slti         s8, s2, 976
                  add          sp, s7, s11
                  nop
                  nop
                  blt          t6, a0, 1375f
                  bge          a5, s4, 1370f
                  or           a6, gp, s7
                  srl          t6, s8, sp
                  xor          gp, t1, s6
                  andi         s10, s11, 466
                  auipc        t2, 352494
                  addi         s7, t0, -1915
                  addi         s3, a5, -175
1370:             srl          a5, t6, t3
                  lui          a6, 891218
                  nop
                  and          s2, a4, ra
                  andi         s8, s5, 1063
1375:             slti         s1, t3, 1123
                  andi         sp, s0, 307
                  srli         tp, a7, 4
                  bltu         s0, t4, 1393f
                  bltu         s10, t2, 1383f
                  sra          t5, a3, s9
                  bge          zero, a6, 1382f
1382:             addi         s5, zero, -12
1383:             slli         s1, a1, 18
                  sra          sp, a4, gp
                  sltiu        a5, t6, -831
                  srl          a6, gp, a7
                  blt          t1, s10, 1407f
                  beq          zero, t6, 1403f
                  blt          a5, t3, 1396f
                  bge          a0, zero, 1405f
                  bge          a1, a7, 1411f
                  slti         t5, a4, 1849
1393:             slti         a0, t2, -676
                  sra          a7, s2, a3
                  add          a1, s8, t1
1396:             sll          s2, sp, t2
                  xori         s10, a1, 1448
                  bne          s4, a2, 1407f
                  sub          a2, a7, a6
                  and          t4, ra, a4
                  srai         a6, s4, 11
                  sll          t2, a7, s10
1403:             beq          ra, t6, 1419f
                  xori         zero, a6, -1130
1405:             srli         s3, gp, 30
                  lui          ra, 745907
1407:             slt          tp, s11, a2
                  auipc        a1, 19217
                  ori          s2, a0, 1593
                  bge          s4, s8, 1424f
1411:             and          t4, s8, s11
                  slli         zero, t5, 23
                  xori         t1, s7, 1298
                  xor          a1, a0, s11
                  auipc        ra, 599326
                  andi         s7, s11, 1446
                  sra          a3, s11, s1
                  addi         s11, a7, -1704
1419:             addi         tp, s11, -1671
                  blt          s7, t5, 1433f
                  sub          t1, s7, tp
                  sll          t6, t5, zero
                  sra          s5, t0, a1
1424:             sub          a0, a0, s4
                  add          a2, sp, tp
                  ori          t2, s4, -1872
                  bne          a7, a5, 1430f
                  beq          t4, s8, 1435f
                  ori          t6, a5, 1170
1430:             slti         t1, s10, 1438
                  beq          s9, zero, 1443f
                  bge          s8, a2, 1452f
1433:             sltu         t1, t5, sp
                  blt          ra, t3, 1438f
1435:             sub          t6, s7, a4
                  sra          gp, gp, s3
                  sub          s5, t3, t3
1438:             nop
                  ori          a7, s11, 350
                  addi         s11, a5, 1291
                  srli         t0, t4, 31
                  sltu         zero, s5, zero
1443:             xor          s5, t4, s0
                  sra          gp, gp, a2
                  lui          tp, 251652
                  srli         s9, zero, 21
                  xor          gp, s4, a5
                  sltiu        s11, t3, -1811
                  xor          s7, ra, s0
                  sltiu        t5, s10, 1243
                  blt          s1, s7, 1471f
1452:             and          ra, a3, s5
                  lui          gp, 313611
                  or           s3, t3, s10
                  bltu         t4, t4, 1464f
                  slt          s11, t1, s10
                  sra          s7, s8, s4
                  xor          s2, s10, s0
                  beq          s9, sp, 1460f
1460:             slli         a4, s10, 31
                  bge          s7, s4, 1465f
                  sra          t0, ra, s9
                  and          t4, a3, s0
1464:             blt          a5, t0, 1472f
1465:             addi         sp, a4, 1359
                  bltu         s1, s1, 1469f
                  auipc        zero, 291301
                  andi         a5, t0, -1782
1469:             auipc        t6, 732622
                  blt          tp, t6, 1484f
1471:             addi         zero, zero, 281
1472:             or           s1, s5, s2
                  add          t4, tp, s7
                  auipc        s5, 454477
                  srl          zero, t0, s8
                  sra          a2, t1, s4
                  srli         a5, a1, 28
                  sll          s8, s3, t3
                  sll          t2, t4, a4
                  bltu         s1, t1, 1487f
                  sub          s6, t0, a7
                  nop
                  nop
1484:             slt          s2, a3, s4
                  add          a7, a0, sp
                  and          s7, a3, s8
1487:             bltu         a3, a6, 1500f
                  sll          t1, t3, zero
                  bge          zero, ra, 1504f
                  lui          s2, 654740
                  blt          zero, s4, 1494f
                  bltu         s9, gp, 1503f
                  sltiu        s11, tp, -477
1494:             andi         a0, s7, 1452
                  ori          a6, s8, -917
                  srai         a2, a4, 15
                  xor          sp, s5, t0
                  xor          a6, a0, a0
                  addi         s9, a0, 549
1500:             ori          s6, s9, -1731
                  bgeu         t4, s8, 1514f
                  blt          sp, t1, 1521f
1503:             bgeu         a2, s6, 1504f
1504:             and          s8, sp, s4
                  bge          t4, a0, 1511f
                  and          s7, s7, t6
                  bgeu         s8, sp, 1514f
                  bge          a0, s7, 1524f
                  blt          t3, s2, 1513f
                  add          s5, gp, a0
1511:             sltu         tp, s10, a7
                  sltiu        a3, t1, -565
1513:             ori          a5, s3, 116
1514:             andi         sp, tp, -2026
                  blt          s4, s10, 1517f
                  lui          s1, 898852
1517:             and          a5, s11, tp
                  srli         t5, s3, 18
                  andi         a3, a5, 1256
                  add          a3, s11, s7
1521:             xori         ra, t3, -106
                  slti         a3, s8, 1445
                  slt          a2, s5, a3
1524:             sub          sp, a6, zero
                  sltu         s3, a0, t2
                  sltiu        gp, t3, -1388
                  slli         a6, t3, 24
                  lui          a5, 648390
                  bge          a0, a5, 1549f
                  sra          s7, a0, a1
                  sra          a4, s2, s7
                  lui          zero, 549384
                  sltiu        t1, t0, -1628
                  nop
                  lui          a1, 350943
                  sltu         ra, gp, a0
                  bge          t2, s0, 1552f
                  andi         s2, a1, 534
                  beq          a7, a6, 1545f
                  or           s6, t0, s4
                  srl          t5, tp, a2
                  bltu         s1, a6, 1544f
                  lui          s2, 629216
1544:             lui          tp, 38102
1545:             or           a1, tp, s6
                  lui          t6, 863096
                  andi         s3, s2, -1753
                  xor          s6, t6, s1
1549:             bltu         a4, t5, 1566f
                  addi         s2, ra, -370
                  nop
1552:             nop
                  addi         sp, t3, 786
                  sltu         s10, s3, zero
                  and          a5, s6, s3
                  slt          t4, s4, a4
                  ori          a3, t3, 516
                  xori         zero, s2, -1419
                  nop
                  bgeu         s10, s10, 1572f
                  bge          s4, s5, 1576f
                  bge          sp, t1, 1572f
                  and          s8, s10, s6
                  xor          a2, a0, s5
                  blt          a7, a0, 1585f
1566:             srli         t1, t4, 4
                  slli         t2, t0, 15
                  sra          t1, a3, zero
                  blt          s10, s5, 1583f
                  bge          a3, t5, 1587f
                  beq          sp, s3, 1583f
1572:             sltu         a6, s11, s1
                  sra          a3, a4, s1
                  sltiu        zero, t6, 6
                  and          tp, zero, s11
1576:             bltu         s10, a6, 1579f
                  xori         s10, a1, -1379
                  sub          a7, t3, s11
1579:             lui          s10, 1008762
                  sltu         s1, a5, zero
                  bge          s11, s7, 1584f
                  or           t6, s3, s1
1583:             bltu         s10, t3, 1587f
1584:             bltu         a3, s5, 1603f
1585:             beq          a6, t6, 1601f
                  lui          s8, 258539
1587:             addi         s6, a0, -1575
                  sltu         s9, a0, a3
                  xori         a5, tp, -1455
                  add          s9, s3, a5
                  bge          s1, t1, 1592f
1592:             and          ra, s5, a4
                  andi         sp, a1, 1948
                  sra          s9, a7, zero
                  srl          a4, a0, sp
                  ori          t1, gp, -1966
                  nop
                  andi         t2, a5, -1604
                  sltu         s7, a5, a4
                  nop
1601:             sltiu        s1, s5, -1747
                  xori         s2, a5, -1287
1603:             beq          s8, s5, 1607f
                  ori          ra, a0, -2007
                  bge          a5, s6, 1612f
                  bge          a4, t4, 1626f
1607:             blt          sp, s11, 1622f
                  sll          t1, a5, t6
                  srli         s2, s9, 26
                  srai         s10, s8, 29
                  bltu         s1, s2, 1624f
1612:             sltu         a5, t3, a5
                  bgeu         a4, s3, 1624f
                  sltiu        t0, s7, -445
                  slt          s3, a4, t5
                  bge          gp, t2, 1623f
                  addi         a7, zero, 117
                  xor          tp, ra, a3
                  blt          a7, s3, 1628f
                  xor          gp, t2, s0
                  lui          a7, 796499
1622:             beq          s8, t4, 1632f
1623:             or           gp, t1, s5
1624:             add          s5, tp, t0
                  add          t4, s1, tp
1626:             bltu         ra, a6, 1641f
                  slt          a1, zero, s1
1628:             addi         a0, t1, 2015
                  sltu         t2, zero, s6
                  slt          a3, a0, zero
                  srai         t6, a7, 29
1632:             slti         zero, a7, 1190
                  andi         a2, gp, 1626
                  slt          t0, a1, t3
                  lui          a4, 842049
                  sll          tp, t4, a3
                  srl          a0, s3, tp
                  xori         t6, t2, -1745
                  sltu         a6, s5, t2
                  sra          t4, a2, s8
1641:             slt          ra, a4, s0
                  slt          s9, s4, ra
                  or           tp, a7, a7
                  lui          zero, 744043
                  add          a1, a5, s2
                  bgeu         a4, a3, 1647f
1647:             blt          s6, s5, 1653f
                  and          t5, t5, t2
                  blt          s6, s9, 1651f
                  add          s2, s10, t6
1651:             bne          a7, s2, 1664f
                  beq          a7, s7, 1667f
1653:             slt          a2, sp, tp
                  xor          a7, a7, t5
                  sltiu        ra, ra, 1029
                  slti         a5, a6, -896
                  andi         a2, tp, -1049
                  srl          s7, a4, s7
                  bge          t3, s5, 1673f
                  blt          t4, a5, 1662f
                  addi         a6, a5, 315
1662:             slt          gp, t4, s6
                  sra          a6, s8, s9
1664:             ori          t5, a0, 1611
                  bgeu         s6, s1, 1685f
                  slt          a6, gp, s4
1667:             srl          ra, t4, s0
                  addi         a1, t0, 2003
                  addi         s10, t2, 1093
                  sra          t1, t6, t6
                  addi         a2, ra, -337
                  and          zero, t2, t6
1673:             or           s5, t6, t2
                  slli         zero, ra, 4
                  and          s9, s0, zero
                  sra          gp, a1, a3
                  bltu         t5, sp, 1697f
                  sub          a3, t4, sp
                  slti         t4, s2, 823
                  srai         s2, a3, 24
                  srai         s2, s7, 29
                  slti         t4, t5, -1910
                  srai         sp, t1, 18
                  xori         s8, tp, -688
1685:             andi         a7, t5, -554
                  slti         sp, a1, -1370
                  nop
                  srli         a7, gp, 10
                  sra          ra, a7, t4
                  sra          a1, a4, tp
                  slti         a4, s0, -1674
                  sltiu        s2, s10, -669
                  slt          t1, a5, t4
                  srai         s10, s5, 14
                  sra          a5, a6, s3
                  add          sp, s9, a3
1697:             nop
                  add          ra, s3, s1
                  andi         s6, t3, 1719
                  addi         t0, s8, 759
                  slti         sp, zero, -919
                  bne          t3, t1, 1716f
                  ori          t4, t2, 1579
                  srl          t6, sp, tp
                  auipc        s6, 949945
                  andi         t4, s5, -1244
                  srli         a3, s0, 14
                  xori         zero, s9, -1529
                  srli         s11, s8, 18
                  bltu         a6, sp, 1718f
                  srli         t1, t5, 13
                  addi         t5, s4, -1708
                  andi         sp, a5, -1513
                  xori         ra, s8, 574
                  andi         s11, t4, -196
1716:             blt          zero, s0, 1722f
                  bltu         a2, a0, 1733f
1718:             beq          a0, s1, 1724f
                  sltiu        zero, s6, -1093
                  sltu         s7, t3, s8
                  lui          tp, 617934
1722:             andi         s10, gp, 1683
                  or           a3, t4, s7
1724:             lui          s3, 400398
                  beq          s10, a1, 1728f
                  lui          a2, 364257
                  sltiu        s10, a4, 244
1728:             sltiu        s2, zero, 1256
                  sub          s5, a7, a7
                  bge          t6, t3, 1732f
                  bge          s8, tp, 1733f
1732:             beq          a1, s1, 1733f
1733:             srli         s3, t6, 16
                  lw           a5, 4(s4)
                  sra          t2, t2, zero
                  nop
                  addi         a1, gp, -439
                  srai         sp, a1, 5
                  sll          s6, t1, sp
                  or           a7, s9, s5
                  addi         s4, s4, 8
                  sltiu        a7, s7, -546
                  add          sp, s11, s4
2296:             addi x25, x15, 1
2296:             jalr x25, x25, 0
sub_8:            sltu         a4, t0, s11
                  and          a4, s6, a0
                  addi         s8, a0, -1273
                  sll          tp, s10, t1
                  addi         s4, s4, -64
                  sw           a5, 4(s4)
                  and          gp, s5, a0
                  slti         tp, s1, 1338
                  lui          s5, 705423
                  slt          tp, s1, a1
                  srai         a5, t4, 25
                  slli         a1, a1, 3
                  slli         a7, t4, 10
                  or           ra, s5, t6
                  srli         ra, s6, 15
                  sltiu        t6, t2, -95
                  slt          t1, s4, a1
                  srl          a2, s8, s10
                  lw           a5, 4(s4)
                  srli         a7, t3, 11
                  addi         s4, s4, 64
                  ori          s6, s8, -1477
                  srai         t4, s3, 10
23:               addi x23, x15, 0
23:               jalr x23, x23, 0
sub_4:            auipc        t4, 981868
                  bne          s2, t2, sub_4_stack_p
                  sll          a7, s8, s10
                  and          sp, s1, a5
                  sltiu        s5, t4, -1525
                  sub          s3, s8, s5
                  srli         t4, sp, 1
sub_4_stack_p:    addi         s4, s4, -60
                  or           s1, s5, s0
                  sw           a5, 4(s4)
                  or           s10, ra, a7
                  xor          t2, s10, t6
                  la           sp, region_0+1965 #start riscv_load_store_rand_instr_stream_3
                  nop
                  sb           a3, -1174(sp)
                  slti         t1, s4, 319
                  andi         ra, a7, 743
                  sb           s11, -1872(sp)
                  sb           s7, -1657(sp)
                  sb           t0, -1124(sp)
                  lb           s8, -1036(sp)
                  lw           a1, -1141(sp)
                  lb           s3, -850(sp)
                  slt          a0, s4, s9
                  nop
                  lbu          a7, -1506(sp)
                  sll          s10, a3, s10
                  lb           a5, -389(sp)
                  auipc        zero, 935336
                  addi         a1, s9, 1392
                  sltiu        zero, t2, -1323
                  lbu          t5, -1798(sp)
                  lbu          a2, -1062(sp)
                  lb           t1, -698(sp)
                  lui          a0, 285236
                  lb           t1, -1215(sp)
                  lb           t6, -1870(sp)
                  sb           s0, 4(sp)
                  lh           a1, -51(sp)
                  srai         s9, t3, 24
                  andi         t2, s3, 1894
                  sw           s6, -1545(sp)
                  sub          a5, a2, t5
                  slli         a0, s4, 22
                  addi         s10, zero, -157
                  lw           a6, -281(sp)
                  lb           s9, -1442(sp)
                  lb           t0, -971(sp)
                  auipc        zero, 487015
                  sub          a0, s9, a3
                  srl          t1, s1, a3
                  slli         t0, a7, 23
                  srl          a1, s6, tp
                  and          t2, s9, s1
                  or           gp, t4, s7
                  auipc        s11, 565393
                  srl          s1, s6, a4
                  sb           a1, -1338(sp) #end riscv_load_store_rand_instr_stream_3
                  la           s8, region_1+1396 #start riscv_load_store_rand_instr_stream_0
                  lw           a0, 96(s8)
                  srli         gp, s2, 29
                  lbu          a7, -205(s8)
                  andi         a7, sp, -773
                  lbu          t0, -29(s8)
                  sll          t6, t5, s3
                  slli         t1, t4, 29
                  lbu          ra, -197(s8)
                  nop
                  lbu          t5, 85(s8)
                  lhu          s10, -208(s8)
                  sub          a6, s0, a0
                  sra          a3, t6, sp
                  or           s9, s3, s11
                  sll          a5, s9, s6
                  slti         s9, a5, 1363
                  lui          ra, 978884
                  add          s1, a7, t6
                  or           tp, zero, tp
                  sb           s4, -65(s8)
                  sltiu        t5, s8, 288
                  sltiu        s2, a5, 899
                  sltiu        a2, a4, 1047
                  lui          ra, 293461
                  ori          s10, t1, -685
                  lhu          t6, 92(s8)
                  andi         s3, s0, -731
                  sh           s11, 156(s8)
                  xor          s1, t2, t6
                  sh           t0, -194(s8)
                  srai         t4, t4, 4
                  sb           t4, 203(s8)
                  lh           s6, -244(s8)
                  andi         t4, t3, -240
                  sra          a0, t5, a0
                  lw           t5, 24(s8)
                  lb           s2, -205(s8)
                  srai         a2, t6, 15
                  lb           a7, 65(s8)
                  lb           ra, 254(s8)
                  andi         t6, s8, -1670
                  lb           s10, -222(s8)
                  sh           t4, -72(s8)
                  lbu          a3, 42(s8)
                  lbu          s2, 170(s8)
                  sb           s0, -185(s8) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+354 #start riscv_load_store_rand_instr_stream_4
                  srl          gp, s7, a7
                  addi         ra, a6, 795
                  slti         t4, a5, 401
                  lb           zero, -45(sp)
                  slti         a6, a4, 919
                  lui          t6, 999139
                  lb           a2, 38(sp)
                  addi         s3, s8, 189
                  lh           a2, -8(sp)
                  sub          a1, a5, a5
                  slli         s1, tp, 5
                  andi         s2, t2, -1764
                  addi         a4, s1, 1844
                  auipc        t0, 779076
                  addi         s6, t0, 1476
                  sltiu        a4, a0, -167
                  xori         t2, t6, 971
                  sll          gp, t0, s6
                  sb           t5, -41(sp)
                  slti         s11, sp, -336
                  and          s11, s5, a4
                  sb           s8, 31(sp)
                  lb           s2, -9(sp)
                  addi         a4, s1, -373
                  lb           a3, -20(sp)
                  sll          a5, tp, a6
                  sb           s3, 54(sp)
                  sh           s1, -32(sp)
                  sra          s9, s5, zero
                  add          t0, s1, a0
                  srai         ra, s10, 26
                  lbu          s9, 59(sp)
                  lbu          a0, -20(sp)
                  sltiu        a3, s0, 1288
                  sb           tp, -7(sp)
                  sltu         gp, s8, t6
                  lbu          t0, 53(sp)
                  sb           s3, 42(sp)
                  sw           a3, -30(sp) #end riscv_load_store_rand_instr_stream_4
                  la           s6, region_1+1011 #start riscv_load_store_rand_instr_stream_6
                  lb           s5, 8(s6)
                  and          a7, a0, a6
                  xor          t2, a2, a6
                  or           t2, ra, a0
                  sb           t1, -4(s6)
                  sb           s8, -12(s6)
                  sra          t2, a6, a5
                  lbu          t6, 39(s6)
                  sb           t1, 23(s6)
                  sb           zero, 30(s6)
                  sb           sp, 58(s6)
                  slli         t5, s5, 10
                  srl          s11, t1, sp
                  lb           a4, -2(s6)
                  sb           s8, 61(s6)
                  addi         t6, t6, 1098
                  srli         zero, a7, 9
                  lb           a3, 46(s6)
                  sll          s8, s0, t0
                  sb           t5, -18(s6)
                  slt          a5, a4, s6
                  nop
                  lb           ra, -27(s6)
                  srl          s7, t6, tp
                  sub          s8, a2, t4
                  lb           t6, 8(s6)
                  and          t2, a2, s0
                  lb           tp, -27(s6)
                  lhu          s8, 31(s6)
                  sb           s4, -57(s6)
                  lbu          t0, -6(s6)
                  srli         zero, s1, 31
                  nop
                  sh           a2, -31(s6)
                  lbu          a1, -62(s6)
                  lbu          a0, -26(s6)
                  sb           s1, 9(s6)
                  lb           s11, -15(s6)
                  lb           t0, -42(s6)
                  lb           a7, 40(s6)
                  ori          s7, t2, -1490
                  sll          zero, s4, a1
                  sltu         s1, zero, s2
                  and          a2, sp, t5
                  lbu          t1, 53(s6)
                  slli         t1, a2, 19
                  xori         s1, t2, -1885
                  sh           t1, 41(s6) #end riscv_load_store_rand_instr_stream_6
                  la           t6, region_0+410 #start riscv_load_store_rand_instr_stream_5
                  auipc        s8, 769558
                  lb           a5, -5(t6)
                  xor          t5, sp, s11
                  lui          t4, 668088
                  nop
                  srl          tp, a0, t0
                  sub          ra, s10, t2
                  and          gp, s9, s4
                  slti         gp, a1, -1066
                  sb           sp, -7(t6)
                  slti         t4, t4, 1644
                  sb           ra, -15(t6)
                  add          a3, a1, tp
                  lb           ra, -15(t6)
                  lh           t5, 8(t6)
                  lhu          a0, 16(t6)
                  lbu          s7, 15(t6)
                  lui          a3, 666695
                  or           tp, a5, t6
                  srai         a4, t5, 11
                  sb           a7, -8(t6)
                  lh           zero, 6(t6)
                  lhu          s10, 14(t6)
                  lb           a1, -10(t6)
                  sra          a1, tp, t4
                  lhu          tp, -4(t6)
                  srl          s11, t2, a2
                  lh           a2, -4(t6)
                  srai         a2, t3, 12
                  addi         a2, t0, -1555
                  xori         t5, s8, -616
                  slli         s10, gp, 14
                  sra          a3, a4, t0
                  sb           t0, 8(t6)
                  slt          s9, t5, a5
                  sltiu        a2, s6, -58
                  lh           t0, 2(t6)
                  lbu          a0, 6(t6)
                  sltiu        s3, sp, -834
                  lb           s3, 13(t6)
                  slli         s9, a2, 24
                  slt          ra, a7, a2
                  xori         s7, a0, 1877
                  srli         s5, s8, 31
                  andi         s2, a6, 528
                  lhu          a2, 2(t6)
                  lbu          s9, -13(t6) #end riscv_load_store_rand_instr_stream_5
                  la           ra, region_0+1677 #start riscv_load_store_rand_instr_stream_1
                  srai         a5, zero, 21
                  or           s1, t6, a6
                  xor          a7, t1, a4
                  sb           gp, -91(ra)
                  xori         a2, t0, 290
                  lbu          t2, -187(ra)
                  slt          a4, a0, t3
                  lui          t1, 114592
                  sh           s2, -1(ra)
                  lb           t0, 241(ra)
                  sh           a4, 55(ra)
                  ori          t4, a7, -121
                  lhu          tp, -99(ra)
                  lb           s6, -72(ra)
                  lh           s10, 5(ra)
                  lb           s7, -159(ra)
                  lb           s6, -22(ra)
                  slti         a6, tp, 1535
                  sw           t4, 231(ra)
                  sb           s9, -197(ra)
                  srai         a4, t5, 23
                  lbu          gp, 160(ra)
                  sh           s11, -119(ra)
                  lbu          s11, -217(ra)
                  lbu          s1, 229(ra)
                  sb           s8, 114(ra)
                  sb           t1, -16(ra)
                  lb           tp, 92(ra)
                  lb           a7, 197(ra)
                  lb           a7, -123(ra)
                  lhu          a5, -175(ra)
                  sb           ra, 119(ra)
                  sll          zero, zero, s3
                  nop
                  lbu          s2, -132(ra)
                  slt          a0, a2, a5
                  sb           t4, 8(ra)
                  addi         t5, a7, -435
                  lbu          a0, 212(ra) #end riscv_load_store_rand_instr_stream_1
                  la           a6, region_0+1915 #start riscv_load_store_rand_instr_stream_2
                  xor          s6, a6, a5
                  lb           t5, 14(a6)
                  andi         a7, t0, 1397
                  xor          t4, t4, s1
                  lb           t1, 14(a6)
                  lbu          s9, -13(a6)
                  slli         s5, t3, 12
                  lw           s3, -3(a6)
                  nop
                  lhu          s11, 9(a6)
                  sh           s8, 7(a6)
                  lbu          s6, 0(a6)
                  slli         a7, a0, 26
                  addi         a4, a6, 1359
                  sltu         t2, s5, s3
                  sltu         s7, s5, t6
                  sb           s6, -10(a6)
                  srli         t2, t0, 17
                  lb           a7, -9(a6)
                  sb           s2, 16(a6) #end riscv_load_store_rand_instr_stream_2
                  slt          s5, t4, a1
                  blt          a6, s2, 21f
                  srai         a2, tp, 24
                  slti         t1, s11, -357
                  sltu         a1, s8, a4
                  blt          s4, s10, 22f
                  addi         gp, s11, -770
                  sltiu        t1, s10, 1116
                  sra          s8, s2, s7
                  slli         a0, s10, 21
                  sltiu        s5, t4, -1042
                  bltu         t5, s9, 30f
                  xor          tp, ra, t3
                  slli         s9, t1, 31
                  slti         s3, s1, -418
                  beq          a3, zero, 25f
                  beq          a4, gp, 22f
                  auipc        s9, 707768
                  bgeu         a6, s0, 38f
                  srli         s2, zero, 14
                  bne          s10, a4, 27f
21:               xor          t4, gp, s1
22:               bltu         t3, t5, 34f
                  sub          a4, a7, s11
                  xori         s2, a5, -1921
25:               slli         ra, a3, 15
                  addi         s9, a3, -42
27:               sra          a7, zero, t2
                  slli         a5, s1, 30
                  addi         t5, sp, -153
30:               sltu         s10, s2, a5
                  sra          s6, a3, a4
                  bne          s4, s5, 47f
                  sltu         s10, t2, a6
34:               slti         s8, a1, -680
                  bge          t1, a4, 49f
                  srli         s6, a5, 0
                  lui          s10, 453084
38:               sltu         s3, sp, t5
                  bgeu         a2, a0, 56f
                  bltu         s1, a0, 57f
                  srli         t5, a4, 7
                  sra          a0, a2, a7
                  srl          tp, s1, s2
                  sra          t2, a7, s3
                  slli         t1, s5, 9
                  bne          a1, t0, 55f
47:               bgeu         s1, a2, 57f
                  auipc        t1, 269617
49:               slli         s3, s11, 24
                  andi         a7, t0, 1137
                  sltiu        s9, t1, -1837
                  and          t5, t1, sp
                  sltiu        s8, t0, 1307
                  sltiu        sp, a7, 1884
55:               slt          a1, s2, t0
56:               slli         s11, t2, 2
57:               nop
                  srai         t6, s11, 21
                  slti         a1, zero, -477
                  slli         a2, t6, 29
                  addi         s5, tp, 998
                  srai         s9, a3, 7
                  xori         t4, s11, 199
                  bne          t3, s5, 72f
                  sltu         a5, s0, s9
                  addi         t5, s4, 1874
                  add          s5, t1, s11
                  lui          a5, 86095
                  slli         t1, a7, 14
                  and          t6, tp, t5
                  andi         s5, a4, 1662
72:               bge          s0, a5, 88f
                  sll          a4, s6, gp
                  lui          sp, 279166
                  xori         s7, a7, -625
                  bge          t4, a5, 90f
                  xor          s2, a0, s5
                  xor          tp, ra, t3
                  xor          a0, t1, t0
                  nop
                  sltiu        ra, s0, 1065
                  and          ra, s7, a1
                  srli         s5, ra, 10
                  bne          a2, gp, 86f
                  bge          s4, s0, 99f
86:               auipc        gp, 207195
                  slti         s9, s4, -1143
88:               xori         s5, a6, -78
                  xor          s6, t2, gp
90:               ori          t0, s0, 484
                  xor          ra, t1, s6
                  sltiu        t1, s1, 817
                  bge          s5, s0, 96f
                  sra          s10, a2, t1
                  auipc        t0, 90468
96:               srai         a3, tp, 17
                  bgeu         ra, t3, 106f
                  bne          zero, t5, 107f
99:               lui          s11, 985091
                  xori         a7, a3, -1192
                  lui          t5, 39623
                  bltu         a7, t0, 107f
                  bge          a3, a1, 120f
                  sll          a2, t6, a1
                  andi         s3, s1, 1375
106:              xori         s8, a2, -149
107:              bltu         s9, zero, 121f
                  xori         s5, a2, -1701
                  slli         s8, ra, 4
                  slli         s2, s9, 2
                  addi         s10, t3, 145
                  bge          s10, sp, 122f
                  auipc        a4, 712434
                  nop
                  slti         a1, t0, 1048
                  sltiu        s1, t0, -424
                  beq          tp, s0, 135f
                  xori         sp, t1, -1343
                  slli         t0, t1, 0
120:              lui          t0, 425623
121:              sll          t2, s9, s3
122:              srl          t0, s5, s5
                  bgeu         s3, s2, 139f
                  add          s6, s5, a0
                  slli         s6, s11, 27
                  beq          t3, tp, 130f
                  srl          t1, s4, t6
                  and          t2, s7, a0
                  sltu         s6, a3, t3
130:              slt          a6, ra, s6
                  or           t0, t2, s11
                  sra          s8, a3, a2
                  andi         s3, t5, 1053
                  sltu         t0, t0, s5
135:              srl          s5, t0, a0
                  sll          s7, s11, ra
                  nop
                  ori          a4, s4, -1105
139:              xori         s6, s1, 1433
                  bne          zero, t5, 149f
                  lui          s3, 361658
                  and          sp, t5, a5
                  sltiu        a0, t0, 1730
                  blt          s9, s2, 164f
                  sra          s2, s3, a7
                  sra          s1, s5, sp
                  and          s5, s3, t4
                  and          a2, a5, s5
149:              blt          s8, zero, 152f
                  sra          tp, a1, sp
                  bltu         sp, a7, 155f
152:              xor          a6, a2, s9
                  slti         sp, t4, 1182
                  bgeu         tp, a7, 161f
155:              bltu         a6, a6, 157f
                  srl          s11, s3, tp
157:              add          s1, sp, t0
                  slli         a7, a4, 15
                  lui          s11, 713164
                  and          tp, s11, t1
161:              xori         zero, t2, 621
                  beq          t1, a0, 182f
                  sltu         sp, t5, s9
164:              sll          t5, a3, a1
                  ori          s8, sp, -772
                  sll          t2, gp, s2
                  and          a4, a0, a7
                  andi         ra, a4, 253
                  auipc        t0, 722887
                  andi         t6, s10, -1815
                  slli         a6, s8, 14
                  beq          s8, s7, 181f
                  sltiu        s10, ra, 1172
                  nop
                  or           t1, a2, t6
                  blt          s4, s9, 191f
                  nop
                  sub          a0, s6, t2
                  srai         s6, gp, 29
                  sra          s9, sp, s9
181:              ori          s9, s6, 165
182:              srl          s1, zero, ra
                  xori         a4, t5, 618
                  bltu         t1, s9, 198f
                  ori          a4, s11, 223
                  srl          s7, t3, s9
                  ori          t4, s9, -1680
                  sltu         zero, t2, sp
                  nop
                  sra          gp, t0, zero
191:              sltu         t4, t2, a7
                  srl          ra, t5, s1
                  bne          a7, s0, 203f
                  slti         s5, a7, 939
                  nop
                  sra          a7, a4, sp
                  add          s3, s1, t3
198:              slti         s8, s5, -1958
                  xor          s5, a7, gp
                  or           t1, zero, t1
                  xor          tp, s9, a2
                  sltiu        a7, s11, 78
203:              sra          a4, t1, t3
                  addi         zero, sp, -127
                  bgeu         sp, t6, 215f
                  blt          a2, s4, 214f
                  bgeu         t1, a4, 213f
                  and          s11, s11, a7
                  sltu         s6, s7, s0
                  xori         t0, gp, -1389
                  and          s10, s7, a6
                  sll          gp, s9, a3
213:              slt          t6, t4, s3
214:              nop
215:              add          zero, t5, s9
                  sltu         sp, t3, a6
                  lui          a7, 499559
                  srli         a7, s1, 16
                  sltu         s9, zero, t3
                  ori          t2, a3, 1498
                  xori         t5, a0, 1862
                  and          a5, a2, t4
                  beq          t5, s5, 233f
                  slti         gp, s11, -365
                  bge          s8, a2, 239f
                  xori         zero, s1, 1662
                  sltiu        a4, s9, 1979
                  and          s9, s5, s5
                  srli         s3, s8, 7
                  or           s5, a7, s11
                  xor          t2, a6, s5
                  sll          a7, s3, t4
233:              slti         a4, sp, 920
                  andi         a5, t3, 1164
                  add          t1, s8, t4
                  srli         a6, sp, 13
                  andi         sp, a2, -1841
                  slli         tp, t1, 9
239:              sltu         ra, a2, t3
                  slt          gp, a1, s5
                  sltiu        s8, sp, 1650
                  xor          a4, a1, t2
                  xori         a1, a1, -604
                  sltu         s8, ra, zero
                  bne          s11, s0, 259f
                  nop
                  blt          s3, a5, 261f
                  lui          a1, 577674
                  sll          ra, s1, tp
                  lui          s7, 918229
                  sll          s2, t5, s6
                  ori          s2, s5, 324
                  blt          s5, s11, 262f
                  or           s5, s3, s3
                  slli         zero, s2, 25
                  sltiu        t6, t0, 777
                  bgeu         t2, a0, 262f
                  slti         a5, t6, 1585
259:              blt          t1, s10, 276f
                  auipc        s7, 334014
261:              ori          a1, t5, 1910
262:              sra          s11, t5, a4
                  or           s5, a4, s4
                  blt          t6, s10, 276f
                  xori         a2, ra, 879
                  sra          t5, a2, s11
                  bgeu         t3, s0, 283f
                  blt          a5, s5, 277f
                  bne          t5, a6, 286f
                  sltiu        t5, tp, -182
                  srl          t5, t4, gp
                  bge          ra, s11, 289f
                  sltu         t5, t3, t6
                  slt          s1, t6, a1
                  or           a4, t5, sp
276:              slti         s3, a1, -1570
277:              lui          a2, 805043
                  bge          t4, s2, 287f
                  beq          a6, s6, 295f
                  bge          s9, s0, 299f
                  xor          t1, t5, a5
                  lui          tp, 897733
283:              addi         a6, a2, 1711
                  andi         s3, s0, 883
                  srl          s3, t6, s2
286:              slt          t5, t0, tp
287:              beq          t0, a1, 304f
                  srli         s7, t0, 14
289:              beq          a6, a1, 307f
                  sltu         tp, s1, a0
                  bgeu         s5, a4, 296f
                  bgeu         t2, a2, 304f
                  blt          s9, t1, 307f
                  add          s11, sp, s7
295:              sra          s10, s1, t3
296:              sll          s6, t2, zero
                  blt          a3, t1, 307f
                  beq          a3, s2, 304f
299:              bne          t6, t5, 313f
                  beq          t0, ra, 309f
                  srli         t6, t1, 14
                  sltu         zero, s11, s0
                  sll          t4, sp, t5
304:              nop
                  srli         s3, s2, 25
                  xori         gp, s7, 270
307:              lui          a6, 936368
                  addi         s8, s1, 1895
309:              sll          gp, t5, a4
                  srai         t1, sp, 19
                  or           s5, ra, a6
                  sra          a0, a2, t6
313:              sra          a1, t0, a7
                  add          a2, a3, tp
                  beq          a7, a6, 329f
                  bgeu         a7, tp, 318f
                  bgeu         a6, a7, 333f
318:              bltu         a3, s9, 328f
                  bltu         s6, zero, 328f
                  srai         s1, a5, 2
                  beq          a7, s9, 331f
                  sltu         a2, s0, t1
                  nop
                  srl          t4, t0, tp
                  lui          a4, 711970
                  auipc        s10, 541132
                  slt          a4, s5, a2
328:              slti         a3, t2, -385
329:              bltu         t4, s0, 349f
                  sll          a5, a2, s6
331:              andi         t1, s9, 1679
                  add          a7, s0, a1
333:              add          zero, t6, t5
                  blt          s3, a4, 348f
                  sll          a1, t6, t5
                  xori         t6, a5, -1589
                  xor          ra, sp, a6
                  bgeu         s1, s7, 341f
                  and          zero, t4, s4
                  slt          tp, zero, t4
341:              xor          a1, a3, s10
                  sltu         s3, gp, a5
                  sltu         s6, tp, t4
                  or           t6, sp, s3
                  or           s2, a3, s6
                  andi         s11, a4, 1840
                  sll          s10, sp, t0
348:              sub          s3, t1, t3
349:              xori         sp, t3, 133
                  beq          t5, t0, 366f
                  bgeu         gp, s0, 358f
                  nop
                  auipc        s1, 438310
                  addi         s1, s0, -1211
                  sll          gp, s8, s1
                  xori         t6, t5, 1246
                  blt          a7, a6, 372f
358:              addi         t6, gp, -356
                  beq          zero, ra, 379f
                  bgeu         a0, s11, 369f
                  srai         t4, a2, 27
                  sltu         s9, tp, a5
                  sltu         a7, s5, s11
                  or           s3, a1, t6
                  bge          zero, s3, 382f
366:              bge          a6, s5, 370f
                  sub          t4, s1, t6
                  ori          a2, zero, 1851
369:              blt          s9, t2, 377f
370:              srai         s7, a4, 12
                  bne          s4, s3, 388f
372:              bltu         s9, t1, 389f
                  nop
                  sltiu        s2, s6, -367
                  ori          s3, t3, 178
                  blt          s8, a6, 385f
377:              sltu         zero, s4, s7
                  beq          a0, s10, 396f
379:              bgeu         tp, s5, 398f
                  nop
                  slti         a3, t1, -727
382:              sra          a0, s7, t3
                  sltiu        tp, t6, -732
                  and          s8, a6, s7
385:              sltiu        t0, tp, -80
                  addi         s5, a2, -1845
                  sll          t0, tp, t1
388:              sll          s6, t5, s5
389:              andi         a6, a6, 1065
                  lui          t5, 151221
                  ori          s5, a5, -1669
                  bltu         ra, t4, 409f
                  srli         a2, sp, 14
                  sltiu        t4, t3, -160
                  bge          s8, a6, 404f
396:              blt          a2, s10, 413f
                  auipc        s5, 923090
398:              sra          sp, a7, s1
                  sra          s3, a4, t3
                  nop
                  srli         s1, a3, 11
                  slt          gp, s1, s4
                  sltiu        a2, s1, 487
404:              or           t6, t6, a0
                  bgeu         s0, s3, 415f
                  bne          a5, s5, 416f
                  beq          a1, s8, 410f
                  andi         a6, a3, -910
409:              srai         t4, t3, 22
410:              xori         t4, s6, 1146
                  srai         t2, t4, 14
                  nop
413:              bgeu         a7, t0, 422f
                  srl          t4, s10, s5
415:              addi         s7, t2, -1875
416:              add          a4, s6, a0
                  sra          a0, sp, a5
                  beq          s1, t1, 432f
                  add          ra, t5, a1
                  bltu         t2, s1, 430f
                  sub          a5, a2, tp
422:              bne          s10, a1, 438f
                  beq          zero, a7, 438f
                  srl          a6, s2, ra
                  and          a5, s11, a3
                  or           a2, s9, t6
                  ori          t1, s2, 1039
                  srai         a1, s6, 17
                  blt          t2, s11, 443f
430:              or           a0, s3, t5
                  and          a0, s5, s3
432:              auipc        zero, 693627
                  xori         a7, s3, 1017
                  auipc        gp, 23865
                  srl          a3, s7, a5
                  or           a3, sp, a4
                  beq          s5, t2, 449f
438:              srai         s10, s6, 17
                  auipc        tp, 392295
                  sll          a3, s3, s2
                  srai         s1, a5, 8
                  srai         tp, t4, 18
443:              slli         s3, s3, 20
                  xor          a5, a0, t6
                  srai         t6, s10, 14
                  beq          s1, a4, 462f
                  or           zero, gp, s8
                  bltu         t1, s1, 454f
449:              auipc        s5, 878854
                  xori         sp, a1, 883
                  srli         ra, s3, 20
                  srl          a6, s2, s1
                  and          zero, t4, s8
454:              auipc        s10, 258830
                  auipc        a6, 578256
                  bgeu         s11, t6, 463f
                  sub          sp, gp, a2
                  bgeu         t4, t0, 478f
                  slli         s10, t1, 13
                  sra          s3, s8, a1
                  slt          tp, a4, a2
462:              bltu         a2, a5, 479f
463:              auipc        a6, 230466
                  or           s6, s8, a1
                  xori         a5, t4, 1455
                  xori         a1, s4, 1454
                  slti         a2, ra, -1602
                  and          ra, t4, s9
                  bgeu         t0, s0, 483f
                  xori         t1, a4, -1706
                  lui          s9, 787350
                  bne          ra, s4, 489f
                  ori          t1, t0, 1187
                  bne          s6, s9, 483f
                  lui          gp, 316610
                  slt          s5, sp, a1
                  xori         a6, s8, 520
478:              andi         a3, a3, 1321
479:              bltu         s4, s0, 499f
                  auipc        t2, 82347
                  srli         s1, s9, 23
                  xori         s2, sp, -1820
483:              lui          gp, 236104
                  slli         a3, ra, 19
                  xori         a2, s6, 996
                  srai         s8, s5, 30
                  addi         t5, a5, 1827
                  la           s3, region_0+779 #start riscv_load_store_rand_instr_stream_7
                  auipc        s11, 542766
                  sltiu        s6, a2, -1079
                  sb           a5, 1(s3)
                  ori          a1, s6, -1191
                  sb           s7, 4(s3)
                  srai         s8, t2, 17
                  or           t2, ra, gp
                  lbu          t6, -2(s3)
                  lb           zero, 0(s3)
                  lb           t4, 11(s3)
                  sb           a2, 16(s3)
                  xor          s2, t2, s6
                  xori         s6, a4, -1581
                  sb           s2, 0(s3)
                  sw           ra, -7(s3)
                  lbu          t0, -12(s3)
                  sltu         a7, sp, gp
                  xori         s10, s9, 169
                  lbu          s6, 13(s3)
                  sltu         t5, s3, s0
                  slti         sp, t4, -1647
                  lb           s5, -2(s3)
                  lb           zero, -6(s3)
                  sb           a2, 2(s3)
                  lw           tp, -3(s3)
                  sh           s4, 13(s3)
                  lui          s7, 913359
                  lbu          t0, 4(s3)
                  sb           s6, 12(s3)
                  lui          s5, 538667
                  sll          t1, zero, t4
                  sltiu        a1, a3, 1007
                  srl          t6, zero, s9
                  slli         s5, a5, 30
                  sb           a7, -2(s3)
                  lbu          s2, 16(s3)
                  nop
                  or           t5, a0, a5
                  nop
                  sh           t6, -3(s3)
                  sltu         s6, s3, tp
                  or           a4, t1, t4
                  sb           ra, 8(s3)
                  lw           a5, 9(s3)
                  add          s5, s3, t2
                  lb           ra, -11(s3)
                  sb           s10, 4(s3) #end riscv_load_store_rand_instr_stream_7
                  bgeu         a6, s6, 493f
489:              xor          gp, s7, a3
                  and          s11, s5, t6
                  addi         s1, s5, -1698
                  xori         t4, a7, 1448
493:              slli         a4, t1, 24
                  srl          a5, a0, a5
                  sltu         s11, a2, a2
                  sub          t6, s4, tp
                  or           s7, s6, t1
                  srli         a4, zero, 8
499:              auipc        s9, 199575
                  lui          t1, 374654
                  sll          a7, t1, s4
                  sra          t6, t0, t0
                  add          t6, a6, zero
                  nop
                  beq          zero, s11, 507f
                  bltu         sp, s6, 523f
507:              srai         ra, s2, 14
                  ori          a3, ra, 570
                  sra          t0, s3, t6
                  xori         t1, a3, 1393
                  sll          gp, a4, tp
                  addi         a6, s6, -1021
                  sltu         s3, tp, t1
                  slt          a6, sp, t6
                  bltu         t5, tp, 529f
                  bne          tp, a4, 535f
                  blt          s7, a7, 525f
                  auipc        s6, 454761
                  xori         a7, gp, -1918
                  add          t1, a2, s9
                  srai         s8, a7, 23
                  sll          t1, s11, t6
523:              slli         s1, a2, 28
                  auipc        t2, 722244
525:              bne          a7, ra, 529f
                  srai         s1, s2, 10
                  xor          a5, s10, t4
                  auipc        s8, 920574
529:              or           a7, s11, s2
                  and          t5, a0, ra
                  xori         s1, s9, 1163
                  bgeu         ra, s8, 541f
                  and          t2, sp, s1
                  addi         a5, a5, 1464
535:              slti         a6, s0, 1201
                  bge          a3, a1, 554f
                  srli         a2, s11, 1
                  slt          s10, zero, s7
                  or           a1, a0, sp
                  andi         gp, s1, -1972
541:              ori          tp, s5, 1736
                  bltu         t3, s11, 556f
                  sll          sp, a5, s11
                  bge          s6, s0, 553f
                  srai         t5, a0, 4
                  xor          tp, s7, t1
                  bne          s8, s4, 564f
                  srai         t6, s1, 11
                  auipc        s7, 198015
                  slti         s2, s5, 1300
                  lui          s1, 107911
                  lui          s9, 680227
553:              sra          s1, s9, s8
554:              slt          s1, s5, a2
                  blt          gp, gp, 575f
556:              sltu         ra, gp, a3
                  xori         s11, s7, 1254
                  srai         t2, a6, 20
                  or           t2, ra, tp
                  xori         s3, sp, 1717
                  sra          a3, s11, a2
                  andi         s8, ra, 1522
                  xor          s3, ra, s3
564:              bgeu         ra, a3, 573f
                  beq          a6, s9, 574f
                  srai         a7, ra, 8
                  lui          a6, 42277
                  bgeu         t2, a0, 588f
                  sub          a0, ra, a2
                  srl          s3, a2, a2
                  slti         tp, s3, 1583
                  sltu         a4, ra, s3
573:              or           a7, sp, tp
574:              slli         a4, a2, 4
575:              slt          t6, t6, t2
                  addi         ra, a5, 1267
                  xori         s3, a4, 236
                  bgeu         a7, a2, 597f
                  bltu         a7, t1, 596f
                  bne          s4, t2, 582f
                  auipc        a2, 187740
582:              sltu         s2, sp, sp
                  addi         s7, t1, -1040
                  lui          t2, 326991
                  xor          s6, a1, a4
                  beq          s4, sp, 590f
                  sra          t4, s6, s3
588:              nop
                  bge          s4, zero, 603f
590:              add          t5, s0, s11
                  xor          a5, s8, a5
                  andi         a4, s6, -376
                  sub          s6, s6, a4
                  auipc        tp, 963823
                  slt          s7, a6, a6
596:              slli         t1, a2, 3
597:              lui          ra, 31529
                  or           a1, s7, t5
                  beq          s5, s9, 615f
                  beq          a1, sp, 610f
                  bne          tp, s4, 613f
                  lui          t6, 45598
603:              bge          s0, ra, 610f
                  sltiu        t1, s5, 1812
                  bgeu         t4, a0, 619f
                  srli         s9, a6, 7
                  sltu         s5, s3, ra
                  bge          a2, zero, 626f
                  sltu         s11, gp, zero
610:              xor          t5, s7, s0
                  ori          s5, t2, -859
                  and          t1, t5, zero
613:              slti         ra, s3, 1902
                  nop
615:              sra          t6, zero, a1
                  srl          a0, zero, t5
                  slli         t6, s9, 31
                  srli         s2, s4, 9
619:              or           a4, t0, s4
                  slli         t0, t6, 18
                  or           a2, t2, s7
                  addi         s5, s0, 1516
                  andi         a2, tp, -205
                  or           gp, s4, zero
                  bgeu         a4, tp, 630f
626:              sra          s1, s7, ra
                  addi         t0, s4, 706
                  addi         s6, s9, 1923
                  slli         t5, ra, 3
630:              bge          t2, t2, 639f
                  xori         s8, ra, -992
                  add          a4, s2, s6
                  auipc        a3, 612369
                  sll          gp, tp, s4
                  slt          t5, s10, s3
                  la           s8, sub_5
                  addi         s8, s8, 761
                  srl          t5, t0, t2
                  or           a3, s6, a5
                  or           t4, t6, a3
                  auipc        a5, 851249
                  add          gp, s6, t4
                  srl          s10, t0, gp
                  bltu         t5, a1, sub_4_j7 #branch to jump instr
                  slti         t6, s7, -1048
sub_4_j7:         jalr         a5, s8, -761 #jump sub_4 -> sub_5
                  bge          a7, t1, 651f
                  beq          zero, s1, 644f
                  lui          t2, 549799
                  addi         s5, gp, -279
639:              or           t2, ra, a7
                  bltu         s10, a6, 657f
                  bgeu         ra, a1, 655f
                  srai         ra, gp, 29
                  beq          s7, s2, 646f
644:              lui          sp, 838281
                  or           a5, a7, t4
646:              auipc        a7, 500790
                  slti         s5, t3, -1552
                  andi         t2, s10, 1866
                  bne          t6, a5, 655f
                  addi         s7, a5, -1562
651:              srai         a5, t4, 27
                  blt          sp, a0, 662f
                  bne          t5, s4, 668f
                  add          a4, sp, a1
655:              srl          t1, t1, s10
                  sub          t4, a2, s11
657:              xor          a1, s9, a1
                  srl          s1, s10, t0
                  ori          t2, a2, 124
                  or           t6, s7, ra
                  or           ra, zero, s9
662:              slli         s1, zero, 30
                  sub          a3, t6, s10
                  nop
                  slti         t2, a4, -757
                  or           a6, t2, s7
                  sltiu        s11, t5, 47
668:              slt          ra, a3, t5
                  sra          s10, a3, a4
                  sltiu        zero, s1, -1133
                  slt          tp, s4, s0
                  srai         t2, t4, 12
                  add          a4, t2, a5
                  sll          ra, s5, t1
                  andi         a5, s3, 1619
                  sub          a4, a4, t2
                  ori          s3, sp, 483
                  srl          s10, s2, s5
                  sra          a2, a1, s11
                  addi         a0, s9, 78
                  nop
                  andi         a5, s5, 1647
                  slli         s10, s6, 11
                  slti         t0, t6, -467
                  sltiu        s8, t6, -1053
                  sltu         t2, s9, s6
                  nop
                  blt          a1, tp, 698f
                  addi         s7, s9, -1178
                  srai         s5, s3, 19
                  sub          s3, a0, ra
                  sltiu        a1, t0, 1112
                  slti         a1, a2, 1547
                  sll          s10, s7, s6
                  add          t0, a1, s10
                  nop
                  srl          s7, s4, gp
698:              bge          t2, ra, 715f
                  nop
                  add          t5, a7, t1
                  xor          a6, sp, a7
                  blt          a2, s1, 717f
                  bne          zero, s10, 713f
                  ori          a4, ra, -1984
                  bge          t6, a7, 719f
                  xor          a6, zero, t5
                  bgeu         s10, gp, 721f
                  bltu         s5, a3, 728f
                  beq          s10, a6, 715f
                  srl          s9, s5, s8
                  sll          t5, s3, t6
                  srli         sp, a2, 11
713:              srai         s10, s1, 20
                  add          t4, a4, s1
715:              beq          sp, s1, 722f
                  sra          gp, s6, gp
717:              sltiu        s2, a7, 858
                  slt          s1, t1, a1
719:              lui          s8, 227070
                  slli         a7, a2, 15
721:              auipc        s1, 185148
722:              xori         s3, s1, -658
                  sltu         s2, a0, a5
                  andi         gp, a0, -996
                  andi         s5, s0, 829
                  bltu         ra, tp, 735f
                  slli         s8, s3, 8
728:              srli         ra, s5, 9
                  sub          t0, ra, a6
                  sub          gp, sp, t1
                  and          s8, a5, s5
                  sub          s7, t1, a4
                  bltu         t2, s11, 741f
                  beq          gp, t0, 753f
735:              or           t5, a1, s1
                  srl          s6, t5, s7
                  bge          s8, a2, 739f
                  sltiu        a2, zero, -80
739:              slt          t1, s8, a4
                  nop
741:              and          s2, a7, sp
                  bne          a2, t4, 759f
                  or           s9, s3, t2
                  srai         a1, s10, 11
                  andi         a1, s11, 1562
                  srl          t2, t1, s3
                  srl          s6, s3, a0
                  auipc        gp, 705920
                  bne          ra, a5, 763f
                  sra          s10, s3, sp
                  bltu         a7, s3, 769f
                  srli         sp, t3, 19
753:              beq          a2, s6, 762f
                  sub          gp, s6, t3
                  sub          a0, s5, t6
                  slt          a2, a3, s8
                  sra          s6, a3, a7
                  sra          s7, s7, s6
759:              slt          s6, ra, a6
                  blt          s4, s9, 777f
                  srli         a3, s0, 27
762:              or           a5, s2, ra
763:              xori         zero, t3, -1449
                  bgeu         a4, s4, 773f
                  bgeu         s11, tp, 781f
                  xori         s11, a0, -1716
                  srai         s7, a7, 14
                  add          a4, s3, tp
769:              bltu         t3, s4, 779f
                  bne          s7, s0, 779f
                  nop
                  srl          t4, a3, t2
773:              blt          ra, s8, 783f
                  xori         s9, s3, 518
                  andi         sp, t0, -1906
                  and          s9, zero, s0
777:              srli         t0, gp, 21
                  xori         s11, sp, 679
779:              sltu         tp, a4, s11
                  xor          s10, s2, s9
781:              xor          s7, s0, s2
                  add          tp, t6, s11
783:              slli         s2, a6, 29
                  bltu         a0, s8, 796f
                  sltu         t1, a1, s11
                  lui          ra, 420684
                  bge          a1, zero, 791f
                  srai         s2, t3, 20
                  slli         s11, t1, 20
                  bne          s5, s3, 806f
791:              andi         s1, t1, -284
                  xori         a0, s2, -467
                  srai         a7, ra, 16
                  bltu         a6, s1, 797f
                  ori          s8, zero, -886
796:              sll          s7, sp, ra
797:              slt          s9, zero, tp
                  srli         a6, t0, 0
                  slt          t4, s5, a1
                  xori         t1, a1, -1217
                  xor          t5, t3, tp
                  andi         s9, t5, 280
                  bgeu         gp, s8, 820f
                  bge          t5, t5, 818f
                  xor          tp, s7, t4
806:              sub          s10, t5, s7
                  addi         s3, s6, -1747
                  auipc        t2, 6301
                  slli         s2, a1, 21
                  bltu         s8, s9, 827f
                  sll          s6, s5, s10
                  sltiu        a1, a2, -1564
                  sltu         t6, s6, tp
                  sltu         s11, s2, s7
                  slli         a2, s1, 6
                  or           t0, a0, s6
                  sra          s2, t4, a5
818:              slli         t5, s8, 23
                  add          gp, s4, zero
820:              srai         sp, t6, 29
                  xor          zero, s1, a1
                  srai         a1, a7, 5
                  addi         s2, gp, -1206
                  srai         gp, s2, 26
                  slti         s6, s7, 383
                  srai         t4, a3, 28
827:              slli         t4, s0, 17
                  bge          sp, s7, 833f
                  bne          s2, t2, 849f
                  bltu         zero, gp, 840f
                  bge          s8, s3, 834f
                  nop
833:              slt          s10, t2, s9
834:              srl          zero, t5, gp
                  andi         s8, a0, 242
                  sub          a4, a1, a3
                  addi         a2, s8, 612
                  slt          ra, s7, t5
                  nop
840:              sub          t2, s11, s0
                  bne          s11, tp, 850f
                  srl          t1, s0, t4
                  or           a2, s8, s6
                  auipc        zero, 461793
                  srli         t2, s4, 19
                  and          t5, s10, zero
                  sltu         ra, s10, gp
                  nop
849:              beq          a3, ra, 853f
850:              beq          s6, tp, 867f
                  add          t2, s10, s4
                  beq          t1, s10, 861f
853:              bge          s3, sp, 869f
                  srli         a5, s10, 30
                  srai         a1, t4, 20
                  bne          s10, t1, 873f
                  or           a0, zero, a3
                  xori         s2, s5, 782
                  nop
                  sltu         t5, a3, sp
861:              slli         s7, t1, 0
                  bgeu         sp, t4, 882f
                  bltu         a5, ra, 869f
                  srai         a4, t0, 25
                  slti         tp, a4, 64
                  auipc        s9, 626749
867:              srli         gp, a6, 13
                  xori         a1, t0, 466
869:              sll          s2, s9, zero
                  srl          t0, s1, t5
                  sll          a7, s10, sp
                  sub          ra, gp, s8
873:              slti         sp, a3, -1684
                  sltu         s1, a5, a3
                  xor          a6, s10, ra
                  srli         a7, s10, 1
                  sll          a7, s8, sp
                  blt          t6, a7, 892f
                  slt          t4, s11, t4
                  and          s10, s2, s2
                  xor          s10, a2, t4
882:              add          s5, s7, t2
                  bltu         s9, t2, 892f
                  ori          a7, s0, -1835
                  beq          gp, a4, 899f
                  addi         t4, s0, 676
                  sub          s2, t6, s1
                  srai         t5, t3, 23
                  sra          s9, a1, t3
                  add          s3, s2, t3
                  slt          t0, s0, t5
892:              xori         a1, a4, -171
                  slli         a6, s0, 15
                  bgeu         sp, t0, 911f
                  auipc        a0, 756303
                  slti         t4, s8, 1235
                  bne          t6, a3, 913f
                  sll          s2, s8, s10
899:              bgeu         t3, ra, 914f
                  nop
                  slli         a2, t4, 13
                  xor          t5, sp, a6
                  slt          t0, a1, a6
                  auipc        a5, 832222
                  auipc        a7, 704933
                  bne          t0, s8, 926f
                  sltiu        t1, s3, -532
                  bltu         a4, a5, 925f
                  slti         sp, a7, -1263
                  lui          a2, 426570
911:              sll          a3, a0, s2
                  bltu         s2, t4, 922f
913:              bge          a5, a5, 925f
914:              auipc        a7, 303400
                  addi         t1, s10, 1534
                  srli         t1, a7, 29
                  bltu         a7, s3, 927f
                  srai         s1, a4, 18
                  and          a0, a0, ra
                  srl          s9, s2, s1
                  bltu         a7, gp, 926f
922:              andi         s7, sp, 1315
                  sra          s1, a2, s1
                  ori          s6, s2, 508
925:              bne          t6, zero, 933f
926:              auipc        s5, 255715
927:              addi         a2, a4, 1284
                  srli         t4, s5, 23
                  bltu         zero, t6, 948f
                  sub          ra, t5, a6
                  bne          t3, a6, 933f
                  slt          t0, s1, s3
933:              bne          a5, t2, 940f
                  slli         s9, t1, 13
                  andi         s2, gp, 1667
                  sll          s11, t2, t3
                  bgeu         s5, t6, 951f
                  bltu         t2, t5, 956f
                  nop
940:              slt          a5, s11, a6
                  sub          zero, a7, s8
                  add          t0, s5, a4
                  addi         zero, s7, 464
                  addi         gp, gp, 1327
                  srli         s3, s7, 8
                  auipc        a4, 130577
                  ori          s3, s9, 1560
948:              or           a7, s5, s3
                  addi         t0, gp, -109
                  addi         s2, zero, 1508
951:              and          a3, t0, a5
                  sltu         s9, a0, tp
                  slt          zero, s8, t4
                  auipc        s6, 73280
                  addi         t5, t0, -1745
956:              bgeu         s11, a4, 965f
                  bge          t3, a2, 971f
                  xor          s1, s4, t2
                  or           s6, a4, s5
                  addi         s8, s10, 1320
                  slt          s2, s3, s1
                  xori         t4, s7, -1431
                  beq          a7, ra, 971f
                  srai         t6, a7, 9
965:              sub          a0, s7, s3
                  andi         s8, s3, 541
                  srai         t0, s2, 29
                  and          s1, ra, s10
                  bge          ra, a5, 984f
                  auipc        s10, 229471
971:              beq          zero, t5, 988f
                  beq          t4, a7, 991f
                  xor          t0, s5, s0
                  slli         t1, s3, 1
                  addi         s8, s1, 865
                  addi         ra, a0, -135
                  or           a1, t6, a2
                  slti         a7, ra, 1379
                  sll          a6, s7, ra
                  xori         s9, t5, -494
                  sub          s6, a5, s4
                  sltu         s6, t0, t2
                  slti         t1, a1, -294
984:              sltiu        t2, t1, -831
                  lui          gp, 867433
                  bne          t3, a7, 999f
                  bgeu         t5, s2, 992f
988:              nop
                  sub          s7, a6, zero
                  bge          s5, a2, 999f
991:              sltiu        t6, tp, -16
992:              sltu         zero, t4, s9
                  or           s1, s1, zero
                  bne          zero, s4, 999f
                  xor          s9, a6, t6
                  srl          s11, s11, zero
                  xor          ra, a2, a7
                  sll          t4, a3, a2
999:              lui          t2, 379555
                  slti         s2, t1, -272
                  auipc        a4, 364845
                  lw           a5, 4(s4)
                  slt          a6, a7, s4
                  srl          s2, s5, a0
                  srl          s1, s5, t0
                  and          a4, tp, gp
                  slti         a6, s3, -535
                  addi         s4, s4, 60
                  sub          t0, s7, a6
                  ori          s11, a4, -869
1374:             addi x16, x15, 1
1374:             jalr x16, x16, 0
sub_9:            srai         s9, tp, 28
                  add          a2, s7, s7
                  addi         a2, a1, -1036
                  bgeu         ra, t0, sub_9_stack_p
                  sra          t6, t4, s11
                  sltu         ra, s5, t2
                  addi         t6, a4, 1427
                  ori          t0, s3, -247
                  sll          t1, a0, a5
                  srai         s11, s10, 1
sub_9_stack_p:    addi         s4, s4, -56
                  sw           a5, 4(s4)
                  auipc        t6, 695297
                  la           gp, region_0+1586 #start riscv_load_store_rand_instr_stream_0
                  lbu          a3, 13(gp)
                  slt          s3, s8, t5
                  lbu          zero, 1(gp)
                  xor          a7, tp, a2
                  srai         a4, t5, 2
                  auipc        s5, 1015197
                  slt          ra, s8, t6
                  or           a4, ra, s6
                  xori         s3, t2, 222
                  lw           s6, -10(gp)
                  sltiu        s6, t5, 1125
                  sb           a6, -9(gp)
                  sra          s5, a7, s4
                  lbu          s3, -6(gp)
                  sll          s3, s9, tp
                  lui          a5, 562875
                  srl          t6, ra, s1
                  sb           s3, -11(gp)
                  slti         a3, s3, -721
                  sb           a6, -15(gp)
                  sb           t1, 3(gp)
                  lbu          t6, -16(gp)
                  lbu          s6, -3(gp)
                  sb           t4, -1(gp)
                  lbu          s10, 9(gp)
                  lb           s9, 8(gp)
                  lbu          ra, 9(gp)
                  sb           s10, -1(gp)
                  xor          a2, s3, a7
                  sh           ra, 2(gp)
                  lb           zero, 15(gp)
                  sb           ra, 16(gp)
                  lb           t0, -7(gp) #end riscv_load_store_rand_instr_stream_0
                  bltu         t2, a2, 10f
                  auipc        t1, 819874
                  srli         s5, a5, 12
                  or           gp, a6, t5
                  sll          a7, s0, t0
                  beq          gp, a1, 6f
6:                xor          s11, s10, s1
                  add          a2, t0, s4
                  xori         t4, s9, -1532
                  sra          s6, s8, sp
10:               xor          s3, a0, t1
                  slli         t1, sp, 24
                  addi         t1, t3, 1705
                  slti         gp, t5, 374
                  and          a7, t6, s5
                  blt          t3, t4, 25f
                  blt          a4, s7, 24f
                  bge          a1, a7, 32f
                  or           s5, s7, s9
                  addi         a0, a2, 301
                  blt          s1, t3, 21f
21:               sltiu        s9, s2, -125
                  sltu         s6, sp, s4
                  srli         t1, s9, 20
24:               sll          a6, a4, s3
25:               andi         sp, zero, 875
                  sll          a6, a4, s11
                  sltu         s10, t3, s2
                  andi         s3, a4, -334
                  xor          gp, s3, s10
                  xor          s11, a2, t6
                  sra          t4, t0, a0
32:               add          s3, s9, a1
                  andi         a6, s1, -369
                  andi         zero, s2, 1460
                  xori         a0, s0, 2036
                  xori         t5, t1, -1475
                  auipc        s3, 681910
                  blt          a0, a3, 49f
                  sll          sp, s5, a2
                  addi         zero, gp, -82
                  xor          t1, gp, t2
                  srai         t4, t5, 27
                  srai         a7, a0, 22
                  bgeu         gp, s11, 50f
                  sltu         s9, zero, s10
                  addi         s11, gp, -1069
                  srl          zero, s6, t4
                  bge          zero, zero, 59f
49:               blt          s4, s11, 60f
50:               sll          s11, gp, a0
                  slli         s8, s10, 10
                  blt          t1, a7, 66f
                  ori          s5, t0, -1308
                  srai         a0, s9, 12
                  nop
                  xor          t2, t4, ra
                  srli         t5, s0, 2
                  sra          s2, t3, zero
59:               bne          s6, s8, 62f
60:               srli         zero, a6, 7
                  slli         ra, s6, 27
62:               srai         tp, a5, 21
                  lui          gp, 865800
                  sub          a2, t5, s2
                  beq          a3, a3, 78f
66:               sltiu        zero, s10, -1345
                  slti         s9, a3, -979
                  nop
                  auipc        a6, 46625
                  sltu         s9, s4, s2
                  bltu         tp, t4, 79f
                  slli         a4, a3, 29
                  ori          t0, zero, -1643
                  slt          s1, t3, s7
                  add          ra, a2, t5
                  auipc        a2, 951208
                  sll          s1, s5, t2
78:               bne          t5, a4, 82f
79:               bltu         t6, s11, 80f
80:               slli         tp, s9, 28
                  lui          ra, 894862
82:               or           t2, s6, a7
                  lui          a0, 201897
                  xor          a6, s11, s5
                  lui          gp, 920569
                  slli         a4, tp, 11
                  sltiu        a6, s7, -1934
                  srli         t5, s6, 0
                  sub          s11, t4, s3
                  xori         t5, tp, -298
                  sra          s6, s7, s9
                  bge          t2, s7, 100f
                  bne          s11, a1, 109f
                  lui          a1, 337577
                  xori         s1, sp, 1788
                  slli         s11, s1, 27
                  srli         s8, a3, 20
                  slti         gp, a3, -842
                  xor          gp, s0, a3
100:              srli         s1, s7, 30
                  srli         s7, s0, 16
                  lui          s8, 954685
                  auipc        s7, 767952
                  sll          s7, t6, t1
                  srli         a4, a5, 14
                  sltiu        t5, a4, 329
                  slli         ra, t4, 23
                  xor          a1, t6, s2
109:              slt          t5, s8, ra
                  bne          gp, a0, 118f
                  bne          t0, ra, 119f
                  srl          ra, s6, sp
                  xori         t5, t3, 525
                  sltiu        a4, t6, 1234
                  blt          a2, a0, 134f
                  srli         s2, s7, 30
                  bge          t5, ra, 130f
118:              auipc        t6, 155627
119:              auipc        t5, 173102
                  srai         t0, s10, 15
                  sra          s7, t4, s0
                  lui          s8, 55463
                  add          t0, s5, t2
                  bltu         s11, ra, 142f
                  addi         s8, gp, -1339
                  bgeu         sp, t2, 140f
                  srl          s6, t1, sp
                  andi         s11, a0, -352
                  sub          s7, a0, a4
130:              xori         s10, a3, -1818
                  nop
                  slli         ra, a5, 19
                  srai         a2, t4, 15
134:              sra          s5, gp, s1
                  srl          a0, t6, a2
                  addi         tp, s6, -1958
                  sltiu        t1, s1, 648
                  slti         ra, s11, 287
                  bgeu         a4, t4, 140f
140:              slt          a2, s4, a6
                  nop
142:              auipc        a1, 664529
                  sltu         s6, t0, tp
                  srli         s1, t1, 29
                  addi         gp, a1, -1640
                  lui          t4, 950768
                  bge          gp, s0, 152f
                  sll          s10, a1, t4
                  beq          t0, s10, 166f
                  add          a7, t2, t5
                  add          t5, t1, a3
152:              add          s5, s2, s5
                  nop
                  ori          t6, s1, -1584
                  sra          t2, t2, t4
                  sra          s9, a5, s2
                  srai         s8, s7, 30
                  srl          s7, s6, ra
                  or           s8, zero, gp
                  lui          t2, 738618
                  srl          gp, t2, a7
                  srli         a1, t2, 22
                  slli         s2, t2, 20
                  srai         a5, t5, 7
                  addi         s2, s6, -972
166:              or           s1, a4, s9
                  nop
                  add          s2, s5, t3
                  bgeu         a3, s1, 181f
                  nop
                  srai         a3, t2, 22
                  and          t6, t0, s6
                  addi         a2, t4, 1620
                  auipc        a4, 351444
                  slti         tp, a7, -1712
                  slti         t4, a3, 1654
                  ori          s5, t6, 703
                  ori          a1, tp, 1547
                  and          a5, a7, a3
                  slti         zero, s2, 1712
181:              slti         a7, a1, 1240
                  slli         s7, a2, 25
                  beq          a5, a7, 184f
184:              addi         s1, s6, 655
                  or           t4, a0, a1
                  sltu         gp, s3, t3
                  and          t1, a0, a7
                  beq          a1, s6, 189f
189:              sltiu        s9, a1, 1330
                  slli         zero, s11, 21
                  lw           a5, 4(s4)
                  slti         s2, s0, -1874
                  addi         s4, s4, 56
                  addi         t1, t0, -1867
                  ori          t5, s11, 609
                  auipc        a4, 241907
244:              addi x16, x15, 0
244:              jalr x16, x16, 0
sub_6:            sltu         a1, a7, s0
                  addi         a2, t5, -434
                  addi         t4, ra, -1090
                  addi         s4, s4, -8
                  sra          ra, t3, s0
                  and          t5, s2, s8
                  auipc        t5, 564307
                  sw           a5, 4(s4)
                  sltu         t5, s4, s2
                  lui          s6, 713222
                  slli         a1, s7, 7
                  xori         s6, s9, -299
                  srli         ra, s1, 17
                  la           a6, sub_7
                  sltiu        s2, s8, 2038
                  addi         a6, a6, 427
                  add          a0, t6, sp
sub_6_j10:        jalr         a5, a6, -427 #jump sub_6 -> sub_7
                  nop
                  andi         gp, s9, 1676
                  la           s10, sub_7
                  slti         s5, s5, -63
                  sll          a1, s3, t5
                  addi         s10, s10, -163
                  slt          s2, s11, s7
                  beq          s10, s4, sub_6_j11 #branch to jump instr
                  sll          a2, s10, t0
sub_6_j11:        jalr         a5, s10, 164 #jump sub_6 -> sub_7
                  auipc        s1, 819609
                  slt          a6, a6, a5
                  srai         zero, tp, 18
                  bltu         s8, tp, 7f
                  sltu         s10, s1, s9
                  bge          a0, t0, 7f
                  slt          t5, s1, s2
7:                xor          zero, a1, s3
                  srai         s5, a2, 22
                  andi         s11, s3, -1895
                  sltiu        ra, tp, -577
                  sltu         s1, sp, t3
                  slti         a4, t2, 1020
                  and          t6, t1, s7
                  or           a4, s4, t0
                  slti         ra, s7, 1236
                  lw           a5, 4(s4)
                  srli         s2, a5, 5
                  sltiu        a0, a3, 1881
                  sll          t0, a4, a4
                  sub          a7, t6, s0
                  srli         s8, sp, 10
                  addi         s4, s4, 8
                  sltiu        s2, s3, 741
                  sltiu        tp, a1, -638
                  sltiu        s3, s10, -677
54:               addi x4, x15, 0
54:               jalr x4, x4, 0
sub_1:            or           t1, a6, s0
                  slt          a1, s7, s4
                  addi         s4, s4, -40
                  add          t4, t5, a2
                  srai         a7, a6, 31
                  sw           a5, 4(s4)
                  sltiu        a0, s8, -1947
                  xor          t0, s0, s4
                  or           s10, t1, s1
                  srai         sp, zero, 16
                  la           s1, sub_2
                  auipc        s11, 384345
                  addi         s1, s1, -250
                  slli         t2, t4, 5
                  xori         s9, t2, -1401
                  bgeu         ra, s2, sub_1_j2 #branch to jump instr
                  slli         t0, s9, 8
sub_1_j2:         jalr         a5, s1, 250 #jump sub_1 -> sub_2
                  la           t1, sub_3
                  lui          sp, 429676
                  slli         s1, s11, 20
                  sltiu        gp, s0, 1389
                  sra          tp, a0, gp
                  srl          s7, s7, t0
                  xori         tp, t6, 1749
                  addi         t1, t1, -84
                  slli         s9, tp, 16
sub_1_j3:         jalr         a5, t1, 85 #jump sub_1 -> sub_3
                  ori          a2, a0, 1633
                  srai         t2, t1, 21
                  la           tp, sub_2
                  lui          a6, 55216
                  addi         tp, tp, 304
                  srli         a4, a5, 4
                  addi         sp, zero, 1555
                  srli         a4, s5, 8
                  xor          s10, t3, gp
sub_1_j4:         jalr         a5, tp, -304 #jump sub_1 -> sub_2
                  la           sp, region_1+1063 #start riscv_load_store_rand_instr_stream_0
                  lhu          a5, -33(sp)
                  sw           ra, 57(sp)
                  lb           a1, 45(sp)
                  lb           t5, 22(sp)
                  sub          s5, s2, t6
                  lh           a5, -49(sp)
                  sh           zero, -55(sp)
                  nop
                  lui          s5, 863365
                  lb           s6, 32(sp)
                  sub          a0, a2, t4
                  lhu          s9, -15(sp)
                  srai         a6, t1, 21
                  addi         a1, s4, 2033
                  sw           t6, 1(sp)
                  lb           a0, -57(sp)
                  and          a3, s7, s1
                  sltu         t5, sp, s5
                  sb           s7, 52(sp)
                  sb           s4, 40(sp)
                  lb           a2, -20(sp)
                  sh           s11, 53(sp)
                  auipc        s11, 645141
                  sll          s9, a7, s9
                  sb           s2, 62(sp) #end riscv_load_store_rand_instr_stream_0
                  andi         t0, s4, -289
                  andi         t5, sp, 512
                  sub          s1, s4, zero
                  slt          t2, a2, zero
                  slti         s7, a7, 1865
                  ori          t4, s11, 1305
                  or           t5, a6, t0
                  sra          s1, zero, s9
                  slli         a4, t3, 29
                  sub          ra, s2, s6
                  xori         zero, s6, 1565
                  sub          s6, a5, sp
                  auipc        t6, 733000
                  slli         ra, s2, 7
                  bge          s5, a4, 20f
                  sltu         s7, s3, tp
                  slli         s10, s10, 28
                  bgeu         t6, gp, 33f
                  xori         a5, s0, 1603
                  nop
20:               bne          s5, s4, 25f
                  ori          s1, s8, 1391
                  ori          a1, a6, 457
                  bltu         a2, s2, 33f
                  sltiu        sp, s7, -195
25:               xori         zero, tp, 576
                  auipc        a1, 738930
                  beq          a3, a7, 42f
                  sltiu        s5, a2, 575
                  nop
                  xori         s8, zero, -163
                  beq          s3, t1, 44f
                  sra          a6, sp, s1
33:               or           s1, tp, t1
                  sra          a2, s11, s4
                  bgeu         s11, s0, 50f
                  bltu         s8, s11, 47f
                  sltiu        zero, a7, 894
                  and          zero, a5, zero
                  bne          s6, s7, 46f
                  sltu         s6, t3, a7
                  slti         tp, s10, 1715
42:               slti         s9, ra, -1426
                  nop
44:               xori         t4, t6, 687
                  or           a2, zero, s8
46:               addi         gp, a7, 931
47:               slti         a1, s2, -1054
                  addi         a2, gp, 1730
                  ori          a4, t2, -1016
50:               bltu         t6, s0, 68f
                  bne          s9, s6, 56f
                  and          t2, a2, a7
                  and          a0, t3, s5
                  bge          t1, s4, 66f
                  bltu         s7, s4, 62f
56:               xor          s10, sp, s9
                  srl          t5, gp, a6
                  xor          a0, s11, t0
                  lui          zero, 20462
                  lui          t6, 360106
                  sub          gp, ra, s5
62:               sll          s1, t2, a2
                  srai         a6, a3, 20
                  srli         t6, s1, 0
                  slti         a6, s11, 559
66:               blt          a0, s9, 80f
                  ori          s3, tp, 1477
68:               sltiu        sp, t1, -2003
                  srli         s6, s9, 13
                  blt          zero, a3, 71f
71:               slli         s5, t2, 30
                  srai         t0, zero, 26
                  xor          t5, a1, a5
                  sra          t2, gp, a4
                  srai         a2, s2, 3
                  ori          t1, s6, 12
                  andi         a5, t5, 347
                  xori         s9, s11, 450
                  slti         t4, t3, -840
80:               slli         s2, s2, 31
                  or           sp, s0, s2
                  slt          t6, a1, a1
                  and          s9, s1, t3
                  lui          s3, 148929
                  srl          a3, ra, s8
                  srai         s11, t1, 3
                  srl          a3, s2, t3
                  andi         t0, s0, 470
                  auipc        t5, 698771
                  sltu         s2, a4, a5
                  sltu         a2, a5, s9
                  xori         a2, a6, 1352
                  srl          a3, a6, t5
                  or           a2, a3, t3
                  xor          s3, tp, s1
                  or           a6, s2, s1
                  or           s1, a6, a4
                  beq          sp, s2, 101f
                  bgeu         gp, sp, 102f
                  srli         s11, s9, 13
101:              add          tp, a0, s11
102:              sltiu        t2, s6, 1944
                  slli         s3, t6, 12
                  sltiu        ra, s9, 215
                  or           t6, a6, t4
                  sltiu        a2, s4, -344
                  auipc        ra, 819258
                  or           sp, s9, t6
                  sra          tp, a0, s6
                  blt          s5, t0, 120f
                  bgeu         s4, s3, 125f
                  xor          a6, t5, a1
                  sra          t0, a7, s7
                  sll          s10, a1, a4
                  sub          a6, t0, tp
                  sra          a3, s3, s0
                  bltu         zero, t3, 122f
                  sltu         s3, s4, a6
                  bge          t6, t0, 125f
120:              xor          a2, a4, a3
                  sltu         t4, s7, tp
122:              and          a6, s5, zero
                  sra          t0, s4, s7
                  nop
125:              addi         a1, t4, 1378
                  add          t2, s5, s5
                  auipc        a6, 528485
                  sub          a0, s4, t0
                  sub          t4, ra, s0
                  xori         t0, s5, -233
                  bltu         a3, a0, 151f
                  xori         a6, t4, 1284
                  srli         a0, s5, 27
                  slt          s6, s8, s5
                  slti         t2, s11, 1152
                  andi         a6, s9, -1932
                  slt          t6, s8, s8
                  ori          t2, t5, 153
                  ori          ra, ra, -550
                  srli         a1, tp, 24
                  sra          t5, t3, s4
                  srli         a6, t1, 29
                  andi         a2, gp, -1438
                  ori          a0, a2, 988
                  andi         t5, zero, -139
                  srl          a6, s6, zero
                  ori          a6, a5, -128
                  and          s11, t2, s2
                  srai         s9, ra, 7
                  nop
151:              srl          tp, a3, t2
                  bne          s1, s9, 163f
                  sltu         tp, s8, a7
                  lui          a0, 967740
                  xor          s7, t1, a2
                  blt          ra, s7, 164f
                  xor          t4, s5, t3
                  addi         s9, s0, -417
                  add          a5, gp, t0
                  bltu         t0, t5, 167f
                  addi         t5, t6, 744
                  sltu         s10, s7, t0
163:              bltu         a5, t3, 172f
164:              and          a6, t2, s0
                  sll          a2, a3, s2
                  bgeu         sp, zero, 168f
167:              beq          a1, s2, 180f
168:              bltu         a7, a6, 178f
                  slli         s5, s0, 29
                  beq          s4, s7, 176f
                  sra          a1, s8, t3
172:              slli         a5, gp, 18
                  bne          t1, t2, 180f
                  sra          sp, s2, t1
                  sltu         a2, s3, s5
176:              blt          t1, a5, 191f
                  andi         ra, s3, 1301
178:              srl          s10, a6, t3
                  bne          a2, zero, 189f
180:              nop
                  addi         sp, ra, 1522
                  sltiu        s10, a1, 868
                  xor          s9, a0, t4
                  blt          t1, gp, 196f
                  slli         s9, s9, 23
                  blt          s6, s2, 196f
                  xori         s2, s3, 1347
                  nop
189:              nop
                  ori          s1, sp, 167
191:              xor          t5, t4, a7
                  bgeu         t2, s10, 197f
                  xori         t5, a2, -230
                  auipc        t0, 99358
                  sltiu        a4, s0, 1706
196:              xori         t5, zero, -1609
197:              xori         s10, tp, 387
                  sltu         s8, t6, sp
                  ori          ra, s0, -1076
                  slti         a4, s4, 1168
                  lui          t5, 689420
                  lw           a5, 4(s4)
                  sll          a6, t6, t1
                  srl          s2, s6, s11
                  sltiu        a3, ra, -685
                  sltu         a0, t3, s6
                  xor          a6, a2, s4
                  xor          a0, t5, s3
                  sll          s5, s7, t0
                  addi         s4, s4, 40
                  sub          s2, a1, s0
276:              addi x15, x15, 1
276:              jalr x15, x15, 0
sub_3:            srl          s7, s10, t3
                  xori         t0, ra, 653
                  sll          zero, s9, ra
                  srli         s6, s3, 24
                  blt          a7, s2, sub_3_stack_p
sub_3_stack_p:    addi         s4, s4, -40
                  sra          t4, s0, s6
                  sw           a5, 4(s4)
                  nop
                  xori         s9, ra, 1990
                  xori         t1, t4, -1835
                  ori          t0, a2, 924
                  srli         gp, a2, 26
                  andi         s7, s11, -1887
                  sltiu        s10, zero, 519
                  srl          s6, s4, a3
                  sra          zero, s10, s4
                  sltu         a0, a0, a0
                  bgeu         a7, s0, 15f
                  ori          a6, gp, 344
                  slt          s10, t6, t5
                  sll          s8, t3, t6
                  nop
                  slli         zero, a2, 6
                  auipc        s8, 1040031
15:               auipc        t4, 135857
                  slt          s1, t1, s11
                  addi         t2, a3, 323
                  lw           a5, 4(s4)
                  lui          tp, 34798
                  slli         t0, a4, 23
                  addi         s4, s4, 40
                  add          ra, a6, t1
                  sltiu        a0, s1, -814
                  sub          t5, s0, s5
                  slt          a7, s11, a0
                  sltu         a0, t5, t4
37:               addi x19, x15, 1
37:               jalr x19, x19, 0
sub_5:            sltu         zero, a3, t3
                  srl          s10, s9, s5
                  addi         t2, a7, 107
                  sub          t4, a5, t3
                  srli         zero, t1, 19
                  addi         s4, s4, -64
                  sw           a5, 4(s4)
                  lui          t5, 416568
                  srli         s6, ra, 14
                  slt          a3, zero, s0
                  sltu         t4, gp, s0
                  lui          s11, 717310
                  slt          s7, a1, t6
                  srai         t1, t2, 12
                  la           t5, sub_6
                  sll          s8, s1, a1
                  xor          a7, a6, s8
                  addi         t5, t5, -135
                  andi         a0, gp, -1032
                  andi         zero, sp, -2047
                  andi         s11, zero, -647
                  bne          s5, sp, sub_5_j9 #branch to jump instr
                  slti         t0, s5, 2035
sub_5_j9:         jalr         a5, t5, 135 #jump sub_5 -> sub_6
                  la           sp, region_1+393 #start riscv_load_store_rand_instr_stream_1
                  srai         s7, a1, 22
                  slti         s1, a0, -88
                  slti         s2, s8, -1350
                  sll          t2, t3, a0
                  srli         t2, a6, 24
                  lb           t1, 6(sp)
                  auipc        s2, 319202
                  addi         zero, a4, 1025
                  sltu         s10, t0, s1
                  srli         a3, s5, 0
                  lb           a5, -12(sp)
                  addi         s11, ra, -674
                  lb           a1, 1(sp)
                  ori          a6, a4, -1540
                  addi         s11, ra, 783
                  lb           t1, 14(sp)
                  srai         a0, s10, 3
                  lbu          a5, 1(sp)
                  sll          s1, t5, t3
                  sb           gp, -11(sp)
                  lb           t5, -10(sp)
                  xori         s11, t3, 1640
                  lhu          a3, 5(sp)
                  lb           a2, -2(sp)
                  sltu         t6, t1, s11
                  or           t5, s4, t1
                  lhu          a1, -5(sp)
                  lhu          a3, 9(sp)
                  sw           s1, 7(sp)
                  sb           t2, -14(sp)
                  lb           t6, -16(sp)
                  lui          t2, 190788
                  lbu          s8, 6(sp)
                  lbu          s5, 0(sp)
                  sll          s8, a2, s5
                  sub          tp, s10, a7
                  lb           a1, -2(sp)
                  lbu          s7, -5(sp)
                  lui          t6, 1017860
                  sb           sp, 12(sp)
                  lb           tp, -12(sp)
                  sh           ra, -11(sp)
                  lhu          ra, 5(sp)
                  sb           t5, 3(sp)
                  lb           a1, 10(sp)
                  or           s11, t0, s2
                  sb           a1, 12(sp)
                  auipc        s1, 346233
                  lb           s7, 0(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s1, region_0+924 #start riscv_load_store_rand_instr_stream_0
                  sb           s8, 470(s1)
                  lw           a3, 408(s1)
                  lbu          s9, 278(s1)
                  and          t5, s0, sp
                  lb           s11, 93(s1)
                  sltu         t4, t4, a7
                  sll          tp, s5, a7
                  lw           s9, -236(s1)
                  xor          s3, a2, a3
                  sll          s5, a1, s9
                  sh           a3, 776(s1)
                  auipc        s11, 68262
                  sb           zero, -349(s1)
                  lb           s6, -727(s1)
                  sltu         t2, a6, s1
                  sb           tp, -763(s1)
                  sb           t6, 119(s1)
                  xori         tp, a6, 1676
                  sh           t0, -206(s1)
                  srai         t1, s0, 29
                  sb           s7, 230(s1)
                  lb           tp, -588(s1)
                  lhu          t4, -276(s1)
                  lbu          a1, 239(s1)
                  sra          tp, t4, t1
                  srai         s6, tp, 1
                  srai         t1, a4, 3
                  lui          zero, 32588
                  lbu          s7, -759(s1)
                  and          a1, t0, a0
                  sb           s9, 143(s1) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+236 #start riscv_load_store_rand_instr_stream_2
                  lw           t1, -44(sp)
                  lbu          s7, 13(sp)
                  slti         a2, ra, 1832
                  lb           s10, 50(sp)
                  slli         t1, t6, 12
                  xor          t1, ra, s0
                  lb           s6, 63(sp)
                  nop
                  srl          a7, s9, gp
                  sltiu        zero, a6, -1657
                  sb           t1, -10(sp)
                  lbu          s8, -21(sp)
                  sb           tp, -26(sp)
                  nop
                  xor          ra, s11, t4
                  sll          a3, s3, s2
                  lb           a6, 50(sp)
                  nop
                  auipc        t4, 33572
                  ori          a1, t0, -726
                  sra          s1, s4, a2
                  lbu          zero, 27(sp)
                  srai         a4, t1, 11
                  slti         a5, t2, 1581
                  lb           s5, -1(sp)
                  sub          s8, s3, a4
                  lbu          a4, -13(sp)
                  sh           s4, -50(sp)
                  lh           s11, -58(sp)
                  andi         s11, t1, -99
                  sb           a6, -35(sp)
                  xor          a6, a1, s8
                  sb           zero, -10(sp)
                  add          t5, t6, s3
                  slti         t5, t2, 734
                  lui          t4, 139146
                  srl          a7, s5, a1
                  lhu          s11, 34(sp)
                  sb           s9, -14(sp) #end riscv_load_store_rand_instr_stream_2
                  bltu         a4, s0, 1f
1:                andi         s1, a5, 954
                  sltiu        a3, gp, 1925
                  or           t0, a1, t6
                  addi         a5, a3, -397
                  slti         t4, s6, 2044
                  blt          sp, s9, 11f
                  blt          a4, sp, 13f
                  slti         s11, zero, -1984
                  slt          a0, t2, s0
                  bltu         s6, zero, 13f
11:               and          s1, s4, t6
                  andi         s5, a5, 477
13:               sltu         s5, t2, s6
                  srai         sp, zero, 1
                  bge          s6, a4, 27f
                  srai         a5, s7, 29
                  srli         s6, ra, 17
                  bge          a5, t6, 27f
                  srai         ra, t5, 4
                  slli         s11, t1, 7
                  sltiu        a4, a1, 1145
                  nop
                  bge          s1, sp, 41f
                  beq          t3, t4, 29f
                  auipc        s7, 664301
                  slli         a1, s10, 7
27:               blt          sp, a4, 37f
                  lui          a5, 554238
29:               bge          t4, ra, 41f
                  sltu         zero, s9, a2
                  bltu         s8, tp, 43f
                  sltiu        a4, s10, 1618
                  bltu         s2, s3, 52f
                  slt          a1, t0, s0
                  slt          t4, a3, a2
                  xor          a4, s6, t1
37:               lui          a7, 761450
                  sltu         s5, t3, a0
                  sra          a2, s3, s1
                  sltu         s10, t3, s3
41:               srai         a5, tp, 2
                  blt          s2, a4, 57f
43:               bne          t4, a1, 46f
                  bne          s8, s2, 54f
                  beq          s11, t5, 49f
46:               srli         t5, s3, 25
                  slli         a1, t2, 22
                  auipc        t5, 574835
49:               ori          s6, s10, -1248
                  sra          a3, a1, a5
                  slti         s3, s4, -1480
52:               sll          a6, s6, s9
                  lui          t2, 327919
54:               srai         a3, a3, 5
                  sltu         a0, a0, s11
                  nop
57:               bge          a2, s0, 63f
                  auipc        a3, 1009783
                  slti         a7, t1, -1931
                  slti         gp, t0, -628
                  beq          a7, a6, 69f
                  blt          t5, s4, 63f
63:               bne          t0, t2, 78f
                  sll          s6, a5, s11
                  or           gp, t3, sp
                  or           t6, a1, a4
                  srl          a7, a0, a4
                  slli         a6, s4, 7
69:               or           a4, a0, s4
                  srl          a7, tp, a5
                  auipc        t5, 596407
                  sra          a7, t2, s2
                  addi         s10, zero, 1537
                  sltu         zero, t1, s6
                  lui          ra, 636386
                  blt          s2, s4, 93f
                  srli         s6, s9, 6
78:               nop
                  or           zero, s0, a1
                  xori         a0, a1, 1876
                  sltu         a2, s9, s0
                  and          t1, s2, a2
                  xori         t2, t0, -980
                  bge          s0, s4, 85f
85:               xori         tp, t5, 1909
                  or           s5, a7, a1
                  sltu         a1, a2, s2
                  add          s5, zero, s0
                  bge          s4, zero, 91f
                  sub          t6, s1, a2
91:               srli         gp, t4, 31
                  beq          a7, a4, 94f
93:               slli         s9, tp, 25
94:               srl          a6, s11, tp
                  srai         s11, s1, 27
                  add          a3, s0, a6
                  sub          s10, sp, a5
                  srl          a3, s4, a1
                  nop
                  lui          a6, 619425
                  slt          t5, a2, t2
                  bgeu         a1, a1, 121f
                  srli         t4, s1, 4
                  or           s1, t3, s1
                  xori         t0, sp, -512
                  andi         s11, t2, -1291
                  addi         s11, t0, 1223
                  sltiu        s8, a0, -384
                  addi         a4, zero, -943
                  slti         s11, s3, -765
                  srai         a3, t4, 18
                  xori         t5, t5, 485
                  sub          s6, t6, ra
                  sll          t4, tp, sp
                  slti         s11, zero, -2047
                  srli         tp, t0, 28
                  auipc        s10, 439092
                  srl          s2, s11, a7
                  sltiu        s8, s5, 1451
                  lui          t5, 325546
121:              bgeu         sp, t0, 126f
                  add          t0, s0, sp
                  addi         tp, s0, 180
                  beq          t0, zero, 141f
                  addi         a7, s11, -2037
126:              srl          a3, t6, zero
                  slt          s3, sp, s8
                  add          tp, s5, a5
                  lui          s9, 583061
                  srl          s10, zero, s7
                  sltiu        t0, t1, -66
                  sltiu        t6, a7, 503
                  srli         a4, t4, 24
                  sll          t0, a5, s8
                  or           s2, s2, t5
                  sub          a1, zero, tp
                  ori          zero, t3, -1275
                  and          t4, a5, s1
                  sub          t6, a2, t4
                  ori          s2, t2, 1188
                  xori         t2, s1, -354
                  la           a3, sub_6
                  nop
                  addi         a3, a3, -997
                  bne          s4, s5, sub_5_j8 #branch to jump instr
                  lui          t4, 516858
sub_5_j8:         jalr         a5, a3, 997 #jump sub_5 -> sub_6
                  bgeu         s9, s4, 153f
                  add          s1, a4, t3
                  ori          s10, s10, 1541
                  slli         zero, s7, 2
141:              sltu         t6, a5, gp
                  sub          tp, s0, s10
                  xori         a0, s7, -653
                  srai         a6, s8, 12
                  slli         a1, t3, 7
                  sltiu        tp, s0, -120
                  sltu         a6, t0, t3
                  beq          s5, s1, 160f
                  bge          t3, t3, 154f
                  ori          a2, s8, 1577
                  add          gp, ra, a1
                  auipc        ra, 1034472
153:              or           a6, s9, sp
154:              bne          s4, s3, 164f
                  beq          s7, a2, 160f
                  addi         t1, a2, -200
                  lui          t6, 302978
                  bltu         t4, t5, 173f
                  nop
160:              lui          t6, 494955
                  slt          ra, a6, zero
                  blt          t6, t6, 181f
                  sub          tp, t6, s11
164:              lui          s9, 457971
                  xori         t5, sp, -1515
                  blt          s9, s9, 178f
                  sltiu        s10, a3, 1773
                  andi         t6, s1, 946
                  lui          t1, 246994
                  bgeu         s3, s7, 179f
                  addi         t2, s8, -1459
                  srli         a2, s3, 13
173:              andi         s5, t5, 944
                  nop
                  xor          s9, s4, t1
                  sra          a5, a3, s2
                  nop
178:              blt          a4, t4, 183f
179:              sll          tp, a2, t4
                  ori          a6, tp, 640
181:              nop
                  slli         s2, t1, 11
183:              auipc        a3, 68384
                  slt          sp, t4, t6
                  bge          a2, t6, 197f
                  slt          s2, t0, s1
                  nop
                  bgeu         s6, t5, 194f
                  slt          s9, s5, t6
                  blt          s1, s8, 200f
                  and          a2, s6, s0
                  slt          a6, s4, a0
                  or           s9, a2, s7
194:              sll          t0, a7, s10
                  blt          s5, s4, 198f
                  srli         s5, s4, 23
197:              lui          t4, 622625
198:              auipc        s10, 664508
                  and          s3, s11, a1
200:              auipc        s11, 459039
                  nop
                  slti         s6, s8, -744
                  bne          a6, gp, 204f
204:              ori          a2, t2, -1595
                  srl          s1, s6, s2
                  bne          a7, s6, 211f
                  sra          s8, s8, a5
                  bgeu         t6, t0, 210f
                  sra          ra, s10, t0
210:              sltiu        a2, gp, 1462
211:              srl          a4, tp, t2
                  srl          s2, a5, t5
                  slti         s3, s10, -1670
                  lui          s6, 597360
                  bne          s0, s0, 217f
                  bltu         a6, s11, 233f
217:              sub          a2, t6, a7
                  bne          s2, s7, 219f
219:              and          s10, s9, s11
                  sll          s11, s5, a5
                  or           a3, t4, a0
                  addi         t4, a2, 1260
                  srl          s1, s4, a6
                  bge          gp, t4, 240f
                  xori         a0, a6, 671
                  add          s10, s11, a6
                  slti         s2, a4, -1449
                  blt          gp, t0, 240f
                  bgeu         t2, a0, 235f
                  sra          zero, a3, s8
                  bltu         a7, a5, 236f
                  addi         a6, t5, 1605
233:              xor          s9, t5, s2
                  sll          s9, s1, t2
235:              sll          a0, t5, zero
236:              beq          gp, t5, 248f
                  auipc        zero, 881554
                  auipc        sp, 224651
                  sub          t1, a5, s11
240:              beq          zero, t0, 241f
241:              addi         gp, t1, 1286
                  sub          gp, s8, t2
                  sltu         s1, s10, t0
                  bltu         t4, a7, 252f
                  auipc        t6, 770388
                  bge          t5, a7, 265f
                  auipc        zero, 145020
248:              bne          s11, a6, 263f
                  sub          zero, s1, ra
                  bgeu         gp, s9, 253f
                  srl          zero, a3, a4
252:              auipc        t1, 602340
253:              lui          a3, 385618
                  sltu         t0, s1, a1
                  sll          a3, s3, a6
                  and          tp, ra, s7
                  or           t5, tp, t2
                  srl          s7, s1, s4
                  sltiu        a0, s10, -113
                  lui          s2, 129120
                  srli         a4, t5, 28
                  bgeu         s4, s9, 279f
263:              xori         s11, t0, 1262
                  sll          ra, s8, s6
265:              slli         t4, s10, 4
                  ori          s9, t3, 1202
                  srli         a2, s0, 22
                  sltiu        a1, ra, 98
                  add          a1, s4, t5
                  srl          ra, s2, t5
                  bgeu         s5, sp, 289f
                  add          s6, a6, t5
                  lui          t2, 642443
                  nop
                  add          a7, a4, a2
                  srli         zero, s11, 18
                  auipc        s5, 220062
                  auipc        s1, 221385
279:              xori         t5, a7, -834
                  bge          s7, s5, 284f
                  srli         a2, s7, 15
                  srai         tp, s4, 18
                  beq          s0, a7, 295f
284:              slt          a3, t2, s11
                  sra          t6, t6, s2
                  beq          t6, tp, 294f
                  bltu         s1, a6, 296f
                  sltu         a4, s1, t1
289:              srl          s8, s5, a3
                  srai         a2, s10, 10
                  bltu         a6, s3, 307f
                  slt          t5, ra, s3
                  nop
294:              srl          a2, s1, a4
295:              bne          a2, s4, 310f
296:              srl          a0, s0, s7
                  srli         s1, a3, 8
                  add          s8, gp, t6
                  lui          s6, 679274
                  srl          t4, s7, a3
                  add          a2, s5, s6
                  blt          tp, t5, 321f
                  srli         s6, s8, 10
                  sra          ra, s0, t3
                  srai         a7, s6, 23
                  andi         a0, zero, 1683
307:              lui          t2, 999594
                  and          s2, a4, sp
                  slli         zero, t2, 3
310:              and          s5, s4, s5
                  auipc        a2, 436006
                  bge          tp, s1, 314f
                  xor          s3, s11, t1
314:              slli         tp, t0, 10
                  lui          a7, 664579
                  bne          t1, s6, 320f
                  and          t0, s3, zero
                  bgeu         t1, s8, 323f
                  srli         t2, t1, 11
320:              beq          s6, a2, 332f
321:              sll          t2, s5, s4
                  lui          t1, 235606
323:              srli         s10, s3, 6
                  and          a5, sp, s7
                  srli         a1, t6, 17
                  xori         a5, zero, -992
                  beq          sp, s10, 328f
328:              add          t4, s11, sp
                  slli         s7, s8, 11
                  nop
                  sub          s3, s3, a7
332:              slli         t2, t0, 23
                  srai         s1, s11, 9
                  srai         s6, s1, 16
                  srl          t5, a1, s11
                  xori         t0, a7, 542
                  add          ra, t2, t2
                  sll          s9, a7, t3
                  or           a0, s7, t5
                  xor          s3, s5, zero
                  slli         t1, a7, 13
                  andi         tp, a3, 1263
                  blt          t3, s9, 360f
                  beq          t2, a5, 349f
                  addi         t6, a5, 797
                  sltiu        s5, sp, -97
                  sll          s5, a0, s5
                  slti         t5, s3, 1566
349:              auipc        zero, 625212
                  lui          s5, 41082
                  ori          t6, t3, -1762
                  lui          tp, 352660
                  slti         t5, s11, 311
                  bltu         s7, s6, 355f
355:              beq          a2, s6, 361f
                  beq          a0, s3, 375f
                  beq          s8, t6, 372f
                  add          s11, t0, zero
                  bne          a0, a3, 371f
360:              bgeu         s10, sp, 361f
361:              srli         s8, a6, 19
                  sll          t0, t3, s6
                  srl          sp, s0, a0
                  andi         gp, t3, 879
                  sub          s2, t4, s4
                  sra          s7, a0, t0
                  sltu         s9, s8, s7
                  sll          t5, ra, a1
                  xori         a3, gp, 1817
                  srl          t6, t2, t2
371:              xori         t4, a7, -1457
372:              ori          t5, tp, -219
                  slt          a0, s10, t3
                  xori         gp, s11, 194
375:              sub          t5, t2, t4
                  auipc        zero, 435017
                  sll          s1, t6, tp
                  slti         t1, t6, -1163
                  add          s11, s1, s2
                  sll          t2, s2, s1
                  sltiu        tp, s3, 1236
                  add          s3, a4, t2
                  and          s5, s2, a4
                  sub          s7, t0, gp
                  srli         s3, a0, 7
                  lui          tp, 463516
                  auipc        ra, 839467
                  blt          t5, s0, 394f
                  srli         a4, s8, 2
                  bltu         t2, s2, 402f
                  bgeu         t3, t1, 401f
                  slt          zero, a6, s0
                  bgeu         s2, a0, 398f
394:              bgeu         s7, s10, 396f
                  or           a3, t0, s0
396:              slt          s5, t2, s4
                  sll          a5, tp, a5
398:              xori         s8, a7, 1005
                  andi         s8, t5, 539
                  sll          s9, a7, s7
401:              addi         s3, s2, -663
402:              auipc        a5, 487214
                  xori         s3, s10, 852
                  slti         s8, s7, 1527
                  slti         s2, t1, 1718
                  srai         s7, sp, 18
                  auipc        t5, 971286
                  sub          t4, a7, tp
                  add          t2, s5, a0
                  lw           a5, 4(s4)
                  srai         s11, s2, 2
                  addi         s4, s4, 64
                  sub          a3, a3, a2
                  xor          t2, a2, tp
                  sra          t1, a3, s7
573:              addi x22, x15, 1
573:              jalr x22, x22, 0
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.section .region_0,"aw",@progbits;
region_0:
.word 0xcbfd950f, 0x5c65f0b5, 0x5c2e438d, 0x1292dd8b, 0x58bcb779, 0x36698b21, 0xf30a4016, 0x83896219
.word 0xd203cd8d, 0x38c59e0b, 0xa16ebf6b, 0xa0793a5c, 0x1f92e2ea, 0xb942268a, 0xe12d4bbc, 0x00b27c5b
.word 0x91c410dd, 0x928791ac, 0xbefe4f98, 0x530fa8bf, 0x181b41a1, 0x1251949e, 0x7504be17, 0x20beadce
.word 0x1fff1a7e, 0xc379fd03, 0x38cb353d, 0xb0d55c8c, 0x86879a2c, 0x2b6d7084, 0x2b083aa2, 0xa175540f
.word 0x8c3f0325, 0x2a4882dd, 0x5d858ed5, 0x280d65e7, 0x155d009e, 0x104fa021, 0x3398c2a0, 0x3b86deb8
.word 0xf106c2ee, 0xa2f4c5fe, 0x720a8d70, 0x3a4d9f06, 0xc5e11085, 0x94dec8c7, 0xaaa36f93, 0xe6945351
.word 0x16781584, 0x0ab510a7, 0xc3f1207f, 0xfa5732cf, 0xcf5d9192, 0x0d5355fa, 0x04a086f6, 0xa2f5ef38
.word 0x00487ccf, 0x3b8e2e6a, 0xef7b5462, 0xd50a88a6, 0xc3335979, 0xdbc79607, 0x0740beba, 0x85fa4c9d
.word 0x08b55ac6, 0x6ebbbecd, 0x728e0673, 0x1c0d85de, 0x9947540a, 0xecafc982, 0x53c796b5, 0x7611d26a
.word 0x793fd240, 0x17b56811, 0xdf256e22, 0x934abc5d, 0xf168d2c6, 0x8eaf8d95, 0x219abb00, 0x159e3bd2
.word 0xe6c97873, 0xa523c3fe, 0xf1d87792, 0xf54ae0aa, 0x5766144c, 0xa2a2c68a, 0x17023de8, 0xf2644f39
.word 0xc17c0173, 0x98a1d16d, 0x36db5c3d, 0x65b2dee9, 0x5e6a85d0, 0x58135aaa, 0xdf1b60f0, 0x5871b5af
.word 0x814a1f94, 0x63d9341d, 0x840f098e, 0x76bc83fb, 0xcc535b59, 0xf3db53db, 0xdfa722d0, 0xba634fee
.word 0x7e88a658, 0xc3b2df52, 0xe4836c5c, 0xdfe633c5, 0x1bd48b45, 0x434169fe, 0xa5e450c6, 0x64078a4e
.word 0x92225442, 0x83481a6f, 0x9227a1ae, 0x434eb608, 0x3e0cf8d3, 0xc78dfb36, 0x49e65a37, 0x069b978a
.word 0x1e730c3b, 0x96040f8c, 0x7d4e660d, 0xc166f1c1, 0x992c9781, 0x399c4ace, 0x72e94b33, 0x45253bca
.word 0x46488ad8, 0x4194d6e2, 0xa8164b8a, 0xf08d27db, 0x2f3402dd, 0x6f7cfe7f, 0x0f55bfbd, 0x91734bfa
.word 0x6612dd03, 0x12b2f978, 0x883aea35, 0x85c03135, 0x1865543f, 0x22f51720, 0xf9658bc7, 0x7d1058bc
.word 0x12c81973, 0x4426984e, 0x13ce36f5, 0xefb912d7, 0x1c94d396, 0x5109dc0a, 0x43c6086a, 0x5da6a610
.word 0xfe1ae136, 0x62d3d060, 0xf86deb70, 0x9d5f54a9, 0x3ed18c83, 0x82e519d4, 0x454218ab, 0x156e8dba
.word 0x09b6603a, 0x85e62b0c, 0x85e1029b, 0x45574966, 0xef024fd6, 0xed37b2d3, 0xbc287fb5, 0x424be4a6
.word 0xd77d4e8b, 0xb53938a2, 0x5790c26c, 0xc6418eb5, 0xc7b3cdb1, 0xa7d4e603, 0x77035ed4, 0x875fb46b
.word 0x275566e4, 0xbe549f54, 0xbd742564, 0x2d873488, 0xcdd2d484, 0x4944e9ee, 0xe09100a6, 0x4b5a71d8
.word 0xbb57c04e, 0xfffa1a99, 0x1d1a13cf, 0xca9ef8e9, 0xb6ef8921, 0xc862b364, 0x4f7c147e, 0x57145145
.word 0x41da8720, 0x0177c1e5, 0xe60b0e3e, 0x7d9160fa, 0x75f73efa, 0xe011d6f9, 0x4a98c5d6, 0x969ac696
.word 0x4e47373f, 0x563c8cd8, 0x8cc725a1, 0xde92acf1, 0xfeb087b7, 0x172a41b2, 0xa30160f0, 0x8d687257
.word 0x055a3a46, 0x9bd9a615, 0x68f8fb39, 0xf15af9ec, 0x3fb2e426, 0x4e0f68b8, 0x565befb4, 0x95178d80
.word 0xf76954b2, 0xbe4c7c85, 0x952dab73, 0xdd180770, 0x402d3477, 0x3d32401a, 0xd33481d0, 0x76c8b84c
.word 0x051a2be1, 0x6b0a1776, 0xa47636b8, 0xf3221b05, 0x9f6cfc71, 0x6e3a5727, 0x24e57136, 0x496849f2
.word 0xefa1abf4, 0x68e50d89, 0x6c56e86c, 0x7d90ad90, 0xcec0fea1, 0x4e497dd3, 0x65bfdf0c, 0x944a56f3
.word 0x45bd01c3, 0xe849e24d, 0x29bfe2aa, 0xe079a3e7, 0x6545fdfb, 0x18d5a7bd, 0xd091f6f5, 0xea2ee80d
.word 0x2d07b18c, 0x116f622a, 0x7bf038a9, 0x723d8adb, 0xe695ae8a, 0x1123d373, 0x8bdbe043, 0xda2876a8
.word 0xaab88ab2, 0xeeaef8e0, 0x718fb39c, 0xa7b683f9, 0xa14b5e7e, 0xf09416cc, 0x8b8ffc76, 0xef08771f
.word 0xe37c4e5a, 0x91293ee2, 0x3761f97d, 0xbe29a38c, 0x49ab1ff8, 0xea983802, 0x3230d56e, 0x92fdc658
.word 0x84a653c4, 0x9bffee6f, 0x70d98f82, 0xfe6637ee, 0x42605dad, 0xa2333e01, 0x4c3749a3, 0x2f13fedd
.word 0x3508a5dc, 0x2e0f9238, 0x5c701c31, 0xb8fa8076, 0x2e803c1b, 0xa0658a43, 0x1d19eaf7, 0x1483eb04
.word 0x86cf64f7, 0x5c206d0f, 0x3f0893f9, 0x2256dfae, 0xc1530b30, 0xa07ad1fd, 0xccfad273, 0xd869aeae
.word 0x98fab47d, 0x7f9056da, 0xc3d535c5, 0x6a37765f, 0x0fc99062, 0xcf4a7caa, 0x6fa07952, 0x1b9163e2
.word 0x9dbd69af, 0x2dc148e3, 0x91f77878, 0xdc592d46, 0xa4ec89f7, 0xf309fdd1, 0xfe248616, 0x5bbcceda
.word 0xabc45e64, 0xe7328e6a, 0x1239ffc4, 0xe8f4279d, 0x11c6e660, 0x39cb390d, 0x31b77aae, 0x1f6f5620
.word 0x28eab77a, 0x08fd1e7b, 0xd76bdcd0, 0xb1b7290d, 0x5d62892f, 0xac8ac699, 0x513a9271, 0xe300afd5
.word 0x77a9b299, 0x65f94be1, 0x16e2664f, 0x82f7c5fc, 0x391c571c, 0x42723d51, 0x3f91c318, 0x6b057799
.word 0x23d3856d, 0xa3379435, 0x18ad5999, 0x693cec67, 0xbc13264c, 0x77f5775b, 0x5bc98b56, 0x93d7ee48
.word 0xc808e1f8, 0xe668c943, 0x5f3c42fc, 0x3e477c69, 0x54968025, 0xdc5b3f02, 0x6c1005a6, 0x317d88fd
.word 0x3f01e8b1, 0xd14ff42b, 0x90b79d90, 0xa1b8e935, 0x4be2b288, 0x53c88b5b, 0x5c880139, 0xf8ec018a
.word 0x17fdea48, 0x9e80cb26, 0x0160e5b4, 0x846ecf27, 0x8bfa0b9f, 0xfdc1a715, 0x29f20600, 0x1c639fa8
.word 0x24250a19, 0x98b75520, 0x0f0e630f, 0x2d816ef1, 0xd2c7080d, 0x59ba274c, 0x4125e6ca, 0x8edf83d1
.word 0xb25685dd, 0x988f1022, 0xa2b68b43, 0x9b8c9fe6, 0xdfd441db, 0x542f4179, 0xcab5df42, 0x9e69a339
.word 0x88a7ab15, 0x0c3e5ec6, 0x124dd036, 0xad9ebf8b, 0x60d95850, 0xc94aa007, 0xdac8c61d, 0x3f4b4e33
.word 0x98d2fc6c, 0xcc1e150e, 0xf229ef3e, 0x6bf94740, 0xefec4c4d, 0x7a236932, 0x747442ae, 0x5d0c4d20
.word 0xfbb31260, 0xf5131fff, 0x85245d97, 0xe72eec18, 0x0240244e, 0x19e068bc, 0x642e0ea0, 0x26e490bf
.word 0x23555d3e, 0x90b4c14d, 0x962eae26, 0xfdf72b12, 0x30d91899, 0x064438e9, 0xc5315c13, 0x7c6192d0
.word 0xf51cfb97, 0x7a229bb5, 0xb96af806, 0x806670fe, 0xd7a6f869, 0xd400d9fd, 0x117e0dd9, 0xa7946c98
.word 0xa2a1f1cc, 0x93547da4, 0x4c606c27, 0xe13a2253, 0xbfb064aa, 0x53c8e22d, 0x11675e50, 0x6c7251d2
.word 0xaab86af3, 0x5f11ac9f, 0xb67b7cb1, 0x7a47a4d0, 0x3e50b491, 0xf862450e, 0x1c8440d7, 0xbbd31d88
.word 0x8663ed47, 0x4d272d55, 0x7a1794c4, 0xfa9868e4, 0xceb60570, 0xacd5fdf7, 0x1fa2eeb7, 0x93dae9b7
.word 0x7bdb432c, 0xf1c199a3, 0x4b5d0b40, 0x19f4e2bd, 0xab262379, 0x292d4b66, 0xb917a3ca, 0x47faa0b6
.word 0x4773ef1d, 0x12b2c6ee, 0xc25550ad, 0xb49dec93, 0x24d4f89d, 0xcdb3c72f, 0x60735dad, 0x2476828b
.word 0xdf2417bd, 0x442e2c20, 0x5954daf1, 0xd68629e2, 0x9f4a2946, 0x840a4ce4, 0xd52d4277, 0x5279a257
.word 0x4a542c36, 0x34c05858, 0x92b9f5f6, 0x8fea9b4f, 0xc703d42e, 0xc8ef78f8, 0x70a6f21d, 0x50a4a60b
.word 0xb69697b2, 0xe5ab499d, 0x78da8cd5, 0xa816092d, 0xa698a874, 0x5c5d349e, 0x373a09e7, 0x47427080
.word 0x5c9e6faf, 0x8ab54ae8, 0x0b99ecc2, 0x3df7f39c, 0x627219cd, 0x8b45f6c2, 0x63bb281c, 0x97c80d1b
.word 0x5f24e803, 0x702a8392, 0x2272dd53, 0xe2b2ca01
.section .region_1,"aw",@progbits;
region_1:
.word 0xbac021ec, 0x5d405449, 0x8d1206e0, 0x59707fc8, 0x5d119d0a, 0xc3cd7e2e, 0xb6386e03, 0xa9aa5d8e
.word 0xe950cd5e, 0x2b42d244, 0x3555ddd2, 0x2f75a7a5, 0x8ceaba64, 0xcdad3e40, 0x96582879, 0x1530b4af
.word 0xd538d7f1, 0xb48a2783, 0x6d838f1a, 0xc3a41033, 0xa7077f96, 0x608c6e7a, 0x248c9f50, 0xb2f4aecf
.word 0x626fc912, 0x4973ce3e, 0x6df13c74, 0x78cedaa8, 0xa9ffd106, 0x03fd05cd, 0x554f5674, 0x04f895b6
.word 0x45292d69, 0x9510f66a, 0x746fe5d6, 0x50853145, 0x016a7205, 0x7d5f5b61, 0x61bc9f53, 0x553dc8d4
.word 0xac2e8224, 0xf37e5364, 0xe0e43583, 0x1c0e9018, 0x6437198d, 0x5d6d0e88, 0x866fe496, 0xeb4932e5
.word 0x3f5692dd, 0x0aeacf15, 0x49e41364, 0x6b51c7bd, 0xc43b2596, 0x27a48ca7, 0x8b400166, 0x64e164e0
.word 0x8369eb77, 0xd944ad91, 0x3b10a52f, 0x926790bb, 0x175cb665, 0x2084971d, 0x262fa8c7, 0x404b6e4e
.word 0xe5a87f33, 0x4e394517, 0x3e66a1cf, 0x9464eabd, 0x97661df9, 0x0ace8f83, 0xdffe0e1f, 0xf93f7fff
.word 0xfa58a74e, 0x27a71489, 0x8da19106, 0x96390dc9, 0x268be4b4, 0xec15a25c, 0x16a2c6be, 0x2d902e57
.word 0xf50007fa, 0x1bee7327, 0xb0084e28, 0x9f3c2c5c, 0x53439c50, 0xe88735b4, 0x1bda0ef4, 0xe3a0a820
.word 0x94bf94dd, 0x9e2c72df, 0xa037a916, 0xcd2c848e, 0x85decb83, 0x98649650, 0x5ccbef5c, 0xba1cf76d
.word 0x0fad4b1c, 0x785905fb, 0x76250c1f, 0xd56be3a0, 0x7314b0dd, 0xed529b5d, 0xa4e83330, 0x4ab255ff
.word 0xc874e525, 0x2c9ef987, 0x33e7b54f, 0x9533a411, 0xa11da9f1, 0xaf6f95f2, 0x0bae1150, 0x20adc878
.word 0x8ea89289, 0x12f6480c, 0x0c3a5997, 0x32bb1a2a, 0xa775fd91, 0xaf23f882, 0xceeef250, 0x4402493a
.word 0xdd28b4f1, 0x1eafc794, 0xc289dea2, 0xafcdf437, 0xd065497b, 0x7310b9bb, 0xb928e2b8, 0xcc214169
.word 0xd3ee4de1, 0x2d7ba6f6, 0x03367e81, 0xcb99ae0c, 0x348d25d2, 0xa1484ce7, 0x6bd0f0ca, 0xe4a17bd3
.word 0xc40ab41f, 0x627a8eb5, 0xac9cbaf6, 0xa42610fc, 0xf40e04ca, 0xcca9e1d6, 0xf1f92d67, 0x994bb7e0
.word 0x608c9e34, 0x314b3a5f, 0x158ce62e, 0x42940788, 0x8bdd1d1c, 0x55812020, 0x3a36832e, 0x51b03b76
.word 0x87b96f99, 0x158d1a87, 0xf085ac71, 0x7d4217e4, 0xd462a0ab, 0xbf58daee, 0xc605b0ef, 0x299aaad2
.word 0xc576b5cb, 0xbb9bdcdc, 0xc7219234, 0xf311b2e1, 0x605e1700, 0x28bca032, 0x6d169e47, 0x6171cf14
.word 0x7c7fa79e, 0x281a3a62, 0xc6e4e1fb, 0xc56d0fcf, 0x953d7ead, 0xf6d3d483, 0xe4464651, 0xff5f3622
.word 0x626645fd, 0xaeb990a1, 0xf1c08cb3, 0xd74943b7, 0xe3be9e0b, 0xaf0a7faf, 0x4f530d35, 0x24475e0e
.word 0xd9f14853, 0xb7a7bc42, 0x28fbf495, 0xe22f8f72, 0x85b891f4, 0x906bd18a, 0xd6a8a940, 0x3eb3afb0
.word 0x874e19ef, 0xed520478, 0xf3f228a9, 0xd17eef43, 0xa1d7f16c, 0xa82216aa, 0xb9560dd9, 0x5a0b0661
.word 0x7af40d39, 0xc6769fef, 0xc4c485eb, 0x96ed8525, 0xeef2b858, 0xa7ba6a58, 0xa8d1f6fe, 0x179a1b2b
.word 0x0a19888f, 0x5b02a9e4, 0xedd25817, 0x10cdb59c, 0x51ade00c, 0x6f75756b, 0x0c826639, 0xd5b8beee
.word 0x52dc7b79, 0x0023cb20, 0x2f636301, 0xee6a2630, 0xd36aa122, 0x4a08b210, 0x01d02f82, 0xa0f0f195
.word 0x7c1432c1, 0x6bde8f76, 0xe888cc33, 0xa695f18c, 0xc9863e30, 0x7b95963f, 0x48dc00d6, 0x2d15a4bc
.word 0x884e93bc, 0x855155ae, 0xd42d6483, 0xedf71088, 0xfdc1a15b, 0x3bd789a2, 0x7bb36014, 0x1776a6f8
.word 0x58abb5d3, 0xbfcb30fc, 0xb0fa0987, 0x9a903784, 0x905e80f4, 0x1e248470, 0x3d2872e9, 0x3822190c
.word 0xbb842147, 0x5d883f2a, 0x90ab95d7, 0x32ce3acc, 0x9240c940, 0xfaa63e9e, 0x6bd5f503, 0x521a82ca
.word 0x000ac33d, 0x8a9e89b6, 0x6dff5b88, 0xeff94cdb, 0xb2c3ce7e, 0x835c7295, 0x0ed109e1, 0x269a6889
.word 0xf355cb17, 0x3343d77b, 0x08e7b95f, 0x3742c6c7, 0x666353b8, 0x5fbac54b, 0xcf5d9781, 0xaa99c556
.word 0xb52ab712, 0x2e930a5d, 0x3a3c0639, 0xb567b069, 0x7e3636dc, 0x51fddd59, 0xe6a33d7c, 0x43ed1f9e
.word 0xca75206c, 0x7d1b6683, 0xac05bdf1, 0xb2a4d4fa, 0x066c9686, 0xad97e3c5, 0xdd090f01, 0xb234a993
.word 0xc484ae2c, 0xacd36e73, 0xc2aa6774, 0xb44e55a0, 0x9c32fddc, 0x4e350ad8, 0xb4725c77, 0x579bd99d
.word 0x22df7daa, 0xfaf55f93, 0x87a87790, 0xee77f0dc, 0x03503e1e, 0x266799f2, 0x0d45e1b4, 0xe29592d1
.word 0x37690ceb, 0x6d10fdd4, 0x8b22e532, 0x3070e20a, 0xa53bc2ed, 0xdf370cf4, 0x7928ffaf, 0x5c9b1800
.word 0x30eb8f8b, 0x18319f87, 0xec9f5428, 0xcadf6c4e, 0xad003cd8, 0x3ffbefe6, 0xfc762e38, 0xb18735c2
.word 0x2eca8247, 0x6d7ed445, 0xe1e71350, 0x5b11f618, 0xf7bce3b2, 0xc5b4f162, 0x3dd62c20, 0xe15ea002
.word 0xf9f1ccfb, 0xc2abb452, 0x9484a725, 0xb179e28c, 0x705c8d72, 0xddb99c00, 0xeafc8cec, 0xb417e198
.word 0x1bf26799, 0x568619fe, 0x3df58893, 0xe65ecc31, 0xca42fb47, 0x15b6f945, 0x5ecc1cb6, 0xc1d82f16
.word 0x72007333, 0x07d287ca, 0x49a9990a, 0xa6611c75, 0xa566eb2f, 0xeb752f5f, 0xa1ddc068, 0x8cb639a6
.word 0x8e68ef85, 0x737da4ce, 0xdb347603, 0x9e6bc2ba, 0x8eb2346c, 0xb6fb77b7, 0xd636c758, 0x2d207aab
.word 0x0d60294c, 0x775b2b1c, 0x5b629b0b, 0x3a3714e7, 0x676bbaec, 0x9dd783db, 0x860c2d72, 0x9fd3cf65
.word 0xe2eefea3, 0xd730078e, 0x8cd10f65, 0xaf00dff7, 0xb4918bab, 0xf0e53b02, 0x179b50d3, 0x17e7fe9f
.word 0x5c9147b9, 0xdabd41de, 0xb64984d1, 0x7a21913c, 0x0239f249, 0x3c1138e5, 0x0f3246a3, 0x697e70c2
.word 0x3fb26675, 0x239d5952, 0xf11eba8e, 0xd1a9ade8, 0xfc81c2b7, 0xc45cd8f8, 0x4eaedc5e, 0xefbcb708
.word 0x26bff1cf, 0x65dd7b68, 0xea31f544, 0xf659fa59, 0xabc5e69f, 0xf358cbbe, 0x85896c7e, 0xecd6e0b6
.word 0xdc83aacc, 0x5ffc564e, 0x0dafbf70, 0x836ab264, 0xfd47decb, 0xf18b6216, 0xca47bb90, 0xc0cadde6
.word 0xe50d8c56, 0xa2bf84e4, 0x7ca7a25b, 0x41e5bce4, 0x165cfb82, 0x7eb1563a, 0x3fce42ca, 0x582b910d
.word 0x7321fe25, 0x12e5fdc8, 0xcdd1a968, 0xfcb01d9c, 0x5cc82dbe, 0xea3ca756, 0xce610f22, 0x7d583d3a
.word 0x99c1bae0, 0x7da2dfcf, 0xdf548b21, 0x7c4d168a, 0xd0a2048f, 0x33d6629e, 0x46882a2a, 0x1889ce18
.word 0x1ea61d93, 0xd94aa40d, 0xb98cf3fb, 0xd39c255a, 0x0b35c0b7, 0x1eb43fe2, 0xc9258a2e, 0x313898cf
.word 0x566531ca, 0x7f72cb24, 0x92df54f3, 0xa863dd95, 0x0f3f2a9d, 0x09762b57, 0x478fc3d0, 0xd4cad40c
.word 0x89b52fe3, 0xf1683beb, 0xff1d0a3c, 0xa4aac3fa, 0x17b6b66c, 0x2289999c, 0xf72b786b, 0xcbef14cb
.word 0xc2c80955, 0x09877de8, 0x0cc74813, 0x3c9eef8e, 0x859f5568, 0x5fb7e318, 0x72f2083f, 0xb71ad18f
.word 0x0ddff570, 0x684c2976, 0xb82bb5c8, 0x807c5ff1, 0xe62f77f2, 0x1e363d5d, 0xb518d9d0, 0x0f875633
.word 0x12f7f80b, 0x18b21521, 0x9617e8ff, 0x4064c1cb, 0x842fcf3a, 0xfe2ab801, 0x5a8804f1, 0x0eaf59d7
.word 0xc73e4d09, 0x11c1fd56, 0x177a17b0, 0xdd217600, 0x05e50094, 0x1ee4c91f, 0xe2007f2c, 0x8778c4c2
.word 0xe01e80c7, 0x89dea9d6, 0x3ec16d6d, 0x925acf92, 0x181dae16, 0x6f42f5c6, 0x3837a478, 0xdb90b6d8
.word 0x8b7b52ba, 0x9a60ce54, 0x13f86fe8, 0xc9505910
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
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x8, x20, zero
                  csrr x7, 0x300 # MSTATUS
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 31
                  bne x7, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x7, 0x341 # MEPC
                  csrr x7, 0x342 # MCAUSE
                  li x24, 0x3 # BREAKPOINT
                  beq x7, x24, ebreak_handler
                  li x24, 0x8 # ECALL_UMODE
                  beq x7, x24, ecall_handler
                  li x24, 0x9 # ECALL_SMODE
                  beq x7, x24, ecall_handler
                  li x24, 0xb # ECALL_MMODE
                  beq x7, x24, ecall_handler
                  li x24, 0x1
                  beq x7, x24, instr_fault_handler
                  li x24, 0x5
                  beq x7, x24, load_fault_handler
                  li x24, 0x7
                  beq x7, x24, store_fault_handler
                  li x24, 0xc
                  beq x7, x24, pt_fault_handler
                  li x24, 0xd
                  beq x7, x24, pt_fault_handler
                  li x24, 0xf
                  beq x7, x24, pt_fault_handler
                  li x24, 0x2 # ILLEGAL_INSTRUCTION
                  beq x7, x24, illegal_instr_handler
                  csrr x24, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

ecall_handler:    
                  la x7, _start
                  sw x0, 0(x7)
                  sw x1, 4(x7)
                  sw x2, 8(x7)
                  sw x3, 12(x7)
                  sw x4, 16(x7)
                  sw x5, 20(x7)
                  sw x6, 24(x7)
                  sw x7, 28(x7)
                  sw x8, 32(x7)
                  sw x9, 36(x7)
                  sw x10, 40(x7)
                  sw x11, 44(x7)
                  sw x12, 48(x7)
                  sw x13, 52(x7)
                  sw x14, 56(x7)
                  sw x15, 60(x7)
                  sw x16, 64(x7)
                  sw x17, 68(x7)
                  sw x18, 72(x7)
                  sw x19, 76(x7)
                  sw x20, 80(x7)
                  sw x21, 84(x7)
                  sw x22, 88(x7)
                  sw x23, 92(x7)
                  sw x24, 96(x7)
                  sw x25, 100(x7)
                  sw x26, 104(x7)
                  sw x27, 108(x7)
                  sw x28, 112(x7)
                  sw x29, 116(x7)
                  sw x30, 120(x7)
                  sw x31, 124(x7)
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x20, x8, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

load_fault_handler:
                  add x20, x8, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

store_fault_handler:
                  add x20, x8, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

ebreak_handler:   
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x20, x8, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

illegal_instr_handler:
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x20, x8, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x7, 0x300 # MSTATUS;
                  csrr  x7, 0x304 # MIE;
                  csrr  x7, 0x344 # MIP;
                  csrrc x7, 0x344, x7 # MIP;
                  add x20, x8, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
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
