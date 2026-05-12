.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x20, h0_start
jalr x0, x20, 0
h0_start:
                  li x13, 0x40000100
                  csrw 0x301, x13
kernel_sp:        
                  la x29, kernel_stack_end

trap_vec_init:    
                  la x13, mtvec_handler
                  ori x13, x13, 0
                  csrw 0x305, x13 # MTVEC

mepc_setup:       
                  la x13, init
                  csrw 0x341, x13

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x13, 0x1800
                  csrw 0x300, x13 # MSTATUS
                  mret
init:             
                  li x0, 0xf5da0c3e
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0x0
                  li x5, 0x80000000
                  li x6, 0xef70cd98
                  li x7, 0x0
                  li x8, 0x0
                  li x9, 0x80000000
                  li x10, 0x0
                  li x11, 0xd4d55548
                  li x12, 0x8
                  li x13, 0xb2f96b21
                  li x14, 0x85c5e51b
                  li x15, 0x0
                  li x16, 0x0
                  li x17, 0x0
                  li x18, 0x9027b829
                  li x19, 0x80000000
                  li x20, 0x80000000
                  li x21, 0x0
                  li x22, 0xf0bcf250
                  li x23, 0xffae43a1
                  li x24, 0x2d4b5906
                  li x25, 0x80000000
                  li x26, 0x0
                  li x27, 0x1d6f665e
                  li x28, 0x0
                  li x30, 0x80000000
                  li x31, 0x82e80b2e
                  la x4, user_stack_end
main:             la           sp, region_0+1793 #start riscv_load_store_rand_instr_stream_0
                  nop
                  andi         t5, a3, 1500
                  and          s6, t4, t1
                  lb           s7, -22(sp)
                  slti         s5, s0, 1428
                  sltiu        ra, a5, -1004
                  slt          t1, zero, s7
                  sb           a0, 179(sp)
                  lui          t2, 715309
                  srli         a5, a7, 4
                  slti         a0, s11, -10
                  slt          s5, t2, ra
                  auipc        t5, 239923
                  add          s11, t0, a4
                  lbu          a1, -176(sp)
                  lbu          a3, -11(sp)
                  sb           t1, -38(sp)
                  addi         a4, s0, 1264
                  lbu          a0, -237(sp)
                  srl          a6, a4, a2
                  auipc        s0, 602588
                  add          t2, a6, t6
                  xori         s6, s3, 1212
                  andi         s2, a3, 1344
                  lbu          s6, 56(sp)
                  slti         a0, a2, -523
                  slt          t0, tp, a6
                  lb           t6, -212(sp)
                  lbu          s0, -7(sp)
                  lbu          t0, -168(sp)
                  ori          s9, s5, -388
                  xor          s6, s4, s2
                  slt          s10, t2, s4
                  lb           s11, -181(sp)
                  lui          a4, 601167
                  lb           a0, -142(sp)
                  sra          a6, t3, tp
                  lhu          gp, 191(sp)
                  lhu          ra, 13(sp)
                  sll          a7, gp, a4
                  lb           a4, -82(sp) #end riscv_load_store_rand_instr_stream_0
                  lui          s8, 46434
                  sll          a5, t3, t1
                  beq          a3, s7, 14f
                  sub          s10, s3, a3
                  bge          gp, s2, 20f
                  blt          s1, t3, 19f
                  slli         zero, t2, 8
                  nop
                  nop
                  beq          s0, zero, 29f
                  bne          sp, a3, 29f
                  srai         s3, s10, 15
                  xor          s2, t4, a4
                  bge          a0, a2, 28f
14:               or           zero, sp, s2
                  sltiu        a2, a5, 848
                  xor          s9, t5, s4
                  and          t3, s9, t1
                  andi         ra, a0, -1674
19:               slli         s6, t1, 26
20:               or           gp, t2, a6
                  add          t6, s6, a2
                  bgeu         a2, s11, 41f
                  bge          a3, t3, 43f
                  srai         s9, t2, 7
                  srli         gp, t4, 4
                  sub          a1, t4, s11
                  slti         s11, t0, -1333
28:               lui          sp, 284712
29:               lui          s7, 241858
                  sub          a0, a4, s5
                  bge          s4, s11, 37f
                  or           t3, t0, a6
                  srai         s7, s8, 13
                  ori          zero, ra, -911
                  la           t5, sub_2
                  sra          t6, a5, a3
                  addi         t5, t5, -286
                  xor          a3, s1, sp
                  sra          t6, a4, a4
                  or           a7, s5, a4
                  bge          t0, tp, main_j1 #branch to jump instr
                  srai         a4, a1, 23
main_j1:          jalr         ra, t5, 287 #jump main -> sub_2
                  slt          s1, a2, ra
                  nop
                  andi         ra, s11, 542
                  or           a4, t0, s5
37:               slli         zero, sp, 11
                  nop
                  lui          sp, 554699
                  la           s9, sub_1
                  add          sp, t2, ra
                  srai         zero, s4, 13
                  addi         s9, s9, -515
                  auipc        s0, 378198
                  sltu         s6, a3, s2
main_j2:          jalr         ra, s9, 515 #jump main -> sub_1
                  xori         t2, t6, 1736
                  bne          s10, t1, 59f
                  bne          a3, s10, 49f
41:               or           t5, t3, a1
                  bltu         a4, a4, 48f
43:               sltiu        t5, s7, 1635
                  blt          t3, t1, 58f
                  xor          s10, s8, t3
                  bltu         t1, a0, 51f
                  bne          a0, a7, 50f
48:               sub          a6, a4, a2
49:               lui          s10, 733063
50:               xor          t0, a3, t0
51:               blt          s11, t1, 65f
                  srai         a6, t6, 11
                  addi         s0, s4, 109
                  bgeu         s2, zero, 60f
                  srai         ra, t1, 22
                  xori         s9, a1, 702
                  bne          t4, s2, 72f
58:               beq          a4, s11, 69f
59:               add          a1, a5, a3
60:               bge          t5, gp, 78f
                  auipc        s3, 610059
                  andi         a1, a7, 1380
                  slli         t1, a5, 3
                  slli         s8, t4, 4
65:               xori         a2, s4, -1963
                  andi         a6, s4, -1555
                  beq          s7, a1, 69f
                  sltu         a4, s3, t6
69:               or           s8, s5, s2
                  or           t5, a1, t5
                  blt          s5, a6, 89f
72:               sra          s11, s7, t3
                  sll          s10, t2, s5
                  bgeu         t4, s0, 92f
                  xor          t6, ra, a2
                  bltu         s10, gp, 96f
                  sll          s11, s5, t5
78:               blt          a2, s11, 92f
                  lui          t1, 187582
                  blt          t5, s9, 83f
                  blt          s7, t6, 93f
                  bltu         s4, zero, 99f
83:               xor          s5, tp, a1
                  nop
                  bge          a0, t2, 101f
                  blt          s7, zero, 92f
                  slt          a3, s1, a5
                  xori         gp, t1, 476
89:               addi         ra, s4, 462
                  sub          t6, s0, a2
                  add          s2, s0, t3
92:               bne          s4, ra, 112f
93:               add          s7, tp, s6
                  and          s11, s9, a2
                  beq          tp, gp, 101f
96:               srai         a7, a0, 1
                  bge          a6, t2, 115f
                  nop
99:               blt          t0, a5, 104f
                  srli         t2, s9, 14
101:              srai         s2, t3, 9
                  auipc        t5, 431945
                  srl          s2, t5, a1
104:              and          a4, s3, t6
                  slli         a5, zero, 11
                  lui          a0, 890345
                  slli         s3, s5, 28
                  sll          s5, t3, t3
                  bge          tp, tp, 123f
                  slt          s0, s8, s7
                  bge          a0, s2, 125f
112:              and          zero, a1, t0
                  add          gp, a2, t1
                  bne          s3, s6, 128f
115:              beq          sp, s1, 118f
                  and          a1, s2, t4
                  and          t3, t6, a4
118:              andi         t3, s2, -1038
                  slli         t2, s2, 30
                  sra          s10, a0, a4
                  addi         t6, s1, -1065
                  add          s1, a4, t2
123:              srai         s11, s3, 4
                  nop
125:              ori          a7, a1, 1155
                  srai         s9, ra, 2
                  slti         s5, s3, 569
128:              and          a7, s3, a3
                  la x20, test_done
                  jalr x0, x20, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            and          a0, t1, tp
                  slti         a7, t5, 1359
                  srl          s11, s8, s4
                  bge          s6, a1, sub_4_stack_p
                  srai         a0, s9, 6
                  xor          s8, t1, sp
sub_4_stack_p:    addi         tp, tp, -24
                  sltiu        a0, ra, 1614
                  sw           ra, 4(tp)
                  and          a1, a1, a1
                  or           a5, t3, tp
                  sra          t3, a6, t1
                  la           a3, region_0+1973 #start riscv_load_store_rand_instr_stream_4
                  slti         t6, s6, -1996
                  srli         t5, a3, 27
                  sll          s7, a3, s5
                  lbu          s9, -48(a3)
                  sb           a5, 5(a3)
                  lbu          gp, -52(a3)
                  sra          s9, t3, s9
                  sb           a0, -58(a3)
                  ori          a7, a4, -564
                  srli         t6, s10, 16
                  and          s5, a1, s11
                  lhu          a2, -13(a3)
                  andi         a7, t1, 682
                  srai         zero, s8, 14
                  ori          a2, a2, -1497
                  auipc        t3, 486995
                  lui          s8, 407704
                  lb           zero, -56(a3)
                  lui          s7, 868116
                  sh           gp, -15(a3)
                  andi         s5, t3, 129
                  lb           s10, -7(a3)
                  add          t3, a3, a7
                  srl          s7, tp, sp
                  sb           t0, 6(a3)
                  or           a1, t0, t4
                  or           a4, sp, s11
                  add          gp, t6, a6
                  andi         gp, s1, 453
                  srli         a0, s11, 1
                  and          t6, s5, s5
                  and          s0, a4, s5
                  andi         s11, gp, -167
                  lb           s2, -64(a3)
                  sra          ra, a1, zero
                  lh           t0, 9(a3)
                  auipc        s3, 244440
                  sh           t3, 11(a3) #end riscv_load_store_rand_instr_stream_4
                  la           t1, region_0+752 #start riscv_load_store_rand_instr_stream_0
                  lw           s6, 12(t1)
                  sh           t4, -220(t1)
                  lbu          s1, -227(t1)
                  sb           t2, -52(t1)
                  sb           a0, 37(t1)
                  sb           zero, 138(t1)
                  lui          s9, 1035292
                  sub          a1, s8, t6
                  lb           a6, -57(t1)
                  slt          s2, a6, tp
                  sb           t6, -141(t1)
                  addi         s2, ra, 624
                  sll          gp, t1, s2
                  sh           s7, -230(t1)
                  lb           a7, -124(t1)
                  ori          t5, s3, 1730
                  sub          s9, s6, s3
                  sb           s8, 39(t1)
                  sltu         s7, a4, t3
                  lb           a6, -85(t1)
                  lbu          s0, 117(t1)
                  lh           s0, -52(t1)
                  sw           a3, 192(t1)
                  sb           tp, -71(t1)
                  sh           a6, -174(t1)
                  sub          s7, ra, a4
                  lbu          s1, 227(t1)
                  andi         t5, a4, -1801
                  sb           a1, 47(t1)
                  lb           a5, -228(t1)
                  sb           a0, -8(t1)
                  lhu          s11, 48(t1)
                  sll          a6, t0, t1
                  sltiu        a3, t0, 1080
                  lb           s8, 65(t1)
                  lb           ra, 232(t1)
                  sltiu        s7, tp, 686
                  lw           zero, -136(t1)
                  and          s1, a6, s9
                  sb           s3, 149(t1)
                  add          t5, t1, t3
                  lb           s9, -169(t1)
                  lh           s5, 150(t1)
                  ori          s7, gp, -583
                  lhu          a7, 230(t1)
                  sh           s8, 106(t1) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1916 #start riscv_load_store_rand_instr_stream_22
                  lui          a5, 760513
                  lhu          s3, -14(sp)
                  slli         a3, a1, 26
                  lhu          s8, -4(sp)
                  lh           gp, 6(sp)
                  lb           s6, -9(sp)
                  sb           zero, 5(sp)
                  sb           s3, 11(sp)
                  sub          s11, t6, a5
                  auipc        a0, 868211
                  sb           a6, -5(sp)
                  add          t1, t0, a6
                  srai         t1, s3, 6
                  slli         s5, t2, 9
                  nop
                  auipc        t0, 578372
                  sw           s8, -12(sp)
                  sb           s4, 0(sp)
                  sw           a5, -12(sp)
                  sll          a2, t1, a0
                  lbu          s0, 5(sp)
                  add          s6, s0, gp
                  lw           s7, -4(sp)
                  lhu          s6, 4(sp)
                  lbu          s10, -3(sp)
                  sltiu        s5, s0, 1857
                  lbu          t6, 9(sp)
                  xori         s0, s11, -1571
                  lhu          s2, -10(sp)
                  add          s1, s9, t6
                  lb           a5, -14(sp)
                  lbu          a7, -10(sp)
                  lb           s7, 2(sp)
                  lbu          a6, 15(sp) #end riscv_load_store_rand_instr_stream_22
                  la           sp, region_0+1333 #start riscv_load_store_rand_instr_stream_27
                  lbu          s3, -2(sp)
                  lb           a4, -13(sp)
                  sb           s2, -12(sp)
                  lh           t6, -3(sp)
                  nop
                  sub          t2, s8, ra
                  lb           a5, 4(sp)
                  lb           t3, -11(sp)
                  sltiu        s11, s6, 770
                  lw           a3, -13(sp)
                  sb           s5, -4(sp)
                  slt          s7, sp, tp
                  sb           ra, -8(sp)
                  lbu          t1, -9(sp)
                  lb           a0, 8(sp)
                  slti         t1, t6, -754
                  slli         s7, a4, 6
                  slti         s7, s9, -460
                  sb           s2, -6(sp)
                  ori          t6, t6, -1282
                  xori         a5, s8, 282
                  sb           a0, -12(sp)
                  lbu          ra, -15(sp)
                  lbu          t0, -8(sp)
                  or           s9, t2, t6
                  sb           t1, 10(sp)
                  sra          t3, s10, s11
                  lbu          a6, -12(sp)
                  slli         ra, s3, 12
                  xor          a1, s11, s11
                  sh           a5, 11(sp)
                  slti         t3, s1, -890
                  sh           a5, -9(sp)
                  lb           gp, -12(sp)
                  lb           t2, 0(sp)
                  sw           a3, -13(sp)
                  sh           s2, 15(sp)
                  lb           zero, -5(sp)
                  lb           s5, -10(sp) #end riscv_load_store_rand_instr_stream_27
                  la           sp, region_0+1207 #start riscv_load_store_rand_instr_stream_3
                  lh           t3, 33(sp)
                  lbu          t6, 52(sp)
                  lb           t3, 31(sp)
                  lh           a1, 23(sp)
                  add          s10, s6, s5
                  srl          a2, s0, t2
                  sra          s7, s6, t6
                  sltu         ra, s9, s7
                  sb           t5, -15(sp)
                  slti         s8, s3, -647
                  xori         t6, s11, -1066
                  lb           a4, -40(sp)
                  lui          a3, 131386
                  lb           s9, -35(sp)
                  sb           a0, -13(sp)
                  sb           s4, -38(sp)
                  andi         a1, a1, -535
                  addi         s7, tp, -1750
                  nop
                  lbu          s6, 32(sp)
                  sb           s1, -58(sp)
                  lbu          a6, 31(sp)
                  srli         s3, t1, 22
                  sra          s1, s11, t0
                  or           a5, s9, gp
                  ori          s1, a0, 514
                  sb           a3, -30(sp)
                  xori         s6, s1, 1986
                  slt          a7, s7, s11
                  lb           t1, 35(sp)
                  slli         s6, s9, 21
                  andi         s6, s4, -1875
                  lb           a1, -41(sp)
                  sb           t6, -51(sp)
                  slli         t2, t2, 4
                  lw           t0, -35(sp)
                  lbu          t3, -57(sp) #end riscv_load_store_rand_instr_stream_3
                  la           s8, region_1+759 #start riscv_load_store_rand_instr_stream_1
                  lbu          a5, 419(s8)
                  or           a5, a5, a0
                  xori         s6, t4, -1953
                  lhu          s3, -153(s8)
                  lbu          t5, -44(s8)
                  sb           t4, 194(s8)
                  lbu          a6, 228(s8)
                  srai         s10, s11, 18
                  andi         s10, s8, -1290
                  lbu          s11, 890(s8)
                  srai         s2, s5, 23
                  lhu          a1, 327(s8)
                  lbu          s2, 1158(s8)
                  lbu          s11, -496(s8)
                  lb           t3, 692(s8)
                  xori         s11, sp, -696
                  sh           gp, 903(s8)
                  lb           s11, 551(s8)
                  nop
                  lb           s1, -565(s8)
                  lhu          ra, 833(s8)
                  sub          a6, t4, a3
                  sb           s3, 473(s8)
                  sw           s8, 1029(s8)
                  lb           t5, -324(s8)
                  lbu          t1, -2(s8)
                  addi         a3, t1, 561
                  lbu          t0, 374(s8)
                  lbu          t1, -664(s8)
                  xori         s5, t1, -855
                  xor          s0, t1, sp
                  sb           t5, 292(s8)
                  lui          a2, 1003631
                  lb           s10, 736(s8)
                  sw           a5, 749(s8)
                  sh           t4, 281(s8)
                  lhu          s1, -105(s8)
                  and          t3, a5, a3
                  lb           s11, 56(s8)
                  sltu         s11, zero, a0
                  lhu          t2, 497(s8)
                  slt          t6, a7, t6
                  sb           s3, 789(s8)
                  srai         a4, gp, 31
                  lh           s5, 799(s8)
                  and          gp, a3, s6
                  auipc        a4, 980119
                  slli         zero, ra, 30
                  lb           a0, 1176(s8) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+721 #start riscv_load_store_rand_instr_stream_30
                  lb           s5, 0(sp)
                  srli         s2, s4, 22
                  sh           a1, 43(sp)
                  xor          a7, s7, s2
                  slt          a2, gp, a0
                  sb           s3, -52(sp)
                  nop
                  sltu         a1, s7, s2
                  or           a5, t0, s5
                  slti         a5, t3, 510
                  slli         s3, s9, 30
                  slti         t6, gp, 541
                  nop
                  sll          s0, a4, t6
                  sub          a3, s11, t1
                  lbu          s7, -15(sp)
                  sb           ra, -19(sp)
                  sb           a3, -22(sp)
                  lbu          s2, -48(sp)
                  addi         gp, s7, 137
                  auipc        s5, 350333
                  slli         s10, a1, 15
                  sb           t3, 35(sp)
                  sra          s7, a1, s1
                  srl          s7, a7, s0
                  lbu          s5, 45(sp)
                  lb           a2, -2(sp)
                  lb           s10, 22(sp) #end riscv_load_store_rand_instr_stream_30
                  la           sp, region_0+1566 #start riscv_load_store_rand_instr_stream_5
                  lb           a4, -3(sp)
                  xori         a3, s8, -143
                  xori         t5, zero, 838
                  or           a6, ra, t6
                  sb           s4, 1(sp)
                  lb           s8, -5(sp)
                  slti         s5, s0, 594
                  lb           s7, -8(sp)
                  lb           t1, 13(sp)
                  slt          s6, tp, s8
                  lb           s2, 8(sp)
                  slt          a7, a3, tp
                  lh           s9, -16(sp)
                  lui          a7, 112129
                  andi         a4, t6, -2041
                  or           s1, s5, a3
                  auipc        s9, 403411
                  lbu          s9, 5(sp)
                  sh           t2, 16(sp)
                  lbu          a7, -13(sp)
                  srli         a1, s3, 18
                  auipc        t1, 939526
                  andi         a1, s1, -436
                  slti         s7, t0, 747
                  lbu          t3, 1(sp)
                  lbu          a7, 1(sp)
                  sltiu        a4, a7, 1715
                  lb           t6, 9(sp)
                  sh           sp, 0(sp)
                  lbu          a2, 1(sp)
                  or           a6, s7, s11
                  lb           s7, -1(sp)
                  xori         s3, t2, -1284
                  lui          s1, 657055
                  sltiu        s2, s9, -1118
                  andi         s10, a0, -1938
                  xori         a5, tp, -668
                  lb           s1, -5(sp)
                  lhu          t2, 10(sp)
                  srli         t2, t6, 29
                  sb           s3, -11(sp)
                  srl          s10, s3, s3
                  lbu          a1, 1(sp)
                  lbu          gp, 8(sp)
                  lhu          s7, -12(sp)
                  sb           s4, -1(sp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+1670 #start riscv_load_store_rand_instr_stream_26
                  lh           t6, -16(sp)
                  sb           s1, 11(sp)
                  sltiu        a6, t2, 86
                  lbu          s8, -10(sp)
                  lhu          t0, 2(sp)
                  lb           ra, -14(sp)
                  xor          s10, t6, s8
                  sll          t5, s10, t4
                  srai         s3, t2, 19
                  lw           s10, 10(sp)
                  sub          s7, t5, a0
                  srai         t5, zero, 7
                  lbu          a7, 7(sp)
                  lh           a5, -4(sp)
                  lb           t1, 15(sp)
                  lb           s0, 5(sp)
                  lh           s7, -14(sp)
                  lhu          t1, 14(sp)
                  srli         zero, s7, 22
                  auipc        a2, 417884
                  lb           a1, -10(sp)
                  lbu          a1, -7(sp)
                  slti         gp, s9, 1043
                  nop
                  lhu          s1, -8(sp)
                  lb           a0, -13(sp)
                  lbu          t6, -5(sp)
                  sh           s8, 0(sp)
                  lb           gp, 9(sp)
                  sltu         gp, s6, t4
                  srai         a5, t5, 10
                  lb           t1, -14(sp)
                  and          s0, gp, t2
                  and          a6, sp, a1
                  addi         s11, s11, -681
                  srai         t6, zero, 15
                  sb           s0, 2(sp)
                  lb           t2, -1(sp)
                  sb           a4, -5(sp)
                  addi         a1, a2, -614
                  sltiu        s8, t5, -1227
                  sb           t5, -1(sp) #end riscv_load_store_rand_instr_stream_26
                  la           sp, region_1+1918 #start riscv_load_store_rand_instr_stream_9
                  lbu          t1, -159(sp)
                  sb           s1, -111(sp)
                  srli         a0, a5, 21
                  or           a5, t3, zero
                  sb           t2, -27(sp)
                  srli         a1, gp, 28
                  lb           a1, -241(sp)
                  lbu          a4, -103(sp)
                  lbu          a0, -118(sp)
                  and          a3, a7, a6
                  lb           a6, 64(sp)
                  lw           a5, 74(sp)
                  sll          s1, s4, t3
                  slt          s7, s7, t4
                  lb           a7, -205(sp)
                  or           a1, a5, tp
                  sub          s8, a2, t3
                  ori          a4, a5, 517
                  slti         s6, s2, 32
                  or           t3, tp, a2
                  sb           a4, -10(sp)
                  and          s8, a4, a2
                  lb           s10, 78(sp)
                  nop
                  andi         ra, s11, -912
                  lh           a7, -92(sp)
                  slti         s2, s5, -1182
                  lbu          a5, -220(sp)
                  lb           s6, -255(sp)
                  lb           a2, 61(sp)
                  lb           t5, -128(sp)
                  andi         t3, zero, -722
                  auipc        s0, 423750
                  sb           t0, -241(sp)
                  sra          t1, ra, t3
                  lbu          a5, -136(sp) #end riscv_load_store_rand_instr_stream_9
                  la           s2, region_1+1505 #start riscv_load_store_rand_instr_stream_19
                  slt          s9, a5, a6
                  lb           t1, 24(s2)
                  sra          a5, sp, a5
                  lhu          a3, -829(s2)
                  lb           a7, -1038(s2)
                  addi         s9, a6, -561
                  andi         a6, s11, 929
                  auipc        t3, 823852
                  srl          a6, s7, s7
                  sb           s5, -144(s2)
                  xori         s0, s11, -77
                  ori          zero, a2, -272
                  lbu          t6, 54(s2)
                  lbu          zero, -1458(s2)
                  lh           s1, -553(s2)
                  nop
                  or           a6, zero, t2
                  lh           a4, -91(s2)
                  sb           s6, 104(s2)
                  lbu          t5, 124(s2)
                  and          s5, s1, t3
                  slt          a3, s0, zero
                  or           t5, s7, s6
                  lbu          a4, 420(s2)
                  sb           s8, -1314(s2)
                  andi         a6, a0, -900
                  lbu          a1, -1206(s2)
                  lb           a1, 298(s2)
                  sb           s0, -171(s2)
                  lh           s10, -999(s2)
                  sltu         s10, a7, t2
                  andi         s3, s3, -987
                  sh           t4, 63(s2)
                  xori         ra, s10, -1272
                  lbu          t1, 432(s2)
                  lb           s5, -1193(s2)
                  sltiu        a3, s7, 407
                  sltu         gp, s10, t1
                  slti         a1, gp, -248
                  lbu          a5, -105(s2)
                  xori         s10, s11, 1398
                  sub          s1, s3, t2
                  lb           a0, 86(s2)
                  lbu          s7, -356(s2)
                  sh           t1, -1481(s2)
                  sb           s2, 454(s2)
                  add          s10, a4, a2
                  lbu          s9, 54(s2)
                  sll          t5, gp, s6
                  addi         gp, t2, 1862
                  lb           t5, -1423(s2) #end riscv_load_store_rand_instr_stream_19
                  la           s6, region_1+441 #start riscv_load_store_rand_instr_stream_21
                  lb           s8, 1196(s6)
                  lb           s0, 892(s6)
                  lbu          a3, -110(s6)
                  sh           s8, 777(s6)
                  lhu          s3, 1379(s6)
                  slli         a0, s8, 17
                  sh           s7, 95(s6)
                  xori         s10, a0, 1640
                  lbu          s0, -372(s6)
                  lhu          a7, 381(s6)
                  sb           a2, -391(s6)
                  lhu          a5, 935(s6)
                  sb           s1, -344(s6)
                  lbu          s1, 1021(s6)
                  lb           t1, 1284(s6)
                  srli         t2, a4, 20
                  sb           a5, -111(s6)
                  lh           s7, 1217(s6)
                  addi         a0, a5, 575
                  andi         a6, t6, -952
                  lh           s5, 1247(s6)
                  lb           s8, -184(s6)
                  add          zero, s10, zero
                  and          s8, s0, t2
                  sb           a3, 836(s6)
                  sb           zero, 125(s6)
                  lbu          s0, 94(s6)
                  lbu          a1, 406(s6)
                  sub          a6, a5, s3
                  lb           a1, 426(s6)
                  sb           gp, 963(s6)
                  sltiu        a0, a1, -1651
                  slt          a5, s5, a1
                  lb           s1, 1182(s6)
                  lb           t0, 1373(s6)
                  sw           gp, 43(s6) #end riscv_load_store_rand_instr_stream_21
                  la           s8, region_1+48 #start riscv_load_store_rand_instr_stream_28
                  sub          a0, tp, s2
                  slti         s1, s11, -63
                  nop
                  ori          s0, s4, -1550
                  auipc        a4, 617978
                  addi         s11, tp, 1391
                  srl          s10, s4, a6
                  or           gp, s2, s9
                  lbu          s0, 6(s8)
                  auipc        sp, 926857
                  lbu          ra, 34(s8)
                  add          s11, s4, a6
                  slli         a0, s6, 27
                  sb           a2, -24(s8)
                  nop
                  sltiu        s10, s2, 1697
                  lb           s2, -35(s8)
                  srai         a7, a2, 8
                  sb           s4, 49(s8)
                  lb           t3, -31(s8)
                  lb           a0, 29(s8)
                  sb           s11, 7(s8)
                  slt          a0, t1, s7
                  sra          s2, t6, a6
                  lb           s5, 43(s8)
                  add          t5, s7, t4
                  and          ra, s3, s8
                  ori          s3, a5, 154
                  lbu          a3, 10(s8)
                  xori         s9, t0, -1406
                  slli         s10, t5, 13
                  auipc        s2, 162869
                  sltiu        a2, a2, 2017
                  lb           s0, 41(s8)
                  lbu          a7, 7(s8) #end riscv_load_store_rand_instr_stream_28
                  la           sp, region_0+973 #start riscv_load_store_rand_instr_stream_10
                  sltiu        t6, s11, 1821
                  sra          t3, a5, a4
                  sb           a7, 604(sp)
                  sb           s7, 334(sp)
                  xori         a4, a7, 538
                  sh           ra, -105(sp)
                  and          s8, a7, t5
                  nop
                  nop
                  slt          s11, t3, a6
                  lhu          a5, -351(sp)
                  sltu         a0, s5, s9
                  lbu          a6, -195(sp)
                  slt          s10, t1, s10
                  sltu         s6, t4, zero
                  slti         a4, s11, 263
                  lb           t1, 59(sp)
                  sra          s7, a7, ra
                  srli         s10, t4, 30
                  lb           a6, 486(sp)
                  sh           a5, -187(sp)
                  lbu          a3, -293(sp)
                  sub          t6, s11, s0
                  lh           s8, -785(sp)
                  sltiu        gp, a6, -1811
                  sra          s11, ra, a7
                  srli         a4, s6, 16
                  xori         s1, sp, -1284
                  srai         a5, s1, 27
                  lb           a1, -454(sp)
                  slti         t2, a6, 1577
                  nop
                  lb           zero, 412(sp) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_1+1411 #start riscv_load_store_rand_instr_stream_29
                  lh           s1, 1(sp)
                  lb           gp, 5(sp)
                  lb           s10, 15(sp)
                  srli         a5, s11, 24
                  ori          a0, a1, -626
                  or           t3, tp, s4
                  lb           a4, 8(sp)
                  addi         t6, s9, 662
                  lbu          a5, 3(sp)
                  srl          s11, a5, s10
                  lhu          s5, -5(sp)
                  sb           a5, -14(sp)
                  srl          s7, s11, s4
                  slt          s1, t3, t0
                  auipc        s10, 65615
                  sb           sp, 0(sp)
                  lui          s9, 976395
                  sb           s5, 15(sp)
                  srai         t0, t0, 4
                  lbu          t6, 0(sp)
                  slt          s1, s1, t2
                  and          t3, s2, tp
                  sh           s10, 1(sp)
                  ori          s11, t6, 216
                  sll          t1, t3, s5
                  slli         s5, a0, 12
                  lb           s6, -8(sp)
                  lh           s10, 15(sp)
                  lbu          a3, -14(sp)
                  lbu          t1, 15(sp)
                  lb           a2, -4(sp)
                  andi         a7, s11, 967
                  lbu          s9, -14(sp)
                  and          s9, s6, s9
                  lbu          t3, 16(sp)
                  lb           s11, -7(sp) #end riscv_load_store_rand_instr_stream_29
                  la           sp, region_1+1880 #start riscv_load_store_rand_instr_stream_7
                  add          zero, s3, s6
                  lhu          zero, 10(sp)
                  sb           t3, -11(sp)
                  sb           s1, -5(sp)
                  lhu          s6, -16(sp)
                  slti         gp, tp, -913
                  slti         t0, sp, 146
                  xori         a7, t2, -2024
                  nop
                  lb           s2, -11(sp)
                  sb           a1, -13(sp)
                  sb           s11, -7(sp)
                  slli         a5, gp, 0
                  sb           s8, 15(sp)
                  lui          s9, 39229
                  lb           a7, 9(sp)
                  lbu          t0, 13(sp)
                  sw           t4, 12(sp)
                  srl          t5, a0, t6
                  lb           s1, -7(sp)
                  lb           s3, 5(sp)
                  lh           a3, 4(sp)
                  lb           s8, 2(sp)
                  sll          s10, a1, t3
                  lb           s0, -10(sp)
                  lbu          s6, 13(sp)
                  lbu          s9, -4(sp)
                  auipc        a7, 797901
                  lbu          s3, -8(sp)
                  lb           s2, 5(sp)
                  sub          zero, s4, a5
                  and          s5, s10, sp
                  sh           ra, -10(sp)
                  sh           gp, 0(sp)
                  sll          gp, s4, s4
                  lb           t0, 15(sp)
                  sltiu        a2, a6, -1422
                  sb           t5, 5(sp)
                  ori          t0, a6, -329
                  sb           a0, 9(sp)
                  lbu          s0, 11(sp)
                  lb           s0, -15(sp) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_1+1491 #start riscv_load_store_rand_instr_stream_2
                  slt          zero, t6, t3
                  srli         a3, t1, 28
                  nop
                  ori          s7, ra, -1513
                  sltu         a6, s11, s5
                  sb           s2, -232(sp)
                  sb           t5, 85(sp)
                  xor          ra, t2, s2
                  sltiu        s11, ra, -378
                  lbu          t2, 224(sp)
                  sb           a4, 53(sp)
                  sltiu        t0, t4, 597
                  lb           ra, -70(sp)
                  lb           a6, -222(sp)
                  and          a1, a5, t1
                  lh           s9, -33(sp)
                  xori         t1, s11, 1576
                  and          s10, a3, s11
                  lbu          a0, -72(sp)
                  sub          s6, a7, s2
                  slt          t1, a6, t5
                  ori          a1, a1, -841
                  xor          t2, s0, a5
                  xori         s0, s0, 138
                  lh           s1, 155(sp)
                  srl          a3, a0, s2
                  lh           s10, 11(sp)
                  and          t2, t1, t0
                  add          t3, t1, a2
                  sb           sp, 26(sp)
                  lb           s5, -209(sp)
                  sltu         a3, s7, t2
                  sb           a4, -126(sp)
                  lh           a1, -177(sp)
                  lb           ra, -90(sp)
                  lb           a4, 67(sp)
                  add          t6, s4, tp
                  lbu          gp, -244(sp)
                  lbu          t1, 238(sp)
                  lbu          a4, 67(sp)
                  ori          a3, t1, -1041
                  lh           t5, -111(sp)
                  lh           s9, -153(sp)
                  ori          s2, t0, -1162
                  srl          t5, gp, s2
                  sltu         a1, s11, a2
                  lbu          a1, 250(sp)
                  lb           ra, -31(sp)
                  lbu          s8, 250(sp)
                  lh           t0, 111(sp)
                  or           s2, t4, s3
                  lh           s7, 175(sp)
                  xor          t3, zero, t2
                  lbu          s9, -98(sp)
                  ori          a0, a3, 1781
                  auipc        s2, 382856
                  lb           s11, -80(sp)
                  sltu         a5, s8, a2
                  sb           s8, -109(sp)
                  lb           a1, 177(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1762 #start riscv_load_store_rand_instr_stream_13
                  slt          s8, t5, a4
                  lh           zero, -20(sp)
                  sw           s11, 6(sp)
                  slt          t2, gp, a1
                  lbu          a6, -23(sp)
                  andi         s3, zero, 1728
                  slt          a5, a4, t5
                  slli         t3, s6, 28
                  or           ra, sp, t4
                  xori         s8, s6, 1403
                  lw           s10, -34(sp)
                  andi         s1, ra, -162
                  sll          zero, t0, s0
                  lui          t3, 32513
                  lui          s6, 262483
                  slli         a7, a4, 10
                  lb           s9, 47(sp)
                  sb           s5, -23(sp)
                  srai         s9, s0, 23
                  lui          a1, 73799
                  lbu          t5, -26(sp)
                  lbu          s6, 27(sp)
                  sub          s3, s9, sp
                  auipc        t6, 434348
                  lb           a4, 53(sp)
                  sltu         ra, a0, t5
                  lhu          s10, 64(sp)
                  add          ra, zero, s3
                  srai         s6, t5, 1
                  xori         s7, zero, 399
                  lb           s11, 22(sp)
                  nop
                  sra          s0, a4, s5
                  lhu          s10, 38(sp)
                  or           t1, s3, s5
                  lbu          t5, 13(sp)
                  nop
                  andi         t6, a0, -1325
                  slli         a7, tp, 28
                  add          t0, t6, s9
                  lbu          s1, 40(sp)
                  sb           s1, 31(sp)
                  auipc        s2, 898494
                  sltiu        t5, gp, 894
                  lb           ra, -29(sp)
                  lhu          s10, -32(sp) #end riscv_load_store_rand_instr_stream_13
                  la           sp, region_1+925 #start riscv_load_store_rand_instr_stream_11
                  and          s8, a0, t3
                  slti         a7, s11, 560
                  sb           s2, 1070(sp)
                  sb           s3, 718(sp)
                  sw           t1, 555(sp)
                  sltu         zero, s3, s4
                  srl          s7, a7, gp
                  lbu          s10, 1044(sp)
                  lh           s6, 339(sp)
                  lb           s10, -594(sp)
                  sb           s4, 363(sp)
                  sh           a6, -13(sp)
                  sb           t1, 293(sp)
                  lbu          s8, -790(sp)
                  ori          s1, s9, 270
                  or           a7, s3, tp
                  sll          t5, a3, s8
                  lbu          t0, 560(sp)
                  srai         s5, s4, 11
                  or           ra, t5, s0
                  slt          a0, sp, t1
                  sb           t3, 715(sp)
                  lb           a6, -258(sp)
                  lb           s2, 316(sp)
                  lbu          t0, -50(sp)
                  lbu          s2, 304(sp)
                  sb           a4, -888(sp)
                  lbu          a5, -621(sp)
                  andi         s2, a2, 1763
                  sb           s1, 448(sp)
                  sb           s5, -412(sp)
                  srl          s3, a0, s3
                  sb           gp, 412(sp)
                  lhu          s0, -559(sp)
                  lb           s5, 470(sp)
                  lb           s6, -764(sp)
                  addi         a6, t4, 520
                  lbu          s1, 201(sp) #end riscv_load_store_rand_instr_stream_11
                  la           a2, region_1+181 #start riscv_load_store_rand_instr_stream_12
                  lui          s7, 170063
                  xori         s8, a1, 900
                  slli         s3, a5, 17
                  sb           gp, -30(a2)
                  lbu          a4, -12(a2)
                  lh           s9, -53(a2)
                  sb           ra, 36(a2)
                  andi         zero, s1, -693
                  lb           t3, -42(a2)
                  lbu          zero, -176(a2)
                  lb           t6, 152(a2)
                  addi         t6, gp, -1200
                  lui          a5, 61284
                  slli         t3, a7, 26
                  sb           a0, -52(a2)
                  xor          t2, s6, s5
                  lb           a0, -103(a2)
                  slli         s1, s5, 9
                  and          s10, a2, s4
                  lbu          t5, -39(a2)
                  slli         s11, a0, 4
                  sll          s2, s9, s1
                  slt          s8, t2, s0
                  sll          t6, a5, t0
                  lui          a5, 610505
                  lui          t1, 11186
                  sra          s0, t1, s3
                  lb           s2, -74(a2)
                  slt          t0, a6, s1
                  lh           s0, 67(a2)
                  nop
                  xor          a7, s11, s6
                  lb           t1, 190(a2)
                  xori         s5, t0, 697
                  xor          s7, a3, t5
                  sra          t2, s11, s3
                  slt          ra, t3, s9
                  lb           s3, 12(a2) #end riscv_load_store_rand_instr_stream_12
                  la           sp, region_1+1468 #start riscv_load_store_rand_instr_stream_17
                  xor          gp, a4, sp
                  sh           a7, 108(sp)
                  slt          a7, s3, s6
                  sb           t4, -199(sp)
                  lhu          s9, 202(sp)
                  add          t0, gp, s11
                  lbu          s7, -215(sp)
                  sh           s1, -238(sp)
                  andi         a3, s4, -310
                  xor          s3, ra, t5
                  slti         t2, a7, -772
                  sltiu        a0, s8, -2019
                  lh           t3, -20(sp)
                  sh           a1, -184(sp)
                  lbu          a4, 169(sp)
                  lbu          a3, 15(sp)
                  srai         t6, s5, 30
                  nop
                  lb           s3, -223(sp)
                  lb           t6, -204(sp)
                  sb           t2, -49(sp)
                  lb           a7, -143(sp)
                  andi         s7, sp, 1959
                  sw           a2, -172(sp)
                  sh           a7, -106(sp)
                  lbu          s0, 214(sp)
                  lbu          a7, 65(sp)
                  auipc        s5, 849055
                  sb           a5, -169(sp)
                  lh           t6, 188(sp)
                  lb           a4, -175(sp) #end riscv_load_store_rand_instr_stream_17
                  la           t3, region_0+383 #start riscv_load_store_rand_instr_stream_15
                  lb           t2, 124(t3)
                  and          s11, a5, a6
                  and          a0, a1, t2
                  lbu          gp, 130(t3)
                  or           s11, s8, a0
                  sub          ra, t1, t5
                  addi         s3, t0, 478
                  lbu          s0, -72(t3)
                  sra          a1, t5, ra
                  sltu         t2, gp, a2
                  sb           s1, -156(t3)
                  auipc        s7, 1907
                  srl          t1, t6, t3
                  lui          t5, 98183
                  nop
                  slt          a4, s2, a0
                  sb           t3, -18(t3)
                  andi         a1, a2, -1448
                  sb           s3, 152(t3)
                  lb           s7, -75(t3)
                  slt          ra, s4, a0
                  sb           s5, 248(t3)
                  lbu          s8, -138(t3)
                  slti         a2, s0, 300
                  or           a0, tp, sp
                  and          zero, a3, s0
                  add          s1, s2, a1
                  lbu          s7, 66(t3) #end riscv_load_store_rand_instr_stream_15
                  srli         a7, t4, 28
                  srl          s5, s4, t2
                  and          s3, s1, a1
                  srai         a2, t4, 18
                  auipc        t5, 465236
                  bge          ra, s8, 13f
                  beq          s9, a7, 12f
                  sub          a1, a2, t0
                  srl          t6, zero, gp
                  and          a4, tp, s2
                  andi         s5, s11, -1354
                  addi         a4, s8, 1366
12:               sra          s9, gp, gp
13:               addi         a2, s8, -1330
                  nop
                  sll          a4, a2, a2
                  slli         s11, t5, 0
                  ori          a1, a0, 1678
                  ori          s1, a7, 1071
                  or           a2, a6, zero
                  sltiu        t5, s10, -1683
                  and          s11, t5, s10
                  srli         t3, t2, 10
                  lui          t2, 728757
                  bltu         t4, s4, 32f
                  bge          a6, a0, 38f
                  ori          s10, s9, -901
                  ori          gp, s2, -856
                  sra          a4, s8, a7
                  auipc        a0, 863484
                  addi         s5, t5, -881
                  and          t3, s10, zero
32:               bge          gp, sp, 45f
                  bge          sp, a3, 46f
                  srli         t3, s1, 13
                  srl          a3, a4, a2
                  and          t3, s0, s2
                  sra          t1, zero, t6
38:               srai         a5, sp, 12
                  nop
                  lui          a4, 909902
                  slt          s8, gp, a5
                  ori          ra, ra, 553
                  sltu         a3, t4, t6
                  xor          s5, s10, t6
45:               slti         s1, a0, -1945
46:               srl          a4, a6, s8
                  sra          s5, t6, a4
                  sll          t3, t0, ra
                  sub          a3, s10, t4
                  sltiu        sp, s8, -634
                  addi         a3, t1, -548
                  bne          ra, s3, 59f
                  bltu         s9, a4, 63f
                  slli         t3, t0, 17
                  slli         s7, a5, 16
                  or           a1, a7, s6
                  sltiu        s6, s7, 16
                  bgeu         s8, s0, 76f
59:               srl          ra, s7, a4
                  sra          a4, tp, a2
                  bltu         ra, s5, 74f
                  srli         s11, t2, 18
63:               xor          s7, gp, a5
                  auipc        s7, 767638
                  sltu         a5, t6, s1
                  addi         a1, a0, -1511
                  sltu         a4, t5, s11
                  beq          ra, a4, 87f
                  bltu         a5, s8, 88f
                  bge          sp, zero, 82f
                  or           ra, a3, t0
                  nop
                  sll          s9, a6, t4
74:               slti         ra, a2, -1903
                  sll          s7, a2, a1
76:               lui          a3, 355064
                  slli         s11, s6, 28
                  bge          sp, s6, 88f
                  slt          zero, s2, s1
                  bge          gp, s0, 86f
                  sra          s6, s9, s0
82:               ori          s3, sp, -502
                  andi         a6, s10, -642
                  srli         s2, s5, 7
                  beq          a3, t1, 99f
86:               sra          s9, a0, s10
87:               srl          ra, t1, t6
88:               sll          a0, s10, t2
                  srl          s8, t2, s2
                  blt          t0, s0, 107f
                  xor          ra, tp, sp
                  xori         gp, a2, 1367
                  or           a7, a3, a5
                  srli         sp, a7, 20
                  bge          s10, a1, 96f
96:               slti         a1, s1, 1255
                  or           t6, s8, s3
                  xor          t0, s7, a7
99:               sub          s8, a3, s10
                  lui          s2, 500811
                  srai         s10, a0, 18
                  xor          a5, t1, t3
                  srli         t0, s3, 28
                  slti         s7, t4, 603
                  andi         t1, ra, -1318
                  bne          a4, s0, 112f
107:              sll          s7, t2, t4
                  srl          a3, a7, a1
                  add          s3, s9, a1
                  or           s6, s10, a0
                  xor          zero, s10, s11
112:              xor          a4, t3, t1
                  slli         s2, t6, 25
                  blt          t1, s8, 118f
                  sltiu        s10, a4, -777
                  xori         s6, t4, 337
                  slti         t0, s8, 25
118:              slli         s5, a1, 9
                  addi         a2, sp, -1505
                  addi         t1, a0, 800
                  xor          s3, a6, t0
                  and          s1, s4, a2
                  blt          t3, a2, 138f
                  slt          t0, s8, s2
                  slt          gp, t3, s4
                  xori         t6, s6, -1801
                  la           s8, region_1+947 #start riscv_load_store_rand_instr_stream_14
                  sltu         t5, t2, t5
                  sh           a0, -7(s8)
                  sub          s9, a7, a0
                  andi         a4, a7, 380
                  lb           t1, 12(s8)
                  sb           s5, 0(s8)
                  lbu          s7, -16(s8)
                  sb           s6, -10(s8)
                  ori          t3, t3, -164
                  lbu          t3, 0(s8)
                  addi         s9, s8, -546
                  sb           ra, -8(s8)
                  add          t1, sp, s0
                  auipc        gp, 541369
                  andi         sp, s9, -187
                  lb           s1, -6(s8)
                  xor          s6, a0, sp
                  lbu          s10, 16(s8)
                  sb           t6, 0(s8)
                  slt          s1, t5, s2
                  lh           a5, -13(s8)
                  sltu         s3, ra, s1
                  and          t2, s11, s7
                  lbu          t5, 8(s8)
                  sb           zero, 11(s8)
                  sb           t4, 3(s8)
                  slti         a0, s8, 1000
                  sb           t6, -12(s8)
                  lhu          ra, 7(s8)
                  sh           s7, 3(s8) #end riscv_load_store_rand_instr_stream_14
                  addi         s5, a2, -1801
                  srli         s11, s3, 15
                  or           a2, s11, s2
                  slti         s1, s3, -1348
                  sltu         a6, a7, s5
                  slli         zero, a6, 31
                  sub          t0, s9, t5
                  bgeu         sp, t5, 141f
                  add          s1, zero, t6
                  add          a6, s8, a4
                  sltiu        s8, sp, 1725
138:              sra          t0, a2, a3
                  slli         s3, a5, 29
                  blt          tp, t1, 152f
141:              sltiu        s6, s3, -590
                  beq          a7, zero, 148f
                  or           gp, t6, a0
                  or           t2, a3, t1
                  srl          gp, s3, s10
                  sltu         s5, a3, s5
                  or           a0, a0, t5
148:              add          a3, t6, s6
                  or           s1, s10, a5
                  ori          ra, t2, 136
                  sltiu        s5, tp, 1373
152:              srl          s10, t6, s10
                  srli         t1, s0, 31
                  srli         ra, zero, 31
                  srai         s5, s9, 10
                  and          s9, gp, t5
                  sltu         ra, a7, a1
                  srl          a4, sp, s5
                  ori          s11, s0, 969
                  ori          t2, tp, 1617
                  sll          s1, a6, s6
                  sub          s8, zero, a1
                  bgeu         s2, a2, 176f
                  auipc        zero, 44064
                  lui          a5, 746486
                  add          s10, s5, a2
                  or           a3, a6, t4
                  xori         a5, s6, 1476
                  lui          a2, 770947
                  or           s0, s0, s9
                  sra          gp, t3, gp
                  slt          t1, s11, t5
                  sltu         s6, a0, s3
                  bne          t3, s0, 180f
                  bne          s10, a4, 194f
176:              bgeu         s8, tp, 187f
                  add          a2, gp, s6
                  sub          a7, s9, t1
                  sll          a0, s2, s5
180:              and          s9, ra, s7
                  slt          sp, a2, t0
                  bgeu         a7, a2, 194f
                  sltu         t1, a7, s2
                  sub          a7, t0, zero
                  bgeu         t3, gp, 193f
                  lui          t1, 937976
187:              xori         s6, t4, -133
                  bge          s2, ra, 196f
                  beq          s7, tp, 197f
                  add          a1, a1, ra
                  beq          a4, a7, 192f
192:              sltiu        a6, ra, -1620
193:              lui          t1, 363348
194:              bgeu         a0, sp, 201f
                  sub          s1, s5, s7
196:              and          a3, s5, a3
197:              beq          a2, t2, 209f
                  sltu         t3, t6, t3
                  addi         s1, t5, 331
                  addi         a0, a2, 699
201:              srai         a2, t6, 4
                  slti         s1, a7, -987
                  slli         s1, t4, 5
                  add          s9, s6, s5
                  slti         s11, s8, -10
                  slli         a5, a2, 15
                  xor          s6, t1, s9
                  andi         s11, a3, -1178
209:              or           s2, t2, s5
                  slli         s5, t6, 31
                  bge          s3, s3, 225f
                  addi         s10, s0, 1352
                  or           t1, t3, gp
                  auipc        t2, 883984
                  beq          s10, t2, 228f
                  srl          s10, s4, a3
                  sltiu        a4, s0, -1327
                  slt          sp, s4, sp
                  xori         a3, t5, 648
                  srli         t5, s7, 27
                  and          s7, t4, s10
                  sll          t3, s10, a0
                  sll          a1, tp, t2
                  beq          s7, s3, 236f
225:              bge          t5, t0, 231f
                  sltu         s2, t1, s6
                  sll          a6, a1, a1
228:              blt          tp, t2, 238f
                  add          a0, s7, s2
                  sra          t6, t4, t0
231:              sra          t2, s2, a7
                  blt          s1, t2, 243f
                  xor          a2, t0, t6
                  nop
                  slli         a6, s2, 11
236:              xor          a7, s10, s10
                  srli         a2, s7, 2
238:              xori         t0, t5, 459
                  auipc        zero, 974773
                  bgeu         a4, s11, 253f
                  bge          sp, a6, 248f
                  bne          a2, s7, 261f
243:              blt          a2, s3, 253f
                  and          a6, sp, t2
                  beq          sp, s7, 257f
                  and          s10, s10, a2
                  slt          a1, s8, gp
248:              sub          s6, s1, a6
                  or           s5, a0, a2
                  beq          a3, a2, 263f
                  sltiu        zero, a4, -692
                  bgeu         t3, a1, 258f
253:              slti         a2, zero, 1399
                  bltu         zero, s1, 271f
                  sltiu        s0, t5, 902
                  addi         s10, t1, -880
257:              srai         s3, t4, 3
258:              ori          s9, s2, 1220
                  blt          s7, s5, 265f
                  lui          gp, 523347
261:              sub          a6, t5, a6
                  slli         s5, s2, 24
263:              sub          s7, t2, t0
                  ori          a3, s11, 329
265:              sub          ra, zero, s9
                  bltu         a0, s3, 279f
                  srl          s7, a7, t0
                  sub          t5, s3, tp
                  add          s7, s3, s4
                  srl          s11, s9, s11
271:              auipc        t1, 312537
                  srl          ra, t5, t4
                  srai         a5, zero, 30
                  xor          a5, a7, a2
                  xori         sp, sp, 452
                  nop
                  and          s2, s8, zero
                  blt          t5, gp, 284f
279:              bge          ra, s3, 283f
                  xori         a0, a6, 1362
                  addi         s8, s0, 318
                  slli         a6, gp, 16
283:              bne          t4, s0, 289f
284:              slt          s3, a2, s0
                  slt          t3, s4, t0
                  slti         s3, t0, 508
                  sub          t1, s10, t3
                  sub          t6, a2, s7
289:              or           a4, a1, t3
                  lui          sp, 190017
                  slti         s9, a4, 643
                  addi         s10, a5, -566
                  srli         a2, a3, 31
                  nop
                  slti         a5, sp, 1453
                  addi         a2, gp, -1919
                  lui          s1, 963537
                  xor          sp, a2, a4
                  lui          a4, 557801
                  sll          s2, s9, ra
                  beq          s3, s0, 319f
                  add          s1, a4, t2
                  auipc        t5, 734057
                  and          t2, a1, s10
                  bltu         s5, s7, 320f
                  sra          t2, s9, a3
                  srli         a5, s10, 13
                  lui          s1, 286580
                  andi         a3, t2, -249
                  blt          t5, t5, 329f
                  xor          t6, t2, a7
                  nop
                  and          a4, s8, a0
                  srl          s8, t4, t2
                  nop
                  bge          s6, a0, 335f
                  sltiu        s5, a7, 1258
                  slt          s9, a7, t1
319:              srl          a4, ra, tp
320:              sltu         zero, zero, s7
                  bge          tp, tp, 334f
                  and          s11, zero, a0
                  slli         t1, t4, 3
                  nop
                  sub          s5, s3, t2
                  bge          t4, a7, 334f
                  bge          s7, s10, 337f
                  blt          s8, s0, 336f
329:              sltiu        a2, t5, -51
                  and          a0, s3, t5
                  sll          zero, s6, s8
                  srli         s3, s11, 10
                  srai         a4, s10, 17
334:              slt          a3, s9, s0
335:              srai         t6, a0, 12
336:              sltiu        sp, s10, -1459
337:              slt          s3, s8, a7
                  slt          s8, t3, s0
                  xori         a1, s6, -518
                  bgeu         tp, s11, 346f
                  lui          s7, 364552
                  slt          t0, a6, a0
                  bge          s7, zero, 360f
                  sltiu        a6, a3, 1518
                  bgeu         zero, s5, 351f
346:              slli         a2, t2, 2
                  addi         s6, s5, -892
                  slt          s5, t6, s1
                  beq          a2, a7, 359f
                  xor          t6, s6, ra
351:              srl          a7, s10, t1
                  lui          gp, 165063
                  ori          a1, t6, -1171
                  nop
                  bne          s7, s4, 368f
                  srai         a2, s7, 9
                  andi         s9, sp, -1745
                  and          s1, sp, a7
359:              or           a1, t5, s10
360:              beq          t0, t4, 364f
                  or           s2, s10, zero
                  xori         a7, s1, -968
                  srl          s7, a4, t3
364:              beq          a7, a4, 379f
                  auipc        s7, 294986
                  nop
                  srai         t5, s11, 18
368:              sltu         a7, t5, s5
                  bne          a0, a4, 382f
                  sltiu        s10, s6, -803
                  xor          s10, s4, a5
                  srai         s0, s2, 15
                  add          a3, ra, t3
                  add          s5, t0, t3
                  or           ra, a4, t6
                  auipc        a1, 985921
                  addi         a6, t2, 1812
                  blt          tp, t3, 391f
379:              addi         s2, gp, 249
                  srli         s1, t0, 29
                  nop
382:              auipc        a2, 74671
                  bltu         a4, s1, 401f
                  beq          s1, ra, 392f
                  or           zero, s4, s8
                  sra          s10, gp, a6
                  bne          a3, a6, 398f
                  auipc        a6, 310913
                  bltu         t0, s2, 402f
                  srli         ra, sp, 21
391:              xor          s10, s0, gp
392:              srli         t3, t6, 13
                  slli         zero, s11, 11
                  srl          s11, gp, s9
                  bltu         s4, s4, 403f
                  sltiu        t2, sp, 494
                  bltu         s7, t1, 409f
398:              beq          s7, ra, 410f
                  auipc        s11, 379728
                  andi         s10, t2, 113
401:              sll          t6, t2, tp
402:              slli         zero, s6, 19
403:              add          t5, zero, tp
                  add          gp, s2, s3
                  slt          s8, a3, s1
                  bgeu         s2, s0, 413f
                  lui          t6, 810300
                  bge          gp, s7, 409f
409:              bne          a0, s4, 423f
410:              or           s0, t1, tp
                  andi         s6, s9, 1225
                  blt          t6, s0, 418f
413:              srai         ra, s1, 12
                  blt          t5, s1, 433f
                  sll          t2, a5, s2
                  addi         s8, s1, -487
                  beq          a1, s8, 436f
418:              sra          s11, a7, s3
                  bge          a7, s11, 432f
                  auipc        gp, 949162
                  sltu         s3, a7, s8
                  bne          s6, s1, 441f
423:              blt          gp, s5, 435f
                  slti         s7, tp, 2016
                  sub          zero, a7, a1
                  sltiu        a4, a0, -434
                  srli         s7, t5, 30
                  auipc        ra, 165756
                  andi         a3, a6, 1303
                  bge          a6, s4, 437f
                  sub          a1, zero, s6
432:              srl          a7, a3, gp
433:              addi         s5, s0, -16
                  srli         s3, t2, 31
435:              xori         a3, a7, -998
436:              sltu         a6, s2, s4
437:              slt          ra, t2, s3
                  and          ra, t1, s11
                  bgeu         a2, t0, 445f
                  andi         gp, tp, 562
441:              bge          s3, a0, 447f
                  xori         a5, t4, 1668
                  slti         sp, a3, 714
                  bne          a0, s5, 463f
445:              or           t2, t2, s5
                  nop
447:              sra          s6, t2, s0
                  and          a5, t1, t6
                  lui          a2, 896501
                  sll          t6, s9, a0
                  beq          a0, s0, 457f
                  add          s8, a0, tp
                  sra          a1, a1, a5
                  sll          ra, a6, s4
                  auipc        s1, 573211
                  andi         s9, s9, -1896
457:              bge          t4, s1, 465f
                  sll          t0, t3, a0
                  lui          t1, 210527
                  lui          t1, 23979
                  bltu         s5, s4, 472f
                  andi         s0, s7, -608
463:              sra          a6, s5, t4
                  xori         a6, a6, -1794
465:              sltiu        t6, t0, 1456
                  sltu         s5, a1, t4
                  sltiu        s6, t4, 916
                  bgeu         zero, t6, 476f
                  srl          s0, a4, s4
                  and          t3, a0, s7
                  and          gp, a7, s3
472:              addi         a1, s1, 1176
                  or           a5, ra, t1
                  bge          t0, a2, 493f
                  sra          s8, a1, s2
476:              slt          s8, s4, s1
                  bgeu         a5, a7, 481f
                  bgeu         a7, a3, 490f
                  bgeu         t2, a2, 491f
                  sltu         s1, s10, a7
481:              srli         t3, t0, 8
                  and          s10, s8, s7
                  beq          s0, zero, 496f
                  bne          s6, t3, 502f
                  xor          t6, s9, a1
                  nop
                  sll          s5, gp, s1
                  sra          t2, s6, t0
                  and          a5, t6, ra
490:              bgeu         s1, sp, 496f
491:              sltu         a2, t6, s5
                  ori          t5, a4, -775
493:              bgeu         s8, s0, 512f
                  bne          t3, t5, 495f
495:              xori         a4, zero, 774
496:              addi         s7, t4, 423
                  lui          s5, 572098
                  ori          a6, s7, -1849
                  xor          a4, s3, a2
                  srl          t0, sp, t5
                  srai         t5, a4, 13
502:              blt          ra, a4, 515f
                  slli         s10, gp, 12
                  sltiu        a0, s2, -657
                  blt          a2, t2, 512f
                  sra          a2, s4, a4
                  sltiu        s8, t0, 1841
                  sltiu        s2, a5, 85
                  srai         s11, a5, 28
                  bge          s7, tp, 517f
                  sub          zero, gp, a4
512:              and          a1, gp, a2
                  bge          a4, s1, 525f
                  srl          t1, s2, t4
515:              lui          s9, 166537
                  bgeu         t4, t0, 530f
517:              auipc        a1, 292849
                  and          s0, ra, s9
                  srl          t5, s2, a1
                  bne          s2, s10, 533f
                  sra          s8, s10, s6
                  ori          s1, s11, 1105
                  sra          gp, s7, t1
                  srai         s7, t5, 14
525:              srl          zero, a1, t0
                  ori          a3, gp, -1983
                  slti         s7, s7, 1042
                  auipc        t2, 523207
                  beq          t1, s9, 535f
530:              sra          t0, tp, t0
                  auipc        a5, 708892
                  bge          a2, s1, 538f
533:              addi         s9, a5, -568
                  addi         s5, a2, -834
535:              auipc        t6, 260473
                  nop
                  nop
538:              andi         a6, s2, 723
                  srli         t6, t6, 12
                  nop
                  sra          a1, t5, s4
                  add          a5, a4, s9
                  beq          a5, s8, 553f
                  addi         a5, t5, 374
                  sll          s2, a2, a5
                  srli         s6, s6, 19
                  and          a6, s4, s3
                  srli         t2, s6, 2
                  add          ra, a7, a7
                  sltiu        a4, a3, -1291
                  slti         a3, t1, 1290
                  sra          s11, a3, s11
553:              bltu         s2, s7, 563f
                  sltiu        t5, s1, -520
                  beq          t3, s7, 563f
                  blt          s0, t3, 571f
                  bne          t4, sp, 563f
                  xori         s2, a6, -863
                  and          t5, t0, t3
                  la           a2, region_1+589 #start riscv_load_store_rand_instr_stream_24
                  sltu         s8, t2, t4
                  sb           s3, -24(a2)
                  nop
                  ori          s5, a6, 215
                  sltiu        a1, a7, 1683
                  slt          s1, s1, s9
                  sll          s5, a6, ra
                  or           t1, s9, t6
                  sub          t3, s9, a2
                  sb           a1, 243(a2)
                  sw           ra, 203(a2)
                  sb           a3, -252(a2)
                  sltiu        s1, s5, 1809
                  srai         a7, s11, 0
                  lb           a3, -71(a2)
                  lbu          t5, -68(a2)
                  addi         a6, s5, -144
                  sltiu        s3, gp, 1970
                  nop
                  srai         ra, t1, 28
                  lb           t6, 129(a2)
                  lbu          t0, 112(a2)
                  or           a5, a6, t1
                  lb           s5, -14(a2)
                  andi         s6, a0, 1949
                  sltu         a1, t0, s8
                  xor          t1, a2, s7
                  lb           a4, -162(a2)
                  sub          a3, gp, ra
                  auipc        s7, 934030
                  sb           gp, -175(a2)
                  srl          s9, s7, tp
                  slti         t3, t2, -1593
                  sb           a1, 207(a2)
                  lb           s2, 248(a2)
                  xori         a7, s6, -272
                  sll          zero, a7, a6
                  sb           s7, -234(a2)
                  sh           s1, 235(a2)
                  sub          a1, s8, a5
                  slti         s7, zero, 1688
                  lb           s7, -83(a2)
                  sb           ra, 117(a2) #end riscv_load_store_rand_instr_stream_24
                  slti         t6, s8, 1394
                  sra          ra, a7, s3
                  sra          a6, a4, t3
563:              bltu         s3, a4, 576f
                  bgeu         t1, s2, 577f
                  srli         s2, t1, 26
                  bge          s5, t5, 583f
                  bne          ra, t5, 575f
                  ori          s7, ra, -626
                  andi         t6, gp, -1464
                  add          s6, s3, s3
571:              and          a5, s9, a3
                  slti         s7, a5, 856
                  srl          t3, s4, zero
                  xori         t5, s10, 1464
575:              blt          t3, s2, 589f
576:              bne          s5, a2, 586f
577:              slt          a1, s1, s4
                  addi         ra, t4, 581
                  andi         gp, s0, -336
                  xori         t6, a0, 118
                  nop
                  sltu         a6, s8, a4
583:              sub          a6, sp, t5
                  sltu         gp, s9, t0
                  auipc        s10, 4597
586:              andi         ra, a1, -1080
                  bgeu         s0, a0, 598f
                  addi         s2, t6, 342
589:              bge          t2, s9, 597f
                  slli         s9, a2, 30
                  bge          ra, a5, 608f
                  slli         a4, ra, 26
                  sltu         a3, t5, s2
                  andi         s9, s7, -12
                  or           zero, t0, tp
                  sub          a7, t4, s7
597:              bltu         a1, a5, 603f
598:              bne          s5, a1, 617f
                  andi         a4, s9, -1362
                  andi         s10, s7, -1650
                  auipc        s9, 554339
                  beq          a4, a0, 608f
603:              bge          t4, a5, 618f
                  slt          a5, a7, zero
                  addi         t0, s5, 500
                  srl          s2, a4, a4
                  bltu         t5, s1, 620f
608:              bgeu         a4, t6, 621f
                  sll          a3, a2, s2
                  sltu         t3, t2, a4
                  or           t2, s9, t5
                  add          s7, t3, s8
                  la           s1, region_0+1285 #start riscv_load_store_rand_instr_stream_20
                  lbu          a4, 65(s1)
                  sh           s1, 231(s1)
                  slti         a2, tp, -1769
                  auipc        gp, 214642
                  slt          t6, s7, t1
                  slli         t6, t2, 0
                  xori         t6, s7, 919
                  sltu         s11, a1, a7
                  lh           a4, 249(s1)
                  or           s9, t3, s6
                  lbu          s5, 182(s1)
                  ori          a2, s9, 1330
                  lb           a4, 166(s1)
                  sub          t0, s8, a3
                  lw           a7, 231(s1)
                  sltiu        a0, t3, -1000
                  lhu          s3, -19(s1)
                  nop
                  lb           t6, 20(s1)
                  lh           t2, 43(s1)
                  addi         a4, s4, -1695
                  sb           gp, 93(s1)
                  sb           t3, -168(s1)
                  xori         s8, a3, 1932
                  lbu          s2, 253(s1)
                  lui          zero, 282585
                  lbu          s10, 256(s1)
                  srli         s8, sp, 9
                  sh           s5, 239(s1)
                  lbu          t3, 235(s1)
                  addi         a3, t2, 390
                  add          a1, ra, ra
                  lui          s6, 861338
                  auipc        a2, 965671
                  nop
                  sb           a6, -79(s1)
                  lbu          a7, -214(s1)
                  ori          s8, t1, 1919
                  slli         a7, zero, 8
                  sra          a6, s3, a1
                  lb           s10, 149(s1)
                  xor          s6, a7, s5
                  ori          s6, s3, -12
                  sb           t4, 189(s1)
                  sub          s9, a4, t2
                  lb           s8, -168(s1) #end riscv_load_store_rand_instr_stream_20
                  ori          a1, a7, -983
                  bgeu         s4, gp, 618f
                  sltiu        a6, t3, -1891
                  bgeu         t6, zero, 622f
617:              bgeu         t5, s0, 618f
618:              sltu         s3, t1, t4
                  srai         s10, sp, 30
620:              auipc        s9, 998263
621:              ori          s11, t3, 103
622:              add          s1, s4, t4
                  and          t6, t5, t1
                  andi         gp, gp, -944
                  sra          t6, s0, t4
                  bne          zero, tp, 644f
                  ori          ra, a2, 532
                  sub          a0, s4, a4
                  and          a2, t2, s1
                  sra          a7, ra, a4
                  slti         ra, t3, -1206
                  xori         a3, gp, -1567
                  or           t0, ra, s7
                  slli         zero, s8, 8
                  ori          s3, t6, 965
                  auipc        a5, 1024184
                  or           s7, s0, s8
                  sra          s5, t1, s1
                  auipc        sp, 503169
                  slli         a3, a1, 14
                  xori         s7, a6, -1448
                  bgeu         gp, t5, 655f
                  slt          s7, a2, s6
644:              bne          a4, a7, 654f
                  sra          t2, s6, a6
                  bge          s4, s7, 665f
                  auipc        s5, 109973
                  ori          t2, s1, -1521
                  beq          s9, s11, 661f
                  and          s9, t0, a2
                  sra          t5, ra, t3
                  sll          a7, gp, a7
                  xori         a3, t0, -1252
654:              sltiu        s0, s8, -2012
655:              sub          ra, s7, s1
                  sltiu        s11, gp, 1604
                  xor          t3, s3, t6
                  bge          t3, t5, 664f
                  slli         sp, a3, 1
                  ori          s11, s6, -67
661:              sll          ra, a6, s10
                  sub          t0, a2, s6
                  sltu         gp, a7, ra
664:              srli         s8, s5, 6
665:              xor          gp, t4, a7
                  blt          s5, s4, 679f
                  ori          gp, s11, 639
                  beq          s2, s3, 680f
                  nop
                  xori         a1, a4, -1531
                  bgeu         s6, a7, 690f
                  srl          t0, a0, s7
                  srli         a4, s1, 10
                  auipc        s9, 920427
                  sra          zero, t4, a7
                  bltu         s4, s10, 683f
                  bne          gp, s2, 685f
                  slli         s1, s5, 14
679:              auipc        a6, 626793
680:              lui          a6, 549582
                  slti         gp, s0, -740
                  srai         s9, t3, 13
683:              and          s6, t6, s10
                  slti         sp, t2, -460
685:              beq          a7, s5, 698f
                  bne          s11, a1, 698f
                  or           t2, t2, a0
                  srl          a3, t0, t5
                  slt          t6, t2, a5
690:              sub          s0, s1, a4
                  auipc        sp, 1000769
                  add          sp, zero, t5
                  lui          a2, 834538
                  sll          s6, s4, s4
                  ori          s5, a2, 708
                  sltu         s9, a6, a1
                  srli         t1, s10, 4
698:              bne          a1, a1, 704f
                  bge          s10, s2, 706f
                  bgeu         sp, ra, 710f
                  xori         a4, a7, 1612
                  slt          a2, a2, s2
                  slt          a7, s4, ra
704:              lui          a6, 598365
                  andi         a0, sp, 1647
706:              slti         s0, a2, -1778
                  bne          s7, a0, 720f
                  ori          sp, s2, 256
                  andi         s5, s4, 1601
710:              srli         s1, a1, 27
                  nop
                  bne          t0, t5, 723f
                  and          s0, s1, a2
                  sub          a0, a2, s3
                  slti         s1, t1, 682
                  srli         s8, gp, 24
                  bne          a5, s1, 736f
                  bge          t0, s5, 730f
                  nop
720:              add          s7, ra, a3
                  beq          s8, t4, 731f
                  blt          s6, t3, 740f
723:              auipc        t3, 876052
                  add          a0, a5, a3
                  add          a1, s8, s4
                  andi         s7, s8, -357
                  xor          s3, a1, a7
                  slti         t3, gp, -1641
                  srl          gp, t2, ra
730:              sra          a7, a3, t0
731:              xori         s10, a2, 496
                  bgeu         s4, s10, 749f
                  sra          s5, s8, a5
                  bgeu         s5, gp, 740f
                  or           s0, s10, a2
736:              sra          a2, s10, a2
                  andi         s5, t4, 1848
                  sra          s0, s10, s11
                  beq          t3, t4, 752f
740:              nop
                  bgeu         s6, s5, 747f
                  or           t2, s3, a1
                  blt          a4, s10, 762f
                  addi         a4, t3, -1828
                  srl          t0, s3, ra
                  add          zero, a4, t1
747:              beq          a7, s1, 755f
                  or           a2, s3, t5
749:              beq          a4, a1, 763f
                  andi         a1, sp, 1335
                  add          ra, a2, t0
752:              slti         zero, s5, -882
                  xori         s2, sp, 640
                  slti         a4, a0, -2044
755:              xori         sp, t1, -1533
                  srai         t5, a0, 24
                  srl          ra, s6, gp
                  ori          t6, t3, -1749
                  slti         gp, a5, -1461
                  sub          s0, a4, tp
                  sltu         a5, s2, t4
762:              bltu         s2, s7, 777f
763:              beq          t6, a0, 770f
                  blt          a1, a7, 783f
                  sra          t3, s9, s4
                  beq          gp, a2, 779f
                  bltu         s8, t4, 773f
                  andi         s2, t0, 1119
                  nop
770:              and          t6, s7, gp
                  bltu         s8, a7, 779f
                  andi         gp, s2, -195
773:              auipc        s2, 526632
                  lui          a2, 192243
                  sll          s10, t4, t2
                  sll          t5, s2, zero
                  add          s2, s11, ra
                  lui          zero, 727467
                  srli         s3, s4, 23
                  la           s11, sub_5
                  lui          s8, 825797
                  and          a5, t1, tp
                  addi         s11, s11, 1022
                  srli         s0, s8, 26
                  or           t2, a2, s1
sub_4_j6:         jalr         ra, s11, -1022 #jump sub_4 -> sub_5
                  lui          a3, 138029
777:              srai         gp, s2, 8
                  sltu         zero, gp, s2
779:              slt          s10, t3, s9
                  or           gp, s1, gp
                  auipc        t1, 360358
                  bgeu         ra, s8, 788f
783:              bgeu         t1, t1, 789f
                  bne          s1, s5, 791f
                  andi         s1, t5, -1905
                  srli         s3, s8, 27
                  slti         s8, t6, 1801
788:              bne          s3, t2, 800f
789:              xori         t5, s2, 492
                  addi         a5, s0, 1227
791:              srai         t3, gp, 10
                  sra          a0, tp, a0
                  sltu         s1, t4, zero
                  and          s6, t4, s5
                  bge          s8, s9, 808f
                  srli         t5, a6, 29
                  andi         zero, sp, 1194
                  andi         a0, zero, -659
                  bgeu         t2, sp, 803f
800:              xori         t5, t1, 2006
                  xori         t0, t6, -1655
                  bge          a0, s5, 803f
803:              addi         t2, t2, 508
                  sltiu        s9, s11, 1777
                  sltiu        ra, s8, -1521
                  or           a1, t2, a4
                  auipc        a5, 235863
808:              xor          a4, a0, s1
                  ori          s1, s4, 895
                  bltu         s0, t4, 823f
                  or           a1, s10, t4
                  lui          s7, 801121
                  add          s0, t5, t4
                  and          s7, a0, s3
                  nop
                  bge          s6, a3, 824f
                  or           s5, t6, s8
                  sll          zero, t0, s3
                  bge          t3, t1, 831f
                  auipc        s5, 862239
                  ori          s2, s4, 454
                  sll          sp, a6, a7
823:              sra          s1, s1, zero
824:              slti         a2, t2, -1969
                  srl          s5, a3, s8
                  slt          s5, t3, s3
                  or           s6, a2, gp
                  bgeu         a4, ra, 834f
                  srai         s2, a2, 2
                  sltiu        a3, s5, -729
831:              andi         a4, t5, 1147
                  and          t0, s9, s1
                  srl          s5, t6, s3
834:              and          a2, a6, zero
                  bge          t6, s10, 850f
                  xor          t2, s3, s8
                  slti         t6, t3, -1802
                  slli         t2, s0, 18
                  ori          s9, tp, 1565
                  and          ra, t6, s6
                  beq          t1, t2, 854f
                  bltu         a3, ra, 848f
                  slli         s8, s1, 11
                  nop
                  sltiu        s6, s5, -1768
                  bltu         s11, a1, 858f
                  andi         s8, gp, 989
848:              sub          t5, s3, a7
                  bltu         a3, s7, 850f
850:              slli         a6, tp, 24
                  slti         a3, s0, 698
                  sltu         s9, t3, s2
                  ori          s1, t3, 723
854:              bltu         s3, ra, 872f
                  srai         a5, zero, 30
                  sra          s3, s3, s7
                  bltu         t5, s2, 864f
858:              slt          t5, t2, sp
                  srl          t0, gp, sp
                  ori          s10, t6, -450
                  sub          t2, s3, a4
                  nop
                  slli         sp, s2, 26
864:              blt          s5, zero, 875f
                  slti         a3, a1, -779
                  auipc        a4, 894270
                  slli         s11, s11, 6
                  sub          a4, s0, t0
                  bge          s0, s6, 877f
                  beq          ra, a7, 874f
                  slli         a7, s9, 26
872:              xor          gp, s9, sp
                  lui          a3, 184320
874:              bltu         ra, a0, 893f
875:              slti         sp, t0, 1977
                  sra          a1, s4, t2
877:              sub          s0, t3, s5
                  bgeu         s8, s2, 890f
                  addi         a4, s8, 516
                  bgeu         a6, a4, 890f
                  sll          t3, a7, s6
                  addi         s7, s8, 927
                  auipc        s10, 535028
                  sub          gp, a6, t2
                  bgeu         t1, s7, 891f
                  beq          s5, a7, 899f
                  andi         s2, t1, 525
                  andi         s8, t2, -1924
                  bge          gp, s9, 897f
890:              xor          zero, t5, t0
891:              srli         s10, ra, 14
                  addi         t5, a7, -702
893:              bltu         a1, t2, 906f
                  srai         gp, s10, 13
                  bge          gp, t6, 914f
                  sub          t0, s7, t3
897:              lui          a6, 571616
                  sra          s10, a1, ra
899:              bne          s5, a3, 905f
                  nop
                  lui          s2, 705568
                  and          sp, s3, a7
                  andi         t3, s5, -1062
                  and          s7, tp, sp
905:              srl          t0, gp, s7
906:              addi         t3, a7, -1429
                  beq          a5, s4, 921f
                  xor          s10, ra, sp
                  sltu         s3, s10, zero
                  srl          ra, tp, sp
                  xori         a3, zero, -1048
                  srai         t0, t3, 6
                  or           s0, s0, s7
914:              bge          a5, s4, 924f
                  xor          a3, a0, t1
                  and          s10, a2, a0
                  blt          s3, s5, 923f
                  bge          s10, t1, 926f
                  sub          t3, s2, t0
                  sltu         a4, s0, a6
921:              and          t2, s7, tp
                  srai         a0, s0, 21
923:              xor          s2, zero, s1
924:              sltiu        t5, a0, -48
                  addi         gp, t2, -663
926:              lui          a5, 271456
                  bne          sp, a3, 940f
                  xor          s0, t4, t1
                  bne          s2, ra, 942f
                  auipc        s2, 433107
                  add          s9, s5, a5
                  addi         a0, s2, -739
                  nop
                  lui          a7, 330092
                  blt          a1, t6, 952f
                  addi         s5, s0, 1458
                  bltu         tp, sp, 944f
                  srli         s10, a0, 19
                  or           s9, gp, a2
940:              bltu         s4, s11, 959f
                  slli         t1, gp, 27
942:              slt          gp, s6, s1
                  add          sp, s3, ra
944:              addi         t3, s4, -1718
                  sra          a7, s0, t1
                  blt          a3, a4, 958f
                  andi         a2, a4, 1724
                  and          s7, s1, t1
                  andi         a5, s3, -488
                  and          ra, s9, s11
                  xor          zero, t5, sp
952:              bne          s2, t5, 969f
                  andi         s5, s0, -1313
                  slli         s11, ra, 7
                  bgeu         a7, a1, 973f
                  addi         a2, a6, -1399
                  sra          s3, a4, t0
958:              auipc        t6, 264100
959:              xor          s6, t4, a7
                  sra          a3, a3, gp
                  sltu         s10, a7, s7
                  srl          s9, s8, gp
                  sub          s10, s0, a3
                  ori          a6, s5, -901
                  srai         a2, a0, 18
                  bge          s10, s6, 976f
                  sra          s10, s0, a4
                  bge          s7, a0, 969f
969:              beq          t4, s6, 984f
                  addi         a0, t3, 1643
                  slt          a3, a2, t2
                  and          s1, a5, a7
973:              sll          t3, s8, s6
                  slt          a5, ra, t0
                  bge          s3, s1, 982f
976:              and          s0, s2, a4
                  and          a4, s11, s8
                  sltu         t0, a4, s2
                  auipc        a5, 221920
                  srli         s3, s5, 10
                  xori         a6, zero, 1006
982:              slti         ra, s1, 387
                  bltu         zero, s6, 995f
984:              nop
                  addi         t5, s5, -229
                  sll          s5, sp, t5
                  slli         s1, s11, 23
                  bltu         ra, a1, 992f
                  blt          s8, a1, 997f
                  sltu         a4, a2, gp
                  andi         s3, a6, 1752
992:              slli         s6, a5, 23
                  auipc        s10, 989170
                  srai         a3, a7, 9
995:              beq          t4, a0, 1001f
                  sub          a0, s6, s6
997:              auipc        s8, 196431
                  bne          a2, a7, 1004f
                  sub          s0, a1, s5
                  slli         s8, t6, 21
1001:             bgeu         s2, ra, 1020f
                  slt          s10, s1, s6
                  bgeu         t4, gp, 1022f
1004:             beq          t2, t1, 1016f
                  bltu         s4, s3, 1019f
                  sltiu        s5, sp, 1987
                  slt          a3, t4, s1
                  sltu         t2, tp, a3
                  slti         a2, t1, 2003
                  sltiu        t0, t3, 197
                  sll          a7, t5, a5
                  srl          s10, s3, s6
                  andi         a2, t0, 548
                  nop
                  andi         sp, s1, 1212
1016:             auipc        t2, 554237
                  bge          ra, a3, 1027f
                  sltiu        a5, sp, 1397
1019:             andi         s7, s8, -1602
1020:             srai         a1, a7, 8
                  sltu         t1, a3, t5
1022:             xor          a2, a1, s3
                  sltiu        sp, t6, -870
                  sub          t2, t3, s8
                  add          gp, a6, a2
                  and          s2, a5, a5
1027:             ori          s2, s4, -676
                  bgeu         a6, ra, 1039f
                  xori         a3, s10, -1735
                  xor          a4, s1, s0
                  ori          s11, gp, 1907
                  srli         a1, ra, 24
                  and          a0, s2, a2
                  srl          zero, a1, ra
                  andi         s1, s10, 1583
                  or           s7, t3, ra
                  sltu         t5, t2, s11
                  bge          t3, a6, 1046f
1039:             srl          s8, a6, a4
                  or           a2, t2, s9
                  ori          s2, a7, 272
                  sub          t1, s5, s6
                  lui          t6, 588895
                  or           s7, a7, a3
                  nop
1046:             add          s0, a3, s9
                  addi         s9, a4, 426
                  bltu         tp, s4, 1061f
                  auipc        t3, 750789
                  sltu         s8, a7, a2
                  srai         t5, zero, 30
                  bne          gp, a2, 1065f
                  sltiu        t6, s10, 1258
                  lui          t0, 770035
                  sll          a0, s8, ra
                  and          ra, a1, t2
                  blt          s7, s8, 1063f
                  slli         s8, a6, 8
                  slt          a5, s6, t2
                  sltiu        a2, tp, -1091
1061:             sra          ra, s10, s3
                  sltiu        zero, s11, 1888
1063:             nop
                  bge          ra, a4, 1077f
1065:             auipc        s6, 1001229
                  bltu         s4, s1, 1072f
                  nop
                  xor          s10, t6, s3
                  or           a3, s4, s11
                  bge          s4, t2, 1078f
                  lui          t2, 778040
1072:             bge          s7, tp, 1085f
                  bge          t0, s3, 1092f
                  sll          s1, s8, t6
                  bge          s10, a0, 1081f
                  srl          a0, s8, a1
1077:             blt          s9, s2, 1089f
1078:             sltu         t1, s9, s9
                  xor          zero, a6, s7
                  add          s10, t1, t2
1081:             xori         s8, t5, 1901
                  xor          s6, s9, ra
                  slti         a3, s2, 954
                  andi         ra, a1, -373
1085:             sltiu        a1, s8, 1742
                  srl          s2, a4, t5
                  srli         s1, s1, 31
                  beq          s2, t1, 1101f
1089:             srl          t3, s0, t6
                  srli         s1, t3, 18
                  addi         a3, t2, -437
1092:             bge          t2, s5, 1099f
                  srl          s5, t2, sp
                  sra          s2, t0, a4
                  sra          sp, t0, a4
                  xor          a7, s1, a0
                  sra          a5, s6, s9
                  sltu         a4, a3, s9
1099:             slli         s8, a3, 24
                  slli         s10, t1, 11
1101:             srai         ra, s7, 20
                  bne          t1, sp, 1108f
                  beq          s5, ra, 1122f
                  ori          a4, a5, 30
                  bge          t0, s5, 1112f
                  addi         a6, sp, 81
                  lui          t3, 603853
1108:             sub          s6, gp, ra
                  and          s1, a7, t4
                  bne          t6, a4, 1122f
                  xor          t0, t2, s0
1112:             bge          a1, s2, 1123f
                  bgeu         t5, t5, 1119f
                  add          s3, t5, s8
                  slti         s1, s10, 515
                  and          t1, t6, s7
                  auipc        s5, 715674
                  andi         a6, s1, 732
1119:             sll          t6, s7, a6
                  bne          tp, a1, 1128f
                  xor          gp, tp, s11
1122:             andi         a1, a4, 1303
1123:             blt          a1, sp, 1130f
                  blt          a1, a7, 1130f
                  bgeu         a4, t2, 1142f
                  bge          t5, gp, 1145f
                  bne          t3, s8, 1133f
1128:             bgeu         s2, gp, 1132f
                  la           t0, region_1+1468 #start riscv_load_store_rand_instr_stream_25
                  lb           s5, 39(t0)
                  srli         a6, s11, 27
                  sltu         sp, t3, a1
                  sb           s0, 21(t0)
                  nop
                  lbu          a5, -62(t0)
                  lb           s9, -5(t0)
                  lbu          a5, -9(t0)
                  sltu         t6, t2, ra
                  xor          s7, sp, s2
                  sb           t5, -34(t0)
                  lbu          s8, -18(t0)
                  sw           s6, 56(t0)
                  lh           s10, 12(t0)
                  lbu          a6, 45(t0)
                  lhu          s2, -14(t0)
                  lbu          a4, 35(t0)
                  sb           s10, 53(t0)
                  lb           t6, 6(t0)
                  lbu          s10, -25(t0)
                  ori          s11, tp, -1706
                  sll          a3, t5, s11
                  lb           a1, -53(t0)
                  sub          sp, gp, t2
                  slli         t1, t6, 31
                  sub          t6, a0, s7
                  sb           t2, -53(t0)
                  lbu          zero, -9(t0)
                  lbu          a7, -13(t0)
                  lbu          t6, 58(t0)
                  nop
                  slli         a3, s4, 23
                  lb           gp, -33(t0)
                  lbu          a0, 45(t0)
                  lw           t2, 24(t0)
                  lb           s1, -33(t0)
                  or           s2, a2, a5
                  lb           a4, -55(t0)
                  add          zero, a6, s1
                  lbu          s9, -15(t0)
                  lb           t1, -51(t0) #end riscv_load_store_rand_instr_stream_25
                  sra          t5, t3, ra
1130:             bge          s5, s11, 1140f
                  addi         a1, s8, -1585
1132:             andi         a1, a7, -346
1133:             xori         t5, t6, -284
                  beq          a0, a1, 1147f
                  sll          a1, t1, t0
                  sub          a5, s0, s11
                  srl          a2, t6, a7
                  bge          t6, t5, 1144f
                  or           s5, s8, sp
1140:             bge          s9, a4, 1153f
                  xori         a6, sp, -737
1142:             ori          s2, a5, 831
                  sub          sp, s7, s10
1144:             blt          a2, s1, 1157f
1145:             or           t5, s11, s3
                  auipc        s7, 1037862
1147:             sltu         a2, s11, s5
                  bge          s2, s10, 1160f
                  bne          t6, a0, 1150f
1150:             add          a7, t3, s8
                  xor          a0, a4, t0
                  or           s0, s7, t1
1153:             bgeu         ra, s8, 1171f
                  srl          a2, s6, s7
                  or           s1, t2, tp
                  srli         zero, s7, 23
1157:             xor          s0, t4, s7
                  auipc        t5, 610038
                  addi         t5, s0, 1009
1160:             slt          s0, t5, a1
                  slli         sp, t0, 2
                  sltiu        s10, gp, -49
                  blt          a3, a6, 1182f
                  bne          s5, ra, 1172f
                  bne          a6, ra, 1177f
                  auipc        t2, 1013735
                  and          a5, s0, ra
                  sltu         t1, s6, ra
                  or           t5, t2, s1
                  addi         s0, a6, 887
1171:             nop
1172:             xor          a4, zero, a2
                  addi         a2, s7, 769
                  sll          zero, t3, t0
                  srli         s9, a6, 27
                  bge          s11, tp, 1190f
1177:             blt          t6, s7, 1190f
                  add          s3, s1, s8
                  xor          t6, s1, s7
                  sltu         s3, s10, s9
                  slli         a1, s11, 15
1182:             sltiu        s10, s0, 283
                  ori          t3, sp, 1194
                  add          s5, a1, s10
                  sub          t6, a7, t2
                  bge          t0, ra, 1201f
                  slt          s1, s0, t4
                  sra          s7, s4, t1
                  slt          t2, t3, t4
1190:             sltu         a2, ra, t6
                  slt          s11, s3, a3
                  xori         a6, t6, 1862
                  auipc        s9, 989656
                  bgeu         a5, s4, 1204f
                  blt          gp, s10, 1208f
                  slti         t1, t6, 100
                  add          s8, s3, t1
                  ori          ra, sp, -305
                  andi         s5, s9, -550
                  bltu         a2, s2, 1208f
1201:             nop
                  add          t0, t2, s3
                  and          zero, t2, a7
1204:             slti         a7, ra, 1579
                  lui          s11, 369229
                  sub          s7, t5, gp
                  bne          s11, t5, 1213f
1208:             andi         a4, s2, -1648
                  bltu         a7, s0, 1215f
                  slli         s11, s10, 11
                  srl          a4, t5, t1
                  srli         s0, tp, 29
1213:             addi         a3, t3, -1754
                  blt          s5, s10, 1215f
1215:             sra          a4, a6, tp
                  ori          s11, gp, 1184
                  sltu         a3, s3, ra
                  srli         t5, s3, 15
                  and          a5, a1, sp
                  sra          a7, t2, t5
                  blt          s0, s5, 1227f
                  lui          gp, 417782
                  bne          s8, s5, 1231f
                  sub          a4, t3, s4
                  xor          s1, tp, s2
                  sub          s2, s7, a2
1227:             srai         s10, t6, 24
                  la           a1, region_0+143 #start riscv_load_store_rand_instr_stream_8
                  sb           s6, 5(a1)
                  andi         s2, a1, -1133
                  lb           s11, -13(a1)
                  srl          a6, t3, ra
                  lb           t2, 14(a1)
                  lh           s0, -9(a1)
                  sub          a0, t3, tp
                  lh           s5, -9(a1)
                  auipc        ra, 256352
                  sb           a4, 13(a1)
                  lb           s9, -16(a1)
                  lui          a6, 125616
                  or           a4, a6, s6
                  add          ra, gp, s9
                  lui          a4, 942496
                  lui          s1, 93392
                  lh           t1, 15(a1)
                  sb           s9, 15(a1)
                  ori          s1, zero, -305
                  sra          s10, t0, zero
                  sltu         ra, s2, t3
                  lb           s3, 8(a1)
                  srai         s11, t2, 7
                  lb           a3, -9(a1)
                  auipc        ra, 343849
                  sltiu        t0, t3, 368
                  sll          t0, t0, t5
                  addi         a2, s10, -72
                  auipc        sp, 22718
                  lh           zero, 5(a1)
                  lb           a7, 8(a1)
                  sra          t0, s5, s5
                  sltu         a7, s9, s8
                  xor          zero, tp, sp
                  lbu          a6, 15(a1)
                  sb           tp, 14(a1)
                  srai         a0, a0, 9
                  slt          zero, a6, s0
                  sltiu        s1, s8, 1042
                  auipc        s1, 291461
                  sh           a2, 7(a1)
                  sltiu        a3, s3, 1744
                  sb           zero, 10(a1)
                  lbu          a4, 12(a1)
                  lbu          sp, -2(a1)
                  sw           a6, 9(a1) #end riscv_load_store_rand_instr_stream_8
                  slli         s3, t6, 17
                  bne          a7, t6, 1235f
                  xori         s9, gp, -1791
1231:             beq          zero, s2, 1235f
                  xor          s1, s10, a4
                  lui          sp, 244615
                  ori          s8, a1, 1679
1235:             bne          a3, s10, 1254f
                  la           a1, sub_6
                  sra          s1, t1, a4
                  addi         a1, a1, 697
                  or           sp, a3, t2
                  slt          s7, ra, a3
                  xor          zero, a5, tp
                  nop
                  andi         gp, s1, -1012
                  xori         t6, a5, 1574
sub_4_j7:         jalr         ra, a1, -697 #jump sub_4 -> sub_6
                  slli         s0, t2, 10
                  ori          a7, a4, -686
                  slli         a4, a1, 11
                  sub          a1, a5, a4
                  lui          s8, 8861
                  srai         a4, t1, 24
                  srai         s10, s3, 29
                  bltu         t5, s7, 1261f
                  ori          ra, t1, -343
                  or           a7, a3, ra
                  bgeu         ra, s11, 1259f
                  srl          t6, a5, a5
                  xor          a7, a3, a6
                  beq          zero, a4, 1262f
                  lui          sp, 176884
                  slt          sp, sp, t5
                  and          a4, s9, a5
                  srli         t2, s7, 11
1254:             bge          a3, s11, 1266f
                  or           s8, s10, s6
                  slli         t0, tp, 0
                  bltu         t2, s10, 1270f
                  sll          sp, t3, s11
1259:             nop
                  lui          a0, 125144
1261:             slti         sp, s2, 238
1262:             srli         s6, tp, 25
                  xor          t2, t6, a2
                  or           s11, s0, s2
                  srai         a4, s9, 28
1266:             beq          s1, a3, 1283f
                  sltu         s2, a1, t1
                  xor          s2, a4, t4
                  sra          t3, a4, s1
1270:             srai         s8, a4, 9
                  auipc        t3, 3080
                  sra          t0, s3, a6
                  or           s0, s0, s1
                  bne          s0, t0, 1282f
                  xori         s3, s9, 666
                  bge          a1, a7, 1291f
                  slt          s11, a3, s5
                  lui          a3, 27226
                  bge          t0, s8, 1289f
                  bge          a4, t4, 1293f
                  add          t0, gp, s1
1282:             lui          a5, 734721
1283:             srl          a0, a1, tp
                  srli         t2, s6, 18
                  sra          t2, t5, t1
                  la           s6, region_1+237 #start riscv_load_store_rand_instr_stream_6
                  slli         a2, t4, 4
                  srai         s5, a3, 15
                  sll          a3, a4, zero
                  nop
                  xor          a3, a6, s6
                  sb           t3, 9(s6)
                  sub          a3, s1, t4
                  sb           t4, -58(s6)
                  xor          t0, s6, a7
                  lbu          ra, 26(s6)
                  auipc        a5, 439126
                  sb           s2, 24(s6)
                  sltu         t2, s1, t5
                  addi         s8, t3, -1744
                  and          a0, t3, a5
                  lw           a1, 39(s6)
                  and          s11, tp, t5
                  sltiu        gp, t1, -789
                  lb           s1, -62(s6)
                  slt          t2, a6, t4
                  sb           t6, -44(s6)
                  slli         s10, s11, 13
                  sltu         a3, s3, a2
                  lui          s0, 95694
                  srl          a1, a4, a3
                  sra          sp, s0, s3
                  lbu          s0, 28(s6)
                  sub          s10, s2, t6
                  sh           s5, -43(s6)
                  sltiu        s2, a4, 936
                  lbu          t0, -50(s6)
                  lbu          t5, -58(s6)
                  sra          zero, a6, s0
                  auipc        sp, 367922
                  sb           a4, -14(s6)
                  ori          t6, sp, -1674
                  or           s0, a7, s11
                  and          s11, s9, t3
                  sb           s6, 60(s6)
                  sll          s1, s9, tp
                  sb           zero, 19(s6) #end riscv_load_store_rand_instr_stream_6
                  srli         a5, s9, 20
                  srai         a4, tp, 18
                  add          a2, gp, s2
1289:             auipc        sp, 499184
                  nop
1291:             sub          s2, a4, a5
                  lui          zero, 225656
1293:             andi         s0, t1, -1695
                  auipc        ra, 421282
                  nop
                  xori         s9, t4, -1806
                  and          a5, t1, s1
                  slli         t2, s1, 15
                  sub          s5, s9, t4
                  sll          a7, a5, s8
                  slti         a0, s8, -529
                  slt          ra, sp, t2
                  bltu         s3, a1, 1315f
                  slt          s0, s10, t2
                  lui          a7, 863705
                  sltiu        a5, a7, 1227
                  xori         a6, s9, -1219
                  xor          s5, a1, s8
                  bltu         ra, s6, 1322f
                  or           a5, s7, a3
                  lui          a0, 486547
                  ori          s10, a0, 668
                  srai         sp, t1, 6
                  sra          s3, s11, s5
1315:             addi         ra, t5, 1246
                  sltu         s1, s5, a1
                  sll          s7, gp, zero
                  srli         a6, a5, 28
                  slt          s6, t0, t4
                  bge          a7, s1, 1330f
                  addi         t6, sp, -746
1322:             srai         a7, t5, 19
                  bge          gp, zero, 1342f
                  sltu         a7, a7, s3
                  beq          s3, t3, 1332f
                  add          s3, zero, s9
                  add          sp, t1, a4
                  bge          s10, s5, 1334f
                  slli         t2, t0, 15
1330:             sra          t5, tp, s5
                  sltiu        s5, s1, -1336
1332:             srai         s7, ra, 18
                  and          a2, t1, a3
1334:             srai         s9, s4, 10
                  bltu         s2, s3, 1342f
                  auipc        a0, 250216
                  sra          ra, a1, sp
                  sra          t0, s10, a6
                  blt          a2, s5, 1347f
                  sltu         s7, t3, s9
                  beq          s6, s6, 1360f
1342:             slt          a6, s9, s6
                  srai         zero, s5, 27
                  or           s10, a1, s7
                  andi         s11, a7, 267
                  and          t3, a7, zero
1347:             sub          s9, t6, t1
                  xori         s0, tp, -1379
                  or           a1, s2, t6
                  sra          t3, gp, s9
                  lui          s1, 751675
                  sra          ra, a3, t3
                  slt          s3, a1, s8
                  xor          a6, a4, t4
                  sltu         s7, t4, a0
                  xor          s7, s4, tp
                  bltu         s8, s1, 1369f
                  and          a3, s2, s10
                  sll          s6, sp, s2
1360:             bgeu         a7, t0, 1374f
                  srl          s9, s3, sp
                  sll          s3, gp, s6
                  bltu         s8, a0, 1374f
                  lui          a1, 950780
                  bltu         s9, a3, 1377f
                  beq          t1, tp, 1378f
                  bne          t2, s4, 1378f
                  xori         a7, s3, 1821
1369:             lui          t0, 1034306
                  srl          t1, t0, s2
                  ori          a3, sp, 1266
                  nop
                  add          s3, a4, t5
1374:             srai         a2, zero, 25
                  addi         s2, zero, -121
                  andi         t2, s10, -52
1377:             or           s11, tp, t4
1378:             bgeu         a1, a6, 1384f
                  auipc        s5, 687168
                  srl          t3, s4, s7
                  sra          gp, s5, t2
                  sltiu        a4, a1, 1401
                  blt          a6, a4, 1396f
1384:             slti         a5, a5, -1186
                  xor          zero, s4, a2
                  sltiu        s5, gp, 1704
                  or           t6, tp, a3
                  xor          a2, a4, ra
                  slt          s8, t3, t2
                  bge          gp, t0, 1407f
                  xor          t0, s7, s7
                  la           a4, region_1+1030 #start riscv_load_store_rand_instr_stream_16
                  xori         s11, a6, -753
                  or           s10, s4, zero
                  lb           s9, -901(a4)
                  lbu          s8, -285(a4)
                  slli         s10, s5, 29
                  sb           tp, 100(a4)
                  lbu          s5, -348(a4)
                  lbu          a3, -748(a4)
                  slt          s1, s0, a5
                  lbu          t5, -221(a4)
                  srli         s5, a5, 2
                  lbu          s8, 279(a4)
                  or           s10, tp, s7
                  lui          s0, 52207
                  lb           t5, -909(a4)
                  lbu          t1, -763(a4)
                  sb           s3, -603(a4)
                  srli         s2, t1, 21
                  lhu          s2, 60(a4)
                  andi         gp, ra, -843
                  auipc        a7, 297917
                  xori         a3, a6, -1297
                  sb           a3, -156(a4)
                  sra          s11, t0, t4
                  lh           a0, -972(a4)
                  lb           a2, -937(a4)
                  lbu          a1, 435(a4)
                  and          a3, t5, t4
                  sb           s3, -64(a4)
                  sb           s3, 46(a4)
                  sb           gp, 698(a4)
                  lbu          s6, -172(a4)
                  sb           s4, -255(a4)
                  lb           s1, -1001(a4)
                  xor          s6, tp, s3
                  lbu          s11, 593(a4)
                  lbu          s10, -757(a4)
                  lbu          s9, -298(a4)
                  lb           a7, -369(a4)
                  lh           t0, -794(a4)
                  sub          a3, ra, sp
                  lb           t2, 243(a4)
                  lbu          a7, -749(a4) #end riscv_load_store_rand_instr_stream_16
                  bne          s10, t5, 1398f
                  sll          s6, sp, a0
                  sltiu        a7, a4, 843
                  ori          a0, ra, -494
1396:             addi         gp, s7, -1746
                  nop
1398:             beq          s9, a3, 1410f
                  andi         a7, s6, -398
                  andi         s2, s11, -486
                  srl          a5, s6, s3
                  sra          gp, a4, t3
                  lui          sp, 287008
                  add          sp, t3, s3
                  bne          s3, t5, 1418f
                  auipc        a2, 517367
1407:             bltu         a0, t4, 1415f
                  bgeu         s0, a1, 1414f
                  bne          s8, t3, 1419f
1410:             slli         s9, t3, 17
                  sub          s8, s7, a6
                  sltu         a4, sp, s6
                  srl          s1, t2, zero
1414:             xori         a0, t6, 1741
1415:             srai         t6, s0, 15
                  srli         t1, a7, 21
                  beq          s3, a6, 1424f
1418:             add          a7, s3, gp
1419:             slti         t3, t1, -1024
                  slli         t6, t4, 14
                  nop
                  bgeu         a1, s8, 1441f
                  sub          ra, a1, a1
1424:             sltiu        a0, s4, 114
                  srli         a3, tp, 6
                  and          a2, a6, ra
                  srli         t0, s5, 31
                  bne          s4, s2, 1436f
                  auipc        a3, 112386
                  ori          a4, a5, 1726
                  andi         a0, s10, -354
                  blt          a4, s8, 1436f
                  andi         s7, s2, -1320
                  sltu         s10, s6, t2
                  xor          a6, s1, t5
1436:             sltu         t6, s3, t5
                  bne          s1, a5, 1443f
                  sltu         s9, a4, s2
                  bne          a3, s10, 1449f
                  slli         s0, t6, 19
1441:             xori         t5, s3, -911
                  bltu         a1, t4, 1457f
1443:             addi         t2, a7, -1790
                  srai         s11, s5, 18
                  ori          a4, a5, 1508
                  slt          s9, s2, s5
                  srai         s10, a3, 30
                  xori         t3, s5, 6
1449:             slt          s10, s0, t5
                  bge          t1, t4, 1468f
                  srl          a2, s5, t5
                  and          sp, a3, tp
                  add          s10, t0, s8
                  sra          t5, zero, s10
                  nop
                  add          s5, s3, t6
1457:             or           s1, a1, a3
                  sltiu        a5, s1, -1154
                  xor          ra, s1, s7
                  sltiu        ra, s6, -119
                  srli         t2, s6, 30
                  xori         t6, s11, 74
                  lui          s10, 406018
                  srli         s7, a4, 1
                  slti         s3, sp, 1373
                  or           s6, a4, sp
                  beq          t0, s10, 1480f
1468:             auipc        a5, 121949
                  and          a0, a2, a5
                  nop
                  xori         s2, sp, -1132
                  and          a0, t0, s4
                  bltu         s1, a7, 1481f
                  addi         t1, s5, -972
                  ori          ra, s7, 1447
                  bltu         a0, zero, 1489f
                  blt          s5, t6, 1496f
                  xori         t2, a6, -1964
                  slli         s6, s6, 28
1480:             lui          a3, 634385
1481:             srl          s7, s0, s5
                  srl          s7, s0, a3
                  slti         sp, tp, -274
                  sub          s6, s1, t0
                  nop
                  srai         sp, s3, 11
                  nop
                  sltiu        t6, s9, -1099
1489:             srl          a6, a2, s7
                  and          gp, a0, s5
                  blt          t6, t0, 1497f
                  addi         a0, a5, -1150
                  slli         s6, t5, 17
                  srai         s11, a0, 26
                  ori          a2, tp, -935
1496:             nop
1497:             sll          s1, t2, t6
                  ori          s7, s4, -1221
                  add          a7, t1, s7
                  blt          s1, t1, 1514f
                  srli         s5, sp, 24
                  bne          a0, gp, 1515f
                  blt          s1, t1, 1504f
1504:             srli         a0, s3, 7
                  bgeu         zero, s3, 1512f
                  addi         s11, s8, 159
                  sll          ra, s4, s4
                  slti         t2, s6, 1214
                  andi         a7, s10, -1229
                  srai         s0, zero, 29
                  blt          a1, t6, 1530f
1512:             bne          zero, t2, 1527f
                  xori         s1, zero, -317
1514:             beq          sp, s6, 1518f
1515:             sltiu        a6, s3, -343
                  srai         t1, s3, 21
                  ori          a5, s2, -926
1518:             xor          a1, s3, t6
                  add          s0, s0, s11
                  beq          s6, s7, 1539f
                  bne          s10, s11, 1534f
                  sub          t0, s0, s8
                  bne          s11, t0, 1536f
                  ori          a1, a2, 1594
                  lui          a0, 940336
                  sub          s8, a1, s11
1527:             bge          a7, a4, 1533f
                  nop
                  bgeu         t0, a2, 1541f
1530:             bne          a6, sp, 1536f
                  add          t1, t3, a1
                  bge          t0, zero, 1538f
1533:             sltu         t3, t6, ra
1534:             bltu         s10, t1, 1552f
                  addi         sp, t5, -1409
1536:             sltu         s9, t5, s5
                  slli         zero, gp, 19
1538:             andi         a6, s3, 435
1539:             xor          a4, t6, s0
                  beq          t5, t5, 1552f
1541:             nop
                  nop
                  add          s8, a5, t0
                  sub          t1, a1, t2
                  nop
                  add          s11, t6, a5
                  xor          sp, t6, t6
                  add          a1, s11, s5
                  auipc        t6, 812559
                  bge          a2, s0, 1558f
                  slti         s8, tp, -60
1552:             slli         a2, s2, 20
                  bne          s7, sp, 1561f
                  srai         a0, gp, 8
                  srai         a3, gp, 26
                  andi         s0, t3, -217
                  bgeu         tp, t2, 1569f
1558:             andi         t2, s8, -1765
                  andi         a3, t4, -1654
                  andi         s7, s1, 188
1561:             andi         a5, t2, -1368
                  xori         t2, s5, -1339
                  lui          a3, 201804
                  srl          t2, s6, sp
                  andi         s0, a6, 1677
                  auipc        s9, 422222
                  lui          s10, 178522
                  bgeu         gp, s9, 1587f
1569:             bge          a7, s3, 1586f
                  bltu         a3, t0, 1584f
                  lui          t3, 253465
                  bgeu         t5, t6, 1582f
                  slti         t2, t3, 616
                  bne          s11, t1, 1580f
                  sub          s9, s2, s4
                  auipc        s11, 620768
                  bne          sp, a1, 1587f
                  bne          s8, a1, 1585f
                  srl          a3, t2, tp
1580:             srli         sp, s1, 15
                  lui          s9, 352067
1582:             slti         ra, t0, -1733
                  bltu         a2, s6, 1584f
1584:             andi         s6, t2, -384
1585:             auipc        a3, 365269
1586:             blt          s5, s5, 1605f
1587:             addi         t6, s6, -1397
                  slti         s10, a1, -1063
                  bltu         s9, s1, 1602f
                  bgeu         t6, t0, 1601f
                  xor          s9, a3, a4
                  sltu         a3, s4, s5
                  andi         sp, a3, -325
                  slli         gp, tp, 2
                  blt          s2, t6, 1608f
                  bgeu         s4, zero, 1602f
                  srl          s2, zero, a2
                  xori         a0, t0, 1669
                  or           a1, a5, a6
                  add          a6, ra, s8
1601:             xori         a3, s4, 1367
1602:             slti         a4, sp, 554
                  sltiu        sp, t4, -556
                  nop
1605:             sll          a5, a6, s2
                  xor          s1, tp, sp
                  and          s10, a4, s7
1608:             slti         s3, zero, 9
                  bltu         a7, t4, 1622f
                  bltu         t5, zero, 1617f
                  auipc        t2, 712369
                  beq          s0, a5, 1620f
                  nop
                  bltu         t1, t6, 1624f
                  auipc        s7, 370013
                  bne          sp, t0, 1626f
1617:             bltu         s0, t1, 1636f
                  and          a5, t0, t5
                  auipc        sp, 243634
1620:             addi         s11, a1, -23
                  beq          a3, s10, 1633f
1622:             xor          t0, s6, s11
                  nop
1624:             sltiu        s2, s8, -1588
                  andi         s10, s3, -1099
1626:             beq          gp, zero, 1639f
                  srai         t3, t6, 14
                  xori         s8, t6, -1010
                  xori         s7, zero, -929
                  beq          t5, t5, 1636f
                  bgeu         sp, s8, 1632f
1632:             sra          a4, a0, s0
1633:             xori         ra, tp, -955
                  slli         t5, s10, 13
                  srl          s8, s9, s10
1636:             slli         t1, s1, 16
                  andi         s3, t4, 332
                  ori          ra, t1, 1881
1639:             add          s3, sp, a2
                  xor          zero, s5, s3
                  srai         a3, s10, 15
                  sll          a0, t4, a7
                  addi         t3, a0, -22
                  andi         s9, s8, 1694
                  nop
                  slli         a4, s11, 9
                  add          s1, t6, s5
                  srl          s5, s11, s6
                  andi         s11, ra, 509
                  sltu         s6, s9, t5
                  sra          zero, s3, a0
                  or           a5, sp, a5
                  andi         ra, a0, 1335
                  sub          s2, t0, zero
                  sltu         a3, a3, t2
                  and          s11, s4, a4
                  and          s7, s4, t0
                  xor          t6, t5, s4
                  add          t6, a6, a4
                  srl          t1, sp, a5
                  and          zero, t5, s1
                  addi         s10, sp, 1223
                  bltu         t2, s6, 1677f
                  sltiu        s6, s8, -1138
                  srl          a2, t6, t1
                  bge          a1, s7, 1681f
                  sra          a4, a0, tp
                  lui          t2, 2741
                  slli         s5, t6, 30
                  bge          sp, t4, 1682f
                  ori          a4, s8, -1261
                  andi         s9, a3, -866
                  slt          s8, s0, a0
                  slli         s9, s3, 24
                  and          s1, s9, s5
                  xor          a3, a4, a7
1677:             srai         s5, a3, 11
                  srai         a5, t4, 0
                  addi         s7, ra, -704
                  add          a0, s4, t4
1681:             lui          a5, 371334
1682:             ori          s6, s8, 426
                  ori          s6, s9, 133
                  sltiu        a7, s10, -1460
                  sll          a4, s9, a4
                  lui          ra, 560564
                  xor          a5, s2, s6
                  lui          s8, 369680
                  srli         a5, s3, 17
                  or           t5, t2, t5
                  andi         a2, ra, -337
                  blt          s2, zero, 1698f
                  xori         t5, s0, -1168
                  srai         t0, s5, 18
                  add          s7, tp, s8
                  srl          t3, a4, s5
                  bgeu         a0, s0, 1716f
1698:             add          s0, t3, sp
                  auipc        t0, 1042330
                  andi         a5, s10, 365
                  bgeu         s5, s1, 1719f
                  bltu         t1, s3, 1721f
                  srai         a1, s4, 23
                  nop
                  andi         s10, t6, 82
                  srai         a2, a4, 13
                  xori         s10, s2, 562
                  and          s1, gp, sp
                  sll          s11, a0, s0
                  nop
                  auipc        a7, 841442
                  bge          zero, a4, 1720f
                  bge          s6, t3, 1719f
                  bltu         t1, t3, 1731f
                  srai         ra, s9, 17
1716:             bgeu         t0, s11, 1729f
                  andi         s3, a2, 276
                  sltiu        s9, a3, 223
1719:             bne          s7, a4, 1726f
1720:             ori          s6, s6, -286
1721:             andi         s5, a4, 1609
                  lui          s11, 684867
                  slti         a3, t6, -994
                  slti         s10, a7, 1270
                  bge          tp, t4, 1733f
1726:             slt          s11, t1, a7
                  sltu         s3, t2, t2
                  or           sp, a5, sp
1729:             nop
                  nop
1731:             slti         t0, a3, 1986
                  beq          a1, a1, 1738f
1733:             srai         t2, zero, 15
                  slti         t1, s1, 733
                  slli         a5, a3, 15
                  bltu         s9, a0, 1747f
                  slti         a2, sp, 1326
1738:             sll          zero, zero, t5
                  sra          t0, s9, t3
                  nop
                  srl          t0, tp, ra
                  slt          a0, a1, a0
                  slti         s11, s11, 1281
                  lui          a1, 663153
                  addi         sp, s5, -1949
                  beq          sp, s6, 1759f
1747:             addi         gp, sp, -1395
                  beq          s10, a3, 1752f
                  addi         s10, t5, 1102
                  auipc        s9, 869452
                  bne          a1, t3, 1758f
1752:             and          ra, a7, s6
                  blt          s11, t6, 1766f
                  sltiu        t3, t2, -560
                  nop
                  srli         zero, a1, 18
                  ori          s2, t2, -893
1758:             andi         a6, t3, 1329
1759:             bge          ra, s0, 1771f
                  slti         a7, a6, 919
                  sll          s8, t6, a3
                  bltu         a4, zero, 1768f
                  xori         sp, a7, -1102
                  lui          s11, 1035340
                  srli         t3, a7, 3
1766:             sll          t2, t0, s0
                  addi         a1, t2, -1316
1768:             bgeu         a2, s4, 1781f
                  addi         s9, zero, 157
                  sub          a1, a0, t0
1771:             addi         t1, t1, -1996
                  blt          s0, s6, 1780f
                  and          s1, s6, gp
                  lui          sp, 557772
                  xor          s9, s10, s2
                  ori          s8, ra, -288
                  sra          t1, t2, s6
                  sra          s6, s11, s3
                  xor          s9, s5, t1
1780:             bne          s0, a0, 1786f
1781:             srl          t3, t0, s4
                  sltu         ra, a6, t2
                  slti         a7, tp, 583
                  addi         gp, a2, -1612
                  slli         s5, a2, 6
1786:             andi         t3, t5, -913
                  bltu         s2, gp, 1795f
                  sltu         a5, a4, s0
                  bgeu         s5, sp, 1795f
                  sltiu        s2, a3, 1251
                  sll          s1, s8, s2
                  bne          s11, s7, 1796f
                  addi         a4, ra, 1071
                  slli         t3, gp, 10
1795:             blt          t1, a1, 1801f
1796:             srai         a6, s11, 23
                  auipc        t3, 491839
                  addi         t1, a2, -502
                  xor          a3, sp, a6
                  ori          t2, a0, -1750
1801:             slli         s2, t4, 7
                  slti         t5, a6, 743
                  add          a6, a3, a6
                  la           a7, region_1+33 #start riscv_load_store_rand_instr_stream_18
                  sb           a6, 1648(a7)
                  srl          ra, a6, gp
                  xor          s11, t5, t4
                  andi         s11, t4, 177
                  nop
                  lhu          a4, 983(a7)
                  sra          s2, s3, zero
                  lbu          s1, 1766(a7)
                  lhu          gp, 793(a7)
                  sb           t2, 1664(a7)
                  sltu         s11, a7, s0
                  srl          s1, a4, a0
                  sltu         s10, sp, s11
                  add          s6, sp, a5
                  slti         t5, s2, -760
                  lb           s9, 389(a7)
                  xori         s9, a3, 1959
                  andi         t1, s10, -1105
                  xori         t6, s4, 839
                  srli         a3, s7, 2
                  lbu          s3, 76(a7)
                  auipc        a6, 234297
                  xori         t6, a0, 605
                  xor          s3, s10, t3
                  lb           gp, 1784(a7)
                  sb           s11, 1546(a7)
                  and          t3, s11, s8
                  xor          sp, a0, s7
                  srai         s2, gp, 22
                  sb           a2, 1010(a7)
                  lh           a3, 1801(a7)
                  lh           s8, 1161(a7)
                  lbu          a5, 1402(a7)
                  slt          t2, t2, sp
                  sb           t0, 921(a7)
                  sh           s11, 1389(a7)
                  lb           zero, 1296(a7)
                  sb           t2, 558(a7)
                  sb           t0, 710(a7)
                  sll          a2, s5, gp
                  srli         s8, tp, 0
                  sb           s7, 262(a7)
                  lbu          a2, 1837(a7)
                  auipc        t6, 828410
                  lb           s5, 1630(a7)
                  slt          s1, s2, s10
                  slli         ra, t5, 10
                  sub          a0, t6, s11
                  sltu         a3, s1, a7
                  lbu          a3, 1056(a7)
                  sb           a7, 198(a7)
                  slli         gp, a0, 16
                  lb           a1, 44(a7)
                  lbu          s7, 1212(a7) #end riscv_load_store_rand_instr_stream_18
                  nop
                  sll          a1, t4, a7
                  ori          t5, zero, -1432
                  andi         sp, s0, -8
                  bne          t1, a0, 1823f
                  lui          a7, 16046
                  xor          a6, a7, zero
                  srai         s5, tp, 23
                  lui          a6, 227486
                  sltiu        gp, s8, -313
                  beq          gp, a5, 1827f
                  sll          s9, t6, t2
                  slt          s11, t5, gp
                  sra          t2, a1, t6
                  nop
                  or           a6, a7, s1
                  xori         a3, a1, 701
                  sltiu        s1, s7, 1810
                  bge          t4, t4, 1841f
1823:             xori         t6, t0, -1660
                  sra          s1, s1, s3
                  bltu         t1, s4, 1837f
                  srl          a2, s8, gp
1827:             sub          a7, s5, s5
                  xori         s5, s9, -1437
                  andi         a7, s11, -466
                  xori         s9, a4, 1845
                  andi         t2, sp, -898
                  sltu         s5, tp, zero
                  beq          t0, s6, 1843f
                  beq          ra, s8, 1851f
                  xor          s0, a0, s8
                  addi         s6, a3, 118
1837:             nop
                  slti         sp, zero, 1228
                  sltu         sp, a3, a2
                  add          t5, s8, a6
1841:             beq          a3, t3, 1848f
                  srli         gp, s5, 13
1843:             bge          a6, gp, 1849f
                  xor          s10, s6, s3
                  sra          sp, t1, gp
                  andi         t0, t0, -827
                  ori          gp, a7, 1020
1848:             sub          s2, a0, ra
1849:             or           a2, t5, s9
                  slli         gp, a6, 18
1851:             auipc        a3, 156994
                  bge          a2, t4, 1864f
                  xor          s5, s1, ra
                  srl          t5, sp, a4
                  bne          s0, t2, 1868f
                  or           gp, t2, s6
                  and          ra, t2, t0
                  xori         t2, a4, 1701
                  sll          s2, a4, a7
                  slli         t6, a2, 10
                  bge          s8, tp, 1873f
                  xor          s6, a3, a5
                  srai         s3, a4, 14
1864:             xori         zero, ra, 1472
                  sra          t1, s8, a4
                  sra          t1, t6, a6
                  sra          sp, a0, s6
1868:             and          zero, a0, a4
                  bltu         s11, t4, 1882f
                  ori          ra, s3, 1540
                  bltu         s9, t1, 1877f
                  ori          s3, a3, -265
1873:             sra          a3, s0, ra
                  bgeu         a0, t1, 1885f
                  sltiu        a7, s1, -1940
                  slli         t0, a0, 2
1877:             slt          a7, a3, a5
                  lui          a1, 795187
                  bltu         t5, t2, 1892f
                  xori         a6, sp, 844
                  xori         a6, s2, 981
1882:             blt          ra, a6, 1901f
                  srl          t3, t1, s2
                  sll          s0, s2, t5
1885:             sltiu        a4, tp, 1703
                  xor          s2, a2, s9
                  srai         a5, a5, 26
                  slt          a2, a7, a4
                  bgeu         a4, t1, 1897f
                  srl          s3, a4, s8
                  lui          t3, 524667
1892:             addi         ra, a7, 1688
                  auipc        ra, 62172
                  xori         s3, s10, 1840
                  sub          s6, t0, a6
                  beq          s5, ra, 1904f
1897:             bne          a5, t5, 1915f
                  slti         s9, s9, -312
                  lui          s3, 746214
                  andi         s0, a0, -499
1901:             bgeu         s0, tp, 1911f
                  sra          t3, a3, s1
                  sub          t0, s1, s11
1904:             sll          a4, zero, s3
                  srai         t3, a3, 8
                  nop
                  sltu         s11, gp, a1
                  andi         ra, s8, 389
                  srai         a7, s1, 24
                  srai         ra, s8, 27
1911:             sra          a4, s7, a3
                  and          a7, s4, s3
                  or           s2, a5, t0
                  and          a7, t4, sp
1915:             srai         a6, a6, 28
                  bne          s9, t3, 1930f
                  bltu         t1, s0, 1930f
                  bltu         s9, t0, 1919f
1919:             slli         t1, s2, 9
                  sltiu        a4, s11, -176
                  addi         t6, s0, 541
                  or           s1, t2, gp
                  nop
                  bltu         s1, sp, 1931f
                  beq          s4, gp, 1944f
                  bgeu         s2, ra, 1945f
                  nop
                  and          ra, t3, a7
                  addi         s3, tp, 1410
1930:             bltu         s6, gp, 1941f
1931:             lui          a3, 1032413
                  slt          s8, s9, s8
                  slli         a4, t2, 15
                  sll          a6, s8, ra
                  xori         a2, s11, 592
                  sub          a5, s5, t1
                  nop
                  nop
                  sra          s7, a6, zero
                  bltu         tp, zero, 1957f
1941:             andi         s1, s4, -969
                  bne          a6, t2, 1957f
                  sra          a0, t5, s7
1944:             sra          s0, t0, s8
1945:             xori         s11, t5, -137
                  or           s5, a4, s9
                  srl          s0, s5, a0
                  bgeu         s5, t4, 1961f
                  sltu         ra, t0, t2
                  xor          t6, a3, s9
                  beq          ra, s10, 1959f
                  srli         s2, t3, 30
                  sll          zero, zero, a2
                  bgeu         s1, t6, 1960f
                  and          zero, sp, s9
                  or           t1, gp, t2
1957:             add          a0, a3, t3
                  auipc        s1, 921022
1959:             sll          s1, s11, t0
1960:             sra          s8, tp, s8
1961:             sltiu        gp, tp, 1475
                  xori         s5, zero, -610
                  nop
                  xori         s3, a3, 852
                  slli         s3, s4, 27
                  slt          t0, t2, t1
                  nop
                  sra          ra, a0, s6
                  slt          t1, s11, s3
                  sll          s11, t2, s10
                  sub          s9, t5, a7
                  srli         ra, zero, 2
                  and          a3, a7, t3
                  xor          t3, a2, s1
                  ori          t6, s7, -706
                  auipc        s2, 39091
                  sub          a5, s4, s3
                  andi         s3, a3, 1921
                  bltu         a4, s9, 1985f
                  andi         s10, tp, 2040
                  srai         t6, tp, 4
                  addi         s11, t1, -1802
                  addi         a3, s4, -392
                  lui          a6, 4025
1985:             sub          a0, a6, s8
                  and          t2, a1, t6
                  beq          s1, a6, 2006f
                  sll          a1, t4, a2
                  slti         a7, t6, 52
                  xori         a6, s4, -1346
                  srai         a4, s3, 25
                  bltu         s5, a2, 1998f
                  beq          a5, s2, 2000f
                  or           a7, t1, zero
                  ori          sp, s10, 826
                  auipc        s10, 405452
                  and          sp, t6, ra
1998:             bne          s5, s6, 2008f
                  beq          t2, ra, 2006f
2000:             bgeu         t1, s7, 2006f
                  sltu         t0, a2, t0
                  slti         gp, sp, -917
                  sra          t0, t6, a6
                  sltu         a6, ra, t5
                  sll          t1, a5, tp
2006:             sltiu        t0, a2, 1163
                  add          t0, a5, t1
2008:             srl          zero, s1, a0
                  beq          s9, s4, 2023f
                  sll          a7, zero, a6
                  xori         a3, a2, 1743
                  add          a5, s8, zero
                  slt          t3, a3, s7
                  blt          a7, gp, 2015f
2015:             bge          tp, ra, 2023f
                  and          s8, a5, a0
                  srl          t3, zero, s3
                  slt          s5, s1, s4
                  sltu         zero, a6, ra
                  sra          a5, s10, zero
                  andi         s1, s4, -1937
                  slli         s11, a2, 4
2023:             add          s3, tp, s6
                  bltu         s10, s4, 2034f
                  and          a0, s5, s4
                  bge          t5, t4, 2034f
                  and          t0, s2, s9
                  sra          gp, s11, s0
                  xori         t5, a6, 821
                  auipc        s6, 948882
                  addi         s10, tp, 159
                  addi         t6, sp, 1636
                  xor          a6, zero, t2
2034:             nop
                  auipc        s9, 541932
                  lui          gp, 534437
                  add          s0, s9, a6
                  and          ra, a5, t6
                  srl          t2, s9, a2
                  sra          t3, s1, zero
                  beq          s8, s11, 2053f
                  blt          s10, s5, 2055f
                  srl          s3, a4, a1
                  bgeu         a2, t6, 2056f
                  addi         s11, a6, 496
                  auipc        a3, 63749
                  bne          a3, a0, 2060f
                  bge          t0, s1, 2054f
                  auipc        a2, 395229
                  blt          t6, s10, 2054f
                  slti         s8, s8, -230
                  slli         sp, a3, 0
2053:             srai         t6, a3, 2
2054:             andi         a7, a5, -1956
2055:             sltiu        s8, sp, 1129
2056:             bne          a7, s5, 2075f
                  xor          t5, s0, zero
                  slli         s6, a7, 31
                  and          s11, ra, t6
2060:             sll          zero, a0, a1
                  lui          s8, 946722
                  nop
                  bgeu         s1, s10, 2075f
                  sub          a7, t1, s4
                  andi         s9, a0, 1120
                  bge          s6, t1, 2079f
                  and          t6, a1, s7
                  bltu         s4, a5, 2086f
                  srli         a0, t2, 23
                  addi         s7, s11, -1026
                  andi         a3, s10, -1192
                  srai         t5, tp, 18
                  sra          a1, t0, s5
                  addi         a3, s10, 811
2075:             srl          t3, t3, a3
                  addi         a1, a3, 1132
                  add          a4, s4, a7
                  bgeu         gp, a5, 2091f
2079:             bne          a5, s0, 2087f
                  add          a3, s1, s2
                  srl          s6, s4, s2
                  lui          gp, 241454
                  or           s6, a2, zero
                  sll          a2, a6, a5
                  bge          t6, a2, 2097f
2086:             blt          t4, s9, 2101f
2087:             nop
                  bgeu         t0, s4, 2100f
                  and          gp, s2, s0
                  bne          s1, ra, 2108f
2091:             bgeu         s3, ra, 2102f
                  addi         s7, s3, 228
                  srl          t6, s3, t1
                  sra          gp, a0, a0
                  srl          a3, zero, a6
                  srli         a0, s1, 7
2097:             bltu         s11, a7, 2104f
                  or           s6, a3, s0
                  or           t2, a4, ra
2100:             nop
2101:             sub          a0, s4, a2
2102:             srai         a3, a6, 2
                  sltu         s10, sp, a3
2104:             beq          tp, a5, 2110f
                  sra          s3, a2, sp
                  addi         s2, s9, -48
                  sub          sp, a6, t0
2108:             xor          a6, s8, t6
                  slti         t5, s1, -1766
2110:             bgeu         s2, t6, 2123f
                  slt          a2, s4, s7
                  srli         a7, s8, 27
                  lui          s1, 349795
                  bltu         t3, sp, 2120f
                  bge          s10, zero, 2134f
                  addi         s10, gp, 1362
                  srl          a3, s5, t0
                  sll          sp, t4, s6
                  bltu         a5, t0, 2125f
2120:             sub          s11, gp, a3
                  slti         a0, t2, 1487
                  beq          s4, s6, 2136f
2123:             bne          a1, a4, 2135f
                  and          a4, a4, a0
2125:             and          gp, a7, s5
                  bge          t4, a1, 2139f
                  and          s2, s9, ra
                  xori         s0, a1, -990
                  beq          a3, a6, 2139f
                  and          t3, s0, t6
                  bltu         a1, t4, 2148f
                  addi         s5, ra, -378
                  xori         a5, t1, -496
2134:             sll          a7, ra, a7
2135:             add          s5, a7, s6
2136:             or           t0, t0, s5
                  slti         gp, sp, 282
                  bge          s0, a6, 2146f
2139:             srai         a4, a6, 6
                  sltu         t2, ra, t1
                  ori          a3, a6, -1683
                  sub          s3, t1, a2
                  and          t3, s3, s11
                  slti         s3, s3, 942
                  sub          t5, sp, t4
2146:             slt          a6, s4, t4
                  bge          t6, t1, 2155f
2148:             and          s11, t2, a0
                  sltiu        t3, gp, -1865
                  bne          gp, gp, 2157f
                  bge          a4, s3, 2170f
                  auipc        a2, 710577
                  addi         a6, s9, 700
                  slli         a3, t3, 29
2155:             xori         t3, a4, 1940
                  add          a0, sp, a5
2157:             slli         s2, t5, 22
                  sra          s9, s7, ra
                  andi         a6, a3, 341
                  ori          t3, zero, 1508
                  nop
                  and          t0, a6, a5
                  xor          s6, gp, ra
                  and          t5, t5, tp
                  slti         gp, a5, 1544
                  nop
                  nop
                  add          a3, t6, gp
                  sltiu        s11, t1, -1678
2170:             addi         s3, a7, 1725
                  add          t0, sp, a7
                  sltu         s10, a1, s0
                  slt          t2, a5, a2
                  srl          ra, s7, a0
                  bgeu         zero, s5, 2194f
                  sub          s11, t5, t4
                  add          gp, a1, t2
                  sll          a1, t2, s8
                  sub          s9, a7, a2
                  bltu         tp, s0, 2181f
2181:             srai         a7, ra, 15
                  sltiu        zero, s6, 83
                  andi         a6, s0, 937
                  ori          a7, t0, 311
                  srl          s11, zero, sp
                  slti         a7, s7, 1869
                  sltu         a3, a6, t6
                  auipc        ra, 736034
                  slli         s9, t5, 11
                  add          t3, sp, s8
                  andi         a7, a6, 1440
                  sll          s6, a4, s9
                  slt          s11, zero, s7
2194:             srl          ra, t4, t2
                  xor          s7, t2, s6
                  bge          s9, a6, 2206f
                  blt          t3, a6, 2201f
                  bne          a4, t5, 2211f
                  or           a3, t4, t6
                  slli         a0, t5, 31
2201:             xor          a7, a2, zero
                  or           a1, t0, a3
                  slli         a5, s2, 20
                  bltu         s0, s6, 2217f
                  add          s1, t0, ra
2206:             or           a6, a3, s8
                  srli         a1, t3, 26
                  srai         zero, a4, 10
                  bltu         sp, s8, 2215f
                  sltu         sp, s6, a3
2211:             slt          s0, s6, zero
                  xori         s11, t5, 1276
                  sra          a3, t6, t6
                  slti         s0, s11, -1036
2215:             sll          a7, t5, t3
                  srai         ra, t0, 7
2217:             srl          ra, t0, sp
                  sub          t3, a7, t0
                  beq          sp, s4, 2225f
                  xor          t6, a0, t5
                  and          s11, s2, s8
                  sra          a7, t0, t1
                  xori         s6, a7, 1328
                  sub          t1, ra, t2
2225:             or           t6, s8, s5
                  srl          t2, t2, sp
                  xor          sp, t6, a6
                  slli         s7, a6, 13
                  slti         a5, s0, -2033
                  sll          t5, a6, ra
                  sltiu        zero, a1, -1089
                  and          t6, gp, a6
                  sll          t1, s1, tp
                  auipc        t3, 719826
                  sra          s7, a4, t2
                  sltiu        s5, a0, 229
                  andi         t6, t3, -1843
                  srl          s5, a5, a2
                  slli         s5, a6, 7
                  blt          s6, s4, 2253f
                  addi         s9, t0, -2027
                  sub          s2, a7, s0
                  bne          s3, s5, 2249f
                  blt          a7, a3, 2259f
                  srl          s9, t4, s10
                  andi         s1, s5, -664
                  auipc        s2, 530803
                  xor          t0, s6, t5
2249:             addi         s2, a3, 991
                  srli         gp, s10, 20
                  and          s2, ra, t6
                  srl          t2, s11, a7
2253:             xori         t5, s6, -886
                  sltu         t6, a1, s4
                  bgeu         ra, a3, 2268f
                  or           t2, s11, tp
                  beq          ra, a5, 2265f
                  srli         t0, s4, 8
2259:             blt          sp, a4, 2267f
                  add          a2, t0, gp
                  srli         ra, s3, 3
                  slt          ra, t2, s1
                  srli         s11, t3, 16
                  lui          s5, 422517
2265:             bne          t1, t3, 2278f
                  blt          a1, zero, 2283f
2267:             slt          a6, a7, t1
2268:             sll          s11, t1, s4
                  lui          a6, 599110
                  beq          s1, a7, 2284f
                  xor          a3, sp, a4
                  slt          s11, a0, s1
                  slt          s0, a7, s5
                  blt          ra, t0, 2286f
                  slti         zero, s2, -1890
                  slt          sp, s1, sp
                  ori          s3, a3, -52
2278:             add          a6, s10, t4
                  srai         s11, t1, 20
                  srai         s1, a6, 14
                  sra          a5, a1, t0
                  sub          t6, s4, s8
2283:             nop
2284:             sltiu        a7, s3, 594
                  and          t6, t6, a5
2286:             slt          a4, s7, zero
                  bge          ra, s6, 2291f
                  blt          s7, s8, 2307f
                  andi         t0, a0, 1053
                  slti         s8, s2, 166
2291:             xori         t2, a0, -2038
                  bltu         a5, s7, 2298f
                  slti         a1, s11, 705
                  xori         t5, s10, -1990
                  srai         t0, t3, 13
                  slt          sp, t2, s2
                  slt          s3, s8, gp
2298:             srl          a1, ra, s6
                  slli         s10, a2, 19
                  blt          a5, s2, 2308f
                  sltu         sp, s10, s7
                  srli         a2, a3, 2
                  lui          a5, 765825
                  sltiu        a7, a6, 1924
                  bge          t2, s2, 2312f
                  xori         t3, s4, 1683
2307:             xori         sp, a1, -1866
2308:             nop
                  add          a5, t3, t0
                  srai         s5, a3, 20
                  andi         s3, zero, -1870
2312:             sll          t0, t2, s5
                  sltiu        s10, s2, -1232
                  slli         ra, s5, 14
                  bgeu         t0, s5, 2322f
                  lui          a0, 584380
                  nop
                  bne          sp, zero, 2328f
                  sra          a7, s11, s0
                  sltu         a6, tp, a4
                  sub          t2, a4, zero
2322:             sltiu        a7, s10, -699
                  and          a1, t6, s6
                  and          s5, s9, s8
                  xor          s3, s8, a7
                  addi         s10, s11, -250
                  srai         t5, s0, 24
2328:             xori         s6, t6, -636
                  auipc        ra, 188455
                  xor          s8, a4, ra
                  or           s7, gp, s10
                  blt          s11, t6, 2351f
                  slli         sp, gp, 0
                  slli         s0, s3, 29
                  slti         a4, t1, -240
                  lui          t3, 361041
                  sll          t0, t6, sp
                  add          s0, t0, a4
                  beq          s0, s1, 2345f
                  and          s7, s6, t5
                  bne          s2, s9, 2354f
                  nop
                  slli         s8, s0, 16
                  sltu         s11, a1, s8
2345:             sltu         a6, s10, a7
                  srl          t6, ra, t6
                  lui          gp, 322592
                  ori          s10, s8, -1900
                  xor          a2, a1, a0
                  slti         sp, t1, -1437
2351:             srl          t6, s11, s7
                  srl          t6, s10, s5
                  sll          s10, a7, s3
2354:             slti         s3, s6, 1437
                  slli         sp, t1, 2
                  sra          s3, ra, s3
                  nop
                  bge          s2, s4, 2369f
                  bne          s10, s8, 2360f
2360:             beq          gp, t3, 2370f
                  slt          s11, s0, a1
                  srli         t1, t2, 17
                  srli         t2, a7, 25
                  slli         s10, a0, 25
                  sltiu        s1, s5, -824
                  andi         a6, s3, -2014
                  auipc        t1, 391754
                  slti         sp, s4, 1618
2369:             sll          a1, s2, a4
2370:             slt          t6, t3, s0
                  sub          a6, t3, s0
                  slti         s10, zero, 861
                  bltu         s5, s10, 2379f
                  sll          a7, t4, sp
                  bne          a0, t3, 2394f
                  bne          s6, t3, 2388f
                  srl          s2, s8, t4
                  nop
2379:             slli         a2, s11, 29
                  ori          s6, a3, -1138
                  slti         s8, a6, 1956
                  addi         s8, s7, 562
                  bgeu         a0, s1, 2396f
                  bne          s9, sp, 2402f
                  sltiu        t1, a3, -1460
                  xori         s3, s10, -1864
                  sub          sp, a7, s3
2388:             srl          s6, t0, s2
                  sltiu        s6, s5, 613
                  lui          s8, 133323
                  srl          s5, gp, zero
                  sll          s7, s4, s2
                  blt          a2, s0, 2399f
2394:             blt          t1, t4, 2406f
                  addi         s7, ra, -586
2396:             srai         s6, gp, 4
                  xor          s2, ra, s6
                  bltu         t0, s6, 2411f
2399:             bge          a1, s0, 2407f
                  lui          s10, 690975
                  bge          s7, s4, 2407f
2402:             lui          s8, 61384
                  xor          s3, a1, t1
                  xor          a0, t1, a4
                  slti         ra, ra, 1677
2406:             srai         s9, tp, 25
2407:             xori         sp, gp, -2018
                  beq          t2, sp, 2420f
                  slti         zero, t4, -248
                  blt          t5, a5, 2418f
2411:             add          a7, t1, s6
                  sll          a0, a1, t5
                  srl          a1, sp, s11
                  ori          t6, tp, 616
                  or           sp, t4, ra
                  auipc        a4, 1045550
                  bltu         s4, a2, 2423f
2418:             blt          t2, s5, 2431f
                  ori          s2, s0, -457
2420:             add          a5, a5, s9
                  slti         sp, t2, 1020
                  sltiu        gp, t5, -54
2423:             beq          a3, a4, 2427f
                  srli         a1, a2, 23
                  ori          t0, zero, 429
                  slt          t0, s6, sp
2427:             sltiu        a5, a1, -1422
                  bgeu         s2, s11, 2435f
                  auipc        s0, 92957
                  nop
2431:             sltu         s11, s5, s0
                  sll          t6, a6, t1
                  xori         s5, s4, -1637
                  xori         t2, t3, -475
2435:             xor          a4, t2, a7
                  add          a6, s7, s6
                  srli         zero, s2, 8
                  xori         t5, a7, 1043
                  addi         a2, t4, 1299
                  srai         s2, gp, 14
                  auipc        s0, 57063
                  ori          s6, t6, 1152
                  or           s10, s6, sp
                  blt          s2, s4, 2445f
2445:             slli         ra, t0, 9
                  blt          s5, s11, 2458f
                  bgeu         s8, s0, 2466f
                  sltu         zero, t2, s8
                  sltu         s9, t0, s5
                  auipc        s11, 687668
                  nop
                  bltu         s9, s4, 2465f
                  addi         a4, gp, -389
                  xori         a1, t3, -1069
                  bltu         a1, s0, 2466f
                  bltu         s3, s6, 2469f
                  srai         zero, a4, 4
2458:             or           s10, a2, ra
                  andi         s6, t6, -349
                  bne          gp, a2, 2474f
                  nop
                  blt          s1, t2, 2481f
                  sltu         zero, a1, t2
                  beq          t5, s10, 2479f
2465:             auipc        a4, 234130
2466:             bne          s5, s5, 2485f
                  or           t5, s7, t4
                  slti         t5, a0, 1147
2469:             bne          sp, zero, 2475f
                  slt          s5, s5, a6
                  or           s3, s8, a4
                  nop
                  and          a1, s2, sp
2474:             and          t5, t0, s4
2475:             blt          a4, a6, 2481f
                  lui          s2, 383872
                  lui          s2, 797734
                  slli         s8, s7, 6
2479:             add          s1, a7, a2
                  srli         sp, t2, 13
2481:             xori         a5, a1, -1445
                  sll          gp, s4, zero
                  xor          s8, s7, s0
                  andi         t6, t4, 1238
2485:             bltu         a1, a0, 2498f
                  slli         t3, t2, 1
                  blt          s2, s5, 2495f
                  sra          t6, a6, s4
                  sltiu        t2, t0, 1446
                  slli         t0, t4, 27
                  bne          gp, s7, 2497f
                  lui          s2, 398885
                  slt          t2, zero, s0
                  ori          zero, a4, -874
2495:             lui          a1, 403866
                  xori         t3, t6, 1019
2497:             srai         s10, s0, 12
2498:             srli         s11, ra, 20
                  auipc        a1, 855955
                  srli         s3, sp, 27
                  andi         a4, t3, -1598
                  slt          t1, s4, tp
                  srl          t6, a1, s4
                  or           s5, t5, t0
                  bge          s4, s4, 2512f
                  bge          s3, t1, 2524f
                  ori          s11, gp, 877
                  bne          s9, a2, 2518f
                  bne          t3, sp, 2522f
                  srai         s6, a7, 31
                  add          a4, t5, t0
2512:             slli         t1, s9, 2
                  bltu         ra, t0, 2525f
                  sra          t6, t1, t6
                  addi         a2, t6, -142
                  auipc        s3, 495806
                  sll          s8, gp, t6
2518:             srl          t6, gp, s4
                  bge          s11, a6, 2529f
                  sltu         a4, s10, s3
                  ori          t5, t2, 1307
2522:             lui          a6, 219355
                  sra          t2, a7, a5
2524:             auipc        zero, 1006980
2525:             xor          ra, gp, sp
                  blt          tp, s8, 2543f
                  sltiu        a0, s7, 137
                  srai         a6, t4, 19
2529:             slt          s2, t1, a5
                  sra          s2, t2, gp
                  bge          a4, t5, 2539f
                  srl          a0, s8, sp
                  andi         a0, s1, -115
                  and          s1, s10, sp
                  bge          a4, sp, 2548f
                  addi         ra, a0, -867
                  srli         a1, a6, 22
                  auipc        a3, 888781
2539:             lui          t5, 399871
                  srli         a3, gp, 17
                  srl          s1, s7, t2
                  beq          s5, s1, 2548f
2543:             add          t1, a4, sp
                  bne          s6, t2, 2557f
                  sub          s6, s5, a4
                  sll          a4, s6, s10
                  ori          s9, s0, -636
2548:             bltu         tp, s6, 2555f
                  xor          s0, a4, s9
                  blt          s11, a4, 2556f
                  sra          s8, s9, s0
                  sll          s1, s4, t2
                  srai         s10, t2, 3
                  bgeu         zero, t6, 2566f
2555:             nop
2556:             sltu         a3, tp, s3
2557:             and          s9, a7, t5
                  bge          tp, gp, 2575f
                  bgeu         a5, t1, 2578f
                  bge          a1, t5, 2566f
                  bgeu         a2, tp, 2569f
                  sll          t6, s0, a6
                  sltu         t5, a3, t1
                  sltu         s1, t3, gp
                  xor          ra, s5, t5
2566:             bgeu         sp, s2, 2572f
                  xori         s1, a4, -1292
                  bgeu         t6, s1, 2580f
2569:             auipc        s5, 878915
                  srl          a6, s8, s6
                  bltu         sp, tp, 2590f
2572:             and          sp, s5, t1
                  auipc        a4, 1037410
                  bne          ra, a6, 2585f
2575:             and          sp, a4, s2
                  srl          s8, zero, t0
                  srl          s5, s10, a0
2578:             srai         a1, zero, 18
                  sra          a2, zero, zero
2580:             and          t0, s1, a3
                  blt          s0, s7, 2594f
                  xori         a7, a1, -1199
                  bltu         a1, s0, 2597f
                  sra          s7, tp, a3
2585:             and          s3, a2, a6
                  bgeu         zero, s6, 2594f
                  sltu         a4, s9, t0
                  add          s11, t0, t5
                  bge          a6, t5, 2604f
2590:             lui          a1, 631611
                  add          s6, t1, t6
                  srl          s0, t2, s2
                  and          a7, s9, t4
2594:             add          t3, ra, t1
                  sra          a3, s7, a6
                  slti         a1, ra, -1371
2597:             sll          a1, sp, tp
                  sll          a5, sp, a5
                  sltu         gp, a0, t5
                  xori         s1, a3, -1575
                  slli         ra, s3, 11
                  slli         t2, a5, 12
                  sub          s8, a2, t0
2604:             srli         t0, s3, 29
                  xori         s5, s5, -880
                  andi         a0, a1, 111
                  add          s3, s7, a2
                  srai         s1, a5, 7
                  bge          s8, s8, 2622f
                  beq          t0, sp, 2616f
                  sra          t0, a2, a2
                  auipc        t5, 611806
                  xor          gp, s4, s6
                  sra          sp, t6, t3
                  slt          t0, s3, s1
2616:             blt          a5, s0, 2626f
                  xor          t1, a5, s3
                  lui          s2, 608042
                  and          a0, ra, s1
                  beq          t6, ra, 2632f
                  and          t1, s11, s10
2622:             slli         a4, a6, 30
                  srli         a2, a7, 29
                  srl          a0, s0, s9
                  slli         ra, t2, 9
2626:             srai         s1, sp, 4
                  slt          t1, a4, s5
                  bgeu         a2, a0, 2641f
                  andi         s1, s3, -1213
                  sub          a2, s5, s3
                  sltiu        s2, a2, -584
2632:             and          a3, s6, s0
                  bgeu         ra, t2, 2643f
                  slti         a2, a3, 109
                  xori         s11, t1, 1860
                  slli         s7, s6, 30
                  bltu         zero, ra, 2656f
                  bne          s11, t3, 2642f
                  sltu         s7, s8, s0
                  bltu         s11, s11, 2647f
2641:             bge          s10, a1, 2642f
2642:             addi         a7, s1, 389
2643:             srl          s2, tp, a4
                  andi         s10, s7, -1907
                  xor          ra, s8, t4
                  srai         s7, s5, 6
2647:             ori          s11, gp, 1737
                  auipc        a7, 971541
                  nop
                  slli         a0, a3, 11
                  beq          t6, t3, 2669f
                  blt          s10, t4, 2669f
                  ori          s5, s4, -1594
                  nop
                  bgeu         t5, s7, 2663f
2656:             srl          a2, s7, s8
                  srli         t2, t0, 23
                  slt          a4, t3, s7
                  or           zero, t3, s11
                  ori          t2, s4, 149
                  addi         t2, t2, 1083
                  sub          s2, t2, gp
2663:             andi         a1, sp, 780
                  xori         t1, s6, 1695
                  sll          s9, a0, s6
                  slt          s5, sp, a5
                  bge          t0, a6, 2678f
                  and          s0, sp, t5
2669:             sltiu        a3, t5, -1583
                  sra          s1, s7, s7
                  slti         t1, s5, -989
                  or           s1, a4, a7
                  slt          s8, t6, zero
                  srl          s2, zero, sp
                  bne          s3, t6, 2676f
2676:             nop
                  sltiu        a4, s4, -351
2678:             bne          a2, s7, 2688f
                  sltiu        s7, s6, 1362
                  sub          s8, s1, s8
                  bge          s9, s9, 2700f
                  slt          s11, a0, s4
                  bge          ra, zero, 2702f
                  bne          a4, zero, 2697f
                  or           t3, tp, s9
                  lui          t6, 144542
                  sra          a0, tp, a4
2688:             add          a0, a1, t4
                  blt          s0, a2, 2701f
                  ori          s9, s4, -186
                  bge          a2, s1, 2704f
                  or           gp, a0, a6
                  xori         a2, t2, 919
                  andi         a4, t6, -1476
                  ori          a4, zero, 976
                  auipc        a3, 688694
2697:             lui          s10, 957783
                  sltu         s1, a4, t1
                  sub          s2, s3, a1
2700:             sltu         s3, a0, s5
2701:             beq          s7, t4, 2719f
2702:             auipc        a3, 790452
                  auipc        a1, 28843
2704:             auipc        sp, 715371
                  lui          ra, 383864
                  blt          s6, sp, 2712f
                  slt          ra, t4, a3
                  nop
                  sub          gp, s4, a1
                  or           gp, zero, t4
                  auipc        s8, 659664
2712:             sltiu        a1, s5, -1741
                  or           s2, s0, gp
                  sltiu        s9, s10, -1567
                  bge          s0, t0, 2727f
                  addi         zero, s3, -339
                  slt          t1, t4, s7
                  beq          a2, a0, 2725f
2719:             or           t5, a7, s9
                  xori         sp, s9, 345
                  bne          t0, t1, 2736f
                  sra          s11, ra, a7
                  add          gp, s4, a6
                  slti         t5, t4, 297
2725:             add          s8, zero, s11
                  bltu         t3, s10, 2738f
2727:             beq          t5, s11, 2733f
                  nop
                  beq          s5, s7, 2736f
                  bgeu         t6, ra, 2743f
                  slli         a1, t3, 2
                  lui          a0, 599864
2733:             srai         s10, t4, 27
                  slli         s8, s3, 25
                  blt          s10, tp, 2745f
2736:             sra          t5, a2, a2
                  beq          a6, tp, 2743f
2738:             nop
                  xor          s6, tp, s3
                  bgeu         t4, s5, 2748f
                  slt          a7, zero, a1
                  slli         a5, a0, 4
2743:             srli         gp, ra, 22
                  xori         t5, gp, -701
2745:             addi         t5, gp, 1750
                  auipc        a5, 603968
                  xor          a6, a1, s3
2748:             sltu         s1, s11, s2
                  sra          s5, s10, s5
                  bne          a2, s11, 2758f
                  bgeu         s10, s2, 2770f
                  sltiu        s9, a1, 1768
                  auipc        s11, 714134
                  srl          gp, s1, t6
                  bgeu         t4, a4, 2768f
                  and          zero, s8, s6
                  lui          t3, 30297
2758:             ori          s5, s7, -1836
                  andi         a5, s9, 37
                  and          zero, a7, t5
                  sltu         s5, t0, s11
                  addi         t2, a4, 1699
                  slti         s9, a4, -1591
                  bgeu         zero, t1, 2770f
                  sltu         s3, t2, a1
                  xor          t0, a3, a1
                  slti         s3, zero, 1050
2768:             srai         s0, a7, 24
                  and          s9, s7, s0
2770:             srli         t3, s7, 9
                  sub          sp, s1, s10
                  bgeu         a5, s10, 2778f
                  sub          s9, s10, s2
                  bgeu         t4, a6, 2788f
                  nop
                  slli         s6, t4, 15
                  beq          t4, s4, 2790f
2778:             or           t5, s9, s6
                  and          s8, s7, s5
                  sra          a4, a4, s2
                  beq          a6, s4, 2785f
                  add          ra, s7, a1
                  addi         a7, tp, 796
                  slti         t5, sp, -1183
2785:             srl          a3, s6, t5
                  sra          sp, s1, s3
                  or           a3, s10, s11
2788:             add          s6, s0, a5
                  slti         a5, a3, 1858
2790:             xor          a1, s6, s8
                  sltu         a4, s2, a1
                  ori          a0, s2, 1051
                  blt          s8, a5, 2811f
                  bge          s7, a3, 2813f
                  sltiu        s5, zero, -1660
                  bltu         tp, t2, 2810f
                  slli         s0, s5, 23
                  blt          s8, s3, 2811f
                  sra          ra, t4, s4
                  xor          a7, t3, t4
                  slt          s2, s0, s11
                  bltu         s11, s0, 2808f
                  bltu         s11, ra, 2818f
                  srai         a6, a2, 8
                  sltu         s3, s8, sp
                  xor          a4, tp, a0
                  ori          a1, a3, -1851
2808:             srli         s8, sp, 9
                  sra          s1, s1, t2
2810:             nop
2811:             slt          s0, t4, s5
                  nop
2813:             or           sp, t4, t6
                  slt          s9, a6, s6
                  sll          t5, a0, s4
                  sltu         a2, t0, a5
                  sll          s11, zero, a5
2818:             add          a1, s2, ra
                  srai         t6, sp, 5
                  bne          gp, zero, 2821f
2821:             sll          s0, a6, a6
                  or           t0, zero, a4
                  xori         s10, s0, -1678
                  nop
                  auipc        s7, 271226
                  or           ra, t0, t1
                  nop
                  sra          s5, tp, a6
                  addi         a7, t2, 1462
                  slt          s5, gp, s0
                  lui          s1, 678860
                  sltiu        t5, tp, 180
                  sltu         s9, a0, tp
                  sll          s6, ra, s2
                  bgeu         zero, sp, 2843f
                  slti         a1, s9, 1511
                  xor          s3, t2, t4
                  lui          ra, 833371
                  slli         s11, t6, 29
                  beq          sp, a5, 2852f
                  slti         t1, a4, -1349
                  slt          s2, t1, s3
2843:             and          t1, a5, t3
                  lui          s2, 641255
                  slli         s9, t1, 25
                  lui          s9, 12441
                  nop
                  srl          sp, s2, s10
                  srai         sp, t2, 26
                  andi         a0, a3, -419
                  sltiu        a3, a2, -1464
2852:             sltu         t0, s0, a3
                  bge          s9, t5, 2866f
                  sltiu        s5, t2, 1133
                  and          s6, a2, t6
                  sltiu        sp, s8, -1802
                  andi         s9, a7, 285
                  lui          s6, 769152
                  slli         t6, s7, 19
                  srai         a0, a4, 17
                  slti         a2, t3, 669
                  bltu         s10, a4, 2875f
                  srli         gp, s1, 1
                  xori         t1, a6, -1116
                  bgeu         t4, a6, 2882f
2866:             sll          a4, a2, t6
                  add          zero, ra, a3
                  srai         t2, t3, 21
                  ori          s10, t2, 1305
                  blt          s8, gp, 2876f
                  sltu         s5, s6, sp
                  slt          a1, s11, a6
                  bne          a5, s8, 2880f
                  add          t0, s0, gp
2875:             sltiu        s0, a7, 987
2876:             bne          s4, a0, 2887f
                  srli         a7, s9, 10
                  slt          t2, s9, s10
                  addi         t3, s1, -777
2880:             slli         a4, s9, 6
                  and          t3, a3, s8
2882:             sltu         a3, t4, t0
                  addi         s0, s0, 1625
                  lui          sp, 545943
                  sll          s2, t1, tp
                  auipc        s3, 905743
2887:             blt          a6, s9, 2895f
                  sltiu        a5, s10, -1197
                  blt          s7, s0, 2902f
                  beq          a2, s1, 2909f
                  ori          t3, a3, 788
                  sub          a7, s2, a7
                  xor          a1, sp, sp
                  nop
2895:             andi         zero, s0, -533
                  slti         a1, t6, 1323
                  sll          s3, a6, t3
                  nop
                  bltu         tp, a7, 2905f
                  srai         zero, s7, 24
                  bge          s6, s2, 2913f
2902:             ori          t1, t2, -1354
                  xori         s9, t6, -925
                  auipc        a1, 822184
2905:             bne          s8, t4, 2918f
                  sra          a6, a2, s0
                  sltu         a1, t3, s4
                  srl          s2, s0, a6
2909:             srl          s2, tp, s8
                  xori         s10, a7, -463
                  beq          zero, s5, 2915f
                  slt          a0, s2, a6
2913:             xor          s7, a4, t5
                  bltu         a3, ra, 2922f
2915:             sltu         t5, a4, a4
                  ori          s0, s10, 20
                  slli         zero, s3, 16
2918:             sub          s9, s6, a7
                  sltu         a5, s3, sp
                  sll          t5, t4, a1
                  auipc        a3, 521480
2922:             bge          s7, a0, 2932f
                  srli         t1, ra, 3
                  srai         s11, t4, 5
                  sll          s0, a0, tp
                  xori         a0, a7, -1148
                  sltiu        a2, t5, -1885
                  srl          s3, s6, s7
                  andi         s2, gp, -1138
                  slt          t0, s0, s10
                  lui          a0, 132873
2932:             lui          t2, 719249
                  slli         a7, s5, 6
                  andi         a3, s2, -585
                  slli         t2, tp, 23
                  sltu         s1, t3, s6
                  xori         s2, ra, 971
                  xor          s11, zero, t6
                  sltiu        t1, zero, -1651
                  srl          t6, a0, t4
                  srli         a4, s1, 21
                  sltiu        sp, s5, 1613
                  bne          t0, t2, 2950f
                  xor          a1, s2, tp
                  bltu         a5, t6, 2951f
                  sltiu        a2, a3, -1873
                  xori         s6, a5, 721
                  and          t0, t0, tp
                  xor          s7, a4, s10
2950:             slti         a0, s5, 143
2951:             addi         s8, ra, 1983
                  beq          a3, tp, 2971f
                  bge          s6, a7, 2963f
                  blt          s1, s1, 2966f
                  sra          t1, t6, a6
                  sltiu        sp, sp, -1427
                  and          s6, t0, zero
                  bne          t3, s11, 2964f
                  bltu         sp, s2, 2978f
                  sltu         t3, ra, s9
                  bne          a7, s7, 2973f
                  blt          a2, a0, 2968f
2963:             andi         a7, s7, -745
2964:             and          s7, ra, gp
                  bltu         s9, t3, 2977f
2966:             bne          s3, t5, 2984f
                  sub          a0, gp, a6
2968:             bltu         a3, s7, 2974f
                  auipc        ra, 371585
                  srli         s2, tp, 30
2971:             sra          a1, t6, tp
                  or           t1, s11, a0
2973:             bgeu         s9, s7, 2981f
2974:             or           a0, a6, s7
                  or           s2, s5, a4
                  bne          s9, s1, 2988f
2977:             sltu         s0, s0, s6
2978:             xor          a4, sp, s4
                  slt          s5, gp, tp
                  auipc        s11, 253232
2981:             srli         s7, a3, 13
                  sltiu        t1, t0, 819
                  bne          t0, s2, 3002f
2984:             bltu         t6, a5, 2997f
                  sltu         ra, a0, s0
                  lui          gp, 435268
                  andi         t2, s10, -1861
2988:             xor          s3, s4, t3
                  ori          t6, s0, -73
                  bltu         a5, a3, 3005f
                  nop
                  blt          ra, s4, 3005f
                  bge          a0, a5, 3001f
                  blt          a3, t0, 3004f
                  sub          s3, t4, s4
                  sll          t2, s3, gp
2997:             and          a0, t4, a0
                  nop
                  bge          t6, s8, 3010f
                  sll          s9, t2, zero
3001:             and          t1, s9, t1
3002:             xori         t1, t6, 1800
                  slli         s5, s7, 30
3004:             slli         a3, s8, 30
3005:             slti         s6, s9, 967
                  bltu         t0, a5, 3012f
                  sra          t1, t5, a4
                  xori         t0, a2, 866
                  srl          s0, s10, s9
3010:             sub          s9, t4, a1
                  beq          s4, t0, 3012f
3012:             sub          s11, s5, t3
                  bgeu         s9, s2, 3020f
                  srl          sp, t5, ra
                  sll          t3, t0, s9
                  slti         a0, a3, -1402
                  sltu         s7, sp, a4
                  srl          s3, s10, a3
                  ori          s3, a2, 351
3020:             nop
                  blt          sp, s8, 3029f
                  sltu         ra, a2, t5
                  slt          s5, s4, a6
                  blt          s5, s4, 3041f
                  andi         gp, a5, 1511
                  auipc        s3, 334981
                  nop
                  andi         s5, gp, 2015
3029:             sra          s2, ra, t5
                  slt          t3, s7, t1
                  bge          t5, s7, 3035f
                  xori         s2, a1, -352
                  ori          a7, a1, 1816
                  sll          t5, t1, s4
3035:             auipc        s7, 24466
                  sltiu        t1, zero, 455
                  sltu         ra, s7, ra
                  slti         t2, t0, -361
                  sltiu        s10, sp, -1029
                  xori         zero, s5, 1568
3041:             ori          a7, gp, -518
                  bge          s5, t2, 3048f
                  bltu         gp, t5, 3050f
                  sltiu        s7, t4, 277
                  bge          t6, t5, 3058f
                  bge          a2, s0, 3052f
                  add          a2, tp, t5
3048:             ori          gp, a1, -1481
                  sub          s7, t3, s2
3050:             srai         t5, s8, 23
                  sra          gp, s8, s6
3052:             srl          s6, a2, a7
                  sra          a3, a7, t0
                  slt          a1, s3, a3
                  add          s7, s4, t0
                  sra          t3, t5, s4
                  xori         a7, a1, -1571
3058:             auipc        a1, 110173
                  auipc        t1, 724900
                  srli         a0, sp, 9
                  lui          s3, 540445
                  srli         t0, t6, 0
                  andi         a2, s3, 250
                  beq          a1, a7, 3077f
                  auipc        a0, 52769
                  slli         s10, s9, 14
                  srl          t1, s1, a3
                  sra          t0, t5, zero
                  xor          t0, s1, tp
                  xori         t3, s7, 2027
                  blt          a7, a5, 3085f
                  srai         t1, a0, 5
                  srai         s10, s0, 6
                  and          a5, s2, a1
                  srli         t6, a6, 28
                  xori         s11, a1, -1519
3077:             srli         a0, a2, 15
                  blt          t4, t6, 3091f
                  auipc        a0, 65492
                  sra          a6, ra, s5
                  add          t3, a0, gp
                  sub          a5, a5, t2
                  or           a6, s7, t5
                  blt          s5, s9, 3103f
3085:             beq          a0, a1, 3095f
                  xori         s1, a5, 966
                  bge          t5, t0, 3099f
                  auipc        s6, 342194
                  andi         t0, zero, -1011
                  bltu         tp, s6, 3098f
3091:             bge          s0, s0, 3097f
                  xori         gp, s9, -1858
                  auipc        s8, 1002280
                  blt          s6, s8, 3107f
3095:             sra          t2, a4, sp
                  srai         t2, t3, 27
3097:             auipc        s11, 785935
3098:             srli         t3, tp, 26
3099:             blt          s6, s6, 3116f
                  bltu         zero, s10, 3114f
                  xor          a4, t1, s1
                  bge          s7, s0, 3110f
3103:             bltu         s7, a0, 3121f
                  sltu         s0, t3, t5
                  srai         s5, t1, 21
                  ori          a3, s9, -170
3107:             sub          a1, t4, s5
                  xori         t0, a7, -1805
                  slti         a6, zero, 1531
3110:             add          s1, zero, ra
                  blt          t0, s3, 3118f
                  lui          sp, 116852
                  srai         a0, s6, 14
3114:             slt          a5, s11, a7
                  slt          s10, a4, s11
3116:             xori         s5, a1, 638
                  sra          s0, a6, zero
3118:             sltu         a0, t4, a3
                  slti         t3, t3, 1980
                  sltiu        s2, t0, -1618
3121:             bne          s9, t6, 3134f
                  slli         sp, a4, 0
                  slt          a5, t4, gp
                  andi         a5, tp, 765
                  bgeu         a3, a2, 3140f
                  srli         s0, a4, 21
                  or           a7, sp, t2
                  sra          s11, a3, a1
                  blt          s4, t1, 3142f
                  xor          s10, tp, a7
                  sub          a4, t2, ra
                  addi         t5, t1, 1980
                  bne          a4, a0, 3143f
3134:             bgeu         s5, a3, 3140f
                  sltiu        s2, t5, 1526
                  srli         a6, s8, 12
                  xori         s11, t2, 614
                  auipc        gp, 168474
                  or           t2, s3, t6
3140:             slti         sp, tp, -1499
                  sll          s6, tp, a6
3142:             andi         s3, s6, -1700
3143:             and          s2, ra, t4
                  bge          a2, a5, 3163f
                  nop
                  andi         t2, s10, -623
                  lui          t1, 304548
                  auipc        s6, 646448
                  bne          s10, gp, 3156f
                  bgeu         s0, s2, 3154f
                  auipc        t2, 591748
                  xori         s3, s6, 1321
                  beq          s10, t1, 3154f
3154:             srli         a3, zero, 20
                  sra          s11, s4, s8
3156:             nop
                  slti         gp, s4, 2032
                  bgeu         a2, s6, 3171f
                  add          a2, t1, s0
                  andi         s8, t3, -1292
                  addi         t1, s5, 1202
                  blt          s11, s11, 3168f
3163:             slti         a5, s7, 1830
                  andi         zero, s6, 1439
                  or           a7, s4, sp
                  sll          s0, s4, t1
                  blt          s10, a2, 3173f
3168:             ori          s7, a5, 109
                  beq          t5, s3, 3181f
                  xori         t2, t4, 526
3171:             addi         t2, a4, 1429
                  xori         zero, s8, 996
3173:             sll          s10, tp, a0
                  bne          gp, a0, 3185f
                  sra          s2, s5, a6
                  nop
                  slli         t5, a6, 14
                  sra          s7, s4, t1
                  and          a0, a7, t1
                  lui          a6, 425581
3181:             addi         s1, s6, 1561
                  slti         sp, t2, 708
                  srli         s0, sp, 8
                  slt          sp, a3, s3
3185:             sll          t3, t6, t5
                  bltu         s2, s5, 3194f
                  slti         t1, s0, -1523
                  addi         sp, s3, 1192
                  bltu         a7, s7, 3201f
                  slt          a7, t5, s11
                  bgeu         sp, s11, 3204f
                  addi         a7, s2, -63
                  sltiu        a6, a6, -1043
3194:             srli         a1, sp, 26
                  sll          t1, ra, t2
                  sra          t1, tp, s0
                  andi         a6, tp, -1496
                  andi         a1, s4, -482
                  sll          s8, a7, a5
                  beq          a5, s3, 3219f
3201:             srai         s10, a2, 30
                  andi         s10, a4, -1678
                  bne          a6, t5, 3209f
3204:             auipc        a1, 455044
                  or           t5, s5, s10
                  srai         a6, s7, 13
                  and          s8, s5, t2
                  beq          s6, s8, 3218f
3209:             lui          a5, 988934
                  nop
                  and          t0, s1, s2
                  sra          s0, s11, s8
                  srai         a0, a2, 22
                  auipc        s1, 912650
                  sltiu        s11, sp, -1798
                  slt          ra, s10, t3
                  sltiu        s10, s0, -378
3218:             add          gp, sp, s8
3219:             xor          t6, a2, s1
                  srli         s2, s2, 28
                  sll          a6, a4, ra
                  beq          t2, s3, 3241f
                  bge          s7, t2, 3230f
                  add          t0, t2, t2
                  auipc        ra, 919654
                  andi         s9, a3, -1163
                  xor          t2, tp, a3
                  andi         t5, s11, 6
                  nop
3230:             bge          gp, s10, 3249f
                  bne          sp, t4, 3239f
                  blt          a7, a5, 3238f
                  sltiu        s2, a5, 609
                  slti         s0, s0, -1432
                  bge          t2, t0, 3247f
                  nop
                  bltu         a3, a4, 3250f
3238:             sub          t6, s11, s6
3239:             sltu         a1, s1, s8
                  sltu         s5, a1, t3
3241:             and          a7, gp, t3
                  beq          s1, s6, 3253f
                  or           s8, a6, ra
                  blt          s7, ra, 3261f
                  sltu         s3, s8, a4
                  slti         a1, a7, -8
3247:             slli         s0, a0, 16
                  slli         s10, t5, 21
3249:             and          a2, a7, s2
3250:             slt          s11, s4, t5
                  xori         s10, s3, -1866
                  sltiu        sp, s7, 61
3253:             nop
                  ori          a6, t5, -1008
                  srai         s6, s5, 16
                  blt          a2, gp, 3264f
                  bge          s7, t1, 3271f
                  bne          s2, s0, 3276f
                  auipc        s10, 262525
                  slli         a7, t4, 3
3261:             andi         gp, s7, -1839
                  srl          gp, s10, t3
                  srl          s7, gp, a2
3264:             slli         a4, a7, 5
                  slli         a4, a1, 10
                  bge          a7, s0, 3281f
                  auipc        s8, 533539
                  ori          s10, s10, -1644
                  ori          s1, sp, 1843
                  srai         gp, sp, 1
3271:             ori          s9, sp, -63
                  lui          s5, 605142
                  nop
                  bne          tp, t0, 3275f
3275:             ori          s7, s0, -1860
3276:             auipc        a4, 115124
                  lui          a4, 681518
                  srai         t5, s5, 2
                  add          t3, a6, a0
                  and          sp, a2, s2
3281:             andi         a0, zero, -241
                  addi         s2, a1, -357
                  sll          a0, zero, t1
                  and          a3, ra, s2
                  srl          a5, s1, a7
                  auipc        a0, 563813
                  nop
                  ori          s6, s1, -1054
                  ori          s9, a3, -245
                  and          s2, a3, s3
                  sra          s11, a3, a0
                  bgeu         s11, a6, 3311f
                  auipc        a0, 643933
                  srl          s5, a4, a2
                  sub          s9, s5, t6
                  auipc        s5, 598525
                  sub          a5, s11, tp
                  sll          s7, a0, s9
                  sub          s0, tp, gp
                  beq          s10, ra, 3313f
                  nop
                  xori         s1, t2, -1193
                  bne          s2, a4, 3322f
                  nop
                  bltu         t0, s2, 3318f
                  slt          s9, s9, s0
                  and          s7, tp, ra
                  xori         gp, t0, 427
                  srli         a0, tp, 16
                  xori         s1, a6, 522
3311:             slli         s1, a2, 19
                  addi         s8, a2, -2024
3313:             sltiu        a1, s3, -506
                  lui          t2, 451860
                  xor          s10, a1, t6
                  slti         sp, s10, 1457
                  slt          ra, t3, tp
3318:             addi         a2, s8, 599
                  andi         t1, t1, -1157
                  sll          a0, tp, t6
                  xori         a3, t5, -736
3322:             sll          s11, t5, tp
                  srl          t3, a0, s3
                  nop
                  and          gp, a4, a7
                  bge          s7, s6, 3336f
                  bge          t4, ra, 3333f
                  slli         a4, s0, 30
                  srl          s0, t0, sp
                  srai         sp, a4, 13
                  srai         a0, s7, 9
                  and          zero, t0, s1
3333:             or           gp, s8, gp
                  slti         sp, s6, -658
                  bne          ra, ra, 3348f
3336:             xor          t6, s11, s7
                  srai         t0, s7, 22
                  srli         t2, a5, 21
                  lui          a1, 133171
                  sll          a6, a6, s1
                  addi         zero, t0, 1714
                  blt          t2, gp, 3352f
                  slt          a4, gp, a0
                  bge          t2, a2, 3350f
                  srl          s5, s6, s11
                  auipc        s10, 223879
                  bge          a6, a2, 3354f
3348:             ori          t1, t0, -626
                  and          a6, s2, s3
3350:             add          t3, s6, ra
                  slti         a3, s9, -25
3352:             blt          s6, s2, 3364f
                  srai         t6, tp, 28
3354:             sll          t2, t6, a5
                  lui          a4, 320327
                  addi         a5, t3, -1526
                  sll          s7, ra, ra
                  xori         s7, s8, -986
                  addi         gp, a6, -1164
                  slti         s11, sp, 1770
                  addi         s3, a0, 122
                  slti         s0, tp, 1468
                  xor          t5, tp, tp
3364:             xor          t6, s10, a3
                  add          s9, ra, s7
                  slti         s11, t4, 9
                  andi         s0, s10, -128
                  bge          zero, zero, 3381f
                  andi         s8, zero, -1188
                  auipc        a6, 121328
                  bgeu         t1, zero, 3377f
                  add          s9, t1, t4
                  auipc        a0, 884439
                  slt          s6, s3, s10
                  sra          t1, s7, t3
                  blt          zero, ra, 3388f
3377:             srl          a7, s10, tp
                  bltu         s7, s4, 3386f
                  sltu         t5, t1, s11
                  xor          s1, s1, s3
3381:             or           t0, s11, a0
                  slt          sp, a3, a5
                  xori         a6, t2, -29
                  sll          s3, s11, t3
                  srl          a2, s1, s8
3386:             blt          a2, a7, 3390f
                  bge          t2, s4, 3393f
3388:             and          s10, a0, t3
                  slt          s8, t4, a4
3390:             beq          s3, a3, 3402f
                  beq          s9, tp, 3397f
                  lui          a3, 667812
3393:             bge          zero, sp, 3412f
                  sra          s3, s9, s2
                  xori         a7, s8, -1132
                  sll          a1, ra, a1
3397:             auipc        t1, 126967
                  blt          s2, t6, 3399f
3399:             sltiu        t2, s7, 801
                  blt          a5, a4, 3412f
                  lui          s2, 531580
3402:             bltu         s10, s2, 3412f
                  addi         s2, ra, -1271
                  beq          zero, s6, 3412f
                  xor          a1, s5, t5
                  and          a6, s11, a2
                  lui          a1, 219901
                  bgeu         s5, a3, 3421f
                  sra          s1, s2, t0
                  blt          a1, s8, 3423f
                  or           s6, t2, a5
3412:             auipc        t0, 571009
                  andi         a1, t4, -1633
                  bgeu         t3, s3, 3427f
                  or           s6, s9, a5
                  addi         a2, s5, -1340
                  addi         a4, s0, 607
                  andi         s0, gp, 1228
                  xor          t1, a7, s7
                  bne          sp, s1, 3428f
3421:             lui          sp, 365849
                  slti         s3, sp, -916
3423:             slti         a7, s3, -1675
                  sltu         s3, t2, t6
                  and          s11, tp, t0
                  srli         s0, s0, 26
3427:             ori          s0, s10, -154
3428:             xor          s5, zero, s8
                  srl          t5, sp, s2
                  nop
                  blt          t2, s11, 3442f
                  bne          a2, ra, 3438f
                  or           sp, t2, s6
                  srai         t2, t4, 31
                  or           s5, s7, t5
                  bgeu         a7, gp, 3449f
                  slli         t0, s4, 0
3438:             blt          s10, gp, 3448f
                  sub          a4, s10, t2
                  srli         zero, s8, 4
                  nop
3442:             slti         t6, t0, 289
                  beq          s5, s0, 3462f
                  auipc        zero, 655036
                  auipc        s11, 898804
                  bne          s6, s6, 3459f
                  srli         zero, s10, 6
3448:             ori          sp, sp, 202
3449:             bltu         t5, a7, 3453f
                  bne          a3, t5, 3464f
                  sll          s10, a7, s6
                  nop
3453:             bne          a3, s9, 3459f
                  srai         zero, a0, 27
                  slti         t2, t0, -1088
                  bne          gp, s1, 3463f
                  bge          a3, s3, 3463f
                  xor          a7, tp, a4
3459:             srli         a4, a5, 29
                  srl          s0, s3, a7
                  slli         a2, s10, 27
3462:             bgeu         sp, a5, 3481f
3463:             lui          zero, 893073
3464:             sltiu        s11, gp, 121
                  addi         t3, a5, -1398
                  auipc        s1, 201964
                  bne          s9, t4, 3473f
                  ori          a7, a1, 1759
                  auipc        a0, 210965
                  xori         s7, a5, -650
                  sltiu        t0, s11, -856
                  addi         a5, t5, 965
3473:             and          a1, tp, a2
                  sra          s8, t0, s5
                  addi         a3, s7, 723
                  srai         a3, t0, 21
                  srai         a7, a3, 26
                  sltiu        s2, t2, 1498
                  slt          s2, sp, gp
                  slt          a1, s5, a0
                  la           s9, region_0+1752 #start riscv_load_store_rand_instr_stream_23
                  lh           s11, 216(s9)
                  lb           a6, -195(s9)
                  lb           s3, 161(s9)
                  srl          ra, t2, t6
                  sh           s1, -226(s9)
                  add          a1, a2, s3
                  sb           s1, 51(s9)
                  lb           a2, 247(s9)
                  sub          s6, ra, s5
                  srl          s8, a5, s7
                  add          s5, t2, zero
                  srli         t0, t5, 19
                  xor          a5, a0, a1
                  sltiu        a5, s10, 1797
                  sll          zero, a3, s4
                  xor          s0, t3, a5
                  lhu          ra, -46(s9)
                  ori          s2, t0, -1122
                  srai         s1, a5, 6
                  srli         a0, s9, 17
                  sb           t1, -104(s9)
                  xor          s10, tp, sp
                  lb           gp, 47(s9)
                  sub          t6, s2, s11
                  auipc        a7, 596382
                  srli         ra, s3, 22
                  sw           s5, 168(s9)
                  sb           a5, 204(s9)
                  lb           a5, -127(s9)
                  srai         sp, a5, 31
                  lbu          s8, 224(s9)
                  or           zero, zero, s0
                  srli         ra, s6, 8
                  srl          s0, t4, t4
                  sh           s8, -126(s9) #end riscv_load_store_rand_instr_stream_23
3481:             or           a3, t6, s9
                  sll          s9, a0, zero
                  slt          a2, s7, zero
                  slt          zero, s11, a6
                  beq          a5, t1, 3497f
                  xor          a3, a3, a7
                  xor          a0, a6, s7
                  blt          s4, s7, 3496f
                  bge          sp, zero, 3496f
                  bltu         sp, a3, 3508f
                  srai         s3, t2, 25
                  xor          a2, sp, s1
                  blt          t0, a0, 3508f
                  sltu         s0, zero, tp
                  addi         ra, s9, -180
3496:             addi         gp, t2, -772
3497:             bgeu         s10, a7, 3514f
                  bge          t3, t5, 3504f
                  slli         a0, t6, 13
                  sltiu        a1, s5, 1250
                  srl          s7, s8, a4
                  slt          s11, t5, s8
                  sll          s1, s7, t3
3504:             nop
                  bgeu         s4, s0, 3509f
                  sra          t5, a1, s7
                  lui          sp, 66156
3508:             slti         s11, s2, -1762
3509:             auipc        s7, 390377
                  xori         s1, s6, -1814
                  and          s2, t4, s7
                  add          s2, s2, sp
                  sll          t0, a1, t3
3514:             andi         zero, t5, 1563
                  bne          a5, s2, 3533f
                  bne          s8, t2, 3530f
                  lui          t6, 440778
                  auipc        s1, 316184
                  and          s2, t1, t5
                  bgeu         s8, s3, 3533f
                  or           a7, a1, a6
                  bge          a0, s9, 3533f
                  sub          t3, t1, s2
                  bgeu         t6, s1, 3530f
                  slti         a5, a2, 503
                  nop
                  blt          a1, s2, 3539f
                  or           s5, t6, t5
                  sub          s3, ra, t6
3530:             nop
                  bgeu         ra, a7, 3544f
                  xor          s8, s6, s0
3533:             bge          s3, gp, 3539f
                  slti         s5, a1, 1745
                  xori         t6, t3, -346
                  bgeu         s9, a2, 3549f
                  lui          s6, 93746
                  bne          a3, s1, 3545f
3539:             nop
                  auipc        s5, 1009726
                  andi         t0, s11, 1852
                  sltiu        zero, s4, -15
                  slli         s9, t3, 27
3544:             srli         t5, sp, 13
3545:             slli         t0, s6, 5
                  bge          a1, s3, 3558f
                  bltu         s1, s3, 3553f
                  blt          s5, gp, 3556f
3549:             srl          s10, zero, tp
                  beq          t3, a2, 3560f
                  bne          t0, gp, 3561f
                  beq          s0, s10, 3567f
3553:             sltiu        s8, s4, -714
                  srli         ra, a6, 10
                  bge          s5, s0, 3563f
3556:             xor          a6, tp, a6
                  slti         a6, s10, 339
3558:             bne          s5, t0, 3564f
                  add          s11, s0, a3
3560:             slti         a4, t6, -1758
3561:             beq          t0, s8, 3562f
3562:             slti         s8, s7, -1337
3563:             lui          s7, 592531
3564:             sll          a3, a0, s11
                  and          a5, gp, s6
                  beq          s0, s6, 3573f
3567:             slt          s6, tp, s1
                  sub          s8, gp, zero
                  lui          ra, 1035939
                  bge          ra, t2, 3589f
                  xor          s3, tp, t0
                  bltu         s1, a2, 3591f
3573:             srl          s0, t6, s5
                  slti         s1, a3, -1264
                  blt          a0, a0, 3588f
                  sltiu        a7, t0, -164
                  addi         s6, ra, -1961
                  blt          t4, t0, 3591f
                  lui          sp, 579086
                  srai         sp, a4, 14
                  slt          t6, a6, t0
                  srl          a7, s3, t4
                  sltiu        a2, s5, -742
                  and          s3, t2, t0
                  sra          a4, t3, a2
                  slt          zero, tp, t0
                  sub          s5, t0, t3
3588:             bltu         t3, a1, 3607f
3589:             add          t6, a2, t1
                  lui          a7, 540051
3591:             addi         s6, a1, 1246
                  xori         s9, s11, 353
                  xori         t6, ra, 344
                  sltiu        gp, t1, -1896
                  lui          s5, 86263
                  bge          gp, t4, 3613f
                  or           s0, a0, s1
                  xori         s10, s5, 616
                  beq          s6, s4, 3607f
                  sltiu        s9, a6, 363
                  sltiu        t6, tp, 1288
                  sltu         s1, zero, s1
                  srli         a3, s8, 26
                  xori         t5, s0, 1168
                  sra          t6, tp, s8
                  slli         t2, s11, 17
3607:             slli         s11, s8, 24
                  add          s0, s10, ra
                  nop
                  sub          t2, s5, s10
                  sltu         s11, s4, t6
                  bne          a6, s5, 3624f
3613:             blt          a5, s10, 3626f
                  xori         zero, s2, -19
                  slti         zero, t4, -427
                  xor          sp, t2, s3
                  or           s10, t2, t3
                  bne          s5, sp, 3628f
                  bge          a2, a0, 3625f
                  xori         a0, t1, 1947
                  bne          s10, s1, 3629f
                  xori         s3, a3, 1261
                  addi         t1, gp, 270
3624:             xori         s8, a7, 142
3625:             xor          s6, t4, s9
3626:             lui          s0, 1033371
                  sub          a2, t1, t0
3628:             xor          a0, s2, s9
3629:             sltiu        s1, t1, 929
                  sll          s5, sp, t0
                  sra          t5, a4, t6
                  slti         s8, t6, -1485
                  sltiu        t0, t1, 1805
                  nop
                  sub          s0, t5, t4
                  sra          a7, a5, s0
                  andi         s2, t4, 1539
                  add          s6, s7, t2
                  sltu         t3, s4, t0
                  andi         a7, t5, 246
                  nop
                  andi         s3, a4, -1274
                  add          ra, s3, zero
                  or           t5, t4, a6
                  andi         s10, t6, -1724
                  bltu         s7, a2, 3664f
                  slt          s5, a2, s3
                  addi         a7, a5, 1576
                  beq          gp, t5, 3657f
                  bge          s2, t5, 3663f
                  sll          ra, t3, a7
                  and          s11, t5, a7
                  bltu         zero, t0, 3672f
                  or           a1, s7, s1
                  slli         a2, a3, 22
                  srl          gp, t2, t2
3657:             auipc        s7, 878594
                  srli         t5, s9, 24
                  and          a6, t5, zero
                  andi         t0, a0, -930
                  ori          s10, s6, 1484
                  or           s0, a2, s0
3663:             blt          s5, t2, 3680f
3664:             sra          s10, a1, a7
                  slt          s10, s1, t6
                  slt          a6, t4, s6
                  or           t6, t2, s0
                  bgeu         a5, a5, 3680f
                  sll          ra, s8, s6
                  srl          a3, s2, a1
                  sra          s11, a7, t2
3672:             xori         s9, t4, -169
                  bge          t5, a6, 3684f
                  xori         s6, s3, -741
                  ori          a6, t1, -1748
                  sltiu        a6, s10, 697
                  andi         s6, tp, -1149
                  srli         s9, a3, 27
                  or           ra, t0, s5
3680:             slt          t5, a3, zero
                  bne          t6, s6, 3685f
                  bgeu         s1, ra, 3695f
                  sltu         a4, t5, t6
3684:             bne          s8, ra, 3703f
3685:             srai         s1, s10, 22
                  slt          a4, s8, a7
                  bgeu         t4, s8, 3695f
                  beq          t3, a5, 3694f
                  bge          gp, s4, 3702f
                  sll          a6, t0, s0
                  xori         s2, a0, 546
                  slli         a0, s11, 26
                  lui          gp, 427613
3694:             beq          t1, tp, 3700f
3695:             lui          t0, 484562
                  and          t5, s2, s6
                  slti         s1, t1, 187
                  slti         sp, gp, 252
                  bltu         a1, s4, 3713f
3700:             sltu         sp, a3, s0
                  andi         a6, t4, -1701
3702:             slt          t3, s6, t1
3703:             slti         zero, a4, -348
                  slti         s7, s7, 792
                  bltu         t1, gp, 3712f
                  bge          zero, s0, 3718f
                  srli         s5, s5, 5
                  sltu         s3, zero, s5
                  srai         s3, t0, 9
                  srai         s10, t5, 16
                  sub          s9, t1, t3
3712:             xori         a6, t4, 115
3713:             bne          a5, s10, 3728f
                  xor          s9, t6, tp
                  ori          t1, s3, 1147
                  srai         s6, t0, 19
                  bge          s4, t0, 3723f
3718:             lui          t0, 375601
                  srli         a6, a5, 20
                  auipc        t6, 415558
                  auipc        t2, 198340
                  bge          s10, a0, 3729f
3723:             auipc        a1, 736210
                  sub          ra, tp, t3
                  bltu         a6, s9, 3726f
3726:             xor          zero, zero, t6
                  slt          t3, a6, a2
3728:             nop
3729:             blt          a6, t3, 3741f
                  slt          s8, s0, s1
                  addi         a5, s11, -599
                  srl          gp, s7, s11
                  or           a0, a1, t0
                  addi         sp, a2, 1010
                  addi         s8, s2, -1603
                  xori         a0, s5, 1309
                  xori         a7, a5, 957
                  blt          a6, ra, 3751f
                  slli         t1, a2, 23
                  bgeu         t2, a7, 3750f
3741:             bge          a0, a6, 3747f
                  sll          a2, s10, gp
                  bne          s1, a1, 3762f
                  add          a1, s0, t4
                  srai         s10, t1, 13
                  xor          t5, s7, t2
3747:             bne          s5, s9, 3754f
                  bltu         s2, t4, 3762f
                  andi         s0, s9, -1639
3750:             xor          a5, a5, s5
3751:             bltu         t0, s1, 3770f
                  lui          t5, 385674
                  beq          t4, sp, 3760f
3754:             bne          s7, a1, 3758f
                  xor          s3, s3, t1
                  srl          s11, a3, s2
                  bne          s4, ra, 3776f
3758:             sub          s0, s9, t3
                  xori         s11, zero, 1435
3760:             bge          t6, t3, 3766f
                  sltiu        s1, s0, 2010
3762:             srai         gp, zero, 17
                  sub          a7, a1, s8
                  bge          a0, t6, 3770f
                  xori         s2, t2, 156
3766:             nop
                  bge          a2, ra, 3784f
                  andi         t2, sp, -982
                  sltu         s3, a6, s11
3770:             blt          sp, t0, 3782f
                  add          s7, gp, a1
                  bge          zero, s9, 3783f
                  srli         a6, t0, 2
                  blt          t2, sp, 3786f
                  bne          s8, zero, 3783f
3776:             bge          s10, a6, 3794f
                  slli         s9, a6, 4
                  or           a0, a2, s7
                  bgeu         s7, a2, 3791f
                  sll          a7, s3, a6
                  xor          s7, s1, a3
3782:             sltu         a3, t0, s3
3783:             slli         zero, s6, 17
3784:             nop
                  slti         sp, a7, -292
3786:             addi         a7, sp, -425
                  bne          s2, gp, 3795f
                  addi         t0, a3, 1601
                  slli         s2, zero, 6
                  bne          s0, zero, 3803f
3791:             blt          t4, a4, 3799f
                  lui          s8, 647102
                  srai         a2, s6, 24
3794:             bltu         a4, gp, 3807f
3795:             xor          s9, a6, a5
                  add          s3, t0, s3
                  beq          s3, s10, 3803f
                  srl          s11, t2, gp
3799:             xori         t2, a3, -210
                  bltu         a5, t3, 3810f
                  srai         a0, s8, 10
                  addi         t3, s8, -1169
3803:             or           s8, s8, ra
                  or           s9, a6, t4
                  srl          gp, s5, gp
                  slli         s11, a1, 7
3807:             sltu         s2, s5, a0
                  auipc        s10, 387082
                  lui          a1, 1047729
3810:             bgeu         s11, a0, 3811f
3811:             beq          a1, a3, 3824f
                  bgeu         zero, s6, 3818f
                  beq          t0, s8, 3826f
                  blt          t2, a3, 3829f
                  xor          t3, ra, a6
                  slli         s11, s1, 24
                  slt          a7, t4, s2
3818:             ori          s0, s7, 1633
                  add          t3, a0, t2
                  sltu         s0, t5, a4
                  sltu         a2, t3, s2
                  bge          s3, s8, 3841f
                  sltiu        gp, s10, 271
3824:             andi         a0, t1, 1508
                  bge          a7, a3, 3838f
3826:             slli         s6, t0, 3
                  xor          s3, s8, s9
                  srli         t0, a2, 21
3829:             add          s7, s6, s9
                  sll          s6, t3, t5
                  srli         t2, sp, 16
                  blt          a2, t3, 3838f
                  sub          a1, t3, s8
                  blt          gp, gp, 3844f
                  auipc        t2, 760911
                  auipc        s7, 498528
                  ori          a0, a4, 625
3838:             bgeu         a7, a4, 3857f
                  sltu         sp, t2, s8
                  bltu         sp, a6, 3853f
3841:             slti         t2, t2, -1755
                  slt          t1, s11, a6
                  or           t1, s1, t3
3844:             and          t5, gp, s5
                  xori         a0, a5, -479
                  bge          t2, ra, 3859f
                  bltu         a0, zero, 3860f
                  xori         a2, t5, -670
                  addi         a2, a1, 476
                  srai         t1, s1, 7
                  ori          ra, a7, 967
                  nop
3853:             nop
                  lui          s1, 420437
                  srl          sp, a4, t4
                  srai         a4, t2, 10
3857:             andi         s5, s5, 1751
                  sltiu        a7, t2, 1105
3859:             sll          a4, s2, a4
3860:             bgeu         zero, t4, 3875f
                  slti         t5, a1, 1535
                  and          t3, s7, a2
                  xor          a3, a1, t3
                  beq          t0, sp, 3876f
                  xori         a7, t5, -1910
                  srai         a0, gp, 6
                  sra          t0, s4, t3
                  xori         a7, tp, -1521
                  srl          s6, ra, s11
                  sra          ra, a3, t6
                  and          t3, a7, t3
                  and          t3, a6, a4
                  and          t2, t1, s0
                  srli         ra, t3, 24
3875:             srli         a5, a2, 31
3876:             slli         s9, a2, 28
                  sra          a3, s0, s1
                  bge          s2, a2, 3884f
                  blt          a0, t5, 3885f
                  lui          a2, 897284
                  srli         a5, a6, 6
                  add          ra, a5, a7
                  srai         s10, s7, 3
3884:             or           ra, a4, a5
3885:             nop
                  nop
                  sra          s3, t0, s9
                  bgeu         t1, s4, 3896f
                  nop
                  or           t2, s3, t1
                  sub          s0, ra, gp
                  add          s9, s1, a7
                  or           s7, a2, sp
                  sltu         zero, t4, t2
                  slli         a3, a3, 12
3896:             bgeu         t1, s5, 3915f
                  nop
                  sra          gp, s8, t0
                  bgeu         zero, s3, 3909f
                  bgeu         s2, t3, 3912f
                  srai         s2, a0, 11
                  or           t6, a7, a1
                  slti         a7, s7, 1862
                  bne          gp, s10, 3911f
                  slli         gp, s8, 12
                  auipc        t5, 48934
                  nop
                  srl          sp, a3, t1
3909:             ori          s3, s6, -1665
                  xor          s1, t6, s0
3911:             slli         s11, t6, 26
3912:             slti         s9, a0, 583
                  bltu         t0, a5, 3914f
3914:             ori          s11, a1, -870
3915:             addi         s1, s0, -874
                  sra          gp, s3, a1
                  or           s8, a2, ra
                  srli         s10, tp, 20
                  slt          s5, a0, t6
                  nop
                  bne          s11, ra, 3939f
                  sra          s0, t3, t4
                  nop
                  sra          a4, s8, s2
                  beq          a5, t1, 3933f
                  sltiu        a6, t1, -1407
                  xori         a7, a3, -1221
                  beq          a5, t5, 3932f
                  bltu         s7, a6, 3941f
                  sltiu        s6, a3, 1714
                  slt          s10, t0, s10
3932:             slti         s1, ra, -1639
3933:             addi         s9, a4, 163
                  slti         a1, a2, -1667
                  beq          s8, s1, 3954f
                  slli         a5, sp, 23
                  sltiu        sp, t1, -1227
                  add          t5, s3, a2
3939:             andi         s10, tp, 709
                  sub          gp, ra, t6
3941:             sll          t6, s6, a2
                  or           t1, a7, zero
                  andi         s2, a5, -872
                  bge          a0, a2, 3950f
                  bge          s10, a2, 3951f
                  slli         s11, s6, 13
                  xor          a1, a4, s3
                  blt          t5, s6, 3959f
                  sll          t5, s4, t1
3950:             sra          zero, s1, t1
3951:             srli         ra, s3, 21
                  srli         s0, t5, 15
                  sub          s11, s11, t6
3954:             andi         a0, s10, 778
                  beq          a2, s1, 3961f
                  slti         s11, s6, 592
                  slt          s7, s4, t1
                  add          s1, s11, s1
3959:             addi         s6, t6, -1320
                  xor          a6, t0, a6
3961:             or           s1, s4, s4
                  lw           ra, 4(tp)
                  add          s5, s2, gp
                  sra          a1, s5, s9
                  addi         t2, sp, -1472
                  ori          s1, s4, 1664
                  addi         tp, tp, 24
                  sra          a3, t6, a4
                  addi         s7, t1, -327
                  sltu         t2, t5, t5
                  addi         t0, s8, 1284
5284:             addi x23, x1, 1
5284:             jalr x23, x23, 0
sub_3:            sub          t6, s8, s11
                  addi         tp, tp, -60
                  sw           ra, 4(tp)
                  srli         zero, s10, 26
                  nop
                  ori          s0, s0, -1149
                  srli         a6, zero, 8
                  slti         t6, s0, -1447
                  bltu         a7, s2, 6f
                  ori          s5, a6, 989
                  srl          gp, s6, t3
                  beq          t4, a5, 8f
                  addi         a7, tp, -72
6:                slti         a4, a2, 1189
                  bne          s5, a0, 16f
8:                ori          a0, zero, 1832
                  bge          a3, a4, 16f
                  bgeu         s5, sp, 15f
                  slli         t6, a3, 9
                  beq          gp, s4, 25f
                  ori          s6, a4, -1776
                  bltu         t1, t1, 30f
15:               sra          s0, t1, t6
16:               xor          a3, ra, tp
                  ori          a2, a1, 642
                  sra          s9, a7, t4
                  andi         a6, s7, -1982
                  andi         a5, t5, -906
                  slli         t2, s3, 10
                  nop
                  bgeu         a7, t1, 27f
                  sltiu        a4, s10, -105
25:               and          t1, t6, s9
                  sltu         s9, s1, t2
27:               slti         zero, a6, 588
                  bne          s3, t4, 29f
29:               and          t0, ra, a0
30:               sltiu        zero, s4, -694
                  bge          a1, t6, 50f
                  srli         s6, a0, 14
                  auipc        s8, 728059
                  or           a4, t0, s9
                  srl          s1, t0, zero
                  xor          gp, gp, t4
                  and          t1, a1, sp
                  sll          a5, zero, t5
                  beq          s8, s6, 53f
                  bne          a3, t0, 53f
                  bltu         t2, t0, 42f
42:               bne          t5, t3, 47f
                  auipc        t6, 894123
                  slt          zero, s0, t3
                  lui          t5, 217635
                  sltiu        s7, a1, 43
                  srli         s11, a0, 6
                  la           a2, sub_5
                  xor          s0, a4, s1
                  auipc        s10, 800409
                  add          s1, a0, a5
                  addi         a2, a2, -793
                  xor          gp, t4, s1
sub_3_j5:         jalr         ra, a2, 794 #jump sub_3 -> sub_5
                  add          a5, t5, s4
                  xor          a0, s10, a6
                  slti         s9, s1, 2008
                  xori         s11, a7, 1720
47:               xori         s6, sp, 1751
                  srai         a6, t0, 21
                  lui          s8, 883745
50:               blt          a0, s10, 51f
51:               slti         s9, s5, 216
                  xor          gp, s6, s8
53:               sltiu        s0, a2, -1329
                  slt          s11, s6, t4
                  srl          s10, s8, a6
                  bltu         s8, s1, 57f
57:               sub          a3, s5, t1
                  andi         sp, sp, -1076
                  addi         s3, s9, 1807
                  sra          s1, s7, s11
                  lw           ra, 4(tp)
                  andi         t1, s10, 1753
                  lui          t1, 374904
                  slli         a2, s6, 22
                  addi         tp, tp, 60
                  andi         a7, s1, 830
86:               addi x28, x1, 0
86:               jalr x28, x28, 0
sub_6:            or           s7, s3, s10
                  bge          a2, tp, sub_6_stack_p
sub_6_stack_p:    addi         tp, tp, -12
                  sub          s3, a0, ra
                  sw           ra, 4(tp)
                  srli         sp, a4, 26
                  slti         s9, t1, 172
                  slt          s7, s7, t0
                  la           ra, sub_7
                  sub          a3, t5, t1
                  slt          s11, t6, tp
                  sltiu        sp, t5, -1516
                  addi         ra, ra, 308
                  andi         s0, a1, -1399
                  bge          t3, sp, sub_6_j8 #branch to jump instr
                  xori         a1, s10, -1051
sub_6_j8:         jalr         ra, ra, -308 #jump sub_6 -> sub_7
                  srl          a6, s8, s9
                  sll          s7, t6, s1
                  slti         s2, a6, -354
                  add          t0, zero, t3
                  andi         s9, ra, -1271
                  and          zero, s5, s7
                  blt          s9, s4, 7f
7:                auipc        t6, 243326
                  addi         a2, a2, -1814
                  srai         s8, a4, 10
                  sll          s0, zero, s9
                  and          s8, s9, s11
                  xori         s2, t1, 15
                  srai         a5, a3, 17
                  lui          zero, 887605
                  slt          t0, t5, s8
                  bge          s6, s4, 35f
                  auipc        s0, 476293
                  and          zero, t5, s4
                  slti         sp, s1, 721
                  slti         s7, a7, -236
                  add          a0, t5, ra
                  bgeu         tp, ra, 36f
                  slti         s10, t0, -1604
                  srl          s1, a3, a4
                  or           t2, t2, s4
                  or           t5, s8, a0
                  bne          t4, s4, 32f
                  sub          s2, s6, t0
                  or           s8, s10, s8
                  sub          t3, a5, s6
                  xori         s11, s11, -635
32:               srli         t5, sp, 7
                  slti         t0, sp, -1928
                  sltu         a0, sp, a4
35:               bne          s6, a4, 55f
36:               ori          t1, t5, 1012
                  bgeu         s0, a4, 40f
                  sra          a3, s0, s11
                  or           a3, s8, t4
40:               auipc        s5, 971570
                  slt          a1, sp, t2
                  sll          s0, s11, s7
                  beq          gp, a0, 52f
                  sltu         t0, ra, ra
                  sltiu        s11, t4, -946
                  sll          s1, s4, s6
                  srai         a3, a1, 26
                  slt          t6, a4, a2
                  andi         gp, t0, 1605
                  andi         s11, a1, -687
                  bgeu         a1, a0, 55f
52:               slli         a4, sp, 22
                  ori          s11, t0, 218
                  blt          t2, sp, 55f
55:               sub          t6, t1, t4
                  addi         s7, gp, 411
                  ori          s8, zero, -572
                  sltu         gp, a4, s10
                  xori         a6, t5, -391
                  lw           ra, 4(tp)
                  addi         tp, tp, 12
                  sll          zero, tp, a7
80:               addi x22, x1, 1
80:               jalr x22, x22, 0
sub_1:            sll          t2, s5, a1
                  addi         tp, tp, -24
                  sll          a0, t4, s6
                  sub          s2, t6, a3
                  sltiu        t0, s11, -1093
                  sll          a5, t4, s1
                  slt          t0, t1, sp
                  sw           ra, 4(tp)
                  nop
                  auipc        t3, 331894
                  srli         a3, t6, 1
                  xori         s8, s3, -1648
                  sub          a0, a2, s4
                  auipc        t3, 66166
                  andi         a0, a2, -225
                  bltu         s9, t0, sub_1_j3 #branch to jump instr
                  nop
                  ori          s5, a3, -1518
                  lui          a0, 125424
                  sll          a5, a4, a0
                  sltiu        a2, a5, 1187
                  slli         ra, t0, 29
sub_1_j3:         jal          ra, sub_4 #jump sub_1 -> sub_4
                  slt          s11, a3, a4
                  add          s9, s2, s5
                  auipc        s11, 927974
                  and          t0, t0, a2
                  andi         gp, t3, 1622
                  lui          zero, 600293
                  xori         s1, s8, 1833
                  srl          gp, s8, a4
                  sltiu        t0, t4, -1663
sub_1_j4:         jal          ra, sub_3 #jump sub_1 -> sub_3
                  la           sp, region_1+1259 #start riscv_load_store_rand_instr_stream_0
                  sh           ra, -15(sp)
                  sll          s10, s6, s0
                  sra          s9, a6, a1
                  xori         a0, s1, -227
                  lb           a4, 16(sp)
                  sltu         t6, s9, s8
                  add          t5, a5, s0
                  sh           s4, 11(sp)
                  auipc        s3, 794959
                  sh           ra, 9(sp)
                  ori          s0, t6, 1149
                  ori          t5, s5, -1491
                  add          s2, a3, t1
                  lb           s3, 8(sp)
                  lb           s8, 14(sp)
                  sb           a1, -2(sp)
                  sb           t0, -14(sp)
                  lbu          t2, -5(sp)
                  lh           a0, -13(sp)
                  and          s5, s11, t4
                  lbu          t2, -13(sp)
                  sltu         a4, t3, s2
                  ori          a3, s6, 350
                  xori         s9, s6, -65
                  lhu          gp, 11(sp)
                  lb           s1, -12(sp)
                  lb           a5, -4(sp)
                  add          ra, zero, a3
                  lh           s7, 15(sp)
                  lbu          s8, 6(sp)
                  ori          s3, a3, -934
                  lbu          zero, 4(sp)
                  lb           a1, 10(sp)
                  lhu          s3, -5(sp)
                  addi         a3, sp, -1969
                  and          gp, t1, s4
                  sltu         s10, ra, a1
                  lb           a1, -8(sp)
                  srl          s8, s3, s4
                  sb           s11, 12(sp)
                  sb           s5, 0(sp)
                  srl          s8, s11, a0
                  lb           zero, 1(sp) #end riscv_load_store_rand_instr_stream_0
                  bge          s0, s1, 20f
                  blt          s4, a3, 14f
                  sll          a0, a0, s1
                  sltu         a7, s11, gp
                  srli         a7, s1, 8
                  lui          t3, 498665
                  sll          sp, s11, s1
                  slli         t3, s11, 24
                  sltu         gp, s3, t3
                  bne          t2, t1, 11f
                  sltiu        ra, a3, -483
11:               xor          gp, s8, zero
                  xor          t2, s4, a2
                  ori          zero, a4, -837
14:               xori         a4, s6, -1942
                  and          a0, s7, a2
                  or           a4, a5, s4
                  slt          t5, gp, s10
                  beq          s2, t5, 38f
                  and          s6, s11, a2
20:               bne          t0, a1, 22f
                  sub          a5, a5, t5
22:               add          s2, s11, s7
                  sltu         a4, gp, a5
                  sub          s7, a0, t2
                  add          sp, s1, tp
                  sltu         t1, s5, a5
                  srli         s9, s5, 25
                  beq          t4, s8, 39f
                  and          t6, gp, t6
                  slti         s3, s9, -682
                  slt          s0, t0, s0
                  sra          t5, t1, t5
                  sra          s7, a7, a1
                  and          a3, s0, s6
                  add          t3, tp, t5
                  addi         a2, t0, 406
                  andi         t5, sp, -1144
38:               bgeu         t5, t0, 49f
39:               addi         a1, a3, -160
                  slti         a0, a2, 699
                  nop
                  sra          s1, s10, a4
                  la           sp, region_1+692 #start riscv_load_store_rand_instr_stream_1
                  sb           s8, -213(sp)
                  auipc        a1, 577831
                  sb           s6, 123(sp)
                  sll          gp, zero, s2
                  lb           a5, -8(sp)
                  lbu          t2, -104(sp)
                  srai         a1, s2, 14
                  slti         a0, tp, 1368
                  srli         a0, a6, 15
                  lbu          s10, 170(sp)
                  slt          s6, s7, s9
                  lbu          s1, -152(sp)
                  add          a5, t6, a2
                  lh           t6, 14(sp)
                  sltu         a7, s3, a3
                  or           t2, t6, t3
                  lhu          t5, 190(sp)
                  sltu         s0, s6, ra
                  lhu          a3, 178(sp)
                  slli         t1, t5, 25
                  sltiu        a6, t6, -236
                  lb           s8, -157(sp)
                  lb           ra, -71(sp)
                  xori         s9, s8, -603
                  slti         s8, zero, 1643
                  srl          gp, t1, s3
                  lb           t0, 216(sp) #end riscv_load_store_rand_instr_stream_1
                  add          t6, a7, s11
                  sltiu        s10, gp, -913
                  sltiu        s9, s11, 1924
                  bgeu         s2, a1, 49f
                  andi         a3, zero, 766
                  xor          s0, t1, a0
49:               blt          s11, s9, 67f
                  slli         t1, s6, 15
                  sub          a1, a1, ra
                  bne          s4, tp, 62f
                  auipc        s9, 165920
                  bne          s6, s3, 58f
                  slli         zero, s1, 31
                  bgeu         s11, a0, 63f
                  xor          a6, t1, t4
58:               slli         s6, t1, 24
                  bne          a7, s10, 78f
                  or           a0, a4, a1
                  srl          zero, s2, a4
62:               sltu         a1, a5, t2
63:               bltu         s5, a2, 70f
                  nop
                  bltu         s11, a1, 66f
66:               sltiu        t6, zero, 1739
67:               bge          t4, t1, 76f
                  andi         s1, a5, -1322
                  srai         a1, zero, 14
70:               blt          t2, a7, 72f
                  slt          t2, zero, a3
72:               slti         s7, t1, 999
                  slti         s8, zero, -1829
                  auipc        s3, 491677
                  bge          s6, s0, 94f
76:               sltu         a5, s10, gp
                  sltu         s1, s5, a1
78:               sub          t6, a4, s7
                  blt          s4, t1, 85f
                  nop
                  slli         t0, a3, 10
                  slli         sp, a3, 9
                  sub          s5, t0, a0
                  slti         a5, s9, 1322
85:               srli         gp, t2, 4
                  andi         s11, a2, 700
                  or           a7, s2, t5
                  sra          s9, t5, s11
                  ori          s8, s6, -997
                  bge          gp, tp, 96f
                  slti         t0, ra, -1661
                  slti         t6, t0, -1957
                  bgeu         sp, t4, 94f
94:               sltiu        s11, t6, 199
                  xori         s1, gp, 1058
96:               xor          a7, s3, s3
                  add          s10, s1, zero
                  srl          t0, sp, t6
                  sra          s3, a2, a6
                  sra          s1, s4, t6
                  sll          s3, a7, s10
                  sra          s5, s3, a7
                  lui          zero, 648354
                  blt          s3, t0, 106f
                  srl          t5, s11, s10
106:              slti         s7, s7, -2044
                  slti         t0, s8, 1248
                  sltiu        s8, t0, -58
                  bge          a3, s10, 126f
                  addi         t5, tp, -1046
                  sub          a3, s5, a7
                  or           gp, s8, s2
                  sra          a6, sp, a7
                  srai         zero, a6, 0
                  or           s1, a7, ra
                  andi         t2, s3, -1635
                  blt          t4, s2, 128f
                  slti         a0, a7, 595
                  nop
                  andi         a4, a0, 48
                  xori         t5, s7, -1317
                  beq          s10, t5, 124f
                  xor          s0, gp, a5
124:              blt          tp, s5, 142f
                  addi         t1, s1, 1303
126:              srli         s1, t6, 20
                  sub          t3, t3, s4
128:              blt          gp, a0, 143f
                  sltiu        s7, t1, -242
                  lui          s8, 441621
                  bgeu         ra, t3, 139f
                  sll          a5, s7, ra
                  nop
                  slti         a5, s2, 398
                  andi         s5, ra, 1597
                  ori          a5, t6, 521
                  andi         sp, tp, 297
                  bgeu         t3, a6, 144f
139:              auipc        s10, 1021643
                  beq          t5, a6, 153f
                  sll          s11, a7, t5
142:              bgeu         s6, s10, 155f
143:              nop
144:              ori          s10, s9, -1918
                  lui          zero, 217006
                  nop
                  andi         s11, a4, -1988
                  addi         a4, a1, -1964
                  sra          a6, a5, s9
                  andi         a7, a2, 313
                  bgeu         gp, s3, 171f
                  addi         s6, s6, 1394
153:              ori          a5, s5, 992
                  srai         s6, a5, 12
155:              sub          t2, t4, t4
                  bne          a7, a1, 162f
                  slt          zero, ra, t6
                  slt          gp, a6, t4
                  bgeu         s5, a0, 176f
                  auipc        s10, 628179
                  ori          a6, s0, 2046
162:              sltiu        a4, s7, -713
                  sltu         a0, s10, ra
                  sll          sp, t4, s0
                  addi         t5, s1, -295
                  bge          t6, a6, 168f
                  blt          s6, s6, 169f
168:              slti         s7, s11, 1123
169:              bgeu         sp, s11, 188f
                  addi         a6, zero, -177
171:              slli         t2, s2, 30
                  ori          a0, a2, 1711
                  bgeu         s3, t4, 179f
                  srli         a3, a6, 2
                  nop
176:              sltu         s1, a0, t1
                  bne          s9, s9, 195f
                  slt          s9, s10, t4
179:              add          t2, ra, s11
                  beq          s3, t4, 189f
                  slli         gp, s10, 21
                  slt          a6, a7, t2
                  and          t2, a6, t4
                  auipc        a1, 399944
                  auipc        s5, 707294
                  nop
                  auipc        a3, 777813
188:              slt          a2, t6, s10
189:              or           s8, t6, t5
                  xori         t0, s2, 101
                  slt          s9, s1, s7
                  bge          a7, a1, 203f
                  xor          s7, a2, t0
                  srl          sp, a4, s4
195:              sub          t5, s4, s2
                  slt          s6, s4, a3
                  srai         s7, a2, 30
                  bne          gp, s8, 199f
199:              lui          a3, 225165
                  sltu         s2, zero, a6
                  sltiu        a4, s11, 949
                  addi         s0, s2, -751
203:              sub          t6, t2, t4
                  bge          s8, a0, 214f
                  bne          s7, a5, 218f
                  srli         a3, s10, 5
                  slt          a6, t0, a0
                  and          zero, t2, zero
                  and          a5, t0, t5
                  sltiu        s3, a3, -1834
                  or           s2, zero, s0
                  beq          s1, zero, 214f
                  srl          s1, gp, s4
214:              sll          a7, s5, s7
                  lui          s2, 555442
                  slt          a3, a3, a5
                  ori          a0, a0, 1101
218:              nop
                  bne          a6, s6, 237f
                  or           s11, a2, t6
                  xori         t0, s0, 1829
                  bgeu         gp, t4, 230f
                  sltu         s7, a6, a6
                  beq          s3, a2, 231f
                  addi         t5, a7, 1793
                  xori         s10, s1, -977
                  beq          s6, tp, 238f
                  ori          gp, a6, 292
                  add          s0, s3, t0
230:              srl          t6, s10, s0
231:              sub          t0, s6, a6
                  andi         t2, s5, -302
                  slti         a1, zero, 524
                  lui          s2, 562265
                  blt          a6, gp, 238f
                  slti         t1, t1, 917
237:              ori          s5, a5, -1428
238:              bgeu         a0, s8, 249f
                  sltu         s10, t2, t6
                  sltu         t6, ra, zero
                  xori         t5, a4, 1359
                  xori         s0, tp, 282
                  sltiu        s9, s9, -617
                  sltu         a1, ra, a7
                  andi         s0, a1, 433
                  and          s9, s2, a7
                  slli         t5, a2, 12
                  sll          s5, s1, t1
249:              auipc        a2, 960748
                  bltu         a5, t2, 256f
                  nop
                  lui          s6, 69961
                  blt          s5, s1, 255f
                  bne          zero, s2, 256f
255:              or           a5, s10, t6
256:              nop
                  sll          s2, s3, s7
                  ori          s0, tp, -1407
                  xor          a2, s2, s10
                  and          s11, s11, s11
                  slt          a3, s11, sp
                  or           s5, gp, t6
                  ori          a4, s4, 1629
                  srl          s5, s7, s9
                  beq          a2, a0, 285f
                  slti         s6, s11, -185
                  srli         s7, zero, 12
                  addi         a2, s9, 308
                  andi         s9, s11, 1496
                  sra          s7, a5, s0
                  ori          s8, t1, 519
                  sltiu        s6, a0, -1159
                  ori          a6, t2, 409
                  sltu         zero, sp, t3
                  addi         s8, s11, 187
                  addi         s7, s1, -1302
                  ori          s5, zero, -1733
                  beq          s6, a2, 279f
279:              and          s10, t3, s10
                  blt          t0, tp, 295f
                  sub          t6, s5, s6
                  add          s0, a2, a0
                  auipc        gp, 496962
                  bne          sp, s2, 303f
285:              bltu         a1, t6, 292f
                  nop
                  beq          s3, gp, 291f
                  bltu         a3, s2, 303f
                  beq          a2, s7, 300f
                  bne          a2, s5, 300f
291:              sltiu        s7, s9, 1861
292:              or           s6, s4, t2
                  lui          a6, 949270
                  auipc        s11, 564117
295:              addi         s3, ra, -861
                  srli         s11, t3, 13
                  lui          t1, 372884
                  srli         a5, t6, 22
                  blt          t0, t3, 312f
300:              srli         s1, gp, 15
                  slt          a4, s4, s7
                  bge          t1, sp, 319f
303:              add          ra, t3, s2
                  bltu         a7, s2, 308f
                  blt          s6, s9, 307f
                  xor          s7, s3, s3
307:              bne          t2, s11, 308f
308:              sub          ra, s9, gp
                  xor          zero, a4, t5
                  bgeu         t3, a3, 319f
                  addi         s1, s6, -66
312:              blt          s6, a0, 323f
                  beq          t5, tp, 319f
                  slti         s9, t6, -1703
                  bltu         s5, a5, 328f
                  nop
                  add          t2, s2, s2
                  sra          gp, a2, a4
319:              srai         a5, s1, 13
                  sub          s1, s11, s1
                  auipc        t6, 46894
                  sub          s11, a5, s10
323:              sltiu        s10, s5, -186
                  add          a6, ra, sp
                  xori         s11, zero, -1657
                  beq          s3, t1, 332f
                  srli         s9, s0, 0
328:              slli         ra, a4, 26
                  xor          s11, a4, t6
                  srai         a6, a2, 30
                  slti         s5, sp, 1653
332:              srli         s6, s2, 18
                  addi         s8, t6, 1196
                  lw           ra, 4(tp)
                  addi         tp, tp, 24
                  srai         s5, t1, 18
                  auipc        s8, 670013
443:              addi x2, x1, 1
443:              jalr x2, x2, 0
sub_7:            addi         tp, tp, -48
                  sw           ra, 4(tp)
                  andi         a5, sp, 1744
                  slt          a7, t5, t2
                  srai         s11, a7, 13
                  lui          t6, 377907
                  andi         t6, a6, 1640
                  auipc        a0, 56114
                  srli         t5, t1, 7
                  slli         s9, s11, 1
                  la           a5, sub_8
                  addi         a5, a5, -508
                  sra          s0, s6, s1
                  auipc        s1, 1016891
                  sra          s10, s11, ra
                  sub          t1, s11, s8
                  sll          a0, s10, t2
                  or           gp, s2, s3
                  bgeu         ra, t1, sub_7_j9 #branch to jump instr
                  xori         t5, s8, -881
                  nop
sub_7_j9:         jalr         ra, a5, 509 #jump sub_7 -> sub_8
                  sltiu        s8, ra, -626
                  add          s8, t4, t0
                  slti         s9, s9, 144
                  and          s11, sp, tp
                  xori         s1, s7, 1520
                  sub          s1, t4, a6
                  srli         a5, sp, 29
                  srl          ra, t1, s8
                  addi         s1, tp, 243
                  sub          t6, a5, s1
sub_7_j10:        jal          ra, sub_8 #jump sub_7 -> sub_8
                  srl          s0, a4, s2
                  or           t6, s9, a6
                  andi         s9, s6, -1965
                  bltu         t2, s4, 18f
                  sltiu        t3, s11, -1771
                  xori         ra, t0, -1297
                  add          sp, a3, s10
                  srl          s2, s7, gp
                  nop
                  lui          zero, 605937
                  add          s9, s9, tp
                  nop
                  lui          s8, 388471
                  beq          a0, t0, 32f
                  or           a1, s7, t2
                  srli         a0, a2, 1
                  bgeu         s6, s0, 28f
                  srli         a1, tp, 15
18:               beq          s8, t4, 25f
                  slli         a4, s2, 14
                  bge          s6, t2, 30f
                  xori         sp, t1, -697
                  srli         s1, s6, 27
                  srl          s10, t0, tp
                  srai         a1, s4, 12
25:               xor          t0, a6, sp
                  andi         s1, t0, 2003
                  slli         s10, s3, 9
28:               and          a1, a7, s0
                  beq          t6, s7, 35f
30:               lui          t6, 866747
                  ori          t3, t0, -383
32:               and          s3, s0, sp
                  bne          t1, s11, 36f
                  xor          a2, a2, t2
35:               xor          t6, s5, gp
36:               srai         s10, zero, 2
                  lw           ra, 4(tp)
                  addi         s10, s5, 989
                  sltu         s11, t6, s4
                  sltiu        t6, t5, -476
                  addi         tp, tp, 48
                  and          s5, gp, gp
                  slli         s1, s4, 21
77:               addi x3, x1, 0
77:               jalr x3, x3, 0
sub_9:            slt          s2, s2, t4
                  nop
                  addi         tp, tp, -64
                  ori          a5, t4, -704
                  sltiu        a4, t0, 1073
                  or           s5, s8, t1
                  sw           ra, 4(tp)
                  auipc        s3, 546868
                  slt          s0, gp, s4
                  andi         a2, s3, 1270
                  sll          a3, s1, t6
                  blt          t0, a0, 7f
                  beq          s11, t1, 5f
                  sra          a6, s1, t0
                  xor          a3, t5, a1
5:                slti         s6, t0, -369
                  bne          s11, s8, 11f
7:                add          a6, s1, a4
                  srai         s11, t4, 11
                  sub          s2, s9, a4
                  add          a3, a3, s6
11:               sub          a4, s1, s2
                  slli         a1, t5, 21
                  ori          a3, t3, -585
                  blt          s0, t6, 15f
15:               nop
                  srl          a7, s5, t2
                  lui          s2, 162442
                  sra          s0, s2, t0
                  slt          t5, s9, t4
                  nop
                  blt          a1, s2, 23f
                  bne          s8, a6, 33f
23:               beq          t1, t1, 37f
                  sltu         s7, s7, a0
                  ori          a1, a1, 114
                  beq          t2, a7, 34f
                  bltu         s2, sp, 41f
                  sltiu        a2, a6, 205
                  and          a1, s1, s2
                  sltiu        t6, s5, 1727
                  slti         a4, sp, -1009
                  srl          s5, s0, s7
33:               srl          t5, s4, t1
34:               srl          a0, s1, s2
                  slli         a4, a5, 20
                  ori          a6, zero, 181
37:               srai         a1, t1, 19
                  srai         a2, t4, 0
                  xori         s5, ra, -102
                  auipc        gp, 934264
41:               beq          zero, a3, 60f
                  bne          s7, ra, 48f
                  sra          zero, sp, s10
                  lui          ra, 747029
                  blt          a5, t4, 48f
                  srai         a0, tp, 24
                  and          s7, s0, s6
48:               bltu         a2, t0, 60f
                  bgeu         a1, t1, 62f
                  srli         s9, t1, 13
                  bne          a2, t4, 62f
                  xor          s6, t4, a1
                  xor          a4, s9, t6
                  lui          sp, 748463
                  bltu         gp, s11, 70f
                  sll          s6, s6, t2
                  beq          s2, gp, 64f
                  add          s11, sp, s7
                  slti         zero, gp, 1781
60:               and          t0, s5, t5
                  add          zero, tp, ra
62:               blt          s8, t4, 70f
                  andi         a0, t0, -1031
64:               slli         t0, s10, 5
                  xor          sp, zero, t2
                  srl          ra, ra, tp
                  bgeu         t2, a6, 68f
68:               sub          t3, zero, t0
                  srai         gp, t3, 16
70:               xor          t3, a2, t0
                  addi         s5, s1, -813
                  sll          s5, t1, t0
                  auipc        t6, 887411
                  srl          s7, s5, a7
                  lw           ra, 4(tp)
                  auipc        s2, 362668
                  addi         tp, tp, 64
                  ori          sp, t2, 752
89:               addi x31, x1, 0
89:               jalr x31, x31, 0
sub_10:           ori          s10, s2, 55
                  sltu         a2, t5, t5
                  sub          s10, t4, t1
                  sll          a2, a6, t0
                  sra          t3, t5, a0
                  bltu         tp, sp, sub_10_stack_p
                  ori          sp, a0, -376
sub_10_stack_p:   addi         tp, tp, -44
                  sw           ra, 4(tp)
                  srai         s10, t3, 30
                  la           a2, region_0+438 #start riscv_load_store_rand_instr_stream_0
                  lb           a1, -13(a2)
                  sh           gp, -90(a2)
                  lb           s3, -108(a2)
                  srai         s2, a4, 16
                  sll          t1, sp, t0
                  srli         a0, t2, 22
                  add          t0, t4, a7
                  lb           a0, 187(a2)
                  lb           s3, -19(a2)
                  sb           zero, -143(a2)
                  sb           s4, 220(a2)
                  sra          s9, a7, a2
                  sh           s8, -16(a2)
                  lw           s9, 178(a2)
                  lb           s10, 105(a2)
                  sh           s8, -22(a2)
                  or           s7, t0, s7
                  slti         t2, t1, -1782
                  sub          a0, s7, t3
                  andi         s8, s2, -5
                  auipc        t0, 522291
                  lw           s7, 62(a2)
                  lbu          t3, 195(a2)
                  lhu          s10, -214(a2)
                  sltu         gp, s1, t0
                  lb           s0, -30(a2)
                  sll          s9, s8, a6
                  lb           s6, -104(a2)
                  lbu          s9, 64(a2)
                  or           s5, ra, a7
                  nop
                  slt          t2, s6, t0
                  lw           s10, -78(a2)
                  lbu          t5, 132(a2)
                  sltu         a0, s0, s9
                  sh           zero, -198(a2)
                  sub          s10, ra, t0
                  srl          s1, a4, a0
                  lhu          s11, -204(a2)
                  lhu          zero, 124(a2)
                  lb           a6, 205(a2)
                  sltiu        sp, ra, 710
                  and          t3, s10, s2
                  slli         a5, s2, 10
                  add          a1, s4, t1
                  ori          t2, sp, 1520
                  lbu          sp, 15(a2)
                  sll          s1, s2, a5
                  sb           s5, 87(a2)
                  srli         a5, a7, 14
                  xor          t3, t4, gp
                  srai         t0, s11, 18
                  sh           tp, 94(a2) #end riscv_load_store_rand_instr_stream_0
                  sll          a3, gp, ra
                  sra          t5, s5, t6
                  andi         s0, s8, 1630
                  blt          a7, a3, 18f
                  slli         t5, t3, 15
                  xor          a6, s1, s2
                  sltiu        a2, s9, 561
                  auipc        t3, 628418
                  srl          a1, s3, s0
                  sltu         ra, s6, tp
                  slt          ra, tp, s9
                  srai         s7, a6, 8
                  slt          t3, s2, a5
                  auipc        s3, 914605
                  xor          sp, s4, t1
                  sltiu        a4, zero, 30
                  slli         s6, sp, 30
                  bge          a2, gp, 22f
18:               sub          s10, s2, s5
                  srai         zero, a1, 4
                  xori         a0, s11, 1287
                  srl          t0, s2, a4
22:               lui          a4, 113657
                  auipc        gp, 860409
                  bge          s11, t6, 34f
                  sll          s9, a1, tp
                  or           zero, gp, t1
                  srli         gp, s8, 17
                  addi         a3, t0, 938
                  blt          a6, a0, 44f
                  slt          t1, s3, a5
                  slti         a3, a6, -292
                  sub          t6, s11, s8
                  lui          a2, 268436
34:               sra          s5, ra, s11
                  sll          a3, sp, t5
                  sra          a4, a7, s5
                  slti         a0, a7, 2042
                  srli         t2, s8, 27
                  and          s8, s6, t6
                  addi         a7, sp, -1610
                  addi         s1, a0, -578
                  or           s6, sp, t0
                  andi         t1, gp, -472
44:               add          a4, sp, ra
                  srai         a3, s8, 6
                  xori         s7, a5, -82
                  bltu         s3, zero, 48f
48:               bne          a0, s3, 50f
                  bne          s11, sp, 60f
50:               bge          t4, t5, 51f
51:               bltu         s6, a6, 58f
                  and          s5, t0, t2
                  slti         t1, a5, -1864
                  and          s2, a3, a3
                  auipc        a0, 748176
                  srl          s7, sp, s0
                  andi         t2, t6, -1983
58:               sltiu        a5, sp, -442
                  beq          a2, zero, 70f
60:               slt          s11, sp, s11
                  and          s0, s10, s11
                  sub          s5, a2, a6
                  auipc        a7, 849951
                  srl          s3, t5, a0
                  slti         t3, s7, -175
                  srl          t2, t2, s1
                  beq          s9, zero, 82f
                  sra          t6, s11, s7
                  xori         s0, t1, 345
70:               srli         t3, s10, 6
                  auipc        t3, 840034
                  xor          s3, s0, a6
                  sra          a7, tp, s5
                  andi         s5, t5, 1975
                  bne          s8, s7, 84f
                  bge          s6, a2, 83f
                  bne          a5, ra, 88f
                  bltu         a1, s2, 91f
                  xor          s6, a7, t5
                  srli         t0, gp, 30
                  sltu         t0, tp, t3
82:               bge          s5, s2, 87f
83:               sltiu        s8, a0, 1678
84:               nop
                  bgeu         gp, s5, 100f
                  sltu         t5, a7, a5
87:               beq          a7, a7, 94f
88:               beq          a4, a5, 95f
                  xor          s2, s7, t1
                  auipc        a2, 528840
91:               blt          s3, a6, 100f
                  srl          a5, t1, s0
                  and          s11, a1, s6
94:               ori          s0, a2, 1594
95:               xor          s2, t0, t0
                  ori          s10, gp, -1531
                  xori         a6, a0, -500
                  add          t6, gp, tp
                  lui          gp, 744584
100:              addi         a0, t1, -1017
                  xor          t6, s7, a7
                  bge          gp, s10, 110f
                  nop
                  sltu         ra, gp, t5
                  srli         s11, s1, 5
                  bne          s10, s7, 119f
                  andi         a3, ra, -471
                  andi         a6, s5, 1325
                  slti         s0, a0, -790
110:              auipc        s6, 886224
                  xori         s6, s1, 657
                  sll          s5, gp, t0
                  and          a7, tp, a3
                  sub          gp, t5, a2
                  nop
                  bne          s8, a7, 128f
                  nop
                  xori         t6, s5, -218
119:              srli         s7, s6, 18
                  ori          s7, s0, 114
                  lui          zero, 305274
                  sub          a3, sp, sp
                  bne          t5, s6, 129f
                  xor          a2, t2, s11
                  beq          s6, s5, 131f
                  sltiu        s9, sp, 507
                  sra          zero, a3, t2
128:              and          s8, t4, s1
129:              sll          s0, a2, a0
                  srl          a5, s1, s6
131:              and          a4, a6, zero
                  bltu         t2, s9, 135f
                  srli         a1, s4, 15
                  beq          t3, a1, 136f
135:              nop
136:              ori          a6, t1, -1540
                  or           zero, t4, a1
                  and          s8, a4, sp
                  nop
                  addi         t6, gp, 1025
                  sltu         s2, a5, a4
                  slli         a0, t5, 30
                  nop
                  sra          t1, t3, a2
                  addi         t1, gp, 1941
                  beq          s9, s3, 155f
                  addi         s0, t4, 351
                  sll          s2, t3, a5
                  bne          t1, s10, 162f
                  bge          t2, s9, 158f
                  sltu         s9, t4, s10
                  bne          a3, t4, 159f
                  andi         t6, t3, 1956
                  bltu         a6, t0, 155f
155:              ori          s5, t1, 1024
                  sra          gp, s8, a4
                  bge          a5, a0, 168f
158:              sub          t1, s7, s5
159:              sra          a1, s0, t0
                  bge          a5, s2, 167f
                  lui          a1, 495023
162:              or           ra, zero, s6
                  andi         s11, s10, -954
                  srli         s3, a3, 27
                  blt          t0, s1, 171f
                  nop
167:              sra          a7, s0, a1
168:              sltiu        ra, s8, 980
                  bne          s5, tp, 184f
                  lui          t1, 564515
171:              slt          t5, a2, s4
                  slli         a1, a7, 2
                  bgeu         s2, s8, 182f
                  srl          s5, s11, a2
                  addi         t6, a4, 2045
                  bge          t1, s6, 178f
                  nop
178:              beq          a5, gp, 193f
                  srli         ra, s8, 26
                  sub          t6, t5, s2
                  sll          sp, s11, a5
182:              addi         t2, a2, -1527
                  xor          s11, s4, a0
184:              bltu         s3, t1, 189f
                  srl          t2, tp, s8
                  nop
                  blt          s7, s6, 189f
                  or           a3, s9, a1
189:              addi         gp, s8, -797
                  xori         t3, s2, 7
                  bge          t5, s11, 204f
                  addi         s3, t2, -926
193:              sra          s2, s7, t6
                  bltu         s9, s9, 204f
                  slt          a2, t3, a6
                  and          a2, a2, sp
                  slli         s10, s5, 8
                  and          s5, a0, s10
                  xor          t6, s1, s8
                  xori         s10, ra, -1742
                  beq          s11, s5, 204f
                  ori          a6, s7, 1682
                  beq          gp, s11, 204f
204:              xori         s3, ra, 1675
                  lw           ra, 4(tp)
                  slti         s11, t0, 890
                  addi         tp, tp, 44
                  nop
                  lui          s8, 734602
274:              addi x8, x1, 1
274:              jalr x8, x8, 0
sub_2:            sub          t3, t6, s8
                  andi         s0, s6, -1756
                  slli         s6, s7, 31
                  bgeu         s2, s3, sub_2_stack_p
                  srai         s9, sp, 10
sub_2_stack_p:    addi         tp, tp, -20
                  sw           ra, 4(tp)
                  addi         s10, s9, -1104
                  srli         gp, a7, 14
                  add          t0, s0, a3
                  sra          s11, a7, sp
                  andi         a1, a3, 1662
                  sltiu        t1, s8, -578
                  bgeu         t0, a5, 6f
                  lui          s2, 145086
                  and          t1, a5, t0
                  sll          a2, s7, s6
                  sltiu        t6, s11, 1725
                  slti         a2, gp, 1459
6:                bgeu         gp, s10, 18f
                  beq          a6, sp, 18f
                  bltu         t2, s1, 14f
                  bne          ra, s3, 21f
                  slli         s6, a4, 20
                  add          a0, s7, ra
                  slti         a5, t6, -1090
                  sub          zero, s7, zero
14:               sll          s3, s5, a6
                  sra          sp, a1, tp
                  xor          s1, a6, s5
                  addi         a5, zero, -1277
18:               nop
                  srli         t5, s8, 5
                  sll          s10, s8, s0
21:               slt          a0, ra, a4
                  sll          t0, s1, a7
                  slli         s9, tp, 19
                  lw           ra, 4(tp)
                  sra          s0, s7, a7
                  slti         s5, s11, 816
                  auipc        sp, 325678
                  addi         tp, tp, 20
                  xor          t0, ra, t6
                  andi         s3, tp, -1846
44:               addi x14, x1, 0
44:               jalr x14, x14, 0
sub_5:            bltu         t5, t5, sub_5_stack_p
                  ori          s10, s4, 451
                  addi         zero, tp, 328
                  and          s9, s3, s10
                  sub          t6, t1, t3
                  slti         a6, s2, 1563
                  auipc        s8, 986148
sub_5_stack_p:    addi         tp, tp, -52
                  sw           ra, 4(tp)
                  nop
                  bgeu         t2, sp, 5f
                  slli         t5, a5, 14
                  slti         s3, a6, 369
                  addi         s7, s10, -37
                  slti         s8, gp, -122
5:                blt          a1, s4, 18f
                  srl          ra, s8, a5
                  ori          t2, zero, -686
                  slli         t6, s4, 19
                  and          t1, s4, s3
                  beq          s3, a2, 12f
                  lui          t5, 755780
12:               bgeu         a0, ra, 32f
                  srli         s7, t3, 26
                  sub          gp, t4, t5
                  slti         s6, a3, -912
                  srli         a0, a1, 4
                  sra          a1, s11, t6
18:               bne          a3, t6, 29f
                  nop
                  slti         a3, a6, -568
                  xori         a2, zero, 752
                  sra          a4, zero, t1
                  beq          t4, a5, 35f
                  srli         s3, t3, 30
                  blt          gp, zero, 44f
                  ori          t5, t1, -369
                  sub          s9, t6, s11
                  srli         s8, zero, 3
29:               srl          a2, gp, s11
                  sltu         a6, a6, s2
                  bgeu         s1, t6, 41f
32:               xor          a3, s11, s6
                  andi         a3, t1, 928
                  blt          t5, a6, 45f
35:               bgeu         a0, sp, 55f
                  srai         a2, gp, 26
                  slt          s10, s0, s7
                  slti         ra, s9, 1559
                  ori          s1, t1, 479
                  sltu         s6, s6, a2
41:               slt          s9, s5, t2
                  bgeu         s9, t4, 58f
                  slt          s6, a0, s4
44:               beq          zero, ra, 52f
45:               xor          a0, t0, tp
                  sra          t6, tp, a4
                  ori          sp, s7, 1645
                  blt          t2, a1, 56f
                  ori          s2, a2, -35
                  xori         a0, t5, -1252
                  nop
52:               xor          s0, zero, s3
                  blt          s11, t0, 61f
                  blt          t3, s1, 66f
55:               srli         t0, s8, 5
56:               slli         a3, a3, 27
                  srl          s0, s3, s7
58:               ori          s8, s4, 1665
                  ori          s0, s4, -111
                  lui          s7, 403400
61:               srai         s11, s11, 3
                  srli         t0, s0, 12
                  auipc        a0, 584997
                  add          zero, t6, s11
                  nop
66:               sub          a5, s0, a2
                  sub          gp, t0, t0
                  and          s0, ra, t3
                  add          s1, a0, s2
                  ori          a7, a7, 1002
                  lw           ra, 4(tp)
                  srai         t3, sp, 10
                  slt          gp, a6, s7
                  addi         a0, s3, -754
                  addi         tp, tp, 52
                  add          t1, t3, tp
                  srl          a3, t2, t5
                  slt          a3, t6, s2
89:               addi x17, x1, 1
89:               jalr x17, x17, 0
sub_8:            slt          t1, t4, a6
                  lui          s6, 799511
                  blt          s5, t0, sub_8_stack_p
                  srl          s5, a7, sp
                  xor          zero, s3, ra
                  or           t6, t6, s10
                  sub          t5, s1, a4
                  add          a0, t5, s1
sub_8_stack_p:    addi         tp, tp, -44
                  slti         a0, sp, -235
                  sw           ra, 4(tp)
                  andi         t6, a3, 1566
                  auipc        a4, 838993
                  la           t5, sub_9
                  slti         a4, t4, -474
                  xor          sp, gp, s8
                  slti         a2, a3, -1869
                  nop
                  sltu         a1, s4, s11
                  andi         s11, sp, 1591
                  addi         t5, t5, -570
                  bgeu         s1, t6, sub_8_j11 #branch to jump instr
                  ori          s9, s8, 1541
                  and          a3, s11, zero
sub_8_j11:        jalr         ra, t5, 570 #jump sub_8 -> sub_9
                  lui          ra, 77103
                  sltu         a4, gp, gp
                  sltu         sp, t0, t3
                  sltiu        t6, t3, -2023
                  la           t0, sub_10
                  sll          a2, t3, sp
                  sub          s11, a1, a1
                  addi         t0, t0, 443
                  sltu         s7, t4, s5
sub_8_j12:        jalr         ra, t0, -442 #jump sub_8 -> sub_10
                  or           t0, a7, a7
                  sltu         t1, a1, ra
                  srai         a2, a6, 28
                  and          a0, ra, s7
                  slt          zero, s6, s4
                  slt          t0, s0, tp
                  bge          a0, a2, 21f
                  srai         a0, ra, 21
                  nop
                  srai         a0, s10, 16
                  slti         t5, s11, 1245
                  andi         s7, t2, -2041
                  beq          s9, a2, 31f
                  srl          t6, s1, s9
                  bge          s11, a6, 24f
                  and          t2, s7, s10
                  nop
                  blt          a4, a7, 23f
                  bne          a2, s3, 30f
                  srai         t2, zero, 5
                  sltiu        s2, t3, -1813
21:               srli         s0, s9, 4
                  lui          a6, 957134
23:               auipc        ra, 773163
24:               addi         s7, s4, -447
                  xor          s2, t6, a5
                  srl          s0, s7, a0
                  addi         s10, zero, 867
                  or           a7, a4, a7
                  and          a6, s2, t5
30:               auipc        ra, 512727
31:               ori          t6, t3, 1503
                  bltu         t0, s11, 42f
                  xor          s3, a6, s5
                  sub          t3, tp, s10
                  srli         t2, t1, 15
                  srli         s11, a6, 22
                  bge          ra, ra, 39f
                  bge          a2, t3, 47f
39:               beq          t0, a1, 53f
                  bgeu         s0, a7, 46f
                  addi         s9, a2, 35
42:               bne          s9, a4, 49f
                  xor          s6, s6, s3
                  blt          t2, t2, 53f
                  sltu         t0, t6, zero
46:               bne          t1, s0, 58f
47:               auipc        s10, 791348
                  sub          s6, s11, s9
49:               srl          a4, a5, a1
                  srai         a2, s11, 11
                  auipc        a2, 899082
                  xori         t6, s2, 337
53:               bne          a2, s1, 58f
                  and          s2, s10, t4
                  srai         a4, t4, 17
                  beq          t1, a2, 58f
                  ori          t2, s8, -230
58:               sltiu        s8, s1, -1007
                  srli         a6, a5, 20
                  lw           ra, 4(tp)
                  addi         tp, tp, 44
                  slt          s5, s2, s10
                  srli         gp, t6, 3
99:               addi x26, x1, 0
99:               jalr x26, x26, 0
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
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf
.section .region_1,"aw",@progbits;
region_1:
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf
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
                  add x29, x4, zero
                  csrr x13, 0x300 # MSTATUS
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 31
                  bne x13, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x13, 0x341 # MEPC
                  csrr x13, 0x342 # MCAUSE
                  li x25, 0x3 # BREAKPOINT
                  beq x13, x25, ebreak_handler
                  li x25, 0x8 # ECALL_UMODE
                  beq x13, x25, ecall_handler
                  li x25, 0x9 # ECALL_SMODE
                  beq x13, x25, ecall_handler
                  li x25, 0xb # ECALL_MMODE
                  beq x13, x25, ecall_handler
                  li x25, 0x1
                  beq x13, x25, instr_fault_handler
                  li x25, 0x5
                  beq x13, x25, load_fault_handler
                  li x25, 0x7
                  beq x13, x25, store_fault_handler
                  li x25, 0xc
                  beq x13, x25, pt_fault_handler
                  li x25, 0xd
                  beq x13, x25, pt_fault_handler
                  li x25, 0xf
                  beq x13, x25, pt_fault_handler
                  li x25, 0x2 # ILLEGAL_INSTRUCTION
                  beq x13, x25, illegal_instr_handler
                  csrr x25, 0x343 # MTVAL
                  1: la x20, test_done
                  jalr x1, x20, 0

ecall_handler:    
                  la x13, _start
                  sw x0, 0(x13)
                  sw x1, 4(x13)
                  sw x2, 8(x13)
                  sw x3, 12(x13)
                  sw x4, 16(x13)
                  sw x5, 20(x13)
                  sw x6, 24(x13)
                  sw x7, 28(x13)
                  sw x8, 32(x13)
                  sw x9, 36(x13)
                  sw x10, 40(x13)
                  sw x11, 44(x13)
                  sw x12, 48(x13)
                  sw x13, 52(x13)
                  sw x14, 56(x13)
                  sw x15, 60(x13)
                  sw x16, 64(x13)
                  sw x17, 68(x13)
                  sw x18, 72(x13)
                  sw x19, 76(x13)
                  sw x20, 80(x13)
                  sw x21, 84(x13)
                  sw x22, 88(x13)
                  sw x23, 92(x13)
                  sw x24, 96(x13)
                  sw x25, 100(x13)
                  sw x26, 104(x13)
                  sw x27, 108(x13)
                  sw x28, 112(x13)
                  sw x29, 116(x13)
                  sw x30, 120(x13)
                  sw x31, 124(x13)
                  la x20, write_tohost
                  jalr x0, x20, 0

instr_fault_handler:
                  add x4, x29, zero
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
                  add x4, x29, zero
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
                  add x4, x29, zero
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
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x4, x29, zero
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
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x4, x29, zero
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
                  csrr  x13, 0x300 # MSTATUS;
                  csrr  x13, 0x304 # MIE;
                  csrr  x13, 0x344 # MIP;
                  csrrc x13, 0x344, x13 # MIP;
                  add x4, x29, zero
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
